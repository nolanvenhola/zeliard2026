# OPENING_SCENE - Analysis

**Source:** `chunk_00.bin`  
**Size:** 13.5 KB  
**Functions:** 36  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    1 272          fcn.00000000
0x00000110   24 2407 -> 1871 fcn.00000110
0x00000112    1 3            fcn.00000112
0x00000116    1 4            fcn.00000116
0x00000118    1 2            fcn.00000118
0x000002d5    7 44           fcn.000002d5
0x00000301    9 91           fcn.00000301
0x0000035c    7 83           fcn.0000035c
0x000003af    4 33           fcn.000003af
0x000003d0    1 25           fcn.000003d0
0x0000045a    4 33           fcn.0000045a
0x0000049b    7 83           fcn.0000049b
0x00000a0b    2 17           fcn.00000a0b
0x00000a1c    3 41           fcn.00000a1c
0x00000a79   62 591          fcn.00000a79
0x00000cc8   20 64           fcn.00000cc8
0x00000d08    7 82           fcn.00000d08
0x00000d62    4 131  -> 89   fcn.00000d62
0x00000d67    8 42           fcn.00000d67
0x00000de5    8 46           fcn.00000de5
0x00000e13    1 64           fcn.00000e13
0x00000e53    1 15           fcn.00000e53
0x00000e62    1 15           fcn.00000e62
0x00000e71    3 34           fcn.00000e71
0x00000e93    1 33           fcn.00000e93
0x00000eb4    5 40           fcn.00000eb4
0x00000edc    5 105          fcn.00000edc
0x00000f45    5 107          fcn.00000f45
0x00000fb0    3 68           fcn.00000fb0
0x00002000 1038 4212 -> 4933 fcn.00002000
0x0000300a    1 2            fcn.0000300a
0x0000300c    1 1            fcn.0000300c
0x0000300e    4 46   -> 14   fcn.0000300e
0x00003010    1 1            fcn.00003010
0x00003016  143 1560 -> 1685 fcn.00003016
0x00003030    1 3            fcn.00003030
```

## Strings
```
nth      paddr      vaddr  len size section type   string                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x0000034d 0x0000034d    7    8         ascii  =e\bX< u
  1 0x000004ed 0x000004ed   82   83         utf8   Ç    Copyright (C)1987,1990 GAME ARTS    \r    Copyright (C)1990 Sierra On-Line     blocks=Latin-1 Supplement,Basic Latin
  2 0x000008a5 0x000008a5    4    4         ascii  QRS.
  3 0x000008fb 0x000008fb    4    4         ascii  QRS.
  4 0x00000aa2 0x00000aa2    8    8         ascii  <"t\f<'t\b
  5 0x00000ad9 0x00000ad9    5    5         ascii  PSQCA
  6 0x00000adf 0x00000adf    4    4         ascii  &[m.
  7 0x00000ae5 0x00000ae5    5    5         ascii  00Y[X
  8 0x00000aeb 0x00000aeb    4    4         ascii  &\m.
  9 0x00000b03 0x00000b03    5    6         ascii  Xm< t
 10 0x00000b9b 0x00000b9b    4    4         ascii  ]m=<
 11 0x00000ba7 0x00000ba7    4    4         ascii  ]m><
 12 0x00000bb3 0x00000bb3    4    4         ascii  ]m?<
 13 0x00000bbf 0x00000bbf    4    4         ascii  ]m@<
 14 0x00000bcb 0x00000bcb    4    4         ascii  ]mA<
 15 0x00000c1f 0x00000c1f   13   13         ibm037 ^0YXÙ^0YSÙZëÚ
 16 0x00000d12 0x00000d12    4    4         ascii  \n0^.
 17 0x00000f6b 0x00000f6b    4    4         ascii   \r&\n
 18 0x00000f7c 0x00000f7c    5    5         ascii  & %& 
 19 0x00000f92 0x00000f92    4    4         ascii   \r&\b
 20 0x00000fa2 0x00000fa2    4    4         ascii  `GFY
 21 0x00000ff3 0x00000ff3  840  840         ascii  0           Two thousand years, \rfrom the dark reaches of another galaxy,\r        a demon with not a shred\r      of compassion for humankind,\r         descended upon earth.\r\r          He defiled the land,\r  sending vile creatures to live in it,\r   and thus became ruler of the world.\r\r         The King of Felishika,\r     appalled by what had happened,\r          prayed to the Spirit\r      of the Holy Land of Zeliard\r    for help in defeating this monster.\r\r    With the help of the holy crystals\r       called Tears of Esmesanti,\r    the King managed to wrest power\r    from the fiend and seal him deep\r     within the bowels of the earth.\r\r            And once again,\r the light of peace came to shine upon\r              the earth.\r\r\rHowever, it is written in\r       the Sixth Book of Esmesanti:\r                    The Age of Darkness.\r
 22 0x0000133c 0x0000133c  246  246         ascii                  At last,                \r     the door of destiny was opened.    \r        The labyrinths are deep,        \r          and the way is long.          \r     Will Duke Garland be successful    \r   in dethroning the Emperor of Chaos?  \r
 23 0x00001433 0x00001433 1430 1430         ascii            Fantasy Action Game           \r               ZELIARD                  \r\r             -- STAFF --                \r\rProducer -- Japanese Version\r                      Mitsuhiro Mazda   \r\rProducer -- English Version\r                        Josh Mandel     \r\rLead Programmer      Tomoyuki Shimada   \r\rGraphic Designers     Akihiko Yoshida   \r                      Masatoshi Azumi   \r\rEnglish Text Translation by\r                       Marti McKenna    \r\rMusic Composers  -- MECANO ASSOCIATES --\r                    Fumihito Kasatani   \r                    Nobuyuki Aoshima    \r\rStory Maker           Masaru Takeuchi   \r\rSound Effects by     Tomoyuki Shimada   \r\rAdvisers               Osamu Harada     \r                       Hiromi Ohba      \r                       Greg Miyaji      \r\rSystem Designer      Rocky Cave Maker   \r\rSpecial Thanks to\r                    Toshiyuki Uchida    \r                       Yuzo Sunaga      \r                     Takeshi Miyaji     \r                     Naozumi Honma      \r                     Toshi Masubuchi    \r                     Ray E. Nakazato    \r                     Hiroyuki Koyama    \r                     Satoshi Uesaka     \r              Sierra On-Line Japan, Inc.\r                    Eiji (Ed) Nagano    \r\r\r\r    Copyright (C)1987,1990 GAME ARTS    \r    Copyright (C)1990 Sierra On-Line    \r  This edition first published 1987 by  \r  GAME ARTS Co.,Ltd./ Tomoyuki Shimada  \r
 24 0x000019cf 0x000019cf   62   62         ascii  Once, long ago, a terrible storm came to the land of Zeliard. 
 25 0x00001a13 0x00001a13   67   67         ascii  Dark clouds filled the sky; lightning flashed and thunder crashed. 
 26 0x00001a57 0x00001a57   60   60         ascii  Day after day, rain poured from the heavens as if in lament.
 27 0x00001a9d 0x00001a9d  101  101         ascii  On the seventh day of rain, a beautiful young girl stood on her balcony watching this dark, sad rain.
 28 0x00001b08 0x00001b08  116  116         ascii  The girl was Princess Felicia la Felishika.  She was the only daughter of King Felishika, and the light of his life.
 29 0x00001b83 0x00001b83  120  120         ascii  Her smiles were like sunshine, her voice as beautiful as that of an angel.  She was adored by the people of the kingdom.
 30 0x00001c05 0x00001c05   44   44         ascii  "What a dreadful storm!  Will it never end?"
 31 0x00001c37 0x00001c37  115  115         ascii  Just as the princess spoke these words, the raindrops turned to grains of sand which covered the ground below her. 
 32 0x00001cb4 0x00001cb4   63   63         ascii  As she watched, a startling transformation began to take place.
 33 0x00001cf9 0x00001cf9   64   64         ascii  In an instant, the green hills and plains turned a dusty brown. 
 34 0x00001d3f 0x00001d3f   44   44         ascii  Trees and flowers crumpled and were buried. 
 35 0x00001d6c 0x00001d6c   46   46         ascii  Rivers and lakes disappeared beneath the sand.
 36 0x00001d9b 0x00001d9b   64   64         ascii  This ever-green land was turning to desert before her very eyes.
 37 0x00001ddc 0x00001ddc   12   12         ibm037 55555ÚÙ53ÛÔs
 38 0x00001de8 0x00001de8   19   19         ascii  "How can this be?" 
 39 0x00001dfd 0x00001dfd   11   11         ascii  she cried, 
 40 0x00001e0a 0x00001e0a   62   62         ascii  "What evil power could cause such a terrible thing to happen?"
 41 0x00001e50 0x00001e50   64   64         ascii  Princess Felicia shivered as she felt a dark presence near her, 
 42 0x00001e91 0x00001e91   63   63         ascii  and suddenly, a terrifying voice bellowed as loud as thunder...
 43 0x00001ed8 0x00001ed8  160  160         ascii  "I am Jashiin, the Emperor of Chaos.  The descendants of those who imprisoned me under the earth shall know that my wrath has smoldered for two thousand years!"
 44 0x00001f80 0x00001f80  149  149         ascii  "Beautiful Princess Felicia, you will make a lovely and terrifying symbol of my awakening.  Your father will not make the mistakes of his ancestors!"
 45 0x0000201c 0x0000201c   88   88         ascii  As the words of the demon resounded over the land, Princess Felicia was turned to stone.
 46 0x0000207a 0x0000207a   90   90         ascii  The rain of sand continued for 108 days and transformed the once-fertile land into desert.
 47 0x000020d8 0x000020d8   92   92         ascii  The people of the kingdom wept at the terrible fate of their country, and of their princess.
 48 0x0000213d 0x0000213d   27   27         ascii  The King wept most of all. 
 49 0x0000215b 0x0000215b  123  123         ascii  "Oh, my beloved Felicia!  I fear the Age of Darkness is upon us.  I am powerless to stop it ... and powerless to help you."
 50 0x000021de 0x000021de   69   69         ascii  But the tears of the King and his people soon awakened another power.
 51 0x00002228 0x00002228   55   55         ascii  As the King grieved, an apparition appeared before him.
 52 0x00002265 0x00002265  182  182         ascii  "I am the Guardian Spirit of the Holy Land of Zeliard.  The demon Jashiin has been resurrected, and indeed his evil magic will plunge this world into the Age of Darkness once again."
 53 0x00002320 0x00002320  183  183         ascii  "Heed my words, King Felishika: There is but one way to stop this demon.  A brave warrior must venture into the labyrinths and recover the nine Holy Crystals, the Tears of Esmesanti."
 54 0x000023dd 0x000023dd  167  167         ascii  "Many terrible creatures dwell within the labyrinths, all of them Jashiin's minions.  No mortal man could defeat these deadly beasts and wrest the crystals from them."
 55 0x00002488 0x00002488   56   56         ascii  "However, there is one with the power to oppose Jashiin.
 56 0x000024c1 0x000024c1   71   71         ascii  The man who is destined to fight him will soon arrive in your kingdom."
 57 0x0000250d 0x0000250d   69   69         ascii  "This man is the only being strong enough to banish Jashiin forever."
 58 0x00002558 0x00002558  209  209         ascii  "You must await the arrival of this brave and noble knight, and tell him everything.  Only with his help can you hope to restore this land to its former beauty, and free your daughter from her terrible curse."
 59 0x00002632 0x00002632   50   50         ascii  Having spoken these words, the Spirit disappeared.
 60 0x00002669 0x00002669   50   50         ascii  King Felishika could not believe what he had seen.
 61 0x0000269d 0x0000269d   81   81         ascii  "Surely my mind is playing tricks on me!  I'm afraid I have gone mad with grief."
 62 0x000026f5 0x000026f5   55   55         ascii  But the next day, a stranger appeared in the kingdom...
 63 0x00002734 0x00002734   57   57         ascii  "What a desolate place!  Why has the Spirit led me here?"
 64 0x00002775 0x00002775  101  101         ascii  Guided by the light of the Spirit, brave Duke Garland had journeyed many days to the land of Zeliard.
 65 0x000027e0 0x000027e0   90   90         ascii  Entering the castle, he was quickly escorted to the throne of the grieving King Felishika.
 66 0x00002846 0x00002846    5    5         ascii  Duke 
 67 0x0000284c 0x0000284c    5    5         ascii  Garla
 68 0x00002854 0x00002854    4    4         ascii  d!  
 69 0x0000286f 0x0000286f    4    4         ascii  the 
 70 0x00002883 0x00002883    5    5         ascii  tiny 
 71 0x00002895 0x00002895    4    4         ascii  the 
 72 0x0000289c 0x0000289c    6    6         ascii  pirit 
 73 0x000028a7 0x000028a7    5    5         ascii  ke.  
 74 0x000028c2 0x000028c2    4    4         ascii  you 
 75 0x000028ce 0x000028ce    6    6         ascii  stroy 
 76 0x000028d5 0x000028d5    4    4         ascii  the 
 77 0x000028dd 0x000028dd    4    4         ascii  mon 
 78 0x000028f7 0x000028f7    4    4         ascii  has 
 79 0x00002901 0x00002901    4    4         ascii  sed 
 80 0x0000290d 0x0000290d    6    6         ascii  ngdom 
 81 0x0000291e 0x0000291e    4    4         ascii  ned 
 82 0x00002938 0x00002938    5    5         ascii  daugh
 83 0x0000293e 0x0000293e    4    4         ascii  ter 
 84 0x0000294f 0x0000294f    4    4         ascii  ne."
 85 0x0000295a 0x0000295a   36   36         ascii  Duke Garland knelt before the King. 
 86 0x0000298b 0x0000298b    5    5         ascii  ur Ma
 87 0x00002994 0x00002994    5    5         ascii  sty, 
 88 0x000029a4 0x000029a4    6    6         ascii  follow
 89 0x000029af 0x000029af    4    4         ascii  the 
 90 0x000029c2 0x000029c2    4    4         ascii  the 
 91 0x000029e6 0x000029e6    4    4         ascii  ce."
 92 0x00002a34 0x00002a34    9    9         ibm037 jp_q/pk`o
 93 0x00002a46 0x00002a46    4    4         ascii  ss, 
 94 0x00002a59 0x00002a59    4    4         ascii  ere 
 95 0x00002a71 0x00002a71    4    4         ascii  who 
 96 0x00002ae0 0x00002ae0    4    4         ascii  the 
 97 0x00002ae8 0x00002ae8    4    4         ascii  rst 
 98 0x00002afe 0x00002afe    4    4         ascii  the 
 99 0x00002b22 0x00002b22    4    4         ascii  you 
100 0x00002b37 0x00002b37    4    4         ascii  t ho
101 0x00002b4d 0x00002b4d    4    4         ascii  hear
102 0x00002b69 0x00002b69    5    5         ascii  nd.  
103 0x00002bab 0x00002bab   94   94         ascii  Suddenly, the room grew cold.  A black mist swirled around them, then took on a hideous shape.
104 0x00002c11 0x00002c11   63   63         ascii  "Are you the fool who dares to challenge me?  Don't be absurd!"
105 0x00002c64 0x00002c64    4    4         ascii  you 
106 0x00002c74 0x00002c74    4    4         ascii  the 
107 0x00002c88 0x00002c88    4    4         ascii  in!"
108 0x00002c92 0x00002c92   49   49         ascii  "You shall address me as the Emperor of Chaos... 
109 0x00002cc4 0x00002cc4   22   22         ascii  THE EMPEROR OF CHAOS!"
110 0x00002cdf 0x00002cdf  163  163         ascii  "Young fool, I could destroy you now, but I need a little amusement.  I will give you some time to perform your little quest, but you must promise not to bore me."
111 0x00002d87 0x00002d87   46   46         ascii  "Of course, you have no hope of defeating me."
112 0x00002dcf 0x00002dcf    4    4         ascii  ds, 
113 0x00002dde 0x00002dde    4    4         ascii  ne: 
114 0x00002e18 0x00002e18    4    4         ascii  med 
115 0x00002e1d 0x00002e1d    4    4         ascii  the 
116 0x00002e49 0x00002e49    4    4         ascii  led 
117 0x00002e4e 0x00002e4e    4    4         ascii  you 
118 0x00002e57 0x00002e57    4    4         ascii  der 
119 0x00002e5c 0x00002e5c    4    4         ascii  the 
120 0x00002e86 0x00002e86   12   12         ibm037 5555Ú057³èÇÁ
121 0x00002e92 0x00002e92   54   54         ascii   demon laughed, and the sound was like breaking glass.
122 0x00002ecb 0x00002ecb  129  129         ascii  "My labyrinths are immense, and run deep into the earth.  You'll soon lose your way, and then my underlings will finish you off."
123 0x00002f50 0x00002f50  107  107         ascii  "It's been many years since a stray mortal has wandered into their realm. They are hungry for human flesh."
124 0x00002fc3 0x00002fc3   71   71         ascii  With that, Jashiin disappeared leaving echoes of earsplitting laughter.
125 0x00003011 0x00003011   42   42         ascii  "You haven't seen the last of me, Jashiin!
126 0x0000303c 0x0000303c   36   36         ascii  Your reign of evil is near its end!"
127 0x000030a4 0x000030a4    4    5         ascii  re, 
128 0x000030b6 0x000030b6    4    5         ascii  ll w
129 0x000030d5 0x000030d5    5    6         ascii  p of 
130 0x000030de 0x000030de    4    5         ascii  000 
131 0x000030f7 0x000030f7    4    5         ascii  nce 
132 0x00003114 0x00003114    4    5         ascii  the 
133 0x00003141 0x00003141    7    8         ascii  \a\b\t\n\v\f\r
134 0x0000315d 0x0000315d   15   16         ascii   !"#$%&'()*+,-.
135 0x0000316e 0x0000316e    5    6         ascii  /0123
136 0x00003175 0x00003175    5    6         ascii  45678
137 0x00003197 0x00003197    4    5         ascii  >?@A
138 0x000031b9 0x000031b9    4    5         ascii  BCDE
139 0x0000330c 0x0000330c    4    5         ascii  WXYZ
140 0x0000332e 0x0000332e    4    5         ascii  [\]^
141 0x00003350 0x00003350    4    5         ascii  _`ab
142 0x00003394 0x00003394    5    6         ascii  efghi
143 0x000033b6 0x000033b6   10   11         ascii  jklmnopqrs
144 0x000033d8 0x000033d8   10   11         ascii  tuvwxyz{|}
145 0x000033fa 0x000033fa   12   13         ibm037 ="Øabcdefghi
146 0x0000341d 0x0000341d   11   12         ibm037 ýþ±°jklmnop
147 0x0000343f 0x0000343f   12   13         ibm037 Æ¤µ~stuvwxyz
148 0x000034f3 0x000034f3    8    9         ascii  \a\a\a\a\a\a\a\a
149 0x00003500 0x00003500   10   11         ascii  \a\b\b\b\b\b\b\b\b\b
150 0x0000350b 0x0000350b   17   18         ascii  \b\b\b\b\b\b\b\b\b\b\a\b\b\b\b\b\a
151 0x00003520 0x00003520   10   11         ascii  \a\a\b\b\a\b\a\a\b\b
152 0x0000352e 0x0000352e    7    8         ascii  \b\a\a\b\b\b\a
153 0x00003536 0x00003536    6    7         ascii  \b\b\b\a\a\a
154 0x00003543 0x00003543    7    8         ascii  nec.grp
155 0x0000354d 0x0000354d    7    8         ascii  hou.grp
156 0x00003557 0x00003557    9   10         ascii  dmaou.grp
157 0x00003562 0x00003562    9   10         ascii  (zopn.msd
158 0x0000356e 0x0000356e    8    9         ascii  ttl1.grp
159 0x00003579 0x00003579    8    9         ascii  ttl2.grp
160 0x00003583 0x00003583    9   10         ascii   ttl3.grp
161 0x0000358e 0x0000358e    9   10         ascii  'zend.msd
162 0x00003599 0x00003599    9   10         ascii  !waku.grp
163 0x000035a5 0x000035a5    7    8         ascii  ame.grp
164 0x000035af 0x000035af    8    9         ascii  hime.grp
165 0x000035ba 0x000035ba    7    8         ascii  isi.grp
166 0x000035c4 0x000035c4    7    8         ascii  oui.grp
167 0x000035ce 0x000035ce    7    8         ascii  sei.grp
168 0x000035d7 0x000035d7    9   10         ascii  "yuu1.grp
169 0x000035e2 0x000035e2    9   10         ascii  #yuu2.grp
170 0x000035ed 0x000035ed    9   10         ascii  $yuu3.grp
171 0x000035f8 0x000035f8    9   10         ascii  %yuu4.grp
172 0x00003603 0x00003603    9   10         ascii  &yuup.grp
173 0x0000360e 0x0000360e    8    9         ascii  \eoup.grp
174 0x00003619 0x00003619    8    9         ascii  maop.grp
175 0x00003624 0x00003624    8    9         ascii  game.bin
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0000      sub   word [0], si
│           0000:0004      add   ah, byte [bx + si - 6]                ; arg3
│           0000:0007      mov   sp, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned"
│           ; DATA XREF from fcn.0000035c @ 0x373
│           ; DATA XREF from fcn.0000049b @ 0x4b2
│           ; DATA XREF from fcn.00000110 @ 0xa00
│           ; DATA XREF from fcn.00000d08 @ 0xd1e
│           0000:000a      sti
│           0000:000b      mov   byte cs:[0xff1d], 0
│           ; DATA XREFS from fcn.00000edc @ 0xeee, 0xef1
│           0000:0011      mov   byte cs:[0xff29], 0
│           0000:0017      push  cs
│           ; DATA XREFS from fcn.00000110 @ 0x8a2, 0x8a5, 0x8f8, 0x8fb
│           0000:0018      pop   ds
│           0000:0019      call  word cs:[0x2042]                      ; "er the land, Princess Felicia was turned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transforme"
│           0000:001e      push  cs
│           0000:001f      pop   ds
│           ; XREFS(55)
│           0000:0020      push  cs
│           ; DATA XREFS from fcn.00000a79 @ 0xc5c, 0xca9
│           0000:0021      pop   es
│           ; DATA XREF from fcn.00000a79 @ 0xaa2
│           ; DATA XREFS from fcn.00000e71 @ 0xe73, 0xe88
│           ; DATA XREF from fcn.00000eb4 @ 0xeb8
│           0000:0022      mov   si, 0x957e
│           ; DATA XREFS from fcn.00003016 @ 0x3063, 0x3161
│           0000:0025      mov   di, 0xa000
│           0000:0028      mov   al, 2
│           0000:002a      call  word cs:[0x10c]
│           0000:002f      mov   es, word cs:[0xff2c]
│           0000:0034      mov   si, 0xa000
│           0000:0037      mov   di, 0x4000
│           ; DATA XREF from fcn.00003016 @ 0x317b
│           0000:003a      call  fcn.00000de5                          ; fcn.00000de5
│           ; DATA XREF from fcn.00003016 @ 0x3192
│           0000:003d      mov   ax, 4
│           ; DATA XREF from fcn.00000f45 @ 0xfa9
│           0000:0040      call  word cs:[0x3008]
│           0000:0045      xor   bx, bx
│           0000:0047      mov   cl, 0x96
│           ; DATA XREF from fcn.00003016 @ 0x30ae
│           0000:0049      mov   si, 0x64ea
│           ; DATA XREF from fcn.00000fb0 @ +0x9fe
│           0000:004c      call  word cs:[0x202a]                      ; "f the demon resounded over the land, Princess Felicia was turned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for"
│           0000:0051      mov   bx, 0x70f
│           0000:0054      mov   cx, 0x4170                            ; 'pA'
│           0000:0057      mov   es, word cs:[0xff2c]
│           0000:005c      mov   di, 0x4000
│           0000:005f      call  word cs:[0x301a]                      ; "n't seen the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           ; DATA XREFS from fcn.00000110 @ 0x2a2, 0x2a5
│           ; DATA XREF from fcn.00002000 @ 0x2b74
│           0000:0064      push  cs
│           ; DATA XREFS from fcn.00002000 @ 0x2991, 0x2b13
│           0000:0065      pop   es
│           ; DATA XREFS from fcn.00002000 @ 0x2879, 0x2888, 0x28bc
│           0000:0066      mov   si, 0x953d
│           ; XREFS: DATA 0x00001742  DATA 0x000017fb  DATA 0x0000190f  
│           ; XREFS: DATA 0x000028e6  DATA 0x00003106  DATA 0x00003394  
│           0000:0069      mov   di, 0xa000
│           0000:006c      mov   al, 2
│           ; DATA XREF from fcn.00002000 @ 0x2b8b
│           0000:006e      call  word cs:[0x10c]
│           ; DATA XREF from fcn.00002000 @ 0x2b07
│           0000:0073      mov   si, 0x9547
│           0000:0076      mov   di, 0xb800
│           ; DATA XREF from fcn.00002000 @ 0x2b47
│           ; DATA XREF from fcn.00003016 @ 0x35ed
│           0000:0079      mov   al, 2
│           0000:007b      call  word cs:[0x10c]
│           ; DATA XREFS from fcn.00000a79 @ 0xa8f, 0xb34
│           ; DATA XREF from fcn.00000de5 @ 0xe0d
│           0000:0080      mov   es, word cs:[0xff2c]
│           ; DATA XREF from fcn.00002000 @ 0x28ca
│           0000:0085      mov   si, 0xa000
│           ; DATA XREF from fcn.00002000 @ 0x2922
│           0000:0088      mov   di, 0x4000
│           0000:008b      call  fcn.00000d62                          ; fcn.00000d62
│           0000:008e      call  word cs:[0x2042]                      ; "er the land, Princess Felicia was turned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transforme"
│           0000:0093      mov   byte cs:[0xff1d], 0
│           0000:0099      mov   byte cs:[0xff29], 0
│           0000:009f      mov   ax, 1
│           0000:00a2      call  word cs:[0x3008]
│           0000:00a7      mov   al, 0xff
│           ; DATA XREF from fcn.00003016 @ 0x3449
│           0000:00a9      mov   bx, 0x1220
│           0000:00ac      mov   cx, 0x2c68                            ; 'h,'
│           0000:00af      mov   es, word cs:[0xff2c]
│           0000:00b4      mov   di, 0x4000
│           ; DATA XREF from fcn.00003016 @ 0x3467
│           0000:00b7      call  word cs:[0x3002]
│           0000:00bc      call  fcn.0000035c                          ; fcn.0000035c
│           0000:00bf      mov   ax, 2
│           0000:00c2      call  word cs:[0x3008]
│           ; DATA XREF from fcn.00000110 @ 0x29f
│           0000:00c7      mov   al, 0xff
│           0000:00c9      mov   bx, 0x1220
│           0000:00cc      mov   cx, 0x2c68                            ; 'h,'
│           0000:00cf      mov   es, word cs:[0xff2c]
│           0000:00d4      mov   di, 0x4000
│           0000:00d7      call  word cs:[0x3004]
│           0000:00dc      mov   es, word cs:[0xff2c]
│           0000:00e1      mov   si, 0xb800
│           0000:00e4      mov   di, 0x9000
│           0000:00e7      call  fcn.00000d62                          ; fcn.00000d62
│           0000:00ea      mov   bx, 0x2048                            ; 'H ' ; " land, Princess Felicia was turned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the " ; int16_t arg3
│           ; DATA XREF from fcn.00000a79 @ 0xbb6
│           0000:00ed      mov   cx, 0x1040
│           ; XREFS: DATA 0x0000017a  DATA 0x0000018a  DATA 0x000001b2  
│           ; XREFS: DATA 0x0000023a  DATA 0x00000267  DATA 0x0000029a  
│           ; XREFS: DATA 0x000009d5  DATA 0x00000b31  DATA 0x00000b92  
│           ; XREFS: DATA 0x00000c12  DATA 0x00000c1a  DATA 0x00000c1f  
│           ; XREFS: DATA 0x00000c24  
│           0000:00f0      mov   es, word cs:[0xff2c]
│           ; DATA XREF from fcn.00000a79 @ 0xb5f
│           0000:00f5      mov   di, 0x75a0
│           0000:00f8      call  word cs:[fcn.00003010]                ; 0x3010
│           ; DATA XREF from fcn.00000a79 @ 0xb2a
│           ; DATA XREF from fcn.00000cc8 @ 0xcda
│           ; DATA XREF from fcn.00003016 @ 0x3078
│           0000:00fd      mov   byte cs:[0xff75], 4
│           0000:0103      mov   si, 0x9060
│           0000:0106      call  word cs:[0x3012]
│           0000:010b      push  cs
│           ; XREFS(25)
│           0000:010c      pop   es
└           0000:010d      mov   si, 0x9551
```

### Function 0x00000110
```asm
; CALL XREF from fcn.000003d0 @ 0x3d2
            ; CALL XREF from fcn.00000a1c @ 0xa2e
│           ; CALL XREF from fcn.000003d0 @ 0x3d7
│           ; CALL XREF from fcn.00000a1c @ 0xa33
│           ;-- (0x00000112) fcn.00000112:
┌ fcn.00000110();
│           0000:0110  ~   mov   di, 0xa000
│           0000:0113      mov   al, 2
│           ; CALL XREF from fcn.000003d0 @ 0x3dc
│           ; CALL XREF from fcn.00000a1c @ 0xa38
│           ;-- (0x00000116) fcn.00000116:
│           0000:0115  ~   call  word cs:[0x10c]
│           0000:011a      mov   es, word cs:[0xff2c]
│           0000:011f      mov   si, 0xa000
│           0000:0122      mov   di, 0x97c0
│           0000:0125      call  fcn.00000d62                          ; fcn.00000d62
│           0000:0128      call  fcn.00000e13                          ; fcn.00000e13
│           0000:012b      mov   bx, 0x1220
│           0000:012e      mov   cx, 0x2c68                            ; 'h,'
│           0000:0131      call  word cs:[0x3006]
│           0000:0136      mov   ax, 3
│           0000:0139      call  word cs:[0x3008]
│           0000:013e      mov   ax, cs
│           0000:0140      add   ax, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned"
│           0000:0143      mov   es, ax
│           0000:0145      mov   al, 0xff
│           0000:0147      mov   bx, 0x1720
│           0000:014a      mov   cx, 0x2270                            ; 'p"' ; "uardian Spirit of the Holy Land of Zeliard.  The demon Jashiin has been resurrected, and indeed his evil magic will plunge this "
│           0000:014d      mov   di, 0
│           0000:0150      call  word cs:[0x3004]
│           0000:0155      mov   si, 0x911e
│           ; CODE XREF from fcn.00000110 @ 0x173
│       ┌─> 0000:0158      mov   byte [0xff1a], 0
│       ╎   0000:015d      lodsb al, byte [si]
│       ╎   0000:015e      or    al, al
│      ┌──< 0000:0160      je    0x175
│      │╎   0000:0162      push  si
│      │╎   0000:0163      dec   al
│      │╎   0000:0165      mov   bx, 0x1720
│      │╎   0000:0168      call  word cs:[0x3014]
│      │╎   0000:016d      pop   si
│      │╎   0000:016e      mov   al, 0x14
│      │╎   0000:0170      call  fcn.000003af                          ; fcn.000003af
│      │└─< 0000:0173      jmp   0x158
│      └──> 0000:0175      mov   byte [0xff1a], 0
│           0000:017a      mov   al, 0xf0
│           0000:017c      call  fcn.000003af                          ; fcn.000003af
│           0000:017f      mov   si, 0x9096
│           0000:0182      call  fcn.000002d5                          ; fcn.000002d5
│           0000:0185      mov   byte [0xff1a], 0
│           0000:018a      mov   al, 0xf0
│           0000:018c      call  fcn.000003af                          ; fcn.000003af
│           0000:018f      mov   al, 2
│           0000:0191      mov   bx, 0x1720
│           0000:0194      call  word cs:[0x3014]
│           0000:0199      mov   byte [0xff1a], 0
│           0000:019e      mov   al, 0xf
│           0000:01a0      call  fcn.000003af                          ; fcn.000003af
│           0000:01a3      mov   al, 3
│           0000:01a5      mov   bx, 0x1720
│           0000:01a8      call  word cs:[0x3014]
│           0000:01ad      mov   byte [0xff1a], 0
│           0000:01b2      mov   al, 0xf0
│           0000:01b4      call  fcn.000003af                          ; fcn.000003af
│           0000:01b7      xor   al, al
│           0000:01b9      mov   bx, 0x94                              ; int16_t arg3
│           0000:01bc      mov   cx, 0x501e                            ; int16_t arg4
│           0000:01bf      call  word cs:[fcn.00002000]                ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned"
│           0000:01c4      push  cs
│           0000:01c5      pop   es
│           0000:01c6      mov   si, 0x9568
│           0000:01c9      mov   di, 0xa000
│           0000:01cc      mov   al, 2
│           0000:01ce      call  word cs:[0x10c]
│           0000:01d3      mov   es, word cs:[0xff2c]
│           0000:01d8      mov   si, 0xa000
│           0000:01db      mov   di, 0x4000
│           0000:01de      call  fcn.00000de5                          ; fcn.00000de5
│           0000:01e1      push  cs
│           0000:01e2      pop   es
│           0000:01e3      mov   si, 0x9573
│           0000:01e6      mov   di, 0xa000
│           0000:01e9      mov   al, 2
│           0000:01eb      call  word cs:[0x10c]
│           0000:01f0      mov   si, 0x957e
│           0000:01f3      mov   di, 0xb000
│           0000:01f6      mov   al, 2
│           0000:01f8      call  word cs:[0x10c]
│           0000:01fd      mov   si, 0x955d
│           0000:0200      mov   es, word cs:[0xff2c]
│           0000:0205      mov   di, 0x3000                            ; " laughter.\xf5\xf5\xfd\xfe\xef\xf3\xfb\"You haven't seen the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\x"
│           0000:0208      mov   al, 5
│           0000:020a      call  word cs:[0x10c]
│           0000:020f      mov   bx, 0x1720
│           0000:0212      mov   cx, 0x2270                            ; 'p"' ; "uardian Spirit of the Holy Land of Zeliard.  The demon Jashiin has been resurrected, and indeed his evil magic will plunge this "
│           0000:0215      call  word cs:[0x3006]
│           0000:021a      mov   ax, 4
│           0000:021d      call  word cs:[0x3008]
│           0000:0222      mov   byte [0xff1a], 0
│           0000:0227      push  ds
│           0000:0228      mov   ds, word cs:[0xff2c]
│           0000:022d      mov   si, 0x3000                            ; " laughter.\xf5\xf5\xfd\xfe\xef\xf3\xfb\"You haven't seen the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\x"
│           0000:0230      xor   ax, ax
│           0000:0232      int   0x60
│           0000:0234      pop   ds
│           0000:0235      call  word cs:[0x3018]
│           0000:023a      mov   al, 0xf0
│           0000:023c      call  fcn.000003af                          ; fcn.000003af
│           0000:023f      xor   al, al
│           0000:0241      mov   bx, 0xb48
│           0000:0244      mov   cx, 0x3180
│           0000:0247      mov   es, word cs:[0xff2c]
│           0000:024c      mov   di, 0x4000
│           0000:024f      call  word cs:[0x3004]
│           0000:0254      mov   byte [0xff1a], 0
│           0000:0259      mov   es, word cs:[0xff2c]
│           0000:025e      mov   si, 0xb000
│           0000:0261      mov   di, 0x4000
│           0000:0264      call  fcn.00000de5                          ; fcn.00000de5
│           0000:0267      mov   al, 0xf0
│           0000:0269      call  fcn.000003af                          ; fcn.000003af
│           0000:026c      mov   bx, 0x70f
│           0000:026f      mov   cx, 0x4170                            ; 'pA'
│           0000:0272      mov   es, word cs:[0xff2c]
│           0000:0277      mov   di, 0x4000
│           0000:027a      call  word cs:[0x301a]
│           0000:027f      mov   byte [0xff1a], 0
│           0000:0284      mov   es, word cs:[0xff2c]
│           0000:0289      mov   si, 0xa000
│           0000:028c      mov   di, 0x4000
│           0000:028f      call  fcn.00000de5                          ; fcn.00000de5
│           0000:0292      mov   si, 0x912b
│           0000:0295      call  word cs:[0x301c]
│           0000:029a      mov   al, 0xf0
│           0000:029c      call  fcn.000003af                          ; fcn.000003af
│           0000:029f      mov   ax, 0xc7
│           0000:02a2      mov   cx, 0x64                              ; 'd'
│       ┌─> 0000:02a5      push  cx
│       ╎   0000:02a6      mov   byte [0xff1a], 0
│       ╎   0000:02ab      push  ax
│       ╎   0000:02ac      call  word cs:[0x301e]
│       ╎   0000:02b1      pop   ax
│       ╎   0000:02b2      push  ax
│       ╎   0000:02b3      mov   al, ah
│       ╎   0000:02b5      call  word cs:[0x301e]
│       ╎   0000:02ba      mov   al, 0x50                              ; 'P'
│       ╎   0000:02bc      call  fcn.000003af                          ; fcn.000003af
│       ╎   0000:02bf      pop   ax
│       ╎   0000:02c0      add   ah, 2
│       ╎   0000:02c3      sub   al, 2
│       ╎   0000:02c5      pop   cx
│       └─< 0000:02c6      loop  0x2a5
│       ┌─> 0000:02c8      call  fcn.000003d0                          ; fcn.000003d0
│       ╎   0000:02cb      test  byte [0xff26], 0xff
│       └─< 0000:02d0      je    0x2c8
│       ┌─< 0000:02d2      jmp   0x3e9
        │   ; CALL XREF from fcn.00000110 @ 0x182
..
│       │   ; CODE XREF from fcn.000002d5 @ 0x2ff
│      ╎│   ; CODE XREF from fcn.000002d5 @ 0x2f5
        │   ; CALL XREF from fcn.000002d5 @ 0x2f7
        │   ; CALL XREF from fcn.00000000 @ 0xbc
        │   ; XREFS: CALL 0x00000170  CALL 0x0000017c  CALL 0x0000018c  
        │   ; XREFS: CALL 0x000001a0  CALL 0x000001b4  CALL 0x0000023c  
        │   ; XREFS: CALL 0x00000269  CALL 0x0000029c  CALL 0x000002bc  
        │   ; XREFS: CALL 0x000002fc  CALL 0x00000388  CALL 0x000003a8  
     ││ │   ; CALL XREF from fcn.00000110 @ 0x2c8
     ││ │   ; CALL XREF from fcn.000003af @ 0x3bf
     ││ │   ; CALL XREF from fcn.0000045a @ 0x46a
│    ││ │   ; CODE XREF from fcn.00000110 @ 0x2d2
│    └└─└─> 0000:03e9      mov   byte [0xff24], 8                      ; arg1
│           0000:03ee      mov   al, 0xff
│           0000:03f0      mov   bx, 0
│           0000:03f3      mov   cx, 0x50c8
│           0000:03f6      call  word cs:[0x3006]
│       ┌─> 0000:03fb      test  byte [0xff26], 0xff
│       └─< 0000:0400      je    0x3fb
│           0000:0402      mov   byte cs:[0xff1d], 0
│           0000:0408      mov   byte cs:[0xff29], 0
│       ┌─< 0000:040e      jmp   0x410
│       │   ; XREFS: CODE 0x0000040e  DATA 0x000005b5  DATA 0x000005d3  
│       │   ; XREFS: DATA 0x00000615  DATA 0x0000065a  DATA 0x000006ec  
│       │   ; XREFS: DATA 0x00000704  DATA 0x00000739  DATA 0x000007ab  
│       └─> 0000:0410      cli
│           0000:0411      mov   sp, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned"
│           0000:0414      sti
│           0000:0415      push  cs
│           0000:0416      pop   ds
│           0000:0417      call  word cs:[0x2042]                      ; "er the land, Princess Felicia was turned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transforme"
│           0000:041c      mov   si, 0x9589
│           0000:041f      mov   es, word cs:[0xff2c]
│           0000:0424      mov   di, 0x3000                            ; " laughter.\xf5\xf5\xfd\xfe\xef\xf3\xfb\"You haven't seen the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\x"
│           0000:0427      mov   al, 5
│           0000:0429      call  word cs:[0x10c]
│           0000:042e      mov   byte [0xff1a], 0
│           0000:0433      push  ds
│           0000:0434      mov   ds, word cs:[0xff2c]
│           0000:0439      mov   si, 0x3000                            ; " laughter.\xf5\xf5\xfd\xfe\xef\xf3\xfb\"You haven't seen the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\x"
│           0000:043c      xor   ax, ax
│           0000:043e      int   0x60
│           0000:0440      pop   ds
│           0000:0441      mov   byte cs:[0xff1d], 0
│           0000:0447      mov   byte cs:[0xff29], 0
│           0000:044d      mov   ax, 1                                 ; int16_t arg2
│           0000:0450      call  word cs:[0x3008]
│           0000:0455      call  fcn.0000049b                          ; fcn.0000049b
│       ┌─< 0000:0458      jmp   0x47b
        │   ; CALL XREFS from fcn.0000049b @ 0x4c7, 0x4e7
..
│    ││ │   ; CODE XREF from fcn.00000110 @ 0x458
│    └└─└─> 0000:047b      mov   byte [0xff24], 8
│           0000:0480      call  word cs:[0x2042]                      ; "er the land, Princess Felicia was turned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transforme"
│       ┌─> 0000:0485      test  byte [0xff26], 0xff
│       └─< 0000:048a      je    0x485
│           0000:048c      mov   byte cs:[0xff1d], 0
│           0000:0492      mov   byte cs:[0xff29], 0
│       ┌─< 0000:0498      jmp   0x544
        │   ; CALL XREF from fcn.00000110 @ 0x455
..
│  ││││││   ; CODE XREF from fcn.00000110 @ 0x498
│  │││││└─> 0000:0544      cli                                         ; int16_t arg3
│  │││││    0000:0545      mov   sp, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned"
│  │││││    0000:0548      sti
│  │││││    0000:0549      mov   byte cs:[0xff1d], 0
│  │││││    0000:054f      mov   byte cs:[0xff29], 0
│  │││││    0000:0555      mov   word cs:[0x6d56], 0x79c6              ; [0x79c6:2]=0xffff
│  │││││    0000:055c      mov   ax, 5
│  │││││    0000:055f      call  word cs:[0x3008]
│  │││ │    0000:0564      push  cs
│  │││ │    0000:0565      pop   es
│  │││ │    0000:0566      mov   si, 0x9594
│  │││ │    0000:0569      mov   di, 0xa000
│  │││ │    0000:056c      mov   al, 2
│  │││ │    0000:056e      call  word cs:[0x10c]
│  │││      0000:0573      mov   ax, cs
│  │││      0000:0575      add   ax, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned"
│  │││      0000:0578      mov   es, ax
│  │││      0000:057a      mov   si, 0xa000
│  │││      0000:057d      mov   di, 0
│  │││      0000:0580      call  fcn.00000d62                          ; fcn.00000d62
│  │││      0000:0583      push  cs
│  │││      0000:0584      pop   es
│  │││      0000:0585      mov   si, 0x959f
│  │││      0000:0588      mov   di, 0xa000
│  │└─────> 0000:058b      mov   al, 2
│  │ │      0000:058d      call  word cs:[0x10c]
│  │ │      0000:0592      mov   es, word cs:[0xff2c]
│  │ │      0000:0597      mov   si, 0xa000
│  │        0000:059a      mov   di, 0x4000
│  │        0000:059d      call  fcn.00000d62                          ; fcn.00000d62
│  │        0000:05a0      mov   bx, 0                                 ; int16_t arg3
│  │        0000:05a3      mov   cx, 0x5088
│           0000:05a6      mov   ax, cs
│           0000:05a8      add   ax, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned" ; int16_t arg1
│           0000:05ab      mov   es, ax
│           0000:05ad      mov   di, 0
│           0000:05b0      call  word cs:[fcn.00003010]                ; 0x3010
│           0000:05b5      mov   bx, 0x410                             ; int16_t arg3
│           0000:05b8      mov   cx, 0x4868                            ; 'hH'
│           0000:05bb      mov   es, word cs:[0xff2c]
│           0000:05c0      mov   di, 0x4000
│           0000:05c3      call  word cs:[fcn.00003010]                ; 0x3010
│           0000:05c8      call  fcn.00000a79                          ; fcn.00000a79
│           0000:05cb      mov   ax, 9                                 ; int16_t arg1
│           0000:05ce      call  word cs:[0x3008]
│           0000:05d3      mov   bx, 0x410                             ; int16_t arg3
│           0000:05d6      mov   cx, 0x4868                            ; 'hH'
│           0000:05d9      mov   es, word cs:[0xff2c]
│           0000:05de      mov   di, 0x4000
│           0000:05e1      call  word cs:[fcn.00003010]                ; 0x3010
│           0000:05e6      push  cs
│           0000:05e7      pop   es
│           0000:05e8      mov   si, 0x95a9
│           0000:05eb      mov   di, 0xa000
│           0000:05ee      mov   al, 2
│           0000:05f0      call  word cs:[0x10c]
│           0000:05f5      mov   es, word cs:[0xff2c]
│           0000:05fa      mov   si, 0xa000
│           0000:05fd      mov   di, 0x4000
│           0000:0600      call  fcn.00000d62                          ; fcn.00000d62
│           0000:0603      call  fcn.00000a79                          ; fcn.00000a79
│           0000:0606      xor   ax, ax
│           0000:0608      call  word cs:[0x3020]                      ; "en the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:060d      mov   ax, 6                                 ; int16_t arg1
│           0000:0610      call  word cs:[0x3008]
│           0000:0615      mov   bx, 0x410                             ; int16_t arg3
│           0000:0618      mov   cx, 0x4868                            ; 'hH'
│           0000:061b      mov   es, word cs:[0xff2c]
│           ; DATA XREF from fcn.00000e13 @ 0xe3c
│           0000:0620      mov   di, 0x4000
│           0000:0623      call  word cs:[fcn.00003010]                ; 0x3010
│           0000:0628      push  cs
│           0000:0629      pop   es
│           0000:062a      mov   si, 0x9551
│           0000:062d      mov   di, 0xa000
│           0000:0630      mov   al, 2
│           0000:0632      call  word cs:[0x10c]
│           0000:0637      mov   es, word cs:[0xff2c]
│           0000:063c      mov   si, 0xa000
│           0000:063f      mov   di, 0x97c0
│           0000:0642      call  fcn.00000d62                          ; fcn.00000d62
│           0000:0645      call  fcn.00000a79                          ; fcn.00000a79
│           0000:0648      mov   al, 4
│           0000:064a      call  fcn.00000e93                          ; fcn.00000e93
│           0000:064d      mov   ax, cs
│           0000:064f      add   ax, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned"
│           0000:0652      mov   es, ax
│           0000:0654      mov   di, 0
│           0000:0657      call  fcn.00000edc                          ; fcn.00000edc
│           0000:065a      mov   bx, 0x410                             ; int16_t arg3
│           0000:065d      mov   cx, 0x4868                            ; 'hH'
│           ; DATA XREFS from fcn.00000eb4 @ 0xebb, 0xecb
│           ; DATA XREF from fcn.00000edc @ 0xf15
│           0000:0660      mov   es, word cs:[0xff2c]
│           0000:0665      mov   di, 0x4000
│           0000:0668      call  word cs:[fcn.00003010]                ; 0x3010
│           0000:066d      call  fcn.00000a79                          ; fcn.00000a79
│           0000:0670      call  fcn.00000a79                          ; fcn.00000a79
│           0000:0673      mov   ax, cs
│           0000:0675      add   ax, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned" ; int16_t arg1
│           0000:0678      mov   es, ax
│           0000:067a      mov   di, 0
│           0000:067d      mov   bx, 0x1728
│           0000:0680      mov   cx, 0x2230                            ; '0"' ; "ing grieved, an apparition appeared before him.\xf5\xf5\xfe\xec\xf7\xfb\"I am the Guardian Spirit of the Holy Land of Zeliard.  "
│           0000:0683      mov   al, 7
│           0000:0685      call  word cs:[0x3022]                      ; " the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:068a      call  fcn.00000a79                          ; fcn.00000a79
│           0000:068d      call  fcn.00000a79                          ; fcn.00000a79
│           0000:0690      mov   al, 2
│           0000:0692      call  fcn.00000e93                          ; fcn.00000e93
│           0000:0695      mov   ax, cs
│           0000:0697      add   ax, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned" ; int16_t arg1
│           0000:069a      mov   es, ax
│           0000:069c      mov   di, 0
│           0000:069f      mov   bx, 0x1728                            ; int16_t arg3
│           0000:06a2      mov   cx, 0x2230                            ; '0"' ; "ing grieved, an apparition appeared before him.\xf5\xf5\xfe\xec\xf7\xfb\"I am the Guardian Spirit of the Holy Land of Zeliard.  "
│           0000:06a5      call  word cs:[fcn.00003010]                ; 0x3010
│           0000:06aa      mov   byte cs:[0xff1a], 0
│           0000:06b0      mov   al, 0xf
│           0000:06b2      call  fcn.00000a0b                          ; fcn.00000a0b
│           0000:06b5      mov   al, 3
│           0000:06b7      call  fcn.00000e93                          ; fcn.00000e93
│           0000:06ba      mov   ax, cs
│           0000:06bc      add   ax, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned" ; int16_t arg1
│           0000:06bf      mov   es, ax
│           0000:06c1      mov   di, 0
│           0000:06c4      mov   bx, 0x1728                            ; int16_t arg3
│           0000:06c7      mov   cx, 0x2230                            ; '0"' ; "ing grieved, an apparition appeared before him.\xf5\xf5\xfe\xec\xf7\xfb\"I am the Guardian Spirit of the Holy Land of Zeliard.  "
│           0000:06ca      call  word cs:[fcn.00003010]                ; 0x3010
│           0000:06cf      push  cs
│           0000:06d0      pop   es
│           0000:06d1      mov   si, 0x95b4
│           0000:06d4      mov   di, 0xa000
│           0000:06d7      mov   al, 2
│           0000:06d9      call  word cs:[0x10c]
│           0000:06de      mov   es, word cs:[0xff2c]
│           0000:06e3      mov   si, 0xa000
│           0000:06e6      mov   di, 0x4000
│           0000:06e9      call  fcn.00000d62                          ; fcn.00000d62
│           0000:06ec      mov   bx, 0x410
│           0000:06ef      mov   cx, 0x4868                            ; 'hH'
│           0000:06f2      call  word cs:[0x3006]
│           0000:06f7      call  fcn.00000a79                          ; fcn.00000a79
│           0000:06fa      mov   ax, 7
│           0000:06fd      call  word cs:[0x3008]
│           0000:0702      mov   al, 0xff
│           0000:0704      mov   bx, 0x410
│           ; DATA XREF from fcn.00003016 @ 0x34f2
│           0000:0707      mov   cx, 0x4868                            ; 'hH'
│           0000:070a      mov   es, word cs:[0xff2c]
│           ; DATA XREF from fcn.00000000 @ 0x51
│           ; DATA XREF from fcn.00000110 @ 0x26c
│           0000:070f      mov   di, 0x4000
│           0000:0712      call  word cs:[0x3004]
│           0000:0717      call  fcn.00000a79                          ; fcn.00000a79
│           0000:071a      push  cs
│           0000:071b      pop   es
│           0000:071c      mov   si, 0x95be
│           0000:071f      mov   di, 0xa000
│           0000:0722      mov   al, 2
│           0000:0724      call  word cs:[0x10c]
│           0000:0729      mov   es, word cs:[0xff2c]
│           0000:072e      mov   si, 0xa000
│           0000:0731      mov   di, 0x4000
│           0000:0734      call  fcn.00000d62                          ; fcn.00000d62
│           0000:0737      xor   al, al
│           0000:0739      mov   bx, 0x410
│           0000:073c      mov   cx, 0x4868                            ; 'hH'
│           0000:073f      mov   es, word cs:[0xff2c]
│           0000:0744      mov   di, 0x4000
│           0000:0747      call  word cs:[0x3004]
│           0000:074c      call  fcn.00000a79                          ; fcn.00000a79
│           0000:074f      call  fcn.00000a79                          ; fcn.00000a79
│           0000:0752      push  cs
│           0000:0753      pop   es
│           0000:0754      mov   si, 0x95c8
│           0000:0757      mov   di, 0xa000
│           0000:075a      mov   al, 2
│           0000:075c      call  word cs:[0x10c]
│           0000:0761      mov   es, word cs:[0xff2c]
│           0000:0766      mov   si, 0xa000
│           0000:0769      mov   di, 0x4000
│           0000:076c      call  fcn.00000d62                          ; fcn.00000d62
│           0000:076f      mov   di, 0x4000
│           0000:0772      mov   bx, 0x1610
│           0000:0775      mov   cx, 0x2468                            ; 'h$' ; "est the crystals from them.\"\xf5\xf5\xfe\xf7\"However, there is one with the power to oppose Jashiin.\xf2The man who is destine"
│           0000:0778      mov   al, 5
│           0000:077a      call  word cs:[0x3022]                      ; " the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:077f      call  fcn.00000a79                          ; fcn.00000a79
│           0000:0782      xor   ax, ax
│           0000:0784      call  word cs:[0x3020]                      ; "en the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:0789      call  fcn.00000a79                          ; fcn.00000a79
│           0000:078c      push  cs
│           0000:078d      pop   es
│           0000:078e      mov   si, 0x95d2
│           0000:0791      mov   di, 0xa000
│           0000:0794      mov   al, 2
│           0000:0796      call  word cs:[0x10c]
│           0000:079b      mov   es, word cs:[0xff2c]
│           0000:07a0      mov   si, 0xa000
│           0000:07a3      mov   di, 0x4000
│           0000:07a6      call  fcn.00000d62                          ; fcn.00000d62
│           0000:07a9      mov   al, 0xff
│           0000:07ab      mov   bx, 0x410
│           0000:07ae      mov   cx, 0x4868                            ; 'hH'
│           0000:07b1      mov   es, word cs:[0xff2c]
│           0000:07b6      mov   di, 0x4000
│           0000:07b9      call  word cs:[0x3004]
│           0000:07be      push  cs
│           0000:07bf      pop   es
│           0000:07c0      mov   si, 0x95fe
│           0000:07c3      mov   di, 0xa000
│           0000:07c6      mov   al, 2
│           0000:07c8      call  word cs:[0x10c]
│           0000:07cd      mov   es, word cs:[0xff2c]
│           0000:07d2      mov   si, 0xa000
│           0000:07d5      mov   di, 0x4000
│           0000:07d8      call  fcn.00000d62                          ; fcn.00000d62
│           0000:07db      push  cs
│           0000:07dc      pop   es
│           0000:07dd      mov   si, 0x9609
│           0000:07e0      mov   di, 0xa000
│           0000:07e3      mov   al, 2
│           0000:07e5      call  word cs:[0x10c]
│           0000:07ea      mov   es, word cs:[0xff2c]
│           0000:07ef      mov   si, 0xa000
│           0000:07f2      mov   di, 0x8000
│           0000:07f5      call  fcn.00000d62                          ; fcn.00000d62
│           0000:07f8      call  fcn.00000a79                          ; fcn.00000a79
│           0000:07fb      call  fcn.00000a79                          ; fcn.00000a79
│           0000:07fe      xor   ax, ax
│           0000:0800      call  word cs:[0x3020]                      ; "en the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:0805      mov   ax, 6                                 ; int16_t arg1
│           ; DATA XREFS from fcn.00000110 @ 0x990, 0x9bc, 0x9dc
│           0000:0808      call  word cs:[0x3008]
│           0000:080d      mov   bx, 0xa15
│           0000:0810      mov   cx, 0x1a5d
│           0000:0813      call  word cs:[0x3024]                      ; "he last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:0818      mov   es, word cs:[0xff2c]
│           0000:081d      mov   di, 0x4000
│           0000:0820      mov   bx, 0xb18                             ; int16_t arg3
│           0000:0823      mov   cx, 0x1858
│           0000:0826      call  word cs:[fcn.00003010]                ; 0x3010
│           0000:082b      mov   bx, 0x2c15                            ; " you the fool who dares to challenge me?  Don't be absurd!\"\xf5\xf5\xfe\xfd\x99\xf5\xfe\xf3\xfb\xef\x9a\"\x90A\x94n\x93d \x93yo"
│           0000:082e      mov   cx, 0x1a5d
│           0000:0831      call  word cs:[0x3024]                      ; "he last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:0836      mov   es, word cs:[0xff2c]
│           0000:083b      mov   di, 0x8000
│           0000:083e      mov   bx, 0x2d18                            ; " amusement.  I will give you some time to perform your little quest, but you must promise not to bore me.\"\xf5\xf5\xf5\xfe\xf3\" ; int16_t arg3
│           0000:0841      mov   cx, 0x1858
│           0000:0844      call  word cs:[fcn.00003010]                ; 0x3010
│           0000:0849      call  fcn.00000a79                          ; fcn.00000a79
│           0000:084c      call  fcn.00000a79                          ; fcn.00000a79
│           0000:084f      push  cs
│           ; DATA XREF from fcn.00000e13 @ 0xe45
│           0000:0850      pop   es
│           0000:0851      mov   si, 0x9613
│           0000:0854      mov   di, 0xa000
│           0000:0857      mov   al, 2
│           0000:0859      call  word cs:[0x10c]
│           0000:085e      mov   es, word cs:[0xff2c]
│           0000:0863      mov   si, 0xa000
│           0000:0866      mov   di, 0x8000
│           0000:0869      call  fcn.00000d62                          ; fcn.00000d62
│           0000:086c      xor   ax, ax
│           0000:086e      call  word cs:[0x3020]                      ; "en the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:0873      mov   ax, 8
│           0000:0876      call  word cs:[0x3008]
│           0000:087b      mov   bx, 0x1515
│           0000:087e      mov   cx, str..                             ; 0x315d ; " !\"#$%&'()*+,-."
│           0000:0881      call  word cs:[0x3024]                      ; "he last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:0886      mov   es, word cs:[0xff2c]
│           0000:088b      mov   di, 0x8000
│           0000:088e      mov   bx, 0x1618
│           0000:0891      call  word cs:[0x3026]                      ; " last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:0896      call  fcn.00000a79                          ; fcn.00000a79
│           0000:0899      call  fcn.00000a79                          ; fcn.00000a79
│           0000:089c      mov   bx, 0x1515
│           0000:089f      mov   dx, str..                             ; 0x315d ; " !\"#$%&'()*+,-."
│           0000:08a2      mov   cx, 0x18
│       ┌─> 0000:08a5      push  cx
│       ╎   0000:08a6      push  dx
│       ╎   0000:08a7      push  bx
│       ╎   0000:08a8      mov   byte cs:[0xff1a], 0
│       ╎   0000:08ae      mov   cx, dx
│       ╎   0000:08b0      call  word cs:[0x3024]                      ; "he last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│       ╎   0000:08b5      mov   al, 0xf
│       ╎   0000:08b7      call  fcn.00000a0b                          ; fcn.00000a0b
│       ╎   0000:08ba      pop   bx
│       ╎   0000:08bb      pop   dx
│       ╎   0000:08bc      inc   bh
│       ╎   0000:08be      dec   dh
│       ╎   0000:08c0      pop   cx
│       └─< 0000:08c1      loop  0x8a5
│           0000:08c3      mov   bx, 0x2c15                            ; " you the fool who dares to challenge me?  Don't be absurd!\"\xf5\xf5\xfe\xfd\x99\xf5\xfe\xf3\xfb\xef\x9a\"\x90A\x94n\x93d \x93yo"
│           0000:08c6      mov   cx, 0x1a5d
│           0000:08c9      call  word cs:[0x3024]                      ; "he last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:08ce      mov   bx, 0xa15
│           0000:08d1      mov   cx, 0x1a5d
│           0000:08d4      call  word cs:[0x3024]                      ; "he last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:08d9      mov   es, word cs:[0xff2c]
│           0000:08de      mov   di, 0x4000
│           0000:08e1      mov   bx, 0xb18                             ; int16_t arg3
│           0000:08e4      mov   cx, 0x1858
│           0000:08e7      call  word cs:[fcn.00003010]                ; 0x3010
│           0000:08ec      call  fcn.00000a79                          ; fcn.00000a79
│           0000:08ef      call  fcn.00000a79                          ; fcn.00000a79
│           0000:08f2      mov   bx, 0x2c15                            ; " you the fool who dares to challenge me?  Don't be absurd!\"\xf5\xf5\xfe\xfd\x99\xf5\xfe\xf3\xfb\xef\x9a\"\x90A\x94n\x93d \x93yo"
│           0000:08f5      mov   dx, 0x1a5d
│           0000:08f8      mov   cx, 0x18
│       ┌─> 0000:08fb      push  cx
│       ╎   0000:08fc      push  dx
│       ╎   0000:08fd      push  bx
│       ╎   0000:08fe      mov   byte cs:[0xff1a], 0
│       ╎   0000:0904      mov   cx, dx
│       ╎   0000:0906      call  word cs:[0x3024]                      ; "he last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│       ╎   0000:090b      mov   al, 0xf
│       ╎   0000:090d      call  fcn.00000a0b                          ; fcn.00000a0b
│       ╎   0000:0910      pop   bx
│       ╎   0000:0911      pop   dx
│       ╎   0000:0912      inc   bh
│       ╎   0000:0914      dec   dh
│       ╎   0000:0916      pop   cx
│       └─< 0000:0917      loop  0x8fb
│           0000:0919      xor   ax, ax
│           0000:091b      call  word cs:[0x3020]                      ; "en the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           ; DATA XREF from fcn.00000a79 @ 0xc9c
│           0000:0920      mov   ax, 7
│           0000:0923      call  word cs:[0x3008]
│           0000:0928      push  cs
│           0000:0929      pop   es
│           0000:092a      mov   si, 0x95dd
│           0000:092d      mov   di, 0xa000
│           0000:0930      mov   al, 2
│           0000:0932      call  word cs:[0x10c]
│           0000:0937      mov   es, word cs:[0xff2c]
│           0000:093c      mov   si, 0xa000
│           0000:093f      mov   di, 0x4000
│           0000:0942      call  fcn.00000d62                          ; fcn.00000d62
│           0000:0945      mov   es, word cs:[0xff2c]
│           0000:094a      mov   di, 0x4000
│           0000:094d      mov   bx, 0x1010                            ; int16_t arg3
│           0000:0950      mov   cx, 0x3160                            ; '`1' ; "#$%&'()*+,-."
│           0000:0953      call  word cs:[fcn.00003010]                ; 0x3010
│           0000:0958      call  fcn.00000a79                          ; fcn.00000a79
│           0000:095b      push  cs
│           0000:095c      pop   es
│           0000:095d      mov   si, 0x95e8
│           0000:0960      mov   di, 0xa000
│           0000:0963      mov   al, 2
│           0000:0965      call  word cs:[0x10c]
│           0000:096a      mov   si, 0x95f3
│           0000:096d      mov   di, 0xd000
│           0000:0970      mov   al, 2
│           0000:0972      call  word cs:[0x10c]
│           0000:0977      mov   es, word cs:[0xff2c]
│           0000:097c      mov   si, 0xa000
│           0000:097f      mov   di, 0x4000
│           0000:0982      call  fcn.00000d62                          ; fcn.00000d62
│           0000:0985      mov   bx, 0
│           0000:0988      mov   cx, 0x50c8
│           0000:098b      call  word cs:[0x3006]
│           0000:0990      mov   bx, 0x808
│           0000:0993      mov   es, word cs:[0xff2c]
│           0000:0998      mov   di, 0x4000
│           0000:099b      call  fcn.00000fb0                          ; fcn.00000fb0
│           0000:099e      mov   es, word cs:[0xff2c]
│           0000:09a3      mov   si, 0xd000
│           0000:09a6      mov   di, 0xd000
│           0000:09a9      call  fcn.00000d62                          ; fcn.00000d62
│           0000:09ac      mov   es, word cs:[0xff2c]
│           0000:09b1      mov   di, 0x4000
│           0000:09b4      mov   si, 0xd000
│           0000:09b7      call  fcn.00000f45                          ; fcn.00000f45
│           0000:09ba      mov   al, 0xff
│           0000:09bc      mov   bx, 0x808
│           0000:09bf      mov   cx, 0x40c0
│           0000:09c2      mov   es, word cs:[0xff2c]
│           0000:09c7      mov   di, 0x4000
│           0000:09ca      call  word cs:[0x3004]
│           0000:09cf      mov   byte cs:[0xff1a], 0
│           0000:09d5      mov   al, 0xf0
│           0000:09d7      call  fcn.00000a0b                          ; fcn.00000a0b
│           0000:09da      mov   al, 0xff
│           0000:09dc      mov   bx, 0x808
│           0000:09df      mov   cx, 0x40c0
│           0000:09e2      mov   es, word cs:[0xff2c]
│           0000:09e7      mov   di, 0x4000
│           0000:09ea      call  word cs:[0x3002]
│           0000:09ef      mov   ax, 1                                 ; int16_t arg2
│           0000:09f2      call  word cs:[0x3008]
│           0000:09f7      mov   si, 0x7338                            ; '8s'
│           0000:09fa      call  fcn.00000d08                          ; fcn.00000d08
│           0000:09fd      mov   cx, 0xa
│       ┌─> 0000:0a00      push  cx
│       ╎   0000:0a01      mov   al, 0xc8
│       ╎   0000:0a03      call  fcn.00000a0b                          ; fcn.00000a0b
│       ╎   0000:0a06      pop   cx
│       └─< 0000:0a07      loop  0xa00
│       ┌─< 0000:0a09      jmp   0xa45
        │   ; XREFS: CALL 0x000006b2  CALL 0x000008b7  CALL 0x0000090d  
        │   ; XREFS: CALL 0x000009d7  CALL 0x00000a03  CALL 0x00000a81  
        │   ; XREFS: CALL 0x00000c14  CALL 0x00000c1c  CALL 0x00000c21  
        │   ; XREFS: CALL 0x00000c26  CALL 0x00000d33  CALL 0x00000d53  
..
│       │   ; DATA XREFS from fcn.00000110 @ 0x80d, 0x8ce
        │   ; CALL XREF from fcn.00000a0b @ 0xa0b
│     │││   ; CODE XREF from fcn.00000110 @ 0xa09
│     └└└─> 0000:0a45      mov   bx, 0                                 ; arg1
│           0000:0a48      mov   cx, 0x50c8
│           0000:0a4b      call  word cs:[0x3006]
│           0000:0a50      mov   byte cs:[0xff1d], 0
│           0000:0a56      mov   byte cs:[0xff29], 0
│           0000:0a5c      mov   ax, cs
│           0000:0a5e      mov   es, ax
│           0000:0a60      mov   ds, ax
│           0000:0a62      mov   si, 0x961e
│           0000:0a65      mov   di, 0xa000
│           0000:0a68      mov   al, 3
│           0000:0a6a      call  word cs:[0x10c]
│           0000:0a6f      mov   ax, 0xffff
└           0000:0a72      jmp   word cs:[0x6a73]
```

### Function 0x00000112
```asm
│           ; CALL XREF from fcn.000003d0 @ 0x3d7
│           ; CALL XREF from fcn.00000a1c @ 0xa33
┌ fcn.00000112();
│           0000:0112      mov   al, byte [0x2b0]                      ; [0x2b0:1]=48
```

### Function 0x00000116
```asm
│           ; CALL XREF from fcn.000003d0 @ 0x3dc
│           ; CALL XREF from fcn.00000a1c @ 0xa38
│           ; CALL XREF from fcn.000003d0 @ 0x3e1
│           ; CALL XREF from fcn.00000a1c @ 0xa3d
│           ;-- (0x00000118) fcn.00000118:
┌ fcn.00000116();
│           0000:0116  ~   call  word [0x10c]
```

### Function 0x00000118
```asm
│           ; CALL XREF from fcn.000003d0 @ 0x3e1
│           ; CALL XREF from fcn.00000a1c @ 0xa3d
┌ fcn.00000118();
│           0000:0118      or    al, 1
```

### Function 0x000002d5
```asm
; CALL XREF from fcn.00000110 @ 0x182
┌ fcn.000002d5();
│           0000:02d5      mov   byte [0x653f], 0x8a                   ; [0x653f:1]=255
│           ; CODE XREF from fcn.000002d5 @ 0x2ff
│       ┌─> 0000:02da      mov   byte [0xff1a], 0
│       ╎   ; CODE XREF from fcn.000002d5 @ 0x2f5
│      ┌──> 0000:02df      lodsb al, byte [si]
│      ╎╎   0000:02e0      or    al, al
│     ┌───< 0000:02e2      jne   0x2e5
│     │╎╎   0000:02e4      ret
│     └───> 0000:02e5      cmp   al, 5
│     ┌───< 0000:02e7      jae   0x2f7
│     │╎╎   0000:02e9      push  si
│     │╎╎   0000:02ea      dec   al
│     │╎╎   0000:02ec      mov   bx, 0x1f70                            ; short unsigned int arg3
│     │╎╎   0000:02ef      call  word cs:[fcn.00003016]                ; 0x3016 ; "haven't seen the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│     │╎╎   0000:02f4      pop   si
│     │└──< 0000:02f5      jmp   0x2df
│     └───> 0000:02f7      call  fcn.00000301                          ; fcn.00000301
│       ╎   0000:02fa      mov   al, 0x14
│       ╎   0000:02fc      call  fcn.000003af                          ; fcn.000003af
└       └─< 0000:02ff      jmp   0x2da
```

### Function 0x00000301
```asm
; CALL XREF from fcn.000002d5 @ 0x2f7
┌ fcn.00000301(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0301      cmp   al, 0xff
│       ┌─< 0000:0303      jne   0x322
│       │   0000:0305      lodsb al, byte [si]
│       │   0000:0306      or    al, al
│      ┌──< 0000:0308      jne   0x30b
│      ││   0000:030a      ret
│      └──> 0000:030b      cmp   al, 1
│      ┌──< 0000:030d      je    0x310
│      ││   0000:030f      ret
│      └──> 0000:0310      xor   ax, ax
│       │   0000:0312      lodsb al, byte [si]
│       │   0000:0313      add   ax, ax
│       │   0000:0315      add   ax, ax
│       │   0000:0317      add   ax, ax
│       │   0000:0319      mov   word [0x653d], ax                     ; [0x653d:2]=0xffff
│       │   0000:031c      add   byte [0x653f], 0xa                    ; [0x653f:1]=255
│       │   0000:0321      ret
│       └─> 0000:0322      push  ax                                    ; arg1
│           0000:0323      push  si
│           0000:0324      push  ax                                    ; arg1
│           0000:0325      mov   bx, word [0x653d]                     ; [0x653d:2]=0xffff
│           0000:0329      add   bx, 2                                 ; int16_t arg3
│           0000:032c      mov   cl, byte [0x653f]                     ; [0x653f:1]=255
│           0000:0330      add   cl, 1
│           0000:0333      mov   ah, 2
│           0000:0335      call  word cs:[fcn.00003030]                ; 0x3030 ; "e, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:033a      pop   ax                                    ; int16_t arg1
│           0000:033b      mov   bx, word [0x653d]                     ; [0x653d:2]=0xffff ; int16_t arg3
│           0000:033f      mov   cl, byte [0x653f]                     ; [0x653f:1]=255
│           0000:0343      mov   ah, 7
│           0000:0345      call  word cs:[fcn.00003030]                ; 0x3030 ; "e, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│           0000:034a      pop   si
│           0000:034b      add   word [0x653d], 8                      ; [0x653d:2]=0xffff
│           0000:0350      pop   ax
│           0000:0351      cmp   al, 0x20
│       ┌─< 0000:0353      jne   0x356
│       │   0000:0355      ret
│       └─> 0000:0356      mov   byte [0xff75], 0x3f                   ; '?'
│                                                                      ; [0x3f:1]=0
└           0000:035b      ret
```

### Function 0x0000035c
```asm
; CALL XREF from fcn.00000000 @ 0xbc
┌ fcn.0000035c();
│           0000:035c      mov   bx, 0x20
│           0000:035f      mov   cx, 0x5078                            ; 'xP'
│           0000:0362      call  word cs:[fcn.0000300a]                ; 0x300a
│           0000:0367      mov   si, 0x6ff0
│       ┌─> 0000:036a      call  word cs:[fcn.0000300c]                ; 0x300c
│       ╎   0000:036f      push  si
│       ╎   0000:0370      mov   cx, 0xa
│      ┌──> 0000:0373      push  cx
│      ╎╎   0000:0374      mov   ax, cx
│      ╎╎   0000:0376      neg   ax
│      ╎╎   0000:0378      add   ax, 0xa                               ; int16_t arg1
│      ╎╎   0000:037b      mov   bx, 0x20                              ; int16_t arg3
│      ╎╎   0000:037e      mov   cx, 0x5078                            ; 'xP'
│      ╎╎   0000:0381      call  word cs:[fcn.0000300e]                ; 0x300e
│      ╎╎   0000:0386      mov   al, 0x1c
│      ╎╎   0000:0388      call  fcn.000003af                          ; fcn.000003af
│      ╎╎   0000:038b      pop   cx
│      └──< 0000:038c      loop  0x373
│       ╎   0000:038e      pop   si
│       ╎   0000:038f      cmp   byte [si - 1], 0xff
│       └─< 0000:0393      jne   0x36a
│           0000:0395      mov   cx, 0x78                              ; 'x'
│       ┌─> 0000:0398      push  cx
│       ╎   0000:0399      xor   ax, ax                                ; int16_t arg1
│       ╎   0000:039b      mov   bx, 0x20                              ; int16_t arg3
│       ╎   0000:039e      mov   cx, 0x5078                            ; 'xP'
│       ╎   0000:03a1      call  word cs:[fcn.0000300e]                ; 0x300e
│       ╎   0000:03a6      mov   al, 0x1c
│       ╎   0000:03a8      call  fcn.000003af                          ; fcn.000003af
│       ╎   0000:03ab      pop   cx
│       └─< 0000:03ac      loop  0x398
└           0000:03ae      ret
```

### Function 0x000003af
```asm
; XREFS: CALL 0x00000170  CALL 0x0000017c  CALL 0x0000018c  
            ; XREFS: CALL 0x000001a0  CALL 0x000001b4  CALL 0x0000023c  
            ; XREFS: CALL 0x00000269  CALL 0x0000029c  CALL 0x000002bc  
            ; XREFS: CALL 0x000002fc  CALL 0x00000388  CALL 0x000003a8  
┌ fcn.000003af();
│       ┌─> 0000:03af      test  byte cs:[0xff1d], 0xff
│      ┌──< 0000:03b5      jne   0x3e9                                 ; fcn.00000110+0x2d9
│      │╎   0000:03b7      cmp   byte cs:[0xff29], 0xd
│     ┌───< 0000:03bd      je    0x3e9                                 ; fcn.00000110+0x2d9
│     ││╎   0000:03bf      call  fcn.000003d0                          ; fcn.000003d0
│     ││╎   0000:03c2      cmp   byte cs:[0xff1a], al
│     ││└─< 0000:03c7      jb    fcn.000003af
│     ││    0000:03c9      mov   byte cs:[0xff1a], 0
└     ││    0000:03cf      ret
```

### Function 0x000003d0
```asm
; CALL XREF from fcn.00000110 @ 0x2c8
            ; CALL XREF from fcn.000003af @ 0x3bf
            ; CALL XREF from fcn.0000045a @ 0x46a
┌ fcn.000003d0(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:03d0      push  si
│           0000:03d1      push  ax                                    ; arg1
│           0000:03d2      call  word cs:[fcn.00000110]                ; 0x110
│           0000:03d7      call  word cs:[fcn.00000112]                ; 0x112
│           0000:03dc      call  word cs:[fcn.00000116]                ; 0x116
│           0000:03e1      call  word cs:[fcn.00000118]                ; 0x118
│           0000:03e6      pop   ax
│           0000:03e7      pop   si
└           0000:03e8      ret
```

### Function 0x0000045a
```asm
; CALL XREFS from fcn.0000049b @ 0x4c7, 0x4e7
┌ fcn.0000045a(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│       ┌─> 0000:045a      test  byte cs:[0xff1d], 0xff
│      ┌──< 0000:0460      jne   0x47b                                 ; fcn.00000110+0x36b
│      │╎   0000:0462      cmp   byte cs:[0xff29], 0xd
│     ┌───< 0000:0468      je    0x47b                                 ; fcn.00000110+0x36b
│     ││╎   0000:046a      call  fcn.000003d0                          ; fcn.000003d0
│     ││╎   0000:046d      cmp   byte cs:[0xff1a], al
│     ││└─< 0000:0472      jb    fcn.0000045a
│     ││    0000:0474      mov   byte cs:[0xff1a], 0
└     ││    0000:047a      ret
```

### Function 0x0000049b
```asm
; CALL XREF from fcn.00000110 @ 0x455
┌ fcn.0000049b(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:049b      mov   bx, 0x20
│           0000:049e      mov   cx, 0x5078                            ; 'xP'
│           0000:04a1      call  word cs:[fcn.0000300a]                ; 0x300a
│           0000:04a6      mov   si, 0x742f                            ; '/t'
│       ┌─> 0000:04a9      call  word cs:[fcn.0000300c]                ; 0x300c
│       ╎   0000:04ae      push  si
│       ╎   0000:04af      mov   cx, 0xa
│      ┌──> 0000:04b2      push  cx
│      ╎╎   0000:04b3      mov   ax, cx
│      ╎╎   0000:04b5      neg   ax
│      ╎╎   0000:04b7      add   ax, 0xa                               ; int16_t arg1
│      ╎╎   0000:04ba      mov   bx, 0x20                              ; int16_t arg3
│      ╎╎   0000:04bd      mov   cx, 0x5078                            ; 'xP'
│      ╎╎   0000:04c0      call  word cs:[fcn.0000300e]                ; 0x300e
│      ╎╎   0000:04c5      mov   al, 0x1c
│      ╎╎   0000:04c7      call  fcn.0000045a                          ; fcn.0000045a
│      ╎╎   0000:04ca      pop   cx
│      └──< 0000:04cb      loop  0x4b2
│       ╎   0000:04cd      pop   si
│       ╎   0000:04ce      cmp   byte [si - 1], 0xff
│       └─< 0000:04d2      jne   0x4a9
│           0000:04d4      mov   cx, 0x78                              ; 'x'
│       ┌─> 0000:04d7      push  cx
│       ╎   0000:04d8      xor   ax, ax                                ; int16_t arg1
│       ╎   0000:04da      mov   bx, 0x20                              ; int16_t arg3
│       ╎   0000:04dd      mov   cx, 0x5078                            ; 'xP'
│       ╎   0000:04e0      call  word cs:[fcn.0000300e]                ; 0x300e
│       ╎   0000:04e5      mov   al, 0x1c
│       ╎   0000:04e7      call  fcn.0000045a                          ; fcn.0000045a
│       ╎   0000:04ea      pop   cx
│       └─< 0000:04eb      loop  0x4d7
└           0000:04ed      ret
```

### Function 0x00000a0b
```asm
; XREFS: CALL 0x000006b2  CALL 0x000008b7  CALL 0x0000090d  
            ; XREFS: CALL 0x000009d7  CALL 0x00000a03  CALL 0x00000a81  
            ; XREFS: CALL 0x00000c14  CALL 0x00000c1c  CALL 0x00000c21  
            ; XREFS: CALL 0x00000c26  CALL 0x00000d33  CALL 0x00000d53  
┌ fcn.00000a0b();
│       ┌─> 0000:0a0b      call  fcn.00000a1c                          ; fcn.00000a1c
│       ╎   0000:0a0e      cmp   byte cs:[0xff1a], al
│       └─< 0000:0a13      jb    fcn.00000a0b
│           ; DATA XREFS from fcn.00000110 @ 0x80d, 0x8ce
│           0000:0a15      mov   byte cs:[0xff1a], 0
└           0000:0a1b      ret
```

### Function 0x00000a1c
```asm
; CALL XREF from fcn.00000a0b @ 0xa0b
┌ fcn.00000a1c(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0a1c      test  byte cs:[0xff1d], 0xff
│       ┌─< 0000:0a22      jne   0xa45                                 ; fcn.00000110+0x935
│       │   0000:0a24      cmp   byte cs:[0xff29], 0xd
│      ┌──< 0000:0a2a      je    0xa45                                 ; fcn.00000110+0x935
│      ││   0000:0a2c      push  si
│      ││   0000:0a2d      push  ax                                    ; arg1
│      ││   0000:0a2e      call  word cs:[fcn.00000110]                ; 0x110
│      ││   0000:0a33      call  word cs:[fcn.00000112]                ; 0x112
│      ││   0000:0a38      call  word cs:[fcn.00000116]                ; 0x116
│      ││   0000:0a3d      call  word cs:[fcn.00000118]                ; 0x118
│      ││   0000:0a42      pop   ax
│      ││   0000:0a43      pop   si
└      ││   0000:0a44      ret
```

### Function 0x00000a79
```asm
; XREFS(22)
┌ fcn.00000a79();
│           0000:0a79      mov   byte cs:[0xff1a], 0
│           ; XREFS: CODE 0x00000b09  CODE 0x00000b22  CODE 0x00000b96  
│           ; XREFS: CODE 0x00000ba2  CODE 0x00000bae  CODE 0x00000bba  
│           ; XREFS: CODE 0x00000bc6  CODE 0x00000bd2  CODE 0x00000bd9  
│           ; XREFS: CODE 0x00000be4  CODE 0x00000bf1  CODE 0x00000bfe  
│           ; XREFS: CODE 0x00000c17  CODE 0x00000c29  
│ ┌┌┌┌┌┌┌─> 0000:0a7f      mov   al, 0x10
│ ╎╎╎╎╎╎╎   0000:0a81      call  fcn.00000a0b                          ; fcn.00000a0b
│ ╎╎╎╎╎╎╎   ; CODE XREFS from fcn.00000a79 @ 0xc57, 0xc78, 0xca4, 0xcc5
│ ────────> 0000:0a84      push  cs
│ ╎╎╎╎╎╎╎   0000:0a85      pop   ds
│ ╎╎╎╎╎╎╎   0000:0a86      mov   si, word [0x6d56]                     ; [0x6d56:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:0a8a      lodsb al, byte [si]
│ ╎╎╎╎╎╎╎   0000:0a8b      mov   word [0x6d56], si                     ; [0x6d56:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:0a8f      test  al, 0x80
│ ────────< 0000:0a91      je    0xa96
│ ────────< 0000:0a93      jmp   0xb25
│ ────────> 0000:0a96      cmp   al, 0x20
│ ────────< 0000:0a98      je    0xab2
│ ╎╎╎╎╎╎╎   0000:0a9a      cmp   al, 0x2e
│ ────────< 0000:0a9c      je    0xab2
│ ╎╎╎╎╎╎╎   0000:0a9e      cmp   al, 0x2c
│ ────────< 0000:0aa0      je    0xab2
│ ╎╎╎╎╎╎╎   0000:0aa2      cmp   al, 0x22
│ ────────< 0000:0aa4      je    0xab2
│ ╎╎╎╎╎╎╎   0000:0aa6      cmp   al, 0x27
│ ────────< 0000:0aa8      je    0xab2
│ ╎╎╎╎╎╎╎   0000:0aaa      mov   ah, byte [0x6d5d]                     ; [0x6d5d:1]=255
│ ╎╎╎╎╎╎╎   0000:0aae      mov   byte [0xff75], ah
│ ────────> 0000:0ab2      push  ax
│ ╎╎╎╎╎╎╎   0000:0ab3      mov   bx, word [0x6d58]                     ; [0x6d58:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:0ab7      add   bx, 4
│ ╎╎╎╎╎╎╎   0000:0aba      mov   al, byte [0x6d5a]                     ; [0x6d5a:1]=255
│ ╎╎╎╎╎╎╎   0000:0abd      mov   dl, 0xa
│ ╎╎╎╎╎╎╎   0000:0abf      mul   dl
│ ╎╎╎╎╎╎╎   0000:0ac1      add   ax, 0x8f
│ ╎╎╎╎╎╎╎   0000:0ac4      mov   cx, ax
│ ╎╎╎╎╎╎╎   0000:0ac6      pop   ax                                    ; int16_t arg1
│ ╎╎╎╎╎╎╎   0000:0ac7      push  bx
│ ╎╎╎╎╎╎╎   0000:0ac8      mov   bl, al
│ ╎╎╎╎╎╎╎   0000:0aca      sub   bl, 0x20
│ ╎╎╎╎╎╎╎   0000:0acd      xor   bh, bh
│ ╎╎╎╎╎╎╎   0000:0acf      mov   dl, byte [bx - 0x6b83]
│ ╎╎╎╎╎╎╎   0000:0ad3      mov   dh, bh
│ ╎╎╎╎╎╎╎   0000:0ad5      pop   bx
│ ╎╎╎╎╎╎╎   0000:0ad6      push  ax
│ ╎╎╎╎╎╎╎   0000:0ad7      sub   bx, dx
│ ╎╎╎╎╎╎╎   0000:0ad9      push  ax
│ ╎╎╎╎╎╎╎   0000:0ada      push  bx
│ ╎╎╎╎╎╎╎   0000:0adb      push  cx
│ ╎╎╎╎╎╎╎   0000:0adc      inc   bx                                    ; int16_t arg3
│ ╎╎╎╎╎╎╎   0000:0add      inc   cx                                    ; int16_t arg4
│ ╎╎╎╎╎╎╎   0000:0ade      mov   ah, byte [0x6d5b]                     ; [0x6d5b:1]=255
│ ╎╎╎╎╎╎╎   0000:0ae2      call  word cs:[fcn.00003030]                ; 0x3030 ; "e, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│ ╎╎╎╎╎╎╎   0000:0ae7      pop   cx                                    ; int16_t arg4
│ ╎╎╎╎╎╎╎   0000:0ae8      pop   bx                                    ; int16_t arg3
│ ╎╎╎╎╎╎╎   0000:0ae9      pop   ax                                    ; int16_t arg1
│ ╎╎╎╎╎╎╎   0000:0aea      mov   ah, byte [0x6d5c]                     ; [0x6d5c:1]=255
│ ╎╎╎╎╎╎╎   0000:0aee      call  word cs:[fcn.00003030]                ; 0x3030 ; "e, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\xf5\xf5\xffX%\xf0"
│ ╎╎╎╎╎╎╎   0000:0af3      pop   ax
│ ╎╎╎╎╎╎╎   0000:0af4      mov   bl, al
│ ╎╎╎╎╎╎╎   0000:0af6      sub   bl, 0x20
│ ╎╎╎╎╎╎╎   0000:0af9      xor   bh, bh
│ ╎╎╎╎╎╎╎   0000:0afb      mov   cl, byte [bx - 0x6b23]
│ ╎╎╎╎╎╎╎   0000:0aff      mov   ch, bh
│ ╎╎╎╎╎╎╎   0000:0b01      add   word [0x6d58], cx                     ; [0x6d58:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:0b05      cmp   al, 0x20
│ ────────< 0000:0b07      je    0xb0c
│ ────────< 0000:0b09      jmp   0xa7f
│ ────────> 0000:0b0c      mov   si, word [0x6d56]                     ; [0x6d56:2]=0xffff
│ ╎╎╎╎╎╎╎   ; DATA XREFS from fcn.00000a79 @ 0xc70, 0xcbd
│ ╎╎╎╎╎╎╎   0000:0b10      call  fcn.00000cc8                          ; fcn.00000cc8
│ ╎╎╎╎╎╎╎   0000:0b13      mov   dx, word [0x6d58]                     ; [0x6d58:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:0b17      add   dx, cx
│ ╎╎╎╎╎╎╎   0000:0b19      cmp   dx, 0x138
│ ────────< 0000:0b1d      jb    0xb22
│ ────────< 0000:0b1f      jmp   0xbf4
│ ────────< 0000:0b22      jmp   0xa7f
│ ╎╎╎╎╎╎╎   ; CODE XREF from fcn.00000a79 @ 0xa93
│ ────────> 0000:0b25      cmp   al, 0xff
│ ────────< 0000:0b27      jne   0xb2a
│ ╎╎╎╎╎╎╎   0000:0b29      ret
│ ────────> 0000:0b2a      cmp   al, 0xfd
│ ────────< 0000:0b2c      jne   0xb2f
│ ╎╎╎╎╎╎╎   0000:0b2e      ret
│ ────────> 0000:0b2f      mov   ah, al
│ ╎╎╎╎╎╎╎   0000:0b31      and   ah, 0xf0
│ ╎╎╎╎╎╎╎   0000:0b34      cmp   ah, 0x80
│ ────────< 0000:0b37      jne   0xb3c
│ ────────< 0000:0b39      jmp   0xc2c
│ ────────> 0000:0b3c      cmp   ah, 0x90
│ ────────< 0000:0b3f      jne   0xb44
│ ────────< 0000:0b41      jmp   0xc7b
│ ────────> 0000:0b44      mov   bx, 0x701
│ ╎╎╎╎╎╎╎   0000:0b47      cmp   al, 0xfb
│ ────────< 0000:0b49      jne   0xb4e
│ ────────< 0000:0b4b      jmp   0xbdc
│ ────────> 0000:0b4e      mov   bx, 0x700
│ ╎╎╎╎╎╎╎   0000:0b51      cmp   al, 0xfa
│ ────────< 0000:0b53      jne   0xb58
│ ────────< 0000:0b55      jmp   0xbdc
│ ────────> 0000:0b58      mov   bx, 0x602
│ ╎╎╎╎╎╎╎   0000:0b5b      cmp   al, 0xf9
│ ────────< 0000:0b5d      je    0xbdc
│ ╎╎╎╎╎╎╎   0000:0b5f      cmp   al, 0xf5
│ ────────< 0000:0b61      jne   0xb66
│ ────────< 0000:0b63      jmp   0xc12
│ ────────> 0000:0b66      cmp   al, 0xf6
│ ────────< 0000:0b68      jne   0xb6d
│ ────────< 0000:0b6a      jmp   0xc1a
│ ────────> 0000:0b6d      xor   ah, ah
│ ╎╎╎╎╎╎╎   0000:0b6f      cmp   al, 0xf7
│ ────────< 0000:0b71      je    0xbe7
│ ╎╎╎╎╎╎╎   0000:0b73      inc   ah
│ ╎╎╎╎╎╎╎   0000:0b75      cmp   al, 0xf3
│ ────────< 0000:0b77      je    0xbe7
│ ╎╎╎╎╎╎╎   0000:0b79      inc   ah
│ ╎╎╎╎╎╎╎   0000:0b7b      cmp   al, 0xf2
│ ────────< 0000:0b7d      je    0xbe7
│ ╎╎╎╎╎╎╎   0000:0b7f      inc   ah
│ ╎╎╎╎╎╎╎   0000:0b81      cmp   al, 0xf1
│ ────────< 0000:0b83      je    0xbe7
│ ╎╎╎╎╎╎╎   0000:0b85      cmp   al, 0xfe
│ ────────< 0000:0b87      je    0xc01
│ ╎╎╎╎╎╎╎   0000:0b89      mov   ah, byte [0x6d5d]                     ; [0x6d5d:1]=255
│ ╎╎╎╎╎╎╎   0000:0b8d      mov   byte [0x6d5d], 0                      ; [0x6d5d:1]=255
│ ╎╎╎╎╎╎╎   0000:0b92      cmp   al, 0xf0
│ ────────< 0000:0b94      jne   0xb99
│ ────────< 0000:0b96      jmp   0xa7f
│ ────────> 0000:0b99      mov   byte [0x6d5d], 0x3d                   ; '='
│ ╎╎╎╎╎╎╎                                                              ; [0x6d5d:1]=255
│ ╎╎╎╎╎╎╎   0000:0b9e      cmp   al, 0xef
│ ────────< 0000:0ba0      jne   0xba5
│ ────────< 0000:0ba2      jmp   0xa7f
│ ────────> 0000:0ba5      mov   byte [0x6d5d], 0x3e                   ; '>'
│ ╎╎╎╎╎╎╎                                                              ; [0x6d5d:1]=255
│ ╎╎╎╎╎╎╎   0000:0baa      cmp   al, 0xee
│ ────────< 0000:0bac      jne   0xbb1
│ ────────< 0000:0bae      jmp   0xa7f
│ ────────> 0000:0bb1      mov   byte [0x6d5d], 0x3f                   ; '?'
│ ╎╎╎╎╎╎╎                                                              ; [0x6d5d:1]=255
│ ╎╎╎╎╎╎╎   0000:0bb6      cmp   al, 0xed
│ ────────< 0000:0bb8      jne   0xbbd
│ ────────< 0000:0bba      jmp   0xa7f
│ ────────> 0000:0bbd      mov   byte [0x6d5d], 0x40                   ; '@'
│ ╎╎╎╎╎╎╎                                                              ; [0x6d5d:1]=255
│ ╎╎╎╎╎╎╎   0000:0bc2      cmp   al, 0xec
│ ────────< 0000:0bc4      jne   0xbc9
│ ────────< 0000:0bc6      jmp   0xa7f
│ ────────> 0000:0bc9      mov   byte [0x6d5d], 0x41                   ; 'A'
│ ╎╎╎╎╎╎╎                                                              ; [0x6d5d:1]=255
│ ╎╎╎╎╎╎╎   0000:0bce      cmp   al, 0xeb
│ ────────< 0000:0bd0      jne   0xbd5
│ └───────< 0000:0bd2      jmp   0xa7f
│ ────────> 0000:0bd5      mov   byte [0x6d5d], ah                     ; [0x6d5d:1]=255
│  └──────< 0000:0bd9      jmp   0xa7f
│   ╎╎╎╎╎   ; CODE XREFS from fcn.00000a79 @ 0xb4b, 0xb55
│ ────────> 0000:0bdc      mov   byte [0x6d5b], bl                     ; [0x6d5b:1]=255
│   ╎╎╎╎╎   0000:0be0      mov   byte [0x6d5c], bh                     ; [0x6d5c:1]=255
│   └─────< 0000:0be4      jmp   0xa7f
│    ╎╎╎╎   ; CODE XREF from fcn.00000a79 @ 0xc10
│ ──┌─────> 0000:0be7      mov   word [0x6d58], 0                      ; [0x6d58:2]=0xffff
│   ╎╎╎╎╎   0000:0bed      mov   byte [0x6d5a], ah                     ; [0x6d5a:1]=255
│   ╎└────< 0000:0bf1      jmp   0xa7f
│   ╎ ╎╎╎   ; CODE XREF from fcn.00000a79 @ 0xb1f
│ ────────> 0000:0bf4      mov   word [0x6d58], 0                      ; [0x6d58:2]=0xffff
│   ╎ ╎╎╎   0000:0bfa      inc   byte [0x6d5a]
│   ╎ └───< 0000:0bfe      jmp   0xa7f
│ ────────> 0000:0c01      mov   bx, 0x8f                              ; int16_t arg3
│   ╎  ╎╎   0000:0c04      mov   cx, 0x5039                            ; '9P' ; int16_t arg4
│   ╎  ╎╎   0000:0c07      xor   al, al
│   ╎  ╎╎   0000:0c09      call  word cs:[fcn.00002000]                ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned"
│   ╎  ╎╎   0000:0c0e      xor   ah, ah
│   └─────< 0000:0c10      jmp   0xbe7
│      ╎╎   ; CODE XREF from fcn.00000a79 @ 0xb63
│ ────────> 0000:0c12      mov   al, 0xf0
│      ╎╎   0000:0c14      call  fcn.00000a0b                          ; fcn.00000a0b
│      └──< 0000:0c17      jmp   0xa7f
│       ╎   ; CODE XREF from fcn.00000a79 @ 0xb6a
│ ────────> 0000:0c1a      mov   al, 0xf0
│       ╎   0000:0c1c      call  fcn.00000a0b                          ; fcn.00000a0b
│       ╎   0000:0c1f      mov   al, 0xf0
│       ╎   0000:0c21      call  fcn.00000a0b                          ; fcn.00000a0b
│       ╎   0000:0c24      mov   al, 0xf0
│       ╎   0000:0c26      call  fcn.00000a0b                          ; fcn.00000a0b
│       └─< 0000:0c29      jmp   0xa7f
│           ; CODE XREF from fcn.00000a79 @ 0xb39
│ ────────> 0000:0c2c      mov   es, word cs:[0xff2c]
│           0000:0c31      and   al, 0xf
│           0000:0c33      cmp   al, 6
│       ┌─< 0000:0c35      jae   0xc5a
│       │   0000:0c37      mov   ah, 0x15
│       │   0000:0c39      mul   ah
│       │   0000:0c3b      add   ax, ax
│       │   0000:0c3d      add   ax, ax
│       │   0000:0c3f      add   ax, ax
│       │   0000:0c41      add   ax, ax
│       │   0000:0c43      add   ax, ax
│       │   0000:0c45      add   ax, ax
│       │   0000:0c47      add   ax, 0x98c0                            ; int16_t arg1
│       │   0000:0c4a      mov   di, ax
│       │   0000:0c4c      mov   bx, str.ab                            ; 0x3350 ; "_`ab" ; int16_t arg3
│       │   0000:0c4f      mov   cx, 0xe20
│       │   0000:0c52      call  word cs:[fcn.00003010]                ; 0x3010
│ ────────< 0000:0c57      jmp   0xa84
│       └─> 0000:0c5a      sub   al, 6
│           0000:0c5c      mov   ah, 0x21                              ; '!'
│           0000:0c5e      mul   ah
│           0000:0c60      add   ax, ax
│           0000:0c62      add   ax, ax
│           0000:0c64      add   ax, ax
│           0000:0c66      add   ax, ax
│           0000:0c68      add   ax, 0xb840                            ; int16_t arg1
│           0000:0c6b      mov   di, ax
│           0000:0c6d      mov   bx, 0x3338                            ; '83' ; int16_t arg3
│           0000:0c70      mov   cx, 0xb10
│           0000:0c73      call  word cs:[fcn.00003010]                ; 0x3010
│ ────────< 0000:0c78      jmp   0xa84
│           ; CODE XREF from fcn.00000a79 @ 0xb41
│ ────────> 0000:0c7b      mov   es, word cs:[0xff2c]
│           0000:0c80      and   al, 0xf
│           0000:0c82      cmp   al, 6
│       ┌─< 0000:0c84      jae   0xca7
│       │   0000:0c86      mov   ah, 0x1b
│       │   0000:0c88      mul   ah
│       │   0000:0c8a      add   ax, ax
│       │   0000:0c8c      add   ax, ax
│       │   0000:0c8e      add   ax, ax
│       │   0000:0c90      add   ax, ax
│       │   0000:0c92      add   ax, ax
│       │   0000:0c94      add   ax, 0x58c0                            ; int16_t arg1
│       │   0000:0c97      mov   di, ax
│       │   0000:0c99      mov   bx, 0x1350                            ; int16_t arg3
│       │   0000:0c9c      mov   cx, 0x920
│       │   0000:0c9f      call  word cs:[fcn.00003010]                ; 0x3010
│ ────────< 0000:0ca4      jmp   0xa84
│       └─> 0000:0ca7      sub   al, 6
│           0000:0ca9      mov   ah, 0x21                              ; '!'
│           0000:0cab      mul   ah
│           0000:0cad      add   ax, ax
│           0000:0caf      add   ax, ax
│           0000:0cb1      add   ax, ax
│           0000:0cb3      add   ax, ax
│           0000:0cb5      add   ax, 0x6d00                            ; int16_t arg1
│           0000:0cb8      mov   di, ax
│           0000:0cba      mov   bx, 0x1238                            ; int16_t arg3
│           0000:0cbd      mov   cx, 0xb10
│           ; DATA XREF from fcn.00000e93 @ 0xe96
│           ; DATA XREF from fcn.00000eb4 @ 0xed0
│           ; DATA XREF from fcn.00000edc @ 0xf25
│           0000:0cc0      call  word cs:[fcn.00003010]                ; 0x3010
└ ────────< 0000:0cc5      jmp   0xa84
```

### Function 0x00000cc8
```asm
; CALL XREF from fcn.00000a79 @ 0xb10
┌ fcn.00000cc8(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0cc8      xor   cx, cx
│           ; CODE XREF from fcn.00000cc8 @ 0xd06
│     ┌┌┌─> 0000:0cca      lodsb al, byte [si]
│     ╎╎╎   0000:0ccb      cmp   al, 0x20
│    ┌────< 0000:0ccd      jne   0xcd0
│    │╎╎╎   0000:0ccf      ret
│    └────> 0000:0cd0      cmp   al, 0xff
│    ┌────< 0000:0cd2      jne   0xcd5
│    │╎╎╎   0000:0cd4      ret
│    └────> 0000:0cd5      cmp   al, 0xfe
│    ┌────< 0000:0cd7      jne   0xcda
│    │╎╎╎   0000:0cd9      ret
│    └────> 0000:0cda      cmp   al, 0xfd
│    ┌────< 0000:0cdc      jne   0xcdf
│    │╎╎╎   0000:0cde      ret
│    └────> 0000:0cdf      cmp   al, 0xf7
│    ┌────< 0000:0ce1      jne   0xce4
│    │╎╎╎   0000:0ce3      ret
│    └────> 0000:0ce4      cmp   al, 0xf3
│    ┌────< 0000:0ce6      jne   0xce9
│    │╎╎╎   0000:0ce8      ret
│    └────> 0000:0ce9      cmp   al, 0xf2
│    ┌────< 0000:0ceb      jne   0xcee
│    │╎╎╎   0000:0ced      ret
│    └────> 0000:0cee      cmp   al, 0xf1
│    ┌────< 0000:0cf0      jne   0xcf3
│    │╎╎╎   0000:0cf2      ret
│    └────> 0000:0cf3      or    al, al
│     └───< 0000:0cf5      js    0xcca
│      ╎╎   0000:0cf7      sub   al, 0x20
│      └──< 0000:0cf9      jb    0xcca
│       ╎   0000:0cfb      mov   bl, al
│       ╎   0000:0cfd      xor   bh, bh
│       ╎   0000:0cff      add   cl, byte cs:[bx - 0x6b23]             ; arg3
│       ╎   0000:0d04      adc   ch, bh
└       └─< 0000:0d06      jmp   0xcca
```

### Function 0x00000d08
```asm
; CALL XREF from fcn.00000110 @ 0x9fa
┌ fcn.00000d08(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0d08      push  si
│           0000:0d09      mov   bx, 0x20
│           0000:0d0c      mov   cx, 0x5078                            ; 'xP'
│           0000:0d0f      call  word cs:[fcn.0000300a]                ; 0x300a
│           0000:0d14      pop   si
│       ┌─> 0000:0d15      call  word cs:[fcn.0000300c]                ; 0x300c
│       ╎   0000:0d1a      push  si
│       ╎   0000:0d1b      mov   cx, 0xa
│      ┌──> 0000:0d1e      push  cx
│      ╎╎   0000:0d1f      mov   ax, cx
│      ╎╎   0000:0d21      neg   ax
│      ╎╎   0000:0d23      add   ax, 0xa                               ; int16_t arg1
│      ╎╎   0000:0d26      mov   bx, 0x14                              ; int16_t arg3
│      ╎╎   0000:0d29      mov   cx, 0x50a0
│      ╎╎   0000:0d2c      call  word cs:[fcn.0000300e]                ; 0x300e
│      ╎╎   0000:0d31      mov   al, 0x1c
│      ╎╎   0000:0d33      call  fcn.00000a0b                          ; fcn.00000a0b
│      ╎╎   0000:0d36      pop   cx
│      └──< 0000:0d37      loop  0xd1e
│       ╎   0000:0d39      pop   si
│       ╎   0000:0d3a      cmp   byte [si - 1], 0xff
│       └─< 0000:0d3e      jne   0xd15
│           0000:0d40      mov   cx, 0xa0
│       ┌─> 0000:0d43      push  cx
│       ╎   0000:0d44      xor   ax, ax                                ; int16_t arg1
│       ╎   0000:0d46      mov   bx, 0x14                              ; int16_t arg3
│       ╎   0000:0d49      mov   cx, 0x50a0
│       ╎   0000:0d4c      call  word cs:[fcn.0000300e]                ; 0x300e
│       ╎   0000:0d51      mov   al, 0x1c
│       ╎   0000:0d53      call  fcn.00000a0b                          ; fcn.00000a0b
│       ╎   0000:0d56      pop   cx
│       └─< 0000:0d57      loop  0xd43
└           0000:0d59      ret
```

### Function 0x00000d62
```asm
; XREFS: CALL 0x0000008b  CALL 0x000000e7  CALL 0x00000125  
            ; XREFS: CALL 0x00000580  CALL 0x0000059d  CALL 0x00000600  
            ; XREFS: CALL 0x00000642  CALL 0x000006e9  CALL 0x00000734  
            ; XREFS: CALL 0x0000076c  CALL 0x000007a6  CALL 0x000007d8  
            ; XREFS: CALL 0x000007f5  CALL 0x00000869  CALL 0x00000942  
            ; XREFS: CALL 0x00000982  CALL 0x000009a9  
┌ fcn.00000d62();
│           0000:0d62      call  fcn.00000d67                          ; fcn.00000d67
│       ┌─< 0000:0d65      jmp   0xd91
        │   ; CALL XREF from fcn.00000d62 @ 0xd62
..
│    │ ╎│   ; CODE XREF from fcn.00000d67 @ 0xd7f
│       │   ; CODE XREF from fcn.00000d62 @ 0xd65
│       └─> 0000:0d91      xor   dh, dh                                ; arg1
│       ┌─> 0000:0d93      xor   al, al
│       ╎   0000:0d95      rcl   byte es:[di]
│       ╎   0000:0d98      adc   al, al
│       ╎   0000:0d9a      rcl   byte es:[di]
│       ╎   0000:0d9d      adc   al, al
│       ╎   0000:0d9f      xor   dh, al
│       ╎   0000:0da1      mov   ah, dh
│       ╎   0000:0da3      xor   al, al
│       ╎   0000:0da5      rcl   byte es:[di]
│       ╎   0000:0da8      adc   al, al
│       ╎   0000:0daa      rcl   byte es:[di]
│       ╎   0000:0dad      adc   al, al
│       ╎   0000:0daf      xor   dh, al
│       ╎   0000:0db1      add   ah, ah
│       ╎   0000:0db3      add   ah, ah
│       ╎   0000:0db5      or    ah, dh
│       ╎   0000:0db7      xor   al, al
│       ╎   0000:0db9      rcl   byte es:[di]
│       ╎   0000:0dbc      adc   al, al
│       ╎   0000:0dbe      rcl   byte es:[di]
│       ╎   0000:0dc1      adc   al, al
│       ╎   0000:0dc3      xor   dh, al
│       ╎   0000:0dc5      add   ah, ah
│       ╎   0000:0dc7      add   ah, ah
│       ╎   0000:0dc9      or    ah, dh
│       ╎   0000:0dcb      xor   al, al
│       ╎   0000:0dcd      rcl   byte es:[di]
│       ╎   0000:0dd0      adc   al, al
│       ╎   0000:0dd2      rcl   byte es:[di]
│       ╎   0000:0dd5      adc   al, al
│       ╎   0000:0dd7      xor   dh, al
│       ╎   0000:0dd9      add   ah, ah
│       ╎   0000:0ddb      add   ah, ah
│       ╎   0000:0ddd      or    ah, dh
│       ╎   0000:0ddf      mov   al, ah
│       ╎   0000:0de1      stosb byte es:[di], al
│       └─< 0000:0de2      loop  0xd93
└           0000:0de4      ret
```

### Function 0x00000d67
```asm
; CALL XREF from fcn.00000d62 @ 0xd62
┌ fcn.00000d67(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0d67      push  di
│           0000:0d68      lodsw ax, word [si]
│           0000:0d69      mov   cx, ax                                ; arg1
│           0000:0d6b      push  cx
│           0000:0d6c      mov   bp, si
│           0000:0d6e      add   si, cx
│       ┌─> 0000:0d70      push  cx
│       ╎   0000:0d71      xor   al, al
│       ╎   0000:0d73      mov   cx, 8
│     ┌┌──> 0000:0d76      rol   byte ds:[bp], 1
│    ┌────< 0000:0d7a      jb    0xd81
│    │╎╎╎   0000:0d7c      stosb byte es:[di], al
│    │└───< 0000:0d7d      loop  0xd76
│    │┌───< 0000:0d7f      jmp   0xd84
│    └────> 0000:0d81      movsb byte es:[di], byte ptr [si]
│     │└──< 0000:0d82      loop  0xd76
│     │ ╎   ; CODE XREF from fcn.00000d67 @ 0xd7f
│     └───> 0000:0d84      inc   bp
│       ╎   0000:0d85      pop   cx
│       └─< 0000:0d86      loop  0xd70
│           0000:0d88      pop   cx
│           0000:0d89      add   cx, cx
│           0000:0d8b      add   cx, cx
│           0000:0d8d      add   cx, cx
│           0000:0d8f      pop   di
└           0000:0d90      ret
```

### Function 0x00000de5
```asm
; XREFS: CALL 0x0000003a  CALL 0x000001de  CALL 0x00000264  
            ; XREFS: CALL 0x0000028f  CODE 0x00000e01  CODE 0x00000e05  
┌ fcn.00000de5(short unsigned int arg1, int16_t arg4);
│           ; arg short unsigned int arg1 @ ax
│           ; arg int16_t arg4 @ cx
│      ┌┌─> 0000:0de5      test  byte [si], 0x40
│     ┌───< 0000:0de8      je    0xe07
│     │╎╎   0000:0dea      lodsw ax, word [si]
│     │╎╎   0000:0deb      xchg  al, ah
│     │╎╎   0000:0ded      mov   cx, ax                                ; arg1
│     │╎╎   0000:0def      cmp   ax, 0xffff                            ; arg1
│    ┌────< 0000:0df2      jne   0xdf5
│    ││╎╎   0000:0df4      ret
│    └────> 0000:0df5      and   cx, 0x3fff
│     │╎╎   0000:0df9      test  ax, 0x8000                            ; arg1
│    ┌────< 0000:0dfc      je    0xe03
│    ││╎╎   ; CODE XREF from fcn.00000de5 @ 0xe11
│   ┌─────> 0000:0dfe      lodsb al, byte [si]
│   ╎││╎╎   0000:0dff      rep   stosb byte es:[di], al
│   ╎││└──< 0000:0e01      jmp   fcn.00000de5
│   ╎└─┌──> 0000:0e03      rep   movsb byte es:[di], byte ptr [si]
│   ╎ │╎└─< 0000:0e05      jmp   fcn.00000de5
│   ╎ └───> 0000:0e07      lodsb al, byte [si]
│   ╎  ╎    0000:0e08      mov   cl, al
│   ╎  ╎    0000:0e0a      and   cx, 0x3f                              ; arg4
│   ╎  ╎    0000:0e0d      test  al, 0x80
│   ╎  └──< 0000:0e0f      je    0xe03
└   └─────< 0000:0e11      jmp   0xdfe
```

### Function 0x00000e13
```asm
; CALL XREF from fcn.00000110 @ 0x128
┌ fcn.00000e13();
│           0000:0e13      push  ds
│           0000:0e14      mov   ax, cs
│           0000:0e16      add   ax, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned"
│           0000:0e19      mov   es, ax
│           0000:0e1b      mov   di, 0
│           0000:0e1e      mov   cx, 0x1650
│           0000:0e21      xor   ax, ax
│           0000:0e23      rep   stosw word es:[di], ax
│           0000:0e25      mov   ds, word cs:[0xff2c]
│           0000:0e2a      mov   di, 0
│           0000:0e2d      mov   bx, 0
│           0000:0e30      mov   cx, 0x2230                            ; '0"' ; "ing grieved, an apparition appeared before him.\xf5\xf5\xfe\xec\xf7\xfb\"I am the Guardian Spirit of the Holy Land of Zeliard.  "
│           0000:0e33      mov   si, 0xab40
│           0000:0e36      call  fcn.00000e53                          ; fcn.00000e53
│           0000:0e39      mov   bx, 0xf30
│           0000:0e3c      mov   cx, 0x620
│           0000:0e3f      mov   si, 0xa9c0
│           0000:0e42      call  fcn.00000e53                          ; fcn.00000e53
│           0000:0e45      mov   bx, 0x850                             ; int16_t arg3
│           0000:0e48      mov   cx, 0x1220
│           0000:0e4b      mov   si, 0x9c40
│           0000:0e4e      call  fcn.00000e62                          ; fcn.00000e62
│           0000:0e51      pop   ds
└           0000:0e52      ret
```

### Function 0x00000e53
```asm
; CALL XREFS from fcn.00000e13 @ 0xe36, 0xe42
┌ fcn.00000e53();
│           0000:0e53      push  di
│           0000:0e54      add   di, 0xee0
│           0000:0e58      call  fcn.00000e71                          ; fcn.00000e71
│           0000:0e5b      pop   di
│           0000:0e5c      push  di
│           0000:0e5d      call  fcn.00000e71                          ; fcn.00000e71
│           0000:0e60      pop   di
└           0000:0e61      ret
```

### Function 0x00000e62
```asm
; CALL XREF from fcn.00000e13 @ 0xe4e
┌ fcn.00000e62(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0e62      push  di
│           0000:0e63      call  fcn.00000e71                          ; fcn.00000e71
│           0000:0e66      pop   di
│           0000:0e67      push  di
│           0000:0e68      add   di, 0xee0
│           0000:0e6c      call  fcn.00000e71                          ; fcn.00000e71
│           0000:0e6f      pop   di
└           0000:0e70      ret
```

### Function 0x00000e71
```asm
; CALL XREFS from fcn.00000e53 @ 0xe58, 0xe5d
            ; CALL XREFS from fcn.00000e62 @ 0xe63, 0xe6c
┌ fcn.00000e71(int16_t arg1, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0e71      push  bx                                    ; arg3
│           0000:0e72      push  cx                                    ; arg4
│           0000:0e73      mov   al, 0x22                              ; '"'
│           0000:0e75      mul   bl
│           0000:0e77      mov   bl, bh
│           0000:0e79      xor   bh, bh
│           0000:0e7b      add   ax, bx                                ; arg3
│           0000:0e7d      add   di, ax                                ; arg1
│       ┌─> 0000:0e7f      push  cx                                    ; arg4
│       ╎   0000:0e80      push  di
│       ╎   0000:0e81      mov   cl, ch
│       ╎   0000:0e83      xor   ch, ch
│       ╎   0000:0e85      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:0e87      pop   di
│       ╎   0000:0e88      add   di, 0x22
│       ╎   0000:0e8b      pop   cx
│       ╎   0000:0e8c      dec   cl
│       └─< 0000:0e8e      jne   0xe7f
│           0000:0e90      pop   cx
│           0000:0e91      pop   bx
└           0000:0e92      ret
```

### Function 0x00000e93
```asm
; CALL XREFS from fcn.00000110 @ 0x64a, 0x692, 0x6b7
┌ fcn.00000e93(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0e93      push  ds
│           0000:0e94      xor   ah, ah
│           0000:0e96      mov   dx, 0xcc0
│           0000:0e99      mul   dx
│           0000:0e9b      add   ax, 0xab40                            ; arg1
│           0000:0e9e      mov   ds, word cs:[0xff2c]
│           0000:0ea3      mov   si, ax                                ; arg1
│           0000:0ea5      mov   ax, cs
│           0000:0ea7      add   ax, fcn.00002000                      ; 0x2000 ; "es of his ancestors!\"\xf0\xf5\xf5\xfe\xfd\xf3\xfaAs the words of the demon resounded over the land, Princess Felicia was turned"
│           0000:0eaa      mov   es, ax
│           0000:0eac      mov   di, 0
│           0000:0eaf      call  fcn.00000eb4                          ; fcn.00000eb4
│           0000:0eb2      pop   ds
└           0000:0eb3      ret
```

### Function 0x00000eb4
```asm
; CALL XREF from fcn.00000e93 @ 0xeaf
┌ fcn.00000eb4();
│           0000:0eb4      mov   cx, 0x30                              ; '0'
│       ┌─> 0000:0eb7      push  cx
│       ╎   0000:0eb8      mov   cx, 0x22                              ; '"'
│      ┌──> 0000:0ebb      mov   ah, byte [si + 0x660]
│      ╎╎   0000:0ebf      lodsb al, byte [si]
│      ╎╎   0000:0ec0      mov   bh, al
│      ╎╎   0000:0ec2      not   bh
│      ╎╎   0000:0ec4      and   bh, ah
│      ╎╎   0000:0ec6      xor   ah, bh
│      ╎╎   0000:0ec8      mov   byte es:[di], al
│      ╎╎   0000:0ecb      mov   byte es:[di + 0x660], bh
│      ╎╎   0000:0ed0      mov   byte es:[di + 0xcc0], ah
│      ╎╎   0000:0ed5      inc   di
│      └──< 0000:0ed6      loop  0xebb
│       ╎   0000:0ed8      pop   cx
│       └─< 0000:0ed9      loop  0xeb7
└           0000:0edb      ret
```

### Function 0x00000edc
```asm
; CALL XREF from fcn.00000110 @ 0x657
┌ fcn.00000edc();
│           0000:0edc      push  ds
│           0000:0edd      push  es
│           0000:0ede      pop   ds
│           0000:0edf      mov   si, di
│           0000:0ee1      mov   es, word cs:[0xff2c]
│           0000:0ee6      mov   di, 0x46d3
│           0000:0ee9      mov   cx, 0x30                              ; '0'
│       ┌─> 0000:0eec      push  cx
│       ╎   0000:0eed      push  di
│       ╎   0000:0eee      mov   cx, 0x11
│      ┌──> 0000:0ef1      push  cx
│      ╎╎   0000:0ef2      mov   ax, word es:[di]
│      ╎╎   0000:0ef5      mov   bx, word es:[di + 0x1d40]
│      ╎╎   0000:0efa      not   ax
│      ╎╎   0000:0efc      not   bx
│      ╎╎   0000:0efe      and   ax, bx
│      ╎╎   0000:0f00      and   ax, word es:[di + 0x3a80]
│      ╎╎   0000:0f05      mov   dx, ax
│      ╎╎   0000:0f07      not   dx
│      ╎╎   0000:0f09      mov   bx, ax
│      ╎╎   0000:0f0b      and   ax, word [si]
│      ╎╎   0000:0f0d      and   word es:[di], dx
│      ╎╎   0000:0f10      or    word es:[di], ax
│      ╎╎   0000:0f13      mov   ax, bx
│      ╎╎   0000:0f15      and   ax, word [si + 0x660]
│      ╎╎   0000:0f19      and   word es:[di + 0x1d40], dx
│      ╎╎   0000:0f1e      or    word es:[di + 0x1d40], ax
│      ╎╎   0000:0f23      mov   ax, bx
│      ╎╎   0000:0f25      and   ax, word [si + 0xcc0]
│      ╎╎   0000:0f29      and   word es:[di + 0x3a80], dx
│      ╎╎   0000:0f2e      or    word es:[di + 0x3a80], ax
│      ╎╎   0000:0f33      add   di, 2
│      ╎╎   0000:0f36      add   si, 2
│      ╎╎   0000:0f39      pop   cx
│      └──< 0000:0f3a      loop  0xef1
│       ╎   0000:0f3c      pop   di
│       ╎   0000:0f3d      add   di, 0x48
│       ╎   0000:0f40      pop   cx
│       └─< 0000:0f41      loop  0xeec
│           0000:0f43      pop   ds
└           0000:0f44      ret
```

### Function 0x00000f45
```asm
; CALL XREF from fcn.00000110 @ 0x9b7
┌ fcn.00000f45();
│           0000:0f45      add   di, 0x819
│           0000:0f49      mov   cx, 0xa0
│       ┌─> 0000:0f4c      push  cx
│       ╎   0000:0f4d      push  di
│       ╎   0000:0f4e      mov   cx, 0x15
│      ┌──> 0000:0f51      push  cx
│      ╎╎   0000:0f52      mov   al, byte es:[si]
│      ╎╎   0000:0f55      and   al, byte es:[si + 0xd20]
│      ╎╎   0000:0f5a      mov   ah, byte es:[si + 0x1a40]
│      ╎╎   0000:0f5f      not   ah
│      ╎╎   0000:0f61      and   al, ah
│      ╎╎   0000:0f63      not   al
│      ╎╎   0000:0f65      mov   ah, byte es:[si]
│      ╎╎   0000:0f68      or    ah, byte es:[si + 0xd20]
│      ╎╎   0000:0f6d      or    ah, byte es:[si + 0x1a40]
│      ╎╎   0000:0f72      and   byte es:[si], al
│      ╎╎   0000:0f75      and   byte es:[si + 0xd20], al
│      ╎╎   0000:0f7a      not   ah
│      ╎╎   0000:0f7c      and   byte es:[di], ah
│      ╎╎   0000:0f7f      and   byte es:[di + 0x3000], ah
│      ╎╎   0000:0f84      and   byte es:[di + 0x6000], ah
│      ╎╎   0000:0f89      mov   al, byte es:[si]
│      ╎╎   0000:0f8c      or    byte es:[di], al
│      ╎╎   0000:0f8f      mov   al, byte es:[si + 0xd20]
│      ╎╎   0000:0f94      or    byte es:[di + 0x3000], al
│      ╎╎   0000:0f99      mov   al, byte es:[si + 0x1a40]
│      ╎╎   0000:0f9e      or    byte es:[di + 0x6000], al
│      ╎╎   0000:0fa3      inc   di
│      ╎╎   0000:0fa4      inc   si
│      ╎╎   0000:0fa5      pop   cx
│      └──< 0000:0fa6      loop  0xf51
│       ╎   0000:0fa8      pop   di
│       ╎   0000:0fa9      add   di, 0x40
│       ╎   0000:0fac      pop   cx
│       └─< 0000:0fad      loop  0xf4c
└           0000:0faf      ret
```

### Function 0x00000fb0
```asm
; CALL XREF from fcn.00000110 @ 0x99b
┌ fcn.00000fb0(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0fb0      push  bx                                    ; arg3
│           0000:0fb1      push  es
│           0000:0fb2      push  di
│           0000:0fb3      mov   cx, 0x3000                            ; " laughter.\xf5\xf5\xfd\xfe\xef\xf3\xfb\"You haven't seen the last of me, Jashiin!\xf2Your reign of evil is near its end!\"\xf5\x"
│       ┌─> 0000:0fb6      mov   byte es:[di + 0x6000], 0
│       ╎   0000:0fbc      mov   al, byte es:[di + 0x3000]
│       ╎   0000:0fc1      mov   ah, byte es:[di]
│       ╎   0000:0fc4      not   ah
│       ╎   0000:0fc6      and   al, ah
│       ╎   0000:0fc8      or    byte es:[di], al
│       ╎   0000:0fcb      or    byte es:[di + 0x6000], al
│       ╎   0000:0fd0      not   al
│       ╎   0000:0fd2      and   byte es:[di + 0x3000], al
│       ╎   0000:0fd7      mov   al, byte es:[di + 0x3000]
│       ╎   0000:0fdc      and   al, byte es:[di]
│       ╎   0000:0fdf      or    byte es:[di + 0x6000], al
│       ╎   0000:0fe4      inc   di
│       └─< 0000:0fe5      loop  0xfb6
│           0000:0fe7      pop   di
│           0000:0fe8      pop   es
│           0000:0fe9      pop   bx
│           0000:0fea      mov   cx, 0x40c0
│           0000:0fed      mov   al, 0xff
└           0000:0fef      jmp   word cs:[0x3004]
```

### Function 0x00002000
```asm
; XREFS: DATA 0x00000007  DATA 0x00000140  CALL 0x000001bf  
            ; XREFS: DATA 0x00000411  DATA 0x00000545  DATA 0x00000575  
            ; XREFS: DATA 0x000005a8  DATA 0x0000064f  DATA 0x00000675  
            ; XREFS: DATA 0x00000697  DATA 0x000006bc  CALL 0x00000c09  
            ; XREFS: DATA 0x00000e16  DATA 0x00000ea7  
┌ fcn.00002000(int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4, int16_t arg_20h, int16_t arg_21h, int16_t arg_2eh, int16_t arg_63h, int16_t arg_64h, int16_t arg_65h, int16_t arg_67h, int16_t arg_69h, int16_t arg_6ah, int16_t arg_6ch, int16_t arg_6fh, int16_t arg_72h, int16_t arg_74h, int16_t arg_75h, int16_t arg_2c6eh, int16_t arg_5996h, int16_t arg_656eh, int16_t arg_6d80h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           ; var int16_t var_7dh @ stack - 0x7d
│           ; arg int16_t arg_20h @ stack + 0x20
│           ; arg int16_t arg_21h @ stack + 0x21
│           ; arg int16_t arg_2eh @ stack + 0x2e
│           ; arg int16_t arg_63h @ stack + 0x63
│           ; arg int16_t arg_64h @ stack + 0x64
│           ; arg int16_t arg_65h @ stack + 0x65
│           ; arg int16_t arg_67h @ stack + 0x67
│           ; arg int16_t arg_69h @ stack + 0x69
│           ; arg int16_t arg_6ah @ stack + 0x6a
│           ; arg int16_t arg_6ch @ stack + 0x6c
│           ; arg int16_t arg_6fh @ stack + 0x6f
│           ; arg int16_t arg_72h @ stack + 0x72
│           ; arg int16_t arg_74h @ stack + 0x74
│           ; arg int16_t arg_75h @ stack + 0x75
│           ; arg int16_t arg_2c6eh @ stack + 0x2c6e
│           ; arg int16_t arg_5996h @ stack + 0x5996
│           ; arg int16_t arg_656eh @ stack + 0x656e
│           ; arg int16_t arg_6d80h @ stack + 0x6d80
│       ┌─< 0000:2000      jae   0x2023
│       │   0000:2003      outsw dx, word [si]
│       │   0000:2004      and   byte [bx + si + 0x69], ch
│      ┌──< 0000:2008      jae   0x202a
│      ││   0000:200a      popaw
│      ││   0000:200b      outsb dx, byte [si]
│      ││   0000:200c      arpl  word [di + 0x73], sp
│     ┌───< 0000:200f      je    0x2080
│    ┌────< 0000:2011      jb    0x2086
│    ││││   0000:2013      and   word [bp + si], sp
..
│  │││││└─> 0000:2023      ja    0x2094
│  │││││┌─< 0000:2025      jb    0x208b
│ ┌───────< 0000:2027      jae   0x2049
│ │││││││   0000:2029      outsw dx, word [si]
│ │││││││   ; CALL XREF from fcn.00000000 @ 0x4c
│ │││││└──> 0000:202a      and   byte [si + 0x68], dh
│ │││││ │   ; DATA XREFS from fcn.00002000 @ 0x28a6, 0x2f01
│ │││││ │   0000:202e      and   byte gs:[si + 0x65], ah
│ │││││ │   0000:2032      insw  word es:[di], dx
│ │││││ │   0000:2033      outsw dx, word [si]
│ │││││ │   0000:2034      outsb dx, byte [si]
│ │││││ │   0000:2035      and   byte [bp + si + 0x65], dh
│ │││││┌──< 0000:2038      jae   0x20a9
│ ────────< 0000:203a      jne   0x20aa
│ │││││││   0000:203c      and   byte fs:[bx + 0x76], ch
│ ││ ││││   ; CALL XREFS from fcn.00000000 @ 0x19, 0x8e
│ ││ ││││   ; CALL XREFS from fcn.00000110 @ 0x417, 0x480
│ ││┌─────< 0000:2042      jb    0x2065
│ ────────< 0000:2045      je    0x20af
│ │││││││   0000:2047  ~   and   byte gs:[si + 0x61], ch
│ │││││││   ; DATA XREFS from fcn.00002000 @ 0x2998, 0x2a93, 0x2e03
│ └───────> 0000:2049      insb  byte es:[di], dx
│  ││││││   0000:204a      popaw
│  ││││││   0000:204b      outsb dx, byte [si]
│  ││││││   0000:204c      sub   al, 0x20
│  ││││││   0000:204f      push  ax
│ ┌───────< 0000:2050      jb    0x20bb
│ │││││││   0000:2052      outsb dx, byte [si]
│ │││││││   0000:2053      arpl  word [di + 0x73], sp
│ ────────< 0000:2056      jae   0x2078
│ │││││││   0000:2058      inc   si
│ │││││││   0000:2059      insb  byte es:[di], dx
│ │││││││   0000:205b      imul  sp, word [bp + di + 0x69], 0x2061
│ ────────< 0000:2060      ja    0x20c3
│ ────────< 0000:2062      jae   0x2084
│ │││││││   ; DATA XREF from fcn.00002000 @ 0x291d
│ ────────< 0000:2064  ~   je    0x20db
│ │││││││   ; XREFS(28)
│ ││└─────> 0000:2065  ~   jne   0x20d9
│ ││┌─────< 0000:2066  ~   jb    0x20d6
│ │││││││   0000:2067      outsb dx, byte [si]
│ │││││││   0000:2068      and   byte fs:[si + 0x6f], dh
│ │││││││   0000:206d      and   byte [bp + di + 0x74], dh
│ │││││││   0000:2070      outsw dx, word [si]
│ │││││││   0000:2071      outsb dx, byte [si]
│ │││││││   0000:2072      std
│ │││││││   0000:2075      cmc
│ │││││││   0000:2076      cmc
..
│ ────────> 0000:2078      std
│ │││││││   ; DATA XREF from fcn.00002000 @ 0x274e
│ │││││││   0000:2079      push  sp
│ │││││││   0000:207b      push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ ────────< 0000:207e      jb    0x20e1
│ ││││└───> 0000:2080  ~   imul  bp, word [bp + 0x20], 0x666f
│ ────────> 0000:2084  ~   and   byte [bp + di + 0x61], dh
│ │││└────> 0000:2086      jae   0x20e9
│ │││  ││   0000:2088      outsb dx, byte [si]
│ │└──────> 0000:2089  ~   and   byte fs:[bp + di + 0x6f], ah
│ │ │  │└─> 0000:208b      arpl  word [bx + 0x6e], bp
│ │ │  │┌─< 0000:208e      je    0x20f9
│ │ │  ││   0000:2090      outsb dx, byte [si]
│ │ │ ┌───< 0000:2091      jne   0x20f8
│ │ │ │││   0000:2093  ~   and   byte fs:[bp + 0x6f], ah
│ │ │ │││   0000:2094      and   byte [bp + 0x6f], ah
│ │ │┌────< 0000:2097      jb    0x20b9
│ │ │││││   0000:2099      xor   word [bx + si], si
│ │ │││││   0000:209b      cmp   byte [bx + si], ah
│ │ │││││   0000:209d      popaw
│ │┌──────< 0000:209f      jns   0x2114
│ │││││││   0000:20a1      and   byte [bx + di + 0x6e], ah
│ │││││││   0000:20a4      and   byte fs:[si + 0x72], dh
│ │││││││   0000:20a8      popaw
│ │││││└──> 0000:20a9      outsb dx, byte [si]
│ ─────┌──< 0000:20aa      jae   0x2112
│ │││││││   0000:20ac      outsw dx, word [si]
│ ────────< 0000:20ad      jb    0x211c
│ ────────> 0000:20af      and   byte fs:[si + 0x68], dh
│ │││││││   0000:20b4      and   byte gs:[bx + 0x6e], ch
│ │││││││   0000:20b8  ~   arpl  word [di + 0x2d], sp
│ │││└────> 0000:20b9  ~   sub   ax, 0x6566                            ; arg1
│ └──┌────< 0000:20bb      jb    0x2133
│  ││││││   0000:20bf  ~   imul  bp, word [si + 0x65], 0x6c20
│ ────────> 0000:20c3      insb  byte es:[di], dx
│  ││││││   0000:20c4      popaw
│  ││││││   0000:20c5      outsb dx, byte [si]
│  ││││││   0000:20c6      and   byte fs:[bx + di + 0x6e], ch          ; arg3
│ ┌───────< 0000:20ca      je    0x213b
│ │││││││   0000:20cc      and   byte [si + 0x65], ah
│ ────────< 0000:20cf      jae   0x2136
│ ────────< 0000:20d1      jb    0x2147
│ │││││││   0000:20d3      cmc
│ │││││││   0000:20d5      cmc
..
│ ││ ││││   0000:20d9  ~   push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ ────────> 0000:20db      and   byte [bx + si + 0x65], dh
│ │││││││   0000:20de      outsw dx, word [si]
│ ────────< 0000:20df      jo    0x214d
│ ────────> 0000:20e1      and   byte gs:[bx + 0x66], ch
│ │││││││   0000:20e5      and   byte [si + 0x68], dh
│ │││││││   0000:20e8  ~   and   byte gs:[bp + di + 0x69], ch
│ │││││││   0000:20e9      and   byte [bp + di + 0x69], ch
│ │││││││   0000:20ec      outsb dx, byte [si]
│ │││││││   0000:20ed      outsw dx, word fs:[esi]
│ │││││││   0000:20f0      insw  word es:[di], dx
│ │││││││   0000:20f1      and   byte [bx + 0x65], dh
│ ────────< 0000:20f4      jo    0x216a
│ │││││││   0000:20f6  ~   and   byte [bx + di + 0x74], ah
│ ││││└───> 0000:20f8  ~   je    0x211a
│ ││││ │└─> 0000:20f9  ~   and   byte [si + 0x68], dh
│ ││││ │    0000:20fa      je    0x2164
│ ││││ │    0000:20fc      and   byte gs:[si + 0x65], dh
│ ││││ │┌─< 0000:2100      jb    0x2174
│ ││││ ││   0000:2102      imul  sp, word [bp + si + 0x6c], 0x2065
│ ││││ ││   0000:2107      popal
│ ││││┌───< 0000:2109      je    0x2170
│ │││││││   0000:210b      and   byte [bx + 0x66], ch
│ │││││││   0000:210e      and   byte [si + 0x68], dh
│ │││││││   0000:2111  ~   imul  si, word gs:[bp + si + 0x20], 0x6f63
│ │││││└──> 0000:2112  ~   imul  si, word [bp + si + 0x20], 0x6f63
│ │└──────> 0000:2114      and   byte [bp + di + 0x6f], ah
│ │ │││┌──< 0000:2117      jne   0x2187
│ │┌──────< 0000:2119  ~   je    0x218d
│ │││││││   0000:211a  ~   jb    0x2195
│ ────────< 0000:211b  ~   jns   0x2149
│ ────────> 0000:211c  ~   sub   al, 0x20
│ │││││││   0000:211d      and   byte [bx + di + 0x6e], ah
│ │││││││   0000:2120      and   byte fs:[bx + 0x66], ch
│ │││││││   0000:2124      and   byte [si + 0x68], dh
│ │││││││   0000:2127      imul  si, word gs:[bp + si + 0x20], 0x7270
│ │││││││   0000:212d      imul  bp, word [bp + 0x63], 0x7365
│ ────────< 0000:2132  ~   jae   0x2162
│ │││└────> 0000:2133  ~   cmc
│ │││ │││   0000:2134      cmc
│ │││ │││   0000:2135      cmc
│ ────────> 0000:2136      cmc
│ │││ │││   0000:2137      cmc
..
│ └───────> 0000:213b      idiv  dx
│  ││ │││   0000:213d      push  sp
│  ││ │││   0000:213e      push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│  ││ │││   0000:2141      dec   bx                                    ; arg3
│  ││ │││   0000:2142  ~   imul  bp, word [bp + 0x67], 0x7720
│  │└─────> 0000:2143      outsb dx, byte [si]
│  │  │││   0000:2144  ~   and   byte [edi + 0x65], dh
│ ───┌────< 0000:2147  ~   jo    0x21be
│ ────────> 0000:2149  ~   je    0x216b
│  │ ││││   0000:214a  ~   and   byte [di + 0x6f], ch
│  │ ││││   0000:214b      insw  word es:[di], dx
│  │ ││││   0000:214c      outsw dx, word [si]
│ ──┌─────< 0000:214d      jae   0x21c3
│  ││││││   0000:214f      and   byte [bx + 0x66], ch
│  ││││││   0000:2152      and   byte [bx + di + 0x6c], ah
│  ││││││   0000:2155      insb  byte es:[di], dx
│  ││││││   0000:2156      and   bl, dh
│  ││││││   0000:2159      out   dx, al
│  ││││││   0000:215a      sti
│  ││││││   0000:215b      and   cl, byte [bx + 0x68]
│  ││││││   0000:215e      sub   al, 0x20
│  ││││││   0000:2160      insw  word es:[di], dx
│ ┌───────< 0000:2161  ~   jns   0x2183
│ ────────> 0000:2162  ~   and   byte [bp + si + 0x65], ah
│ │││││││   0000:2163  ~   bound sp, dword [di + 0x6c]
│ │││││││   0000:2164      insb  byte es:[di], dx
│ │││││││   0000:2166      outsw dx, word [si]
│ ────────< 0000:2167      jbe   0x21ce
│ │││││││   0000:2169  ~   and   byte fs:[bp + 0x65], al
│ ────────> 0000:216a  ~   and   byte [bp + 0x65], al
│ │││││││   0000:216b      inc   si
│ │││││││   0000:216c  ~   insb  byte es:[di], dx
│ │││││││   0000:216d      insb  byte es:[di], dx
│ │││││││   0000:216e  ~   imul  sp, word [bp + di + 0x69], 0x2161
│ ││││└───> 0000:2170  ~   imul  sp, word [bx + di + 0x21], 0x2020
│ ││││ │└─> 0000:2174  ~   and   byte [bx + di + 0x20], cl
│ ││││ │    0000:2175      dec   cx
│ ││││ │    0000:2176      and   byte [bp + 0x65], ah
│ ││││ │    0000:2179      popaw
│ ││││ │┌─< 0000:217a      jb    0x219c
│ ││││┌───< 0000:217c      je    0x21e6
│ │││││││   0000:217e      and   byte gs:[bx + di + 0x67], al
│ │││││││   0000:2182  ~   and   byte gs:[bx + 0x66], ch
│ └───────> 0000:2183      and   byte [bx + 0x66], ch
│  ││││││   0000:2186  ~   and   byte [si + 0x61], al
│  ││││└──> 0000:2187      inc   sp
│  ││││ │   0000:2188      popaw
│  ││││┌──< 0000:2189      jb    0x21f6
│  ││││││   0000:218b      outsb dx, byte [si]
│ ┌───────< 0000:218c  ~   jae   0x2202
│ │└──────> 0000:218d      jae   0x2202
│ │ │││││   0000:218f      and   byte [bx + di + 0x73], ch
│ │ │││││   0000:2192      and   byte [di + 0x70], dh
│ │ │││││   0000:2195      outsw dx, word [si]
│ │ │││││   0000:2196      outsb dx, byte [si]
│ │ │││││   0000:2197      and   byte [di + 0x73], dh
│ │ │││││   0000:219a  ~   and   byte cs:[bx + si], ah
│ │ ││││└─> 0000:219c      and   byte [bx + di + 0x20], cl
│ │ ││││    0000:219f      popaw
│ │ ││││    0000:21a0      insw  word es:[di], dx
│ │ ││││    0000:21a1      and   byte [bx + si + 0x6f], dh
│ │ ││││┌─< 0000:21a4      ja    0x220b
│ │┌──────< 0000:21a6      jb    0x2214
│ ────────< 0000:21a8      jae   0x221e
│ │││││││   0000:21ab      and   byte [si + 0x6f], dh
│ │││││││   0000:21ae      and   byte [bp + di + 0x74], dh
│ │││││││   0000:21b1      outsw dx, word [si]
│ ────────< 0000:21b2      jo    0x21d4
│ │││││││   0000:21b4      imul  si, word [si + 0x20], 0x2e2e
│ │││││││   0000:21b9      and   byte cs:[bx + di + 0x6e], ah
│ │││││││   0000:21bd  ~   and   byte fs:[bx + si + 0x6f], dh
│ │││└────> 0000:21be      and   byte [bx + si + 0x6f], dh             ; arg3
│ │││┌────< 0000:21c1      ja    0x2228
│ ──└─────> 0000:21c3      jb    0x2231
│ ││┌─────< 0000:21c5      jae   0x223b
│ │││││││   0000:21c8      and   byte [si + 0x6f], dh
│ │││││││   0000:21cb      and   byte [bx + si + 0x65], ch
│ ────────> 0000:21ce      insb  byte es:[di], dx
│ ────────< 0000:21cf      jo    0x21f1
│ ────────< 0000:21d1      jns   0x2242
│ ────────< 0000:21d3  ~   jne   0x2203
│ ────────> 0000:21d4  ~   and   dh, al
│ │││││││   0000:21d5      and   dh, al
│ │││││││   0000:21d7      cmc
│ │││││││   0000:21d8      cmc
│ │││││││   0000:21d9      cmc
..
│ ││││└───> 0000:21e6      je    0x224d
│ ││││ ││   0000:21e8      popaw
│ ││││┌───< 0000:21e9      jb    0x225e
│ │││││││   0000:21eb      and   byte [bx + 0x66], ch
│ │││││││   0000:21ee      and   byte [si + 0x68], dh
│ ────────> 0000:21f1      and   byte gs:[bp + di + 0x69], cl
│ │││││││   0000:21f5      outsb dx, byte [si]
│ │││││└──> 0000:21f6      and   byte [ecx + 0x6e], ah
│ │││││ │   0000:21fa      and   byte fs:[bx + si + 0x69], ch
│ │││││┌──< 0000:21fe      jae   0x2220
│ ────────< 0000:2200      jo    0x2267
│ └───────> 0000:2202      outsw dx, word [si]
│ ┌───────< 0000:2203      jo    0x2271
│ │││││││   0000:2205      and   byte gs:[bp + di + 0x6f], dh
│ │││││││   0000:2209      outsw dx, word [si]
│ │││││││   0000:220a      outsb dx, byte [si]
│ ││││││└─> 0000:220b      and   byte [bx + di + 0x77], ah
│ ││││││    0000:220e      popaw
│ ││││││    0000:220f      imul  sp, word [di + 0x6e], 0x65
│ ││││││    0000:2213  ~   and   byte fs:[bx + di + 0x6e], ah
│ │└──────> 0000:2214      and   byte [bx + di + 0x6e], ah
│ │ ││││    0000:2217      outsw dx, word [si]
│ │ ││││┌─< 0000:2218      je    0x2282
│ │┌──────< 0000:221a      jb    0x223d
│ ────────< 0000:221d  ~   jo    0x228e
│ ────────> 0000:221e      outsw dx, word [si]
│ ────────< 0000:221f  ~   ja    0x2286
│ │││││└──> 0000:2220  ~   jb    0x2251
│ │││││┌──< 0000:2221      jb    0x2251
│ │││││││   0000:2223      cmc
│ │││││││   0000:2224      cmc
..
│ │││└────> 0000:2228      inc   cx                                    ; arg4
│ │││┌────< 0000:2229      jae   0x224b
│ ────────< 0000:222b      je    0x2295
│ │││││││   0000:222d      and   byte gs:[bp + di + 0x69], cl
│ ────────> 0000:2231      outsb dx, byte [si]
│ │││││││   0000:2232      and   byte [edi + 0x72], ah
│ │││││││   0000:2236      imul  sp, word [di + 0x76], 0x6465
│ ││└─────> 0000:223b      sub   al, 0x20
│ │└──────> 0000:223d      popaw
│ │  ││││   0000:223e      outsb dx, byte [si]
│ │  ││││   0000:223f      and   byte [bx + di + 0x70], ah
│ ──┌─────< 0000:2242      jo    0x22a5
│ │┌──────< 0000:2244      jb    0x22af
│ ────────< 0000:2246      je    0x22b1
│ │││││││   0000:2248      outsw dx, word [si]
│ │││││││   0000:2249      outsb dx, byte [si]
│ │││││││   0000:224a  ~   and   byte [bx + di + 0x70], ah
│ │││└────> 0000:224b      popaw
│ │││ │││   0000:224c  ~   jo    0x22be
│ │││┌────< 0000:224d  ~   jo    0x22b4
│ │││││││   0000:224e  ~   popaw
│ │││││││   0000:224f      popaw
│ ────────< 0000:2250  ~   jb    0x22b7
│ │││││└──> 0000:2251  ~   and   byte fs:[bp + si + 0x65], ah
│ │││││ │   0000:2252      and   byte fs:[bp + si + 0x65], ah
│ │││││ │   0000:2256      outsd dx, dword [si]
│ │││││┌──< 0000:2258      jb    0x22bf
│ │││││││   0000:225a      and   byte [bx + si + 0x69], ch
│ │││││││   0000:225d      insw  word es:[di], dx
│ ││││└───> 0000:225e      cmc
│ ││││ ││   0000:2260      cmc
..
│ ────────> 0000:2267      and   byte [bx + di + 0x6d], ah
│ ││││ ││   0000:226a      and   byte [si + 0x68], dh
│ ││││ ││   0000:226d      and   byte gs:[bx + 0x75], al
│ └───────> 0000:2271      popaw
│  │││┌───< 0000:2272      jb    0x22d8
│  ││││││   0000:2274      imul  sp, word [bx + di + 0x6e], 0x5320
│ ┌───────< 0000:2279      jo    0x22e4
│ ────────< 0000:227b      jb    0x22e6
│ ────────< 0000:227d      je    0x229f
│ │││││││   0000:227f      outsw dx, word [si]
│ │││││││   0000:2280  ~   and   byte [si + 0x68], dh
│ ││││││└─> 0000:2282      je    0x22ec
│ ││││││    0000:2284  ~   and   byte gs:[bx + si + 0x6f], cl
│ ────────> 0000:2286      dec   ax
│ ││││││    0000:2287      outsw dx, word [si]
│ ││││││    0000:2288      insb  byte es:[di], dx
│ ││││││┌─< 0000:2289      jns   0x22ab
│ │││││││   0000:228b      dec   sp
│ │││││││   0000:228c      popaw
│ │││││││   0000:228d      outsb dx, byte [si]
│ ────────> 0000:228e      and   byte fs:[bx + 0x66], ch
│ │││││││   0000:2292      and   byte [bp + si + 0x65], bl
│ ────────> 0000:2295      insb  byte es:[di], dx
│ │││││││   0000:2296      imul  sp, word [bx + di + 0x72], 0x2e64
│ │││││││   0000:229b      and   byte [bx + si], ah
│ │││││││   0000:229d      push  sp
│ │││││││   0000:229e  ~   push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ ────────> 0000:229f      and   byte gs:[si + 0x65], ah
│ │││││││   0000:22a3      insw  word es:[di], dx
│ │││││││   0000:22a4      outsw dx, word [si]
│ ││└─────> 0000:22a5      outsb dx, byte [si]
│ ││ ││││   0000:22a6      and   byte [bp + si + 0x61], cl
│ ││┌─────< 0000:22a9      jae   0x2313
│ ││││││└─> 0000:22ab  ~   imul  bp, word [bx + di + 0x6e], 0x6820
│ │└──────> 0000:22af  ~   push  0x7361                                ; 'as'
│ ──────┌─< 0000:22b1      jae   0x22d3
│ │ │││││   0000:22b3  ~   bound sp, dword [di + 0x65]
│ │ │└────> 0000:22b4      outsb dx, byte gs:[si]
│ ────────> 0000:22b7      and   byte [bp + si + 0x65], dh
│ │ │┌────< 0000:22ba      jae   0x2331
│ │┌──────< 0000:22bc      jb    0x2330
│ │││││││   0000:22be  ~   arpl  word gs:[si + 0x65], si
│ │││││└──> 0000:22bf      arpl  word [si + 0x65], si
│ │││││ │   0000:22c2      sub   al, 0x20
│ │││││ │   0000:22c5      popaw
│ │││││ │   0000:22c6      outsb dx, byte [si]
│ │││││ │   0000:22c7      and   byte fs:[bx + di + 0x6e], ch          ; arg3
│ │││││ │   0000:22cb      and   byte fs:[bx + si + 0x69], ch          ; arg3
│ │││││┌──< 0000:22d2  ~   jae   0x22f4
│ ││││││└─> 0000:22d3  ~   and   byte [di + 0x76], ah
│ ││││││┌─< 0000:22d4      jbe   0x2340
│ │││││││   0000:22d7      insb  byte es:[di], dx
│ ││││└───> 0000:22d8      and   byte [di + 0x61], ch
│ ││││ ││   0000:22db      imul  sp, word [ebx + 0x20], 0x6977
│ ││││ ││   0000:22e1      insb  byte es:[di], dx
│ ││││ ││   0000:22e2      insb  byte es:[di], dx
│ ││││ ││   0000:22e3  ~   and   byte [bx + si + 0x6c], dh
│ └───────> 0000:22e4      jo    0x2352
│ ────┌───< 0000:22e6      jne   0x2356
│  ││││││   0000:22e8  ~   and   byte gs:[eax + ebp*2 + 0x69], dh
│  ││││││   0000:22ec      push  0x7369                                ; 'is'
│ │││││││   0000:22ef  ~   and   byte [bx + 0x6f], dh
│ ────────< 0000:22f0      ja    0x2361
│ ────────< 0000:22f2      jb    0x2360
│ │││││└──> 0000:22f4      and   byte fs:[bx + di + 0x6e], ch          ; arg3
│ │││││┌──< 0000:22f8      je    0x2369
│ │││││││   0000:22fa      and   byte [si + 0x68], dh
│ │││││││   0000:22fd      and   byte gs:[bx + di + 0x67], al
│ │││││││   0000:2301      and   byte gs:[bx + 0x66], ch
│ │││││││   0000:2305      and   byte [si + 0x61], al
│ ────────< 0000:2308      jb    0x2375
│ │││││││   0000:230a      outsb dx, byte [si]
│ ────────< 0000:230b      jae   0x2381
│ │││││││   0000:230e  ~   and   byte [bx + 0x6e], ch
│ └───────> 0000:2310      outsb dx, byte [si]
│  ││││││   0000:2311  ~   arpl  word [di + 0x20], sp
│  │└─────> 0000:2313      and   byte [bx + di + 0x67], ah
│  │ ││││   0000:2316      popaw
│  │ ││││   0000:2317      imul  bp, word [bp + 0x2e], 0xf522
│  │ ││││   0000:231c      cmc
│  │ ││││   0000:231d      cmc
..
│ │└──────> 0000:2330      dec   bx
│ │ │└────> 0000:2331      imul  bp, word [bp + 0x67], 0x4620
│ │ │ │││   0000:2336      insb  byte es:[di], dx
│ │ │ │││   0000:2338      imul  si, word [bp + di + 0x68], 0x6b69
│ │ │ │││   0000:233d      popaw
│ │ │ │││   0000:233e      cmp   ah, byte [bx + si]
│ │ │ ││└─> 0000:2340      push  sp
│ │ │ ││    0000:2341      push  0x7265                                ; 'er'
│ │ │ ││    0000:2344      and   byte gs:[bx + di + 0x73], ch
│ │ │ ││    0000:2348      and   byte [bp + si + 0x75], ah
│ │ │ ││┌─< 0000:234b      je    0x236d
│ │ │ │││   0000:234d      outsw dx, word [si]
│ │ │ │││   0000:234e      outsb dx, byte [si]
│ │ │ │││   0000:234f  ~   and   byte gs:[bx + 0x61], dh
│ │ │ │││   0000:2352      popaw
│ │ │┌────< 0000:2353      jns   0x2375
│ │┌──────< 0000:2355  ~   je    0x23c6
│ ││││└───> 0000:2356      outsw dx, word [si]
│ ││││ ││   0000:2357      and   byte [bp + di + 0x74], dh
│ ││││ ││   0000:235a      outsw dx, word [si]
│ └───┌───< 0000:235b      jo    0x237d
│ ┌───────< 0000:235d      je    0x23c7
│ │││││││   0000:235f  ~   imul  si, word [bp + di + 0x20], 0x6564
│ ────────> 0000:2360  ~   jae   0x2382
│ ────────> 0000:2361  ~   and   byte [si + 0x65], ah
│ │││││││   0000:2362  ~   insw  word es:[di], dx
│ │││││││   0000:2364      insw  word es:[di], dx
│ │││││││   0000:2365      outsw dx, word [si]
│ │││││││   0000:2366      outsb dx, byte [si]
│ │││││││   0000:2367  ~   and   byte cs:[bx + si], ah
│ │││││└──> 0000:2369      and   byte [bx + di + 0x20], al             ; arg3
│ │││││ │   0000:236c  ~   bound si, dword [bp + si + 0x61]
│ │││││ └─> 0000:236d      jb    0x23d0
│ │││││ ┌─< 0000:236f      jbe   0x23d6
│ │││││ │   0000:2371      and   byte [bx + 0x61], dh                  ; arg3
│ │││││┌──< 0000:2374  ~   jb    0x23e8
│ ───└────> 0000:2375  ~   jb    0x23e0
│ │││ │││   0000:2376  ~   imul  bp, word [bx + 0x72], 0x6d20
│ │││ │││   0000:2377      outsw dx, word [si]
│ │││ │││   0000:2378      jb    0x239a
│ │││ │││   0000:237a      insw  word es:[di], dx
│ │││┌────< 0000:237b      jne   0x23f0
│ ────└───> 0000:237d      je    0x239f
│ ││││┌───< 0000:237f      jbe   0x23e6
│ ────────> 0000:2381      outsb dx, byte [si]
│ ────────< 0000:2382      je    0x23f9
│ ────────< 0000:2384      jb    0x23eb
│ │││││││   0000:2386      and   byte [bx + di + 0x6e], ch
│ ────────< 0000:2389      je    0x23fa
│ │││││││   0000:238b      and   byte [si + 0x68], dh
│ │││││││   0000:238e      and   byte gs:[si + 0x61], ch
│ ││ ││││   0000:2392      bound di, dword [bx + di + 0x72]
│ ││ ││││   0000:2395      imul  bp, word [bp + 0x74], 0x7368
│ ││ ││││   0000:239a      and   byte [bx + di + 0x6e], ah
│ ││ ││││   0000:239d  ~   and   byte fs:[bp + si + 0x65], dh
│ ────────> 0000:239f      jb    0x2406
│ ││ ││││   0000:23a1      arpl  word [bx + 0x76], bp
│ ││┌─────< 0000:23a4      jb    0x23c7
│ ────────< 0000:23a7      je    0x2411
│ │││││││   0000:23a9      and   byte gs:[bp + 0x69], ch
│ │││││││   0000:23ad      outsb dx, byte [si]
│ │││││││   0000:23ae      and   byte gs:[bx + si + 0x6f], cl
│ │││││││   0000:23b2      insb  byte es:[di], dx
│ ────────< 0000:23b3      jns   0x23d5
│ │││││││   0000:23b5      inc   bx
│ ────────< 0000:23b6      jb    0x2431
│ ────────< 0000:23b8      jae   0x242e
│ │││││││   0000:23ba      popaw
│ │││││││   0000:23bb      insb  byte es:[di], dx
│ ────────< 0000:23bc      jae   0x23ea
│ │││││││   0000:23be      and   byte [si + 0x68], dh
│ │││││││   0000:23c1      and   byte gs:[si + 0x65], dl
│ │││││││   0000:23c5      popaw
│ ─└──────> 0000:23c6  ~   jb    0x243b
│ └─└─────> 0000:23c7  ~   jae   0x23e9
│    ││││   0000:23c8  ~   and   byte [bx + 0x66], ch
│    ││││   0000:23c9      outsw dx, word [si]
│    ││││   0000:23ca      and   byte [di + 0x73], al
│    ││││   0000:23ce      insw  word es:[di], dx
│   ┌─────< 0000:23cf  ~   jae   0x2433
│   │││││   0000:23d0      jae   0x2433
│   │││││   0000:23d2      outsb dx, byte [si]
│  ┌──────< 0000:23d3      je    0x243e
│ ────────> 0000:23d5  ~   and   dh, ch
│  │││││└─> 0000:23d6      and   dh, ch
│  │││││    0000:23d8      cmc
│  │││││    0000:23d9      cmc
│  │││││    0000:23da      cmc
..
│  │││││    0000:23e0      outsb dx, byte [si]
│  │││││┌─< 0000:23e1      jns   0x2403
│ ┌───────< 0000:23e3      je    0x244a
│ ────────< 0000:23e5  ~   jb    0x2459
│ ││││└───> 0000:23e6  ~   jb    0x2451
│ ││││ ││   0000:23e7  ~   imul  sp, word [bp + si + 0x6c], 0x2065
│ ││││ └──> 0000:23e8  ~   bound bp, dword [si + 0x65]
│ ││││  │   0000:23e9      insb  byte es:[di], dx
│ ────────> 0000:23ea  ~   and   byte gs:[bp + di + 0x72], ah
│ ────────> 0000:23eb      and   byte [bp + di + 0x72], ah
│ ││││  │   0000:23ee      popaw
│ │││└─┌──< 0000:23f0      je    0x2467
│ │││ ┌───< 0000:23f2      jb    0x2459
│ │││┌────< 0000:23f4      jae   0x2416
│ ────────< 0000:23f6      ja    0x245e
│ ────────> 0000:23f9      insb  byte es:[di], dx
│ ────────> 0000:23fa      insb  byte es:[di], dx
│ │││││││   0000:23fb      and   byte [bx + 0x69], dh
│ ────────< 0000:23fe      je    0x2468
│ │││││││   0000:2400  ~   imul  bp, word [bp + 0x20], 0x6874
│ ││││││└─> 0000:2403      je    0x246d
│ ││││││    0000:2405  ~   and   byte gs:[si + 0x61], ch
│ ││││││    0000:2406      and   byte [si + 0x61], ch
│ ││││││    0000:2409      bound di, dword [bx + di + 0x72]
│ ││││││    0000:240c      imul  bp, word [bp + 0x74], 0x7368
│ ────────> 0000:2411      sub   al, 0x20
│ ││││││    0000:2413      popaw
│ ││││││    0000:2414      insb  byte es:[di], dx
│ ││││││    0000:2415      insb  byte es:[di], dx
│ │││└────> 0000:2416      and   byte [bx + 0x66], ch
│ │││ ││    0000:2419      and   byte [si + 0x68], dh
│ │││ ││    0000:241c      insw  word es:[di], dx
│ │││ ││    0000:241e      and   byte [bp + si + 0x61], cl
│ │││ ││┌─< 0000:2421      jae   0x248b
│ │││ │││   0000:2423      imul  bp, word [bx + di + 0x6e], 0x7327
│ │││ │││   0000:2428      and   byte [di + 0x69], ch
│ │││ │││   0000:242b      outsb dx, byte [si]
│ │││ │││   0000:242c  ~   imul  bp, word [bx + 0x6e], 0x2e73
│ ────────> 0000:242e      outsb dx, byte [si]
│ │││ │││   0000:242f      jae   0x245f
│ ────────> 0000:2431      and   byte [bx + si], ah
│ ││└─────> 0000:2433      dec   si
│ ││  │││   0000:2434      outsw dx, word [si]
│ ││  │││   0000:2435      and   byte [di + 0x6f], ch
│ ││ ┌────< 0000:2438      jb    0x24ae
│ ││ ││││   0000:243a      popaw
│ ────────> 0000:243b      insb  byte es:[di], dx
│ ││ ││││   0000:243c  ~   and   byte [di + 0x61], ch
│ │└──────> 0000:243e      popaw
│ │  ││││   0000:243f      outsb dx, byte [si]
│ │  ││││   0000:2440      and   byte [bp + di + 0x6f], ah
│ │ ┌─────< 0000:2443      jne   0x24b1
│ │ │││││   0000:2445      and   byte fs:[si + 0x65], ah
│ │ │││││   0000:2449  ~   popal
│ └───────> 0000:244a      popaw
│  ┌──────< 0000:244c      je    0x246e
│ ┌───────< 0000:244e      je    0x24b8
│ ────────< 0000:2450  ~   jae   0x24b8
│ │││││││   0000:2451      jae   0x24b8
│ │││││││   0000:2453      and   byte [si + 0x65], ah
│ │││││││   0000:2456      popaw
│ │││││││   0000:2457      insb  byte es:[di], dx
│ ────└───> 0000:2459      jns   0x247b
│ ││││ ││   0000:245b      bound sp, dword [di + 0x61]
│ ────┌───< 0000:245e  ~   jae   0x24d4
│ │││││││   0000:245f  ~   je    0x24d4
│ ────────< 0000:2460  ~   jae   0x2482
│ │││││││   0000:2461  ~   and   byte [bx + di + 0x6e], ah
│ │││││││   0000:2462      popaw
│ │││││││   0000:2463      outsb dx, byte [si]
│ │││││││   0000:2464  ~   and   byte fs:[bx + 0x72], dh
│ │││││└──> 0000:2467  ~   jb    0x24ce
│ │││││ │   ; DATA XREF from fcn.00000110 @ 0x775
│ ─────┌──< 0000:2468  ~   jae   0x24df
│ │││││││   0000:2469      jae   0x24df
│ │││││││   0000:246b  ~   and   byte [si + 0x68], dh
│ │││││││   0000:246d  ~   push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ │└──────> 0000:246e      and   byte gs:[bp + di + 0x72], ah
│ │┌──────< 0000:2472      jns   0x24e7
│ ────────< 0000:2474  ~   je    0x24d7
│ │││││││   0000:2475      popaw
│ │││││││   0000:2476      insb  byte es:[di], dx
│ ────────< 0000:2477      jae   0x2499
│ ────────< 0000:2479  ~   jb    0x24eb
│ ────────> 0000:247b      outsw dx, word [si]
│ │││││││   0000:247c      insw  word es:[di], dx
│ │││││││   0000:247d      and   byte [si + 0x68], dh
│ │││││││   0000:2480      insw  word es:[di], dx
│ ────────> 0000:2482      and   dh, ch
│ │││││││   0000:2485      cmc
..
│ ──────└─> 0000:248b      ja    0x24f2
│ ││││││┌─< 0000:248d      jbe   0x24f4
│ ────────< 0000:248f      jb    0x24bd
│ │││││││   0000:2491      and   byte [si + 0x68], dh
│ ────────< 0000:2494      jb    0x24fc
│ │││││││   0000:2497  ~   and   byte [bx + di + 0x73], ch
│ ────────> 0000:2499      jae   0x24bb
│ │││││││   0000:249b      outsw dx, word [si]
│ │││││││   0000:249c      outsb dx, byte [si]
│ │││││││   0000:249d      and   byte gs:[bx + 0x69], dh
│ ────────< 0000:24a1      je    0x250b
│ │││││││   0000:24a3      and   byte [si + 0x68], dh
│ │││││││   0000:24a6      and   byte gs:[bx + si + 0x6f], dh
│ ────────< 0000:24aa      ja    0x2511
│ ────────< 0000:24ac      jb    0x24ce
│ ───└────> 0000:24ae      je    0x251f
│ │││ │││   0000:24b0  ~   and   byte [bx + 0x70], ch
│ ││└─────> 0000:24b1      outsw dx, word [si]
│ ││  │││   0000:24b2      jo    0x2524
│ ││ ││││   0000:24b4      outsw dx, word [si]
│ ││┌─────< 0000:24b5      jae   0x251c
│ │││││││   0000:24b7  ~   and   byte [bp + si + 0x61], cl
│ └───────> 0000:24b8      dec   dx
│  ││││││   0000:24b9      popaw
│ ┌───────< 0000:24ba  ~   jae   0x2524
│ │││││││   0000:24bb  ~   push  0x6969                                ; 'ii'
│ │││││││   0000:24bc  ~   imul  bp, word [bx + di + 0x6e], 0xf22e
│ ────────> 0000:24bd      imul  bp, word [bp + 0x2e], 0x54f2
│ │││││││   0000:24c2      push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ │││││││   0000:24c5      insw  word es:[di], dx
│ │││││││   0000:24c6      popaw
│ │││││││   0000:24c7      outsb dx, byte [si]
│ │││││││   0000:24c8      and   byte [bx + 0x68], dh
│ │││││││   0000:24cb      outsw dx, word [si]
│ │││││││   0000:24cc  ~   and   byte [bx + di + 0x73], ch
│ ────────> 0000:24ce      jae   0x24f0
│ │││││││   0000:24d0      jae   0x2548
│ ││││└───> 0000:24d4  ~   imul  bp, word [bp + 0x65], 0x2064
│ ────────> 0000:24d7      and   byte fs:[si + 0x6f], dh
│ │││││││   0000:24db      and   byte [bp + 0x69], ah
│ │││││││   0000:24de  ~   push  0x2074                                ; 't '
│ │││││└──> 0000:24df      push  0x2074                                ; 't '
│ │││││ │   0000:24e2      push  0x6d69                                ; 'im'
│ │││││ │   0000:24e5  ~   and   byte [bx + 0x69], dh
│ │└──────> 0000:24e7  ~   imul  bp, word [si + 0x6c], 0x7320
│ │ │││ │   0000:24e9      insb  byte es:[di], dx
│ │ │││ │   0000:24ea  ~   and   byte [bp + di + 0x6f], dh
│ ────────> 0000:24eb      jae   0x255c
│ │ │││ │   0000:24ed      outsw dx, word [si]
│ │ │││ │   0000:24ee      outsb dx, byte [si]
│ │ │││ │   0000:24ef  ~   and   byte [bx + di + 0x72], ah
│ │ │││ │   0000:24f0      popaw
│ │ │││ │   0000:24f1  ~   jb    0x2565
│ ─────┌──< 0000:24f2  ~   jb    0x255d
│ │ │││││   0000:24f3  ~   imul  si, word [bp + 0x65], 0x6920
│ │┌────└─> 0000:24f4      jbe   0x255b
│ ││││││    0000:24f6      and   byte [bx + di + 0x6e], ch
│ ││││││    0000:24f9      and   byte [bx + di + 0x6f], bh
│ ──────┌─< 0000:24fc      jne   0x2570
│ │││││││   0000:24fe      and   byte [bp + di + 0x69], ch
│ │││││││   0000:2501      outsb dx, byte [si]
│ │││││││   0000:2502      outsw dx, word fs:[esi]
│ │││││││   0000:2505      insw  word es:[di], dx
│ │││││││   0000:2506      and   dh, ch
│ │││││││   0000:2509      cmc
│ │││││││   0000:250a      cmc
..
│ ────────> 0000:2511      jae   0x2533
│ │││││││   0000:2513      insw  word es:[di], dx
│ │││││││   0000:2514      popaw
│ │││││││   0000:2515      outsb dx, byte [si]
│ │││││││   0000:2516      and   byte [bx + di + 0x73], ch
│ │││││││   0000:2519      and   byte [si + 0x68], dh
│ ││└─────> 0000:251c  ~   and   byte gs:[bx + 0x6e], ch
│ ────────> 0000:251f      outsb dx, byte [si]
│ ││ ││││   0000:2520      insb  byte es:[di], dx
│ ││┌─────< 0000:2521      jns   0x2543
│ │││││││   0000:2523  ~   bound sp, dword [di + 0x69]
│ └──└────> 0000:2524      imul  bp, word gs:[bp + 0x67], 0x7320
│  ││ │││   0000:252a      je    0x259e
│  ││││││   0000:252c      outsw dx, word [si]
│  ││││││   0000:252d      outsb dx, byte [si]
│  ││││││   0000:252e      and   byte [ebp + 0x6e], ah
│  ││││││   0000:2532      outsw dx, word [si]
│ ┌───────< 0000:2533      jne   0x259c
│ │││││││   0000:2535      push  0x7420                                ; ' t'
│ │││││││   0000:2538      outsw dx, word [si]
│ │││││││   0000:2539      and   byte [bp + si + 0x61], ah
│ │││││││   0000:253c      outsb dx, byte [si]
│ │││││││   0000:253d      imul  si, word [bp + di + 0x68], 0x4a20
│ │││││││   0000:2542      popaw
│ ──└─────> 0000:2543      jae   0x25ad
│ ││ ││││   0000:2545  ~   imul  bp, word [bx + di + 0x6e], 0x6620
│ ────────> 0000:2548  ~   and   byte [bp + 0x6f], ah
│ ││ │└───> 0000:254a      outsw dx, word [si]
│ ││ │┌───< 0000:254b      jb    0x25b2
│ ││┌─────< 0000:254d      jbe   0x25b4
│ ────────< 0000:254f      jb    0x257f
│ │││││││   0000:2551      and   dh, ch
│ │││││││   0000:2553      cmc
│ │││││││   0000:2554      cmc
│ │││││││   0000:2555      cmc
..
│ ─└──────> 0000:255b  ~   jne   0x257d
│ │ │││││   0000:255c  ~   and   byte [di + 0x75], ch
│ │ │││└──> 0000:255d      insw  word es:[di], dx
│ │ │││┌──< 0000:255e      jne   0x25d3
│ │┌──────< 0000:2560  ~   je    0x2582
│ │││││││   0000:2561  ~   and   byte [bx + di + 0x77], ah
│ │││││││   0000:2562      popaw
│ ────────< 0000:2563      ja    0x25c6
│ │││││││   0000:2565      imul  si, word [si + 0x20], 0x6874
│ │││││││   0000:256a      and   byte gs:[bx + di + 0x72], ah          ; arg3
│ ────────< 0000:256e      jb    0x25d9
│ ──────└─> 0000:2570      jbe   0x25d3
│ ││││││    0000:2572      insb  byte es:[di], dx
│ ││││││    0000:2573      and   byte [bx + 0x66], ch
│ ││││││    0000:2576      and   byte [si + 0x68], dh
│ ││││││    0000:2579  ~   imul  si, word [bp + di + 0x20], 0x7262
│ ────────> 0000:257d      jb    0x25e0
│ ──────┌─< 0000:257f      jbe   0x25e6
│ │││││││   0000:2581  ~   and   byte [bx + di + 0x6e], ah
│ │└──────> 0000:2582      popaw
│ │ │││││   0000:2583      outsb dx, byte [si]
│ │ │││││   0000:2584      and   byte fs:[bp + 0x6f], ch
│ │ │││││   0000:2588      bound bp, dword [si + 0x65]
│ │ │││││   0000:258b      and   byte [bp + di + 0x6e], ch
│ │ │││││   0000:258e      imul  sp, word [bx + 0x68], 0x2c74
│ │ │││││   0000:2593      and   byte [bx + di + 0x6e], ah
│ │ │││││   0000:2596      and   byte fs:[si + 0x65], dh
│ │ │││││   0000:259a      insb  byte es:[di], dx
│ │ │││││   0000:259b      insb  byte es:[di], dx
│ └──└────> 0000:259c  ~   and   byte [bx + si + 0x69], ch
│   │ │││   0000:259e      imul  bp, word [di + 0x20], 0x7665
│   │┌────< 0000:25a3      jb    0x261f
│  ┌──────< 0000:25a6      je    0x2610
│  ││││││   0000:25a8      imul  bp, word [bp + 0x67], 0x202e
│ ────────> 0000:25ad      and   byte [bx + 0x6e], cl
│  ││││││   0000:25b0      insb  byte es:[di], dx
│ ┌───────< 0000:25b1  ~   jns   0x25d3
│ ││││└───> 0000:25b2  ~   and   byte [bx + 0x69], dh
│ ││││┌───< 0000:25b3  ~   ja    0x261e
│ ││└─────> 0000:25b4  ~   imul  si, word [si + 0x68], 0x6820
│ ││┌─────< 0000:25b5      je    0x261f
│ │││││││   0000:25b7      and   byte [bx + si + 0x69], ch
│ ────────< 0000:25ba      jae   0x25dc
│ │││││││   0000:25bc      push  0x6c65                                ; 'el'
│ ────────< 0000:25bf      jo    0x25e1
│ │││││││   0000:25c1      arpl  word [bx + di + 0x6e], sp
│ │││││││   0000:25c4  ~   and   byte [bx + di + 0x6f], bh
│ ────────> 0000:25c6      outsw dx, word [si]
│ ────────< 0000:25c7      jne   0x25e9
│ │││││││   0000:25c9      push  0x706f                                ; 'op'
│ │││││││   0000:25cc      and   byte gs:[si + 0x6f], dh
│ │││││││   0000:25d0      and   byte [bp + si + 0x65], dh
│ └────└──> 0000:25d3      jae   0x2649
│  ││││ │   0000:25d5      outsw dx, word [si]
│  ││││┌──< 0000:25d6      jb    0x263d
│  ││││││   0000:25d8  ~   and   byte [si + 0x68], dh
│ ────────> 0000:25d9      je    0x2643
│  ││││││   0000:25db  ~   imul  si, word [bp + di + 0x20], 0x616c
│ ────────> 0000:25dc      jae   0x25fe
│  ││││││   0000:25de      insb  byte es:[di], dx
│  ││││││   0000:25df      popaw
│  ││││││   0000:25e0      outsb dx, byte [si]
│ ────────> 0000:25e1      and   byte fs:[si + 0x6f], dh
│  ││││││   0000:25e5  ~   and   byte [bx + di + 0x74], ch
│  │││││└─> 0000:25e6  ~   imul  si, word [si + 0x73], 0x6620
│ ────────> 0000:25e9  ~   and   byte [bp + 0x6f], ah
│  ││││││   0000:25ea      outsd dx, dword [si]
│ ┌───────< 0000:25ec      jb    0x265b
│ ────────< 0000:25ee      jb    0x2611
│ │││││││   0000:25f1      bound sp, dword [di + 0x61]
│ ────────< 0000:25f4      jne   0x266a
│ ────────< 0000:25f6      jns   0x2624
│ │││││││   0000:25f8      and   byte [bx + di + 0x6e], ah
│ │││││││   0000:25fb  ~   and   byte fs:[bp + 0x72], ah
│ │││││││   0000:25fe      jb    0x2665
│ │││││││   0000:2600      and   byte gs:[bx + di + 0x6f], bh
│ ────────< 0000:2604      jne   0x2678
│ │││││││   0000:2606      and   byte [si + 0x61], ah
│ ────────< 0000:2609  ~   jne   0x2672
│ ││││││└─> 0000:260a  ~   push  0x6574                                ; 'te'
│ ││││││    0000:260b      push  0x6574                                ; 'te'
│ ││││││┌─< 0000:260e      jb    0x2630
│ ─└──────> 0000:2610  ~   jb    0x2682
│ ────────> 0000:2611      jb    0x2682
│ │ │││││   0000:2613      insw  word es:[di], dx
│ │ │││││   0000:2614      and   byte [bx + si + 0x65], ch
│ │┌──────< 0000:2617      jb    0x2639
│ ────────< 0000:2619      je    0x2680
│ ────────< 0000:261b      jb    0x268f
│ │││││││   0000:261d  ~   imul  sp, word [bp + si + 0x6c], 0x2065
│ ││││└───> 0000:261e  ~   bound bp, dword [si + 0x65]
│ ││└└────> 0000:261f      insb  byte es:[di], dx
│ ││   ││   0000:2620      and   byte gs:[bp + di + 0x75], ah
│ ────────> 0000:2624      jb    0x2699
│ ││  │││   ; DATA XREF from fcn.00003016 @ 0x3469
│ ││  │││   0000:2626  ~   and   dh, ch
│ ││  │││   0000:2627      and   dh, ch
│ ││  │││   0000:262a      cmc
│ ││  │││   0000:262b      cmc
│ ││  │││   0000:262c      cmc
..
│ ││  ││└─> 0000:2630      cli
│ ││  ││    0000:2632      dec   ax
│ ││  ││    0000:2633      popaw
│ ││  ││┌─< 0000:2634      jbe   0x269f
│ ││  │││   0000:2636      outsb dx, byte [si]
│ ││  │││   0000:2637  ~   and   byte [ebx + 0x70], dh
│ │└──────> 0000:2639      jae   0x26ab
│ │   │││   0000:263b      outsw dx, word [si]
│ │   │││   0000:263c  ~   imul  sp, word [di + 0x6e], 0x20
│ │   │└──> 0000:263d      outsb dx, byte gs:[si]
│ │   │ │   0000:263f      and   byte [si + 0x68], dh
│ │  ┌────< 0000:2642  ~   jae   0x26aa
│ │  ││││   0000:2643      jae   0x26aa
│ │  ││││   0000:2645      and   byte [bx + 0x6f], dh                  ; arg3
│ │ ┌─────< 0000:2648  ~   jb    0x26ae
│ ────────> 0000:2649  ~   jae   0x2678
│ │┌──────< 0000:264a      jae   0x2678
│ │││││││   0000:264c      and   byte [si + 0x68], dh
│ │││││││   0000:264f      and   byte gs:[bp + di + 0x70], dl
│ │││││││   0000:2653      imul  si, word [bp + si + 0x69], 0x2074
│ │││││││   0000:2658  ~   imul  si, word fs:[bp + di + 0x61], 0x7070
│ └───────> 0000:265b      popaw
│  ││││││   0000:265c      jo    0x26ce
│  ││││││   0000:265e      popaw
│ ┌───────< 0000:2660      jb    0x26c7
│ │││││││   0000:2662      cmc
│ │││││││   0000:2665      cmc
│ │││││││   0000:2666      cmc
..
│ ────────> 0000:266a      imul  bp, word [bp + 0x67], 0x4620
│ │││││││   0000:266f      insb  byte es:[di], dx
│ │││││││   0000:2671  ~   imul  si, word [bp + di + 0x68], 0x6b69
│ ────────> 0000:2672      jae   0x26dc
│ │││││││   0000:2674  ~   imul  bp, word [bp + di + 0x61], 0x6320
│ ─└──────> 0000:2678  ~   arpl  word [bx + 0x75], bp
│ │┌──────< 0000:267a      jne   0x26e8
│ │││││││   0000:267c      and   byte fs:[bp + 0x6f], ch
│ ────────> 0000:2680      je    0x26a2
│ ────────> 0000:2682      bound sp, dword [di + 0x6c]
│ │││││││   0000:2685      imul  sp, word [di + 0x76], 0x2065
│ ────────< 0000:268a      ja    0x26f4
│ ││││└───> 0000:268c      popaw
│ ││││┌───< 0000:268d      je    0x26af
│ ────────> 0000:268f      push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ │││││││   0000:2692      push  0x6461                                ; 'ad'
│ │││││││   0000:2695      and   byte [bp + di + 0x65], dh
│ │││││││   0000:2698  ~   outsb dx, byte gs:[si]
│ │││││││   0000:2699      outsb dx, byte [si]
│ │││││││   0000:269a      sti
│ │││││││   0000:269d  ~   and   dl, byte [bp + di + 0x75]
│ ││││││└─> 0000:269f      jne   0x2713
│ │││││││   0000:26a1  ~   insb  byte es:[di], dx
│ ────────> 0000:26a2      insb  byte es:[di], dx
│ ────────< 0000:26a3      jns   0x26c5
│ │││││││   0000:26a5      insw  word es:[di], dx
│ ────────< 0000:26a6      jns   0x26c8
│ │││││││   0000:26a8      insw  word es:[di], dx
│ │││││││   0000:26a9  ~   imul  bp, word [bp + 0x64], 0x6920
│ │││└─└──> 0000:26aa      outsb dx, byte [si]
│ │││ │ │   0000:26ab  ~   and   byte fs:[bx + di + 0x73], ch          ; arg3
│ ││└──┌──< 0000:26ae  ~   jae   0x26d0
│ ││  └───> 0000:26af  ~   and   byte [bx + si + 0x6c], dh             ; arg3
│ ││  ┌───< 0000:26b0      jo    0x271e
│ ││  │││   0000:26b2      popaw
│ ││ ┌────< 0000:26b3      jns   0x271e
│ ││ ││││   0000:26b5      outsb dx, byte [si]
│ ││ ││││   0000:26b6      and   byte [edx + esi*2 + 0x69], dh
│ ││ ││││   0000:26bb      arpl  word [bp + di + 0x73], bp
│ ││ ││││   0000:26be      and   byte [bx + 0x6e], ch                  ; arg3
│ ││ ││││   0000:26c1      and   byte [di + 0x65], ch
│ ││ ││││   0000:26c4  ~   and   word [bx + si], sp                    ; arg3
│ ────────> 0000:26c5      and   byte [bx + si], ah                    ; arg3
│ └───────> 0000:26c7      dec   cx                                    ; arg4
│ ────────> 0000:26c8      daa
│  │ ││││   0000:26c9      insw  word es:[di], dx
│  │ ││││   0000:26ca      and   byte [bx + di + 0x66], ah             ; arg3
│  │┌─────< 0000:26cd  ~   jb    0x2730
│  ││││││   0000:26ce      popaw
│  ││││││   0000:26cf  ~   imul  sp, word [si + 0x20], 0x2049
│  ││││└──> 0000:26d0      and   byte fs:[bx + di + 0x20], cl          ; arg3
│  ││││ │   0000:26d4      push  0x7661                                ; 'av'
│  ││││ │   0000:26d7      and   byte gs:[bx + 0x6f], ah               ; arg3
│  ││││ │   0000:26db      outsb dx, byte [si]
│  ││││ │   0000:26dc      and   byte gs:[di + 0x61], ch
│  ││││ │   0000:26e0      and   byte fs:[bx + 0x69], dh               ; arg3
│  ││││┌──< 0000:26e4      je    0x274e
│  ││││││   0000:26e6  ~   and   byte [bx + 0x72], ah                  ; arg3
│  └──────> 0000:26e8      jb    0x2753
│   │││││   0000:26ea      and   bh, dl
│   │││││   0000:26ef      cmc
│   │││││   0000:26f0      cmc
│   │││││   0000:26f1      cmc
│   │││││   0000:26f2      cmc
..
│ ────────> 0000:26f4      inc   dx                                    ; arg2
│  ┌──────< 0000:26f6      jne   0x276c
│  ││││││   0000:26f8      and   byte [si + 0x68], dh
│  ││││││   0000:26fb      and   byte gs:[bp + 0x65], ch
│ ┌───────< 0000:26ff      js    0x2775
│ │││││││   0000:2701      and   byte [si + 0x61], ah
│ ────────< 0000:2704      jns   0x2732
│ │││││││   0000:2706  ~   and   byte [bx + di + 0x20], ah
│ ││││││└─> 0000:2707      popaw
│ ││││││    0000:2708      and   byte [bp + di + 0x74], dh
│ ────────< 0000:270b      jb    0x276e
│ │││││││   0000:270d      outsb dx, byte [si]
│ ────────< 0000:270e      jb    0x2732
│ │││││││   0000:2712      popaw
│ ────────< 0000:2713      jo    0x2785
│ │││││││   0000:2715      popaw
│ ────────< 0000:2717      jb    0x277e
│ │││││││   0000:2719      and   byte fs:[bx + di + 0x6e], ch
│ │││││││   0000:271d  ~   and   byte [si + 0x68], dh
│ │││└└───> 0000:271e      je    0x2788
│ │││  ││   0000:2720      and   byte gs:[bp + di + 0x69], ch
│ │││  ││   0000:2724      outsb dx, byte [si]
│ │││  ││   0000:2725      outsw dx, word fs:[esi]
│ │││  ││   0000:2728      insw  word es:[di], dx
│ │││  ││   0000:2729      cmc
│ │││  ││   0000:272d      cmc
│ │││  ││   0000:272e      cmc
..
│ ││└─────> 0000:2730      out   dx, ax
│ ││   ││   0000:2731      std
│ ────────> 0000:2732      sti
│ ││   ││   0000:2734      and   dl, byte [bx + 0x68]                  ; arg3
│ ││   ││   0000:2737      popaw
│ ││  ┌───< 0000:2738      je    0x275a
│ ││  │││   0000:273a      popaw
│ ││  │││   0000:273b      and   byte [si + 0x65], ah
│ ││ ┌────< 0000:273e      jae   0x27af
│ ││ ││││   0000:2740      insb  byte es:[di], dx
│ ││ ││││   0000:2741      popaw
│ ││┌─────< 0000:2742      je    0x27a9
│ │││││││   0000:2744      and   byte [bx + si + 0x6c], dh             ; arg3
│ │││││││   0000:2747      popaw
│ │││││││   0000:2748      arpl  word [di + 0x21], sp
│ │││││││   0000:274b      and   byte [bx + si], ah                    ; arg3
│ │││││││   0000:274d      push  di
│ │││││└──> 0000:274e      push  0x2079                                ; 'y '
│ │││││ │   0000:2751  ~   push  0x7361                                ; 'as'
│ │││││ │   0000:2753      jae   0x2775
│ │││││ │   0000:2755      je    0x27bf
│ │││││ │   0000:2757  ~   and   byte gs:[bp + di + 0x70], dl
│ ││││└───> 0000:275a      jo    0x27c5
│ ││││  │   0000:275c      jb    0x27c7
│ ││││  │   0000:275e      je    0x2780
│ ││││  │   0000:2760      insb  byte es:[di], dx
│ ││││  │   0000:2761      and   byte fs:[di + 0x65], ch
│ ││││  │   0000:2766      and   byte [bx + si + 0x65], ch             ; arg3
│ ││││ ┌──< 0000:2769      jb    0x27d0
│ ││││ ││   0000:276b      aas
│ │└──────> 0000:276c      and   dh, ch
│ ────────> 0000:276e      cmc
│ │ ││ ││   0000:276f      cmc
│ │ ││ ││   0000:2770      cmc
..
│ └───────> 0000:2775      inc   di
│   ││┌───< 0000:2776      jne   0x27e1
│   │││││   0000:2778      and   byte fs:[bp + si + 0x79], ah
│ ────────> 0000:277e  ~   and   byte [si + 0x68], dh
│   ││││└─> 0000:277f  ~   je    0x27e9
│   ││││    0000:2780  ~   push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│   ││││    0000:2781      and   byte gs:[si + 0x69], ch
│ ────────> 0000:2785  ~   push  0x2074                                ; 't '
│   ││││    0000:2788  ~   and   byte [bx + 0x66], ch                  ; arg3
│   ││││    0000:2789      outsw dx, word [si]
│   ││││    0000:278a      and   byte [si + 0x68], dh
│   ││││    0000:278e      and   byte gs:[bp + di + 0x70], dl
│   ││││    0000:2792      imul  si, word [bp + si + 0x69], 0x2c74
│   ││││    0000:2797      and   byte [bp + si + 0x72], ah
│   ││││    0000:279a      popaw
│   ││││┌─< 0000:279b      jbe   0x2802
│   │││││   0000:279d      and   byte [si + 0x75], al
│   │││││   0000:27a0      imul  sp, word [di + 0x20], 0x47
│   │││││   0000:27a4      popaw
│  ┌──────< 0000:27a5      jb    0x2813
│  ││││││   0000:27a7      popaw
│  ││││││   0000:27a8      outsb dx, byte [si]
│  │└─────> 0000:27a9      and   byte fs:[bx + si + 0x61], ch          ; arg3
│  │ ││││   0000:27ad  ~   and   byte fs:[bp + si + 0x6f], ch
│  │ └────> 0000:27af      push  0x6f                                  ; 'o'
│  │ ┌────< 0000:27b1      jne   0x2825
│  │ ││││   0000:27b3      outsb dx, byte [si]
│  │┌─────< 0000:27b4      jns   0x281c
│  ││││││   0000:27b7      and   byte fs:[di + 0x61], ch
│  ││││││   0000:27bb      outsb dx, byte [si]
│ ┌───────< 0000:27bc      jns   0x27de
│ │││││││   0000:27be  ~   popaw
│ │││││││   0000:27bf      popaw
│ ────────< 0000:27c0      jns   0x2835
│ │││││││   0000:27c2      and   byte [si + 0x6f], dh
│ │││││││   0000:27c5  ~   and   byte [si + 0x68], dh
│ │││││││   0000:27c7      push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ │││││││   0000:27ca      insb  byte es:[di], dx
│ │││││││   0000:27cb      popaw
│ │││││││   0000:27cc      outsb dx, byte [si]
│ │││││││   0000:27cd  ~   and   byte fs:[bx + 0x66], ch               ; arg3
│ │││││└──> 0000:27d0      and   byte [bp + si + 0x65], bl
│ │││││ │   0000:27d4      insb  byte es:[di], dx
│ │││││ │   0000:27d5      imul  sp, word [bx + di + 0x72], 0x2e64
│ │││││ │   0000:27da      cmc
│ │││││ │   0000:27db      cmc
│ │││││ │   0000:27dc      cmc
..
│ └───────> 0000:27de      std
│  ││││ │   0000:27df      inc   bp
│  │││└───> 0000:27e1      outsb dx, byte [si]
│  │││ ┌──< 0000:27e2      je    0x2849
│  │││┌───< 0000:27e4      jb    0x284f
│  ││││││   0000:27e6      outsb dx, byte [si]
│ ┌───────> 0000:27e7  ~   and   byte [eax + ebp*2 + 0x65], dh
│ ╎││││││   0000:27e9      je    0x2853
│ ────────> 0000:27eb      and   byte gs:[bp + di + 0x61], ah
│ ────────< 0000:27ef      jae   0x2865
│ ╎││││││   0000:27f1      insb  byte es:[di], dx
│ ╎││││││   0000:27f2      sub   al, 0x20
│ ╎││││││   0000:27f5      push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ ────────< 0000:27f8      ja    0x285b
│ ────────< 0000:27fa      jae   0x281c
│ ────────< 0000:27fc      jno   0x2873
│ ╎││││││   0000:27fe  ~   imul  sp, word [bp + di + 0x6b], 0x796c
│ ╎│││││└─> 0000:2802      jns   0x2824
│ ╎│││││    0000:2804  ~   jae   0x286a
│ ╎│││││┌─> 0000:2805      jae   0x286a
│ ╎│││││╎   0000:2807      outsw dx, word [si]
│ ╎│││││╎   0000:2808      jb    0x287e
│ ╎│││││╎   0000:280a  ~   and   byte fs:[si + 0x6f], dh
│ ╎│││││╎   0000:280b      and   byte fs:[si + 0x6f], dh
│ ╎│││││╎   0000:280f      and   byte [si + 0x68], dh
│ ╎│││││╎   0000:2812  ~   and   byte gs:[si + 0x68], dh
│ ╎└──────> 0000:2813      and   byte [si + 0x68], dh
│ ╎┌──────< 0000:2816      jb    0x2887
│ ╎│││││╎   0000:2818      outsb dx, byte [si]
│ ╎│││││╎   0000:2819  ~   and   byte gs:[bx + 0x66], ch               ; arg3
│ ──└─────> 0000:281c      and   byte [si + 0x68], dh
│ ╎│ │││╎   0000:2820      and   byte gs:[bx + 0x72], ah               ; arg3
│ ╎│ │││╎   0000:2824  ~   imul  sp, word [di + 0x76], 0x6e69
│ ╎│ └────> 0000:2825      jbe   0x2891
│ ╎│  ││╎   0000:2828      outsb dx, byte [si]
│ ╎│  ││╎   0000:2829      and   byte [ebx + 0x69], cl
│ ╎│  ││╎   0000:282d      outsb dx, byte [si]
│ ╎│  ││╎   0000:282e      and   byte [esi + 0x65], al
│ ╎│  ││╎   0000:2832      insb  byte es:[di], dx
│ ╎│  ││╎   0000:2833  ~   imul  si, word [bp + di + 0x68], 0x6b69
│ ────────> 0000:2835      push  0x6b69                                ; 'ik'
│ ╎│  ││╎   0000:2838      popaw
│ ╎│  ││╎   0000:2839      cmc
│ ╎│  ││╎   0000:283b      cmc
│ ╎│  ││╎   0000:283c      cmc
..
│ ╎│  │└──> 0000:2849      and   byte gs:[bx + si + 0x6147], al        ; arg3
│ ╎│  │┌──< 0000:284e  ~   jb    0x28bc
│ ╎│  └───> 0000:284f      insb  byte es:[di], dx
│ ╎│   │╎   0000:2850      popaw
│ ╎│   │╎   0000:2851  ~   test  byte [bp - 0x7d], ch
│ ╎│   │╎   0000:2853      and   word [si + 0x21], 0x20                ; [0x20:2]=0x70e
│ ╎│   │╎   0000:2857      and   byte [si + 0x5985], al
│ ────────> 0000:285b      xchg  word [bx - 0x78], bp                  ; arg3
│ ────────< 0000:285e      jne   0x27e7
│ ╎│   │╎   0000:2860      and   byte [bp + 0x6d80], al
│ └───────< 0000:2864  ~   jne   0x27e7
│ ────────> 0000:2865  ~   xor   word [bp + di - 0x7d], 0x2074         ; [0x2074:2]=0xf5fd
│ ────────< 0000:2866      jae   0x27eb
│  │  ┌───< 0000:2868  ~   je    0x288a
│  │ ┌────> 0000:2869  ~   and   byte [bp + si + 0x6562], al
│  │ ╎││╎   0000:286a      and   byte [bp + si + 0x65], 0x20           ; [0x20:1]=14
│  │ ╎││╎   0000:286e  ~   xor   word [si + 0x68], 0x2065              ; [0x2065:2]=0x7275 ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ ────────> 0000:2870      push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ ────────> 0000:2873      sub   byte [di + 0x61], 0x84                ; [0x84:1]=255
│  │ ╎││╎   0000:2877      outsb dx, byte [si]
│  │ ╎││╎   0000:2878      and   byte [bp + di - 0x7b91], al
│  │ ╎││╎   0000:287c  ~   and   byte [bx + di + 0x6564], al           ; arg3
│  │ ╎││╎   0000:287e  ~   and   word [si + 0x65], 0x8273              ; [0x8273:2]=0xffff
│  │ ╎││└─< 0000:2881      jae   0x2805
│  │ ╎││┌─< 0000:2883  ~   je    0x28ee
│  │┌─────> 0000:2884  ~   imul  bp, word [bp + 0x79], 0x8320
│  │╎╎│││   0000:2885      outsb dx, byte [si]
│ ┌───────< 0000:2886  ~   jns   0x28a8
│ │└──────> 0000:2887  ~   and   byte [bp + di - 0x7b91], al
│ │ ╎╎│││   0000:2888  ~   sub   word [bx - 0x7c], 0x66                ; [0x66:2]=0x3dbe ; arg3
│ │ ╎╎└───> 0000:288a      test  byte [bp + 0x20], ah
│ │ ╎╎ ││   0000:288d  ~   xor   word [bx + 0x68], 0x6f                ; [0x6f:2]=0x16ff ; arg3
│ │ ╎╎ ││   0000:2890      outsw dx, word [si]
│ │ ╎╎ ││   0000:2891      test  byte [di + 0x20], ch
│ │ ╎╎ ││   0000:2894      xor   word [si + 0x68], 0x2065              ; [0x2065:2]=0x7275 ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ │ ╎╎ ││   0000:2899      adc   word [bp + di - 0x7e], 0x70
│ │ ╎╎ ││   0000:289d  ~   imul  si, word [bp + si + 0x69], 0x2074
│ │ ╎╎┌───> 0000:289f      imul  si, word [si + 0x20], 0x7383
│ │ ╎╎╎││   0000:28a4      jo    0x2915
│ │ ╎╎╎││   0000:28a6  ~   sub   word [bp + di + 0x65], 0x202e         ; [0x202e:2]=0x2065 ; "e demon resounded over the land, Princess Felicia was turned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108"
│ └───────> 0000:28a8      and   byte cs:[bx + si], ah                 ; arg3
│   ╎╎╎││   0000:28ac      test  byte [bx + 0x4980], dl                ; arg3
│   ╎╎╎││   0000:28b0      cwde
│   ╎╎╎││   0000:28b1      xchg  word [bx + si], sp                    ; arg3
│   ╎╎╎││   0000:28b3      or    word [bx + si - 0x789e], 0x8565       ; [0x8565:2]=0xffff ; arg3
│   ╎╎╎││   0000:28b9      xchg  byte [bx + 0x20], ah                  ; arg3
│   ╎╎╎└──> 0000:28bc      sub   word [bx - 0x7c], 0x66                ; [0x66:2]=0x3dbe ; arg3
│   ╎╎╎ │   0000:28c0      and   byte [di + 0x6f79], al
│   ╎╎╎┌──< 0000:28c4      jne   0x28e6
│   ╎╎╎││   0000:28c6      xor   word [si + 0x6f], 0x20                ; [0x20:2]=0x70e
│   ╎╎╎││   0000:28ca      and   byte [si + 0x65], 0x85                ; [0x85:1]=190
│  ┌──────< 0000:28ce      jae   0x2944
│ ┌───────< 0000:28d0      jb    0x2941
│ ────────< 0000:28d2      jns   0x28f4
│ ││╎╎╎││   0000:28d4      xor   word [si + 0x68], 0x2065              ; [0x2065:2]=0x7275 ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ ││╎╎╎││   0000:28d9      and   word [si + 0x65], 0xff80              ; [0xff80:2]=0xffff
│ ││╎╎╎││   0000:28dd      insw  word es:[di], dx
│ ││╎╎╎││   0000:28de      outsw dx, word [si]
│ ││╎╎╎││   0000:28df      outsb dx, byte [si]
│ ││╎╎╎││   0000:28e0      and   byte [si - 0x7fb6], al
│ ││╎╎╎││   0000:28e4      popaw
│ ││╎└────< 0000:28e5  ~   jae   0x2869
│ ││╎ ╎└──> 0000:28e6  ~   sub   byte [bx + si + 0x69], 0x69           ; [0x69:1]=191 ; arg3
│ ││╎ ╎ │   0000:28e7      push  0x6969                                ; 'ii'
│ ││╎ ╎ │   0000:28ea      test  byte [bp + 0x20], ch
│ ││╎ ╎ │   0000:28ed  ~   add   byte [bx - 0x7789], 0x68              ; [0x68:1]=149 ; arg3
│ ││╎ ╎ └─> 0000:28ee      xchg  word [bx - 0x78], si                  ; arg3
│ ││╎ ╎     0000:28f1      push  0x6f87
│ ────────> 0000:28f4      xchg  byte [bx + si], ah                    ; arg3
│ ││╎ ╎     0000:28f6      test  word [bx + si + 0x61], bp             ; arg3
│ ││╎ ╎ ┌─< 0000:28f9      jae   0x291b
│ ││╎ ╎ │   0000:28fb      and   word [bp + di + 0x75], 0xff81         ; [0xff81:2]=0xffff
│ ││└─────< 0000:28ff      jb    0x2884
│ ││  ╎┌──< 0000:2901      jae   0x2968
│ ││  ╎││   0000:2903      and   byte fs:[bx + si + 0x796d], al        ; arg3
│ ││  ╎││   0000:2908      and   byte [di + 0x696b], al
│ ││  ╎││   0000:290c      sub   word [bp + 0x67], 0x6f64              ; [0x6f64:2]=0xffff
│ ││  ╎││   0000:2911      insw  word es:[di], dx
│ ││  ╎││   0000:2912  ~   and   byte [di - 0x7d9f], al
│ ││  ╎││   0000:2915      sub   byte [bp + 0x64], 0x20                ; [0x20:1]=14
│ ││  ╎││   0000:2919  ~   test  byte [si + 0x75], dh
│ ││  ╎│└─> 0000:291b  ~   jne   0x298f
│ ││  └───< 0000:291c  ~   jb    0x289f
│ ││   │    0000:291d  ~   sub   word [bp + 0x65], 0x2064              ; [0x2064:2]=0x7574 ; "turned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into deser"
│ ││   │    0000:291e      outsb dx, byte [si]
│ ││   │    0000:291f      and   byte fs:[bx + si + 0x6d87], al        ; arg3
│ ││   │    0000:2925  ~   or    byte [bx + si - 0x7887], 0x20         ; [0x20:1]=14 ; arg3
│ ││   │    0000:2929      and   byte [bx + di + 0x6286], al           ; arg3
│ ││   │    0000:292d      sub   word gs:[si + 0x6f], 0xff81
│ ││   │    0000:2932      jbe   0x2999
│ ││   │    0000:2934      and   word [si + 0x20], 0xff85              ; [0xff85:2]=0xffff
│ ││   │    0000:2938      popaw
│ ││   │┌─< 0000:293a      jne   0x29a3
│ ││   ││   0000:293c      push  0x7480
│ ││  ┌───< 0000:293f  ~   jb    0x2962
│ ││ ┌────> 0000:2940  ~   jb    0x2962
│ └───────> 0000:2941  ~   and   byte [di + 0x6f74], al
│  │ ╎│││   0000:2942  ~   test  word [si + 0x6f], si
│  └──────> 0000:2944      outsw dx, word [si]
│    ╎│││   0000:2945      and   byte [bp + di + 0x7387], al
│    ╎│││   0000:2949      mov   byte [si - 0x79], dh
│    ╎│││   0000:294c      outsw dx, word [si]
│    ╎│││   0000:294d      test  byte [bp + 0x656e], al
│    ╎│││   0000:2951      and   dh, ch
│    ╎│││   0000:2954      cmc
│    ╎│││   0000:2955      cmc
..
│  ┌──────> 0000:2960      popaw
│ ┌───────< 0000:2961  ~   jb    0x29cf
│ │╎│╎└───> 0000:2962      insb  byte es:[di], dx
│ │╎│╎ ││   0000:2963      popaw
│ │╎│╎ ││   0000:2964      outsb dx, byte [si]
│ │╎│╎ ││   0000:2965  ~   and   byte fs:[bp + di + 0x6e], ch
│ │╎│╎ └──> 0000:2968      outsb dx, byte [si]
│ │╎│╎  │   0000:2969      insb  byte es:[di], dx
│ │╎│╎ ┌──< 0000:296b      je    0x298d
│ │╎│╎ ││   0000:296d      bound sp, dword [di + 0x66]
│ │╎│╎ ││   0000:2970      outsw dx, word [si]
│ │╎│╎┌───< 0000:2971      jb    0x29d8
│ │╎│╎│││   0000:2973      and   byte [si + 0x68], dh
│ │╎│╎│││   0000:2976  ~   and   byte gs:[bp + di + 0x69], cl
│ ────────> 0000:2978      dec   bx
│ │╎│╎│││   0000:2979      imul  bp, word [bp + 0x67], 0x202e
│ │╎│╎│││   0000:297e      sti
│ │╎│╎│││   0000:297f      cmc
│ │╎│╎│││   0000:2980      cmc
│ │╎│╎│││   0000:2981      cmc
│ │╎│╎│││   0000:2982      out   dx, ax
│ │╎│╎│││   0000:2984      xchg  di, ax                                ; arg1
│ │╎│╎│││   0000:2985      and   dl, byte [bp + di + 0x5996]
│ │╎│╎│││   0000:2989      outsw dx, word [si]
│ │╎│╎│││   0000:298a      nop
│ ────────< 0000:298b      jne   0x29ff
│ │╎│╎│└──> 0000:298d  ~   and   byte [di + 0x61], cl
│ │╎│╎│┌──> 0000:298f      popaw
│ │╎│╎│╎│   0000:2990      xchg  cx, ax                                ; arg1
│ │╎│╎│╎│   0000:2991      push  0x65                                  ; 'e'
│ │╎│╎│╎│   0000:2993      xchg  bp, ax                                ; arg1
│ ────────< 0000:2994  ~   jae   0x2a0a
│ ────────> 0000:2995  ~   je    0x2a10
│ ────────< 0000:2996  ~   jns   0x29c4
│ │╎│╎│╎│   0000:2997  ~   sub   al, 0x20
│ │╎│╎│╎│   0000:2998  ~   and   byte [bx + si + 0x2049], dl           ; arg3
│ │╎│╎│╎│   0000:2999      nop
│ │╎│╎│╎│   0000:299a      dec   cx
│ │╎│╎│╎│   0000:299b      and   byte [bx + di + 0x6168], dl
│ │╎│╎│╎│   0000:299f      xchg  bx, ax                                ; arg1
│ ────────< 0000:29a0      jbe   0x2a07
│ │╎│╎│╎│   0000:29a2  ~   and   byte [bp + di + 0x6f66], dl
│ │╎│╎│╎└─> 0000:29a3      xchg  bx, ax                                ; arg1
│ │╎│╎│╎    0000:29a4      outsd dx, dword [si]
│ │╎│╎│╎    0000:29a6      insb  byte es:[di], dx
│ │╎│╎│╎    0000:29a7      insb  byte es:[di], dx
│ │╎│╎│╎    0000:29a8      outsw dx, word [si]
│ │╎│└────< 0000:29a9      ja    0x2940
│ │╎│ │╎    0000:29ab      and   byte fs:[bx + di + 0x6874], dl
│ │╎│ │╎    0000:29b1      and   byte gs:[bx + si + 0x696c], dl
│ │╎│ │╎    0000:29b6      xchg  dx, ax                                ; arg1
│ │╎│ │╎    0000:29b7      push  0x7493
│ │╎│ │╎    0000:29bb      and   byte [si + 0x6f93], dl
│ │╎│ │╎    0000:29bf  ~   and   byte [bx + di + 0x6874], dl
│ │╎│ │╎┌─> 0000:29c1      xchg  cx, ax                                ; arg1
│ │╎│ │╎╎   0000:29c2      je    0x2a2c
│ ────────> 0000:29c4      and   byte gs:[bp + di - 0x6dad], dl
│ │╎ ┌────< 0000:29c9      jo    0x2a34
│ │╎ ││╎╎   0000:29cb      xchg  cx, ax                                ; arg1
│ │└──────< 0000:29cc      jb    0x2960
│ │  ││╎╎   0000:29ce  ~   imul  si, word [si + 0x20], 0x7495
│ └───────> 0000:29cf      je    0x29f1
│    ││╎╎   0000:29d1      xchg  bp, ax                                ; arg1
│    ││╎╎   0000:29d2  ~   je    0x2a43
│   ┌─────> 0000:29d3      outsw dx, word [si]
│   ╎││╎╎   0000:29d4      and   byte [bp + si + 0x6874], dl
│   ╎│└───> 0000:29d8      xchg  dx, ax                                ; arg1
│   ╎│ ╎╎   0000:29d9      imul  dx, word [bx - 0x678d], 0x9720
│   ╎│ ╎╎   0000:29df      xchg  bp, ax                                ; arg1
│ ────────< 0000:29e0      jo    0x2978
│   ╎│ ╎╎   0000:29e2      nop
│   ╎│ ╎╎   0000:29e3      insb  byte es:[di], dx
│   ╎│ ╎╎   0000:29e4      popaw
│   ╎│ ╎╎   0000:29e5      xchg  bx, ax                                ; arg1
│   ╎│ ╎╎   0000:29e6      arpl  word [di + 0x2e], sp
│   ╎│ ╎╎   0000:29e9      and   dl, byte [si - fcn.00000a0b]
│   ╎│ ╎╎   0000:29ed      cmc
..
│   ╎│ ╎╎   0000:29f1      nop
│   ╎│ ╎╎   0000:29f2      dec   cx
│   ╎│ ╎╎   0000:29f3      and   byte [bp + di - 0x6a95], dl
│   ╎│ ╎╎   0000:29f7      outsb dx, byte [si]
│   ╎│ ╎╎   0000:29f8      outsw dx, word [si]
│   ╎│ └──< 0000:29f9      ja    0x298f
│   ╎│  ╎   0000:29fb      and   byte [bp + di + 0x6f6e], dl
│ ────────> 0000:29ff      je    0x2995
│   ╎│  ╎   0000:2a01      and   byte [bp + di - 0x6a91], dl
│   ╎│  ╎   0000:2a05  ~   and   byte [bp + si + 0x6874], dl
│ ────────> 0000:2a07      xchg  dx, ax                                ; arg1
│   ╎│  ╎   0000:2a08      je    0x2a72
│ ────────> 0000:2a0a      imul  dx, word [di + 0x2073], 0x6491
│   ╎│  ╎   0000:2a10      xchg  bx, ax                                ; arg1
│   ╎│  ╎   0000:2a12      insw  word es:[di], dx
│   ╎│  ╎   0000:2a13      outsw dx, word [si]
│   ╎│  ╎   0000:2a14      xchg  sp, ax                                ; arg1
│   ╎│  ╎   0000:2a15      outsb dx, byte [si]
│   ╎│  ╎   0000:2a16      sub   al, 0x20
│   ╎│  ╎   0000:2a18      xchg  bx, ax                                ; arg1
│   ╎│  ╎   0000:2a19      outsb dx, byte [si]
│   ╎│  ╎   0000:2a1a      outsw dx, word [si]
│   ╎│  ╎   0000:2a1b      nop
│   ╎│ ┌──< 0000:2a1c      jb    0x2a3e
│   ╎│ │╎   0000:2a1e      xchg  bx, ax                                ; arg1
│   ╎│┌───< 0000:2a1f      ja    0x2a89
│   ╎│││╎   0000:2a21      nop
│   ╎│││╎   0000:2a22      popaw
│   ╎│││╎   0000:2a23      xchg  bx, ax                                ; arg1
│  ┌──────< 0000:2a24      je    0x2a46
│  │╎│││╎   0000:2a26      nop
│ ┌───────< 0000:2a27      jo    0x2a98
│ ││╎│││╎   0000:2a29      xchg  bp, ax                                ; arg1
│ ────────< 0000:2a2a      ja    0x2a91
│ ──────└─< 0000:2a2c      jb    0x29c1
│ ││╎│││┌─< 0000:2a2e      jae   0x2a50
│ ││╎││││   0000:2a30      xchg  dx, ax                                ; arg1
│ ││╎││││   0000:2a31      push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ ││╎└────> 0000:2a34      xchg  cx, ax                                ; arg1
│ ││╎ │││   0000:2a35      xchg  di, ax                                ; arg1
│ ││╎ │││   0000:2a36      insw  word es:[di], dx
│ ││╎ │││   0000:2a37      cwde
│ ││╎ │││   0000:2a38      popaw
│ ││╎ │││   0000:2a39      xchg  di, ax                                ; arg1
│ ││╎ │││   0000:2a3a      xchg  dx, ax                                ; arg1
│ ││└─────< 0000:2a3b      jns   0x29d3
│ ││  │││   0000:2a3d  ~   and   byte [bp + di + 0x6f70], dl
│ ││  │└──> 0000:2a3e      xchg  bx, ax                                ; arg1
│ ││  │ │   0000:2a3f      jo    0x2ab0
│ ││  │ │   0000:2a41      xchg  cx, ax                                ; arg1
│ ││  │┌──< 0000:2a42  ~   jae   0x2ab7
│ ││  │││   0000:2a43  ~   jae   0x2aaa
│ ││  │││   0000:2a44  ~   xchg  bx, ax                                ; arg1
│ ││  │││   0000:2a45      xchg  bx, ax                                ; arg1
│ │└─┌────< 0000:2a46      jae   0x2abb
│ │  ││││   0000:2a48      sub   al, 0x20
│ │  ││││   0000:2a4a      nop
│ │  ││││   0000:2a4b      bound si, dword [di - 0x6d]
│ │ ┌─────< 0000:2a4e      je    0x2a70
│ │ ││││└─> 0000:2a50      xchg  dx, ax                                ; arg1
│ │ ││││    0000:2a51      imul  dx, word [di + 0x2066], 0x7491
│ │ ││││    0000:2a57      push  0x6590
│ │ ││││┌─< 0000:2a5a      jb    0x2ac1
│ │ │││││   0000:2a5c      and   byte [bp + si - 0x6c97], dl
│ │┌──────< 0000:2a60      jae   0x2a82
│ │││││││   0000:2a62      xchg  bx, ax                                ; arg1
│ ────────> 0000:2a63      outsb dx, byte [si]
│ │││││││   0000:2a64      outsw dx, word [si]
│ │││││││   0000:2a65      xchg  sp, ax                                ; arg1
│ │││││││   0000:2a66      outsb dx, byte [si]
│ │││││││   0000:2a67      and   byte gs:[bx + di + 0x6c65], dl
│ │││││││   0000:2a6c      xchg  bx, ax                                ; arg1
│ ────────< 0000:2a6d      jae   0x2ad4
│ │││││││   0000:2a6f  ~   and   byte [bp + di + 0x6877], dl
│ ││└─────> 0000:2a70      xchg  bx, ax                                ; arg1
│ ││ ││││   0000:2a71  ~   ja    0x2adb
│ ││ ││││   0000:2a72  ~   push  0x206f                                ; 'o ' ; "tone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert.\xf5\xf5\"
│ ││ ││││   0000:2a73      outsw dx, word [si]
│ ││ ││││   0000:2a74      and   byte [bx + si + 0x6163], dl
│ ││ ││││   0000:2a78      xchg  sp, ax                                ; arg1
│ ││ ││││   0000:2a79      outsb dx, byte [si]
│ ││ ││││   0000:2a7a      and   byte [bx + di + 0x6564], dl
│ ││ ││││   0000:2a7e      xchg  dx, ax                                ; arg1
│ ││ ││││   0000:2a7f      xchg  ebx, eax
│ │└──────> 0000:2a82      popaw
│ │ ┌─────< 0000:2a83      je    0x2aa5
│ │ │││││   0000:2a85      xchg  dx, ax                                ; arg1
│ │ │││││   0000:2a86      push  0x9369
│ │ ││└───> 0000:2a89      insw  word es:[di], dx
│ │ ││ ││   0000:2a8a      sub   al, 0x20
│ │ ││ ││   0000:2a8c      cdq
│ │ ││ ││   0000:2a8d      xchg  cx, ax                                ; arg1
│ │ ││┌───< 0000:2a8e      je    0x2af8
│ │ │││││   0000:2a90  ~   xchg  sp, ax                                ; arg1
│ ────────> 0000:2a91      xchg  sp, ax                                ; arg1
│ │ │││││   0000:2a92      outsb dx, byte [si]
│ │ │││││   0000:2a93  ~   and   byte [bx + si + 0x2049], dl
│ │┌──────> 0000:2a95      dec   cx
│ │╎│││││   0000:2a96  ~   and   byte [bp + di - 0x6d89], dl
│ └───────> 0000:2a98      ja    0x2a2c
│  ╎│││││   0000:2a9a      imul  dx, word [bp + di + 0x6c6c], 0x9120
│  ╎│││││   0000:2aa0      xchg  dx, ax                                ; arg1
│  ╎│││││   0000:2aa3  ~   imul  dx, word fs:[bx + si + 0x6163], 0x7492
│  ╎└─────> 0000:2aa5      nop
│  ╎ ││││   0000:2aa6      arpl  word [bx + di - 0x6e], sp
│  ╎ ││││   0000:2aa9  ~   je    0x2b10
│  ╎ ││││   0000:2aaa  ~   and   byte gs:[bx + si - 0x6d93], dl
│  ╎ ││││   0000:2aab      and   byte [bx + si - 0x6d93], dl
│  ╎┌─────< 0000:2aaf  ~   jns   0x2ad1
│  ╎│││││   0000:2ab0  ~   and   byte [bx + si - 0x6a94], dl
│  ╎│││││   0000:2ab1      nop
│  ╎│││││   0000:2ab2      insb  byte es:[di], dx
│  ╎│││││   0000:2ab3      xchg  bp, ax                                ; arg1
│  ╎│││││   0000:2ab4  ~   imul  dx, word [si + 0x6566], 0x9320
│  ╎│││└──> 0000:2ab7  ~   and   byte gs:[bp + di + 0x6f74], dl
│  ╎│││┌──> 0000:2ab8  ~   and   byte [bp + di + 0x6f74], dl
│ │╎│└────> 0000:2abb      outsw dx, word [si]
│ │╎│ │╎│   0000:2abc      and   byte [bp + si + 0x6874], dl
│ │╎│ │╎│   0000:2ac0      xchg  bx, ax                                ; arg1
│ │╎│ │╎└─> 0000:2ac1      imul  si, word [bp + di + 0x20], 0x7490
│ │╎│ │╎    0000:2ac6      popaw
│ │╎│ │╎    0000:2ac7      xchg  di, ax                                ; arg1
│ │╎│ │╎    0000:2ac8      xchg  bx, ax                                ; arg1
│ ────────< 0000:2ac9      jae   0x2a63
│ │╎│ │╎    0000:2acb      imul  dx, word [bx - 0x69d2], 0x22
│ │╎│ │╎    0000:2ad0      xchg  sp, ax                                ; arg1
│ │╎└─────> 0000:2ad1      cmc
│ │╎  │╎    0000:2ad2      cmc
│ │╎  │╎    0000:2ad3      cmc
│ ────────> 0000:2ad4      cmc
│ │╎  │╎┌─> 0000:2ad5      out   dx, al
..
│ │╎  │╎╎   0000:2adb      outsw dx, word [si]
│ │╎  │╎╎   0000:2adc      xor   byte [bp + si + 0x20], 0x81           ; [0x81:1]=142
│ │╎ ┌────< 0000:2ae0      je    0x2b4a
│ │╎ ││╎╎   0000:2ae2      and   byte gs:[bx + si + 0x6966], al
│ │╎ ││╎╎   0000:2ae7      xor   word [bp + si + 0x73], 0x74           ; [0x74:2]=0x9547
│ │╎ ││╎╎   0000:2aeb      and   byte [bx + si - 0x7d8c], al
│ │╎ ││╎╎   0000:2aef      imul  ax, word [bp + di + 0x656d], 0x8220
│ │╎┌─────< 0000:2af5      jae   0x2b60
│ │╎│││╎╎   0000:2af7  ~   test  byte [bp - 0x7d], ch
│ │╎││└───> 0000:2af8      outsb dx, byte [si]
│ │╎││ ╎╎   0000:2af9      and   word [bp + di + 0x65], 0x20           ; [0x20:2]=0x70e
│ │╎││ ╎╎   0000:2afd      xor   word [si + 0x68], 0x2065              ; [0x2065:2]=0x7275 ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│ │╎││ ╎╎   0000:2b02      xor   byte [bp + di + 0x61], 0x84           ; [0x84:1]=255
│ │╎││ ╎╎   0000:2b06      outsb dx, byte [si]
│ │╎││ ╎╎   0000:2b07      and   word [si - 0x7b], 0x73                ; [0x73:2]=0x47be
│ │╎││ ╎╎   0000:2b0b  ~   xor   word [si + 0x6f], 0xff80              ; [0xff80:2]=0xffff
│ │╎││ ╎╎   0000:2b0d      outsw dx, word [si]
│ │╎││ ╎╎   0000:2b0e  ~   xor   byte [bp + si - 0x7c], 0x6d           ; [0x6d:1]=2
│ │ ││ ╎╎   0000:2b10  ~   test  byte [di + 0x20], ch
│ │ ││ ╎╎   0000:2b11      insw  word es:[di], dx
│ │ ││ ╎╎   0000:2b12      and   byte [bp + si - 0x789e], al
│ │ ││ ╎╎   0000:2b16      mov   byte gs:[bx + di - 0x7899], al
│ │ ││ ╎╎   0000:2b1b      popaw
│ │ ││ ╎╎   0000:2b1c      test  byte [bp + 0x2c6e], al
│ │ ││ ╎╎   0000:2b20  ~   and   byte [bp + di + 0x6f79], al
│ │ ││┌───> 0000:2b21      cmp   word [bx + di + 0x6f], 0x75
│ ││││╎╎╎   0000:2b25  ~   and   byte [bx + di + 0x6168], al
│ ││││╎╎╎   0000:2b26      sub   word [bx + si + 0x61], 0x7683         ; [0x7683:2]=0xffff
│ └───────> 0000:2b2b      and   byte gs:[bx + si - 0x7c9e], al
│ ┌───────< 0000:2b30      jb    0x2ba1
│ ││││╎└──< 0000:2b32      jne   0x2ab8
│ ││││╎ ╎   0000:2b34      push  0x7483
│ ││││╎ ╎   0000:2b38      and   byte [bx + si + 0x6f], ch
│ ││││╎ ╎   0000:2b3b      test  word [bx + si + 0x65], si
│ ││││╎ ╎   0000:2b3e      and   byte [bp + si - 0x7b97], al
│ ││││╎ ╎   0000:2b42      outsb dx, byte [si]
│ ││││╎ ╎   0000:2b43  ~   xor   word [si + 0x6f], 0x20                ; [0x20:2]=0x70e
│ │└──────> 0000:2b46      and   byte [bx + si - 0x7d93], al
│ │ │└────> 0000:2b4a      jns   0x2b6c
│ │ │ ╎ ╎   0000:2b4c      sub   byte [bx + si + 0x65], 0x61           ; [0x61:1]=22
│ │ │ ╎ └─< 0000:2b50      jb    0x2ad5
│ │ │ ╎ ┌─< 0000:2b52      je    0x2b80
│ │ │ ╎ │   0000:2b54      and   byte [bx + si + 0x7544], al
│ │ │ ╎ │   0000:2b58      sub   word [bp + di + 0x65], 0x20           ; [0x20:2]=0x70e
│ │ │ ╎ │   0000:2b5c      xchg  word [bx + si - 0x77b9], ax           ; arg1
│ │ └─────> 0000:2b60      popaw
│ │   ╎ │   0000:2b61      xchg  word [bp + si - 0x7a], si
│ │   ╎ │   0000:2b64      test  byte [bx + si + 0x616c], al
│ │   ╎ │   0000:2b68      test  byte [bp + 0x64], ch
│ │   ╎ │   0000:2b6b  ~   and   byte cs:[bx + si], ah
│ │   ╎ │   0000:2b6c      and   byte [bx + si], ah
│ │   ╎ │   0000:2b6e      or    byte [di + 0x61], 0x82                ; [0x82:1]=6
│ │   ╎┌──< 0000:2b72      jns   0x2b94
│ │   ╎││   0000:2b74      add   word [bx + 0x6f], 0x64                ; [0x64:2]=0x70e
│ │   ╎││   0000:2b78      test  byte [bx + si], ah
│ │   ╎││   0000:2b7a      and   word [bx + 0x6f], 0x20                ; [0x20:2]=0x70e
│ │   ╎││   0000:2b7e  ~   xor   byte [bx + 0x69], 0x83                ; [0x83:1]=44
│ │   ╎│└─> 0000:2b80  ~   imul  ax, word [bp + di + 0x6874], 0x8320
│ │   ╎││   0000:2b84      and   byte [bp + di - 0x7a87], al
│ │   ╎││   0000:2b88      outsw dx, word [si]
│ │  ┌────< 0000:2b89      jne   0x2bab
│ │  │╎││   0000:2b8b      sub   word [bx - 0x7c], 0x6e                ; [0x6e:2]=0xff2e
│ │  │╎││   0000:2b8f      and   byte [bp + di + 0x6f79], al
│ │  │╎││   0000:2b93  ~   xor   byte [di + 0x72], 0x20                ; [0x20:1]=14
│ │  │╎└──> 0000:2b94      jne   0x2c08
│ │  │╎ │   0000:2b96      and   byte [bp + di + 0x7571], al
│ │  │╎ │   0000:2b9a  ~   and   word [di + 0x73], 0x7483              ; [0x7483:2]=0xffff
│ │  │ ┌──< 0000:2b9e      je    0x2bce
│ │  │ ││   0000:2ba0  ~   test  byte [bp + si], ah
│ └───────> 0000:2ba1  ~   and   al, byte [si - fcn.00000a0b]
│    │ ││   0000:2ba2      test  ch, dh
│    │ ││   0000:2ba4      cmc
..
│    └────> 0000:2bab      push  bx
│     ┌───< 0000:2bac      jne   0x2c12
│     │││   0000:2bae      outsb dx, byte gs:[si]
│     │││   0000:2bb1      insb  byte es:[di], dx
│    ┌────< 0000:2bb2      jns   0x2be0
│    ││││   0000:2bb4      and   byte [si + 0x68], dh
│    ││││   0000:2bb7      and   byte gs:[bp + si + 0x6f], dh
│    ││││   0000:2bbb      outsw dx, word [si]
│    ││││   0000:2bbc      insw  word es:[di], dx
│    ││││   0000:2bbd      and   byte [bx + 0x72], ah
│   ┌─────< 0000:2bc0      ja    0x2be3
│   │││││   0000:2bc3      arpl  word [bx + 0x6c], bp
│   │││││   0000:2bc6      and   byte cs:[bx + si], ah
│   │││││   0000:2bca      inc   cx
│   │││││   0000:2bcb      and   byte [bp + si + 0x6c], ah
│   │││└──> 0000:2bce      popaw
│   │││ │   0000:2bcf      arpl  word [bp + di + 0x20], bp
│   │││ │   0000:2bd2      insw  word es:[di], dx
│   │││ │   0000:2bd3      imul  si, word [bp + di + 0x74], 0x7320
│   │││┌──< 0000:2bd8      ja    0x2c43
│  ┌──────< 0000:2bda      jb    0x2c48
│  ││││││   0000:2bdc  ~   and   byte fs:[bx + di + 0x72], ah
│  ││└────> 0000:2be0      jb    0x2c51
│  ││┌────< 0000:2be2  ~   jne   0x2c52
│  │└─────> 0000:2be3      outsb dx, byte [si]
│  │ ││││   0000:2be4      and   byte fs:[si + 0x68], dh
│  │ ││││   0000:2be8      insw  word es:[di], dx
│  │ ││││   0000:2bea      sub   al, 0x20
│  │┌───└─> 0000:2bec      je    0x2c56
│  │││││    0000:2bee      outsb dx, byte gs:[si]
│  │││││    0000:2bf0      and   byte [si + 0x6f], dh
│  │││││    0000:2bf3      outsw dx, word [si]
│  │││││    0000:2bf4      imul  sp, word [bx + si], 0x6f
│  │││││    0000:2bf7      outsb dx, byte [si]
│  │││││    0000:2bf8      and   byte [bx + di + 0x20], ah
│  │││││    0000:2bfb      push  0x6469                                ; 'id'
│  │││││    0000:2bfe  ~   outsw dx, word gs:[si]
│  │││││┌─> 0000:2bff      outsw dx, word [si]
│ ┌───────< 0000:2c00      jne   0x2c75
│ ││││││╎   0000:2c02      and   byte [bp + di + 0x68], dh
│ ││││││╎   0000:2c05      popaw
│ ────────< 0000:2c06      jo    0x2c6d
│ ││││││╎   0000:2c08      cmc
│ ││││││╎   0000:2c0a      cmc
│ ││││││╎   0000:2c0b      cmc
..
│ ││││└───> 0000:2c12      inc   cx
│ ││││ │╎   0000:2c13      jb    0x2c7a
│ ││││ │╎   ; DATA XREFS from fcn.00000110 @ 0x82b, 0x8c3, 0x8f2
│ ││││ │╎   0000:2c15      and   byte [bx + di + 0x6f], bh
│ ││││┌───< 0000:2c18      jne   0x2c3a
│ ────────< 0000:2c1a      je    0x2c84
│ ││││││╎   0000:2c1c      and   byte gs:[bp + 0x6f], ah
│ ││││││╎   0000:2c20      outsw dx, word [si]
│ ││││││╎   0000:2c21      insb  byte es:[di], dx
│ ││││││╎   0000:2c22      and   byte [bx + 0x68], dh
│ ││││││╎   0000:2c25      outsw dx, word [si]
│ ││││││╎   0000:2c26      and   byte [si + 0x61], ah
│ ────────< 0000:2c29      jb    0x2c90
│ ────────< 0000:2c2b      jae   0x2c4d
│ ────────< 0000:2c2d      je    0x2c9e
│ ││││││╎   0000:2c2f      and   byte [bp + di + 0x68], ah
│ ││││││╎   0000:2c32      popaw
│ ││││││╎   0000:2c33      insb  byte es:[di], dx
│ ││││││╎   0000:2c34      insb  byte es:[di], dx
│ ││││││╎   0000:2c35      outsb dx, byte gs:[si]
│ ││││││╎   0000:2c37  ~   and   byte gs:[ebp + 0x65], ch
│ ││││└───> 0000:2c3a      insw  word es:[di], dx
│ ││││ │╎   0000:2c3b      aas
│ ││││ │╎   0000:2c3d      and   byte [bx + si], ah
│ ││││ │╎   0000:2c3f      inc   sp
│ ││││ │╎   0000:2c40      outsw dx, word [si]
│ ││││ │╎   0000:2c41      outsb dx, byte [si]
│ ││││ │╎   0000:2c42      daa
│ ││││┌└──> 0000:2c43      je    0x2c65
│ │││││ ╎   0000:2c45      bound sp, dword [di + 0x20]
│ │└──────> 0000:2c48      popaw
│ │ │││ ╎   0000:2c49      bound si, dword [bp + di + 0x75]
│ │ │││┌──< 0000:2c4c  ~   jb    0x2cb2
│ ────────> 0000:2c4d  ~   and   word fs:[bp + si], sp
│ │ ││││╎   0000:2c4e      and   word [bp + si], sp
│ │ ││││╎   0000:2c50      cmc
│ │ ││││╎   0000:2c51      cmc
..
│ │   └───> 0000:2c65      outsw dx, word [si]
│ │   ┌───< 0000:2c66      jne   0x2c88
│ │   ││╎   ; DATA XREFS from fcn.00000000 @ 0xac, 0xcc
│ │   ││╎   ; DATA XREF from fcn.00000110 @ 0x12e
│ │   ││╎   0000:2c68      nop
│ │   ││╎   0000:2c69      insw  word es:[di], dx
│ │   ││└─< 0000:2c6a      jne   0x2bff
│ │   ││┌─< 0000:2c6c  ~   jae   0x2ce2
│ ────────> 0000:2c6d  ~   je    0x2c8f
│ │   │││   ; DATA XREF from fcn.00002000 @ 0x2b1c
│ │   │││   0000:2c6e  ~   and   byte [bp + si + 0x6562], dl
│ │   │││   0000:2c6f      xchg  dx, ax
│ │   │││   0000:2c70      bound sp, dword [di + 0x20]
│ │   │││   0000:2c73      nop
│ │   │││   0000:2c74  ~   je    0x2cde
│ └───────> 0000:2c75  ~   push  0x2065                                ; 'e ' ; "urned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108 days and transformed the once-fertile land into desert"
│     │││   0000:2c76  ~   and   byte gs:[bx + di - 0x6d9b], dl
│     │││   0000:2c7a      xchg  dx, ax                                ; arg1
│    ┌────< 0000:2c7b      jbe   0x2ce6
│    ││││   0000:2c7d      xchg  bx, ax                                ; arg1
│    ││││   0000:2c7e      insb  byte es:[di], dx
│    ││││   0000:2c7f      and   byte [bx + si + 0x614a], dl
│    ││││   0000:2c83      xchg  dx, ax                                ; arg1
│ ──┌─────< 0000:2c84      jae   0x2cee
│   │││││   0000:2c86  ~   imul  dx, word [si + 0x6e69], 0x2221
│   ││└───> 0000:2c88      imul  bp, word [bp + 0x21], 0xf522
│   ││ ││   0000:2c8d      cmc
│   ││ ││   0000:2c8e      in    ax, dx
..
│ ────────> 0000:2c90      stc
│   ││ ││   0000:2c92      and   bl, byte [bx + di + 0x6f]
│   ││┌───< 0000:2c95      jne   0x2cb7
│  ┌──────< 0000:2c97      jae   0x2d01
│  ││││││   0000:2c99      popaw
│  ││││││   0000:2c9a      insb  byte es:[di], dx
│  ││││││   0000:2c9b      insb  byte es:[di], dx
│  ││││││   0000:2c9c  ~   and   byte [bx + di + 0x64], ah
│ ────────> 0000:2c9e      jb    0x2d07
│ ────────< 0000:2ca2      jae   0x2d17
│ │││││││   0000:2ca4      and   byte [di + 0x65], ch
│ │││││││   0000:2ca7      and   byte [bx + di + 0x73], ah
│ │││││││   0000:2caa      and   byte [si + 0x68], dh
│ │││││││   0000:2cad      and   byte gs:[di + 0x6d], al
│ ────────< 0000:2cb1  ~   jo    0x2d18
│ │││││└──> 0000:2cb2  ~   jb    0x2d24
│ │││││┌──< 0000:2cb3      jb    0x2d24
│ ────────< 0000:2cb5      jb    0x2cd7
│ ││││└───> 0000:2cb7      outsw dx, word [si]
│ ││││ ││   0000:2cb8      and   byte [bp + di + 0x68], al
│ ││││ ││   0000:2cbc      popaw
│ ││││ ││   0000:2cbd      outsw dx, word [si]
│ ││││┌───< 0000:2cbe      jae   0x2cee
│ │││││││   0000:2cc0      and   byte cs:[bp + di + 0x4854], bl
│ │││││││   0000:2cc6      inc   bp
│ │││││││   0000:2cc7      and   byte [di + 0x4d], al
│ │││││││   0000:2cca      push  ax                                    ; arg1
│ │││││││   0000:2ccb      inc   bp
│ │││││││   0000:2ccc      push  dx
│ │││││││   0000:2ccd      dec   di
│ │││││││   0000:2cce      push  dx
│ │││││││   0000:2ccf      and   byte [bx + 0x46], cl
│ │││││││   0000:2cd2      and   byte [bp + di + 0x48], al
│ │││││││   0000:2cd5      inc   cx
│ │││││││   0000:2cd6      dec   di
│ ────────> 0000:2cd7      push  bx
│ │││││││   0000:2cd8      and   word [bp + si], sp
│ │││││││   0000:2cda      cmc
│ │││││││   0000:2cdb      cmc
│ │││││││   0000:2cdc      cmc
..
│ │││││││   0000:2cde      mul   word [bp + si]
│ │││││││   0000:2ce0      pop   cx
│ │││││││   0000:2ce1      outsw dx, word [si]
│ ──────└─> 0000:2ce2      jne   0x2d52
│ ││││││    0000:2ce4  ~   and   byte [esi + 0x6f], ah
│ │││└────> 0000:2ce6      outsd dx, dword [si]
│ │││ ││    0000:2ce8      outsw dx, word [si]
│ │││ ││    0000:2ce9      insb  byte es:[di], dx
│ │││ ││    0000:2cea      sub   al, 0x20
│ │││ ││    0000:2cec      dec   cx
│ │││ ││    0000:2ced  ~   and   byte [bp + di + 0x6f], ah
│ ││└─└───> 0000:2cee      arpl  word [bx + 0x75], bp
│ ││   ││   0000:2cf1      insb  byte es:[di], dx
│ ││   ││   0000:2cf2      and   byte fs:[si + 0x65], ah
│ ││  ┌───< 0000:2cf6      jae   0x2d6c
│ ││ ┌────< 0000:2cf8      jb    0x2d69
│ ││┌─────< 0000:2cfa      jns   0x2d1c
│ ────────< 0000:2cfc      jns   0x2d6d
│ ────────< 0000:2cfe      jne   0x2d20
│ │││││││   0000:2d00      outsb dx, byte [si]
│ │└──────> 0000:2d01      outsw dx, word [si]
│ │┌──────< 0000:2d02      ja    0x2d30
│ │││││││   0000:2d04      and   byte [bp + si + 0x75], ah
│ └───────> 0000:2d07      je    0x2d29
│  ││││││   0000:2d09      dec   cx
│  ││││││   0000:2d0a      and   byte [bp + 0x65], ch
│  ││││││   0000:2d0d      and   byte fs:[bx + di + 0x20], ah
│  ││││││   0000:2d12      insb  byte es:[di], dx
│  ││││││   0000:2d13  ~   imul  si, word [si + 0x74], 0x656c
│ ────────> 0000:2d17  ~   and   byte gs:[bx + di + 0x6d], ah
│  ││││││   ; DATA XREF from fcn.00000110 @ 0x83e
│ ────────> 0000:2d18      and   byte [bx + di + 0x6d], ah
│ ┌───────< 0000:2d1b  ~   jne   0x2d90
│ ││└─────> 0000:2d1c  ~   jae   0x2d83
│ ││ ││││   0000:2d1d  ~   insw  word es:[di], dx
│ ││ ││││   0000:2d1e      insw  word es:[di], dx
│ ││ ││││   0000:2d1f  ~   outsb dx, byte gs:[si]
│ ────────> 0000:2d20      outsb dx, byte [si]
│ ││┌─────< 0000:2d21      je    0x2d51
│ │││││││   0000:2d23  ~   and   byte [bx + si], ah
│ │││││└──> 0000:2d24      and   byte [bx + di + 0x20], cl
│ │││││ │   0000:2d27      ja    0x2d92
│ ────────> 0000:2d29      insb  byte es:[di], dx
│ │││││ │   0000:2d2a      insb  byte es:[di], dx
│ │││││ │   0000:2d2b      and   byte [bx + 0x69], ah
│ │││││┌──< 0000:2d2e      jbe   0x2d95
│ │└──────> 0000:2d30      and   byte [bx + di + 0x6f], bh
│ │┌──────< 0000:2d33      jne   0x2d55
│ ────────< 0000:2d35      jae   0x2da6
│ │││││││   0000:2d37      insw  word es:[di], dx
│ │││││││   0000:2d38      and   byte gs:[si + 0x69], dh
│ │││││││   0000:2d3c      insw  word es:[di], dx
│ │││││││   0000:2d3d      and   byte gs:[si + 0x6f], dh
│ │││││││   0000:2d41      and   byte [bx + si + 0x65], dh
│ ────────< 0000:2d44      jb    0x2dac
│ │││││││   0000:2d46      outsw dx, word [si]
│ ────────< 0000:2d47      jb    0x2db6
│ │││││││   0000:2d49      and   byte [bx + di + 0x6f], bh
│ ────────< 0000:2d4c      jne   0x2dc0
│ │││││││   0000:2d4e      and   byte [si + 0x69], ch
│ ──└─────> 0000:2d51  ~   je    0x2dc7
│ ────────> 0000:2d52  ~   je    0x2dc0
│ ││ ││││   0000:2d53      insb  byte es:[di], dx
│ ││ ││││   0000:2d54  ~   and   byte gs:[bx + di + 0x75], dh
│ │└──────> 0000:2d55      and   byte [bx + di + 0x75], dh
│ │┌┌─────> 0000:2d58      jae   0x2dcf
│ ││╎││││   0000:2d5b      sub   al, 0x20
│ ││╎││││   0000:2d5d  ~   bound si, dword [di + 0x74]
│ ││╎│││└─> 0000:2d5e      jne   0x2dd4
│ ││╎│││    0000:2d60  ~   and   byte [bx + di + 0x6f], bh
│ ││╎│││┌─> 0000:2d62      outsw dx, word [si]
│ ────────< 0000:2d63      jne   0x2d85
│ ││╎│││╎   0000:2d65      insw  word es:[di], dx
│ ────────< 0000:2d66      jne   0x2ddb
│ ────────< 0000:2d68  ~   je    0x2d8a
│ ││╎└────> 0000:2d69  ~   and   byte [bx + si + 0x72], dh
│ ││╎┌────< 0000:2d6a      jo    0x2dde
│ ││╎│└───> 0000:2d6c      outsw dx, word [si]
│ ────────> 0000:2d6d      insw  word es:[di], dx
│ ││╎│ │╎   0000:2d6e      imul  si, word [bp + di + 0x65], 0x6e20
│ ││╎│ │╎   0000:2d73      outsw dx, word [si]
│ ││╎│┌───< 0000:2d74      je    0x2d96
│ ────────< 0000:2d76      je    0x2de7
│ ││╎│││╎   0000:2d78      and   byte [bp + si + 0x6f], ah
│ ────────< 0000:2d7b      jb    0x2de2
│ ││╎│││╎   0000:2d7d      and   byte [di + 0x65], ch
│ ││╎│││╎   0000:2d80      and   dh, ch
│ ││╎│││╎   0000:2d83      cmc
│ ││╎│││╎   0000:2d84      cmc
..
│ ────────> 0000:2d86      and   cl, byte [bx + 0x66]
│ ────────> 0000:2d8a      and   byte [bp + di + 0x6f], ah
│ ────────< 0000:2d8d      jne   0x2e01
│ ────────< 0000:2d8f  ~   jae   0x2df6
│ └───────> 0000:2d90  ~   sub   al, 0x20
│ ┌───────> 0000:2d91  ~   sub   al, 0x20
│ ╎│╎│││╎   0000:2d92  ~   and   byte [bx + di + 0x6f], bh
│ ────────< 0000:2d93      jns   0x2e04
│ ─────└──> 0000:2d95  ~   jne   0x2db7
│ ╎│╎│└───> 0000:2d96  ~   and   byte [bx + si + 0x61], ch
│ ╎│╎│  ╎   0000:2d97      push  0x7661                                ; 'av'
│ ╎│╎│  ╎   0000:2d9a  ~   and   byte gs:[bp + 0x6f], ch
│ ╎│╎│  ╎   0000:2d9b      and   byte [bp + 0x6f], ch
│ ╎│╎│  ╎   0000:2d9e      and   byte [bx + si + 0x6f], ch
│ ╎│╎│ ┌──< 0000:2da1      jo    0x2e08
│ ╎│╎│ │╎   0000:2da3      and   byte [bx + 0x66], ch
│ ────────> 0000:2da6      and   byte [si + 0x65], ah
│ ╎│╎│ │╎   0000:2da9      popal
│ ────┌───< 0000:2dac      je    0x2e17
│ ╎│╎│││╎   0000:2dae      outsb dx, byte [si]
│ ╎│╎│││╎   0000:2daf      and   byte [ebp + 0x65], ch
│ ╎│╎│││╎   0000:2db3      and   dh, ch
│ ────────> 0000:2db6      cmc
│ ────────> 0000:2db7      cmc
│ ╎│╎│││╎   0000:2db8      out   dx, ax
..
│ ────────> 0000:2dc0      popaw
│ ╎│└─────< 0000:2dc1      jb    0x2d58
│ ╎│ │││╎   0000:2dc3      imul  sp, word [bx + si], 0xff90
│ ╎│ │││╎   0000:2dc6      insw  word es:[di], dx
│ ────────> 0000:2dc7      xchg  dx, ax                                ; arg1
│ ╎│┌─────< 0000:2dc8      jns   0x2dea
│ ╎│││││╎   0000:2dca      nop
│ ────────< 0000:2dcb      ja    0x2e3c
│ ╎│││││└─< 0000:2dcd      jb    0x2d62
│ ╎└────┌─< 0000:2dcf      jae   0x2dfe
│ ╎ │││││   0000:2dd2  ~   and   byte [bx + di - 0x6d9b], dl
│ ╎ │││││   0000:2dd4      xchg  dx, ax                                ; arg1
│ ╎┌──────< 0000:2dd6      jbe   0x2e41
│ ╎││││││   0000:2dd8      xchg  bx, ax                                ; arg1
│ ╎││││││   0000:2dd9      insb  byte es:[di], dx
│ ╎││││││   0000:2dda  ~   and   byte [bx + si - 0x6b91], dl
│ ────────> 0000:2ddb      nop
│ ╎││││││   0000:2ddc      outsw dx, word [si]
│ ╎││││││   0000:2ddd      xchg  sp, ax
│ ╎││└────> 0000:2dde      outsb dx, byte [si]
│ ╎││ │││   0000:2ddf      cmp   ah, byte gs:[bx + si]
│ ────────> 0000:2de2      nop
│ ╎││ │││   0000:2de3      dec   cx
│ ╎││ │││   0000:2de4  ~   and   byte [di - 0x6d89], dl
│ ────────> 0000:2de7      xchg  dx, ax                                ; arg1
│ ╎││ │││   0000:2de8  ~   imul  dx, word [bp + di + 0x6c6c], 0x9320
│ ╎││┌────> 0000:2de9      xchg  bx, ax                                ; arg1
│ ╎│└─────> 0000:2dea      insb  byte es:[di], dx
│ ╎│ ╎│││   0000:2deb      insb  byte es:[di], dx
│ ╎│ ╎│││   0000:2dec      and   byte [bp + di + 0x6f6e], dl
│ ────────< 0000:2df0      je    0x2d86
│ ╎│ ╎│││   0000:2df2      and   byte [bp + di + 0x7473], dl
│ ────────> 0000:2df6      outsw dx, word [si]
│ ╎│ ╎│││   0000:2df7      xchg  sp, ax                                ; arg1
│ ──┌─────> 0000:2df8      jo    0x2e1a
│ ╎│╎╎│││   0000:2dfa      nop
│ └───────< 0000:2dfb      jne   0x2d91
│  │╎╎│││   0000:2dfd      outsb dx, byte [si]
│  │╎╎││└─> 0000:2dfe      xchg  dx, ax                                ; arg1
│  │╎╎││┌─< 0000:2dff  ~   je    0x2e6a
│  │╎╎│││   0000:2e00  ~   imul  dx, word [bp + di + 0x206c], 0x4990
│ ────────> 0000:2e01      xchg  bx, ax                                ; arg1
│  │╎╎│││   0000:2e02      insb  byte es:[di], dx
│  │╎╎│││   0000:2e03  ~   and   byte [bx + si + 0x2049], dl
│ ────────> 0000:2e04      nop
│  │╎╎│││   0000:2e05      dec   cx
│  │╎╎│││   0000:2e06  ~   and   byte [bx + di + 0x6168], dl
│  │╎╎│└──> 0000:2e08      push  0x9361
│  │╎╎│┌──< 0000:2e0b      jbe   0x2e72
│  │╎╎│││   0000:2e0d      and   byte [bx + di + 0x6572], dl
│  │╎╎│││   0000:2e11      xchg  bx, ax                                ; arg1
│  │╎╎│││   0000:2e12      arpl  word [si - 0x70], bp
│  │╎╎│││   0000:2e15      popaw
│  │╎╎│││   0000:2e16  ~   imul  dx, word [bp + di + 0x656d], 0x2064
│  │╎╎└───> 0000:2e17      xchg  bx, ax                                ; arg1
│  │╎╎ ││   0000:2e18      insw  word es:[di], dx
│  │╎╎ ││   0000:2e19  ~   and   byte fs:[bx + di + 0x6874], dl
│ ────────> 0000:2e1a      and   byte fs:[bx + di + 0x6874], dl
│  │╎╎│││   0000:2e1f      and   byte gs:[bx + si + 0x696e], dl
│  │╎╎│││   0000:2e24      xchg  sp, ax                                ; arg1
│  │╎╎│││   0000:2e25      outsb dx, byte [si]
│  │╎╎│││   0000:2e26      and   byte gs:[bp + di + 0x6f68], dl
│  │╎╎│││   0000:2e2b      xchg  dx, ax                                ; arg1
│  │╎╎│││   0000:2e2c      insb  byte es:[di], dx
│ ┌───────< 0000:2e2d      jns   0x2e4f
│ ││╎╎│││   0000:2e2f      xchg  bx, ax                                ; arg1
│ ││╎╎│││   0000:2e30      arpl  word [bp + si - 0x6e], si
│ ────────< 0000:2e33      jns   0x2ea8
│ ││╎╎│││   0000:2e35      nop
│ ────────< 0000:2e36      je    0x2e99
│ ││╎╎│││   0000:2e38      insb  byte es:[di], dx
│ ││╎╎│││   0000:2e39      xchg  bx, ax                                ; arg1
│ ────────< 0000:2e3a      jae   0x2e68
│ ────────> 0000:2e3c      and   byte [bx + si - 0x6b9f], dl
│ ││╎╎│││   0000:2e40      outsb dx, byte [si]
│ │└──────> 0000:2e41      xchg  bx, ax                                ; arg1
│ │ ╎╎│││   0000:2e42      and   byte fs:[bp + si + 0x6573], dl
│ │ ╎╎│││   0000:2e47      popaw
│ │ ╎╎│││   0000:2e48      xchg  bx, ax                                ; arg1
│ │ ╎╎│││   0000:2e49      insb  byte es:[di], dx
│ │ ╎╎│││   0000:2e4a  ~   and   byte fs:[di + 0x6f79], dl
│ └───────> 0000:2e4f      outsw dx, word [si]
│  ┌──────< 0000:2e50      jne   0x2e72
│  │╎╎│││   0000:2e52      nop
│  │╎└────< 0000:2e53      jne   0x2de9
│  │╎ │││   0000:2e55      outsb dx, byte [si]
│  │╎ │││   0000:2e56      nop
│  │╎┌────< 0000:2e57      jb    0x2e7b
│  │╎││││   0000:2e5b      xchg  cx, ax                                ; arg1
│ ┌───────< 0000:2e5c      je    0x2ec6
│ ││╎││││   0000:2e5e      and   byte gs:[bx + si + 0x6165], dl
│ ││└─────< 0000:2e63      jb    0x2df8
│ ││┌─────< 0000:2e65      je    0x2ecf
│ │││││││   0000:2e67  ~   and   byte [bx + si - 0x6b91], dl
│ ────────> 0000:2e68      nop
│ │││││││   0000:2e69      outsw dx, word [si]
│ ││││││└─> 0000:2e6a      xchg  sp, ax                                ; arg1
│ ││││││    0000:2e6b      outsb dx, byte [si]
│ ││││││    0000:2e6c      xchg  bx, ax                                ; arg1
│ ││││││    0000:2e6d      arpl  word [di + 0x20], sp
│ ││││││    0000:2e70      nop
│ ││││││    0000:2e71      popaw
│ │└───└──> 0000:2e72      xchg  sp, ax                                ; arg1
│ │ │││     0000:2e73      outsb dx, byte [si]
│ │ │││     0000:2e74      xchg  bx, ax                                ; arg1
│ │ │││     0000:2e75      and   byte fs:[bp + di + 0x6f66], dl
│ │ │││     0000:2e7a      nop
│ │ │└──┌─< 0000:2e7b      jb    0x2e9d
│ │ │ │ │   0000:2e7d      xchg  bp, ax                                ; arg1
│ │ │ │ │   0000:2e7e      popaw
│ │ │ │ │   0000:2e7f      xchg  bx, ax                                ; arg1
│ │ │ │ │   0000:2e80      insb  byte es:[di], dx
│ │ │ │ │   0000:2e81      insb  byte es:[di], dx
│ │ │ │ │   0000:2e82      and   word [bx + di + 0x2294], bx
│ │ │ │ │   0000:2e86      cmc
│ │ │ └───> 0000:2e87      cmc
│ │ │   │   0000:2e88      cmc
│ │ │   │   0000:2e89      cmc
..
│ ────────> 0000:2e99      insb  byte es:[di], dx
│ │ │   │   0000:2e9a      popaw
│ │ │  ┌──< 0000:2e9b      jne   0x2f04
│ │ │  │└─> 0000:2e9d      push  0x6465                                ; 'ed'
│ │ │  │    0000:2ea0      sub   al, 0x20
│ │ │  │    0000:2ea2      popaw
│ │ │  │    0000:2ea3      outsb dx, byte [si]
│ │ │  │    0000:2ea4      and   byte fs:[si + 0x68], dh
│ ────────> 0000:2ea8      and   byte gs:[bp + di + 0x6f], dh
│ │ │  │┌─< 0000:2eac      jne   0x2f1c
│ │ │  ││   0000:2eae      and   byte fs:[bx + 0x61], dh
│ │ │ ┌───< 0000:2eb2      jae   0x2ed4
│ │ │ │││   0000:2eb4      insb  byte es:[di], dx
│ │ │ │││   0000:2eb5      imul  bp, word [bp + di + 0x65], 0x6220
│ │ │┌────< 0000:2eba      jb    0x2f21
│ │ │││││   0000:2ebc      popaw
│ │ │││││   0000:2ebd      imul  bp, word [bx + di + 0x6e], 0x67
│ │ │││││   0000:2ec1      and   byte [bx + 0x6c], ah
│ │ │││││   0000:2ec4      popaw
│ │┌──────< 0000:2ec5  ~   jae   0x2f3a
│ └───────> 0000:2ec6  ~   jae   0x2ef6
│  ││││││   0000:2ec7  ~   stc
│  ││││││   0000:2ec8      stc
│  ││││││   0000:2eca      in    ax, dx
│  ││││││   0000:2ecb      and   cl, byte [di + 0x79]
│  ││││││   0000:2ece  ~   and   byte [si + 0x61], ch
│  │└─────> 0000:2ecf      insb  byte es:[di], dx
│  │ ││││   0000:2ed0      popaw
│  │ ││││   0000:2ed1      bound di, dword [bx + di + 0x72]
│  │ │└───> 0000:2ed4      imul  bp, word [bp + 0x74], 0x7368
│  │ │ ││   0000:2ed9      and   byte [bx + di + 0x72], ah
│  │ │ ││   0000:2edc      and   byte gs:[bx + di + 0x6d], ch
│  │ │ ││   0000:2ee0      insw  word es:[di], dx
│  │ │ ││   0000:2ee1      outsb dx, byte gs:[si]
│  │ │┌───< 0000:2ee3      jae   0x2f4a
│  │ ││││   0000:2ee5      sub   al, 0x20
│  │ ││││   0000:2ee7      popaw
│  │ ││││   0000:2ee8      outsb dx, byte [si]
│  │ ││││   0000:2ee9      and   byte fs:[bp + si + 0x75], dh
│  │ ││││   0000:2eed      outsb dx, byte [si]
│  │ ││││   0000:2eee      and   byte [si + 0x65], ah
│  │┌─────< 0000:2ef1      jo    0x2f14
│  ││││││   0000:2ef4  ~   imul  bp, word [bp + 0x74], 0x206f
│  ││││││   0000:2ef6      je    0x2f67
│  ││││││   0000:2ef8      and   byte [si + 0x68], dh
│ │││││││   0000:2efb      and   byte gs:[di + 0x61], ah
│ ────────< 0000:2eff      jb    0x2f75
│ │││││││   0000:2f01      push  0x202e                                ; '. ' ; "e demon resounded over the land, Princess Felicia was turned to stone.\xfd\xf5\xf5\xfe\xfd\xf3The rain of sand continued for 108"
│ │││││└──> 0000:2f04      and   byte [bx + di + 0x6f], bl
│ │││││┌──< 0000:2f07      jne   0x2f30
│ │││││││   0000:2f09      insb  byte es:[di], dx
│ │││││││   0000:2f0a      insb  byte es:[di], dx
│ │││││││   0000:2f0b      and   byte [bp + di + 0x6f], dh
│ │││││││   0000:2f0e      outsw dx, word [si]
│ │││││││   0000:2f0f      outsb dx, byte [si]
│ │││││││   0000:2f10      and   byte [si + 0x6f], ch
│ ────────< 0000:2f13  ~   jae   0x2f7a
│ ││└─────> 0000:2f14  ~   and   byte gs:[bx + di + 0x6f], bh
│ ││ ││││   0000:2f15      and   byte [bx + di + 0x6f], bh
│ ││┌─────< 0000:2f18      jne   0x2f8c
│ │││││││   0000:2f1a  ~   and   byte [bx + 0x61], dh
│ ││││││└─> 0000:2f1c      popaw
│ ││││││┌─< 0000:2f1d      jns   0x2f4b
│ │││││││   0000:2f1f  ~   and   byte [bx + di + 0x6e], ah
│ │││└────> 0000:2f21      outsb dx, byte [si]
│ │││ │││   0000:2f22      and   byte fs:[si + 0x68], dh
│ │││ │││   0000:2f26      outsb dx, byte gs:[si]
│ │││ │││   0000:2f28      and   byte [di + 0x79], ch
│ │││ │││   0000:2f2b      and   byte [di + 0x6e], dh
│ │││┌────< 0000:2f2e  ~   jb    0x2f9e
│ │││││└──> 0000:2f30      jb    0x2f9e
│ │││││ │   0000:2f32      imul  bp, word [bp + 0x67], 0x2073
│ │││││┌──< 0000:2f37      ja    0x2fa2
│ │││││││   0000:2f39      insb  byte es:[di], dx
│ │└──────> 0000:2f3a      insb  byte es:[di], dx
│ │ │││││   0000:2f3b      and   byte [bp + 0x69], ah
│ │ │││││   0000:2f3e      outsb dx, byte [si]
│ │ │││││   0000:2f3f      imul  si, word [bp + di + 0x68], 0x7920
│ │ │││││   0000:2f44      outsw dx, word [si]
│ │┌──────< 0000:2f45      jne   0x2f67
│ │││││││   0000:2f47      outsw dx, word [si]
│ │││││││   0000:2f48  ~   and   dh, ch
│ ││││└───> 0000:2f4a  ~   and   dh, ch
│ ││││ │└─> 0000:2f4b      and   dh, ch
│ ││││ │    0000:2f4d      cmc
..
│ └───────> 0000:2f63      jb    0x2fd8
│  ││││││   0000:2f65  ~   and   byte [bp + di + 0x69], dh
│  └──────> 0000:2f67      imul  bp, word [bp + 0x63], 0x2065
│   │││││   0000:2f6c      popaw
│   │││││   0000:2f6d      and   byte [bp + di + 0x74], dh
│  ┌──────< 0000:2f70      jb    0x2fd3
│ ┌───────< 0000:2f72      jns   0x2f94
│ │││││││   0000:2f74      insw  word es:[di], dx
│ ────────> 0000:2f75      outsw dx, word [si]
│ ──────└─> 0000:2f76      jb    0x2fec
│ ││││││    0000:2f78      popaw
│ ││││││    0000:2f79      insb  byte es:[di], dx
│ ────────> 0000:2f7a      and   byte [bx + si + 0x61], ch
│ ││││││┌─< 0000:2f7d      jae   0x2f9f
│ ────────< 0000:2f7f      ja    0x2fe2
│ ││││ ││   0000:2f81      outsb dx, byte [si]
│ ││││┌───< 0000:2f82      jb    0x2feb
│ │││││││   0000:2f86      and   byte fs:[bx + di + 0x6e], ch
│ ────────< 0000:2f8a      je    0x2ffb
│ ││└─────> 0000:2f8c      and   byte [si + 0x68], dh
│ ││ ││││   0000:2f8f  ~   imul  si, word gs:[bp + si + 0x20], 0x6572
│ └───────> 0000:2f94      popaw
│  │ ││││   0000:2f96      insb  byte es:[di], dx
│  │ ││││   0000:2f97      insw  word es:[di], dx
│  │ ││││   0000:2f98      and   byte cs:[si + 0x68], dl
│  │┌─────< 0000:2f9c  ~   jns   0x2fbf
│  ││└────> 0000:2f9e  ~   and   byte [bx + di + 0x72], ah
│  ││ ││└─> 0000:2f9f      popaw
│  ││ ││┌─< 0000:2fa0      jb    0x3007
│  ││ │└──> 0000:2fa2      and   byte [bx + si + 0x75], ch
│  ││ │ │   0000:2fa5      outsb dx, byte [si]
│  ││ │┌──< 0000:2fa6      jb    0x3022                                ; fcn.00003016+0xc
│  ││ │││   0000:2fa9      and   byte [bp + 0x6f], ah
│  ││┌────< 0000:2fac      jb    0x2fce
│  ││││││   0000:2fae      push  0x6d75                                ; 'um'
│  ││││││   0000:2fb1      popaw
│  ││││││   0000:2fb2      outsb dx, byte [si]
│  ││││││   0000:2fb3      and   byte [bp + 0x6c], ah
│ ┌───────< 0000:2fb6      jae   0x3021
│ │││││││   0000:2fb9      and   dh, ch
│ │││││││   0000:2fbc      cmc
│ │││││││   0000:2fbd      cmc
..
│ ││└─────> 0000:2fbf      std
..
│ ││ └────> 0000:2fce      dec   dx
│ ││  │││   0000:2fcf      popaw
│ ││ ┌────< 0000:2fd0      jae   0x303a
│ ││ ││││   0000:2fd2  ~   imul  bp, word [bx + di + 0x6e], 0x6420
│ │└──────> 0000:2fd3      imul  bp, word [bp + 0x20], 0x6964
│ ────────> 0000:2fd8      jae   0x303b
│ │  ││││   0000:2fda      jo    0x304c                                ; fcn.00003016+0x36
│ │  ││││   0000:2fdc      popaw
│ │ ┌─────< 0000:2fde      jb    0x3045
│ │ │││││   0000:2fe0  ~   and   byte fs:[si + 0x65], ch
│ ────────> 0000:2fe2      insb  byte es:[di], dx
│ │ │││││   0000:2fe3      popaw
│ │┌──────< 0000:2fe5      jbe   0x3050
│ │││││││   0000:2fe7      outsb dx, byte [si]
│ │││││││   0000:2fe8  ~   and   byte [ebp + 0x63], ah
│ ││││└───> 0000:2feb  ~   arpl  word [bx + si + 0x6f], bp
│ ────────> 0000:2fec      push  0x656f                                ; 'oe'
│ ││││┌───< 0000:2fef      jae   0x3011                                ; fcn.0000300e+0x3
│ │││││││   0000:2ff1      outsw dx, word [si]
│ │││││││   0000:2ff2      and   byte [di + 0x61], ah
│ ────────< 0000:2ff6      jb    0x306b
│ ────────< 0000:2ff8      jo    0x3066                                ; fcn.00003016+0x50
│ │││││││   0000:2ffa  ~   imul  si, word [si + 0x74], 0x6e69
│ ────────> 0000:2ffb      je    0x3071
│ │││││││   0000:2ffd      imul  bp, word [bp + 0x67], 0x6c20
│ │││││││   ; CALL XREF from fcn.00000000 @ 0xb7
│ │││││││   ; CALL XREF from fcn.00000110 @ 0x9ea
│ │││││││   0000:3002      popaw
│ │││││││   0000:3003      jne   0x306c
│ │││││││   0000:3005  ~   push  0x6574                                ; 'te'
│ ││││││└─> 0000:3007  ~   jb    0x3038
│ ││││││    ; XREFS: CALL 0x00000040  CALL 0x000000a2  CALL 0x000000c2  
│ ││││││    ; XREFS: CALL 0x00000139  CALL 0x0000021d  CALL 0x00000450  
│ ││││││    ; XREFS: CALL 0x0000055f  CALL 0x000005ce  CALL 0x00000610  
│ ││││││    ; XREFS: CALL 0x000006fd  CALL 0x00000808  CALL 0x00000876  
│ ││││││    ; XREFS: CALL 0x00000923  CALL 0x000009f2  
│ ││││││┌─< 0000:3008      jb    0x3038
  │││││││   ; CALL XREF from fcn.0000035c @ 0x362
  │││││││   ; CALL XREF from fcn.0000049b @ 0x4a1
  │││││││   ; CALL XREF from fcn.00000d08 @ 0xd0f
..
  │││││││   ; CALL XREF from fcn.0000035c @ 0x36a
  │││││││   ; CALL XREF from fcn.0000049b @ 0x4a9
  │││││││   ; CALL XREF from fcn.00000d08 @ 0xd15
  │││││││   ; XREFS: CALL 0x00000381  CALL 0x000003a1  CALL 0x000004c0  
  │││││││   ; XREFS: CALL 0x000004e0  CALL 0x00000d2c  CALL 0x00000d4c  
│ ││││ ││   ; CALL XREFS from fcn.00000110 @ 0x168, 0x194, 0x1a8
  │││││││   ; CALL XREF from fcn.000002d5 @ 0x2ef
│ │││││││   ; CALL XREF from fcn.00000110 @ 0x295
│ │││││││   ; CALL XREFS from fcn.00000110 @ 0x2ac, 0x2b5
│ │││││││   ; CALL XREFS from fcn.00000110 @ 0x608, 0x784, 0x800, 0x86e, 0x91b
│ └───────> 0000:3021      outsb dx, byte [si]                         ; arg3
│  ││││││   ; CALL XREFS from fcn.00000110 @ 0x685, 0x77a
..
│ ││││ │└─> 0000:3038  ~   imul  bp, word [bp + 0x21], 0x59f2          ; arg2
..
│ │││  │    0000:303b      pop   cx                                    ; arg2
..
│ ││└─────> 0000:3045      outsb dx, byte [si]
│ ││   ││   0000:3046      and   byte [bx + 0x66], ch
│ ││   ││   0000:3049      and   byte [di + 0x76], ah
..
│ │└──────> 0000:3050      jae   0x3072
│ │    ││   0000:3052      outsb dx, byte [si]
│ │    ││   0000:3053      popaw
..
│ ────────> 0000:306b      and   sp, di                                ; arg3
..
│ │  ││││   0000:3071  ~   and   ax, word [bx + di]                    ; arg1
..
│ │  ││││   0000:3073      std
```

### Function 0x0000300a
```asm
; CALL XREF from fcn.0000035c @ 0x362
            ; CALL XREF from fcn.0000049b @ 0x4a1
            ; CALL XREF from fcn.00000d08 @ 0xd0f
┌ fcn.0000300a();
│           0000:300a      cmc
└           0000:300b      cmc
```

### Function 0x0000300c
```asm
; CALL XREF from fcn.0000035c @ 0x36a
            ; CALL XREF from fcn.0000049b @ 0x4a9
            ; CALL XREF from fcn.00000d08 @ 0xd15
┌ fcn.0000300c();
└           0000:300c      std
```

### Function 0x0000300e
```asm
; XREFS: CALL 0x00000381  CALL 0x000003a1  CALL 0x000004c0  
            ; XREFS: CALL 0x000004e0  CALL 0x00000d2c  CALL 0x00000d4c  
┌ fcn.0000300e(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:300e      out   dx, ax
│           0000:300f  ~   sti
│           ; XREFS: CALL 0x000000f8  CALL 0x000005b0  CALL 0x000005c3  
│           ; XREFS: CALL 0x000005e1  CALL 0x00000623  CALL 0x00000668  
│           ; XREFS: CALL 0x000006a5  CALL 0x000006ca  CALL 0x00000826  
│           ; XREFS: CALL 0x00000844  CALL 0x000008e7  CALL 0x00000953  
│           ; XREFS: CALL 0x00000c52  CALL 0x00000c73  CALL 0x00000c9f  
│           ; XREFS: CALL 0x00000cc0  
..
│           0000:3011      and   bl, byte [bx + di + 0x6f]             ; arg3
│           ; CALL XREFS from fcn.00000110 @ 0x168, 0x194, 0x1a8
│       ┌─< 0000:3014      jne   0x3036
        │   ; CALL XREF from fcn.000002d5 @ 0x2ef
..
│       │   ; CALL XREF from fcn.00000110 @ 0x295
│      ││   ; CALL XREFS from fcn.00000110 @ 0x2ac, 0x2b5
│     │││   ; CALL XREFS from fcn.00000110 @ 0x608, 0x784, 0x800, 0x86e, 0x91b
│     │││   ; CALL XREFS from fcn.00000110 @ 0x685, 0x77a
│   ││││└─> 0000:3036      push  0x6969                                ; 'ii' ; arg2
│   ││││    0000:3039      outsb dx, byte [si]
│   ││││    0000:303a      and   dx, si                                ; arg2
```

### Function 0x00003010
```asm
; XREFS: CALL 0x000000f8  CALL 0x000005b0  CALL 0x000005c3  
            ; XREFS: CALL 0x000005e1  CALL 0x00000623  CALL 0x00000668  
            ; XREFS: CALL 0x000006a5  CALL 0x000006ca  CALL 0x00000826  
            ; XREFS: CALL 0x00000844  CALL 0x000008e7  CALL 0x00000953  
            ; XREFS: CALL 0x00000c52  CALL 0x00000c73  CALL 0x00000c9f  
            ; XREFS: CALL 0x00000cc0  
┌ fcn.00003010(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
└           0000:3010      sti
```

### Function 0x00003016
```asm
; CALL XREF from fcn.000002d5 @ 0x2ef
┌ fcn.00003016(short unsigned int arg1, int16_t arg2, short unsigned int arg3, int16_t arg4, int16_t arg_1h, int16_t arg_3h, int16_t arg_4fh, int16_t arg_63h, int16_t arg_65h, int16_t arg_6fh, int16_t arg_72h, int16_t arg_8ch);
│           ; arg short unsigned int arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg short unsigned int arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           ; var int16_t var_7779h @ stack - 0x7779
│           ; var int16_t var_6f71h @ stack - 0x6f71
│           ; arg int16_t arg_1h @ stack + 0x1
│           ; arg int16_t arg_3h @ stack + 0x3
│           ; arg int16_t arg_4fh @ stack + 0x4f
│           ; arg int16_t arg_63h @ stack + 0x63
│           ; arg int16_t arg_65h @ stack + 0x65
│           ; arg int16_t arg_6fh @ stack + 0x6f
│           ; arg int16_t arg_72h @ stack + 0x72
│           ; arg int16_t arg_8ch @ stack + 0x8c
│           0000:3016      push  0x7661                                ; 'av'
│           0000:3019      outsb dx, byte gs:[si]
│           0000:301b      daa
│           ; CALL XREF from fcn.00000110 @ 0x295
│       ┌─< 0000:301c      je    0x303e
│       │   ; CALL XREFS from fcn.00000110 @ 0x2ac, 0x2b5
│      ┌──< 0000:301e      jae   0x3085
│      ││   ; CALL XREFS from fcn.00000110 @ 0x608, 0x784, 0x800, 0x86e, 0x91b
│      ││   0000:3020      outsb dx, byte gs:[si]
│      ││   ; CALL XREFS from fcn.00000110 @ 0x685, 0x77a
│      ││   0000:3022      and   byte [si + 0x68], dh
│      ││   0000:3025      and   byte gs:[si + 0x61], ch
│     ┌───< 0000:3029      jae   0x309f
│     │││   0000:302b      and   byte [bx + 0x66], ch                  ; arg3
│     │││   0000:302e  ~   and   byte [di + 0x65], ch
│     │││   ; CALL XREFS from fcn.00000301 @ 0x335, 0x345
│     │││   ; CALL XREFS from fcn.00000a79 @ 0xae2, 0xaee
..
│     │││   0000:3031      sub   al, 0x20
│     │││   0000:3033      dec   dx                                    ; arg2
│     │││   0000:3034      popaw
│    ┌────< 0000:3035  ~   jae   0x309f
..
│    ││││   0000:3037  ~   imul  bp, word [bx + di + 0x6e], 0xf221
..
│    ││││   0000:303c      pop   cx                                    ; arg2
│    ││││   0000:303d      outsw dx, word [si]
│   ┌───└─> 0000:303e      jne   0x30b2
│   ││││    0000:3040      and   byte [bp + si + 0x65], dh
│   ││││    0000:3043  ~   imul  sp, word [bx + 0x6e], 0x6f20
..
│   ││││    0000:3048      and   byte [di + 0x76], ah
│   ││││    0000:304c  ~   imul  bp, word [si + 0x20], 0x7369
..
│   ││││    0000:3051      and   byte [bp + 0x65], ch
│   ││││    0000:3054      popaw
│   ││││┌─< 0000:3055      jb    0x3077
│   │││││   0000:3057      imul  si, word [si + 0x73], 0x6520
│   │││││   0000:305c      outsb dx, byte [si]
│   │││││   0000:305d      and   word fs:[bp + si], sp
│   │││││   0000:3060      cmc
│   │││││   0000:3061      cmc
│   │││││   0000:3062      cmc
│   │││││   0000:3063      lcall [bx + si + 0x25]
│   │││││   0000:3066      lock  add byte [bx + si], al                ; arg3
│   │││││   0000:3069  ~   add   bp, word [bx + si + 0x21]             ; arg3
..
│   │││││   0000:306c      cld
│   │││││   0000:306d      cld
│   │││││   0000:306e      add   al, 7
│  ┌──────< 0000:3070      jo    0x3095
│  ││││││   0000:3072      add   bp, di
│  ││││││   0000:3074      add   al, 7
│ ┌───────< 0000:3076  ~   jo    0x309c
│ ││││││└─> 0000:3077  ~   and   al, 4
│ ││││││    0000:3078      add   al, 0xfd
│ ││││││    0000:307a      add   al, 7
│ ││││││┌─< 0000:307c      js    0x30a3
│ │││││││   0000:307e      push  es
│ │││││││   0000:307f      inc   byte [si]
│ │││││││   0000:3081      pop   es
│ ────────< 0000:3082      js    0x30ac
│ │││││││   0000:3084      push  es
│ │││││└──> 0000:3085      add   al, byte [si]
│ │││││ │   0000:3087      pop   es
│ │││││┌──< 0000:3088      jo    0x30b3
│ │││││││   0000:308a      add   al, 3
│ │││││││   0000:308c      add   al, 7
│ ────────< 0000:308e      jo    0x30ba
│ │││││││   0000:3090      add   word [bp + di], ax                    ; arg1
│ │││││││   0000:3092      add   al, 7
│ │││││││   0000:3094  ~   push  0xfc2c
│ │└──────> 0000:3095      sub   al, 0xfc
│ │ │││││   0000:3097      add   al, 4
│ │ │││││   0000:3099      pop   es
│ │ │││││   0000:309a      inc   word [bx + di]                        ; arg3
│ └───────> 0000:309c      or    byte [bx + di], al                    ; arg3
│   │││││   0000:309e      inc   dx                                    ; arg2
│   │└└───> 0000:309f      add   si, word gs:[bx + 0x61]               ; arg3
│   │  │└─> 0000:30a3      add   al, 0x72
│   │  │    0000:30a5      sub   al, 0x20
│   │  │    0000:30a8      add   sp, word [bp + 0x6f]
│   │  │    0000:30ab  ~   add   al, 0x72
│ ────────> 0000:30ac      jb    0x30ce
│   │  │    0000:30ae      add   al, 0x49
│   │  │    0000:30b0      and   byte [bx + di], al                    ; arg3
│   └───┌─< 0000:30b2  ~   jae   0x311c
│      └──> 0000:30b3  ~   push  0x361
│       │   0000:30b4      popaw
│       │   0000:30b5      add   bp, word [si + 0x6c]
│       │   0000:30b8  ~   and   byte [bx + 4], dh                     ; arg3
│ ────────> 0000:30ba      add   al, 0x61
│       │   0000:30bc      imul  ax, word [bp + di], 0x65
│       │   0000:30bf      inc   word [bx + di]                        ; arg3
│       │   0000:30c1      push  es
│       │   0000:30c2      add   sp, word [bp + 0x72]
│       │   0000:30c5      outsw dx, word [si]
│       │   0000:30c6      add   bp, word [di + 0x20]
│       │   0000:30c9      add   ch, byte [di + 1]
│      ┌──< 0000:30cc      jns   0x30ee
│      ││   0000:30ce      add   si, word [bp + di + 1]
│      ││   0000:30d1      insb  byte es:[di], dx
│      ││   0000:30d2      add   word gs:[bx + si + 0x20], si          ; arg3
│      ││   0000:30d7      outsw dx, word [si]
│      ││   0000:30d8      and   byte [bp + di], al
│      ││   0000:30db      xor   ch, byte [si]
│      ││   0000:30dd      add   al, 0x30
│      ││   0000:30df      xor   byte [bx + si], dh                    ; arg3
│      ││   0000:30e1      and   byte [bx + di], al                    ; arg3
│     ┌───< 0000:30e3      jns   0x314a
│     │││   0000:30e5      add   al, 0x61
│    ┌────< 0000:30e7      jb    0x30ec
│   ┌─────< 0000:30e9  ~   jae   0x30ea
│   └─────> 0000:30ea  ~   inc   word [bx + di]                        ; arg3
│    ││││   0000:30eb  ~   add   word [bp + si], ax                    ; arg1
│    └────> 0000:30ec      add   al, byte [si]
│     │└──> 0000:30ee      popaw
│     │ │   0000:30ef      add   ch, byte [bp + 3]
│     │ │   0000:30f2      and   byte fs:[bp + di], al
│     │ │   0000:30f5      outsw dx, word [si]
│     │ │   0000:30f6      add   ch, byte [bp + 0x63]
│     │ │   0000:30f9      and   byte gs:[si], al
│     │ │   0000:30fc      popaw
│     │ │   0000:30fd      popaw
│     │ │   0000:30ff      add   word [bx + di + 0x6e], bp             ; arg3
│     │ │   0000:3102      and   byte [bp + si], al
│     │┌──< 0000:3104      jb    0x316b
│     │││   0000:3106      add   al, 0x69
│     │││   0000:3108      add   word [bx + 0x6e], sp                  ; arg3
│     │││   0000:310b      and   byte [bp + di], al
│     │││   0000:310d      outsw dx, word [si]
│    ┌────< 0000:310e      jbe   0x3114
│   ┌─────< 0000:3110      jb    0x3133
│   │││││   0000:3113  ~   add   word [si + 0x68], si
│   │└────> 0000:3114      je    0x317e
│   │ │││   0000:3116      and   byte gs:[si], al
│   │┌────< 0000:3119      ja    0x318a
│  ┌──────< 0000:311b  ~   jb    0x3120
│  │││││└─> 0000:311c  ~   add   bp, word [si + 0x64]
│  │││││    0000:311d      insb  byte es:[di], dx
│  │││││    0000:311e  ~   add   al, byte cs:[bx + si]                 ; arg3
│  └──────> 0000:3120      add   al, byte [bx + si]                    ; arg3
│   ││││    0000:3122      add   word [bx + di], ax                    ; arg3
│   ││││    0000:3124      add   word [bp + si], ax                    ; arg1
│   ││││    0000:3126      add   al, byte [bx + di]                    ; arg3
│   ││││    0000:3128      add   word [bp + si], ax                    ; arg1
│   ││││    0000:312a      add   al, byte [bp + di]
│   ││││    0000:312c      add   ax, word [di]                         ; arg1
│   ││││    0000:312e      add   byte [bx + si], al                    ; arg3
│   ││││    0000:3130      add   byte [bx + si], al                    ; arg3
│   ││││    0000:3132  ~   add   byte [bx + si], al                    ; arg3
│   └─────> 0000:3133      add   byte [bx + si], al                    ; arg3
│    │││    0000:3135      add   word [bp + si], ax                    ; arg1
│    │││    0000:3137      add   ax, word [si]                         ; arg1
│    │││    0000:3139      add   byte [bx + si], al                    ; arg3
│    │││    0000:313b      add   byte [bx + si], al                    ; arg3
│    │││    0000:313d      add   byte [bx + si], al                    ; arg3
│    │││    0000:313f      add   ax, 0x706                             ; arg1
│    │││    0000:3142      or    byte [bx + di], cl                    ; arg3
│    │││    0000:3144      or    cl, byte [bp + di]
│    │││    0000:3146      or    al, 0xd
│    │││    0000:3148      push  cs
│    │││    0000:3149  ~   movups xmm2, xmmword [bx + di]              ; arg3
│    │└───> 0000:314a      adc   byte [bx + di], dl                    ; arg3
│    │ │    0000:314c      adc   dl, byte [bp + di]
│    │ │    0000:314e      adc   al, 0x15
│    │ │    0000:3150      push  ss
│    │ │    0000:3151      add   byte [bx + si], al                    ; arg3
│    │ │    0000:3153      add   byte [bx], dl                         ; arg3
│    │ │    0000:3155      sbb   byte [bx + di], bl                    ; arg3
│    │ │    0000:3157      sbb   bl, byte [bp + di]
│    │ │    0000:3159      sbb   al, 0x1d
│    │ │    0000:315b      push  ds
│    │ │    0000:315c      pop   ds
│    │ │    ; DATA XREFS from fcn.00000110 @ 0x87e, 0x89f
│    │ │    ;-- str..:
│    │ │    0000:315d     .string " !\"#$%&'()*+,-." ; len=16          ; arg3
│    │ └──> 0000:316b     .string " !\"#$%&'()*+,-." ; len=16          ; arg3
..
│    │      0000:316e      das
│    │      0000:316f      xor   byte [bx + di], dh                    ; arg3
│    │      0000:3171      xor   dh, byte [bp + di]
│    │      0000:3173      add   byte [bx + si], al                    ; arg3
│    │      0000:3175      xor   al, 0x35
│    │      0000:3177      aaa
│    │      0000:3179      cmp   byte [bx + si], al                    ; arg3
│    │      0000:317b  ~   cmp   word [0x3a], sp                       ; [0x3a:2]=0xa8e8
│    │      0000:317e      add   byte [bx + si], al                    ; arg3
│    │      ; DATA XREF from fcn.00000110 @ 0x244
│    │      0000:3180      add   byte [bx + si], al                    ; arg3
│    │      0000:3182      add   byte [bx + si], al                    ; arg3
│    │      0000:3184      add   byte [bx + si], al                    ; arg3
│    │      0000:3186      add   byte [bx + si], al                    ; arg3
│    │      0000:3188      add   byte [bx + si], al                    ; arg3
│    └────> 0000:318a      add   byte [bx + si], al                    ; arg3
│           0000:318c      add   byte [bx + si], al                    ; arg3
│           0000:318e      add   byte [bx + si], al                    ; arg3
│           0000:3190      add   byte [bp + di], bh
│           0000:3192      cmp   al, 0x3d
│           0000:3194      add   byte [bx + si], al                    ; arg3
│           0000:3196      add   byte [0x403f], bh                     ; [0x403f:1]=255
│           0000:319a      inc   cx                                    ; arg4
│           0000:319b      add   byte [bx + si], al                    ; arg3
│           0000:319d      add   byte [bx + si], al                    ; arg3
│           0000:319f      add   byte [bx + si], al                    ; arg3
│           0000:31a1      add   byte [bx + si], al                    ; arg3
│           0000:31a3      add   byte [bx + si], al                    ; arg3
│           0000:31a5      add   byte [bx + si], al                    ; arg3
│           0000:31a7      add   byte [bx + si], al                    ; arg3
│           0000:31a9      add   byte [bx + si], al                    ; arg3
│           0000:31ab      add   byte [bx + si], al                    ; arg3
│           0000:31ad      add   byte [bx + si], al                    ; arg3
│           0000:31af      add   byte [bx + si], al                    ; arg3
│           0000:31b1      add   byte [bx + si], al                    ; arg3
│           0000:31b3      add   byte [bx + si], al                    ; arg3
│           0000:31b5      add   byte [bx + si], al                    ; arg3
│           0000:31b7      add   byte [bx + si], al                    ; arg3
│           0000:31b9      inc   dx                                    ; arg2
│           0000:31ba      inc   bx                                    ; arg3
│           0000:31bb      inc   sp
│           0000:31bc      inc   bp
│           0000:31bd      add   byte [bx + si], al                    ; arg3
│           0000:31bf      add   byte [bx + si], al                    ; arg3
│           0000:31c1      add   byte [bx + si], al                    ; arg3
│           0000:31c3      add   byte [bx + si], al                    ; arg3
│           0000:31c5      add   byte [bx + si], al                    ; arg3
│           0000:31c7      add   byte [bx + si], al                    ; arg3
│           0000:31c9      add   byte [bx + si], al                    ; arg3
│           0000:31cb      add   byte [bx + si], al                    ; arg3
│           0000:31cd      add   byte [bx + si], al                    ; arg3
│           0000:31cf      add   byte [bx + si], al                    ; arg3
│           0000:31d1      add   byte [bx + si], al                    ; arg3
│           0000:31d3      add   byte [bx + si], al                    ; arg3
│           0000:31d5      add   byte [bx + si], al                    ; arg3
│           0000:31d7      add   byte [bx + si], al                    ; arg3
│           0000:31d9      add   byte [bx + si], al                    ; arg3
│           0000:31db      inc   si
│           0000:31dc      inc   di
│           0000:31dd      push  ss
│           0000:31de      add   byte [bx + si], al                    ; arg3
│           0000:31e0      add   byte [bx + si], al                    ; arg3
│           0000:31e2      add   byte [bx + si], al                    ; arg3
│           0000:31e4      add   byte [bx + si], al                    ; arg3
│           0000:31e6      add   byte [bx + si], al                    ; arg3
│           0000:31e8      add   byte [bx + si], al                    ; arg3
│           0000:31ea      add   byte [bx + si], al                    ; arg3
│           0000:31ec      add   byte [bx + si], al                    ; arg3
│           0000:31ee      add   byte [bx + si], al                    ; arg3
│           0000:31f0      add   byte [bx + si], al                    ; arg3
│           0000:31f2      add   byte [bx + si], al                    ; arg3
│           0000:31f4      add   byte [bx + si], al                    ; arg3
│           0000:31f6      add   byte [bx + si], al                    ; arg3
│           0000:31f8      add   byte [bx + si], al                    ; arg3
│           0000:31fa      add   byte [bx + si], al                    ; arg3
│           0000:31fc      add   byte [bx + si + 0x49], cl             ; arg3
│           0000:31ff      dec   dx                                    ; arg2
│           0000:3200      add   byte [bx + si], al                    ; arg3
│           0000:3202      add   byte [bx + si], al                    ; arg3
│           0000:3204      add   byte [bx + si], al                    ; arg3
│           0000:3206      add   byte [bx + si], al                    ; arg3
│           0000:3208      add   byte [bx + si], al                    ; arg3
│           0000:320a      add   byte [bx + si], al                    ; arg3
│           0000:320c      add   byte [bx + si], al                    ; arg3
│           0000:320e      add   byte [bx + si], al                    ; arg3
│           0000:3210      add   byte [bx + si], al                    ; arg3
│           0000:3212      add   byte [bx + si], al                    ; arg3
│           0000:3214      add   byte [bx + si], al                    ; arg3
│           0000:3216      add   byte [bx + si], al                    ; arg3
│           0000:3218      add   byte [bx + si], al                    ; arg3
│           0000:321a      add   byte [bx + si], al                    ; arg3
│           0000:321c      add   byte [bx + si], al                    ; arg3
│           0000:321e      add   byte [bx + si], al                    ; arg3
│           0000:3220      add   byte [bx + si], al                    ; arg3
│           0000:3222      add   byte [bx + si], al                    ; arg3
│           0000:3224      add   byte [bx + si], al                    ; arg3
│           0000:3226      add   byte [bx + si], al                    ; arg3
│           0000:3228      add   byte [bx + si], al                    ; arg3
│           0000:322a      add   byte [bx + si], al                    ; arg3
│           0000:322c      add   byte [bx + si], al                    ; arg3
│           0000:322e      add   byte [bx + si], al                    ; arg3
│           0000:3230      add   byte [bx + si], al                    ; arg3
│           0000:3232      add   byte [bx + si], al                    ; arg3
│           0000:3234      add   byte [bx + si], al                    ; arg3
│           0000:3236      add   byte [bx + si], al                    ; arg3
│           0000:3238      add   byte [bx + si], al                    ; arg3
│           0000:323a      add   byte [bx + si], al                    ; arg3
│           0000:323c      add   byte [bx + si], al                    ; arg3
│           0000:323e      add   byte [bx + si], al                    ; arg3
│           0000:3240      add   byte [bx + si], al                    ; arg3
│           0000:3242      add   byte [bx + si], al                    ; arg3
│           0000:3244      add   byte [bx + si], al                    ; arg3
│           0000:3246      add   byte [bx + si], al                    ; arg3
│           0000:3248      add   byte [bx + si], al                    ; arg3
│           0000:324a      add   byte [bx + si], al                    ; arg3
│           0000:324c      add   byte [bx + si], al                    ; arg3
│           0000:324e      add   byte [bx + si], al                    ; arg3
│           0000:3250      add   byte [bx + si], al                    ; arg3
│           0000:3252      add   byte [bx + si], al                    ; arg3
│           0000:3254      add   byte [bx + si], al                    ; arg3
│           0000:3256      add   byte [bx + si], al                    ; arg3
│           0000:3258      add   byte [bx + si], al                    ; arg3
│           0000:325a      add   byte [bx + si], al                    ; arg3
│           0000:325c      add   byte [bx + si], al                    ; arg3
│           0000:325e      add   byte [bx + si], al                    ; arg3
│           0000:3260      add   byte [bp + di + 0x4c], cl
│           0000:3263      dec   bp
│           0000:3264      add   byte [bx + si], al                    ; arg3
│           0000:3266      add   byte [bx + si], al                    ; arg3
│           0000:3268      add   byte [bx + si], al                    ; arg3
│           0000:326a      add   byte [bx + si], al                    ; arg3
│           0000:326c      add   byte [bx + si], al                    ; arg3
│           0000:326e      add   byte [bx + si], al                    ; arg3
│           0000:3270      add   byte [bx + si], al                    ; arg3
│           0000:3272      add   byte [bx + si], al                    ; arg3
│           0000:3274      add   byte [bx + si], al                    ; arg3
│           0000:3276      add   byte [bx + si], al                    ; arg3
│           0000:3278      add   byte [bx + si], al                    ; arg3
│           0000:327a      add   byte [bx + si], al                    ; arg3
│           0000:327c      add   byte [bx + si], al                    ; arg3
│           0000:327e      add   byte [bx + si], al                    ; arg3
│           0000:3280      add   byte [bx + si], al                    ; arg3
│           0000:3282      add   byte [bp + 0x4f], cl
│           0000:3285      push  ax                                    ; arg1
│           0000:3286      add   byte [bx + si], al                    ; arg3
│           0000:3288      add   byte [bx + si], al                    ; arg3
│           0000:328a      add   byte [bx + si], al                    ; arg3
│           0000:328c      add   byte [bx + si], al                    ; arg3
│           0000:328e      add   byte [bx + si], al                    ; arg3
│           0000:3290      add   byte [bx + si], al                    ; arg3
│           0000:3292      add   byte [bx + si], al                    ; arg3
│           0000:3294      add   byte [bx + si], al                    ; arg3
│           0000:3296      add   byte [bx + si], al                    ; arg3
│           0000:3298      add   byte [bx + si], al                    ; arg3
│           0000:329a      add   byte [bx + si], al                    ; arg3
│           0000:329c      add   byte [bx + si], al                    ; arg3
│           0000:329e      add   byte [bx + si], al                    ; arg3
│           0000:32a0      add   byte [bx + si], al                    ; arg3
│           0000:32a2      add   byte [bx + si], al                    ; arg3
│           0000:32a4      add   byte [bx + si], al                    ; arg3
│           0000:32a6      push  cx
│           0000:32a7      add   byte [bx + si], al                    ; arg3
│           0000:32a9      add   byte [bx + si], al                    ; arg3
│           0000:32ab      add   byte [bx + si], al                    ; arg3
│           0000:32ad      add   byte [bx + si], al                    ; arg3
│           0000:32af      add   byte [bx + si], al                    ; arg3
│           0000:32b1      add   byte [bx + si], al                    ; arg3
│           0000:32b3      add   byte [bx + si], al                    ; arg3
│           0000:32b5      add   byte [bx + si], al                    ; arg3
│           0000:32b7      add   byte [bx + si], al                    ; arg3
│           0000:32b9      add   byte [bx + si], al                    ; arg3
│           0000:32bb      add   byte [bx + si], al                    ; arg3
│           0000:32bd      add   byte [bx + si], al                    ; arg3
│           0000:32bf      add   byte [bx + si], al                    ; arg3
│           0000:32c1      add   byte [bx + si], al                    ; arg3
│           0000:32c3      add   byte [bx + si], al                    ; arg3
│           0000:32c5      add   byte [bx + si], al                    ; arg3
│           0000:32c7      add   byte [bp + si + 0x53], dl
│           0000:32ca      add   byte [bx + si], al                    ; arg3
│           0000:32cc      add   byte [bx + si], al                    ; arg3
│           0000:32ce      add   byte [bx + si], al                    ; arg3
│           0000:32d0      add   byte [bx + si], al                    ; arg3
│           0000:32d2      add   byte [bx + si], al                    ; arg3
│           0000:32d4      add   byte [bx + si], al                    ; arg3
│           0000:32d6      add   byte [bx + si], al                    ; arg3
│           0000:32d8      add   byte [bx + si], al                    ; arg3
│           0000:32da      add   byte [bx + si], al                    ; arg3
│           0000:32dc      add   byte [bx + si], al                    ; arg3
│           0000:32de      add   byte [bx + si], al                    ; arg3
│           0000:32e0      add   byte [bx + si], al                    ; arg3
│           0000:32e2      add   byte [bx + si], al                    ; arg3
│           0000:32e4      add   byte [bx + si], al                    ; arg3
│           0000:32e6      add   byte [bx + si], al                    ; arg3
│           0000:32e8      add   byte [bx + si], al                    ; arg3
│           0000:32ea      push  sp
│           0000:32eb      push  bp
│           0000:32ec      push  si
│           0000:32ed      add   byte [bx + si], al                    ; arg3
│           0000:32ef      add   byte [bx + si], al                    ; arg3
│           0000:32f1      add   byte [bx + si], al                    ; arg3
│           0000:32f3      add   byte [bx + si], al                    ; arg3
│           0000:32f5      add   byte [bx + si], al                    ; arg3
│           0000:32f7      add   byte [bx + si], al                    ; arg3
│           0000:32f9      add   byte [bx + si], al                    ; arg3
│           0000:32fb      add   byte [bx + si], al                    ; arg3
│           0000:32fd      add   byte [bx + si], al                    ; arg3
│           0000:32ff      add   byte [bx + si], al                    ; arg3
│           0000:3301      add   byte [bx + si], al                    ; arg3
│           0000:3303      add   byte [bx + si], al                    ; arg3
│           0000:3305      add   byte [bx + si], al                    ; arg3
│           0000:3307      add   byte [bx + si], al                    ; arg3
│           0000:3309      add   byte [bx + si], al                    ; arg3
│           0000:330b      add   byte [bx + 0x58], dl                  ; arg3
│           0000:330e      pop   cx
│           0000:330f      pop   dx
│           0000:3310      add   byte [bx + si], al                    ; arg3
│           0000:3312      add   byte [bx + si], al                    ; arg3
│           0000:3314      add   byte [bx + si], al                    ; arg3
│           0000:3316      add   byte [bx + si], al                    ; arg3
│           0000:3318      add   byte [bx + si], al                    ; arg3
│           0000:331a      add   byte [bx + si], al                    ; arg3
│           0000:331c      add   byte [bx + si], al                    ; arg3
│           0000:331e      add   byte [bx + si], al                    ; arg3
│           0000:3320      add   byte [bx + si], al                    ; arg3
│           0000:3322      add   byte [bx + si], al                    ; arg3
│           0000:3324      add   byte [bx + si], al                    ; arg3
│           0000:3326      add   byte [bx + si], al                    ; arg3
│           0000:3328      add   byte [bx + si], al                    ; arg3
│           0000:332a      add   byte [bx + si], al                    ; arg3
│           0000:332c      add   byte [bx + si], al                    ; arg3
│           0000:332e      pop   bx
│           0000:332f      pop   sp
│           0000:3330      pop   bp
│           0000:3331      pop   si
│           0000:3332      add   byte [bx + si], al
│           0000:3334      add   byte [bx + si], al
│           0000:3336      add   byte [bx + si], al
│           ; DATA XREF from fcn.00000a79 @ 0xc6d
│           0000:3338      add   byte [bx + si], al
│           0000:333a      add   byte [bx + si], al
│           0000:333c      add   byte [bx + si], al
│           0000:333e      add   byte [bx + si], al
│           0000:3340      add   byte [bx + si], al
│           0000:3342      add   byte [bx + si], al
│           0000:3344      add   byte [bx + si], al
│           0000:3346      add   byte [bx + si], al
│           0000:3348      add   byte [bx + si], al
│           0000:334a      add   byte [bx + si], al
│           0000:334c      add   byte [bx + si], al
│           0000:334e      add   byte [bx + si], al
│           ; DATA XREF from fcn.00000a79 @ 0xc4c
│           ;-- str.ab:
│           0000:3350     .string "_`ab" ; len=5
│           0000:3355      add   byte [bx + si], al
│           0000:3357      add   byte [bx + si], al
│           0000:3359      add   byte [bx + si], al
│           0000:335b      add   byte [bx + si], al
│           0000:335d      add   byte [bx + si], al
│           0000:335f      add   byte [bx + si], al
│           0000:3361      add   byte [bx + si], al
│           0000:3363      add   byte [bx + si], al
│           0000:3365      add   byte [bx + si], al
│           0000:3367      add   byte [bx + si], al
│           0000:3369      add   byte [bx + si], al
│           0000:336b      add   byte [bx + si], al
│           0000:336d      add   byte [bx + si], al
│           0000:336f      add   byte [bx + si], al
│           0000:3371      add   byte [bp + di + 0x64], ah
│           0000:3374      add   byte [bx + si], al
│           0000:3376      add   byte [bx + si], al
│           0000:3378      add   byte [bx + si], al
│           0000:337a      add   byte [bx + si], al
│           0000:337c      add   byte [bx + si], al
│           0000:337e      add   byte [bx + si], al
│           0000:3380      add   byte [bx + si], al
│           0000:3382      add   byte [bx + si], al
│           0000:3384      add   byte [bx + si], al
│           0000:3386      add   byte [bx + si], al
│           0000:3388      add   byte [bx + si], al
│           0000:338a      add   byte [bx + si], al
│           0000:338c      add   byte [bx + si], al
│           0000:338e      add   byte [bx + si], al
│           0000:3390      add   byte [bx + si], al
│           0000:3392      add   byte [bx + si], al
│           0000:3394      push  0x69                                  ; 'i'
│           0000:339c      add   byte [bx + si], al
│           0000:339e      add   byte [bx + si], al
│           0000:33a0      add   byte [bx + si], al
│           0000:33a2      add   byte [bx + si], al
│           0000:33a4      add   byte [bx + si], al
│           0000:33a6      add   byte [bx + si], al
│           0000:33a8      add   byte [bx + si], al
│           0000:33aa      add   byte [bx + si], al
│           0000:33ac      add   byte [bx + si], al
│           0000:33ae      add   byte [bx + si], al
│           0000:33b0      add   byte [bx + si], al
│           0000:33b2      add   byte [bx + si], al
│           0000:33b4      add   byte [bx + si], al
│           0000:33b6      push  0x6b                                  ; 'k'
│           0000:33b8      insb  byte es:[di], dx
│           0000:33b9      insw  word es:[di], dx
│           0000:33ba      outsb dx, byte [si]
│           0000:33bb      outsw dx, word [si]
│       ┌─< 0000:33bc      jo    0x342f
│      ┌──< 0000:33be      jb    0x3433
│      ││   0000:33c0      add   byte [bx + si], al
│      ││   0000:33c2      add   byte [bx + si], al
│      ││   0000:33c4      add   byte [bx + si], al
│      ││   0000:33c6      add   byte [bx + si], al
│      ││   0000:33c8      add   byte [bx + si], al
│      ││   0000:33ca      add   byte [bx + si], al
│      ││   0000:33cc      add   byte [bx + si], al
│      ││   0000:33ce      add   byte [bx + si], al
│      ││   0000:33d0      add   byte [bx + si], al
│      ││   0000:33d2      add   byte [bx + si], al
│      ││   0000:33d4      add   byte [bx + si], al
│      ││   0000:33d6      add   byte [bx + si], al
│     ┌───< 0000:33d8      je    0x344f
│    ┌────< 0000:33da      jbe   0x3453
│   ┌─────< 0000:33dc      js    0x3457
│  ┌──────< 0000:33de      jp    0x345b
│ ┌───────< 0000:33e0      jl    0x345f
│ │││││││   0000:33e2      add   byte [bx + si], al
│ │││││││   0000:33e4      add   byte [bx + si], al
│ │││││││   0000:33e6      add   byte [bx + si], al
│ │││││││   0000:33e8      add   byte [bx + si], al
│ │││││││   0000:33ea      add   byte [bx + si], al
│ │││││││   0000:33ec      add   byte [bx + si], al
│ │││││││   0000:33ee      add   byte [bx + si], al
│ │││││││   0000:33f0      add   byte [bx + si], al
│ │││││││   0000:33f2      add   byte [bx + si], al
│ │││││││   0000:33f4      add   byte [bx + si], al
│ │││││││   0000:33f6      add   byte [bx + si], al
│ │││││││   0000:33f8      add   byte [bx + si], al
│ ────────< 0000:33fa      jle   0x347b
│ │││││││   0000:33fc      add   byte [bx + di - 0x7c7e], 0x84         ; [0x84:1]=255
│ │││││││   0000:3401      test  word [bp - 0x7779], ax                ; arg1
│ │││││││   0000:3405      mov   word [bx + si], ax                    ; arg1
│ │││││││   0000:3407      add   byte [bx + si], al
│ │││││││   0000:3409      add   byte [bx], cl
│ │││││││   0000:340b      mov   cl, byte [bp + di + 0x8c]
│ │││││││   0000:340f      add   byte [bx + si], al
│ │││││││   0000:3411      add   byte [bx + si], al
│ │││││││   0000:3413      add   byte [bx + si], al
│ │││││││   0000:3415      add   byte [bx + si], al
│ │││││││   0000:3417      add   byte [bx + si], al
│ │││││││   0000:3419      add   byte [bx + si], al
│ │││││││   0000:341b      add   byte [bx], ch
│ │││││││   0000:341d      lea   cx, [bp - 0x6f71]
│ │││││││   0000:3421      xchg  cx, ax                                ; arg1
│ │││││││   0000:3422      xchg  dx, ax                                ; arg1
│ │││││││   0000:3423      xchg  bx, ax                                ; arg1
│ │││││││   0000:3424      xchg  sp, ax                                ; arg1
│ │││││││   0000:3425      xchg  bp, ax                                ; arg1
│ │││││││   0000:3426      xchg  si, ax                                ; arg1
│ │││││││   0000:3427      xchg  di, ax                                ; arg1
│ │││││││   0000:3428      add   byte [bx + si], al
│ │││││││   0000:342a      add   byte [bx + si - 0x6567], bl
│ │││││││   0000:342e      wait
│ ││││││└─> 0000:342f      pushf
│ ││││││    0000:3430      popf
│ ││││││    0000:3431      add   byte [bx + si], al
│ │││││└──> 0000:3433      add   byte [bx + si], al
│ │││││     0000:3435      add   byte [bx + si], al
│ │││││     0000:3437      add   byte [bx + si], al
│ │││││     0000:3439      add   byte [bx + si], al
│ │││││     0000:343b      add   byte [bx + si], al
│ │││││     0000:343d      add   byte [bx + si], al
│ │││││     0000:343f      sahf
│ │││││     0000:3440      lahf
│ │││││     0000:3441      mov   al, byte [0xa2a1]                     ; [0xa2a1:1]=255
│ │││││     0000:3444      mov   word [0xa5a4], ax                     ; [0xa5a4:2]=0xffff ; arg1
│ │││││     0000:3447      cmpsb byte [si], byte ptr es:[di]
│ │││││     0000:3448      cmpsw word [si], word ptr es:[di]
│ │││││     0000:3449      test  al, 0xa9
│ │││││     0000:344b      push  ss
│ │││││     0000:344c  ~   add   byte [bp + si - 0x5355], ch
│ ││││└───> 0000:344f      lodsb al, byte [si]
│ ││││      0000:3450      lodsw ax, word [si]
│ ││││      0000:3451      scasb al, byte es:[di]
│ ││││      0000:3452      scasw ax, word es:[di]
│ │││└────> 0000:3453      add   byte [bx + si], al
│ │││       0000:3455      add   byte [bx + si], al
│ ││└─────> 0000:3457      add   byte [bx + si], al
│ ││        0000:3459      add   byte [bx + si], al
│ │└──────> 0000:345b      add   byte [bx + si], al
│ │         0000:345d      add   byte [bx + si], al
│ └───────> 0000:345f      add   byte [bx + si], al
│           0000:3461      mov   al, 0xb1
│           0000:3463      mov   dl, 0xb3
│           0000:3465      mov   ah, 0xb5
│           0000:3467      mov   dh, 0xb7
│           0000:3469      mov   ax, 0x2626                            ; '&&' ; "e.\"\xf5\xf5\xf5\xf5\xfe\xf0\xfd\xf3\xfaHaving spoken these words, the Spirit disappeared.\xf5\xf5\xf5\xfe\xf7King Felishika cou"
│           0000:346c      mov   cx, 0xbbba
│           0000:346f      mov   sp, 0xbebd
│           0000:3472      mov   di, 0xc1c0
│           0000:3475      add   byte [bx + si], al
│           0000:3477      add   byte [bx + si], al
│           0000:3479      add   byte [bx + si], al
│ ────────> 0000:347b      add   byte [bx + si], al
│           0000:347d      add   byte [bx + si], al
│           0000:347f      add   byte [bx + si], al
│           0000:3481      add   byte [bp + si], al
│           0000:3483      add   al, byte [bp + di]
│           0000:3485      add   word [bx + si], ax
│           0000:3487      add   byte [bp + si], al
│           0000:3489      add   al, byte [bp + di]
│           0000:348b      add   word [bx + di], ax
│           0000:348d      add   word [bp + si], ax
│           0000:348f      add   al, byte [bx + si]
│           0000:3491      add   word [bp + si], ax
│           0000:3493      add   word [bx + di], ax
│           0000:3495      add   word [bx + di], ax
│           0000:3497      add   word [bx + di], ax
│           0000:3499      add   word [bx + di], ax
│           0000:349b      add   ax, word [bp + si]
│           0000:349d      add   word [bx + di], ax
│           0000:349f      add   al, byte [bx + di]
│           0000:34a1      add   byte [bx + si], al
│           0000:34a3      add   byte [bx + si], al
│           0000:34a5      add   byte [bx + si], al
│           0000:34a7      add   byte [bx + si], al
│           0000:34a9      add   byte [bp + si], al
│           0000:34ab      add   byte [bx + si], al
│           0000:34ad      add   byte [bx + si], al
│           0000:34af      add   byte [bx + si], al
│           0000:34b1      add   byte [bx + si], al
│           0000:34b3      add   byte [bx + si], al
│           0000:34b5      add   word [bx + si], ax
│           0000:34b7      add   byte [bx + si], al
│           0000:34b9      add   byte [bx + si], al
│           0000:34bb      add   word [bp + si], ax
│           0000:34bd      add   al, byte [bp + si]
│           0000:34bf      add   word [bx + di], ax
│           0000:34c1      add   word [bx + si], ax
│           0000:34c3      add   byte [bx + di], al
│           0000:34c5      add   byte [bx + di], al
│           0000:34c7      add   word [bx + si], ax
│           0000:34c9      add   byte [bp + si], al
│           0000:34cb      add   word [bx + si], ax
│           0000:34cd      add   al, byte [bx + si]
│           0000:34cf      add   word [bx + di], ax
│           0000:34d1      add   byte [bx + si], al
│           0000:34d3      add   byte [bx + di], al
│           0000:34d5      add   word [bx + si], ax
│           0000:34d7      add   byte [bx + si], al
│           0000:34d9      add   word [bx + di], ax
│           0000:34db      add   word [bp + si], ax
│           0000:34dd      add   byte [bp + di], al
│           0000:34df      add   word [bx + si], ax
│           0000:34e1      add   ax, 0x404
│           0000:34e4      add   al, 6
│           0000:34e6      or    byte [di], al
│           0000:34e8      add   ax, word [si]
│           0000:34ea      add   al, 6
│           0000:34ec      push  es
│           0000:34ed      push  es
│           0000:34ee      add   ax, 0x806
│           0000:34f1      pop   es
│           0000:34f2      add   ax, 0x707
│           0000:34f5      pop   es
│           0000:34f6      pop   es
│           0000:34f7      pop   es
│           0000:34f8      pop   es
│           0000:34f9      pop   es
│           0000:34fa      pop   es
│           0000:34fb      add   ax, word [si]
│           0000:34fd      push  es
│           0000:34fe      push  es
│           0000:34ff      push  es
│           0000:3500      pop   es
│           0000:3501      or    byte [bx + si], cl
│           0000:3503      or    byte [bx + si], cl
│           0000:3505      or    byte [bx + si], cl
│           0000:3507      or    byte [bx + si], cl
│           0000:3509      or    byte [di], al
│           0000:350b      or    byte [bx + si], cl
│           0000:350d      or    byte [bx + si], cl
│           0000:350f      or    byte [bx + si], cl
│           0000:3511      or    byte [bx + si], cl
│           0000:3513      or    byte [bx + si], cl
│           0000:3515      pop   es
│           0000:3516      or    byte [bx + si], cl
│           0000:3518      or    byte [bx + si], cl
│           0000:351a      or    byte [bx], al
│           0000:351c      add   ax, 0x503
│           0000:351f      push  es
│           0000:3520      pop   es
│           0000:3521      pop   es
│           0000:3522      or    byte [bx + si], cl
│           0000:3524      pop   es
│           0000:3525      or    byte [bx], al
│           0000:3527      pop   es
│           0000:3528      or    byte [bx + si], cl
│           0000:352a      add   ax, 0x806
│           0000:352d      add   ax, 0x708
│           0000:3530      pop   es
│           0000:3531      or    byte [bx + si], cl
│           0000:3533      or    byte [bx], al
│           0000:3535      push  es
│           0000:3536      or    byte [bx + si], cl
│           0000:3538      or    byte [bx], al
│           0000:353a      pop   es
│           0000:353b      pop   es
│           0000:353c      add   al, 8
│           0000:353e      add   al, 7
│           0000:3540      or    byte [bx + si], al
│           0000:3542      pop   ss
│           0000:3543      outsb dx, byte [si]
│           0000:3544      arpl  word gs:[0x7267], bp
│       ┌─< 0000:3549      jo    0x354b
│       └─> 0000:354b      add   byte [bp + si], dl
│           0000:354d      push  0x756f                                ; 'ou'
│       ┌─< 0000:3550      jb    0x35c4
│       │   0000:3554      add   byte [bx + si], al
│       │   0000:3556      pcmpgtb mm5, qword [di + 0x61]
│       │   0000:355a      outsw dx, word [si]
│      ┌──< 0000:355b      jne   0x358b
│     ┌───< 0000:355d      jb    0x35d0
│     │││   0000:3560      add   byte [bx + si], al
│     │││   0000:3562      sub   byte [bp + si + 0x6f], bh
│    ┌────< 0000:3565      jo    0x35d5
│    ││││   0000:3567      insw  word es:[di], dx
│   ┌─────< 0000:3569      jae   0x35cf
│   │││││   0000:356b      add   byte [bx + si], al
│   │││││   0000:356d      push  ds
│  ┌──────< 0000:356e      je    0x35e4
│  ││││││   0000:3570      insb  byte es:[di], dx
│  ││││││   0000:3571      xor   word [0x7267], bp                     ; [0x7267:2]=0xffff
│ ┌───────< 0000:3575      jo    0x3577
│ └───────> 0000:3577      add   byte [bx], bl
│ ┌───────< 0000:3579      je    0x35ef
│ │││││││   0000:357b      insb  byte es:[di], dx
│ │││││││   0000:357c      xor   ch, byte [0x7267]                     ; [0x7267:1]=255
│ ────────< 0000:3580      jo    0x3582
│ ────────> 0000:3582      add   byte [bx + si], ah
│ ────────< 0000:3584      je    0x35fa
│ │││││││   0000:3586      insb  byte es:[di], dx
│ │││││││   0000:3587      xor   bp, word [0x7267]                     ; [0x7267:2]=0xffff
│ ─────└──> 0000:358b      jo    0x358d
│ ────────> 0000:358d      add   byte [bx], ah
│ │││││┌──< 0000:358f      jp    0x35f6
│ │││││││   0000:3591      outsb dx, byte [si]
│ │││││││   0000:3592      insw  word es:[di], dx
│ ────────< 0000:3595      jae   0x35fb
│ │││││││   0000:3597      add   byte [bx + si], al
│ │││││││   0000:3599      and   word [bx + 0x61], si
│ │││││││   0000:359c      imul  si, word [di + 0x2e], 0x67
│ ────────< 0000:35a0      jb    0x3612
│ │││││││   0000:35a2      add   byte [bx + si], al
│ │││││││   0000:35a4      push  cs
│ │││││││   0000:35a5      popaw
│ │││││││   0000:35a6      insw  word es:[di], dx
│ ────────< 0000:35a7      jb    0x361c
│ │││││││   0000:35ac      add   byte [bx + si], al
│ │││││││   0000:35ae      adc   byte [bx + si + 0x69], ch
│ │││││││   0000:35b1      insw  word es:[di], dx
│ ────────< 0000:35b2      jb    0x3627
│ │││││││   0000:35b7      add   byte [bx + si], al
│ │││││││   0000:35b9      adc   bp, word [bx + di + 0x73]
│ │││││││   0000:35bc      imul  bp, word [0x7267], 0x70
│ │││││││   0000:35c2      add   byte [bp + si], bl
│ ││││││└─> 0000:35c4      outsw dx, word [si]
│ ││││││┌─< 0000:35c5      jne   0x3630
│ ────────< 0000:35c7      jb    0x363b
│ │││││││   0000:35cb      add   byte [bx + si], al
│ │││││││   0000:35cd      sbb   al, 0x73
│ ││└─────> 0000:35cf  ~   imul  bp, word gs:[0x7267], 0x70
│ ││ │└───> 0000:35d0  ~   imul  bp, word [0x7267], 0x70
│ ││ └────> 0000:35d5  ~   add   byte [bx + si], al
│ ││   ││   0000:35d6      add   byte [bp + si], ah
│ ││  ┌───< 0000:35d8      jns   0x364f
│ ││ ┌────< 0000:35da      jne   0x360d
│ ││┌─────< 0000:35dc      jb    0x3650
│ │││││││   0000:35e0      add   byte [bx + si], al
│ │││││││   0000:35e2  ~   and   di, word [bx + di + 0x75]
│ │└──────> 0000:35e4      jne   0x365b
│ │││││││   0000:35e6  ~   xor   ch, byte [0x7267]                     ; [0x7267:1]=255
│ ────────< 0000:35e7      jb    0x365b
│ │││││││   0000:35eb  ~   add   byte [bx + si], al
│ │││││││   0000:35ec      add   byte [si], ah
│ │││││││   0000:35ee  ~   jns   0x3665
│ └───────> 0000:35ef  ~   jne   0x3666
│  ││││││   0000:35f0  ~   jne   0x3625
│  ││││││   0000:35f1  ~   xor   bp, word [0x7267]                     ; [0x7267:2]=0xffff
│  ││││││   0000:35f2      jb    0x3666
│ │││││└──> 0000:35f6  ~   add   byte [bx + si], al
│ └───────> 0000:35f7      add   byte [di], ah
│  ││││┌──< 0000:35f9  ~   jns   0x3670
│ ────────> 0000:35fa  ~   jne   0x3671
│ ┌───────< 0000:35fb  ~   jne   0x3631
│ │││││││   0000:35fc  ~   xor   al, 0x2e
│ ────────< 0000:35fd      jb    0x3671
│ │││││││   0000:3601      add   byte [bx + si], al
│ ────────< 0000:3603      jns   0x367b
│ ────────< 0000:3606      jne   0x3678
│ ────────< 0000:3608      jb    0x367c
│ │││││││   0000:360c  ~   add   byte [bx + si], al
│ │││└────> 0000:360d      add   byte [bp + di], bl
│ │││ │││   0000:360f      outsw dx, word [si]
│ │││ │││   0000:3610      jne   0x3682
│ ────────> 0000:3612  ~   jb    0x3686
│ ────────< 0000:3613      jb    0x3686
│ │││││││   0000:3616      add   byte [bx + si], al
│ │││││││   0000:3618  ~   adc   al, 0x6d
│ │└──────> 0000:3619      insw  word es:[di], dx
│ │ │││││   0000:361a      popaw
│ │ │││││   0000:361b      outsw dx, word [si]
│ ─┌──────< 0000:361c      jo    0x364c
│ ────────< 0000:361e      jb    0x3691
│ │││││││   0000:3621      add   byte [bx + si], al
│ │││││││   0000:3623  ~   add   byte [bx + 0x61], ah
│ │││││││   0000:3625      popaw
│ │││││││   0000:3626      insw  word es:[di], dx
│ ────────> 0000:3627      bound bp, dword cs:[bx + di + 0x6e]
└ │││││││   0000:362c      add   bh, bh
```

### Function 0x00003030
```asm
; CALL XREFS from fcn.00000301 @ 0x335, 0x345
            ; CALL XREFS from fcn.00000a79 @ 0xae2, 0xaee
┌ fcn.00003030(int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
└           0000:3030      sub   al, 0x20
```

## Cross-References (callers)
```json
  0x00000110:
[{"from":978,"to":272,"type":"CALL"},{"from":2606,"to":272,"type":"CALL"}]
  0x00000112:
[{"from":983,"to":274,"type":"CALL"},{"from":2611,"to":274,"type":"CALL"}]
  0x00000116:
[{"from":988,"to":278,"type":"CALL"},{"from":2616,"to":278,"type":"CALL"}]
  0x00000118:
[{"from":993,"to":280,"type":"CALL"},{"from":2621,"to":280,"type":"CALL"}]
  0x000002d5:
[{"from":386,"to":725,"type":"CALL"}]
  0x00000301:
[{"from":759,"to":769,"type":"CALL"}]
  0x0000035c:
[{"from":188,"to":860,"type":"CALL"}]
  0x000003af:
[{"from":368,"to":943,"type":"CALL"},{"from":380,"to":943,"type":"CALL"},{"from":396,"to":943,"type":"CALL"},{"from":416,"to":943,"type":"CALL"},{"from":436,"to":943,"type":"CALL"},{"from":572,"to":943,"type":"CALL"},{"from":617,"to":943,"type":"CALL"},{"from":668,"to":943,"type":"CALL"},{"from":700,"to":943,"type":"CALL"},{"from":764,"to":943,"type":"CALL"},{"from":904,"to":943,"type":"CALL"},{"from":936,"to":943,"type":"CALL"}]
  0x000003d0:
[{"from":712,"to":976,"type":"CALL"},{"from":959,"to":976,"type":"CALL"},{"from":1130,"to":976,"type":"CALL"}]
  0x0000045a:
[{"from":1223,"to":1114,"type":"CALL"},{"from":1255,"to":1114,"type":"CALL"}]
  0x0000049b:
[{"from":1109,"to":1179,"type":"CALL"}]
  0x00000a0b:
[{"from":1714,"to":2571,"type":"CALL"},{"from":2231,"to":2571,"type":"CALL"},{"from":2317,"to":2571,"type":"CALL"},{"from":2519,"to":2571,"type":"CALL"},{"from":2563,"to":2571,"type":"CALL"},{"from":2689,"to":2571,"type":"CALL"},{"from":3092,"to":2571,"type":"CALL"},{"from":3100,"to":2571,"type":"CALL"},{"from":3105,"to":2571,"type":"CALL"},{"from":3110,"to":2571,"type":"CALL"},{"from":3379,"to":2571,"type":"CALL"},{"from":3411,"to":2571,"type":"CALL"}]
  0x00000a1c:
[{"from":2571,"to":2588,"type":"CALL"}]
  0x00000a79:
[{"from":1480,"to":2681,"type":"CALL"},{"from":1539,"to":2681,"type":"CALL"},{"from":1605,"to":2681,"type":"CALL"},{"from":1645,"to":2681,"type":"CALL"},{"from":1648,"to":2681,"type":"CALL"},{"from":1674,"to":2681,"type":"CALL"},{"from":1677,"to":2681,"type":"CALL"},{"from":1783,"to":2681,"type":"CALL"},{"from":1815,"to":2681,"type":"CALL"},{"from":1868,"to":2681,"type":"CALL"},{"from":1871,"to":2681,"type":"CALL"},{"from":1919,"to":2681,"type":"CALL"},{"from":1929,"to":2681,"type":"CALL"},{"from":2040,"to":2681,"type":"CALL"},{"from":2043,"to":2681,"type":"CALL"},{"from":2121,"to":2681,"type":"CALL"},{"from":2124,"to":2681,"type":"CALL"},{"from":2198,"to":2681,"type":"CALL"},{"from":2201,"to":2681,"type":"CALL"},{"from":2284,"to":2681,"type":"CALL"},{"from":2287,"to":2681,"type":"CALL"},{"from":2392,"to":2681,"type":"CALL"}]
  0x00000cc8:
[{"from":2832,"to":3272,"type":"CALL"}]
  0x00000d08:
[{"from":2554,"to":3336,"type":"CALL"}]
  0x00000d62:
[{"from":139,"to":3426,"type":"CALL"},{"from":231,"to":3426,"type":"CALL"},{"from":293,"to":3426,"type":"CALL"},{"from":1408,"to":3426,"type":"CALL"},{"from":1437,"to":3426,"type":"CALL"},{"from":1536,"to":3426,"type":"CALL"},{"from":1602,"to":3426,"type":"CALL"},{"from":1769,"to":3426,"type":"CALL"},{"from":1844,"to":3426,"type":"CALL"},{"from":1900,"to":3426,"type":"CALL"},{"from":1958,"to":3426,"type":"CALL"},{"from":2008,"to":3426,"type":"CALL"},{"from":2037,"to":3426,"type":"CALL"},{"from":2153,"to":3426,"type":"CALL"},{"from":2370,"to":3426,"type":"CALL"},{"from":2434,"to":3426,"type":"CALL"},{"from":2473,"to":3426,"type":"CALL"}]
  0x00000d67:
[{"from":3426,"to":3431,"type":"CALL"}]
  0x00000de5:
[{"from":58,"to":3557,"type":"CALL"},{"from":478,"to":3557,"type":"CALL"},{"from":612,"to":3557,"type":"CALL"},{"from":655,"to":3557,"type":"CALL"},{"from":3585,"to":3557,"type":"CODE"},{"from":3589,"to":3557,"type":"CODE"}]
```