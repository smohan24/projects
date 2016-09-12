							 /* MINI PROJECT*/
/*
					TITLE : PASSPORT OFFICE DATABASE
			GROUP MEMBERS : SHIPRA SHINDE (2443)
							SREEJA MOHAN  (2455)
							SAMRUDDHI UMALKAR (2459)
							NOOPUR VAIDYA (2460)
*/

// header files //
#include<stdio.h>
#include<conio.h>
#include<string.h>

// structure declaration //
typedef struct applicant
{
	int fileno;
	char fullname[50],mname[50],fname[50];
	char addr[100];
	int gender;
	char mobno[15];
	int nat;
	int dobdd,dobmm,dobyy;
	char pob[25];
	char edu[20];
	char occup[20];
	char govtemp;
	int fees;
	int marstatus;
	int polver;
	char appbef;
	int pastatus;
	int issuedd,issuemm,issueyy;
	int expdd,expmm,expyy;
	char emergency;
	struct applicant *link;
}NODE;

// function prototypes //

NODE *getnode();
void accept();
NODE *findlast(NODE *start);
NODE *create();
void display(NODE *start);
NODE *search(NODE *start,char[],int);
void dispnode(NODE *ptr);
void changestatus(NODE *ptr);
NODE *modify(NODE *start);
NODE *delall(NODE *start);
int check(char []);
void checkchar(char []);   //check string//
void checkch(int choice);  //check choice 1/2//
NODE *add(NODE *start);
void checkyn(char *);        //check choice y/n//
int checkmobno(char []);
void checkmob(char []);
void checkdate(int *dd,int *mm,int *yy);
void reissue(NODE *ptr);
void renew(NODE *ptr);
void viewstatus(NODE *start);
int main()
{
	int choice,fileno;
	char ch,fullname[50];
	NODE *start=NULL,*ptr=NULL;
	clrscr();
	do       // do while loop //
	{
		clrscr();
		// menu //
		printf("-------------------------------------------------------------------------------");
		printf("\n\t\t\tPASSPORT OFFICE DATABASE\n");
		printf("--------------------------------------------------------------------------------");
		printf("\n\t\t\t  ****** MENU ******");
		printf("\n\n\t\t\t1.CREATE THE DATABASE");
		printf("\n\t\t\t2.DISPLAY THE DATABASE");
		printf("\n\t\t\t3.SEARCH A RECORD");
		printf("\n\t\t\t4.MODIFY A RECORD");
		printf("\n\t\t\t5.RENEW THE PASSPORT");
		printf("\n\t\t\t6.REISSUE THE PASSPORT");
		printf("\n\t\t\t7.ADD A RECORD");
		printf("\n\t\t\t8.DELETE A RECORD");
		printf("\n\t\t\t9.CHANGE STATUS OF THE RECORD");
		printf("\n\t\t\t10.VIEW STATUS");
		printf("\n\t\t\t11.EXIT");
		printf("\n--------------------------------------------------------------------------------");
		printf("\n\nEnter your choice :: ");
		scanf("%d",&choice);
		printf("\n--------------------------------------------------------------------------------");
		switch(choice)                                 // switch case //
		{
			case 1:// creating the database //
				   start=create();
				   break;
			case 2:// displaying the database //
				   printf("\n");
				   display(start);
				   break;
			case 3:// searching the record //
				   printf("\nEnter the applicant's file number :");
				   scanf("%d",&fileno);
				   printf("\nEnter the applicant's name: ");
				   flushall();
				   gets(fullname);
				   ptr=search(start,fullname,fileno);
				   if(ptr==NULL)
				   {
					printf("\nRecord of applicant not found");
				   }
				   else
				   {
						dispnode(ptr);
				   }
				   break;
			case 4:// modifying the record //
				   start=modify(start);
				   break;
			case 5:// renewing the passport //
				   printf("\nEnter the applicant's file number :");
				   scanf("%d",&fileno);
				   printf("\nEnter the applicant's name: ");
				   flushall();
				   gets(fullname);
				   ptr=search(start,fullname,fileno);
				   if(ptr==NULL)
				   {
					printf("\nRecord of applicant not found");
				   }
				   else
				   if(ptr->pastatus==2)
				   {
						renew(ptr);
				   }
				   else
				   {
						printf("\nPassport is not yet issued");
				   }
				   break;
			case 6:// reissuing the passport //
				   printf("\nEnter the applicant's file number :");
				   scanf("%d",&fileno);
				   printf("\nEnter the applicant's name: ");
				   flushall();
				   gets(fullname);
				   ptr=search(start,fullname,fileno);
				   if(ptr==NULL)
				   {
					printf("\nRecord of applicant not found");
				   }
				   if(ptr->pastatus==2)
				   {
						reissue(ptr);
				   }
				   else
				   {
						printf("\nPassport is not yet issued");
				   }
				   break;
			case 7:// inserting the record //
				   start=add(start);
				   break;
			case 8:// deleting the record //
				   ptr=delall(start);
				   printf("\nAll the records whose passport is rejected has been deleted");
				   break;
			case 9:// changing the status //
				   printf("\nEnter the applicant's file number :");
				   scanf("%d",&fileno);
				   printf("\nEnter the applicant's name: ");
				   flushall();
				   gets(fullname);
				   ptr=search(start,fullname,fileno);
				   changestatus(ptr);
				   break;
			case 10:// viewing the status //
				   viewstatus(start);
				   break;
			case 11:// exit //
					exit();
			default:// default //
					printf("\n\t INVALID CHOICE");
		}
		printf("\n--------------------------------------------------------------------------------");											// end of switch //
		printf("\n\nDo you want to continue ?(Y/N) :: ");
		flushall();
		scanf("%c",&ch);                       // choice for continuation //
		checkyn(&ch);
	}                                             // end of do while //
	while(ch=='Y'||ch=='y');
	getch();
	return 0;
}

						 //function definitions//

