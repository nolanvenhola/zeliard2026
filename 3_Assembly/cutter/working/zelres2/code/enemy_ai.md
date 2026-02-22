# ENEMY_AI - Analysis

**Source:** `chunk_06.bin`  
**Size:** 8.8 KB  
**Functions:** 54  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000   23 187  -> 141  fcn.00000000
0x00000110    1 2            fcn.00000110
0x00000112   23 91   -> 89   fcn.00000112
0x00000114    1 4            fcn.00000114
0x00000116    1 2            fcn.00000116
0x00000118    2 16           fcn.00000118
0x0000011a    1 7            fcn.0000011a
0x00000128   16 959  -> 205  fcn.00000128
0x00000276   14 180          fcn.00000276
0x0000032a    7 61           fcn.0000032a
0x00000367    1 72           fcn.00000367
0x000003af    7 56           fcn.000003af
0x000003e7   12 133          fcn.000003e7
0x0000056f    6 46           fcn.0000056f
0x0000059d    6 119          fcn.0000059d
0x00000614    1 22           fcn.00000614
0x0000062a    3 21           fcn.0000062a
0x0000063f    3 22           fcn.0000063f
0x00000655    3 16           fcn.00000655
0x00000665    3 13           fcn.00000665
0x00000672    1 28           fcn.00000672
0x0000068e    3 14           fcn.0000068e
0x0000069c    3 49           fcn.0000069c
0x000006cd    1 8            fcn.000006cd
0x000006d5    1 7            fcn.000006d5
0x000006dc    6 81           fcn.000006dc
0x0000072d   19 114          fcn.0000072d
0x00000ce0    4 70           fcn.00000ce0
0x00000d26    5 18           fcn.00000d26
0x00000dd0    3 47           fcn.00000dd0
0x00000dff   30 820  -> 302  fcn.00000dff
0x00000f2d    3 25           fcn.00000f2d
0x00000f46    3 34           fcn.00000f46
0x00000f68    3 34           fcn.00000f68
0x00000f8a    5 74           fcn.00000f8a
0x00001096    8 69           fcn.00001096
0x000011eb    8 226  -> 150  fcn.000011eb
0x0000125d    3 76           fcn.0000125d
0x000012cd    1 25           fcn.000012cd
0x000012e6    1 21           fcn.000012e6
0x0000132b   11 122          fcn.0000132b
0x000013a5   13 99           fcn.000013a5
0x00001408   11 55           fcn.00001408
0x0000143f    1 15           fcn.0000143f
0x0000144e    3 51           fcn.0000144e
0x00001481    7 48           fcn.00001481
0x00001504    3 12           fcn.00001504
0x00001510    3 12           fcn.00001510
0x00001644    3 41           fcn.00001644
0x0000166d    7 107          fcn.0000166d
0x00001979    3 27           fcn.00001979
0x00001c8a    5 183  -> 185  fcn.00001c8a
0x00001f4c    3 34           fcn.00001f4c
0x00001f6e    5 34           fcn.00001f6e
```

## Strings
```
nth      paddr      vaddr len size section type    string                                                                  
---------------------------------------------------------------------------------------------------------------------------
  0 0x00000007 0x00000007   7    7         ascii   9)?4>/A
  1 0x000001b6 0x000001b6   4    4         ascii   u\fP.
  2 0x00000206 0x00000206   5    5         ascii   6<\rt;
  3 0x00000212 0x00000212   5    5         ascii   <<\ft/
  4 0x0000021b 0x0000021b   5    6         ascii   t),3s
  5 0x00000235 0x00000235   5    5         ascii   \f<\tt\f
  6 0x000002df 0x000002df   4    4         ibm037  SLaG
  7 0x000002fc 0x000002fc   6    6         ibm037  vvvvaG
  8 0x000003ac 0x000003ac   5    6         utf8    [^À>\e blocks=Basic Latin,Latin-1 Supplement
  9 0x000003e7 0x000003e7   4    4         ascii   VWSS
 10 0x0000042e 0x0000042e   4    4         ascii   SVR\n
 11 0x0000046c 0x0000046c   4    4         ascii   VWSS
 12 0x000004e7 0x000004e7   4    4         ascii   VWSS
 13 0x0000052f 0x0000052f   4    4         ascii   SVR\n
 14 0x0000058b 0x0000058b   4    4         ascii   UVWR
 15 0x00000592 0x00000592   7    7         ascii   Z_^]FGE
 16 0x000005b9 0x000005b9   9   10         ibm037   JYJY»YaE
 17 0x00000691 0x00000691   6    6         ibm037  vvvvaG
 18 0x00000816 0x00000816   5    6         ascii   &!-&\t
 19 0x0000084b 0x0000084b   8    8         ascii   &!m\b&\tU\b
 20 0x00000858 0x00000858   8    8         ascii   &!m\n&\tU\n
 21 0x00000865 0x00000865   8    8         ascii   &!m\f&\tU\f
 22 0x0000088c 0x0000088c   4    5         ibm037  vvcÓ
 23 0x00000899 0x00000899  10   10         ascii   068?06c9#9
 24 0x00000a8f 0x00000a8f   4    4         ascii   OGFY
 25 0x00000cf5 0x00000cf5   9   10         ibm037  ÄJYJY»YaE
 26 0x00000d3b 0x00000d3b   4    4         ascii   VWP.
 27 0x00000d9c 0x00000d9c   9   10         ibm037   JYJY»YaE
 28 0x00000df4 0x00000df4   4    4         ibm037  vucF
 29 0x00000e41 0x00000e41   4    4         ascii   VWS.
 30 0x00000f16 0x00000f16   5    5         ascii   O[_^\a
 31 0x00000f28 0x00000f28   4    4         ascii   [_^\a
 32 0x00000f3c 0x00000f3c   4    4         ascii   [^_\a
 33 0x00001045 0x00001045   5    6         ascii   &!-&\t
 34 0x00001123 0x00001123  13   14         ibm037  ßS4aGY\tßSZ$¬;
 35 0x0000118a 0x0000118a   4    4         ibm037  SGaG
 36 0x000011f8 0x000011f8   4    4         ascii   WVSP
 37 0x0000139f 0x0000139f   7    8         ibm037  $!ßSKC½
 38 0x000013b1 0x000013b1   4    4         ascii   [ZRS
 39 0x000013ba 0x000013ba   4    4         ascii   [ZRS
 40 0x000015a3 0x000015a3   5    6         ascii   -16;@
 41 0x000015b6 0x000015b6   9   10         ascii   \b\n#$&\b')*
 42 0x000015d4 0x000015d4   6    7         ascii   #$&\b%)
 43 0x000015db 0x000015db   4    5         ascii   .38=
 44 0x000015ee 0x000015ee  13   14         ascii   \b\v#$&\b')+/49>
 45 0x00001608 0x00001608   8    9         ascii    !\b\f#$&\b
 46 0x00001611 0x00001611   6    7         ascii   (,05:?
 47 0x0000163d 0x0000163d   4    4         ascii   O \tY
 48 0x000016cc 0x000016cc   4    4         utf8    F$8\n
 49 0x000016dd 0x000016dd   5    5         ascii   F\tG"G
 50 0x0000173f 0x0000173f  12   13         ascii   \a\b\t\n\a\b\v\f\a\b\t\n
 51 0x00001767 0x00001767  26   27         ascii   >\b&*%!"!"#$!"!"\t\n\a\b\a\b\t\n\a\b
 52 0x00001782 0x00001782   7    8         ascii   TY]c2/.
 53 0x0000179d 0x0000179d  26   27         ascii   PUZ^df(0#$!"#$!"#$\a\b\n\f\a\b\t\n
 54 0x000017b8 0x000017b8   9   10         ascii   4QV[_eg/-
 55 0x000017d3 0x000017d3   4    5         ascii   IMRW
 56 0x000017d8 0x000017d8  27   28         ascii   `ihjk(&!"+&!"!"\a\b\t\n\t\n\eFJNSX
 57 0x000017f7 0x000017f7   4    5         ascii   il1-
 58 0x00001809 0x00001809   4    5         ascii   CGKO
 59 0x00001814 0x00001814  11   12         ascii   mno)&!"*%!"
 60 0x00001824 0x00001824   4    5         ascii   5DHL
 61 0x00001831 0x00001831   4    5         ascii   iqst
 62 0x0000183d 0x0000183d   5    6         ascii   8:?BE
 63 0x0000184e 0x0000184e   9   10         ascii   muwyo+&)&
 64 0x00001858 0x00001858   5    6         ascii   49;@A
 65 0x0000186b 0x0000186b  12   13         ascii   vxz{12/-367<
 66 0x0000188a 0x0000188a   5    6         ascii   mqprp
 67 0x0000198f 0x0000198f   5    6         ibm037  {¡SZC
 68 0x000019bd 0x000019bd   5    6         ascii   &!-&\t
 69 0x000019d0 0x000019d0   5    5         ibm037  YC67N
 70 0x000019f2 0x000019f2   8    8         ascii   &!m\b&\tU\b
 71 0x000019ff 0x000019ff   8    8         ascii   &!m\n&\tU\n
 72 0x00001a0c 0x00001a0c   8    8         ascii   &!m\f&\tU\f
 73 0x00001a29 0x00001a29   6    6         ascii   1J1J1J
 74 0x00001b9d 0x00001b9d   5    6         ascii   &!-&\t
 75 0x00001ba3 0x00001ba3   5    5         ibm037  Y047N
 76 0x00001bb0 0x00001bb0   5    5         ibm037  YT47N
 77 0x00001bbd 0x00001bbd   5    5         ibm037  YO47N
 78 0x00001e4d 0x00001e4d   5   24         utf32be 9áĀЀက
 79 0x00001e72 0x00001e72   4   16         utf32be \f8ðå
 80 0x00001e89 0x00001e89   5   24         utf32le <\a쀀 Ѐ blocks=Basic Latin,Hangul Syllables,General Punctuation,Cyrillic
 81 0x00001f6a 0x00001f6a   6    7         ibm037  KSSC¾\b
 82 0x00001f8c 0x00001f8c  16   17         ibm037  }SSCq|y|½|H|Q|H|
 83 0x00001fa0 0x00001fa0   4    5         ascii   \b\t\n\v
 84 0x00001fb4 0x00001fb4   8    9         ascii    "$&0246
 85 0x00001fc0 0x00001fc0  12   13         ascii   \b\t\f\r !$%(),-
 86 0x00001fcf 0x00001fcf  13   14         ascii   \a(-./05678=>?
 87 0x00001fdf 0x00001fdf  13   13         ascii   \a0657(.-/8>=?
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0000      pop   bp
│           ; DATA XREF from fcn.0000072d @ +0x42c
│           0000:0001      and   ax, word [bx + si]                    ; arg3
│           ; XREFS: DATA 0x00000761  DATA 0x0000077f  DATA 0x000010af  
│           ; XREFS: DATA 0x000010cf  DATA 0x00001116  DATA 0x0000111a  
│           ; XREFS: DATA 0x00001f81  
│           0000:0003      add   byte [si], ch
│           ; DATA XREF from fcn.00000128 @ +0x102
│           0000:0005  ~   xor   byte [bx + di + 0x2939], bh           ; arg3
│           ; DATA XREF from fcn.00001481 @ +0x59
│           ; DATA XREFS from fcn.0000166d @ +0x7d, +0x97, +0xa8, +0xb9
│           ;-- str.9__4__A:
..
│           ; DATA XREF from fcn.00000128 @ +0x10e
│           ; DATA XREF from fcn.0000132b @ 0x1376
│           0000:0009     .string "9)?4>/A" ; len=7
│           ; DATA XREFS from fcn.00000128 @ +0xd9, +0xfa
│           ; DATA XREF from fcn.0000072d @ 0x73e
│           0000:000e      lodsw ax, word [si]
│           ; DATA XREFS from fcn.00000128 @ +0xe5, +0x106
│           ; DATA XREF from fcn.00000672 @ 0x682
│           ; DATA XREF from fcn.000006dc @ 0x6f4
│           ; DATA XREF from fcn.0000072d @ 0x73c
│           0000:000f      inc   sp
│           ; XREFS: DATA 0x00000219  DATA 0x0000023a  DATA 0x0000069c  
│           ; XREFS: DATA 0x000006e6  DATA 0x0000080b  DATA 0x00000f5a  
│           ; XREFS: DATA 0x00000f7c  DATA 0x00001b8c  DATA 0x00001bd9  
│           ; XREFS: DATA 0x00001c0a  
│           0000:0010      sar   byte [bx], 1                          ; arg3
│           ; XREFS: DATA 0x000004a5  DATA 0x00000e04  DATA 0x000011b7  
│           ; XREFS: DATA 0x0000148e  DATA 0x00001491  DATA 0x00001624  
│       ┌─< 0000:0012      jb    0x46
│       │   0000:0014      wait
│       │   ; DATA XREF from fcn.0000125d @ 0x12a2
│       │   0000:0015      aaa
│       │   0000:0016      xchg  dx, ax                                ; arg1
│       │   0000:0017      inc   cx                                    ; arg4
        │   ; DATA XREF from fcn.00001979 @ +0x39
..
        │   ; DATA XREFS from fcn.0000132b @ 0x1332, 0x133d
        │   ; DATA XREF from fcn.0000072d @ 0x775
        │   ; DATA XREF from fcn.0000072d @ +0x99
        │   ; DATA XREFS from fcn.00000128 @ +0x7d, +0xa0
        │   ; DATA XREF from fcn.000006dc @ 0x70b
        │   ; XREFS: DATA 0x000005b0  DATA 0x000006cf  DATA 0x00000754  
        │   ; XREFS: DATA 0x00000cec  DATA 0x00000d93  DATA 0x00000f56  
        │   ; XREFS: DATA 0x00000f59  DATA 0x00000f78  DATA 0x00000f7b  
        │   ; XREFS: DATA 0x00000fca  DATA 0x0000194d  DATA 0x00001d87  
        │   ; XREFS: DATA 0x00001eeb  
        │   ; DATA XREF from fcn.00001979 @ +0x2f9
        │   ; XREFS: DATA 0x00000390  DATA 0x000003c6  DATA 0x00000401  
        │   ; XREFS: DATA 0x0000048f  DATA 0x00000500  DATA 0x000009d0  
        │   ; XREFS: DATA 0x00000aeb  DATA 0x00000b01  DATA 0x00000b0c  
        │   ; XREFS: DATA 0x00000be1  DATA 0x00000c52  DATA 0x00000c68  
        │   ; XREFS: DATA 0x00000c73  DATA 0x00000dd4  DATA 0x00000f93  
        │   ; XREFS: DATA 0x0000108c  DATA 0x00001092  
        │   ; DATA XREFS from fcn.00000128 @ +0x131, +0x148
        │   ; DATA XREF from fcn.0000032a @ 0x343
        │   ; DATA XREF from fcn.00001f6e @ +0x58
        │   ; DATA XREFS from fcn.00001510 @ +0xa9, +0xc5, +0xe1
        │   ; DATA XREF from fcn.00001f6e @ +0x48
        │   ; DATA XREFS from fcn.0000132b @ 0x1364, 0x136f
        │   ; DATA XREFS from fcn.00000128 @ +0xb3, +0xc9
        │   ; DATA XREFS from fcn.0000072d @ +0x235, +0x275
        │   ; XREFS: DATA 0x0000029a  DATA 0x00000619  DATA 0x00000d59  
        │   ; XREFS: DATA 0x00001137  DATA 0x00001226  DATA 0x00001645  
        │   ; DATA XREF from fcn.00001510 @ +0xaf
        │   ; DATA XREF from fcn.00000128 @ +0xe9
        │   ; DATA XREF from fcn.00000ce0 @ 0xd0d
        │   ; DATA XREFS from fcn.00000d26 @ +0x23, +0x8c
        │   ; DATA XREF from fcn.00001979 @ +0x1e3
│       └─> 0000:0046      mov   si, word [0xff31]
│           0000:004a      sub   si, 0x21
│           0000:004d      call  fcn.00001510                          ; fcn.00001510
│           0000:0050      xor   bx, bx
│           0000:0052      test  byte [si], 0x80
│       ┌─< 0000:0055      je    0x5a
│       │   0000:0057      call  fcn.0000032a                          ; fcn.0000032a
│       │   ; DATA XREF from fcn.0000072d @ +0x47f
│       └─> 0000:005a      inc   si
│           0000:005b      mov   cx, 6
│       ┌─> 0000:005e      push  cx
│       ╎   0000:005f      test  byte [si], 0x80
│      ┌──< 0000:0062      je    0x67
│      │╎   0000:0064      call  fcn.00000367                          ; fcn.00000367
│      └──> 0000:0067      inc   si
│       ╎   0000:0068      inc   bx
│       ╎   0000:0069      test  byte [si], 0x80
│       ╎   ; DATA XREFS from fcn.0000072d @ +0x401, +0x56d
│      ┌──< 0000:006c      je    0x71
│      │╎   0000:006e      call  fcn.00000367                          ; fcn.00000367
│      └──> 0000:0071      inc   si
│       ╎   0000:0072      inc   bx
│       ╎   0000:0073      test  byte [si], 0x80
│      ┌──< 0000:0076      je    0x7b
│      │╎   0000:0078      call  fcn.00000367                          ; fcn.00000367
│      └──> 0000:007b      inc   si
│       ╎   0000:007c      inc   bx
│       ╎   0000:007d      test  byte [si], 0x80
│       ╎   ; DATA XREF from str.9__4__A @ +0x30
│       ╎   ; DATA XREF from fcn.0000059d @ 0x5a9
│       ╎   ; DATA XREFS from fcn.0000072d @ +0x424, +0x58a
│       ╎   ; DATA XREF from fcn.00001c8a @ 0x1cb0
│      ┌──< 0000:0080      je    0x85
│      │╎   0000:0082      call  fcn.00000367                          ; fcn.00000367
│      └──> 0000:0085      inc   si
│       ╎   0000:0086      inc   bx
│       ╎   0000:0087      pop   cx
│       └─< 0000:0088      loop  0x5e
│           0000:008a      test  byte [si], 0x80
│       ┌─< 0000:008d      je    0x92
│       │   ; DATA XREF from fcn.000013a5 @ 0x13de
│       │   ; DATA XREF from fcn.00001408 @ 0x1413
│       │   0000:008f      call  fcn.00000367                          ; fcn.00000367
│       │   ; DATA XREF from fcn.00001979 @ +0x23
│       └─> 0000:0092      inc   si
│           ; DATA XREF from fcn.00000d26 @ 0xd26
│           0000:0093      inc   bx
│           0000:0094      test  byte [si], 0x80
│       ┌─< 0000:0097      je    0x9c
│       │   0000:0099      call  fcn.00000367                          ; fcn.00000367
│       └─> 0000:009c      inc   si
│           ; DATA XREF from fcn.00001481 @ +0x51
│           0000:009d      inc   bx
│           0000:009e      test  byte [si], 0x80
│       ┌─< 0000:00a1      je    0xa6
│       │   0000:00a3      call  fcn.00000367                          ; fcn.00000367
│       └─> 0000:00a6      inc   si
│           0000:00a7      test  byte [si], 0x80
│       ┌─< 0000:00aa      je    0xaf
│       │   0000:00ac      call  fcn.000003af                          ; fcn.000003af
│       └─> 0000:00af      mov   si, word [0xff31]
│           0000:00b3      mov   di, 0xe900
└           0000:00b6      mov   byte [0x4ff1], 0x12                   ; [0x4ff1:1]=255
```

### Function 0x00000110
```asm
; CALL XREF from fcn.0000144e @ 0x145b
┌ fcn.00000110(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
└       ┌─< 0000:0110      je    0x115                                 ; fcn.00000112+0x3
```

### Function 0x00000112
```asm
; CALL XREF from fcn.0000144e @ 0x1460
│           ; CALL XREF from fcn.0000144e @ 0x1465
│           ;-- (0x00000114) fcn.00000114:
┌ fcn.00000112(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0112  ~   call  fcn.00000128                          ; fcn.00000128
│           ; CODE XREF from fcn.000003e7 @ +0x185
│           0000:0115      invalid
```

### Function 0x00000114
```asm
│           ; CALL XREF from fcn.0000144e @ 0x1465
┌ fcn.00000114();
│           0000:0114  ~   add   byte [bp + di + 0x4c6], al
│           ; CODE XREF from fcn.000003e7 @ +0x185
│           ; CALL XREF from fcn.0000144e @ 0x146a
│           ;-- (0x00000116) fcn.00000116:
..
```

### Function 0x00000116
```asm
│           ; CALL XREF from fcn.0000144e @ 0x146a
┌ fcn.00000116();
│           0000:0116      invalid
..
```

### Function 0x00000118
```asm
╎   ; CALL XREF from fcn.0000144e @ 0x146f
│       ╎   ; CALL XREF from fcn.00000128 @ +0x91
│       ╎   ; CALL XREFS from fcn.0000072d @ 0x737, 0x75a, 0x778, 0x793
│       ╎   ;-- (0x0000011a) fcn.0000011a:
┌ fcn.00000118();
│       ╎   0000:0118  ~   call  fcn.00001504                          ; fcn.00001504
│       ╎   0000:011b      add   word [0x4feb], 0xa00                  ; [0x4feb:2]=0xffff
│       ╎   0000:0121      dec   byte [0x4ff1]
│       └─< 0000:0125      jne   0xbb                                  ; fcn.00000112-0x57
└           0000:0127      ret
```

### Function 0x0000011a
```asm
│           ; CALL XREF from fcn.00000128 @ +0x91
│           ; CALL XREFS from fcn.0000072d @ 0x737, 0x75a, 0x778, 0x793
┌ fcn.0000011a(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:011a      adc   ax, word [bx + di - 0x14fa]           ; arg3
│           0000:011e      dec   di
│           0000:011f      add   byte [bp + si], cl
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
│      ┌──< 0000:012f      jmp   0x46c
│      │└─> 0000:0132      cmp   byte es:[di - 1], 0xfc
│      │┌─< 0000:0137      jne   0x140
│      ││   0000:0139      mov   byte es:[di - 1], 0xff                ; [0xff:1]=232
│     ┌───< 0000:013e      jmp   0x160
│     │││   ; XREFS: DATA 0x0000087a  DATA 0x00001072  DATA 0x000010e2  
│     │││   ; XREFS: DATA 0x000012f3  DATA 0x00001401  DATA 0x00001442  
│     │││   ; XREFS: DATA 0x000014a9  DATA 0x00001572  DATA 0x00001940  
│     │││   ; XREFS: DATA 0x00001a21  DATA 0x00001b78  DATA 0x00001bd1  
│     ││└─> 0000:0140      inc   byte es:[di - 1]
│     ││    0000:0144      mov   byte es:[di - 1], 0xfe                ; [0xfe:1]=3
│     ││┌─< 0000:0149      je    0x160
│     │││   0000:014b      mov   byte es:[di - 1], al
│     │││   0000:014f      mov   dx, bx
│     │││   0000:0151      add   dx, dx
│     │││   0000:0153      add   dx, dx
│     │││   0000:0155      add   dx, dx
│     │││   0000:0157      add   dx, word [0x4feb]                     ; [0x4feb:2]=0xffff
│     │││   0000:015b      shr   dx, 1                                 ; int16_t arg2
│     │││   0000:015d      call  fcn.00000276                          ; fcn.00000276
│     │││   ; CODE XREF from fcn.00000128 @ 0x13e
│     └─└─> 0000:0160      mov   al, byte [0xc012]                     ; [0xc012:1]=255
│      │    0000:0163      sub   al, 5
│      │┌─< 0000:0165      jae   0x168
│      ││   0000:0167      ret
│      │└─> 0000:0168      cmp   al, 4
│      │┌─< 0000:016a      jb    0x16d
│      ││   0000:016c      ret
│      │└─> 0000:016d      push  bx                                    ; arg3
│      │    0000:016e      mov   bl, al
│      │    0000:0170      xor   bh, bh
│      │    0000:0172      add   bx, bx                                ; arg3
│      │    0000:0174      call  word [bx + 0x3176]
│      │    0000:0178      pop   bx
│      │    0000:0179      ret
..
       │    ; CALL XREF from fcn.00000128 @ 0x15d
│     ││    ; CODE XREF from fcn.00000276 @ 0x283
       │    ; CALL XREF from fcn.00000000 @ 0x57
       │    ; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
       │    ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
       │    ; XREFS: CALL 0x000000a3  
       │    ; CALL XREF from fcn.00000000 @ 0xac
       ││   ; CALL XREF from fcn.00000112 @ 0xc8
│      ││   ; CODE XREF from fcn.00000128 @ 0x12f
│      └──> 0000:046c      push  si                                    ; arg3
│       │   0000:046d      push  di
│       │   0000:046e      push  bx
│       │   0000:046f      push  bx
│       │   0000:0470      mov   bx, 0x5010
│       │   0000:0473      mov   ax, 0xfffe
│       │   0000:0476      xchg  word [di - 1], ax
│       │   0000:0479      mov   word [bx], ax
│       │   0000:047b      mov   ax, 0xffff
│       │   0000:047e      xchg  word [di + 0x1b], ax
│       │   0000:0481      mov   word [bx + 2], ax
│       │   0000:0484      mov   cl, byte [si - 1]
│       │   0000:0487      mov   bx, 0x5014
│       │   0000:048a      mov   al, byte [si]
│       │   0000:048c      mov   byte [bx + 1], al
│       │   0000:048f      add   si, 0x24
│       │   0000:0492      call  fcn.00001504                          ; fcn.00001504
│       │   0000:0495      mov   ax, word [si - 1]                     ; int16_t arg1
│       │   0000:0498      mov   word [bx + 2], ax
│       │   0000:049b      pop   dx
│       │   0000:049c      mov   byte [0x4ff2], dl                     ; [0x4ff2:1]=255
│       │   0000:04a0      mov   al, byte [0x4ff1]                     ; [0x4ff1:1]=255
│       │   0000:04a3      neg   al
│       │   0000:04a5      add   al, 0x12
│       │   0000:04a7      mov   byte [0x4ff3], al                     ; [0x4ff3:1]=255
│       │   0000:04aa      add   dx, dx
│       │   0000:04ac      add   dx, dx
│       │   0000:04ae      add   dx, dx
│       │   0000:04b0      add   dx, word [0x4feb]                     ; [0x4feb:2]=0xffff ; int16_t arg_6h
│       │   0000:04b4      mov   al, cl
│       │   0000:04b6      call  fcn.000006dc                          ; fcn.000006dc
│       │   0000:04b9      mov   di, 0x5014
│       │   0000:04bc      mov   byte [di], al
│       │   0000:04be      mov   bp, 0x5010
│       │   0000:04c1      call  fcn.0000056f                          ; fcn.0000056f
│       │   0000:04c4      cmp   byte [0x4ff1], 1                      ; [0x4ff1:1]=255
│      ┌──< 0000:04c9      je    0x4e3
│      ││   0000:04cb      add   dx, 0x9f0
│      ││   0000:04cf      call  fcn.0000056f                          ; fcn.0000056f
│      ││   0000:04d2      test  byte [0xff34], 0xff
│     ┌───< 0000:04d7      je    0x4e3
│     │││   0000:04d9      test  byte [0xff2f], 0xff
│    ┌────< 0000:04de      je    0x4e3
│    ││││   0000:04e0      call  fcn.0000072d                          ; fcn.0000072d
│    └└└──> 0000:04e3      pop   bx
│       │   0000:04e4      pop   di
│       │   0000:04e5      pop   si
└       │   0000:04e6      ret
```

### Function 0x00000276
```asm
; CALL XREF from fcn.00000128 @ 0x15d
┌ fcn.00000276(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0276      push  es
│           0000:0277      push  ds
│           0000:0278      push  di
│           0000:0279      push  si
│           0000:027a      push  bx                                    ; arg3
│           0000:027b      add   dx, dx                                ; arg2
│           0000:027d      mov   di, dx                                ; arg2
│           0000:027f      or    al, al
│       ┌─< 0000:0281      jne   0x286
│      ┌──< 0000:0283      jmp   0x310
│      │└─> 0000:0286      mov   bl, al
│      │    0000:0288      xor   bh, bh
│      │    0000:028a      add   bx, bx                                ; arg3
│      │    0000:028c      test  word [bx + 0x501d], 0xffff            ; arg3
│      │┌─< 0000:0292      jne   0x2ee
│      ││   0000:0294      dec   al
│      ││   0000:0296      mov   word [bx + 0x501d], di                ; arg3
│      ││   0000:029a      mov   cl, 0x30                              ; '0'
│      ││   0000:029c      mul   cl
│      ││   0000:029e      add   ax, 0x8030                            ; arg1
│      ││   0000:02a1      mov   si, ax                                ; arg1
│      ││   0000:02a3      mov   ds, word cs:[0xff2c]
│      ││   0000:02a8      mov   ax, 0xa000
│      ││   0000:02ab      mov   es, ax
│      ││   0000:02ad      mov   cx, 8
│     ┌───> 0000:02b0      push  cx
│     ╎││   0000:02b1      mov   cx, 2
│    ┌────> 0000:02b4      lodsw ax, word [si]
│    ╎╎││   0000:02b5      mov   dx, ax
│    ╎╎││   0000:02b7      lodsb al, byte [si]
│    ╎╎││   0000:02b8      mov   bl, al
│    ╎╎││   0000:02ba      mov   bh, dl
│    ╎╎││   0000:02bc      shr   dx, 1
│    ╎╎││   0000:02be      shr   dx, 1
│    ╎╎││   0000:02c0      mov   byte es:[di], dh
│    ╎╎││   0000:02c3      shr   dl, 1
│    ╎╎││   0000:02c5      shr   dl, 1
│    ╎╎││   0000:02c7      mov   byte es:[di + 1], dl
│    ╎╎││   0000:02cb      add   bx, bx                                ; arg3
│    ╎╎││   0000:02cd      add   bx, bx                                ; arg3
│    ╎╎││   0000:02cf      and   bh, 0x3f
│    ╎╎││   0000:02d2      mov   byte es:[di + 2], bh
│    ╎╎││   0000:02d6      and   al, 0x3f
│    ╎╎││   0000:02d8      mov   byte es:[di + 3], al
│    ╎╎││   0000:02dc      add   di, 4
│    └────< 0000:02df      loop  0x2b4
│     ╎││   0000:02e1      add   di, 0x138
│     ╎││   0000:02e5      pop   cx
│     └───< 0000:02e6      loop  0x2b0
│      ││   0000:02e8      pop   bx
│      ││   0000:02e9      pop   si
│      ││   0000:02ea      pop   di
│      ││   0000:02eb      pop   ds
│      ││   0000:02ec      pop   es
│      ││   0000:02ed      ret
│      │└─> 0000:02ee      mov   si, word [bx + 0x501d]                ; arg3
│      │    0000:02f2      mov   ax, 0xa000
│      │    0000:02f5      mov   es, ax
│      │    0000:02f7      mov   ds, ax
│      │    0000:02f9      mov   cx, 8
│      │┌─> 0000:02fc      movsw word es:[di], word ptr [si]
│      │╎   0000:02fd      movsw word es:[di], word ptr [si]
│      │╎   0000:02fe      movsw word es:[di], word ptr [si]
│      │╎   0000:02ff      movsw word es:[di], word ptr [si]
│      │╎   0000:0300      add   di, 0x138
│      │╎   0000:0304      add   si, 0x138
│      │└─< 0000:0308      loop  0x2fc
│      │    0000:030a      pop   bx
│      │    0000:030b      pop   si
│      │    0000:030c      pop   di
│      │    0000:030d      pop   ds
│      │    0000:030e      pop   es
│      │    0000:030f      ret
│      │    ; CODE XREF from fcn.00000276 @ 0x283
│      └──> 0000:0310      mov   ax, 0xa000
│           0000:0313      mov   es, ax
│           0000:0315      xor   ax, ax
│           0000:0317      mov   cx, 8
│       ┌─> 0000:031a      stosw word es:[di], ax
│       ╎   0000:031b      stosw word es:[di], ax
│       ╎   0000:031c      stosw word es:[di], ax
│       ╎   0000:031d      stosw word es:[di], ax
│       ╎   0000:031e      add   di, 0x138
│       └─< 0000:0322      loop  0x31a
│           0000:0324      pop   bx
│           0000:0325      pop   si
│           0000:0326      pop   di
│           0000:0327      pop   ds
│           0000:0328      pop   es
└           0000:0329      ret
```

### Function 0x0000032a
```asm
; CALL XREF from fcn.00000000 @ 0x57
┌ fcn.0000032a(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:032a      cmp   byte [0xe900], 0xff
│       ┌─< 0000:032f      jne   0x332
│       │   0000:0331      ret
│       └─> 0000:0332      cmp   byte [0xe900], 0xfc
│       ┌─< 0000:0337      jne   0x33a
│       │   0000:0339      ret
│       └─> 0000:033a      push  si
│           0000:033b      push  bx                                    ; arg3
│           0000:033c      mov   byte [0xe900], 0xff                   ; [0xff:1]=232
│           0000:0341      mov   cl, byte [si]
│           0000:0343      add   si, 0x25
│           0000:0346      call  fcn.00001504                          ; fcn.00001504
│           0000:0349      mov   al, byte [si]
│           0000:034b      or    al, al
│       ┌─< 0000:034d      jns   0x352
│       │   0000:034f      call  fcn.000006d5                          ; fcn.000006d5
│       └─> 0000:0352      push  ax
│           0000:0353      mov   al, cl
│           0000:0355      call  fcn.000006dc                          ; fcn.000006dc
│           0000:0358      add   si, 3
│           0000:035b      pop   ax                                    ; int16_t arg1
│           0000:035c      mov   ah, byte [si]
│           0000:035e      mov   dx, 0x11b0                            ; int16_t arg2
│           0000:0361      call  fcn.0000059d                          ; fcn.0000059d
│           0000:0364      pop   bx
│           0000:0365      pop   si
└           0000:0366      ret
```

### Function 0x00000367
```asm
; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
            ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
            ; XREFS: CALL 0x000000a3  
┌ fcn.00000367(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0367      push  si
│           0000:0368      push  bx                                    ; arg3
│           0000:0369      mov   cx, bx                                ; arg3
│           0000:036b      mov   di, bx                                ; arg3
│           0000:036d      add   di, 0xe900
│           0000:0371      mov   bx, 0x5010
│           0000:0374      mov   al, 0xff
│           0000:0376      xchg  byte [di], al
│           0000:0378      mov   byte [bx], al
│           0000:037a      mov   byte [bx + 1], 0
│           0000:037e      mov   byte [di + 1], 0xff                   ; [0xff:1]=232
│           0000:0382      mov   dx, cx
│           0000:0384      add   dx, dx
│           0000:0386      add   dx, dx
│           0000:0388      add   dx, dx
│           0000:038a      add   dx, 0x11b0
│           0000:038e      mov   cl, byte [si]
│           0000:0390      add   si, 0x24
│           0000:0393      call  fcn.00001504                          ; fcn.00001504
│           0000:0396      mov   bx, 0x5014                            ; int16_t arg_6h
│           0000:0399      lodsw ax, word [si]                         ; int16_t arg1
│           0000:039a      mov   word [bx], ax
│           0000:039c      mov   al, cl
│           0000:039e      call  fcn.000006dc                          ; fcn.000006dc
│           0000:03a1      inc   si
│           0000:03a2      inc   si
│           0000:03a3      mov   di, 0x5014
│           0000:03a6      mov   bp, 0x5010
│           0000:03a9      call  fcn.0000056f                          ; fcn.0000056f
│           0000:03ac      pop   bx
│           0000:03ad      pop   si
└           0000:03ae      ret
```

### Function 0x000003af
```asm
; CALL XREF from fcn.00000000 @ 0xac
┌ fcn.000003af();
│           0000:03af      cmp   byte [0xe91b], 0xff
│       ┌─< 0000:03b4      jne   0x3b7
│       │   0000:03b6      ret
│       └─> 0000:03b7      cmp   byte [0xe91b], 0xfc
│       ┌─< 0000:03bc      jne   0x3bf
│       │   0000:03be      ret
│       └─> 0000:03bf      mov   byte [0xe91b], 0xff                   ; [0xff:1]=232
│           0000:03c4      mov   cl, byte [si]
│           0000:03c6      add   si, 0x24
│           0000:03c9      call  fcn.00001504                          ; fcn.00001504
│           0000:03cc      mov   al, byte [si]
│           0000:03ce      or    al, al
│       ┌─< 0000:03d0      jns   0x3d5
│       │   0000:03d2      call  fcn.000006d5                          ; fcn.000006d5
│       └─> 0000:03d5      push  ax
│           0000:03d6      mov   al, cl
│           0000:03d8      call  fcn.000006dc                          ; fcn.000006dc
│           0000:03db      add   si, 2
│           0000:03de      pop   ax
│           0000:03df      mov   ah, byte [si]
│           0000:03e1      mov   dx, 0x1288
└       ┌─< 0000:03e4      jmp   fcn.0000059d                          ; fcn.0000059d
```

### Function 0x000003e7
```asm
; CALL XREF from fcn.00000112 @ 0xc8
┌ fcn.000003e7(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:03e7      push  si
│           0000:03e8      push  di
│           0000:03e9      push  bx                                    ; arg3
│           0000:03ea      push  bx                                    ; arg3
│           0000:03eb      mov   bx, 0x5010
│           0000:03ee      mov   al, 0xff
│           0000:03f0      xchg  byte [di], al
│           0000:03f2      mov   byte [bx], al
│           0000:03f4      mov   al, 0xff
│           0000:03f6      xchg  byte [di + 0x1c], al
│           0000:03f9      mov   byte [bx + 1], al
│           0000:03fc      mov   cl, byte [si - 1]
│           0000:03ff      mov   dl, byte [si]
│           0000:0401      add   si, 0x24
│           0000:0404      call  fcn.00001504                          ; fcn.00001504
│           0000:0407      mov   dh, byte [si]
│           0000:0409      mov   al, cl
│           0000:040b      call  fcn.000006dc                          ; fcn.000006dc
│           0000:040e      inc   si
│           0000:040f      mov   bx, dx
│           0000:0411      pop   dx
│           0000:0412      add   dx, dx
│           0000:0414      add   dx, dx
│           0000:0416      add   dx, dx
│           0000:0418      add   dx, word [0x4feb]                     ; [0x4feb:2]=0xffff
│           0000:041c      cmp   byte [0x5010], 0xff                   ; [0x5010:1]=255
│       ┌─< 0000:0421      je    0x43e
│       │   0000:0423      cmp   byte [0x5010], 0xfc                   ; [0x5010:1]=255
│      ┌──< 0000:0428      je    0x43e
│      ││   0000:042a      mov   ah, byte [si]
│      ││   0000:042c      mov   al, bl
│      ││   0000:042e      push  bx
│      ││   0000:042f      push  si
│      ││   0000:0430      push  dx
│      ││   0000:0431      or    al, al
│     ┌───< 0000:0433      jns   0x438
│     │││   0000:0435      call  fcn.000006d5                          ; fcn.000006d5
│     └───> 0000:0438      call  fcn.0000059d                          ; fcn.0000059d
│      ││   0000:043b      pop   dx
│      ││   0000:043c      pop   si
│      ││   0000:043d      pop   bx
│      └└─> 0000:043e      add   dx, 0xa00
│           0000:0442      cmp   byte [0x4ff1], 1                      ; [0x4ff1:1]=255
│       ┌─< 0000:0447      je    0x468
│       │   0000:0449      cmp   byte [0x5011], 0xff                   ; [0x5011:1]=255
│      ┌──< 0000:044e      je    0x468
│      ││   0000:0450      cmp   byte [0x5011], 0xfc                   ; [0x5011:1]=255
│     ┌───< 0000:0455      je    0x468
│     │││   0000:0457      inc   si
│     │││   0000:0458      inc   si
│     │││   0000:0459      lodsb al, byte [si]
│     │││   0000:045a      mov   ah, al
│     │││   0000:045c      mov   al, bh
│     │││   0000:045e      or    al, al
│    ┌────< 0000:0460      jns   0x465
│    ││││   0000:0462      call  fcn.000006d5                          ; fcn.000006d5
│    └────> 0000:0465      call  fcn.0000059d                          ; fcn.0000059d
│     └└└─> 0000:0468      pop   bx
│           0000:0469      pop   di
│           0000:046a      pop   si
└           0000:046b      ret
```

### Function 0x0000056f
```asm
; CALL XREF from fcn.00000367 @ 0x3a9
            ; CALL XREFS from fcn.00000128 @ 0x4c1, 0x4cf
┌ fcn.0000056f();
│           0000:056f      call  0x572
│           ; CALL XREF from fcn.0000056f @ 0x56f
│           0000:0572      cmp   byte ds:[bp], 0xff
│       ┌─< 0000:0577      je    0x596
│       │   0000:0579      cmp   byte ds:[bp], 0xfc
│      ┌──< 0000:057e      je    0x596
│      ││   0000:0580      mov   ah, byte [si]
│      ││   0000:0582      mov   al, byte [di]
│      ││   0000:0584      or    al, al
│     ┌───< 0000:0586      jns   0x58b
│     │││   0000:0588      call  fcn.000006d5                          ; fcn.000006d5
│     └───> 0000:058b      push  bp
│      ││   0000:058c      push  si
│      ││   0000:058d      push  di
│      ││   0000:058e      push  dx
│      ││   0000:058f      call  fcn.0000059d                          ; fcn.0000059d
│      ││   0000:0592      pop   dx
│      ││   0000:0593      pop   di
│      ││   0000:0594      pop   si
│      ││   0000:0595      pop   bp
│      └└─> 0000:0596      inc   si
│           0000:0597      inc   di
│           0000:0598      inc   bp
│           0000:0599      add   dx, 8
└           0000:059c      ret
```

### Function 0x0000059d
```asm
; XREFS: CALL 0x00000361  CODE 0x000003e4  CALL 0x00000438  
            ; XREFS: CALL 0x00000465  CALL 0x00000539  CALL 0x00000566  
            ; XREFS: CALL 0x0000058f  
┌ fcn.0000059d(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:059d      push  es
│           0000:059e      push  ds
│           0000:059f      mov   bl, byte [0x4ff4]                     ; [0x4ff4:1]=255
│           0000:05a3      or    al, al
│       ┌─< 0000:05a5      je    0x5ac
│      ┌──< 0000:05a7      js    0x5ac
│      ││   0000:05a9      or    bl, 0x80
│      └└─> 0000:05ac      mov   cl, al
│           0000:05ae      mov   al, ah
│           0000:05b0      mov   ch, 0x20
│           0000:05b2      mul   ch
│           0000:05b4      mov   si, ax                                ; arg1
│           0000:05b6      add   si, 0x4000
│           0000:05ba      shr   ax, 1                                 ; arg1
│           0000:05bc      shr   ax, 1                                 ; arg1
│           0000:05be      mov   bp, ax                                ; arg1
│           0000:05c0      add   bp, 0xa000
│           0000:05c4      mov   ds, word cs:[0xff2c]
│           0000:05c9      mov   di, dx                                ; arg2
│           0000:05cb      mov   ax, 0xa000
│           0000:05ce      mov   es, ax
│           0000:05d0      mov   ch, bl
│           0000:05d2      and   bl, 0x7f
│           0000:05d5      xor   bh, bh
│           0000:05d7      add   bx, bx                                ; arg3
│           0000:05d9      mov   ax, word cs:[bx + 0x4f8c]             ; arg3
│           0000:05de      mov   word cs:[0x4fe9], ax
│           0000:05e2      mov   al, cl
│           0000:05e4      or    ch, ch
│       ┌─< 0000:05e6      js    0x5fe
│       │   0000:05e8      push  di
│       │   0000:05e9      mov   di, 0xfa00
│       │   0000:05ec      call  fcn.00000655                          ; fcn.00000655
│       │   0000:05ef      pop   di
│       │   0000:05f0      mov   si, 0xfa00
│       │   0000:05f3      mov   ax, 0xa000
│       │   0000:05f6      mov   ds, ax
│       │   0000:05f8      call  fcn.0000068e                          ; fcn.0000068e
│       │   0000:05fb      pop   ds
│       │   0000:05fc      pop   es
│       │   0000:05fd      ret
│       └─> 0000:05fe      push  di
│           0000:05ff      mov   di, 0xfa00
│           0000:0602      call  fcn.00000614                          ; fcn.00000614
│           ; DATA XREF from fcn.0000166d @ +0x2c5
│           0000:0605      pop   di
│           ; DATA XREF from fcn.0000166d @ +0x2c2
│           0000:0606      mov   si, 0xfa00
│           0000:0609      mov   ax, 0xa000
│           0000:060c      mov   ds, ax
│           0000:060e      call  fcn.0000068e                          ; fcn.0000068e
│           0000:0611      pop   ds
│           0000:0612      pop   es
└           0000:0613      ret
```

### Function 0x00000614
```asm
; CALL XREF from fcn.0000059d @ 0x602
            ; CALL XREF from fcn.00000d26 @ +0x9c
┌ fcn.00000614(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0614      push  bp
│           0000:0615      push  si
│           0000:0616      push  di
│           0000:0617      dec   cl
│           0000:0619      mov   al, 0x30                              ; '0'
│           0000:061b      mul   cl
│           0000:061d      add   ax, 0x8030                            ; int16_t arg1
│           0000:0620      mov   si, ax                                ; arg1
│           0000:0622      call  fcn.0000069c                          ; fcn.0000069c
│           0000:0625      pop   di
│           0000:0626      pop   si
│           0000:0627      pop   bp
└       ┌─< 0000:0628      jmp   fcn.0000062a                          ; fcn.0000062a
```

### Function 0x0000062a
```asm
; CODE XREF from fcn.00000614 @ 0x628
            ; CALL XREF from fcn.00000ce0 @ 0xd16
┌ fcn.0000062a(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:062a      mov   cx, 8
│       ┌─> 0000:062d      push  cx
│       ╎   0000:062e      mov   dl, byte ds:[bp]
│       ╎   0000:0632      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0633      call  fcn.0000063f                          ; fcn.0000063f
│       ╎   0000:0636      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0637      call  fcn.0000063f                          ; fcn.0000063f
│       ╎   0000:063a      inc   bp
│       ╎   0000:063b      pop   cx
│       └─< 0000:063c      loop  0x62d
└           0000:063e      ret
```

### Function 0x0000063f
```asm
; CALL XREFS from fcn.0000062a @ 0x633, 0x637
┌ fcn.0000063f(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:063f      mov   cx, 4
│       ┌─> 0000:0642      add   dl, dl
│       ╎   0000:0644      sbb   dh, dh
│       ╎   0000:0646      and   dh, byte es:[di]
│       ╎   0000:0649      call  fcn.00000672                          ; fcn.00000672
│       ╎   0000:064c      or    bl, dh
│       ╎   0000:064e      mov   byte es:[di], bl
│       ╎   0000:0651      inc   di
│       └─< 0000:0652      loop  0x642
└           0000:0654      ret
```

### Function 0x00000655
```asm
; CALL XREF from fcn.0000059d @ 0x5ec
            ; CALL XREF from fcn.00000d26 @ +0xa3
┌ fcn.00000655();
│           0000:0655      mov   cx, 8
│       ┌─> 0000:0658      push  cx
│       ╎   0000:0659      lodsw ax, word [si]
│       ╎   0000:065a      call  fcn.00000665                          ; fcn.00000665
│       ╎   0000:065d      lodsw ax, word [si]
│       ╎   0000:065e      call  fcn.00000665                          ; fcn.00000665
│       ╎   0000:0661      pop   cx
│       └─< 0000:0662      loop  0x658
└           0000:0664      ret
```

### Function 0x00000665
```asm
; CALL XREFS from fcn.00000655 @ 0x65a, 0x65e
┌ fcn.00000665();
│           0000:0665      mov   cx, 4
│       ┌─> 0000:0668      call  fcn.00000672                          ; fcn.00000672
│       ╎   0000:066b      mov   byte es:[di], bl
│       ╎   0000:066e      inc   di
│       └─< 0000:066f      loop  0x668
└           0000:0671      ret
```

### Function 0x00000672
```asm
; CALL XREF from fcn.0000063f @ 0x649
            ; CALL XREF from fcn.00000665 @ 0x668
┌ fcn.00000672(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0672      add   ax, ax                                ; arg1
│           0000:0674      adc   bx, bx                                ; arg3
│           0000:0676      add   ax, ax                                ; arg1
│           0000:0678      adc   bx, bx                                ; arg3
│           0000:067a      add   ax, ax                                ; arg1
│           0000:067c      adc   bx, bx                                ; arg3
│           0000:067e      add   ax, ax                                ; arg1
│           0000:0680      adc   bx, bx                                ; arg3
│           0000:0682      and   bx, 0xf                               ; arg3
│           0000:0685      add   bx, word cs:[0x4fe9]                  ; arg3
│           0000:068a      mov   bl, byte cs:[bx]                      ; arg3
└           0000:068d      ret
```

### Function 0x0000068e
```asm
; CALL XREFS from fcn.0000059d @ 0x5f8, 0x60e
            ; CALL XREF from fcn.00000dff @ 0x111c
┌ fcn.0000068e();
│           0000:068e      mov   cx, 8
│       ┌─> 0000:0691      movsw word es:[di], word ptr [si]
│       ╎   0000:0692      movsw word es:[di], word ptr [si]
│       ╎   0000:0693      movsw word es:[di], word ptr [si]
│       ╎   0000:0694      movsw word es:[di], word ptr [si]
│       ╎   0000:0695      add   di, 0x138
│       └─< 0000:0699      loop  0x691
└           0000:069b      ret
```

### Function 0x0000069c
```asm
; CALL XREF from fcn.00000614 @ 0x622
            ; CALL XREF from fcn.00000d26 @ +0x3c
┌ fcn.0000069c(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:069c      mov   cx, 0x10
│       ┌─> 0000:069f      lodsw ax, word [si]
│       ╎   0000:06a0      mov   dx, ax                                ; arg1
│       ╎   0000:06a2      lodsb al, byte [si]
│       ╎   0000:06a3      mov   bl, al
│       ╎   0000:06a5      mov   bh, dl
│       ╎   0000:06a7      shr   dx, 1
│       ╎   0000:06a9      shr   dx, 1
│       ╎   0000:06ab      mov   byte es:[di], dh
│       ╎   0000:06ae      shr   dl, 1
│       ╎   0000:06b0      shr   dl, 1
│       ╎   0000:06b2      mov   byte es:[di + 1], dl
│       ╎   0000:06b6      add   bx, bx                                ; arg3
│       ╎   0000:06b8      add   bx, bx                                ; arg3
│       ╎   0000:06ba      and   bh, 0x3f
│       ╎   0000:06bd      mov   byte es:[di + 2], bh
│       ╎   0000:06c1      and   al, 0x3f
│       ╎   0000:06c3      mov   byte es:[di + 3], al
│       ╎   0000:06c7      add   di, 4
│       └─< 0000:06ca      loop  0x69f
└           0000:06cc      ret
```

### Function 0x000006cd
```asm
; CALL XREF from fcn.00000d26 @ +0x43
┌ fcn.000006cd();
│           0000:06cd      xor   ax, ax
│           0000:06cf      mov   cx, 0x20
│           0000:06d2      rep   stosw word es:[di], ax
└           0000:06d4      ret
```

### Function 0x000006d5
```asm
; XREFS: CALL 0x0000034f  CALL 0x000003d2  CALL 0x00000435  
            ; XREFS: CALL 0x00000462  CALL 0x00000536  CALL 0x00000563  
            ; XREFS: CALL 0x00000588  CALL 0x00000d7b  
┌ fcn.000006d5();
│           0000:06d5      and   al, 0x7f
│           0000:06d7      mov   bx, 0xed20
│           0000:06da      xlatb
└           0000:06db      ret
```

### Function 0x000006dc
```asm
; XREFS: CALL 0x00000355  CALL 0x0000039e  CALL 0x000003d8  
            ; XREFS: CALL 0x0000040b  CALL 0x000004b6  CALL 0x0000050b  
            ; XREFS: CALL 0x00000a46  CALL 0x00000a5c  CALL 0x00000a71  
            ; XREFS: CALL 0x00000a7f  
┌ fcn.000006dc(int16_t arg1, int16_t arg3, int16_t arg_4h, int16_t arg_5h, int16_t arg_6h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg_4h @ stack + 0x4
│           ; arg int16_t arg_5h @ stack + 0x5
│           ; arg int16_t arg_6h @ stack + 0x6
│           0000:06dc      and   al, 0x7f
│           0000:06de      mov   bl, al
│           0000:06e0      xor   bh, bh
│           0000:06e2      mov   cl, byte [bx - 0x12e0]                ; arg3
│           0000:06e6      mov   ch, 0x10
│           0000:06e8      mul   ch
│           0000:06ea      add   ax, word [0xc010]                     ; arg1
│           0000:06ee      mov   bp, ax                                ; arg1
│           0000:06f0      mov   al, byte ds:[bp + 6]
│           0000:06f4      and   al, 0xf
│           0000:06f6      mov   ch, 5
│           0000:06f8      mul   ch
│           0000:06fa      mov   si, 0xa070
│           0000:06fd      test  byte ds:[bp + 5], 0x80
│       ┌─< 0000:0702      jne   0x707
│       │   0000:0704      mov   si, 0xa030
│       └─> 0000:0707      mov   bl, byte ds:[bp + 4]
│           0000:070b      and   bl, 0x1f
│           0000:070e      add   bl, bl
│           0000:0710      xor   bh, bh
│           0000:0712      add   ax, word [bx + si]                    ; arg3
│           0000:0714      mov   si, ax                                ; arg1
│           0000:0716      lodsb al, byte [si]
│           0000:0717      test  byte [0xff34], 0xff
│       ┌─< 0000:071c      jne   0x727
│       │   0000:071e      test  byte ds:[bp + 5], 0x20
│      ┌──< 0000:0723      je    0x727
│      ││   0000:0725      add   al, 3
│      └└─> 0000:0727      mov   byte [0x4ff4], al                     ; [0x4ff4:1]=255
│           0000:072a      mov   al, cl
└           0000:072c      ret
```

### Function 0x0000072d
```asm
; CALL XREF from fcn.00000128 @ 0x4e0
┌ fcn.0000072d(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:072d      cmp   byte [0x4ff3], 0x10                   ; [0x4ff3:1]=255
│       ┌─< 0000:0732      jb    0x735
│       │   0000:0734      ret
│       └─> 0000:0735      push  cs
│           0000:0736      pop   es
│           0000:0737      call  word cs:[fcn.0000011a]                ; 0x11a
│           0000:073c      and   al, 0xf
│           0000:073e      cmp   al, 0xe
│       ┌─< 0000:0740      jae   0x743
│       │   0000:0742      ret
│       └─> 0000:0743      mov   di, 0xeda0
│           0000:0746      xor   cl, cl
│           ; CODE XREF from fcn.0000072d @ 0x752
│       ┌─> 0000:0748      cmp   byte [di], 0xff
│      ┌──< 0000:074b      je    0x754
│      │╎   0000:074d      add   di, 4
│      │╎   0000:0750      inc   cl
│      │└─< 0000:0752      jmp   0x748
│      └──> 0000:0754      cmp   cl, 0x20
│       ┌─< 0000:0757      jb    0x75a
│       │   0000:0759      ret
│      ┌└─> 0000:075a      call  word cs:[fcn.0000011a]                ; 0x11a
│      ╎    0000:075f      and   al, 3
│      ╎    0000:0761      cmp   al, 3
│      └──< 0000:0763      je    0x75a
│           0000:0765      dec   al
│           0000:0767      add   al, byte [0x4ff2]                     ; [0x4ff2:1]=255
│           0000:076b      cmp   al, 0xff
│       ┌─< 0000:076d      jne   0x771
│       │   0000:076f      mov   al, 4
│       └─> 0000:0771      cmp   al, 0x1b
│       ┌─< 0000:0773      jb    0x777
│       │   0000:0775      mov   al, 0x1a
│       └─> 0000:0777      stosb byte es:[di], al
│       ┌─> 0000:0778      call  word cs:[fcn.0000011a]                ; 0x11a
│       ╎   0000:077d      and   al, 3
│       ╎   0000:077f      cmp   al, 3
│       └─< 0000:0781      je    0x778
│           0000:0783      dec   al
│           0000:0785      add   al, byte [0x4ff3]                     ; [0x4ff3:1]=255
│           0000:0789      cmp   al, 0xff
│       ┌─< 0000:078b      jne   0x78f
│       │   0000:078d      xor   al, al
│       └─> 0000:078f      stosb byte es:[di], al
│           0000:0790      mov   al, 3
│           0000:0792      stosb byte es:[di], al
│           0000:0793      call  word cs:[fcn.0000011a]                ; 0x11a
│           0000:0798      and   al, 3
│           0000:079a      stosb byte es:[di], al
│           0000:079b      mov   al, 0xff
│           0000:079d      stosb byte es:[di], al
└           0000:079e      ret
```

### Function 0x00000ce0
```asm
; CODE XREFS from fcn.0000072d @ +0x447, +0x454, +0x4d1, +0x5a7, +0x5b1
┌ fcn.00000ce0(int16_t arg1, int16_t arg2, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg4 @ cx
│       ┌─> 0000:0ce0      push  cx                                    ; arg4
│       ╎   0000:0ce1      mov   al, byte es:[si]
│       ╎   0000:0ce4      or    al, al
│      ┌──< 0000:0ce6      je    0xd1d
│      │╎   0000:0ce8      push  es
│      │╎   0000:0ce9      push  ds
│      │╎   0000:0cea      push  si
│      │╎   0000:0ceb      push  di
│      │╎   0000:0cec      mov   ch, 0x20
│      │╎   0000:0cee      mul   ch
│      │╎   0000:0cf0      mov   si, ax                                ; arg1
│      │╎   0000:0cf2      add   si, 0x6333
│      │╎   0000:0cf6      shr   ax, 1                                 ; arg1
│      │╎   0000:0cf8      shr   ax, 1                                 ; arg1
│      │╎   0000:0cfa      mov   bp, ax                                ; arg1
│      │╎   0000:0cfc      add   bp, 0xd000
│      │╎   0000:0d00      mov   ds, word cs:[0xff2c]
│      │╎   0000:0d05      mov   di, dx                                ; arg2
│      │╎   0000:0d07      push  cs
│      │╎   0000:0d08      pop   es
│      │╎   0000:0d09      mov   al, byte cs:[0x4ff2]
│      │╎   0000:0d0d      mov   cl, 0x40                              ; '@'
│      │╎   0000:0d0f      mul   cl
│      │╎   0000:0d11      add   ax, 0x511d                            ; int16_t arg1
│      │╎   0000:0d14      mov   di, ax                                ; arg1
│      │╎   0000:0d16      call  fcn.0000062a                          ; fcn.0000062a
│      │╎   0000:0d19      pop   di
│      │╎   0000:0d1a      pop   si
│      │╎   0000:0d1b      pop   ds
│      │╎   0000:0d1c      pop   es
│      └──> 0000:0d1d      inc   si
│       ╎   0000:0d1e      inc   byte [0x4ff2]
│       ╎   0000:0d22      pop   cx
│       └─< 0000:0d23      loop  fcn.00000ce0
└           0000:0d25      ret
```

### Function 0x00000d26
```asm
; CALL XREFS from fcn.0000072d @ +0x3bb, +0x3ef, +0x4f6, +0x522, +0x55d
┌ fcn.00000d26();
│           0000:0d26      mov   al, byte [0x93]                       ; [0x93:1]=67
│           0000:0d29      or    al, al
│       ┌─< 0000:0d2b      jne   0xd2e
│       │   0000:0d2d      ret
│       └─> 0000:0d2e      cmp   al, 4
│           0000:0d30      mov   al, 1
│       ┌─< 0000:0d32      jae   0xd35
│       │   0000:0d34      ret
│       └─> 0000:0d35      mov   al, 2
└           0000:0d37      ret
```

### Function 0x00000dd0
```asm
; CALL XREF from fcn.0000072d @ +0x290
┌ fcn.00000dd0(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:0dd0      mov   cl, byte [0x84]                       ; [0x84:1]=2
│           0000:0dd4      mov   al, 0x24                              ; '$'
│           0000:0dd6      mul   cl
│           0000:0dd8      mov   cl, byte [0x83]                       ; [0x83:1]=226
│           0000:0ddc      add   cl, 4
│           0000:0ddf      xor   ch, ch
│           0000:0de1      add   ax, cx                                ; arg4
│           0000:0de3      add   ax, word [0xff31]                     ; arg1
│           0000:0de7      mov   si, ax                                ; arg1
│           0000:0de9      call  fcn.00001504                          ; fcn.00001504
│           0000:0dec      mov   di, 0x5014
│           0000:0def      push  cs
│           0000:0df0      pop   es
│           0000:0df1      mov   cx, 3
│       ┌─> 0000:0df4      movsw word es:[di], word ptr [si]
│       ╎   0000:0df5      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0df6      add   si, 0x21
│       ╎   0000:0df9      call  fcn.00001504                          ; fcn.00001504
│       └─< 0000:0dfc      loop  0xdf4
└           0000:0dfe      ret
```

### Function 0x00000dff
```asm
; CALL XREF from fcn.00000112 @ 0xbb
┌ fcn.00000dff(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0dff      mov   al, byte [0x4ff1]                     ; [0x4ff1:1]=255
│           0000:0e02      neg   al
│           0000:0e04      add   al, 0x12
│           0000:0e06      mov   cl, al
│           0000:0e08      test  byte [0xff43], 0xff
│       ┌─< 0000:0e0d      jne   0xe1c
│       │   0000:0e0f      mov   al, byte [0x84]                       ; [0x84:1]=2
│       │   0000:0e12      sub   al, 2
│       │   0000:0e14      cmp   al, cl
│      ┌──< 0000:0e16      jne   0xe1b
│      ││   0000:0e18      call  0x10f4
│      └──> 0000:0e1b      ret
│       └─> 0000:0e1c      mov   al, byte [0x84]                       ; [0x84:1]=2
│           0000:0e1f      sub   al, 5
│           0000:0e21      cmp   cl, al
│       ┌─< 0000:0e23      jae   0xe26
│       │   0000:0e25      ret
│      ┌└─> 0000:0e26      jne   0xe2e
│      │    0000:0e28      call  fcn.00000f2d                          ; fcn.00000f2d
│      │┌─< 0000:0e2b      jmp   0x10f4
│      └──> 0000:0e2e      add   al, 0xa
│       │   0000:0e30      cmp   al, cl
│      ┌──< 0000:0e32      je    0xe35
│      ││   0000:0e34      ret
│     ┌└──> 0000:0e35      jmp   0xfd4
..
  │││││││   ; CODE XREF from fcn.00000dff @ +0xaf
  │││ │││   ; CODE XREF from fcn.00000dff @ +0x84
   │ ││││   ; CODE XREFS from fcn.00000dff @ +0x60, +0x8d
     ││ │   ; CALL XREF from fcn.00000dff @ 0xe28
     ││ │   ; CALL XREF from fcn.00000dff @ 0xfe9
     ││ │   ; CALL XREF from fcn.00000f2d @ 0xf39
     ││ │   ; CALL XREF from fcn.00000dff @ 0xfe6
│    ││ │   ; CODE XREF from fcn.00000dff @ 0xe35
│    ││ │   ; CODE XREF from fcn.00000dff @ +0x11c
│    └└───> 0000:0fd4      test  byte [0xff43], 0xff                   ; arg1
│      ┌──< 0000:0fd9      jne   0xfdc
│      ││   0000:0fdb      ret
│      └──> 0000:0fdc      mov   byte [0xff44], 0xff                   ; [0xff:1]=232
│       │   0000:0fe1      push  es
│       │   0000:0fe2      push  ds
│       │   0000:0fe3      push  di
│       │   0000:0fe4      push  si
│       │   0000:0fe5      push  bx                                    ; arg3
│       │   0000:0fe6      call  fcn.00000f8a                          ; fcn.00000f8a
│       │   0000:0fe9      call  fcn.00000f46                          ; fcn.00000f46
│       │   0000:0fec      xor   bx, bx
│       │   0000:0fee      mov   bl, byte cs:[0x92]
│       │   0000:0ff3      dec   bl
│       │   0000:0ff5      add   bx, bx
│       │   0000:0ff7      mov   ax, word cs:[bx + 0x4086]
│       │   0000:0ffc      mov   word cs:[0x4ff5], ax
│       │   0000:1000      mov   ds, word cs:[0xff2c]
│       │   0000:1005      mov   ax, 0xa000
│       │   0000:1008      mov   es, ax
│       │   0000:100a      mov   di, word cs:[0x4ff7]
│       │   0000:100f      mov   si, word cs:[0x4ff9]
│       │   0000:1014      mov   cx, 4
│      ┌──> 0000:1017      push  cx
│      ╎│   0000:1018      push  di
│      ╎│   0000:1019      mov   cx, 4
│     ┌───> 0000:101c      push  cx
│     ╎╎│   0000:101d      lodsb al, byte [si]
│     ╎╎│   0000:101e      cmp   al, 0xff
│    ┌────< 0000:1020      jne   0x1028
│    │╎╎│   0000:1022      add   di, 0xa00
│   ┌─────< 0000:1026      jmp   0x107a
│   │└────> 0000:1028      push  si
│   │ ╎╎│   0000:1029      xor   ah, ah
│   │ ╎╎│   0000:102b      add   ax, ax
│   │ ╎╎│   0000:102d      add   ax, ax
│   │ ╎╎│   0000:102f      add   ax, ax
│   │ ╎╎│   0000:1031      add   ax, ax
│   │ ╎╎│   0000:1033      mov   si, ax
│   │ ╎╎│   0000:1035      add   si, word [0xb000]
│   │ ╎╎│   0000:1039      mov   cx, 8
│   │┌────> 0000:103c      push  cx
│   │╎╎╎│   0000:103d      lodsw ax, word [si]                         ; int16_t arg1
│   │╎╎╎│   0000:103e      xchg  al, ah
│   │╎╎╎│   0000:1040      call  fcn.00001096                          ; fcn.00001096
│   │╎╎╎│   0000:1043      not   bp
│   │╎╎╎│   0000:1045      and   word es:[di], bp
│   │╎╎╎│   0000:1048      or    word es:[di], dx
│   │╎╎╎│   0000:104b      call  fcn.00001096                          ; fcn.00001096
│   │╎╎╎│   0000:104e      not   bp
│   │╎╎╎│   0000:1050      and   word es:[di + 2], bp
│   │╎╎╎│   0000:1054      or    word es:[di + 2], dx
│   │╎╎╎│   0000:1058      call  fcn.00001096                          ; fcn.00001096
│   │╎╎╎│   0000:105b      not   bp
│   │╎╎╎│   0000:105d      and   word es:[di + 4], bp
│   │╎╎╎│   0000:1061      or    word es:[di + 4], dx
│   │╎╎╎│   0000:1065      call  fcn.00001096                          ; fcn.00001096
│   │╎╎╎│   0000:1068      not   bp
│   │╎╎╎│   0000:106a      and   word es:[di + 6], bp
│   │╎╎╎│   0000:106e      or    word es:[di + 6], dx
│   │╎╎╎│   0000:1072      add   di, 0x140
│   │╎╎╎│   0000:1076      pop   cx
│   │└────< 0000:1077      loop  0x103c
│   │ ╎╎│   0000:1079      pop   si
│   │ ╎╎│   ; CODE XREF from fcn.00000dff @ 0x1026
│   └─────> 0000:107a      pop   cx
│     └───< 0000:107b      loop  0x101c
│      ╎│   0000:107d      pop   di
│      ╎│   0000:107e      add   di, 8
│      ╎│   0000:1081      pop   cx
│      └──< 0000:1082      loop  0x1017
│       │   0000:1084      pop   bx
│       │   0000:1085      pop   si
│       │   0000:1086      pop   di
│       │   0000:1087      pop   ds
│       │   0000:1088      pop   es
│       │   0000:1089      ret
..
│      ││   ; CODE XREFS from fcn.00000dff @ 0xe18, 0xe2b
│      │└─> 0000:10f4      test  byte [0xff37], 0xff                   ; arg1
│      │┌─< 0000:10f9      je    0x10fc
│      ││   0000:10fb      ret
│      │└─> 0000:10fc      mov   byte [0xff37], 0xff                   ; [0xff:1]=232
│      │    ; CODE XREF from fcn.00001096 @ +0x5c
│      └──> 0000:1101      push  es
│           0000:1102      push  ds
│           0000:1103      push  si
│           0000:1104      push  di
│           0000:1105      push  bx
│           0000:1106      mov   ax, 0xa000
│           0000:1109      mov   es, ax
│           0000:110b      mov   si, 0x511d
│           0000:110e      mov   di, word cs:[0x4fed]
│           0000:1113      mov   cx, 3
│       ┌─> 0000:1116      push  cx
│       ╎   0000:1117      mov   cx, 3
│      ┌──> 0000:111a      push  cx
│      ╎╎   0000:111b      push  di
│      ╎╎   0000:111c      call  fcn.0000068e                          ; fcn.0000068e
│      ╎╎   0000:111f      pop   di
│      ╎╎   0000:1120      add   di, 8
│      ╎╎   0000:1123      pop   cx
│      └──< 0000:1124      loop  0x111a
│       ╎   0000:1126      add   di, 0x9e8
│       ╎   0000:112a      pop   cx
│       └─< 0000:112b      loop  0x1116
│           0000:112d      pop   bx
│           0000:112e      pop   di
│           0000:112f      pop   si
│           0000:1130      pop   ds
│           0000:1131      pop   es
└           0000:1132      ret
```

### Function 0x00000f2d
```asm
; CALL XREF from fcn.00000dff @ 0xe28
┌ fcn.00000f2d(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0f2d      test  byte [0xff44], 0xff
│       ┌─< 0000:0f32      jne   0xf35
│       │   0000:0f34      ret
│       └─> 0000:0f35      push  es
│           0000:0f36      push  di
│           0000:0f37      push  si
│           0000:0f38      push  bx                                    ; arg3
│           0000:0f39      call  fcn.00000f68                          ; fcn.00000f68
│           0000:0f3c      pop   bx
│           0000:0f3d      pop   si
│           0000:0f3e      pop   di
│           0000:0f3f      pop   es
│           0000:0f40      mov   byte [0xff44], 0
└           0000:0f45      ret
```

### Function 0x00000f46
```asm
; CALL XREF from fcn.00000dff @ 0xfe9
┌ fcn.00000f46();
│           0000:0f46      push  ds
│           0000:0f47      mov   si, word cs:[0x4ff7]
│           0000:0f4c      mov   ax, 0xa000
│           0000:0f4f      mov   ds, ax
│           0000:0f51      mov   es, ax
│           0000:0f53      mov   di, 0xfa40
│           0000:0f56      mov   cx, 0x20
│       ┌─> 0000:0f59      push  cx
│       ╎   0000:0f5a      mov   cx, 0x10
│       ╎   0000:0f5d      rep   movsw word es:[di], word ptr [si]
│       ╎   0000:0f5f      add   si, 0x120
│       ╎   0000:0f63      pop   cx
│       └─< 0000:0f64      loop  0xf59
│           0000:0f66      pop   ds
└           0000:0f67      ret
```

### Function 0x00000f68
```asm
; CALL XREF from fcn.00000f2d @ 0xf39
┌ fcn.00000f68();
│           0000:0f68      push  ds
│           0000:0f69      mov   di, word cs:[0x4ff7]
│           0000:0f6e      mov   ax, 0xa000
│           0000:0f71      mov   es, ax
│           0000:0f73      mov   ds, ax
│           0000:0f75      mov   si, 0xfa40
│           0000:0f78      mov   cx, 0x20
│       ┌─> 0000:0f7b      push  cx
│       ╎   0000:0f7c      mov   cx, 0x10
│       ╎   0000:0f7f      rep   movsw word es:[di], word ptr [si]
│       ╎   0000:0f81      add   di, 0x120
│       ╎   0000:0f85      pop   cx
│       └─< 0000:0f86      loop  0xf7b
│           0000:0f88      pop   ds
└           0000:0f89      ret
```

### Function 0x00000f8a
```asm
; CALL XREF from fcn.00000dff @ 0xfe6
┌ fcn.00000f8a(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:0f8a      mov   al, byte [0x84]                       ; [0x84:1]=2
│           0000:0f8d      add   al, byte [0x4ffb]                     ; [0x4ffb:1]=255
│           0000:0f91      and   al, 0x3f
│           0000:0f93      mov   cl, 0x24                              ; '$'
│           0000:0f95      mul   cl
│           0000:0f97      mov   cl, byte [0x83]                       ; [0x83:1]=226
│           0000:0f9b      add   cl, byte [0x4ffc]                     ; [0x4ffc:1]=255
│           0000:0f9f      add   cl, 4
│           0000:0fa2      xor   ch, ch
│           0000:0fa4      add   ax, cx                                ; arg4
│           0000:0fa6      mov   si, ax                                ; arg1
│           0000:0fa8      add   si, word [0xff31]
│           0000:0fac      call  fcn.00001504                          ; fcn.00001504
│           0000:0faf      mov   cx, 4
│       ┌─> 0000:0fb2      push  cx
│       ╎   0000:0fb3      mov   cx, 4
│      ┌──> 0000:0fb6      push  cx
│      ╎╎   0000:0fb7      mov   bl, byte [si]
│      ╎╎   0000:0fb9      inc   si
│      ╎╎   0000:0fba      and   bl, 0x7f
│      ╎╎   0000:0fbd      xor   bh, bh
│      ╎╎   0000:0fbf      add   bx, bx
│      ╎╎   0000:0fc1      mov   word [bx + 0x501d], 0
│      ╎╎   0000:0fc7      pop   cx
│      └──< 0000:0fc8      loop  0xfb6
│       ╎   0000:0fca      add   si, 0x20
│       ╎   0000:0fcd      call  fcn.00001504                          ; fcn.00001504
│       ╎   0000:0fd0      pop   cx
│       └─< 0000:0fd1      loop  0xfb2
└           0000:0fd3      ret
```

### Function 0x00001096
```asm
; XREFS(28)
┌ fcn.00001096(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1096      xor   bp, bp
│           0000:1098      xor   dx, dx
│           0000:109a      xor   bl, bl
│           0000:109c      add   ax, ax                                ; arg1
│           0000:109e      adc   bl, bl
│           0000:10a0      add   ax, ax                                ; arg1
│           0000:10a2      adc   bl, bl
│       ┌─< 0000:10a4      je    0x10b9
│       │   0000:10a6      or    bp, 0xff
│       │   0000:10aa      mov   dl, byte cs:[0x4ff6]
│       │   0000:10af      cmp   bl, 3
│      ┌──< 0000:10b2      je    0x10b9
│      ││   0000:10b4      mov   dl, byte cs:[0x4ff5]
│      └└─> 0000:10b9      xor   bl, bl
│           0000:10bb      add   ax, ax                                ; arg1
│           0000:10bd      adc   bl, bl
│           0000:10bf      add   ax, ax                                ; arg1
│           0000:10c1      adc   bl, bl
│       ┌─< 0000:10c3      jne   0x10c6
│       │   0000:10c5      ret
│       └─> 0000:10c6      or    bp, 0xff00
│           0000:10ca      mov   dh, byte cs:[0x4ff6]
│           0000:10cf      cmp   bl, 3
│       ┌─< 0000:10d2      jne   0x10d5
│       │   0000:10d4      ret
│       └─> 0000:10d5      mov   dh, byte cs:[0x4ff5]
└           0000:10da      ret
```

### Function 0x000011eb
```asm
; CALL XREF from fcn.00001096 @ +0x12f
┌ fcn.000011eb(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:11eb      cmp   byte [di], 0xff
│       ┌─< 0000:11ee      jne   0x11f1
│       │   0000:11f0      ret
│       └─> 0000:11f1      cmp   byte [di], 0xfc
│       ┌─< 0000:11f4      jne   0x11f7
│       │   0000:11f6      ret
│       └─> 0000:11f7      push  ds
│           0000:11f8      push  di
│           0000:11f9      push  si
│           0000:11fa      push  bx                                    ; arg3
│           0000:11fb      push  ax                                    ; arg1
│           0000:11fc      mov   ah, byte [0x4fff]                     ; [0x4fff:1]=255
│           0000:1200      dec   ah
│           0000:1202      shr   ah, 1
│           0000:1204      shr   ah, 1
│           0000:1206      shr   ah, 1
│           0000:1208      sbb   ax, ax                                ; arg1
│           0000:120a      xor   ax, 0xff00                            ; arg1
│           0000:120d      mov   word [0x4ffd], ax                     ; [0x4ffd:2]=0xffff ; arg1
│           ; DATA XREF from fcn.00001510 @ +0xe
│           0000:1210      add   bx, bx                                ; arg3
│           ; DATA XREF from fcn.00001481 @ 0x1493
│           0000:1212      add   bx, bx                                ; arg3
│           0000:1214      add   bx, bx                                ; arg3
│           0000:1216      add   bx, word [0x4feb]                     ; [0x4feb:2]=0xffff ; arg3
│           0000:121a      mov   di, bx                                ; arg3
│           0000:121c      pop   ax
│           0000:121d      test  al, 0xff
│       ┌─< 0000:121f      jne   0x1224
│      ┌──< 0000:1221      jmp   0x12a9
│      │└─> 0000:1224      dec   al
│      │    0000:1226      mov   cl, 0x30                              ; '0'
│      │    0000:1228      mul   cl
│      │    0000:122a      add   ax, 0x8030                            ; int16_t arg1
│      │    0000:122d      mov   si, ax
│      │    0000:122f      mov   ds, word cs:[0xff2c]
│      │    0000:1234      push  si
│      │    0000:1235      push  di
│      │    0000:1236      mov   al, byte cs:[0x4fff]
│      │    0000:123a      and   al, 3
│      │    0000:123c      neg   al
│      │    0000:123e      add   al, 3
│      │    0000:1240      call  fcn.000012e6                          ; fcn.000012e6
│      │    0000:1243      call  fcn.0000125d                          ; fcn.0000125d
│      │    0000:1246      pop   di
│      │    0000:1247      pop   si
│      │    0000:1248      mov   al, byte cs:[0x4fff]
│      │    0000:124c      call  fcn.000012e6                          ; fcn.000012e6
│      │    0000:124f      add   di, 4
│      │    0000:1252      add   si, 3
│      │    0000:1255      call  fcn.0000125d                          ; fcn.0000125d
│      │    0000:1258      pop   bx
│      │    0000:1259      pop   si
│      │    0000:125a      pop   di
│      │    0000:125b      pop   ds
│      │    0000:125c      ret
       │    ; CALL XREFS from fcn.000011eb @ 0x1243, 0x1255
..
│      │    ; CODE XREF from fcn.000011eb @ 0x1221
│      └──> 0000:12a9      push  di                                    ; arg3
│           0000:12aa      mov   al, byte cs:[0x4fff]
│           0000:12ae      and   al, 3
│           0000:12b0      neg   al
│           0000:12b2      add   al, 3
│           0000:12b4      call  fcn.000012e6                          ; fcn.000012e6
│           0000:12b7      call  fcn.000012cd                          ; fcn.000012cd
│           0000:12ba      pop   di
│           0000:12bb      mov   al, byte cs:[0x4fff]
│           0000:12bf      call  fcn.000012e6                          ; fcn.000012e6
│           0000:12c2      add   di, 4
│           0000:12c5      call  fcn.000012cd                          ; fcn.000012cd
│           0000:12c8      pop   bx
│           0000:12c9      pop   si
│           0000:12ca      pop   di
│           0000:12cb      pop   ds
└           0000:12cc      ret
```

### Function 0x0000125d
```asm
; CALL XREFS from fcn.000011eb @ 0x1243, 0x1255
┌ fcn.0000125d(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:125d      mov   cx, 2
│       ┌─> 0000:1260      push  cx
│       ╎   0000:1261      lodsw ax, word [si]
│       ╎   0000:1262      mov   dx, ax                                ; arg1
│       ╎   0000:1264      lodsb al, byte [si]
│       ╎   0000:1265      mov   bl, al
│       ╎   0000:1267      mov   bh, dl
│       ╎   0000:1269      shr   dx, 1
│       ╎   0000:126b      shr   dx, 1
│       ╎   0000:126d      shr   dl, 1
│       ╎   0000:126f      shr   dl, 1
│       ╎   0000:1271      add   bx, bx                                ; arg3
│       ╎   0000:1273      add   bx, bx                                ; arg3
│       ╎   0000:1275      and   bh, 0x3f
│       ╎   0000:1278      and   al, 0x3f
│       ╎   0000:127a      mov   bl, al
│       ╎   0000:127c      xchg  dl, dh
│       ╎   0000:127e      xchg  bl, bh
│       ╎   0000:1280      mov   ax, word cs:[0x4ffd]
│       ╎   0000:1284      not   ax
│       ╎   0000:1286      and   word es:[di], ax
│       ╎   0000:1289      and   word es:[di + 2], ax
│       ╎   0000:128d      not   ax
│       ╎   0000:128f      and   ax, dx
│       ╎   0000:1291      or    word es:[di], ax
│       ╎   0000:1294      mov   ax, word cs:[0x4ffd]
│       ╎   0000:1298      and   ax, bx                                ; arg3
│       ╎   0000:129a      or    word es:[di + 2], ax
│       ╎   0000:129e      add   di, 0x500
│       ╎   0000:12a2      add   si, 0x15
│       ╎   0000:12a5      pop   cx
│       └─< 0000:12a6      loop  0x1260
└           0000:12a8      ret
```

### Function 0x000012cd
```asm
; CALL XREFS from fcn.000011eb @ 0x12b7, 0x12c5
┌ fcn.000012cd();
│           0000:12cd      mov   ax, word cs:[0x4ffd]
│           0000:12d1      not   ax
│           0000:12d3      and   word es:[di], ax
│           0000:12d6      and   word es:[di + 2], ax
│           0000:12da      add   di, 0x500
│           0000:12de      and   word es:[di], ax
│           0000:12e1      and   word es:[di + 2], ax
└           0000:12e5      ret
```

### Function 0x000012e6
```asm
; CALL XREFS from fcn.000011eb @ 0x1240, 0x124c, 0x12b4, 0x12bf
┌ fcn.000012e6(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:12e6      and   al, 3
│           0000:12e8      xor   ah, ah
│           0000:12ea      push  ax                                    ; arg1
│           0000:12eb      mov   bx, 6
│           0000:12ee      mul   bl
│           0000:12f0      add   si, ax                                ; arg1
│           0000:12f2      pop   ax
│           0000:12f3      mov   bx, 0x140
│           0000:12f6      mul   bx
│           0000:12f8      add   di, ax
└           0000:12fa      ret
```

### Function 0x0000132b
```asm
; CALL XREFS from fcn.000012e6 @ +0x37, +0x3f
┌ fcn.0000132b();
│           0000:132b      mov   al, byte [0x4fe9]                     ; [0x4fe9:1]=255
│           0000:132e      dec   al
│           0000:1330      mov   bl, al
│           0000:1332      add   al, 0x19
│           0000:1334      mov   dl, al
│           0000:1336      mov   al, byte [0x4fea]                     ; [0x4fea:1]=255
│           0000:1339      dec   al
│           0000:133b      mov   bh, al
│           0000:133d      add   al, 0x19
│           0000:133f      mov   dh, al
│           0000:1341      call  0x1373
│           0000:1344      mov   al, byte [0x4fe9]                     ; [0x4fe9:1]=255
│           0000:1347      sub   al, 5
│           0000:1349      mov   bl, al
│           0000:134b      add   al, 0x21
│           0000:134d      mov   dl, al
│           0000:134f      mov   al, byte [0x4fea]                     ; [0x4fea:1]=255
│           0000:1352      sub   al, 5
│           0000:1354      mov   bh, al
│           0000:1356      add   al, 0x21
│           0000:1358      mov   dh, al
│           0000:135a      call  0x1373
│           0000:135d      mov   al, byte [0x4fe9]                     ; [0x4fe9:1]=255
│           0000:1360      sub   al, 9
│           0000:1362      mov   bl, al
│           0000:1364      add   al, 0x29
│           0000:1366      mov   dl, al
│           0000:1368      mov   al, byte [0x4fea]                     ; [0x4fea:1]=255
│           0000:136b      sub   al, 9
│           0000:136d      mov   bh, al
│           0000:136f      add   al, 0x29
│           0000:1371      mov   dh, al
│           ; CALL XREFS from fcn.0000132b @ 0x1341, 0x135a
│           0000:1373      mov   cx, 9
│       ┌─> 0000:1376      push  cx
│       ╎   0000:1377      push  dx
│       ╎   0000:1378      push  bx
│       ╎   0000:1379      call  fcn.000013a5                          ; fcn.000013a5
│       ╎   0000:137c      pop   bx
│       ╎   0000:137d      pop   dx
│       ╎   0000:137e      sub   bl, 0xc
│      ┌──< 0000:1381      jae   0x1385
│      │╎   0000:1383      xor   bl, bl
│      └──> 0000:1385      sub   bh, 0xc
│      ┌──< 0000:1388      jae   0x138c
│      │╎   0000:138a      xor   bh, bh
│      └──> 0000:138c      add   dl, 0xc
│      ┌──< 0000:138f      jae   0x1393
│      │╎   0000:1391      mov   dl, 0xff
│      └──> 0000:1393      add   dh, 0xc
│      ┌──< 0000:1396      jae   0x139a
│      │╎   0000:1398      mov   dh, 0xff
│      └──> 0000:139a      push  dx
│       ╎   0000:139b      push  bx
│       ╎   0000:139c      call  fcn.0000144e                          ; fcn.0000144e
│       ╎   0000:139f      pop   bx
│       ╎   0000:13a0      pop   dx
│       ╎   0000:13a1      pop   cx
│       └─< 0000:13a2      loop  0x1376
└           0000:13a4      ret
```

### Function 0x000013a5
```asm
; CALL XREF from fcn.0000132b @ 0x1379
┌ fcn.000013a5(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:13a5      mov   ax, 0xa000                            ; int16_t arg2
│           0000:13a8      mov   es, ax
│           0000:13aa      push  dx                                    ; arg2
│           0000:13ab      push  bx                                    ; arg3
│           0000:13ac      mov   dh, bh
│           0000:13ae      call  fcn.00001408                          ; fcn.00001408
│           0000:13b1      pop   bx
│           0000:13b2      pop   dx
│           0000:13b3      push  dx
│           0000:13b4      push  bx
│           0000:13b5      mov   bh, dh
│           0000:13b7      call  fcn.00001408                          ; fcn.00001408
│           0000:13ba      pop   bx
│           0000:13bb      pop   dx                                    ; int16_t arg3
│           0000:13bc      push  dx
│           0000:13bd      push  bx
│           0000:13be      mov   dl, bl
│           0000:13c0      call  0x13c7
│           0000:13c3      pop   bx
│           0000:13c4      pop   dx
│           0000:13c5      mov   bl, dl
│           ; CALL XREF from fcn.000013a5 @ 0x13c0
│           0000:13c7      cmp   dh, bh
│       ┌─< 0000:13c9      jae   0x13cd
│       │   0000:13cb      xchg  bx, dx
│       └─> 0000:13cd      or    bl, bl
│       ┌─< 0000:13cf      jne   0x13d2
│       │   0000:13d1      ret
│       └─> 0000:13d2      cmp   bl, 0xdf
│       ┌─< 0000:13d5      jb    0x13d8
│       │   0000:13d7      ret
│       └─> 0000:13d8      or    bh, bh
│       ┌─< 0000:13da      jne   0x13de
│       │   0000:13dc      mov   bh, 1
│       └─> 0000:13de      cmp   dh, 0x8f
│       ┌─< 0000:13e1      jb    0x13e5
│       │   0000:13e3      mov   dh, 0x8e
│       └─> 0000:13e5      mov   al, dh
│           0000:13e7      sub   al, bh
│           0000:13e9      inc   al
│           0000:13eb      push  ax
│           0000:13ec      mov   al, bh
│           0000:13ee      call  fcn.0000143f                          ; fcn.0000143f
│           0000:13f1      mov   al, bl
│           0000:13f3      xor   ah, ah
│           0000:13f5      add   di, ax
│           0000:13f7      pop   cx
│           0000:13f8      xor   ch, ch
│           0000:13fa      mov   ah, byte [0x4fff]                     ; [0x4fff:1]=255
│       ┌─> 0000:13fe      mov   byte es:[di], ah
│       ╎   0000:1401      add   di, 0x140
│       └─< 0000:1405      loop  0x13fe
└           0000:1407      ret
```

### Function 0x00001408
```asm
; CALL XREFS from fcn.000013a5 @ 0x13ae, 0x13b7
┌ fcn.00001408(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:1408      cmp   dl, bl
│       ┌─< 0000:140a      jae   0x140e
│       │   0000:140c      xchg  bx, dx                                ; arg2
│       └─> 0000:140e      or    bh, bh
│       ┌─< 0000:1410      jne   0x1413
│       │   0000:1412      ret
│       └─> 0000:1413      cmp   bh, 0x8f
│       ┌─< 0000:1416      jb    0x1419
│       │   0000:1418      ret
│       └─> 0000:1419      or    bl, bl
│       ┌─< 0000:141b      jne   0x141f
│       │   0000:141d      mov   bl, 1
│       └─> 0000:141f      cmp   dl, 0xdf
│       ┌─< 0000:1422      jb    0x1426
│       │   0000:1424      mov   dl, 0xde
│       └─> 0000:1426      mov   al, bh
│           0000:1428      call  fcn.0000143f                          ; fcn.0000143f
│           0000:142b      mov   al, bl
│           0000:142d      xor   ah, ah
│           0000:142f      add   di, ax
│           0000:1431      mov   ah, dl
│           0000:1433      sub   ah, al
│           0000:1435      mov   cl, ah
│           0000:1437      xor   ch, ch
│           0000:1439      mov   al, byte [0x4fff]                     ; [0x4fff:1]=255
│           0000:143c      rep   stosb byte es:[di], al
└           0000:143e      ret
```

### Function 0x0000143f
```asm
; CALL XREF from fcn.000013a5 @ 0x13ee
            ; CALL XREF from fcn.00001408 @ 0x1428
┌ fcn.0000143f(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:143f      push  dx                                    ; arg2
│           0000:1440      xor   ah, ah
│           0000:1442      mov   di, 0x140
│           0000:1445      mul   di
│           0000:1447      add   ax, 0x11b0                            ; arg1
│           0000:144a      mov   di, ax                                ; arg1
│           0000:144c      pop   dx
└           0000:144d      ret
```

### Function 0x0000144e
```asm
; CALL XREF from fcn.0000132b @ 0x139c
┌ fcn.0000144e(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:144e      mov   cl, byte [0xff33]
│           0000:1452      shr   cl, 1
│           0000:1454      inc   cl
│           0000:1456      mov   al, 1
│           0000:1458      mul   cl
│       ┌─> 0000:145a      push  ax                                    ; arg1
│       ╎   0000:145b      call  word cs:[fcn.00000110]                ; 0x110 ; "t\U00000003\xe8\U00000013"
│       ╎   0000:1460      call  word cs:[fcn.00000112]                ; 0x112
│       ╎   0000:1465      call  word cs:[fcn.00000114]                ; 0x114
│       ╎   0000:146a      call  word cs:[fcn.00000116]                ; 0x116
│       ╎   0000:146f      call  word cs:[fcn.00000118]                ; 0x118
│       ╎   0000:1474      pop   ax
│       ╎   0000:1475      cmp   byte [0xff1a], al
│       └─< 0000:1479      jb    0x145a
│           0000:147b      mov   byte [0xff1a], 0
└           0000:1480      ret
```

### Function 0x00001481
```asm
; CODE XREFS from fcn.000012e6 @ +0x2f, +0x42
┌ fcn.00001481();
│           0000:1481      mov   ax, 0xa000
│           0000:1484      mov   es, ax
│           0000:1486      mov   di, 0x11b0
│           0000:1489      mov   cx, 8
│       ┌─> 0000:148c      push  cx
│       ╎   0000:148d      push  di
│       ╎   0000:148e      mov   cx, 0x12
│      ┌──> 0000:1491      push  cx
│      ╎╎   0000:1492      push  di
│      ╎╎   0000:1493      mov   ax, 0x1212
│      ╎╎   0000:1496      mov   cx, 0x70                              ; 'p'
│     ┌───> 0000:1499      xor   word es:[di], ax
│     ╎╎╎   0000:149c      inc   di
│     ╎╎╎   0000:149d      inc   di
│     └───< 0000:149e      loop  0x1499
│      ╎╎   0000:14a0      pop   di
│      ╎╎   0000:14a1      add   di, 0xa00
│      ╎╎   0000:14a5      pop   cx
│      └──< 0000:14a6      loop  0x1491
│       ╎   0000:14a8      pop   di
│       ╎   0000:14a9      add   di, 0x140
│       ╎   0000:14ad      pop   cx
│       └─< 0000:14ae      loop  0x148c
└           0000:14b0      ret
```

### Function 0x00001504
```asm
; XREFS: CALL 0x00000118  CALL 0x00000346  CALL 0x00000393  
            ; XREFS: CALL 0x000003c9  CALL 0x00000404  CALL 0x00000492  
            ; XREFS: CALL 0x00000503  CALL 0x00000de9  CALL 0x00000df9  
            ; XREFS: CALL 0x00000fac  CALL 0x00000fcd  CALL 0x000011d1  
┌ fcn.00001504();
│           0000:1504      cmp   si, 0xe900
│       ┌─< 0000:1508      jae   0x150b
│       │   0000:150a      ret
│       └─> 0000:150b      sub   si, 0x900
└           0000:150f      ret
```

### Function 0x00001510
```asm
; CALL XREF from fcn.00000000 @ 0x4d
┌ fcn.00001510();
│           0000:1510      cmp   si, 0xe000
│       ┌─< 0000:1514      jb    0x1517
│       │   0000:1516      ret
│       └─> 0000:1517      add   si, 0x900
└           0000:151b      ret
```

### Function 0x00001644
```asm
; CALL XREF from fcn.00001510 @ +0x11e
┌ fcn.00001644(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1644      push  ds
│           0000:1645      mov   cl, 0x30                              ; '0'
│           0000:1647      mul   cl
│           0000:1649      add   ax, 0x8000                            ; arg1
│           0000:164c      mov   si, ax                                ; arg1
│           0000:164e      mov   ds, word cs:[0xff2c]
│           0000:1653      mov   ax, 0xa000
│           0000:1656      mov   es, ax
│           0000:1658      mov   di, word cs:[0x4feb]
│           0000:165d      mov   cx, 8
│       ┌─> 0000:1660      push  cx
│       ╎   0000:1661      call  fcn.0000166d                          ; fcn.0000166d
│       ╎   0000:1664      add   di, 0x138
│       ╎   0000:1668      pop   cx
│       └─< 0000:1669      loop  0x1660
│           0000:166b      pop   ds
└           0000:166c      ret
```

### Function 0x0000166d
```asm
; CALL XREF from fcn.00001644 @ 0x1661
┌ fcn.0000166d(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:166d      mov   cx, 2
│       ┌─> 0000:1670      push  cx
│       ╎   0000:1671      lodsw ax, word [si]
│       ╎   0000:1672      mov   dx, ax                                ; arg1
│       ╎   0000:1674      lodsb al, byte [si]
│       ╎   0000:1675      mov   bl, al
│       ╎   0000:1677      mov   bh, dl
│       ╎   0000:1679      shr   dx, 1
│       ╎   0000:167b      shr   dx, 1
│       ╎   0000:167d      mov   byte es:[di], dh
│       ╎   0000:1680      shr   dl, 1
│       ╎   0000:1682      shr   dl, 1
│       ╎   0000:1684      mov   byte es:[di + 1], dl
│       ╎   0000:1688      add   bx, bx                                ; arg3
│       ╎   0000:168a      add   bx, bx                                ; arg3
│       ╎   0000:168c      and   bh, 0x3f
│       ╎   0000:168f      mov   byte es:[di + 2], bh
│       ╎   0000:1693      and   al, 0x3f
│       ╎   0000:1695      mov   byte es:[di + 3], al
│       ╎   0000:1699      mov   bl, byte cs:[0x4fff]
│       ╎   0000:169e      xor   bh, bh
│       ╎   0000:16a0      add   bx, bx                                ; arg3
│       ╎   0000:16a2      mov   cx, 4
│      ┌──> 0000:16a5      mov   al, byte es:[di]
│      ╎╎   0000:16a8      or    al, al
│     ┌───< 0000:16aa      je    0x16d1
│     │╎╎   0000:16ac      mov   ah, al
│     │╎╎   0000:16ae      shr   ah, 1
│     │╎╎   0000:16b0      shr   ah, 1
│     │╎╎   0000:16b2      shr   ah, 1
│     │╎╎   0000:16b4      call  word cs:[bx + 0x46d4]
│     │╎╎   0000:16b9      add   ah, ah
│     │╎╎   0000:16bb      add   ah, ah
│     │╎╎   0000:16bd      add   ah, ah
│     │╎╎   0000:16bf      and   al, 7
│     │╎╎   0000:16c1      or    al, ah
│     │╎╎   0000:16c3      mov   ah, al
│     │╎╎   0000:16c5      and   ah, 7
│     │╎╎   0000:16c8      call  word cs:[bx + 0x46d4]
│     │╎╎   0000:16cd      and   al, 0x38
│     │╎╎   0000:16cf      or    al, ah
│     └───> 0000:16d1      stosb byte es:[di], al
│      └──< 0000:16d2      loop  0x16a5
│       ╎   0000:16d4      pop   cx
│       └─< 0000:16d5      loop  0x1670
└           0000:16d7      ret
```

## Cross-References (callers)
```json
  0x00000110:
[{"from":5211,"to":272,"type":"CALL"}]
  0x00000112:
[{"from":5216,"to":274,"type":"CALL"}]
  0x00000114:
[{"from":5221,"to":276,"type":"CALL"}]
  0x00000116:
[{"from":5226,"to":278,"type":"CALL"}]
  0x00000118:
[{"from":5231,"to":280,"type":"CALL"}]
  0x0000011a:
[{"from":441,"to":282,"type":"CALL"},{"from":1847,"to":282,"type":"CALL"},{"from":1882,"to":282,"type":"CALL"},{"from":1912,"to":282,"type":"CALL"},{"from":1939,"to":282,"type":"CALL"}]
  0x00000128:
[{"from":210,"to":296,"type":"CALL"},{"from":217,"to":296,"type":"CALL"},{"from":224,"to":296,"type":"CALL"},{"from":231,"to":296,"type":"CALL"},{"from":241,"to":296,"type":"CALL"},{"from":248,"to":296,"type":"CALL"},{"from":255,"to":296,"type":"CALL"},{"from":274,"to":296,"type":"CALL"}]
  0x00000276:
[{"from":349,"to":630,"type":"CALL"}]
  0x0000032a:
[{"from":87,"to":810,"type":"CALL"}]
  0x00000367:
[{"from":100,"to":871,"type":"CALL"},{"from":110,"to":871,"type":"CALL"},{"from":120,"to":871,"type":"CALL"},{"from":130,"to":871,"type":"CALL"},{"from":143,"to":871,"type":"CALL"},{"from":153,"to":871,"type":"CALL"},{"from":163,"to":871,"type":"CALL"}]
  0x000003af:
[{"from":172,"to":943,"type":"CALL"}]
  0x000003e7:
[{"from":200,"to":999,"type":"CALL"}]
  0x0000056f:
[{"from":937,"to":1391,"type":"CALL"},{"from":1217,"to":1391,"type":"CALL"},{"from":1231,"to":1391,"type":"CALL"}]
  0x0000059d:
[{"from":865,"to":1437,"type":"CALL"},{"from":996,"to":1437,"type":"CODE"},{"from":1080,"to":1437,"type":"CALL"},{"from":1125,"to":1437,"type":"CALL"},{"from":1337,"to":1437,"type":"CALL"},{"from":1382,"to":1437,"type":"CALL"},{"from":1423,"to":1437,"type":"CALL"}]
  0x00000614:
[{"from":1538,"to":1556,"type":"CALL"},{"from":3522,"to":1556,"type":"CALL"}]
  0x0000062a:
[{"from":1576,"to":1578,"type":"CODE"},{"from":3350,"to":1578,"type":"CALL"}]
  0x0000063f:
[{"from":1587,"to":1599,"type":"CALL"},{"from":1591,"to":1599,"type":"CALL"}]
  0x00000655:
[{"from":1516,"to":1621,"type":"CALL"},{"from":3529,"to":1621,"type":"CALL"}]
  0x00000665:
[{"from":1626,"to":1637,"type":"CALL"},{"from":1630,"to":1637,"type":"CALL"}]
```