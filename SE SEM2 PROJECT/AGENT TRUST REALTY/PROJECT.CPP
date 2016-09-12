/*                    REAL ESTATE AGENCY DATABASE

	Group Members :

	1. Shipra Shinde (2443)
	2. Soumya Nanda  (2454)
	3. Sreeja Mohan  (2455)
	4. Samruddhi Umalkar (2459)

*/

//header files
#include<graphics.h>
#include<iostream.h>
#include<fstream.h>
#include<stdlib.h>
#include<conio.h>
#include<string.h>
#include<stdio.h>
#include<dos.h>
#define MAX 100

class house
{
public:
		house();
		int budget;
		char name[20];
		char location[30];
		char plotno[20];
		int type;
		int key1;
		int chain;
		int status;
		char cntname[50];
		char bcompny[50];
		char cntno[11];
		char sqft[10];
		int no_of_rooms;
		char a1[50];
		char a2[50];
		char a3[50];
		int getdata();
		void putdata();
		void agent();
		int echeckmobno();
		void echeckmob();
		int gcheckmobno();
		void gcheckmob();
		void odisp(char);
		void cdisp(char);
		void disp_data(int);
};

class owner
{
 public:
		int no_of_records[6];
		void add_rec();
		void disp_rec();
		void sdisp_rec();
		void edit_rec();
		void disp_deleted();
		void initialize();
};


class customer
{
 public:
		void search();
};


void cover();
void display();
void bkpage();
void bkmenu();
void password();
char login();
void loading();
void loginfailed();
void spthanks();
char typepage();
void draw_rowhouse();
void draw_bunglow();
void draw_flat();
int rent_rate();
int pur_rate();
char purpose();
int Hash_key(int);

void main()
{
	char ch,ch1[2];
	int gd=DETECT,gm;
	char choice[2];
	owner o;
	customer c;
	clrscr();
	initgraph(&gd,&gm,"C:\\TCC\\BGI");
//	o.initialize();
	cover();
	while(ch!='1'&&ch!='2')
	{
	bkpage();
	ch=login();
	getch();
	switch(ch)
	{
		case '1'://login as owner
				password();
				do
				{
				do
				{
				bkpage();
				setcolor(5);
				settextstyle(4,0,3);
				outtextxy(150,80,"**** MENU ****");
				setcolor(BLUE);
				settextstyle(2,0,7);
				outtextxy(150,130,"1. Add Property Details");
				outtextxy(150,160,"2. Edit Property Details");
				outtextxy(150,190,"3. Display Available Properties");
				outtextxy(150,220,"4. Display Sold Properties");
				outtextxy(150,250,"5. Exit");
				setcolor(5);
				outtextxy(150,300,"Enter your choice : ");
				setfillstyle(11,14);
				bar3d(370,300,400,320,7,1);
				choice[0]=getch();
				choice[1]='\0';
				outtextxy(378,300,choice);
				getch();
				}while(choice[0]!='1'&&choice[0]!='2'&&choice[0]!='3'&&choice[0]!='4'&&choice[0]!='5');
				switch(choice[0])
				{
					case '1':

								o.add_rec();
								setfillstyle(11,14);
								break;
					case '2':
								o.edit_rec();
								break;

					case '3':
								o.disp_rec();
								break;
					case '4' :
								o.sdisp_rec();
								break;
					case '5':   exit(1);
	
				}
				setfillstyle(11,14);
				outtextxy(100,420,"Want to continue ? (y/n) : ");
				bar3d(430,430,460,450,5,1);
				flushall();
				ch=getch();
				ch1[0]=ch;
				ch1[1]='\0';
				outtextxy(440,425,ch1);
				getch();
				}while(ch1[0]=='y'||ch1[0]=='Y');
				if(ch!='y'&&ch!='Y')
					exit(1);
				break;				
		case '2'://login as customer

				do
				{
				do
				{
				bkpage();
				setcolor(5);
				settextstyle(4,0,3);
				outtextxy(150,80,"**** MENU ****");
				setcolor(BLUE);
				settextstyle(2,0,7);
				outtextxy(150,130,"1.Search");
				outtextxy(150,160,"2.Exit");
				setcolor(5);
				outtextxy(150,270,"Enter your choice : ");
				setfillstyle(11,14);
				bar3d(370,270,400,290,7,1);
				choice[0]=getch();
				choice[1]='\0';
				outtextxy(378,270,choice);
				getch();
				}while(choice[0]!='1'&&choice[0]!='2');
				switch(choice[0])
				{
					case '1':

							c.search();
								setfillstyle(11,14);
								break;
					case '4':
								exit(1);
					default:
								break;

				}
				setfillstyle(11,14);
				outtextxy(100,420,"Want to continue ? (y/n) : ");
				bar3d(430,430,460,450,5,1);
				flushall();
				ch=getch();
				ch1[0]=ch;
				ch1[1]='\0';
				outtextxy(440,425,ch1);
				getch();
				}while(ch1[0]=='y'||ch1[0]=='Y');
				if(ch!='y'&&ch!='Y')
					spthanks();
					getch();
					exit(1);
				break;
		default:
				break;
	}
	}
	getch();
	closegraph();
}

house::house()
{
	budget=0;
	strcpy(location,"----");
	strcpy(name,"----");
	type=0;
	key1=-1;
	chain=-1;
	status=0;
	strcpy(cntname,"----");
	strcpy(bcompny,"----");
	for(int i=0;i<10;i++)
	{
		cntno[i]=0;
	}
	strcpy(sqft,"\0");
	no_of_rooms=0;
	strcpy(a1,"----");
	strcpy(a2,"----");
	strcpy(a3,"----");
}

//initialise the records
void owner :: initialize()
{
	fstream finout;
	house h;
	int cnt=0;
	while(cnt<6)
	{
		if(cnt==0)
		{
			finout.open("apartrent.dat",ios::out|ios::binary);  //mode
		}
		else if(cnt==1)
		{
			finout.open("apartpur.dat",ios::out|ios::binary);  //mode
		}
		else if(cnt==2)
		{
			finout.open("villarent.dat",ios::out|ios::binary);  //mode
		}
		else if(cnt==3)
		{
			finout.open("villapur.dat",ios::out|ios::binary);  //mode
		}
		else if(cnt==4)
		{
			finout.open("rowrent.dat",ios::out|ios::binary);  //mode
		}
		else if(cnt==5)
		{
			finout.open("rowpur.dat",ios::out|ios::binary);  //mode
		}
		if(finout.fail()!=0)                    //check if file has opened
		{
			cout<<"File cannot be opened";
		}
		else                                    //if file has opened
		{
			for(int i=0;i<MAX;i++)
			{                                    //write the record in the file
				finout.write((char*)&h,sizeof(h));
			}
		}
		cnt++;
		finout.close();
	}                                       //close the file
}