// accepting the data of the applicants //
NODE *getnode()
{
	NODE *temp=NULL,*ptr;
	int i,flag;
	char name[50];
	temp=(NODE*)malloc(sizeof(NODE));// dynamic memory allocation //
	if(temp==NULL)
	{
		printf("\nMEMORY ALLOCATION ERROR");
	}
	else
	{   // accepting the information of the applicants //
		printf("\nEnter applicant's information  :\n\n");
		printf("\nApplicant's full name (Surname Name Father's/Husband's name):\n");
		flushall();
		gets(temp->fullname);
		checkchar(temp->fullname);         // validation  //
		printf("\nMother's name : ");
		flushall();
		gets(temp->mname);
		checkchar(temp->mname);            // validation  //
		printf("\nFather's name : ");
		flushall();
		gets(temp->fname);
		checkchar(temp->fname);              // validation  //
		printf("\nResidential address : ");
		flushall();
		gets(temp->addr);
		while(strlen(temp->addr)==0)
		{
			printf("\nRe-enter the data :\n ");
			flushall();
			gets(temp->addr);
		}
		printf("\nGender [1.Male 2.Female] :");
		scanf("%d",&temp->gender);
		checkch(temp->gender);             // validation  //
		printf("\nMobile no : ");
		scanf("%s",&temp->mobno);
		checkmob(temp->mobno);             // validation  //
		printf("\nDate of birth (dd mm yy) : ");
		scanf("%d%d%d",&temp->dobdd,&temp->dobmm,&temp->dobyy);
		checkdate(&temp->dobdd,&temp->dobmm,&temp->dobyy);         // validation  //
		printf("\nPlace of birth : ");
		flushall();
		gets(temp->pob);
		checkchar(temp->pob);             // validation  //
		printf("\nMarital status [1.Unmarried 2.Married] : ");
		scanf("%d",&temp->marstatus);
		checkch(temp->marstatus);                   // validation  //
		printf("\nEducational qualification : ");
		flushall();
		gets(temp->edu);
		checkchar(temp->edu);                 // validation  //
		printf("\nOccupation : ");
		flushall();
		gets(temp->occup);
		checkchar(temp->occup);              // validation  //
		printf("\nPolice Verification [1.Clear 2.Not Clear] : ");
		scanf("%d",&temp->polver);
		checkch(temp->polver);               // validation  //
		printf("\nNationality [1.Indian 2.Other] : ");
		scanf("%d",&temp->nat);
		checkch(temp->nat);                  // validation  //
		if((temp->polver==1)&&(temp->nat==1))
		{
			temp->pastatus=1;
		}
		else
		{
			temp->pastatus=3;
		}
		printf("\nIs the applicant a government employee ? (y/n) : ");
		flushall();
		scanf("%c",&temp->govtemp);
		checkyn(&temp->govtemp);              // validation  //
		if(temp->govtemp=='y'||temp->govtemp=='Y')
		{
			temp->fees=500;
		}
		else
		{
			temp->fees=1000;
		}
		printf("\nHas the applicant applied before ? (y/n) :");
		flushall();
		scanf("%c",&temp->appbef);
		checkyn(&temp->appbef);               // validation  //
		printf("\nIs there an emergency  ? (y/n) :");
		flushall();
		scanf("%c",&temp->emergency);
		checkyn(&temp->emergency);            // validation  //
		temp->link=NULL;
	}
	return(temp);  // return the address of the node created //
}


			  // validations //

