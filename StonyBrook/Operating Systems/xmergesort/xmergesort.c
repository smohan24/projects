#include <asm/unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/syscall.h>
#include <unistd.h>
#include <stdbool.h>

#ifndef __NR_xmergesort
#error xmergesort system call not defined
#endif

#define FILE_MAX 255 
#define PATH_MAX 4095 // chars in a pathname without including nul


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

bool is_valid_filename(const char *arg, short arg_length) {
	int j;
	short filename_length = 0;
	bool valid_filename = true;
	for(j = arg_length-1; j >= 0 && arg[j] != '/'; j--)
		filename_length++;
	if(arg_length == 0 || arg == NULL || strcasecmp(arg, "null") == 0) {
		printf("\nInvalid file name: %s\n", arg);
		valid_filename = false; 
	}
	else if(arg_length > PATH_MAX) {
		printf("\nPath to file should not be more than %d characters long\n", PATH_MAX);
               	valid_filename = false;
        }
	else if(filename_length > FILE_MAX) {
		printf("\nFile name should not be more than %d characters long\n", FILE_MAX);
		valid_filename = false;
	}
	return valid_filename;
}

int main(int argc, const char *argv[])
{
	int rc = 0;
	short int i, j;
	char *flags = NULL;
	short arg_length;
	struct merge_args args = {.infile1 = NULL, .infile2 = NULL, .outfile = NULL, .flags = 0x0000};
	i = 1;

	if(argc != 5) {
		printf("\nInvalid number of arguments.");
		printf("\nPlease follow the format : [-uaitd] output_file.txt input_file1.txt input_file2.txt\n");
		goto exit;
	}
	else {
		flags = malloc(sizeof(char)*strlen(argv[i]));
		if(!flags)
			goto no_mem;
		strcpy(flags, argv[i++]);
		if(flags[0] != '-' || strlen(flags) < 2) {
			printf("\nInvalid flag format. Please follow the format : [-uaitd] output_file.txt input_file1.txt input_file2.txt\n");
			goto exit;
		}
		for(j = 1; flags[j] != '\0'; j++) {
			if(flags[j] == '-') {
                		printf("\nInvalid flag format. Please follow the format : [-uaitd] output_file.txt input_file1.txt input_file2.txt\n");
                		goto exit;
			}
			
			switch(flags[j]) {
				case 'u' : 	hex_flags = u;
						break;
				case 'a' :      hex_flags = a;
                                                break;
				case 'i' :      hex_flags = i;
						break;
				case 't' :      hex_flags = t;
                                                break;
				case 'd' :      hex_flags = d;
                                                break;
				default :	printf("\nInvalid flag format.\n");
						printf("\nPlease follow the format : [-uaitd] output_file.txt input_file1.txt input_file2.txt\n");
                                		goto exit;

			}
			args.flags |= (1 << hex_flags);
		}
		
		arg_length = strlen(argv[i]);
		if(!is_valid_filename(argv[i], arg_length))
			goto exit;		
		args.outfile = malloc(sizeof(char)*arg_length);
		if(!args.outfile)
			goto no_mem;
                strcpy(args.outfile, argv[i++]);

		arg_length = strlen(argv[i]);
                if(!is_valid_filename(argv[i], arg_length))
                        goto exit;           
		args.infile1 = malloc(sizeof(char)*arg_length);
		if(!args.infile1) 
                        goto no_mem;
		strcpy(args.infile1, argv[i++]);
		
		arg_length = strlen(argv[i]);
                if(!is_valid_filename(argv[i], arg_length))
                        goto exit;           
		args.infile2 = malloc(sizeof(char)*arg_length);
		if(!args.infile2) 
			goto no_mem;
		strcpy(args.infile2, argv[i++]);

		args.data = malloc(sizeof(unsigned int));
		if(!args.data)
			goto no_mem;
	}
		
	void *dummy = (void *) &args;

 	rc = syscall(__NR_xmergesort, dummy);
		
	if (rc == 0) {
		printf("\nsyscall returned %d\n", rc);
		if(args.flags & (1<<(hex_flags = d)))
			printf("No of sorted lines in output file : %u\n", *(args.data));
	}
	else {
		if(errno == 75)
			printf("\nErrno: %d - A line in file cannot be more than 4095 characters long\n", errno);
		else if(errno == 76)
			printf("\nErrno: %d - Please provide distinct files\n", errno);
		else if(errno == 22)
			printf("\nErrno: %d - The input files are not sorted\n", errno);
		perror("\nError");	
		printf("\nsyscall returned %d (errno=%d)\n", rc, errno);
	}

	goto exit;
	
no_mem:
        printf("\nCould not allocate memory\n");
	
exit:
	if(args.infile1 != NULL)
		free(args.infile1);
	if(args.infile2 != NULL)
		free(args.infile2);
	if(args.outfile != NULL)
		free(args.outfile);
	if(args.data != NULL)
		free(args.data);
	if(flags != NULL)
		free(flags);
	exit(rc);
}
