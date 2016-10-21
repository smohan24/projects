#include <linux/linkage.h>
#include <linux/moduleloader.h>
#include <linux/fs.h>
#include <linux/namei.h>
#include <linux/buffer_head.h>
#include <linux/slab.h>
#include <linux/list.h>
#include <linux/ctype.h>

struct merge_args {
        char *infile1;
        char *infile2;
        char *outfile;
        unsigned int flags;
        unsigned int *data;
};

enum flags_enum {
        u = 0, a, i, t = 4, d
}hex_flags;

/*
 * This function opens a file at path with the modes and rights passed by calling function
 * and returns a pointer to the opened file structure.
 * It expects the pointer to  file path from the kernel space.
 * It calls the filp_open system call which returns the pointer to the opened file structure.
 * In case of any error the errno is set.
 */
struct file* file_open(const char *path, int flags, int rights, int *errno) {
	struct file *filp = NULL;
	*errno = 0;
	filp = filp_open(path, flags, rights);
	if(!filp || IS_ERR(filp)) {
		*errno = (int)PTR_ERR(filp);
		printk("Error opening file %d\n", *errno);
		return NULL;
	}

	printk("Openend file %s successfully\n", path);
    	return filp;
}

/*
 * This function reads a file in blocks of PAGE_SIZE into data buffer in kernel space
 * starting from the offset provided by the calling function
 * It calls the vfs_read system call which expects a pointer to buffer from the user space.
 * The function adjusts the current process address limits to whatever the caller wants 
 * using get_fs() and set_fs().
 * It returns the number of bytes read from the file.
 */
int file_read(struct file *file, char *data, unsigned long long *offset, int *errno) {
        mm_segment_t oldfs;
        int bytes_read;
        *errno = 0;
        
	oldfs = get_fs();
        set_fs(get_ds());
	bytes_read = vfs_read(file, data, PAGE_SIZE-1, offset);
	printk("Bytes_read : %d\n", bytes_read);
        if(bytes_read < 0) {
		*errno = bytes_read;
	}
	else 
		*(data + bytes_read) = '\0';
        set_fs(oldfs);
        return bytes_read;
}

/*
 * This function writes the data buffer in kernel space to the file whose pointer to structure 
 * is passed as input. The data is written to buffer starting from the offset provided by the 
 * calling function. It calls the vfs_write function and passes the arguments. The vfs_write 
 * expects a pointer to buffer from the user space. The function adjusts the current process 
 * address limits to whatever the caller wants using get_fs() and set_fs().
 * It returns the bytes written to the file.
 */
int file_write(struct file *file, char *data, unsigned long long *offset, int size, int *errno) {
        mm_segment_t oldfs;
        int bytes_written;
        *errno = 0;
	
	printk("In file_write : %s\n", data);
        oldfs = get_fs();
        set_fs(get_ds());
        bytes_written = vfs_write(file, data, size, offset);
        if(bytes_written < 0) {
                *errno = bytes_written;
        }
        set_fs(oldfs);
        return bytes_written;
}

/*
 * This function appends the line buffer to the data buffer passed as inputs starting from the
 * data_offset in the buffer. It checks if the size of data buffer would exceed the PAGE_SIZE 
 * on appending the line buffer. If so, it writes the data buffer to the file starting from 
 * the file offset and starts filling the line buffer into data buffer from offset 0
 */
void buffer_write(struct file *file, char* data, char *line, unsigned long long *file_offset, unsigned short *data_offset, unsigned short *line_size, int *errno) {
	int num_bytes = 0;
	if(strchr(line, '\0')) {
		num_bytes = *line_size;
	}
	else { 
		num_bytes = *line_size + 1;
	}
	printk("Num_buyes : %d\n", num_bytes);
	if(*data_offset + num_bytes > PAGE_SIZE) {
		file_write(file, data, file_offset, (*data_offset), errno);
		if(*errno)
			return;
		*data_offset = 0;
	}
	strncpy((data + *data_offset), line, num_bytes);
	*data_offset += num_bytes; 
	if(*data_offset + 1 > PAGE_SIZE) {
		file_write(file, data, file_offset, (*data_offset), errno);
		if(*errno)
			return;
		*data_offset = 0;
	} 
	*(data + *data_offset) = '\n';
	(*data_offset)++;
}

/*
 * This function reads a line delimited by '\n' from the data buffer starting from the data_offset 
 * into the line buffer. If the delimiter is not encountered till the end of data buffer, it calls 
 * the file_read function and loads the data buffer with the next PAGE_SIZE bytes starting from the 
 * file_offset. It checks if the line encountered is more than PAGE_SIZE bytes characters long.
 * It returns the number of bytes in the line buffer identified by the line_offset.
 */