// to check whether the entered date is valid //
void checkdate(int *dd,int *mm,int *yy)
{
	int mon[12]={31,28,31,30,31,30,31,31,30,31,30,31},flag=1;
	while(flag==1)
	{
		flag=0;
		if(*mm>12)
		{
			flag=1;
			printf("\nThere are only 12 months");
		}
		if(*dd>mon[*mm-1])
		{
			flag=1;
			printf("\nThis month contains only %d days",mon[*mm-1]);
		}
		if((*yy>2011)||(*yy<1920))
		{
			flag=1;
			printf("\nInvalid year");
		}
		if(flag==1)
		{
			printf("\nRe-enter date (dd mm yy) : ");
			scanf("%d%d%d",dd,mm,yy);
		}
	}
}

// to check whether the entered name is valid //
int check(char name[])
{
	int i,flag=1;
	for(i=0;i<strlen(name);i++)
	{
		if(((name[i]>=65)&&(name[i]<=90))||(name[i]==32)||((name[i]>=97)&&(name[i]<=122)))
		{
			continue;
		}
		else
		{
			printf("\nEnter alphabets only : ");
			flag=0;
			break;
		}
	}
	return(flag);
}

// to check whether the entered name is valid //
void checkchar(char name[])
{
	int flag;
	if(strlen(name)==0)
	{
		printf("\nRe-enter the data :\n ");
		flushall();
		gets(name);
	}
	flag=check(name);
	do
	{
		if(flag==0)
		{
			printf("\nRe-enter the data :\n ");
			flushall();
			gets(name);
			flag=check(name);
		}
	}while(flag!=1);
}

// to check whether the enetered choice is valid //
void checkch(int choice)
{
	while((choice!=1&&choice!=2))
	{
		   printf("\nRe-enter the choice :");
		   scanf("%d",&choice);
	}
}

// to check whether the entered choice is valid //
void checkyn(char *yn)
{
	while(((*yn!='y')&&(*yn!='n'))&&((*yn!='Y')&&(*yn!='N')))
	{
		   printf("\nRe-enter the choice :");
		   flushall();
		   scanf("%c",yn);
	}
}

// to chech whether the entered mobile number is valid //
int checkmobno(char mobno[])
{
	int i,flag=1;
	for(i=0;mobno[i]!='\0';i++)
	{
		if((mobno[i]>=48)&&(mobno[i]<=57))
		{
			continue;
		}
		else
		{
			printf("\nEnter numbers only : ");
			flag=0;
			break;
		}
	}
	return(flag);
}

// to check if the mobile number consists of ten digits only //
void checkmob(char mobno[])
{
	int flag,len;
	len=strlen(mobno);
	while(len<10||len>10)
	{
		printf("\nMobile number should contain 10 digits only");
		printf("\nRe-enter the mobile number :");
		flushall();
		gets(mobno);
		len=strlen(mobno);
	}
	flag=checkmobno(mobno);
	do
	{
		if(flag==0)
		{
			printf("\nRe-enter the mobile number :");
			flushall();
			gets(mobno);
			flag=checkmobno(mobno);
		}
	}while(flag!=1);
}

