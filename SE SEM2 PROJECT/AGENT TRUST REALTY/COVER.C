#include<graphics.h>
#include<conio.h>
#include<stdio.h>

void main()
{
	int gd=DETECT,gm;
	int poly1[10],poly2[10],poly3[10];
	int i=0,j=0,k=0;
	initgraph(&gd,&gm,"g:\\tc\\bgi");
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
	closegraph();
}

