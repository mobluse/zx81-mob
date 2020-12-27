zx81-mob
========

Programs for ZX81. Mostly in BASIC.

These programs where converted by [p2txt.c](https://github.com/mobluse/zx81-mob/blob/master/converters/p2txt.c) to ZXText2P-format. I've not tested if the programs in bas-files can be converted back to p-files. The programs
with machine-code in REM-statements will not run.

About LICENSE: Only the patch-files to the original files are covered by this license, except for files that are completely my own -- they have the LICENSE for the whole program and not just for the changes. The whole patched file is shown here but you can generate the patch. In the case there are original files they can be found on various sites e.g. http://www.atariarchives.org/morebasicgames/ and have their licenses. 

There is an App-Store for ZX81 here:  
http://www.df.lth.se.orbin.se/~mikaelb/sinclair/zx81/


## A ZX81 App Store in English 
Here are applications, documents, and emulators for the Sinclair ZX81 personal
computer.

The Sinclair ZX81 is presented in Swedish in the file zx81_beckman.pdf . 
A unique advantage with the ZX81 is that it only has 8 KB ROM (including 4 KB 
for floating point) and four integrated circuits (IC): CPU, ROM, RAM, and a 
custom made (which, however, can be built using standard circuits). Nowadays 
you can build a ZX81 emulator (AX81) with just a single chip computer (AVR) as
a single IC. In the mob-i-l_zx81.pdf there is a collection of articles from 
magazines but also some documents and drawings I produced myself in the 
early 80's.

In the catalog mob-i-l and subdirectories are programs in the form of P-files 
that I developed or ported from software for other computers. There are also 
some programs of unknown origin. Almost all programs were written in the early
80's. 

In the catalog mob-i-l/zx_forth_scr are "screens" (i.e., blocks of software code
in FORTH). It is difficult to run ZX FORTH programs in emulators, but you can, 
in more advanced emulators, load the screens to addresses in memory and compile 
them there. 

In the catalog yc are programs that come from the magazine Your Computer. 
The articles from which apps are coming can be found in a file that you 
find via http://en.wikipedia.org/wiki/Your_Computer_(British_magazine) .

However, all applications were entered by me except editor in the 
mob-i-l/zx_forth_scr-directory and programs in the artic-directory. In many 
cases there are png files with a picture of program listing or screenshots. 

An emulator, Zed Ex, for Android phones and surf boards are located in the 
directory android but it is better to download it from Google Play if you have 
this service on your Android because then you get updates automatically (but 
some cheaper surf boards does not have access to Google Play). 

In the Android Opera Mini browser click on the P-files to download them to the
phone/surf board. Then you can, with a file manager, move the files from the 
download directory (e.g. download) to a directory you yourself have created on
the SD card, such as one named zx81. In the ZX81 emulator Zed Ex you load an
app by pressing the Menu button and then click Load and select a P-file and 
sometimes it starts automatically. If the program doesn't start automatically 
you usually press R on the on-screen keyboard (which writes RUN) and then press
NEW LINE. Sometimes the program is started with GOTO 0 in order that you should
not delete data stored in variables. 

Another emulator is EightyOne for Windows but it works on Linux with Wine, and
probably also in Mac OS X using Wine. EightyOne is here:  
http://www.chuntey.com/. There is also a newer version of this which 
can be found via the forum: http://www.rwapservices.co.uk/ZX80_ZX81/forums/. 

There is an emulator for Linux: sz81: http://sz81.sourceforge.net/. When you 
get the emulator you also get xz81 which is the one I usually tend to run
in Linux because it is energy efficient. There is a Debian package for xz81 in 
the directory ubuntu if you do not want to compile. 

There are also ZX81 emulators for most other OSes, such as MS-DOS, 
Mac OS 7, etc. 

Another forum for the ZX81 is nntp:comp.sys.sinclair which can be read on 
http://groups.google.com/group/comp.sys.sinclair/. 

I bought the ZX81 in kit form in December 1981 after months of waiting, when I 
was 15. In the fall of 1981 I attended a course in BASIC programming with 
ABC80 in my elementary school (i.e. freely chosen work/student's choice).
In the beginning at home I had to sit on the floor in front of the family 
television, but after a few months I could afford a used 12-inch black and 
white TV. 

As secondary memory the ZX81 doesn't use hard drives, floppy disks or flash 
memory, but a cassette player. All programs in this app store are sampled from 
cassettes. I have a similar app-store for ABC80 here:  
http://www.df.lth.se.orbin.se/~mikaelb/abc/80/. 

With the ZX81 both a short Swedish and complete English manual was included
and the English is here:  
ftp://ftp.worldofspectrum.org/pub/sinclair/books/ZX81BASICProgramming.pdf .

I recommend anyone who knows English well enough to read the book. You don't 
learn much unnecessary things and the BASIC functions are available in SQL, 
which all software developers have to know anyway. However, do not memorize
the details of the memory layout, and the system variables, since they are 
obviously different in current systems.

Alternatively, you can bet on reading the manual for the ZX Spectrum (the 
successor to the ZX81), which is also available in more languages and has same
author (Steven Vickers) but the Spectrum is a more advanced computer 
(16 KB ROM with floating point) than the ZX81. The same author has also written
the manual for the Forth computer Jupiter Ace (8 KB ROM with floats, but not 
sin, log, &c.) and has developed parts of the ROMs to the computers (and in 
some cases the whole). The predecessor ZX81: ZX80 (4 KB ROM, and no floating 
point), seems to have an interesting manual, but it is written by another 
author. 

There is a video course for the ZX Spectrum, which probably is also useful for
those who want to learn ZX81:  
MasterClass - Sinclair ZX Spectrum: Introduction to Programming Level 1 & 2: 
http://www.worldofspectrum.org/infoseekid.cgi?id=0013467 . 

Nowadays you can develop software for the ZX81 also in C with the compiler 
z88dk, but it requires a another computer. It's probably still the case that 
the only high-level language except BASIC that can be used on the ZX81 is 
Forth. Forth is much faster than BASIC and facilitates the development of 
large programs. The fastest programs are written in assembly (i.e. machine 
language) but they are harder to develop in the same computer they run on, 
because they can lead to serious errors requiring restart - in addition, each 
processor family has its own assembly language. The processor (CPU) of the 
ZX81 is the Z80 which is a development of the 8080. A more recent development 
of the 8080 is the 8088 and the 8086 which were developed into 80186 (V30), 
80286, 80386 (i386), 80486 (i486), Pentium &c. Z80 is also used in, graphing 
calculators TI-82 STATS, TI-83 and TI-84 Plus. Obviously, one can make 
energy-efficient devices with the Z80, but the ZX81 is difficult to run in an
energy-efficient way without it becoming meaningless because the graphics 
(i.e. the television image) is generated by the CPU.


Sincerely,  
// Mikael O. Bonnier, [@mobluse](https://twitter.com/mobluse) on Twitter,   
// http://www.df.lth.se.orbin.se/~mikaelb/


## A ZX81 App-Store in Swedish
Här finns program, dokument och en emulator för datorn Sinclair ZX81.

Sinclair ZX81 presenteras på svenska i filen zx81_beckman.pdf. En unik fördel
med ZX81 är att den bara har 8 KB ROM (inklusive 4 KB för flyttal) och 
fyra integrerade kretsar (IC): CPU, ROM, RAM och en specialtillverkad (som dock 
kan byggas upp av standardkretsar). Numera kan man bygga en ZX81-emulator 
(AX81) med bara en enchipsdator (AVR) som enda IC. I mob-i-l_zx81.pdf finns 
en samling artiklar från tidskrifter men även en del dokument och ritningar jag
producerade själv i början av 80-talet.

I katalogen mob-i-l och underkataloger finns program i form av P-filer 
som jag själv utvecklat eller portat från program till andra datorer. 
Där finns även en del program med okänt ursprung. Nästan alla program där 
skrevs i början av 80-talet.

I katalogen mob-i-l/zx_forth_scr finns "skärmar" (d.v.s. block med 
programkod i FORTH). Det är besvärligt att köra ZXFORTH-program i emulatorer
men man kan i mer avancerade emulatorer ladda skärmar till valfria adresser i
minnet och kompilera dem där.

I katalogen yc finns program som kommer från tidningen Your Computer. Artiklarna
som programmen kommer ifrån finns att läsa i ett arkiv man hittar via
http://en.wikipedia.org/wiki/Your_Computer_(British_magazine) .

Dock är alla program inskrivna av mig utom editor i 
mob-i-l/zx_forth_scr-katalogen och programmen i artic-katalogen. 
I många fall finns png-filer med en bild på programlistningen eller 
skärmdumpar.

En emulator, Zed Ex, för Android-telefoner och -surfplattor finns i katalogen 
android men det är bättre att hämta denna från Google Play om man har denna
tjänst i sin Android ty då får man uppdateringar automatiskt (men vissa 
billigare surfplattor har ej tillgång till Google Play).

Man kan i Android med webbläsaren Opera Mini klicka på P-filerna för att ladda
ner dem till telefonen/surfplattan. Sedan kan man med en filhanterare flytta
filerna från nedladdningskatalogen (t.ex. download) till en katalog man själv
skapat på SD-kortet, t.ex. med namnet zx81. I ZX81-emulatorn Zed Ex laddar
man program genom att trycka på Meny-knappen och sedan klicka på Load och
välja en P-fil som laddas och ibland startas automatiskt. Om programmet
inte startar automatiskt skall man oftast trycka på R på skärmtangentbordet
(vilket skriver RUN) och därefter trycka på NEW LINE. Ibland skall program
startas med GOTO 0 för att man inte skall radera data som finns i variabler.

En annan emulator är EightyOne för Windows men den fungerar i Linux med Wine
och förmodligen också i Mac OS X med Wine. EightyOne finns här:
http://www.chuntey.com/. Det finns även en nyare version av denna som 
man kan hitta via forumet: http://www.rwapservices.co.uk/ZX80_ZX81/forums/.

Det finns en emulator för Linux: sz81: http://sz81.sourceforge.net/. På
köpet får man då emulatorn xz81 vilken är den jag oftast brukar köra i
Linux eftersom den är energisnål. Det finns ett Debian-paket för xz81 i 
katalogen ubuntu om man inte själv vill kompilera.

Det finns även ZX81-emulatorer för de flesta andra OS, t.ex. MS-DOS, 
Mac OS 7 m.fl.

Ett annat forum för ZX81 är nntp:comp.sys.sinclair som bl.a. kan läsas på
http://groups.google.com/group/comp.sys.sinclair/.

Jag köpte ZX81 som byggsats i december 1981 efter flera månaders kö när jag 
var 15 år. Jag gick sedan hösten 1981 en kurs i BASIC-programmering med
ABC80 på min grundskola (d.v.s. s.k. fritt valt arbete/elevens val).
I början fick jag sitta på golvet framför familjens TV, men efter några
månader fick jag råd med en begagnad 12-tums svartvit TV.

Som sekundärminne använde man inte hårddiskar, disketter eller flashminne,
utan kassettbandspelare. Alla programmen i denna app-butik är samplade från 
kassetter. Jag har en liknande app-store för ABC80 här:
http://www.df.lth.se.orbin.se/~mikaelb/abc/80/.

Med ZX81 följde både en kortare svensk och fullständigare engelsk manual 
och den engelska finns bl.a. här: 
ftp://ftp.worldofspectrum.org/pub/sinclair/books/ZX81BASICProgramming.pdf .

Jag rekommenderar alla som kan engelska någerlunda väl att läsa den boken. 
Man lär sig inte så mycket onödigt och BASIC-funktionerna finns i SQL, 
vilket alla programutvecklare ändå måste kunna. Dock behöver man inte memorera 
detaljerna om minneslayouten och systemvariablerna, ty de är naturligtvis 
annorlunda på aktuella system.

Alternativt kan man satsa på att läsa manualen till ZX Spectrum (efterföljaren
till ZX81) som även finns på svenska och har samma författare (Steven Vickers)
men Spectrum är en mer avancerad dator (16 KB ROM med flyttal) än ZX81. Samma 
författare har även skrivit manualen till Forth-datorn Jupiter Ace (8 KB med
flyttal men ej t.ex. sin, log o.s.v.) samt har utvecklat delar av ROM:en till 
datorerna (och i vissa fall hela). Föregångaren till ZX81: ZX80 (4 KB ROM och 
utan flyttal), har troligen också en intressant manual men den är skriven av 
en annan författare.

Det finns en videokurs för ZX Spectrum som troligen även är nyttig för dem
som vill lära sig ZX81:
Master Class - Sinclair ZX Spectrum: Introduction to Programming Level 1 & 2:
http://www.worldofspectrum.org/infoseekid.cgi?id=0013467 .

Numera kan man utveckla program för ZX81 även i C med kompilatorn Z88DK, men
det kräver en annan dator. Det är nog fortfarande så att det enda 
högnivåspråket förutom BASIC som man kan använda i ZX81 är Forth. Forth är
mycket snabbare än BASIC och underlättar utvecklingen av stora program.
De snabbaste programmen skrivs dock i assembler (d.v.s. maskinspråk) men de 
är svårare att utveckla i samma dator som de körs på, bl.a. eftersom de kan 
leda till svåra fel som kräver omstart -- dessutom har varje processorfamilj
sitt eget assemblerspråk. Processorn (CPU) i ZX81 är Z80 vilken är en utveckling
av 8080. En senare utveckling av 8080 är 8088 och 8086 vilken utvecklats till 
80186 (V30), 80286, 80386 (i386), 80486 (i486), Pentium o.s.v. Z80 används
även i t.ex. grafräknarna TI-82 STATS, TI-83 och TI-84 Plus. Tydligen kan
man göra strömsnåla apparater med Z80, men ZX81 är svår att köra energisnålt
utan att det blir meningslöst eftersom grafiken (d.v.s. TV-bilden) genereras 
av CPU:n.


Mvh,  
// Mikael O. Bonnier, [@mobluse](https://twitter.com/mobluse) på Twitter,  
// http://www.df.lth.se.orbin.se/~mikaelb/index-sve.html