unsigned short line_read(struct file *file, char* data, char *line, unsigned long long *file_offset, unsigned short *data_offset, int *bytes_read, int *errno) {

	unsigned short line_offset = 0;
	*errno = 0;
	printk("\n\nIn line_read - Bytes_read : %d\n", *bytes_read);
	printk("Data offset %d\n", *data_offset);
	while(*bytes_read) {
		if(*(data + *data_offset) == '\0') {
                        *data_offset = 0;
                        *bytes_read = file_read(file, data, file_offset, errno);
			if(*errno)
				return line_offset;
			continue;
                }

		if(*(data + *data_offset) != '\n') {
			if(line_offset == PAGE_SIZE-1) {
                        	*errno = -EOVERFLOW;
                        	return line_offset;
                	} 
			*(line + line_offset) = *(data + *data_offset);
			line_offset++;
			(*data_offset)++;
		}
		else {
			(*data_offset)++;	
			break;
		}

	}
	if(line_offset < PAGE_SIZE)
		*(line + line_offset) = '\0';
	printk("End - > Data offset %d\n", *data_offset);
	printk("End - > Line offset %d\n", line_offset);
	return line_offset;
}

/*
 * This function unlinks a file from the file system given the directory inode
 * and the file's dentry using the vfs_unlink function.
 */
void unlink_file(struct inode *dir, struct dentry *dentry, int *errno)
{
	struct dentry *dir_dentry;
	int err;

	dir_dentry = dget_parent(dentry);
	inode_lock_nested(d_inode(dir_dentry), I_MUTEX_PARENT);
	err = vfs_unlink(dir, dentry, NULL);
	if (err) {
		printk(KERN_ERR "Error in vfs_unlink; errno = [%d]\n", *errno);
		*errno = err;
		goto out_unlock;
	}
	d_drop(dentry);
out_unlock:
	inode_unlock(d_inode(dir_dentry));
	dput(dir_dentry);
}

/*
 * This function takes as input the pointer to inode and dentry of old and new files.
 * It renames the old file with the new file using the vfs_rename function
 */
void rename_file(struct inode *old_dir, struct dentry *old_dentry, struct inode *new_dir, struct dentry *new_dentry, int *errno) {
	struct dentry *track = NULL;
	struct dentry *old_dir_dentry = NULL;
	struct dentry *new_dir_dentry = NULL;
	int err;

	old_dir_dentry = dget_parent(old_dentry);
	new_dir_dentry = dget_parent(new_dentry);
	track = lock_rename(old_dir_dentry, new_dir_dentry);
	if(track == old_dentry) {
		*errno = -EINVAL;
		goto cleanup_unlock;
	}
	if(track == new_dentry) {
		*errno = -ENOTEMPTY;
		goto cleanup_unlock;
	}
	err = vfs_rename(old_dir, old_dentry, new_dir, new_dentry, NULL, 0);
	if(err) {
		printk(KERN_ERR "Error in vfs_rename; errno = [%d]\n", *errno);
                *errno = err;
                goto cleanup_unlock;
	}	
cleanup_unlock:
	unlock_rename(old_dir_dentry, new_dir_dentry);
	dput(old_dir_dentry);
	dput(new_dir_dentry);
}

asmlinkage extern long (*sysptr)(void *arg);

