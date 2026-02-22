# ENEMY_MANAGER - Analysis

**Source:** `chunk_32.bin`  
**Size:** 7.9 KB  
**Functions:** 2  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    3 39   -> 12   fcn.00000000
0x000007f3    1 7            fcn.000007f3
```

## Strings
```
nth      paddr      vaddr len size section type    string                                                   
------------------------------------------------------------------------------------------------------------
  0 0x00000008 0x00000008   6    7         ibm037  ARFRHR
  1 0x0000001d 0x0000001d  29   30         ibm037  ARÃöfDE\t\aô&BAB B&aDãeDîö«¹úãÃ
  2 0x0000003c 0x0000003c  23   24         ibm037  eDÎHÎþCãeCGIG»ûÿIGîögCã
  3 0x00000054 0x00000054   5    6         ibm037  GQbDî
  4 0x0000005b 0x0000005b   7    8         ibm037  dDGQeCH
  5 0x0000007b 0x0000007b  21   22         ibm037  cDGfCGQeCÃQiûÿãÃQfCGH
  6 0x00000096 0x00000096   5    6         ibm037  GQeCG
  7 0x000000f0 0x000000f0   8    9         ibm037  ýCEGöfCG
  8 0x00000145 0x00000145   4    5         ibm037  dCGH
  9 0x0000014b 0x0000014b  13   14         ibm037  «CEGIfCeùÿGãH
 10 0x0000016f 0x0000016f  41   42         ibm037  eDGFgCEGöfCGöýDîFeCãdCGãöfDEãQeCîfDGöýDîH
 11 0x0000019a 0x0000019a  14   15         ibm037  cDGHQcDGãöfDãH
 12 0x000001b4 0x000001b4  13   14         ibm037  cDgCÃQeCödCGî
 13 0x000001c3 0x000001c3  12   13         ibm037  cCãöfCÖGFfCG
 14 0x000001d1 0x000001d1  21   22         ibm037  dDGfCîöfDeCGGHQRQdCIã
 15 0x000001e8 0x000001e8   7    8         ibm037  cCãHQeD
 16 0x000001f6 0x000001f6  11   12         ibm037  dCîýCGãöfDG
 17 0x00000207 0x00000207  15   16         ibm037  öþCGöeCîýCGGöjC
 18 0x00000223 0x00000223  16   17         ibm037  «CGî&BAB&BAB&aCã
 19 0x00000234 0x00000234   8    9         ibm037  QýDGFeCã
 20 0x0000024e 0x0000024e   9   10         ibm037  cCãöýCGGH
 21 0x0000026c 0x0000026c   9   10         ibm037  «DGãQfCGH
 22 0x00000277 0x00000277  19   20         ibm037  eÔGI±CãeCîHQ»CGîfCî
 23 0x00000299 0x00000299  13   14         ibm037  «CGãIQeDîHQdÔ
 24 0x000002ab 0x000002ab   5    6         ibm037  dDGHã
 25 0x000002e9 0x000002e9  13   14         ibm037  GEGÖIoCGãöfDG
 26 0x00000304 0x00000304   8    9         ibm037  QÎnCGGFG
 27 0x00000332 0x00000332   5    6         ibm037  eDGFi
 28 0x00000339 0x00000339  15   16         ibm037  fCîeCîmDGGIöfCG
 29 0x0000034b 0x0000034b  23   24         ibm037  gRgCGIfDEGImCGãöfCîFQdÔ
 30 0x00000364 0x00000364  22   23         ibm037  gCGQfDîQlCGGöHQeDãHQeÔ
 31 0x0000037f 0x0000037f   7    8         ibm037  cCGgCãH
 32 0x0000038f 0x0000038f   4    5         ibm037  dDGH
 33 0x00000399 0x00000399  18   19         ibm037  HGQdDQgCîQlCGãöfDG
 34 0x000003b7 0x000003b7  18   19         ibm037  kDGãF°CEî BAB gCÖG
 35 0x000003ca 0x000003ca  26   27         ibm037  QlCGîøBABAB B aCÃþCãömCEãH
 36 0x000003eb 0x000003eb  11   12         ibm037  ðCGInCGîIGí
 37 0x000003fd 0x000003fd   9   10         ibm037  HQýCãFmCG
 38 0x00000408 0x00000408   5    6         ibm037  FHGFH
 39 0x00000413 0x00000413  14   15         ibm037  öþCEGHQdDþDGÃö
 40 0x00000429 0x00000429   7    8         ibm037  GfDFfCã
 41 0x00000441 0x00000441  30   31         ibm037  dCîIfDöfDGöfCF»CFãî.C.îHFQeCEî
 42 0x0000046a 0x0000046a   5    6         ibm037  hDGEG
 43 0x0000048d 0x0000048d  34   35         ibm037  cCîHQýCãöeCGF«CîhCãEGFeCîöþCÖGQeCî
 44 0x000004b1 0x000004b1  20   21         ibm037  eDFÃAB dCEÃQdCîIþCÖH
 45 0x000004c7 0x000004c7   8    9         ibm037  cDãHQfCî
 46 0x000004d0 0x000004d0  11   12         ibm037  GQgDîHGQdDî
 47 0x000004f5 0x000004f5   7    8         ibm037  »CEGöeC
 48 0x0000050d 0x0000050d   8    9         ibm037  eCGFfCFÃ
 49 0x00000527 0x00000527  16   17         ibm037  DãöeDîHGQa«CãFeC
 50 0x00000538 0x00000538  33   34         ibm037  GHfCEGfCGFfDGöfDîöc«DîQdCÃQdCîeCG
 51 0x0000055c 0x0000055c  13   14         ibm037  cCGFfCîFc«CãH
 52 0x0000057e 0x0000057e  21   22         ibm037  cCEîQb«CEãQdCãöHQdCHG
 53 0x000005ae 0x000005ae  18   19         ibm037  GeCGQfCGQfCGIGQdCî
 54 0x000005d2 0x000005d2  37   38         ibm037  Qc«CGgCÃ BABøBAB&BAB bDãFeCîQc«CGFfCî
 55 0x00000619 0x00000619  11   12         ibm037  QdCîdA AfCã
 56 0x00000630 0x00000630  17   18         ibm037  QeCîAB «CîeCãHÃHî
 57 0x00000648 0x00000648  14   15         ibm037  eCîdaDGFfCîeDã
 58 0x00000658 0x00000658  11   12         ibm037  eCG.ã.ãEÃHG
 59 0x0000066b 0x0000066b  14   15         ibm037  baDGHãdDîqDGÖî
 60 0x0000067b 0x0000067b  38   39         ibm037  «DîQcaCÃQcDGEG-B&B-BAB&B&aCGÖîðCãödaCã
 61 0x000006c4 0x000006c4  12   13         ibm037  dDGFeDîQcaCG
 62 0x000006e3 0x000006e3   8    9         ibm037  cCãFdaCã
 63 0x000006f6 0x000006f6  26   27         ibm037  iDÖãFeCGHQdCîdaCãQeCÎöHG.H
 64 0x00000725 0x00000725  10   11         ibm037  baDGöfDGIã
 65 0x0000073f 0x0000073f  56   57         ibm037  dCGFeCîQcaCGoDÎQfCGÖGQeDãQdCîdaCIGøBAB-B B-bCîHQfDãöfDGH
 66 0x00000779 0x00000779  42   43         ibm037  cCãQdaCãQnCîögDãFfCãQdCGIQdaCãeDGQþDîFgCãH
 67 0x000007a5 0x000007a5  14   15         ibm037  dCEGQdCGöeaCGH
 68 0x000007c6 0x000007c6  31   32         ibm037  cCGöeDGöeaDãQdCãþCîFQfCîQeCGfCG
 69 0x000007e7 0x000007e7  27   28         ibm037  daDGöeCãFýCGEãQfCãöfCGFQdCG
 70 0x00000804 0x00000804  20   21         ibm037  caCGfCGEFýCîögDãIfCã
 71 0x0000081a 0x0000081a  24   25         ibm037  cCGQeDãöeDÃQ»CãFhCãöfCãH
 72 0x00000834 0x00000834   9   10         ibm037  bDGfÃQdCÃ
 73 0x00000848 0x00000848  11   12         ibm037  dCîFcCöeDEã
 74 0x00000856 0x00000856  24   25         ibm037  bDîöðDEãFgCGHQfDÎHãöeCãH
 75 0x00000886 0x00000886  19   20         ibm037  eCîöeCGIãQ»DÃQfCîfC
 76 0x000008ca 0x000008ca  17   18         ibm037  QfCãgCGIGöðCãIhCî
 77 0x000008e1 0x000008e1  22   23         ibm037  ögCãöfDîöðCGFHFgDãHQeD
 78 0x00000901 0x00000901  19   20         ibm037  dCIãýCÃQfDãöQeCGEÃH
 79 0x0000094f 0x0000094f  10   11         ibm037  cCGIGHFGIÎ
 80 0x0000095b 0x0000095b  24   25         ibm037  eCãöfCãçGFhCãFfCîQdCîFHG
 81 0x00000984 0x00000984  17   18         ibm037  cCEGöeD\n\aFgCîfCÎH
 82 0x00000997 0x00000997  19   20         ibm037  fDîHQdCãfDîHîEÃFfCã
 83 0x000009ab 0x000009ab  17   18         ibm037  fCEÎQgCEîeDãöeCÃ.
 84 0x000009c6 0x000009c6  17   18         ibm037  dCÎöhCEãöeCîQdCEG
 85 0x000009d9 0x000009d9  19   20         ibm037  dDîQeDîQeCÃIiCîfCIH
 86 0x000009ee 0x000009ee   8    9         ibm037  cCãHQeCG
 87 0x00000a13 0x00000a13  17   18         ibm037  dCGögCîQeDãçGFhDî
 88 0x00000a26 0x00000a26  17   18         ibm037  cCãöeCGögDãFfCîfC
 89 0x00000a40 0x00000a40  10   11         ibm037  cCãfCGFgDã
 90 0x00000a58 0x00000a58  12   13         ibm037  dCãöfDãFeDGH
 91 0x00000a72 0x00000a72   8    9         ibm037  ögCîfDGH
 92 0x00000a8e 0x00000a8e  41   42         ibm037  eCã.eCîQdCGIiCÎEÎQeCEÎögDÃeCãöeCãF«C\a\aöfC
 93 0x00000ab9 0x00000ab9  12   13         ibm037  QfCÃeCGIfCãH
 94 0x00000ad5 0x00000ad5  15   16         ibm037  GQdCãFeCEãQiCIÎ
 95 0x00000b01 0x00000b01  23   24         ibm037  öhCGEãöGögCîfCIãQdDãQ«C
 96 0x00000b1a 0x00000b1a  21   22         ibm037  FgCGIãHGhCã.eCîlCãEîH
 97 0x00000b41 0x00000b41   8    9         ibm037   B hCÃHG
 98 0x00000b65 0x00000b65  14   15         ibm037  QfCîHQdCÎFGá¸C
 99 0x00000b9a 0x00000b9a   7    8         ibm037  gCÃQdCG
