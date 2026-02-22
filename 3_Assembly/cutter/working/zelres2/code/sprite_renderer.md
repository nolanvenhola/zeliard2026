# SPRITE_RENDERER - Analysis

**Source:** `chunk_02.bin`  
**Size:** 8.4 KB  
**Functions:** 48  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000   21 187          fcn.00000000
0x00000110    1 2            fcn.00000110
0x00000112    1 3            fcn.00000112
0x00000114    1 4            fcn.00000114
0x00000116    1 5            fcn.00000116
0x00000118   38 1243 -> 236  fcn.00000118
0x0000011a    1 11           fcn.0000011a
0x00000128   16 1002 -> 195  fcn.00000128
0x00000270    8 241          fcn.00000270
0x00000361    7 61           fcn.00000361
0x0000039e    1 68           fcn.0000039e
0x000003e2    7 56           fcn.000003e2
0x0000041a   12 129          fcn.0000041a
0x00000596    6 45           fcn.00000596
0x000005c3    6 108          fcn.000005c3
0x0000062f    1 18           fcn.0000062f
0x00000641    3 138          fcn.00000641
0x000006cb    3 101          fcn.000006cb
0x00000730    1 56           fcn.00000730
0x00000768    3 31           fcn.00000768
0x00000787    1 18           fcn.00000787
0x00000799    1 7            fcn.00000799
0x000007a0    6 81           fcn.000007a0
0x000007f1   19 118          fcn.000007f1
0x00000d6a    4 62           fcn.00000d6a
0x00000da8    5 18           fcn.00000da8
0x00000e4b    3 47           fcn.00000e4b
0x00000e7a   32 888  -> 425  fcn.00000e7a
0x00000fa4    3 27           fcn.00000fa4
0x00000fbf    3 50           fcn.00000fbf
0x00000ff1    3 50           fcn.00000ff1
0x00001023    5 74           fcn.00001023
0x000012ea    7 188  -> 152  fcn.000012ea
0x00001359    3 36           fcn.00001359
0x000013a6    1 15           fcn.000013a6
0x000013b5    1 23           fcn.000013b5
0x00001404   11 122          fcn.00001404
0x0000147e    1 65           fcn.0000147e
0x000014bf   20 99           fcn.000014bf
0x00001522   31 181          fcn.00001522
0x000015d7    1 10           fcn.000015d7
0x000015e1    3 51           fcn.000015e1
0x00001614    7 74           fcn.00001614
0x000016a9    3 12           fcn.000016a9
0x000016b5    3 12           fcn.000016b5
0x000017ea    3 118          fcn.000017ea
0x000018c8    3 33           fcn.000018c8
0x00001e07    5 183  -> 185  fcn.00001e07
```

## Strings
```
nth      paddr      vaddr len size section type    string                                                                  
---------------------------------------------------------------------------------------------------------------------------
  0 0x00000004 0x00000004   4    4         ascii   ,0G:
  1 0x0000000d 0x0000000d   9    9         ascii   AZFi@l2g8
  2 0x0000002b 0x0000002b   5    6         ascii   LfPfP
  3 0x000001b0 0x000001b0   4    4         ascii   u\fP.
  4 0x00000200 0x00000200   5    5         ascii   6<\rt;
  5 0x0000020c 0x0000020c   5    5         ascii   <<\ft/
  6 0x00000215 0x00000215   5    6         ascii   t),3s
  7 0x0000022f 0x0000022f   5    5         ascii   \f<\tt\f
  8 0x000003df 0x000003df   5    6         utf8    [^À>\e blocks=Basic Latin,Latin-1 Supplement
  9 0x0000041a 0x0000041a   4    4         ascii   VWSS
 10 0x0000045d 0x0000045d   4    4         ascii   SVR\n
 11 0x0000049b 0x0000049b   4    4         ascii   VWSS
 12 0x00000512 0x00000512   4    4         ascii   VWSS
 13 0x00000556 0x00000556   4    4         ascii   SVR\n
 14 0x000005b2 0x000005b2   4    4         ascii   UVWR
 15 0x000005b9 0x000005b9   9    9         ascii   Z_^]FGEBB
 16 0x00000668 0x00000668  16   16         ibm037  A»YJV\vEJÒJÒ\vEfDÓ
 17 0x000006b9 0x000006b9   4    4         utf8    JGGY
 18 0x0000073d 0x0000073d  39   40         ibm037  ÕuucG+uucG+uucG+uucG+uucG+uucG+uucG+uu½
 19 0x000007f0 0x000007f0   4    6         utf8    À>oP blocks=Latin-1 Supplement,Basic Latin
 20 0x00000922 0x00000922   4    5         ibm037  vvcÓ
 21 0x00000930 0x00000930   5    6         ascii   9q919
 22 0x00000b18 0x00000b18   5    5         ascii   nPGFY
 23 0x00000da2 0x00000da2   8    9         ibm037  >&ßSCCµl
 24 0x00000dbd 0x00000dbd   4    4         ascii   VWP.
 25 0x00000e6f 0x00000e6f   4    4         ibm037  vucF
 26 0x00000ebc 0x00000ebc   4    4         ascii   VWS.
 27 0x00000f7b 0x00000f7b   4    4         ascii   >rP2
 28 0x00000f8b 0x00000f8b   7    7         ascii   6tP[_^\a
 29 0x00000f9f 0x00000f9f   4    4         ascii   [_^\a
 30 0x00000fdf 0x00000fdf  14   15         ibm037  uuuuuuuucFçS3½
 31 0x00001011 0x00001011  14   15         ibm037  uuuuuuuucGçS3½
 32 0x00001028 0x00001028   4    4         ascii   vP$?
 33 0x000010a3 0x000010a3   4    4         ascii   >rP.
 34 0x000011df 0x000011df   4    4         ascii   _GGY
 35 0x000012f7 0x000012f7   4    4         ascii   WVSP
 36 0x00001333 0x00001333   4    4         ascii   BVW.
 37 0x00001437 0x00001437   4    4         ascii   gP,\t
 38 0x00001442 0x00001442   4    4         ascii   hP,\t
 39 0x0000149a 0x0000149a   4    4         ascii   [ZRS
 40 0x000014a3 0x000014a3   4    4         ascii   [ZRS
 41 0x00001717 0x00001717   4    5         ascii   _GG^
 42 0x00001749 0x00001749   5    6         ascii   -16;@
 43 0x0000175c 0x0000175c   9   10         ascii   \b\n#$&\b')*
 44 0x0000177a 0x0000177a   6    7         ascii   #$&\b%)
 45 0x00001781 0x00001781   4    5         ascii   .38=
 46 0x00001794 0x00001794  13   14         ascii   \b\v#$&\b')+/49>
 47 0x000017ae 0x000017ae   8    9         ascii    !\b\f#$&\b
 48 0x000017b7 0x000017b7   6    7         ascii   (,05:?
 49 0x00001860 0x00001860   4    5         ascii   fHwH
 50 0x000018e9 0x000018e9  12   13         ascii   \a\b\t\n\a\b\v\f\a\b\t\n
 51 0x00001911 0x00001911  26   27         ascii   >\b&*%!"!"#$!"!"\t\n\a\b\a\b\t\n\a\b
 52 0x0000192c 0x0000192c   7    8         ascii   TY]c2/.
 53 0x00001947 0x00001947  26   27         ascii   PUZ^df(0#$!"#$!"#$\a\b\n\f\a\b\t\n
 54 0x00001962 0x00001962   9   10         ascii   4QV[_eg/-
 55 0x0000197d 0x0000197d   4    5         ascii   IMRW
 56 0x00001982 0x00001982  27   28         ascii   `ihjk(&!"+&!"!"\a\b\t\n\t\n\eFJNSX
 57 0x000019a1 0x000019a1   4    5         ascii   il1-
 58 0x000019b3 0x000019b3   4    5         ascii   CGKO
 59 0x000019be 0x000019be  11   12         ascii   mno)&!"*%!"
 60 0x000019ce 0x000019ce   4    5         ascii   5DHL
 61 0x000019db 0x000019db   4    5         ascii   iqst
 62 0x000019e7 0x000019e7   5    6         ascii   8:?BE
 63 0x000019f8 0x000019f8   9   10         ascii   muwyo+&)&
 64 0x00001a02 0x00001a02   5    6         ascii   49;@A
 65 0x00001a15 0x00001a15  12   13         ascii   vxz{12/-367<
 66 0x00001a34 0x00001a34   5    6         ascii   mqprp
 67 0x00001fca 0x00001fca   5   24         utf32be 9áĀЀက
 68 0x00001fef 0x00001fef   4   16         utf32be \f8ðå
 69 0x00002006 0x00002006   5   24         utf32le <\a쀀 Ѐ blocks=Basic Latin,Hangul Syllables,General Punctuation,Cyrillic
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0000      xchg  di, ax                                ; arg1
│           ; DATA XREF from fcn.000007f1 @ +0x3f2
│           0000:0001      and   word [bx + si], ax                    ; arg1
│           ; DATA XREFS from fcn.000007f1 @ 0x825, 0x843
│           ; DATA XREFS from fcn.00000e7a @ 0x11d6, 0x11da
│           0000:0003  ~   add   byte [si], ch
│           ; XREFS: DATA 0x00000162  DATA 0x000001aa  DATA 0x00000255  
│           ; XREFS: DATA 0x00000db0  DATA 0x0000104b  DATA 0x0000104f  
│           ; XREFS: DATA 0x000010c0  DATA 0x000010c4  
│           ;-- str.0G::
..
│           ; DATA XREF from fcn.00000128 @ +0xfc
│           0000:0005     .string ",0G:" ; len=4                       ; arg3
│           ; DATA XREF from fcn.00000128 @ +0x102
│           ; DATA XREF from fcn.00000641 @ 0x652
│           ; DATA XREF from fcn.00001614 @ 0x1631
│           0000:0008      mov   al, byte [0xaf3f]                     ; [0xaf3f:1]=255
│           0000:000b      out   dx, al
│           ; DATA XREFS from fcn.00000128 @ +0xd9, +0xfa
│           ;-- str.AZFi_l2g8:
│           0000:000d     .string "AZFi@l2g8" ; len=9                  ; arg4
..
│           ; DATA XREFS from fcn.00001404 @ 0x140b, 0x1416
│           0000:0019      inc   cx                                    ; arg4
│           ; DATA XREF from fcn.000007f1 @ 0x839
│           ; DATA XREF from fcn.000007f1 @ +0xa1
│           0000:001a      xor   word [bp + si], di
│           ; DATA XREF from fcn.000007f1 @ +0x8d
│           ; DATA XREF from fcn.00001023 @ +0x295
│           ; DATA XREFS from fcn.000016b5 @ +0x2f, +0x119
│           0000:001c      rol   byte [bp + di + 0x75], 1
│           ; DATA XREF from fcn.000007a0 @ 0x7cf
│           0000:001f      inc   si
│           ; XREFS: DATA 0x000005d6  DATA 0x00000818  DATA 0x00000d76  
│           ; XREFS: DATA 0x00000e16  DATA 0x00000fdc  DATA 0x0000100e  
│           ; XREFS: DATA 0x00001063  DATA 0x00001af1  DATA 0x00001f04  
│           0000:0020      mov   bp, 0xba46
│           ; DATA XREF from fcn.000018c8 @ +0x527
│           0000:0023      inc   di
│           ; XREFS: DATA 0x000003c3  DATA 0x000003f9  DATA 0x00000434  
│           ; XREFS: DATA 0x000004be  DATA 0x0000052b  DATA 0x00000a5e  
│           ; XREFS: DATA 0x00000b75  DATA 0x00000b8b  DATA 0x00000b96  
│           ; XREFS: DATA 0x00000c6b  DATA 0x00000cdc  DATA 0x00000cf2  
│           ; XREFS: DATA 0x00000cfd  DATA 0x00000e4f  DATA 0x0000102c  
│           0000:0024      lahf
│           ; DATA XREFS from fcn.00000128 @ +0x12b, +0x142
│           ; DATA XREF from fcn.00000361 @ 0x37a
│           0000:0025      inc   cx                                    ; arg4
│           ; DATA XREFS from fcn.000016b5 @ +0xaa, +0xc6, +0xe2
│           0000:0026      fisttp qword [bp + si + 0x2d]
│           ; DATA XREFS from fcn.00001404 @ 0x143d, 0x1448
│           0000:0029      dec   bx                                    ; arg3
│           0000:002a      mov   ah, 0x4c                              ; 'L'
│           ; DATA XREFS from fcn.00000128 @ +0xad, +0xc3
│           0000:002c      push  eax
│           0000:002e      push  eax
│           ; XREFS: DATA 0x00000290  DATA 0x00000631  DATA 0x00000ddc  
│           ; XREFS: DATA 0x000011f4  DATA 0x0000131f  DATA 0x0000150a  
│           ; XREFS: DATA 0x000017eb  
│           0000:0030      push  cs
│           0000:0031      pop   es
│           ; DATA XREF from fcn.000016b5 @ +0xb0
│           0000:0032      mov   di, 0x5097
│           0000:0035      xor   ax, ax
│           0000:0037      mov   cx, 0x80
│           0000:003a      rep   stosw word es:[di], ax
│           ; DATA XREF from fcn.00000128 @ +0xe3
│           0000:003c      inc   byte [0x5078]
│           ; DATA XREF from fcn.000018c8 @ +0x3f7
│           0000:0040      mov   word [0x5069], 0x46c                  ; [0x5069:2]=0xffff
│           0000:0046      mov   si, word [0xff31]
│           0000:004a      sub   si, 0x21
│           ; DATA XREF from fcn.000018c8 @ +0x2b4
│           0000:004d      call  fcn.000016b5                          ; fcn.000016b5
│           ; XREFS: DATA 0x00000908  DATA 0x000010e6  DATA 0x000011a3  
│           ; XREFS: DATA 0x0000127a  DATA 0x0000151c  DATA 0x000015d7  
│           ; XREFS: DATA 0x0000164c  DATA 0x00001ae3  DATA 0x00001ce8  
│           0000:0050      xor   bx, bx
│           0000:0052      test  byte [si], 0x80
│       ┌─< 0000:0055      je    0x5a
│       │   0000:0057      call  fcn.00000361                          ; fcn.00000361
│       │   ; DATA XREF from fcn.000007f1 @ +0x445
│       └─> 0000:005a      inc   si
│           0000:005b      mov   cx, 6
│       ┌─> 0000:005e      push  cx
│       ╎   0000:005f      test  byte [si], 0x80
│      ┌──< 0000:0062      je    0x67
│      │╎   0000:0064      call  fcn.0000039e                          ; fcn.0000039e
│      └──> 0000:0067      inc   si
│       ╎   0000:0068      inc   bx
│       ╎   0000:0069      test  byte [si], 0x80
│       ╎   ; DATA XREFS from fcn.000007f1 @ +0x3c7, +0x533
│      ┌──< 0000:006c      je    0x71
│      │╎   0000:006e      call  fcn.0000039e                          ; fcn.0000039e
│      └──> 0000:0071      inc   si
│       ╎   0000:0072      inc   bx
│       ╎   0000:0073      test  byte [si], 0x80
│      ┌──< 0000:0076      je    0x7b
│      │╎   0000:0078      call  fcn.0000039e                          ; fcn.0000039e
│      └──> 0000:007b      inc   si
│       ╎   0000:007c      inc   bx
│       ╎   0000:007d      test  byte [si], 0x80
│       ╎   ; DATA XREF from fcn.00000000 @ 0x37
│       ╎   ; DATA XREF from fcn.000005c3 @ 0x5cf
│       ╎   ; DATA XREFS from fcn.000007f1 @ +0x3ea, +0x550
│       ╎   ; DATA XREF from fcn.00001e07 @ 0x1e2d
│      ┌──< 0000:0080      je    0x85
│      │╎   0000:0082      call  fcn.0000039e                          ; fcn.0000039e
│      └──> 0000:0085      inc   si
│       ╎   0000:0086      inc   bx
│       ╎   0000:0087      pop   cx
│       └─< 0000:0088      loop  0x5e
│           0000:008a      test  byte [si], 0x80
│       ┌─< 0000:008d      je    0x92
│       │   ; DATA XREF from fcn.000014bf @ 0x14d6
│       │   ; DATA XREF from fcn.00001522 @ 0x152d
│       │   0000:008f      call  fcn.0000039e                          ; fcn.0000039e
│       │   ; DATA XREF from fcn.000018c8 @ +0x26a
│       └─> 0000:0092      inc   si
│           ; DATA XREF from fcn.00000da8 @ 0xda8
│           0000:0093      inc   bx
│           0000:0094      test  byte [si], 0x80
│       ┌─< 0000:0097      je    0x9c
│       │   0000:0099      call  fcn.0000039e                          ; fcn.0000039e
│       └─> 0000:009c      inc   si
│           ; DATA XREF from fcn.00001614 @ +0x65
│           0000:009d      inc   bx
│           0000:009e      test  byte [si], 0x80
│       ┌─< 0000:00a1      je    0xa6
│       │   0000:00a3      call  fcn.0000039e                          ; fcn.0000039e
│       └─> 0000:00a6      inc   si
│           0000:00a7      test  byte [si], 0x80
│       ┌─< 0000:00aa      je    0xaf
│       │   0000:00ac      call  fcn.000003e2                          ; fcn.000003e2
│       └─> 0000:00af      mov   si, word [0xff31]
│           0000:00b3      mov   di, 0xe900
└           0000:00b6      mov   byte [0x506d], 0x12                   ; [0x506d:1]=255
```

### Function 0x00000110
```asm
; CALL XREF from fcn.000015e1 @ 0x15ee
┌ fcn.00000110(int16_t arg1);
│           ; arg int16_t arg1 @ ax
└       ┌─< 0000:0110      je    0x115                                 ; fcn.00000118-0x3
```

### Function 0x00000112
```asm
; CALL XREF from fcn.000015e1 @ 0x15f3
│           ; CALL XREF from fcn.000015e1 @ 0x15f8
│           ;-- (0x00000114) fcn.00000114:
┌ fcn.00000112(int16_t arg1);
│           ; arg int16_t arg1 @ ax
└           0000:0112  ~   call  fcn.00000128                          ; fcn.00000128
```

### Function 0x00000114
```asm
│           ; CALL XREF from fcn.000015e1 @ 0x15f8
┌ fcn.00000114();
│           0000:0114  ~   add   byte [bp + di + 0x4c6], al
│           ; CODE XREF from fcn.00000118 @ 0x593
│           ; CALL XREF from fcn.000015e1 @ 0x15fd
│           ;-- (0x00000116) fcn.00000116:
..
```

### Function 0x00000116
```asm
│           ; CALL XREF from fcn.000015e1 @ 0x15fd
┌ fcn.00000116(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0116  ~   mov   byte [si], 0xe8                       ; [0xe8:1]=62
            ; CALL XREF from fcn.000015e1 @ 0x1602
│           ; CALL XREF from fcn.00000128 @ +0x8b
│           ; CALL XREFS from fcn.000007f1 @ 0x7fb, 0x81e, 0x83c, 0x857
│           ;-- (0x0000011a) fcn.0000011a:
..
│           ; CALL XREF from fcn.00000128 @ +0x8b
│           ; CALL XREFS from fcn.000007f1 @ 0x7fb, 0x81e, 0x83c, 0x857
│           ;-- (0x0000011a) fcn.0000011a:
│           0000:0119  ~   mov   ss, word [di]
```

### Function 0x00000118
```asm
╎╎   ; CALL XREF from fcn.000015e1 @ 0x1602
│      ╎╎   ; CALL XREF from fcn.00000128 @ +0x8b
│      ╎╎   ; CALL XREFS from fcn.000007f1 @ 0x7fb, 0x81e, 0x83c, 0x857
│      ╎╎   ;-- (0x0000011a) fcn.0000011a:
┌ fcn.00000118();
│      ╎╎   0000:0118  ~   call  fcn.000016a9                          ; fcn.000016a9
│      ╎╎   0000:011b      add   word [0x5069], 0x280                  ; [0x5069:2]=0xffff
│      ╎╎   0000:0121      dec   byte [0x506d]
│      ╎└─< 0000:0125      jne   0xbb
│      ╎    0000:0127      ret
       ╎    ; XREFS: CALL 0x000000d2  CALL 0x000000d9  CALL 0x000000e0  
       ╎    ; XREFS: CALL 0x000000e7  CALL 0x000000f1  CALL 0x000000f8  
       ╎    ; XREFS: CALL 0x000000ff  CALL 0x00000112  
..
│    ││╎│   ; DATA XREF from fcn.00001359 @ 0x1373
│    ││╎│   ; DATA XREF from fcn.000013a6 @ 0x13ab
│    ││╎│   ; CODE XREF from fcn.00000128 @ 0x13e
     ││╎│   ; XREFS: DATA 0x0000064b  DATA 0x000006d5  DATA 0x000008d8  
     ││╎│   ; XREFS: DATA 0x000010b5  DATA 0x0000120c  DATA 0x0000148e  
     ││╎│   ; XREFS: DATA 0x00001627  DATA 0x000016d8  DATA 0x00001b52  
     ││╎│   ; XREFS: DATA 0x00001cff  
      │╎    ; CALL XREF from fcn.00000128 @ 0x157
│    ││╎│   ; DATA XREF from fcn.00000e7a @ +0x6e
│    ││╎    ; XREFS: DATA 0x0000011b  DATA 0x0000046d  DATA 0x00000566  
│    ││╎    ; XREFS: DATA 0x00000a8c  DATA 0x00000efb  DATA 0x00000f5b  
│    ││╎    ; XREFS: DATA 0x00000f76  DATA 0x000010c7  DATA 0x000012cc  
│    ││╎    ; XREFS: DATA 0x00001644  DATA 0x00001664  DATA 0x00001e0f  
│    ││╎    ; CODE XREF from fcn.00000270 @ 0x27b
      │╎    ; CALL XREF from fcn.00000000 @ 0x57
      │╎    ; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
      │╎    ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
      │╎    ; XREFS: CALL 0x000000a3  
      │╎    ; CALL XREF from fcn.00000000 @ 0xac
      │╎│   ; CALL XREF from fcn.00000118 @ 0xc8
│   │││╎│   ; XREFS: DATA 0x00000040  DATA 0x00000395  DATA 0x000003bd  
│   │││╎│   ; XREFS: DATA 0x000008ad  DATA 0x00000a9b  DATA 0x0000129d  
│   │││╎│   ; XREFS: DATA 0x000015db  DATA 0x0000162b  DATA 0x00001674  
│   │││╎│   ; XREFS: DATA 0x000017c4  
│     │╎│   ; CODE XREF from fcn.00000128 @ 0x12f
│      ╎│   ; DATA XREF from fcn.000003e2 @ 0x414
│      ╎│   ; CODE XREF from fcn.00000118 @ 0x109
│      ╎│   0000:0512      push  si                                    ; int16_t arg3
│      ╎│   0000:0513      push  di
│      ╎│   0000:0514      push  bx
│      ╎│   0000:0515      push  bx
│      ╎│   0000:0516      mov   bx, 0x508a
│      ╎│   0000:0519      mov   al, 0xfe
│      ╎│   0000:051b      xchg  byte [di - 1], al
│      ╎│   0000:051e      mov   byte [bx], al
│      ╎│   0000:0520      mov   al, 0xff
│      ╎│   0000:0522      xchg  byte [di + 0x1b], al
│      ╎│   0000:0525      mov   byte [bx + 1], al
│      ╎│   0000:0528      mov   cl, byte [si - 1]
│      ╎│   0000:052b      add   si, 0x24
│      ╎│   0000:052e      call  fcn.000016a9                          ; fcn.000016a9
│      ╎│   0000:0531      mov   dl, byte [si - 1]
│      ╎│   0000:0534      mov   al, cl
│      ╎│   0000:0536      call  fcn.000007a0                          ; fcn.000007a0
│      ╎│   0000:0539      mov   bl, al
│      ╎│   0000:053b      mov   bh, dl
│      ╎│   0000:053d      pop   dx
│      ╎│   0000:053e      add   dx, dx
│      ╎│   0000:0540      add   dx, word [0x5069]                     ; [0x5069:2]=0xffff
│      ╎│   0000:0544      cmp   byte [0x508a], 0xff                   ; [0x508a:1]=255
│     ┌───< 0000:0549      je    0x566
│     │╎│   0000:054b      cmp   byte [0x508a], 0xfc                   ; [0x508a:1]=255
│    ┌────< 0000:0550      je    0x566
│    ││╎│   0000:0552      mov   ah, byte [si]
│    ││╎│   0000:0554      mov   al, bl
│    ││╎│   0000:0556      push  bx
│    ││╎│   0000:0557      push  si
│    ││╎│   0000:0558      push  dx
│    ││╎│   0000:0559      or    al, al
│   ┌─────< 0000:055b      jns   0x560
│   │││╎│   0000:055d      call  fcn.00000799                          ; fcn.00000799
│   └─────> 0000:0560      call  fcn.000005c3                          ; fcn.000005c3
│    ││╎│   0000:0563      pop   dx
│    ││╎│   0000:0564      pop   si
│    ││╎│   0000:0565      pop   bx
│    └└───> 0000:0566      add   dx, 0x280
│      ╎│   0000:056a      cmp   byte [0x506d], 1                      ; [0x506d:1]=255
│     ┌───< 0000:056f      je    0x590
│     │╎│   0000:0571      cmp   byte [0x508b], 0xff                   ; [0x508b:1]=255
│    ┌────< 0000:0576      je    0x590
│    ││╎│   0000:0578      cmp   byte [0x508b], 0xfc                   ; [0x508b:1]=255
│   ┌─────< 0000:057d      je    0x590
│   │││╎│   0000:057f      inc   si
│   │││╎│   0000:0580      inc   si
│   │││╎│   0000:0581      lodsb al, byte [si]
│   │││╎│   0000:0582      mov   ah, al
│   │││╎│   0000:0584      mov   al, bh
│   │││╎│   0000:0586      or    al, al
│  ┌──────< 0000:0588      jns   0x58d
│  ││││╎│   0000:058a      call  fcn.00000799                          ; fcn.00000799
│  └──────> 0000:058d      call  fcn.000005c3                          ; fcn.000005c3
│   └└└───> 0000:0590      pop   bx
│      ╎│   0000:0591      pop   di
│      ╎│   0000:0592      pop   si
│      └──< 0000:0593      jmp   0x115
```

### Function 0x0000011a
```asm
│           ; CALL XREF from fcn.00000128 @ +0x8b
│           ; CALL XREFS from fcn.000007f1 @ 0x7fb, 0x81e, 0x83c, 0x857
┌ fcn.0000011a(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:011a      adc   ax, 0x681                             ; arg1
│           0000:011d      imul  dx, word [bx + si - 0x80], 0xfe02
│           0000:0122      push  cs
│           0000:0123      insw  word es:[di], dx
│           0000:0124      push  ax                                    ; arg1
```

### Function 0x00000128
```asm
; XREFS: CALL 0x000000d2  CALL 0x000000d9  CALL 0x000000e0  
            ; XREFS: CALL 0x000000e7  CALL 0x000000f1  CALL 0x000000f8  
            ; XREFS: CALL 0x000000ff  CALL 0x00000112  
┌ fcn.00000128(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0128      mov   al, byte [si - 1]
│           0000:012b      or    al, al
│       ┌─< 0000:012d      jns   0x132
│      ┌──< 0000:012f      jmp   0x49b
│      │└─> 0000:0132      cmp   byte es:[di - 1], 0xfc
│      │┌─< 0000:0137      jne   0x140
│      ││   0000:0139      mov   byte es:[di - 1], 0xff                ; [0xff:1]=232
│     ┌───< 0000:013e      jmp   0x15a
│     │││   ; DATA XREF from fcn.00001359 @ 0x1373
│     │││   ; DATA XREF from fcn.000013a6 @ 0x13ab
│     ││└─> 0000:0140      inc   byte es:[di - 1]
│     ││    0000:0144      mov   byte es:[di - 1], 0xfe                ; [0xfe:1]=3
│     ││┌─< 0000:0149      je    0x15a
│     │││   0000:014b      mov   byte es:[di - 1], al
│     │││   0000:014f      mov   dx, bx
│     │││   0000:0151      add   dx, dx
│     │││   0000:0153      add   dx, word [0x5069]                     ; [0x5069:2]=0xffff ; int16_t arg2
│     │││   0000:0157      call  fcn.00000270                          ; fcn.00000270
│     │││   ; CODE XREF from fcn.00000128 @ 0x13e
│     └─└─> 0000:015a      mov   al, byte [0xc012]                     ; [0xc012:1]=255
│      │    0000:015d      sub   al, 5
│      │┌─< 0000:015f      jae   0x162
│      ││   0000:0161      ret
│      │└─> 0000:0162      cmp   al, 4                                 ; str.0G: ; ",0G:\xa0?\xaf>\xeeAZFi@l2g8\x8aB\xaeA1:\xd0CuF\xbdF\xbaG\x9fA\xddJ-K\xb4LfPfP\U0000000e\a\xbf\x97P3\xc0\xb9\x80"
│      │┌─< 0000:0164      jb    0x167
│      ││   0000:0166      ret
│      │└─> 0000:0167      push  bx                                    ; arg3
│      │    0000:0168      mov   bl, al
│      │    0000:016a      xor   bh, bh
│      │    0000:016c      add   bx, bx                                ; arg3
│      │    0000:016e      call  word [bx + 0x3170]
│      │    0000:0172      pop   bx
│      │    0000:0173      ret
..
      │││   ; XREFS: DATA 0x0000064b  DATA 0x000006d5  DATA 0x000008d8  
      │││   ; XREFS: DATA 0x000010b5  DATA 0x0000120c  DATA 0x0000148e  
      │││   ; XREFS: DATA 0x00001627  DATA 0x000016d8  DATA 0x00001b52  
      │││   ; XREFS: DATA 0x00001cff  
       │    ; CALL XREF from fcn.00000128 @ 0x157
│     │││   ; DATA XREF from fcn.00000e7a @ +0x6e
│     ││    ; XREFS: DATA 0x0000011b  DATA 0x0000046d  DATA 0x00000566  
│     ││    ; XREFS: DATA 0x00000a8c  DATA 0x00000efb  DATA 0x00000f5b  
│     ││    ; XREFS: DATA 0x00000f76  DATA 0x000010c7  DATA 0x000012cc  
│     ││    ; XREFS: DATA 0x00001644  DATA 0x00001664  DATA 0x00001e0f  
│     ││    ; CODE XREF from fcn.00000270 @ 0x27b
       │    ; CALL XREF from fcn.00000000 @ 0x57
       │    ; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
       │    ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
       │    ; XREFS: CALL 0x000000a3  
       │    ; CALL XREF from fcn.00000000 @ 0xac
       ││   ; CALL XREF from fcn.00000118 @ 0xc8
│    ││││   ; XREFS: DATA 0x00000040  DATA 0x00000395  DATA 0x000003bd  
│    ││││   ; XREFS: DATA 0x000008ad  DATA 0x00000a9b  DATA 0x0000129d  
│    ││││   ; XREFS: DATA 0x000015db  DATA 0x0000162b  DATA 0x00001674  
│    ││││   ; XREFS: DATA 0x000017c4  
│      ││   ; CODE XREF from fcn.00000128 @ 0x12f
│      └──> 0000:049b      push  si                                    ; arg3
│       │   0000:049c      push  di
│       │   0000:049d      push  bx
│       │   0000:049e      push  bx                                    ; arg3
│       │   0000:049f      mov   bx, 0x508a
│       │   ; DATA XREF from fcn.000003e2 @ 0x414
│       │   0000:04a2      mov   ax, 0xfffe
│       │   0000:04a5      xchg  word [di - 1], ax
│       │   0000:04a8      mov   word [bx], ax
│       │   0000:04aa      mov   ax, 0xffff
│       │   0000:04ad      xchg  word [di + 0x1b], ax
│       │   0000:04b0      mov   word [bx + 2], ax
│       │   0000:04b3      mov   cl, byte [si - 1]
│       │   0000:04b6      mov   bx, 0x508e
│       │   0000:04b9      mov   al, byte [si]
│       │   0000:04bb      mov   byte [bx + 1], al
│       │   0000:04be      add   si, 0x24
│       │   0000:04c1      call  fcn.000016a9                          ; fcn.000016a9
│       │   0000:04c4      mov   ax, word [si - 1]                     ; int16_t arg1
│       │   0000:04c7      mov   word [bx + 2], ax
│       │   0000:04ca      pop   dx
│       │   0000:04cb      mov   byte [0x506e], dl                     ; [0x506e:1]=255
│       │   0000:04cf      mov   al, byte [0x506d]                     ; [0x506d:1]=255
│       │   0000:04d2      neg   al
│       │   0000:04d4      add   al, 0x12
│       │   0000:04d6      mov   byte [0x506f], al                     ; [0x506f:1]=255
│       │   0000:04d9      add   dx, dx
│       │   0000:04db      add   dx, word [0x5069]                     ; [0x5069:2]=0xffff ; int16_t arg3
│       │   0000:04df      mov   al, cl
│       │   0000:04e1      call  fcn.000007a0                          ; fcn.000007a0
│       │   0000:04e4      mov   di, 0x508e
│       │   0000:04e7      mov   byte [di], al
│       │   0000:04e9      mov   bp, 0x508a
│       │   0000:04ec      call  fcn.00000596                          ; fcn.00000596
│       │   0000:04ef      cmp   byte [0x506d], 1                      ; [0x506d:1]=255
│      ┌──< 0000:04f4      je    0x50e
│      ││   0000:04f6      add   dx, 0x27c
│      ││   0000:04fa      call  fcn.00000596                          ; fcn.00000596
│      ││   0000:04fd      test  byte [0xff34], 0xff
│     ┌───< 0000:0502      je    0x50e
│     │││   0000:0504      test  byte [0xff2f], 0xff
│    ┌────< 0000:0509      je    0x50e
│    ││││   0000:050b      call  fcn.000007f1                          ; fcn.000007f1
│    └└└──> 0000:050e      pop   bx
│       │   0000:050f      pop   di
│       │   0000:0510      pop   si
└       │   0000:0511      ret
```

### Function 0x00000270
```asm
; CALL XREF from fcn.00000128 @ 0x157
┌ fcn.00000270(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0270      push  es
│           0000:0271      push  ds
│           0000:0272      push  di
│           0000:0273      push  si
│           0000:0274      push  bx                                    ; arg3
│           0000:0275      mov   di, dx                                ; arg2
│           0000:0277      or    al, al
│       ┌─< 0000:0279      jne   0x27e
│      ┌──< 0000:027b      jmp   0x332
│      ││   ; DATA XREF from fcn.00000e7a @ +0x6e
│      │└─> 0000:027e      mov   bl, al
│      │    ; XREFS: DATA 0x0000011b  DATA 0x0000046d  DATA 0x00000566  
│      │    ; XREFS: DATA 0x00000a8c  DATA 0x00000efb  DATA 0x00000f5b  
│      │    ; XREFS: DATA 0x00000f76  DATA 0x000010c7  DATA 0x000012cc  
│      │    ; XREFS: DATA 0x00001644  DATA 0x00001664  DATA 0x00001e0f  
│      │    0000:0280      xor   bh, bh
│      │    0000:0282      add   bx, bx                                ; arg3
│      │    0000:0284      test  word [bx + 0x5097], 0xffff            ; arg3
│      │┌─< 0000:028a      jne   0x2e0
│      ││   0000:028c      mov   word [bx + 0x5097], di                ; arg3
│      ││   0000:0290      mov   cl, 0x30                              ; '0'
│      ││   0000:0292      mul   cl
│      ││   0000:0294      add   ax, 0x8000                            ; arg1
│      ││   0000:0297      mov   si, ax                                ; arg1
│      ││   0000:0299      mov   ds, word cs:[0xff2c]
│      ││   0000:029e      mov   ax, 0xa000
│      ││   0000:02a1      mov   es, ax
│      ││   0000:02a3      mov   dx, 0x3c4
│      ││   0000:02a6      mov   al, 2
│      ││   0000:02a8      out   dx, al
│      ││   0000:02a9      inc   dx
│      ││   0000:02aa      mov   bx, 0x4e                              ; 'N'
│      ││   0000:02ad      mov   cx, 4
│     ┌───> 0000:02b0      mov   al, 1
│     ╎││   0000:02b2      out   dx, al
│     ╎││   0000:02b3      movsw word es:[di], word ptr [si]
│     ╎││   0000:02b4      mov   al, 2
│     ╎││   0000:02b6      out   dx, al
│     ╎││   0000:02b7      lodsw ax, word [si]
│     ╎││   0000:02b8      mov   word es:[di - 2], ax
│     ╎││   0000:02bc      dec   di
│     ╎││   0000:02bd      dec   di
│     ╎││   0000:02be      mov   al, 4
│     ╎││   0000:02c0      out   dx, al
│     ╎││   0000:02c1      movsw word es:[di], word ptr [si]
│     ╎││   0000:02c2      add   di, bx
│     ╎││   0000:02c4      mov   al, 1
│     ╎││   0000:02c6      out   dx, al
│     ╎││   0000:02c7      movsw word es:[di], word ptr [si]
│     ╎││   0000:02c8      mov   al, 2
│     ╎││   0000:02ca      out   dx, al
│     ╎││   0000:02cb      lodsw ax, word [si]
│     ╎││   0000:02cc      mov   word es:[di - 2], ax
│     ╎││   0000:02d0      dec   di
│     ╎││   0000:02d1      dec   di
│     ╎││   0000:02d2      mov   al, 4
│     ╎││   0000:02d4      out   dx, al
│     ╎││   0000:02d5      movsw word es:[di], word ptr [si]
│     ╎││   0000:02d6      add   di, bx
│     └───< 0000:02d8      loop  0x2b0
│      ││   0000:02da      pop   bx
│      ││   0000:02db      pop   si
│      ││   0000:02dc      pop   di
│      ││   0000:02dd      pop   ds
│      ││   0000:02de      pop   es
│      ││   0000:02df      ret
│      │└─> 0000:02e0      mov   si, word [bx + 0x5097]                ; arg3
│      │    0000:02e4      mov   dx, 0x3c4
│      │    0000:02e7      mov   ax, 0x702
│      │    0000:02ea      out   dx, ax
│      │    0000:02eb      mov   dx, 0x3ce
│      │    0000:02ee      mov   ax, 0x105
│      │    0000:02f1      out   dx, ax
│      │    0000:02f2      mov   ax, 0xa000
│      │    0000:02f5      mov   es, ax
│      │    0000:02f7      mov   ds, ax
│      │    0000:02f9      mov   bx, 0x4e                              ; 'N'
│      │    0000:02fc      movsb byte es:[di], byte ptr [si]
│      │    0000:02fd      movsb byte es:[di], byte ptr [si]
│      │    0000:02fe      add   di, bx
│      │    0000:0300      add   si, bx
│      │    0000:0302      movsb byte es:[di], byte ptr [si]
│      │    0000:0303      movsb byte es:[di], byte ptr [si]
│      │    0000:0304      add   di, bx
│      │    0000:0306      add   si, bx
│      │    0000:0308      movsb byte es:[di], byte ptr [si]
│      │    0000:0309      movsb byte es:[di], byte ptr [si]
│      │    0000:030a      add   di, bx
│      │    0000:030c      add   si, bx
│      │    0000:030e      movsb byte es:[di], byte ptr [si]
│      │    0000:030f      movsb byte es:[di], byte ptr [si]
│      │    0000:0310      add   di, bx
│      │    0000:0312      add   si, bx
│      │    0000:0314      movsb byte es:[di], byte ptr [si]
│      │    0000:0315      movsb byte es:[di], byte ptr [si]
│      │    0000:0316      add   di, bx
│      │    0000:0318      add   si, bx
│      │    0000:031a      movsb byte es:[di], byte ptr [si]
│      │    0000:031b      movsb byte es:[di], byte ptr [si]
│      │    0000:031c      add   di, bx
│      │    0000:031e      add   si, bx
│      │    0000:0320      movsb byte es:[di], byte ptr [si]
│      │    0000:0321      movsb byte es:[di], byte ptr [si]
│      │    0000:0322      add   di, bx
│      │    0000:0324      add   si, bx
│      │    0000:0326      movsb byte es:[di], byte ptr [si]
│      │    0000:0327      movsb byte es:[di], byte ptr [si]
│      │    0000:0328      mov   ax, 5
│      │    0000:032b      out   dx, ax
│      │    0000:032c      pop   bx
│      │    0000:032d      pop   si
│      │    0000:032e      pop   di
│      │    0000:032f      pop   ds
│      │    0000:0330      pop   es
│      │    0000:0331      ret
│      │    ; CODE XREF from fcn.00000270 @ 0x27b
│      └──> 0000:0332      mov   ax, 0xa000
│           0000:0335      mov   es, ax
│           0000:0337      mov   dx, 0x3c4
│           0000:033a      mov   ax, 0x702
│           0000:033d      out   dx, ax
│           0000:033e      xor   ax, ax
│           0000:0340      mov   bx, 0x4e                              ; 'N'
│           0000:0343      stosw word es:[di], ax
│           0000:0344      add   di, bx
│           0000:0346      stosw word es:[di], ax
│           0000:0347      add   di, bx
│           0000:0349      stosw word es:[di], ax
│           0000:034a      add   di, bx
│           0000:034c      stosw word es:[di], ax
│           0000:034d      add   di, bx
│           0000:034f      stosw word es:[di], ax
│           0000:0350      add   di, bx
│           0000:0352      stosw word es:[di], ax
│           0000:0353      add   di, bx
│           0000:0355      stosw word es:[di], ax
│           0000:0356      add   di, bx
│           0000:0358      stosw word es:[di], ax
│           0000:0359      add   di, bx
│           0000:035b      pop   bx
│           0000:035c      pop   si
│           0000:035d      pop   di
│           0000:035e      pop   ds
│           0000:035f      pop   es
└           0000:0360      ret
```

### Function 0x00000361
```asm
; CALL XREF from fcn.00000000 @ 0x57
┌ fcn.00000361(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0361      cmp   byte [0xe900], 0xff
│       ┌─< 0000:0366      jne   0x369
│       │   0000:0368      ret
│       └─> 0000:0369      cmp   byte [0xe900], 0xfc
│       ┌─< 0000:036e      jne   0x371
│       │   0000:0370      ret
│       └─> 0000:0371      push  si
│           0000:0372      push  bx                                    ; arg3
│           0000:0373      mov   byte [0xe900], 0xff                   ; [0xff:1]=232
│           0000:0378      mov   cl, byte [si]
│           0000:037a      add   si, 0x25
│           0000:037d      call  fcn.000016a9                          ; fcn.000016a9
│           0000:0380      mov   al, byte [si]
│           0000:0382      or    al, al
│       ┌─< 0000:0384      jns   0x389
│       │   0000:0386      call  fcn.00000799                          ; fcn.00000799
│       └─> 0000:0389      push  ax
│           0000:038a      mov   al, cl
│           0000:038c      call  fcn.000007a0                          ; fcn.000007a0
│           0000:038f      add   si, 3
│           0000:0392      pop   ax                                    ; int16_t arg1
│           0000:0393      mov   ah, byte [si]
│           0000:0395      mov   dx, 0x46c                             ; int16_t arg2
│           0000:0398      call  fcn.000005c3                          ; fcn.000005c3
│           0000:039b      pop   bx
│           0000:039c      pop   si
└           0000:039d      ret
```

### Function 0x0000039e
```asm
; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
            ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
            ; XREFS: CALL 0x000000a3  
┌ fcn.0000039e(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:039e      push  si
│           0000:039f      push  bx                                    ; arg3
│           0000:03a0      mov   cx, bx                                ; arg3
│           0000:03a2      mov   di, bx                                ; arg3
│           0000:03a4      add   di, 0xe900
│           0000:03a8      mov   bx, 0x508a
│           0000:03ab      mov   al, 0xff
│           0000:03ad      xchg  byte [di], al
│           0000:03af      mov   byte [bx], al
│           0000:03b1      mov   byte [bx + 1], 0
│           0000:03b5      mov   byte [di + 1], 0xff                   ; [0xff:1]=232
│           0000:03b9      mov   dx, cx
│           0000:03bb      add   dx, dx
│           0000:03bd      add   dx, 0x46c
│           0000:03c1      mov   cl, byte [si]
│           0000:03c3      add   si, 0x24
│           0000:03c6      call  fcn.000016a9                          ; fcn.000016a9
│           0000:03c9      mov   bx, 0x508e                            ; int16_t arg_6h
│           0000:03cc      lodsw ax, word [si]                         ; int16_t arg1
│           0000:03cd      mov   word [bx], ax
│           0000:03cf      mov   al, cl
│           0000:03d1      call  fcn.000007a0                          ; fcn.000007a0
│           0000:03d4      inc   si
│           0000:03d5      inc   si
│           0000:03d6      mov   di, 0x508e
│           0000:03d9      mov   bp, 0x508a
│           0000:03dc      call  fcn.00000596                          ; fcn.00000596
│           0000:03df      pop   bx
│           0000:03e0      pop   si
└           0000:03e1      ret
```

### Function 0x000003e2
```asm
; CALL XREF from fcn.00000000 @ 0xac
┌ fcn.000003e2();
│           0000:03e2      cmp   byte [0xe91b], 0xff
│       ┌─< 0000:03e7      jne   0x3ea
│       │   0000:03e9      ret
│       └─> 0000:03ea      cmp   byte [0xe91b], 0xfc
│       ┌─< 0000:03ef      jne   0x3f2
│       │   0000:03f1      ret
│       └─> 0000:03f2      mov   byte [0xe91b], 0xff                   ; [0xff:1]=232
│           0000:03f7      mov   cl, byte [si]
│           0000:03f9      add   si, 0x24
│           0000:03fc      call  fcn.000016a9                          ; fcn.000016a9
│           0000:03ff      mov   al, byte [si]
│           0000:0401      or    al, al
│       ┌─< 0000:0403      jns   0x408
│       │   0000:0405      call  fcn.00000799                          ; fcn.00000799
│       └─> 0000:0408      push  ax
│           0000:0409      mov   al, cl
│           0000:040b      call  fcn.000007a0                          ; fcn.000007a0
│           0000:040e      add   si, 2
│           0000:0411      pop   ax
│           0000:0412      mov   ah, byte [si]
│           0000:0414      mov   dx, 0x4a2
└       ┌─< 0000:0417      jmp   fcn.000005c3                          ; fcn.000005c3
```

### Function 0x0000041a
```asm
; CALL XREF from fcn.00000118 @ 0xc8
┌ fcn.0000041a(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:041a      push  si
│           0000:041b      push  di
│           0000:041c      push  bx                                    ; arg3
│           0000:041d      push  bx                                    ; arg3
│           0000:041e      mov   bx, 0x508a
│           0000:0421      mov   al, 0xff
│           0000:0423      xchg  byte [di], al
│           0000:0425      mov   byte [bx], al
│           0000:0427      mov   al, 0xff
│           0000:0429      xchg  byte [di + 0x1c], al
│           0000:042c      mov   byte [bx + 1], al
│           0000:042f      mov   cl, byte [si - 1]
│           0000:0432      mov   dl, byte [si]
│           0000:0434      add   si, 0x24
│           0000:0437      call  fcn.000016a9                          ; fcn.000016a9
│           0000:043a      mov   dh, byte [si]
│           0000:043c      mov   al, cl
│           0000:043e      call  fcn.000007a0                          ; fcn.000007a0
│           0000:0441      inc   si
│           0000:0442      mov   bx, dx
│           0000:0444      pop   dx
│           0000:0445      add   dx, dx
│           0000:0447      add   dx, word [0x5069]                     ; [0x5069:2]=0xffff
│           0000:044b      cmp   byte [0x508a], 0xff                   ; [0x508a:1]=255
│       ┌─< 0000:0450      je    0x46d
│       │   0000:0452      cmp   byte [0x508a], 0xfc                   ; [0x508a:1]=255
│      ┌──< 0000:0457      je    0x46d
│      ││   0000:0459      mov   ah, byte [si]
│      ││   0000:045b      mov   al, bl
│      ││   0000:045d      push  bx
│      ││   0000:045e      push  si
│      ││   0000:045f      push  dx
│      ││   0000:0460      or    al, al
│     ┌───< 0000:0462      jns   0x467
│     │││   0000:0464      call  fcn.00000799                          ; fcn.00000799
│     └───> 0000:0467      call  fcn.000005c3                          ; fcn.000005c3
│      ││   0000:046a      pop   dx
│      ││   0000:046b      pop   si
│      ││   ; XREFS: DATA 0x00000040  DATA 0x00000395  DATA 0x000003bd  
│      ││   ; XREFS: DATA 0x000008ad  DATA 0x00000a9b  DATA 0x0000129d  
│      ││   ; XREFS: DATA 0x000015db  DATA 0x0000162b  DATA 0x00001674  
│      ││   ; XREFS: DATA 0x000017c4  
│      ││   0000:046c      pop   bx
│      └└─> 0000:046d      add   dx, 0x280
│           0000:0471      cmp   byte [0x506d], 1                      ; [0x506d:1]=255
│       ┌─< 0000:0476      je    0x497
│       │   0000:0478      cmp   byte [0x508b], 0xff                   ; [0x508b:1]=255
│      ┌──< 0000:047d      je    0x497
│      ││   0000:047f      cmp   byte [0x508b], 0xfc                   ; [0x508b:1]=255
│     ┌───< 0000:0484      je    0x497
│     │││   0000:0486      inc   si
│     │││   0000:0487      inc   si
│     │││   0000:0488      lodsb al, byte [si]
│     │││   0000:0489      mov   ah, al
│     │││   0000:048b      mov   al, bh
│     │││   0000:048d      or    al, al
│    ┌────< 0000:048f      jns   0x494
│    ││││   0000:0491      call  fcn.00000799                          ; fcn.00000799
│    └────> 0000:0494      call  fcn.000005c3                          ; fcn.000005c3
│     └└└─> 0000:0497      pop   bx
│           0000:0498      pop   di
│           0000:0499      pop   si
└           0000:049a      ret
```

### Function 0x00000596
```asm
; CALL XREF from fcn.0000039e @ 0x3dc
            ; CALL XREFS from fcn.00000128 @ 0x4ec, 0x4fa
┌ fcn.00000596();
│           0000:0596      call  0x599
│           ; CALL XREF from fcn.00000596 @ 0x596
│           0000:0599      cmp   byte ds:[bp], 0xff
│       ┌─< 0000:059e      je    0x5bd
│       │   0000:05a0      cmp   byte ds:[bp], 0xfc
│      ┌──< 0000:05a5      je    0x5bd
│      ││   0000:05a7      mov   ah, byte [si]
│      ││   0000:05a9      mov   al, byte [di]
│      ││   0000:05ab      or    al, al
│     ┌───< 0000:05ad      jns   0x5b2
│     │││   0000:05af      call  fcn.00000799                          ; fcn.00000799
│     └───> 0000:05b2      push  bp
│      ││   0000:05b3      push  si
│      ││   0000:05b4      push  di
│      ││   0000:05b5      push  dx
│      ││   0000:05b6      call  fcn.000005c3                          ; fcn.000005c3
│      ││   0000:05b9      pop   dx
│      ││   0000:05ba      pop   di
│      ││   0000:05bb      pop   si
│      ││   0000:05bc      pop   bp
│      └└─> 0000:05bd      inc   si
│           0000:05be      inc   di
│           0000:05bf      inc   bp
│           0000:05c0      inc   dx
│           0000:05c1      inc   dx
└           0000:05c2      ret
```

### Function 0x000005c3
```asm
; XREFS: CALL 0x00000398  CODE 0x00000417  CALL 0x00000467  
            ; XREFS: CALL 0x00000494  CALL 0x00000560  CALL 0x0000058d  
            ; XREFS: CALL 0x000005b6  
┌ fcn.000005c3(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:05c3      push  es
│           0000:05c4      push  ds
│           0000:05c5      mov   bl, byte [0x5070]                     ; [0x5070:1]=255
│           0000:05c9      or    al, al
│       ┌─< 0000:05cb      je    0x5d2
│      ┌──< 0000:05cd      js    0x5d2
│      ││   0000:05cf      or    bl, 0x80
│      └└─> 0000:05d2      mov   cl, al
│           0000:05d4      mov   al, ah
│           0000:05d6      mov   ch, 0x20
│           0000:05d8      mul   ch
│           0000:05da      add   ax, 0x4000                            ; arg1
│           0000:05dd      mov   si, ax                                ; arg1
│           0000:05df      mov   ds, word cs:[0xff2c]
│           0000:05e4      mov   di, dx                                ; arg2
│           0000:05e6      mov   ax, 0xa000
│           0000:05e9      mov   es, ax
│           0000:05eb      mov   ch, bl
│           0000:05ed      and   bl, 0x7f
│           0000:05f0      xor   bh, bh
│           0000:05f2      add   bx, bx                                ; arg3
│           0000:05f4      mov   ax, word cs:[bx + 0x505a]             ; arg3
│           0000:05f9      mov   word cs:[0x5067], ax
│           0000:05fd      mov   al, cl
│           0000:05ff      or    ch, ch
│       ┌─< 0000:0601      js    0x619
│       │   0000:0603      push  di
│       │   0000:0604      mov   di, 0x3e80
│       │   ; DATA XREF from fcn.000007f1 @ +0x76
│       │   0000:0607      call  fcn.000006cb                          ; fcn.000006cb
│       │   0000:060a      pop   di
│       │   0000:060b      mov   si, 0x3e80
│       │   0000:060e      mov   ax, 0xa000
│       │   0000:0611      mov   ds, ax
│       │   0000:0613      call  fcn.00000730                          ; fcn.00000730
│       │   0000:0616      pop   ds
│       │   0000:0617      pop   es
│       │   0000:0618      ret
│       └─> 0000:0619      push  di
│           0000:061a      mov   di, 0x3e80
│           0000:061d      call  fcn.0000062f                          ; fcn.0000062f
│           0000:0620      pop   di
│           0000:0621      mov   si, 0x3e80
│           0000:0624      mov   ax, 0xa000
│           0000:0627      mov   ds, ax
│           0000:0629      call  fcn.00000730                          ; fcn.00000730
│           0000:062c      pop   ds
│           0000:062d      pop   es
└           0000:062e      ret
```

### Function 0x0000062f
```asm
; CALL XREF from fcn.000005c3 @ 0x61d
            ; CALL XREF from fcn.00000da8 @ +0x95
┌ fcn.0000062f(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:062f      push  si
│           0000:0630      push  di
│           0000:0631      mov   al, 0x30                              ; '0'
│           0000:0633      mul   cl
│           0000:0635      add   ax, 0x8000                            ; int16_t arg1
│           0000:0638      mov   si, ax                                ; arg1
│           0000:063a      call  fcn.00000768                          ; fcn.00000768
│           0000:063d      pop   di
│           0000:063e      pop   si
└       ┌─< 0000:063f      jmp   fcn.00000641                          ; fcn.00000641
```

### Function 0x00000641
```asm
; CODE XREF from fcn.0000062f @ 0x63f
            ; CALL XREF from fcn.00000d6a @ 0xd98
┌ fcn.00000641();
│           0000:0641      mov   dx, 0x3c4
│           0000:0644      mov   ax, 0x702
│           0000:0647      out   dx, ax
│           0000:0648      mov   dx, 0x3ce
│           0000:064b      mov   ax, 0x205
│           0000:064e      out   dx, ax
│           0000:064f      mov   cx, 8
│       ┌─> 0000:0652      push  cx
│       ╎   0000:0653      lodsw ax, word [si]
│       ╎   0000:0654      xchg  ah, al
│       ╎   0000:0656      mov   bx, ax
│       ╎   0000:0658      lodsw ax, word [si]
│       ╎   0000:0659      xchg  ah, al
│       ╎   0000:065b      mov   cx, ax
│       ╎   0000:065d      mov   ax, 3
│       ╎   0000:0660      out   dx, ax
│       ╎   0000:0661      mov   al, 8
│       ╎   0000:0663      out   dx, al
│       ╎   0000:0664      inc   dx
│       ╎   0000:0665      mov   ax, bx
│       ╎   0000:0667      or    ax, cx
│       ╎   0000:0669      mov   bp, ax
│       ╎   0000:066b      shl   bp, 1
│       ╎   0000:066d      or    ax, bp
│       ╎   0000:066f      shr   bp, 1
│       ╎   0000:0671      shr   bp, 1
│       ╎   0000:0673      or    ax, bp
│       ╎   0000:0675      xchg  ah, al
│       ╎   0000:0677      out   dx, al
│       ╎   0000:0678      xor   al, al
│       ╎   0000:067a      xchg  byte es:[di], al
│       ╎   0000:067d      mov   al, ah
│       ╎   0000:067f      out   dx, al
│       ╎   0000:0680      xor   al, al
│       ╎   0000:0682      xchg  byte es:[di + 1], al
│       ╎   0000:0686      dec   dx
│       ╎   0000:0687      mov   ax, 0x1003
│       ╎   0000:068a      out   dx, ax
│       ╎   0000:068b      mov   al, 8
│       ╎   0000:068d      out   dx, al
│       ╎   0000:068e      inc   dx
│       ╎   0000:068f      mov   al, bh
│       ╎   0000:0691      out   dx, al
│       ╎   0000:0692      mov   al, byte cs:[0x5067]
│       ╎   0000:0696      xchg  byte es:[di], al
│       ╎   0000:0699      mov   al, bl
│       ╎   0000:069b      out   dx, al
│       ╎   0000:069c      mov   al, byte cs:[0x5067]
│       ╎   0000:06a0      xchg  byte es:[di + 1], al
│       ╎   0000:06a4      mov   al, ch
│       ╎   0000:06a6      out   dx, al
│       ╎   0000:06a7      mov   al, byte cs:[0x5068]
│       ╎   0000:06ab      xchg  byte es:[di], al
│       ╎   0000:06ae      mov   al, cl
│       ╎   0000:06b0      out   dx, al
│       ╎   0000:06b1      mov   al, byte cs:[0x5068]
│       ╎   0000:06b5      xchg  byte es:[di + 1], al
│       ╎   0000:06b9      dec   dx
│       ╎   0000:06ba      inc   di
│       ╎   0000:06bb      inc   di
│       ╎   0000:06bc      pop   cx
│       └─< 0000:06bd      loop  0x652
│           0000:06bf      mov   ax, 3
│           0000:06c2      out   dx, ax
│           0000:06c3      mov   al, 5
│           0000:06c5      out   dx, ax
│           0000:06c6      mov   ax, 0xff08
│           0000:06c9      out   dx, ax
└           0000:06ca      ret
```

### Function 0x000006cb
```asm
; CALL XREF from fcn.000005c3 @ 0x607
            ; CALL XREF from fcn.00000da8 @ +0x9c
┌ fcn.000006cb();
│           0000:06cb      mov   dx, 0x3c4
│           0000:06ce      mov   ax, 0x702
│           0000:06d1      out   dx, ax
│           0000:06d2      mov   dx, 0x3ce
│           0000:06d5      mov   ax, 0x205
│           0000:06d8      out   dx, ax
│           0000:06d9      mov   cx, 8
│       ┌─> 0000:06dc      mov   ax, 3
│       ╎   0000:06df      out   dx, ax
│       ╎   0000:06e0      mov   ax, 0xff08
│       ╎   0000:06e3      out   dx, ax
│       ╎   0000:06e4      xor   al, al
│       ╎   0000:06e6      xchg  byte es:[di], al
│       ╎   0000:06e9      xor   al, al
│       ╎   0000:06eb      xchg  byte es:[di + 1], al
│       ╎   0000:06ef      mov   ax, 0x1003
│       ╎   0000:06f2      out   dx, ax
│       ╎   0000:06f3      mov   al, 8
│       ╎   0000:06f5      out   dx, al
│       ╎   0000:06f6      inc   dx
│       ╎   0000:06f7      lodsw ax, word [si]
│       ╎   0000:06f8      out   dx, al
│       ╎   0000:06f9      mov   al, byte cs:[0x5067]
│       ╎   0000:06fd      xchg  byte es:[di], al
│       ╎   0000:0700      mov   al, ah
│       ╎   ; XREFS(21)
│       ╎   0000:0702      out   dx, al
│       ╎   0000:0703      mov   al, byte cs:[0x5067]
│       ╎   0000:0707      xchg  byte es:[di + 1], al
│       ╎   0000:070b      lodsw ax, word [si]
│       ╎   0000:070c      out   dx, al
│       ╎   0000:070d      mov   al, byte cs:[0x5068]
│       ╎   0000:0711      xchg  byte es:[di], al
│       ╎   0000:0714      mov   al, ah
│       ╎   0000:0716      out   dx, al
│       ╎   0000:0717      mov   al, byte cs:[0x5068]
│       ╎   0000:071b      xchg  byte es:[di + 1], al
│       ╎   0000:071f      dec   dx
│       ╎   0000:0720      inc   di
│       ╎   0000:0721      inc   di
│       └─< 0000:0722      loop  0x6dc
│           0000:0724      mov   ax, 3
│           0000:0727      out   dx, ax
│           0000:0728      mov   al, 5
│           0000:072a      out   dx, ax
│           0000:072b      mov   ax, 0xff08
│           0000:072e      out   dx, ax
└           0000:072f      ret
```

### Function 0x00000730
```asm
; CALL XREFS from fcn.000005c3 @ 0x613, 0x629
            ; CALL XREF from fcn.00000e7a @ 0x11dc
┌ fcn.00000730();
│           0000:0730      mov   dx, 0x3c4
│           0000:0733      mov   ax, 0x702
│           0000:0736      out   dx, ax
│           0000:0737      mov   dx, 0x3ce
│           0000:073a      mov   ax, 0x105
│           0000:073d      out   dx, ax
│           0000:073e      movsb byte es:[di], byte ptr [si]
│           0000:073f      movsb byte es:[di], byte ptr [si]
│           0000:0740      add   di, 0x4e
│           0000:0743      movsb byte es:[di], byte ptr [si]
│           0000:0744      movsb byte es:[di], byte ptr [si]
│           0000:0745      add   di, 0x4e
│           0000:0748      movsb byte es:[di], byte ptr [si]
│           0000:0749      movsb byte es:[di], byte ptr [si]
│           0000:074a      add   di, 0x4e
│           0000:074d      movsb byte es:[di], byte ptr [si]
│           0000:074e      movsb byte es:[di], byte ptr [si]
│           0000:074f      add   di, 0x4e
│           0000:0752      movsb byte es:[di], byte ptr [si]
│           0000:0753      movsb byte es:[di], byte ptr [si]
│           0000:0754      add   di, 0x4e
│           0000:0757      movsb byte es:[di], byte ptr [si]
│           0000:0758      movsb byte es:[di], byte ptr [si]
│           0000:0759      add   di, 0x4e
│           0000:075c      movsb byte es:[di], byte ptr [si]
│           0000:075d      movsb byte es:[di], byte ptr [si]
│           0000:075e      add   di, 0x4e
│           0000:0761      movsb byte es:[di], byte ptr [si]
│           0000:0762      movsb byte es:[di], byte ptr [si]
│           0000:0763      mov   ax, 5
│           0000:0766      out   dx, ax
└           0000:0767      ret
```

### Function 0x00000768
```asm
; CALL XREF from fcn.0000062f @ 0x63a
            ; CALL XREF from fcn.00000da8 @ +0x3d
┌ fcn.00000768(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0768      mov   dx, 0x3c4
│           0000:076b      mov   al, 2
│           0000:076d      out   dx, al
│           0000:076e      inc   dx
│           0000:076f      mov   cx, 8
│       ┌─> 0000:0772      mov   al, 1
│       ╎   0000:0774      out   dx, al
│       ╎   0000:0775      movsw word es:[di], word ptr [si]
│       ╎   0000:0776      mov   al, 2
│       ╎   0000:0778      out   dx, al
│       ╎   0000:0779      lodsw ax, word [si]
│       ╎   0000:077a      mov   word es:[di - 2], ax                  ; arg1
│       ╎   0000:077e      dec   di
│       ╎   0000:077f      dec   di
│       ╎   0000:0780      mov   al, 4
│       ╎   0000:0782      out   dx, al
│       ╎   0000:0783      movsw word es:[di], word ptr [si]
│       └─< 0000:0784      loop  0x772
└           0000:0786      ret
```

### Function 0x00000787
```asm
; CALL XREF from fcn.00000da8 @ +0x44
┌ fcn.00000787();
│           0000:0787      mov   dx, 0x3c4
│           0000:078a      mov   ax, 0x702
│           0000:078d      out   dx, ax
│           0000:078e      xor   ax, ax
│           0000:0790      stosw word es:[di], ax
│           0000:0791      stosw word es:[di], ax
│           0000:0792      stosw word es:[di], ax
│           0000:0793      stosw word es:[di], ax
│           0000:0794      stosw word es:[di], ax
│           0000:0795      stosw word es:[di], ax
│           0000:0796      stosw word es:[di], ax
│           0000:0797      stosw word es:[di], ax
└           0000:0798      ret
```

### Function 0x00000799
```asm
; XREFS: CALL 0x00000386  CALL 0x00000405  CALL 0x00000464  
            ; XREFS: CALL 0x00000491  CALL 0x0000055d  CALL 0x0000058a  
            ; XREFS: CALL 0x000005af  CALL 0x00000dfe  
┌ fcn.00000799();
│           0000:0799      and   al, 0x7f
│           0000:079b      mov   bx, 0xed20
│           0000:079e      xlatb
└           0000:079f      ret
```

### Function 0x000007a0
```asm
; XREFS: CALL 0x0000038c  CALL 0x000003d1  CALL 0x0000040b  
            ; XREFS: CALL 0x0000043e  CALL 0x000004e1  CALL 0x00000536  
            ; XREFS: CALL 0x00000ad0  CALL 0x00000ae6  CALL 0x00000afb  
            ; XREFS: CALL 0x00000b09  
┌ fcn.000007a0(int16_t arg1, int16_t arg3, int16_t arg_4h, int16_t arg_5h, int16_t arg_6h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg_4h @ stack + 0x4
│           ; arg int16_t arg_5h @ stack + 0x5
│           ; arg int16_t arg_6h @ stack + 0x6
│           0000:07a0      and   al, 0x7f
│           0000:07a2      mov   bl, al
│           0000:07a4      xor   bh, bh
│           0000:07a6      mov   cl, byte [bx - 0x12e0]                ; arg3
│           0000:07aa      mov   ch, 0x10
│           0000:07ac      mul   ch
│           0000:07ae      add   ax, word [0xc010]                     ; arg1
│           0000:07b2      mov   bp, ax                                ; arg1
│           0000:07b4      mov   al, byte ds:[bp + 6]
│           0000:07b8      and   al, 0xf
│           0000:07ba      mov   ch, 5
│           0000:07bc      mul   ch
│           0000:07be      mov   si, 0xa070
│           0000:07c1      test  byte ds:[bp + 5], 0x80
│       ┌─< 0000:07c6      jne   0x7cb
│       │   0000:07c8      mov   si, 0xa030
│       └─> 0000:07cb      mov   bl, byte ds:[bp + 4]
│           0000:07cf      and   bl, 0x1f
│           0000:07d2      add   bl, bl
│           0000:07d4      xor   bh, bh
│           0000:07d6      add   ax, word [bx + si]                    ; arg3
│           0000:07d8      mov   si, ax                                ; arg1
│           0000:07da      lodsb al, byte [si]
│           0000:07db      test  byte [0xff34], 0xff
│       ┌─< 0000:07e0      jne   0x7eb
│       │   0000:07e2      test  byte ds:[bp + 5], 0x20
│      ┌──< 0000:07e7      je    0x7eb
│      ││   0000:07e9      add   al, 3
│      └└─> 0000:07eb      mov   byte [0x5070], al                     ; [0x5070:1]=255
│           0000:07ee      mov   al, cl
└           0000:07f0      ret
```

### Function 0x000007f1
```asm
; CALL XREF from fcn.00000128 @ 0x50b
┌ fcn.000007f1();
│           0000:07f1      cmp   byte [0x506f], 0x10                   ; [0x506f:1]=255
│       ┌─< 0000:07f6      jb    0x7f9
│       │   0000:07f8      ret
│       └─> 0000:07f9      push  cs
│           0000:07fa      pop   es
│           0000:07fb      call  word cs:[fcn.0000011a]                ; 0x11a
│           0000:0800      and   al, 0xf
│           0000:0802      cmp   al, 0xe
│       ┌─< 0000:0804      jae   0x807
│       │   0000:0806      ret
│       └─> 0000:0807      mov   di, 0xeda0
│           0000:080a      xor   cl, cl
│           ; CODE XREF from fcn.000007f1 @ 0x816
│       ┌─> 0000:080c      cmp   byte [di], 0xff
│      ┌──< 0000:080f      je    0x818
│      │╎   0000:0811      add   di, 4
│      │╎   0000:0814      inc   cl
│      │└─< 0000:0816      jmp   0x80c
│      └──> 0000:0818      cmp   cl, 0x20
│       ┌─< 0000:081b      jb    0x81e
│       │   0000:081d      ret
│      ┌└─> 0000:081e      call  word cs:[fcn.0000011a]                ; 0x11a
│      ╎    0000:0823      and   al, 3
│      ╎    0000:0825      cmp   al, 3
│      └──< 0000:0827      je    0x81e
│           0000:0829      dec   al
│           0000:082b      add   al, byte [0x506e]                     ; [0x506e:1]=255
│           0000:082f      cmp   al, 0xff
│       ┌─< 0000:0831      jne   0x835
│       │   0000:0833      mov   al, 4
│       └─> 0000:0835      cmp   al, 0x1b
│       ┌─< 0000:0837      jb    0x83b
│       │   0000:0839      mov   al, 0x1a
│       └─> 0000:083b      stosb byte es:[di], al
│       ┌─> 0000:083c      call  word cs:[fcn.0000011a]                ; 0x11a
│       ╎   0000:0841      and   al, 3
│       ╎   0000:0843      cmp   al, 3
│       └─< 0000:0845      je    0x83c
│           0000:0847      dec   al
│           0000:0849      add   al, byte [0x506f]                     ; [0x506f:1]=255
│           0000:084d      cmp   al, 0xff
│       ┌─< 0000:084f      jne   0x853
│       │   0000:0851      xor   al, al
│       └─> 0000:0853      stosb byte es:[di], al
│           0000:0854      mov   al, 3
│           0000:0856      stosb byte es:[di], al
│           0000:0857      call  word cs:[fcn.0000011a]                ; 0x11a
│           0000:085c      and   al, 3
│           0000:085e      mov   bx, 0x3863                            ; 'c8'
│           0000:0861      xlatb
│           0000:0862      stosb byte es:[di], al
│           0000:0863      mov   al, 0xff
│           0000:0865      stosb byte es:[di], al
└           0000:0866      ret
```

### Function 0x00000d6a
```asm
; CODE XREFS from fcn.000007f1 @ +0x40d, +0x41a, +0x497, +0x56d, +0x577
┌ fcn.00000d6a(int16_t arg1, int16_t arg2, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg4 @ cx
│       ┌─> 0000:0d6a      push  cx                                    ; arg4
│       ╎   0000:0d6b      mov   al, byte es:[si]
│       ╎   0000:0d6e      or    al, al
│      ┌──< 0000:0d70      je    0xd9f
│      │╎   0000:0d72      push  es
│      │╎   0000:0d73      push  ds
│      │╎   0000:0d74      push  si
│      │╎   0000:0d75      push  di
│      │╎   0000:0d76      mov   ch, 0x20
│      │╎   0000:0d78      mul   ch
│      │╎   0000:0d7a      add   ax, 0x6333                            ; arg1
│      │╎   0000:0d7d      mov   si, ax                                ; arg1
│      │╎   0000:0d7f      mov   ds, word cs:[0xff2c]
│      │╎   0000:0d84      mov   di, dx                                ; arg2
│      │╎   0000:0d86      mov   ax, 0xa000
│      │╎   0000:0d89      mov   es, ax
│      │╎   0000:0d8b      mov   al, byte cs:[0x506e]
│      │╎   0000:0d8f      mov   cl, 0x10
│      │╎   0000:0d91      mul   cl
│      │╎   0000:0d93      add   ax, 0x3e90
│      │╎   0000:0d96      mov   di, ax
│      │╎   0000:0d98      call  fcn.00000641                          ; fcn.00000641
│      │╎   0000:0d9b      pop   di
│      │╎   0000:0d9c      pop   si
│      │╎   0000:0d9d      pop   ds
│      │╎   0000:0d9e      pop   es
│      └──> 0000:0d9f      inc   si
│       ╎   0000:0da0      inc   byte [0x506e]
│       ╎   0000:0da4      pop   cx
│       └─< 0000:0da5      loop  fcn.00000d6a
└           0000:0da7      ret
```

### Function 0x00000da8
```asm
; CALL XREFS from fcn.000007f1 @ +0x381, +0x3b5, +0x4bc, +0x4e8, +0x523
┌ fcn.00000da8();
│           0000:0da8      mov   al, byte [0x93]                       ; [0x93:1]=67
│           0000:0dab      or    al, al
│       ┌─< 0000:0dad      jne   0xdb0
│       │   0000:0daf      ret
│       └─> 0000:0db0      cmp   al, 4                                 ; str.0G: ; ",0G:\xa0?\xaf>\xeeAZFi@l2g8\x8aB\xaeA1:\xd0CuF\xbdF\xbaG\x9fA\xddJ-K\xb4LfPfP\U0000000e\a\xbf\x97P3\xc0\xb9\x80"
│           0000:0db2      mov   al, 1
│       ┌─< 0000:0db4      jae   0xdb7
│       │   0000:0db6      ret
│       └─> 0000:0db7      mov   al, 2
└           0000:0db9      ret
```

### Function 0x00000e4b
```asm
; CALL XREF from fcn.000007f1 @ +0x25a
┌ fcn.00000e4b(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:0e4b      mov   cl, byte [0x84]                       ; [0x84:1]=3
│           0000:0e4f      mov   al, 0x24                              ; '$'
│           0000:0e51      mul   cl
│           0000:0e53      mov   cl, byte [0x83]                       ; [0x83:1]=25
│           0000:0e57      add   cl, 4
│           0000:0e5a      xor   ch, ch
│           0000:0e5c      add   ax, cx                                ; arg4
│           0000:0e5e      add   ax, word [0xff31]                     ; arg1
│           0000:0e62      mov   si, ax                                ; arg1
│           0000:0e64      call  fcn.000016a9                          ; fcn.000016a9
│           0000:0e67      mov   di, 0x508e
│           0000:0e6a      push  cs
│           0000:0e6b      pop   es
│           0000:0e6c      mov   cx, 3
│       ┌─> 0000:0e6f      movsw word es:[di], word ptr [si]
│       ╎   0000:0e70      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0e71      add   si, 0x21
│       ╎   0000:0e74      call  fcn.000016a9                          ; fcn.000016a9
│       └─< 0000:0e77      loop  0xe6f
└           0000:0e79      ret
```

### Function 0x00000e7a
```asm
; CALL XREF from fcn.00000118 @ 0xbb
┌ fcn.00000e7a(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0e7a      mov   al, byte [0x506d]                     ; [0x506d:1]=255
│           0000:0e7d      neg   al
│           0000:0e7f      add   al, 0x12
│           0000:0e81      mov   cl, al
│           0000:0e83      test  byte [0xff43], 0xff
│       ┌─< 0000:0e88      jne   0xe97
│       │   0000:0e8a      mov   al, byte [0x84]                       ; [0x84:1]=3
│       │   0000:0e8d      sub   al, 2
│       │   0000:0e8f      cmp   al, cl
│      ┌──< 0000:0e91      jne   0xe96
│      ││   0000:0e93      call  0x11b2
│      └──> 0000:0e96      ret
│       └─> 0000:0e97      mov   al, byte [0x84]                       ; [0x84:1]=3
│           0000:0e9a      sub   al, 5
│           0000:0e9c      cmp   cl, al
│       ┌─< 0000:0e9e      jae   0xea1
│       │   0000:0ea0      ret
│      ┌└─> 0000:0ea1      jne   0xea9
│      │    0000:0ea3      call  fcn.00000fa4                          ; fcn.00000fa4
│      │┌─< 0000:0ea6      jmp   0x11b2
│      └──> 0000:0ea9      add   al, 0xa
│       │   0000:0eab      cmp   al, cl
│      ┌──< 0000:0ead      je    0xeb0
│      ││   0000:0eaf      ret
│     ┌└──> 0000:0eb0      jmp   0x106d
..
  │││││││   ; CODE XREF from fcn.00000e7a @ +0xaf
  │││ │││   ; CODE XREF from fcn.00000e7a @ +0x84
   │ ││││   ; CODE XREFS from fcn.00000e7a @ +0x60, +0x8d
     ││ │   ; CALL XREF from fcn.00000e7a @ 0xea3
     ││ │   ; CALL XREF from fcn.00000e7a @ 0x1082
     ││ │   ; CALL XREF from fcn.00000fa4 @ 0xfb1
│    ││ │   ; DATA XREF from fcn.00001614 @ +0x7d
│    ││ │   ; DATA XREF from fcn.00000641 @ 0x687
│    ││ │   ; DATA XREF from fcn.000006cb @ 0x6ef
│    ││ │   ; DATA XREF from fcn.00001023 @ +0x21b
     ││ │   ; CALL XREF from fcn.00000e7a @ 0x107f
│    ││ │   ; CODE XREF from fcn.00000e7a @ 0xeb0
│    ││ │   ; CODE XREF from fcn.00000e7a @ +0x118
│    └└───> 0000:106d      test  byte [0xff43], 0xff                   ; arg1
│      ┌──< 0000:1072      jne   0x1075
│      ││   0000:1074      ret
│      └──> 0000:1075      mov   byte [0xff44], 0xff                   ; [0xff:1]=232
│       │   0000:107a      push  es
│       │   0000:107b      push  ds
│       │   0000:107c      push  di
│       │   0000:107d      push  si
│       │   0000:107e      push  bx                                    ; arg3
│       │   0000:107f      call  fcn.00001023                          ; fcn.00001023
│       │   0000:1082      call  fcn.00000fbf                          ; fcn.00000fbf
│       │   0000:1085      mov   bl, byte cs:[0x92]
│       │   0000:108a      dec   bl
│       │   0000:108c      xor   bh, bh
│       │   0000:108e      mov   al, byte cs:[bx + 0x4199]
│       │   0000:1093      mov   byte cs:[0x5071], al
│       │   0000:1097      mov   ds, word cs:[0xff2c]
│       │   0000:109c      mov   ax, 0xa000
│       │   0000:109f      mov   es, ax
│       │   0000:10a1      mov   di, word cs:[0x5072]
│       │   0000:10a6      mov   si, word cs:[0x5074]
│       │   0000:10ab      mov   dx, 0x3c4
│       │   0000:10ae      mov   ax, 0x702
│       │   0000:10b1      out   dx, ax
│       │   0000:10b2      mov   dx, 0x3ce
│       │   0000:10b5      mov   ax, 0x205
│       │   0000:10b8      out   dx, ax
│       │   0000:10b9      mov   al, 8
│       │   0000:10bb      out   dx, al
│       │   0000:10bc      inc   dx
│       │   0000:10bd      mov   cx, 4
│       │   ; CODE XREF from fcn.00000e7a @ 0x118b
│      ┌──> 0000:10c0      push  cx                                    ; 0x4 ; ",0G:\xa0?\xaf>\xeeAZFi@l2g8\x8aB\xaeA1:\xd0CuF\xbdF\xbaG\x9fA\xddJ-K\xb4LfPfP\U0000000e\a\xbf\x97P3\xc0\xb9\x80"
│      ╎│   0000:10c1      mov   cx, 4
│      ╎│   ; CODE XREF from fcn.00000e7a @ 0x117f
│     ┌───> 0000:10c4      push  cx                                    ; 0x4 ; ",0G:\xa0?\xaf>\xeeAZFi@l2g8\x8aB\xaeA1:\xd0CuF\xbdF\xbaG\x9fA\xddJ-K\xb4LfPfP\U0000000e\a\xbf\x97P3\xc0\xb9\x80"
│     ╎╎│   0000:10c5      lodsb al, byte [si]
│     ╎╎│   0000:10c6      push  si
│     ╎╎│   0000:10c7      mov   bx, 0x280
│     ╎╎│   0000:10ca      cmp   al, 0xff
│    ┌────< 0000:10cc      jne   0x10d1
│   ┌─────< 0000:10ce      jmp   0x1177
│   │└────> 0000:10d1      xor   ah, ah
│   │ ╎╎│   0000:10d3      add   ax, ax
│   │ ╎╎│   0000:10d5      add   ax, ax
│   │ ╎╎│   0000:10d7      add   ax, ax
│   │ ╎╎│   0000:10d9      add   ax, ax
│   │ ╎╎│   0000:10db      mov   si, ax
│   │ ╎╎│   0000:10dd      add   si, word [0xb000]
│   │ ╎╎│   0000:10e1      mov   cl, byte cs:[0x5071]
│   │ ╎╎│   0000:10e6      mov   bx, 0x50                              ; 'P'
│   │ ╎╎│   0000:10e9      lodsw ax, word [si]
│   │ ╎╎│   0000:10ea      out   dx, al
│   │ ╎╎│   0000:10eb      mov   al, cl
│   │ ╎╎│   0000:10ed      xchg  byte es:[di], al
│   │ ╎╎│   0000:10f0      mov   al, ah
│   │ ╎╎│   0000:10f2      out   dx, al
│   │ ╎╎│   0000:10f3      mov   al, cl
│   │ ╎╎│   0000:10f5      xchg  byte es:[di + 1], al
│   │ ╎╎│   0000:10f9      add   di, bx
│   │ ╎╎│   0000:10fb      lodsw ax, word [si]
│   │ ╎╎│   0000:10fc      out   dx, al
│   │ ╎╎│   0000:10fd      mov   al, cl
│   │ ╎╎│   0000:10ff      xchg  byte es:[di], al
│   │ ╎╎│   0000:1102      mov   al, ah
│   │ ╎╎│   0000:1104      out   dx, al
│   │ ╎╎│   0000:1105      mov   al, cl
│   │ ╎╎│   0000:1107      xchg  byte es:[di + 1], al
│   │ ╎╎│   0000:110b      add   di, bx
│   │ ╎╎│   0000:110d      lodsw ax, word [si]
│   │ ╎╎│   0000:110e      out   dx, al
│   │ ╎╎│   0000:110f      mov   al, cl
│   │ ╎╎│   0000:1111      xchg  byte es:[di], al
│   │ ╎╎│   0000:1114      mov   al, ah
│   │ ╎╎│   0000:1116      out   dx, al
│   │ ╎╎│   0000:1117      mov   al, cl
│   │ ╎╎│   0000:1119      xchg  byte es:[di + 1], al
│   │ ╎╎│   0000:111d      add   di, bx
│   │ ╎╎│   0000:111f      lodsw ax, word [si]
│   │ ╎╎│   0000:1120      out   dx, al
│   │ ╎╎│   0000:1121      mov   al, cl
│   │ ╎╎│   0000:1123      xchg  byte es:[di], al
│   │ ╎╎│   0000:1126      mov   al, ah
│   │ ╎╎│   0000:1128      out   dx, al
│   │ ╎╎│   0000:1129      mov   al, cl
│   │ ╎╎│   0000:112b      xchg  byte es:[di + 1], al
│   │ ╎╎│   0000:112f      add   di, bx
│   │ ╎╎│   0000:1131      lodsw ax, word [si]
│   │ ╎╎│   0000:1132      out   dx, al
│   │ ╎╎│   0000:1133      mov   al, cl
│   │ ╎╎│   0000:1135      xchg  byte es:[di], al
│   │ ╎╎│   0000:1138      mov   al, ah
│   │ ╎╎│   0000:113a      out   dx, al
│   │ ╎╎│   0000:113b      mov   al, cl
│   │ ╎╎│   0000:113d      xchg  byte es:[di + 1], al
│   │ ╎╎│   0000:1141      add   di, bx
│   │ ╎╎│   0000:1143      lodsw ax, word [si]
│   │ ╎╎│   0000:1144      out   dx, al
│   │ ╎╎│   0000:1145      mov   al, cl
│   │ ╎╎│   0000:1147      xchg  byte es:[di], al
│   │ ╎╎│   0000:114a      mov   al, ah
│   │ ╎╎│   0000:114c      out   dx, al
│   │ ╎╎│   0000:114d      mov   al, cl
│   │ ╎╎│   0000:114f      xchg  byte es:[di + 1], al
│   │ ╎╎│   0000:1153      add   di, bx
│   │ ╎╎│   0000:1155      lodsw ax, word [si]
│   │ ╎╎│   0000:1156      out   dx, al
│   │ ╎╎│   0000:1157      mov   al, cl
│   │ ╎╎│   0000:1159      xchg  byte es:[di], al
│   │ ╎╎│   0000:115c      mov   al, ah
│   │ ╎╎│   0000:115e      out   dx, al
│   │ ╎╎│   0000:115f      mov   al, cl
│   │ ╎╎│   0000:1161      xchg  byte es:[di + 1], al
│   │ ╎╎│   0000:1165      add   di, bx
│   │ ╎╎│   0000:1167      lodsw ax, word [si]
│   │ ╎╎│   0000:1168      out   dx, al
│   │ ╎╎│   0000:1169      mov   al, cl
│   │ ╎╎│   0000:116b      xchg  byte es:[di], al
│   │ ╎╎│   0000:116e      mov   al, ah
│   │ ╎╎│   0000:1170      out   dx, al
│   │ ╎╎│   0000:1171      mov   al, cl
│   │ ╎╎│   0000:1173      xchg  byte es:[di + 1], al
│   │ ╎╎│   ; CODE XREF from fcn.00000e7a @ 0x10ce
│   └─────> 0000:1177      add   di, bx
│     ╎╎│   0000:1179      pop   si
│     ╎╎│   0000:117a      pop   cx
│    ┌────< 0000:117b      loop  0x117f
│   ┌─────< 0000:117d      jmp   0x1182
│   │└└───< 0000:117f      jmp   0x10c4
│   │  ╎│   ; CODE XREF from fcn.00000e7a @ 0x117d
│   └─────> 0000:1182      add   di, 0xf602
│      ╎│   0000:1186      pop   cx
│     ┌───< 0000:1187      loop  0x118b
│    ┌────< 0000:1189      jmp   0x118e
│    │└└──< 0000:118b      jmp   0x10c0
│    │  │   ; CODE XREF from fcn.00000e7a @ 0x1189
│    └────> 0000:118e      dec   dx
│       │   0000:118f      mov   ax, 5
│       │   0000:1192      out   dx, ax
│       │   0000:1193      mov   ax, 0xff08
│       │   0000:1196      out   dx, ax
│       │   0000:1197      pop   bx
│       │   0000:1198      pop   si
│       │   0000:1199      pop   di
│       │   0000:119a      pop   ds
│       │   0000:119b      pop   es
│       │   0000:119c      ret
..
│      ││   ; CODE XREFS from fcn.00000e7a @ 0xe93, 0xea6
│      │└─> 0000:11b2      test  byte [0xff37], 0xff
│      │┌─< 0000:11b7      je    0x11ba
│      ││   0000:11b9      ret
│      │└─> 0000:11ba      mov   byte [0xff37], 0xff                   ; [0xff:1]=232
│      │    ; CODE XREF from fcn.00001023 @ +0x18d
│      └──> 0000:11bf      push  es
│           0000:11c0      push  ds
│           0000:11c1      push  si
│           0000:11c2      push  di
│           0000:11c3      push  bx
│           0000:11c4      mov   ax, 0xa000
│           0000:11c7      mov   es, ax
│           0000:11c9      mov   ds, ax
│           0000:11cb      mov   si, 0x3e90
│           0000:11ce      mov   di, word cs:[0x506b]
│           0000:11d3      mov   cx, 3
│       ┌─> 0000:11d6      push  cx
│       ╎   0000:11d7      mov   cx, 3
│      ┌──> 0000:11da      push  cx
│      ╎╎   0000:11db      push  di
│      ╎╎   0000:11dc      call  fcn.00000730                          ; fcn.00000730
│      ╎╎   0000:11df      pop   di
│      ╎╎   0000:11e0      inc   di
│      ╎╎   0000:11e1      inc   di
│      ╎╎   0000:11e2      pop   cx
│      └──< 0000:11e3      loop  0x11da
│       ╎   0000:11e5      add   di, 0x27a
│       ╎   0000:11e9      pop   cx
│       └─< 0000:11ea      loop  0x11d6
│           0000:11ec      pop   bx
│           0000:11ed      pop   di
│           0000:11ee      pop   si
│           0000:11ef      pop   ds
│           0000:11f0      pop   es
└           0000:11f1      ret
```

### Function 0x00000fa4
```asm
; CALL XREF from fcn.00000e7a @ 0xea3
┌ fcn.00000fa4(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0fa4      test  byte [0xff44], 0xff
│       ┌─< 0000:0fa9      jne   0xfac
│       │   0000:0fab      ret
│       └─> 0000:0fac      push  es
│           0000:0fad      push  ds
│           0000:0fae      push  di
│           0000:0faf      push  si
│           0000:0fb0      push  bx                                    ; arg3
│           0000:0fb1      call  fcn.00000ff1                          ; fcn.00000ff1
│           0000:0fb4      pop   bx
│           0000:0fb5      pop   si
│           0000:0fb6      pop   di
│           0000:0fb7      pop   ds
│           0000:0fb8      pop   es
│           0000:0fb9      mov   byte [0xff44], 0
└           0000:0fbe      ret
```

### Function 0x00000fbf
```asm
; CALL XREF from fcn.00000e7a @ 0x1082
┌ fcn.00000fbf();
│           0000:0fbf      mov   si, word cs:[0x5072]
│           0000:0fc4      mov   ax, 0xa000
│           0000:0fc7      mov   es, ax
│           0000:0fc9      mov   ds, ax
│           0000:0fcb      mov   di, 0x3f20                            ; ' ?'
│           0000:0fce      mov   dx, 0x3c4
│           0000:0fd1      mov   ax, 0x702
│           0000:0fd4      out   dx, ax
│           0000:0fd5      mov   dx, 0x3ce
│           0000:0fd8      mov   ax, 0x105
│           0000:0fdb      out   dx, ax
│           0000:0fdc      mov   cx, 0x20
│       ┌─> 0000:0fdf      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0fe0      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0fe1      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0fe2      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0fe3      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0fe4      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0fe5      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0fe6      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0fe7      add   si, 0x48
│       └─< 0000:0fea      loop  0xfdf
│           0000:0fec      mov   ax, 5
│           0000:0fef      out   dx, ax
└           0000:0ff0      ret
```

### Function 0x00000ff1
```asm
; CALL XREF from fcn.00000fa4 @ 0xfb1
┌ fcn.00000ff1();
│           0000:0ff1      mov   di, word cs:[0x5072]
│           0000:0ff6      mov   ax, 0xa000
│           0000:0ff9      mov   es, ax
│           0000:0ffb      mov   ds, ax
│           0000:0ffd      mov   si, 0x3f20                            ; ' ?'
│           ; DATA XREF from fcn.00001614 @ +0x7d
│           0000:1000      mov   dx, 0x3c4
│           ; DATA XREF from fcn.00000641 @ 0x687
│           ; DATA XREF from fcn.000006cb @ 0x6ef
│           ; DATA XREF from fcn.00001023 @ +0x21b
│           0000:1003      mov   ax, 0x702
│           0000:1006      out   dx, ax
│           0000:1007      mov   dx, 0x3ce
│           0000:100a      mov   ax, 0x105
│           0000:100d      out   dx, ax
│           0000:100e      mov   cx, 0x20
│       ┌─> 0000:1011      movsb byte es:[di], byte ptr [si]
│       ╎   0000:1012      movsb byte es:[di], byte ptr [si]
│       ╎   0000:1013      movsb byte es:[di], byte ptr [si]
│       ╎   0000:1014      movsb byte es:[di], byte ptr [si]
│       ╎   0000:1015      movsb byte es:[di], byte ptr [si]
│       ╎   0000:1016      movsb byte es:[di], byte ptr [si]
│       ╎   0000:1017      movsb byte es:[di], byte ptr [si]
│       ╎   0000:1018      movsb byte es:[di], byte ptr [si]
│       ╎   0000:1019      add   di, 0x48
│       └─< 0000:101c      loop  0x1011
│           0000:101e      mov   ax, 5
│           0000:1021      out   dx, ax
└           0000:1022      ret
```

### Function 0x00001023
```asm
; CALL XREF from fcn.00000e7a @ 0x107f
┌ fcn.00001023(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:1023      mov   al, byte [0x84]                       ; [0x84:1]=3
│           0000:1026      add   al, byte [0x5076]                     ; [0x5076:1]=255
│           0000:102a      and   al, 0x3f
│           0000:102c      mov   cl, 0x24                              ; '$'
│           0000:102e      mul   cl
│           0000:1030      mov   cl, byte [0x83]                       ; [0x83:1]=25
│           0000:1034      add   cl, byte [0x5077]                     ; [0x5077:1]=255
│           0000:1038      add   cl, 4
│           0000:103b      xor   ch, ch
│           0000:103d      add   ax, cx                                ; arg4
│           0000:103f      mov   si, ax                                ; arg1
│           0000:1041      add   si, word [0xff31]
│           0000:1045      call  fcn.000016a9                          ; fcn.000016a9
│           0000:1048      mov   cx, 4
│       ┌─> 0000:104b      push  cx                                    ; 0x4 ; ",0G:\xa0?\xaf>\xeeAZFi@l2g8\x8aB\xaeA1:\xd0CuF\xbdF\xbaG\x9fA\xddJ-K\xb4LfPfP\U0000000e\a\xbf\x97P3\xc0\xb9\x80"
│       ╎   0000:104c      mov   cx, 4
│      ┌──> 0000:104f      push  cx                                    ; 0x4 ; ",0G:\xa0?\xaf>\xeeAZFi@l2g8\x8aB\xaeA1:\xd0CuF\xbdF\xbaG\x9fA\xddJ-K\xb4LfPfP\U0000000e\a\xbf\x97P3\xc0\xb9\x80"
│      ╎╎   0000:1050      mov   bl, byte [si]
│      ╎╎   0000:1052      inc   si
│      ╎╎   0000:1053      and   bl, 0x7f
│      ╎╎   0000:1056      xor   bh, bh
│      ╎╎   0000:1058      add   bx, bx
│      ╎╎   0000:105a      mov   word [bx + 0x5097], 0
│      ╎╎   0000:1060      pop   cx
│      └──< 0000:1061      loop  0x104f
│       ╎   0000:1063      add   si, 0x20
│       ╎   0000:1066      call  fcn.000016a9                          ; fcn.000016a9
│       ╎   0000:1069      pop   cx
│       └─< 0000:106a      loop  0x104b
└           0000:106c      ret
```

### Function 0x000012ea
```asm
; CALL XREF from fcn.00001023 @ +0x29a
┌ fcn.000012ea(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:12ea      cmp   byte [di], 0xff
│       ┌─< 0000:12ed      jne   0x12f0
│       │   0000:12ef      ret
│       └─> 0000:12f0      cmp   byte [di], 0xfc
│       ┌─< 0000:12f3      jne   0x12f6
│       │   0000:12f5      ret
│       └─> 0000:12f6      push  ds
│           0000:12f7      push  di
│           0000:12f8      push  si
│           0000:12f9      push  bx                                    ; arg3
│           0000:12fa      push  ax                                    ; arg1
│           0000:12fb      mov   ah, byte [0x5078]                     ; [0x5078:1]=255
│           0000:12ff      dec   ah
│           0000:1301      shr   ah, 1
│           0000:1303      shr   ah, 1
│           0000:1305      shr   ah, 1
│           0000:1307      sbb   ah, ah
│           0000:1309      xor   ah, 0xcc
│           0000:130c      mov   dx, 0x3ce
│           0000:130f      mov   al, 8
│           0000:1311      out   dx, ax
│           0000:1312      add   bx, bx                                ; arg3
│           0000:1314      add   bx, word [0x5069]                     ; [0x5069:2]=0xffff ; arg3
│           0000:1318      mov   di, bx                                ; arg3
│           0000:131a      pop   ax
│           0000:131b      test  al, 0xff
│       ┌─< 0000:131d      je    0x137d
│       │   0000:131f      mov   cl, 0x30                              ; '0'
│       │   0000:1321      mul   cl
│       │   0000:1323      add   ax, 0x8000                            ; int16_t arg1
│       │   0000:1326      mov   si, ax
│       │   0000:1328      mov   ds, word cs:[0xff2c]
│       │   0000:132d      mov   dx, 0x3c4
│       │   0000:1330      mov   al, 2
│       │   0000:1332      out   dx, al
│       │   0000:1333      inc   dx
│       │   0000:1334      push  si
│       │   0000:1335      push  di
│       │   0000:1336      mov   al, byte cs:[0x5078]
│       │   0000:133a      and   al, 3
│       │   0000:133c      neg   al
│       │   0000:133e      add   al, 3
│       │   0000:1340      call  fcn.000013b5                          ; fcn.000013b5
│       │   0000:1343      call  fcn.00001359                          ; fcn.00001359
│       │   0000:1346      pop   di
│       │   0000:1347      pop   si
│       │   0000:1348      mov   al, byte cs:[0x5078]
│       │   0000:134c      call  fcn.000013b5                          ; fcn.000013b5
│       │   0000:134f      inc   di
│       │   0000:1350      inc   si
│       │   0000:1351      call  fcn.00001359                          ; fcn.00001359
│       │   0000:1354      pop   bx
│       │   0000:1355      pop   si
│       │   0000:1356      pop   di
│       │   0000:1357      pop   ds
│       │   0000:1358      ret
        │   ; CALL XREFS from fcn.000012ea @ 0x1343, 0x1351
..
│       └─> 0000:137d      mov   dx, 0x3c4
│           0000:1380      mov   ax, 0x702                             ; int16_t arg1
│           0000:1383      out   dx, ax
│           0000:1384      push  di
│           0000:1385      mov   al, byte cs:[0x5078]
│           0000:1389      and   al, 3
│           0000:138b      neg   al
│           0000:138d      add   al, 3
│           0000:138f      call  fcn.000013b5                          ; fcn.000013b5
│           0000:1392      call  fcn.000013a6                          ; fcn.000013a6
│           0000:1395      pop   di
│           0000:1396      mov   al, byte cs:[0x5078]
│           0000:139a      call  fcn.000013b5                          ; fcn.000013b5
│           0000:139d      inc   di
│           0000:139e      call  fcn.000013a6                          ; fcn.000013a6
│           0000:13a1      pop   bx
│           0000:13a2      pop   si
│           0000:13a3      pop   di
│           0000:13a4      pop   ds
└           0000:13a5      ret
```

### Function 0x00001359
```asm
; CALL XREFS from fcn.000012ea @ 0x1343, 0x1351
┌ fcn.00001359();
│           0000:1359      mov   cx, 2
│       ┌─> 0000:135c      mov   al, 1
│       ╎   0000:135e      out   dx, al
│       ╎   0000:135f      lodsb al, byte [si]
│       ╎   0000:1360      xchg  byte es:[di], al
│       ╎   0000:1363      inc   si
│       ╎   0000:1364      mov   al, 2
│       ╎   0000:1366      out   dx, al
│       ╎   0000:1367      lodsb al, byte [si]
│       ╎   0000:1368      xchg  byte es:[di], al
│       ╎   0000:136b      inc   si
│       ╎   0000:136c      mov   al, 4
│       ╎   0000:136e      out   dx, al
│       ╎   0000:136f      lodsb al, byte [si]
│       ╎   0000:1370      xchg  byte es:[di], al
│       ╎   0000:1373      add   di, 0x140
│       ╎   0000:1377      add   si, 0x13
│       └─< 0000:137a      loop  0x135c
└           0000:137c      ret
```

### Function 0x000013a6
```asm
; CALL XREFS from fcn.000012ea @ 0x1392, 0x139e
┌ fcn.000013a6();
│           0000:13a6      xor   al, al
│           0000:13a8      xchg  byte es:[di], al
│           0000:13ab      add   di, 0x140
│           0000:13af      xor   al, al
│           0000:13b1      xchg  byte es:[di], al
└           0000:13b4      ret
```

### Function 0x000013b5
```asm
; CALL XREFS from fcn.000012ea @ 0x1340, 0x134c, 0x138f, 0x139a
┌ fcn.000013b5(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:13b5      and   al, 3
│           0000:13b7      add   al, al
│           0000:13b9      xor   ah, ah
│           0000:13bb      mov   bx, 0x43c8
│           0000:13be      add   bx, ax                                ; arg1
│           0000:13c0      mov   al, byte cs:[bx]
│           0000:13c3      add   si, ax                                ; arg1
│           0000:13c5      mov   al, byte cs:[bx + 1]
│           0000:13c9      add   di, ax                                ; arg1
└           0000:13cb      ret
```

### Function 0x00001404
```asm
; CALL XREFS from fcn.000013b5 @ +0x41, +0x49
┌ fcn.00001404();
│           0000:1404      mov   al, byte [0x5067]                     ; [0x5067:1]=255
│           0000:1407      dec   al
│           0000:1409      mov   bl, al
│           0000:140b      add   al, 0x19
│           0000:140d      mov   dl, al
│           0000:140f      mov   al, byte [0x5068]                     ; [0x5068:1]=255
│           0000:1412      dec   al
│           0000:1414      mov   bh, al
│           0000:1416      add   al, 0x19
│           0000:1418      mov   dh, al
│           0000:141a      call  0x144c
│           0000:141d      mov   al, byte [0x5067]                     ; [0x5067:1]=255
│           0000:1420      sub   al, 5
│           0000:1422      mov   bl, al
│           0000:1424      add   al, 0x21
│           0000:1426      mov   dl, al
│           0000:1428      mov   al, byte [0x5068]                     ; [0x5068:1]=255
│           0000:142b      sub   al, 5
│           0000:142d      mov   bh, al
│           0000:142f      add   al, 0x21
│           0000:1431      mov   dh, al
│           0000:1433      call  0x144c
│           0000:1436      mov   al, byte [0x5067]                     ; [0x5067:1]=255
│           0000:1439      sub   al, 9
│           0000:143b      mov   bl, al
│           0000:143d      add   al, 0x29
│           0000:143f      mov   dl, al
│           0000:1441      mov   al, byte [0x5068]                     ; [0x5068:1]=255
│           0000:1444      sub   al, 9
│           0000:1446      mov   bh, al
│           0000:1448      add   al, 0x29
│           0000:144a      mov   dh, al
│           ; CALL XREFS from fcn.00001404 @ 0x141a, 0x1433
│           0000:144c      mov   cx, 9
│       ┌─> 0000:144f      push  cx
│       ╎   0000:1450      push  dx
│       ╎   0000:1451      push  bx
│       ╎   0000:1452      call  fcn.0000147e                          ; fcn.0000147e
│       ╎   0000:1455      pop   bx
│       ╎   0000:1456      pop   dx
│       ╎   0000:1457      sub   bl, 0xc
│      ┌──< 0000:145a      jae   0x145e
│      │╎   0000:145c      xor   bl, bl
│      └──> 0000:145e      sub   bh, 0xc
│      ┌──< 0000:1461      jae   0x1465
│      │╎   0000:1463      xor   bh, bh
│      └──> 0000:1465      add   dl, 0xc
│      ┌──< 0000:1468      jae   0x146c
│      │╎   0000:146a      mov   dl, 0xff
│      └──> 0000:146c      add   dh, 0xc
│      ┌──< 0000:146f      jae   0x1473
│      │╎   0000:1471      mov   dh, 0xff
│      └──> 0000:1473      push  dx
│       ╎   0000:1474      push  bx
│       ╎   0000:1475      call  fcn.000015e1                          ; fcn.000015e1
│       ╎   0000:1478      pop   bx
│       ╎   0000:1479      pop   dx
│       ╎   0000:147a      pop   cx
│       └─< 0000:147b      loop  0x144f
└           0000:147d      ret
```

### Function 0x0000147e
```asm
; CALL XREF from fcn.00001404 @ 0x1452
┌ fcn.0000147e(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:147e      push  dx                                    ; arg2
│           0000:147f      mov   ax, 0xa000
│           0000:1482      mov   es, ax
│           0000:1484      mov   dx, 0x3c4
│           0000:1487      mov   ax, 0x702
│           0000:148a      out   dx, ax
│           0000:148b      mov   dx, 0x3ce
│           0000:148e      mov   ax, 0x205                             ; int16_t arg2
│           0000:1491      out   dx, ax
│           0000:1492      pop   dx
│           0000:1493      push  dx
│           0000:1494      push  bx                                    ; arg3
│           0000:1495      mov   dh, bh
│           0000:1497      call  fcn.00001522                          ; fcn.00001522
│           0000:149a      pop   bx
│           0000:149b      pop   dx
│           0000:149c      push  dx
│           0000:149d      push  bx
│           0000:149e      mov   bh, dh
│           0000:14a0      call  fcn.00001522                          ; fcn.00001522
│           0000:14a3      pop   bx
│           0000:14a4      pop   dx                                    ; int16_t arg2
│           0000:14a5      push  dx
│           0000:14a6      push  bx
│           0000:14a7      mov   dl, bl
│           0000:14a9      call  fcn.000014bf                          ; fcn.000014bf
│           0000:14ac      pop   bx
│           0000:14ad      pop   dx                                    ; int16_t arg2
│           0000:14ae      mov   bl, dl
│           0000:14b0      call  fcn.000014bf                          ; fcn.000014bf
│           0000:14b3      mov   dx, 0x3ce
│           0000:14b6      mov   ax, 5
│           0000:14b9      out   dx, ax
│           0000:14ba      mov   ax, 0xff08
│           0000:14bd      out   dx, ax
└           0000:14be      ret
```

### Function 0x000014bf
```asm
; CALL XREFS from fcn.0000147e @ 0x14a9, 0x14b0
┌ fcn.000014bf(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:14bf      cmp   dh, bh
│       ┌─< 0000:14c1      jae   0x14c5
│       │   0000:14c3      xchg  bx, dx                                ; arg2
│       └─> 0000:14c5      or    bl, bl
│       ┌─< 0000:14c7      jne   0x14ca
│       │   0000:14c9      ret
│       └─> 0000:14ca      cmp   bl, 0xdf
│       ┌─< 0000:14cd      jb    0x14d0
│       │   0000:14cf      ret
│       └─> 0000:14d0      or    bh, bh
│       ┌─< 0000:14d2      jne   0x14d6
│       │   0000:14d4      mov   bh, 1
│       └─> 0000:14d6      cmp   dh, 0x8f
│       ┌─< 0000:14d9      jb    0x14dd
│       │   0000:14db      mov   dh, 0x8e
│       └─> 0000:14dd      mov   al, dh
│           0000:14df      sub   al, bh
│           0000:14e1      inc   al
│           0000:14e3      push  ax                                    ; arg1
│           0000:14e4      mov   al, bh
│           0000:14e6      call  fcn.000015d7                          ; fcn.000015d7
│           0000:14e9      mov   al, bl
│           0000:14eb      shr   al, 1
│           0000:14ed      shr   al, 1
│           0000:14ef      xor   ah, ah
│           0000:14f1      add   di, ax
│           0000:14f3      pop   cx
│           0000:14f4      xor   ch, ch
│           0000:14f6      and   bl, 3
│       ┌─< 0000:14f9      je    0x150e
│       │   0000:14fb      cmp   bl, 2
│      ┌──< 0000:14fe      jb    0x150a
│     ┌───< 0000:1500      je    0x1506
│     │││   0000:1502      mov   ah, 3
│    ┌────< 0000:1504      jmp   0x1510
│    │└───> 0000:1506      mov   ah, 0xc
│    │┌───< 0000:1508      jmp   0x1510
│    ││└──> 0000:150a      mov   ah, 0x30                              ; '0'
│    ││┌──< 0000:150c      jmp   0x1510
│    │││└─> 0000:150e      mov   ah, 0xc0
│    │││    ; CODE XREFS from fcn.000014bf @ 0x1504, 0x1508, 0x150c
│    └└└──> 0000:1510      mov   dx, 0x3ce
│           0000:1513      mov   al, 8
│           0000:1515      out   dx, ax
│       ┌─> 0000:1516      mov   al, byte [0x5078]                     ; [0x5078:1]=255
│       ╎   0000:1519      xchg  byte es:[di], al
│       ╎   0000:151c      add   di, 0x50
│       └─< 0000:151f      loop  0x1516
└           0000:1521      ret
```

### Function 0x00001522
```asm
; CALL XREFS from fcn.0000147e @ 0x1497, 0x14a0
┌ fcn.00001522(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:1522      cmp   dl, bl
│       ┌─< 0000:1524      jae   0x1528
│       │   0000:1526      xchg  bx, dx                                ; arg2
│       └─> 0000:1528      or    bh, bh
│       ┌─< 0000:152a      jne   0x152d
│       │   0000:152c      ret
│       └─> 0000:152d      cmp   bh, 0x8f
│       ┌─< 0000:1530      jb    0x1533
│       │   0000:1532      ret
│       └─> 0000:1533      or    bl, bl
│       ┌─< 0000:1535      jne   0x1539
│       │   0000:1537      mov   bl, 1
│       └─> 0000:1539      cmp   dl, 0xdf
│       ┌─< 0000:153c      jb    0x1540
│       │   0000:153e      mov   dl, 0xde
│       └─> 0000:1540      mov   al, bh
│           0000:1542      call  fcn.000015d7                          ; fcn.000015d7
│           0000:1545      mov   al, bl
│           0000:1547      shr   al, 1
│           0000:1549      shr   al, 1
│           0000:154b      xor   ah, ah
│           0000:154d      add   di, ax
│           0000:154f      mov   ah, dl
│           0000:1551      shr   ah, 1
│           0000:1553      shr   ah, 1
│           0000:1555      sub   ah, al
│           0000:1557      mov   cl, ah
│           0000:1559      xor   ch, ch
│           0000:155b      and   bl, 3
│       ┌─< 0000:155e      je    0x1573
│       │   0000:1560      cmp   bl, 2
│      ┌──< 0000:1563      jb    0x156f
│     ┌───< 0000:1565      je    0x156b
│     │││   0000:1567      mov   al, 3
│    ┌────< 0000:1569      jmp   0x1575
│    │└───> 0000:156b      mov   al, 0xf
│    │┌───< 0000:156d      jmp   0x1575
│    ││└──> 0000:156f      mov   al, 0x3f                              ; '?'
│    ││┌──< 0000:1571      jmp   0x1575
│    │││└─> 0000:1573      mov   al, 0xff
│    │││    ; CODE XREFS from fcn.00001522 @ 0x1569, 0x156d, 0x1571
│    └└└──> 0000:1575      and   dl, 3
│       ┌─< 0000:1578      je    0x158d
│       │   0000:157a      cmp   dl, 2
│      ┌──< 0000:157d      jb    0x1589
│     ┌───< 0000:157f      je    0x1585
│     │││   0000:1581      mov   ah, 0xff
│    ┌────< 0000:1583      jmp   0x158f
│    │└───> 0000:1585      mov   ah, 0xfc
│    │┌───< 0000:1587      jmp   0x158f
│    ││└──> 0000:1589      mov   ah, 0xf0
│    ││┌──< 0000:158b      jmp   0x158f
│    │││└─> 0000:158d      mov   ah, 0xc0
│    │││    ; CODE XREFS from fcn.00001522 @ 0x1583, 0x1587, 0x158b
│    └└└──> 0000:158f      push  ax
│           0000:1590      mov   dx, 0x3ce
│           0000:1593      mov   al, 8
│           0000:1595      out   dx, al
│           0000:1596      inc   dx
│           0000:1597      pop   ax
│       ┌─< 0000:1598      jcxz  0x15cd
│       │   0000:159a      dec   cx
│      ┌──< 0000:159b      jcxz  0x15bb
│      ││   0000:159d      out   dx, al
│      ││   0000:159e      mov   al, byte [0x5078]                     ; [0x5078:1]=255
│      ││   0000:15a1      xchg  byte es:[di], al
│      ││   0000:15a4      inc   di
│      ││   0000:15a5      mov   al, 0xff
│      ││   0000:15a7      out   dx, al
│     ┌───> 0000:15a8      mov   al, byte [0x5078]                     ; [0x5078:1]=255
│     ╎││   0000:15ab      xchg  byte es:[di], al
│     ╎││   0000:15ae      inc   di
│     └───< 0000:15af      loop  0x15a8
│      ││   0000:15b1      mov   al, ah
│      ││   0000:15b3      out   dx, al
│      ││   0000:15b4      mov   al, byte [0x5078]                     ; [0x5078:1]=255
│      ││   0000:15b7      xchg  byte es:[di], al
│      ││   0000:15ba      ret
│      └──> 0000:15bb      out   dx, al
│       │   0000:15bc      mov   al, byte [0x5078]                     ; [0x5078:1]=255
│       │   0000:15bf      xchg  byte es:[di], al
│       │   0000:15c2      inc   di
│       │   0000:15c3      mov   al, ah
│       │   0000:15c5      out   dx, al
│       │   0000:15c6      mov   al, byte [0x5078]                     ; [0x5078:1]=255
│       │   0000:15c9      xchg  byte es:[di], al
│       │   0000:15cc      ret
│       └─> 0000:15cd      and   al, ah
│           0000:15cf      out   dx, al
│           0000:15d0      mov   al, byte [0x5078]                     ; [0x5078:1]=255
│           0000:15d3      xchg  byte es:[di], al
└           0000:15d6      ret
```

### Function 0x000015d7
```asm
; CALL XREF from fcn.000014bf @ 0x14e6
            ; CALL XREF from fcn.00001522 @ 0x1542
┌ fcn.000015d7(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:15d7      mov   ah, 0x50                              ; 'P'
│           0000:15d9      mul   ah
│           0000:15db      mov   di, 0x46c
│           0000:15de      add   di, ax                                ; arg1
└           0000:15e0      ret
```

### Function 0x000015e1
```asm
; CALL XREF from fcn.00001404 @ 0x1475
┌ fcn.000015e1(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:15e1      mov   cl, byte [0xff33]
│           0000:15e5      shr   cl, 1
│           0000:15e7      inc   cl
│           0000:15e9      mov   al, 1
│           0000:15eb      mul   cl
│       ┌─> 0000:15ed      push  ax                                    ; arg1
│       ╎   0000:15ee      call  word cs:[fcn.00000110]                ; 0x110 ; "t\U00000003\xe8\U00000013"
│       ╎   0000:15f3      call  word cs:[fcn.00000112]                ; 0x112
│       ╎   0000:15f8      call  word cs:[fcn.00000114]                ; 0x114
│       ╎   0000:15fd      call  word cs:[fcn.00000116]                ; 0x116
│       ╎   0000:1602      call  word cs:[fcn.00000118]                ; 0x118
│       ╎   0000:1607      pop   ax
│       ╎   0000:1608      cmp   byte [0xff1a], al
│       └─< 0000:160c      jb    0x15ed
│           0000:160e      mov   byte [0xff1a], 0
└           0000:1613      ret
```

### Function 0x00001614
```asm
; CODE XREFS from fcn.000013b5 @ +0x39, +0x4c
┌ fcn.00001614();
│           0000:1614      mov   ax, 0xa000
│           0000:1617      mov   es, ax
│           0000:1619      mov   dx, 0x3c4
│           0000:161c      mov   ax, 0x702
│           0000:161f      out   dx, ax
│           0000:1620      mov   dx, 0x3ce
│           0000:1623      mov   ax, 0x1803
│           0000:1626      out   dx, ax
│           0000:1627      mov   ax, 0x205
│           0000:162a      out   dx, ax
│           0000:162b      mov   di, 0x46c
│           0000:162e      mov   cx, 8
│       ┌─> 0000:1631      push  cx
│       ╎   0000:1632      push  di
│       ╎   0000:1633      mov   cx, 0x12
│      ┌──> 0000:1636      push  cx
│      ╎╎   0000:1637      push  di
│      ╎╎   0000:1638      mov   cx, 0x38                              ; '8'
│     ┌───> 0000:163b      mov   al, 2
│     ╎╎╎   0000:163d      xchg  byte es:[di], al
│     ╎╎╎   0000:1640      inc   di
│     └───< 0000:1641      loop  0x163b
│      ╎╎   0000:1643      pop   di
│      ╎╎   0000:1644      add   di, 0x280
│      ╎╎   0000:1648      pop   cx
│      └──< 0000:1649      loop  0x1636
│       ╎   0000:164b      pop   di
│       ╎   0000:164c      add   di, 0x50
│       ╎   0000:164f      pop   cx
│       └─< 0000:1650      loop  0x1631
│           0000:1652      mov   dx, 0x3ce
│           0000:1655      mov   ax, 3
│           0000:1658      out   dx, ax
│           0000:1659      mov   ax, 5
│           0000:165c      out   dx, ax
└           0000:165d      ret
```

### Function 0x000016a9
```asm
; XREFS: CALL 0x00000118  CALL 0x0000037d  CALL 0x000003c6  
            ; XREFS: CALL 0x000003fc  CALL 0x00000437  CALL 0x000004c1  
            ; XREFS: CALL 0x0000052e  CALL 0x00000e64  CALL 0x00000e74  
            ; XREFS: CALL 0x00001045  CALL 0x00001066  CALL 0x000012c9  
┌ fcn.000016a9();
│           0000:16a9      cmp   si, 0xe900
│       ┌─< 0000:16ad      jae   0x16b0
│       │   0000:16af      ret
│       └─> 0000:16b0      sub   si, 0x900
└           0000:16b4      ret
```

### Function 0x000016b5
```asm
; CALL XREF from fcn.00000000 @ 0x4d
┌ fcn.000016b5();
│           0000:16b5      cmp   si, 0xe000
│       ┌─< 0000:16b9      jb    0x16bc
│       │   0000:16bb      ret
│       └─> 0000:16bc      add   si, 0x900
└           0000:16c0      ret
```

### Function 0x000017ea
```asm
; CALL XREF from fcn.000016b5 @ +0x11f
┌ fcn.000017ea(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:17ea      push  ds
│           0000:17eb      mov   cl, 0x30                              ; '0'
│           0000:17ed      mul   cl
│           0000:17ef      add   ax, 0x8000                            ; arg1
│           0000:17f2      mov   si, ax                                ; arg1
│           0000:17f4      mov   ds, word cs:[0xff2c]
│           0000:17f9      mov   ax, 0xa000
│           0000:17fc      mov   es, ax
│           0000:17fe      mov   di, word cs:[0x5069]
│           ; DATA XREF from fcn.00001614 @ 0x1623
│           0000:1803      mov   dx, 0x3c4
│           0000:1806      mov   al, 2
│           0000:1808      out   dx, al
│           0000:1809      inc   dx
│           0000:180a      mov   bx, 0x4e                              ; 'N'
│           0000:180d      mov   cx, 4
│       ┌─> 0000:1810      mov   al, 1
│       ╎   0000:1812      out   dx, al
│       ╎   0000:1813      movsw word es:[di], word ptr [si]
│       ╎   0000:1814      mov   al, 2
│       ╎   0000:1816      out   dx, al
│       ╎   0000:1817      lodsw ax, word [si]
│       ╎   0000:1818      mov   word es:[di - 2], ax
│       ╎   0000:181c      dec   di
│       ╎   0000:181d      dec   di
│       ╎   0000:181e      mov   al, 4
│       ╎   0000:1820      out   dx, al
│       ╎   0000:1821      movsw word es:[di], word ptr [si]
│       ╎   0000:1822      add   di, bx
│       ╎   0000:1824      mov   al, 1
│       ╎   0000:1826      out   dx, al
│       ╎   0000:1827      movsw word es:[di], word ptr [si]
│       ╎   0000:1828      mov   al, 2
│       ╎   0000:182a      out   dx, al
│       ╎   0000:182b      lodsw ax, word [si]
│       ╎   0000:182c      mov   word es:[di - 2], ax
│       ╎   0000:1830      dec   di
│       ╎   0000:1831      dec   di
│       ╎   0000:1832      mov   al, 4
│       ╎   0000:1834      out   dx, al
│       ╎   0000:1835      movsw word es:[di], word ptr [si]
│       ╎   0000:1836      add   di, bx
│       └─< 0000:1838      loop  0x1810
│           0000:183a      mov   al, 7
│           0000:183c      out   dx, al
│           0000:183d      mov   dx, 0x3ce
│           0000:1840      mov   ax, 0xa05
│           0000:1843      out   dx, ax
│           0000:1844      mov   bl, byte cs:[0x5078]
│           0000:1849      xor   bh, bh
│           0000:184b      add   bx, bx
│           0000:184d      call  word cs:[bx + 0x485c]
│           0000:1852      mov   ax, 0xff08
│           0000:1855      out   dx, ax
│           0000:1856      mov   ax, 0xf02
│           0000:1859      out   dx, ax
│           0000:185a      mov   ax, 5
│           0000:185d      out   dx, ax
│           0000:185e      pop   ds
└           0000:185f      ret
```

### Function 0x000018c8
```asm
; XREFS: CALL 0x00001870  CODE 0x00001879  CODE 0x00001881  
            ; XREFS: CALL 0x00001889  CODE 0x00001892  CALL 0x0000189a  
            ; XREFS: CALL 0x000018a3  CODE 0x000018ac  CALL 0x000018b4  
            ; XREFS: CALL 0x000018bd  CODE 0x000018c6  
┌ fcn.000018c8();
│           0000:18c8      mov   si, word cs:[0x5069]
│           0000:18cd      mov   di, 0x4f                              ; 'O'
│           0000:18d0      mov   al, 8
│           0000:18d2      mov   cx, 8
│       ┌─> 0000:18d5      mov   ah, byte es:[si]
│       ╎   0000:18d8      out   dx, ax
│       ╎   0000:18d9      mov   byte es:[si], bl
│       ╎   0000:18dc      inc   si
│       ╎   0000:18dd      mov   ah, byte es:[si]
│       ╎   0000:18e0      out   dx, ax
│       ╎   0000:18e1      mov   byte es:[si], bl
│       ╎   0000:18e4      add   si, di
│       └─< 0000:18e6      loop  0x18d5
└           0000:18e8      ret
```

### Function 0x00001e07
```asm
; CALL XREF from fcn.000018c8 @ +0x53c
┌ fcn.00001e07(short unsigned int arg1, short unsigned int arg3);
│           ; arg short unsigned int arg1 @ ax
│           ; arg short unsigned int arg3 @ bx
│           0000:1e07      or    bx, word [bx + si]                    ; arg3
│           0000:1e0a      add   byte [bp + di], ah
│           0000:1e0c      add   byte [bx + si], 0                     ; arg3
│           0000:1e0f      add   al, byte [bx + si + 0x280]            ; arg3
│           0000:1e13      add   word [bx + si], ax                    ; arg3
│           0000:1e15      add   byte [bx + si], al                    ; arg3
│           0000:1e17      add   word [bx + si], ax                    ; arg3
│           0000:1e19      add   byte [bx + si], al                    ; arg3
│           0000:1e1b      add   word [bx + si], ax                    ; arg3
│           ; DATA XREF from fcn.000018c8 @ +0xa2
│           0000:1e1d      add   byte [bx + si], al                    ; arg3
│           0000:1e1f      add   byte [bx + si], al                    ; arg3
│           0000:1e21      add   byte [bx + si], al                    ; arg3
│           0000:1e23      add   byte [bx + si], al                    ; arg3
│           0000:1e25      adc   byte [bx + si], dl                    ; arg3
│           0000:1e27      add   byte [bx + si], al                    ; arg3
│           0000:1e29      add   byte [si], al
│           0000:1e2b      add   byte [bx + si], al                    ; arg3
│           0000:1e2d      add   byte [bx + si], 0x80                  ; [0x80:1]=116 ; arg3
│           0000:1e30      add   ax, word [bx + si]                    ; arg3
│           0000:1e32      add   byte [bx + di + 0xc], dh              ; arg3
│           0000:1e35      add   byte [bx + si], al                    ; arg3
│           0000:1e37      cmp   ax, 0x38                              ; arg1
│           0000:1e3a      add   byte [bx], al                         ; arg3
│           0000:1e3c      lock  add byte [bx + si], al                ; arg3
│           0000:1e3f      xchg  di, ax                                ; arg1
│           0000:1e40      in    ax, 0
│           0000:1e42      add   byte [bx], cl                         ; arg3
│           0000:1e44      lock  add byte [bx + si], al                ; arg3
│           0000:1e47      pop   ds
│           0000:1e48      cmp   byte [bx + si], al                    ; arg3
│           0000:1e4a      add   byte [bx + di], bh                    ; arg3
│           0000:1e4c      push  cs
│           0000:1e4d      add   byte [bx + si], al                    ; arg3
│       ┌─< 0000:1e4f      loope 0x1e52
│       │   0000:1e51  ~   add   byte [bx + di], 0                     ; arg3
│       └─> 0000:1e52      add   word [bx + si], ax                    ; arg3
│           0000:1e54      add   byte [bx + si + 4], al                ; arg3
│           0000:1e57      add   byte [bx + si], al                    ; arg3
│           0000:1e59      or    byte [bx + si], dl                    ; arg3
│           0000:1e5b      add   byte [bx + si], al                    ; arg3
│           0000:1e5d      add   byte [bx + si], al                    ; arg3
│           0000:1e5f      add   byte [bx + si], al                    ; arg3
│           0000:1e61      add   byte [bx + si], al                    ; arg3
│           0000:1e63      add   byte [bx + si], al                    ; arg3
│           0000:1e65      add   byte [bx + si], al                    ; arg3
│           0000:1e67      add   byte [bx + si], al                    ; arg3
│           0000:1e69      add   byte [bx + si], al                    ; arg3
│           0000:1e6b      add   byte [bx + si], al                    ; arg3
│           0000:1e6d      add   byte [bx + si], al                    ; arg3
│           0000:1e6f      add   byte [bx + si], al                    ; arg3
│           0000:1e71      add   byte [bx + si], al                    ; arg3
│           0000:1e73      add   byte [bx + si], al                    ; arg3
│           0000:1e75      add   byte [bx + si], al                    ; arg3
│           0000:1e77      add   byte [bx + si], al                    ; arg3
│           0000:1e79      add   byte [bx + si], al                    ; arg3
│           0000:1e7b      add   byte [bx + si], al                    ; arg3
│           0000:1e7d      add   byte [bp + si - 0x55b6], dl
│       ┌─< 0000:1e81      jmp   0x1e83
│       │   ; CODE XREF from fcn.00001e07 @ 0x1e81
│       └─> 0000:1e83      add   byte [bx + si], al                    ; arg3
│           0000:1e85      add   byte [bx + si], al                    ; arg3
│           0000:1e87      add   byte [bx + si], al                    ; arg3
│           0000:1e89      add   byte [bx + si], al                    ; arg3
│           0000:1e8b      add   byte [bx + si], al                    ; arg3
│           0000:1e8d      add   byte [bx + si], al                    ; arg3
│           0000:1e8f      add   byte [bx + si], al                    ; arg3
│           0000:1e91      add   byte [bx + si], al                    ; arg3
│           0000:1e93      add   byte [bx + si], al                    ; arg3
│           0000:1e95      add   byte [bx + si], al                    ; arg3
│           0000:1e97      add   byte [bx + si], al                    ; arg3
│           0000:1e99      add   byte [bx + si], al                    ; arg3
│           0000:1e9b      add   byte [bx + si], al                    ; arg3
│           0000:1e9d      add   byte [bx + si], al                    ; arg3
│           0000:1e9f      add   byte [bx + si], al                    ; arg3
│           0000:1ea1      add   byte [bx + si], al                    ; arg3
│           0000:1ea3      add   byte [bx + si], al                    ; arg3
│           0000:1ea5      add   word [bx + si], ax                    ; arg3
│           0000:1ea7      add   byte [bx + si], al                    ; arg3
│           0000:1ea9      add   word [bx + si], ax                    ; arg3
│           0000:1eab      add   byte [bx + di], al                    ; arg3
│           0000:1ead      add   word [bx + si], ax                    ; arg3
│           0000:1eaf      add   byte [bx + si], al                    ; arg3
│           0000:1eb1      add   byte [bx + si], 0                     ; arg3
│           0000:1eb4      add   byte [bp + di], ch
│           0000:1eb8      add   word [di + 4], bx                     ; arg3
│           0000:1ebb      and   al, 0xae
└           0000:1ebd      out   dx, ax
```

## Cross-References (callers)
```json
  0x00000110:
[{"from":5614,"to":272,"type":"CALL"}]
  0x00000112:
[{"from":5619,"to":274,"type":"CALL"}]
  0x00000114:
[{"from":5624,"to":276,"type":"CALL"}]
  0x00000116:
[{"from":5629,"to":278,"type":"CALL"}]
  0x00000118:
[{"from":5634,"to":280,"type":"CALL"}]
  0x0000011a:
[{"from":435,"to":282,"type":"CALL"},{"from":2043,"to":282,"type":"CALL"},{"from":2078,"to":282,"type":"CALL"},{"from":2108,"to":282,"type":"CALL"},{"from":2135,"to":282,"type":"CALL"}]
  0x00000128:
[{"from":210,"to":296,"type":"CALL"},{"from":217,"to":296,"type":"CALL"},{"from":224,"to":296,"type":"CALL"},{"from":231,"to":296,"type":"CALL"},{"from":241,"to":296,"type":"CALL"},{"from":248,"to":296,"type":"CALL"},{"from":255,"to":296,"type":"CALL"},{"from":274,"to":296,"type":"CALL"}]
  0x00000270:
[{"from":343,"to":624,"type":"CALL"}]
  0x00000361:
[{"from":87,"to":865,"type":"CALL"}]
  0x0000039e:
[{"from":100,"to":926,"type":"CALL"},{"from":110,"to":926,"type":"CALL"},{"from":120,"to":926,"type":"CALL"},{"from":130,"to":926,"type":"CALL"},{"from":143,"to":926,"type":"CALL"},{"from":153,"to":926,"type":"CALL"},{"from":163,"to":926,"type":"CALL"}]
  0x000003e2:
[{"from":172,"to":994,"type":"CALL"}]
  0x0000041a:
[{"from":200,"to":1050,"type":"CALL"}]
  0x00000596:
[{"from":988,"to":1430,"type":"CALL"},{"from":1260,"to":1430,"type":"CALL"},{"from":1274,"to":1430,"type":"CALL"}]
  0x000005c3:
[{"from":920,"to":1475,"type":"CALL"},{"from":1047,"to":1475,"type":"CODE"},{"from":1127,"to":1475,"type":"CALL"},{"from":1172,"to":1475,"type":"CALL"},{"from":1376,"to":1475,"type":"CALL"},{"from":1421,"to":1475,"type":"CALL"},{"from":1462,"to":1475,"type":"CALL"}]
  0x0000062f:
[{"from":1565,"to":1583,"type":"CALL"},{"from":3645,"to":1583,"type":"CALL"}]
  0x00000641:
[{"from":1599,"to":1601,"type":"CODE"},{"from":3480,"to":1601,"type":"CALL"}]
  0x000006cb:
[{"from":1543,"to":1739,"type":"CALL"},{"from":3652,"to":1739,"type":"CALL"}]
  0x00000730:
[{"from":1555,"to":1840,"type":"CALL"},{"from":1577,"to":1840,"type":"CALL"},{"from":4572,"to":1840,"type":"CALL"}]
  0x00000768:
[{"from":1594,"to":1896,"type":"CALL"},{"from":3557,"to":1896,"type":"CALL"}]
```