   5 DIM A$(2,200,16)
   6 DIM I$(16)
  10 LET C=0
  15 PRINT "\::%G%L%O%S%A\::\::\::\::\::\::\::\::\::\::\::\::\::\::%V%E%R%S%I%O%N\::%1%.%0\::"
  16 PRINT "%C%O%P%Y%R%I%G%H%T\::%1%9%8%3\::%B%Y\::%M%I%K%A%E%L\::%B%O%N%N%I%E%R"
  20 LET C=C+1
  30 INPUT A$(1,C)
  35 IF A$(1,C, TO 4)="EXIT" THEN GOTO 100
  40 SCROLL
  45 PRINT AT 0,0;"\::%G%L%O%S%A\::\::\::\::\::\::\::\::\::\::\::\::\::\::%V%E%R%S%I%O%N\::%1%.%0\::";AT 21,0;
  50 PRINT A$(1,C);
  60 INPUT A$(2,C)
  70 PRINT A$(2,C)
  80 GOTO 20
 100 LET C=C-1
 105 GOSUB 300
 110 FOR I=1 TO C
 120 CLS
 130 PRINT "\::%G%L%O%S%A\::\::\::\::\::\::\::\::\::\::\::\::\::\::%V%E%R%S%I%O%N\::%1%.%0\::"
 140 PRINT AT 21,0;A$(2,W(I));"?"
 150 INPUT I$
 155 PRINT AT 15,0;A$(1,W(I));A$(2,W(I))
 156 PRINT AT 17,0;
 160 IF I$=A$(1,W(I)) THEN GOTO 200
 170 PRINT "YOU WAS %W%R%O%N%G-<£=-$/"
 180 GOTO 210
 200 PRINT TAB 6;"* * CORRECT * *"
 210 PRINT AT 21,0;"                   PRESS N/L -->"
 211 IF INKEY$ <>CHR$ 118 THEN GOTO 210
 212 NEXT I
 213 CLS
 214 PRINT AT 15,8;"-- THE END --"
 215 STOP
 300 RAND 
 310 DIM W(C)
 315 FOR P=1 TO C
 320 LET R=INT (C*RND)+1
 330 FOR I=1 TO P
 340 IF R=W(I) THEN GOTO 320
 350 NEXT I
 370 LET W(P)=R
 380 NEXT P
 390 RETURN
 400 SAVE "GLOS%A"
 410 RUN 