// to find the last node of the list //
NODE *findlast(NODE *start)
{
	NODE *ptr=start;
	while(ptr->link!=NULL) // traverse the list upto end //
	{
		ptr=ptr->link;
	}
	return(ptr);
}

// to create the database //
NODE *create()
{
	NODE *temp,*ptr,*start=NULL;
	int fileno=1000;
	char ch;
	do
	{
		if(start==NULL)   // for the first node //
		{
			start=temp=getnode();
			temp->fileno=fileno;
		}
		else             // for the remaining nodes //
		{
			temp->link=getnode();
			(temp->link)->fileno=temp->fileno+1;
			temp=temp->link;
		}
		printf("\n--------------------------------------------------------------------------------");
		printf("\nDo you want to create more nodes? (y/n) : ");
		flushall();
		scanf("%c",&ch);
		checkyn(&ch);     // validation  //
	}while(ch=='y'||ch=='Y');
	return(start);
}

// for displaying the database //
void display(NODE *start)
{
	NODE *ptr;
	for(ptr=start;ptr!=NULL;ptr=ptr->link)
	{   // repeat until last node //
		printf("\n-------------------------------------------------------------------------------");
		printf("\n\nFILE NO : ");
		printf("%d",ptr->fileno);
		printf("\n-------------------------------------------------------------------------------");
		printf("\n\nFull name              :  ");
		printf("%s",ptr->fullname);
		printf("\n\nMother's name          :  ");
		printf("%s",ptr->mname);
		printf("\n\nFather's name          :  ");
		printf("%s",ptr->fname);
		printf("\n\nResidential address    :  ");
		printf("%s",ptr->addr);
		printf("\n\nGender                 :  ");
		if(ptr->gender==1)
			printf("Male");
		else
			printf("Female");
		printf("\n\nMobile no              :  ");
		printf("%s",ptr->mobno);
		printf("\n\nDate of birth          :  ");
		printf("%d/%d/%d",ptr->dobdd,ptr->dobmm,ptr->dobyy);
		printf("\n\nPlace of birth         :  ");
		printf("%s",ptr->pob);
		printf("\n\nMarital status         :  ");
		if(ptr->marstatus==1)
			printf("Unmarried");
		else
			printf("Married");
		printf("\n\nNationality            :  ");
		if(ptr->nat==1)
		{
			printf("Indian");
		}
		else
		{
			printf("Other");
		}
		printf("\n\nQualification          :  ");
		printf("%s",ptr->edu);
		printf("\n\nOccupation             :  ");
		printf("%s",ptr->occup);
		printf("\n\nPolice Verification    :  ");
		if(ptr->polver==1)
		{
			printf("Clear");
		}
		else
		{
			printf("Not Clear");
		}

		printf("\n\nGovernment Employee    :  ");
		if(ptr->govtemp=='y'||ptr->govtemp=='Y')
			printf("Yes");
		else
			printf("No");
		printf("\n\nFees                   :  Rs");
		printf("%d",ptr->fees);
		printf("\n\nApplied Before         :  ");
		if(ptr->appbef=='y'||ptr->appbef=='Y')
		{
			printf("Yes");
		}
		else
		{
			printf("No");
		}
		printf("\n\nEmergency              :  ");
		if(ptr->emergency=='y'||ptr->emergency=='Y')
		{
			printf("Yes");
		}
		else
		{
			printf("No");
		}
		printf("\n\nPassport Status        :  ");
		if(ptr->pastatus==1)
		{
			printf("In process");
		}
		else if(ptr->pastatus==3)
		{
			printf("Rejected");
		}
		else
		{
			printf("Issued");
		}
		if((ptr->pastatus==1)||(ptr->pastatus==3))
		{
			printf("\n\nIssue Date             :  NA");
			printf("\n\nExpiry Date            :  NA");
		}
		else
		{
			printf("\n\nIssue Date             :  ");
			printf("%d/%d/%d",ptr->issuedd,ptr->issuemm,ptr->issueyy);
			printf("\n\nExpiry Date            :  ");
			printf("%d/%d/%d",ptr->expdd,ptr->expmm,ptr->expyy);
		}
		getch();
	}

}