void cover()
{
	int poly1[10],poly2[10],poly3[10];
	int i=0,j=0,k=0;
	setbkcolor(WHITE);
	setcolor(1);

	rectangle(20,40,619,449);

	poly1[0]=100;               //building side view
	poly1[1]=100;

	poly1[2]=150;
	poly1[3]=70;

	poly1[4]=150;
	poly1[5]=270;

	poly1[6]=100;
	poly1[7]=300;

	poly1[8]=poly1[0];
	poly1[9]=poly1[1];

	drawpoly(5,poly1);

	poly2[0]=150;                //building front view
	poly2[1]=70;

	poly2[2]=250;
	poly2[3]=80;

	poly2[4]=250;
	poly2[5]=210;

	poly2[6]=150;
	poly2[7]=270;

	poly2[8]=poly2[0];
	poly2[9]=poly2[1];

	drawpoly(5,poly2);

	for(i=160,j=71,k=264;i<=250;i+=10,j++,k-=6)
	{
		line(i,j,i,k);
	}

	for(i=151;i<250;i+=20)
	{
		setfillstyle(1,1);
		floodfill(i,82,1);
	}

	for(i=161;i<250;i+=20)
	{
		setfillstyle(1,7);
		floodfill(i,82,1);
	}

	setfillstyle(1,7);
	floodfill(149,72,1);

	line(80,312,280,192);        //roof
	line(280,192,470,306);

	line(470,306,620,315);       //extending line

	poly3[0]=360;                //chimney
	poly3[1]=240;

	poly3[2]=360;
	poly3[3]=215;

	poly3[4]=380;
	poly3[5]=215;

	poly3[6]=380;
	poly3[7]=252;

	poly3[8]=poly3[0];
	poly3[9]=poly3[1];

	drawpoly(5,poly3);

	setcolor(WHITE);
	line(360,240,379,251);

	setcolor(1);
	line(80,312,96,312);           //creating second roof
	line(96,312,280,202);

	line(280,202,470,316);        //creating second roof

	line(470,316,620,316);        //joining extension line
	setfillstyle(1,1);
	floodfill(85,310,1);
	rectangle(260,240,275,255);   //4 square windows
	rectangle(285,240,300,255);
	rectangle(260,265,275,280);
	rectangle(285,265,300,280);

	floodfill(268,248,1);       //fill squares
	floodfill(290,245,1);
	floodfill(265,270,1);
	floodfill(290,270,1);

	setcolor(1);
	settextstyle(4,0,7);
	outtextxy(70,300,"Agent Trust Realty");
	getch();
}



void bkpage()
{
	int x,y;
	cleardevice();
	setbkcolor(15);
	setcolor(8);
	line(100,0,2,50);
	line(539,0,637,50);
	line(2,50,637,50); //roof
	line(100,0,539,0);
	rectangle(40,50,599,459);
	line(0,459,639,459);
	setfillstyle(9,RED);
	floodfill(200,30,8);
	setfillstyle(1,CYAN);
	floodfill(0,1,8);
	setfillstyle(1,CYAN);
	floodfill(639,0,8);
	setfillstyle(1,BROWN);
	floodfill(639,479,8);
}

char login()
{
	char ch,choice[2];
	setcolor(5);
	settextstyle(4,0,3);
	outtextxy(150,100,"LOGIN AS : ");
	setcolor(9);
	outtextxy(150,140,"1. Administrator");
	outtextxy(150,180,"2. Customer");
	outtextxy(150,230,"Enter Your Choice :  ");
	setfillstyle(11,14);
	bar3d(360,240,390,260,7,1);
	choice[0]=getch();
	choice[1]='\0';
	outtextxy(368,233,choice);
	ch=choice[0];
	return ch;
}

void password()
{
	char ch,passwrd[5]={'s','n','m','u'},p[5],u[5];
	int i=0,flag=0,cnt=0,j=0;
	do
	{
		flag=0;
		cnt++;
		bkpage();
		setcolor(5);
		settextstyle(1,0,3);
		outtextxy(150,100,"OWNER LOGIN");
		setcolor(9);
		outtextxy(150,140,"Username : ");
		rectangle(320,150,410,170);
		outtextxy(150,180,"Password : ");
		rectangle(320,185,410,205);
		for(i=0,j=0;i<4;i++,j+=15)
		{
			ch=getch();
			u[0]=ch;
			u[1]='\0';
			outtextxy(330+j,145,u);
		}
		getch();
		for(i=0,j=0;i<4;i++,j+=10)
		{
			ch=getch();
			p[i]=ch;
			outtextxy(330+j,185,"*");
		}
		p[i]='\0';
		getch();
		if(strcmp(p,passwrd)!=0)
		{
			setcolor(RED);
			outtextxy(170,250,"INVALID PASSWORD !");
			getch();
			flag=0;
			setcolor(5);
			settextstyle(1,0,3);
		}
		else
		{
			flag=1;
			break;
		}
	}
	while(cnt<3 && flag==0);
	if(cnt==3)
	{
		loginfailed();
		getch();
		spthanks();
		getch();
		exit(1);
	}
	else
	{
		bkpage();
		loading();
	}
}

void loginfailed()
{
	bkpage();
	setcolor(RED);
	settextstyle(4,0,4);
	outtextxy(100,220,"Could Not Login Successfully!");
}

//for loading
void loading()
{
	int i;
	char *msg='\0';

	setbkcolor(WHITE);
	setcolor(RED);
	rectangle(70,300,560,320);
	floodfill(201,301,4);

	setcolor(RED);
	settextstyle(1,HORIZ_DIR, 2);
	sprintf(msg, "Loading...",4);
	outtextxy(240,270, msg);
	for(i=70;i<=560;i++)
	{
		setcolor(BLUE);
		line(i,300,i,320);
		sprintf(msg, "%d%",(i-20)/6,4);
		outtextxy(350,270, msg);
		delay(10);
		setcolor(WHITE);
		sprintf(msg, "%d%",(i-20)/6,4);
		outtextxy(350,270, msg);
	}
	setcolor(BLUE);
	outtextxy(350,270,"100%");
	delay(50);
	cleardevice();
}

