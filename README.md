zx81-mob
========

Programs for ZX81. Mostly in BASIC.

About LICENSE: Only the patch-files to the original files are covered by this license. The whole patched file is shown here but you can generate the patch. The original files can be found on various sites e.g. http://www.atariarchives.org/morebasicgames/ and have their licenses. Some files are completely my own and they have the LICENSE for the whole program and not just for the changes.

http://www.df.lth.se.orbin.se/~mikaelb/sinclair/zx81/

##A ZX81 App Store in English 

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
http://www.df.lth.se/mikaelb/abc/80/. 

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
// Mikael O. Bonnier, @MOB_i_L on Twitter,   
// http://www.df.lth.se.orbin.se/~mikaelb/