// for displaying the particular node //
void dispnode(NODE *ptr)
{
	printf("\n-------------------------------------------------------------------------------");
	printf("\n\nFILE NO : ");
	printf("%d",ptr->fileno);
	printf("\n-------------------------------------------------------------------------------");
	printf("\n\nFull name              :  ");
	printf("%s",ptr->fullname);
	printf("\n\nMother's name          :  ");
	printf("%s",ptr->mname);
	printf("\n\nFather's name          :  ");
	printf("%s",ptr->fname);
	printf("\n\nResidential address    :  ");
	printf("%s",ptr->addr);
	printf("\n\nGender                 :  ");
	if(ptr->gender==1)
		printf("Male");
	else
		printf("Female");
	printf("\n\nMobile no              :  ");
	printf("%s",ptr->mobno);
	printf("\n\nDate of birth          :  ");
	printf("%d/%d/%d",ptr->dobdd,ptr->dobmm,ptr->dobyy);
	printf("\n\nPlace of birth         :  ");
	printf("%s",ptr->pob);
	printf("\n\nMarital status         :  ");
	if(ptr->marstatus==1)
		printf("Unmarried");
	else
		printf("Married");
	printf("\n\nNationality            :  ");
	if(ptr->nat==1)
		printf("Indian");
	else
		printf("Other");
	printf("\n\nQualification          :  ");
	printf("%s",ptr->edu);
	printf("\n\nOccupation             :  ");
	printf("%s",ptr->occup);
	printf("\n\nPolice Verification    :  ");
	if(ptr->polver==1)
		printf("Clear");
	else
		printf("Not Clear");
	printf("\n\nGovernment Employee    :  ");
	if(ptr->govtemp=='y'||ptr->govtemp=='Y')
		printf("Yes");
	else
		printf("No");
	printf("\n\nFees                   :  Rs");
	printf("%d",ptr->fees);
	printf("\n\nApplied Before         :  ");
	if(ptr->appbef=='y'||ptr->appbef=='Y')
		printf("Yes");
	else
		printf("No");
	printf("\n\nEmergency              :  ");
	if(ptr->emergency=='y'||ptr->emergency=='Y')
		printf("Yes");
	else
		printf("No");
	printf("\n\nPassport Status        :  ");
	if(ptr->pastatus==1)
		printf("In process");
	else if(ptr->pastatus==3)
		printf("Rejected");
	else
		printf("Issued");
	if((ptr->pastatus==1)||(ptr->pastatus==3))
	{
		printf("\n\nIssue Date             :  NA");
		printf("\n\nExpiry Date            :  NA");
	}
	else
	{
		printf("\n\nIssue Date             :  ");
		printf("%d/%d/%d",ptr->issuedd,ptr->issuemm,ptr->issueyy);
		printf("\n\nExpiry Date            :  ");
		printf("%d/%d/%d",ptr->expdd,ptr->expmm,ptr->expyy);
	}
}

// for searching a particular record //
NODE *search(NODE *start,char fullname[],int fileno)
{
	NODE *ptr=NULL;
	for(ptr=start;ptr!=NULL;ptr=ptr->link)
	{
		if((strcmpi(fullname,ptr->fullname)==0)&&(ptr->fileno==fileno))
		{
			break;
		}
	}
	return(ptr);
}

// for changing the status of a particular record //
void changestatus(NODE *ptr)
{
	if(ptr==NULL)
	{
		printf("\nRecord not found");
	}
	else
	{
		printf("\nEnter new status [1.In process 2.Issued]: ");
		scanf("%d",&ptr->pastatus);
		if(ptr->pastatus==2)
		{
			printf("\nEnter Issue Date : ");
			scanf("%d%d%d",&ptr->issuedd,&ptr->issuemm,&ptr->issueyy);
			checkdate(&ptr->issuedd,&ptr->issuemm,&ptr->issueyy);
			if(ptr->emergency=='Y'||ptr->emergency=='y')
			{   // validity of the passport is for ten years in case of emergency //
				ptr->expdd=ptr->issuedd+1;
				ptr->expmm=ptr->issuemm;
				ptr->expyy=ptr->issueyy+5;
			}
			else
			{   // valididty of the passport is for ten years //
				ptr->expdd=ptr->issuedd+1;
				ptr->expmm=ptr->issuemm;
				ptr->expyy=ptr->issueyy+10;
			}
		}
		dispnode(ptr);  // displaying the record //
	}
}

