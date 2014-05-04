/* p2txt - list xtender/Z81 format .p file
 * PD by RJM 1993.
 * Cleaned up and ansified 960504.
 * Made output compatible with ZXText2P by MOB 2014-May-04.
 * GPLv3+ by MOB 2014.
 * NO WARRANTY OF ANY KIND.
 * The original:
 * ftp://ftp.worldofspectrum.org/pub/sinclair/zx81/tools/amiga/
 * Compile in Linux using:
 * gcc p2txt.c -o p2txt
 */


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define NAK "|"

unsigned char linebuf[32768]; /* BIG buffer for those lovely m/c REMs */

/************** the zx81 char set as transposed to ascii ***************/

/* nak = 'not a kharacter', of course! :-) */
/* spacing may not end up being *exactly* the same, but is very close */

char *charset[256]={
/* 000-009 */ " ","\\' ","\\ '","\\''","\\. ","\\: ","\\.'","\\:'","\\##","\\,,",
/* 010-019 */ "\\~~","\"","#","$",":","?","(",")",">","<",
/* 020-029 */ "=","+","-","*","/",";",",",".","0","1",
/* 030-039 */ "2","3","4","5","6","7","8","9","A","B",
/* 040-049 */ "C","D","E","F","G","H","I","J","K","L",
/* 050-059 */ "M","N","O","P","Q","R","S","T","U","V",
/* 060-069 */ "W","X","Y","Z","RND","INKEY$ ","PI",NAK,NAK,NAK,
/* 070-079 */ NAK,NAK,NAK,NAK,NAK, NAK,NAK,NAK,NAK,NAK,
/* 080-089 */ NAK,NAK,NAK,NAK,NAK, NAK,NAK,NAK,NAK,NAK,
/* 090-099 */ NAK,NAK,NAK,NAK,NAK, NAK,NAK,NAK,NAK,NAK,
/* 100-109 */ NAK,NAK,NAK,NAK,NAK, NAK,NAK,NAK,NAK,NAK,
/* 110-119 */ NAK,NAK,NAK,NAK,NAK, NAK,NAK,NAK,NAK,NAK,
/* 120-129 */ NAK,NAK,NAK,NAK,NAK, NAK,NAK,NAK,"\\::","\\.:",
/* 130-139 */ "\\:.","\\..","\\':","\\ :","\\'.","\\ .","\\@@","\\;;","\\!!","%\"",
/* 140-149 */ "%£","%$","%:","%?","%(","%)","%>","%<","%=","%+",
/* 150-159 */ "%-","%*","%/","%;","%,","%.","%0","%1","%2","%3",
/* 160-169 */ "%4","%5","%6","%7","%8","%9","%A","%B","%C","%D",
/* 170-179 */ "%E","%F","%G","%H","%I","%J","%K","%L","%M","%N",
/* 180-189 */ "%O","%P","%Q","%R","%S","%T","%U","%V","%W","%X",
/* 190-199 */ "%Y","%Z","\\\"","AT ","TAB ",NAK,"CODE ","VAL ","LEN ","SIN ",
/* 200-209 */ "COS ","TAN ","ASN ","ACS ","ATN ","LN ","EXP ",
		"INT ","SQR ","SGN ",
/* 210-219 */ "ABS ","PEEK ","USR ","STR$ ","CHR$ ","NOT ",
		"**"," OR "," AND ","<=",
/* 220-229 */ ">=","<>"," THEN"," TO "," STEP "," LPRINT ",
		" LLIST "," STOP"," SLOW"," FAST",
/* 230-239 */ " NEW"," SCROLL"," CONT "," DIM "," REM "," FOR "," GOTO ",
		" GOSUB "," INPUT "," LOAD ",
/* 240-249 */ " LIST "," LET "," PAUSE "," NEXT "," POKE ",
		" PRINT "," PLOT "," RUN "," SAVE ",
		" RAND ",
/* 250-255 */ " IF "," CLS"," UNPLOT "," CLEAR"," RETURN"," COPY"
};

/************************* program starts here ****************************/


/* get a single ZX81 program line & line number & length */
void getzxline(FILE *in,int *linenum,int *linelen,int *t) {
	int b1,b2,f;

	b1=fgetc(in);
	b2=fgetc(in);
	*linenum=b1*256+b2;
	(*t)-=2;

	b1=fgetc(in);
	b2=fgetc(in);
	*linelen=b1+256*b2;
	(*t)-=2;

	for(f=0;f<*linelen;f++)	{
		linebuf[f]=fgetc(in);
		(*t)--;
	}
}


/* translate line into keywords using the charset array */
void xlatline(int linelen) {
	int f;

	for(f=0;f<linelen-1;f++) {
		if( linebuf[0]!=234 && linebuf[f]==126 )
			f+=5;  /* avoid inline FP numbers - but ok for REMs */
		else
			if(strcmp(charset[linebuf[f]], NAK)==0) 
				printf("\\%02X", linebuf[f]);
 			else
				if(linebuf[0]==234) {
					if(f!=0 && strlen(charset[linebuf[f]])>1 
						&& *charset[linebuf[f]]!='\\'
						&& *charset[linebuf[f]]!='%')
						printf("\\%02X", linebuf[f]);
					else
						printf("%s",charset[linebuf[f]]);
				}
				else
					printf("%s",charset[linebuf[f]]);
	}
	printf("\n");
}


/* process (opened) .P file to stdout */
void thrashfile(FILE *in) {
	int inbyte,b1,b2;
	int f,linelen,linenum,d_file,total;

	for(f=1;f<=3;f++) inbyte=fgetc(in);   /* ignore sys vars */
	b1=fgetc(in); b2=fgetc(in);           /* except d_file */
	d_file=b1+256*b2;
	for(f=1;f<=111;f++) inbyte=fgetc(in); /* ignore more sys vars */

	total=d_file-16509; /* if d_file is after, prog is 16509 to d_file-1 right? */

	/* run through 'total' bytes, interpreting them as ZX81 program lines */
	getzxline(in,&linenum,&linelen,&total);
	while(total>=0) {
		printf("%4d",linenum);
		xlatline(linelen);
		getzxline(in,&linenum,&linelen,&total);
	}
}


int main(int argc,char *argv[]) {
	FILE *in;

	if(argc!=2) {
		printf("P2txt by Russell Marks for improbabledesigns.\n");
		printf("Modified by Mikael Bonnier to output input for ZXText2P.\n");
		printf("Lists ZX81 p-files to stdout.\n");
		printf("Usage:  p2txt infile.p >outfile.bas\n");
		printf("%% precedes inverse video. \\ precedes graphic char two char graph.\n");
		printf("Unused chars give a " NAK " character.\n");
		exit(1);
	}

	if((in=fopen(argv[1],"rb"))==NULL) {
		fprintf(stderr,"Error: couldn't open file '%s'\n",argv[1]);
		exit(1);
	}

	thrashfile(in);      /* process it */
	fclose(in);

	exit(0);
}