void spthanks()
{
	bkpage();
	setcolor(5);
	settextstyle(4,0,5);
	outtextxy(130,220,"Thanks for visiting!");
}

char typepage()
{
	char choice[2];
	do
	{
	bkmenu();
	setcolor(5);
	settextstyle(1,0,3);
	draw_flat();
	draw_bunglow();
	draw_rowhouse();
	outtextxy(125,350,"Enter Your Choice :  ");
	setfillstyle(11,14);
	bar3d(360,350,395,380,8,1);
	choice[0]=getch();
	choice[1]='\0';
	outtextxy(368,350,choice);
	getch();
	}while(choice[0]!='1'&&choice[0]!='2'&&choice[0]!='3');
	return choice[0];
}


void draw_rowhouse()
{
 setcolor(6);
 line(470,160,410,200); //a -b
 line(470,160,530,200); //a -c
 line(470,160,560,160); //a-d
 line(530,200,620,200); //c-e
 line(560,160,620,200); //d-e
 line(420,195,420,260); //f-g
 line(520,195,520,260); //h-i
 line(420,260,520,260); //g-i
 line(520,260,605,260); //i-j
 line(605,260,605,200); //j-k
 rectangle(450,260,485,210); //door
 rectangle(530,230,570,210); //window
 setcolor(5);
 settextstyle(1,0,3);
 outtextxy(440,280,"3.Row House");
}

void draw_bunglow()
{
	setcolor(6);
	line(350,195,310,170); //a-b
	line(310,170,210,170); //b-c
	line(210,170,170,195); //c-d
	line(170,195,350,195); //d-a
	line(180,195,180,260); //e-f
	line(180,260,340,260); //f-g
	line(340,260,340,195); //g-h
	rectangle(220,260,250,230); //door
	rectangle(260,225,300,200); //window
	setcolor(5);
	settextstyle(1,0,3);
	outtextxy(220,280,"2.Villa");
}

void draw_flat()
{
	setcolor(6);
	rectangle(100,140,25,260);
	rectangle(42,190,63,160); //upper window
	rectangle(62,240,83,210); //lower window
	setcolor(5);
	settextstyle(1,0,3);
	outtextxy(20,280,"1.Apartment");
}

void bkmenu()
{
	int x,y;
	cleardevice();
	setbkcolor(15);
	setcolor(8);
	line(100,0,2,50);
	line(539,0,637,50);
	line(2,50,637,50); //roof
	line(100,0,539,0);
	rectangle(10,50,629,459);
	line(0,459,639,459);
	setfillstyle(9,RED);
	floodfill(200,30,8);
	setfillstyle(1,CYAN);
	floodfill(0,1,8);
	setfillstyle(1,CYAN);
	floodfill(639,0,8);
	setfillstyle(1,BROWN);
	floodfill(639,479,8);
}

void owner::add_rec()
{
	char ch,ch1[2];
	int old_key,key,j;
	house h,temp_h,temp1;
	fstream finout;
	int cnt=0,purrate=0;
	do
	{

		cnt=0;
		purrate=h.getdata();
		temp1=h;
		while(cnt<2)
		{
			switch(h.type)
			{
				case '1':
						if(cnt==0)
						{
							finout.open("apartrent.dat",ios::out|ios::binary|ios::in);
							j=0;
						}
						else
						{
							h=temp1;
							finout.open("apartpur.dat",ios::out|ios::binary|ios::in);
							h.budget=purrate;
							j=1;
						}
						break;
				case '2':
						if(cnt==0)
						{
							finout.open("villarent.dat",ios::out|ios::binary|ios::in);
							j=2;
						}
						else
						{
							h=temp1;
							finout.open("villapur.dat",ios::out|ios::binary|ios::in);
							h.budget=purrate;
							j=3;
						}
						break;
				case '3':
						if(cnt==0)
						{
							finout.open("rowrent.dat",ios::out|ios::binary|ios::in);
							j=4;
						}
						else
						{
							h=temp1;
							finout.open("rowpur.dat",ios::out|ios::binary|ios::in);
							h.budget=purrate;
							j=5;
						}
						break;
			}
			if(finout.fail()!=0)
			{
				cout<<endl<<"File cannot be opened !";
			}
			else
			{
				cnt++;
				h.key1=h.budget * 10 + h.no_of_rooms;
				key=Hash_key(h.key1);
				finout.seekg(key*sizeof(temp_h),ios::beg);
				finout.read((char *)&temp_h,sizeof(temp_h));

				if(temp_h.key1==-1) //check if record is empty
				{
					finout.seekp(key*sizeof(temp_h),ios::beg);
					finout.write((char *)&h,sizeof(h));
					no_of_records[j]++;
				}
				else
				{
					old_key=key;    //check if some other record is present
					if(temp_h.key1%MAX==key)
					{
						//shifting not required//
						while(1)
						{
							key=(key+1)%MAX;
							finout.seekg(key*sizeof(temp_h),ios::beg);
							finout.read((char *)&temp_h,sizeof(temp_h));
							if(temp_h.key1==-1)
							{
								finout.seekp(key*sizeof(temp_h),ios::beg);
								finout.write((char *)&h,sizeof(h));
								no_of_records[j]++;
								finout.seekg(old_key*sizeof(temp_h),ios::beg);
								finout.read((char *)&temp_h,sizeof(temp_h));
								while(temp_h.chain!=-1)
								{
									old_key=temp_h.chain;
									finout.seekg(old_key*sizeof(temp_h),ios::beg);
									finout.read((char *)&temp_h,sizeof(temp_h));
								}
								if(temp_h.chain==-1)
								{
									temp_h.chain=key;
									finout.seekp(old_key*sizeof(temp_h),ios::beg);
									finout.write((char *)&temp_h,sizeof(temp_h));
									break;
								}
							}
						}
					}
					else   //temp-h.key1%MAX!=key//
					{
						finout.seekp(key*sizeof(temp_h),ios::beg);
						finout.write((char *)&h,sizeof(h));
						h=temp_h;
						while(1)
						{
							key=(key+1)%MAX;
							finout.seekg(key*sizeof(temp_h),ios::beg);
							finout.read((char *)&temp_h,sizeof(temp_h));
							if(temp_h.key1==-1)
							{
								finout.seekp(key*sizeof(temp_h),ios::beg);
								finout.write((char *)&h,sizeof(h));
								break;
							}
						}
						//chain value updated//						
						finout.seekg(0,ios::beg);
						finout.read((char *)&h,sizeof(h));
						int no=0;
						while(h.chain!=old_key)
						{
							no++;
							finout.read((char *)&h,sizeof(h));
						}
						h.chain=key;
						finout.seekp(no*sizeof(temp_h),ios::beg);
						finout.write((char *)&h,sizeof(h));
					}
				}
			}
			finout.close();
		}
		setcolor(5);
		settextstyle(4,0,3);
		setfillstyle(11,14);
		outtextxy(100,380,"Add more records ? (y/n) : ");
		bar3d(430,390,460,410,5,1);
		flushall();
		ch=getch();
		ch1[0]=ch;
		ch1[1]='\0';
		outtextxy(440,385,ch1);
		getch();
	}while(ch1[0]=='y'||ch1[0]=='Y');
}