// for modifying the particular record //
NODE *modify(NODE *start)
{
	NODE *ptr;
	int choice,fileno;
	char ch,fullname[50];
	printf("\nEnter the applicant's file number :");
	scanf("%d",&fileno);
	printf("\nEnter the full name of the applicant:\n");
	flushall();
	gets(fullname);
	ptr=search(start,fullname,fileno);  // for searching a record //
	if(ptr==NULL)
	{
		printf("\nRecord of applicant not found");
	}
	else
	{
		dispnode(ptr); // for dispalying a particular record //
		do
		{
		printf("\n-------------------------------------------------------------------------------");
		printf("\n\n\t\t **** MENU ****");
		printf("\n\t\t1.FULL NAME");
		printf("\n\t\t2.RESIDENTIAL ADDRESS");
		printf("\n\t\t3.MOBILE NUMBER");
		printf("\n\t\t4.MARITAL STATUS");
		printf("\n\n-------------------------------------------------------------------------------");
		printf("\n\nEnter the field that is to be modified :");
		scanf("%d",&choice);
		switch(choice)
		{
			case 1:// changing the name //
				printf("\nEnter new name :");
				flushall();
				gets(ptr->fullname);
				printf("\nThe modified record is :");
				dispnode(ptr);
				break;
			case 2:// entering the new address //
				printf("\nEnter residential address : ");
				flushall();
				gets(ptr->addr);
				printf("\nThe modified record is :");
				dispnode(ptr);
				break;
			case 3:// entering the mobile number //
				printf("\nEnter mobile no : ");
				scanf("%s",&ptr->mobno);
				printf("\nThe modified record is :");
				dispnode(ptr);
				break;
			case 4:// for changing the marital status //
				printf("\nEnter marital status [1.Unmarried 2.Married] : ");
				scanf("%d",&ptr->marstatus);
				printf("\nThe modified record is :");
				dispnode(ptr);
				break;
			default:// default//
				printf("\nInvalid choice");
		}
		printf("\n-------------------------------------------------------------------------------");
		printf("\nDo you want to modify more fields ?(Y/N):");
		flushall();
		scanf("%c",&ch);
	}
	while(ch=='Y'||ch=='y');
	}
	return(start);// for returning the address of the starting node //
}

// for deleting the record whose passport is rejected //
NODE *delall(NODE *start)
{

	NODE *prev=NULL,*ptr=NULL,*temp=NULL;
	int count=0;
	temp=start;
	while(temp!=NULL)
	{   // for traversing the list //
		for(ptr=start;ptr!=NULL&&ptr->pastatus!=3;)
		{
			prev=ptr;
			ptr=ptr->link;
		}
		if(ptr->pastatus==3)
		{
			if(ptr==start)
			{
				start=ptr->link;
			}
			else
			{
				prev->link=ptr->link;
			}
			free(ptr);
			count++;
		}
		temp=temp->link;
	}
	if(count==0)
	{
		printf("\nNone of the passport is rejected");
	}
	else
	{
		if(start==NULL)
		{
			printf("\nThere are no records");
		}
		else
		{
			printf("\n\nDatabase after deletion is :\n");
			display(start); // for displaying the remaining records //
		}
	}
	return(start);// return the address of the first node //
}

// inserting a new record //
NODE *add(NODE *start)
{
	NODE *ptr,*temp;
	ptr=start;
	temp=getnode();
	if(start==NULL)  // if there are no records present //
	{
		return temp;
	}
	ptr=findlast(start); // for finding the last node //
	temp->fileno=ptr->fileno+1;
	ptr->link=temp;
	display(start);   // for displaying the new record //
	return(start); // return the address of the first node //
}

