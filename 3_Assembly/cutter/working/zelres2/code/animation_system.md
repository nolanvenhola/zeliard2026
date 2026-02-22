# ANIMATION_SYSTEM - Analysis

**Source:** `chunk_05.bin`  
**Size:** 9.7 KB  
**Functions:** 54  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000   25 187  -> 144  fcn.00000000
0x00000110    1 2            fcn.00000110
0x00000112    1 3            fcn.00000112
0x00000114    1 4            fcn.00000114
0x00000116    1 4            fcn.00000116
0x00000118   37 1464 -> 238  fcn.00000118
0x0000011a    1 11           fcn.0000011a
0x00000128   16 1221 -> 199  fcn.00000128
0x00000272   54 452          fcn.00000272
0x00000436    7 61           fcn.00000436
0x00000473    1 70           fcn.00000473
0x000004b9    7 56           fcn.000004b9
0x000004f1   12 131          fcn.000004f1
0x00000673    6 46           fcn.00000673
0x000006a1    6 120          fcn.000006a1
0x00000719    1 22           fcn.00000719
0x0000072f    3 46           fcn.0000072f
0x0000075d    3 16           fcn.0000075d
0x0000076d    1 93           fcn.0000076d
0x000007ca   15 115          fcn.000007ca
0x0000083d    1 6            fcn.0000083d
0x00000843    1 8            fcn.00000843
0x0000084b    1 7            fcn.0000084b
0x00000852    6 81           fcn.00000852
0x000008a3   19 118          fcn.000008a3
0x00000e2b    4 70           fcn.00000e2b
0x00000e71    5 18           fcn.00000e71
0x00000f1b    3 47           fcn.00000f1b
0x00000f4a   32 883  -> 286  fcn.00000f4a
0x00001076    3 25           fcn.00001076
0x0000108f    5 44           fcn.0000108f
0x000010bb    5 40           fcn.000010bb
0x000010e3    5 74           fcn.000010e3
0x000011d3   17 149          fcn.000011d3
0x00001362    7 175  -> 146  fcn.00001362
0x000013d0    3 29           fcn.000013d0
0x00001411    1 17           fcn.00001411
0x00001422    6 35           fcn.00001422
0x00001475   11 122          fcn.00001475
0x000014ef   18 129          fcn.000014ef
0x00001570   21 165          fcn.00001570
0x00001615    1 32           fcn.00001615
0x00001635    3 51           fcn.00001635
0x00001668    9 58           fcn.00001668
0x000016f1    3 12           fcn.000016f1
0x000016fd    3 12           fcn.000016fd
0x0000182d    5 58           fcn.0000182d
0x00001867    5 58           fcn.00001867
0x00001dac    1 64           fcn.00001dac
0x00001e95    5 183  -> 185  fcn.00001e95
0x0000215b    3 34           fcn.0000215b
0x0000217d    5 34           fcn.0000217d
0x0000219f    3 25           fcn.0000219f
0x000021b8    1 30           fcn.000021b8
```

## Strings
```
nth      paddr      vaddr len size section type    string                                                                  
---------------------------------------------------------------------------------------------------------------------------
  0 0x0000000f 0x0000000f   5    6         ascii   F)An2
  1 0x00000015 0x00000015   5    5         ascii   9\tCzB
  2 0x00000023 0x00000023   5    5         ascii   GpBMK
  3 0x000001b2 0x000001b2   4    4         ascii   u\fP.
  4 0x00000202 0x00000202   5    5         ascii   6<\rt;
  5 0x0000020e 0x0000020e   5    5         ascii   <<\ft/
  6 0x00000217 0x00000217   5    6         ascii   t),3s
  7 0x00000231 0x00000231   5    5         ascii   \f<\tt\f
  8 0x000002aa 0x000002aa   5    6         ibm037  vvaGÜ
  9 0x000002b6 0x000002b6   9   10         ibm037  aGµØvvaGÜ
 10 0x000002d8 0x000002d8  10   11         ibm037  ½þ{þQvvaGÜ
 11 0x000002f7 0x000002f7   9   10         ibm037  aFµØvvaGÜ
 12 0x00000315 0x00000315   9   10         ibm037  aFµØvvaGÜ
 13 0x00000333 0x00000333   9   10         ibm037  aFµØvvaGÜ
 14 0x00000351 0x00000351   9   10         ibm037  aFµØvvaGÜ
 15 0x0000036f 0x0000036f   9   10         ibm037  aFµØvvaGÜ
 16 0x0000038d 0x0000038d   9   10         ibm037  aFµØvvaGÜ
 17 0x000004b6 0x000004b6   5    6         utf8    [^À>\e blocks=Basic Latin,Latin-1 Supplement
 18 0x000004f1 0x000004f1   4    4         ascii   VWSS
 19 0x00000536 0x00000536   4    4         ascii   SVR\n
 20 0x00000574 0x00000574   4    4         ascii   VWSS
 21 0x000005ed 0x000005ed   4    4         ascii   VWSS
 22 0x00000633 0x00000633   4    4         ascii   SVR\n
 23 0x0000068f 0x0000068f   4    4         ascii   UVWR
 24 0x00000696 0x00000696   7    7         ascii   Z_^]FGE
 25 0x000006bd 0x000006bd   9   10         ibm037   JYJY»YaE
 26 0x00000759 0x00000759   6    7         ibm037  ßSOC¾\b
 27 0x00000797 0x00000797   5    5         ascii   /R.\n7
 28 0x000007c2 0x000007c2   4    5         ascii   /R.\n
 29 0x000007c7 0x000007c7   8    9         ibm037  »BCvvaGÜ
 30 0x000007d6 0x000007d6   9   10         ibm037  aGµØvvaGÜ
 31 0x000007e6 0x000007e6   9   10         ibm037  aGµØvvaGÜ
 32 0x000007f6 0x000007f6   9   10         ibm037  aGµØvvaGÜ
 33 0x00000806 0x00000806   9   10         ibm037  aGµØvvaGÜ
 34 0x00000816 0x00000816   9   10         ibm037  aGµØvvaGÜ
 35 0x00000826 0x00000826   9   10         ibm037  aGµØvvaGÜ
 36 0x000008a2 0x000008a2   4    6         utf8    À>9R blocks=Latin-1 Supplement,Basic Latin
 37 0x0000095a 0x0000095a   5    5         ibm037  CJY«\f
 38 0x00000995 0x00000995   5    6         ascii   &!-&\t
 39 0x000009e1 0x000009e1   4    5         ibm037  vvcÓ
 40 0x000009ed 0x000009ed   5    5         ascii   :p:0:
 41 0x00000bd9 0x00000bd9   5    5         ascii   8RGFY
 42 0x00000e40 0x00000e40   9   10         ibm037  ÄJYJY»YaE
 43 0x00000e86 0x00000e86   4    4         ascii   VWP.
 44 0x00000ee7 0x00000ee7   9   10         ibm037   JYJY»YaE
 45 0x00000f3f 0x00000f3f   4    4         ibm037  vucF
 46 0x00000f8c 0x00000f8c   4    4         ascii   VWS.
 47 0x0000104d 0x0000104d   4    4         ascii   >=R2
 48 0x0000105d 0x0000105d   7    7         ascii   6?R[_^\a
 49 0x00001071 0x00001071   4    4         ascii   [_^\a
 50 0x00001085 0x00001085   4    4         ascii   [^_\a
 51 0x000010a6 0x000010a6   5    6         ibm037  3vaF0
 52 0x000010cf 0x000010cf   5    6         ibm037  3vaG0
 53 0x000010e8 0x000010e8   4    4         ascii   AR$?
 54 0x00001165 0x00001165   4    4         ascii   >=R.
 55 0x0000119e 0x0000119e   5    6         ascii   &!-&\t
 56 0x0000136f 0x0000136f   4    4         ascii   WVSP
 57 0x000013ea 0x000013ea   4    4         ibm037  SXCï
 58 0x000014a8 0x000014a8   4    4         ascii   /R,\t
 59 0x000014b3 0x000014b3   4    4         ascii   0R,\t
 60 0x000014e9 0x000014e9   7    8         ibm037  $!ßSKC½
 61 0x000014fb 0x000014fb   4    4         ascii   [ZRS
 62 0x00001504 0x00001504   4    4         ascii   [ZRS
 63 0x00001555 0x00001555   6    7         ascii   "&CR& 
 64 0x000015c6 0x000015c6   7    8         ascii   CR& 5&\b
 65 0x000015db 0x000015db  11   12         utf8    "&CR& 5&\b%Ê blocks=Basic Latin,Latin-1 Supplement
 66 0x000015ec 0x000015ec   7    8         ascii   CR& 5&\b
 67 0x000015f9 0x000015f9  10   10         ascii   "&CR& 5&\b%
 68 0x0000160c 0x0000160c   7    8         ascii   CR& 5&\b
 69 0x0000167e 0x0000167e   4    5         ascii   DD&1
 70 0x0000178c 0x0000178c   5    6         ascii   -16;@
 71 0x0000179f 0x0000179f   9   10         ascii   \b\n#$&\b')*
 72 0x000017bd 0x000017bd   6    7         ascii   #$&\b%)
 73 0x000017c4 0x000017c4   4    5         ascii   .38=
 74 0x000017d7 0x000017d7  13   14         ascii   \b\v#$&\b')+/49>
 75 0x000017f1 0x000017f1   8    9         ascii    !\b\f#$&\b
 76 0x000017fa 0x000017fa   6    7         ascii   (,05:?
 77 0x000018df 0x000018df   4    6         utf8    \vttõ blocks=Basic Latin,Latin-1 Supplement
 78 0x000018fc 0x000018fc   4    6         utf8    \rtWõ blocks=Basic Latin,Latin-1 Supplement
 79 0x00001959 0x00001959  12   13         ascii   \a\b\t\n\a\b\v\f\a\b\t\n
 80 0x00001981 0x00001981  26   27         ascii   >\b&*%!"!"#$!"!"\t\n\a\b\a\b\t\n\a\b
 81 0x0000199c 0x0000199c   7    8         ascii   TY]c2/.
 82 0x000019b7 0x000019b7  26   27         ascii   PUZ^df(0#$!"#$!"#$\a\b\n\f\a\b\t\n
 83 0x000019d2 0x000019d2   9   10         ascii   4QV[_eg/-
 84 0x000019ed 0x000019ed   4    5         ascii   IMRW
 85 0x000019f2 0x000019f2  27   28         ascii   `ihjk(&!"+&!"!"\a\b\t\n\t\n\eFJNSX
 86 0x00001a11 0x00001a11   4    5         ascii   il1-
 87 0x00001a23 0x00001a23   4    5         ascii   CGKO
 88 0x00001a2e 0x00001a2e  11   12         ascii   mno)&!"*%!"
 89 0x00001a3e 0x00001a3e   4    5         ascii   5DHL
 90 0x00001a4b 0x00001a4b   4    5         ascii   iqst
 91 0x00001a57 0x00001a57   5    6         ascii   8:?BE
 92 0x00001a68 0x00001a68   9   10         ascii   muwyo+&)&
 93 0x00001a72 0x00001a72   5    6         ascii   49;@A
 94 0x00001a85 0x00001a85  12   13         ascii   vxz{12/-367<
 95 0x00001aa4 0x00001aa4   5    6         ascii   mqprp
 96 0x00001bbd 0x00001bbd   5    6         ascii   &!-&\t
 97 0x00001be0 0x00001be0   5    5         ibm037  Y057N
 98 0x00001bff 0x00001bff  10   10         ascii   \aL\aL\aLgLgL
 99 0x00001dc6 0x00001dc6   6    7         ascii   & =& ]
100 0x00001de0 0x00001de0   6    7         ascii   &\b=G&\b
101 0x00001de7 0x00001de7   4    4         ascii   G&\b%
102 0x00002058 0x00002058   5   24         utf32be 9áĀЀက
103 0x0000207d 0x0000207d   4   16         utf32be \f8ðå
104 0x00002094 0x00002094   5   24         utf32le <\a쀀 Ѐ blocks=Basic Latin,Hangul Syllables,General Punctuation,Cyrillic
105 0x00002179 0x00002179   6    7         ibm037  KSSC¾\b
106 0x0000219b 0x0000219b   5    6         ibm037  }SSC¾
107 0x000021fb 0x000021fb   4    5         ascii   \a\v\n\b
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg2, short unsigned int arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg short unsigned int arg3 @ bx
│           0000:0000      mov   byte [0x26], al
│           ; XREFS: DATA 0x000008d7  DATA 0x000008f5  DATA 0x000011ec  
│           ; XREFS: DATA 0x0000120f  DATA 0x00001233  DATA 0x00001258  
│           ; XREFS: DATA 0x000012a0  DATA 0x000012a4  DATA 0x000018d6  
│           ; XREFS: DATA 0x000018e5  DATA 0x00001902  DATA 0x0000193b  
│           ; XREFS: DATA 0x00002190  
│           0000:0003      add   byte [si], ch
│           ; DATA XREF from fcn.00000128 @ +0xfe
│           ; DATA XREFS from fcn.00001867 @ +0x8c, +0xa9, +0xc6
│           0000:0005      xor   byte [0x723b], al                     ; [0x723b:1]=255
│           ; DATA XREF from fcn.00000128 @ +0x10a
│           ; DATA XREF from fcn.00001475 @ 0x14c0
│           ; DATA XREF from fcn.00001867 @ +0x64
│           0000:0009      inc   ax                                    ; arg1
│           ; DATA XREF from fcn.00000128 @ +0x110
│       ┌─< 0000:000a      jg    0x4b
│       │   ; XREFS: DATA 0x0000020f  DATA 0x00000230  DATA 0x000014c8  
│       │   ; XREFS: DATA 0x000014cf  DATA 0x000014d6  DATA 0x000014dd  
│       │   ; XREFS: DATA 0x000018db  DATA 0x000021ea  DATA 0x000021f6  
│       │   0000:000c      mov   cx, 0x9e42
│       │   ; XREFS: DATA 0x00000209  DATA 0x0000022a  DATA 0x0000078d  
│       │   ; XREFS: DATA 0x000007ba  DATA 0x0000086a  DATA 0x000008b2  
│       │   ; XREFS: DATA 0x00001207  DATA 0x00001219  DATA 0x00001262  
│       │   ; XREFS: DATA 0x0000154b  DATA 0x000015aa  DATA 0x00001880  
│       │   ; XREFS: DATA 0x000021a6  
│       │   ;-- str.F_An2:
│       │   0000:000f     .string "F)An2" ; len=6
│       │   0000:0015      cmp   word [bx + di], cx                    ; arg3
│       │   0000:0017      inc   bx                                    ; arg3
│       │   ; DATA XREF from fcn.00001615 @ 0x162e
│       │   ; DATA XREF from fcn.00001668 @ +0x4e
│       │   ; DATA XREF from fcn.00001867 @ +0x34b
│      ┌──< 0000:0018      jp    0x5c
       ││   ; DATA XREF from fcn.000008a3 @ 0x8eb
       ││   ; DATA XREF from fcn.000008a3 @ +0xa5
..
       ││   ; XREFS: DATA 0x00000181  DATA 0x00000198  DATA 0x000008e7  
       ││   ; XREFS: DATA 0x00000c8b  DATA 0x00000d7c  DATA 0x00000ded  
       ││   ; XREFS: DATA 0x00000df4  
       ││   ; DATA XREF from str.GpBMK @ +0x27
       ││   ; DATA XREF from fcn.00000128 @ +0xa6
       ││   ; DATA XREF from fcn.00000f1b @ 0xf41
       ││   ; DATA XREFS from fcn.00001475 @ 0x1495, 0x14a0
       ││   ; DATA XREF from fcn.00001dac @ +0xd1
       ││   ;-- str.GpBMK:
       ││   ; DATA XREFS from fcn.00001475 @ 0x14ae, 0x14b9
       ││   ; DATA XREFS from fcn.00000128 @ +0xaf, +0xc5
       ││   ; DATA XREF from fcn.000016fd @ +0xab
       ││   ; DATA XREF from fcn.000008a3 @ +0x149
       ││   ; DATA XREF from fcn.00000128 @ +0xe5
       ││   ; DATA XREF from fcn.00001867 @ +0x4d2
│      │└─> 0000:004b      out   dx, al
│      │    0000:004c      and   ax, bp                                ; arg1
│      │    0000:004e      lodsw ax, word [si]
│      │    0000:004f      push  ss
│      │    0000:0050      xor   bx, bx
│      │    0000:0052      test  byte [si], 0x80
│      │┌─< 0000:0055      je    0x5a
│      ││   0000:0057      call  fcn.00000436                          ; fcn.00000436
│      ││   ; DATA XREF from fcn.000008a3 @ +0x454
│      │└─> 0000:005a      inc   si
│      │    0000:005b  ~   mov   cx, 6
│      └──> 0000:005c      push  es
│           0000:005d  ~   add   byte [bx + di - 0xa], dl              ; arg3
│       ┌─> 0000:005e      push  cx
│       ╎   0000:005f      test  byte [si], 0x80
│      ┌──< 0000:0062      je    0x67
│      │╎   0000:0064      call  fcn.00000473                          ; fcn.00000473
│      └──> 0000:0067      inc   si
│       ╎   0000:0068      inc   bx
│       ╎   0000:0069      test  byte [si], 0x80
│       ╎   ; DATA XREFS from fcn.000008a3 @ +0x3d6, +0x542
│      ┌──< 0000:006c      je    0x71
│      │╎   0000:006e      call  fcn.00000473                          ; fcn.00000473
│      └──> 0000:0071      inc   si
│       ╎   0000:0072      inc   bx
│       ╎   0000:0073      test  byte [si], 0x80
│      ┌──< 0000:0076      je    0x7b
│      │╎   0000:0078      call  fcn.00000473                          ; fcn.00000473
│      └──> 0000:007b      inc   si
│       ╎   0000:007c      inc   bx
│       ╎   0000:007d      test  byte [si], 0x80
│       ╎   ; XREFS: DATA 0x00000037  DATA 0x00000060  DATA 0x000006ad  
│       ╎   ; XREFS: DATA 0x00000c9c  DATA 0x00000e02  DATA 0x00001ebb  
│      ┌──< 0000:0080      je    0x85
│      │╎   0000:0082      call  fcn.00000473                          ; fcn.00000473
│      └──> 0000:0085      inc   si
│       ╎   0000:0086      inc   bx
│       ╎   0000:0087      pop   cx
│       └─< 0000:0088      loop  0x5e
│           0000:008a      test  byte [si], 0x80
│       ┌─< 0000:008d      je    0x92
│       │   ; DATA XREF from fcn.000014ef @ 0x1528
│       │   ; DATA XREF from fcn.00001570 @ 0x157b
│       │   0000:008f      call  fcn.00000473                          ; fcn.00000473
│       │   ; DATA XREF from fcn.00001867 @ +0x335
│       └─> 0000:0092      inc   si
│           ; DATA XREF from fcn.00000e71 @ 0xe71
│           0000:0093      inc   bx
│           0000:0094      test  byte [si], 0x80
│       ┌─< 0000:0097      je    0x9c
│       │   0000:0099      call  fcn.00000473                          ; fcn.00000473
│       └─> 0000:009c      inc   si
│           ; DATA XREF from fcn.00001668 @ +0x57
│           0000:009d      inc   bx
│           0000:009e      test  byte [si], 0x80
│       ┌─< 0000:00a1      je    0xa6
│       │   0000:00a3      call  fcn.00000473                          ; fcn.00000473
│       └─> 0000:00a6      inc   si
│           0000:00a7      test  byte [si], 0x80
│       ┌─< 0000:00aa      je    0xaf
│       │   0000:00ac      call  fcn.000004b9                          ; fcn.000004b9
│       └─> 0000:00af      mov   si, word [0xff31]
│           0000:00b3      mov   di, 0xe900
└           0000:00b6      mov   byte [0x5237], 0x12                   ; [0x5237:1]=255
```

### Function 0x00000110
```asm
; CALL XREF from fcn.00001635 @ 0x1642
┌ fcn.00000110(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
└       ┌─< 0000:0110      je    0x115                                 ; fcn.00000118-0x3
```

### Function 0x00000112
```asm
; CALL XREF from fcn.00001635 @ 0x1647
│           ; CALL XREF from fcn.00001635 @ 0x164c
│           ;-- (0x00000114) fcn.00000114:
┌ fcn.00000112(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
└           0000:0112  ~   call  fcn.00000128                          ; fcn.00000128
```

### Function 0x00000114
```asm
│           ; CALL XREF from fcn.00001635 @ 0x164c
┌ fcn.00000114();
│           0000:0114  ~   add   byte [bp + di + 0x4c6], al
│           ; CODE XREF from fcn.00000118 @ 0x670
│           ; CALL XREF from fcn.00001635 @ 0x1651
│           ;-- (0x00000116) fcn.00000116:
..
```

### Function 0x00000116
```asm
│           ; CALL XREF from fcn.00001635 @ 0x1651
┌ fcn.00000116(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0116  ~   mov   byte [si], 0xe8                       ; [0xe8:1]=62
            ; CALL XREF from fcn.00001635 @ 0x1656
..
│           0000:0119      salc
```

### Function 0x00000118
```asm
╎╎   ; CALL XREF from fcn.00001635 @ 0x1656
│      ╎╎   ; CALL XREF from fcn.00000128 @ +0x8d
│      ╎╎   ; CALL XREFS from fcn.000008a3 @ 0x8ad, 0x8d0, 0x8ee, 0x909
│      ╎╎   ;-- (0x0000011a) fcn.0000011a:
┌ fcn.00000118();
│      ╎╎   0000:0118  ~   call  fcn.000016f1                          ; fcn.000016f1
│      ╎╎   0000:011b      add   word [0x5231], 0x140                  ; [0x5231:2]=0xffff
│      ╎╎   0000:0121      dec   byte [0x5237]
│      ╎└─< 0000:0125      jne   0xbb
│      ╎    0000:0127      ret
       ╎    ; XREFS: CALL 0x000000d2  CALL 0x000000d9  CALL 0x000000e0  
       ╎    ; XREFS: CALL 0x000000e7  CALL 0x000000f1  CALL 0x000000f8  
       ╎    ; XREFS: CALL 0x000000ff  CALL 0x00000112  
..
│    ││╎│   ; XREFS: DATA 0x0000011b  DATA 0x00000546  DATA 0x00000643  
│    ││╎│   ; XREFS: DATA 0x00000b4b  DATA 0x00000fcb  DATA 0x0000102b  
│    ││╎│   ; XREFS: DATA 0x00001048  DATA 0x0000117b  DATA 0x0000134b  
│    ││╎│   ; XREFS: DATA 0x00001688  
│    ││╎│   ; CODE XREF from fcn.00000128 @ 0x13e
      │╎    ; CALL XREF from fcn.00000128 @ 0x159
│    ││╎│   ; DATA XREF from fcn.00001e95 @ 0x1e9d
│    ││╎    ; CODE XREF from fcn.00000272 @ 0x27d
      │╎    ; CALL XREF from fcn.00000000 @ 0x57
      │╎    ; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
      │╎    ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
      │╎    ; XREFS: CALL 0x000000a3  
│     │╎    ; DATA XREF from fcn.00001668 @ +0x7b
      │╎    ; CALL XREF from fcn.00000000 @ 0xac
      │╎│   ; CALL XREF from fcn.00000118 @ 0xc8
│     │╎│   ; DATA XREFS from fcn.00001867 @ +0x2ce, +0x2d2, +0x2d6, +0x2da, +0x2de
│   │││╎│   ; DATA XREF from str.F_An2 @ +0xf
│     │╎│   ; CODE XREF from fcn.00000128 @ 0x12f
│      ╎│   ; CODE XREF from fcn.00000118 @ 0x109
│      ╎│   0000:05ed      push  si                                    ; int16_t arg3
│      ╎│   0000:05ee      push  di
│      ╎│   0000:05ef      push  bx
│      ╎│   0000:05f0      push  bx
│      ╎│   0000:05f1      mov   bx, 0x5255                            ; 'UR'
│      ╎│   0000:05f4      mov   al, 0xfe
│      ╎│   0000:05f6      xchg  byte [di - 1], al
│      ╎│   0000:05f9      mov   byte [bx], al
│      ╎│   0000:05fb      mov   al, 0xff
│      ╎│   0000:05fd      xchg  byte [di + 0x1b], al
│      ╎│   0000:0600      mov   byte [bx + 1], al
│      ╎│   0000:0603      mov   cl, byte [si - 1]
│      ╎│   ; DATA XREF from fcn.00001867 @ +0x2e2
│      ╎│   0000:0606      add   si, 0x24
│      ╎│   0000:0609      call  fcn.000016f1                          ; fcn.000016f1
│      ╎│   0000:060c      mov   dl, byte [si - 1]
│      ╎│   0000:060f      mov   al, cl
│      ╎│   0000:0611      call  fcn.00000852                          ; fcn.00000852
│      ╎│   0000:0614      mov   bl, al
│      ╎│   0000:0616      mov   bh, dl
│      ╎│   0000:0618      pop   dx
│      ╎│   0000:0619      add   dx, dx
│      ╎│   0000:061b      add   dx, dx
│      ╎│   0000:061d      add   dx, word [0x5231]                     ; [0x5231:2]=0xffff
│      ╎│   0000:0621      cmp   byte [0x5255], 0xff                   ; [0x5255:1]=255
│     ┌───< 0000:0626      je    0x643
│     │╎│   0000:0628      cmp   byte [0x5255], 0xfc                   ; [0x5255:1]=255
│    ┌────< 0000:062d      je    0x643
│    ││╎│   0000:062f      mov   ah, byte [si]
│    ││╎│   0000:0631      mov   al, bl
│    ││╎│   0000:0633      push  bx
│    ││╎│   0000:0634      push  si
│    ││╎│   0000:0635      push  dx
│    ││╎│   0000:0636      or    al, al
│   ┌─────< 0000:0638      jns   0x63d
│   │││╎│   0000:063a      call  fcn.0000084b                          ; fcn.0000084b
│   └─────> 0000:063d      call  fcn.000006a1                          ; fcn.000006a1
│    ││╎│   0000:0640      pop   dx
│    ││╎│   0000:0641      pop   si
│    ││╎│   0000:0642      pop   bx
│    └└───> 0000:0643      add   dx, 0x140
│      ╎│   0000:0647      cmp   byte [0x5237], 1                      ; [0x5237:1]=255
│     ┌───< 0000:064c      je    0x66d
│     │╎│   0000:064e      cmp   byte [0x5256], 0xff                   ; [0x5256:1]=255
│    ┌────< 0000:0653      je    0x66d
│    ││╎│   0000:0655      cmp   byte [0x5256], 0xfc                   ; [0x5256:1]=255
│   ┌─────< 0000:065a      je    0x66d
│   │││╎│   0000:065c      inc   si
│   │││╎│   0000:065d      inc   si
│   │││╎│   0000:065e      lodsb al, byte [si]
│   │││╎│   0000:065f      mov   ah, al
│   │││╎│   0000:0661      mov   al, bh
│   │││╎│   0000:0663      or    al, al
│  ┌──────< 0000:0665      jns   0x66a
│  ││││╎│   0000:0667      call  fcn.0000084b                          ; fcn.0000084b
│  └──────> 0000:066a      call  fcn.000006a1                          ; fcn.000006a1
│   └└└───> 0000:066d      pop   bx
│      ╎│   0000:066e      pop   di
│      ╎│   0000:066f      pop   si
│      └──< 0000:0670      jmp   0x115
```

### Function 0x0000011a
```asm
│           ; CALL XREF from fcn.00000128 @ +0x8d
│           ; CALL XREFS from fcn.000008a3 @ 0x8ad, 0x8d0, 0x8ee, 0x909
┌ fcn.0000011a(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:011a      adc   ax, 0x681                             ; arg1
│           0000:011d      xor   word [bp + si + 0x40], dx             ; arg2
│           0000:0120      add   si, di
│           0000:0122      push  cs
│           0000:0123      aaa
│           0000:0124      push  dx                                    ; arg2
```

### Function 0x00000128
```asm
; XREFS: CALL 0x000000d2  CALL 0x000000d9  CALL 0x000000e0  
            ; XREFS: CALL 0x000000e7  CALL 0x000000f1  CALL 0x000000f8  
            ; XREFS: CALL 0x000000ff  CALL 0x00000112  
┌ fcn.00000128(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0128      mov   al, byte [si - 1]
│           0000:012b      or    al, al
│       ┌─< 0000:012d      jns   0x132
│      ┌──< 0000:012f      jmp   0x574
│      │└─> 0000:0132      cmp   byte es:[di - 1], 0xfc
│      │┌─< 0000:0137      jne   0x140
│      ││   0000:0139      mov   byte es:[di - 1], 0xff                ; [0xff:1]=232
│     ┌───< 0000:013e      jmp   0x15c
│     │││   ; XREFS: DATA 0x0000011b  DATA 0x00000546  DATA 0x00000643  
│     │││   ; XREFS: DATA 0x00000b4b  DATA 0x00000fcb  DATA 0x0000102b  
│     │││   ; XREFS: DATA 0x00001048  DATA 0x0000117b  DATA 0x0000134b  
│     │││   ; XREFS: DATA 0x00001688  
│     ││└─> 0000:0140      inc   byte es:[di - 1]
│     ││    0000:0144      mov   byte es:[di - 1], 0xfe                ; [0xfe:1]=3
│     ││┌─< 0000:0149      je    0x15c
│     │││   0000:014b      mov   byte es:[di - 1], al
│     │││   0000:014f      mov   dx, bx
│     │││   0000:0151      add   dx, dx
│     │││   0000:0153      add   dx, dx
│     │││   0000:0155      add   dx, word [0x5231]                     ; [0x5231:2]=0xffff ; int16_t arg2
│     │││   0000:0159      call  fcn.00000272                          ; fcn.00000272
│     │││   ; CODE XREF from fcn.00000128 @ 0x13e
│     └─└─> 0000:015c      mov   al, byte [0xc012]                     ; [0xc012:1]=255
│      │    0000:015f      sub   al, 5
│      │┌─< 0000:0161      jae   0x164
│      ││   0000:0163      ret
│      │└─> 0000:0164      cmp   al, 4
│      │┌─< 0000:0166      jb    0x169
│      ││   0000:0168      ret
│      │└─> 0000:0169      push  bx                                    ; arg3
│      │    0000:016a      mov   bl, al
│      │    0000:016c      xor   bh, bh
│      │    0000:016e      add   bx, bx                                ; arg3
│      │    0000:0170      call  word [bx + 0x3172]
│      │    0000:0174      pop   bx
│      │    0000:0175      ret
..
       │    ; CALL XREF from fcn.00000128 @ 0x159
│     │││   ; DATA XREF from fcn.00001e95 @ 0x1e9d
│     ││    ; CODE XREF from fcn.00000272 @ 0x27d
       │    ; CALL XREF from fcn.00000000 @ 0x57
       │    ; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
       │    ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
       │    ; XREFS: CALL 0x000000a3  
│      │    ; DATA XREF from fcn.00001668 @ +0x7b
       │    ; CALL XREF from fcn.00000000 @ 0xac
       ││   ; CALL XREF from fcn.00000118 @ 0xc8
│      ││   ; DATA XREFS from fcn.00001867 @ +0x2ce, +0x2d2, +0x2d6, +0x2da, +0x2de
│    ││││   ; DATA XREF from str.F_An2 @ +0xf
│      ││   ; CODE XREF from fcn.00000128 @ 0x12f
│      └──> 0000:0574      push  si                                    ; arg3
│       │   0000:0575      push  di
│       │   0000:0576      push  bx
│       │   0000:0577      push  bx
│       │   0000:0578      mov   bx, 0x5255                            ; 'UR'
│       │   0000:057b      mov   ax, 0xfffe
│       │   0000:057e      xchg  word [di - 1], ax
│       │   0000:0581      mov   word [bx], ax
│       │   0000:0583      mov   ax, 0xffff
│       │   0000:0586      xchg  word [di + 0x1b], ax
│       │   0000:0589      mov   word [bx + 2], ax
│       │   0000:058c      mov   cl, byte [si - 1]
│       │   0000:058f      mov   bx, 0x5259                            ; 'YR'
│       │   0000:0592      mov   al, byte [si]
│       │   0000:0594      mov   byte [bx + 1], al
│       │   0000:0597      add   si, 0x24
│       │   0000:059a      call  fcn.000016f1                          ; fcn.000016f1
│       │   0000:059d      mov   ax, word [si - 1]                     ; int16_t arg1
│       │   0000:05a0      mov   word [bx + 2], ax
│       │   0000:05a3      pop   dx
│       │   0000:05a4      mov   byte [0x5238], dl                     ; [0x5238:1]=255
│       │   0000:05a8      mov   al, byte [0x5237]                     ; [0x5237:1]=255
│       │   0000:05ab      neg   al
│       │   0000:05ad      add   al, 0x12
│       │   0000:05af      mov   byte [0x5239], al                     ; [0x5239:1]=255
│       │   0000:05b2      add   dx, dx
│       │   0000:05b4      add   dx, dx
│       │   0000:05b6      add   dx, word [0x5231]                     ; [0x5231:2]=0xffff ; int16_t arg3
│       │   0000:05ba      mov   al, cl
│       │   0000:05bc      call  fcn.00000852                          ; fcn.00000852
│       │   0000:05bf      mov   di, 0x5259                            ; 'YR'
│       │   0000:05c2      mov   byte [di], al
│       │   0000:05c4      mov   bp, 0x5255                            ; 'UR'
│       │   0000:05c7      call  fcn.00000673                          ; fcn.00000673
│       │   0000:05ca      cmp   byte [0x5237], 1                      ; [0x5237:1]=255
│      ┌──< 0000:05cf      je    0x5e9
│      ││   0000:05d1      add   dx, 0x138
│      ││   0000:05d5      call  fcn.00000673                          ; fcn.00000673
│      ││   0000:05d8      test  byte [0xff34], 0xff
│     ┌───< 0000:05dd      je    0x5e9
│     │││   0000:05df      test  byte [0xff2f], 0xff
│    ┌────< 0000:05e4      je    0x5e9
│    ││││   0000:05e6      call  fcn.000008a3                          ; fcn.000008a3
│    └└└──> 0000:05e9      pop   bx
│       │   0000:05ea      pop   di
│       │   0000:05eb      pop   si
└       │   0000:05ec      ret
```

### Function 0x00000272
```asm
; CALL XREF from fcn.00000128 @ 0x159
┌ fcn.00000272(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0272      push  es
│           0000:0273      push  ds
│           0000:0274      push  di
│           0000:0275      push  si
│           0000:0276      push  bx                                    ; arg3
│           0000:0277      mov   di, dx                                ; arg2
│           0000:0279      or    al, al
│       ┌─< 0000:027b      jne   0x280
│      ┌──< 0000:027d      jmp   0x3b7
│      ││   ; DATA XREF from fcn.00001e95 @ 0x1e9d
│      │└─> 0000:0280      mov   bl, al
│      │    0000:0282      xor   bh, bh
│      │    0000:0284      add   bx, bx                                ; arg3
│      │    0000:0286      test  word [bx + 0x5262], 0xffff            ; arg3
│      │┌─< 0000:028c      jne   0x2d2
│      ││   0000:028e      dec   al
│      ││   0000:0290      mov   word [bx + 0x5262], di                ; arg3
│      ││   0000:0294      mov   cl, 0x20
│      ││   0000:0296      mul   cl
│      ││   0000:0298      add   ax, 0x8030                            ; arg1
│      ││   0000:029b      mov   si, ax                                ; arg1
│      ││   0000:029d      mov   ds, word cs:[0xff2c]
│      ││   0000:02a2      mov   ax, 0xb800
│      ││   0000:02a5      mov   es, ax
│      ││   0000:02a7      mov   cx, 4
│     ┌───> 0000:02aa      movsw word es:[di], word ptr [si]
│     ╎││   0000:02ab      movsw word es:[di], word ptr [si]
│     ╎││   0000:02ac      add   di, 0x1ffc
│     ╎││   0000:02b0      cmp   di, 0x8000
│    ┌────< 0000:02b4      jb    0x2ba
│    │╎││   0000:02b6      add   di, 0x80a0
│    └────> 0000:02ba      movsw word es:[di], word ptr [si]
│     ╎││   0000:02bb      movsw word es:[di], word ptr [si]
│     ╎││   0000:02bc      add   di, 0x1ffc
│     ╎││   0000:02c0      cmp   di, 0x8000
│    ┌────< 0000:02c4      jb    0x2ca
│    │╎││   0000:02c6      add   di, 0x80a0
│    └└───< 0000:02ca      loop  0x2aa
│      ││   0000:02cc      pop   bx
│      ││   0000:02cd      pop   si
│      ││   0000:02ce      pop   di
│      ││   0000:02cf      pop   ds
│      ││   0000:02d0      pop   es
│      ││   0000:02d1      ret
│      │└─> 0000:02d2      mov   si, word [bx + 0x5262]                ; arg3
│      │    0000:02d6      mov   ax, 0xb800
│      │    0000:02d9      mov   es, ax
│      │    0000:02db      mov   ds, ax
│      │    0000:02dd      movsw word es:[di], word ptr [si]
│      │    0000:02de      movsw word es:[di], word ptr [si]
│      │    0000:02df      add   di, 0x1ffc
│      │    0000:02e3      cmp   di, 0x8000
│      │┌─< 0000:02e7      jb    0x2ed
│      ││   0000:02e9      add   di, 0x80a0
│      │└─> 0000:02ed      add   si, 0x1ffc
│      │    0000:02f1      cmp   si, 0x8000
│      │┌─< 0000:02f5      jb    0x2fb
│      ││   0000:02f7      add   si, 0x80a0
│      │└─> 0000:02fb      movsw word es:[di], word ptr [si]
│      │    0000:02fc      movsw word es:[di], word ptr [si]
│      │    0000:02fd      add   di, 0x1ffc
│      │    0000:0301      cmp   di, 0x8000
│      │┌─< 0000:0305      jb    0x30b
│      ││   0000:0307      add   di, 0x80a0
│      │└─> 0000:030b      add   si, 0x1ffc
│      │    0000:030f      cmp   si, 0x8000
│      │┌─< 0000:0313      jb    0x319
│      ││   0000:0315      add   si, 0x80a0
│      │└─> 0000:0319      movsw word es:[di], word ptr [si]
│      │    0000:031a      movsw word es:[di], word ptr [si]
│      │    0000:031b      add   di, 0x1ffc
│      │    0000:031f      cmp   di, 0x8000
│      │┌─< 0000:0323      jb    0x329
│      ││   0000:0325      add   di, 0x80a0
│      │└─> 0000:0329      add   si, 0x1ffc
│      │    0000:032d      cmp   si, 0x8000
│      │┌─< 0000:0331      jb    0x337
│      ││   0000:0333      add   si, 0x80a0
│      │└─> 0000:0337      movsw word es:[di], word ptr [si]
│      │    0000:0338      movsw word es:[di], word ptr [si]
│      │    0000:0339      add   di, 0x1ffc
│      │    0000:033d      cmp   di, 0x8000
│      │┌─< 0000:0341      jb    0x347
│      ││   0000:0343      add   di, 0x80a0
│      │└─> 0000:0347      add   si, 0x1ffc
│      │    0000:034b      cmp   si, 0x8000
│      │┌─< 0000:034f      jb    0x355
│      ││   0000:0351      add   si, 0x80a0
│      │└─> 0000:0355      movsw word es:[di], word ptr [si]
│      │    0000:0356      movsw word es:[di], word ptr [si]
│      │    0000:0357      add   di, 0x1ffc
│      │    0000:035b      cmp   di, 0x8000
│      │┌─< 0000:035f      jb    0x365
│      ││   0000:0361      add   di, 0x80a0
│      │└─> 0000:0365      add   si, 0x1ffc
│      │    0000:0369      cmp   si, 0x8000
│      │┌─< 0000:036d      jb    0x373
│      ││   0000:036f      add   si, 0x80a0
│      │└─> 0000:0373      movsw word es:[di], word ptr [si]
│      │    0000:0374      movsw word es:[di], word ptr [si]
│      │    0000:0375      add   di, 0x1ffc
│      │    0000:0379      cmp   di, 0x8000
│      │┌─< 0000:037d      jb    0x383
│      ││   0000:037f      add   di, 0x80a0
│      │└─> 0000:0383      add   si, 0x1ffc
│      │    0000:0387      cmp   si, 0x8000
│      │┌─< 0000:038b      jb    0x391
│      ││   0000:038d      add   si, 0x80a0
│      │└─> 0000:0391      movsw word es:[di], word ptr [si]
│      │    0000:0392      movsw word es:[di], word ptr [si]
│      │    0000:0393      add   di, 0x1ffc
│      │    0000:0397      cmp   di, 0x8000
│      │┌─< 0000:039b      jb    0x3a1
│      ││   0000:039d      add   di, 0x80a0
│      │└─> 0000:03a1      add   si, 0x1ffc
│      │    0000:03a5      cmp   si, 0x8000
│      │┌─< 0000:03a9      jb    0x3af
│      ││   0000:03ab      add   si, 0x80a0
│      │└─> 0000:03af      movsw word es:[di], word ptr [si]
│      │    0000:03b0      movsw word es:[di], word ptr [si]
│      │    0000:03b1      pop   bx
│      │    0000:03b2      pop   si
│      │    0000:03b3      pop   di
│      │    0000:03b4      pop   ds
│      │    0000:03b5      pop   es
│      │    0000:03b6      ret
│      │    ; CODE XREF from fcn.00000272 @ 0x27d
│      └──> 0000:03b7      mov   ax, 0xb800
│           0000:03ba      mov   es, ax
│           0000:03bc      xor   ax, ax
│           0000:03be      stosw word es:[di], ax
│           0000:03bf      stosw word es:[di], ax
│           0000:03c0      add   di, 0x1ffc
│           0000:03c4      cmp   di, 0x8000
│       ┌─< 0000:03c8      jb    0x3ce
│       │   0000:03ca      add   di, 0x80a0
│       └─> 0000:03ce      stosw word es:[di], ax
│           0000:03cf      stosw word es:[di], ax
│           0000:03d0      add   di, 0x1ffc
│           0000:03d4      cmp   di, 0x8000
│       ┌─< 0000:03d8      jb    0x3de
│       │   0000:03da      add   di, 0x80a0
│       └─> 0000:03de      stosw word es:[di], ax
│           0000:03df      stosw word es:[di], ax
│           0000:03e0      add   di, 0x1ffc
│           0000:03e4      cmp   di, 0x8000
│       ┌─< 0000:03e8      jb    0x3ee
│       │   0000:03ea      add   di, 0x80a0
│       └─> 0000:03ee      stosw word es:[di], ax
│           0000:03ef      stosw word es:[di], ax
│           0000:03f0      add   di, 0x1ffc
│           0000:03f4      cmp   di, 0x8000
│       ┌─< 0000:03f8      jb    0x3fe
│       │   0000:03fa      add   di, 0x80a0
│       └─> 0000:03fe      stosw word es:[di], ax
│           0000:03ff      stosw word es:[di], ax
│           0000:0400      add   di, 0x1ffc
│           0000:0404      cmp   di, 0x8000
│       ┌─< 0000:0408      jb    0x40e
│       │   0000:040a      add   di, 0x80a0
│       └─> 0000:040e      stosw word es:[di], ax
│           0000:040f      stosw word es:[di], ax
│           0000:0410      add   di, 0x1ffc
│           0000:0414      cmp   di, 0x8000
│       ┌─< 0000:0418      jb    0x41e
│       │   0000:041a      add   di, 0x80a0
│       └─> 0000:041e      stosw word es:[di], ax
│           0000:041f      stosw word es:[di], ax
│           0000:0420      add   di, 0x1ffc
│           0000:0424      cmp   di, 0x8000
│       ┌─< 0000:0428      jb    0x42e
│       │   0000:042a      add   di, 0x80a0
│       └─> 0000:042e      stosw word es:[di], ax
│           0000:042f      stosw word es:[di], ax
│           0000:0430      pop   bx
│           0000:0431      pop   si
│           0000:0432      pop   di
│           0000:0433      pop   ds
│           0000:0434      pop   es
└           0000:0435      ret
```

### Function 0x00000436
```asm
; CALL XREF from fcn.00000000 @ 0x57
┌ fcn.00000436(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0436      cmp   byte [0xe900], 0xff
│       ┌─< 0000:043b      jne   0x43e
│       │   0000:043d      ret
│       └─> 0000:043e      cmp   byte [0xe900], 0xfc
│       ┌─< 0000:0443      jne   0x446
│       │   0000:0445      ret
│       └─> 0000:0446      push  si
│           0000:0447      push  bx                                    ; arg3
│           0000:0448      mov   byte [0xe900], 0xff                   ; [0xff:1]=232
│           0000:044d      mov   cl, byte [si]
│           0000:044f      add   si, 0x25
│           0000:0452      call  fcn.000016f1                          ; fcn.000016f1
│           0000:0455      mov   al, byte [si]
│           0000:0457      or    al, al
│       ┌─< 0000:0459      jns   0x45e
│       │   0000:045b      call  fcn.0000084b                          ; fcn.0000084b
│       └─> 0000:045e      push  ax
│           0000:045f      mov   al, cl
│           0000:0461      call  fcn.00000852                          ; fcn.00000852
│           0000:0464      add   si, 3
│           0000:0467      pop   ax                                    ; int16_t arg1
│           0000:0468      mov   ah, byte [si]
│           0000:046a      mov   dx, 0x41f8                            ; int16_t arg2
│           0000:046d      call  fcn.000006a1                          ; fcn.000006a1
│           0000:0470      pop   bx
│           0000:0471      pop   si
└           0000:0472      ret
```

### Function 0x00000473
```asm
; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
            ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
            ; XREFS: CALL 0x000000a3  
┌ fcn.00000473(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0473      push  si
│           0000:0474      push  bx                                    ; arg3
│           0000:0475      mov   cx, bx                                ; arg3
│           0000:0477      mov   di, bx                                ; arg3
│           0000:0479      add   di, 0xe900
│           0000:047d      mov   bx, 0x5255                            ; 'UR'
│           ; DATA XREF from fcn.00001668 @ +0x7b
│           0000:0480      mov   al, 0xff
│           0000:0482      xchg  byte [di], al
│           0000:0484      mov   byte [bx], al
│           0000:0486      mov   byte [bx + 1], 0
│           0000:048a      mov   byte [di + 1], 0xff                   ; [0xff:1]=232
│           0000:048e      mov   dx, cx
│           0000:0490      add   dx, dx
│           0000:0492      add   dx, dx
│           0000:0494      add   dx, 0x41f8
│           0000:0498      mov   cl, byte [si]
│           0000:049a      add   si, 0x24
│           0000:049d      call  fcn.000016f1                          ; fcn.000016f1
│           0000:04a0      mov   bx, 0x5259                            ; 'YR' ; int16_t arg_6h
│           0000:04a3      lodsw ax, word [si]                         ; int16_t arg1
│           0000:04a4      mov   word [bx], ax
│           0000:04a6      mov   al, cl
│           0000:04a8      call  fcn.00000852                          ; fcn.00000852
│           0000:04ab      inc   si
│           0000:04ac      inc   si
│           0000:04ad      mov   di, 0x5259                            ; 'YR'
│           0000:04b0      mov   bp, 0x5255                            ; 'UR'
│           0000:04b3      call  fcn.00000673                          ; fcn.00000673
│           0000:04b6      pop   bx
│           0000:04b7      pop   si
└           0000:04b8      ret
```

### Function 0x000004b9
```asm
; CALL XREF from fcn.00000000 @ 0xac
┌ fcn.000004b9();
│           0000:04b9      cmp   byte [0xe91b], 0xff
│       ┌─< 0000:04be      jne   0x4c1
│       │   0000:04c0      ret
│       └─> 0000:04c1      cmp   byte [0xe91b], 0xfc
│       ┌─< 0000:04c6      jne   0x4c9
│       │   0000:04c8      ret
│       └─> 0000:04c9      mov   byte [0xe91b], 0xff                   ; [0xff:1]=232
│           0000:04ce      mov   cl, byte [si]
│           0000:04d0      add   si, 0x24
│           0000:04d3      call  fcn.000016f1                          ; fcn.000016f1
│           0000:04d6      mov   al, byte [si]
│           0000:04d8      or    al, al
│       ┌─< 0000:04da      jns   0x4df
│       │   0000:04dc      call  fcn.0000084b                          ; fcn.0000084b
│       └─> 0000:04df      push  ax
│           0000:04e0      mov   al, cl
│           0000:04e2      call  fcn.00000852                          ; fcn.00000852
│           0000:04e5      add   si, 2
│           0000:04e8      pop   ax
│           0000:04e9      mov   ah, byte [si]
│           0000:04eb      mov   dx, 0x4264                            ; 'dB'
└       ┌─< 0000:04ee      jmp   fcn.000006a1                          ; fcn.000006a1
```

### Function 0x000004f1
```asm
; CALL XREF from fcn.00000118 @ 0xc8
┌ fcn.000004f1(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:04f1      push  si
│           0000:04f2      push  di
│           0000:04f3      push  bx                                    ; arg3
│           0000:04f4      push  bx                                    ; arg3
│           0000:04f5      mov   bx, 0x5255                            ; 'UR'
│           0000:04f8      mov   al, 0xff
│           0000:04fa      xchg  byte [di], al
│           0000:04fc      mov   byte [bx], al
│           0000:04fe      mov   al, 0xff
│           0000:0500      xchg  byte [di + 0x1c], al
│           0000:0503      mov   byte [bx + 1], al
│           ; DATA XREFS from fcn.00001867 @ +0x2ce, +0x2d2, +0x2d6, +0x2da, +0x2de
│           0000:0506      mov   cl, byte [si - 1]
│           0000:0509      mov   dl, byte [si]
│           0000:050b      add   si, 0x24
│           0000:050e      call  fcn.000016f1                          ; fcn.000016f1
│           0000:0511      mov   dh, byte [si]
│           0000:0513      mov   al, cl
│           0000:0515      call  fcn.00000852                          ; fcn.00000852
│           0000:0518      inc   si
│           0000:0519      mov   bx, dx
│           0000:051b      pop   dx
│           0000:051c      add   dx, dx
│           0000:051e      add   dx, dx
│           0000:0520      add   dx, word [0x5231]                     ; [0x5231:2]=0xffff
│           0000:0524      cmp   byte [0x5255], 0xff                   ; [0x5255:1]=255
│       ┌─< 0000:0529      je    0x546
│       │   0000:052b      cmp   byte [0x5255], 0xfc                   ; [0x5255:1]=255
│      ┌──< 0000:0530      je    0x546
│      ││   0000:0532      mov   ah, byte [si]
│      ││   0000:0534      mov   al, bl
│      ││   0000:0536      push  bx
│      ││   0000:0537      push  si
│      ││   0000:0538      push  dx
│      ││   0000:0539      or    al, al
│     ┌───< 0000:053b      jns   0x540
│     │││   0000:053d      call  fcn.0000084b                          ; fcn.0000084b
│     └───> 0000:0540      call  fcn.000006a1                          ; fcn.000006a1
│      ││   0000:0543      pop   dx
│      ││   0000:0544      pop   si
│      ││   0000:0545      pop   bx
│      ││   ; DATA XREF from str.F_An2 @ +0xf
│      └└─> 0000:0546      add   dx, 0x140
│           0000:054a      cmp   byte [0x5237], 1                      ; [0x5237:1]=255
│       ┌─< 0000:054f      je    0x570
│       │   0000:0551      cmp   byte [0x5256], 0xff                   ; [0x5256:1]=255
│      ┌──< 0000:0556      je    0x570
│      ││   0000:0558      cmp   byte [0x5256], 0xfc                   ; [0x5256:1]=255
│     ┌───< 0000:055d      je    0x570
│     │││   0000:055f      inc   si
│     │││   0000:0560      inc   si
│     │││   0000:0561      lodsb al, byte [si]
│     │││   0000:0562      mov   ah, al
│     │││   0000:0564      mov   al, bh
│     │││   0000:0566      or    al, al
│    ┌────< 0000:0568      jns   0x56d
│    ││││   0000:056a      call  fcn.0000084b                          ; fcn.0000084b
│    └────> 0000:056d      call  fcn.000006a1                          ; fcn.000006a1
│     └└└─> 0000:0570      pop   bx
│           0000:0571      pop   di
│           0000:0572      pop   si
└           0000:0573      ret
```

### Function 0x00000673
```asm
; CALL XREF from fcn.00000473 @ 0x4b3
            ; CALL XREFS from fcn.00000128 @ 0x5c7, 0x5d5
┌ fcn.00000673();
│           0000:0673      call  0x676
│           ; CALL XREF from fcn.00000673 @ 0x673
│           0000:0676      cmp   byte ds:[bp], 0xff
│       ┌─< 0000:067b      je    0x69a
│       │   0000:067d      cmp   byte ds:[bp], 0xfc
│      ┌──< 0000:0682      je    0x69a
│      ││   0000:0684      mov   ah, byte [si]
│      ││   0000:0686      mov   al, byte [di]
│      ││   0000:0688      or    al, al
│     ┌───< 0000:068a      jns   0x68f
│     │││   0000:068c      call  fcn.0000084b                          ; fcn.0000084b
│     └───> 0000:068f      push  bp
│      ││   0000:0690      push  si
│      ││   0000:0691      push  di
│      ││   0000:0692      push  dx
│      ││   0000:0693      call  fcn.000006a1                          ; fcn.000006a1
│      ││   0000:0696      pop   dx
│      ││   0000:0697      pop   di
│      ││   0000:0698      pop   si
│      ││   0000:0699      pop   bp
│      └└─> 0000:069a      inc   si
│           0000:069b      inc   di
│           0000:069c      inc   bp
│           0000:069d      add   dx, 4
└           0000:06a0      ret
```

### Function 0x000006a1
```asm
; XREFS: CALL 0x0000046d  CODE 0x000004ee  CALL 0x00000540  
            ; XREFS: CALL 0x0000056d  CALL 0x0000063d  CALL 0x0000066a  
            ; XREFS: CALL 0x00000693  
┌ fcn.000006a1(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:06a1      push  es
│           0000:06a2      push  ds
│           0000:06a3      mov   bl, byte [0x523a]                     ; [0x523a:1]=255
│           0000:06a7      or    al, al
│       ┌─< 0000:06a9      je    0x6b0
│      ┌──< 0000:06ab      js    0x6b0
│      ││   0000:06ad      or    bl, 0x80
│      └└─> 0000:06b0      mov   cl, al
│           0000:06b2      mov   al, ah
│           0000:06b4      mov   ch, 0x20
│           0000:06b6      mul   ch
│           0000:06b8      mov   si, ax                                ; arg1
│           0000:06ba      add   si, 0x4000
│           0000:06be      shr   ax, 1                                 ; arg1
│           0000:06c0      shr   ax, 1                                 ; arg1
│           0000:06c2      mov   bp, ax                                ; arg1
│           0000:06c4      add   bp, 0xa000
│           0000:06c8      mov   ds, word cs:[0xff2c]
│           0000:06cd      mov   di, dx                                ; arg2
│           0000:06cf      push  cs
│           0000:06d0      pop   es
│           0000:06d1      mov   ch, bl
│           0000:06d3      and   bl, 0x7f
│           0000:06d6      xor   bh, bh
│           0000:06d8      add   bx, bx                                ; arg3
│           0000:06da      mov   ax, word cs:[bx + 0x51d2]             ; arg3
│           0000:06df      mov   word cs:[0x522f], ax
│           0000:06e3      mov   al, cl
│           0000:06e5      or    ch, ch
│       ┌─< 0000:06e7      js    0x701
│       │   0000:06e9      push  di
│       │   0000:06ea      mov   di, 0x5682
│       │   0000:06ed      call  fcn.0000075d                          ; fcn.0000075d
│       │   0000:06f0      pop   di
│       │   0000:06f1      mov   si, 0x5682
│       │   0000:06f4      push  cs
│       │   0000:06f5      pop   ds
│       │   0000:06f6      mov   ax, 0xb800
│       │   0000:06f9      mov   es, ax
│       │   0000:06fb      call  fcn.000007ca                          ; fcn.000007ca
│       │   0000:06fe      pop   ds
│       │   0000:06ff      pop   es
│       │   0000:0700      ret
│       └─> 0000:0701      push  di
│           0000:0702      mov   di, 0x5682
│           0000:0705      call  fcn.00000719                          ; fcn.00000719
│           ; DATA XREF from fcn.000021b8 @ +0x61
│           0000:0708      pop   di
│           0000:0709      mov   si, 0x5682
│           0000:070c      push  cs
│           0000:070d      pop   ds
│           0000:070e      mov   ax, 0xb800
│           0000:0711      mov   es, ax
│           0000:0713      call  fcn.000007ca                          ; fcn.000007ca
│           0000:0716      pop   ds
│           0000:0717      pop   es
└           0000:0718      ret
```

### Function 0x00000719
```asm
; CALL XREF from fcn.000006a1 @ 0x705
            ; CALL XREF from fcn.00000e71 @ +0x9c
┌ fcn.00000719(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0719      push  bp
│           0000:071a      push  si
│           0000:071b      push  di
│           0000:071c      dec   cl
│           0000:071e      mov   al, 0x20
│           0000:0720      mul   cl
│           0000:0722      add   ax, 0x8030                            ; arg1
│           0000:0725      mov   si, ax                                ; arg1
│           0000:0727      call  fcn.0000083d                          ; fcn.0000083d
│           0000:072a      pop   di
│           0000:072b      pop   si
│           0000:072c      pop   bp
└       ┌─< 0000:072d      jmp   fcn.0000072f                          ; fcn.0000072f
```

### Function 0x0000072f
```asm
; CODE XREF from fcn.00000719 @ 0x72d
            ; CALL XREF from fcn.00000e2b @ 0xe61
┌ fcn.0000072f(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:072f      mov   cx, 8
│       ┌─> 0000:0732      push  cx
│       ╎   0000:0733      mov   dl, byte ds:[bp]
│       ╎   0000:0737      call  fcn.0000219f                          ; fcn.0000219f
│       ╎   0000:073a      and   word es:[di], ax
│       ╎   0000:073d      push  dx
│       ╎   0000:073e      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:073f      call  fcn.0000076d                          ; fcn.0000076d
│       ╎   0000:0742      or    word es:[di], ax
│       ╎   0000:0745      pop   dx
│       ╎   0000:0746      call  fcn.0000219f                          ; fcn.0000219f
│       ╎   0000:0749      and   word es:[di + 2], ax
│       ╎   0000:074d      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:074e      call  fcn.0000076d                          ; fcn.0000076d
│       ╎   0000:0751      or    word es:[di + 2], ax
│       ╎   0000:0755      inc   bp
│       ╎   0000:0756      add   di, 4
│       ╎   0000:0759      pop   cx
│       └─< 0000:075a      loop  0x732
└           0000:075c      ret
```

### Function 0x0000075d
```asm
; CALL XREF from fcn.000006a1 @ 0x6ed
            ; CALL XREF from fcn.00000e71 @ +0xa3
┌ fcn.0000075d();
│           0000:075d      mov   cx, 8
│       ┌─> 0000:0760      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0761      call  fcn.0000076d                          ; fcn.0000076d
│       ╎   0000:0764      stosw word es:[di], ax
│       ╎   0000:0765      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0766      call  fcn.0000076d                          ; fcn.0000076d
│       ╎   0000:0769      stosw word es:[di], ax
│       └─< 0000:076a      loop  0x760
└           0000:076c      ret
```

### Function 0x0000076d
```asm
; XREFS: CALL 0x0000073f  CALL 0x0000074e  CALL 0x00000761  
            ; XREFS: CALL 0x00000766  CALL 0x00001b79  CALL 0x00001b7e  
┌ fcn.0000076d(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:076d      mov   bx, ax                                ; arg1
│           0000:076f      shr   bh, 1
│           0000:0771      shr   bh, 1
│           0000:0773      shr   bh, 1
│           0000:0775      shr   bh, 1
│           0000:0777      mov   bl, bh
│           0000:0779      xor   bh, bh
│           0000:077b      add   bx, word cs:[0x522f]
│           0000:0780      mov   dh, byte cs:[bx]
│           0000:0783      add   dh, dh
│           0000:0785      add   dh, dh
│           0000:0787      add   dh, dh
│           0000:0789      add   dh, dh
│           0000:078b      mov   bx, ax                                ; arg1
│           0000:078d      and   bh, 0xf                               ; str.F_An2 ; "F)An2\U0000001d9\tCzB\xf0:AD\xbbF\U00000005G\xfdGpBMK\x90K'M\xe8P.R\U0000000e\a\xbfbR3\xc0\xb9\x80"
│           0000:0790      mov   bl, bh
│           0000:0792      xor   bh, bh
│           0000:0794      add   bx, word cs:[0x522f]
│           0000:0799      or    dh, byte cs:[bx]
│           0000:079c      mov   bx, ax                                ; arg1
│           0000:079e      shr   bl, 1
│           0000:07a0      shr   bl, 1
│           0000:07a2      shr   bl, 1
│           0000:07a4      shr   bl, 1
│           0000:07a6      xor   bh, bh
│           0000:07a8      add   bx, word cs:[0x522f]
│           0000:07ad      mov   dl, byte cs:[bx]
│           0000:07b0      add   dl, dl
│           0000:07b2      add   dl, dl
│           0000:07b4      add   dl, dl
│           0000:07b6      add   dl, dl
│           0000:07b8      mov   bx, ax                                ; arg1
│           0000:07ba      and   bl, 0xf                               ; str.F_An2 ; "F)An2\U0000001d9\tCzB\xf0:AD\xbbF\U00000005G\xfdGpBMK\x90K'M\xe8P.R\U0000000e\a\xbfbR3\xc0\xb9\x80"
│           0000:07bd      xor   bh, bh
│           0000:07bf      add   bx, word cs:[0x522f]
│           0000:07c4      or    dl, byte cs:[bx]
│           0000:07c7      mov   ax, dx                                ; arg2
└           0000:07c9      ret
```

### Function 0x000007ca
```asm
; CALL XREFS from fcn.000006a1 @ 0x6fb, 0x713
            ; CALL XREF from fcn.00000f4a @ 0x12a6
┌ fcn.000007ca();
│           0000:07ca      movsw word es:[di], word ptr [si]
│           0000:07cb      movsw word es:[di], word ptr [si]
│           0000:07cc      add   di, 0x1ffc
│           0000:07d0      cmp   di, 0x8000
│       ┌─< 0000:07d4      jb    0x7da
│       │   0000:07d6      add   di, 0x80a0
│       └─> 0000:07da      movsw word es:[di], word ptr [si]
│           0000:07db      movsw word es:[di], word ptr [si]
│           0000:07dc      add   di, 0x1ffc
│           0000:07e0      cmp   di, 0x8000
│       ┌─< 0000:07e4      jb    0x7ea
│       │   0000:07e6      add   di, 0x80a0
│       └─> 0000:07ea      movsw word es:[di], word ptr [si]
│           0000:07eb      movsw word es:[di], word ptr [si]
│           0000:07ec      add   di, 0x1ffc
│           0000:07f0      cmp   di, 0x8000
│       ┌─< 0000:07f4      jb    0x7fa
│       │   0000:07f6      add   di, 0x80a0
│       └─> 0000:07fa      movsw word es:[di], word ptr [si]
│           0000:07fb      movsw word es:[di], word ptr [si]
│           0000:07fc      add   di, 0x1ffc
│           0000:0800      cmp   di, 0x8000
│       ┌─< 0000:0804      jb    0x80a
│       │   0000:0806      add   di, 0x80a0
│       └─> 0000:080a      movsw word es:[di], word ptr [si]
│           0000:080b      movsw word es:[di], word ptr [si]
│           0000:080c      add   di, 0x1ffc
│           0000:0810      cmp   di, 0x8000
│       ┌─< 0000:0814      jb    0x81a
│       │   0000:0816      add   di, 0x80a0
│       └─> 0000:081a      movsw word es:[di], word ptr [si]
│           0000:081b      movsw word es:[di], word ptr [si]
│           0000:081c      add   di, 0x1ffc
│           0000:0820      cmp   di, 0x8000
│       ┌─< 0000:0824      jb    0x82a
│       │   0000:0826      add   di, 0x80a0
│       └─> 0000:082a      movsw word es:[di], word ptr [si]
│           0000:082b      movsw word es:[di], word ptr [si]
│           0000:082c      add   di, 0x1ffc
│           0000:0830      cmp   di, 0x8000
│       ┌─< 0000:0834      jb    0x83a
│       │   0000:0836      add   di, 0x80a0
│       └─> 0000:083a      movsw word es:[di], word ptr [si]
│           0000:083b      movsw word es:[di], word ptr [si]
└           0000:083c      ret
```

### Function 0x0000083d
```asm
; CALL XREF from fcn.00000719 @ 0x727
            ; CALL XREF from fcn.00000e71 @ +0x3c
┌ fcn.0000083d();
│           0000:083d      mov   cx, 0x10
│           0000:0840      rep   movsw word es:[di], word ptr [si]
└           0000:0842      ret
```

### Function 0x00000843
```asm
; CALL XREF from fcn.00000e71 @ +0x43
┌ fcn.00000843();
│           0000:0843      xor   ax, ax
│           0000:0845      mov   cx, 0x10
│           0000:0848      rep   stosw word es:[di], ax
└           0000:084a      ret
```

### Function 0x0000084b
```asm
; XREFS: CALL 0x0000045b  CALL 0x000004dc  CALL 0x0000053d  
            ; XREFS: CALL 0x0000056a  CALL 0x0000063a  CALL 0x00000667  
            ; XREFS: CALL 0x0000068c  CALL 0x00000ec6  
┌ fcn.0000084b();
│           0000:084b      and   al, 0x7f
│           0000:084d      mov   bx, 0xed20
│           0000:0850      xlatb
└           0000:0851      ret
```

### Function 0x00000852
```asm
; XREFS: CALL 0x00000461  CALL 0x000004a8  CALL 0x000004e2  
            ; XREFS: CALL 0x00000515  CALL 0x000005bc  CALL 0x00000611  
            ; XREFS: CALL 0x00000b91  CALL 0x00000ba7  CALL 0x00000bbc  
            ; XREFS: CALL 0x00000bca  
┌ fcn.00000852(int16_t arg1, int16_t arg3, int16_t arg_4h, int16_t arg_5h, int16_t arg_6h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg_4h @ stack + 0x4
│           ; arg int16_t arg_5h @ stack + 0x5
│           ; arg int16_t arg_6h @ stack + 0x6
│           0000:0852      and   al, 0x7f
│           0000:0854      mov   bl, al
│           0000:0856      xor   bh, bh
│           0000:0858      mov   cl, byte [bx - 0x12e0]                ; arg3
│           0000:085c      mov   ch, 0x10
│           0000:085e      mul   ch
│           0000:0860      add   ax, word [0xc010]                     ; arg1
│           0000:0864      mov   bp, ax                                ; arg1
│           0000:0866      mov   al, byte ds:[bp + 6]
│           0000:086a      and   al, 0xf                               ; str.F_An2 ; "F)An2\U0000001d9\tCzB\xf0:AD\xbbF\U00000005G\xfdGpBMK\x90K'M\xe8P.R\U0000000e\a\xbfbR3\xc0\xb9\x80"
│           0000:086c      mov   ch, 5
│           0000:086e      mul   ch
│           0000:0870      mov   si, 0xa070
│           0000:0873      test  byte ds:[bp + 5], 0x80
│       ┌─< 0000:0878      jne   0x87d
│       │   0000:087a      mov   si, 0xa030
│       └─> 0000:087d      mov   bl, byte ds:[bp + 4]
│           0000:0881      and   bl, 0x1f
│           0000:0884      add   bl, bl
│           0000:0886      xor   bh, bh
│           0000:0888      add   ax, word [bx + si]                    ; arg3
│           0000:088a      mov   si, ax                                ; arg1
│           0000:088c      lodsb al, byte [si]
│           0000:088d      test  byte [0xff34], 0xff
│       ┌─< 0000:0892      jne   0x89d
│       │   0000:0894      test  byte ds:[bp + 5], 0x20
│      ┌──< 0000:0899      je    0x89d
│      ││   0000:089b      add   al, 3
│      └└─> 0000:089d      mov   byte [0x523a], al                     ; [0x523a:1]=255
│           0000:08a0      mov   al, cl
└           0000:08a2      ret
```

### Function 0x000008a3
```asm
; CALL XREF from fcn.00000128 @ 0x5e6
┌ fcn.000008a3(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:08a3      cmp   byte [0x5239], 0x10                   ; [0x5239:1]=255
│       ┌─< 0000:08a8      jb    0x8ab
│       │   0000:08aa      ret
│       └─> 0000:08ab      push  cs
│           0000:08ac      pop   es
│           0000:08ad      call  word cs:[fcn.0000011a]                ; 0x11a
│           0000:08b2      and   al, 0xf                               ; str.F_An2 ; "F)An2\U0000001d9\tCzB\xf0:AD\xbbF\U00000005G\xfdGpBMK\x90K'M\xe8P.R\U0000000e\a\xbfbR3\xc0\xb9\x80"
│           0000:08b4      cmp   al, 0xe
│       ┌─< 0000:08b6      jae   0x8b9
│       │   0000:08b8      ret
│       └─> 0000:08b9      mov   di, 0xeda0
│           0000:08bc      xor   cl, cl
│           ; CODE XREF from fcn.000008a3 @ 0x8c8
│       ┌─> 0000:08be      cmp   byte [di], 0xff
│      ┌──< 0000:08c1      je    0x8ca
│      │╎   0000:08c3      add   di, 4
│      │╎   0000:08c6      inc   cl
│      │└─< 0000:08c8      jmp   0x8be
│      └──> 0000:08ca      cmp   cl, 0x20
│       ┌─< 0000:08cd      jb    0x8d0
│       │   0000:08cf      ret
│      ┌└─> 0000:08d0      call  word cs:[fcn.0000011a]                ; 0x11a
│      ╎    0000:08d5      and   al, 3
│      ╎    0000:08d7      cmp   al, 3
│      └──< 0000:08d9      je    0x8d0
│           0000:08db      dec   al
│           0000:08dd      add   al, byte [0x5238]                     ; [0x5238:1]=255
│           0000:08e1      cmp   al, 0xff
│       ┌─< 0000:08e3      jne   0x8e7
│       │   0000:08e5      mov   al, 4
│       └─> 0000:08e7      cmp   al, 0x1b
│       ┌─< 0000:08e9      jb    0x8ed
│       │   0000:08eb      mov   al, 0x1a
│       └─> 0000:08ed      stosb byte es:[di], al
│       ┌─> 0000:08ee      call  word cs:[fcn.0000011a]                ; 0x11a
│       ╎   0000:08f3      and   al, 3
│       ╎   0000:08f5      cmp   al, 3
│       └─< 0000:08f7      je    0x8ee
│           0000:08f9      dec   al
│           0000:08fb      add   al, byte [0x5239]                     ; [0x5239:1]=255
│           0000:08ff      cmp   al, 0xff
│           ; DATA XREF from fcn.000021b8 @ +0x5d
│       ┌─< 0000:0901      jne   0x905
│       │   0000:0903      xor   al, al
│       └─> 0000:0905      stosb byte es:[di], al
│           0000:0906      mov   al, 3
│           0000:0908      stosb byte es:[di], al
│           0000:0909      call  word cs:[fcn.0000011a]                ; 0x11a
│           0000:090e      and   al, 7
│           0000:0910      mov   bx, 0x3915
│           0000:0913      xlatb
│           0000:0914      stosb byte es:[di], al
│           0000:0915      mov   al, 0xff
│           0000:0917      stosb byte es:[di], al
└           0000:0918      ret
```

### Function 0x00000e2b
```asm
; CODE XREFS from fcn.000008a3 @ +0x41c, +0x429, +0x4a6, +0x57c, +0x586
┌ fcn.00000e2b(int16_t arg1, int16_t arg2, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg4 @ cx
│       ┌─> 0000:0e2b      push  cx                                    ; arg4
│       ╎   0000:0e2c      mov   al, byte es:[si]
│       ╎   0000:0e2f      or    al, al
│      ┌──< 0000:0e31      je    0xe68
│      │╎   0000:0e33      push  es
│      │╎   0000:0e34      push  ds
│      │╎   0000:0e35      push  si
│      │╎   0000:0e36      push  di
│      │╎   0000:0e37      mov   ch, 0x20
│      │╎   0000:0e39      mul   ch
│      │╎   0000:0e3b      mov   si, ax                                ; arg1
│      │╎   0000:0e3d      add   si, 0x6333
│      │╎   0000:0e41      shr   ax, 1                                 ; arg1
│      │╎   0000:0e43      shr   ax, 1                                 ; arg1
│      │╎   0000:0e45      mov   bp, ax                                ; arg1
│      │╎   0000:0e47      add   bp, 0xd000
│      │╎   0000:0e4b      mov   ds, word cs:[0xff2c]
│      │╎   0000:0e50      mov   di, dx                                ; arg2
│      │╎   0000:0e52      push  cs
│      │╎   0000:0e53      pop   es
│      │╎   0000:0e54      mov   al, byte cs:[0x5238]
│      │╎   0000:0e58      mov   cl, 0x20
│      │╎   0000:0e5a      mul   cl
│      │╎   0000:0e5c      add   ax, 0x5562                            ; int16_t arg1
│      │╎   0000:0e5f      mov   di, ax                                ; arg1
│      │╎   0000:0e61      call  fcn.0000072f                          ; fcn.0000072f
│      │╎   0000:0e64      pop   di
│      │╎   0000:0e65      pop   si
│      │╎   0000:0e66      pop   ds
│      │╎   0000:0e67      pop   es
│      └──> 0000:0e68      inc   si
│       ╎   0000:0e69      inc   byte [0x5238]
│       ╎   0000:0e6d      pop   cx
│       └─< 0000:0e6e      loop  fcn.00000e2b
└           0000:0e70      ret
```

### Function 0x00000e71
```asm
; CALL XREFS from fcn.000008a3 @ +0x390, +0x3c4, +0x4cb, +0x4f7, +0x532
┌ fcn.00000e71();
│           0000:0e71      mov   al, byte [0x93]                       ; [0x93:1]=67
│           0000:0e74      or    al, al
│       ┌─< 0000:0e76      jne   0xe79
│       │   0000:0e78      ret
│       └─> 0000:0e79      cmp   al, 4
│           0000:0e7b      mov   al, 1
│       ┌─< 0000:0e7d      jae   0xe80
│       │   0000:0e7f      ret
│       └─> 0000:0e80      mov   al, 2
└           0000:0e82      ret
```

### Function 0x00000f1b
```asm
; CALL XREF from fcn.000008a3 @ +0x267
┌ fcn.00000f1b(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:0f1b      mov   cl, byte [0x84]                       ; [0x84:1]=3
│           0000:0f1f      mov   al, 0x24                              ; '$'
│           0000:0f21      mul   cl
│           0000:0f23      mov   cl, byte [0x83]                       ; [0x83:1]=238
│           0000:0f27      add   cl, 4
│           0000:0f2a      xor   ch, ch
│           0000:0f2c      add   ax, cx                                ; arg4
│           0000:0f2e      add   ax, word [0xff31]                     ; arg1
│           0000:0f32      mov   si, ax                                ; arg1
│           0000:0f34      call  fcn.000016f1                          ; fcn.000016f1
│           0000:0f37      mov   di, 0x5259                            ; 'YR'
│           0000:0f3a      push  cs
│           0000:0f3b      pop   es
│           0000:0f3c      mov   cx, 3
│       ┌─> 0000:0f3f      movsw word es:[di], word ptr [si]
│       ╎   0000:0f40      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0f41      add   si, 0x21
│       ╎   0000:0f44      call  fcn.000016f1                          ; fcn.000016f1
│       └─< 0000:0f47      loop  0xf3f
└           0000:0f49      ret
```

### Function 0x00000f4a
```asm
; CALL XREF from fcn.00000118 @ 0xbb
┌ fcn.00000f4a(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0f4a      mov   al, byte [0x5237]                     ; [0x5237:1]=255
│           0000:0f4d      neg   al
│           0000:0f4f      add   al, 0x12
│           0000:0f51      mov   cl, al
│           0000:0f53      test  byte [0xff43], 0xff
│       ┌─< 0000:0f58      jne   0xf67
│       │   0000:0f5a      mov   al, byte [0x84]                       ; [0x84:1]=3
│       │   0000:0f5d      sub   al, 2
│       │   0000:0f5f      cmp   al, cl
│      ┌──< 0000:0f61      jne   0xf66
│      ││   0000:0f63      call  0x127e
│      └──> 0000:0f66      ret
│       └─> 0000:0f67      mov   al, byte [0x84]                       ; [0x84:1]=3
│           0000:0f6a      sub   al, 5
│           0000:0f6c      cmp   cl, al
│       ┌─< 0000:0f6e      jae   0xf71
│       │   0000:0f70      ret
│      ┌└─> 0000:0f71      jne   0xf79
│      │    0000:0f73      call  fcn.00001076                          ; fcn.00001076
│      │┌─< 0000:0f76      jmp   0x127e
│      └──> 0000:0f79      add   al, 0xa
│       │   0000:0f7b      cmp   al, cl
│      ┌──< 0000:0f7d      je    0xf80
│      ││   0000:0f7f      ret
│     ┌└──> 0000:0f80      jmp   0x112d
..
  │││││││   ; CODE XREF from fcn.00000f4a @ +0xaf
  │││ │││   ; CODE XREF from fcn.00000f4a @ +0x84
   │ ││││   ; CODE XREFS from fcn.00000f4a @ +0x60, +0x8d
     ││ │   ; CALL XREF from fcn.00000f4a @ 0xf73
     ││ │   ; CALL XREF from fcn.00000f4a @ 0x1142
     ││ │   ; CALL XREF from fcn.00001076 @ 0x1082
     ││ │   ; CALL XREF from fcn.00000f4a @ 0x113f
│    ││ │   ; CODE XREF from fcn.00000f4a @ 0xf80
│    ││ │   ; CODE XREF from fcn.00000f4a @ +0x11a
│    └└───> 0000:112d      test  byte [0xff43], 0xff                   ; arg1
│      ┌──< 0000:1132      jne   0x1135
│      ││   0000:1134      ret
│      └──> 0000:1135      mov   byte [0xff44], 0xff                   ; [0xff:1]=232
│       │   0000:113a      push  es
│       │   0000:113b      push  ds
│       │   0000:113c      push  di
│       │   0000:113d      push  si
│       │   0000:113e      push  bx                                    ; arg3
│       │   0000:113f      call  fcn.000010e3                          ; fcn.000010e3
│       │   0000:1142      call  fcn.0000108f                          ; fcn.0000108f
│       │   0000:1145      xor   bx, bx
│       │   0000:1147      mov   bl, byte cs:[0x92]
│       │   0000:114c      dec   bl
│       │   0000:114e      add   bx, bx
│       │   0000:1150      mov   ax, word cs:[bx + 0x4264]
│       │   0000:1155      mov   word cs:[0x523b], ax
│       │   0000:1159      mov   ds, word cs:[0xff2c]
│       │   0000:115e      mov   ax, 0xb800
│       │   0000:1161      mov   es, ax
│       │   0000:1163      mov   di, word cs:[0x523d]
│       │   0000:1168      mov   si, word cs:[0x523f]
│       │   0000:116d      mov   cx, 4
│      ┌──> 0000:1170      push  cx
│      ╎│   0000:1171      push  di
│      ╎│   0000:1172      mov   cx, 4
│     ┌───> 0000:1175      push  cx
│     ╎╎│   0000:1176      lodsb al, byte [si]
│     ╎╎│   0000:1177      cmp   al, 0xff
│    ┌────< 0000:1179      jne   0x1181
│    │╎╎│   0000:117b      add   di, 0x140
│   ┌─────< 0000:117f      jmp   0x11c3
│   │└────> 0000:1181      push  si
│   │ ╎╎│   0000:1182      xor   ah, ah
│   │ ╎╎│   0000:1184      add   ax, ax
│   │ ╎╎│   0000:1186      add   ax, ax
│   │ ╎╎│   0000:1188      add   ax, ax
│   │ ╎╎│   0000:118a      add   ax, ax
│   │ ╎╎│   0000:118c      mov   si, ax
│   │ ╎╎│   0000:118e      add   si, word [0xb000]
│   │ ╎╎│   0000:1192      mov   cx, 8
│   │┌────> 0000:1195      push  cx
│   │╎╎╎│   0000:1196      lodsw ax, word [si]                         ; int16_t arg1
│   │╎╎╎│   0000:1197      xchg  al, ah
│   │╎╎╎│   0000:1199      call  fcn.000011d3                          ; fcn.000011d3
│   │╎╎╎│   0000:119c      not   bp
│   │╎╎╎│   0000:119e      and   word es:[di], bp
│   │╎╎╎│   0000:11a1      or    word es:[di], dx
│   │╎╎╎│   0000:11a4      call  fcn.000011d3                          ; fcn.000011d3
│   │╎╎╎│   0000:11a7      not   bp
│   │╎╎╎│   0000:11a9      and   word es:[di + 2], bp
│   │╎╎╎│   0000:11ad      or    word es:[di + 2], dx
│   │╎╎╎│   0000:11b1      add   di, 0x2000
│   │╎╎╎│   0000:11b5      cmp   di, 0x8000
│  ┌──────< 0000:11b9      jb    0x11bf
│  ││╎╎╎│   0000:11bb      add   di, 0x80a0
│  └──────> 0000:11bf      pop   cx
│   │└────< 0000:11c0      loop  0x1195
│   │ ╎╎│   0000:11c2      pop   si
│   │ ╎╎│   ; CODE XREF from fcn.00000f4a @ 0x117f
│   └─────> 0000:11c3      pop   cx
│     └───< 0000:11c4      loop  0x1175
│      ╎│   0000:11c6      pop   di
│      ╎│   0000:11c7      add   di, 4
│      ╎│   0000:11ca      pop   cx
│      └──< 0000:11cb      loop  0x1170
│       │   0000:11cd      pop   bx
│       │   0000:11ce      pop   si
│       │   0000:11cf      pop   di
│       │   0000:11d0      pop   ds
│       │   0000:11d1      pop   es
│       │   0000:11d2      ret
        │   ; XREFS: CALL 0x00000990  CALL 0x0000099b  CALL 0x000009ab  
        │   ; XREFS: CALL 0x000009b8  CALL 0x00001199  CALL 0x000011a4  
        │   ; XREFS: CALL 0x00001744  CALL 0x0000174a  CALL 0x00001bb8  
        │   ; XREFS: CALL 0x00001bc3  CALL 0x00001bd3  CALL 0x00001be0  
        │   ; XREFS: CALL 0x00001d80  CALL 0x00001d88  
..
│      ││   ; CODE XREFS from fcn.00000f4a @ 0xf63, 0xf76
│      │└─> 0000:127e      test  byte [0xff37], 0xff                   ; arg1
│      │┌─< 0000:1283      je    0x1286
│      ││   0000:1285      ret
│      │└─> 0000:1286      mov   byte [0xff37], 0xff                   ; [0xff:1]=232
│      │    ; CODE XREF from fcn.000011d3 @ +0xa9
│      └──> 0000:128b      push  es
│           0000:128c      push  ds
│           0000:128d      push  si
│           0000:128e      push  di
│           0000:128f      push  bx
│           0000:1290      mov   ax, 0xb800
│           0000:1293      mov   es, ax
│           0000:1295      mov   si, 0x5562                            ; 'bU'
│           0000:1298      mov   di, word cs:[0x5233]
│           0000:129d      mov   cx, 3
│       ┌─> 0000:12a0      push  cx
│       ╎   0000:12a1      mov   cx, 3
│      ┌──> 0000:12a4      push  cx
│      ╎╎   0000:12a5      push  di
│      ╎╎   0000:12a6      call  fcn.000007ca                          ; fcn.000007ca
│      ╎╎   0000:12a9      pop   di
│      ╎╎   0000:12aa      add   di, 4
│      ╎╎   0000:12ad      pop   cx
│      └──< 0000:12ae      loop  0x12a4
│       ╎   0000:12b0      add   di, 0x134
│       ╎   0000:12b4      pop   cx
│       └─< 0000:12b5      loop  0x12a0
│           0000:12b7      pop   bx
│           0000:12b8      pop   di
│           0000:12b9      pop   si
│           0000:12ba      pop   ds
│           0000:12bb      pop   es
└           0000:12bc      ret
```

### Function 0x00001076
```asm
; CALL XREF from fcn.00000f4a @ 0xf73
┌ fcn.00001076(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:1076      test  byte [0xff44], 0xff
│       ┌─< 0000:107b      jne   0x107e
│       │   0000:107d      ret
│       └─> 0000:107e      push  es
│           0000:107f      push  di
│           0000:1080      push  si
│           0000:1081      push  bx                                    ; arg3
│           0000:1082      call  fcn.000010bb                          ; fcn.000010bb
│           0000:1085      pop   bx
│           0000:1086      pop   si
│           0000:1087      pop   di
│           0000:1088      pop   es
│           0000:1089      mov   byte [0xff44], 0
└           0000:108e      ret
```

### Function 0x0000108f
```asm
; CALL XREF from fcn.00000f4a @ 0x1142
┌ fcn.0000108f();
│           0000:108f      push  ds
│           0000:1090      push  cs
│           0000:1091      pop   es
│           0000:1092      mov   si, word cs:[0x523d]
│           0000:1097      mov   ax, 0xb800
│           0000:109a      mov   ds, ax
│           0000:109c      mov   di, 0x5362                            ; 'bS'
│           0000:109f      mov   cx, 0x20
│       ┌─> 0000:10a2      push  cx
│       ╎   0000:10a3      mov   cx, 8
│       ╎   0000:10a6      rep   movsw word es:[di], word ptr [si]
│       ╎   0000:10a8      add   si, 0x1ff0
│       ╎   0000:10ac      cmp   si, 0x8000
│      ┌──< 0000:10b0      jb    0x10b6
│      │╎   0000:10b2      add   si, 0x80a0
│      └──> 0000:10b6      pop   cx
│       └─< 0000:10b7      loop  0x10a2
│           0000:10b9      pop   ds
└           0000:10ba      ret
```

### Function 0x000010bb
```asm
; CALL XREF from fcn.00001076 @ 0x1082
┌ fcn.000010bb();
│           0000:10bb      mov   di, word cs:[0x523d]
│           0000:10c0      mov   ax, 0xb800
│           0000:10c3      mov   es, ax
│           0000:10c5      mov   si, 0x5362                            ; 'bS'
│           0000:10c8      mov   cx, 0x20
│       ┌─> 0000:10cb      push  cx
│       ╎   0000:10cc      mov   cx, 8
│       ╎   0000:10cf      rep   movsw word es:[di], word ptr [si]
│       ╎   0000:10d1      add   di, 0x1ff0
│       ╎   0000:10d5      cmp   di, 0x8000
│      ┌──< 0000:10d9      jb    0x10df
│      │╎   0000:10db      add   di, 0x80a0
│      └──> 0000:10df      pop   cx
│       └─< 0000:10e0      loop  0x10cb
└           0000:10e2      ret
```

### Function 0x000010e3
```asm
; CALL XREF from fcn.00000f4a @ 0x113f
┌ fcn.000010e3(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:10e3      mov   al, byte [0x84]                       ; [0x84:1]=3
│           0000:10e6      add   al, byte [0x5241]                     ; [0x5241:1]=255
│           0000:10ea      and   al, 0x3f
│           0000:10ec      mov   cl, 0x24                              ; '$'
│           0000:10ee      mul   cl
│           0000:10f0      mov   cl, byte [0x83]                       ; [0x83:1]=238
│           0000:10f4      add   cl, byte [0x5242]                     ; [0x5242:1]=255
│           0000:10f8      add   cl, 4
│           0000:10fb      xor   ch, ch
│           0000:10fd      add   ax, cx                                ; arg4
│           0000:10ff      mov   si, ax                                ; arg1
│           0000:1101      add   si, word [0xff31]
│           0000:1105      call  fcn.000016f1                          ; fcn.000016f1
│           0000:1108      mov   cx, 4
│       ┌─> 0000:110b      push  cx
│       ╎   0000:110c      mov   cx, 4
│      ┌──> 0000:110f      push  cx
│      ╎╎   0000:1110      mov   bl, byte [si]
│      ╎╎   0000:1112      inc   si
│      ╎╎   0000:1113      and   bl, 0x7f
│      ╎╎   0000:1116      xor   bh, bh
│      ╎╎   0000:1118      add   bx, bx
│      ╎╎   0000:111a      mov   word [bx + 0x5262], 0
│      ╎╎   0000:1120      pop   cx
│      └──< 0000:1121      loop  0x110f
│       ╎   0000:1123      add   si, 0x20
│       ╎   0000:1126      call  fcn.000016f1                          ; fcn.000016f1
│       ╎   0000:1129      pop   cx
│       └─< 0000:112a      loop  0x110b
└           0000:112c      ret
```

### Function 0x000011d3
```asm
; XREFS: CALL 0x00000990  CALL 0x0000099b  CALL 0x000009ab  
            ; XREFS: CALL 0x000009b8  CALL 0x00001199  CALL 0x000011a4  
            ; XREFS: CALL 0x00001744  CALL 0x0000174a  CALL 0x00001bb8  
            ; XREFS: CALL 0x00001bc3  CALL 0x00001bd3  CALL 0x00001be0  
            ; XREFS: CALL 0x00001d80  CALL 0x00001d88  
┌ fcn.000011d3(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:11d3      xor   bp, bp
│           0000:11d5      xor   dx, dx
│           0000:11d7      xor   bx, bx
│           0000:11d9      add   ax, ax                                ; arg1
│           0000:11db      adc   bl, bl
│           0000:11dd      add   ax, ax                                ; arg1
│           0000:11df      adc   bl, bl
│       ┌─< 0000:11e1      je    0x11fb
│       │   0000:11e3      or    bp, 0xf0
│       │   0000:11e7      mov   bh, byte cs:[0x523c]
│       │   0000:11ec      cmp   bl, 3
│      ┌──< 0000:11ef      je    0x11f6
│      ││   0000:11f1      mov   bh, byte cs:[0x523b]
│      └──> 0000:11f6      and   bh, 0xf0
│       │   0000:11f9      mov   dl, bh
│       └─> 0000:11fb      xor   bx, bx
│           0000:11fd      add   ax, ax                                ; arg1
│           0000:11ff      adc   bl, bl
│           0000:1201      add   ax, ax                                ; arg1
│           0000:1203      adc   bl, bl
│       ┌─< 0000:1205      je    0x121e
│       │   0000:1207      or    bp, 0xf                               ; str.F_An2 ; "F)An2\U0000001d9\tCzB\xf0:AD\xbbF\U00000005G\xfdGpBMK\x90K'M\xe8P.R\U0000000e\a\xbfbR3\xc0\xb9\x80"
│       │   0000:120a      mov   bh, byte cs:[0x523c]
│       │   0000:120f      cmp   bl, 3
│      ┌──< 0000:1212      je    0x1219
│      ││   0000:1214      mov   bh, byte cs:[0x523b]
│      └──> 0000:1219      and   bh, 0xf                               ; str.F_An2 ; "F)An2\U0000001d9\tCzB\xf0:AD\xbbF\U00000005G\xfdGpBMK\x90K'M\xe8P.R\U0000000e\a\xbfbR3\xc0\xb9\x80"
│       │   0000:121c      or    dl, bh
│       └─> 0000:121e      xor   bx, bx
│           0000:1220      add   ax, ax                                ; arg1
│           0000:1222      adc   bl, bl
│           0000:1224      add   ax, ax                                ; arg1
│           0000:1226      adc   bl, bl
│       ┌─< 0000:1228      je    0x1242
│       │   0000:122a      or    bp, 0xf000
│       │   0000:122e      mov   bh, byte cs:[0x523c]
│       │   0000:1233      cmp   bl, 3
│      ┌──< 0000:1236      je    0x123d
│      ││   0000:1238      mov   bh, byte cs:[0x523b]
│      └──> 0000:123d      and   bh, 0xf0
│       │   0000:1240      mov   dh, bh
│       └─> 0000:1242      xor   bx, bx
│           0000:1244      add   ax, ax                                ; arg1
│           0000:1246      adc   bl, bl
│           0000:1248      add   ax, ax                                ; arg1
│           0000:124a      adc   bl, bl
│       ┌─< 0000:124c      jne   0x124f
│       │   0000:124e      ret
│       └─> 0000:124f      or    bp, 0xf00
│           0000:1253      mov   bh, byte cs:[0x523c]
│           0000:1258      cmp   bl, 3
│       ┌─< 0000:125b      je    0x1262
│       │   0000:125d      mov   bh, byte cs:[0x523b]
│       └─> 0000:1262      and   bh, 0xf                               ; str.F_An2 ; "F)An2\U0000001d9\tCzB\xf0:AD\xbbF\U00000005G\xfdGpBMK\x90K'M\xe8P.R\U0000000e\a\xbfbR3\xc0\xb9\x80"
│           0000:1265      or    dh, bh
└           0000:1267      ret
```

### Function 0x00001362
```asm
; CALL XREF from fcn.000011d3 @ +0x169
┌ fcn.00001362(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:1362      cmp   byte [di], 0xff
│       ┌─< 0000:1365      jne   0x1368
│       │   0000:1367      ret
│       └─> 0000:1368      cmp   byte [di], 0xfc
│       ┌─< 0000:136b      jne   0x136e
│       │   0000:136d      ret
│       └─> 0000:136e      push  ds
│           0000:136f      push  di
│           0000:1370      push  si
│           0000:1371      push  bx                                    ; arg3
│           0000:1372      push  ax                                    ; arg1
│           0000:1373      mov   ah, byte [0x5243]                     ; [0x5243:1]=255
│           0000:1377      dec   ah
│           0000:1379      shr   ah, 1
│           0000:137b      shr   ah, 1
│           0000:137d      shr   ah, 1
│           0000:137f      sbb   ax, ax                                ; arg1
│           0000:1381      xor   ax, 0xf0f0                            ; arg1
│           0000:1384      mov   word cs:[0x5241], ax                  ; arg1
│           0000:1388      add   bx, bx                                ; arg3
│           0000:138a      add   bx, bx                                ; arg3
│           0000:138c      add   bx, word [0x5231]                     ; [0x5231:2]=0xffff ; arg3
│           0000:1390      mov   di, bx                                ; arg3
│           0000:1392      pop   ax
│           0000:1393      test  al, 0xff
│       ┌─< 0000:1395      je    0x13ed
│       │   0000:1397      dec   al
│       │   0000:1399      mov   cl, 0x20
│       │   0000:139b      mul   cl
│       │   0000:139d      add   ax, 0x8030                            ; int16_t arg1
│       │   0000:13a0      mov   si, ax
│       │   0000:13a2      mov   ds, word cs:[0xff2c]
│       │   0000:13a7      push  si
│       │   0000:13a8      push  di
│       │   0000:13a9      mov   al, byte cs:[0x5243]
│       │   0000:13ad      and   al, 3
│       │   0000:13af      neg   al
│       │   0000:13b1      add   al, 3
│       │   0000:13b3      call  fcn.00001422                          ; fcn.00001422
│       │   0000:13b6      call  fcn.000013d0                          ; fcn.000013d0
│       │   0000:13b9      pop   di
│       │   0000:13ba      pop   si
│       │   0000:13bb      mov   al, byte cs:[0x5243]
│       │   0000:13bf      call  fcn.00001422                          ; fcn.00001422
│       │   0000:13c2      add   di, 2
│       │   0000:13c5      add   si, 2
│       │   0000:13c8      call  fcn.000013d0                          ; fcn.000013d0
│       │   0000:13cb      pop   bx
│       │   0000:13cc      pop   si
│       │   0000:13cd      pop   di
│       │   0000:13ce      pop   ds
│       │   0000:13cf      ret
        │   ; CALL XREFS from fcn.00001362 @ 0x13b6, 0x13c8
..
│       └─> 0000:13ed      push  di                                    ; arg1
│           0000:13ee      mov   al, byte cs:[0x5243]
│           0000:13f2      and   al, 3
│           0000:13f4      neg   al
│           0000:13f6      add   al, 3
│           0000:13f8      call  fcn.00001422                          ; fcn.00001422
│           0000:13fb      call  fcn.00001411                          ; fcn.00001411
│           0000:13fe      pop   di
│           0000:13ff      mov   al, byte cs:[0x5243]
│           0000:1403      call  fcn.00001422                          ; fcn.00001422
│           0000:1406      add   di, 2
│           0000:1409      call  fcn.00001411                          ; fcn.00001411
│           0000:140c      pop   bx
│           0000:140d      pop   si
│           0000:140e      pop   di
│           0000:140f      pop   ds
└           0000:1410      ret
```

### Function 0x000013d0
```asm
; CALL XREFS from fcn.00001362 @ 0x13b6, 0x13c8
┌ fcn.000013d0(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:13d0      mov   cx, 2
│       ┌─> 0000:13d3      mov   bx, word cs:[0x5241]
│       ╎   0000:13d8      lodsw ax, word [si]
│       ╎   0000:13d9      and   ax, bx                                ; arg1
│       ╎   0000:13db      not   bx
│       ╎   0000:13dd      and   word es:[di], bx
│       ╎   0000:13e0      or    word es:[di], ax                      ; arg1
│       ╎   0000:13e3      add   di, 0xa0
│       ╎   0000:13e7      add   si, 0xe
│       └─< 0000:13ea      loop  0x13d3
└           0000:13ec      ret
```

### Function 0x00001411
```asm
; CALL XREFS from fcn.00001362 @ 0x13fb, 0x1409
┌ fcn.00001411();
│           0000:1411      mov   ax, word cs:[0x5241]
│           0000:1415      not   ax
│           0000:1417      and   word es:[di], ax
│           0000:141a      add   di, 0xa0
│           0000:141e      and   word es:[di], ax
└           0000:1421      ret
```

### Function 0x00001422
```asm
; CALL XREFS from fcn.00001362 @ 0x13b3, 0x13bf, 0x13f8, 0x1403
┌ fcn.00001422(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1422      and   al, 3
│           0000:1424      xor   ah, ah
│           0000:1426      push  ax                                    ; arg1
│           0000:1427      add   ax, ax                                ; arg1
│           0000:1429      add   ax, ax                                ; arg1
│           0000:142b      add   si, ax                                ; arg1
│           0000:142d      pop   ax
│           0000:142e      or    ax, ax
│       ┌─< 0000:1430      jne   0x1433
│       │   0000:1432      ret
│      ┌└─> 0000:1433      add   di, 0x2000
│      ╎    0000:1437      cmp   di, 0x8000
│      ╎┌─< 0000:143b      jb    0x1441
│      ╎│   0000:143d      add   di, 0x80a0
│      ╎└─> 0000:1441      dec   ax
│      └──< 0000:1442      jne   0x1433
└           0000:1444      ret
```

### Function 0x00001475
```asm
; CALL XREFS from fcn.00001422 @ +0x45, +0x4d
┌ fcn.00001475();
│           0000:1475      mov   al, byte [0x522f]                     ; [0x522f:1]=255
│           0000:1478      dec   al
│           0000:147a      mov   bl, al
│           0000:147c      add   al, 0x19
│           0000:147e      mov   dl, al
│           0000:1480      mov   al, byte [0x5230]                     ; [0x5230:1]=255
│           0000:1483      dec   al
│           0000:1485      mov   bh, al
│           0000:1487      add   al, 0x19
│           0000:1489      mov   dh, al
│           0000:148b      call  0x14bd
│           0000:148e      mov   al, byte [0x522f]                     ; [0x522f:1]=255
│           0000:1491      sub   al, 5
│           0000:1493      mov   bl, al
│           0000:1495      add   al, 0x21
│           0000:1497      mov   dl, al
│           0000:1499      mov   al, byte [0x5230]                     ; [0x5230:1]=255
│           0000:149c      sub   al, 5
│           0000:149e      mov   bh, al
│           0000:14a0      add   al, 0x21
│           0000:14a2      mov   dh, al
│           0000:14a4      call  0x14bd
│           0000:14a7      mov   al, byte [0x522f]                     ; [0x522f:1]=255
│           0000:14aa      sub   al, 9
│           0000:14ac      mov   bl, al
│           0000:14ae      add   al, 0x29
│           0000:14b0      mov   dl, al
│           0000:14b2      mov   al, byte [0x5230]                     ; [0x5230:1]=255
│           0000:14b5      sub   al, 9
│           0000:14b7      mov   bh, al
│           0000:14b9      add   al, 0x29
│           0000:14bb      mov   dh, al
│           ; CALL XREFS from fcn.00001475 @ 0x148b, 0x14a4
│           0000:14bd      mov   cx, 9
│       ┌─> 0000:14c0      push  cx
│       ╎   0000:14c1      push  dx
│       ╎   0000:14c2      push  bx
│       ╎   0000:14c3      call  fcn.000014ef                          ; fcn.000014ef
│       ╎   0000:14c6      pop   bx
│       ╎   0000:14c7      pop   dx
│       ╎   0000:14c8      sub   bl, 0xc
│      ┌──< 0000:14cb      jae   0x14cf
│      │╎   0000:14cd      xor   bl, bl
│      └──> 0000:14cf      sub   bh, 0xc
│      ┌──< 0000:14d2      jae   0x14d6
│      │╎   0000:14d4      xor   bh, bh
│      └──> 0000:14d6      add   dl, 0xc
│      ┌──< 0000:14d9      jae   0x14dd
│      │╎   0000:14db      mov   dl, 0xff
│      └──> 0000:14dd      add   dh, 0xc
│      ┌──< 0000:14e0      jae   0x14e4
│      │╎   0000:14e2      mov   dh, 0xff
│      └──> 0000:14e4      push  dx
│       ╎   0000:14e5      push  bx
│       ╎   0000:14e6      call  fcn.00001635                          ; fcn.00001635
│       ╎   0000:14e9      pop   bx
│       ╎   0000:14ea      pop   dx
│       ╎   0000:14eb      pop   cx
│       └─< 0000:14ec      loop  0x14c0
└           0000:14ee      ret
```

### Function 0x000014ef
```asm
; CALL XREF from fcn.00001475 @ 0x14c3
┌ fcn.000014ef(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:14ef      mov   ax, 0xb800                            ; int16_t arg2
│           0000:14f2      mov   es, ax
│           0000:14f4      push  dx                                    ; arg2
│           0000:14f5      push  bx                                    ; arg3
│           0000:14f6      mov   dh, bh
│           0000:14f8      call  fcn.00001570                          ; fcn.00001570
│           0000:14fb      pop   bx
│           0000:14fc      pop   dx
│           0000:14fd      push  dx
│           0000:14fe      push  bx
│           0000:14ff      mov   bh, dh
│           0000:1501      call  fcn.00001570                          ; fcn.00001570
│           0000:1504      pop   bx
│           0000:1505      pop   dx                                    ; int16_t arg3
│           0000:1506      push  dx
│           0000:1507      push  bx
│           0000:1508      mov   dl, bl
│           0000:150a      call  0x1511
│           0000:150d      pop   bx
│           0000:150e      pop   dx
│           0000:150f      mov   bl, dl
│           ; CALL XREF from fcn.000014ef @ 0x150a
│           0000:1511      cmp   dh, bh
│       ┌─< 0000:1513      jae   0x1517
│       │   0000:1515      xchg  bx, dx
│       └─> 0000:1517      or    bl, bl
│       ┌─< 0000:1519      jne   0x151c
│       │   0000:151b      ret
│       └─> 0000:151c      cmp   bl, 0xdf
│       ┌─< 0000:151f      jb    0x1522
│       │   0000:1521      ret
│       └─> 0000:1522      or    bh, bh
│       ┌─< 0000:1524      jne   0x1528
│       │   0000:1526      mov   bh, 1
│       └─> 0000:1528      cmp   dh, 0x8f
│       ┌─< 0000:152b      jb    0x152f
│       │   0000:152d      mov   dh, 0x8e
│       └─> 0000:152f      mov   al, dh
│           0000:1531      sub   al, bh
│           0000:1533      inc   al
│           0000:1535      push  ax
│           0000:1536      mov   al, bh
│           0000:1538      call  fcn.00001615                          ; fcn.00001615
│           0000:153b      mov   al, bl
│           0000:153d      shr   al, 1
│           0000:153f      xor   ah, ah
│           0000:1541      add   di, ax
│           0000:1543      pop   cx
│           0000:1544      xor   ch, ch
│           0000:1546      and   bl, 1
│       ┌─< 0000:1549      je    0x154f
│       │   0000:154b      mov   ah, 0xf                               ; str.F_An2 ; "F)An2\U0000001d9\tCzB\xf0:AD\xbbF\U00000005G\xfdGpBMK\x90K'M\xe8P.R\U0000000e\a\xbfbR3\xc0\xb9\x80"
│      ┌──< 0000:154d      jmp   0x1551
│      │└─> 0000:154f      mov   ah, 0xf0
│      │    ; CODE XREF from fcn.000014ef @ 0x154d
│      └──> 0000:1551      mov   al, ah
│           0000:1553      not   al
│           0000:1555      and   ah, byte [0x5243]                     ; [0x5243:1]=255
│       ┌─> 0000:1559      and   byte es:[di], al
│       ╎   0000:155c      or    byte es:[di], ah
│       ╎   0000:155f      add   di, 0x2000
│       ╎   0000:1563      cmp   di, 0x8000
│      ┌──< 0000:1567      jb    0x156d
│      │╎   0000:1569      add   di, 0x80a0
│      └└─< 0000:156d      loop  0x1559
└           0000:156f      ret
```

### Function 0x00001570
```asm
; CALL XREFS from fcn.000014ef @ 0x14f8, 0x1501
┌ fcn.00001570(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:1570      cmp   dl, bl
│       ┌─< 0000:1572      jae   0x1576
│       │   0000:1574      xchg  bx, dx                                ; arg2
│       └─> 0000:1576      or    bh, bh
│       ┌─< 0000:1578      jne   0x157b
│       │   0000:157a      ret
│       └─> 0000:157b      cmp   bh, 0x8f
│       ┌─< 0000:157e      jb    0x1581
│       │   0000:1580      ret
│       └─> 0000:1581      or    bl, bl
│       ┌─< 0000:1583      jne   0x1587
│       │   0000:1585      mov   bl, 1
│       └─> 0000:1587      cmp   dl, 0xdf
│       ┌─< 0000:158a      jb    0x158e
│       │   0000:158c      mov   dl, 0xde
│       └─> 0000:158e      mov   al, bh
│           0000:1590      call  fcn.00001615                          ; fcn.00001615
│           0000:1593      mov   al, bl
│           0000:1595      shr   al, 1
│           0000:1597      xor   ah, ah
│           0000:1599      add   di, ax
│           0000:159b      mov   ah, dl
│           0000:159d      shr   ah, 1
│           0000:159f      sub   ah, al
│           0000:15a1      mov   cl, ah
│           0000:15a3      xor   ch, ch
│           0000:15a5      and   bl, 1
│       ┌─< 0000:15a8      je    0x15ae
│       │   0000:15aa      mov   al, 0xf                               ; str.F_An2 ; "F)An2\U0000001d9\tCzB\xf0:AD\xbbF\U00000005G\xfdGpBMK\x90K'M\xe8P.R\U0000000e\a\xbfbR3\xc0\xb9\x80"
│      ┌──< 0000:15ac      jmp   0x15b0
│      │└─> 0000:15ae      mov   al, 0xff
│      │    ; CODE XREF from fcn.00001570 @ 0x15ac
│      └──> 0000:15b0      and   dl, 1
│       ┌─< 0000:15b3      je    0x15b9
│       │   0000:15b5      mov   ah, 0xff
│      ┌──< 0000:15b7      jmp   0x15bb
│      │└─> 0000:15b9      mov   ah, 0xf0
│      │    ; CODE XREF from fcn.00001570 @ 0x15b7
│      └┌─< 0000:15bb      jcxz  0x1604
│       │   0000:15bd      dec   cx
│      ┌──< 0000:15be      jcxz  0x15e6
│      ││   0000:15c0      mov   dh, al
│      ││   0000:15c2      not   dh
│      ││   0000:15c4      and   al, byte [0x5243]                     ; [0x5243:1]=255
│      ││   0000:15c8      and   byte es:[di], dh
│      ││   0000:15cb      or    byte es:[di], al
│      ││   0000:15ce      inc   di
│      ││   0000:15cf      mov   al, 0xff
│      ││   0000:15d1      and   al, byte [0x5243]                     ; [0x5243:1]=255
│      ││   0000:15d5      rep   stosb byte es:[di], al
│      ││   0000:15d7      mov   dh, ah
│      ││   0000:15d9      not   dh
│      ││   0000:15db      and   ah, byte [0x5243]                     ; [0x5243:1]=255
│      ││   0000:15df      and   byte es:[di], dh
│      ││   0000:15e2      or    byte es:[di], ah
│      ││   0000:15e5      ret
│      └──> 0000:15e6      mov   dh, al
│       │   0000:15e8      not   dh
│       │   0000:15ea      and   al, byte [0x5243]                     ; [0x5243:1]=255
│       │   0000:15ee      and   byte es:[di], dh
│       │   0000:15f1      or    byte es:[di], al
│       │   0000:15f4      inc   di
│       │   0000:15f5      mov   dh, ah
│       │   0000:15f7      not   dh
│       │   0000:15f9      and   ah, byte [0x5243]                     ; [0x5243:1]=255
│       │   0000:15fd      and   byte es:[di], dh
│       │   0000:1600      or    byte es:[di], ah
│       │   0000:1603      ret
│       └─> 0000:1604      and   al, ah
│           0000:1606      mov   dh, al
│           0000:1608      not   dh
│           0000:160a      and   al, byte [0x5243]                     ; [0x5243:1]=255
│           0000:160e      and   byte es:[di], dh
│           0000:1611      or    byte es:[di], al
└           0000:1614      ret
```

### Function 0x00001615
```asm
; CALL XREF from fcn.000014ef @ 0x1538
            ; CALL XREF from fcn.00001570 @ 0x1590
┌ fcn.00001615(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:1615      push  bx                                    ; arg3
│           0000:1616      add   al, 0xe
│           0000:1618      mov   bh, al
│           0000:161a      ror   bh, 1
│           0000:161c      ror   bh, 1
│           0000:161e      ror   bh, 1
│           0000:1620      and   bx, 0x6000                            ; arg3
│           0000:1624      mov   di, bx                                ; arg3
│           0000:1626      shr   al, 1
│           0000:1628      shr   al, 1
│           0000:162a      mov   bl, 0xa0
│           0000:162c      mul   bl
│           0000:162e      add   ax, 0x18                              ; arg1
│           0000:1631      add   di, ax                                ; arg1
│           0000:1633      pop   bx
└           0000:1634      ret
```

### Function 0x00001635
```asm
; CALL XREF from fcn.00001475 @ 0x14e6
┌ fcn.00001635(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1635      mov   cl, byte [0xff33]
│           0000:1639      shr   cl, 1
│           0000:163b      inc   cl
│           0000:163d      mov   al, 1
│           0000:163f      mul   cl
│       ┌─> 0000:1641      push  ax                                    ; arg1
│       ╎   0000:1642      call  word cs:[fcn.00000110]                ; 0x110 ; "t\U00000003\xe8\U00000013"
│       ╎   0000:1647      call  word cs:[fcn.00000112]                ; 0x112
│       ╎   0000:164c      call  word cs:[fcn.00000114]                ; 0x114
│       ╎   0000:1651      call  word cs:[fcn.00000116]                ; 0x116
│       ╎   0000:1656      call  word cs:[fcn.00000118]                ; 0x118
│       ╎   0000:165b      pop   ax
│       ╎   0000:165c      cmp   byte [0xff1a], al
│       └─< 0000:1660      jb    0x1641
│           0000:1662      mov   byte [0xff1a], 0
└           0000:1667      ret
```

### Function 0x00001668
```asm
; CODE XREFS from fcn.00001422 @ +0x3d, +0x50
┌ fcn.00001668();
│           0000:1668      mov   ax, 0xb800
│           0000:166b      mov   es, ax
│           0000:166d      mov   di, 0x41f8
│           0000:1670      mov   cx, 8
│       ┌─> 0000:1673      push  cx
│       ╎   0000:1674      push  di
│       ╎   0000:1675      mov   cx, 0x12
│      ┌──> 0000:1678      push  cx
│      ╎╎   0000:1679      push  di
│      ╎╎   0000:167a      mov   cx, 0x38                              ; '8'
│      ╎╎   0000:167d      mov   ax, 0x4444                            ; 'DD'
│     ┌───> 0000:1680      xor   word es:[di], ax
│     ╎╎╎   0000:1683      inc   di
│     ╎╎╎   0000:1684      inc   di
│     └───< 0000:1685      loop  0x1680
│      ╎╎   0000:1687      pop   di
│      ╎╎   0000:1688      add   di, 0x140
│      ╎╎   0000:168c      pop   cx
│      └──< 0000:168d      loop  0x1678
│       ╎   0000:168f      pop   di
│       ╎   0000:1690      add   di, 0x2000
│       ╎   0000:1694      cmp   di, 0x8000
│      ┌──< 0000:1698      jb    0x169e
│      │╎   0000:169a      add   di, 0x80a0
│      └──> 0000:169e      pop   cx
│       └─< 0000:169f      loop  0x1673
└           0000:16a1      ret
```

### Function 0x000016f1
```asm
; XREFS: CALL 0x00000118  CALL 0x00000452  CALL 0x0000049d  
            ; XREFS: CALL 0x000004d3  CALL 0x0000050e  CALL 0x0000059a  
            ; XREFS: CALL 0x00000609  CALL 0x00000f34  CALL 0x00000f44  
            ; XREFS: CALL 0x00001105  CALL 0x00001126  CALL 0x00001348  
┌ fcn.000016f1();
│           0000:16f1      cmp   si, 0xe900
│       ┌─< 0000:16f5      jae   0x16f8
│       │   0000:16f7      ret
│       └─> 0000:16f8      sub   si, 0x900
└           0000:16fc      ret
```

### Function 0x000016fd
```asm
; CALL XREF from fcn.00000000 @ 0x4d
┌ fcn.000016fd();
│           0000:16fd      cmp   si, 0xe000
│       ┌─< 0000:1701      jb    0x1704
│       │   0000:1703      ret
│       └─> 0000:1704      add   si, 0x900
└           0000:1708      ret
```

### Function 0x0000182d
```asm
; CALL XREF from fcn.000016fd @ +0x11a
┌ fcn.0000182d(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:182d      push  ds
│           0000:182e      mov   cl, 0x20
│           0000:1830      mul   cl
│           0000:1832      add   ax, 0x8000                            ; arg1
│           0000:1835      mov   si, ax                                ; arg1
│           0000:1837      mov   ds, word cs:[0xff2c]
│           0000:183c      mov   ax, 0xb800
│           0000:183f      mov   es, ax
│           0000:1841      mov   di, word cs:[0x5231]
│           0000:1846      mov   cx, 8
│       ┌─> 0000:1849      push  cx
│       ╎   0000:184a      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:184b      call  fcn.00001867                          ; fcn.00001867
│       ╎   0000:184e      stosw word es:[di], ax
│       ╎   0000:184f      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:1850      call  fcn.00001867                          ; fcn.00001867
│       ╎   0000:1853      stosw word es:[di], ax
│       ╎   0000:1854      add   di, 0x1ffc
│       ╎   0000:1858      cmp   di, 0x8000
│      ┌──< 0000:185c      jb    0x1862
│      │╎   0000:185e      add   di, 0x80a0
│      └──> 0000:1862      pop   cx
│       └─< 0000:1863      loop  0x1849
│           0000:1865      pop   ds
└           0000:1866      ret
```

### Function 0x00001867
```asm
; CALL XREFS from fcn.0000182d @ 0x184b, 0x1850
┌ fcn.00001867(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:1867      or    ax, ax                                ; arg1
│       ┌─< 0000:1869      jne   0x186c
│       │   0000:186b      ret
│       └─> 0000:186c      mov   cx, 4
│       ┌─> 0000:186f      push  cx
│       ╎   0000:1870      add   ax, ax                                ; arg1
│       ╎   0000:1872      adc   cl, cl
│       ╎   0000:1874      add   ax, ax                                ; arg1
│       ╎   0000:1876      adc   cl, cl
│       ╎   0000:1878      add   ax, ax                                ; arg1
│       ╎   0000:187a      adc   cl, cl
│       ╎   0000:187c      add   ax, ax                                ; arg1
│       ╎   0000:187e      adc   cl, cl
│       ╎   0000:1880      and   cl, 0xf                               ; str.F_An2 ; "F)An2\U0000001d9\tCzB\xf0:AD\xbbF\U00000005G\xfdGpBMK\x90K'M\xe8P.R\U0000000e\a\xbfbR3\xc0\xb9\x80"
│       ╎   0000:1883      mov   bl, byte cs:[0x5243]
│       ╎   0000:1888      xor   bh, bh
│       ╎   0000:188a      add   bx, bx                                ; arg3
│       ╎   0000:188c      call  word cs:[bx + 0x489d]
│       ╎   0000:1891      add   dx, dx                                ; arg2
│       ╎   0000:1893      add   dx, dx                                ; arg2
│       ╎   0000:1895      add   dx, dx                                ; arg2
│       ╎   0000:1897      add   dx, dx                                ; arg2
│       ╎   0000:1899      or    dl, cl
│       ╎   0000:189b      pop   cx
│       └─< 0000:189c      loop  0x186f
│           0000:189e      mov   ax, dx                                ; arg2
└           0000:18a0      ret
```

### Function 0x00001dac
```asm
; CALL XREFS from fcn.00001867 @ +0x51d, +0x524
┌ fcn.00001dac(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:1dac      push  dx                                    ; arg2
│           0000:1dad      mov   cl, byte cs:[0x5244]
│           0000:1db2      mov   ax, bp
│           0000:1db4      mov   bh, al
│           0000:1db6      xor   bl, bl
│           0000:1db8      xor   al, al
│           0000:1dba      shr   bx, cl                                ; arg3
│           0000:1dbc      shr   ax, cl
│           0000:1dbe      or    bl, ah
│           0000:1dc0      mov   ah, al
│           0000:1dc2      not   bx                                    ; arg3
│           0000:1dc4      not   ah
│           0000:1dc6      and   byte es:[di], bh
│           0000:1dc9      and   byte es:[di + 1], bl
│           0000:1dcd      and   byte es:[di + 2], ah
│           0000:1dd1      pop   ax
│           0000:1dd2      mov   bh, al
│           0000:1dd4      xor   bl, bl
│           0000:1dd6      xor   al, al
│           0000:1dd8      shr   bx, cl                                ; arg3
│           0000:1dda      shr   ax, cl
│           0000:1ddc      or    bl, ah
│           0000:1dde      mov   ah, al
│           0000:1de0      or    byte es:[di], bh
│           0000:1de3      inc   di
│           0000:1de4      or    byte es:[di], bl
│           0000:1de7      inc   di
│           0000:1de8      or    byte es:[di], ah
└           0000:1deb      ret
```

### Function 0x00001e95
```asm
; CALL XREF from fcn.00001dac @ +0xe6
┌ fcn.00001e95(short unsigned int arg1, short unsigned int arg3);
│           ; arg short unsigned int arg1 @ ax
│           ; arg short unsigned int arg3 @ bx
│           0000:1e95      or    bx, word [bx + si]                    ; arg3
│           0000:1e98      add   byte [bp + di], ah
│           0000:1e9a      add   byte [bx + si], 0                     ; arg3
│           0000:1e9d      add   al, byte [bx + si + 0x280]            ; arg3
│           0000:1ea1      add   word [bx + si], ax                    ; arg3
│           0000:1ea3      add   byte [bx + si], al                    ; arg3
│           0000:1ea5      add   word [bx + si], ax                    ; arg3
│           0000:1ea7      add   byte [bx + si], al                    ; arg3
│           0000:1ea9      add   word [bx + si], ax                    ; arg3
│           0000:1eab      add   byte [bx + si], al                    ; arg3
│           0000:1ead      add   byte [bx + si], al                    ; arg3
│           0000:1eaf      add   byte [bx + si], al                    ; arg3
│           0000:1eb1      add   byte [bx + si], al                    ; arg3
│           0000:1eb3      adc   byte [bx + si], dl                    ; arg3
│           0000:1eb5      add   byte [bx + si], al                    ; arg3
│           0000:1eb7      add   byte [si], al
│           0000:1eb9      add   byte [bx + si], al                    ; arg3
│           0000:1ebb      add   byte [bx + si], 0x80                  ; [0x80:1]=116 ; arg3
│           0000:1ebe      add   ax, word [bx + si]                    ; arg3
│           0000:1ec0      add   byte [bx + di + 0xc], dh              ; arg3
│           0000:1ec3      add   byte [bx + si], al                    ; arg3
│           0000:1ec5      cmp   ax, 0x38                              ; arg1
│           0000:1ec8      add   byte [bx], al                         ; arg3
│           0000:1eca      lock  add byte [bx + si], al                ; arg3
│           0000:1ecd      xchg  di, ax                                ; arg1
│           0000:1ece      in    ax, 0
│           0000:1ed0      add   byte [bx], cl                         ; arg3
│           0000:1ed2      lock  add byte [bx + si], al                ; arg3
│           0000:1ed5      pop   ds
│           0000:1ed6      cmp   byte [bx + si], al                    ; arg3
│           0000:1ed8      add   byte [bx + di], bh                    ; arg3
│           0000:1eda      push  cs
│           0000:1edb      add   byte [bx + si], al                    ; arg3
│       ┌─< 0000:1edd      loope 0x1ee0
│       │   0000:1edf  ~   add   byte [bx + di], 0                     ; arg3
│       └─> 0000:1ee0      add   word [bx + si], ax                    ; arg3
│           0000:1ee2      add   byte [bx + si + 4], al                ; arg3
│           0000:1ee5      add   byte [bx + si], al                    ; arg3
│           0000:1ee7      or    byte [bx + si], dl                    ; arg3
│           0000:1ee9      add   byte [bx + si], al                    ; arg3
│           0000:1eeb      add   byte [bx + si], al                    ; arg3
│           0000:1eed      add   byte [bx + si], al                    ; arg3
│           0000:1eef      add   byte [bx + si], al                    ; arg3
│           0000:1ef1      add   byte [bx + si], al                    ; arg3
│           0000:1ef3      add   byte [bx + si], al                    ; arg3
│           0000:1ef5      add   byte [bx + si], al                    ; arg3
│           0000:1ef7      add   byte [bx + si], al                    ; arg3
│           0000:1ef9      add   byte [bx + si], al                    ; arg3
│           0000:1efb      add   byte [bx + si], al                    ; arg3
│           0000:1efd      add   byte [bx + si], al                    ; arg3
│           0000:1eff      add   byte [bx + si], al                    ; arg3
│           0000:1f01      add   byte [bx + si], al                    ; arg3
│           0000:1f03      add   byte [bx + si], al                    ; arg3
│           0000:1f05      add   byte [bx + si], al                    ; arg3
│           0000:1f07      add   byte [bx + si], al                    ; arg3
│           0000:1f09      add   byte [bx + si], al                    ; arg3
│           0000:1f0b      add   byte [bp + si - 0x55b6], dl
│       ┌─< 0000:1f0f      jmp   0x1f11
│       │   ; CODE XREF from fcn.00001e95 @ 0x1f0f
│       └─> 0000:1f11      add   byte [bx + si], al                    ; arg3
│           0000:1f13      add   byte [bx + si], al                    ; arg3
│           0000:1f15      add   byte [bx + si], al                    ; arg3
│           0000:1f17      add   byte [bx + si], al                    ; arg3
│           0000:1f19      add   byte [bx + si], al                    ; arg3
│           0000:1f1b      add   byte [bx + si], al                    ; arg3
│           0000:1f1d      add   byte [bx + si], al                    ; arg3
│           0000:1f1f      add   byte [bx + si], al                    ; arg3
│           0000:1f21      add   byte [bx + si], al                    ; arg3
│           0000:1f23      add   byte [bx + si], al                    ; arg3
│           0000:1f25      add   byte [bx + si], al                    ; arg3
│           0000:1f27      add   byte [bx + si], al                    ; arg3
│           0000:1f29      add   byte [bx + si], al                    ; arg3
│           0000:1f2b      add   byte [bx + si], al                    ; arg3
│           0000:1f2d      add   byte [bx + si], al                    ; arg3
│           0000:1f2f      add   byte [bx + si], al                    ; arg3
│           0000:1f31      add   byte [bx + si], al                    ; arg3
│           0000:1f33      add   word [bx + si], ax                    ; arg3
│           0000:1f35      add   byte [bx + si], al                    ; arg3
│           0000:1f37      add   word [bx + si], ax                    ; arg3
│           0000:1f39      add   byte [bx + di], al                    ; arg3
│           0000:1f3b      add   word [bx + si], ax                    ; arg3
│           0000:1f3d      add   byte [bx + si], al                    ; arg3
│           0000:1f3f      add   byte [bx + si], 0                     ; arg3
│           0000:1f42      add   byte [bp + di], ch
│           0000:1f46      add   word [di + 4], bx                     ; arg3
│           0000:1f49      and   al, 0xae
└           0000:1f4b      out   dx, ax
```

## Cross-References (callers)
```json
  0x00000110:
[{"from":5698,"to":272,"type":"CALL"}]
  0x00000112:
[{"from":5703,"to":274,"type":"CALL"}]
  0x00000114:
[{"from":5708,"to":276,"type":"CALL"}]
  0x00000116:
[{"from":5713,"to":278,"type":"CALL"}]
  0x00000118:
[{"from":5718,"to":280,"type":"CALL"}]
  0x0000011a:
[{"from":437,"to":282,"type":"CALL"},{"from":2221,"to":282,"type":"CALL"},{"from":2256,"to":282,"type":"CALL"},{"from":2286,"to":282,"type":"CALL"},{"from":2313,"to":282,"type":"CALL"}]
  0x00000128:
[{"from":210,"to":296,"type":"CALL"},{"from":217,"to":296,"type":"CALL"},{"from":224,"to":296,"type":"CALL"},{"from":231,"to":296,"type":"CALL"},{"from":241,"to":296,"type":"CALL"},{"from":248,"to":296,"type":"CALL"},{"from":255,"to":296,"type":"CALL"},{"from":274,"to":296,"type":"CALL"}]
  0x00000272:
[{"from":345,"to":626,"type":"CALL"}]
  0x00000436:
[{"from":87,"to":1078,"type":"CALL"}]
  0x00000473:
[{"from":100,"to":1139,"type":"CALL"},{"from":110,"to":1139,"type":"CALL"},{"from":120,"to":1139,"type":"CALL"},{"from":130,"to":1139,"type":"CALL"},{"from":143,"to":1139,"type":"CALL"},{"from":153,"to":1139,"type":"CALL"},{"from":163,"to":1139,"type":"CALL"}]
  0x000004b9:
[{"from":172,"to":1209,"type":"CALL"}]
  0x000004f1:
[{"from":200,"to":1265,"type":"CALL"}]
  0x00000673:
[{"from":1203,"to":1651,"type":"CALL"},{"from":1479,"to":1651,"type":"CALL"},{"from":1493,"to":1651,"type":"CALL"}]
  0x000006a1:
[{"from":1133,"to":1697,"type":"CALL"},{"from":1262,"to":1697,"type":"CODE"},{"from":1344,"to":1697,"type":"CALL"},{"from":1389,"to":1697,"type":"CALL"},{"from":1597,"to":1697,"type":"CALL"},{"from":1642,"to":1697,"type":"CALL"},{"from":1683,"to":1697,"type":"CALL"}]
  0x00000719:
[{"from":1797,"to":1817,"type":"CALL"},{"from":3853,"to":1817,"type":"CALL"}]
  0x0000072f:
[{"from":1837,"to":1839,"type":"CODE"},{"from":3681,"to":1839,"type":"CALL"}]
  0x0000075d:
[{"from":1773,"to":1885,"type":"CALL"},{"from":3860,"to":1885,"type":"CALL"}]
  0x0000076d:
[{"from":1855,"to":1901,"type":"CALL"},{"from":1870,"to":1901,"type":"CALL"},{"from":1889,"to":1901,"type":"CALL"},{"from":1894,"to":1901,"type":"CALL"},{"from":7033,"to":1901,"type":"CALL"},{"from":7038,"to":1901,"type":"CALL"}]
  0x000007ca:
[{"from":1787,"to":1994,"type":"CALL"},{"from":1811,"to":1994,"type":"CALL"},{"from":4774,"to":1994,"type":"CALL"}]
```