100 0x00000baa 0x00000baa   4    5         ibm037  iDGF
101 0x00000c0f 0x00000c0f  13   14         ibm037  cDÎQgDGIîöGIG
102 0x00000c1e 0x00000c1e  12   13         ibm037  cCìGQf÷EîGHG
103 0x00000c58 0x00000c58  23   24         ibm037  fCîFe÷îHGödQdCãöeD\a\aeDã
104 0x00000c7c 0x00000c7c   5    6         ibm037  aiCGH
105 0x00000c93 0x00000c93  38   39         ibm037  QdDEîQabCãQcDGöfCGEÃIfCã&B BAB aCÃeCãH
106 0x00000cc0 0x00000cc0   7    8         ibm037  QGFîFeC
107 0x00000ccf 0x00000ccf  16   17         ibm037  Q»CÃeCîcbDIîFHîH
108 0x00000ce1 0x00000ce1   9   10         ibm037  cCÎHGQeDG
109 0x00000cec 0x00000cec  13   14         ibm037  cCGQdDãIFQdCã
110 0x00000cfb 0x00000cfb   5    6         ibm037  bbCGI
111 0x00000d2f 0x00000d2f   8    9         ibm037  cû\îeCGH
112 0x00000d41 0x00000d41  15   16         ibm037  qCGQeÔQeûúIãeDã
113 0x00000d8b 0x00000d8b  32   33         ibm037  DGFiDGQfCãðûÿãöeCEGdbDGHQeDîQgCã
114 0x00000dc7 0x00000dc7   7    8         ibm037  fCGQfDG
115 0x00000de6 0x00000de6   4    5         ibm037  eCGH
116 0x00000e18 0x00000e18  12   13         ibm037  cDãdbCEGöeCÎ
117 0x00000efd 0x00000efd  17   18         ibm037  Gö«DGÖãHGQhQdûÿãH
118 0x00000f34 0x00000f34  12   13         ibm037  bbDîQdCîQ«DG
119 0x00000f98 0x00000f98  49   50         ibm037  bDQdDGEÖGöhCÖeûÿGFfûÿFdbCGIfDãQeDFdCãÖHGQgCGeûÿGH
120 0x00000fd1 0x00000fd1  19   20         ibm037  bbCGöfCGöfCGQcCãÖFH
121 0x00000fec 0x00000fec  27   28         ibm037  cûÿîQdû\GQcbDãöeCãöeDGdCãÖã
122 0x00001019 0x00001019  12   13         ibm037  ãQeCGHöeDGdC
123 0x0000103a 0x0000103a   5    6         ibm037  bbCGH
124 0x00001041 0x00001041   9   10         ibm037  dCãöeCQdC
125 0x0000105c 0x0000105c  14   15         ibm037  abCãfCãöeCGQcD
126 0x0000107c 0x0000107c   9   10         ibm037  bCGHGeCGH
127 0x00001087 0x00001087  14   15         ibm037  dDGQcDãÖGöeûÿã
128 0x000010a4 0x000010a4   8    9         ibm037  dCãöeCGH
129 0x000010ae 0x000010ae  11   12         ibm037  aCGIÖGQeûÿî
130 0x000010c5 0x000010c5  20   21         ibm037  bbDGQfCîeCÃFîÖãQdûÿG
131 0x00001105 0x00001105  19   20         ibm037  dûÿGöcB&BABAcDGÖöeC
132 0x00001119 0x00001119   4    4         ascii   ,FKf
133 0x0000114d 0x0000114d  15   16         ibm037  ûÿãöbQ«CÖGFeCEG
134 0x000011e0 0x000011e0  12   13         ibm037  î&BAB BAcûÿã
135 0x00001285 0x00001285  20   21         ibm037  FeDãFdûÿGRQdûÿãFeûÿã
136 0x000012ad 0x000012ad   4    5         ibm037  dCGH
137 0x00001347 0x00001347   7    8         ibm037  GÖãbcCG
138 0x00001366 0x00001366  27   28         ibm037  -  aDGÖãbcCãQdûÿãFdCÖGödûÿH
139 0x0000138f 0x0000138f  24   25         ibm037  cCGfûÿãFdCÖGHQcûÿãRQcû\î
140 0x000013a9 0x000013a9  25   26         ibm037  ðDÃQacDGfûÿIîQaDGÖGödûÿãR
141 0x000013ca 0x000013ca  17   18         ibm037  h¹ÿãöbcCQfûÿîHFHÃ
142 0x0000143b 0x0000143b  10   11         ibm037  EîFQfûÿGHG
143 0x00001486 0x00001486   4    5         ibm037  cCGH
144 0x0000152b 0x0000152b  10   11         ibm037  dûÿãFbcCEG
145 0x00001549 0x00001549  19   20         ibm037  eûÿãFbcDîAB BA -aCã
146 0x0000155e 0x0000155e  10   11         ibm037  dDGQeD\b\aÖG
147 0x0000157e 0x0000157e  13   14         ibm037  ögûÿIGöbcCGHî
148 0x0000158f 0x0000158f  23   24         ibm037  gCî B BAB aCî.bDÎögûÿGI
149 0x0000160b 0x0000160b   8    9         ibm037  FHGôÃQeC
150 0x00001649 0x00001649  20   21         ibm037  fûÿîbdDhRQeC\b\aQöaCãH
151 0x00001669 0x00001669  10   11         ibm037  adCQgQfCÎö
152 0x00001686 0x00001686  27   28         ibm037  dCQþCGIÃQeDGIgDÎögûÿãôQac÷G
153 0x000016ab 0x000016ab   9   10         ibm037  eDãFfDÃHG
154 0x000016d2 0x000016d2   7    8         ibm037  dCGEãFH
155 0x000016ff 0x000016ff  11   12         ibm037  baDGQfÔÖGÖH
156 0x0000172b 0x0000172b  20   21         ibm037  QHÃöiCãFfCÃöhCGôdaDG
157 0x0000174d 0x0000174d  12   13         ibm037  gDîQeCÎFgCHG
158 0x0000175b 0x0000175b   7    8         ibm037  baCIfûÿ
159 0x00001768 0x00001768   4    5         ibm037  hCGH
160 0x00001774 0x00001774   8    9         ibm037  eCGQdaCG
161 0x0000179d 0x0000179d   7    8         ibm037  þDGQgCÃ
162 0x000017a5 0x000017a5  11   12         ibm037  FþAB-BAaûÿÎ
163 0x000017b6 0x000017b6  38   39         ibm037   B B&BAB iûÿÎ&B B&BAB BøB-aDGôîFþFhûÿÃ
164 0x000018a2 0x000018a2  14   15         ibm037  ÃQaDGHGQcCGîHG
165 0x000018b2 0x000018b2  14   15         ibm037  aCîögCGE\v\aQeCÎ
166 0x000018c2 0x000018c2   9   10         ibm037  cCGQdCGÎö
167 0x000018df 0x000018df  13   14         ibm037  fCãQcCEÃöfCGH
168 0x000018f2 0x000018f2   9   10         ibm037  ÖÎlDGeDGÃ
169 0x00001909 0x00001909  27   28         ibm037  ÃAB B&BAB&B&aCQeDGÃöfDöiC\a\a
170 0x00001929 0x00001929  13   14         ibm037  jCQeCGîökCGEÎ
171 0x0000193f 0x0000193f  20   21         ibm037  fDQeCGÎABAB-B B BAaC
172 0x00001971 0x00001971  11   12         ibm037  GFðCGÎQeDGá
173 0x00001afc 0x00001afc  18   19         ascii   Cavern of Cementar
174 0x00001eea 0x00001eea   4   10         utf16le  \e$@
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│       ┌─< 0000:0000      jno   0x21
│       │   0000:0002      add   byte [bx + si], al                    ; arg3
│       │   0000:0004      or    bl, bl
..
        │   ; DATA XREF from str.CG__eC____C @ +0x4b5
│       └─> 0000:0021      xchg  ah, al
│           0000:0023      lds   cx, [bx + di]
│           0000:0025      pop   es
└           0000:0026      retf
```

### Function 0x000007f3
```asm
; CALL XREF from fcn.000007f3 @ +0x1213
┌ fcn.000007f3();
│           0000:07f3      lds   ax, [bp - 0x28]
│           0000:07f6      xchg  bl, al
│           0000:07f8      inc   si
└           0000:07f9      int3
```

## Cross-References (callers)
```json
  0x000007f3:
[{"from":6662,"to":2035,"type":"CALL"}]
```