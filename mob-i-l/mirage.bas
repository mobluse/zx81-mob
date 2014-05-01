   1 REM \::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::         \::\::%*%M%I%R%A%G%E%*\::\::%V%E%R%S%I%O%N\::%1\::\::         \::\::\::%C%O%P%Y%R%I%G%H%T\::%8%2%1%1%0%6\::\::\::\::         \::\::\::\::\::\::\::\::\::\::%B%Y\::\::\::\::\::\::\::\::\::\::\::         \::\::\::\::%M%I%K%A%E%L\::%B%O%N%N%I%E%R\::\::\::\::\::         \::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::
   5 SLOW
  10 RAND 
  20 POKE 16389,68
  25 POKE 16418,0
  27 GOSUB 300
  30 LET X=INT (RND*19)
  40 LET Y=INT (RND*32)
  45 LET T=0
  50 LET P=21
  55 CLS
  60 LET Q=0
  70 LET P2=21
  80 LET Q2=13
  83 LET P3=21
  85 LET Q3=31
  90 LET T=T+1
  93 PRINT AT 23,0;"\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\.."
  95 PRINT AT X,Y;"\@@"
 100 PRINT AT P-1,Q;"."
 105 PRINT AT P2-1,Q2;"."
 107 PRINT AT P3-1,Q3;"."
 110 IF (P=X+1 AND Q=Y) OR (INT (P2+.5)=X+1 AND INT (Q2+.5)=Y) OR (INT (P3+.5)=X+1 AND INT (Q3+.5)=Y) THEN GOTO 200
 120 IF INKEY$ ="7" THEN LET X=X-2
 125 IF INKEY$ ="8" THEN LET Y=Y+2
 130 IF INKEY$ ="5" THEN LET Y=Y-2
 135 IF INKEY$ ="6" THEN LET X=X+2
 140 LET P=P+(P-2<X)-(P>X)
 145 LET P2=P2+.5*((P2-2<X)-(P2>X))
 147 LET P3=P3+1.8*((P3-2<X)-(P3>X))
 150 LET Q=Q+(Q<Y)-(Q>Y)
 155 LET Q2=Q2+.5*((Q2<Y)-(Q2>Y))
 157 LET Q3=Q3+1.8*((Q3<Y)-(Q3>Y))
 160 IF X<0 THEN LET X=0
 165 IF X>21 THEN LET X=21
 170 IF Y<1 THEN LET Y=1
 175 IF Y>29 THEN LET Y=29
 180 CLS
 190 GOTO 90
 200 PRINT AT 10,2;"DU BLEV TRAFFAD AV EN ROBOT";AT X,Y;"*";AT 12,2;"TID: ";T
 205 PRINT AT 23,0;"VILL DU HA EN NY MIRAGE (J/N)?  "
 206 PAUSE 40000
 207 IF INKEY$ <>"J" THEN GOTO 209
 208 RUN 30
 209 POKE 16389,128
 210 CLS
 220 RUN 1000
 300 CLS
 310 FOR X=1 TO 50
 320 PRINT AT RND*23,RND*31;"*"
 330 NEXT X
 340 PRINT AT 11,10;"\::%M%I%R%A%G%E\::"
 345 PAUSE 250
 350 CLS
 360 RETURN
 400 SAVE "MIRAG%E"
 410 RUN 
1000 LIST 
