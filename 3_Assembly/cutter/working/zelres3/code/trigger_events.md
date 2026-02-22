# TRIGGER_EVENTS - Analysis

**Source:** `chunk_31.bin`  
**Size:** 7.4 KB  
**Functions:** 2  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    2 23           fcn.00000000
0x000002ed    1 3            fcn.000002ed
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                          
------------------------------------------------------------------------------------------------------------------
  0 0x0000000f 0x0000000f   5    6         ibm037 Q`QYQ
  1 0x00000034 0x00000034  24   25         ibm037 ccDÃHöhCÃö B BAB B-BAaCî
  2 0x0000004f 0x0000004f  22   23         ibm037 cCîIGecDÎöhCîölCEîQeCÃ
  3 0x0000009b 0x0000009b  14   15         ibm037 ÃQhCãFgCEö«DGH
  4 0x000000b0 0x000000b0  10   11         ibm037 dcCÎöhDGHã
  5 0x000000bc 0x000000bc  16   17         ibm037 dCHGQiCãFgCãIGHR
  6 0x000000ce 0x000000ce  13   14         ibm037 bcCÎQhCãögDGö
  7 0x000000e7 0x000000e7   6    7         ibm037 ddDãIG
  8 0x000000ef 0x000000ef  26   27         ibm037 fCGöhCîiCãHFfDîQfdDî«CãhCã
  9 0x0000010a 0x0000010a   9   10         ibm037 RQgCÃFdCÎ
 10 0x00000131 0x00000131   6    7         ibm037 GQddCÃ
 11 0x00000139 0x00000139   9   10         ibm037 eCGöhCîHF
 12 0x0000014e 0x0000014e  47   48         ibm037 cdCÃöhCGöhDîEQgCE\v\aQgdCÃöhDãFQfCGöGöhCîIãöHöãHR
 13 0x0000017f 0x0000017f  12   13         ibm037 fdCãIGöhCGEG
 14 0x0000019b 0x0000019b  16   17         ibm037 hdCîFiDîFfCÃhCÎö
 15 0x000001ad 0x000001ad  19   20         ibm037 ýdCÃöhDÎFdDGIHöhCÃR
 16 0x000001e2 0x000001e2   6    7         ibm037 gCÎHGW
 17 0x000001ea 0x000001ea  23   24         ibm037 ÃiDãögDGidCîöiCîöG.cCîö
 18 0x0000023c 0x0000023c  21   22         ibm037 eDãHQfCîöfdCîQiDîöfCã
 19 0x00000258 0x00000258  27   28         ibm037 eCEãöfdCãHQiCîöfCîöhCãFgCîH
 20 0x00000275 0x00000275  18   19         ibm037 ddCîFiCîRQeCîöhCãH
 21 0x000002a8 0x000002a8  27   28         ibm037 cdCîFiDãHöfCîFhCãögCÃöedCîH
 22 0x000002d0 0x000002d0  29   30         ibm037 eCãögCÎQddCGIGöiCîHRQdCãIöhCã
 23 0x0000031e 0x0000031e  10   11         ibm037 eCîHQedCîF
 24 0x00000330 0x00000330   8    9         ibm037 eCîFhCGH
 25 0x000003ba 0x000003ba  17   18         ibm037 eCÃöedCÃöhCîFfCîö
 26 0x000003df 0x000003df  13   14         ibm037 fCîHRQdCîEQgC
 27 0x00000402 0x00000402  24   25         ibm037 GiCîHQedCÃöhCGIGöfDãFöhC
 28 0x0000041c 0x0000041c   9   10         ibm037 hCîFfdCîH
 29 0x00000427 0x00000427  63   64         ibm037 gCîöfDîRQgDQiCEãFfdCîöiCîöfCîölCÃQedCGIGöiCîRQeCãIG&B&BAB-B&aCî
 30 0x00000469 0x00000469  14   15         ibm037 cdCîHQhCãFgCîR
 31 0x00000483 0x00000483   7    8         ibm037 gCãRQfC
 32 0x0000048b 0x0000048b  25   26         ibm037 GFölCÃFedCãHöiCEãFfCã.lCÎ
 33 0x000004bb 0x000004bb  15   16         ibm037 bdCãIöiCîöfDÎEH
 34 0x000004e5 0x000004e5   8    9         ibm037 îTUTHãEã
 35 0x0000050c 0x0000050c   6    7         ibm037 öedCGH
 36 0x00000514 0x00000514  18   19         ibm037 gCãH.eCGEãQþCÃEãHG
 37 0x00000528 0x00000528  16   17         ibm037 cdCGö»CGöGgCîö±D
 38 0x0000053a 0x0000053a  11   12         ibm037 FfdCGö»CGER
 39 0x00000547 0x00000547  15   16         ibm037 eDîö&  B&B aCGE
 40 0x00000578 0x00000578   4    5         ibm037 iCGI
 41 0x00000583 0x00000583   5    6         ibm037 eDGhC
 42 0x0000058a 0x0000058a   5    6         ibm037 öfdCH
 43 0x00000591 0x00000591  13   14         ibm037 hCãögDîHRQcCG
 44 0x000005a4 0x000005a4  22   23         ibm037 öfdCöðDGHögCîöeDãgCÃIã
 45 0x000005bc 0x000005bc  15   16         ibm037 ddCGQ»DGiCÃQdCã
 46 0x000005cd 0x000005cd   4    5         ibm037 eDGH
 47 0x000005d3 0x000005d3  21   22         ibm037 FedCöðCHöRQfDãHöeCGEG
 48 0x000005f4 0x000005f4   4    5         ibm037 bdCG
 49 0x00000601 0x00000601  38   39         ibm037 GöeCî»CîfdCGöoDãöfCãHG«CãôFedCHG B-BAB
 50 0x00000629 0x00000629   7    8         ibm037 BAB aDã
 51 0x00000631 0x00000631  52   53         ibm037 öeCîH«CîHQddCGQoCÃeCGIãöiCîFedCöhDFQgDFcCÖãHQdDÃöiCÃ
 52 0x0000066d 0x0000066d   8    9         ibm037 fDFhCGÖb
 53 0x00000682 0x00000682  11   12         ibm037 FedCQhCHFgC
 54 0x000006a0 0x000006a0   4    5         ibm037 gCGH
 55 0x000006ab 0x000006ab  12   13         ibm037 IögCãHiCIGôH
 56 0x000006b9 0x000006b9   5    6         ibm037 cdCiC
 57 0x000006bf 0x000006bf   4    5         ibm037 GFfC
 58 0x000006e3 0x000006e3  15   16         ibm037 ãgDîöfBøB B bCG
 59 0x00000700 0x00000700  24   25         ibm037 eDãHG B BþCãöfC\a\a«CãFfDã
 60 0x0000071f 0x0000071f   7    8         ibm037 hCGÖFfC
 61 0x0000074c 0x0000074c   7    8         ibm037 GFeCãIG
 62 0x000007b4 0x000007b4  18   19         ibm037 jCÃF±CQfCîöeCîömCG
 63 0x00000827 0x00000827   4    5         ibm037 eCGH
 64 0x0000083d 0x0000083d   7    8         ibm037 fCGöðCG
 65 0x00000857 0x00000857  15   16         ibm037 «CîQeCÃQiÔGQgDî
 66 0x00000879 0x00000879  12   13         ibm037 gÔÖGFfDÎögCG
 67 0x000008c8 0x000008c8   6    7         ibm037 eDGIãH
 68 0x000008d0 0x000008d0  35   36         ibm037 eCGöðCãöfCÃFQhCÖFgCÎögCGHö»CGFgCGEî
 69 0x0000090e 0x0000090e  18   19         ibm037 aÓdDÖôFfCÎögCGFðDG
 70 0x0000092f 0x0000092f   9   10         ibm037 cCîIGögCG
 71 0x00000941 0x00000941  11   12         ibm037 dCÎQcXdDGÖG
 72 0x00000960 0x00000960  13   14         ibm037 öcYdCÖGFfCEîH
 73 0x0000096f 0x0000096f  22   23         ibm037 eCGöðCGögCEÃöhCGHGQeCÃ
 74 0x00000987 0x00000987  13   14         ibm037 gDGöðCGögCîHG
 75 0x000009aa 0x000009aa   5    6         ibm037 dDGEã
 76 0x000009c0 0x000009c0   4    5         ibm037 iCGH
 77 0x000009c6 0x000009c6  15   16         ibm037 eCÃEGhCGI.eCGÖG
 78 0x000009dc 0x000009dc  31   32         ibm037 Q»CGögDÎöhCGHôfDGÖãöhCãö»DIögDÎ
 79 0x000009fd 0x000009fd  18   19         ibm037 eCãöfCGÖãöhCGQðCGö
 80 0x00000a22 0x00000a22  10   11         ibm037 gCGöðDGögC
 81 0x00000a37 0x00000a37   9   10         ibm037 eCQýDGögC
 82 0x00000a41 0x00000a41   4    4         ascii  \a`AP
 83 0x00000a45 0x00000a45  15   16         ibm037 B-BAaCÎögDöýCHG
 84 0x00000a6e 0x00000a6e  25   26         ibm037 hDGQdCÎ BAB   B bDfCöhDÎH
 85 0x00000a9f 0x00000a9f  13   14         ibm037 ö«CGFcDGEÎQôG
 86 0x00000aba 0x00000aba  13   14         ibm037 ö«CGHGQaC\n\aHG
 87 0x00000ac9 0x00000ac9   8    9         ibm037 fDGöeDiC
 88 0x00000ad8 0x00000ad8  18   19         ibm037 IGHãöHãQgCGHQþDGEÎ
 89 0x00000b23 0x00000b23   8    9         ibm037 fCãQeDGH
 90 0x00000b51 0x00000b51   5    6         ibm037 ýCGFH
 91 0x00000b69 0x00000b69  16   17         ibm037 g÷Ã&B B BAB&aCãH
 92 0x00000b98 0x00000b98  12   13         ibm037 eCGIG²ZRQbCã
 93 0x00000bd2 0x00000bd2  15   16         ibm037 QaDFGHîöebCãögD
 94 0x00000c10 0x00000c10   5    6         ibm037 FdbCã
 95 0x00000c89 0x00000c89   5    6         ibm037 abCGH
 96 0x00000cc2 0x00000cc2  13   14         ibm037 dCGödbCGöcÒdC
 97 0x00000d11 0x00000d11  20   21         ibm037 dûÿGIãögCGebCãHöaXdD
 98 0x00000d31 0x00000d31   9   10         ibm037 QfCGödbCî
 99 0x00000d64 0x00000d64  15   16         ibm037 öfûÿÃögCGöQcbCã