int Hash_key(int x)
{
	return (x%MAX);
}

int house::getdata()
{
	int purrate=0;
	char buff[10];
	strcpy(sqft,"\0");
	status=1;
	type=typepage();
	bkpage();
	setcolor(5);
	settextstyle(1,0,3);
	//page asking location,no_of_rooms and sqrft//
	outtextxy(60,100,"Name       ");
	outtextxy(60,180,"Plot no    ");
	outtextxy(60,260,"Location   ");
	outtextxy(60,340,"Bed rooms  ");
	setcolor(BLUE);
	rectangle(200,180,380,210);
	rectangle(200,260,450,290);
	rectangle(200,100,450,130);
	rectangle(200,340,270,370);
	circle(65,388,5);
	circle(115,388,5);
	circle(165,388,5);
	circle(215,388,5);
	circle(265,388,5);
	outtextxy(75,373,"1");
	outtextxy(125,373,"2");
	outtextxy(175,373,"3");
	outtextxy(225,373,"4");
	outtextxy(275,373,"5");
	gotoxy(27,8);
	gets(name);
	gotoxy(27,13);
	scanf("%s",&plotno);
	gotoxy(27,18);
	scanf("%s",&location);
	gotoxy(27,23);
	scanf("%d",&no_of_rooms);

	while(no_of_rooms<1||no_of_rooms>5)
	{
		setfillstyle(1,WHITE);
		floodfill(220,350,BLUE);
		setcolor(5);
		outtextxy(60,340,"Bed rooms  ");
		setcolor(BLUE);
		rectangle(200,340,270,370);
		setcolor(BLUE);
		circle(65,388,5);
		circle(115,388,5);
		circle(165,388,5);
		circle(215,388,5);
		circle(265,388,5);
		outtextxy(75,373,"1");
		outtextxy(125,373,"2");
		outtextxy(175,373,"3");
		outtextxy(225,373,"4");
		outtextxy(275,373,"5");
		gotoxy(27,23);
		scanf("%d",&no_of_rooms);
	}
	setfillstyle(1,BROWN);
	if(no_of_rooms==1)
	{
		circle(65,388,3);
		floodfill(65,388,BLUE);
	}
	if(no_of_rooms==2)
	{
		circle(115,388,3);
		floodfill(115,388,BLUE);
	}
	if(no_of_rooms==3)
	{
		circle(165,388,3);
		floodfill(165,388,BLUE);
	}
	 if(no_of_rooms==4)
	{
		circle(215,388,3);
		floodfill(215,388,BLUE);
	}
	 if(no_of_rooms==5)
	{
		circle(265,388,3);
		floodfill(265,388,BLUE);
	}
	getch();
	budget=rent_rate();
	purrate=pur_rate();
	bkpage();
	setcolor(5);
	settextstyle(2,0,7);
	outtextxy(110,140,"Square ft :  ");
	outtextxy(110,200,"Amenities :  ");
	setcolor(BLUE);
	rectangle(260,140,380,170);
	rectangle(260,200,560,230);
	rectangle(260,250,560,280);
	rectangle(260,300,560,330);
	gotoxy(35,10);
	scanf("%s",&sqft);
	gotoxy(35,14);
	scanf("%s",&a1);
	gotoxy(35,17);
	scanf("%s",&a2);
	gotoxy(35,20);
	scanf("%s",&a3);
	bkpage();
	setcolor(5);
	settextstyle(2,0,8);
	outtextxy(70,90,"Agent Details : ");
	setcolor(BLUE);
	settextstyle(2,0,7);
	outtextxy(80,145,"Agent Name : ");
	rectangle(240,138,460,168);
	outtextxy(80,200,"Contact No :");
	rectangle(240,200,460,230);
	outtextxy(80,260,"Company    :");
	rectangle(240,262,460,292);
	gotoxy(32,10);
	scanf("%s",&cntname);
	gotoxy(32,14);
	scanf("%s",&cntno);
	gcheckmob();
	gotoxy(32,18);
	scanf("%s",&bcompny);

	return purrate;
}

int rent_rate()
{
	int rent=0;
	do
	{

		bkpage();
		setcolor(5);
		settextstyle(2,0,8);
		outtextxy(70,90,"Rent Rate : ");
		setcolor(BLUE);
		settextstyle(2,0,6);
		outtextxy(80,135,"1. 5000 to 20000");
		outtextxy(80,160,"2. 20000 to 40000");
		outtextxy(80,185,"3. 40000 to 70000");
		outtextxy(80,210,"4. 70000 to 1 Lac");
		outtextxy(80,235,"5. 1 Lac to 1.5 Lac");
		outtextxy(80,260,"6. 1.5 Lac to 2 Lac");
		outtextxy(80,285,"7. 2 Lac to 5 Lac");
		outtextxy(80,310,"8. 5 Lac to 10 Lac");
		setcolor(5);
		settextstyle(2,0,6);
		outtextxy(70,340,"Enter the range : ");
		setfillstyle(8,14);
		bar3d(250,345,280,370,10,1);

		gotoxy(33,23);
		scanf("%d",&rent);
		if(rent>8)
		{
			setcolor(RED);
			settextstyle(1,0,3);
			outtextxy(200,410,"INVALID RANGE !");
		}
	}
	while(rent>8);
	return rent;
}

