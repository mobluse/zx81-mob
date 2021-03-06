  10 REM **********************
  20 REM *   FRACTION-CYCLE   * 
  25 REM *      GENERATOR     * 
  30 REM *   BY BOB KUROSAKA  *
  35 REM *    BYTE - NOV 1985 *
  40 REM **********************
  50 CLS
  60 PRINT "THIS PROGRAM CALCULATES THE     CYCLE OF REPEATING DECIMALS FOR"
  70 PRINT "POSITIVE FRACTIONS. ANSWERS ARE PRINTED AS ?.??-??..."
  80 PRINT "WHERE THE NUMBERS BETWEEN ""R""   AND ""..."" ARE REPEATED INFINIT- ELY."
  90 PRINT ,,,,
 100 PRINT "ENTER NUMERATOR: ";
 101 INPUT N
 102 PRINT N
 103 LET NUMERATOR=ABS N
 110 PRINT "ENTER DENOMINATOR: ";
 111 INPUT D
 112 PRINT D
 113 LET DENOMINATOR=ABS D
 120 REM "TERM" HOLDS THE VALUE      OF EACH DIGIT IN DECIMAL.       "REMAINDER" HOLDS THE           LOCATION OF THE FIRST           OCCURRENCE OF A REMAINDER,      I.E.,REMAINDER(1)=9 MEANS       THE REMAINDER 1 WAS FIRST       USED TO CALCULATE THE NINTH     TERM.
 130 DIM T(DENOMINATOR+1)
 131 DIM R(DENOMINATOR+1)
 140 REM CALCULATE THE WHOLE-NUM     PART,STORE IN TERM(1)
 150 LET T(1)=INT (NUMERATOR/DENOMINATOR)
 160 REM CALCULATE THE REMAINDER     ,FLAG THAT NUMBERS FIRST        OCCURRENCE AS 1.
 170 LET REMAINDER=NUMERATOR-T(1)*DENOMINATOR
 171 LET R(REMAINDER+1)=1
 180 REM WHEN WE HAVE SEEN A         REMAINDER BEFORE,NEWREMAIN$     WILL BE SET TO "NO".
 190 LET N$="YES"
 193 LET E$=""
 195 LET DIGIT=0
 200 REM WHILE N$="YES"
 201 IF N$="YES" THEN GOTO 210
 202 GOTO 310
 210 REM "DIGIT" KEEPS TRACK OF      THE DECIMAL PLACE OF TERM.
 220 LET DIGIT=DIGIT+1
 230 LET DIVIDEND=10*REMAINDER
 240 LET T(DIGIT+1)=INT (DIVIDEND/DENOMINATOR)
 250 LET REMAINDER=DIVIDEND-T(DIGIT+1)*DENOMINATOR
 260 REM IF THE DECIMAL TERMIN-      ATES,SET THE "EXACT$" FLAG      AND PREPARE THE "REMAINDER"     ARRAY TO TERMINATE THE LOOP     AT LINE 290
 270 IF REMAINDER=0 THEN LET E$="YES"
 271 IF REMAINDER=0 THEN LET R(REMAINDER+1)=DIGIT
 280 REM IF THIS IS A NEW            REMAINDER,STORE THE TERM IT     IS ASSOCIATED WHITH IN THE      APPROPRIATE "REMAINDER"         ARRAY LOCATION. OTHERWISE,      WE HAVE COMPLETED ONE TRIP      AROUND THE CYCLE AND CLOSE      THE WHILE/WEND LOOP.
 290 IF NOT R(REMAINDER+1)=0 THEN LET N$="NO"
 292 IF R(REMAINDER+1)=0 THEN LET R(REMAINDER+1)=DIGIT+1
 300 REM WEND
 301 GOTO 200
 310 REM PRINT RESULTS.
 315 PRINT ,,,,
 320 PRINT NUMERATOR;"/";DENOMINATOR;"=";
 330 REM FIRST,THE WHOLE-NUMBER          PART.
 340 PRINT T(1);".";
 350 REM THEN THE PART BEFORE        THE CYCLE.
 360 FOR I=1 TO R(REMAINDER+1)-1
 370 PRINT T(I+1);
 380 NEXT I
 390 REM IF THE DECIMAL CYCLES,          MARK THE BEGINNING OF           CYCLE WITH "R".
 400 IF E$<>"YES" THEN PRINT "R";
 410 REM NOW PRINT THE CYCLIC            PART.
 420 FOR I=R(REMAINDER+1) TO DIGIT
 430 PRINT T(I+1);
 440 NEXT I
 450 REM PRINT THE CYCLE LENGTH.
 460 IF E$<>"YES" THEN PRINT "...";TAB 0,,"THE CYCLE LENGTH IS ";DIGIT-R(REMAINDER+1)+1
 470 REM IF THE DECIMAL DOES NOT     REPEAT,SAY SO.
 480 IF E$="YES" THEN PRINT ,,,,,,,,"THIS IS A NONREPEATING DECIMAL."
 490 REM END OF PROGRAM