100 0x00000da5 0x00000da5  24   25         ibm037 dCGödbCîQfCÃIGöiûÿîögûÿÃ
101 0x00000de0 0x00000de0   4    5         ibm037 bbCG
102 0x00000e07 0x00000e07   7    8         ibm037 fCHöîHG
103 0x00000e20 0x00000e20  33   34         ibm037 ödbCãQgDöbCãQiûúãÖögû\ÎöfCöGöcbDî
104 0x00000e56 0x00000e56  22   23         ibm037 dCãöcbCÃ BAB&BAaCãiûÿî
105 0x00000e7d 0x00000e7d   6    7         ibm037 bbCGöH
106 0x00000e85 0x00000e85   4    5         ibm037 iDGH
107 0x00000e9b 0x00000e9b   5    6         ibm037 bCGHã
108 0x00000ed1 0x00000ed1  19   20         ibm037 dCãQGbaDÃö»ûÿGöhûÿÃ
109 0x00000ee6 0x00000ee6  11   12         ibm037 eûÿIÃHGQdCî
110 0x00000f28 0x00000f28   7    8         ibm037 gCGHÃ\b\a
111 0x00000f4e 0x00000f4e  18   19         ibm037 ö«ûÿGFhûÿGIFHFfûÿî
112 0x00000f62 0x00000f62   7    8         ibm037 gDöcDGD
113 0x00000fb1 0x00000fb1   7    8         ibm037  BABAgD
114 0x00000fdc 0x00000fdc  42   43         ibm037 eûÿîB B&BAgCGEÎö B-B B&BABABAaûÿÃFfûÿãHQ±C
115 0x00001011 0x00001011  14   15         ibm037 dù\öGAB-  gC\a\a
116 0x0000103e 0x0000103e  11   12         ibm037 AB   BøBA»C
117 0x0000106b 0x0000106b  17   18         ibm037 GFªCÃIGöHGhûÿ\r\aÖÃ
118 0x000010b4 0x000010b4  11   12         ibm037 CGHãÖîHöGRã
119 0x000010d6 0x000010d6   9   10         ibm037 þDiCGEîöH
120 0x000010f1 0x000010f1  19   20         ibm037    B&aDGQgDÃH.«ûÿÃH
121 0x0000112c 0x0000112c   4    5         ibm037 fCHG
122 0x00001144 0x00001144  20   21         ibm037 eCGög BAB&BAB&B aûÿî
123 0x00001161 0x00001161  18   19         ibm037 eCEGHQeCEã   kûÿîH
124 0x00001198 0x00001198  17   18         ibm037 bkû\îögDãEGögDGöH
125 0x000011bf 0x000011bf   4    5         ibm037 fCGH
126 0x000011d7 0x000011d7  15   16         ibm037 eCãöfCGöHGekûÿã
127 0x00001217 0x00001217   5    6         ibm037 GFhDã
128 0x0000121f 0x0000121f  10   11         ibm037 cCGögkDîHG
129 0x00001260 0x00001260  27   28         ibm037 fûÿã&B B B&B kDEîögûÿîögûÿî
130 0x000012cc 0x000012cc   6    7         ibm037 gbCîHG
131 0x000012e7 0x000012e7  13   14         ibm037 cbCGôöGö»ù\FG
132 0x00001316 0x00001316  16   17         ibm037 dDGHQiûÿIîQbDöÎH
133 0x00001328 0x00001328  15   16         ibm037 abû\ãHFQ»ù\öhDö
134 0x0000135d 0x0000135d   5    5         ascii  GK@A`
135 0x00001363 0x00001363  29   30         ibm037  BAB   BAB&B BAaûÿãöeCÎQcbûÿG
136 0x00001385 0x00001385  30   31         ibm037 sûÿîQdCîHQRQbbû\ãFð¹úF»Dáhû\ãH
137 0x000013a5 0x000013a5  43   44         ibm037 cCEîRdbûúGHFðûÿGF«DãáfûúãQeCÃödbùÿGFHF»ûÿIö
138 0x000013d2 0x000013d2  19   20         ibm037 gCGFaöHãáÃöfCîFebCÎ
139 0x00001435 0x00001435   6    7         ibm037 ea}JOI
140 0x00001450 0x00001450   8    9         ibm037 öebPKÃHG
141 0x0000146f 0x0000146f   5    6         ibm037 cbMOî
142 0x00001499 0x00001499  16   17         ibm037 DÃFhDîöfDîFebCîH
143 0x000014ab 0x000014ab  17   18         ibm037 hDãáfDãFHFhCîQfCÃ
144 0x000014c9 0x000014c9   7    8         ibm037 dDEãFHF
145 0x000014da 0x000014da   6    7         ibm037 RQcbCî
146 0x000014e1 0x000014e1  23   24         ibm037 ö«CIGöQfDÃ.gDãFgCÃödbCî
147 0x0000150f 0x0000150f  17   18         ibm037 cbCîF»CãFgCãHFiCî
148 0x00001523 0x00001523   9   10         ibm037 cCIîödbCÃ
149 0x0000152e 0x0000152e  15   16         ibm037 gCãöQfDãFHFhCîö
150 0x00001543 0x00001543   7    8         ibm037 ödbCGIG
151 0x00001569 0x00001569  13   14         ibm037 IFhDEã.QfCGHG
152 0x000015b6 0x000015b6  17   18         ibm037 iûúGFhCãFiDãögCîH
153 0x000015d5 0x000015d5   7    8         ibm037 eCGF«Cã
154 0x000015ef 0x000015ef  23   24         ibm037 ögCGáiDIãFfDÃödbCãFðüúã
155 0x00001618 0x00001618  11   12         ibm037 cbCãöðùÿGEG
156 0x00001635 0x00001635  21   22         ibm037 bbCãö»òPã.gCGF«DãögCã
157 0x0000164e 0x0000164e  17   18         ibm037 cbCGIö»}PãiDãFiDG
158 0x00001694 0x00001694  10   11         ibm037 B aCÃödbCã
159 0x000016d9 0x000016d9  29   30         ibm037 fCÃRQcbCãö«}JKîHö& &  BAaDÎHG
160 0x00001714 0x00001714  13   14         ibm037 cbCãö»MDGOGôF
161 0x00001741 0x00001741   9   10         ibm037 eCGHQfbCã
162 0x0000174e 0x0000174e  12   13         ibm037 gCOãjD.ÃögCG
163 0x00001776 0x00001776   6    7         ibm037 FjCGHG
164 0x000017b9 0x000017b9   8    9         ibm037 cCãRgcDÃ
165 0x000017d1 0x000017d1   5    6         ibm037 dCGIG
166 0x000018f0 0x000018f0  17   18         ascii  Cavern of Corroer
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0000      xchg  sp, ax                                ; arg1
│           0000:0001      sbb   ax, 0                                 ; arg1
│           0000:0004      std
│           0000:0005      fdiv  st(0)
│           0000:0007      add   bl, ch
│           0000:0009      xlatb
│           0000:000a      stc
│           0000:000b      xlatb
│           0000:000c      sti
│           0000:000d      xlatb
│           0000:000e      or    bx, ax                                ; arg1
│       ┌─< 0000:0010      jns   0xffffffea
│       │   0000:0012      call  fcn.000002ed                          ; fcn.000002ed
└       │   0000:0015      fld   dword [di]
```

### Function 0x000002ed
```asm
; CALL XREF from fcn.00000000 @ 0x12
┌ fcn.000002ed();
└           0000:02ed      retf  0x86d8
```

## Cross-References (callers)
```json
  0x000002ed:
[{"from":18,"to":749,"type":"CALL"}]
```