int pur_rate()
{
	int pur=0;
	do
	{
		bkpage();
		setcolor(5);
		settextstyle(2,0,8);
		outtextxy(70,90,"Purchase Rate : ");
		setcolor(BLUE);
		settextstyle(2,0,6);
		outtextxy(80,135,"1. 30 Lac to 35 Lac");
		outtextxy(80,160,"2. 35 Lac to 40 Lac");
		outtextxy(80,185,"3. 40 Lac to 45 Lac");
		outtextxy(80,210,"4. 45 Lac to 50 Lac");
		outtextxy(80,235,"5. 50 Lac to 55 Lac");
		outtextxy(80,260,"6. 55 Lac to 60 Lac");
		outtextxy(80,285,"7. 60 Lac to 65 Lac");
		outtextxy(80,310,"8. 65 Lac to 70 Lac");
		setcolor(5);
		settextstyle(2,0,6);
		outtextxy(70,340,"Enter the range : ");
		setfillstyle(8,14);
		bar3d(250,345,280,370,10,1);
		gotoxy(33,23);
		scanf("%d",&pur);

		if(pur>8)
		{
			setcolor(RED);
			settextstyle(1,0,3);
			outtextxy(200,410,"INVALID RANGE !");
		}
	}
	while(pur>8);
	return pur;
}

void owner::disp_rec()
{
	house h;
	fstream fin;
	char ch,ch1[2],type,ch2;
	do
	{
		bkpage();
		type=typepage();
		ch2=purpose();
		switch(type)
		{
			case '1':
				switch(ch2)
						{
							case '1':
							fin.open("apartpur.dat",ios::binary|ios::in);
							break;

							case '2':
							fin.open("apartrent.dat",ios::binary|ios::in);
							break;
						}
						break;
			case '2':
						switch(ch2)
						{
							case '1':
							fin.open("villapur.dat",ios::binary|ios::in);
							break;

							case '2':
							fin.open("villarent.dat",ios::binary|ios::in);
							break;
						}
						break;
			case '3':
						switch(ch2)
						{
							case '1':
							fin.open("rowpur.dat",ios::binary|ios::in);
							break;

							case '2':
							fin.open("rowrent.dat",ios::binary|ios::in);
							break;
						}
						break;
			default:break;
			}
			if(fin.fail()!=0)
			{
				cout<<endl<<"File cannot be opened !";
			}
			else
			{
				fin.read((char *)&h,sizeof(h));
				while(fin.eof()!=1)
				{
					if(h.key1!=(-1)&&h.status==1)
					{
						h.odisp(ch2);
					}
					fin.read((char *)&h,sizeof(h));
				}
			}
			fin.close();
		bkpage();
		setcolor(5);
		settextstyle(4,0,3);
		outtextxy(100,270,"Display more records ? (y/n) : ");
		setfillstyle(11,14);
		bar3d(430,270,460,300,5,1);
		flushall();
		ch=getch();
		ch1[0]=ch;
		ch1[1]='\0';
		outtextxy(440,272,ch1);
		getch();
	}while(ch1[0]=='y'||ch1[0]=='Y');
}

void owner::sdisp_rec()
{
	house h;
	fstream fin;
	char ch,ch1[2],type,ch2;
	do
	{
		bkpage();
		type=typepage();
		ch2=purpose();
		switch(type)
		{
			case '1':
				switch(ch2)
						{
							case '1':
							fin.open("apartpur.dat",ios::binary|ios::in);
							break;

							case '2':
							fin.open("apartrent.dat",ios::binary|ios::in);
							break;
						}
						break;
			case '2':
						switch(ch2)
						{
							case '1':
							fin.open("villapur.dat",ios::binary|ios::in);
							break;

							case '2':
							fin.open("villarent.dat",ios::binary|ios::in);
							break;
						}
						break;
			case '3':
						switch(ch2)
						{
							case '1':
							fin.open("rowpur.dat",ios::binary|ios::in);
							break;

							case '2':
							fin.open("rowrent.dat",ios::binary|ios::in);
							break;
						}
						break;
			default:break;
			}
			if(fin.fail()!=0)
			{
				cout<<endl<<"File cannot be opened !";
			}
			else
			{
				fin.read((char *)&h,sizeof(h));
				while(fin.eof()!=1)
				{
					if(h.key1!=(-1)&&h.status==2)
					{
						h.odisp(ch2);
					}
					fin.read((char *)&h,sizeof(h));
				}
			}
			fin.close();
		bkpage();
		setcolor(5);
		settextstyle(4,0,3);
		outtextxy(100,270,"Display more records ? (y/n) : ");
		setfillstyle(11,14);
		bar3d(430,270,460,300,5,1);
		flushall();
		ch=getch();
		ch1[0]=ch;
		ch1[1]='\0';
		outtextxy(440,272,ch1);
		getch();
	}while(ch1[0]=='y'||ch1[0]=='Y');
}


char purpose()
{
	char ch,choice[2];
	do
	{
	bkpage();
	setcolor(5);
	settextstyle(4,0,3);
	outtextxy(150,100,"Purpose : ");
	setcolor(9);
	outtextxy(150,140,"1. Purchase");
	outtextxy(150,180,"2. Rent");
	outtextxy(150,230,"Enter Your Choice :  ");
	setfillstyle(11,14);
	bar3d(360,240,390,260,7,1) ;
	choice[0]=getch();
	choice[1]='\0';
	outtextxy(368,233,choice);
	ch=choice[0];
	getch();
	}while(choice[0]!='1'&&choice[0]!='2');
	return ch;
}