asmlinkage long xmergesort(void *arg)
{
	printk("xmergesort received arg %p\n", arg);
	if (arg == NULL) {
		printk("arg is null");
		return -EINVAL;
	}
	else
	{
		struct file *filp_infile1 = NULL, *filp_infile2 = NULL, *filp_outfile = NULL, *filp_user_outfile = NULL;
		int errno = 0, size, comparison, outfile_exists = 0;
		struct kstat infile1_stat, infile2_stat, outfile_stat;
		unsigned long long offset_infile1 = 0, offset_infile2 = 0, offset_outfile = 0;
                int bytes_read_infile1 = 0, bytes_read_infile2 = 0;
		unsigned short buffer1_offset = 0, buffer2_offset = 0, result_offset = 0;
                char *buffer1 = NULL, *buffer2 = NULL, *result = NULL, *line1 = NULL, *line2 = NULL, *prev_outfile_line = NULL;
		unsigned short bytes1 = 0, bytes2 = 0;
		bool u_flag = 0, i_flag = 0, t_flag = 0, d_flag = 0;
		struct merge_args *args = NULL;
		char *temp_filename = "temp_merged_file.txt";
		
		/*
		 * Copy the struct merge_args members  from user space to kernel space
		 * using strncpy_from_user function after allocating sufficient memory
		 * for the members using kmalloc.
		 */
		struct merge_args *user_args = (struct merge_args*)arg;

		size = sizeof(struct merge_args);
                args = kmalloc(size, GFP_KERNEL);
                if(!args)
                        goto no_mem;
                if(copy_from_user(args, user_args, size) != 0)
                        goto fault;

		size = strlen_user(user_args->outfile);
                args->outfile = kmalloc(sizeof(char)* size, GFP_KERNEL);
                if(!args->outfile)
                        goto no_mem;
		if(strncpy_from_user(args->outfile, user_args->outfile, PATH_MAX) < 0)
			goto fault;

		size = strlen_user(user_args->infile1);
		args->infile1 = kmalloc(sizeof(char)* size, GFP_KERNEL);
                if(!args->infile1)
                        goto no_mem;
		if(strncpy_from_user(args->infile1, user_args->infile1, PATH_MAX) < 0)
                        goto fault;	

		size = strlen_user(user_args->infile2);
		args->infile2 = kmalloc(sizeof(char)* size, GFP_KERNEL);
                if(!args->infile2)
                        goto no_mem;
		if(strncpy_from_user(args->infile2, user_args->infile2, PATH_MAX) < 0)
                        goto fault;
			
		args->data = kmalloc(sizeof(unsigned int), GFP_KERNEL);
                if(!args->data)
                        goto no_mem;
                *args->data = 0;
		
		/*
		 * Check if the input and output files are separate
		 * If the output file exists then make sure that it is different from the input files.
		 */
		errno = vfs_stat(user_args->infile1, &infile1_stat);
                if(errno)
                        goto close;
                errno = vfs_stat(user_args->infile2, &infile2_stat);
                if(errno)
                        goto close;
		
                errno = vfs_stat(user_args->outfile, &outfile_stat);
                if(!errno) 
			outfile_exists = EEXIST;
		else if(errno == -ENOENT)
			outfile_exists = 0;
		else
			goto close;
          
                if((infile1_stat.dev == infile2_stat.dev && infile1_stat.ino == infile2_stat.ino)) {
                        errno = -ENOTUNIQ;
                        goto close;
                }
		
		if(outfile_exists == EEXIST && ((outfile_stat.dev == infile2_stat.dev && outfile_stat.ino == infile2_stat.ino)
					     || (outfile_stat.dev == infile1_stat.dev && outfile_stat.ino == infile1_stat.ino))) {
                        errno = -ENOTUNIQ;
                        goto close;
                }
		
		/*
		 * Check if the input files have read permission and output file has write permission
		 */
				
		/*
                 * Allocate memory for the buffers that will be used to read and write
                 * from files in PAGE_SIZE bytes using kmalloc
                 */  

		buffer1 = kmalloc(sizeof(char)*PAGE_SIZE, GFP_KERNEL);
		if(!buffer1) 
                	goto no_mem;

		buffer2 = kmalloc(sizeof(char)*PAGE_SIZE, GFP_KERNEL);		
		if(!buffer2)
                        goto no_mem;

		result = kmalloc(sizeof(char)*PAGE_SIZE, GFP_KERNEL);
		if(!result)
                        goto no_mem;

		line1 = kmalloc(sizeof(char)*(PAGE_SIZE), GFP_KERNEL);
                if(!line1)
                        goto no_mem;
		
		line2 = kmalloc(sizeof(char)*(PAGE_SIZE), GFP_KERNEL);
                if(!line2)
                        goto no_mem;

		prev_outfile_line = kmalloc(sizeof(char)*(PAGE_SIZE), GFP_KERNEL);
                if(!prev_outfile_line)
                        goto no_mem;
		
		/*
		 * Open the input files to be merged in read only mode and temp output file in write mode
		 */

		filp_infile1 = file_open(args->infile1, O_RDONLY, 0, &errno);
		if(!filp_infile1)
			goto close;

                filp_infile2 = file_open(args->infile2, O_RDONLY, 0, &errno);
                if(!filp_infile2)
                	goto close;

                filp_outfile = file_open(temp_filename, O_WRONLY|O_CREAT|O_TRUNC, infile1_stat.mode, &errno);
                if(!filp_outfile)
                        goto close;	

		filp_user_outfile = file_open(args->outfile, O_WRONLY|O_CREAT, 644, &errno);
                if(!filp_user_outfile)
                        goto close;
		
		/*
		 * Determine the merging options set using flags
		 */
		hex_flags = u;
		if(args->flags & (1 << hex_flags))
			u_flag = 1;
		hex_flags = i;
		if(args->flags & (1 << hex_flags))
			i_flag = 1;
		hex_flags = t;
		if(args->flags & (1 << hex_flags))
			t_flag = 1;
		hex_flags = d;
		if(args->flags & (1 << hex_flags))
			d_flag = 1;


		//Read first blocks of PAGE_SIZE from the input files
		
		bytes_read_infile1 = file_read(filp_infile1, buffer1, &offset_infile1, &errno);
                
                if(errno)
                	goto close;
                bytes_read_infile2 = file_read(filp_infile2, buffer2, &offset_infile2, &errno);

                if(errno)
                	goto close;
		
		//Repeat the process until there are no more bytes in the input files.
			
		//Read lines from both the input files.	
		bytes1 = line_read(filp_infile1, buffer1, line1, &offset_infile1, &buffer1_offset, &bytes_read_infile1, &errno);
		if(errno)
              		goto close;
		bytes2 = line_read(filp_infile2, buffer2, line2, &offset_infile2, &buffer2_offset, &bytes_read_infile2, &errno);
		if(errno)
                	goto close;

		*prev_outfile_line = '\0';
		do {
			/*
			 * If the -i flag is set perform a case insensitive compare
			 * else perform a case sensitive compare. If line from file1 is 
			 * lexicographically smaller than line from file2 then append the 
			 * line1 to output buffer.
			 */
			comparison = (i_flag) ? strncasecmp(line1, line2, PAGE_SIZE) : strncmp(line1, line2, PAGE_SIZE);
				
			/*
			 * Compare the lines from the input files.  If line from file1 is
                         * lexicographically smaller than line from file2 then append the
                         * line1 to output buffer else append line2 to the output buffer.
			 */
			if(comparison <= 0) {

				/*
				 * If the -t flag is set and the input files are not individually sorted 
				 * lexicographically then return an error, perform cleanup and exit.
				 * Else skip the records that are not sorted and continue with the next line.
				 */
				if(i_flag) {
					if(t_flag && strncasecmp(prev_outfile_line, line1, PAGE_SIZE) > 0) {
                                        	printk("Line is not sorted : Line1 : %s\n", line1);
                                                errno = -EINVAL;
                                                goto close;
					}
					else if(strncasecmp(prev_outfile_line, line1, PAGE_SIZE) > 0) {
                                		printk("Skipping unsorted line\n");
                                        	goto loop_read_next_line1;
					}
					/*
					 * If the -u option is set then check if the current line is same as the line
					 * previously appended to the output buffer. If yes, then ignore the line and
					 * proceed with the next line
					 */
                                         
					if(u_flag && strncasecmp(prev_outfile_line, line1, PAGE_SIZE) == 0) {
                                       		printk("Ignoring duplicate\n");
                                                goto loop_read_next_line1;
					}
                                        else if (u_flag && strncasecmp(prev_outfile_line, line2, PAGE_SIZE) == 0) {
                                        	printk("Ignoring duplicate\n");
                                                goto loop_read_next_line2;
                                        }
				}
				else {	
					if(t_flag && strncmp(prev_outfile_line, line1, PAGE_SIZE) > 0) {
						printk("Line is not sorted : Line1 : %s\n", line1);
						errno = -EINVAL;
						goto close;
					}
					else if(strncmp(prev_outfile_line, line1, PAGE_SIZE) > 0) {
						printk("Skipping unsorted line\n");
	                                        goto loop_read_next_line1;
					}
					if(u_flag && strncmp(prev_outfile_line, line1, PAGE_SIZE) == 0) {
						printk("Ignoring duplicate\n");
						goto loop_read_next_line1;			
					}
					else if (u_flag && strncmp(prev_outfile_line, line2, PAGE_SIZE) == 0) {
        		                	printk("Ignoring duplicate\n");
                		                goto loop_read_next_line2;
					}
				}
				buffer_write(filp_outfile, result, line1, &offset_outfile, &result_offset, &bytes1, &errno);
				if(errno)
					goto close;
				(*args->data)++;
				/*
				 * Copy the line that was appended to the output buffer into the prev_outfile_line buffer
				 * to keep track of the lexicographic ordering and to track duplicates.
				 */
				strncpy(prev_outfile_line, line1, PAGE_SIZE);
				//Read the next line from the buffer for input file1
loop_read_next_line1:
				bytes1 = line_read(filp_infile1, buffer1, line1, &offset_infile1, &buffer1_offset, &bytes_read_infile1, &errno);
		                if(errno)
        		        	goto close;
				printk("Line1 : %s\n", line1);
                        	printk("Bytes1 : %d\n", bytes1);

			}
			else {
				if(i_flag) {
					if(t_flag && strncasecmp(prev_outfile_line, line2, PAGE_SIZE) > 0) {
                                        	printk("Line is not sorted : Line2 : %s\n", line2);
                                               	errno = -EINVAL;
                                                goto close;
					}
                                        else if(strncasecmp(prev_outfile_line, line2, PAGE_SIZE) > 0) {
                                        	printk("Skipping unsorted line\n");
                                               	goto loop_read_next_line2;
					}
                                       	if(u_flag && strncasecmp(prev_outfile_line, line1, PAGE_SIZE) == 0) {
                                        	printk("Ignoring duplicate\n");
                                                goto loop_read_next_line1;
					}
                                        else if (u_flag && strncasecmp(prev_outfile_line, line2, PAGE_SIZE) == 0) {
                                        	printk("Ignoring duplicate\n");
                                                goto loop_read_next_line2;
					}
				}
				else {	
					if(t_flag && strncmp(prev_outfile_line, line2, PAGE_SIZE) > 0) {
        	                		printk("Line is not sorted : Line2 : %s\n", line2);
                	                	errno = -EINVAL;
                        	                goto close;
					}
					else if(strncmp(prev_outfile_line, line2, PAGE_SIZE) > 0) {
						printk("Skipping unsorted line\n");
						goto loop_read_next_line2;
					}
					if(u_flag && strncmp(prev_outfile_line, line1, PAGE_SIZE) == 0) {
        	                		printk("Ignoring duplicate\n");
                	                	goto loop_read_next_line1;
					}
        	                        else if (u_flag && strncmp(prev_outfile_line, line2, PAGE_SIZE) == 0) {
	        	                	printk("Ignoring duplicate\n");
        	        	               	goto loop_read_next_line2;
                	        	}
				}
				buffer_write(filp_outfile, result, line2, &offset_outfile, &result_offset, &bytes2, &errno);
				if(errno)
               	                	goto close;
				(*args->data)++;
				strncpy(prev_outfile_line, line2, PAGE_SIZE);
loop_read_next_line2:
				bytes2 = line_read(filp_infile2, buffer2, line2, &offset_infile2, &buffer2_offset, &bytes_read_infile2, &errno);
        	        	if(errno)
	                                goto close;

			}
		}while(bytes1 && bytes2);
			
		/*
		 * Process the lines remaining from the input file1.
		 */
		while(bytes1) {
			if(i_flag) {
				if(t_flag && strncasecmp(prev_outfile_line, line1, PAGE_SIZE)>0) {
					printk("Line is not sorted : Line1 : %s\n", line1);
					errno = -EINVAL;
					goto close;
				}
                                else if(strncasecmp(prev_outfile_line, line1, PAGE_SIZE) > 0) {
                                        printk("Skipping unsorted line\n");
                                        goto read_next_line1;
                                }
                                if(u_flag && strncasecmp(prev_outfile_line, line1, PAGE_SIZE) == 0) {
                                        printk("Ignoring duplicate\n");
                                        goto read_next_line1;
                        	}				
			}
			else {
				if(t_flag && strncmp(prev_outfile_line, line1, PAGE_SIZE)>0) {
        	        	        printk("Line is not sorted : Line1 : %s\n", line1);
                	        	errno = -EINVAL;
                        	       	goto close;
	                       	}
				else if(strncmp(prev_outfile_line, line1, PAGE_SIZE) > 0) {
        	        	        printk("Skipping unsorted line\n");
                	       		goto read_next_line1;
                        	}
	                        if(u_flag && strncmp(prev_outfile_line, line1, PAGE_SIZE) == 0) {
        	                     	printk("Ignoring duplicate\n");
                	        	goto read_next_line1;
	                        }
			}
			buffer_write(filp_outfile, result, line1, &offset_outfile, &result_offset, &bytes1, &errno);
        	        if(errno)
                	        goto close;
			(*args->data)++;
			strncpy(prev_outfile_line, line1, PAGE_SIZE);
read_next_line1:
			bytes1 = line_read(filp_infile1, buffer1, line1, &offset_infile1, &buffer1_offset, &bytes_read_infile1, &errno);
        	        if(errno)
                	        goto close;
		}
				
		/*
                 * Process the lines remaining from the input file2.
                 */
		while(bytes2) {
			if(i_flag) {
				if(t_flag && strncasecmp(prev_outfile_line, line2, PAGE_SIZE)>0) {
                                	printk("Line is not sorted : Line2 : %s\n", line2);
                                        errno = -EINVAL;
                                        goto close;
				}
                                else if(strncasecmp(prev_outfile_line, line2, PAGE_SIZE) > 0) {
                                        printk("Skipping unsorted line\n");
                                        goto read_next_line2;
				}
                                if (u_flag && strncasecmp(prev_outfile_line, line2, PAGE_SIZE) == 0) {
                                        printk("Ignoring duplicate\n");
					goto read_next_line2;
				}	
			}
			else {
				if(t_flag && strncmp(prev_outfile_line, line2, PAGE_SIZE)>0) {
        	                	printk("Line is not sorted : Line2 : %s\n", line2);
                	                errno = -EINVAL;
                        	        goto close;
				}
				else if(strncmp(prev_outfile_line, line2, PAGE_SIZE) > 0) {
					printk("Skipping unsorted line\n");
					goto read_next_line2;
				}
				if (u_flag && strncmp(prev_outfile_line, line2, PAGE_SIZE) == 0) {
                	        	printk("Ignoring duplicate\n");
	                                goto read_next_line2;
	        		}
			}
			buffer_write(filp_outfile, result, line2, &offset_outfile, &result_offset, &bytes2, &errno);
			if(errno)
                        	goto close;
			(*args->data)++;
			strncpy(prev_outfile_line, line2, PAGE_SIZE);
read_next_line2:
			bytes2 = line_read(filp_infile2, buffer2, line2, &offset_infile2, &buffer2_offset, &bytes_read_infile2, &errno);
        	        if(errno)
                		goto close;
		}
		file_write(filp_outfile, result, &offset_outfile, result_offset, &errno); 
		
		if(d_flag) {
			errno = copy_to_user(user_args->data, args->data, sizeof(unsigned int));
   			if(errno)
				goto fault;
		}
		goto close;

fault:
		errno = -EFAULT;
		goto close;

no_mem:
		errno = -ENOMEM;
		
close:
		/*
 		 * Remove the temp file if aome error was encountered during program execution.
		 * Else rename the temp file to the output file provided by the user.
		 */
		if(errno) {
			if(filp_outfile != NULL)
                        	unlink_file(d_inode(filp_outfile->f_path.dentry->d_parent), filp_outfile->f_path.dentry, &errno);
		}
		else {
			if(filp_outfile != NULL)
				rename_file(d_inode(filp_outfile->f_path.dentry->d_parent), filp_outfile->f_path.dentry, 
					    d_inode(filp_user_outfile->f_path.dentry->d_parent), filp_user_outfile->f_path.dentry, &errno);
		}
		if(args->outfile != NULL)
			kfree(args->outfile);
		if(args->infile1 != NULL)
			kfree(args->infile1);
		if(args->infile2 != NULL)
			kfree(args->infile2);
		if(args->data != NULL)
			kfree(args->data);
		if(args != NULL)
			kfree(args);
		if(filp_infile1 != NULL)
			filp_close(filp_infile1, NULL);
		if(filp_infile2 != NULL)
			filp_close(filp_infile2, NULL);
		if(filp_outfile != NULL) 
			filp_close(filp_outfile, NULL);
		if(filp_user_outfile != NULL) 
                        filp_close(filp_user_outfile, NULL);
		if(buffer1 != NULL)
			kfree(buffer1);
		if(buffer2 != NULL)
			kfree(buffer2);
		if(result != NULL)
			kfree(result);
		if(line1 != NULL)
                        kfree(line1);
		if(line2 != NULL)
			kfree(line2);
		if(prev_outfile_line != NULL)
                        kfree(prev_outfile_line);
		return errno;
	}
}



static int __init init_sys_xmergesort(void)
{
	printk("installed new sys_xmergesort module\n");
	if (sysptr == NULL)
		sysptr = xmergesort;
	return 0;
}
static void  __exit exit_sys_xmergesort(void)
{
	if (sysptr != NULL)
		sysptr = NULL;
	printk("removed sys_xmergesort module\n");
}
module_init(init_sys_xmergesort);
module_exit(exit_sys_xmergesort);
MODULE_LICENSE("GPL");
