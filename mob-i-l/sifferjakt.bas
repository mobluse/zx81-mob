   1 REM  Y1\##5  ) ?> FASTE£RND FAST7\.'4LN ??K?( RETURN,<>J NEW LIST ?\,,\,,?????\,,\.'A( RETURN FOR  GOSUB ? FOR LEN ??\,,%J%Y45\.'\: ( RETURNQ* STOPPEEK  COPYACS  UNPLOT  CLEAR?C£\.';Y DIM LN %P\ 'F LN %>\ ' LPRINT ? LPRINT 7/%H\##%YC\: Q\.'%J/\.' RETURN94\##Q%*M\:.RND LPRINT AT TAN W\##/ASN         
   5 FAST
  10 PRINT TAB 10;"************"
  20 PRINT TAB 10;"*SIFFERJAKT*"
  30 PRINT TAB 10;"************"
  40 PRINT AT 6,0;"DATORN PLACERAR SLUMPVIS UT","NIO SIFFROR INOM EN SPELPLAN.",,,"DU SKA, GENOM ATT STYRA PRICKEN","MED RATTARNA, SAMLA IN ALLA","SIFFRORNA I TUR OCH ORDNING.",,,"TIDEN REGISTRERAS UNDER JAKTEN.",,,,,"LYCKA TILL.";AT 21,0;"(START-TRYCK ""NEWLINE"".)"
  50 PAUSE 4E4
  60 POKE 16389,128
  70 RAND 
  80 DIM S$(9)
  90 CLS
 100 PRINT TAB 11;"SIFFERJAKT"
 110 PRINT ,,TAB 7;"XXXXXXXXXXXXXXXXXX"
 120 FOR I=3 TO 18
 130 PRINT TAB 7;"X";TAB 24;"X"
 140 NEXT I
 150 PRINT TAB 7;"XXXXXXXXXXXXXXXXXX"
 160 FOR I=1 TO 9
 170 LET S$(I)=CHR$ INT (RND*255)
 180 FOR J=1 TO I-1
 190 IF S$(J)=S$(I) THEN GOTO 170
 200 NEXT J
 210 LET J=INT (CODE S$(I)/16)
 220 PRINT AT 3+J,23-CODE S$(I)+16*J;I
 230 NEXT I
 240 GOTO 280
 250 PRINT "RATTARNA SKALL VARA VRIDNA FULLTMOTURS."
 260 PAUSE 50
 270 PRINT AT 20,0;"                                        "
 280 POKE 21E3,0
 290 LET I=PEEK 21E3
 300 POKE 21001,0
 310 PRINT AT 20,0;
 320 IF I>2 OR PEEK 21E3>2 THEN GOTO 250
 330 LET J=USR 16515
 340 LET I=PEEK 16514
 350 PRINT "OTUR...DU TOG FEL SIFFRA EFTER" AND NOT I;"DU KLARADE DET PAA" AND I,J/50;" SEKUNDER"
 360 SCROLL
 370 PRINT "VILL DU SPELA IGEN?(J/N)"
 380 PAUSE 4E4
 390 IF INKEY$ ="J" THEN GOTO 90
 400 CLS
 410 PRINT AT 10,6;"*********************"
 420 PRINT TAB 6;"* SIFFERJAKTEN SLUT *"
 430 PRINT TAB 6;"*********************"
 440 SLOW