void owner::edit_rec()
{
	house h;
	fstream finout;
	int no,key,cnt,old_key,purrate,stat,cval=0;
	char ch,ch1[2],type,ch2,rname[50],plot[20],choice[2],cno[11],ch3[2];
	do
	{
		bkpage();
		type=typepage();
		bkpage();
		setcolor(5);
		settextstyle(2,0,7);
		outtextxy(100,100,"Plot no ");
		outtextxy(100,165,"Name    ");
		setcolor(BLUE);
		rectangle(200,100,280,130);
		rectangle(200,165,380,195);
		gotoxy(27,8);
		scanf("%s",&plot);
		gotoxy(27,12);
		flushall();
		gets(rname);
		do
		{
			cnt=0;
			while(cnt<2)
			{
				switch(type)
				{
				case '1':
						if(cnt==0)
						{
							finout.open("apartrent.dat",ios::out|ios::binary|ios::in);
						}
						else
						{
							finout.open("apartpur.dat",ios::out|ios::binary|ios::in);
						}
						break;
				case '2':
						if(cnt==0)
						{
							finout.open("villarent.dat",ios::out|ios::binary|ios::in);
						}
						else
						{
							finout.open("villapur.dat",ios::out|ios::binary|ios::in);
						}
						break;
				case '3':
						if(cnt==0)
						{
							finout.open("rowrent.dat",ios::out|ios::binary|ios::in);
						}
						else
						{
							finout.open("rowpur.dat",ios::out|ios::binary|ios::in);
						}
						break;
			}
			if(finout.fail()!=0)
			{
			  //	cout<<endl<<"File cannot be opened !";
			}
			else
			{
				int no=0,flag=0;
				finout.seekg(0,ios::beg);
				finout.read((char *)&h,sizeof(h));
				while(finout.eof()!=1)
				{
					if(h.key1!=-1)
					{
						if(strcmp(rname,h.name)==0&&strcmp(plot,h.plotno)==0)
						{
							flag=1;
							break;
						}
					}
					no++;
					finout.read((char *)&h,sizeof(h));
				}
				if(flag==0)
				{
					setcolor(RED);
					settextstyle(2,0,7);
					outtextxy(100,240,"RECORD NOT FOUND !");
					break;
				}
				else
				{
					cval=h.chain;
					if(cnt==0)
					{
						do
						{
							bkpage();
							setcolor(5);
							settextstyle(4,0,3);
							outtextxy(150,80,"**** MENU ****");
							setcolor(BLUE);
							settextstyle(2,0,7);
							outtextxy(150,130,"1. Status");
							outtextxy(150,175,"2. Contact no");
							outtextxy(150,220,"3. Exit");
							setcolor(5);
							outtextxy(150,270,"Enter your choice : ");
							setfillstyle(11,14);
							bar3d(370,270,400,290,7,1);
							choice[0]=getch();
							choice[1]='\0';
							outtextxy(378,270,choice);
							getch();
						}
						while(choice[0]!='1'&&choice[0]!='2'&&choice[0]!='3');
						switch(choice[0])
						{
							case '1':
								bkpage();
								setcolor(5);
								settextstyle(4,0,3);
								outtextxy(100,130,"Status  ");
								setcolor(BLUE);
								settextstyle(2,0,7);
								outtextxy(100,170,"1. Available");
								outtextxy(250,170,"2. Sold");
								rectangle(200,130,230,160);
								gotoxy(27,10);
								scanf("%d",&stat);
								break;
							case '2':
								bkpage();
								setcolor(5);
								settextstyle(4,0,3);
								outtextxy(100,100,"Agent Details :  ");
								setcolor(BLUE);
								settextstyle(2,0,6);
								outtextxy(100,160,"Contact No");
								rectangle(220,150,350,180);
								gotoxy(29,11);
								scanf("%s",&h.cntno);
								h.echeckmob();
								strcpy(cno,h.cntno);
								break;
							case '3':
								exit(1);
							default:
								break;
						}
					}
					cnt++;
					if(choice[0]=='1')
						h.status=stat;
					else if(choice[0]=='2')
						strcpy(h.cntno,cno);
					h.chain=cval;
					finout.seekp(no*sizeof(h),ios::beg);
					finout.write((char*)&h,sizeof(h));
					finout.close();
				}
			}
		}
		setcolor(5);
		settextstyle(4,0,3);
		outtextxy(100,300,"Want to edit more feilds ? : ");
		setfillstyle(11,14);
		bar3d(430,310,460,330,5,1);
		flushall();
		ch=getch();
		ch3[0]=ch;
		ch3[1]='\0';
		outtextxy(440,305,ch3);
		getch();

	}
	while(ch3[0]=='y'||ch3[0]=='Y');
	setcolor(5);
	settextstyle(4,0,3);
	outtextxy(100,360,"Want to edit more records ? : ");
	setfillstyle(11,14);
	bar3d(430,370,460,390,5,1);
	flushall();
	ch=getch();
	ch1[0]=ch;
	ch1[1]='\0';
	outtextxy(440,365,ch1);
	getch();
	}
	while(ch1[0]=='y'||ch1[0]=='Y');
}


void customer::search()
{
	house h;
	ifstream fin;
	int key,id,rate;
	char ch2,ch,ch1[2];
	int rooms,type;
	do
	{
	bkpage();
	type=typepage();
	bkpage();
	setcolor(5);
	settextstyle(2,0,7);
	outtextxy(60,135,"I Want To ");
	setcolor(BLUE);
	rectangle(200,125,270,155);
	outtextxy(60,170,"1. Purchase");
	outtextxy(300,170,"2. Rent");

	setcolor(5);
	outtextxy(60,260,"Bedrooms");
	setcolor(BLUE);
	rectangle(200,250,270,280);

	circle(65,308,5);
	circle(115,308,5);
	circle(165,308,5);
	circle(215,308,5);
	circle(265,308,5);
	outtextxy(77,297,"1");
	outtextxy(127,297,"2");
	outtextxy(177,297,"3");
	outtextxy(227,297,"4");
	outtextxy(277,297,"5");

	gotoxy(27,9);
	scanf("%c",&ch2);

	gotoxy(27,17);
	scanf("%d",&rooms);

	while(rooms<1||rooms>5)
	{
		setfillstyle(1,WHITE);
		floodfill(250,260,BLUE);
		setcolor(5);
		outtextxy(60,260,"Bedrooms");
		setcolor(BLUE);
		rectangle(200,250,270,280);
		circle(65,308,5);
		circle(115,308,5);
		circle(165,308,5);
		circle(215,308,5);
		circle(265,308,5);
		outtextxy(77,297,"1");
		outtextxy(127,297,"2");
		outtextxy(177,297,"3");
		outtextxy(227,297,"4");
		outtextxy(277,297,"5");

		gotoxy(27,17);
		scanf("%d",&rooms);
	}
	setfillstyle(1,BROWN);


	if(rooms==1)
	{
		circle(65,308,3);
		floodfill(65,308,BLUE);
	}
	if(rooms==2)
	{
		circle(115,308,3);
		floodfill(115,308,BLUE);
	}
	if(rooms==3)
	{
		circle(165,308,3);
		floodfill(165,308,BLUE);
	}
	 if(rooms==4)
	{
		circle(215,308,3);
		floodfill(215,308,BLUE);
	}
	 if(rooms==5)
	{
		circle(265,308,3);
		floodfill(265,308,BLUE);
	}
	getch();

	if(ch2=='1')
		rate=pur_rate();
	else
		rate=rent_rate();

	switch(type)
		{
			case '1':
					switch(ch2)
						{
							case '1':
							fin.open("apartpur.dat",ios::binary|ios::in);
							break;

							case '2':
							fin.open("apartrent.dat",ios::binary|ios::in);
							break;
						}
						break;
			case '2':
						switch(ch2)
						{
							case '1':
							fin.open("villapur.dat",ios::binary|ios::in);
							break;

							case '2':
							fin.open("villarent.dat",ios::binary|ios::in);
							break;
						}
						break;
			case '3':
						switch(ch2)
						{
							case '1':
							fin.open("rowpur.dat",ios::binary|ios::in);
							break;

							case '2':
							fin.open("rowrent.dat",ios::binary|ios::in);
							break;
						}
						break;
	}
	if(fin.fail()!=0)
	{
		bkpage();
		outtextxy(100,200,"File cannot be opened !");
	}
	else
	{
		int cnt=0;
		fin.seekg(0,ios::beg);
		id=(rate*10)+rooms;
		key=Hash_key(id);          //get the address from hash_function
		while(!fin.eof())
		{
			fin.seekg(key*sizeof(h),ios::beg);
			fin.read((char *)&h,sizeof(h));
			if(h.key1==-1)           //check for valid roll no
			{
				bkpage();
				setcolor(RED);
				settextstyle(2,0,8);
				outtextxy(100,200,"RECORD NOT PRESENT !");
				getch();
				break;
			}
			else
			{
				if(h.key1==id && h.status==1)
				{
					cnt++;
					bkpage();
				//	outtextxy(100,200,"RECORD PRESENT !");
					h.cdisp(ch2);
					if(h.chain!=(-1))
						key=h.chain;
					else
						break;
				}
				else
				{
					if(h.chain==-1 && cnt==0)
					{
						bkpage();
						setcolor(RED);
						settextstyle(2,0,8);
						outtextxy(100,200,"RECORD NOT PRESENT !");
						getch();
						return;
					}
					else
					{
						key=h.chain;
					}
				}
			}
		}
	}
		bkpage();
		setcolor(5);
		settextstyle(4,0,3);
		outtextxy(100,270,"Search more records ? (y/n) : ");
		setfillstyle(11,14);
		bar3d(430,270,460,300,5,1);
		flushall();
		ch=getch();
		ch1[0]=ch;
		ch1[1]='\0';
		outtextxy(440,272,ch1);
		getch();
	}while(ch1[0]=='y'||ch1[0]=='Y');
}

