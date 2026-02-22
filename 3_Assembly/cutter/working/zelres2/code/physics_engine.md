# PHYSICS_ENGINE - Analysis

**Source:** `chunk_04.bin`  
**Size:** 8.7 KB  
**Functions:** 52  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000   23 187          fcn.00000000
0x00000110    1 2            fcn.00000110
0x00000112    1 3            fcn.00000112
0x00000114    1 4            fcn.00000114
0x00000116    1 5            fcn.00000116
0x00000118   42 1215 -> 260  fcn.00000118
0x0000011a    1 7            fcn.0000011a
0x00000136   18 950  -> 205  fcn.00000136
0x0000027e   19 169          fcn.0000027e
0x00000327    7 61           fcn.00000327
0x00000364    1 68           fcn.00000364
0x000003a8    7 56           fcn.000003a8
0x000003e0   14 139          fcn.000003e0
0x0000057a    6 45           fcn.0000057a
0x000005a7    6 116          fcn.000005a7
0x0000061b    1 22           fcn.0000061b
0x00000631    3 24           fcn.00000631
0x00000649    3 11           fcn.00000649
0x00000654    1 93           fcn.00000654
0x000006b1    5 25           fcn.000006b1
0x000006ca    1 6            fcn.000006ca
0x000006d0    1 8            fcn.000006d0
0x000006d8    1 7            fcn.000006d8
0x000006df    6 81           fcn.000006df
0x00000730   19 118          fcn.00000730
0x00000c87    4 66           fcn.00000c87
0x00000cc9    5 18           fcn.00000cc9
0x00000d6f    3 47           fcn.00000d6f
0x00000d9e   36 786  -> 264  fcn.00000d9e
0x00000f19    3 25           fcn.00000f19
0x00000f32    5 41           fcn.00000f32
0x00000f5b    5 52           fcn.00000f5b
0x00000f8f    5 74           fcn.00000f8f
0x00001156    7 200  -> 147  fcn.00001156
0x000011c4    5 53           fcn.000011c4
0x0000121e    5 58           fcn.0000121e
0x00001258    1 11           fcn.00001258
0x00001293   11 122          fcn.00001293
0x0000130d   22 152          fcn.0000130d
0x000013a5   29 199          fcn.000013a5
0x0000146c    1 13           fcn.0000146c
0x00001479    3 51           fcn.00001479
0x000014ac    9 60           fcn.000014ac
0x00001534    3 12           fcn.00001534
0x00001540    3 12           fcn.00001540
0x00001675    5 54           fcn.00001675
0x000016ab    3 41           fcn.000016ab
0x00001b23    3 39           fcn.00001b23
0x00001bf3    5 183  -> 185  fcn.00001bf3
0x00001e4a    1 38           fcn.00001e4a
0x00001ed6    3 45           fcn.00001ed6
0x00001f13    5 34           fcn.00001f13
```

## Strings
```
nth      paddr      vaddr len size section type    string                                                                  
---------------------------------------------------------------------------------------------------------------------------
  0 0x00000004 0x00000004   4    5         ascii   ,0b9
  1 0x00000017 0x00000017   7    7         ascii   @d@L9_B
  2 0x0000001f 0x0000001f   7    8         ascii   DHE7F\@
  3 0x0000002b 0x0000002b   5    6         ascii   JlN1O
  4 0x0000017e 0x0000017e   5    6         utf8    ~1[Æ1 blocks=Basic Latin,Latin-1 Supplement
  5 0x000001be 0x000001be   4    4         ascii   u\fP.
  6 0x0000020e 0x0000020e   5    5         ascii   6<\rt;
  7 0x0000021a 0x0000021a   5    5         ascii   <<\ft/
  8 0x00000223 0x00000223   5    6         ascii   t),3s
  9 0x0000023d 0x0000023d   5    5         ascii   \f<\tt\f
 10 0x000003a5 0x000003a5   5    6         utf8    [^À>\e blocks=Basic Latin,Latin-1 Supplement
 11 0x000003e0 0x000003e0   4    4         ascii   VWSS
 12 0x00000423 0x00000423   4    4         ascii   SVR\n
 13 0x0000046b 0x0000046b   4    4         ascii   VWSS
 14 0x000004ec 0x000004ec   4    4         ascii   VWSS
 15 0x00000530 0x00000530   4    4         ascii   SVR\n
 16 0x00000596 0x00000596   4    4         ascii   UVWR
 17 0x0000059d 0x0000059d   9    9         ascii   Z_^]FGEBB
 18 0x00000642 0x00000642   4    4         ascii   EEGG
 19 0x0000067f 0x0000067f   4    4         ascii   O.\n7
 20 0x00000821 0x00000821   5    6         ascii   `r\v&\t
 21 0x0000083d 0x0000083d   4    5         ibm037  vvcÓ
 22 0x00000a36 0x00000a36   4    4         ascii   OGFY
 23 0x00000cde 0x00000cde   4    4         ascii   VWP.
 24 0x00000d0b 0x00000d0b   6    7         ibm037  CYA9¬;
 25 0x00000d93 0x00000d93   4    4         ibm037  vucF
 26 0x00000de0 0x00000de0   4    4         ascii   VWS.
 27 0x00000f02 0x00000f02   5    5         ascii   O[_^\a
 28 0x00000f14 0x00000f14   4    4         ascii   [_^\a
 29 0x00000f28 0x00000f28   4    4         ascii   [^_\a
 30 0x00000f45 0x00000f45   7    8         ibm037  vvvvaF8
 31 0x00000f6e 0x00000f6e   9   10         ibm037  îvvvv;aG8
 32 0x00000f7b 0x00000f7b   4    4         ascii   `r\nV
 33 0x00001043 0x00001043   5    6         ascii   `r\a&\t
 34 0x00001054 0x00001054   4    4         ascii   _GGY
 35 0x0000105f 0x0000105f  10   11         ibm037  CYX\rtW|Ô\r6
 36 0x00001093 0x00001093   4    4         ascii   _GGY
 37 0x000010dd 0x000010dd   5    5         ibm037  KS47L
 38 0x000010ef 0x000010ef   5    6         ascii   `r\n&!
 39 0x00001163 0x00001163   4    4         ascii   WVSP
 40 0x00001307 0x00001307   7    8         ibm037  $!ßSKC½
 41 0x00001319 0x00001319   4    4         ascii   [ZRS
 42 0x00001322 0x00001322   4    4         ascii   [ZRS
 43 0x00001395 0x00001395   5    6         ascii   `r\n& 
 44 0x0000139e 0x0000139e   7    7         ibm037  aG!µSUC
 45 0x0000141e 0x0000141e   6    7         ascii   O& 5&\b
 46 0x00001435 0x00001435   8    9         utf8    O& 5&\b%Ê blocks=Basic Latin,Latin-1 Supplement
 47 0x00001444 0x00001444   6    7         ascii   O& 5&\b
 48 0x00001453 0x00001453   7    7         ascii   O& 5&\b%
 49 0x00001464 0x00001464   6    7         ascii   O& 5&\b
 50 0x00001471 0x00001471   9   10         ibm037  QYN\t»8$C«
 51 0x00001593 0x00001593   4    5         ascii   _GG^
 52 0x000015c6 0x000015c6   5    6         ascii   -16;@
 53 0x000015d9 0x000015d9   9   10         ascii   \b\n#$&\b')*
 54 0x000015f7 0x000015f7   6    7         ascii   #$&\b%)
 55 0x000015fe 0x000015fe   4    5         ascii   .38=
 56 0x00001611 0x00001611  13   14         ascii   \b\v#$&\b')+/49>
 57 0x0000162b 0x0000162b   8    9         ascii    !\b\f#$&\b
 58 0x00001634 0x00001634   6    7         ascii   (,05:?
 59 0x0000166d 0x0000166d   8    9         ibm037  U|!µßSOC
 60 0x0000171b 0x0000171b  12   13         ascii   \a\b\t\n\a\b\v\f\a\b\t\n
 61 0x00001743 0x00001743  26   27         ascii   >\b&*%!"!"#$!"!"\t\n\a\b\a\b\t\n\a\b
 62 0x0000175e 0x0000175e   7    8         ascii   TY]c2/.
 63 0x00001779 0x00001779  26   27         ascii   PUZ^df(0#$!"#$!"#$\a\b\n\f\a\b\t\n
 64 0x00001794 0x00001794   9   10         ascii   4QV[_eg/-
 65 0x000017af 0x000017af   4    5         ascii   IMRW
 66 0x000017b4 0x000017b4  27   28         ascii   `ihjk(&!"+&!"!"\a\b\t\n\t\n\eFJNSX
 67 0x000017d3 0x000017d3   4    5         ascii   il1-
 68 0x000017e5 0x000017e5   4    5         ascii   CGKO
 69 0x000017f0 0x000017f0  11   12         ascii   mno)&!"*%!"
 70 0x00001800 0x00001800   4    5         ascii   5DHL
 71 0x0000180d 0x0000180d   4    5         ascii   iqst
 72 0x00001819 0x00001819   5    6         ascii   8:?BE
 73 0x0000182a 0x0000182a   9   10         ascii   muwyo+&)&
 74 0x00001834 0x00001834   5    6         ascii   49;@A
 75 0x00001847 0x00001847  12   13         ascii   vxz{12/-367<
 76 0x00001866 0x00001866   5    6         ascii   mqprp
 77 0x00001974 0x00001974   5    6         ascii   `r\v&\t
 78 0x00001b06 0x00001b06   5    5         ascii   `r\vVW
 79 0x00001b3b 0x00001b3b   6    7         ascii   &\b=G&\b
 80 0x00001b42 0x00001b42   5    5         ascii   G&\b%Y
 81 0x00001db6 0x00001db6   5   24         utf32be 9áĀЀက
 82 0x00001ddb 0x00001ddb   4   16         utf32be \f8ðå
 83 0x00001df2 0x00001df2   5   24         utf32le <\a쀀 Ѐ blocks=Basic Latin,Hangul Syllables,General Punctuation,Cyrillic
 84 0x00001ea9 0x00001ea9   9   10         ibm037  BfD»QJÔ\vC
 85 0x00001eff 0x00001eff   4    5         ibm037  +SPC
 86 0x00001f31 0x00001f31   4    5         ibm037  }SSC
 87 0x00001f4c 0x00001f4c   6    7         ascii   \f\f\f\f\f\f
 88 0x00001f56 0x00001f56   5    5         ascii   \f0\f\f?
 89 0x00001f5c 0x00001f5c   4    5         ascii   \f\f\f\f
 90 0x00001f62 0x00001f62   7    7         ascii   \f\f\f\f\f\f?
 91 0x00001f6c 0x00001f6c   5    6         ascii   0\f0\f0
 92 0x00001f74 0x00001f74   4    5         ascii   0\f0\f
 93 0x00001f7a 0x00001f7a   9    9         ascii   0\f0\f<<<<3
 94 0x00001f86 0x00001f86   4    4         ascii   0\f0\f
 95 0x00001f9d 0x00001f9d   7    8         ascii   \a\b\t\n\v\f\r
 96 0x00001faa 0x00001faa   4    5         ascii   \b\n\t\v
 97 0x00001fc1 0x00001fc1   4    5         ascii   \a\f\f\r
 98 0x00001fca 0x00001fca   5    6         ascii   \b\n\v\t\f
 99 0x00001fe2 0x00001fe2   4    5         ascii   \b\v\b\n
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(short unsigned int arg1, int16_t arg2, short unsigned int arg3, int16_t arg4);
│           ; arg short unsigned int arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg short unsigned int arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0000      mov   dh, 0x22                              ; '"'
│           ; XREFS: DATA 0x0000018f  DATA 0x000001e5  DATA 0x0000022c  
│           ; XREFS: DATA 0x0000136b  DATA 0x000013e3  DATA 0x000013fd  
│           ; XREFS: DATA 0x000016e7  DATA 0x000016f8  DATA 0x00001701  
│           ; XREFS: DATA 0x00001b26  
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           ; XREFS: DATA 0x00000170  DATA 0x000001b8  DATA 0x00000263  
│           ; XREFS: DATA 0x00000cd1  DATA 0x00000fb7  DATA 0x00000fbb  
│           ; XREFS: DATA 0x00001008  DATA 0x0000100d  
│           ;-- str.0b9:
│           0000:0004     .string ",0b9" ; len=5
│           ; DATA XREF from fcn.00000136 @ +0x108
│           ; DATA XREF from fcn.00001293 @ 0x12de
..
│           ; DATA XREF from fcn.00000136 @ +0x10e
│           0000:000b      cmp   ax, 0x40ac                            ; arg1
│           ; XREFS: DATA 0x00000209  DATA 0x0000022a  DATA 0x00000741  
│           ; XREFS: DATA 0x000009ac  DATA 0x000014f0  DATA 0x00001fdc  
│           0000:000e      in    al, 0x44
│           ; XREFS: DATA 0x00000221  DATA 0x00000242  DATA 0x0000029d  
│           ; XREFS: DATA 0x000005ba  DATA 0x00000620  DATA 0x000006e9  
│           ; XREFS: DATA 0x0000080c  DATA 0x00000c93  DATA 0x00000cb0  
│           ; XREFS: DATA 0x00000cec  DATA 0x00000cfc  DATA 0x00000d36  
│           ; XREFS: DATA 0x00000d51  DATA 0x000010b4  DATA 0x0000118e  
│           ; XREFS: DATA 0x00001676  DATA 0x0000191b  DATA 0x00001af4  
│           ; XREFS: DATA 0x00001b73  
│           0000:0010      aad   0x3f
│           ; DATA XREF from fcn.00000136 @ 0x4a4
│           ; DATA XREF from fcn.00000d9e @ 0xda3
│           ; DATA XREF from fcn.00000f8f @ +0x194
│           ; DATA XREF from fcn.00001540 @ +0x107
│       ┌─< 0000:0012      jp    0x46
│       │   0000:0014      cmpsb byte [si], byte ptr es:[di]
│       │   0000:0015      aaa
│       │   0000:0016      inc   byte [bx + si + 0x64]                 ; arg3
│       │   ; DATA XREFS from fcn.00001293 @ 0x129a, 0x12a5
│       │   0000:0019      inc   ax                                    ; arg1
│       │   ; DATA XREF from fcn.00000730 @ 0x778
│       │   ; DATA XREF from fcn.00000730 @ +0xa1
│       │   0000:001a      dec   sp
│       │   ; XREFS: DATA 0x0000018d  DATA 0x000001a4  DATA 0x00000774  
│       │   ; XREFS: DATA 0x00000ae7  DATA 0x00000bd8  DATA 0x00000c49  
│       │   ; XREFS: DATA 0x00000c50  
│       │   0000:001b      cmp   word [bx + 0x42], bx                  ; arg3
│       │   0000:001e  ~   inc   byte [si + 0x48]
│       │   ; DATA XREF from fcn.000006df @ 0x70e
│       │   ;-- str.DHE7F:
..
│       │   ; DATA XREF from fcn.00000000 @ 0x4a
│       │   ; DATA XREF from fcn.00000136 @ +0xa4
│       │   ; DATA XREF from fcn.00000d6f @ 0xd95
│       │   ; DATA XREFS from fcn.00001293 @ 0x12b3, 0x12be
│       │   0000:0021     .string "DHE7F\@" ; len=8
..
│       │   ; DATA XREFS from fcn.00001293 @ 0x12cc, 0x12d7
│       │   0000:002a      scasb al, byte es:[di]
│       │   0000:002b      dec   dx                                    ; arg2
│       │   ; DATA XREFS from fcn.00000136 @ +0xad, +0xc3
│       │   0000:002c      insb  byte es:[di], dx
│       │   ; DATA XREF from fcn.00000730 @ +0x428
│       │   0000:002d      dec   si
│       │   0000:002e      xor   word [bx + 0xe], cx                   ; arg3
│       │   0000:0031      pop   es
│       │   ; DATA XREF from fcn.00001540 @ +0xa2
│       │   0000:0032      mov   di, 0x5016
│       │   0000:0035      xor   ax, ax
│       │   0000:0037      mov   cx, 0x80
│       │   0000:003a      rep   stosw word es:[di], ax
│       │   ; DATA XREF from fcn.00000136 @ +0xe3
│       │   ; DATA XREFS from fcn.00001f13 @ +0x6b, +0x6d
│       │   0000:003c      inc   byte [0x4ff7]
│       │   ; DATA XREF from fcn.0000011a @ 0x11f
│       │   ; DATA XREF from fcn.000016ab @ +0x40e
│       │   0000:0040      mov   word [0x4fe4], 0x4fd                  ; [0x4fe4:2]=0xffff
│       └─> 0000:0046      mov   si, word [0xff31]
│           0000:004a      sub   si, 0x21
│           0000:004d      call  fcn.00001540                          ; fcn.00001540
│           0000:0050      xor   bx, bx
│           0000:0052      test  byte [si], 0x80
│       ┌─< 0000:0055      je    0x5a
│       │   0000:0057      call  fcn.00000327                          ; fcn.00000327
│       │   ; DATA XREF from fcn.00000730 @ +0x423
│       │   ; DATA XREF from fcn.00001e4a @ 0x1e60
│       └─> 0000:005a      inc   si
│           0000:005b      mov   cx, 6
│       ┌─> 0000:005e      push  cx
│       ╎   0000:005f      test  byte [si], 0x80
│      ┌──< 0000:0062      je    0x67
│      │╎   0000:0064      call  fcn.00000364                          ; fcn.00000364
│      └──> 0000:0067      inc   si
│       ╎   0000:0068      inc   bx
│       ╎   0000:0069      test  byte [si], 0x80
│       ╎   ; DATA XREFS from fcn.00000730 @ +0x3a5, +0x511
│      ┌──< 0000:006c      je    0x71
│      │╎   0000:006e      call  fcn.00000364                          ; fcn.00000364
│      └──> 0000:0071      inc   si
│       ╎   0000:0072      inc   bx
│       ╎   0000:0073      test  byte [si], 0x80
│      ┌──< 0000:0076      je    0x7b
│      │╎   0000:0078      call  fcn.00000364                          ; fcn.00000364
│      └──> 0000:007b      inc   si
│       ╎   0000:007c      inc   bx
│       ╎   0000:007d      test  byte [si], 0x80
│       ╎   ; DATA XREF from fcn.00000000 @ 0x37
│       ╎   ; DATA XREF from fcn.000005a7 @ 0x5b3
│       ╎   ; DATA XREFS from fcn.00000730 @ +0x3c8, +0x52e
│       ╎   ; DATA XREF from fcn.00001bf3 @ 0x1c19
│      ┌──< 0000:0080      je    0x85
│      │╎   0000:0082      call  fcn.00000364                          ; fcn.00000364
│      └──> 0000:0085      inc   si
│       ╎   0000:0086      inc   bx
│       ╎   0000:0087      pop   cx
│       └─< 0000:0088      loop  0x5e
│           0000:008a      test  byte [si], 0x80
│       ┌─< 0000:008d      je    0x92
│       │   ; DATA XREF from fcn.0000130d @ 0x1346
│       │   ; DATA XREF from fcn.000013a5 @ 0x13b0
│       │   0000:008f      call  fcn.00000364                          ; fcn.00000364
│       │   ; DATA XREF from fcn.000016ab @ +0x29e
│       └─> 0000:0092      inc   si
│           ; DATA XREF from fcn.00000cc9 @ 0xcc9
│           0000:0093      inc   bx
│           0000:0094      test  byte [si], 0x80
│       ┌─< 0000:0097      je    0x9c
│       │   0000:0099      call  fcn.00000364                          ; fcn.00000364
│       └─> 0000:009c      inc   si
│           ; DATA XREF from fcn.000014ac @ +0x56
│           0000:009d      inc   bx
│           0000:009e      test  byte [si], 0x80
│       ┌─< 0000:00a1      je    0xa6
│       │   0000:00a3      call  fcn.00000364                          ; fcn.00000364
│       └─> 0000:00a6      inc   si
│           0000:00a7      test  byte [si], 0x80
│       ┌─< 0000:00aa      je    0xaf
│       │   0000:00ac      call  fcn.000003a8                          ; fcn.000003a8
│       └─> 0000:00af      mov   si, word [0xff31]
│           0000:00b3      mov   di, 0xe900
└           0000:00b6      mov   byte [0x4fea], 0x12                   ; [0x4fea:1]=255
```

### Function 0x00000110
```asm
; CALL XREF from fcn.00001479 @ 0x1486
┌ fcn.00000110(int16_t arg1);
│           ; arg int16_t arg1 @ ax
└       ┌─< 0000:0110      je    0x115                                 ; fcn.00000118-0x3
```

### Function 0x00000112
```asm
; CALL XREF from fcn.00001479 @ 0x148b
│           ; CALL XREF from fcn.00001479 @ 0x1490
│           ;-- (0x00000114) fcn.00000114:
┌ fcn.00000112(int16_t arg1);
│           ; arg int16_t arg1 @ ax
└           0000:0112  ~   call  fcn.00000136                          ; fcn.00000136
```

### Function 0x00000114
```asm
│           ; CALL XREF from fcn.00001479 @ 0x1490
┌ fcn.00000114();
│           0000:0114  ~   add   byte [bp + di + 0x4c6], al
│           ; CODE XREF from fcn.00000118 @ 0x577
│           ; CALL XREF from fcn.00001479 @ 0x1495
│           ;-- (0x00000116) fcn.00000116:
..
```

### Function 0x00000116
```asm
│           ; CALL XREF from fcn.00001479 @ 0x1495
┌ fcn.00000116(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0116  ~   mov   byte [si], 0xe8                       ; [0xe8:1]=76
            ; CALL XREF from fcn.00001479 @ 0x149a
│           ; CALL XREF from fcn.00000136 @ +0x8b
│           ; CALL XREFS from fcn.00000730 @ 0x73a, 0x75d, 0x77b, 0x796
│           ;-- (0x0000011a) fcn.0000011a:
..
│           ; CALL XREF from fcn.00000136 @ +0x8b
│           ; CALL XREFS from fcn.00000730 @ 0x73a, 0x75d, 0x77b, 0x796
│           ;-- (0x0000011a) fcn.0000011a:
│           0000:0119  ~   sbb   word [si], dx                         ; arg2
```

### Function 0x00000118
```asm
╎╎   ; CALL XREF from fcn.00001479 @ 0x149a
│      ╎╎   ; CALL XREF from fcn.00000136 @ +0x8b
│      ╎╎   ; CALL XREFS from fcn.00000730 @ 0x73a, 0x75d, 0x77b, 0x796
│      ╎╎   ;-- (0x0000011a) fcn.0000011a:
┌ fcn.00000118();
│      ╎╎   0000:0118  ~   call  fcn.00001534                          ; fcn.00001534
│      ╎╎   0000:011b      add   word [0x4fe4], 0x40b4                 ; [0x4fe4:2]=0xffff
│      ╎╎   0000:0121      cmp   word [0x4fe4], 0x6000                 ; [0x4fe4:2]=0xffff
│     ┌───< 0000:0127      jb    0x12f
│     │╎╎   0000:0129      add   word [0x4fe4], 0xa05a                 ; [0x4fe4:2]=0xffff
│     └───> 0000:012f      dec   byte [0x4fea]
│      ╎└─< 0000:0133      jne   0xbb
│      ╎    0000:0135      ret
       ╎    ; XREFS: CALL 0x000000d2  CALL 0x000000d9  CALL 0x000000e0  
       ╎    ; XREFS: CALL 0x000000e7  CALL 0x000000f1  CALL 0x000000f8  
       ╎    ; XREFS: CALL 0x000000ff  CALL 0x00000112  
..
│    ││╎│   ; CODE XREF from fcn.00000136 @ 0x14c
      │╎    ; CALL XREF from fcn.00000136 @ 0x165
│     │╎    ; DATA XREF from fcn.00001bf3 @ 0x1bfb
│     │╎│   ; DATA XREF from fcn.00001f13 @ +0xc2
      │╎    ; CALL XREF from fcn.00000000 @ 0x57
      │╎    ; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
      │╎    ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
      │╎    ; XREFS: CALL 0x000000a3  
      │╎    ; CALL XREF from fcn.00000000 @ 0xac
      │╎│   ; CALL XREF from fcn.00000118 @ 0xc8
│     │╎│   ; CODE XREF from fcn.00000136 @ 0x13d
│      ╎│   ; DATA XREF from fcn.000014ac @ +0x7a
│      ╎│   ; CODE XREF from fcn.00000118 @ 0x109
│      ╎│   0000:04ec      push  si                                    ; int16_t arg3
│      ╎│   0000:04ed      push  di
│      ╎│   0000:04ee      push  bx
│      ╎│   0000:04ef      push  bx
│      ╎│   0000:04f0      mov   bx, 0x5009
│      ╎│   0000:04f3      mov   al, 0xfe
│      ╎│   0000:04f5      xchg  byte [di - 1], al
│      ╎│   0000:04f8      mov   byte [bx], al
│      ╎│   0000:04fa      mov   al, 0xff
│      ╎│   0000:04fc      xchg  byte [di + 0x1b], al
│      ╎│   0000:04ff      mov   byte [bx + 1], al
│      ╎│   0000:0502      mov   cl, byte [si - 1]
│      ╎│   0000:0505      add   si, 0x24
│      ╎│   0000:0508      call  fcn.00001534                          ; fcn.00001534
│      ╎│   0000:050b      mov   dl, byte [si - 1]
│      ╎│   0000:050e      mov   al, cl
│      ╎│   0000:0510      call  fcn.000006df                          ; fcn.000006df
│      ╎│   0000:0513      mov   bl, al
│      ╎│   0000:0515      mov   bh, dl
│      ╎│   0000:0517      pop   dx
│      ╎│   0000:0518      add   dx, dx
│      ╎│   0000:051a      add   dx, word [0x4fe4]                     ; [0x4fe4:2]=0xffff
│      ╎│   0000:051e      cmp   byte [0x5009], 0xff                   ; [0x5009:1]=255
│     ┌───< 0000:0523      je    0x540
│     │╎│   0000:0525      cmp   byte [0x5009], 0xfc                   ; [0x5009:1]=255
│    ┌────< 0000:052a      je    0x540
│    ││╎│   0000:052c      mov   ah, byte [si]
│    ││╎│   0000:052e      mov   al, bl
│    ││╎│   0000:0530      push  bx
│    ││╎│   0000:0531      push  si
│    ││╎│   0000:0532      push  dx
│    ││╎│   ; DATA XREF from fcn.000003a8 @ 0x3da
│    ││╎│   0000:0533      or    al, al
│   ┌─────< 0000:0535      jns   0x53a
│   │││╎│   0000:0537      call  fcn.000006d8                          ; fcn.000006d8
│   └─────> 0000:053a      call  fcn.000005a7                          ; fcn.000005a7
│    ││╎│   0000:053d      pop   dx
│    ││╎│   0000:053e      pop   si
│    ││╎│   0000:053f      pop   bx
│    └└───> 0000:0540      add   dx, 0x40b4
│      ╎│   0000:0544      cmp   dx, 0x6000
│     ┌───< 0000:0548      jb    0x54e
│     │╎│   0000:054a      add   dx, 0xa05a
│     └───> 0000:054e      cmp   byte [0x4fea], 1                      ; [0x4fea:1]=255
│     ┌───< 0000:0553      je    0x574
│     │╎│   0000:0555      cmp   byte [0x500a], 0xff                   ; [0x500a:1]=255
│    ┌────< 0000:055a      je    0x574
│    ││╎│   0000:055c      cmp   byte [0x500a], 0xfc                   ; [0x500a:1]=255
│   ┌─────< 0000:0561      je    0x574
│   │││╎│   0000:0563      inc   si
│   │││╎│   0000:0564      inc   si
│   │││╎│   0000:0565      lodsb al, byte [si]
│   │││╎│   0000:0566      mov   ah, al
│   │││╎│   0000:0568      mov   al, bh
│   │││╎│   0000:056a      or    al, al
│  ┌──────< 0000:056c      jns   0x571
│  ││││╎│   0000:056e      call  fcn.000006d8                          ; fcn.000006d8
│  └──────> 0000:0571      call  fcn.000005a7                          ; fcn.000005a7
│   └└└───> 0000:0574      pop   bx
│      ╎│   0000:0575      pop   di
│      ╎│   0000:0576      pop   si
│      └──< 0000:0577      jmp   0x115
```

### Function 0x0000011a
```asm
│           ; CALL XREF from fcn.00000136 @ +0x8b
│           ; CALL XREFS from fcn.00000730 @ 0x73a, 0x75d, 0x77b, 0x796
┌ fcn.0000011a(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:011a      adc   al, 0x81
│           0000:011c      push  es
│           0000:011d      in    al, 0x4f
│           0000:011f      mov   ah, 0x40                              ; '@'
```

### Function 0x00000136
```asm
; XREFS: CALL 0x000000d2  CALL 0x000000d9  CALL 0x000000e0  
            ; XREFS: CALL 0x000000e7  CALL 0x000000f1  CALL 0x000000f8  
            ; XREFS: CALL 0x000000ff  CALL 0x00000112  
┌ fcn.00000136(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0136      mov   al, byte [si - 1]
│           0000:0139      or    al, al
│       ┌─< 0000:013b      jns   0x140
│      ┌──< 0000:013d      jmp   0x46b
│      │└─> 0000:0140      cmp   byte es:[di - 1], 0xfc
│      │┌─< 0000:0145      jne   0x14e
│      ││   0000:0147      mov   byte es:[di - 1], 0xff                ; [0xff:1]=232
│     ┌───< 0000:014c      jmp   0x168
│     ││└─> 0000:014e      inc   byte es:[di - 1]
│     ││    0000:0152      mov   byte es:[di - 1], 0xfe                ; [0xfe:1]=3
│     ││┌─< 0000:0157      je    0x168
│     │││   0000:0159      mov   byte es:[di - 1], al
│     │││   0000:015d      mov   dx, bx
│     │││   0000:015f      add   dx, dx
│     │││   0000:0161      add   dx, word [0x4fe4]                     ; [0x4fe4:2]=0xffff ; int16_t arg2
│     │││   0000:0165      call  fcn.0000027e                          ; fcn.0000027e
│     │││   ; CODE XREF from fcn.00000136 @ 0x14c
│     └─└─> 0000:0168      mov   al, byte [0xc012]                     ; [0xc012:1]=255
│      │    0000:016b      sub   al, 5
│      │┌─< 0000:016d      jae   0x170
│      ││   0000:016f      ret
│      │└─> 0000:0170      cmp   al, 4                                 ; str.0b9 ; ",0b9\U00000015?\xd3=\xac@\xe4D\xd5?z2\xa67\xfe@d@L9_B\xfeDHE7F\@\U0000000fIDI\xaeJlN1O\U0000000e\a\xbf\U00000016P3\xc0\xb9\x80"
│      │┌─< 0000:0172      jb    0x175
│      ││   0000:0174      ret
│      │└─> 0000:0175      push  bx                                    ; arg3
│      │    0000:0176      mov   bl, al
│      │    0000:0178      xor   bh, bh
│      │    0000:017a      add   bx, bx                                ; arg3
│      │    0000:017c      call  word [bx + 0x317e]
│      │    0000:0180      pop   bx
│      │    0000:0181      ret
..
       │    ; CALL XREF from fcn.00000136 @ 0x165
│      │    ; DATA XREF from fcn.00001bf3 @ 0x1bfb
│      ││   ; DATA XREF from fcn.00001f13 @ +0xc2
       │    ; CALL XREF from fcn.00000000 @ 0x57
       │    ; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
       │    ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
       │    ; XREFS: CALL 0x000000a3  
       │    ; CALL XREF from fcn.00000000 @ 0xac
       ││   ; CALL XREF from fcn.00000118 @ 0xc8
│      ││   ; CODE XREF from fcn.00000136 @ 0x13d
│      └──> 0000:046b      push  si                                    ; arg3
│       │   0000:046c      push  di
│       │   0000:046d      push  bx
│       │   0000:046e      push  bx                                    ; arg3
│       │   0000:046f      mov   bx, 0x5009
│       │   0000:0472      mov   ax, 0xfffe
│       │   0000:0475      xchg  word [di - 1], ax
│       │   0000:0478      mov   word [bx], ax
│       │   0000:047a      mov   ax, 0xffff
│       │   0000:047d      xchg  word [di + 0x1b], ax
│       │   ; DATA XREF from fcn.000014ac @ +0x7a
│       │   0000:0480      mov   word [bx + 2], ax
│       │   0000:0483      mov   cl, byte [si - 1]
│       │   0000:0486      mov   bx, 0x500d
│       │   0000:0489      mov   al, byte [si]
│       │   0000:048b      mov   byte [bx + 1], al
│       │   0000:048e      add   si, 0x24
│       │   0000:0491      call  fcn.00001534                          ; fcn.00001534
│       │   0000:0494      mov   ax, word [si - 1]                     ; int16_t arg1
│       │   0000:0497      mov   word [bx + 2], ax
│       │   0000:049a      pop   dx
│       │   0000:049b      mov   byte [0x4feb], dl                     ; [0x4feb:1]=255
│       │   0000:049f      mov   al, byte [0x4fea]                     ; [0x4fea:1]=255
│       │   0000:04a2      neg   al
│       │   0000:04a4      add   al, 0x12
│       │   0000:04a6      mov   byte [0x4fec], al                     ; [0x4fec:1]=255
│       │   0000:04a9      add   dx, dx
│       │   0000:04ab      add   dx, word [0x4fe4]                     ; [0x4fe4:2]=0xffff ; int16_t arg3
│       │   0000:04af      mov   al, cl
│       │   0000:04b1      call  fcn.000006df                          ; fcn.000006df
│       │   0000:04b4      mov   di, 0x500d
│       │   0000:04b7      mov   byte [di], al
│       │   0000:04b9      mov   bp, 0x5009
│       │   0000:04bc      call  fcn.0000057a                          ; fcn.0000057a
│       │   0000:04bf      cmp   byte [0x4fea], 1                      ; [0x4fea:1]=255
│      ┌──< 0000:04c4      je    0x4e8
│      ││   0000:04c6      add   dx, 0x40b0
│      ││   0000:04ca      cmp   dx, 0x6000
│     ┌───< 0000:04ce      jb    0x4d4
│     │││   0000:04d0      add   dx, 0xa05a
│     └───> 0000:04d4      call  fcn.0000057a                          ; fcn.0000057a
│      ││   0000:04d7      test  byte [0xff34], 0xff
│     ┌───< 0000:04dc      je    0x4e8
│     │││   0000:04de      test  byte [0xff2f], 0xff
│    ┌────< 0000:04e3      je    0x4e8
│    ││││   0000:04e5      call  fcn.00000730                          ; fcn.00000730
│    └└└──> 0000:04e8      pop   bx
│       │   0000:04e9      pop   di
│       │   0000:04ea      pop   si
└       │   0000:04eb      ret
```

### Function 0x0000027e
```asm
; CALL XREF from fcn.00000136 @ 0x165
┌ fcn.0000027e(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:027e      push  es
│           0000:027f      push  ds
│           ; DATA XREF from fcn.00001bf3 @ 0x1bfb
│           0000:0280      push  di
│           0000:0281      push  si
│           0000:0282      push  bx                                    ; arg3
│           0000:0283      mov   di, dx                                ; arg2
│           0000:0285      or    al, al
│       ┌─< 0000:0287      je    0x305
│       │   0000:0289      mov   bl, al
│       │   0000:028b      xor   bh, bh
│       │   0000:028d      add   bx, bx                                ; arg3
│       │   0000:028f      test  word [bx + 0x5016], 0xffff            ; arg3
│      ┌──< 0000:0295      jne   0x2ce
│      ││   0000:0297      dec   al
│      ││   0000:0299      mov   word [bx + 0x5016], di                ; arg3
│      ││   0000:029d      mov   cl, 0x10
│      ││   0000:029f      mul   cl
│      ││   0000:02a1      add   ax, 0x8030                            ; arg1
│      ││   0000:02a4      mov   si, ax                                ; arg1
│      ││   0000:02a6      mov   ds, word cs:[0xff2c]
│      ││   0000:02ab      mov   ax, 0xb000
│      ││   0000:02ae      mov   es, ax
│      ││   0000:02b0      mov   cx, 8
│     ┌───> 0000:02b3      movsw word es:[di], word ptr [si]
│     ╎││   0000:02b4      add   di, 0x1ffe
│     ╎││   0000:02b8      cmp   di, 0x6000
│    ┌────< 0000:02bc      jb    0x2c6
│    │╎││   0000:02be      mov   ax, word [si - 2]
│    │╎││   0000:02c1      stosw word es:[di], ax
│    │╎││   0000:02c2      add   di, 0xa058
│    └└───< 0000:02c6      loop  0x2b3
│      ││   0000:02c8      pop   bx
│      ││   0000:02c9      pop   si
│      ││   0000:02ca      pop   di
│      ││   0000:02cb      pop   ds
│      ││   0000:02cc      pop   es
│      ││   0000:02cd      ret
│      └──> 0000:02ce      mov   si, word [bx + 0x5016]                ; arg3
│       │   0000:02d2      mov   ax, 0xb000
│       │   0000:02d5      mov   es, ax
│       │   0000:02d7      mov   ds, ax
│       │   0000:02d9      mov   cx, 8
│      ┌──> 0000:02dc      movsw word es:[di], word ptr [si]
│      ╎│   0000:02dd      add   di, 0x1ffe
│      ╎│   0000:02e1      cmp   di, 0x6000
│     ┌───< 0000:02e5      jb    0x2ef
│     │╎│   0000:02e7      mov   ax, word [si - 2]
│     │╎│   0000:02ea      stosw word es:[di], ax
│     │╎│   0000:02eb      add   di, 0xa058
│     └───> 0000:02ef      add   si, 0x1ffe
│      ╎│   0000:02f3      cmp   si, 0x6000
│     ┌───< 0000:02f7      jb    0x2fd
│     │╎│   0000:02f9      add   si, 0xa05a
│     └└──< 0000:02fd      loop  0x2dc
│       │   0000:02ff      pop   bx
│       │   ; DATA XREF from fcn.00001f13 @ +0xc2
│       │   0000:0300      pop   si
│       │   0000:0301      pop   di
│       │   0000:0302      pop   ds
│       │   0000:0303      pop   es
│       │   0000:0304      ret
│       └─> 0000:0305      mov   ax, 0xb000
│           0000:0308      mov   es, ax
│           0000:030a      xor   ax, ax
│           0000:030c      mov   cx, 8
│       ┌─> 0000:030f      stosw word es:[di], ax
│       ╎   0000:0310      add   di, 0x1ffe
│       ╎   0000:0314      cmp   di, 0x6000
│      ┌──< 0000:0318      jb    0x31f
│      │╎   0000:031a      stosw word es:[di], ax
│      │╎   0000:031b      add   di, 0xa058
│      └└─< 0000:031f      loop  0x30f
│           0000:0321      pop   bx
│           0000:0322      pop   si
│           0000:0323      pop   di
│           0000:0324      pop   ds
│           0000:0325      pop   es
└           0000:0326      ret
```

### Function 0x00000327
```asm
; CALL XREF from fcn.00000000 @ 0x57
┌ fcn.00000327(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0327      cmp   byte [0xe900], 0xff
│       ┌─< 0000:032c      jne   0x32f
│       │   0000:032e      ret
│       └─> 0000:032f      cmp   byte [0xe900], 0xfc
│       ┌─< 0000:0334      jne   0x337
│       │   0000:0336      ret
│       └─> 0000:0337      push  si
│           0000:0338      push  bx                                    ; arg3
│           0000:0339      mov   byte [0xe900], 0xff                   ; [0xff:1]=232
│           0000:033e      mov   cl, byte [si]
│           0000:0340      add   si, 0x25
│           0000:0343      call  fcn.00001534                          ; fcn.00001534
│           0000:0346      mov   al, byte [si]
│           0000:0348      or    al, al
│       ┌─< 0000:034a      jns   0x34f
│       │   0000:034c      call  fcn.000006d8                          ; fcn.000006d8
│       └─> 0000:034f      push  ax
│           0000:0350      mov   al, cl
│           0000:0352      call  fcn.000006df                          ; fcn.000006df
│           0000:0355      add   si, 3
│           0000:0358      pop   ax                                    ; int16_t arg1
│           0000:0359      mov   ah, byte [si]
│           0000:035b      mov   dx, 0x4fd                             ; int16_t arg2
│           0000:035e      call  fcn.000005a7                          ; fcn.000005a7
│           0000:0361      pop   bx
│           0000:0362      pop   si
└           0000:0363      ret
```

### Function 0x00000364
```asm
; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
            ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
            ; XREFS: CALL 0x000000a3  
┌ fcn.00000364(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0364      push  si
│           0000:0365      push  bx                                    ; arg3
│           0000:0366      mov   cx, bx                                ; arg3
│           0000:0368      mov   di, bx                                ; arg3
│           0000:036a      add   di, 0xe900
│           0000:036e      mov   bx, 0x5009
│           0000:0371      mov   al, 0xff
│           0000:0373      xchg  byte [di], al
│           0000:0375      mov   byte [bx], al
│           0000:0377      mov   byte [bx + 1], 0
│           0000:037b      mov   byte [di + 1], 0xff                   ; [0xff:1]=232
│           0000:037f      mov   dx, cx
│           0000:0381      add   dx, dx
│           0000:0383      add   dx, 0x4fd
│           0000:0387      mov   cl, byte [si]
│           0000:0389      add   si, 0x24
│           0000:038c      call  fcn.00001534                          ; fcn.00001534
│           0000:038f      mov   bx, 0x500d                            ; int16_t arg_6h
│           0000:0392      lodsw ax, word [si]                         ; int16_t arg1
│           0000:0393      mov   word [bx], ax
│           0000:0395      mov   al, cl
│           0000:0397      call  fcn.000006df                          ; fcn.000006df
│           0000:039a      inc   si
│           0000:039b      inc   si
│           0000:039c      mov   di, 0x500d
│           0000:039f      mov   bp, 0x5009
│           0000:03a2      call  fcn.0000057a                          ; fcn.0000057a
│           0000:03a5      pop   bx
│           0000:03a6      pop   si
└           0000:03a7      ret
```

### Function 0x000003a8
```asm
; CALL XREF from fcn.00000000 @ 0xac
┌ fcn.000003a8();
│           0000:03a8      cmp   byte [0xe91b], 0xff
│       ┌─< 0000:03ad      jne   0x3b0
│       │   0000:03af      ret
│       └─> 0000:03b0      cmp   byte [0xe91b], 0xfc
│       ┌─< 0000:03b5      jne   0x3b8
│       │   0000:03b7      ret
│       └─> 0000:03b8      mov   byte [0xe91b], 0xff                   ; [0xff:1]=232
│           0000:03bd      mov   cl, byte [si]
│           0000:03bf      add   si, 0x24
│           0000:03c2      call  fcn.00001534                          ; fcn.00001534
│           0000:03c5      mov   al, byte [si]
│           0000:03c7      or    al, al
│       ┌─< 0000:03c9      jns   0x3ce
│       │   0000:03cb      call  fcn.000006d8                          ; fcn.000006d8
│       └─> 0000:03ce      push  ax
│           0000:03cf      mov   al, cl
│           0000:03d1      call  fcn.000006df                          ; fcn.000006df
│           0000:03d4      add   si, 2
│           0000:03d7      pop   ax
│           0000:03d8      mov   ah, byte [si]
│           0000:03da      mov   dx, 0x533
└       ┌─< 0000:03dd      jmp   fcn.000005a7                          ; fcn.000005a7
```

### Function 0x000003e0
```asm
; CALL XREF from fcn.00000118 @ 0xc8
┌ fcn.000003e0(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:03e0      push  si
│           0000:03e1      push  di
│           0000:03e2      push  bx                                    ; arg3
│           0000:03e3      push  bx                                    ; arg3
│           0000:03e4      mov   bx, 0x5009
│           0000:03e7      mov   al, 0xff
│           0000:03e9      xchg  byte [di], al
│           0000:03eb      mov   byte [bx], al
│           0000:03ed      mov   al, 0xff
│           0000:03ef      xchg  byte [di + 0x1c], al
│           0000:03f2      mov   byte [bx + 1], al
│           0000:03f5      mov   cl, byte [si - 1]
│           0000:03f8      mov   dl, byte [si]
│           0000:03fa      add   si, 0x24
│           0000:03fd      call  fcn.00001534                          ; fcn.00001534
│           0000:0400      mov   dh, byte [si]
│           0000:0402      mov   al, cl
│           0000:0404      call  fcn.000006df                          ; fcn.000006df
│           0000:0407      inc   si
│           0000:0408      mov   bx, dx
│           0000:040a      pop   dx
│           0000:040b      add   dx, dx
│           0000:040d      add   dx, word [0x4fe4]                     ; [0x4fe4:2]=0xffff
│           0000:0411      cmp   byte [0x5009], 0xff                   ; [0x5009:1]=255
│       ┌─< 0000:0416      je    0x433
│       │   0000:0418      cmp   byte [0x5009], 0xfc                   ; [0x5009:1]=255
│      ┌──< 0000:041d      je    0x433
│      ││   0000:041f      mov   ah, byte [si]
│      ││   0000:0421      mov   al, bl
│      ││   0000:0423      push  bx
│      ││   0000:0424      push  si
│      ││   0000:0425      push  dx
│      ││   0000:0426      or    al, al
│     ┌───< 0000:0428      jns   0x42d
│     │││   0000:042a      call  fcn.000006d8                          ; fcn.000006d8
│     └───> 0000:042d      call  fcn.000005a7                          ; fcn.000005a7
│      ││   0000:0430      pop   dx
│      ││   0000:0431      pop   si
│      ││   0000:0432      pop   bx
│      └└─> 0000:0433      add   dx, 0x40b4
│           0000:0437      cmp   dx, 0x6000
│       ┌─< 0000:043b      jb    0x441
│       │   0000:043d      add   dx, 0xa05a
│       └─> 0000:0441      cmp   byte [0x4fea], 1                      ; [0x4fea:1]=255
│       ┌─< 0000:0446      je    0x467
│       │   0000:0448      cmp   byte [0x500a], 0xff                   ; [0x500a:1]=255
│      ┌──< 0000:044d      je    0x467
│      ││   0000:044f      cmp   byte [0x500a], 0xfc                   ; [0x500a:1]=255
│     ┌───< 0000:0454      je    0x467
│     │││   0000:0456      inc   si
│     │││   0000:0457      inc   si
│     │││   0000:0458      lodsb al, byte [si]
│     │││   0000:0459      mov   ah, al
│     │││   0000:045b      mov   al, bh
│     │││   0000:045d      or    al, al
│    ┌────< 0000:045f      jns   0x464
│    ││││   0000:0461      call  fcn.000006d8                          ; fcn.000006d8
│    └────> 0000:0464      call  fcn.000005a7                          ; fcn.000005a7
│     └└└─> 0000:0467      pop   bx
│           0000:0468      pop   di
│           0000:0469      pop   si
└           0000:046a      ret
```

### Function 0x0000057a
```asm
; CALL XREF from fcn.00000364 @ 0x3a2
            ; CALL XREFS from fcn.00000136 @ 0x4bc, 0x4d4
┌ fcn.0000057a();
│           0000:057a      call  0x57d
│           ; CALL XREF from fcn.0000057a @ 0x57a
│           0000:057d      cmp   byte ds:[bp], 0xff
│       ┌─< 0000:0582      je    0x5a1
│       │   0000:0584      cmp   byte ds:[bp], 0xfc
│      ┌──< 0000:0589      je    0x5a1
│      ││   0000:058b      mov   ah, byte [si]
│      ││   0000:058d      mov   al, byte [di]
│      ││   0000:058f      or    al, al
│     ┌───< 0000:0591      jns   0x596
│     │││   0000:0593      call  fcn.000006d8                          ; fcn.000006d8
│     └───> 0000:0596      push  bp
│      ││   0000:0597      push  si
│      ││   0000:0598      push  di
│      ││   0000:0599      push  dx
│      ││   0000:059a      call  fcn.000005a7                          ; fcn.000005a7
│      ││   0000:059d      pop   dx
│      ││   0000:059e      pop   di
│      ││   0000:059f      pop   si
│      ││   0000:05a0      pop   bp
│      └└─> 0000:05a1      inc   si
│           0000:05a2      inc   di
│           0000:05a3      inc   bp
│           0000:05a4      inc   dx
│           0000:05a5      inc   dx
└           0000:05a6      ret
```

### Function 0x000005a7
```asm
; XREFS: CALL 0x0000035e  CODE 0x000003dd  CALL 0x0000042d  
            ; XREFS: CALL 0x00000464  CALL 0x0000053a  CALL 0x00000571  
            ; XREFS: CALL 0x0000059a  
┌ fcn.000005a7(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:05a7      push  es
│           0000:05a8      push  ds
│           0000:05a9      mov   bl, byte [0x4fed]                     ; [0x4fed:1]=255
│           0000:05ad      or    al, al
│       ┌─< 0000:05af      je    0x5b6
│      ┌──< 0000:05b1      js    0x5b6
│      ││   0000:05b3      or    bl, 0x80
│      └└─> 0000:05b6      mov   cl, al
│           0000:05b8      mov   al, ah
│           0000:05ba      mov   ch, 0x10
│           0000:05bc      mul   ch
│           0000:05be      mov   si, ax                                ; arg1
│           0000:05c0      add   si, 0x4000
│           0000:05c4      mov   bp, ax                                ; arg1
│           0000:05c6      add   bp, 0xa000
│           0000:05ca      mov   ds, word cs:[0xff2c]
│           0000:05cf      mov   di, dx                                ; arg2
│           0000:05d1      push  cs
│           0000:05d2      pop   es
│           0000:05d3      mov   ch, bl
│           0000:05d5      and   bl, 0x7f
│           0000:05d8      xor   bh, bh
│           0000:05da      add   bx, bx                                ; arg3
│           0000:05dc      mov   ax, word cs:[bx + 0x4f86]             ; arg3
│           0000:05e1      mov   word cs:[0x4fe2], ax
│           0000:05e5      mov   al, cl
│           0000:05e7      or    ch, ch
│       ┌─< 0000:05e9      js    0x603
│       │   0000:05eb      push  di
│       │   0000:05ec      mov   di, 0x52a6
│       │   0000:05ef      call  fcn.00000649                          ; fcn.00000649
│       │   0000:05f2      pop   di
│       │   0000:05f3      mov   si, 0x52a6
│       │   0000:05f6      push  cs
│       │   0000:05f7      pop   ds
│       │   0000:05f8      mov   ax, 0xb000
│       │   0000:05fb      mov   es, ax
│       │   0000:05fd      call  fcn.000006b1                          ; fcn.000006b1
│       │   0000:0600      pop   ds
│       │   0000:0601      pop   es
│       │   0000:0602      ret
│       └─> 0000:0603      push  di
│           0000:0604      mov   di, 0x52a6
│           0000:0607      call  fcn.0000061b                          ; fcn.0000061b
│           0000:060a      pop   di
│           0000:060b      mov   si, 0x52a6
│           0000:060e      push  cs
│           0000:060f      pop   ds
│           0000:0610      mov   ax, 0xb000
│           0000:0613      mov   es, ax
│           0000:0615      call  fcn.000006b1                          ; fcn.000006b1
│           0000:0618      pop   ds
│           0000:0619      pop   es
└           0000:061a      ret
```

### Function 0x0000061b
```asm
; CALL XREF from fcn.000005a7 @ 0x607
            ; CALL XREF from fcn.00000cc9 @ +0x98
┌ fcn.0000061b(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:061b      push  bp
│           0000:061c      push  si
│           0000:061d      push  di
│           0000:061e      dec   cl
│           0000:0620      mov   al, 0x10
│           0000:0622      mul   cl
│           0000:0624      add   ax, 0x8030                            ; arg1
│           0000:0627      mov   si, ax                                ; arg1
│           0000:0629      call  fcn.000006ca                          ; fcn.000006ca
│           0000:062c      pop   di
│           0000:062d      pop   si
│           0000:062e      pop   bp
└       ┌─< 0000:062f      jmp   fcn.00000631                          ; fcn.00000631
```

### Function 0x00000631
```asm
; CODE XREF from fcn.0000061b @ 0x62f
            ; CALL XREF from fcn.00000c87 @ 0xcb9
┌ fcn.00000631(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0631      mov   cx, 8
│       ┌─> 0000:0634      mov   ax, word ds:[bp]
│       ╎   0000:0638      and   word es:[di], ax
│       ╎   0000:063b      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:063c      call  fcn.00000654                          ; fcn.00000654
│       ╎   0000:063f      or    word es:[di], ax
│       ╎   0000:0642      inc   bp
│       ╎   0000:0643      inc   bp
│       ╎   0000:0644      inc   di
│       ╎   0000:0645      inc   di
│       └─< 0000:0646      loop  0x634
└           0000:0648      ret
```

### Function 0x00000649
```asm
; CALL XREF from fcn.000005a7 @ 0x5ef
            ; CALL XREF from fcn.00000cc9 @ +0x9f
┌ fcn.00000649();
│           0000:0649      mov   cx, 8
│       ┌─> 0000:064c      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:064d      call  fcn.00000654                          ; fcn.00000654
│       ╎   0000:0650      stosw word es:[di], ax
│       └─< 0000:0651      loop  0x64c
└           0000:0653      ret
```

### Function 0x00000654
```asm
; CALL XREF from fcn.00000631 @ 0x63c
            ; CALL XREF from fcn.00000649 @ 0x64d
┌ fcn.00000654(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0654      mov   bx, ax                                ; arg1
│           0000:0656      shr   bh, 1
│           0000:0658      shr   bh, 1
│           0000:065a      shr   bh, 1
│           0000:065c      shr   bh, 1
│           0000:065e      mov   bl, bh
│           0000:0660      xor   bh, bh
│           0000:0662      add   bx, word cs:[0x4fe2]
│           0000:0667      mov   dh, byte cs:[bx]
│           0000:066a      add   dh, dh
│           0000:066c      add   dh, dh
│           0000:066e      add   dh, dh
│           0000:0670      add   dh, dh
│           0000:0672      mov   bx, ax                                ; arg1
│           0000:0674      and   bh, 0xf
│           0000:0677      mov   bl, bh
│           0000:0679      xor   bh, bh
│           0000:067b      add   bx, word cs:[0x4fe2]
│           0000:0680      or    dh, byte cs:[bx]
│           0000:0683      mov   bx, ax                                ; arg1
│           0000:0685      shr   bl, 1
│           0000:0687      shr   bl, 1
│           0000:0689      shr   bl, 1
│           0000:068b      shr   bl, 1
│           0000:068d      xor   bh, bh
│           0000:068f      add   bx, word cs:[0x4fe2]
│           0000:0694      mov   dl, byte cs:[bx]
│           0000:0697      add   dl, dl
│           0000:0699      add   dl, dl
│           0000:069b      add   dl, dl
│           0000:069d      add   dl, dl
│           0000:069f      mov   bx, ax                                ; arg1
│           0000:06a1      and   bl, 0xf
│           0000:06a4      xor   bh, bh
│           0000:06a6      add   bx, word cs:[0x4fe2]
│           0000:06ab      or    dl, byte cs:[bx]
│           0000:06ae      mov   ax, dx                                ; arg2
└           0000:06b0      ret
```

### Function 0x000006b1
```asm
; CALL XREFS from fcn.000005a7 @ 0x5fd, 0x615
            ; CALL XREF from fcn.00000d9e @ 0x1090
┌ fcn.000006b1();
│           0000:06b1      mov   cx, 8
│       ┌─> 0000:06b4      movsw word es:[di], word ptr [si]
│       ╎   0000:06b5      add   di, 0x1ffe
│       ╎   0000:06b9      cmp   di, 0x6000
│      ┌──< 0000:06bd      jb    0x6c7
│      │╎   0000:06bf      mov   ax, word [si - 2]
│      │╎   0000:06c2      stosw word es:[di], ax
│      │╎   0000:06c3      add   di, 0xa058
│      └└─< 0000:06c7      loop  0x6b4
└           0000:06c9      ret
```

### Function 0x000006ca
```asm
; CALL XREF from fcn.0000061b @ 0x629
            ; CALL XREF from fcn.00000cc9 @ +0x3c
┌ fcn.000006ca();
│           0000:06ca      mov   cx, 8
│           0000:06cd      rep   movsw word es:[di], word ptr [si]
└           0000:06cf      ret
```

### Function 0x000006d0
```asm
; CALL XREF from fcn.00000cc9 @ +0x43
┌ fcn.000006d0();
│           0000:06d0      xor   ax, ax
│           0000:06d2      mov   cx, 8
│           0000:06d5      rep   stosw word es:[di], ax
└           0000:06d7      ret
```

### Function 0x000006d8
```asm
; XREFS: CALL 0x0000034c  CALL 0x000003cb  CALL 0x0000042a  
            ; XREFS: CALL 0x00000461  CALL 0x00000537  CALL 0x0000056e  
            ; XREFS: CALL 0x00000593  CALL 0x00000d1e  
┌ fcn.000006d8();
│           0000:06d8      and   al, 0x7f
│           0000:06da      mov   bx, 0xed20
│           0000:06dd      xlatb
└           0000:06de      ret
```

### Function 0x000006df
```asm
; XREFS: CALL 0x00000352  CALL 0x00000397  CALL 0x000003d1  
            ; XREFS: CALL 0x00000404  CALL 0x000004b1  CALL 0x00000510  
            ; XREFS: CALL 0x000009ed  CALL 0x00000a03  CALL 0x00000a18  
            ; XREFS: CALL 0x00000a26  
┌ fcn.000006df(int16_t arg1, int16_t arg3, int16_t arg_4h, int16_t arg_5h, int16_t arg_6h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg_4h @ stack + 0x4
│           ; arg int16_t arg_5h @ stack + 0x5
│           ; arg int16_t arg_6h @ stack + 0x6
│           0000:06df      and   al, 0x7f
│           0000:06e1      mov   bl, al
│           0000:06e3      xor   bh, bh
│           0000:06e5      mov   cl, byte [bx - 0x12e0]                ; arg3
│           0000:06e9      mov   ch, 0x10
│           0000:06eb      mul   ch
│           0000:06ed      add   ax, word [0xc010]                     ; arg1
│           0000:06f1      mov   bp, ax                                ; arg1
│           0000:06f3      mov   al, byte ds:[bp + 6]
│           0000:06f7      and   al, 0xf
│           0000:06f9      mov   ch, 5
│           0000:06fb      mul   ch
│           0000:06fd      mov   si, 0xa070
│           0000:0700      test  byte ds:[bp + 5], 0x80
│       ┌─< 0000:0705      jne   0x70a
│       │   0000:0707      mov   si, 0xa030
│       └─> 0000:070a      mov   bl, byte ds:[bp + 4]
│           ; CODE XREF from fcn.00000730 @ +0x78
│           0000:070e      and   bl, 0x1f                              ; str.DHE7F ; "DHE7F\@\U0000000fIDI\xaeJlN1O\U0000000e\a\xbf\U00000016P3\xc0\xb9\x80"
│           0000:0711      add   bl, bl
│           0000:0713      xor   bh, bh
│           0000:0715      add   ax, word [bx + si]                    ; arg3
│           0000:0717      mov   si, ax                                ; arg1
│           0000:0719      lodsb al, byte [si]
│           0000:071a      test  byte [0xff34], 0xff
│       ┌─< 0000:071f      jne   0x72a
│       │   0000:0721      test  byte ds:[bp + 5], 0x20
│      ┌──< 0000:0726      je    0x72a
│      ││   0000:0728      add   al, 3
│      └└─> 0000:072a      mov   byte [0x4fed], al                     ; [0x4fed:1]=255
│           0000:072d      mov   al, cl
└           0000:072f      ret
```

### Function 0x00000730
```asm
; CALL XREF from fcn.00000136 @ 0x4e5
┌ fcn.00000730();
│           0000:0730      cmp   byte [0x4fec], 0x10                   ; [0x4fec:1]=255
│       ┌─< 0000:0735      jb    0x738
│       │   0000:0737      ret
│       └─> 0000:0738      push  cs
│           0000:0739      pop   es
│           0000:073a      call  word cs:[fcn.0000011a]                ; 0x11a
│           0000:073f      and   al, 0xf
│           0000:0741      cmp   al, 0xe
│       ┌─< 0000:0743      jae   0x746
│       │   0000:0745      ret
│       └─> 0000:0746      mov   di, 0xeda0
│           0000:0749      xor   cl, cl
│           ; CODE XREF from fcn.00000730 @ 0x755
│       ┌─> 0000:074b      cmp   byte [di], 0xff
│      ┌──< 0000:074e      je    0x757
│      │╎   0000:0750      add   di, 4
│      │╎   0000:0753      inc   cl
│      │└─< 0000:0755      jmp   0x74b
│      └──> 0000:0757      cmp   cl, 0x20                              ; "HE7F\@\U0000000fIDI\xaeJlN1O\U0000000e\a\xbf\U00000016P3\xc0\xb9\x80"
│       ┌─< 0000:075a      jb    0x75d
│       │   0000:075c      ret
│      ┌└─> 0000:075d      call  word cs:[fcn.0000011a]                ; 0x11a
│      ╎    0000:0762      and   al, 3
│      ╎    0000:0764      cmp   al, 3
│      └──< 0000:0766      je    0x75d
│           0000:0768      dec   al
│           0000:076a      add   al, byte [0x4feb]                     ; [0x4feb:1]=255
│           0000:076e      cmp   al, 0xff
│       ┌─< 0000:0770      jne   0x774
│       │   0000:0772      mov   al, 4
│       └─> 0000:0774      cmp   al, 0x1b
│       ┌─< 0000:0776      jb    0x77a
│       │   0000:0778      mov   al, 0x1a
│       └─> 0000:077a      stosb byte es:[di], al
│       ┌─> 0000:077b      call  word cs:[fcn.0000011a]                ; 0x11a
│       ╎   0000:0780      and   al, 3
│       ╎   0000:0782      cmp   al, 3
│       └─< 0000:0784      je    0x77b
│           0000:0786      dec   al
│           0000:0788      add   al, byte [0x4fec]                     ; [0x4fec:1]=255
│           0000:078c      cmp   al, 0xff
│       ┌─< 0000:078e      jne   0x792
│       │   0000:0790      xor   al, al
│       └─> 0000:0792      stosb byte es:[di], al
│           0000:0793      mov   al, 3
│           0000:0795      stosb byte es:[di], al
│           0000:0796      call  word cs:[fcn.0000011a]                ; 0x11a
│           0000:079b      and   al, 3
│           0000:079d      mov   bx, 0x37a2
│           0000:07a0      xlatb
│           0000:07a1      stosb byte es:[di], al
│           0000:07a2      mov   al, 0xff
│           0000:07a4      stosb byte es:[di], al
└           0000:07a5      ret
```

### Function 0x00000c87
```asm
; CODE XREFS from fcn.00000730 @ +0x3eb, +0x3f8, +0x475, +0x54b, +0x555
┌ fcn.00000c87(int16_t arg1, int16_t arg2, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg4 @ cx
│       ┌─> 0000:0c87      push  cx                                    ; arg4
│       ╎   0000:0c88      mov   al, byte es:[si]
│       ╎   0000:0c8b      or    al, al
│      ┌──< 0000:0c8d      je    0xcc0
│      │╎   0000:0c8f      push  es
│      │╎   0000:0c90      push  ds
│      │╎   0000:0c91      push  si
│      │╎   0000:0c92      push  di
│      │╎   0000:0c93      mov   ch, 0x10
│      │╎   0000:0c95      mul   ch
│      │╎   0000:0c97      mov   si, ax                                ; arg1
│      │╎   0000:0c99      add   si, 0x6333
│      │╎   0000:0c9d      mov   bp, ax                                ; arg1
│      │╎   0000:0c9f      add   bp, 0xd000
│      │╎   0000:0ca3      mov   ds, word cs:[0xff2c]
│      │╎   0000:0ca8      mov   di, dx                                ; arg2
│      │╎   0000:0caa      push  cs
│      │╎   0000:0cab      pop   es
│      │╎   0000:0cac      mov   al, byte cs:[0x4feb]
│      │╎   0000:0cb0      mov   cl, 0x10
│      │╎   0000:0cb2      mul   cl
│      │╎   0000:0cb4      add   ax, 0x5216                            ; int16_t arg2
│      │╎   0000:0cb7      mov   di, ax                                ; arg1
│      │╎   0000:0cb9      call  fcn.00000631                          ; fcn.00000631
│      │╎   0000:0cbc      pop   di
│      │╎   0000:0cbd      pop   si
│      │╎   0000:0cbe      pop   ds
│      │╎   0000:0cbf      pop   es
│      └──> 0000:0cc0      inc   si
│       ╎   0000:0cc1      inc   byte [0x4feb]
│       ╎   0000:0cc5      pop   cx
│       └─< 0000:0cc6      loop  fcn.00000c87
└           0000:0cc8      ret
```

### Function 0x00000cc9
```asm
; CALL XREFS from fcn.00000730 @ +0x35f, +0x393, +0x49a, +0x4c6, +0x501
┌ fcn.00000cc9();
│           0000:0cc9      mov   al, byte [0x93]                       ; [0x93:1]=67
│           0000:0ccc      or    al, al
│       ┌─< 0000:0cce      jne   0xcd1
│       │   0000:0cd0      ret
│       └─> 0000:0cd1      cmp   al, 4                                 ; str.0b9 ; ",0b9\U00000015?\xd3=\xac@\xe4D\xd5?z2\xa67\xfe@d@L9_B\xfeDHE7F\@\U0000000fIDI\xaeJlN1O\U0000000e\a\xbf\U00000016P3\xc0\xb9\x80"
│           0000:0cd3      mov   al, 1
│       ┌─< 0000:0cd5      jae   0xcd8
│       │   0000:0cd7      ret
│       └─> 0000:0cd8      mov   al, 2
└           0000:0cda      ret
```

### Function 0x00000d6f
```asm
; CALL XREF from fcn.00000730 @ +0x236
┌ fcn.00000d6f(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:0d6f      mov   cl, byte [0x84]                       ; [0x84:1]=2
│           0000:0d73      mov   al, 0x24                              ; '$'
│           0000:0d75      mul   cl
│           0000:0d77      mov   cl, byte [0x83]                       ; [0x83:1]=223
│           0000:0d7b      add   cl, 4
│           0000:0d7e      xor   ch, ch
│           0000:0d80      add   ax, cx                                ; arg4
│           0000:0d82      add   ax, word [0xff31]                     ; arg1
│           0000:0d86      mov   si, ax                                ; arg1
│           0000:0d88      call  fcn.00001534                          ; fcn.00001534
│           0000:0d8b      mov   di, 0x500d
│           0000:0d8e      push  cs
│           0000:0d8f      pop   es
│           0000:0d90      mov   cx, 3
│       ┌─> 0000:0d93      movsw word es:[di], word ptr [si]
│       ╎   0000:0d94      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0d95      add   si, 0x21
│       ╎   0000:0d98      call  fcn.00001534                          ; fcn.00001534
│       └─< 0000:0d9b      loop  0xd93
└           0000:0d9d      ret
```

### Function 0x00000d9e
```asm
; CALL XREF from fcn.00000118 @ 0xbb
┌ fcn.00000d9e(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0d9e      mov   al, byte [0x4fea]                     ; [0x4fea:1]=255
│           0000:0da1      neg   al
│           0000:0da3      add   al, 0x12
│           0000:0da5      mov   cl, al
│           0000:0da7      test  byte [0xff43], 0xff
│       ┌─< 0000:0dac      jne   0xdbb
│       │   0000:0dae      mov   al, byte [0x84]                       ; [0x84:1]=2
│       │   0000:0db1      sub   al, 2
│       │   0000:0db3      cmp   al, cl
│      ┌──< 0000:0db5      jne   0xdba
│      ││   0000:0db7      call  0x1068
│      └──> 0000:0dba      ret
│       └─> 0000:0dbb      mov   al, byte [0x84]                       ; [0x84:1]=2
│           0000:0dbe      sub   al, 5
│           0000:0dc0      cmp   cl, al
│       ┌─< 0000:0dc2      jae   0xdc5
│       │   0000:0dc4      ret
│      ┌└─> 0000:0dc5      jne   0xdcd
│      │    0000:0dc7      call  fcn.00000f19                          ; fcn.00000f19
│      │┌─< 0000:0dca      jmp   0x1068
│      └──> 0000:0dcd      add   al, 0xa
│       │   0000:0dcf      cmp   al, cl
│      ┌──< 0000:0dd1      je    0xdd4
│      ││   0000:0dd3      ret
│     ┌└──> 0000:0dd4      jmp   0xfd9
..
  │││││││   ; CODE XREF from fcn.00000d9e @ +0xd1
  │││││││   ; CODE XREFS from fcn.00000d9e @ +0x87, +0xa5, +0x128
   ││ │││   ; CODE XREFS from fcn.00000d9e @ +0x60, +0xaf, +0xda
      │││   ; CALL XREF from fcn.00000d9e @ 0xdc7
      │││   ; CALL XREF from fcn.00000d9e @ 0xfee
      │││   ; CALL XREF from fcn.00000f19 @ 0xf25
      │││   ; CALL XREF from fcn.00000d9e @ 0xfeb
│     │││   ; CODE XREF from fcn.00000d9e @ 0xdd4
│     │││   ; CODE XREF from fcn.00000d9e @ +0x169
│     └└──> 0000:0fd9      test  byte [0xff43], 0xff                   ; arg1
│      ┌──< 0000:0fde      jne   0xfe1
│      ││   0000:0fe0      ret
│      └──> 0000:0fe1      mov   byte [0xff44], 0xff                   ; [0xff:1]=232
│       │   0000:0fe6      push  es
│       │   0000:0fe7      push  ds
│       │   0000:0fe8      push  di
│       │   0000:0fe9      push  si
│       │   0000:0fea      push  bx                                    ; arg3
│       │   0000:0feb      call  fcn.00000f8f                          ; fcn.00000f8f
│       │   0000:0fee      call  fcn.00000f32                          ; fcn.00000f32
│       │   0000:0ff1      mov   ds, word cs:[0xff2c]
│       │   0000:0ff6      mov   ax, 0xb000
│       │   0000:0ff9      mov   es, ax
│       │   0000:0ffb      mov   di, word cs:[0x4fef]
│       │   0000:1000      mov   si, word cs:[0x4ff1]
│       │   0000:1005      mov   cx, 4
│      ┌──> 0000:1008      push  cx                                    ; 0x4 ; ",0b9\U00000015?\xd3=\xac@\xe4D\xd5?z2\xa67\xfe@d@L9_B\xfeDHE7F\@\U0000000fIDI\xaeJlN1O\U0000000e\a\xbf\U00000016P3\xc0\xb9\x80"
│      ╎│   0000:1009      push  di
│      ╎│   0000:100a      mov   cx, 4
│     ┌───> 0000:100d      push  cx                                    ; 0x4 ; ",0b9\U00000015?\xd3=\xac@\xe4D\xd5?z2\xa67\xfe@d@L9_B\xfeDHE7F\@\U0000000fIDI\xaeJlN1O\U0000000e\a\xbf\U00000016P3\xc0\xb9\x80"
│     ╎╎│   0000:100e      lodsb al, byte [si]
│     ╎╎│   0000:100f      cmp   al, 0xff
│    ┌────< 0000:1011      jne   0x1023
│    │╎╎│   0000:1013      add   di, 0x40b4
│    │╎╎│   0000:1017      cmp   di, 0x6000
│   ┌─────< 0000:101b      jb    0x1021
│   ││╎╎│   0000:101d      add   di, 0xa05a
│  ┌└─────> 0000:1021      jmp   0x1051
│  │ └────> 0000:1023      push  si
│  │  ╎╎│   0000:1024      xor   ah, ah
│  │  ╎╎│   0000:1026      add   ax, ax
│  │  ╎╎│   0000:1028      add   ax, ax
│  │  ╎╎│   0000:102a      add   ax, ax
│  │  ╎╎│   0000:102c      add   ax, ax
│  │  ╎╎│   0000:102e      mov   si, ax
│  │  ╎╎│   0000:1030      add   si, word [0xb000]
│  │  ╎╎│   0000:1034      mov   cx, 8
│  │ ┌────> 0000:1037      push  cx
│  │ ╎╎╎│   0000:1038      lodsw ax, word [si]
│  │ ╎╎╎│   0000:1039      or    word es:[di], ax
│  │ ╎╎╎│   0000:103c      add   di, 0x2000
│  │ ╎╎╎│   0000:1040      cmp   di, 0x6000
│  │┌─────< 0000:1044      jb    0x104d
│  ││╎╎╎│   0000:1046      or    word es:[di], ax
│  ││╎╎╎│   0000:1049      add   di, 0xa05a
│  │└─────> 0000:104d      pop   cx
│  │ └────< 0000:104e      loop  0x1037
│  │  ╎╎│   0000:1050      pop   si
│  │  ╎╎│   ; CODE XREF from fcn.00000d9e @ 0x1021
│  └──────> 0000:1051      pop   cx
│     └───< 0000:1052      loop  0x100d
│      ╎│   0000:1054      pop   di
│      ╎│   0000:1055      inc   di
│      ╎│   0000:1056      inc   di
│      ╎│   0000:1057      pop   cx
│      └──< 0000:1058      loop  0x1008
│       │   0000:105a      pop   bx
│       │   0000:105b      pop   si
│       │   0000:105c      pop   di
│       │   0000:105d      pop   ds
│       │   0000:105e      pop   es
│       │   0000:105f      ret
..
│      ││   ; CODE XREFS from fcn.00000d9e @ 0xdb7, 0xdca
│      │└─> 0000:1068      test  byte [0xff37], 0xff
│      │┌─< 0000:106d      je    0x1070
│      ││   0000:106f      ret
│      │└─> 0000:1070      mov   byte [0xff37], 0xff                   ; [0xff:1]=232
│      │    ; CODE XREF from fcn.00000f8f @ +0xd7
│      └──> 0000:1075      push  es
│           0000:1076      push  ds
│           0000:1077      push  si
│           0000:1078      push  di
│           0000:1079      push  bx
│           0000:107a      mov   ax, 0xb000
│           0000:107d      mov   es, ax
│           0000:107f      mov   si, 0x5216
│           0000:1082      mov   di, word cs:[0x4fe6]
│           0000:1087      mov   cx, 3
│       ┌─> 0000:108a      push  cx
│       ╎   0000:108b      mov   cx, 3
│      ┌──> 0000:108e      push  cx
│      ╎╎   0000:108f      push  di
│      ╎╎   0000:1090      call  fcn.000006b1                          ; fcn.000006b1
│      ╎╎   0000:1093      pop   di
│      ╎╎   0000:1094      inc   di
│      ╎╎   0000:1095      inc   di
│      ╎╎   0000:1096      pop   cx
│      └──< 0000:1097      loop  0x108e
│       ╎   0000:1099      add   di, 0x40ae
│       ╎   0000:109d      cmp   di, 0x6000
│      ┌──< 0000:10a1      jb    0x10a7
│      │╎   0000:10a3      add   di, 0xa05a
│      └──> 0000:10a7      pop   cx
│       └─< 0000:10a8      loop  0x108a
│           0000:10aa      pop   bx
│           0000:10ab      pop   di
│           0000:10ac      pop   si
│           0000:10ad      pop   ds
│           0000:10ae      pop   es
└           0000:10af      ret
```

### Function 0x00000f19
```asm
; CALL XREF from fcn.00000d9e @ 0xdc7
┌ fcn.00000f19(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0f19      test  byte [0xff44], 0xff
│       ┌─< 0000:0f1e      jne   0xf21
│       │   0000:0f20      ret
│       └─> 0000:0f21      push  es
│           0000:0f22      push  di
│           0000:0f23      push  si
│           0000:0f24      push  bx                                    ; arg3
│           0000:0f25      call  fcn.00000f5b                          ; fcn.00000f5b
│           0000:0f28      pop   bx
│           0000:0f29      pop   si
│           0000:0f2a      pop   di
│           0000:0f2b      pop   es
│           0000:0f2c      mov   byte [0xff44], 0
└           0000:0f31      ret
```

### Function 0x00000f32
```asm
; CALL XREF from fcn.00000d9e @ 0xfee
┌ fcn.00000f32();
│           0000:0f32      push  ds
│           0000:0f33      push  cs
│           0000:0f34      pop   es
│           0000:0f35      mov   si, word cs:[0x4fef]
│           0000:0f3a      mov   ax, 0xb000
│           0000:0f3d      mov   ds, ax
│           0000:0f3f      mov   di, 0x5116
│           0000:0f42      mov   cx, 0x20                              ; "HE7F\@\U0000000fIDI\xaeJlN1O\U0000000e\a\xbf\U00000016P3\xc0\xb9\x80"
│       ┌─> 0000:0f45      movsw word es:[di], word ptr [si]
│       ╎   0000:0f46      movsw word es:[di], word ptr [si]
│       ╎   0000:0f47      movsw word es:[di], word ptr [si]
│       ╎   0000:0f48      movsw word es:[di], word ptr [si]
│       ╎   0000:0f49      add   si, 0x1ff8
│       ╎   0000:0f4d      cmp   si, 0x6000
│      ┌──< 0000:0f51      jb    0xf57
│      │╎   0000:0f53      add   si, 0xa05a
│      └└─< 0000:0f57      loop  0xf45
│           0000:0f59      pop   ds
└           0000:0f5a      ret
```

### Function 0x00000f5b
```asm
; CALL XREF from fcn.00000f19 @ 0xf25
┌ fcn.00000f5b();
│           0000:0f5b      push  ds
│           0000:0f5c      push  cs
│           0000:0f5d      pop   ds
│           0000:0f5e      mov   di, word cs:[0x4fef]
│           0000:0f63      mov   ax, 0xb000
│           0000:0f66      mov   es, ax
│           0000:0f68      mov   si, 0x5116
│           0000:0f6b      mov   cx, 0x20                              ; "HE7F\@\U0000000fIDI\xaeJlN1O\U0000000e\a\xbf\U00000016P3\xc0\xb9\x80"
│       ┌─> 0000:0f6e      push  si
│       ╎   0000:0f6f      movsw word es:[di], word ptr [si]
│       ╎   0000:0f70      movsw word es:[di], word ptr [si]
│       ╎   0000:0f71      movsw word es:[di], word ptr [si]
│       ╎   0000:0f72      movsw word es:[di], word ptr [si]
│       ╎   0000:0f73      pop   si
│       ╎   0000:0f74      add   di, 0x1ff8
│       ╎   0000:0f78      cmp   di, 0x6000
│      ┌──< 0000:0f7c      jb    0xf88
│      │╎   0000:0f7e      push  si
│      │╎   0000:0f7f      movsw word es:[di], word ptr [si]
│      │╎   0000:0f80      movsw word es:[di], word ptr [si]
│      │╎   0000:0f81      movsw word es:[di], word ptr [si]
│      │╎   0000:0f82      movsw word es:[di], word ptr [si]
│      │╎   0000:0f83      pop   si
│      │╎   0000:0f84      add   di, 0xa052
│      └──> 0000:0f88      add   si, 8
│       └─< 0000:0f8b      loop  0xf6e
│           0000:0f8d      pop   ds
└           0000:0f8e      ret
```

### Function 0x00000f8f
```asm
; CALL XREF from fcn.00000d9e @ 0xfeb
┌ fcn.00000f8f(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:0f8f      mov   al, byte [0x84]                       ; [0x84:1]=2
│           0000:0f92      add   al, byte [0x4ff3]                     ; [0x4ff3:1]=255
│           0000:0f96      and   al, 0x3f
│           0000:0f98      mov   cl, 0x24                              ; '$'
│           0000:0f9a      mul   cl
│           0000:0f9c      mov   cl, byte [0x83]                       ; [0x83:1]=223
│           0000:0fa0      add   cl, byte [0x4ff4]                     ; [0x4ff4:1]=255
│           0000:0fa4      add   cl, 4
│           0000:0fa7      xor   ch, ch
│           0000:0fa9      add   ax, cx                                ; arg4
│           0000:0fab      mov   si, ax                                ; arg1
│           0000:0fad      add   si, word [0xff31]
│           0000:0fb1      call  fcn.00001534                          ; fcn.00001534
│           0000:0fb4      mov   cx, 4
│       ┌─> 0000:0fb7      push  cx                                    ; 0x4 ; ",0b9\U00000015?\xd3=\xac@\xe4D\xd5?z2\xa67\xfe@d@L9_B\xfeDHE7F\@\U0000000fIDI\xaeJlN1O\U0000000e\a\xbf\U00000016P3\xc0\xb9\x80"
│       ╎   0000:0fb8      mov   cx, 4
│      ┌──> 0000:0fbb      push  cx                                    ; 0x4 ; ",0b9\U00000015?\xd3=\xac@\xe4D\xd5?z2\xa67\xfe@d@L9_B\xfeDHE7F\@\U0000000fIDI\xaeJlN1O\U0000000e\a\xbf\U00000016P3\xc0\xb9\x80"
│      ╎╎   0000:0fbc      mov   bl, byte [si]
│      ╎╎   0000:0fbe      inc   si
│      ╎╎   0000:0fbf      and   bl, 0x7f
│      ╎╎   0000:0fc2      xor   bh, bh
│      ╎╎   0000:0fc4      add   bx, bx
│      ╎╎   0000:0fc6      mov   word [bx + 0x5016], 0
│      ╎╎   0000:0fcc      pop   cx
│      └──< 0000:0fcd      loop  0xfbb
│       ╎   0000:0fcf      add   si, 0x20                              ; "HE7F\@\U0000000fIDI\xaeJlN1O\U0000000e\a\xbf\U00000016P3\xc0\xb9\x80"
│       ╎   0000:0fd2      call  fcn.00001534                          ; fcn.00001534
│       ╎   0000:0fd5      pop   cx
│       └─< 0000:0fd6      loop  0xfb7
└           0000:0fd8      ret
```

### Function 0x00001156
```asm
; CALL XREF from fcn.00000f8f @ +0x1a2
┌ fcn.00001156(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:1156      cmp   byte [di], 0xff
│       ┌─< 0000:1159      jne   0x115c
│       │   0000:115b      ret
│       └─> 0000:115c      cmp   byte [di], 0xfc
│       ┌─< 0000:115f      jne   0x1162
│       │   0000:1161      ret
│       └─> 0000:1162      push  ds
│           0000:1163      push  di
│           0000:1164      push  si
│           0000:1165      push  bx                                    ; arg3
│           0000:1166      push  ax                                    ; arg1
│           0000:1167      mov   ah, byte [0x4ff7]                     ; [0x4ff7:1]=255
│           0000:116b      dec   ah
│           0000:116d      shr   ah, 1
│           0000:116f      shr   ah, 1
│           0000:1171      shr   ah, 1
│           0000:1173      sbb   ah, ah
│           0000:1175      xor   ah, 0xcc
│           0000:1178      mov   byte cs:[0x4ff8], ah
│           0000:117d      add   bx, bx                                ; arg3
│           0000:117f      xchg  bl, bh
│           0000:1181      add   bx, word [0x4fe4]                     ; [0x4fe4:2]=0xffff ; arg3
│           0000:1185      mov   di, bx                                ; arg3
│           0000:1187      pop   ax
│           0000:1188      test  al, 0xff
│       ┌─< 0000:118a      je    0x11f9
│       │   0000:118c      dec   al
│       │   0000:118e      mov   cl, 0x10
│       │   0000:1190      mul   cl
│       │   0000:1192      add   ax, 0x8030                            ; int16_t arg1
│       │   0000:1195      mov   si, ax
│       │   0000:1197      mov   ds, word cs:[0xff2c]
│       │   0000:119c      push  si
│       │   0000:119d      push  di
│       │   0000:119e      mov   al, byte cs:[0x4ff7]
│       │   0000:11a2      and   al, 3
│       │   0000:11a4      neg   al
│       │   0000:11a6      add   al, 3
│       │   0000:11a8      call  fcn.00001258                          ; fcn.00001258
│       │   0000:11ab      call  fcn.000011c4                          ; fcn.000011c4
│       │   0000:11ae      pop   di
│       │   0000:11af      pop   si
│       │   0000:11b0      mov   al, byte cs:[0x4ff7]
│       │   0000:11b4      call  fcn.00001258                          ; fcn.00001258
│       │   0000:11b7      add   di, 0x100
│       │   0000:11bb      inc   si
│       │   0000:11bc      call  fcn.000011c4                          ; fcn.000011c4
│       │   0000:11bf      pop   bx
│       │   0000:11c0      pop   si
│       │   0000:11c1      pop   di
│       │   0000:11c2      pop   ds
│       │   0000:11c3      ret
        │   ; CALL XREFS from fcn.00001156 @ 0x11ab, 0x11bc
..
│       └─> 0000:11f9      push  di
│           0000:11fa      mov   al, byte cs:[0x4ff7]
│           0000:11fe      and   al, 3
│           0000:1200      neg   al
│           0000:1202      add   al, 3
│           0000:1204      call  fcn.00001258                          ; fcn.00001258
│           0000:1207      call  fcn.0000121e                          ; fcn.0000121e
│           0000:120a      pop   di
│           0000:120b      mov   al, byte cs:[0x4ff7]
│           0000:120f      call  fcn.00001258                          ; fcn.00001258
│           0000:1212      add   di, 0x100
│           0000:1216      call  fcn.0000121e                          ; fcn.0000121e
│           0000:1219      pop   bx
│           0000:121a      pop   si
│           0000:121b      pop   di
│           0000:121c      pop   ds
└           0000:121d      ret
```

### Function 0x000011c4
```asm
; CALL XREFS from fcn.00001156 @ 0x11ab, 0x11bc
┌ fcn.000011c4(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:11c4      mov   cx, 2
│       ┌─> 0000:11c7      push  di
│       ╎   0000:11c8      mov   bx, di
│       ╎   0000:11ca      call  fcn.00001e4a                          ; fcn.00001e4a
│       ╎   0000:11cd      mov   di, ax
│       ╎   0000:11cf      mov   bl, byte cs:[0x4ff8]
│       ╎   0000:11d4      lodsb al, byte [si]
│       ╎   0000:11d5      and   al, bl
│       ╎   0000:11d7      not   bl
│       ╎   0000:11d9      and   byte es:[di], bl
│       ╎   0000:11dc      or    byte es:[di], al
│       ╎   0000:11df      cmp   di, 0x4000
│      ┌──< 0000:11e3      jb    0x11ef
│      │╎   0000:11e5      add   di, 0x2000
│      │╎   0000:11e9      and   byte es:[di], bl
│      │╎   0000:11ec      or    byte es:[di], al
│      └──> 0000:11ef      pop   di
│       ╎   0000:11f0      add   di, 4
│       ╎   0000:11f3      add   si, 7
│       └─< 0000:11f6      loop  0x11c7
└           0000:11f8      ret
```

### Function 0x0000121e
```asm
; CALL XREFS from fcn.00001156 @ 0x1207, 0x1216
┌ fcn.0000121e(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:121e      push  di
│           0000:121f      mov   bx, di
│           0000:1221      call  fcn.00001e4a                          ; fcn.00001e4a
│           0000:1224      mov   di, ax
│           0000:1226      mov   al, byte cs:[0x4ff8]
│           0000:122a      not   al
│           0000:122c      and   byte es:[di], al
│           0000:122f      cmp   di, 0x4000
│       ┌─< 0000:1233      jb    0x123c
│       │   0000:1235      add   di, 0x2000
│       │   0000:1239      and   byte es:[di], al
│       └─> 0000:123c      pop   bx
│           0000:123d      push  ax
│           0000:123e      add   bx, 4
│           0000:1241      call  fcn.00001e4a                          ; fcn.00001e4a
│           0000:1244      mov   di, ax
│           0000:1246      pop   ax
│           0000:1247      and   byte es:[di], al
│           0000:124a      cmp   di, 0x4000
│       ┌─< 0000:124e      jb    0x1257
│       │   0000:1250      add   di, 0x2000
│       │   0000:1254      and   byte es:[di], al
└       └─> 0000:1257      ret
```

### Function 0x00001258
```asm
; CALL XREFS from fcn.00001156 @ 0x11a8, 0x11b4, 0x1204, 0x120f
┌ fcn.00001258(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1258      and   al, 3
│           0000:125a      xor   ah, ah
│           0000:125c      add   di, ax                                ; arg1
│           0000:125e      add   ax, ax                                ; arg1
│           0000:1260      add   si, ax                                ; arg1
└           0000:1262      ret
```

### Function 0x00001293
```asm
; CALL XREFS from fcn.00001258 @ +0x2d, +0x35
┌ fcn.00001293();
│           0000:1293      mov   al, byte [0x4fe2]                     ; [0x4fe2:1]=255
│           0000:1296      dec   al
│           0000:1298      mov   bl, al
│           0000:129a      add   al, 0x19
│           0000:129c      mov   dl, al
│           0000:129e      mov   al, byte [0x4fe3]                     ; [0x4fe3:1]=255
│           0000:12a1      dec   al
│           0000:12a3      mov   bh, al
│           0000:12a5      add   al, 0x19
│           0000:12a7      mov   dh, al
│           0000:12a9      call  0x12db
│           0000:12ac      mov   al, byte [0x4fe2]                     ; [0x4fe2:1]=255
│           0000:12af      sub   al, 5
│           0000:12b1      mov   bl, al
│           0000:12b3      add   al, 0x21
│           0000:12b5      mov   dl, al
│           0000:12b7      mov   al, byte [0x4fe3]                     ; [0x4fe3:1]=255
│           0000:12ba      sub   al, 5
│           0000:12bc      mov   bh, al
│           0000:12be      add   al, 0x21
│           0000:12c0      mov   dh, al
│           0000:12c2      call  0x12db
│           0000:12c5      mov   al, byte [0x4fe2]                     ; [0x4fe2:1]=255
│           0000:12c8      sub   al, 9
│           0000:12ca      mov   bl, al
│           0000:12cc      add   al, 0x29
│           0000:12ce      mov   dl, al
│           0000:12d0      mov   al, byte [0x4fe3]                     ; [0x4fe3:1]=255
│           0000:12d3      sub   al, 9
│           0000:12d5      mov   bh, al
│           0000:12d7      add   al, 0x29
│           0000:12d9      mov   dh, al
│           ; CALL XREFS from fcn.00001293 @ 0x12a9, 0x12c2
│           0000:12db      mov   cx, 9
│       ┌─> 0000:12de      push  cx
│       ╎   0000:12df      push  dx
│       ╎   0000:12e0      push  bx
│       ╎   0000:12e1      call  fcn.0000130d                          ; fcn.0000130d
│       ╎   0000:12e4      pop   bx
│       ╎   0000:12e5      pop   dx
│       ╎   0000:12e6      sub   bl, 0xc
│      ┌──< 0000:12e9      jae   0x12ed
│      │╎   0000:12eb      xor   bl, bl
│      └──> 0000:12ed      sub   bh, 0xc
│      ┌──< 0000:12f0      jae   0x12f4
│      │╎   0000:12f2      xor   bh, bh
│      └──> 0000:12f4      add   dl, 0xc
│      ┌──< 0000:12f7      jae   0x12fb
│      │╎   0000:12f9      mov   dl, 0xff
│      └──> 0000:12fb      add   dh, 0xc
│      ┌──< 0000:12fe      jae   0x1302
│      │╎   0000:1300      mov   dh, 0xff
│      └──> 0000:1302      push  dx
│       ╎   0000:1303      push  bx
│       ╎   0000:1304      call  fcn.00001479                          ; fcn.00001479
│       ╎   0000:1307      pop   bx
│       ╎   0000:1308      pop   dx
│       ╎   0000:1309      pop   cx
│       └─< 0000:130a      loop  0x12de
└           0000:130c      ret
```

### Function 0x0000130d
```asm
; CALL XREF from fcn.00001293 @ 0x12e1
┌ fcn.0000130d(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:130d      mov   ax, 0xb000                            ; int16_t arg2
│           0000:1310      mov   es, ax
│           0000:1312      push  dx                                    ; arg2
│           0000:1313      push  bx                                    ; arg3
│           0000:1314      mov   dh, bh
│           0000:1316      call  fcn.000013a5                          ; fcn.000013a5
│           0000:1319      pop   bx
│           0000:131a      pop   dx
│           0000:131b      push  dx
│           0000:131c      push  bx
│           0000:131d      mov   bh, dh
│           0000:131f      call  fcn.000013a5                          ; fcn.000013a5
│           0000:1322      pop   bx
│           0000:1323      pop   dx                                    ; int16_t arg3
│           0000:1324      push  dx
│           0000:1325      push  bx
│           0000:1326      mov   dl, bl
│           0000:1328      call  0x132f
│           0000:132b      pop   bx
│           0000:132c      pop   dx
│           0000:132d      mov   bl, dl
│           ; CALL XREF from fcn.0000130d @ 0x1328
│           0000:132f      cmp   dh, bh
│       ┌─< 0000:1331      jae   0x1335
│       │   0000:1333      xchg  bx, dx
│       └─> 0000:1335      or    bl, bl
│       ┌─< 0000:1337      jne   0x133a
│       │   0000:1339      ret
│       └─> 0000:133a      cmp   bl, 0xdf
│       ┌─< 0000:133d      jb    0x1340
│       │   0000:133f      ret
│       └─> 0000:1340      or    bh, bh
│       ┌─< 0000:1342      jne   0x1346
│       │   0000:1344      mov   bh, 1
│       └─> 0000:1346      cmp   dh, 0x8f
│       ┌─< 0000:1349      jb    0x134d
│       │   0000:134b      mov   dh, 0x8e
│       └─> 0000:134d      mov   al, dh
│           0000:134f      sub   al, bh
│           0000:1351      inc   al
│           0000:1353      push  ax
│           0000:1354      mov   al, bh
│           0000:1356      call  fcn.0000146c                          ; fcn.0000146c
│           0000:1359      mov   al, bl
│           0000:135b      shr   al, 1
│           0000:135d      shr   al, 1
│           0000:135f      xor   ah, ah
│           0000:1361      add   di, ax
│           0000:1363      pop   cx
│           0000:1364      xor   ch, ch
│           0000:1366      and   bl, 3
│       ┌─< 0000:1369      je    0x137e
│       │   0000:136b      cmp   bl, 2
│      ┌──< 0000:136e      jb    0x137a
│     ┌───< 0000:1370      je    0x1376
│     │││   0000:1372      mov   ah, 3
│    ┌────< 0000:1374      jmp   0x1380
│    │└───> 0000:1376      mov   ah, 0xc
│    │┌───< 0000:1378      jmp   0x1380
│    ││└──> 0000:137a      mov   ah, 0x30                              ; '0'
│    ││┌──< 0000:137c      jmp   0x1380
│    │││└─> 0000:137e      mov   ah, 0xc0
│    │││    ; CODE XREFS from fcn.0000130d @ 0x1374, 0x1378, 0x137c
│    └└└──> 0000:1380      mov   al, ah
│           0000:1382      not   al
│           0000:1384      and   ah, byte [0x4ff7]                     ; [0x4ff7:1]=255
│       ┌─> 0000:1388      and   byte es:[di], al
│       ╎   0000:138b      or    byte es:[di], ah
│       ╎   0000:138e      add   di, 0x2000
│       ╎   0000:1392      cmp   di, 0x6000
│      ┌──< 0000:1396      jb    0x13a2
│      │╎   0000:1398      and   byte es:[di], al
│      │╎   0000:139b      or    byte es:[di], ah
│      │╎   0000:139e      add   di, 0xa05a
│      └└─< 0000:13a2      loop  0x1388
└           0000:13a4      ret
```

### Function 0x000013a5
```asm
; CALL XREFS from fcn.0000130d @ 0x1316, 0x131f
┌ fcn.000013a5(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:13a5      cmp   dl, bl
│       ┌─< 0000:13a7      jae   0x13ab
│       │   0000:13a9      xchg  bx, dx                                ; arg2
│       └─> 0000:13ab      or    bh, bh
│       ┌─< 0000:13ad      jne   0x13b0
│       │   0000:13af      ret
│       └─> 0000:13b0      cmp   bh, 0x8f
│       ┌─< 0000:13b3      jb    0x13b6
│       │   0000:13b5      ret
│       └─> 0000:13b6      or    bl, bl
│       ┌─< 0000:13b8      jne   0x13bc
│       │   0000:13ba      mov   bl, 1
│       └─> 0000:13bc      cmp   dl, 0xdf
│       ┌─< 0000:13bf      jb    0x13c3
│       │   0000:13c1      mov   dl, 0xde
│       └─> 0000:13c3      mov   al, bh
│           0000:13c5      call  fcn.0000146c                          ; fcn.0000146c
│           0000:13c8      mov   al, bl
│           0000:13ca      shr   al, 1
│           0000:13cc      shr   al, 1
│           0000:13ce      xor   ah, ah
│           0000:13d0      add   di, ax
│           0000:13d2      mov   ah, dl
│           0000:13d4      shr   ah, 1
│           0000:13d6      shr   ah, 1
│           0000:13d8      sub   ah, al
│           0000:13da      mov   cl, ah
│           0000:13dc      xor   ch, ch
│           0000:13de      and   bl, 3
│       ┌─< 0000:13e1      je    0x13f6
│       │   0000:13e3      cmp   bl, 2
│      ┌──< 0000:13e6      jb    0x13f2
│     ┌───< 0000:13e8      je    0x13ee
│     │││   0000:13ea      mov   al, 3
│    ┌────< 0000:13ec      jmp   0x13f8
│    │└───> 0000:13ee      mov   al, 0xf
│    │┌───< 0000:13f0      jmp   0x13f8
│    ││└──> 0000:13f2      mov   al, 0x3f                              ; '?'
│    ││┌──< 0000:13f4      jmp   0x13f8
│    │││└─> 0000:13f6      mov   al, 0xff
│    │││    ; CODE XREFS from fcn.000013a5 @ 0x13ec, 0x13f0, 0x13f4
│    └└└──> 0000:13f8      and   dl, 3
│       ┌─< 0000:13fb      je    0x1410
│       │   0000:13fd      cmp   dl, 2
│      ┌──< 0000:1400      jb    0x140c
│     ┌───< 0000:1402      je    0x1408
│     │││   0000:1404      mov   ah, 0xff
│    ┌────< 0000:1406      jmp   0x1412
│    │└───> 0000:1408      mov   ah, 0xfc
│    │┌───< 0000:140a      jmp   0x1412
│    ││└──> 0000:140c      mov   ah, 0xf0
│    ││┌──< 0000:140e      jmp   0x1412
│    │││└─> 0000:1410      mov   ah, 0xc0
│    │││    ; CODE XREFS from fcn.000013a5 @ 0x1406, 0x140a, 0x140e
│    └└└┌─< 0000:1412      jcxz  0x145b
│       │   0000:1414      dec   cx
│      ┌──< 0000:1415      jcxz  0x143d
│      ││   0000:1417      mov   dh, al
│      ││   0000:1419      not   dh
│      ││   0000:141b      and   al, byte [0x4ff7]                     ; [0x4ff7:1]=255
│      ││   0000:141f      and   byte es:[di], dh
│      ││   0000:1422      or    byte es:[di], al
│      ││   0000:1425      inc   di
│      ││   0000:1426      mov   al, 0xff
│      ││   0000:1428      and   al, byte [0x4ff7]                     ; [0x4ff7:1]=255
│      ││   0000:142c      rep   stosb byte es:[di], al
│      ││   0000:142e      mov   dh, ah
│      ││   0000:1430      not   dh
│      ││   0000:1432      and   ah, byte [0x4ff7]                     ; [0x4ff7:1]=255
│      ││   0000:1436      and   byte es:[di], dh
│      ││   0000:1439      or    byte es:[di], ah
│      ││   0000:143c      ret
│      └──> 0000:143d      mov   dh, al
│       │   0000:143f      not   dh
│       │   0000:1441      and   al, byte [0x4ff7]                     ; [0x4ff7:1]=255
│       │   0000:1445      and   byte es:[di], dh
│       │   0000:1448      or    byte es:[di], al
│       │   0000:144b      inc   di
│       │   0000:144c      mov   dh, ah
│       │   0000:144e      not   dh
│       │   0000:1450      and   ah, byte [0x4ff7]                     ; [0x4ff7:1]=255
│       │   0000:1454      and   byte es:[di], dh
│       │   0000:1457      or    byte es:[di], ah
│       │   0000:145a      ret
│       └─> 0000:145b      and   al, ah
│           0000:145d      mov   dh, al
│           0000:145f      not   dh
│           0000:1461      and   al, byte [0x4ff7]                     ; [0x4ff7:1]=255
│           0000:1465      and   byte es:[di], dh
│           0000:1468      or    byte es:[di], al
└           0000:146b      ret
```

### Function 0x0000146c
```asm
; CALL XREF from fcn.0000130d @ 0x1356
            ; CALL XREF from fcn.000013a5 @ 0x13c5
┌ fcn.0000146c(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:146c      push  bx                                    ; arg3
│           0000:146d      mov   bx, 0xc0e
│           0000:1470      add   bl, al
│           0000:1472      call  fcn.00001e4a                          ; fcn.00001e4a
│           0000:1475      mov   di, ax
│           0000:1477      pop   bx
└           0000:1478      ret
```

### Function 0x00001479
```asm
; CALL XREF from fcn.00001293 @ 0x1304
┌ fcn.00001479(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1479      mov   cl, byte [0xff33]
│           0000:147d      shr   cl, 1
│           0000:147f      inc   cl
│           0000:1481      mov   al, 1
│           0000:1483      mul   cl
│       ┌─> 0000:1485      push  ax                                    ; arg1
│       ╎   0000:1486      call  word cs:[fcn.00000110]                ; 0x110 ; "t\U00000003\xe8!"
│       ╎   0000:148b      call  word cs:[fcn.00000112]                ; 0x112
│       ╎   0000:1490      call  word cs:[fcn.00000114]                ; 0x114
│       ╎   0000:1495      call  word cs:[fcn.00000116]                ; 0x116
│       ╎   0000:149a      call  word cs:[fcn.00000118]                ; 0x118
│       ╎   0000:149f      pop   ax
│       ╎   0000:14a0      cmp   byte [0xff1a], al
│       └─< 0000:14a4      jb    0x1485
│           0000:14a6      mov   byte [0xff1a], 0
└           0000:14ab      ret
```

### Function 0x000014ac
```asm
; CODE XREFS from fcn.00001258 @ +0x25, +0x38
┌ fcn.000014ac();
│           0000:14ac      mov   ax, 0xb000
│           0000:14af      mov   es, ax
│           0000:14b1      mov   di, 0x4fd
│           0000:14b4      mov   cx, 0x90
│       ┌─> 0000:14b7      push  cx
│       ╎   0000:14b8      push  di
│       ╎   0000:14b9      mov   ax, 0xffff
│       ╎   0000:14bc      mov   cx, 0x1c
│      ┌──> 0000:14bf      xor   word es:[di], ax
│      ╎╎   0000:14c2      inc   di
│      ╎╎   0000:14c3      inc   di
│      └──< 0000:14c4      loop  0x14bf
│       ╎   0000:14c6      pop   di
│       ╎   0000:14c7      add   di, 0x2000
│       ╎   0000:14cb      cmp   di, 0x6000
│      ┌──< 0000:14cf      jb    0x14e4
│      │╎   0000:14d1      push  di
│      │╎   0000:14d2      mov   ax, 0xffff
│      │╎   0000:14d5      mov   cx, 0x1c
│     ┌───> 0000:14d8      xor   word es:[di], ax
│     ╎│╎   0000:14db      inc   di
│     ╎│╎   0000:14dc      inc   di
│     └───< 0000:14dd      loop  0x14d8
│      │╎   0000:14df      pop   di
│      │╎   0000:14e0      add   di, 0xa05a
│      └──> 0000:14e4      pop   cx
│       └─< 0000:14e5      loop  0x14b7
└           0000:14e7      ret
```

### Function 0x00001534
```asm
; XREFS: CALL 0x00000118  CALL 0x00000343  CALL 0x0000038c  
            ; XREFS: CALL 0x000003c2  CALL 0x000003fd  CALL 0x00000491  
            ; XREFS: CALL 0x00000508  CALL 0x00000d88  CALL 0x00000d98  
            ; XREFS: CALL 0x00000fb1  CALL 0x00000fd2  CALL 0x0000113d  
┌ fcn.00001534();
│           0000:1534      cmp   si, 0xe900
│       ┌─< 0000:1538      jae   0x153b
│       │   0000:153a      ret
│       └─> 0000:153b      sub   si, 0x900
└           0000:153f      ret
```

### Function 0x00001540
```asm
; CALL XREF from fcn.00000000 @ 0x4d
┌ fcn.00001540();
│           0000:1540      cmp   si, 0xe000
│       ┌─< 0000:1544      jb    0x1547
│       │   0000:1546      ret
│       └─> 0000:1547      add   si, 0x900
└           0000:154b      ret
```

### Function 0x00001675
```asm
; CALL XREF from fcn.00001540 @ +0x111
┌ fcn.00001675(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1675      push  ds
│           0000:1676      mov   cl, 0x10
│           0000:1678      mul   cl
│           0000:167a      add   ax, 0x8000                            ; arg1
│           0000:167d      mov   si, ax                                ; arg1
│           0000:167f      mov   ds, word cs:[0xff2c]
│           0000:1684      mov   ax, 0xb000
│           0000:1687      mov   es, ax
│           0000:1689      mov   di, word cs:[0x4fe4]
│           0000:168e      mov   cx, 8
│       ┌─> 0000:1691      push  cx
│       ╎   0000:1692      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:1693      call  fcn.000016ab                          ; fcn.000016ab
│       ╎   0000:1696      stosw word es:[di], ax
│       ╎   0000:1697      add   di, 0x1ffe
│       ╎   0000:169b      cmp   di, 0x6000
│      ┌──< 0000:169f      jb    0x16a6
│      │╎   0000:16a1      stosw word es:[di], ax
│      │╎   0000:16a2      add   di, 0xa058
│      └──> 0000:16a6      pop   cx
│       └─< 0000:16a7      loop  0x1691
│           0000:16a9      pop   ds
└           0000:16aa      ret
```

### Function 0x000016ab
```asm
; CALL XREF from fcn.00001675 @ 0x1693
┌ fcn.000016ab(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:16ab      mov   cx, 8
│       ┌─> 0000:16ae      push  cx
│       ╎   0000:16af      add   ax, ax                                ; arg1
│       ╎   0000:16b1      adc   cl, cl
│       ╎   0000:16b3      add   ax, ax                                ; arg1
│       ╎   0000:16b5      adc   cl, cl
│       ╎   0000:16b7      and   cl, 3
│       ╎   0000:16ba      mov   bl, byte cs:[0x4ff7]
│       ╎   0000:16bf      xor   bh, bh
│       ╎   0000:16c1      add   bx, bx                                ; arg3
│       ╎   0000:16c3      call  word cs:[bx + 0x46d0]
│       ╎   0000:16c8      add   dx, dx                                ; arg2
│       ╎   0000:16ca      add   dx, dx                                ; arg2
│       ╎   0000:16cc      or    dl, cl
│       ╎   0000:16ce      pop   cx
│       └─< 0000:16cf      loop  0x16ae
│           0000:16d1      mov   ax, dx                                ; arg2
└           0000:16d3      ret
```

### Function 0x00001b23
```asm
; CALL XREFS from fcn.000016ab @ +0x44f, +0x460
┌ fcn.00001b23(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:1b23      mov   cx, 2
│       ┌─> 0000:1b26      push  cx
│       ╎   0000:1b27      lodsw ax, word [si]
│       ╎   0000:1b28      mov   bh, al
│       ╎   0000:1b2a      xor   bl, bl
│       ╎   0000:1b2c      mov   cl, byte cs:[0x4ff8]
│       ╎   0000:1b31      shr   bx, cl                                ; arg3
│       ╎   0000:1b33      xor   al, al
│       ╎   0000:1b35      shr   ax, cl                                ; arg1
│       ╎   0000:1b37      or    bl, ah
│       ╎   0000:1b39      mov   ah, al
│       ╎   0000:1b3b      or    byte es:[di], bh
│       ╎   0000:1b3e      inc   di
│       ╎   0000:1b3f      or    byte es:[di], bl
│       ╎   0000:1b42      inc   di
│       ╎   0000:1b43      or    byte es:[di], ah
│       ╎   0000:1b46      pop   cx
│       └─< 0000:1b47      loop  0x1b26
└           0000:1b49      ret
```

### Function 0x00001bf3
```asm
; CALL XREF from fcn.00001b23 @ +0xcd
┌ fcn.00001bf3(short unsigned int arg1, short unsigned int arg3);
│           ; arg short unsigned int arg1 @ ax
│           ; arg short unsigned int arg3 @ bx
│           0000:1bf3      or    bx, word [bx + si]                    ; arg3
│           0000:1bf6      add   byte [bp + di], ah
│           0000:1bf8      add   byte [bx + si], 0                     ; arg3
│           0000:1bfb      add   al, byte [bx + si + 0x280]            ; arg3
│           0000:1bff      add   word [bx + si], ax                    ; arg3
│           0000:1c01      add   byte [bx + si], al                    ; arg3
│           0000:1c03      add   word [bx + si], ax                    ; arg3
│           0000:1c05      add   byte [bx + si], al                    ; arg3
│           0000:1c07      add   word [bx + si], ax                    ; arg3
│           0000:1c09      add   byte [bx + si], al                    ; arg3
│           0000:1c0b      add   byte [bx + si], al                    ; arg3
│           0000:1c0d      add   byte [bx + si], al                    ; arg3
│           0000:1c0f      add   byte [bx + si], al                    ; arg3
│           0000:1c11      adc   byte [bx + si], dl                    ; arg3
│           0000:1c13      add   byte [bx + si], al                    ; arg3
│           0000:1c15      add   byte [si], al
│           0000:1c17      add   byte [bx + si], al                    ; arg3
│           0000:1c19      add   byte [bx + si], 0x80                  ; [0x80:1]=116 ; arg3
│           0000:1c1c      add   ax, word [bx + si]                    ; arg3
│           0000:1c1e      add   byte [bx + di + 0xc], dh              ; arg3
│           0000:1c21      add   byte [bx + si], al                    ; arg3
│           0000:1c23      cmp   ax, 0x38                              ; arg1
│           0000:1c26      add   byte [bx], al                         ; arg3
│           0000:1c28      lock  add byte [bx + si], al                ; arg3
│           0000:1c2b      xchg  di, ax                                ; arg1
│           0000:1c2c      in    ax, 0
│           0000:1c2e      add   byte [bx], cl                         ; arg3
│           0000:1c30      lock  add byte [bx + si], al                ; arg3
│           0000:1c33      pop   ds
│           0000:1c34      cmp   byte [bx + si], al                    ; arg3
│           0000:1c36      add   byte [bx + di], bh                    ; arg3
│           0000:1c38      push  cs
│           0000:1c39      add   byte [bx + si], al                    ; arg3
│       ┌─< 0000:1c3b      loope 0x1c3e
│       │   0000:1c3d  ~   add   byte [bx + di], 0                     ; arg3
│       └─> 0000:1c3e      add   word [bx + si], ax                    ; arg3
│           0000:1c40      add   byte [bx + si + 4], al                ; arg3
│           0000:1c43      add   byte [bx + si], al                    ; arg3
│           0000:1c45      or    byte [bx + si], dl                    ; arg3
│           0000:1c47      add   byte [bx + si], al                    ; arg3
│           0000:1c49      add   byte [bx + si], al                    ; arg3
│           0000:1c4b      add   byte [bx + si], al                    ; arg3
│           0000:1c4d      add   byte [bx + si], al                    ; arg3
│           0000:1c4f      add   byte [bx + si], al                    ; arg3
│           0000:1c51      add   byte [bx + si], al                    ; arg3
│           0000:1c53      add   byte [bx + si], al                    ; arg3
│           0000:1c55      add   byte [bx + si], al                    ; arg3
│           0000:1c57      add   byte [bx + si], al                    ; arg3
│           0000:1c59      add   byte [bx + si], al                    ; arg3
│           0000:1c5b      add   byte [bx + si], al                    ; arg3
│           0000:1c5d      add   byte [bx + si], al                    ; arg3
│           0000:1c5f      add   byte [bx + si], al                    ; arg3
│           0000:1c61      add   byte [bx + si], al                    ; arg3
│           0000:1c63      add   byte [bx + si], al                    ; arg3
│           0000:1c65      add   byte [bx + si], al                    ; arg3
│           0000:1c67      add   byte [bx + si], al                    ; arg3
│           0000:1c69      add   byte [bp + si - 0x55b6], dl
│       ┌─< 0000:1c6d      jmp   0x1c6f
│       │   ; CODE XREF from fcn.00001bf3 @ 0x1c6d
│       └─> 0000:1c6f      add   byte [bx + si], al                    ; arg3
│           0000:1c71      add   byte [bx + si], al                    ; arg3
│           0000:1c73      add   byte [bx + si], al                    ; arg3
│           0000:1c75      add   byte [bx + si], al                    ; arg3
│           0000:1c77      add   byte [bx + si], al                    ; arg3
│           0000:1c79      add   byte [bx + si], al                    ; arg3
│           0000:1c7b      add   byte [bx + si], al                    ; arg3
│           0000:1c7d      add   byte [bx + si], al                    ; arg3
│           0000:1c7f      add   byte [bx + si], al                    ; arg3
│           0000:1c81      add   byte [bx + si], al                    ; arg3
│           0000:1c83      add   byte [bx + si], al                    ; arg3
│           0000:1c85      add   byte [bx + si], al                    ; arg3
│           0000:1c87      add   byte [bx + si], al                    ; arg3
│           0000:1c89      add   byte [bx + si], al                    ; arg3
│           0000:1c8b      add   byte [bx + si], al                    ; arg3
│           0000:1c8d      add   byte [bx + si], al                    ; arg3
│           0000:1c8f      add   byte [bx + si], al                    ; arg3
│           0000:1c91      add   word [bx + si], ax                    ; arg3
│           0000:1c93      add   byte [bx + si], al                    ; arg3
│           0000:1c95      add   word [bx + si], ax                    ; arg3
│           0000:1c97      add   byte [bx + di], al                    ; arg3
│           0000:1c99      add   word [bx + si], ax                    ; arg3
│           0000:1c9b      add   byte [bx + si], al                    ; arg3
│           0000:1c9d      add   byte [bx + si], 0                     ; arg3
│           0000:1ca0      add   byte [bp + di], ch
│           0000:1ca4      add   word [di + 4], bx                     ; arg3
│           0000:1ca7      and   al, 0xae
└           0000:1ca9      out   dx, ax
```

### Function 0x00001e4a
```asm
; XREFS: CALL 0x000009b8  CALL 0x00001060  CALL 0x000011ca  
            ; XREFS: CALL 0x00001221  CALL 0x00001241  CALL 0x00001472  
            ; XREFS: CALL 0x000014fc  CALL 0x00001915  CALL 0x00001ae6  
┌ fcn.00001e4a(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:1e4a      xor   ax, ax
│           0000:1e4c      mov   al, bl
│           0000:1e4e      add   ax, 0x1c
│           0000:1e51      mov   bl, 3
│           0000:1e53      div   bl
│           0000:1e55      mov   bl, ah
│           0000:1e57      ror   bl, 1
│           0000:1e59      ror   bl, 1
│           0000:1e5b      ror   bl, 1
│           0000:1e5d      and   bl, 0x60
│           0000:1e60      mov   ah, 0x5a                              ; 'Z'
│           0000:1e62      mul   ah
│           0000:1e64      add   ah, bl
│           0000:1e66      add   bh, 5
│           0000:1e69      mov   bl, bh
│           0000:1e6b      xor   bh, bh
│           0000:1e6d      add   ax, bx                                ; arg3
└           0000:1e6f      ret
```

## Cross-References (callers)
```json
  0x00000110:
[{"from":5254,"to":272,"type":"CALL"}]
  0x00000112:
[{"from":5259,"to":274,"type":"CALL"}]
  0x00000114:
[{"from":5264,"to":276,"type":"CALL"}]
  0x00000116:
[{"from":5269,"to":278,"type":"CALL"}]
  0x00000118:
[{"from":5274,"to":280,"type":"CALL"}]
  0x0000011a:
[{"from":449,"to":282,"type":"CALL"},{"from":1850,"to":282,"type":"CALL"},{"from":1885,"to":282,"type":"CALL"},{"from":1915,"to":282,"type":"CALL"},{"from":1942,"to":282,"type":"CALL"}]
  0x00000136:
[{"from":210,"to":310,"type":"CALL"},{"from":217,"to":310,"type":"CALL"},{"from":224,"to":310,"type":"CALL"},{"from":231,"to":310,"type":"CALL"},{"from":241,"to":310,"type":"CALL"},{"from":248,"to":310,"type":"CALL"},{"from":255,"to":310,"type":"CALL"},{"from":274,"to":310,"type":"CALL"}]
  0x0000027e:
[{"from":357,"to":638,"type":"CALL"}]
  0x00000327:
[{"from":87,"to":807,"type":"CALL"}]
  0x00000364:
[{"from":100,"to":868,"type":"CALL"},{"from":110,"to":868,"type":"CALL"},{"from":120,"to":868,"type":"CALL"},{"from":130,"to":868,"type":"CALL"},{"from":143,"to":868,"type":"CALL"},{"from":153,"to":868,"type":"CALL"},{"from":163,"to":868,"type":"CALL"}]
  0x000003a8:
[{"from":172,"to":936,"type":"CALL"}]
  0x000003e0:
[{"from":200,"to":992,"type":"CALL"}]
  0x0000057a:
[{"from":930,"to":1402,"type":"CALL"},{"from":1212,"to":1402,"type":"CALL"},{"from":1236,"to":1402,"type":"CALL"}]
  0x000005a7:
[{"from":862,"to":1447,"type":"CALL"},{"from":989,"to":1447,"type":"CODE"},{"from":1069,"to":1447,"type":"CALL"},{"from":1124,"to":1447,"type":"CALL"},{"from":1338,"to":1447,"type":"CALL"},{"from":1393,"to":1447,"type":"CALL"},{"from":1434,"to":1447,"type":"CALL"}]
  0x0000061b:
[{"from":1543,"to":1563,"type":"CALL"},{"from":3425,"to":1563,"type":"CALL"}]
  0x00000631:
[{"from":1583,"to":1585,"type":"CODE"},{"from":3257,"to":1585,"type":"CALL"}]
  0x00000649:
[{"from":1519,"to":1609,"type":"CALL"},{"from":3432,"to":1609,"type":"CALL"}]
  0x00000654:
[{"from":1596,"to":1620,"type":"CALL"},{"from":1613,"to":1620,"type":"CALL"}]
  0x000006b1:
[{"from":1533,"to":1713,"type":"CALL"},{"from":1557,"to":1713,"type":"CALL"},{"from":4240,"to":1713,"type":"CALL"}]
```