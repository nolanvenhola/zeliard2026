# MAIN_GAME_LOOP - Analysis

**Source:** `chunk_00.bin`  
**Size:** 15.8 KB  
**Functions:** 170  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    1 70           fcn.00000000
0x00000046   49 14812 -> 1047 fcn.00000046
0x0000010c    3 12           fcn.0000010c
0x00000110    1 1            fcn.00000110
0x00000112    1 1            fcn.00000112
0x00000114    1 4            fcn.00000114
0x00000116    1 2            fcn.00000116
0x00000118    2 60           fcn.00000118
0x00000347   42 1155 -> 313  fcn.00000347
0x000003de   11 56           fcn.000003de
0x00000416   24 169          fcn.00000416
0x000004bf   16 77           fcn.000004bf
0x0000050c   11 47           fcn.0000050c
0x000005c9   15 92           fcn.000005c9
0x00000625    1 19           fcn.00000625
0x000006a9   15 83           fcn.000006a9
0x000006fc   16 171          fcn.000006fc
0x000007a7    5 25           fcn.000007a7
0x000007ca   16 134  -> 115  fcn.000007ca
0x00000828    3 19           fcn.00000828
0x00000850   15 84           fcn.00000850
0x000008a4   15 162          fcn.000008a4
0x00000946    5 24           fcn.00000946
0x0000095e   67 1336 -> 419  fcn.0000095e
0x00000a6b   17 98           fcn.00000a6b
0x00000acd   11 101          fcn.00000acd
0x00000b32    1 19           fcn.00000b32
0x00000b7a   13 71           fcn.00000b7a
0x00000bc1    1 7            fcn.00000bc1
0x00000bc8   11 56           fcn.00000bc8
0x00000c00    9 55           fcn.00000c00
0x00000c37    1 17           fcn.00000c37
0x00000c59    1 58           fcn.00000c59
0x00000c9c   11 85           fcn.00000c9c
0x00000cf1    1 17           fcn.00000cf1
0x00000d0a    1 17           fcn.00000d0a
0x00000d5b    5 23           fcn.00000d5b
0x00000d72    1 20           fcn.00000d72
0x00000d86    3 12           fcn.00000d86
0x00000d92    3 12           fcn.00000d92
0x00000d9e    5 23           fcn.00000d9e
0x00000db5    1 26           fcn.00000db5
0x00000dcf    3 26           fcn.00000dcf
0x00000de9    8 54   -> 47   fcn.00000de9
0x00000df0    2 7            fcn.00000df0
0x00000e1f    5 32           fcn.00000e1f
0x00000e3f   30 204          fcn.00000e3f
0x00000f0b   18 148          fcn.00000f0b
0x00000f9f   21 244          fcn.00000f9f
0x00001093   53 804  -> 679  fcn.00001093
0x00001214   12 101          fcn.00001214
0x000012dd    3 24           fcn.000012dd
0x000013b7    1 13           fcn.000013b7
0x000013c4    6 32           fcn.000013c4
0x000013e4    1 46           fcn.000013e4
0x00001412    7 110          fcn.00001412
0x00001480    3 36           fcn.00001480
0x000014a4   15 118          fcn.000014a4
0x00001523   20 155          fcn.00001523
0x000015be    4 20           fcn.000015be
0x000015d2    4 20           fcn.000015d2
0x000015e6    6 56           fcn.000015e6
0x0000161e    1 36           fcn.0000161e
0x00001662    6 39           fcn.00001662
0x00001689    3 20           fcn.00001689
0x0000169d    3 31           fcn.0000169d
0x000016bc    3 22           fcn.000016bc
0x000016fa   17 88           fcn.000016fa
0x00001752   15 121          fcn.00001752
0x000018db    1 6            fcn.000018db
0x000018e1   18 153          fcn.000018e1
0x0000197a    3 11           fcn.0000197a
0x00001985    7 51           fcn.00001985
0x00001a87   45 770          fcn.00001a87
0x00001dc5    3 32           fcn.00001dc5
0x00001de5    5 52           fcn.00001de5
0x00001e19    7 70           fcn.00001e19
0x00001e5f    1 56           fcn.00001e5f
0x00001e97    3 40           fcn.00001e97
0x00001ebf   11 199          fcn.00001ebf
0x00001f86    3 47           fcn.00001f86
0x00001fb5    7 43           fcn.00001fb5
0x00001fe0    6 34           fcn.00001fe0
0x00002000    1 4            fcn.00002000
0x00002002    6 22   -> 13   fcn.00002002
0x00002004    1 9            fcn.00002004
0x00002008    1 6            fcn.00002008
0x0000200e    1 5            fcn.0000200e
0x00002014    1 1            fcn.00002014
0x00002018    1 2            fcn.00002018
0x0000201a    1 5            fcn.0000201a
0x00002022    1 6            fcn.00002022
0x00002028    1 4            fcn.00002028
0x0000202a    1 2            fcn.0000202a
0x0000202c    9 76           fcn.0000202c
0x00002044    1 2            fcn.00002044
0x00002078   15 149          fcn.00002078
0x0000210d    7 67           fcn.0000210d
0x00002150    5 23           fcn.00002150
0x00002167    7 43           fcn.00002167
0x00002192    5 32           fcn.00002192
0x000021b2   17 150          fcn.000021b2
0x000022b8   11 68           fcn.000022b8
0x000022fc    5 39           fcn.000022fc
0x00002323    7 51           fcn.00002323
0x00002356    3 20           fcn.00002356
0x0000236a   10 113          fcn.0000236a
0x000023df    4 24           fcn.000023df
0x000023f7    3 22           fcn.000023f7
0x0000240d    3 25           fcn.0000240d
0x00002426   10 77           fcn.00002426
0x00002473   39 260          fcn.00002473
0x00002577    1 14           fcn.00002577
0x000025a9    4 29           fcn.000025a9
0x000025f6    3 31           fcn.000025f6
0x0000263d    6 21           fcn.0000263d
0x00002652    6 21           fcn.00002652
0x00002667    1 22           fcn.00002667
0x0000267d   10 106          fcn.0000267d
0x000026b6    1 2            fcn.000026b6
0x000026e7    3 25           fcn.000026e7
0x00002700    5 69           fcn.00002700
0x00002745   12 79           fcn.00002745
0x000027b4   17 143          fcn.000027b4
0x00002851    3 91           fcn.00002851
0x00002972   21 201          fcn.00002972
0x00002a3b    9 118          fcn.00002a3b
0x00002ab1    3 25           fcn.00002ab1
0x00002bc6    3 14           fcn.00002bc6
0x00002bd4    5 39           fcn.00002bd4
0x00002bfb   12 88           fcn.00002bfb
0x00002c53    7 42           fcn.00002c53
0x00002d1d   17 149          fcn.00002d1d
0x00002db2   25 926  -> 204  fcn.00002db2
0x00003004    1 1            fcn.00003004
0x00003008    1 2            fcn.00003008
0x0000300a    3 19           fcn.0000300a
0x00003016    1 1            fcn.00003016
0x00003017    3 129  -> 25   fcn.00003017
0x0000301a    2 6            fcn.0000301a
0x0000301e    1 2            fcn.0000301e
0x00003020    3 32   -> 31   fcn.00003020
0x00003028    1 1            fcn.00003028
0x0000302a    1 8            fcn.0000302a
0x000030d7    3 19           fcn.000030d7
0x00003150    5 31           fcn.00003150
0x00003180    3 20           fcn.00003180
0x00003194   15 85           fcn.00003194
0x000031e9    5 17           fcn.000031e9
0x0000320e    8 170  -> 32   fcn.0000320e
0x00003238    5 15           fcn.00003238
0x00003259    8 87   -> 31   fcn.00003259
0x00003283    3 20           fcn.00003283
0x00003297    3 17           fcn.00003297
0x000032b8    5 55           fcn.000032b8
0x000032ef    7 31           fcn.000032ef
0x0000330e    5 55           fcn.0000330e
0x00003345    7 33           fcn.00003345
0x00003366    5 56           fcn.00003366
0x0000339e    5 43           fcn.0000339e
0x000033c9    7 71           fcn.000033c9
0x00003410    7 70           fcn.00003410
0x00003456    7 72           fcn.00003456
0x0000349e    7 71           fcn.0000349e
0x000034e5    5 30           fcn.000034e5
0x00003503   30 346          fcn.00003503
0x0000365d    8 72           fcn.0000365d
0x000036a5    5 32           fcn.000036a5
0x00003719    3 14           fcn.00003719
0x00003855   17 103          fcn.00003855
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                                                                                                                                                                                                                                                           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x00000173 0x00000173   4    4         ascii  \n [.
  1 0x000003b9 0x000003b9   5    6         ascii  \aX$\f<
  2 0x000003ed 0x000003ed   5    6         ibm037 CYD\t«
  3 0x000004e4 0x000004e4   7    8         ascii  <@r\n<Is
  4 0x0000057b 0x0000057b   4    4         ascii  l\bu*
  5 0x000005c7 0x000005c7   8    9         ibm037 "CYZ\aãY1
  6 0x000009eb 0x000009eb   4    5         ascii  a$\f<
  7 0x000009f0 0x000009f0   6    6         ascii  t!<\btI
  8 0x000009ff 0x000009ff   5    6         ascii  tM<\bt
  9 0x00000bdb 0x00000bdb   4    5         ascii  t\t&:
 10 0x00000bf2 0x00000bf2   4    5         ascii  t\t&:
 11 0x00000c4c 0x00000c4c   5    5         ascii  GOLD\r
 12 0x00000c54 0x00000c54   5    5         ascii  PLACE
 13 0x00000c97 0x00000c97   5    5         ascii  ENEMY
 14 0x00000cc7 0x00000cc7   4    5         ascii  _G@;
 15 0x00000d03 0x00000d03   7    7         ascii  m/mGmOm
 16 0x00000d1a 0x00000d1a   9    9         ascii  m'm/mGmOm
 17 0x00000de9 0x00000de9   5    5         ascii  <@r\n:
 18 0x00001000 0x00001000   4    4         ascii  <\ft\a
 19 0x0000117a 0x0000117a   4    5         ascii  _\aX8
 20 0x0000140e 0x0000140e   4    6         utf8   * ^ì blocks=Basic Latin,Latin-1 Supplement
 21 0x00001463 0x00001463   4    4         ascii  QSV.
 22 0x00001469 0x00001469   5    5         ascii  " ^[Y
 23 0x000014dd 0x000014dd   7    8         ibm037 Yw8ßSS6
 24 0x00001560 0x00001560   8    8         ascii  ^_[FGSWV
 25 0x00001578 0x00001578   8    8         ascii  ^_[FGSWV
 26 0x00001590 0x00001590   5    5         ascii  ^_[FG
 27 0x000015f3 0x000015f3   6    6         ibm037 ÚA}ZLY
 28 0x000017d1 0x000017d1   6    6         ascii  $1@Qdy
 29 0x00001800 0x00001800 160  161         ascii  \r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\f\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b
 30 0x00001958 0x00001958   4    4         ascii  QPWV
 31 0x000019b8 0x000019b8  27   28         ascii  IJaKLMOPQN_RST`_UVW`IJaKLMX
 32 0x000019d4 0x000019d4   4    5         ascii  YN_Z
 33 0x000019d9 0x000019d9   7    7         ascii  [`_\]^`
 34 0x00001b32 0x00001b32   5    5         ascii  D\v\b\aV
 35 0x00001e3b 0x00001e3b   4    4         ascii  D\v\b\a
 36 0x00001e5a 0x00001e5a   4    4         ascii  D\v\b\a
 37 0x00002045 0x00002045   7    7         ibm037 CS7»3cF
 38 0x000022f5 0x000022f5   9    9         ibm037 CÚBS69C»Q
 39 0x00002486 0x00002486   4    5         ibm037 YZY«
 40 0x000024a0 0x000024a0   6    7         ascii  u\a$?:D
 41 0x000024ae 0x000024ae   4    5         ascii  $?:D
 42 0x000024fc 0x000024fc   6    6         ascii  t\r<\at\t
 43 0x00002582 0x00002582  19   19         ibm037 xaejererereje¤e¤e¤e
 44 0x000025c5 0x000025c5  19   20         ibm037 CNeKeÓeúe÷eUe²eQeÚ<
 45 0x00002741 0x00002741   5    6         ibm037 ßSBC6
 46 0x0000276f 0x0000276f   9   10         ibm037 Cg7Y!Wg7Ë
 47 0x00002842 0x00002842  13   14         ibm037 h(h(h(h(hyh8h
 48 0x00002954 0x00002954   5    6         ibm037 UßSZF
 49 0x000029d7 0x000029d7   4    5         ascii  QSU>
 50 0x000029e4 0x000029e4   4    5         ascii  s>E>
 51 0x00002a1c 0x00002a1c   4    4         ascii  \b0^_
 52 0x00002a22 0x00002a22  10   10         ascii  X_]FFGEE[Y
 53 0x00002b34 0x00002b34   4    4         ascii  o\vr-
 54 0x00002c9d 0x00002c9d 128  128         ascii  ghijklmnopqrghijklmnopqrstuvwxyz{|}~ghijopqrstuvwxyz{|}~klmnopqrstuvwxyz{|}~ghijklmnopqrstuvwxyz{|}~stuvghijklmnopqrstuvwxyz{|}~
 55 0x00002d46 0x00002d46   4    4         ascii  ]\trJ
 56 0x00002d95 0x00002d95   4    5         ascii  D\a u
 57 0x00002e79 0x00002e79   4    4         ascii  t\n\f`
 58 0x00002e9f 0x00002e9f   4    4         ascii  ?:&5
 59 0x00002f10 0x00002f10   4    4         ascii  t\n\f`
 60 0x00003032 0x00003032   7    8         ibm037 JYJYJY 
 61 0x0000307b 0x0000307b   5    6         utf8   D\nÀd\t blocks=Basic Latin,Latin-1 Supplement
 62 0x00003100 0x00003100   4    5         ascii  D\a@t
 63 0x00003155 0x00003155   4    5         ascii  D\a u
 64 0x00003163 0x00003163   4    6         utf8   ÊD\r\b blocks=Latin-1 Supplement,Basic Latin
 65 0x000031aa 0x000031aa   4    4         ascii  ?:&5
 66 0x000033a1 0x000033a1  14   15         ibm037 YóRg7cFçY¹Rg7«
 67 0x00003405 0x00003405   4    4         ascii  \n\r\nM
 68 0x000034ad 0x000034ad   9   10         ibm037 YOQg7\n\rå«
 69 0x000034e5 0x000034e5   5    5         ascii  <Ir\b\n
 70 0x00003500 0x00003500   4    6         utf8   Y_À| blocks=Basic Latin,Latin-1 Supplement
 71 0x00003516 0x00003516   4    5         utf8   ËD\v= blocks=Latin-1 Supplement,Basic Latin
 72 0x00003536 0x00003536   5    5         ascii  $?*D\r
 73 0x0000357a 0x0000357a   9   10         ibm037 QS0g7¬\n{`
 74 0x000035ca 0x000035ca  10   10         ibm037 «TYtPïg7cÓ
 75 0x000035e8 0x000035e8  11   12         ibm037 YºPS0g7¬\n{`
 76 0x000035fc 0x000035fc  13   14         ibm037 g7cFçYbPg7Ú{h
 77 0x00003789 0x00003789  29   30         ibm037 xhpªpmpþpYè³Zé³Y¸³Zª³Y_³Z¦³»à
 78 0x000037a7 0x000037a7  14   15         ibm037 YHNg7cFçYMNg7«
 79 0x00003a24 0x00003a24  17   17         ascii  You get 50 golds.
 80 0x00003a38 0x00003a38  18   18         ascii  You get 100 golds.
 81 0x00003a4d 0x00003a4d  18   18         ascii  You get 500 golds.
 82 0x00003a62 0x00003a62  19   19         ascii  You get 1000 golds.
 83 0x00003a78 0x00003a78  14   14         ascii  You get a Key.
 84 0x00003a89 0x00003a89  19   19         ascii  You have recovered.
 85 0x00003a9f 0x00003a9f  24   24         ascii  You have recovered full.
 86 0x00003aba 0x00003aba  14   14         ascii  Shield broken.
 87 0x00003acb 0x00003acb  21   21         ascii  Can\t open this door.
 88 0x00003ae3 0x00003ae3  19   19         ascii  Nothing in the box.
 89 0x00003af9 0x00003af9  25   25         ascii  You get the Hero\s Crest.
 90 0x00003b15 0x00003b15  26   26         ascii  You get the Ruzeria shoes.
 91 0x00003b32 0x00003b32  24   24         ascii  You get the Glory Crest.
 92 0x00003b4d 0x00003b4d  25   25         ascii  You get the Pirika shoes.
 93 0x00003b69 0x00003b69  25   25         ascii  You get the Feruza shoes.
 94 0x00003b85 0x00003b85  26   26         ascii  You get the Silkarn shoes.
 95 0x00003ba2 0x00003ba2  26   26         ascii  Get the Enchantment sword.
 96 0x00003bbf 0x00003bbf  15   15         ascii  It\s too hot !!
 97 0x00003bd1 0x00003bd1  24   24         ascii  Get the lion\s head Key.
 98 0x00003beb 0x00003beb   9   10         ascii  4FMAN.GRP
 99 0x00003bf6 0x00003bf6  10   11         ascii  8ENCNT.GRP
100 0x00003c02 0x00003c02   9   10         ascii  5ROKA.GRP
101 0x00003c0d 0x00003c0d   9   10         ascii  :ROKA.GRP
102 0x00003c18 0x00003c18   9   10         ascii  7DCHR.GRP
103 0x00003c24 0x00003c24  12   13         ascii  ROKADEMO.BIN
104 0x00003c33 0x00003c33   8    9         ascii  MMAN.GRP
105 0x00003c3e 0x00003c3e   8    9         ascii  CMAN.GRP
106 0x00003c48 0x00003c48   9   10         ascii  KMPP1.GRP
107 0x00003c53 0x00003c53   9   10         ascii  LMPP2.GRP
108 0x00003c5e 0x00003c5e   9   10         ascii  MMPP3.GRP
109 0x00003c69 0x00003c69   9   10         ascii  NMPP4.GRP
110 0x00003c74 0x00003c74   9   10         ascii  OMPP5.GRP
111 0x00003c7f 0x00003c7f   9   10         ascii  PMPP6.GRP
112 0x00003c8a 0x00003c8a   9   10         ascii  QMPP7.GRP
113 0x00003c95 0x00003c95   9   10         ascii  RMPP8.GRP
114 0x00003ca0 0x00003ca0   9   10         ascii  SMPP9.GRP
115 0x00003cab 0x00003cab   9   10         ascii  TMPPA.GRP
116 0x00003cb6 0x00003cb6   9   10         ascii  UMPPB.GRP
117 0x00003cc2 0x00003cc2   8    9         ascii  EAI1.BIN
118 0x00003ccc 0x00003ccc   9   10         ascii  \nCRAB.BIN
119 0x00003cd8 0x00003cd8   8    9         ascii  EAI2.BIN
120 0x00003ce2 0x00003ce2   9   10         ascii  \vTAKO.BIN
121 0x00003cee 0x00003cee   8    9         ascii  EAI3.BIN
122 0x00003cf8 0x00003cf8   9   10         ascii  \fTORI.BIN
123 0x00003d04 0x00003d04   8    9         ascii  EAI4.BIN
124 0x00003d0e 0x00003d0e   9   10         ascii  \rZELA.BIN
125 0x00003d1a 0x00003d1a   8    9         ascii  EAI5.BIN
126 0x00003d25 0x00003d25   8    9         ascii  MEDA.BIN
127 0x00003d2f 0x00003d2f   9   10         ascii  \aEAI6.BIN
128 0x00003d3b 0x00003d3b   8    9         ascii  LEGA.BIN
129 0x00003d45 0x00003d45   9   10         ascii  \bEAI7.BIN
130 0x00003d51 0x00003d51   8    9         ascii  DRGN.BIN
131 0x00003d5b 0x00003d5b   9   10         ascii  \tEAI8.BIN
132 0x00003d67 0x00003d67   8    9         ascii  AKMA.BIN
133 0x00003d72 0x00003d72   8    9         ascii  MAO1.BIN
134 0x00003d7d 0x00003d7d   8    9         ascii  MAO2.BIN
135 0x00003d88 0x00003d88   8    9         ascii  ZEL2.BIN
136 0x00003d92 0x00003d92   9   10         ascii  9ENP1.GRP
137 0x00003d9d 0x00003d9d   9   10         ascii  ACRAB.GRP
138 0x00003da8 0x00003da8   9   10         ascii  :ENP2.GRP
139 0x00003db3 0x00003db3   9   10         ascii  BTAKO.GRP
140 0x00003dbe 0x00003dbe   9   10         ascii  ;ENP3.GRP
141 0x00003dc9 0x00003dc9   9   10         ascii  CTORI.GRP
142 0x00003dd4 0x00003dd4   9   10         ascii  <ENP4.GRP
143 0x00003ddf 0x00003ddf   9   10         ascii  DZELA.GRP
144 0x00003dea 0x00003dea   9   10         ascii  =ENP5.GRP
145 0x00003df5 0x00003df5   9   10         ascii  EMEDA.GRP
146 0x00003e00 0x00003e00   9   10         ascii  >ENP6.GRP
147 0x00003e0b 0x00003e0b   9   10         ascii  FLEGA.GRP
148 0x00003e16 0x00003e16   9   10         ascii  ?ENP7.GRP
149 0x00003e21 0x00003e21   9   10         ascii  GDRGN.GRP
150 0x00003e2c 0x00003e2c   9   10         ascii  @ENP8.GRP
151 0x00003e37 0x00003e37   9   10         ascii  HAKMA.GRP
152 0x00003e42 0x00003e42   9   10         ascii  IMAO1.GRP
153 0x00003e4d 0x00003e4d   9   10         ascii  JMAO2.GRP
154 0x00003e58 0x00003e58   9   10         ascii  /MGT1.MSD
155 0x00003e63 0x00003e63   9   10         ascii  1UGM1.MSD
156 0x00003e6e 0x00003e6e   9   10         ascii  0MGT2.MSD
157 0x00003e79 0x00003e79   9   10         ascii  2UGM2.MSD
158 0x00003e84 0x00003e84   9   10         ascii  VMUS1.MSD
159 0x00003e8f 0x00003e8f   9   10         ascii  WMUS2.MSD
160 0x00003e9a 0x00003e9a   9   10         ascii  XMUS3.MSD
161 0x00003ea5 0x00003ea5   9   10         ascii  YMUS4.MSD
162 0x00003eb0 0x00003eb0   9   10         ascii  ZMUS5.MSD
163 0x00003ebb 0x00003ebb   9   10         ascii  [MUS6.MSD
164 0x00003ec6 0x00003ec6   9   10         ascii  \MUS7.MSD
165 0x00003ed1 0x00003ed1   9   10         ascii  ]MUS8.MSD
166 0x00003edc 0x00003edc   9   10         ascii  ^MBOS.MSD
167 0x00003ee7 0x00003ee7   9   10         ascii  `MMAO.MSD
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           ; var int16_t var_7c25h @ stack - 0x7c25
│           ; var int16_t var_6dcch @ stack - 0x6dcc
│           ; var int16_t var_6c9eh @ stack - 0x6c9e
│           0000:0000      aas
│           ; XREFS: DATA 0x000002cf  DATA 0x000003b3  DATA 0x00000504  
│           ; XREFS: DATA 0x000007b7  DATA 0x00000b6e  DATA 0x00000bc5  
│           ; XREFS: DATA 0x00000e5c  DATA 0x0000126a  DATA 0x000024ee  
│           ; XREFS: DATA 0x00002532  
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           ; XREFS: DATA 0x000003bd  DATA 0x000009ee  DATA 0x000009fd  
│           ; XREFS: DATA 0x00000aac  DATA 0x00000eb3  DATA 0x0000190b  
│           ; XREFS: DATA 0x00001958  DATA 0x00002683  DATA 0x00002706  
│           ; XREFS: DATA 0x000029d7  DATA 0x00002fc9  
│           0000:0004      inc   dx                                    ; arg2
│           ; DATA XREF from fcn.00000347 @ 0x34e
│           ; DATA XREF from fcn.00002db2 @ +0x224
│           0000:0005      pushaw
│           ; DATA XREF from fcn.00000046 @ 0xed
│           ; DATA XREF from fcn.000018e1 @ 0x191b
│           ; DATA XREFS from fcn.00002473 @ 0x24f2, 0x2536
│           0000:0006      fdivr qword [bx + di + 0x23]
│           ; DATA XREF from fcn.00000347 @ 0x355
│           ; DATA XREF from fcn.00003855 @ 0x3876
│           0000:0009      xchg  di, ax                                ; arg1
│           ; DATA XREF from fcn.0000050c @ 0x52c
│           0000:000a      aas
│           ; XREFS: DATA 0x00000096  DATA 0x00000127  DATA 0x0000128b  
│           ; XREFS: DATA 0x00001309  DATA 0x00001323  DATA 0x00001d6e  
│           ; XREFS: DATA 0x00001da5  DATA 0x00001ed5  DATA 0x00001f01  
│           ; XREFS: DATA 0x00001f2a  DATA 0x00001f6d  DATA 0x00003a04  
│           0000:000b      xchg  di, ax                                ; arg1
│           ; XREFS(26)
│           0000:000c      in    ax, 0x91
│           0000:000e      not   byte [bx + di - 0x6df6]               ; arg3
│           ; DATA XREF from fcn.00001214 @ 0x123b
│           ; DATA XREF from fcn.0000236a @ 0x238c
│           ; DATA XREF from fcn.00002972 @ 0x29ee
│           ; DATA XREFS from fcn.00002db2 @ +0x91, +0x112
│           0000:0012      and   dl, byte [bp + si - 0x6dcc]
│           ; DATA XREF from fcn.00001a87 @ 0x1b1e
│           0000:0016      inc   bx                                    ; arg3
│           ; DATA XREF from fcn.000027b4 @ 0x27ef
│           0000:0017      xchg  dx, ax                                ; arg1
│           ; XREFS: DATA 0x0000021a  DATA 0x00000223  DATA 0x00000e01  
│           ; XREFS: DATA 0x00000e30  DATA 0x000012b5  DATA 0x00001628  
│           ; XREFS: DATA 0x00001d5c  DATA 0x00002828  DATA 0x000034fb  
│           ; XREFS: DATA 0x0000353f  
│           0000:0018      push  bp
│           ; DATA XREF from fcn.00001412 @ 0x1413
│           ; DATA XREF from fcn.00001480 @ 0x149e
│           ; DATA XREF from fcn.00002851 @ +0x10c
│           0000:0019      xchg  dx, ax                                ; arg1
│           ; DATA XREF from fcn.00001214 @ 0x126c
│           ; DATA XREFS from fcn.00001a87 @ 0x1c81, 0x1c84, 0x1cc0, 0x1cc3
│           0000:001a      insb  byte es:[di], dx
│           0000:001b      xchg  dx, ax                                ; arg1
│           ; XREFS: DATA 0x00000ecd  DATA 0x00001272  DATA 0x00001483  
│           ; XREFS: DATA 0x0000237f  DATA 0x0000266b  DATA 0x000029e2  
│           0000:001c      mov   ah, 0x92
│           ; DATA XREFS from fcn.00000046 @ 0x1df, 0x3994, 0x3997
│           0000:001e      or    dl, byte [bp + di - 0x6c9e]
│           ; DATA XREF from fcn.000013e4 @ 0x1409
│           ; DATA XREFS from fcn.000021b2 @ 0x21e0, 0x21e9
│           0000:0022      lcall 0xc93, 0xc593
│           ; DATA XREF from fcn.000018e1 @ 0x1912
│           ; DATA XREFS from fcn.00001985 @ 0x199a, 0x19a0, 0x19b2
│           0000:0027      xchg  sp, ax
│           0000:0028      push  dx
│           ; DATA XREF from fcn.00000046 @ 0x1b1
│           0000:0029      xchg  sp, ax
│           0000:002a      lcall 0x826d, 0x6e94
│           ; DATA XREF from fcn.00001412 @ 0x145d
│           0000:002f      insw  word es:[di], dx
│           0000:0030      mov   gs, word [di - 0x1f]
│           0000:0033      xchg  sp, ax
│           0000:0034      mov   al, byte [0xd597]                     ; [0xd597:1]=255
│           0000:0037      xchg  si, ax
│           0000:0038      mov   ch, 0x97
│           ; DATA XREF from fcn.000013e4 @ 0x1404
│           0000:003a      mov   ax, word [0x5196]                     ; [0x5196:2]=0xffff
│           0000:003d      cwde
│           0000:003e      adc   word [bp - 0x7c25], ax
│           ; DATA XREF from fcn.00000c59 @ 0xc84
│           ; DATA XREF from fcn.00001093 @ 0x13a3
└           0000:0042      lds   bx, [bx + si - 0x68a5]
```

### Function 0x00000046
```asm

```

### Function 0x0000010c
```asm
; XREFS(24)
┌ fcn.0000010c(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│       ┌─> 0000:010c  ~   cmp   byte [0xff1a], 0x41
│       ╎   ; CALL XREF from fcn.00001093 @ 0x1159
│       ╎   ; CALL XREF from fcn.00001f86 @ 0x1f8f
..
│       │   ; CALL XREF from fcn.00001093 @ 0x115e
│       │   ; CALL XREF from fcn.00001f86 @ 0x1f94
│       │   ;-- (0x00000112) fcn.00000112:
│       └─< 0000:0111  ~   jb    fcn.0000010c                          ; arg4
│           ; CALL XREF from fcn.00001093 @ 0x1163
│           ; CALL XREF from fcn.00001f86 @ 0x1f99
│           ;-- (0x00000114) fcn.00000114:
└           0000:0113  ~   call  word cs:[0x301c]
```

### Function 0x00000110
```asm
; CALL XREF from fcn.00001093 @ 0x1159
            ; CALL XREF from fcn.00001f86 @ 0x1f8f
┌ fcn.00000110(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
└           0000:0110      inc   cx                                    ; arg4
```

### Function 0x00000112
```asm
│           ; CALL XREF from fcn.00001093 @ 0x115e
│           ; CALL XREF from fcn.00001f86 @ 0x1f94
┌ fcn.00000112(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0112      stc
```

### Function 0x00000114
```asm
│           ; CALL XREF from fcn.00001093 @ 0x1163
│           ; CALL XREF from fcn.00001f86 @ 0x1f99
│           ; CALL XREF from fcn.00001093 @ 0x1168
│           ; CALL XREF from fcn.00001f86 @ 0x1f9e
│           ;-- (0x00000116) fcn.00000116:
┌ fcn.00000114(int16_t arg1);
│           ; arg int16_t arg1 @ ax
└           0000:0114  ~   call  word [0x301c]
```

### Function 0x00000116
```asm
│           ; CALL XREF from fcn.00001093 @ 0x1168
│           ; CALL XREF from fcn.00001f86 @ 0x1f9e
┌ fcn.00000116(int16_t arg1);
│           ; arg int16_t arg1 @ ax
└           0000:0116      sbb   al, 0x30
```

### Function 0x00000118
```asm
╎   ; CALL XREF from fcn.00001093 @ 0x116d
        ╎   ; CALL XREF from fcn.00001f86 @ 0x1fa3
┌ fcn.00000118(int16_t arg1);
│       ╎   ; arg int16_t arg1 @ ax
│       ╎   0000:0118      pop   cx
│       └─< 0000:0119      loop  0xed                                  ; fcn.00000046+0xa7
│           0000:011b      mov   si, word [0xc000]
│           0000:011f      add   si, 5
│           0000:0122      mov   al, byte [si]
│           0000:0124      mov   byte [si - 1], al
│           0000:0127      mov   bl, 0xb
│           0000:0129      mul   bl
│           0000:012b      add   ax, 0x9d8d                            ; int16_t arg1
│           0000:012e      mov   si, ax                                ; arg1
│           0000:0130      mov   es, word cs:[0xff2c]
│           0000:0135      mov   di, 0x4000
│           0000:0138      mov   al, 2
│           0000:013a      call  word cs:[fcn.0000010c]                ; 0x10c
│           0000:013f      push  ds
│           0000:0140      mov   ds, word cs:[0xff2c]
│           0000:0145      mov   si, 0x4000
│           0000:0148      mov   bp, 0xa000
│           0000:014b      mov   cx, 0x100
│           0000:014e      call  word cs:[fcn.00003028]                ; 0x3028
└           0000:0153      pop   ds
```

### Function 0x00000347
```asm
; CALL XREFS from fcn.00000046 @ 0x2db, 0x303
┌ fcn.00000347(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0347      mov   byte [0x9f22], 0
│           0000:034c      int   0x61
│           0000:034e      cmp   al, 5
│       ┌─< 0000:0350      jne   0x355
│      ┌──< 0000:0352      jmp   0x638
│      │└─> 0000:0355      cmp   al, 9
│      │┌─< 0000:0357      jne   0x35c
│     ┌───< 0000:0359      jmp   0x7c0
│     ││└─> 0000:035c      cmp   al, 1
│     ││┌─< 0000:035e      jne   0x363
│    ┌────< 0000:0360      jmp   0x53b
│    │││└─> 0000:0363      mov   ah, al
│    │││    0000:0365      test  byte [0xff39], 0xff
│    │││┌─< 0000:036a      jne   0x39d
│    ││││   0000:036c      test  byte [0xff3d], 0xff
│   ┌─────< 0000:0371      je    0x39d
│   │││││   0000:0373      test  byte [0x9f0b], 0xff
│  ┌──────< 0000:0378      jne   0x37d
│ ┌───────< 0000:037a      jmp   0x5be
│ │└──────> 0000:037d      mov   byte [0x9f0b], 0
│ │ │││││   0000:0382      test  byte [0xc2], 2                        ; [0xc2:1]=22
│ │┌──────< 0000:0387      jne   0x38c
│ ────────< 0000:0389      jmp   0x5be
│ │└──────> 0000:038c      mov   dx, 0x65ba
│ │ │││││   0000:038f      push  dx
│ │ │││││   0000:0390      test  byte [0xc2], 1                        ; [0xc2:1]=22
│ │┌──────< 0000:0395      jne   0x39a
│ ────────< 0000:0397      jmp   fcn.000007ca                          ; fcn.000007ca
│ ─└──────> 0000:039a      jmp   0x642                                 ; fcn.0000095e-0x31c
│ │ └───└─> 0000:039d      push  ax                                    ; arg1
│ │  │││    0000:039e      mov   al, byte [0xc2]                       ; [0xc2:1]=22
│ │  │││    0000:03a1      and   al, 1
│ │  │││    0000:03a3      cmp   al, byte [0x9f24]
│ │  │││    0000:03a7      mov   byte [0x9f24], al                     ; [0x9f24:1]=255
│ │  │││┌─< 0000:03aa      je    0x3af
│ │  ││││   0000:03ac      call  fcn.0000050c                          ; fcn.0000050c
│ │  │││└─> 0000:03af      pop   ax
│ │  │││    0000:03b0      mov   al, ah
│ │  │││    0000:03b2      push  ax
│ │  │││    0000:03b3      cmp   al, 2
│ │  │││┌─< 0000:03b5      jne   0x3ba
│ │  ││││   0000:03b7      call  fcn.00000acd                          ; fcn.00000acd
│ │  │││└─> 0000:03ba      pop   ax
│ │  │││    0000:03bb      and   al, 0xc
│ │  │││    0000:03bd      cmp   al, 4
│ │  │││┌─< 0000:03bf      jne   0x3c4
│ │ ┌─────< 0000:03c1      jmp   0x642                                 ; fcn.0000095e-0x31c
│ │ ││││└─> 0000:03c4      cmp   al, 8
│ │ ││││┌─< 0000:03c6      jne   0x3cb
│ │┌──────< 0000:03c8      jmp   fcn.000007ca                          ; fcn.000007ca
│ ││││││└─> 0000:03cb      call  fcn.0000050c                          ; fcn.0000050c
│ ││││││    0000:03ce      mov   al, byte [0xff39]                     ; [0xff39:1]=255
│ ││││││    0000:03d1      or    al, byte [0xff38]
│ ││││││┌─< 0000:03d5      je    0x3d8
│ │││││││   0000:03d7      ret
│ ││││││└─> 0000:03d8      mov   byte [0xe7], 0x80                     ; [0x80:1]=255
│ ││││││    0000:03dd      ret
  ││││││    ; CALL XREF from fcn.00000046 @ 0x2b3
..
  ││││││    ; CALL XREFS from fcn.00000046 @ 0x2b6, 0x300
│ │││││││   ; CODE XREF from fcn.00000416 @ 0x43e
│ │││││││   ; CODE XREFS from fcn.00000416 @ 0x465, 0x483
  ││││││    ; CALL XREF from fcn.00000046 @ 0x2aa
│ │││││││   ; DATA XREF from fcn.00002745 @ +0x64
  ││││││    ; CALL XREFS from fcn.00000347 @ 0x3ac, 0x3cb
│ │││││││   ; DATA XREF from fcn.0000161e @ 0x1632
│ ││││││    ; CODE XREF from fcn.00000347 @ 0x360
│ │││└────> 0000:053b      mov   byte [0x9f18], 0
│ │││ ││    0000:0540      call  fcn.00001a87                          ; fcn.00001a87
│ │││ ││    0000:0543      call  fcn.00002078                          ; fcn.00002078
│ │││ ││    0000:0546      call  fcn.000005c9                          ; fcn.000005c9
│ │││ ││    ; CALL XREFS from fcn.00000347 @ 0x63d, 0x7c5
│ │││ ││    0000:0549      inc   byte [0x9f20]
│ │││ ││    0000:054d      cmp   byte [0x9f20], 0xa
│ │││ ││┌─< 0000:0552      jb    0x559
│ │││ │││   0000:0554      mov   byte [0x9f20], 0xa
│ │││ ││└─> 0000:0559      test  byte [0xff39], 0xff
│ │││ ││┌─< 0000:055e      je    0x561
│ │││ │││   0000:0560      ret
│ │││ ││└─> 0000:0561      mov   byte [0xff38], 0
│ │││ ││    0000:0566      mov   al, byte [0x9f09]                     ; [0x9f09:1]=255
│ │││ ││    0000:0569      cmp   al, byte [0x9f0d]
│ │││ ││┌─< 0000:056d      jae   0x5be
│ │││ │││   0000:056f      call  fcn.00000db5                          ; fcn.00000db5
│ │││ │││   0000:0572      sub   si, 0x23
│ │││ │││   0000:0575      call  fcn.00000d92                          ; fcn.00000d92
│ │││ │││   0000:0578      mov   al, byte [si]
│ │││ │││   0000:057a      call  fcn.00000de9                          ; fcn.00000de9
│ │││┌────< 0000:057d      jne   0x5a9
│ │││││││   0000:057f      mov   byte [0xe7], 0
│ │││││││   0000:0584      and   byte [0xc2], 0xfd                     ; [0xfd:1]=185
│ │││││││   0000:0589      mov   byte [0xff3d], 0xff                   ; [0xff:1]=56
│ │││││││   0000:058e      mov   al, byte [0x9f0d]                     ; [0x9f0d:1]=255
│ │││││││   0000:0591      shr   al, 1
│ │││││││   0000:0593      mov   byte [0x9f0c], al                     ; [0x9f0c:1]=255
│ │││││││   0000:0596      inc   byte [0x9f09]
│ │││││││   0000:059a      cmp   byte [0x84], 7                        ; [0x84:1]=247
│ ────────< 0000:059f      jae   0x5a4
│ ────────< 0000:05a1      jmp   fcn.00000625                          ; fcn.00000625
│ ────────> 0000:05a4      dec   byte [0x84]
│ │││││││   0000:05a8      ret
│ │││└────> 0000:05a9      test  byte [0x9f09], 0xff
│ │││┌────< 0000:05ae      jne   0x5be
│ │││││││   0000:05b0      test  byte [0xff39], 0xff
│ ────────< 0000:05b5      je    0x5b8
│ │││││││   0000:05b7      ret
│ ────────> 0000:05b8      mov   byte [0xe7], 0x80                     ; [0x80:1]=255
│ │││││││   0000:05bd      ret
│ │││││││   ; CODE XREFS from fcn.00000347 @ 0x37a, 0x389
│ └──└──└─> 0000:05be      mov   byte [0xff42], 0
│  ││ ││    0000:05c3      mov   byte [0xff3d], 0x7f                   ; [0x7f:1]=255
│  ││ ││    0000:05c8      ret
   ││ ││    ; CALL XREF from fcn.00000347 @ 0x546
..
│ │││ ││    ; CODE XREF from fcn.000005c9 @ 0x623
│ │││ ││╎   ; DATA XREFS from fcn.00001a87 @ 0x1cac, 0x1cee
  │││ ││    ; CODE XREF from fcn.00000347 @ 0x5a1
  │││ ││    ; CALL XREF from fcn.000005c9 @ 0x615
  │││ ││    ; CALL XREF from fcn.00000f9f @ 0xfc7
  │││ ││    ; CALL XREF from fcn.000016bc @ +0x1f
  │││ ││    ; CODE XREF from fcn.00002078 @ 0x210a
│ │││ ││    ; CODE XREF from fcn.00000347 @ 0x352
│ │││ │└──> 0000:0638      mov   byte [0x9f0b], 0xff                   ; [0xff:1]=56
│ │││ │     0000:063d      call  0x549
│ │││ │ ┌─< 0000:0640      jmp   0x642                                 ; fcn.0000095e-0x31c
│ │││ │ │   ; CODE XREFS from fcn.00000347 @ 0x39a, 0x3c1, 0x640
│ │││ │ │   ; CODE XREFS from fcn.0000095e @ 0x9de, 0xa0d
..
   │││││    ; XREFS: CALL 0x0000045f  CALL 0x00000462  CODE 0x00000509  
   │││││    ; XREFS: CALL 0x00000663  CODE 0x00000a68  CODE 0x00000aa9  
   │││││    ; XREFS: CODE 0x00000aca  CALL 0x00001004  CALL 0x000016f4  
   │││││    ; XREFS: CODE 0x000016f7  CODE 0x00001ab7  CALL 0x00002295  
   │││││    ; CODE XREF from fcn.000003de @ 0x410
│  │││││    ; CODE XREF from fcn.000006fc @ 0x7a5
   │││││    ; CALL XREFS from fcn.000006a9 @ 0x6da, 0x6f3
│  │││││    ; CODE XREF from fcn.00000347 @ 0x359
│  │││└───> 0000:07c0      mov   byte [0x9f0b], 0xff                   ; [0xff:1]=56
│  │││ │    0000:07c5      call  0x549
└  │││ │┌─< 0000:07c8      jmp   fcn.000007ca                          ; fcn.000007ca
```

### Function 0x000003de
```asm
; CALL XREF from fcn.00000046 @ 0x2b3
┌ fcn.000003de(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:03de      test  byte [0xff38], 0xff
│       ┌─< 0000:03e3      je    0x3e6
│       │   0000:03e5      ret
│       └─> 0000:03e6      test  byte [0xff3d], 0xff
│       ┌─< 0000:03eb      je    0x3ee
│       │   0000:03ed      ret
│       └─> 0000:03ee      call  fcn.00000db5                          ; fcn.00000db5
│           0000:03f1      mov   al, byte [si]
│           0000:03f3      call  fcn.00000de9                          ; fcn.00000de9
│       ┌─< 0000:03f6      jne   0x3f9
│       │   0000:03f8      ret
│       └─> 0000:03f9      inc   si
│           0000:03fa      inc   si
│           0000:03fb      mov   al, byte [si]
│           0000:03fd      call  fcn.00000de9                          ; fcn.00000de9
│       ┌─< 0000:0400      jne   0x403
│       │   0000:0402      ret
│       └─> 0000:0403      add   si, 0x24
│           0000:0406      call  fcn.00000d86                          ; fcn.00000d86
│           0000:0409      mov   al, byte [si]
│           0000:040b      call  fcn.00000de9                          ; fcn.00000de9
│       ┌─< 0000:040e      je    0x413
│      ┌──< 0000:0410      jmp   fcn.000006fc                          ; fcn.000006fc
└     ┌─└─> 0000:0413      jmp   fcn.000008a4                          ; fcn.000008a4
```

### Function 0x00000416
```asm
; CALL XREFS from fcn.00000046 @ 0x2b6, 0x300
┌ fcn.00000416();
│           0000:0416      test  byte [0x9f14], 0xff
│       ┌─< 0000:041b      jne   0x41e
│       │   0000:041d      ret
│       └─> 0000:041e      test  byte [0x9f01], 0xff
│       ┌─< 0000:0423      jne   0x444
│       │   0000:0425      mov   si, 0x9f0e
│       │   0000:0428      mov   al, byte [si]
│       │   0000:042a      or    al, byte [si + 1]
│       │   0000:042d      mov   ah, byte [si + 2]
│       │   0000:0430      or    ah, byte [si + 3]
│       │   0000:0433      test  ah, al
│      ┌──< 0000:0435      je    0x440
│      ││   0000:0437      test  byte [0xc2], 1                        ; [0xc2:1]=22
│     ┌───< 0000:043c      jne   0x444
│    ┌────< 0000:043e      jmp   0x467
│    ││└──> 0000:0440      or    al, al
│    ││┌──< 0000:0442      jne   0x467
│    │└─└─> 0000:0444      test  byte [0xff39], 0xff
│    │ │┌─< 0000:0449      je    0x45f
│    │ ││   0000:044b      and   byte [0xc2], 0xfc                     ; [0xfc:1]=12
│    │ ││   0000:0450      or    byte [0xc2], 1
│    │ ││   0000:0455      mov   byte [0xff3d], 0x7f                   ; [0x7f:1]=255
│    │ ││   0000:045a      mov   byte [0xff1d], 0
│    │ │└─> 0000:045f      call  fcn.000006a9                          ; fcn.000006a9
│    │ │    0000:0462      call  fcn.000006a9                          ; fcn.000006a9
│    │ │┌─< 0000:0465      jmp   0x485
│    │ ││   ; CODE XREF from fcn.00000416 @ 0x43e
│    └─└──> 0000:0467      test  byte [0xff39], 0xff
│      ┌──< 0000:046c      je    0x47d
│      ││   0000:046e      and   byte [0xc2], 0xfc                     ; [0xfc:1]=12
│      ││   0000:0473      mov   byte [0xff3d], 0x7f                   ; [0x7f:1]=255
│      ││   0000:0478      mov   byte [0xff1d], 0
│      └──> 0000:047d      call  fcn.00000850                          ; fcn.00000850
│       │   0000:0480      call  fcn.00000850                          ; fcn.00000850
│      ┌──< 0000:0483      jmp   0x485
│      ││   ; CODE XREFS from fcn.00000416 @ 0x465, 0x483
│      └└─> 0000:0485      test  byte [0xff39], 0xff
│       ┌─< 0000:048a      je    0x496
│       │   0000:048c      mov   byte [0xff39], 0x80                   ; [0x80:1]=255
│       │   0000:0491      mov   byte [0xff3d], 0
│       └─> 0000:0496      test  byte [0x9f15], 0xff
│       ┌─< 0000:049b      je    0x49e
│       │   0000:049d      ret
│       └─> 0000:049e      test  byte [0xff3d], 0x80
│       ┌─< 0000:04a3      je    0x4a6
│       │   0000:04a5      ret
│       └─> 0000:04a6      call  fcn.00000b7a                          ; fcn.00000b7a
│       ┌─< 0000:04a9      jae   0x4ac
│       │   0000:04ab      ret
│       └─> 0000:04ac      test  byte [0x9f09], 0xff
│       ┌─< 0000:04b1      jne   0x4b6
│      ┌──< 0000:04b3      jmp   fcn.00000b32                          ; fcn.00000b32
│      │└─> 0000:04b6      dec   byte [0x9f09]
│      │    0000:04ba      inc   byte [0x84]
└      │    0000:04be      ret
```

### Function 0x000004bf
```asm
; CALL XREF from fcn.00000046 @ 0x2aa
┌ fcn.000004bf();
│           0000:04bf      call  fcn.00000d9e                          ; fcn.00000d9e
│       ┌─< 0000:04c2      je    0x4c5
│       │   0000:04c4      ret
│       └─> 0000:04c5      test  byte [0xff3d], 0xff
│       ┌─< 0000:04ca      je    0x4cd
│       │   0000:04cc      ret
│       └─> 0000:04cd      test  byte [0x9f20], 0xff
│       ┌─< 0000:04d2      jne   0x4d5
│       │   0000:04d4      ret
│       └─> 0000:04d5      dec   byte [0x9f20]
│           0000:04d9      call  fcn.00000db5                          ; fcn.00000db5
│           0000:04dc      add   si, 0x6d
│           0000:04df      call  fcn.00000d86                          ; fcn.00000d86
│           0000:04e2      mov   al, byte [si]
│           0000:04e4      cmp   al, 0x40
│       ┌─< 0000:04e6      jb    0x4f2
│       │   0000:04e8      cmp   al, 0x49
│      ┌──< 0000:04ea      jae   0x4f2
│      ││   0000:04ec      mov   byte [0x9f20], 0
│      ││   0000:04f1      ret
│      └└─> 0000:04f2      mov   al, byte [0x9f22]                     ; [0x9f22:1]=255
│           0000:04f5      test  byte [0x9f23], 1
│       ┌─< 0000:04fa      je    0x504
│       │   0000:04fc      cmp   al, 1
│      ┌──< 0000:04fe      jne   0x501
│      ││   0000:0500      ret
│     ┌└──> 0000:0501      jmp   fcn.00000850                          ; fcn.00000850
│     │ │   ; DATA XREF from fcn.00002745 @ +0x64
│     │ └─> 0000:0504      cmp   al, 2
│     │ ┌─< 0000:0506      jne   0x509
│     │ │   0000:0508      ret
└     │┌└─> 0000:0509      jmp   fcn.000006a9                          ; fcn.000006a9
```

### Function 0x0000050c
```asm
; CALL XREFS from fcn.00000347 @ 0x3ac, 0x3cb
┌ fcn.0000050c();
│           0000:050c      call  fcn.00000d9e                          ; fcn.00000d9e
│       ┌─< 0000:050f      je    0x512
│       │   ; DATA XREF from fcn.0000161e @ 0x1632
│       │   0000:0511      ret
│       └─> 0000:0512      test  byte [0x9f20], 0xff
│       ┌─< 0000:0517      je    0x51a
│       │   0000:0519      ret
│       └─> 0000:051a      test  byte [0xff39], 0xff
│       ┌─< 0000:051f      je    0x522
│       │   0000:0521      ret
│       └─> 0000:0522      mov   al, byte [0x9f21]                     ; [0x9f21:1]=255
│           0000:0525      shr   al, 1
│           0000:0527      or    al, al
│       ┌─< 0000:0529      jne   0x52c
│       │   0000:052b      ret
│       └─> 0000:052c      cmp   al, 0xa
│       ┌─< 0000:052e      jb    0x532
│       │   0000:0530      mov   al, 0xa
│       └─> 0000:0532      mov   byte [0x9f20], al                     ; [0x9f20:1]=255
│           0000:0535      mov   byte [0x9f21], 0
└           0000:053a      ret
```

### Function 0x000005c9
```asm
; CALL XREF from fcn.00000347 @ 0x546
┌ fcn.000005c9(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:05c9      call  fcn.00000db5                          ; fcn.00000db5
│           0000:05cc      inc   si
│           0000:05cd      call  fcn.00000bc1                          ; fcn.00000bc1
│       ┌─< 0000:05d0      jb    0x5f3
│       │   0000:05d2      dec   si
│       │   0000:05d3      call  fcn.00000bc1                          ; fcn.00000bc1
│      ┌──< 0000:05d6      jae   0x5e0
│      ││   0000:05d8      test  byte [0xc2], 1                        ; [0xc2:1]=22
│     ┌───< 0000:05dd      jne   0x642                                 ; fcn.0000095e-0x31c
│     │││   0000:05df      ret
│     │└──> 0000:05e0      inc   si
│     │ │   0000:05e1      inc   si
│     │ │   0000:05e2      call  fcn.00000bc1                          ; fcn.00000bc1
│     │┌──< 0000:05e5      jb    0x5e8
│     │││   0000:05e7      ret
│     │└──> 0000:05e8      test  byte [0xc2], 1                        ; [0xc2:1]=22
│     │┌──< 0000:05ed      jne   0x5f2
│    ┌────< 0000:05ef      jmp   fcn.000007ca                          ; fcn.000007ca
│    ││└──> 0000:05f2      ret
│    ││ └─> 0000:05f3      mov   byte [0xff39], 0xff                   ; [0xff:1]=56
│    ││     0000:05f8      mov   byte [0xff38], 0
│    ││     ; CODE XREF from fcn.000005c9 @ 0x623
│    ││ ┌─> 0000:05fd      call  fcn.00000db5                          ; fcn.00000db5
│    ││ ╎   0000:0600      sub   si, 0x23
│    ││ ╎   0000:0603      call  fcn.00000d92                          ; fcn.00000d92
│    ││ ╎   0000:0606      dec   byte [0xe7]
│    ││ ╎   0000:060a      call  fcn.00000bc1                          ; fcn.00000bc1
│    ││┌──< 0000:060d      jb    0x615
│    │││╎   0000:060f      or    byte [0xe7], 1
│    │││╎   0000:0614      ret
│    ││└──> 0000:0615      call  fcn.00000625                          ; fcn.00000625
│    ││ ╎   ; DATA XREFS from fcn.00001a87 @ 0x1cac, 0x1cee
│    ││ ╎   0000:0618      call  fcn.00000f9f                          ; fcn.00000f9f
│    ││ ╎   0000:061b      test  byte [0xe7], 1                        ; [0xe7:1]=205
│    ││┌──< 0000:0620      je    0x623
│    │││╎   0000:0622      ret
└    ││└└─< 0000:0623      jmp   0x5fd
```

### Function 0x00000625
```asm
; CODE XREF from fcn.00000347 @ 0x5a1
            ; CALL XREF from fcn.000005c9 @ 0x615
            ; CALL XREF from fcn.00000f9f @ 0xfc7
            ; CALL XREF from fcn.000016bc @ +0x1f
            ; CODE XREF from fcn.00002078 @ 0x210a
├ (loc) fcn.00000625();
│           0000:0625      dec   byte [0x82]
│           0000:0629      mov   si, word [0xff31]
│           0000:062d      sub   si, 0x24
│           0000:0630      call  fcn.00000d92                          ; fcn.00000d92
│           0000:0633      mov   word [0xff31], si
└           0000:0637      ret
```

### Function 0x000006a9
```asm
; XREFS: CALL 0x0000045f  CALL 0x00000462  CODE 0x00000509  
            ; XREFS: CALL 0x00000663  CODE 0x00000a68  CODE 0x00000aa9  
            ; XREFS: CODE 0x00000aca  CALL 0x00001004  CALL 0x000016f4  
            ; XREFS: CODE 0x000016f7  CODE 0x00001ab7  CALL 0x00002295  
┌ fcn.000006a9(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:06a9      call  fcn.00000db5                          ; fcn.00000db5
│           0000:06ac      mov   di, si
│           0000:06ae      sub   si, 0x24
│           0000:06b1      call  fcn.00000d92                          ; fcn.00000d92
│           0000:06b4      dec   si
│           0000:06b5      mov   cx, 4
│       ┌─> 0000:06b8      call  fcn.00000dcf                          ; fcn.00000dcf
│       ╎   0000:06bb      add   al, al
│      ┌──< 0000:06bd      jae   0x6c0
│      │╎   0000:06bf      ret
│      └──> 0000:06c0      add   si, 0x24
│       ╎   0000:06c3      call  fcn.00000d86                          ; fcn.00000d86
│       └─< 0000:06c6      loop  0x6b8
│           0000:06c8      xchg  si, di
│           0000:06ca      test  byte [0xff38], 0xff
│       ┌─< 0000:06cf      jne   0x6e0
│       │   0000:06d1      mov   al, byte [si]
│       │   0000:06d3      call  fcn.00000de9                          ; fcn.00000de9
│       │   0000:06d6      stc
│      ┌──< 0000:06d7      je    0x6da
│      ││   0000:06d9      ret
│      └──> 0000:06da      call  fcn.000007a7                          ; fcn.000007a7
│      ┌──< 0000:06dd      jae   0x6e0
│      ││   0000:06df      ret
│      └└─> 0000:06e0      mov   cx, 2
│       ┌─> 0000:06e3      add   si, 0x24
│       ╎   0000:06e6      call  fcn.00000d86                          ; fcn.00000d86
│       ╎   0000:06e9      mov   al, byte [si]
│       ╎   0000:06eb      call  fcn.00000e1f                          ; fcn.00000e1f
│       ╎   0000:06ee      stc
│      ┌──< 0000:06ef      je    0x6f2
│      │╎   0000:06f1      ret
│      └──> 0000:06f2      push  cx
│       ╎   0000:06f3      call  fcn.000007a7                          ; fcn.000007a7
│       ╎   0000:06f6      pop   cx
│      ┌──< 0000:06f7      jae   0x6fa
│      │╎   0000:06f9      ret
└      └└─< 0000:06fa      loop  0x6e3
```

### Function 0x000006fc
```asm
; CODE XREF from fcn.000003de @ 0x410
├ (loc) fcn.000006fc(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:06fc      dec   word [0x80]
│           0000:0700      cmp   word [0x80], 0xffff                   ; [0x80:2]=0x75ff
│       ┌─< 0000:0705      jne   0x716
│       │   0000:0707      mov   ax, word [0xc002]                     ; [0xc002:2]=0xffff
│       │   0000:070a      dec   ax
│       │   0000:070b      mov   word [0x80], ax
│       │   0000:070e      mov   si, word [0xc019]
│       │   0000:0712      mov   word [0x9f03], si
│       └─> 0000:0716      push  cs
│           0000:0717      pop   es
│           0000:0718      std
│           0000:0719      mov   si, 0xe8fe
│           0000:071c      mov   di, 0xe8ff
│           0000:071f      mov   cx, 0x8ff
│           0000:0722      rep   movsb byte es:[di], byte ptr [si]
│           0000:0724      cld
│           0000:0725      mov   si, word [0x9f03]
│           0000:0729      dec   si
│           0000:072a      mov   di, 0xe8dc
│           0000:072d      xor   dl, dl
│       ┌─> 0000:072f      call  fcn.00000d0a                          ; fcn.00000d0a
│       ╎   0000:0732      dec   si
│       ╎   0000:0733      add   dl, bh
│      ┌──> 0000:0735      mov   byte [di], bl
│      ╎╎   0000:0737      sub   di, 0x24
│      ╎╎   0000:073a      dec   bh
│      └──< 0000:073c      jne   0x735
│       ╎   0000:073e      cmp   dl, 0x40
│       └─< 0000:0741      jb    0x72f
│           0000:0743      inc   si
│           0000:0744      mov   word [0x9f03], si
│           0000:0748      mov   si, word [0xc019]
│           0000:074c      dec   si
│           0000:074d      mov   ax, word [0x80]                       ; [0x80:2]=0x75ff
│           0000:0750      add   ax, 0x24
│           0000:0753      cmp   ax, word [0xc002]
│       ┌─< 0000:0757      je    0x76a
│       │   0000:0759      mov   si, word [0x9f05]
│       │   0000:075d      xor   dh, dh
│      ┌──> 0000:075f      call  fcn.00000d0a                          ; fcn.00000d0a
│      ╎│   0000:0762      dec   si
│      ╎│   0000:0763      add   dh, bh
│      ╎│   0000:0765      cmp   dh, 0x40
│      └──< 0000:0768      jb    0x75f
│       └─> 0000:076a      mov   word [0x9f05], si
│           0000:076e      call  fcn.00002652                          ; fcn.00002652
│           0000:0771      mov   bx, word [0x80]                       ; [0x80:2]=0x75ff
│           0000:0775      mov   byte [0xff4a], 0
│           0000:077a      mov   si, word [0xc010]
│           ; CODE XREF from fcn.000006fc @ 0x7a5
│       ┌─> 0000:077e      mov   ax, word [si]
│       ╎   0000:0780      cmp   ax, 0xffff
│      ┌──< 0000:0783      jne   0x786
│      │╎   0000:0785      ret
│      └──> 0000:0786      cmp   ah, 0xff
│      ┌──< 0000:0789      je    0x79e
│      │╎   0000:078b      cmp   ax, bx
│     ┌───< 0000:078d      jne   0x79e
│     ││╎   0000:078f      xor   ah, ah
│     ││╎   0000:0791      mov   al, byte [si + 2]
│     ││╎   0000:0794      call  fcn.00000d72                          ; fcn.00000d72
│     ││╎   0000:0797      mov   al, byte [0xff4a]                     ; [0xff4a:1]=255
│     ││╎   0000:079a      or    al, 0x80
│     ││╎   0000:079c      mov   byte [di], al
│     └└──> 0000:079e      inc   byte [0xff4a]
│       ╎   0000:07a2      add   si, 0x10
└       └─< 0000:07a5      jmp   0x77e
```

### Function 0x000007a7
```asm
; CALL XREFS from fcn.000006a9 @ 0x6da, 0x6f3
┌ fcn.000007a7();
│           0000:07a7      cmp   byte [0xc012], 7
│           0000:07ac      clc
│       ┌─< 0000:07ad      jne   0x7b0
│       │   0000:07af      ret
│       └─> 0000:07b0      mov   al, byte [si]
│           0000:07b2      push  si
│           0000:07b3      call  fcn.000016fa                          ; fcn.000016fa
│           0000:07b6      pop   si
│           0000:07b7      cmp   cl, 2
│           0000:07ba      stc
│       ┌─< 0000:07bb      jne   0x7be
│       │   0000:07bd      ret
│       └─> 0000:07be      clc
└           0000:07bf      ret
```

### Function 0x000007ca
```asm
; XREFS: CODE 0x00000397  CODE 0x000003c8  CODE 0x000005ef  
            ; XREFS: CODE 0x000007c8  CODE 0x000009e1  CODE 0x00000a10  
├ (loc) fcn.000007ca(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:07ca      mov   byte [0x9f18], 0
│           0000:07cf      test  byte [0xc2], 1                        ; [0xc2:1]=22
│       ┌─< 0000:07d4      jne   fcn.00000828                          ; fcn.00000828
│       │   0000:07d6      test  byte [0xff38], 0xff
│      ┌──< 0000:07db      je    0x7de
│      ││   0000:07dd      ret
│      └──> 0000:07de      cmp   byte [0xff42], 2
│      ┌──< 0000:07e3      je    0x83b
│      ││   0000:07e5      call  fcn.00000850                          ; fcn.00000850
│     ┌───< 0000:07e8      jb    0x83b
│     │││   0000:07ea      mov   byte [0x9f22], 1
│     │││   0000:07ef      test  byte [0xff39], 0xff
│    ┌────< 0000:07f4      je    0x7f7
│    ││││   0000:07f6      ret
│    └────> 0000:07f7      call  fcn.00000d9e                          ; fcn.00000d9e
│    ┌────< 0000:07fa      jne   0x80c
│    ││││   0000:07fc      test  byte [0x9f20], 0xff
│   ┌─────< 0000:0801      jne   0x80c
│   │││││   0000:0803      mov   byte [0x9f23], 1
│   │││││   0000:0808      inc   byte [0x9f21]
│   └└────> 0000:080c      or    byte [0xc2], 2
│     │││   0000:0811      test  byte [0xff3d], 0xff
│    ┌────< 0000:0816      je    0x819
│    ││││   0000:0818      ret
│    └────> 0000:0819      inc   byte [0xe7]
│     │││   0000:081d      and   byte [0xe7], 0x7f                     ; [0x7f:1]=255
│     │││   0000:0822      mov   byte [0x9f19], 0
│     │││   0000:0827      ret
      │││   ; CALL XREFS from fcn.0000095e @ 0x64e, 0xa1f, 0xa4b
..
│     ││    ; CODE XREFS from fcn.0000095e @ 0x660, 0x668
│     └└──> 0000:083b      and   byte [0xc2], 0xfd                     ; [0xfd:1]=185
│           0000:0840      mov   al, byte [0xff39]                     ; [0xff39:1]=255
│           0000:0843      or    al, byte [0xff3d]
│       ┌─< 0000:0847      je    0x84a
│       │   0000:0849      ret
│       └─> 0000:084a      mov   byte [0xe7], 0x80                     ; [0x80:1]=255
└           0000:084f      ret
```

### Function 0x00000828
```asm
; CALL XREFS from fcn.0000095e @ 0x64e, 0xa1f, 0xa4b
┌ fcn.00000828();
│           0000:0828      xor   byte [0xc2], 1
│           0000:082d      test  byte [0xff39], 0xff
│       ┌─< 0000:0832      je    0x835
│       │   0000:0834      ret
│       └─> 0000:0835      mov   byte [0xe7], 0x80                     ; [0x80:1]=255
└           0000:083a      ret
```

### Function 0x00000850
```asm
; XREFS: CALL 0x0000047d  CALL 0x00000480  CODE 0x00000501  
            ; XREFS: CALL 0x000007e5  CODE 0x00000a3c  CODE 0x00000ab1  
            ; XREFS: CODE 0x00000ac7  CALL 0x00000ff4  CALL 0x000016ee  
            ; XREFS: CODE 0x000016f1  CODE 0x00001aab  CALL 0x0000227a  
┌ fcn.00000850(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0850      call  fcn.00000db5                          ; fcn.00000db5
│           0000:0853      inc   si
│           0000:0854      inc   si
│           0000:0855      mov   di, si
│           0000:0857      sub   si, 0x24
│           0000:085a      call  fcn.00000d92                          ; fcn.00000d92
│           0000:085d      mov   cx, 4
│       ┌─> 0000:0860      call  fcn.00000dcf                          ; fcn.00000dcf
│       ╎   0000:0863      add   al, al
│      ┌──< 0000:0865      jae   0x868
│      │╎   0000:0867      ret
│      └──> 0000:0868      add   si, 0x24
│       ╎   0000:086b      call  fcn.00000d86                          ; fcn.00000d86
│       └─< 0000:086e      loop  0x860
│           0000:0870      xchg  si, di
│           0000:0872      test  byte [0xff38], 0xff
│       ┌─< 0000:0877      jne   0x888
│       │   0000:0879      mov   al, byte [si]
│       │   0000:087b      call  fcn.00000de9                          ; fcn.00000de9
│       │   0000:087e      stc
│      ┌──< 0000:087f      je    0x882
│      ││   0000:0881      ret
│      └──> 0000:0882      call  fcn.00000946                          ; fcn.00000946
│      ┌──< 0000:0885      jae   0x888
│      ││   0000:0887      ret
│      └└─> 0000:0888      mov   cx, 2
│       ┌─> 0000:088b      add   si, 0x24
│       ╎   0000:088e      call  fcn.00000d86                          ; fcn.00000d86
│       ╎   0000:0891      mov   al, byte [si]
│       ╎   0000:0893      call  fcn.00000e1f                          ; fcn.00000e1f
│       ╎   0000:0896      stc
│      ┌──< 0000:0897      je    0x89a
│      │╎   0000:0899      ret
│      └──> 0000:089a      push  cx
│       ╎   0000:089b      call  fcn.00000946                          ; fcn.00000946
│       ╎   0000:089e      pop   cx
│      ┌──< 0000:089f      jae   0x8a2
│      │╎   0000:08a1      ret
└      └└─< 0000:08a2      loop  0x88b
```

### Function 0x000008a4
```asm
; CODE XREF from fcn.000003de @ 0x413
├ (loc) fcn.000008a4();
│           0000:08a4      inc   word [0x80]
│           0000:08a8      mov   ax, word [0x80]                       ; [0x80:2]=0x75ff
│           0000:08ab      add   ax, 0x23
│           0000:08ae      cmp   ax, word [0xc002]
│       ┌─< 0000:08b2      jne   0x8ba
│       │   0000:08b4      mov   word [0x9f05], 0xc01a                 ; [0xc01a:2]=0xffff
│       └─> 0000:08ba      push  cs
│           0000:08bb      pop   es
│           0000:08bc      mov   si, 0xe001
│           0000:08bf      mov   di, 0xe000
│           0000:08c2      mov   cx, 0x8ff
│           0000:08c5      rep   movsb byte es:[di], byte ptr [si]
│           0000:08c7      mov   si, word [0x9f05]
│           0000:08cb      inc   si
│           0000:08cc      mov   di, 0xe023
│           0000:08cf      call  fcn.00000d5b                          ; fcn.00000d5b
│           0000:08d2      dec   si
│           0000:08d3      mov   word [0x9f05], si
│           0000:08d7      mov   ax, word [0x80]                       ; [0x80:2]=0x75ff
│           0000:08da      cmp   ax, word [0xc002]
│       ┌─< 0000:08de      jne   0x8eb
│       │   0000:08e0      mov   word [0x80], 0
│       │   0000:08e6      mov   si, 0xc01b
│      ┌──< 0000:08e9      jmp   0x8fc
│      │└─> 0000:08eb      mov   si, word [0x9f03]
│      │    0000:08ef      xor   dh, dh
│      │┌─> 0000:08f1      call  fcn.00000cf1                          ; fcn.00000cf1
│      │╎   0000:08f4      inc   si
│      │╎   0000:08f5      add   dh, bh
│      │╎   0000:08f7      cmp   dh, 0x40
│      │└─< 0000:08fa      jb    0x8f1
│      │    ; CODE XREF from fcn.000008a4 @ 0x8e9
│      └──> 0000:08fc      mov   word [0x9f03], si
│           ; DATA XREF from fcn.00000d86 @ 0xd8d
│           ; DATA XREF from fcn.00000d92 @ 0xd99
│           0000:0900      call  fcn.0000263d                          ; fcn.0000263d
│           0000:0903      mov   byte [0xff4a], 0
│           0000:0908      mov   bx, word [0x80]                       ; [0x80:2]=0x75ff
│           0000:090c      add   bx, 0x23
│           0000:090f      mov   ax, bx
│           0000:0911      sub   ax, word [0xc002]
│       ┌─< 0000:0915      jb    0x919
│       │   0000:0917      mov   bx, ax
│       └─> 0000:0919      mov   si, word [0xc010]
│           ; CODE XREF from fcn.000008a4 @ 0x944
│       ┌─> 0000:091d      mov   ax, word [si]
│       ╎   0000:091f      cmp   ax, 0xffff
│      ┌──< 0000:0922      jne   0x925
│      │╎   0000:0924      ret
│      └──> 0000:0925      cmp   ah, 0xff
│      ┌──< 0000:0928      je    0x93d
│      │╎   0000:092a      cmp   ax, bx
│     ┌───< 0000:092c      jne   0x93d
│     ││╎   0000:092e      mov   ah, 0x23                              ; '#'
│     ││╎   0000:0930      mov   al, byte [si + 2]
│     ││╎   0000:0933      call  fcn.00000d72                          ; fcn.00000d72
│     ││╎   0000:0936      mov   al, byte [0xff4a]                     ; [0xff4a:1]=255
│     ││╎   0000:0939      or    al, 0x80
│     ││╎   0000:093b      mov   byte [di], al
│     └└──> 0000:093d      inc   byte [0xff4a]
│       ╎   0000:0941      add   si, 0x10
└       └─< 0000:0944      jmp   0x91d
```

### Function 0x00000946
```asm
; CALL XREFS from fcn.00000850 @ 0x882, 0x89b
┌ fcn.00000946();
│           0000:0946      cmp   byte [0xc012], 7
│           0000:094b      clc
│       ┌─< 0000:094c      jne   0x94f
│       │   0000:094e      ret
│       └─> 0000:094f      mov   al, byte [si]
│           0000:0951      push  si
│           0000:0952      call  fcn.000016fa                          ; fcn.000016fa
│           0000:0955      pop   si
│           0000:0956      dec   cl
│           0000:0958      stc
│       ┌─< 0000:0959      jne   0x95c
│       │   0000:095b      ret
│       └─> 0000:095c      clc
└           0000:095d      ret
```

### Function 0x0000095e
```asm
╎╎╎╎╎╎╎   ; CALL XREFS from fcn.00000046 @ 0x2d8, 0x3943
┌ fcn.0000095e();
│ ╎╎╎╎╎╎╎   0000:095e      test  byte [0x9f15], 0xff
│ ────────< 0000:0963      je    0x966
│ ╎╎╎╎╎╎╎   0000:0965      ret
│ ────────> 0000:0966      test  byte [0xff3d], 0x80
│ ────────< 0000:096b      je    0x96e
│ ╎╎╎╎╎╎╎   0000:096d      ret
│ ────────> 0000:096e      call  fcn.00002192                          ; fcn.00002192
│ ╎╎╎╎╎╎╎   0000:0971      call  fcn.00000a6b                          ; fcn.00000a6b
│ ╎╎╎╎╎╎╎   0000:0974      call  fcn.00000b7a                          ; fcn.00000b7a
│ ────────< 0000:0977      jae   0x97c
│ ────────< 0000:0979      jmp   0xb45
│ ────────> 0000:097c      inc   byte [0x9f08]
│ ╎╎╎╎╎╎╎   0000:0980      test  byte [0x9f09], 0xff
│ ────────< 0000:0985      je    0x991
│ ╎╎╎╎╎╎╎   0000:0987      pushf
│ ╎╎╎╎╎╎╎   0000:0988      dec   byte [0x9f09]
│ ╎╎╎╎╎╎╎   0000:098c      inc   byte [0x84]
│ ╎╎╎╎╎╎╎   0000:0990      popf
│ ────────> 0000:0991      pop   ax
│ ────────< 0000:0992      jne   0x997
│ ╎╎╎╎╎╎╎   0000:0994      call  fcn.00000b32                          ; fcn.00000b32
│ ────────> 0000:0997      test  byte [0xc2], 2                        ; [0xc2:1]=22
│ ────────< 0000:099c      jne   0x9b2
│ ╎╎╎╎╎╎╎   0000:099e      call  fcn.00000db5                          ; fcn.00000db5
│ ╎╎╎╎╎╎╎   0000:09a1      add   si, 0x49
│ ╎╎╎╎╎╎╎   0000:09a4      call  fcn.00000d86                          ; fcn.00000d86
│ ╎╎╎╎╎╎╎   0000:09a7      call  fcn.00000bc1                          ; fcn.00000bc1
│ ────────< 0000:09aa      jae   0x9b2
│ ╎╎╎╎╎╎╎   0000:09ac      mov   byte [0xff39], 0xff                   ; [0xff:1]=56
│ ╎╎╎╎╎╎╎   0000:09b1      ret
│ ────────> 0000:09b2      mov   byte [0xe7], 0x80                     ; [0x80:1]=255
│ ╎╎╎╎╎╎╎   0000:09b7      mov   al, byte [0xff3d]                     ; [0xff3d:1]=255
│ ╎╎╎╎╎╎╎   0000:09ba      mov   byte [0xff3d], 0x7f                   ; [0x7f:1]=255
│ ╎╎╎╎╎╎╎   0000:09bf      test  byte [0xff42], 0xff
│ ────────< 0000:09c4      je    0x9c7
│ ╎╎╎╎╎╎╎   0000:09c6      ret
│ ────────> 0000:09c7      test  byte [0xe8], 0xff                     ; [0xe8:1]=96
│ ────────< 0000:09cc      je    0x9cf
│ ╎╎╎╎╎╎╎   0000:09ce      ret
│ ────────> 0000:09cf      test  al, 0xff
│ ────────< 0000:09d1      jne   0x9ea
│ ╎╎╎╎╎╎╎   0000:09d3      mov   ax, 0x69e0
│ ╎╎╎╎╎╎╎   0000:09d6      push  ax
│ ╎╎╎╎╎╎╎   0000:09d7      test  byte [0xc2], 1                        ; [0xc2:1]=22
│ ────────< 0000:09dc      je    0x9e1
│ ╎╎╎╎╎└──< 0000:09de      jmp   0x642
│ └───────< 0000:09e1      jmp   fcn.000007ca                          ; fcn.000007ca
..
│ ────────> 0000:09ea      int   0x61
│  ╎╎╎╎ ╎   0000:09ec      and   al, 0xc
│  ╎╎╎╎ ╎   0000:09ee      cmp   al, 4
│  ╎╎╎╎┌──< 0000:09f0      je    0xa13
│  ╎╎╎╎│╎   0000:09f2      cmp   al, 8
│ ┌───────< 0000:09f4      je    0xa3f
│ ────────> 0000:09f6      test  byte [0xc2], 2                        ; [0xc2:1]=22
│ ────────< 0000:09fb      jne   0xa06
│ │╎╎╎╎│╎   0000:09fd      cmp   al, 4
│ ────────< 0000:09ff      je    0xa4e
│ │╎╎╎╎│╎   0000:0a01      cmp   al, 8
│ ────────< 0000:0a03      je    0xa22
│ │╎╎╎╎│╎   0000:0a05      ret
│ ────────> 0000:0a06      test  byte [0xc2], 1                        ; [0xc2:1]=22
│ ────────< 0000:0a0b      je    0xa10
│ │╎╎╎╎│└─< 0000:0a0d      jmp   0x642
│ ─└──────< 0000:0a10      jmp   fcn.000007ca                          ; fcn.000007ca
│ │ ╎╎╎└──> 0000:0a13      test  byte [0xc2], 1                        ; [0xc2:1]=22
│ ────────< 0000:0a18      jne   0x9f6
│ │ ╎╎╎     0000:0a1a      and   byte [0xc2], 0xfd                     ; [0xfd:1]=185
│ │ ╎╎╎     0000:0a1f      call  fcn.00000828                          ; fcn.00000828
│ ────────> 0000:0a22      call  fcn.00000db5                          ; fcn.00000db5
│ │ ╎╎╎     0000:0a25      add   si, 0x6d
│ │ ╎╎╎     0000:0a28      call  fcn.00000d86                          ; fcn.00000d86
│ │ ╎╎╎     0000:0a2b      mov   al, byte [si]
│ │ ╎╎╎     0000:0a2d      call  fcn.00000de9                          ; fcn.00000de9
│ │ ╎╎╎ ┌─< 0000:0a30      je    0xa33
│ │ ╎╎╎ │   0000:0a32      ret
│ │ ╎╎╎ └─> 0000:0a33      inc   si
│ │ ╎╎╎     0000:0a34      mov   al, byte [si]
│ │ ╎╎╎     0000:0a36      call  fcn.00000de9                          ; fcn.00000de9
│ │ ╎╎╎ ┌─< 0000:0a39      jne   0xa3c
│ │ ╎╎╎ │   0000:0a3b      ret
│ ──────└─> 0000:0a3c      jmp   fcn.00000850                          ; fcn.00000850
│ └───────> 0000:0a3f      test  byte [0xc2], 1                        ; [0xc2:1]=22
│ ────────< 0000:0a44      je    0x9f6
│   ╎╎╎     0000:0a46      and   byte [0xc2], 0xfd                     ; [0xfd:1]=185
│   ╎╎╎     0000:0a4b      call  fcn.00000828                          ; fcn.00000828
│ ────────> 0000:0a4e      call  fcn.00000db5                          ; fcn.00000db5
│   ╎╎╎     0000:0a51      add   si, 0x6d
│   ╎╎╎     0000:0a54      call  fcn.00000d86                          ; fcn.00000d86
│   ╎╎╎     0000:0a57      mov   al, byte [si]
│   ╎╎╎     0000:0a59      call  fcn.00000de9                          ; fcn.00000de9
│   ╎╎╎ ┌─< 0000:0a5c      je    0xa5f
│   ╎╎╎ │   0000:0a5e      ret
│   ╎╎╎ └─> 0000:0a5f      dec   si
│   ╎╎╎     0000:0a60      mov   al, byte [si]
│   ╎╎╎     0000:0a62      call  fcn.00000de9                          ; fcn.00000de9
│   ╎╎╎ ┌─< 0000:0a65      jne   0xa68
│   ╎╎╎ │   0000:0a67      ret
│   └───└─> 0000:0a68      jmp   fcn.000006a9                          ; fcn.000006a9
     ╎╎     ; CALL XREF from fcn.0000095e @ 0x971
..
│   ││╎││   ; DATA XREF from fcn.00000c59 @ 0xc71
            ; CALL XREF from fcn.00000347 @ 0x3b7
│       │   ; CODE XREF from fcn.00000acd @ 0xb30
            ; XREFS: CODE 0x000004b3  CALL 0x00000994  CALL 0x00000b22  
            ; XREFS: CALL 0x00000fd0  CODE 0x0000200a  CODE 0x000021af  
│           ; CODE XREF from fcn.0000095e @ 0x979
│ ────────> 0000:0b45      mov   al, byte [0xff3d]                     ; [0xff3d:1]=255
│           0000:0b48      xor   al, 0x7f
│       ┌─< 0000:0b4a      je    0xb4d
│       │   0000:0b4c      ret
│       └─> 0000:0b4d      pop   ax
│           0000:0b4e      mov   dl, byte [0x9f08]
│           0000:0b52      mov   byte [0xff3d], 0
│           0000:0b57      mov   byte [0x9f0a], 0
│           0000:0b5c      mov   byte [0x9f08], 0
│           0000:0b61      mov   byte [0xe7], 0x80                     ; [0x80:1]=255
│           0000:0b66      test  byte [0xff42], 0xff
│       ┌─< 0000:0b6b      je    0xb6e
│       │   0000:0b6d      ret
│       └─> 0000:0b6e      cmp   dl, 2
│       ┌─< 0000:0b71      jae   0xb74
│       │   0000:0b73      ret
│       └─> 0000:0b74      mov   byte [0xff38], 0xff                   ; [0xff:1]=56
│           0000:0b79      ret
```

### Function 0x00000a6b
```asm
╎╎╎╎   ; CALL XREF from fcn.0000095e @ 0x971
┌ fcn.00000a6b(int16_t arg1, int16_t arg2);
│    ╎╎╎╎   ; arg int16_t arg1 @ ax
│    ╎╎╎╎   ; arg int16_t arg2 @ dx
│    ╎╎╎╎   0000:0a6b      mov   byte [0xff42], 0
│    ╎╎╎╎   0000:0a70      call  fcn.00000db5                          ; fcn.00000db5
│    ╎╎╎╎   0000:0a73      add   si, 0x49
│    ╎╎╎╎   0000:0a76      call  fcn.00000d86                          ; fcn.00000d86
│    ╎╎╎╎   0000:0a79      call  fcn.00000bc8                          ; fcn.00000bc8
│   ┌─────< 0000:0a7c      je    0xa7f
│   │╎╎╎╎   0000:0a7e      ret
│   └─────> 0000:0a7f      and   byte [0xc2], 0xfd                     ; [0xfd:1]=185
│    ╎╎╎╎   0000:0a84      mov   byte [0xff42], dl
│    ╎╎╎╎   0000:0a88      test  byte [0x9f0c], 0xff
│   ┌─────< 0000:0a8d      jne   0xab4
│   │╎╎╎╎   0000:0a8f      mov   al, byte [0x9f16]                     ; [0x9f16:1]=255
│   │╎╎╎╎   0000:0a92      inc   byte [0x9f16]
│   │╎╎╎╎   0000:0a96      and   al, 3
│  ┌──────< 0000:0a98      je    0xa9b
│  ││╎╎╎╎   0000:0a9a      ret
│  └──────> 0000:0a9b      int   0x61
│   │╎╎╎╎   0000:0a9d      cmp   byte [0xff42], 1
│  ┌──────< 0000:0aa2      je    0xaac
│  ││╎╎╎╎   0000:0aa4      test  al, 8
│ ┌───────< 0000:0aa6      je    0xaa9
│ │││╎╎╎╎   0000:0aa8      ret
│ │││╎╎│╎   ; DATA XREF from fcn.00000c59 @ 0xc71
│ └────└──< 0000:0aa9      jmp   fcn.000006a9                          ; fcn.000006a9
│  └──────> 0000:0aac      test  al, 4
│   │╎╎┌──< 0000:0aae      je    0xab1
│   │╎╎│╎   0000:0ab0      ret
│   │└─└──> 0000:0ab1      jmp   fcn.00000850                          ; fcn.00000850
│   └─────> 0000:0ab4      mov   al, byte [0x9e]                       ; [0x9e:1]=240
│     ╎ ╎   0000:0ab7      cmp   al, 3
│     ╎┌──< 0000:0ab9      jne   0xabc
│     ╎│╎   0000:0abb      ret
│     ╎└──> 0000:0abc      dec   byte [0x9f0c]
│     ╎ ╎   0000:0ac0      cmp   byte [0xff42], 1
│     ╎┌──< 0000:0ac5      jne   0xaca
│     └───< 0000:0ac7      jmp   fcn.00000850                          ; fcn.00000850
└      └└─< 0000:0aca      jmp   fcn.000006a9                          ; fcn.000006a9
```

### Function 0x00000acd
```asm
; CALL XREF from fcn.00000347 @ 0x3b7
┌ fcn.00000acd();
│           0000:0acd      mov   byte [0x9f18], 0
│           0000:0ad2      test  byte [0xff42], 0xff
│       ┌─< 0000:0ad7      je    0xada
│       │   0000:0ad9      ret
│       └─> 0000:0ada      call  fcn.00001fe0                          ; fcn.00001fe0
│           0000:0add      call  fcn.00000db5                          ; fcn.00000db5
│           0000:0ae0      add   si, 0x6d
│           0000:0ae3      call  fcn.00000d86                          ; fcn.00000d86
│           0000:0ae6      call  fcn.00000bc1                          ; fcn.00000bc1
│       ┌─< 0000:0ae9      jb    0xb08
│       │   0000:0aeb      test  byte [0xff39], 0xff
│      ┌──< 0000:0af0      je    0xafd
│      ││   0000:0af2      mov   byte [0xff39], 0x80                   ; [0x80:1]=255
│      ││   0000:0af7      mov   byte [0xff3d], 0x80                   ; [0x80:1]=255
│      ││   0000:0afc      ret
│      └──> 0000:0afd      mov   byte [0x9f0a], 0
│       │   0000:0b02      mov   byte [0xff38], 0xff                   ; [0xff:1]=56
│       │   0000:0b07      ret
│       │   ; CODE XREF from fcn.00000acd @ 0xb30
│      ┌└─> 0000:0b08      call  fcn.00000db5                          ; fcn.00000db5
│      ╎    0000:0b0b      add   si, 0x6d
│      ╎    0000:0b0e      call  fcn.00000d86                          ; fcn.00000d86
│      ╎    0000:0b11      inc   byte [0xe7]
│      ╎    0000:0b15      mov   al, byte [si]
│      ╎    0000:0b17      call  fcn.00000de9                          ; fcn.00000de9
│      ╎┌─< 0000:0b1a      je    0xb22
│      ╎│   0000:0b1c      or    byte [0xe7], 1
│      ╎│   0000:0b21      ret
│      ╎└─> 0000:0b22      call  fcn.00000b32                          ; fcn.00000b32
│      ╎    0000:0b25      call  fcn.00000f9f                          ; fcn.00000f9f
│      ╎    0000:0b28      test  byte [0xe7], 1                        ; [0xe7:1]=205
│      ╎┌─< 0000:0b2d      je    0xb30
│      ╎│   0000:0b2f      ret
└      └└─> 0000:0b30      jmp   0xb08
```

### Function 0x00000b32
```asm
; XREFS: CODE 0x000004b3  CALL 0x00000994  CALL 0x00000b22  
            ; XREFS: CALL 0x00000fd0  CODE 0x0000200a  CODE 0x000021af  
├ (loc) fcn.00000b32();
│           0000:0b32      inc   byte [0x82]
│           0000:0b36      mov   si, word [0xff31]
│           0000:0b3a      add   si, 0x24
│           0000:0b3d      call  fcn.00000d86                          ; fcn.00000d86
│           0000:0b40      mov   word [0xff31], si
└           0000:0b44      ret
```

### Function 0x00000b7a
```asm
; CALL XREF from fcn.00000416 @ 0x4a6
            ; CALL XREF from fcn.0000095e @ 0x974
┌ fcn.00000b7a(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0b7a      call  fcn.00000db5                          ; fcn.00000db5
│           0000:0b7d      add   si, 0x6d
│           0000:0b80      call  fcn.00000d86                          ; fcn.00000d86
│           0000:0b83      mov   di, si
│           0000:0b85      call  fcn.00000dcf                          ; fcn.00000dcf
│           0000:0b88      add   al, al
│       ┌─< 0000:0b8a      jae   0xb8d
│       │   0000:0b8c      ret
│       └─> 0000:0b8d      dec   si
│           0000:0b8e      call  fcn.00000dcf                          ; fcn.00000dcf
│           0000:0b91      add   al, al
│       ┌─< 0000:0b93      jae   0xb96
│       │   0000:0b95      ret
│       └─> 0000:0b96      mov   si, di
│           0000:0b98      mov   al, byte [si]
│           0000:0b9a      call  fcn.00000e1f                          ; fcn.00000e1f
│           0000:0b9d      stc
│       ┌─< 0000:0b9e      je    0xba1
│       │   0000:0ba0      ret
│       └─> 0000:0ba1      cmp   byte [0xe7], 0x80                     ; [0xe7:1]=205
│           0000:0ba6      clc
│       ┌─< 0000:0ba7      jne   0xbaa
│       │   0000:0ba9      ret
│       └─> 0000:0baa      dec   si
│           0000:0bab      mov   al, byte [si]
│           0000:0bad      call  fcn.00000e1f                          ; fcn.00000e1f
│           0000:0bb0      clc
│       ┌─< 0000:0bb1      jne   0xbb4
│       │   0000:0bb3      ret
│       └─> 0000:0bb4      inc   si
│           0000:0bb5      inc   si
│           0000:0bb6      mov   al, byte [si]
│           0000:0bb8      call  fcn.00000e1f                          ; fcn.00000e1f
│           0000:0bbb      stc
│       ┌─< 0000:0bbc      je    0xbbf
│       │   0000:0bbe      ret
│       └─> 0000:0bbf      clc
└           0000:0bc0      ret
```

### Function 0x00000bc1
```asm
; XREFS: CALL 0x00000311  CALL 0x0000031c  CALL 0x000005cd  
            ; XREFS: CALL 0x000005d3  CALL 0x000005e2  CALL 0x0000060a  
            ; XREFS: CALL 0x000009a7  CALL 0x00000ae6  
┌ fcn.00000bc1();
│           0000:0bc1      mov   al, byte [si]
│           0000:0bc3      dec   al
│           0000:0bc5      cmp   al, 2
└           0000:0bc7      ret
```

### Function 0x00000bc8
```asm
; CALL XREF from fcn.00000a6b @ 0xa79
┌ fcn.00000bc8();
│           0000:0bc8      mov   es, word cs:[0xff2c]
│           0000:0bcd      mov   al, byte [si]
│           0000:0bcf      mov   di, 0x8018
│           0000:0bd2      mov   dl, 2
│           0000:0bd4      mov   cx, 4
│       ┌─> 0000:0bd7      test  byte es:[di], 0xff
│      ┌──< 0000:0bdb      je    0xbe6
│      │╎   0000:0bdd      cmp   al, byte es:[di]
│     ┌───< 0000:0be0      jne   0xbe3
│     ││╎   0000:0be2      ret
│     └───> 0000:0be3      inc   di
│      │└─< 0000:0be4      loop  0xbd7
│      └──> 0000:0be6      mov   di, 0x801c
│           0000:0be9      mov   dl, 1
│           0000:0beb      mov   cx, 4
│       ┌─> 0000:0bee      test  byte es:[di], 0xff
│      ┌──< 0000:0bf2      je    0xbfd
│      │╎   0000:0bf4      cmp   al, byte es:[di]
│     ┌───< 0000:0bf7      jne   0xbfa
│     ││╎   0000:0bf9      ret
│     └───> 0000:0bfa      inc   di
│      │└─< 0000:0bfb      loop  0xbee
│      └──> 0000:0bfd      or    dl, dl
└           0000:0bff      ret
```

### Function 0x00000c00
```asm
; CALL XREF from fcn.00001985 @ +0xfc
            ; CALL XREF from fcn.00001a87 @ 0x1b8f
┌ fcn.00000c00();
│           0000:0c00      mov   si, word [0xc00c]
│           ; CODE XREF from fcn.00000c00 @ 0xc35
│       ┌─> 0000:0c04      mov   di, word [si]
│       ╎   0000:0c06      cmp   di, 0xffff
│      ┌──< 0000:0c09      jne   0xc0c
│      │╎   0000:0c0b      ret
│      │╎   ; DATA XREF from fcn.00001752 @ +0xc9
│      └──> 0000:0c0c      add   si, 3
│       ╎   0000:0c0f      mov   al, byte [si - 1]
│       ╎   0000:0c12      and   al, byte [di]
│      ┌──< 0000:0c14      jne   0xc22
│      │╎   ; CODE XREF from fcn.00000c00 @ 0xc20
│     ┌───> 0000:0c16      mov   di, word [si]
│     ╎│╎   0000:0c18      cmp   di, 0xffff
│    ┌────< 0000:0c1b      je    0xc33
│    │╎│╎   0000:0c1d      add   si, 4
│    │└───< 0000:0c20      jmp   0xc16
│    │ │╎   ; CODE XREF from fcn.00000c00 @ 0xc31
│    │┌└──> 0000:0c22      mov   di, word [si]
│    │╎ ╎   0000:0c24      cmp   di, 0xffff
│    │╎┌──< 0000:0c27      je    0xc33
│    │╎│╎   0000:0c29      mov   ax, word [si + 2]
│    │╎│╎   0000:0c2c      mov   word [di], ax
│    │╎│╎   0000:0c2e      add   si, 4
│    │└───< 0000:0c31      jmp   0xc22
│    └─└──> 0000:0c33      inc   si
│       ╎   0000:0c34      inc   si
└       └─< 0000:0c35      jmp   0xc04
```

### Function 0x00000c37
```asm
; CALL XREF from fcn.00000046 @ 0x182
┌ fcn.00000c37();
│           0000:0c37      mov   si, 0x6c44                            ; 'Dl'
│           0000:0c3a      call  word cs:[fcn.0000200e]                ; 0x200e
│           0000:0c3f      mov   si, 0x6c4c                            ; 'Ll'
│           0000:0c42      call  word cs:[fcn.0000200e]                ; 0x200e
└           0000:0c47      ret
```

### Function 0x00000c59
```asm
; CALL XREFS from fcn.00000046 @ 0x86, 0x23b
┌ fcn.00000c59();
│           0000:0c59      mov   bx, 0x210
│           0000:0c5c      xor   al, al
│           0000:0c5e      mov   ch, 0x21                              ; '!'
│           0000:0c60      call  word cs:[fcn.00002004]                ; 0x2004 ; "X\xc6\U00000006\xe7"
│           0000:0c65      mov   bx, 0x2310
│           0000:0c68      mov   al, 0x80
│           0000:0c6a      mov   ch, 0x67                              ; 'g'
│           0000:0c6c      call  word cs:[fcn.00002004]                ; 0x2004 ; "X\xc6\U00000006\xe7"
│           0000:0c71      mov   bx, 0xaa9
│           0000:0c74      mov   dx, 0xab5
│           0000:0c77      mov   cx, 0xe03
│           0000:0c7a      call  word cs:[fcn.0000202c]                ; 0x202c ; "Z\x8bރ\xc6#\xe8Q\xed\xf6\U00000004\x80\xf8t\U00000001ù\U00000003"
│           0000:0c7f      mov   bx, 0x21c
│           0000:0c82      xor   al, al
│           0000:0c84      mov   ch, 0x42                              ; 'B'
│           0000:0c86      call  word cs:[fcn.00002004]                ; 0x2004 ; "X\xc6\U00000006\xe7"
│           0000:0c8b      mov   si, 0x6c8f
└           0000:0c8e      jmp   word cs:[fcn.0000200e]                ; 0x200e
```

### Function 0x00000c9c
```asm
; CALL XREFS from fcn.00000046 @ 0x1bc, 0x241
┌ fcn.00000c9c();
│           0000:0c9c      mov   si, 0xc01b
│           0000:0c9f      mov   cx, word [0x80]                       ; [0x80:2]=0x75ff
│           0000:0ca3      or    cx, cx
│       ┌─< 0000:0ca5      je    0xcb6
│      ┌──> 0000:0ca7      xor   dh, dh
│     ┌───> 0000:0ca9      call  fcn.00000cf1                          ; fcn.00000cf1
│     ╎╎│   0000:0cac      inc   si
│     ╎╎│   0000:0cad      add   dh, bh
│     ╎╎│   0000:0caf      cmp   dh, 0x40
│     └───< 0000:0cb2      jb    0xca9
│      └──< 0000:0cb4      loop  0xca7
│       └─> 0000:0cb6      mov   word [0x9f03], si
│           0000:0cba      mov   di, 0xe000
│           0000:0cbd      mov   ax, word [0x80]                       ; [0x80:2]=0x75ff
│           0000:0cc0      mov   cx, 0x24                              ; '$'
│       ┌─> 0000:0cc3      push  di
│       ╎   0000:0cc4      call  fcn.00000d5b                          ; fcn.00000d5b
│       ╎   0000:0cc7      pop   di
│       ╎   0000:0cc8      inc   di
│       ╎   0000:0cc9      inc   ax
│       ╎   0000:0cca      cmp   ax, word [0xc002]
│      ┌──< 0000:0cce      jne   0xcd5
│      │╎   0000:0cd0      mov   si, 0xc01b
│      │╎   0000:0cd3      xor   ax, ax
│      └└─< 0000:0cd5      loop  0xcc3
│           0000:0cd7      or    ax, ax
│       ┌─< 0000:0cd9      jne   0xcdf
│       │   0000:0cdb      mov   si, word [0xc019]
│       └─> 0000:0cdf      dec   si
│           0000:0ce0      mov   word [0x9f05], si
│           0000:0ce4      mov   al, byte [0x82]                       ; [0x82:1]=3
│           0000:0ce7      xor   ah, ah
│           0000:0ce9      call  fcn.00000d72                          ; fcn.00000d72
│           0000:0cec      mov   word [0xff31], di
└           0000:0cf0      ret
```

### Function 0x00000cf1
```asm
; CALL XREF from fcn.000008a4 @ 0x8f1
            ; CALL XREF from fcn.00000c9c @ 0xca9
            ; CALL XREF from fcn.00000d5b @ 0xd5d
┌ fcn.00000cf1(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0cf1      mov   bl, byte [si]
│           0000:0cf3      and   bl, 0xc0
│           0000:0cf6      rol   bl, 1
│           0000:0cf8      rol   bl, 1
│           0000:0cfa      xor   bh, bh
│           0000:0cfc      add   bx, bx                                ; arg3
└           0000:0cfe      jmp   word [bx + 0x6cfe]
```

### Function 0x00000d0a
```asm
; CALL XREFS from fcn.000006fc @ 0x72f, 0x75f
┌ fcn.00000d0a(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0d0a      mov   bl, byte [si]
│           0000:0d0c      and   bl, 0xc0
│           0000:0d0f      rol   bl, 1
│           0000:0d11      rol   bl, 1
│           0000:0d13      xor   bh, bh
│           0000:0d15      add   bx, bx                                ; arg3
└           0000:0d17      jmp   word [bx + 0x6d17]
```

### Function 0x00000d5b
```asm
; CALL XREF from fcn.000008a4 @ 0x8cf
            ; CALL XREF from fcn.00000c9c @ 0xcc4
┌ fcn.00000d5b();
│           0000:0d5b      xor   dl, dl
│       ┌─> 0000:0d5d      call  fcn.00000cf1                          ; fcn.00000cf1
│       ╎   0000:0d60      inc   si
│       ╎   0000:0d61      add   dl, bh
│      ┌──> 0000:0d63      mov   byte [di], bl
│      ╎╎   0000:0d65      add   di, 0x24
│      ╎╎   0000:0d68      dec   bh
│      └──< 0000:0d6a      jne   0xd63
│       ╎   0000:0d6c      cmp   dl, 0x40
│       └─< 0000:0d6f      jb    0xd5d
└           0000:0d71      ret
```

### Function 0x00000d72
```asm
; XREFS(30)
┌ fcn.00000d72(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0d72      push  bx                                    ; arg3
│           0000:0d73      and   al, 0x3f
│           0000:0d75      mov   bl, ah
│           0000:0d77      mov   bh, 0x24                              ; '$'
│           0000:0d79      mul   bh
│           0000:0d7b      xor   bh, bh
│           0000:0d7d      add   ax, bx                                ; arg3
│           0000:0d7f      add   ax, 0xe000                            ; arg1
│           0000:0d82      mov   di, ax                                ; arg1
│           0000:0d84      pop   bx
└           0000:0d85      ret
```

### Function 0x00000d86
```asm
; XREFS(47)
┌ fcn.00000d86();
│           0000:0d86      cmp   si, 0xe900
│       ┌─< 0000:0d8a      jae   0xd8d
│       │   0000:0d8c      ret
│       └─> 0000:0d8d      sub   si, 0x900
└           0000:0d91      ret
```

### Function 0x00000d92
```asm
; XREFS(29)
┌ fcn.00000d92();
│           0000:0d92      cmp   si, 0xe000
│       ┌─< 0000:0d96      jb    0xd99
│       │   0000:0d98      ret
│       └─> 0000:0d99      add   si, 0x900
└           0000:0d9d      ret
```

### Function 0x00000d9e
```asm
; CALL XREF from fcn.000004bf @ 0x4bf
            ; CALL XREF from fcn.0000050c @ 0x50c
            ; CALL XREF from fcn.0000095e @ 0x678
            ; CALL XREF from fcn.000007ca @ 0x7f7
┌ fcn.00000d9e();
│           0000:0d9e      cmp   byte [0xc012], 4
│       ┌─< 0000:0da3      je    0xda6
│       │   0000:0da5      ret
│       └─> 0000:0da6      cmp   byte [0x9e], 4                        ; [0x9e:1]=240
│       ┌─< 0000:0dab      jne   0xdb2
│       │   0000:0dad      mov   al, 0xff
│       │   0000:0daf      or    al, al
│       │   0000:0db1      ret
│       └─> 0000:0db2      xor   al, al
└           0000:0db4      ret
```

### Function 0x00000db5
```asm
╎   ; XREFS(25)
┌ fcn.00000db5(int16_t arg1, int16_t arg4);
│       ╎   ; arg int16_t arg1 @ ax
│       ╎   ; arg int16_t arg4 @ cx
│       ╎   0000:0db5      mov   al, byte [0x84]                       ; [0x84:1]=247
│       ╎   0000:0db8      mov   cl, 0x24                              ; '$'
│       ╎   0000:0dba      mul   cl
│       ╎   0000:0dbc      mov   cl, byte [0x83]                       ; [0x83:1]=233
│       ╎   0000:0dc0      add   cl, 4
│       ╎   0000:0dc3      xor   ch, ch
│       ╎   0000:0dc5      add   ax, cx                                ; arg4
│       ╎   0000:0dc7      mov   si, ax                                ; arg1
│       ╎   0000:0dc9      add   si, word [0xff31]
└       └─< 0000:0dcd      jmp   fcn.00000d86                          ; fcn.00000d86
```

### Function 0x00000dcf
```asm
; XREFS: CALL 0x000006b8  CALL 0x00000860  CALL 0x00000b85  
            ; XREFS: CALL 0x00000b8e  CALL 0x00000eb8  CALL 0x00000f82  
            ; XREFS: CALL 0x00001642  CALL 0x00001655  CALL 0x00001668  
            ; XREFS: CALL 0x0000200d  CALL 0x00002772  CALL 0x00002c53  
┌ fcn.00000dcf(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0dcf      mov   al, byte [si]
│           0000:0dd1      test  al, 0x80
│           0000:0dd3      stc
│       ┌─< 0000:0dd4      jne   0xdd7
│       │   0000:0dd6      ret
│       └─> 0000:0dd7      and   al, 0x7f
│           0000:0dd9      mov   cl, 0x10
│           0000:0ddb      mul   cl
│           0000:0ddd      mov   bx, ax                                ; arg1
│           0000:0ddf      add   bx, word [0xc010]
│           0000:0de3      mov   al, byte [bx + 4]
│           0000:0de6      or    al, al
└           0000:0de8      ret
```

### Function 0x00000de9
```asm
; XREFS: CALL 0x000003f3  CALL 0x000003fd  CALL 0x0000040b  
            ; XREFS: CALL 0x0000057a  CALL 0x000006d3  CALL 0x0000087b  
            ; XREFS: CALL 0x00000a2d  CALL 0x00000a36  CALL 0x00000a59  
            ; XREFS: CALL 0x00000a62  CALL 0x00000b17  CALL 0x0000208b  
            ; XREFS: CALL 0x00002b51  CALL 0x00002b59  
┌ fcn.00000de9(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:0de9      cmp   al, 0x40
│       ┌─< 0000:0deb      jb    0xdf7
│       │   0000:0ded      cmp   al, al
│       │   0000:0def      ret
        │   ; CALL XREF from fcn.00002473 @ 0x248b
..
│      └└─> 0000:0df7      push  di
│           0000:0df8      push  cx                                    ; arg4
│           0000:0df9      mov   es, word cs:[0xff2c]
│           0000:0dfe      mov   di, 0x8000
│           0000:0e01      mov   cx, 0x18
│           0000:0e04      repne scasb al, byte es:[di]
│           0000:0e06      pop   cx
│           0000:0e07      pop   di
│       ┌─< 0000:0e08      jne   0xe0b
│       │   0000:0e0a      ret
│       └─> 0000:0e0b      and   al, 0x9f
│           0000:0e0d      cmp   al, 0x90
│       ┌─< 0000:0e0f      je    0xe1a
│       │   0000:0e11      cmp   al, 0x91
│      ┌──< 0000:0e13      je    0xe1a
│      ││   0000:0e15      and   al, 0x80
│      ││   0000:0e17      cmp   al, 0x80
│      ││   0000:0e19      ret
│      └└─> 0000:0e1a      mov   al, 0xff
│           0000:0e1c      or    al, al
│           ; DATA XREF from fcn.000013e4 @ 0x13e6
└           0000:0e1e      ret
```

### Function 0x00000df0
```asm
; CALL XREF from fcn.00002473 @ 0x248b
┌ fcn.00000df0(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:0df0      cmp   al, 0x49
│       ┌─< 0000:0df2      jb    0xdf7                                 ; fcn.00000de9+0xe
│       │   0000:0df4      cmp   al, al
└       │   0000:0df6      ret
```

### Function 0x00000e1f
```asm
; CALL XREF from fcn.000006a9 @ 0x6eb
            ; CALL XREF from fcn.00000850 @ 0x893
            ; CALL XREFS from fcn.00000b7a @ 0xb9a, 0xbad, 0xbb8
┌ fcn.00000e1f(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:0e1f      cmp   al, 0x49
│       ┌─< 0000:0e21      jb    0xe26
│       │   0000:0e23      cmp   al, al
│       │   0000:0e25      ret
│       └─> 0000:0e26      push  di
│           0000:0e27      push  cx                                    ; arg4
│           0000:0e28      mov   es, word cs:[0xff2c]
│           0000:0e2d      mov   di, 0x8000
│           0000:0e30      mov   cx, 0x18
│           0000:0e33      repne scasb al, byte es:[di]
│           0000:0e35      pop   cx
│           0000:0e36      pop   di
│       ┌─< 0000:0e37      jne   0xe3a
│       │   0000:0e39      ret
│       └─> 0000:0e3a      and   al, 0x80
│           0000:0e3c      cmp   al, 0x80
└           0000:0e3e      ret
```

### Function 0x00000e3f
```asm
; CALL XREF from fcn.00000046 @ 0x2a7
┌ fcn.00000e3f();
│           0000:0e3f      test  byte [0x92], 0xff                     ; [0x92:1]=255
│       ┌─< 0000:0e44      jne   0xe47
│       │   0000:0e46      ret
│       └─> 0000:0e47      int   0x61
│           0000:0e49      test  ah, 1
│       ┌─< 0000:0e4c      je    0xe80
│       │   0000:0e4e      test  byte [0xff3d], 0xff
│      ┌──< 0000:0e53      je    0xe80
│      ││   0000:0e55      test  byte [0xff42], 0xff
│     ┌───< 0000:0e5a      jne   0xe80
│     │││   0000:0e5c      test  al, 2
│    ┌────< 0000:0e5e      je    0xe80
│    ││││   0000:0e60      mov   byte [0xff45], 2
│    ││││   0000:0e65      mov   byte [0xff46], 2
│    ││││   0000:0e6a      test  byte [0xff47], 0xff
│   ┌─────< 0000:0e6f      je    0xe74
│  ┌──────< 0000:0e71      jmp   0xefb
│  │└─────> 0000:0e74      mov   byte [0xff47], 0xff                   ; [0xff:1]=56
│  │ ││││   0000:0e79      mov   byte [0xff75], 4
│  │┌─────< 0000:0e7e      jmp   0xefb
│  ││└└└└─> 0000:0e80      mov   byte [0xff47], 0
│  ││       0000:0e85      test  byte [0xff1d], 0xff
│  ││   ┌─< 0000:0e8a      jne   0xe8d
│  ││   │   0000:0e8c      ret
│  ││   └─> 0000:0e8d      test  byte [0xff43], 0xff
│  ││   ┌─< 0000:0e92      je    0xe95
│  ││   │   0000:0e94      ret
│  ││   └─> 0000:0e95      test  byte [0xff3c], 0xff
│  ││   ┌─< 0000:0e9a      je    0xe9d
│  ││   │   0000:0e9c      ret
│  ││   └─> 0000:0e9d      test  byte [0xff34], 0xff
│  ││   ┌─< 0000:0ea2      jne   0xeda
│  ││   │   0000:0ea4      call  fcn.00000db5                          ; fcn.00000db5
│  ││   │   0000:0ea7      sub   si, 0x93
│  ││   │   0000:0eab      call  fcn.00000d92                          ; fcn.00000d92
│  ││   │   0000:0eae      xor   dl, dl
│  ││   │   0000:0eb0      mov   cx, 4
│  ││  ┌──> 0000:0eb3      push  cx
│  ││  ╎│   0000:0eb4      mov   cx, 8
│  ││ ┌───> 0000:0eb7      push  cx
│  ││ ╎╎│   0000:0eb8      call  fcn.00000dcf                          ; fcn.00000dcf
│  ││┌────< 0000:0ebb      jb    0xec9
│  │││╎╎│   0000:0ebd      test  al, 0x60
│ ┌───────< 0000:0ebf      jne   0xec9
│ ││││╎╎│   0000:0ec1      test  byte [bx + 7], 0x10
│ ────────< 0000:0ec5      jne   0xec9
│ ││││╎╎│   0000:0ec7      mov   dl, 0xff
│ └──└────> 0000:0ec9      inc   si
│  ││ ╎╎│   0000:0eca      pop   cx
│  ││ └───< 0000:0ecb      loop  0xeb7
│  ││  ╎│   0000:0ecd      add   si, 0x1c
│  ││  ╎│   0000:0ed0      call  fcn.00000d86                          ; fcn.00000d86
│  ││  ╎│   0000:0ed3      pop   cx
│  ││  └──< 0000:0ed4      loop  0xeb3
│  ││   │   0000:0ed6      or    dl, dl
│  ││  ┌──< 0000:0ed8      jne   0xee0
│  ││  │└─> 0000:0eda      int   0x61
│  ││  │    0000:0edc      test  al, 1
│  ││  │┌─< 0000:0ede      je    0xeec
│  ││  └──> 0000:0ee0      mov   byte [0xff45], 1
│  ││   │   0000:0ee5      mov   byte [0xff46], 0
│  ││  ┌──< 0000:0eea      jmp   0xef6
│  ││  │└─> 0000:0eec      mov   byte [0xff45], 0
│  ││  │    0000:0ef1      mov   byte [0xff46], 0
│  ││  │    ; CODE XREF from fcn.00000e3f @ 0xeea
│  ││  └──> 0000:0ef6      mov   byte [0xff75], 3
│  ││       ; CODE XREFS from fcn.00000e3f @ 0xe71, 0xe7e
│  └└─────> 0000:0efb      mov   byte [0xff1d], 0
│           0000:0f00      mov   byte [0xff1e], 0
│           0000:0f05      mov   byte [0xff43], 0xff                   ; [0xff:1]=56
└           0000:0f0a      ret
```

### Function 0x00000f0b
```asm
; CALL XREF from fcn.00001093 @ 0x1148
┌ fcn.00000f0b(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0f0b      test  byte [0xff43], 0xff
│       ┌─< 0000:0f10      jne   0xf13
│       │   0000:0f12      ret
│       └─> 0000:0f13      test  byte [0xff34], 0xff
│       ┌─< 0000:0f18      je    0xf22
│       │   0000:0f1a      test  byte [0xff2e], 0xff
│      ┌──< 0000:0f1f      je    0xf22
│      ││   0000:0f21      ret
│      └└─> 0000:0f22      call  fcn.00000db5                          ; fcn.00000db5
│           0000:0f25      mov   bx, 0x90
│           0000:0f28      test  byte [0xff38], 0xff
│       ┌─< 0000:0f2d      je    0xf32
│       │   0000:0f2f      mov   bx, 0x6c                              ; 'l'
│       └─> 0000:0f32      sub   si, bx
│           0000:0f34      call  fcn.00000d92                          ; fcn.00000d92
│           0000:0f37      mov   bl, byte [0xc2]                       ; [0xc2:1]=22
│           0000:0f3b      and   bl, 1
│           0000:0f3e      add   bl, bl
│           0000:0f40      add   bl, bl
│           0000:0f42      add   bl, bl
│           0000:0f44      add   bl, bl
│           0000:0f46      mov   al, byte [0xff45]                     ; [0xff45:1]=255
│           0000:0f49      mov   ah, 0
│           0000:0f4b      or    al, al
│       ┌─< 0000:0f4d      je    0xf5b
│       │   0000:0f4f      mov   ah, 6
│       │   0000:0f51      dec   al
│      ┌──< 0000:0f53      je    0xf5b
│      ││   0000:0f55      mov   al, bl
│      ││   0000:0f57      add   al, 0xa
│     ┌───< 0000:0f59      jmp   0xf62
│     │└└─> 0000:0f5b      mov   al, byte [0xff46]                     ; [0xff46:1]=255
│     │     0000:0f5e      or    al, bl
│     │     0000:0f60      add   al, ah
│     │     ; CODE XREF from fcn.00000f0b @ 0xf59
│     └───> 0000:0f62      and   al, 0xfe
│           0000:0f64      mov   bl, al
│           0000:0f66      xor   bh, bh
│           0000:0f68      mov   es, word cs:[0xff2c]
│           0000:0f6d      mov   di, word es:[bx - 0x4ffe]
│           ; CODE XREF from fcn.00000f0b @ 0xf9d
│    ┌┌┌┌─> 0000:0f72      mov   al, byte es:[di]
│    ╎╎╎╎   0000:0f75      inc   di
│    ╎╎╎╎   0000:0f76      cmp   al, 0xff
│   ┌─────< 0000:0f78      jne   0xf7b
│   │╎╎╎╎   0000:0f7a      ret
│   └─────> 0000:0f7b      xor   ah, ah
│    ╎╎╎╎   0000:0f7d      add   si, ax
│    ╎╎╎╎   0000:0f7f      call  fcn.00000d86                          ; fcn.00000d86
│    ╎╎╎╎   0000:0f82      call  fcn.00000dcf                          ; fcn.00000dcf
│    └────< 0000:0f85      jb    0xf72
│     ╎╎╎   0000:0f87      test  al, 0x20                              ; "b\x93\x9a\x93œ\f\x94R\x94\x9a\x94nm\x82m\x8emᔠ\x97Ֆ\xb5\x97\xa1\x96Q\x98\U00000011\x86ۃŘ[\x97\xfa\xbc"
│     └───< 0000:0f89      jne   0xf72
│      ╎╎   0000:0f8b      test  byte [bx + 5], 0x20
│      └──< 0000:0f8f      jne   0xf72
│       ╎   0000:0f91      or    byte [bx + 5], 0x40                   ; [0x40:1]=219
│       ╎   0000:0f95      and   byte [bx + 5], 0xe0                   ; [0xe0:1]=44
│       ╎   0000:0f99      or    byte [bx + 5], 1
└       └─< 0000:0f9d      jmp   0xf72
```

### Function 0x00000f9f
```asm
; XREFS: CALL 0x000001c2  CALL 0x0000024e  CALL 0x000002ad  
            ; XREFS: CALL 0x000002fd  CALL 0x00000618  CALL 0x00000b25  
            ; XREFS: CODE 0x000012da  CODE 0x0000296f  CALL 0x0000393c  
            ; XREFS: CALL 0x0000394c  CALL 0x00003998  
┌ fcn.00000f9f();
│           0000:0f9f      mov   al, 2
│           0000:0fa1      cmp   byte [0x9e], 1                        ; [0x9e:1]=240
│       ┌─< 0000:0fa6      jne   0xfaa
│       │   0000:0fa8      mov   al, 4
│       └─> 0000:0faa      mov   byte [0x9f0d], al                     ; [0x9f0d:1]=255
│           0000:0fad      call  fcn.0000169d                          ; fcn.0000169d
│           0000:0fb0      test  byte [0xff3d], 0xff
│       ┌─< 0000:0fb5      jne   0xfd7
│       │   0000:0fb7      mov   byte [0x9f09], 0
│       │   0000:0fbc      mov   al, byte [0x9f00]                     ; [0x9f00:1]=255
│       │   0000:0fbf      cmp   al, byte [0x84]                       ; [0x84:1]=247
│      ┌──< 0000:0fc3      je    0xfd7
│     ┌───< 0000:0fc5      jb    0xfd0
│     │││   0000:0fc7      call  fcn.00000625                          ; fcn.00000625
│     │││   0000:0fca      inc   byte [0x84]
│    ┌────< 0000:0fce      jmp   0xfd7
│    │└───> 0000:0fd0      call  fcn.00000b32                          ; fcn.00000b32
│    │ ││   0000:0fd3      dec   byte [0x84]
│    │ ││   ; CODE XREF from fcn.00000f9f @ 0xfce
│    └─└└─> 0000:0fd7      test  byte [0xe6], 0xff                     ; [0xe6:1]=192
│       ┌─< 0000:0fdc      jne   0xfe5
│       │   0000:0fde      test  byte [0xff34], 0xff
│      ┌──< 0000:0fe3      je    0xffd
│      │└─> 0000:0fe5      mov   si, word [0xa002]
│      │    0000:0fe9      add   si, 7
│      │    0000:0fec      mov   al, byte [si]
│      │    0000:0fee      cmp   byte [0x83], al                       ; [0x83:1]=233
│      │┌─< 0000:0ff2      je    0x100b
│      ││   0000:0ff4      call  fcn.00000850                          ; fcn.00000850
│      ││   0000:0ff7      dec   byte [0x83]
│     ┌───< 0000:0ffb      jmp   0x100b
│     │└──> 0000:0ffd      mov   al, byte [0x83]                       ; [0x83:1]=233
│     │ │   0000:1000      cmp   al, 0xc
│     │┌──< 0000:1002      je    0x100b
│     │││   0000:1004      call  fcn.000006a9                          ; fcn.000006a9
│     │││   0000:1007      inc   byte [0x83]
│     │││   ; CODE XREF from fcn.00000f9f @ 0xffb
│     └└└─> 0000:100b      mov   al, byte [0x84]                       ; [0x84:1]=247
│           0000:100e      add   al, byte [0x82]                       ; [0x82:1]=3
│           0000:1012      and   al, 0x3f
│           0000:1014      mov   byte [0xff35], al                     ; [0xff35:1]=255
│           0000:1017      call  fcn.00001752                          ; fcn.00001752
│           0000:101a      call  fcn.000021b2                          ; fcn.000021b2
│           0000:101d      call  fcn.00001fb5                          ; fcn.00001fb5
│           0000:1020      call  fcn.00002167                          ; fcn.00002167
│           0000:1023      call  fcn.000018e1                          ; fcn.000018e1
│           0000:1026      call  fcn.00002ab1                          ; fcn.00002ab1
│           0000:1029      test  byte [0xff30], 0xff
│       ┌─< 0000:102e      jne   0x1033
│       │   0000:1030      call  fcn.00002d1d                          ; fcn.00002d1d
│       └─> 0000:1033      mov   byte [0xff36], 0
│           0000:1038      mov   byte [0x9f14], 0
│           0000:103d      call  fcn.00001523                          ; fcn.00001523
│           0000:1040      call  word cs:[fcn.00003004]                ; 0x3004
│           0000:1045      call  fcn.00002426                          ; fcn.00002426
│           0000:1048      call  fcn.00002700                          ; fcn.00002700
│           0000:104b      call  word cs:[0x3006]
│           0000:1050      call  fcn.000014a4                          ; fcn.000014a4
│           0000:1053      cmp   byte [0xc012], 7
│       ┌─< 0000:1058      jne   0x1082
│       │   0000:105a      cmp   byte [0x9e], 5                        ; [0x9e:1]=240
│      ┌──< 0000:105f      je    0x1082
│      ││   0000:1061      inc   byte [0x9f25]
│      ││   0000:1065      test  byte [0x9f25], 0x3f
│     ┌───< 0000:106a      jne   0x1082
│     │││   0000:106c      mov   byte [0xff36], 0xff                   ; [0xff:1]=56
│     │││   0000:1071      mov   byte [0xff75], 9
│     │││   0000:1076      mov   ax, 0xf                               ; int16_t arg1
│     │││   0000:1079      call  fcn.00001689                          ; fcn.00001689
│     │││   0000:107c      mov   dx, 0x9bb9                            ; int16_t arg2
│     │││   0000:107f      call  fcn.000013e4                          ; fcn.000013e4
│     └└└─> 0000:1082      call  fcn.00001214                          ; fcn.00001214
│           0000:1085      test  byte [0xe8], 0xff                     ; [0xe8:1]=96
│       ┌─< 0000:108a      je    fcn.00001093                          ; fcn.00001093
│       │   0000:108c      mov   byte [0xff36], 0
└      ┌──< 0000:1091      jmp   0x1098                                ; fcn.00001093+0x5
```

### Function 0x00001093
```asm
╎╎   ; CALL XREF from fcn.00001a87 @ 0x1b45
┌ fcn.00001093(int16_t arg1, int16_t arg2);
│      ╎╎   ; arg int16_t arg1 @ ax
│      ╎╎   ; arg int16_t arg2 @ dx
│      ╎╎   0000:1093      mov   byte [0xff37], 0
│      ╎╎   ; CODE XREF from fcn.00000f9f @ 0x1091
│      ╎╎   0000:1098      mov   byte [0xff40], 0
│      ╎╎   0000:109d      test  byte [0xff43], 0xff
│     ┌───< 0000:10a2      je    0x10b7
│     │╎╎   0000:10a4      mov   byte [0xff40], 0xff                   ; [0xff:1]=56
│     │╎╎   0000:10a9      mov   al, byte [0xff45]                     ; [0xff45:1]=255
│     │╎╎   0000:10ac      mov   byte [0xff41], al                     ; [0xff41:1]=255
│     │╎╎   0000:10af      mov   al, byte [0xff46]                     ; [0xff46:1]=255
│     │╎╎   0000:10b2      mov   byte [0xff3f], al                     ; [0xff3f:1]=255
│    ┌────< 0000:10b5      jmp   0x10ce
│    │└───> 0000:10b7      test  byte [0xff3c], 0xff
│    │┌───< 0000:10bc      je    0x10ce
│    ││╎╎   0000:10be      mov   byte [0xff40], 0xff                   ; [0xff:1]=56
│    ││╎╎   0000:10c3      mov   al, byte [0x9f2b]                     ; [0x9f2b:1]=255
│    ││╎╎   0000:10c6      mov   byte [0xff3f], al                     ; [0xff3f:1]=255
│    ││╎╎   0000:10c9      mov   byte [0xff41], 1
│    ││╎╎   ; CODE XREF from fcn.00001093 @ 0x10b5
│    └└───> 0000:10ce      test  byte [0xff37], 0xff
│     ┌───< 0000:10d3      jne   0x10d8
│     │╎╎   0000:10d5      call  fcn.00001480                          ; fcn.00001480
│     └───> 0000:10d8      call  word cs:[str..]                       ; 0x3002 ; "s\U00000001\xc3\xfe\U00000006\x99"
│      ╎╎   0000:10dd      test  byte [0xe8], 0xff                     ; [0xe8:1]=96
│     ┌───< 0000:10e2      jne   0x1113
│     │╎╎   0000:10e4      mov   ax, word [0xc6]                       ; [0xc6:2]=0x3706
│     │╎╎   0000:10e7      or    ax, ax
│    ┌────< 0000:10e9      je    0x1113
│    ││╎╎   0000:10eb      dec   ax
│    ││╎╎   0000:10ec      mov   word [0xc6], ax
│    ││╎╎   0000:10ef      add   word [0x90], 8
│    ││╎╎   0000:10f4      mov   ax, word [0xb2]                       ; [0xb2:2]=0x68e
│    ││╎╎   0000:10f7      cmp   ax, word [0x90]                       ; [0x90:2]=0x9f02
│   ┌─────< 0000:10fb      jae   0x1109
│   │││╎╎   0000:10fd      mov   ax, word [0xb2]                       ; [0xb2:2]=0x68e
│   │││╎╎   0000:1100      mov   word [0x90], ax
│   │││╎╎   0000:1103      mov   word [0xc6], 0
│   └─────> 0000:1109      mov   byte [0xff75], 0x13                   ; [0x13:1]=146
│    ││╎╎   0000:110e      call  word cs:[fcn.00002008]                ; 0x2008
│    └└───> 0000:1113      call  word cs:[0x3000]
│      ╎╎   0000:1118      test  byte [0xff2f], 0xff
│     ┌───< 0000:111d      je    0x1129
│     │╎╎   0000:111f      call  word cs:[0x3010]
│     │╎╎   0000:1124      mov   byte [0xff24], 0xa
│     └───> 0000:1129      mov   cl, byte [0xff33]
│      ╎╎   0000:112d      mov   al, 2
│      ╎╎   0000:112f      mul   cl
│     ┌───> 0000:1131      cmp   byte [0xff1a], al
│     └───< 0000:1135      jb    0x1131
│      ╎╎   0000:1137      call  fcn.00002700                          ; fcn.00002700
│      ╎╎   0000:113a      call  word cs:[fcn.00003004]                ; 0x3004
│      ╎╎   0000:113f      call  fcn.0000236a                          ; fcn.0000236a
│      ╎╎   0000:1142      call  fcn.0000267d                          ; fcn.0000267d
│      ╎╎   0000:1145      call  fcn.00002972                          ; fcn.00002972
│      ╎╎   0000:1148      call  fcn.00000f0b                          ; fcn.00000f0b
│      ╎╎   0000:114b      call  word cs:[0x3006]
│      ╎╎   0000:1150      mov   cl, byte [0xff33]
│      ╎╎   0000:1154      mov   al, 4
│      ╎╎   0000:1156      mul   cl
│     ┌───> 0000:1158      push  ax
│     ╎╎╎   0000:1159      call  word cs:[fcn.00000110]                ; 0x110 ; "Ar\xf9.\xff\U00000016\U0000001c0Y\xe2ҋ6"
│     ╎╎╎   0000:115e      call  word cs:[fcn.00000112]                ; 0x112
│     ╎╎╎   0000:1163      call  word cs:[fcn.00000114]                ; 0x114
│     ╎╎╎   0000:1168      call  word cs:[fcn.00000116]                ; 0x116
│     ╎╎╎   0000:116d      call  word cs:[fcn.00000118]                ; 0x118 ; "Y\xe2ҋ6"
│     ╎╎╎   0000:1172      call  word cs:[0x11e]
│    ┌────< 0000:1177      jae   0x117c
│    │╎╎╎   0000:1179      call  fcn.000018db                          ; fcn.000018db
│    └────> 0000:117c      pop   ax
│     ╎╎╎   0000:117d      cmp   byte [0xff1a], al
│     └───< 0000:1181      jb    0x1158
│      ╎╎   0000:1183      mov   byte [0xff1a], 0
│      ╎╎   0000:1188      test  byte [0xe8], 0xff                     ; [0xe8:1]=96
│     ┌───< 0000:118d      je    0x1190
│     │╎╎   0000:118f      ret
│     └───> 0000:1190      test  byte [0x7f], 0xff                     ; [0x7f:1]=255
│     ┌───< 0000:1195      jne   0x11a2
│     │╎╎   0000:1197      test  word [0x90], 0xffff                   ; [0x90:2]=0x9f02
│    ┌────< 0000:119d      jne   0x11a2
│   ┌─────< 0000:119f      jmp   0x3900                                ; fcn.00000046+0x38ba
│   │└└───> 0000:11a2      inc   byte [0x9f18]
│   │  ╎╎   0000:11a6      cmp   byte [0x9f18], 0x10
│   │ ┌───< 0000:11ab      jb    0x11c6
│   │ │╎╎   0000:11ad      mov   byte [0x9f18], 0
│   │ │╎╎   0000:11b2      mov   ax, word [0x90]                       ; [0x90:2]=0x9f02
│   │ │╎╎   0000:11b5      cmp   ax, word [0xb2]                       ; [0xb2:2]=0x68e
│   │┌────< 0000:11b9      jae   0x11c6
│   │││╎╎   0000:11bb      add   ax, 2                                 ; int16_t arg1
│   │││╎╎   0000:11be      mov   word [0x90], ax
│   │││╎╎   0000:11c1      call  word cs:[fcn.00002008]                ; 0x2008
│   │└└───> 0000:11c6      test  byte [0x9f1e], 0xff
│   │ ┌───< 0000:11cb      je    0x11d0
│   │┌────< 0000:11cd      jmp   0x12f5
│   ││└───> 0000:11d0      test  byte [0xff34], 0xff
│   ││┌───< 0000:11d5      je    0x11fe
│   │││╎╎   0000:11d7      test  byte [0xff30], 0xff
│  ┌──────< 0000:11dc      je    0x11fe
│  ││││╎╎   0000:11de      cmp   byte [0xeda0], 0xff
│ ┌───────< 0000:11e3      jne   0x11fe
│ │││││╎╎   0000:11e5      mov   si, word [0xa002]
│ │││││╎╎   0000:11e9      add   si, 5
│ │││││╎╎   0000:11ec      lodsw ax, word [si]                         ; int16_t arg1
│ │││││╎╎   0000:11ed      push  si
│ │││││╎╎   0000:11ee      call  fcn.00003719                          ; fcn.00003719
│ │││││╎╎   0000:11f1      pop   si
│ │││││╎╎   0000:11f2      add   si, 4
│ │││││╎╎   0000:11f5      lodsw ax, word [si]                         ; int16_t arg1
│ │││││╎╎   0000:11f6      call  fcn.00003180                          ; fcn.00003180
│ │││││╎╎   0000:11f9      mov   byte [0x9f1e], 0xff                   ; [0xff:1]=56
│ └└──└───> 0000:11fe      test  byte [0xff2e], 0xff
│   ││┌───< 0000:1203      je    0x1206
│   │││╎╎   0000:1205      ret
│   ││└───> 0000:1206      test  word [0xff18], 1
│   ││┌───< 0000:120c      jne   0x1279
│   │││╎╎   0000:120e      mov   byte [0x9ef5], 0
│   │││╎╎   0000:1213      ret
    │││╎╎   ; CALL XREF from fcn.00000f9f @ 0x1082
    │││╎╎   ; CALL XREF from fcn.00001093 @ 0x1393
..
│   ││└───> 0000:1279      mov   al, byte [0x9ef5]                     ; [0x9ef5:1]=255 ; arg4
│   ││ ╎╎   0000:127c      or    al, byte [0xff3c]
│   ││ ╎╎   0000:1280      or    al, byte [0xff3e]
│   ││ ╎╎   0000:1284      or    al, byte [0x9f26]
│   ││┌───< 0000:1288      je    0x128b
│   │││╎╎   0000:128a      ret
│   ││└───> 0000:128b      mov   byte [0xff75], 0xb                    ; [0xb:1]=151
│   ││ ╎╎   0000:1290      call  word cs:[fcn.00002002]                ; 0x2002 ; "s\tX\xc6\U00000006\xe7"
│   ││ ╎╎   0000:1295      call  fcn.000012dd                          ; fcn.000012dd
│   ││ ╎╎   0000:1298      call  word cs:[0xa000]
│   ││ ╎╎   0000:129d      call  fcn.000012dd                          ; fcn.000012dd
│   ││ ╎╎   0000:12a0      cmp   byte [0xff4b], 8
│   ││┌───< 0000:12a5      jne   0x12aa
│  ┌──────< 0000:12a7      jmp   0x39e4                                ; fcn.00000046+0x399e
│  │││└───> 0000:12aa      call  word cs:[fcn.00002002]                ; 0x2002 ; "s\tX\xc6\U00000006\xe7"
│  │││ ╎╎   0000:12af      push  ds
│  │││ ╎╎   0000:12b0      call  word cs:[fcn.0000301a]                ; 0x301a
│  │││ ╎╎   0000:12b5      mov   cx, 0x18
│  │││ ╎╎   0000:12b8      call  word cs:[fcn.00002044]                ; 0x2044
│  │││ ╎╎   0000:12bd      pop   ds
│  │││ ╎╎   0000:12be      mov   byte [0x9ef5], 0xff                   ; [0xff:1]=56
│  │││ ╎╎   0000:12c3      call  fcn.000013b7                          ; fcn.000013b7
│  │││ ╎╎   0000:12c6      mov   byte [0xff1d], 0
│  │││ ╎╎   0000:12cb      mov   byte [0xff1e], 0
│  │││ ╎╎   0000:12d0      mov   byte [0x9eef], 0
│  │││ ╎╎   0000:12d5      mov   byte [0x9ef0], 0
│  │││ └──< 0000:12da      jmp   fcn.00000f9f                          ; fcn.00000f9f
   │││  ╎   ; CALL XREFS from fcn.00001093 @ 0x1295, 0x129d
..
│  │││  ╎   ; CODE XREF from fcn.00001093 @ 0x11cd
│  ││└────> 0000:12f5      test  byte [0xe8], 0xff                     ; [0xe8:1]=96
│  ││  ┌──< 0000:12fa      je    0x12fd
│  ││  │╎   0000:12fc      ret
│  ││  └──> 0000:12fd      mov   si, word [0xc000]
│  ││   ╎   0000:1301      add   si, 6
│  ││   ╎   0000:1304      lodsb al, byte [si]
│  ││   ╎   0000:1305      push  si
│  ││   ╎   0000:1306      mov   byte [0x9efe], al                     ; [0x9efe:1]=255
│  ││   ╎   0000:1309      mov   bl, 0xb
│  ││   ╎   0000:130b      mul   bl
│  ││   ╎   0000:130d      add   ax, 0x9cbc                            ; int16_t arg1
│  ││   ╎   0000:1310      mov   si, ax
│  ││   ╎   0000:1312      push  cs
│  ││   ╎   0000:1313      pop   es
│  ││   ╎   0000:1314      mov   di, 0xa000
│  ││   ╎   0000:1317      mov   al, 3
│  ││   ╎   0000:1319      call  word cs:[fcn.0000010c]                ; 0x10c
│  ││   ╎   0000:131e      pop   si
│  ││   ╎   0000:131f      lodsb al, byte [si]
│  ││   ╎   0000:1320      mov   byte [0x9eff], al                     ; [0x9eff:1]=255
│  ││   ╎   0000:1323      mov   bl, 0xb
│  ││   ╎   0000:1325      mul   bl
│  ││   ╎   0000:1327      add   ax, 0x9d8d                            ; int16_t arg1
│  ││   ╎   0000:132a      mov   si, ax
│  ││   ╎   0000:132c      mov   es, word cs:[0xff2c]
│  ││   ╎   0000:1331      mov   di, 0x4000
│  ││   ╎   0000:1334      mov   al, 2
│  ││   ╎   0000:1336      call  word cs:[fcn.0000010c]                ; 0x10c
│  ││   ╎   0000:133b      push  ds
│  ││   ╎   0000:133c      mov   ds, word cs:[0xff2c]
│  ││   ╎   0000:1341      mov   si, 0x4000
│  ││   ╎   0000:1344      mov   bp, 0xa000
│  ││   ╎   0000:1347      mov   cx, 0x100
│  ││   ╎   0000:134a      call  word cs:[fcn.00003028]                ; 0x3028
│  ││   ╎   0000:134f      pop   ds
│  ││   ╎   0000:1350      mov   byte [0xff34], 0
│  ││   ╎   0000:1355      mov   si, word [0xc000]
│  ││   ╎   0000:1359      add   si, 8
│  ││   ╎   ; CODE XREF from fcn.00001093 @ 0x1367
│  ││  ┌──> 0000:135c      lodsw ax, word [si]
│  ││  ╎╎   0000:135d      cmp   ax, 0xffff
│  ││ ┌───< 0000:1360      je    0x1369
│  ││ │╎╎   0000:1362      mov   bx, ax
│  ││ │╎╎   0000:1364      lodsw ax, word [si]
│  ││ │╎╎   0000:1365      mov   word [bx], ax
│  ││ │└──< 0000:1367      jmp   0x135c
│  ││ └───> 0000:1369      call  fcn.00000db5                          ; fcn.00000db5
│  ││   ╎   0000:136c      mov   ax, word [0x80]                       ; [0x80:2]=0x75ff
│  ││   ╎   0000:136f      mov   bl, byte [0x83]                       ; [0x83:1]=233
│  ││   ╎   0000:1373      xor   bh, bh
│  ││   ╎   0000:1375      add   ax, bx
│  ││   ╎   0000:1377      test  byte [si - 5], 0xff
│  ││  ┌──< 0000:137b      je    0x1380
│  ││  │╎   0000:137d      add   ax, 9
│  ││  └──> 0000:1380      mov   bx, ax
│  ││   ╎   0000:1382      sub   bx, word [0xc002]
│  ││  ┌──< 0000:1386      jb    0x138a
│  ││  │╎   0000:1388      mov   ax, bx
│  ││  └──> 0000:138a      mov   si, word [0xc00a]
│  ││   ╎   0000:138e      mov   word [si], ax
│  ││   ╎   0000:1390      call  fcn.000018e1                          ; fcn.000018e1
│  ││   ╎   0000:1393      call  fcn.00001214                          ; fcn.00001214
│  ││   ╎   0000:1396      call  fcn.00001480                          ; fcn.00001480
│  ││   ╎   0000:1399      call  word cs:[0x3012]
│  ││   ╎   0000:139e      mov   bx, 0x21c
│  ││   ╎   0000:13a1      xor   al, al
│  ││   ╎   0000:13a3      mov   ch, 0x42                              ; 'B'
│  ││   ╎   0000:13a5      call  word cs:[fcn.00002004]                ; 0x2004 ; "X\xc6\U00000006\xe7"
│  ││   ╎   0000:13aa      mov   ax, 1
│  ││   ╎   0000:13ad      int   0x60
│  ││   ╎   0000:13af      mov   byte [0x9f1e], 0
└  ││   └─< 0000:13b4      jmp   fcn.00000046                          ; fcn.00000046
```

## Cross-References (callers)
```json
  0x00000046:
[{"from":5044,"to":70,"type":"CODE"},{"from":7525,"to":70,"type":"CODE"},{"from":8760,"to":70,"type":"DATA"},{"from":15339,"to":70,"type":"DATA"}]
  0x0000010c:
[{"from":169,"to":268,"type":"CALL"},{"from":187,"to":268,"type":"CALL"},{"from":314,"to":268,"type":"CALL"},{"from":483,"to":268,"type":"CALL"},{"from":4889,"to":268,"type":"CALL"},{"from":4918,"to":268,"type":"CALL"},{"from":6696,"to":268,"type":"CALL"},{"from":6748,"to":268,"type":"CALL"},{"from":7043,"to":268,"type":"CALL"},{"from":7083,"to":268,"type":"CALL"},{"from":7137,"to":268,"type":"CALL"},{"from":7206,"to":268,"type":"CALL"},{"from":7253,"to":268,"type":"CALL"},{"from":7553,"to":268,"type":"CALL"},{"from":7608,"to":268,"type":"CALL"},{"from":7616,"to":268,"type":"CODE"},{"from":7884,"to":268,"type":"CALL"},{"from":7912,"to":268,"type":"CALL"},{"from":7953,"to":268,"type":"CALL"},{"from":7997,"to":268,"type":"CALL"},{"from":8064,"to":268,"type":"CALL"},{"from":12200,"to":268,"type":"CALL"},{"from":14835,"to":268,"type":"CALL"},{"from":14871,"to":268,"type":"CALL"}]
  0x00000110:
[{"from":4441,"to":272,"type":"CALL"},{"from":8079,"to":272,"type":"CALL"}]
  0x00000112:
[{"from":4446,"to":274,"type":"CALL"},{"from":8084,"to":274,"type":"CALL"}]
  0x00000114:
[{"from":4451,"to":276,"type":"CALL"},{"from":8089,"to":276,"type":"CALL"}]
  0x00000116:
[{"from":4456,"to":278,"type":"CALL"},{"from":8094,"to":278,"type":"CALL"}]
  0x00000118:
[{"from":4461,"to":280,"type":"CALL"},{"from":8099,"to":280,"type":"CALL"}]
  0x00000347:
[{"from":731,"to":839,"type":"CALL"},{"from":771,"to":839,"type":"CALL"}]
  0x000003de:
[{"from":691,"to":990,"type":"CALL"}]
  0x00000416:
[{"from":694,"to":1046,"type":"CALL"},{"from":768,"to":1046,"type":"CALL"}]
  0x000004bf:
[{"from":682,"to":1215,"type":"CALL"}]
  0x0000050c:
[{"from":940,"to":1292,"type":"CALL"},{"from":971,"to":1292,"type":"CALL"}]
  0x000005c9:
[{"from":1350,"to":1481,"type":"CALL"}]
  0x00000625:
[{"from":1441,"to":1573,"type":"CODE"},{"from":1557,"to":1573,"type":"CALL"},{"from":4039,"to":1573,"type":"CALL"},{"from":5851,"to":1573,"type":"CALL"},{"from":8458,"to":1573,"type":"CODE"}]
  0x000006a9:
[{"from":1119,"to":1705,"type":"CALL"},{"from":1122,"to":1705,"type":"CALL"},{"from":1289,"to":1705,"type":"CODE"},{"from":1635,"to":1705,"type":"CALL"},{"from":2664,"to":1705,"type":"CODE"},{"from":2729,"to":1705,"type":"CODE"},{"from":2762,"to":1705,"type":"CODE"},{"from":4100,"to":1705,"type":"CALL"},{"from":5876,"to":1705,"type":"CALL"},{"from":5879,"to":1705,"type":"CODE"},{"from":6839,"to":1705,"type":"CODE"},{"from":8853,"to":1705,"type":"CALL"}]
  0x000006fc:
[{"from":1040,"to":1788,"type":"CODE"}]
  0x000007a7:
[{"from":1754,"to":1959,"type":"CALL"},{"from":1779,"to":1959,"type":"CALL"}]
  0x000007ca:
[{"from":919,"to":1994,"type":"CODE"},{"from":968,"to":1994,"type":"CODE"},{"from":1519,"to":1994,"type":"CODE"},{"from":1992,"to":1994,"type":"CODE"},{"from":2529,"to":1994,"type":"CODE"},{"from":2576,"to":1994,"type":"CODE"}]
  0x00000828:
[{"from":1614,"to":2088,"type":"CODE"},{"from":2591,"to":2088,"type":"CALL"},{"from":2635,"to":2088,"type":"CALL"}]
```