void house::odisp(char purpose)
{
	char room[2],stat[10];
	room[1]='\0';
	bkpage();
	setcolor(5);
	settextstyle(4,0,1);

	outtextxy(80,50,"Name          : ");
	outtextxy(80,85,"Location        : ");
	outtextxy(80,120,"Rooms         : ");
	outtextxy(350,120,"Square Feets   : ");
	outtextxy(80,155,"Plot No.        : ");
	outtextxy(80,190,"Price           : ");
	outtextxy(80,225,"Status          : ");
	outtextxy(80,260,"Amenities       : ");
	outtextxy(80,345,"Contact Name   : ");
	outtextxy(80,380,"Contact Number : ");
	outtextxy(80,415,"Company       : ");

	setcolor(BLUE);
	settextstyle(2,0,6);

	outtextxy(245,55,name);
	outtextxy(245,90,location);
	if(no_of_rooms==1)
	{
		room[0]='1';
	}
	else if(no_of_rooms==2)
	{
		room[0]='2';
	}
	else if(no_of_rooms==3)
	{
		room[0]='3';
	}
	else if(no_of_rooms==4)
	{
		room[0]='4';
	}
	else if(no_of_rooms==5)
	{
		room[0]='5';
	}
	outtextxy(245,125,room);
	outtextxy(495,125,sqft);
	outtextxy(245,160,plotno);
	if(purpose=='1')
	{
		if(status==1)
		{
		switch(budget)
		{
			case 1 : outtextxy(245,195,"30 Lac to 35 Lac");
					 break;
			case 2 : outtextxy(245,195,"35 Lac to 40 Lac");
					break;
			case 3 : outtextxy(245,195,"40 Lac to 45 Lac");
					 break;
			case 4 : outtextxy(245,195,"45 Lac to 50 Lac");
					 break;
			case 5 : outtextxy(245,195,"50 Lac to 55 Lac");
					 break;
			case 6 : outtextxy(255,195,"55 Lac to 60 Lac");
					 break;
			case 7 : outtextxy(245,195,"60 Lac to 65 Lac");
					 break;
			case 8 : outtextxy(245,195,"65 Lac to 70 Lac");
					 break;
		}
		}
		else
		{
			switch(budget)
			{
			case 1 : outtextxy(245,195,"32 Lac");
					 break;
			case 2 : outtextxy(245,195,"37 Lac");
					break;
			case 3 : outtextxy(245,195,"43 Lac");
					 break;
			case 4 : outtextxy(245,195,"48.5 Lac");
					 break;
			case 5 : outtextxy(245,195,"54.5 Lac");
					 break;
			case 6 : outtextxy(255,195,"56 Lac");
					 break;
			case 7 : outtextxy(245,195,"63 Lac");
					 break;
			case 8 : outtextxy(245,195,"68 Lac");
					 break;
		}
		}
	}
	else if(purpose=='2')
	{
		if(status==1)
		{
		switch(budget)
		{
			case 1 : outtextxy(245,195,"5000 to 20000");
					 break;
			case 2 : outtextxy(245,195,"20000 to 40000");
					 break;
			case 3 : outtextxy(245,195,"40000 to 70000");
					 break;
			case 4 : outtextxy(245,195,"70000 to 1 Lac");
					 break;
			case 5 : outtextxy(245,195,"1 Lac to 1.5 Lac");
					 break;
			case 6 : outtextxy(245,195,"1.5 Lac to 2 Lac");
					 break;
			case 7 : outtextxy(245,195,"2 Lac to 5 Lac");
					 break;
			case 8 : outtextxy(245,195,"5 Lac to 10 Lac");
					 break;
		}
		}
		else
		{
			switch(budget)
			{
			case 1 : outtextxy(245,195,"15000");
					 break;
			case 2 : outtextxy(245,195,"23000");
					 break;
			case 3 : outtextxy(245,195,"45000");
					 break;
			case 4 : outtextxy(245,195,"85000");
					 break;
			case 5 : outtextxy(245,195,"1.3 Lac");
					 break;
			case 6 : outtextxy(245,195,"1.7 Lac");
					 break;
			case 7 : outtextxy(245,195,"3.5 Lac");
					 break;
			case 8 : outtextxy(245,195,"7 Lac");
					 break;
			}
		}
	}
	if(status==2)
	{
		strcpy(stat,"Sold");

	}
	else
	{
		strcpy(stat,"Available");
	}
	outtextxy(245,230,stat);
	outtextxy(245,265,a1);
	outtextxy(245,290,a2);
	outtextxy(245,315,a3);
	outtextxy(245,350,cntname);
	outtextxy(245,385,cntno);
	outtextxy(245,420,bcompny);

	getch();
}