// for reissuing the passport //
void reissue(NODE *ptr)
{
	int dd,mm,yy,flag=0;
	printf("\nEnter Today's Date : ");
	scanf("%d%d%d",&dd,&mm,&yy);
	// to check if the current date is within one year from the expiry date //
	if(ptr->expyy-yy>0)
	{   // check if the difference is less than 1 //
		if(ptr->expyy-yy<=1)
		{
			if(ptr->expyy-yy==0)
			{   // if the difference is zero //
				flag=1;
			}
			 // if the differnce in year is one //
			else
			{
				 // check for month //
				if(ptr->expmm<=mm)
				{
					if(ptr->expmm<mm)
					{
						flag=1;
					}
					else
					{
						// if month is same //
						if(ptr->expmm==mm)
						{
							// check the date //
							if(ptr->expdd>=dd)
							{
								flag=1;
							}
							else
							{
								flag=0;
							}
						}
					}
				}
				else
				{
					flag=0;
				}
			}
		}
		// if all the conditions mentioned above are satisfied //
		if(flag==1)
		{
			ptr->issuedd=dd+1;
			ptr->issuemm=mm;
			ptr->issueyy=yy;
			ptr->expdd=ptr->issuedd+1;
			ptr->expmm=ptr->issuemm;
			ptr->expyy=ptr->issueyy+10;
			dispnode(ptr);
		}
		else
		{
			printf("\nPASSPORT CANNOT BE REISSUED"); // if any one of the conditions are not satisfied //
		}
	}
	// to check if the current date is within three years after the expiry date //
	else
	{
		// check if the difference is less than or equal to 3 //
		if(yy-ptr->expyy<=3)
		{
			// if the difference is less than 3 //
			if(yy-ptr->expyy<3)
			{
				flag=1;
			}
			else
			{
				// check for month //
				if(ptr->expmm>=mm)
				{
					if(ptr->expmm>mm)
					{
						flag=1;
					}
					else
					{
						// if month is same //
						if(ptr->expmm==mm)
						{
							// check for date //
							if(ptr->expdd>=dd)
							{
								flag=1;
							}
							else
							{
								flag=0;
							}
						}
					}
				}
				else
				{
					flag=0;
				}
			}
		}
		// if all the conditions are satisfied //
		if(flag==1)
		{
			ptr->issuedd=dd+1;
			ptr->issuemm=mm;
			ptr->issueyy=yy;
			ptr->expdd=ptr->issuedd+1;
			ptr->expmm=ptr->issuemm;
			ptr->expyy=ptr->issueyy+10;
			dispnode(ptr);
		}
		else
		{   // if any of the condition is not satisfied //
			printf("\nPASSPORT CANNOT BE REISSUED");
		}
	}
}

// for renewing the passport //
void renew(NODE *ptr)
{
	// check if there was emergency //
	if(ptr->emergency=='Y'||ptr->emergency=='y')
	{
		ptr->expdd=ptr->expdd;
		ptr->expmm=ptr->expmm;
		ptr->expyy=ptr->expyy+5;
		dispnode(ptr);
	}
	else
	{
		printf("\nINVALID OPTION");
	}
}

// to view the status //
void viewstatus(NODE *start)
{
	NODE *ptr=NULL;
	int fileno;
	char fullname[50];
	printf("\nEnter the applicant's file number :");
	scanf("%d",&fileno);
	printf("\nEnter the applicant's name : ");
	flushall();
	gets(fullname);
	ptr=search(start,fullname,fileno); // to search the record //
	if(ptr==NULL)
	{
		printf("\nRecord not found");
	}
	else
	{
		printf("\nStatus 	    :  ");
		if(ptr->pastatus==1)
		{
			printf("In process");
		}
		else if(ptr->pastatus==3)
		{
			printf("Rejected");
		}
		else
		{
			printf("Issued");
			printf("\n\nIssue Date  :  ");
			printf("%d/%d/%d",ptr->issuedd,ptr->issuemm,ptr->issueyy);
			printf("\n\nExpiry Date :  ");
			printf("%d/%d/%d",ptr->expdd,ptr->expmm,ptr->expyy);
		}
	}
}

















