void house::cdisp(char purpose)
{
	char room[2];
	room[1]='\0';
	bkpage();
	setcolor(5);
	settextstyle(4,0,2);

	outtextxy(80,70,"Name          : ");
	outtextxy(80,105,"Location        : ");
	outtextxy(80,140,"Rooms         : ");
	outtextxy(340,140,"Square Feets : ");
	outtextxy(80,175,"Plot No.        : ");
	outtextxy(80,210,"Price           : ");
	outtextxy(80,245,"Amenities       : ");
	outtextxy(80,330,"Contact Name   : ");
	outtextxy(80,365,"Contact Number : ");
	outtextxy(80,400,"Company       : ");

	setcolor(BLUE);
	settextstyle(2,0,6);

	outtextxy(260,77,name);
	outtextxy(260,112,location);
	if(no_of_rooms==1)
	{
		room[0]='1';
	}
	else if(no_of_rooms==2)
	{
		room[0]='2';
	}
	else if(no_of_rooms==3)
	{
		room[0]='3';
	}
	else if(no_of_rooms==4)
	{
		room[0]='4';
	}
	else if(no_of_rooms==5)
	{
		room[0]='5';
	}

	outtextxy(260,147,room);
	outtextxy(480,147,sqft);
	outtextxy(260,182,plotno);

	if(purpose=='1')
	{
		switch(budget)
		{
			case 1 : outtextxy(260,217,"30 Lac to 35 Lac");
					 break;
			case 2 : outtextxy(260,217,"35 Lac to 40 Lac");
					break;
			case 3 : outtextxy(260,217,"40 Lac to 45 Lac");
					 break;
			case 4 : outtextxy(260,217,"45 Lac to 50 Lac");
					 break;
			case 5 : outtextxy(260,217,"50 Lac to 55 Lac");
					 break;
			case 6 : outtextxy(260,217,"55 Lac to 60 Lac");
					 break;
			case 7 : outtextxy(260,217,"60 Lac to 65 Lac");
					 break;
			case 8 : outtextxy(260,217,"65 Lac to 70 Lac");
					 break;
		}

	}
	else if(purpose=='2')
	{
		switch(budget)
		{
			case 1 : outtextxy(260,217,"5000 to 20000");
					 break;
			case 2 : outtextxy(260,217,"20000 to 40000");
					 break;
			case 3 : outtextxy(260,217,"40000 to 70000");
					 break;
			case 4 : outtextxy(260,217,"70000 to 1 Lac");
					 break;
			case 5 : outtextxy(260,217,"1 Lac to 1.5 Lac");
					 break;
			case 6 : outtextxy(260,217,"1.5 Lac to 2 Lac");
					 break;
			case 7 : outtextxy(260,217,"2 Lac to 5 Lac");
					 break;
			case 8 : outtextxy(260,217,"5 Lac to 10 Lac");
					 break;
		}
	}
	outtextxy(260,252,a1);
	outtextxy(260,277,a2);
	outtextxy(260,302,a3);
	outtextxy(260,337,cntname);
	outtextxy(260,372,cntno);
	outtextxy(260,407,bcompny);

	getch();
}

		 void house::disp_data(int i)
		 {
			 cout<<"\n"<<"  "<<i<<" \t"<<key1<<"\t\t"<<name<<"\t  "<<status<<"\t"<<chain;
		 }

void display()
{
	fstream f;
	house h;
	int i=0;
	closegraph();
	clrscr();
	f.open("apartpur.dat",ios::in|ios::binary);
	if(f.fail()!=0)
		 cout<<"\n FILE HAS NOT PROPERLY OPENED";
	else
	{
		f.seekg(0);
		cout<<"\n\n INDEX\t ROLL NO\t NAME\t PERCENTAGE\t CHAIN";
		f.read((char*)&h,sizeof(h));
		while(1)
		{
			if(f.eof()==1)
			{
	break;
			}
			else
			{
	if(i%10==0)
		getch();
	h.disp_data(i);

	i++;
	f.read((char*)&h,sizeof(h));
			}
		}
	}
}

// to chech whether the entered mobile number is valid //
int house :: echeckmobno()
{
	int i,flag=1;
	for(i=0;cntno[i]!='\0';i++)
	{
		if((cntno[i]>=48)&&(cntno[i]<=57))
		{
			continue;
		}
		else
		{
			flag=0;
			break;
		}
	}
	return(flag);
}

// to check if the mobile number consists of ten digits only //
void house :: echeckmob()
{
	int flag,len;
	len=strlen(cntno);
	while(len<10||len>10)
	{
		rectangle(220,150,350,180);
		setfillstyle(1,WHITE);
		floodfill(250,170,BLUE);
		gotoxy(29,11);
		gets(cntno);
		len=strlen(cntno);
	}
	flag=echeckmobno();
	do
	{
		if(flag==0)
		{
			setfillstyle(1,WHITE);
			floodfill(250,170,BLUE);
			gotoxy(29,11);
			gets(cntno);
			flag=echeckmobno();
		}
	}while(flag!=1);
}


// to chech whether the entered mobile number is valid //
int house :: gcheckmobno()
{
	int i,flag=1;
	for(i=0;cntno[i]!='\0';i++)
	{
		if((cntno[i]>=48)&&(cntno[i]<=57))
		{
			continue;
		}
		else
		{
			flag=0;
			break;
		}
	}
	return(flag);
}

// to check if the mobile number consists of ten digits only //
void house :: gcheckmob()
{
	int flag,len;
	len=strlen(cntno);
	while(len<10||len>10)
	{
		setfillstyle(1,WHITE);
		floodfill(250,220,BLUE);
		gotoxy(32,14);
		gets(cntno);
		len=strlen(cntno);
	}
	flag=gcheckmobno();
	do
	{
		if(flag==0)
		{
			setfillstyle(1,WHITE);
			floodfill(250,220,BLUE);
			gotoxy(32,14);
			gets(cntno);
			flag=gcheckmobno();
		}
	}while(flag!=1);
}


