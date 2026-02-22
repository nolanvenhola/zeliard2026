# PHYSICS_SUBSYSTEMS - Analysis

**Source:** `chunk_03.bin`  
**Size:** 8.8 KB  
**Functions:** 50  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000   43 272          fcn.00000000
0x00000110    1 2            fcn.00000110
0x00000112    1 2            fcn.00000112
0x00000114    2 20   -> 5    fcn.00000114
0x00000116    2 17           fcn.00000116
0x00000118    1 3            fcn.00000118
0x0000011a    6 130  -> 50   fcn.0000011a
0x00000128   16 1195 -> 195  fcn.00000128
0x00000270   54 434          fcn.00000270
0x00000422    7 61           fcn.00000422
0x0000045f    1 68           fcn.0000045f
0x000004a3    7 56           fcn.000004a3
0x000004db   12 129          fcn.000004db
0x00000657    6 45           fcn.00000657
0x00000684    6 116          fcn.00000684
0x000006f8    1 22           fcn.000006f8
0x0000070e    3 24           fcn.0000070e
0x00000726    3 11           fcn.00000726
0x00000731    1 93           fcn.00000731
0x0000078e   15 107          fcn.0000078e
0x000007f9    1 6            fcn.000007f9
0x000007ff    1 8            fcn.000007ff
0x00000807    1 7            fcn.00000807
0x0000080e    6 81           fcn.0000080e
0x0000085f   19 118          fcn.0000085f
0x00000dbe    4 66           fcn.00000dbe
0x00000e00    5 18           fcn.00000e00
0x00000ea6    3 47           fcn.00000ea6
0x00000ed5   32 688  -> 244  fcn.00000ed5
0x00000fff    3 25           fcn.00000fff
0x00001018    5 41           fcn.00001018
0x00001041    5 37           fcn.00001041
0x00001066    5 74           fcn.00001066
0x00001226    7 168  -> 139  fcn.00001226
0x0000128f    3 29           fcn.0000128f
0x000012ce    1 17           fcn.000012ce
0x000012df    6 33           fcn.000012df
0x00001330   11 122          fcn.00001330
0x000013aa   22 146          fcn.000013aa
0x0000143c   29 199          fcn.0000143c
0x00001503    1 18           fcn.00001503
0x00001515    3 51           fcn.00001515
0x00001548    9 58           fcn.00001548
0x000015cf    3 12           fcn.000015cf
0x000015db    3 12           fcn.000015db
0x000016d3    5 30           fcn.000016d3
0x0000171d    5 53           fcn.0000171d
0x00001752    3 41           fcn.00001752
0x00001f5f    3 45           fcn.00001f5f
0x00001f9c    5 34           fcn.00001f9c
```

## Strings
```
nth      paddr      vaddr len size section type    string                                          
---------------------------------------------------------------------------------------------------
  0 0x000001b0 0x000001b0   4    4         ascii   u\fP.
  1 0x00000200 0x00000200   5    5         ascii   6<\rt;
  2 0x0000020c 0x0000020c   5    5         ascii   <<\ft/
  3 0x00000215 0x00000215   5    6         ascii   t),3s
  4 0x0000022f 0x0000022f   5    5         ascii   \f<\tt\f
  5 0x000002b3 0x000002b3   8    9         ibm037  aG&{vaGÚ
  6 0x000002f2 0x000002f2   8    9         ibm037  aF&{vaGÚ
  7 0x0000030f 0x0000030f   8    9         ibm037  aF&{vaGÚ
  8 0x0000032c 0x0000032c   8    9         ibm037  aF&{vaGÚ
  9 0x00000349 0x00000349   8    9         ibm037  aF&{vaGÚ
 10 0x00000366 0x00000366   8    9         ibm037  aF&{vaGÚ
 11 0x00000383 0x00000383   8    9         ibm037  aF&{vaGÚ
 12 0x000004a0 0x000004a0   5    6         utf8    [^À>\e blocks=Basic Latin,Latin-1 Supplement
 13 0x000004db 0x000004db   4    4         ascii   VWSS
 14 0x0000051e 0x0000051e   4    4         ascii   SVR\n
 15 0x0000055c 0x0000055c   4    4         ascii   VWSS
 16 0x000005d3 0x000005d3   4    4         ascii   VWSS
 17 0x00000617 0x00000617   4    4         ascii   SVR\n
 18 0x00000673 0x00000673   4    4         ascii   UVWR
 19 0x0000067a 0x0000067a   9    9         ascii   Z_^]FGEBB
 20 0x0000071f 0x0000071f   4    4         ascii   EEGG
 21 0x0000075b 0x0000075b   5    5         ascii   kP.\n7
 22 0x00000786 0x00000786   4    5         ascii   kP.\n
 23 0x0000078d 0x0000078d   5    6         ibm037  CvaGÚ
 24 0x00000799 0x00000799   8    9         ibm037  aG&{vaGÚ
 25 0x000007a8 0x000007a8   8    9         ibm037  aG&{vaGÚ
 26 0x000007b7 0x000007b7   8    9         ibm037  aG&{vaGÚ
 27 0x000007c6 0x000007c6   8    9         ibm037  aG&{vaGÚ
 28 0x000007d5 0x000007d5   8    9         ibm037  aG&{vaGÚ
 29 0x000007e4 0x000007e4   8    9         ibm037  aG&{vaGÚ
 30 0x0000085e 0x0000085e   4    6         utf8    À>uP blocks=Latin-1 Supplement,Basic Latin
 31 0x00000912 0x00000912   5    5         ibm037  CJY«\f
 32 0x00000944 0x00000944   8    9         ascii   wP"&wP&\t
 33 0x00000950 0x00000950   9   10         ascii   wP"&wP&\tE
 34 0x00000964 0x00000964  11   12         ibm037  aG&{SP\a¬;Ú<
 35 0x00000976 0x00000976   4    5         ibm037  vvcÓ
 36 0x00000b6c 0x00000b6c   5    5         ascii   tPGFY
 37 0x00000e15 0x00000e15   4    4         ascii   VWP.
 38 0x00000eca 0x00000eca   4    4         ibm037  vucF
 39 0x00000f17 0x00000f17   4    4         ascii   VWS.
 40 0x00000fd6 0x00000fd6   4    4         ascii   >xP2
 41 0x00000fe6 0x00000fe6   7    7         ascii   6zP[_^\a
 42 0x00000ffa 0x00000ffa   4    4         ascii   [_^\a
 43 0x0000100e 0x0000100e   4    4         ascii   [^_\a
 44 0x0000102b 0x0000102b   7    8         ibm037  vvvvaF8
 45 0x00001051 0x00001051   7    8         ibm037  vvvvaG8
 46 0x0000106b 0x0000106b   4    4         ascii   |P$?
 47 0x000010d4 0x000010d4   4    4         ascii   >xP.
 48 0x00001116 0x00001116  20   21         ibm037  aG&{ßSX;ßSC¬ååßS½$;¬
 49 0x00001172 0x00001172   4    4         ascii   _GGY
 50 0x000011b2 0x000011b2   5    5         ibm037  KS47L
 51 0x000011c7 0x000011c7   8    9         ibm037  aG&{ßSJ;
 52 0x00001233 0x00001233   4    4         ascii   WVSP
 53 0x000012a9 0x000012a9   4    4         ibm037  SXCï
 54 0x00001363 0x00001363   4    4         ascii   kP,\t
 55 0x0000136e 0x0000136e   4    4         ascii   lP,\t
 56 0x000013a4 0x000013a4   7    8         ibm037  $!ßSKC½
 57 0x000013b6 0x000013b6   4    4         ascii   [ZRS
 58 0x000013bf 0x000013bf   4    4         ascii   [ZRS
 59 0x000014b5 0x000014b5   6    7         ascii   P& 5&\b
 60 0x000014cc 0x000014cc   8    9         utf8    P& 5&\b%Ê blocks=Basic Latin,Latin-1 Supplement
 61 0x000014db 0x000014db   6    7         ascii   P& 5&\b
 62 0x000014ea 0x000014ea   7    7         ascii   P& 5&\b%
 63 0x000014fb 0x000014fb   6    7         ascii   P& 5&\b
 64 0x0000157a 0x0000157a   8    8         ibm037  aG&{ßSKC
 65 0x00001635 0x00001635   4    5         ascii   _GG^
 66 0x0000165e 0x0000165e   5    6         ascii   -16;@
 67 0x00001671 0x00001671   9   10         ascii   \b\n#$&\b')*
 68 0x0000168f 0x0000168f   6    7         ascii   #$&\b%)
 69 0x00001696 0x00001696   4    5         ascii   .38=
 70 0x000016a9 0x000016a9  13   14         ascii   \b\v#$&\b')+/49>
 71 0x000016c3 0x000016c3   8    9         ascii    !\b\f#$&\b
 72 0x000016cc 0x000016cc   6    7         ascii   (,05:?
 73 0x000017c2 0x000017c2  12   13         ascii   \a\b\t\n\a\b\v\f\a\b\t\n
 74 0x000017ea 0x000017ea  26   27         ascii   >\b&*%!"!"#$!"!"\t\n\a\b\a\b\t\n\a\b
 75 0x00001805 0x00001805   7    8         ascii   TY]c2/.
 76 0x00001820 0x00001820  26   27         ascii   PUZ^df(0#$!"#$!"#$\a\b\n\f\a\b\t\n
 77 0x0000183b 0x0000183b   9   10         ascii   4QV[_eg/-
 78 0x00001856 0x00001856   4    5         ascii   IMRW
 79 0x0000185b 0x0000185b  27   28         ascii   `ihjk(&!"+&!"!"\a\b\t\n\t\n\eFJNSX
 80 0x0000187a 0x0000187a   4    5         ascii   il1-
 81 0x0000188c 0x0000188c   4    5         ascii   CGKO
 82 0x00001897 0x00001897  11   12         ascii   mno)&!"*%!"
 83 0x000018a7 0x000018a7   4    5         ascii   5DHL
 84 0x000018b4 0x000018b4   4    5         ascii   iqst
 85 0x000018c0 0x000018c0   5    6         ascii   8:?BE
 86 0x000018d1 0x000018d1   9   10         ascii   muwyo+&)&
 87 0x000018db 0x000018db   5    6         ascii   49;@A
 88 0x000018ee 0x000018ee  12   13         ascii   vxz{12/-367<
 89 0x0000190d 0x0000190d   5    6         ascii   mqprp
 90 0x000019f2 0x000019f2   8    9         ibm037  aG&{vaGÚ
 91 0x00001a36 0x00001a36   6    7         ibm037  aG&{SX
 92 0x00001a3e 0x00001a3e   6    6         ascii   FJFJFJ
 93 0x00001a7b 0x00001a7b  12   52         utf32le \f\f<<<<<\f<<<<
 94 0x00001ab0 0x00001ab0   4   16         utf32le \f<ðð blocks=Basic Latin,Latin-1 Supplement
 95 0x00001b47 0x00001b47   6   24         utf32le ??????
 96 0x00001bd0 0x00001bd0   6    7         ascii   &\b=G&\b
 97 0x00001bd7 0x00001bd7   5    5         ascii   G&\b%Y
 98 0x00001be9 0x00001be9  10   11         ibm037  aG&{ßSF¬cG
 99 0x00001d86 0x00001d86   4   16         utf32be ÃÌüÿ
100 0x00001e61 0x00001e61   6   28         utf32be ?3Ã̀ఀ　
101 0x00001e8a 0x00001e8a   4   16         utf32be \f0ðó
102 0x00001f32 0x00001f32   9   10         ibm037  BfD»QJÔ\vC
103 0x00001f86 0x00001f86   6    7         ibm037  ph|SPC
104 0x00001fba 0x00001fba   4    5         ibm037  }SSC
105 0x00001fd5 0x00001fd5   6    7         ascii   \f\f\f\f\f\f
106 0x00001fdf 0x00001fdf   5    5         ascii   \f0\f\f?
107 0x00001fe5 0x00001fe5   4    5         ascii   \f\f\f\f
108 0x00001feb 0x00001feb   7    7         ascii   \f\f\f\f\f\f?
109 0x00001ff5 0x00001ff5   5    6         ascii   0\f0\f0
110 0x00001ffd 0x00001ffd   4    5         ascii   0\f0\f
111 0x00002003 0x00002003   9    9         ascii   0\f0\f<<<<3
112 0x0000200f 0x0000200f  16   17         ascii   0\f0\f\eP+P;PKP[PKP
113 0x00002026 0x00002026   7    8         ascii   \a\b\t\n\v\f\r
114 0x00002033 0x00002033   4    5         ascii   \b\n\t\v
115 0x0000204a 0x0000204a   4    5         ascii   \a\f\f\r
116 0x00002053 0x00002053   5    6         ascii   \b\n\v\t\f
117 0x0000206b 0x0000206b   4    5         ascii   \b\v\b\n
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0000      aas
│           ; DATA XREF from fcn.0000085f @ +0x3d8
│           ; DATA XREFS from fcn.00001752 @ +0x34, +0x45, +0x67
│           0000:0001      and   ax, word [bx + si]                    ; arg3
│           ; XREFS: DATA 0x00000893  DATA 0x000008b1  DATA 0x00001169  
│           ; XREFS: DATA 0x0000116d  DATA 0x000017b0  DATA 0x00001faf  
│           0000:0003      add   byte [si], ch
│           ; DATA XREF from fcn.00000128 @ +0xfc
│           0000:0005      xor   byte [bp + di - 0x4c6], bl
│           ; DATA XREF from fcn.00000128 @ +0x108
│           ; DATA XREF from fcn.00001330 @ 0x137b
│           0000:0009      aas
│           ; DATA XREF from fcn.00000128 @ +0x10e
│           0000:000a      or    bh, byte [bx]                         ; arg3
│           ; XREFS: DATA 0x0000020d  DATA 0x0000022e  DATA 0x00001383  
│           ; XREFS: DATA 0x0000138a  DATA 0x00001391  DATA 0x00001398  
│           ; XREFS: DATA 0x00001413  DATA 0x00001fd5  DATA 0x00001fd7  
│           ; XREFS: DATA 0x00001fd9  DATA 0x00001fe1  DATA 0x00001fe5  
│           ; XREFS: DATA 0x00001fe7  DATA 0x00001feb  DATA 0x00001fed  
│           ; XREFS: DATA 0x00001fef  DATA 0x0000204b  
│           0000:000c      add   word [bx + di + 0x7e], 0xac45         ; [0xac45:2]=0xffff ; arg3
│           0000:0011      inc   ax                                    ; arg1
│           ; XREFS: DATA 0x00000595  DATA 0x00000eda  DATA 0x000011f2  
│           ; XREFS: DATA 0x00001555  DATA 0x00001558  DATA 0x000016fd  
│           0000:0012      insb  byte es:[di], dx
│           0000:0013      xor   dl, ch
│           0000:0015      cmp   ch, cl
│           0000:0017      inc   cx                                    ; arg4
│           ; DATA XREF from fcn.00001752 @ +0x2ce
│           0000:0018      inc   bx                                    ; arg3
│           ; DATA XREFS from fcn.00001330 @ 0x1337, 0x1342
│           0000:0019      inc   cx                                    ; arg4
│           ; DATA XREF from fcn.0000085f @ 0x8a7
│           ; DATA XREF from fcn.0000085f @ +0xa1
│           0000:001a      test  word [bp + si], di
│           ; DATA XREF from fcn.0000085f @ +0x8d
│           ; DATA XREF from fcn.00001066 @ +0x195
│           ; DATA XREF from fcn.00001548 @ 0x155d
│           ; DATA XREF from fcn.000015db @ +0x1d
│           ; DATA XREF from fcn.000016d3 @ +0x2e
│           0000:001c      cld
│           ; DATA XREFS from fcn.00000128 @ +0x77, +0x9a
│           0000:001d      inc   dx                                    ; arg2
│           0000:001e      cdq
│           ; DATA XREF from fcn.0000080e @ 0x83d
│           0000:001f      inc   bp
│           ; XREFS: DATA 0x00000886  DATA 0x00001028  DATA 0x0000104e  
│           ; XREFS: DATA 0x000010a6  DATA 0x00001f03  DATA 0x00001fcc  
│       ┌─< 0000:0020      jcxz  0x67
│       │   0000:0022      in    ax, dx
│       │   0000:0023      inc   si
│       │   ; XREFS: DATA 0x00000484  DATA 0x000004ba  DATA 0x000004f5  
│       │   ; XREFS: DATA 0x0000057f  DATA 0x000005ec  DATA 0x00000ab2  
│       │   ; XREFS: DATA 0x00000bc9  DATA 0x00000bdf  DATA 0x00000bea  
│       │   ; XREFS: DATA 0x00000cbf  DATA 0x00000d30  DATA 0x00000d46  
│       │   ; XREFS: DATA 0x00000d51  DATA 0x00000eaa  DATA 0x0000106f  
│       │   0000:0024      sub   word [bx + di - 0x4a], ax
│       │   0000:0027      dec   cx
│       │   0000:0028      add   ax, 0x664a
│       │   0000:002b      dec   bx
│       │   ; DATA XREFS from fcn.00000128 @ +0xad, +0xc3
│       │   0000:002c      cmc
│       │   ; DATA XREF from fcn.0000085f @ +0x430
│       │   0000:002d      dec   si
│       │   0000:002e      mov   dx, 0xe4f
│       │   0000:0031      pop   es
│       │   ; DATA XREF from fcn.000015db @ +0x9f
│       │   0000:0032      mov   di, 0x509f
│       │   0000:0035      xor   ax, ax
│       │   0000:0037      mov   cx, 0x80
│       │   0000:003a      rep   stosw word es:[di], ax
│       │   ; DATA XREF from fcn.00000128 @ +0xe3
│       │   ; DATA XREFS from fcn.00001f9c @ +0x6b, +0x6d
│       │   0000:003c      inc   byte [0x5080]
│       │   ; DATA XREF from fcn.00001752 @ +0x41f
│       │   0000:0040      mov   word [0x506d], 0x23c                  ; [0x506d:2]=0xffff
│       │   0000:0046      mov   si, word [0xff31]
│       │   0000:004a      sub   si, 0x21
│       │   0000:004d      call  fcn.000015db                          ; fcn.000015db
│       │   ; DATA XREF from fcn.00001066 @ +0xcf
│       │   ; DATA XREF from fcn.00001503 @ 0x150b
│       │   ; DATA XREFS from fcn.00001752 @ +0x272, +0x450
│       │   0000:0050      xor   bx, bx
│       │   0000:0052      test  byte [si], 0x80
│      ┌──< 0000:0055      je    0x5a
│      ││   0000:0057      call  fcn.fcn.00000112                      ; fcn.00000422
│      ││   ; DATA XREF from fcn.0000085f @ +0x42b
│      └──> 0000:005a      inc   si
│       │   0000:005b      mov   cx, 6
│      ┌──> 0000:005e      push  cx
│      ╎│   0000:005f      test  byte [si], 0x80
│     ┌───< 0000:0062      je    0x67
│     │╎│   0000:0064      call  fcn.0000045f                          ; fcn.0000045f
│     └─└─> 0000:0067      inc   si
│      ╎    0000:0068      inc   bx
│      ╎    0000:0069      test  byte [si], 0x80
│      ╎    ; DATA XREFS from fcn.0000085f @ +0x3ad, +0x519
│      ╎┌─< 0000:006c      je    0x71
│      ╎│   0000:006e      call  fcn.0000045f                          ; fcn.0000045f
│      ╎└─> 0000:0071      inc   si
│      ╎    0000:0072      inc   bx
│      ╎    0000:0073      test  byte [si], 0x80
│      ╎┌─< 0000:0076      je    0x7b
│      ╎│   0000:0078      call  fcn.0000045f                          ; fcn.0000045f
│      ╎└─> 0000:007b      inc   si
│      ╎    0000:007c      inc   bx
│      ╎    0000:007d      test  byte [si], 0x80
│      ╎    ; DATA XREF from fcn.00000000 @ 0x37
│      ╎    ; DATA XREF from fcn.00000684 @ 0x690
│      ╎    ; DATA XREFS from fcn.0000085f @ +0x3d0, +0x536
│      ╎┌─< 0000:0080      je    0x85
│      ╎│   0000:0082      call  fcn.0000045f                          ; fcn.0000045f
│      ╎└─> 0000:0085      inc   si
│      ╎    0000:0086      inc   bx
│      ╎    0000:0087      pop   cx
│      └──< 0000:0088      loop  0x5e
│           0000:008a      test  byte [si], 0x80
│       ┌─< 0000:008d      je    0x92
│       │   ; DATA XREF from fcn.000013aa @ 0x13e3
│       │   ; DATA XREF from fcn.0000143c @ 0x1447
│       │   0000:008f      call  fcn.0000045f                          ; fcn.0000045f
│       │   ; DATA XREF from fcn.00001752 @ +0x2b8
│       └─> 0000:0092      inc   si
│           ; DATA XREF from fcn.00000e00 @ 0xe00
│           0000:0093      inc   bx
│           0000:0094      test  byte [si], 0x80
│       ┌─< 0000:0097      je    0x9c
│       │   0000:0099      call  fcn.0000045f                          ; fcn.0000045f
│       └─> 0000:009c      inc   si
│           ; DATA XREF from fcn.00001548 @ +0x55
│           0000:009d      inc   bx
│           0000:009e      test  byte [si], 0x80
│       ┌─< 0000:00a1      je    0xa6
│       │   0000:00a3      call  fcn.0000045f                          ; fcn.0000045f
│       └─> 0000:00a6      inc   si
│           0000:00a7      test  byte [si], 0x80
│       ┌─< 0000:00aa      je    0xaf
│       │   0000:00ac      call  fcn.000004a3                          ; fcn.000004a3
│       └─> 0000:00af      mov   si, word [0xff31]
│           0000:00b3      mov   di, 0xe900
│           0000:00b6      mov   byte [0x5073], 0x12                   ; [0x5073:1]=255
│           0000:00bb      call  fcn.00000ed5                          ; fcn.00000ed5
│           0000:00be      xor   bx, bx
│           ; DATA XREF from fcn.000013aa @ 0x141b
│           ; DATA XREF from fcn.0000143c @ 0x14a7
│           ; DATA XREFS from fcn.00001752 @ +0x540, +0x558
│           ; DATA XREF from fcn.00001f9c @ +0x41
│           0000:00c0      add   si, 3
│           0000:00c3      lodsb al, byte [si]
│           0000:00c4      or    al, al
│       ┌─< 0000:00c6      jns   0xcb
│       │   0000:00c8      call  fcn.000004db                          ; fcn.000004db
│       └─> 0000:00cb      mov   cx, 6
│       ┌─> 0000:00ce      push  cx
│       ╎   0000:00cf      cmpsb byte [si], byte ptr es:[di]
│      ┌──< 0000:00d0      je    0xd5
│      │╎   0000:00d2      call  fcn.00000128                          ; fcn.00000128
│      └──> 0000:00d5      inc   bx
│       ╎   0000:00d6      cmpsb byte [si], byte ptr es:[di]
│      ┌──< 0000:00d7      je    0xdc
│      │╎   0000:00d9      call  fcn.00000128                          ; fcn.00000128
│      └──> 0000:00dc      inc   bx
│       ╎   0000:00dd      cmpsb byte [si], byte ptr es:[di]
│       ╎   ; DATA XREF from fcn.0000143c @ 0x1458
│      ┌──< 0000:00de      je    0xe3
│      │╎   0000:00e0      call  fcn.00000128                          ; fcn.00000128
│      └──> 0000:00e3      inc   bx
│       ╎   0000:00e4      cmpsb byte [si], byte ptr es:[di]
│      ┌──< 0000:00e5      je    0xea
│      │╎   ; DATA XREFS from fcn.0000085f @ +0x3cd, +0x463, +0x46a, +0x532
│      │╎   0000:00e7      call  fcn.00000128                          ; fcn.00000128
│      └──> 0000:00ea      inc   bx
│       ╎   0000:00eb      pop   cx
│       └─< 0000:00ec      loop  0xce
│           0000:00ee      cmpsb byte [si], byte ptr es:[di]
│       ┌─< 0000:00ef      je    0xf4
│       │   0000:00f1      call  fcn.00000128                          ; fcn.00000128
│       └─> 0000:00f4      inc   bx
│           0000:00f5      cmpsb byte [si], byte ptr es:[di]
│       ┌─< 0000:00f6      je    0xfb
│       │   0000:00f8      call  fcn.00000128                          ; fcn.00000128
│       └─> 0000:00fb      inc   bx
│           ; DATA XREF from fcn.0000143c @ 0x149f
│           0000:00fc      cmpsb byte [si], byte ptr es:[di]
│       ┌─< 0000:00fd      je    0x102
│       │   ; XREFS(23)
│       │   0000:00ff      call  fcn.00000128                          ; fcn.00000128
│       └─> 0000:0102      inc   bx
│           0000:0103      lodsb al, byte [si]
│           0000:0104      inc   di
│           0000:0105      or    al, al
│       ┌─< 0000:0107      jns   0x10c
│      ┌──< 0000:0109      jmp   0x5d3
└      │└─> 0000:010c      cmp   al, byte es:[di - 1]
```

### Function 0x00000110
```asm
; CALL XREF from fcn.00001515 @ 0x1522
┌ fcn.00000110();
└       ┌─< 0000:0110      je    0x115                                 ; fcn.00000114+0x1
```

### Function 0x00000112
```asm
; CALL XREF from fcn.00001515 @ 0x1527
┌ fcn.00000112(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0112      invalid
..
```

### Function 0x00000114
```asm
╎   ; CALL XREF from fcn.00001515 @ 0x152c
│       ╎   ; CALL XREF from fcn.00001515 @ 0x1531
│       ╎   ;-- (0x00000116) fcn.00000116:
┌ fcn.00000114();
│       ╎   0000:0114  ~   add   byte [bp + di + 0x4c6], al
│       ╎   ; CALL XREF from fcn.00001515 @ 0x1536
..
└           0000:0127      ret
```

### Function 0x00000116
```asm
│       ╎   ; CALL XREF from fcn.00001515 @ 0x1531
│       ╎   ; CALL XREF from fcn.00001515 @ 0x1536
│       ╎   ;-- (0x00000118) fcn.00000118:
┌ fcn.00000116(int16_t arg1);
│       ╎   ; arg int16_t arg1 @ ax
│       ╎   0000:0116  ~   mov   byte [si], 0xe8                       ; [0xe8:1]=62
│       ╎   0000:0119  ~   mov   ah, 0x14
│       ╎   ; CALL XREF from fcn.00000128 @ +0x8b
│       ╎   ; CALL XREFS from fcn.0000085f @ 0x869, 0x88c, 0x8aa, 0x8c5
..
│       ╎   0000:011b      add   word [0x506d], 0x140                  ; [0x506d:2]=0xffff
│       ╎   0000:0121      dec   byte [0x5073]
└       └─< 0000:0125      jne   0xbb                                  ; fcn.00000000+0xbb
```

### Function 0x00000118
```asm
│           ; CALL XREF from fcn.00001515 @ 0x1536
┌ fcn.00000118();
│           0000:0118  ~   call  fcn.000015cf                          ; fcn.000015cf
│           ; CALL XREF from fcn.00000128 @ +0x8b
│           ; CALL XREFS from fcn.0000085f @ 0x869, 0x88c, 0x8aa, 0x8c5
..
```

### Function 0x0000011a
```asm
╎   ; CALL XREF from fcn.00000128 @ +0x8b
        ╎   ; CALL XREFS from fcn.0000085f @ 0x869, 0x88c, 0x8aa, 0x8c5
┌ fcn.0000011a(int16_t arg1, int16_t arg3, int16_t arg4);
│       ╎   ; arg int16_t arg1 @ ax
│       ╎   ; arg int16_t arg3 @ bx
│       ╎   ; arg int16_t arg4 @ cx
│       ╎   0000:011a      adc   al, 0x81
│       ╎   0000:011c      push  es
│       ╎   0000:011d      insw  word es:[di], dx
│       ╎   0000:011e      push  ax                                    ; arg1
│       ╎   0000:011f      inc   ax                                    ; arg1
│       ╎   0000:0120      add   si, di
│       ╎   0000:0122      push  cs
│      ┌──< 0000:0123      jae   0x175
..
       │    ; XREFS: CALL 0x000000d2  CALL 0x000000d9  CALL 0x000000e0  
       │    ; XREFS: CALL 0x000000e7  CALL 0x000000f1  CALL 0x000000f8  
       │    ; XREFS: CALL 0x000000ff  CALL 0x00000112  
│     │││   ; DATA XREF from fcn.00000ed5 @ +0x6e
│    ││││   ; XREFS: DATA 0x0000011b  DATA 0x0000052e  DATA 0x00000627  
│    ││││   ; XREFS: DATA 0x00000ae0  DATA 0x00000f56  DATA 0x00000fb6  
│    ││││   ; XREFS: DATA 0x00000fd1  DATA 0x000010ea  DATA 0x0000120f  
│    ││││   ; XREFS: DATA 0x00001568  DATA 0x00001588  
│    ││││   ; CODE XREF from fcn.00000128 @ 0x13e
│     │└──> 0000:0175      xor   word [bx + si - 0x31cf], bx           ; arg3
│     │ │   0000:0179      xor   word [si + 0x32], cx                  ; arg4
│     │ │   0000:017c      mov   al, byte [si - 1]
│     │ │   0000:017f      sub   al, 0x1b
│     │ │   0000:0181      cmp   al, 2
│     │┌──< 0000:0183      jb    0x186
│     │││   0000:0185      ret
│     │└──> 0000:0186      mov   byte [di - 1], 0xfe                   ; [0xfe:1]=3
│     │ │   0000:018a      test  byte [0x5080], 1                      ; [0x5080:1]=255
│     │┌──< 0000:018f      jne   0x192
│     │││   0000:0191      ret
│     │└──> 0000:0192      inc   al
│     │ │   0000:0194      and   al, 1
│     │ │   0000:0196      add   al, 0x1b
│     │ │   0000:0198      mov   byte [si - 1], al
└     │ │   0000:019b      ret
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
│      ┌──< 0000:012f      jmp   0x55c
│      │└─> 0000:0132      cmp   byte es:[di - 1], 0xfc
│      │┌─< 0000:0137      jne   0x140
│      ││   0000:0139      mov   byte es:[di - 1], 0xff                ; [0xff:1]=232
│      ││   ; DATA XREF from fcn.00000ed5 @ +0x6e
│     ┌───< 0000:013e      jmp   0x15a
│     │││   ; XREFS: DATA 0x0000011b  DATA 0x0000052e  DATA 0x00000627  
│     │││   ; XREFS: DATA 0x00000ae0  DATA 0x00000f56  DATA 0x00000fb6  
│     │││   ; XREFS: DATA 0x00000fd1  DATA 0x000010ea  DATA 0x0000120f  
│     │││   ; XREFS: DATA 0x00001568  DATA 0x00001588  
│     ││└─> 0000:0140      inc   byte es:[di - 1]
│     ││    0000:0144      mov   byte es:[di - 1], 0xfe                ; [0xfe:1]=3
│     ││┌─< 0000:0149      je    0x15a
│     │││   0000:014b      mov   byte es:[di - 1], al
│     │││   0000:014f      mov   dx, bx
│     │││   0000:0151      add   dx, dx
│     │││   0000:0153      add   dx, word [0x506d]                     ; [0x506d:2]=0xffff ; int16_t arg2
│     │││   0000:0157      call  fcn.00000270                          ; fcn.00000270
│     │││   ; CODE XREF from fcn.00000128 @ 0x13e
│     └─└─> 0000:015a      mov   al, byte [0xc012]                     ; [0xc012:1]=255
│      │    0000:015d      sub   al, 5
│      │┌─< 0000:015f      jae   0x162
│      ││   0000:0161      ret
│      │└─> 0000:0162      cmp   al, 4
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
  │││││││   ; XREFS: DATA 0x00000040  DATA 0x00000456  DATA 0x0000047e  
  │││││││   ; XREFS: DATA 0x0000091d  DATA 0x00000aef  DATA 0x000011e0  
  │││││││   ; XREFS: DATA 0x0000150f  DATA 0x0000154d  DATA 0x00001598  
  │││││││   ; XREFS: DATA 0x000016f7  
       │    ; CALL XREF from fcn.00000128 @ 0x157
│      │    ; DATA XREF from fcn.000004a3 @ 0x4d5
│     ││    ; CODE XREF from fcn.00000270 @ 0x27b
       │    ; CALL XREF from fcn.00000000 @ 0x57
       │    ; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
       │    ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
       │    ; XREFS: CALL 0x000000a3  
       │    ; CALL XREF from fcn.00000000 @ 0xac
       ││   ; CALL XREF from fcn.00000000 @ 0xc8
│      ││   ; DATA XREFS from fcn.00001752 @ +0x24c, +0x250, +0x254, +0x258, +0x25c
│      ││   ; CODE XREF from fcn.00000128 @ 0x12f
│      └──> 0000:055c      push  si                                    ; arg3
│       │   0000:055d      push  di
│       │   0000:055e      push  bx
│       │   0000:055f      push  bx                                    ; arg3
│       │   0000:0560      mov   bx, 0x5092
│       │   0000:0563      mov   ax, 0xfffe
│       │   0000:0566      xchg  word [di - 1], ax
│       │   0000:0569      mov   word [bx], ax
│       │   0000:056b      mov   ax, 0xffff
│       │   0000:056e      xchg  word [di + 0x1b], ax
│       │   0000:0571      mov   word [bx + 2], ax
│       │   0000:0574      mov   cl, byte [si - 1]
│       │   0000:0577      mov   bx, 0x5096
│       │   0000:057a      mov   al, byte [si]
│       │   0000:057c      mov   byte [bx + 1], al
│       │   0000:057f      add   si, 0x24
│       │   0000:0582      call  fcn.000015cf                          ; fcn.000015cf
│       │   0000:0585      mov   ax, word [si - 1]                     ; int16_t arg1
│       │   0000:0588      mov   word [bx + 2], ax
│       │   0000:058b      pop   dx
│       │   0000:058c      mov   byte [0x5074], dl                     ; [0x5074:1]=255
│       │   0000:0590      mov   al, byte [0x5073]                     ; [0x5073:1]=255
│       │   0000:0593      neg   al
│       │   0000:0595      add   al, 0x12
│       │   0000:0597      mov   byte [0x5075], al                     ; [0x5075:1]=255
│       │   0000:059a      add   dx, dx
│       │   0000:059c      add   dx, word [0x506d]                     ; [0x506d:2]=0xffff ; int16_t arg_6h
│       │   0000:05a0      mov   al, cl
│       │   0000:05a2      call  fcn.0000080e                          ; fcn.0000080e
│       │   0000:05a5      mov   di, 0x5096
│       │   0000:05a8      mov   byte [di], al
│       │   0000:05aa      mov   bp, 0x5092
│       │   0000:05ad      call  fcn.00000657                          ; fcn.00000657
│       │   0000:05b0      cmp   byte [0x5073], 1                      ; [0x5073:1]=255
│      ┌──< 0000:05b5      je    0x5cf
│      ││   0000:05b7      add   dx, 0x13c
│      ││   0000:05bb      call  fcn.00000657                          ; fcn.00000657
│      ││   0000:05be      test  byte [0xff34], 0xff
│     ┌───< 0000:05c3      je    0x5cf
│     │││   0000:05c5      test  byte [0xff2f], 0xff
│    ┌────< 0000:05ca      je    0x5cf
│    ││││   0000:05cc      call  fcn.0000085f                          ; fcn.0000085f
│    └└└──> 0000:05cf      pop   bx
│       │   0000:05d0      pop   di
│       │   0000:05d1      pop   si
└       │   0000:05d2      ret
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
│           ; DATA XREF from fcn.000004a3 @ 0x4d5
│           0000:0272      push  di
│           0000:0273      push  si
│           0000:0274      push  bx                                    ; arg3
│           0000:0275      mov   di, dx                                ; arg2
│           0000:0277      or    al, al
│       ┌─< 0000:0279      jne   0x27e
│      ┌──< 0000:027b      jmp   0x3ab
│      │└─> 0000:027e      mov   bl, al
│      │    0000:0280      xor   bh, bh
│      │    0000:0282      add   bx, bx                                ; arg3
│      │    0000:0284      test  word [bx + 0x509f], 0xffff            ; arg3
│      │┌─< 0000:028a      jne   0x2ce
│      ││   0000:028c      dec   al
│      ││   0000:028e      mov   word [bx + 0x509f], di                ; arg3
│      ││   0000:0292      mov   cl, 0x10
│      ││   0000:0294      mul   cl
│      ││   0000:0296      add   ax, 0x8030                            ; arg1
│      ││   0000:0299      mov   si, ax                                ; arg1
│      ││   0000:029b      mov   ds, word cs:[0xff2c]
│      ││   0000:02a0      mov   ax, 0xb800
│      ││   0000:02a3      mov   es, ax
│      ││   0000:02a5      mov   cx, 4
│     ┌───> 0000:02a8      movsw word es:[di], word ptr [si]
│     ╎││   0000:02a9      add   di, 0x1ffe
│     ╎││   0000:02ad      cmp   di, 0x4000
│    ┌────< 0000:02b1      jb    0x2b7
│    │╎││   0000:02b3      add   di, 0xc050
│    └────> 0000:02b7      movsw word es:[di], word ptr [si]
│     ╎││   0000:02b8      add   di, 0x1ffe
│     ╎││   0000:02bc      cmp   di, 0x4000
│    ┌────< 0000:02c0      jb    0x2c6
│    │╎││   0000:02c2      add   di, 0xc050
│    └└───< 0000:02c6      loop  0x2a8
│      ││   0000:02c8      pop   bx
│      ││   0000:02c9      pop   si
│      ││   0000:02ca      pop   di
│      ││   0000:02cb      pop   ds
│      ││   0000:02cc      pop   es
│      ││   0000:02cd      ret
│      │└─> 0000:02ce      mov   si, word [bx + 0x509f]                ; arg3
│      │    0000:02d2      mov   ax, 0xb800
│      │    0000:02d5      mov   es, ax
│      │    0000:02d7      mov   ds, ax
│      │    0000:02d9      movsw word es:[di], word ptr [si]
│      │    0000:02da      add   di, 0x1ffe
│      │    0000:02de      cmp   di, 0x4000
│      │┌─< 0000:02e2      jb    0x2e8
│      ││   0000:02e4      add   di, 0xc050
│      │└─> 0000:02e8      add   si, 0x1ffe
│      │    0000:02ec      cmp   si, 0x4000
│      │┌─< 0000:02f0      jb    0x2f6
│      ││   0000:02f2      add   si, 0xc050
│      │└─> 0000:02f6      movsw word es:[di], word ptr [si]
│      │    0000:02f7      add   di, 0x1ffe
│      │    0000:02fb      cmp   di, 0x4000
│      │┌─< 0000:02ff      jb    0x305
│      ││   0000:0301      add   di, 0xc050
│      │└─> 0000:0305      add   si, 0x1ffe
│      │    0000:0309      cmp   si, 0x4000
│      │┌─< 0000:030d      jb    0x313
│      ││   0000:030f      add   si, 0xc050
│      │└─> 0000:0313      movsw word es:[di], word ptr [si]
│      │    0000:0314      add   di, 0x1ffe
│      │    0000:0318      cmp   di, 0x4000
│      │┌─< 0000:031c      jb    0x322
│      ││   0000:031e      add   di, 0xc050
│      │└─> 0000:0322      add   si, 0x1ffe
│      │    0000:0326      cmp   si, 0x4000
│      │┌─< 0000:032a      jb    0x330
│      ││   0000:032c      add   si, 0xc050
│      │└─> 0000:0330      movsw word es:[di], word ptr [si]
│      │    0000:0331      add   di, 0x1ffe
│      │    0000:0335      cmp   di, 0x4000
│      │┌─< 0000:0339      jb    0x33f
│      ││   0000:033b      add   di, 0xc050
│      │└─> 0000:033f      add   si, 0x1ffe
│      │    0000:0343      cmp   si, 0x4000
│      │┌─< 0000:0347      jb    0x34d
│      ││   0000:0349      add   si, 0xc050
│      │└─> 0000:034d      movsw word es:[di], word ptr [si]
│      │    0000:034e      add   di, 0x1ffe
│      │    0000:0352      cmp   di, 0x4000
│      │┌─< 0000:0356      jb    0x35c
│      ││   0000:0358      add   di, 0xc050
│      │└─> 0000:035c      add   si, 0x1ffe
│      │    0000:0360      cmp   si, 0x4000
│      │┌─< 0000:0364      jb    0x36a
│      ││   0000:0366      add   si, 0xc050
│      │└─> 0000:036a      movsw word es:[di], word ptr [si]
│      │    0000:036b      add   di, 0x1ffe
│      │    0000:036f      cmp   di, 0x4000
│      │┌─< 0000:0373      jb    0x379
│      ││   0000:0375      add   di, 0xc050
│      │└─> 0000:0379      add   si, 0x1ffe
│      │    0000:037d      cmp   si, 0x4000
│      │┌─< 0000:0381      jb    0x387
│      ││   0000:0383      add   si, 0xc050
│      │└─> 0000:0387      movsw word es:[di], word ptr [si]
│      │    0000:0388      add   di, 0x1ffe
│      │    0000:038c      cmp   di, 0x4000
│      │┌─< 0000:0390      jb    0x396
│      ││   0000:0392      add   di, 0xc050
│      │└─> 0000:0396      add   si, 0x1ffe
│      │    0000:039a      cmp   si, 0x4000
│      │┌─< 0000:039e      jb    0x3a4
│      ││   0000:03a0      add   si, 0xc050
│      │└─> 0000:03a4      movsw word es:[di], word ptr [si]
│      │    0000:03a5      pop   bx
│      │    0000:03a6      pop   si
│      │    0000:03a7      pop   di
│      │    0000:03a8      pop   ds
│      │    0000:03a9      pop   es
│      │    0000:03aa      ret
│      │    ; CODE XREF from fcn.00000270 @ 0x27b
│      └──> 0000:03ab      mov   ax, 0xb800
│           0000:03ae      mov   es, ax
│           0000:03b0      xor   ax, ax
│           0000:03b2      stosw word es:[di], ax
│           0000:03b3      add   di, 0x1ffe
│           0000:03b7      cmp   di, 0x4000
│       ┌─< 0000:03bb      jb    0x3c1
│       │   0000:03bd      add   di, 0xc050
│       └─> 0000:03c1      stosw word es:[di], ax
│           0000:03c2      add   di, 0x1ffe
│           0000:03c6      cmp   di, 0x4000
│       ┌─< 0000:03ca      jb    0x3d0
│       │   0000:03cc      add   di, 0xc050
│       └─> 0000:03d0      stosw word es:[di], ax
│           0000:03d1      add   di, 0x1ffe
│           0000:03d5      cmp   di, 0x4000
│       ┌─< 0000:03d9      jb    0x3df
│       │   0000:03db      add   di, 0xc050
│       └─> 0000:03df      stosw word es:[di], ax
│           0000:03e0      add   di, 0x1ffe
│           0000:03e4      cmp   di, 0x4000
│       ┌─< 0000:03e8      jb    0x3ee
│       │   0000:03ea      add   di, 0xc050
│       └─> 0000:03ee      stosw word es:[di], ax
│           0000:03ef      add   di, 0x1ffe
│           0000:03f3      cmp   di, 0x4000
│       ┌─< 0000:03f7      jb    0x3fd
│       │   0000:03f9      add   di, 0xc050
│       └─> 0000:03fd      stosw word es:[di], ax
│           0000:03fe      add   di, 0x1ffe
│           0000:0402      cmp   di, 0x4000
│       ┌─< 0000:0406      jb    0x40c
│       │   0000:0408      add   di, 0xc050
│       └─> 0000:040c      stosw word es:[di], ax
│           0000:040d      add   di, 0x1ffe
│           0000:0411      cmp   di, 0x4000
│       ┌─< 0000:0415      jb    0x41b
│       │   0000:0417      add   di, 0xc050
│       └─> 0000:041b      stosw word es:[di], ax
│           0000:041c      pop   bx
│           0000:041d      pop   si
│           0000:041e      pop   di
│           0000:041f      pop   ds
│           0000:0420      pop   es
└           0000:0421      ret
```

### Function 0x00000422
```asm
; CALL XREF from fcn.00000000 @ 0x57
┌ fcn.00000422(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0422      cmp   byte [0xe900], 0xff
│       ┌─< 0000:0427      jne   0x42a
│       │   0000:0429      ret
│       └─> 0000:042a      cmp   byte [0xe900], 0xfc
│       ┌─< 0000:042f      jne   0x432
│       │   0000:0431      ret
│       └─> 0000:0432      push  si
│           0000:0433      push  bx                                    ; arg3
│           0000:0434      mov   byte [0xe900], 0xff                   ; [0xff:1]=232
│           0000:0439      mov   cl, byte [si]
│           0000:043b      add   si, 0x25
│           0000:043e      call  fcn.000015cf                          ; fcn.000015cf
│           0000:0441      mov   al, byte [si]
│           0000:0443      or    al, al
│       ┌─< 0000:0445      jns   0x44a
│       │   0000:0447      call  fcn.00000807                          ; fcn.00000807
│       └─> 0000:044a      push  ax
│           0000:044b      mov   al, cl
│           0000:044d      call  fcn.0000080e                          ; fcn.0000080e
│           0000:0450      add   si, 3
│           0000:0453      pop   ax                                    ; int16_t arg1
│           0000:0454      mov   ah, byte [si]
│           0000:0456      mov   dx, 0x23c                             ; int16_t arg2
│           0000:0459      call  fcn.00000684                          ; fcn.00000684
│           0000:045c      pop   bx
│           0000:045d      pop   si
└           0000:045e      ret
```

### Function 0x0000045f
```asm
; XREFS: CALL 0x00000064  CALL 0x0000006e  CALL 0x00000078  
            ; XREFS: CALL 0x00000082  CALL 0x0000008f  CALL 0x00000099  
            ; XREFS: CALL 0x000000a3  
┌ fcn.0000045f(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:045f      push  si
│           0000:0460      push  bx                                    ; arg3
│           0000:0461      mov   cx, bx                                ; arg3
│           0000:0463      mov   di, bx                                ; arg3
│           0000:0465      add   di, 0xe900
│           0000:0469      mov   bx, 0x5092
│           0000:046c      mov   al, 0xff
│           0000:046e      xchg  byte [di], al
│           0000:0470      mov   byte [bx], al
│           0000:0472      mov   byte [bx + 1], 0
│           0000:0476      mov   byte [di + 1], 0xff                   ; [0xff:1]=232
│           0000:047a      mov   dx, cx
│           0000:047c      add   dx, dx
│           0000:047e      add   dx, 0x23c
│           0000:0482      mov   cl, byte [si]
│           0000:0484      add   si, 0x24
│           0000:0487      call  fcn.000015cf                          ; fcn.000015cf
│           0000:048a      mov   bx, 0x5096                            ; int16_t arg_6h
│           0000:048d      lodsw ax, word [si]                         ; int16_t arg1
│           0000:048e      mov   word [bx], ax
│           0000:0490      mov   al, cl
│           0000:0492      call  fcn.0000080e                          ; fcn.0000080e
│           0000:0495      inc   si
│           0000:0496      inc   si
│           0000:0497      mov   di, 0x5096
│           0000:049a      mov   bp, 0x5092
│           0000:049d      call  fcn.00000657                          ; fcn.00000657
│           0000:04a0      pop   bx
│           0000:04a1      pop   si
└           0000:04a2      ret
```

### Function 0x000004a3
```asm
; CALL XREF from fcn.00000000 @ 0xac
┌ fcn.000004a3();
│           0000:04a3      cmp   byte [0xe91b], 0xff
│       ┌─< 0000:04a8      jne   0x4ab
│       │   0000:04aa      ret
│       └─> 0000:04ab      cmp   byte [0xe91b], 0xfc
│       ┌─< 0000:04b0      jne   0x4b3
│       │   0000:04b2      ret
│       └─> 0000:04b3      mov   byte [0xe91b], 0xff                   ; [0xff:1]=232
│           0000:04b8      mov   cl, byte [si]
│           0000:04ba      add   si, 0x24
│           0000:04bd      call  fcn.000015cf                          ; fcn.000015cf
│           0000:04c0      mov   al, byte [si]
│           0000:04c2      or    al, al
│       ┌─< 0000:04c4      jns   0x4c9
│       │   0000:04c6      call  fcn.00000807                          ; fcn.00000807
│       └─> 0000:04c9      push  ax
│           0000:04ca      mov   al, cl
│           0000:04cc      call  fcn.0000080e                          ; fcn.0000080e
│           0000:04cf      add   si, 2
│           0000:04d2      pop   ax
│           0000:04d3      mov   ah, byte [si]
│           0000:04d5      mov   dx, 0x272
└       ┌─< 0000:04d8      jmp   fcn.00000684                          ; fcn.00000684
```

### Function 0x000004db
```asm
; CALL XREF from fcn.00000000 @ 0xc8
┌ fcn.000004db(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:04db      push  si
│           0000:04dc      push  di
│           0000:04dd      push  bx                                    ; arg3
│           0000:04de      push  bx                                    ; arg3
│           0000:04df      mov   bx, 0x5092
│           0000:04e2      mov   al, 0xff
│           0000:04e4      xchg  byte [di], al
│           0000:04e6      mov   byte [bx], al
│           0000:04e8      mov   al, 0xff
│           0000:04ea      xchg  byte [di + 0x1c], al
│           0000:04ed      mov   byte [bx + 1], al
│           0000:04f0      mov   cl, byte [si - 1]
│           0000:04f3      mov   dl, byte [si]
│           0000:04f5      add   si, 0x24
│           0000:04f8      call  fcn.000015cf                          ; fcn.000015cf
│           0000:04fb      mov   dh, byte [si]
│           0000:04fd      mov   al, cl
│           0000:04ff      call  fcn.0000080e                          ; fcn.0000080e
│           0000:0502      inc   si
│           0000:0503      mov   bx, dx
│           0000:0505      pop   dx
│           ; DATA XREFS from fcn.00001752 @ +0x24c, +0x250, +0x254, +0x258, +0x25c
│           0000:0506      add   dx, dx
│           0000:0508      add   dx, word [0x506d]                     ; [0x506d:2]=0xffff
│           0000:050c      cmp   byte [0x5092], 0xff                   ; [0x5092:1]=255
│       ┌─< 0000:0511      je    0x52e
│       │   0000:0513      cmp   byte [0x5092], 0xfc                   ; [0x5092:1]=255
│      ┌──< 0000:0518      je    0x52e
│      ││   0000:051a      mov   ah, byte [si]
│      ││   0000:051c      mov   al, bl
│      ││   0000:051e      push  bx
│      ││   0000:051f      push  si
│      ││   0000:0520      push  dx
│      ││   0000:0521      or    al, al
│     ┌───< 0000:0523      jns   0x528
│     │││   0000:0525      call  fcn.00000807                          ; fcn.00000807
│     └───> 0000:0528      call  fcn.00000684                          ; fcn.00000684
│      ││   0000:052b      pop   dx
│      ││   0000:052c      pop   si
│      ││   0000:052d      pop   bx
│      └└─> 0000:052e      add   dx, 0x140
│           0000:0532      cmp   byte [0x5073], 1                      ; [0x5073:1]=255
│       ┌─< 0000:0537      je    0x558
│       │   0000:0539      cmp   byte [0x5093], 0xff                   ; [0x5093:1]=255
│      ┌──< 0000:053e      je    0x558
│      ││   0000:0540      cmp   byte [0x5093], 0xfc                   ; [0x5093:1]=255
│     ┌───< 0000:0545      je    0x558
│     │││   0000:0547      inc   si
│     │││   0000:0548      inc   si
│     │││   0000:0549      lodsb al, byte [si]
│     │││   0000:054a      mov   ah, al
│     │││   0000:054c      mov   al, bh
│     │││   0000:054e      or    al, al
│    ┌────< 0000:0550      jns   0x555
│    ││││   0000:0552      call  fcn.00000807                          ; fcn.00000807
│    └────> 0000:0555      call  fcn.00000684                          ; fcn.00000684
│     └└└─> 0000:0558      pop   bx
│           0000:0559      pop   di
│           0000:055a      pop   si
└           0000:055b      ret
```

### Function 0x00000657
```asm
; CALL XREF from fcn.0000045f @ 0x49d
            ; CALL XREFS from fcn.00000128 @ 0x5ad, 0x5bb
┌ fcn.00000657();
│           0000:0657      call  0x65a
│           ; CALL XREF from fcn.00000657 @ 0x657
│           0000:065a      cmp   byte ds:[bp], 0xff
│       ┌─< 0000:065f      je    0x67e
│       │   0000:0661      cmp   byte ds:[bp], 0xfc
│      ┌──< 0000:0666      je    0x67e
│      ││   0000:0668      mov   ah, byte [si]
│      ││   0000:066a      mov   al, byte [di]
│      ││   0000:066c      or    al, al
│     ┌───< 0000:066e      jns   0x673
│     │││   0000:0670      call  fcn.00000807                          ; fcn.00000807
│     └───> 0000:0673      push  bp
│      ││   0000:0674      push  si
│      ││   0000:0675      push  di
│      ││   0000:0676      push  dx
│      ││   0000:0677      call  fcn.00000684                          ; fcn.00000684
│      ││   0000:067a      pop   dx
│      ││   0000:067b      pop   di
│      ││   0000:067c      pop   si
│      ││   0000:067d      pop   bp
│      └└─> 0000:067e      inc   si
│           0000:067f      inc   di
│           0000:0680      inc   bp
│           0000:0681      inc   dx
│           0000:0682      inc   dx
└           0000:0683      ret
```

### Function 0x00000684
```asm
; XREFS: CALL 0x00000459  CODE 0x000004d8  CALL 0x00000528  
            ; XREFS: CALL 0x00000555  CALL 0x00000621  CALL 0x0000064e  
            ; XREFS: CALL 0x00000677  
┌ fcn.00000684(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0684      push  es
│           0000:0685      push  ds
│           0000:0686      mov   bl, byte [0x5076]                     ; [0x5076:1]=255
│           0000:068a      or    al, al
│       ┌─< 0000:068c      je    0x693
│      ┌──< 0000:068e      js    0x693
│      ││   0000:0690      or    bl, 0x80
│      └└─> 0000:0693      mov   cl, al
│           0000:0695      mov   al, ah
│           0000:0697      mov   ch, 0x10
│           0000:0699      mul   ch
│           0000:069b      mov   si, ax                                ; arg1
│           0000:069d      add   si, 0x4000
│           0000:06a1      mov   bp, ax                                ; arg1
│           0000:06a3      add   bp, 0xa000
│           0000:06a7      mov   ds, word cs:[0xff2c]
│           0000:06ac      mov   di, dx                                ; arg2
│           0000:06ae      push  cs
│           0000:06af      pop   es
│           0000:06b0      mov   ch, bl
│           0000:06b2      and   bl, 0x7f
│           0000:06b5      xor   bh, bh
│           0000:06b7      add   bx, bx                                ; arg3
│           0000:06b9      mov   ax, word cs:[bx + 0x500f]             ; arg3
│           0000:06be      mov   word cs:[0x506b], ax
│           0000:06c2      mov   al, cl
│           0000:06c4      or    ch, ch
│       ┌─< 0000:06c6      js    0x6e0
│       │   0000:06c8      push  di
│       │   0000:06c9      mov   di, 0x532f                            ; '/S'
│       │   0000:06cc      call  fcn.00000726                          ; fcn.00000726
│       │   0000:06cf      pop   di
│       │   0000:06d0      mov   si, 0x532f                            ; '/S'
│       │   0000:06d3      push  cs
│       │   0000:06d4      pop   ds
│       │   0000:06d5      mov   ax, 0xb800
│       │   0000:06d8      mov   es, ax
│       │   0000:06da      call  fcn.0000078e                          ; fcn.0000078e
│       │   0000:06dd      pop   ds
│       │   0000:06de      pop   es
│       │   0000:06df      ret
│       └─> 0000:06e0      push  di
│           0000:06e1      mov   di, 0x532f                            ; '/S'
│           0000:06e4      call  fcn.000006f8                          ; fcn.000006f8
│           0000:06e7      pop   di
│           0000:06e8      mov   si, 0x532f                            ; '/S'
│           0000:06eb      push  cs
│           0000:06ec      pop   ds
│           0000:06ed      mov   ax, 0xb800
│           0000:06f0      mov   es, ax
│           0000:06f2      call  fcn.0000078e                          ; fcn.0000078e
│           0000:06f5      pop   ds
│           0000:06f6      pop   es
└           0000:06f7      ret
```

### Function 0x000006f8
```asm
; CALL XREF from fcn.00000684 @ 0x6e4
            ; CALL XREF from fcn.00000e00 @ +0x98
┌ fcn.000006f8(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:06f8      push  bp
│           0000:06f9      push  si
│           0000:06fa      push  di
│           0000:06fb      dec   cl
│           0000:06fd      mov   al, 0x10
│           0000:06ff      mul   cl
│           0000:0701      add   ax, 0x8030                            ; arg1
│           0000:0704      mov   si, ax                                ; arg1
│           0000:0706      call  fcn.000007f9                          ; fcn.000007f9
│           0000:0709      pop   di
│           0000:070a      pop   si
│           0000:070b      pop   bp
└       ┌─< 0000:070c      jmp   fcn.0000070e                          ; fcn.0000070e
```

### Function 0x0000070e
```asm
; CODE XREF from fcn.000006f8 @ 0x70c
            ; CODE XREF from fcn.0000085f @ +0x78
            ; CALL XREF from fcn.00000dbe @ 0xdf0
┌ fcn.0000070e(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:070e      mov   cx, 8
│       ┌─> 0000:0711      mov   ax, word ds:[bp]
│       ╎   0000:0715      and   word es:[di], ax
│       ╎   0000:0718      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0719      call  fcn.00000731                          ; fcn.00000731
│       ╎   0000:071c      or    word es:[di], ax
│       ╎   0000:071f      inc   bp
│       ╎   0000:0720      inc   bp
│       ╎   0000:0721      inc   di
│       ╎   0000:0722      inc   di
│       └─< 0000:0723      loop  0x711
└           0000:0725      ret
```

### Function 0x00000726
```asm
; CALL XREF from fcn.00000684 @ 0x6cc
            ; CALL XREF from fcn.00000e00 @ +0x9f
┌ fcn.00000726();
│           0000:0726      mov   cx, 8
│       ┌─> 0000:0729      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:072a      call  fcn.00000731                          ; fcn.00000731
│       ╎   0000:072d      stosw word es:[di], ax
│       └─< 0000:072e      loop  0x729
└           0000:0730      ret
```

### Function 0x00000731
```asm
; CALL XREF from fcn.0000070e @ 0x719
            ; CALL XREF from fcn.00000726 @ 0x72a
┌ fcn.00000731(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0731      mov   bx, ax                                ; arg1
│           0000:0733      shr   bh, 1
│           0000:0735      shr   bh, 1
│           0000:0737      shr   bh, 1
│           0000:0739      shr   bh, 1
│           0000:073b      mov   bl, bh
│           0000:073d      xor   bh, bh
│           0000:073f      add   bx, word cs:[0x506b]
│           0000:0744      mov   dh, byte cs:[bx]
│           0000:0747      add   dh, dh
│           0000:0749      add   dh, dh
│           0000:074b      add   dh, dh
│           0000:074d      add   dh, dh
│           0000:074f      mov   bx, ax                                ; arg1
│           0000:0751      and   bh, 0xf
│           0000:0754      mov   bl, bh
│           0000:0756      xor   bh, bh
│           0000:0758      add   bx, word cs:[0x506b]
│           0000:075d      or    dh, byte cs:[bx]
│           0000:0760      mov   bx, ax                                ; arg1
│           0000:0762      shr   bl, 1
│           0000:0764      shr   bl, 1
│           0000:0766      shr   bl, 1
│           0000:0768      shr   bl, 1
│           0000:076a      xor   bh, bh
│           0000:076c      add   bx, word cs:[0x506b]
│           0000:0771      mov   dl, byte cs:[bx]
│           0000:0774      add   dl, dl
│           0000:0776      add   dl, dl
│           0000:0778      add   dl, dl
│           0000:077a      add   dl, dl
│           0000:077c      mov   bx, ax                                ; arg1
│           0000:077e      and   bl, 0xf
│           0000:0781      xor   bh, bh
│           0000:0783      add   bx, word cs:[0x506b]
│           0000:0788      or    dl, byte cs:[bx]
│           0000:078b      mov   ax, dx                                ; arg2
└           0000:078d      ret
```

### Function 0x0000078e
```asm
; CALL XREFS from fcn.00000684 @ 0x6da, 0x6f2
            ; CALL XREF from fcn.00000ed5 @ 0x116f
┌ fcn.0000078e();
│           0000:078e      movsw word es:[di], word ptr [si]
│           0000:078f      add   di, 0x1ffe
│           0000:0793      cmp   di, 0x4000
│       ┌─< 0000:0797      jb    0x79d
│       │   0000:0799      add   di, 0xc050
│       └─> 0000:079d      movsw word es:[di], word ptr [si]
│           0000:079e      add   di, 0x1ffe
│           0000:07a2      cmp   di, 0x4000
│       ┌─< 0000:07a6      jb    0x7ac
│       │   0000:07a8      add   di, 0xc050
│       └─> 0000:07ac      movsw word es:[di], word ptr [si]
│           0000:07ad      add   di, 0x1ffe
│           0000:07b1      cmp   di, 0x4000
│       ┌─< 0000:07b5      jb    0x7bb
│       │   0000:07b7      add   di, 0xc050
│       └─> 0000:07bb      movsw word es:[di], word ptr [si]
│           0000:07bc      add   di, 0x1ffe
│           0000:07c0      cmp   di, 0x4000
│       ┌─< 0000:07c4      jb    0x7ca
│       │   0000:07c6      add   di, 0xc050
│       └─> 0000:07ca      movsw word es:[di], word ptr [si]
│           0000:07cb      add   di, 0x1ffe
│           0000:07cf      cmp   di, 0x4000
│       ┌─< 0000:07d3      jb    0x7d9
│       │   0000:07d5      add   di, 0xc050
│       └─> 0000:07d9      movsw word es:[di], word ptr [si]
│           0000:07da      add   di, 0x1ffe
│           0000:07de      cmp   di, 0x4000
│       ┌─< 0000:07e2      jb    0x7e8
│       │   0000:07e4      add   di, 0xc050
│       └─> 0000:07e8      movsw word es:[di], word ptr [si]
│           0000:07e9      add   di, 0x1ffe
│           0000:07ed      cmp   di, 0x4000
│       ┌─< 0000:07f1      jb    0x7f7
│       │   0000:07f3      add   di, 0xc050
│       └─> 0000:07f7      movsw word es:[di], word ptr [si]
└           0000:07f8      ret
```

### Function 0x000007f9
```asm
; CALL XREF from fcn.000006f8 @ 0x706
            ; CALL XREF from fcn.00000e00 @ +0x3c
┌ fcn.000007f9();
│           0000:07f9      mov   cx, 8
│           0000:07fc      rep   movsw word es:[di], word ptr [si]
└           0000:07fe      ret
```

### Function 0x000007ff
```asm
; CALL XREF from fcn.00000e00 @ +0x43
┌ fcn.000007ff();
│           0000:07ff      xor   ax, ax
│           0000:0801      mov   cx, 8
│           0000:0804      rep   stosw word es:[di], ax
└           0000:0806      ret
```

### Function 0x00000807
```asm
; XREFS: CALL 0x00000447  CALL 0x000004c6  CALL 0x00000525  
            ; XREFS: CALL 0x00000552  CALL 0x0000061e  CALL 0x0000064b  
            ; XREFS: CALL 0x00000670  CALL 0x00000e55  
┌ fcn.00000807();
│           0000:0807      and   al, 0x7f
│           0000:0809      mov   bx, 0xed20
│           0000:080c      xlatb
└           0000:080d      ret
```

### Function 0x0000080e
```asm
; XREFS: CALL 0x0000044d  CALL 0x00000492  CALL 0x000004cc  
            ; XREFS: CALL 0x000004ff  CALL 0x000005a2  CALL 0x000005f7  
            ; XREFS: CALL 0x00000b24  CALL 0x00000b3a  CALL 0x00000b4f  
            ; XREFS: CALL 0x00000b5d  
┌ fcn.0000080e(int16_t arg1, int16_t arg3, int16_t arg_4h, int16_t arg_5h, int16_t arg_6h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg_4h @ stack + 0x4
│           ; arg int16_t arg_5h @ stack + 0x5
│           ; arg int16_t arg_6h @ stack + 0x6
│           0000:080e      and   al, 0x7f
│           0000:0810      mov   bl, al
│           0000:0812      xor   bh, bh
│           0000:0814      mov   cl, byte [bx - 0x12e0]                ; arg3
│           0000:0818      mov   ch, 0x10
│           0000:081a      mul   ch
│           0000:081c      add   ax, word [0xc010]                     ; arg1
│           0000:0820      mov   bp, ax                                ; arg1
│           0000:0822      mov   al, byte ds:[bp + 6]
│           0000:0826      and   al, 0xf
│           0000:0828      mov   ch, 5
│           0000:082a      mul   ch
│           0000:082c      mov   si, 0xa070
│           0000:082f      test  byte ds:[bp + 5], 0x80
│       ┌─< 0000:0834      jne   0x839
│       │   0000:0836      mov   si, 0xa030
│       └─> 0000:0839      mov   bl, byte ds:[bp + 4]
│           0000:083d      and   bl, 0x1f
│           0000:0840      add   bl, bl
│           0000:0842      xor   bh, bh
│           0000:0844      add   ax, word [bx + si]                    ; arg3
│           0000:0846      mov   si, ax                                ; arg1
│           0000:0848      lodsb al, byte [si]
│           0000:0849      test  byte [0xff34], 0xff
│       ┌─< 0000:084e      jne   0x859
│       │   0000:0850      test  byte ds:[bp + 5], 0x20
│      ┌──< 0000:0855      je    0x859
│      ││   0000:0857      add   al, 3
│      └└─> 0000:0859      mov   byte [0x5076], al                     ; [0x5076:1]=255
│           0000:085c      mov   al, cl
└           0000:085e      ret
```

### Function 0x0000085f
```asm
; CALL XREF from fcn.00000128 @ 0x5cc
┌ fcn.0000085f();
│           0000:085f      cmp   byte [0x5075], 0x10                   ; [0x5075:1]=255
│       ┌─< 0000:0864      jb    0x867
│       │   0000:0866      ret
│       └─> 0000:0867      push  cs
│           0000:0868      pop   es
│           0000:0869      call  word cs:[fcn.0000011a]                ; 0x11a
│           0000:086e      and   al, 0xf
│           0000:0870      cmp   al, 0xe
│       ┌─< 0000:0872      jae   0x875
│       │   0000:0874      ret
│       └─> 0000:0875      mov   di, 0xeda0
│           0000:0878      xor   cl, cl
│           ; CODE XREF from fcn.0000085f @ 0x884
│       ┌─> 0000:087a      cmp   byte [di], 0xff
│      ┌──< 0000:087d      je    0x886
│      │╎   0000:087f      add   di, 4
│      │╎   0000:0882      inc   cl
│      │└─< 0000:0884      jmp   0x87a
│      └──> 0000:0886      cmp   cl, 0x20
│       ┌─< 0000:0889      jb    0x88c
│       │   0000:088b      ret
│      ┌└─> 0000:088c      call  word cs:[fcn.0000011a]                ; 0x11a
│      ╎    0000:0891      and   al, 3
│      ╎    0000:0893      cmp   al, 3
│      └──< 0000:0895      je    0x88c
│           0000:0897      dec   al
│           0000:0899      add   al, byte [0x5074]                     ; [0x5074:1]=255
│           0000:089d      cmp   al, 0xff
│       ┌─< 0000:089f      jne   0x8a3
│       │   0000:08a1      mov   al, 4
│       └─> 0000:08a3      cmp   al, 0x1b
│       ┌─< 0000:08a5      jb    0x8a9
│       │   0000:08a7      mov   al, 0x1a
│       └─> 0000:08a9      stosb byte es:[di], al
│       ┌─> 0000:08aa      call  word cs:[fcn.0000011a]                ; 0x11a
│       ╎   0000:08af      and   al, 3
│       ╎   0000:08b1      cmp   al, 3
│       └─< 0000:08b3      je    0x8aa
│           0000:08b5      dec   al
│           0000:08b7      add   al, byte [0x5075]                     ; [0x5075:1]=255
│           0000:08bb      cmp   al, 0xff
│       ┌─< 0000:08bd      jne   0x8c1
│       │   0000:08bf      xor   al, al
│       └─> 0000:08c1      stosb byte es:[di], al
│           0000:08c2      mov   al, 3
│           0000:08c4      stosb byte es:[di], al
│           0000:08c5      call  word cs:[fcn.0000011a]                ; 0x11a
│           0000:08ca      and   al, 3
│           0000:08cc      mov   bx, 0x38d1
│           0000:08cf      xlatb
│           0000:08d0      stosb byte es:[di], al
│           0000:08d1      mov   al, 0xff
│           0000:08d3      stosb byte es:[di], al
└           0000:08d4      ret
```

### Function 0x00000dbe
```asm
; CODE XREFS from fcn.0000085f @ +0x3f3, +0x400, +0x47d, +0x553, +0x55d
┌ fcn.00000dbe(int16_t arg1, int16_t arg2, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg4 @ cx
│       ┌─> 0000:0dbe      push  cx                                    ; arg4
│       ╎   0000:0dbf      mov   al, byte es:[si]
│       ╎   0000:0dc2      or    al, al
│      ┌──< 0000:0dc4      je    0xdf7
│      │╎   0000:0dc6      push  es
│      │╎   0000:0dc7      push  ds
│      │╎   0000:0dc8      push  si
│      │╎   0000:0dc9      push  di
│      │╎   0000:0dca      mov   ch, 0x10
│      │╎   0000:0dcc      mul   ch
│      │╎   0000:0dce      mov   si, ax                                ; arg1
│      │╎   0000:0dd0      add   si, 0x6333
│      │╎   0000:0dd4      mov   bp, ax                                ; arg1
│      │╎   0000:0dd6      add   bp, 0xd000
│      │╎   0000:0dda      mov   ds, word cs:[0xff2c]
│      │╎   0000:0ddf      mov   di, dx                                ; arg2
│      │╎   0000:0de1      push  cs
│      │╎   0000:0de2      pop   es
│      │╎   0000:0de3      mov   al, byte cs:[0x5074]
│      │╎   0000:0de7      mov   cl, 0x10
│      │╎   0000:0de9      mul   cl
│      │╎   0000:0deb      add   ax, 0x529f                            ; int16_t arg2
│      │╎   0000:0dee      mov   di, ax                                ; arg1
│      │╎   0000:0df0      call  fcn.0000070e                          ; fcn.0000070e
│      │╎   0000:0df3      pop   di
│      │╎   0000:0df4      pop   si
│      │╎   0000:0df5      pop   ds
│      │╎   0000:0df6      pop   es
│      └──> 0000:0df7      inc   si
│       ╎   0000:0df8      inc   byte [0x5074]
│       ╎   0000:0dfc      pop   cx
│       └─< 0000:0dfd      loop  fcn.00000dbe
└           0000:0dff      ret
```

### Function 0x00000e00
```asm
; CALL XREFS from fcn.0000085f @ +0x367, +0x39b, +0x4a2, +0x4ce, +0x509
┌ fcn.00000e00();
│           0000:0e00      mov   al, byte [0x93]                       ; [0x93:1]=67
│           0000:0e03      or    al, al
│       ┌─< 0000:0e05      jne   0xe08
│       │   0000:0e07      ret
│       └─> 0000:0e08      cmp   al, 4
│           0000:0e0a      mov   al, 1
│       ┌─< 0000:0e0c      jae   0xe0f
│       │   0000:0e0e      ret
│       └─> 0000:0e0f      mov   al, 2
└           0000:0e11      ret
```

### Function 0x00000ea6
```asm
; CALL XREF from fcn.0000085f @ +0x240
┌ fcn.00000ea6(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:0ea6      mov   cl, byte [0x84]                       ; [0x84:1]=3
│           0000:0eaa      mov   al, 0x24                              ; '$'
│           0000:0eac      mul   cl
│           0000:0eae      mov   cl, byte [0x83]                       ; [0x83:1]=218
│           0000:0eb2      add   cl, 4
│           0000:0eb5      xor   ch, ch
│           0000:0eb7      add   ax, cx                                ; arg4
│           0000:0eb9      add   ax, word [0xff31]                     ; arg1
│           0000:0ebd      mov   si, ax                                ; arg1
│           0000:0ebf      call  fcn.000015cf                          ; fcn.000015cf
│           0000:0ec2      mov   di, 0x5096
│           0000:0ec5      push  cs
│           0000:0ec6      pop   es
│           0000:0ec7      mov   cx, 3
│       ┌─> 0000:0eca      movsw word es:[di], word ptr [si]
│       ╎   0000:0ecb      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0ecc      add   si, 0x21
│       ╎   0000:0ecf      call  fcn.000015cf                          ; fcn.000015cf
│       └─< 0000:0ed2      loop  0xeca
└           0000:0ed4      ret
```

### Function 0x00000ed5
```asm
; CALL XREF from fcn.00000000 @ 0xbb
┌ fcn.00000ed5(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0ed5      mov   al, byte [0x5073]                     ; [0x5073:1]=255
│           0000:0ed8      neg   al
│           0000:0eda      add   al, 0x12
│           0000:0edc      mov   cl, al
│           0000:0ede      test  byte [0xff43], 0xff
│       ┌─< 0000:0ee3      jne   0xef2
│       │   0000:0ee5      mov   al, byte [0x84]                       ; [0x84:1]=3
│       │   0000:0ee8      sub   al, 2
│       │   0000:0eea      cmp   al, cl
│      ┌──< 0000:0eec      jne   0xef1
│      ││   0000:0eee      call  0x1147
│      └──> 0000:0ef1      ret
│       └─> 0000:0ef2      mov   al, byte [0x84]                       ; [0x84:1]=3
│           0000:0ef5      sub   al, 5
│           0000:0ef7      cmp   cl, al
│       ┌─< 0000:0ef9      jae   0xefc
│       │   0000:0efb      ret
│      ┌└─> 0000:0efc      jne   0xf04
│      │    0000:0efe      call  fcn.00000fff                          ; fcn.00000fff
│      │┌─< 0000:0f01      jmp   0x1147
│      └──> 0000:0f04      add   al, 0xa
│       │   0000:0f06      cmp   al, cl
│      ┌──< 0000:0f08      je    0xf0b
│      ││   0000:0f0a      ret
│     ┌└──> 0000:0f0b      jmp   0x10b0
..
  │││││││   ; CODE XREF from fcn.00000ed5 @ +0xaf
  │││ │││   ; CODE XREF from fcn.00000ed5 @ +0x84
   │ ││││   ; CODE XREFS from fcn.00000ed5 @ +0x60, +0x8d
     ││ │   ; CALL XREF from fcn.00000ed5 @ 0xefe
     ││ │   ; CALL XREF from fcn.00000ed5 @ 0x10c5
     ││ │   ; CALL XREF from fcn.00000fff @ 0x100b
     ││ │   ; CALL XREF from fcn.00000ed5 @ 0x10c2
│    ││ │   ; CODE XREF from fcn.00000ed5 @ 0xf0b
│    ││ │   ; CODE XREF from fcn.00000ed5 @ +0x118
│    └└───> 0000:10b0      test  byte [0xff43], 0xff                   ; arg1
│      ┌──< 0000:10b5      jne   0x10b8
│      ││   0000:10b7      ret
│      └──> 0000:10b8      mov   byte [0xff44], 0xff                   ; [0xff:1]=232
│       │   0000:10bd      push  es
│       │   0000:10be      push  ds
│       │   0000:10bf      push  di
│       │   0000:10c0      push  si
│       │   0000:10c1      push  bx                                    ; arg3
│       │   0000:10c2      call  fcn.00001066                          ; fcn.00001066
│       │   0000:10c5      call  fcn.00001018                          ; fcn.00001018
│       │   0000:10c8      mov   ds, word cs:[0xff2c]
│       │   0000:10cd      mov   ax, 0xb800
│       │   0000:10d0      mov   es, ax
│       │   0000:10d2      mov   di, word cs:[0x5078]
│       │   0000:10d7      mov   si, word cs:[0x507a]
│       │   0000:10dc      mov   cx, 4
│      ┌──> 0000:10df      push  cx
│      ╎│   0000:10e0      push  di
│      ╎│   0000:10e1      mov   cx, 4
│     ┌───> 0000:10e4      push  cx
│     ╎╎│   0000:10e5      lodsb al, byte [si]
│     ╎╎│   0000:10e6      cmp   al, 0xff
│    ┌────< 0000:10e8      jne   0x10f0
│    │╎╎│   0000:10ea      add   di, 0x140
│   ┌─────< 0000:10ee      jmp   0x111e
│   │└────> 0000:10f0      push  si
│   │ ╎╎│   0000:10f1      xor   ah, ah
│   │ ╎╎│   0000:10f3      add   ax, ax
│   │ ╎╎│   0000:10f5      add   ax, ax
│   │ ╎╎│   0000:10f7      add   ax, ax
│   │ ╎╎│   0000:10f9      add   ax, ax
│   │ ╎╎│   0000:10fb      mov   si, ax
│   │ ╎╎│   0000:10fd      add   si, word [0xb000]
│   │ ╎╎│   0000:1101      mov   cx, 8
│   │┌────> 0000:1104      push  cx
│   │╎╎╎│   0000:1105      lodsw ax, word [si]                         ; int16_t arg1
│   │╎╎╎│   0000:1106      call  fcn.000016d3                          ; fcn.000016d3
│   │╎╎╎│   0000:1109      or    word es:[di], ax
│   │╎╎╎│   0000:110c      add   di, 0x2000
│   │╎╎╎│   0000:1110      cmp   di, 0x4000
│  ┌──────< 0000:1114      jb    0x111a
│  ││╎╎╎│   0000:1116      add   di, 0xc050
│  └──────> 0000:111a      pop   cx
│   │└────< 0000:111b      loop  0x1104
│   │ ╎╎│   0000:111d      pop   si
│   │ ╎╎│   ; CODE XREF from fcn.00000ed5 @ 0x10ee
│   └─────> 0000:111e      pop   cx
│     └───< 0000:111f      loop  0x10e4
│      ╎│   0000:1121      pop   di
│      ╎│   0000:1122      inc   di
│      ╎│   0000:1123      inc   di
│      ╎│   0000:1124      pop   cx
│      └──< 0000:1125      loop  0x10df
│       │   0000:1127      pop   bx
│       │   0000:1128      pop   si
│       │   0000:1129      pop   di
│       │   0000:112a      pop   ds
│       │   0000:112b      pop   es
│       │   0000:112c      ret
..
│      ││   ; CODE XREFS from fcn.00000ed5 @ 0xeee, 0xf01
│      │└─> 0000:1147      test  byte [0xff37], 0xff
│      │┌─< 0000:114c      je    0x114f
│      ││   0000:114e      ret
│      │└─> 0000:114f      mov   byte [0xff37], 0xff                   ; [0xff:1]=232
│      │    ; CODE XREF from fcn.00001066 @ +0xdf
│      └──> 0000:1154      push  es
│           0000:1155      push  ds
│           0000:1156      push  si
│           0000:1157      push  di
│           0000:1158      push  bx
│           0000:1159      mov   ax, 0xb800
│           0000:115c      mov   es, ax
│           0000:115e      mov   si, 0x529f
│           0000:1161      mov   di, word cs:[0x506f]
│           0000:1166      mov   cx, 3
│       ┌─> 0000:1169      push  cx
│       ╎   0000:116a      mov   cx, 3
│      ┌──> 0000:116d      push  cx
│      ╎╎   0000:116e      push  di
│      ╎╎   0000:116f      call  fcn.0000078e                          ; fcn.0000078e
│      ╎╎   0000:1172      pop   di
│      ╎╎   0000:1173      inc   di
│      ╎╎   0000:1174      inc   di
│      ╎╎   0000:1175      pop   cx
│      └──< 0000:1176      loop  0x116d
│       ╎   0000:1178      add   di, 0x13a
│       ╎   0000:117c      pop   cx
│       └─< 0000:117d      loop  0x1169
│           0000:117f      pop   bx
│           0000:1180      pop   di
│           0000:1181      pop   si
│           0000:1182      pop   ds
│           0000:1183      pop   es
└           0000:1184      ret
```

### Function 0x00000fff
```asm
; CALL XREF from fcn.00000ed5 @ 0xefe
┌ fcn.00000fff(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0fff      test  byte [0xff44], 0xff
│       ┌─< 0000:1004      jne   0x1007
│       │   0000:1006      ret
│       └─> 0000:1007      push  es
│           0000:1008      push  di
│           0000:1009      push  si
│           0000:100a      push  bx                                    ; arg3
│           0000:100b      call  fcn.00001041                          ; fcn.00001041
│           0000:100e      pop   bx
│           0000:100f      pop   si
│           0000:1010      pop   di
│           0000:1011      pop   es
│           0000:1012      mov   byte [0xff44], 0
└           0000:1017      ret
```

### Function 0x00001018
```asm
; CALL XREF from fcn.00000ed5 @ 0x10c5
┌ fcn.00001018();
│           0000:1018      push  ds
│           0000:1019      push  cs
│           0000:101a      pop   es
│           0000:101b      mov   si, word cs:[0x5078]
│           0000:1020      mov   ax, 0xb800
│           0000:1023      mov   ds, ax
│           0000:1025      mov   di, 0x519f
│           0000:1028      mov   cx, 0x20
│       ┌─> 0000:102b      movsw word es:[di], word ptr [si]
│       ╎   0000:102c      movsw word es:[di], word ptr [si]
│       ╎   0000:102d      movsw word es:[di], word ptr [si]
│       ╎   0000:102e      movsw word es:[di], word ptr [si]
│       ╎   0000:102f      add   si, 0x1ff8
│       ╎   0000:1033      cmp   si, 0x4000
│      ┌──< 0000:1037      jb    0x103d
│      │╎   0000:1039      add   si, 0xc050
│      └└─< 0000:103d      loop  0x102b
│           0000:103f      pop   ds
└           0000:1040      ret
```

### Function 0x00001041
```asm
; CALL XREF from fcn.00000fff @ 0x100b
┌ fcn.00001041();
│           0000:1041      mov   di, word cs:[0x5078]
│           0000:1046      mov   ax, 0xb800
│           0000:1049      mov   es, ax
│           0000:104b      mov   si, 0x519f
│           0000:104e      mov   cx, 0x20
│       ┌─> 0000:1051      movsw word es:[di], word ptr [si]
│       ╎   0000:1052      movsw word es:[di], word ptr [si]
│       ╎   0000:1053      movsw word es:[di], word ptr [si]
│       ╎   0000:1054      movsw word es:[di], word ptr [si]
│       ╎   0000:1055      add   di, 0x1ff8
│       ╎   0000:1059      cmp   di, 0x4000
│      ┌──< 0000:105d      jb    0x1063
│      │╎   0000:105f      add   di, 0xc050
│      └└─< 0000:1063      loop  0x1051
└           0000:1065      ret
```

### Function 0x00001066
```asm
; CALL XREF from fcn.00000ed5 @ 0x10c2
┌ fcn.00001066(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:1066      mov   al, byte [0x84]                       ; [0x84:1]=3
│           0000:1069      add   al, byte [0x507c]                     ; [0x507c:1]=255
│           0000:106d      and   al, 0x3f
│           0000:106f      mov   cl, 0x24                              ; '$'
│           0000:1071      mul   cl
│           0000:1073      mov   cl, byte [0x83]                       ; [0x83:1]=218
│           0000:1077      add   cl, byte [0x507d]                     ; [0x507d:1]=255
│           0000:107b      add   cl, 4
│           0000:107e      xor   ch, ch
│           0000:1080      add   ax, cx                                ; arg4
│           0000:1082      mov   si, ax                                ; arg1
│           0000:1084      add   si, word [0xff31]
│           0000:1088      call  fcn.000015cf                          ; fcn.000015cf
│           0000:108b      mov   cx, 4
│       ┌─> 0000:108e      push  cx
│       ╎   0000:108f      mov   cx, 4
│      ┌──> 0000:1092      push  cx
│      ╎╎   0000:1093      mov   bl, byte [si]
│      ╎╎   0000:1095      inc   si
│      ╎╎   0000:1096      and   bl, 0x7f
│      ╎╎   0000:1099      xor   bh, bh
│      ╎╎   0000:109b      add   bx, bx
│      ╎╎   0000:109d      mov   word [bx + 0x509f], 0
│      ╎╎   0000:10a3      pop   cx
│      └──< 0000:10a4      loop  0x1092
│       ╎   0000:10a6      add   si, 0x20
│       ╎   0000:10a9      call  fcn.000015cf                          ; fcn.000015cf
│       ╎   0000:10ac      pop   cx
│       └─< 0000:10ad      loop  0x108e
└           0000:10af      ret
```

### Function 0x00001226
```asm
; CALL XREF from fcn.00001066 @ +0x19a
┌ fcn.00001226(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:1226      cmp   byte [di], 0xff
│       ┌─< 0000:1229      jne   0x122c
│       │   0000:122b      ret
│       └─> 0000:122c      cmp   byte [di], 0xfc
│       ┌─< 0000:122f      jne   0x1232
│       │   0000:1231      ret
│       └─> 0000:1232      push  ds
│           0000:1233      push  di
│           0000:1234      push  si
│           0000:1235      push  bx                                    ; arg3
│           0000:1236      push  ax                                    ; arg1
│           0000:1237      mov   ah, byte [0x5080]                     ; [0x5080:1]=255
│           0000:123b      dec   ah
│           0000:123d      shr   ah, 1
│           0000:123f      shr   ah, 1
│           0000:1241      shr   ah, 1
│           0000:1243      sbb   ah, ah
│           0000:1245      xor   ah, 0xcc
│           0000:1248      mov   byte cs:[0x5081], ah
│           0000:124d      add   bx, bx                                ; arg3
│           0000:124f      add   bx, word [0x506d]                     ; [0x506d:2]=0xffff ; arg3
│           0000:1253      mov   di, bx                                ; arg3
│           0000:1255      pop   ax
│           0000:1256      test  al, 0xff
│       ┌─< 0000:1258      je    0x12ac
│       │   0000:125a      dec   al
│       │   0000:125c      mov   cl, 0x10
│       │   0000:125e      mul   cl
│       │   0000:1260      add   ax, 0x8030                            ; int16_t arg1
│       │   0000:1263      mov   si, ax
│       │   0000:1265      mov   ds, word cs:[0xff2c]
│       │   0000:126a      push  si
│       │   0000:126b      push  di
│       │   0000:126c      mov   al, byte cs:[0x5080]
│       │   0000:1270      and   al, 3
│       │   0000:1272      neg   al
│       │   0000:1274      add   al, 3
│       │   0000:1276      call  fcn.000012df                          ; fcn.000012df
│       │   0000:1279      call  fcn.0000128f                          ; fcn.0000128f
│       │   0000:127c      pop   di
│       │   0000:127d      pop   si
│       │   0000:127e      mov   al, byte cs:[0x5080]
│       │   0000:1282      call  fcn.000012df                          ; fcn.000012df
│       │   0000:1285      inc   di
│       │   0000:1286      inc   si
│       │   0000:1287      call  fcn.0000128f                          ; fcn.0000128f
│       │   0000:128a      pop   bx
│       │   0000:128b      pop   si
│       │   0000:128c      pop   di
│       │   0000:128d      pop   ds
│       │   0000:128e      ret
        │   ; CALL XREFS from fcn.00001226 @ 0x1279, 0x1287
..
│       └─> 0000:12ac      push  di
│           0000:12ad      mov   al, byte cs:[0x5080]
│           0000:12b1      and   al, 3
│           0000:12b3      neg   al
│           0000:12b5      add   al, 3
│           0000:12b7      call  fcn.000012df                          ; fcn.000012df
│           0000:12ba      call  fcn.000012ce                          ; fcn.000012ce
│           0000:12bd      pop   di
│           0000:12be      mov   al, byte cs:[0x5080]
│           0000:12c2      call  fcn.000012df                          ; fcn.000012df
│           0000:12c5      inc   di
│           0000:12c6      call  fcn.000012ce                          ; fcn.000012ce
│           0000:12c9      pop   bx
│           0000:12ca      pop   si
│           0000:12cb      pop   di
│           0000:12cc      pop   ds
└           0000:12cd      ret
```

### Function 0x0000128f
```asm
; CALL XREFS from fcn.00001226 @ 0x1279, 0x1287
┌ fcn.0000128f();
│           0000:128f      mov   cx, 2
│       ┌─> 0000:1292      mov   bl, byte cs:[0x5081]
│       ╎   0000:1297      lodsb al, byte [si]
│       ╎   0000:1298      and   al, bl
│       ╎   0000:129a      not   bl
│       ╎   0000:129c      and   byte es:[di], bl
│       ╎   0000:129f      or    byte es:[di], al
│       ╎   0000:12a2      add   di, 0xa0
│       ╎   0000:12a6      add   si, 7
│       └─< 0000:12a9      loop  0x1292
└           0000:12ab      ret
```

### Function 0x000012ce
```asm
; CALL XREFS from fcn.00001226 @ 0x12ba, 0x12c6
┌ fcn.000012ce();
│           0000:12ce      mov   al, byte cs:[0x5081]
│           0000:12d2      not   al
│           0000:12d4      and   byte es:[di], al
│           0000:12d7      add   di, 0xa0
│           0000:12db      and   byte es:[di], al
└           0000:12de      ret
```

### Function 0x000012df
```asm
; CALL XREFS from fcn.00001226 @ 0x1276, 0x1282, 0x12b7, 0x12c2
┌ fcn.000012df(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:12df      and   al, 3
│           0000:12e1      xor   ah, ah
│           0000:12e3      push  ax                                    ; arg1
│           0000:12e4      add   ax, ax                                ; arg1
│           0000:12e6      add   si, ax                                ; arg1
│           0000:12e8      pop   ax
│           0000:12e9      or    ax, ax
│       ┌─< 0000:12eb      jne   0x12ee
│       │   0000:12ed      ret
│      ┌└─> 0000:12ee      add   di, 0x2000
│      ╎    0000:12f2      cmp   di, 0x4000
│      ╎┌─< 0000:12f6      jb    0x12fc
│      ╎│   0000:12f8      add   di, 0xc050
│      ╎└─> 0000:12fc      dec   ax
│      └──< 0000:12fd      jne   0x12ee
└           0000:12ff      ret
```

### Function 0x00001330
```asm
; CALL XREFS from fcn.000012df @ +0x43, +0x4b
┌ fcn.00001330();
│           0000:1330      mov   al, byte [0x506b]                     ; [0x506b:1]=255
│           0000:1333      dec   al
│           0000:1335      mov   bl, al
│           0000:1337      add   al, 0x19
│           0000:1339      mov   dl, al
│           0000:133b      mov   al, byte [0x506c]                     ; [0x506c:1]=255
│           0000:133e      dec   al
│           0000:1340      mov   bh, al
│           0000:1342      add   al, 0x19
│           0000:1344      mov   dh, al
│           0000:1346      call  0x1378
│           0000:1349      mov   al, byte [0x506b]                     ; [0x506b:1]=255
│           0000:134c      sub   al, 5
│           0000:134e      mov   bl, al
│           0000:1350      add   al, 0x21
│           0000:1352      mov   dl, al
│           0000:1354      mov   al, byte [0x506c]                     ; [0x506c:1]=255
│           0000:1357      sub   al, 5
│           0000:1359      mov   bh, al
│           0000:135b      add   al, 0x21
│           0000:135d      mov   dh, al
│           0000:135f      call  0x1378
│           0000:1362      mov   al, byte [0x506b]                     ; [0x506b:1]=255
│           0000:1365      sub   al, 9
│           0000:1367      mov   bl, al
│           0000:1369      add   al, 0x29
│           0000:136b      mov   dl, al
│           0000:136d      mov   al, byte [0x506c]                     ; [0x506c:1]=255
│           0000:1370      sub   al, 9
│           0000:1372      mov   bh, al
│           0000:1374      add   al, 0x29
│           0000:1376      mov   dh, al
│           ; CALL XREFS from fcn.00001330 @ 0x1346, 0x135f
│           0000:1378      mov   cx, 9
│       ┌─> 0000:137b      push  cx
│       ╎   0000:137c      push  dx
│       ╎   0000:137d      push  bx
│       ╎   0000:137e      call  fcn.000013aa                          ; fcn.000013aa
│       ╎   0000:1381      pop   bx
│       ╎   0000:1382      pop   dx
│       ╎   0000:1383      sub   bl, 0xc
│      ┌──< 0000:1386      jae   0x138a
│      │╎   0000:1388      xor   bl, bl
│      └──> 0000:138a      sub   bh, 0xc
│      ┌──< 0000:138d      jae   0x1391
│      │╎   0000:138f      xor   bh, bh
│      └──> 0000:1391      add   dl, 0xc
│      ┌──< 0000:1394      jae   0x1398
│      │╎   0000:1396      mov   dl, 0xff
│      └──> 0000:1398      add   dh, 0xc
│      ┌──< 0000:139b      jae   0x139f
│      │╎   0000:139d      mov   dh, 0xff
│      └──> 0000:139f      push  dx
│       ╎   0000:13a0      push  bx
│       ╎   0000:13a1      call  fcn.00001515                          ; fcn.00001515
│       ╎   0000:13a4      pop   bx
│       ╎   0000:13a5      pop   dx
│       ╎   0000:13a6      pop   cx
│       └─< 0000:13a7      loop  0x137b
└           0000:13a9      ret
```

### Function 0x000013aa
```asm
; CALL XREF from fcn.00001330 @ 0x137e
┌ fcn.000013aa(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:13aa      mov   ax, 0xb800                            ; int16_t arg2
│           0000:13ad      mov   es, ax
│           0000:13af      push  dx                                    ; arg2
│           0000:13b0      push  bx                                    ; arg3
│           0000:13b1      mov   dh, bh
│           0000:13b3      call  fcn.0000143c                          ; fcn.0000143c
│           0000:13b6      pop   bx
│           0000:13b7      pop   dx
│           0000:13b8      push  dx
│           0000:13b9      push  bx
│           0000:13ba      mov   bh, dh
│           0000:13bc      call  fcn.0000143c                          ; fcn.0000143c
│           0000:13bf      pop   bx
│           0000:13c0      pop   dx                                    ; int16_t arg3
│           0000:13c1      push  dx
│           0000:13c2      push  bx
│           0000:13c3      mov   dl, bl
│           0000:13c5      call  0x13cc
│           0000:13c8      pop   bx
│           0000:13c9      pop   dx
│           0000:13ca      mov   bl, dl
│           ; CALL XREF from fcn.000013aa @ 0x13c5
│           0000:13cc      cmp   dh, bh
│       ┌─< 0000:13ce      jae   0x13d2
│       │   0000:13d0      xchg  bx, dx
│       └─> 0000:13d2      or    bl, bl
│       ┌─< 0000:13d4      jne   0x13d7
│       │   0000:13d6      ret
│       └─> 0000:13d7      cmp   bl, 0xdf
│       ┌─< 0000:13da      jb    0x13dd
│       │   0000:13dc      ret
│       └─> 0000:13dd      or    bh, bh
│       ┌─< 0000:13df      jne   0x13e3
│       │   0000:13e1      mov   bh, 1
│       └─> 0000:13e3      cmp   dh, 0x8f
│       ┌─< 0000:13e6      jb    0x13ea
│       │   0000:13e8      mov   dh, 0x8e
│       └─> 0000:13ea      mov   al, dh
│           0000:13ec      sub   al, bh
│           0000:13ee      inc   al
│           0000:13f0      push  ax
│           0000:13f1      mov   al, bh
│           0000:13f3      call  fcn.00001503                          ; fcn.00001503
│           0000:13f6      mov   al, bl
│           0000:13f8      shr   al, 1
│           0000:13fa      shr   al, 1
│           0000:13fc      xor   ah, ah
│           0000:13fe      add   di, ax
│           0000:1400      pop   cx
│           0000:1401      xor   ch, ch
│           0000:1403      and   bl, 3
│       ┌─< 0000:1406      je    0x141b
│       │   0000:1408      cmp   bl, 2
│      ┌──< 0000:140b      jb    0x1417
│     ┌───< 0000:140d      je    0x1413
│     │││   0000:140f      mov   ah, 3
│    ┌────< 0000:1411      jmp   0x141d
│    │└───> 0000:1413      mov   ah, 0xc
│    │┌───< 0000:1415      jmp   0x141d
│    ││└──> 0000:1417      mov   ah, 0x30                              ; '0'
│    ││┌──< 0000:1419      jmp   0x141d
│    │││└─> 0000:141b      mov   ah, 0xc0
│    │││    ; CODE XREFS from fcn.000013aa @ 0x1411, 0x1415, 0x1419
│    └└└──> 0000:141d      mov   al, ah
│           0000:141f      not   al
│           0000:1421      and   ah, byte [0x5080]                     ; [0x5080:1]=255
│       ┌─> 0000:1425      and   byte es:[di], al
│       ╎   0000:1428      or    byte es:[di], ah
│       ╎   0000:142b      add   di, 0x2000
│       ╎   0000:142f      cmp   di, 0x4000
│      ┌──< 0000:1433      jb    0x1439
│      │╎   0000:1435      add   di, 0xc050
│      └└─< 0000:1439      loop  0x1425
└           0000:143b      ret
```

### Function 0x0000143c
```asm
; CALL XREFS from fcn.000013aa @ 0x13b3, 0x13bc
┌ fcn.0000143c(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:143c      cmp   dl, bl
│       ┌─< 0000:143e      jae   0x1442
│       │   0000:1440      xchg  bx, dx                                ; arg2
│       └─> 0000:1442      or    bh, bh
│       ┌─< 0000:1444      jne   0x1447
│       │   0000:1446      ret
│       └─> 0000:1447      cmp   bh, 0x8f
│       ┌─< 0000:144a      jb    0x144d
│       │   0000:144c      ret
│       └─> 0000:144d      or    bl, bl
│       ┌─< 0000:144f      jne   0x1453
│       │   0000:1451      mov   bl, 1
│       └─> 0000:1453      cmp   dl, 0xdf
│       ┌─< 0000:1456      jb    0x145a
│       │   0000:1458      mov   dl, 0xde
│       └─> 0000:145a      mov   al, bh
│           0000:145c      call  fcn.00001503                          ; fcn.00001503
│           0000:145f      mov   al, bl
│           0000:1461      shr   al, 1
│           0000:1463      shr   al, 1
│           0000:1465      xor   ah, ah
│           0000:1467      add   di, ax
│           0000:1469      mov   ah, dl
│           0000:146b      shr   ah, 1
│           0000:146d      shr   ah, 1
│           0000:146f      sub   ah, al
│           0000:1471      mov   cl, ah
│           0000:1473      xor   ch, ch
│           0000:1475      and   bl, 3
│       ┌─< 0000:1478      je    0x148d
│       │   0000:147a      cmp   bl, 2
│      ┌──< 0000:147d      jb    0x1489
│     ┌───< 0000:147f      je    0x1485
│     │││   0000:1481      mov   al, 3
│    ┌────< 0000:1483      jmp   0x148f
│    │└───> 0000:1485      mov   al, 0xf
│    │┌───< 0000:1487      jmp   0x148f
│    ││└──> 0000:1489      mov   al, 0x3f                              ; '?'
│    ││┌──< 0000:148b      jmp   0x148f
│    │││└─> 0000:148d      mov   al, 0xff
│    │││    ; CODE XREFS from fcn.0000143c @ 0x1483, 0x1487, 0x148b
│    └└└──> 0000:148f      and   dl, 3
│       ┌─< 0000:1492      je    0x14a7
│       │   0000:1494      cmp   dl, 2
│      ┌──< 0000:1497      jb    0x14a3
│     ┌───< 0000:1499      je    0x149f
│     │││   0000:149b      mov   ah, 0xff
│    ┌────< 0000:149d      jmp   0x14a9
│    │└───> 0000:149f      mov   ah, 0xfc
│    │┌───< 0000:14a1      jmp   0x14a9
│    ││└──> 0000:14a3      mov   ah, 0xf0
│    ││┌──< 0000:14a5      jmp   0x14a9
│    │││└─> 0000:14a7      mov   ah, 0xc0
│    │││    ; CODE XREFS from fcn.0000143c @ 0x149d, 0x14a1, 0x14a5
│    └└└┌─< 0000:14a9      jcxz  0x14f2
│       │   0000:14ab      dec   cx
│      ┌──< 0000:14ac      jcxz  0x14d4
│      ││   0000:14ae      mov   dh, al
│      ││   0000:14b0      not   dh
│      ││   0000:14b2      and   al, byte [0x5080]                     ; [0x5080:1]=255
│      ││   0000:14b6      and   byte es:[di], dh
│      ││   0000:14b9      or    byte es:[di], al
│      ││   0000:14bc      inc   di
│      ││   0000:14bd      mov   al, 0xff
│      ││   0000:14bf      and   al, byte [0x5080]                     ; [0x5080:1]=255
│      ││   0000:14c3      rep   stosb byte es:[di], al
│      ││   0000:14c5      mov   dh, ah
│      ││   0000:14c7      not   dh
│      ││   0000:14c9      and   ah, byte [0x5080]                     ; [0x5080:1]=255
│      ││   0000:14cd      and   byte es:[di], dh
│      ││   0000:14d0      or    byte es:[di], ah
│      ││   0000:14d3      ret
│      └──> 0000:14d4      mov   dh, al
│       │   0000:14d6      not   dh
│       │   0000:14d8      and   al, byte [0x5080]                     ; [0x5080:1]=255
│       │   0000:14dc      and   byte es:[di], dh
│       │   0000:14df      or    byte es:[di], al
│       │   0000:14e2      inc   di
│       │   0000:14e3      mov   dh, ah
│       │   0000:14e5      not   dh
│       │   0000:14e7      and   ah, byte [0x5080]                     ; [0x5080:1]=255
│       │   0000:14eb      and   byte es:[di], dh
│       │   0000:14ee      or    byte es:[di], ah
│       │   0000:14f1      ret
│       └─> 0000:14f2      and   al, ah
│           0000:14f4      mov   dh, al
│           0000:14f6      not   dh
│           0000:14f8      and   al, byte [0x5080]                     ; [0x5080:1]=255
│           0000:14fc      and   byte es:[di], dh
│           0000:14ff      or    byte es:[di], al
└           0000:1502      ret
```

### Function 0x00001503
```asm
; CALL XREF from fcn.000013aa @ 0x13f3
            ; CALL XREF from fcn.0000143c @ 0x145c
┌ fcn.00001503(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1503      shr   al, 1
│           0000:1505      sbb   di, di
│           0000:1507      and   di, 0x2000
│           0000:150b      mov   ah, 0x50                              ; 'P'
│           0000:150d      mul   ah
│           0000:150f      add   ax, 0x23c                             ; arg1
│           0000:1512      add   di, ax                                ; arg1
└           0000:1514      ret
```

### Function 0x00001515
```asm
; CALL XREF from fcn.00001330 @ 0x13a1
┌ fcn.00001515(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1515      mov   cl, byte [0xff33]
│           0000:1519      shr   cl, 1
│           0000:151b      inc   cl
│           0000:151d      mov   al, 1
│           0000:151f      mul   cl
│       ┌─> 0000:1521      push  ax                                    ; arg1
│       ╎   0000:1522      call  word cs:[fcn.00000110]                ; 0x110 ; "t\U00000003\xe8\U00000013"
│       ╎   0000:1527      call  word cs:[fcn.00000112]                ; 0x112
│       ╎   0000:152c      call  word cs:[fcn.00000114]                ; 0x114
│       ╎   0000:1531      call  word cs:[fcn.00000116]                ; 0x116
│       ╎   0000:1536      call  word cs:[fcn.00000118]                ; 0x118
│       ╎   0000:153b      pop   ax
│       ╎   0000:153c      cmp   byte [0xff1a], al
│       └─< 0000:1540      jb    0x1521
│           0000:1542      mov   byte [0xff1a], 0
└           0000:1547      ret
```

### Function 0x00001548
```asm
; CODE XREFS from fcn.000012df @ +0x3b, +0x4e
┌ fcn.00001548();
│           0000:1548      mov   ax, 0xb800
│           0000:154b      mov   es, ax
│           0000:154d      mov   di, 0x23c
│           0000:1550      mov   cx, 8
│       ┌─> 0000:1553      push  cx
│       ╎   0000:1554      push  di
│       ╎   0000:1555      mov   cx, 0x12
│      ┌──> 0000:1558      push  cx
│      ╎╎   0000:1559      push  di
│      ╎╎   0000:155a      mov   ax, 0xffff
│      ╎╎   0000:155d      mov   cx, 0x1c
│     ┌───> 0000:1560      xor   word es:[di], ax
│     ╎╎╎   0000:1563      inc   di
│     ╎╎╎   0000:1564      inc   di
│     └───< 0000:1565      loop  0x1560
│      ╎╎   0000:1567      pop   di
│      ╎╎   0000:1568      add   di, 0x140
│      ╎╎   0000:156c      pop   cx
│      └──< 0000:156d      loop  0x1558
│       ╎   0000:156f      pop   di
│       ╎   0000:1570      add   di, 0x2000
│       ╎   0000:1574      cmp   di, 0x4000
│      ┌──< 0000:1578      jb    0x157e
│      │╎   0000:157a      add   di, 0xc050
│      └──> 0000:157e      pop   cx
│       └─< 0000:157f      loop  0x1553
└           0000:1581      ret
```

### Function 0x000015cf
```asm
; XREFS: CALL 0x00000118  CALL 0x0000043e  CALL 0x00000487  
            ; XREFS: CALL 0x000004bd  CALL 0x000004f8  CALL 0x00000582  
            ; XREFS: CALL 0x000005ef  CALL 0x00000ebf  CALL 0x00000ecf  
            ; XREFS: CALL 0x00001088  CALL 0x000010a9  CALL 0x0000120c  
┌ fcn.000015cf();
│           0000:15cf      cmp   si, 0xe900
│       ┌─< 0000:15d3      jae   0x15d6
│       │   0000:15d5      ret
│       └─> 0000:15d6      sub   si, 0x900
└           0000:15da      ret
```

### Function 0x000015db
```asm
; CALL XREF from fcn.00000000 @ 0x4d
┌ fcn.000015db();
│           0000:15db      cmp   si, 0xe000
│       ┌─< 0000:15df      jb    0x15e2
│       │   0000:15e1      ret
│       └─> 0000:15e2      add   si, 0x900
└           0000:15e6      ret
```

### Function 0x000016d3
```asm
; CALL XREF from fcn.00000ed5 @ 0x1106
            ; CALL XREF from fcn.000015db @ +0x40
┌ fcn.000016d3(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:16d3      mov   dx, ax                                ; arg1
│           0000:16d5      xor   ax, ax
│           0000:16d7      mov   cx, 8
│       ┌─> 0000:16da      xor   bl, bl
│       ╎   0000:16dc      add   dx, dx
│       ╎   0000:16de      adc   bl, bl
│       ╎   0000:16e0      add   dx, dx
│       ╎   0000:16e2      adc   bl, bl
│      ┌──< 0000:16e4      je    0x16e8
│      │╎   0000:16e6      mov   bl, 3
│      └──> 0000:16e8      add   ax, ax
│       ╎   0000:16ea      add   ax, ax
│       ╎   0000:16ec      or    al, bl
│       └─< 0000:16ee      loop  0x16da
└           0000:16f0      ret
```

### Function 0x0000171d
```asm
; CALL XREF from fcn.000016d3 @ +0x34
┌ fcn.0000171d(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:171d      push  ds
│           0000:171e      mov   cl, 0x10
│           0000:1720      mul   cl
│           0000:1722      add   ax, 0x8000                            ; arg1
│           0000:1725      mov   si, ax                                ; arg1
│           0000:1727      mov   ds, word cs:[0xff2c]
│           0000:172c      mov   ax, 0xb800
│           0000:172f      mov   es, ax
│           0000:1731      mov   di, word cs:[0x506d]
│           0000:1736      mov   cx, 8
│       ┌─> 0000:1739      push  cx
│       ╎   0000:173a      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:173b      call  fcn.00001752                          ; fcn.00001752
│       ╎   0000:173e      stosw word es:[di], ax
│       ╎   0000:173f      add   di, 0x1ffe
│       ╎   0000:1743      cmp   di, 0x4000
│      ┌──< 0000:1747      jb    0x174d
│      │╎   0000:1749      add   di, 0xc050
│      └──> 0000:174d      pop   cx
│       └─< 0000:174e      loop  0x1739
│           0000:1750      pop   ds
└           0000:1751      ret
```

### Function 0x00001752
```asm
; CALL XREF from fcn.0000171d @ 0x173b
┌ fcn.00001752(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:1752      mov   cx, 8
│       ┌─> 0000:1755      push  cx
│       ╎   0000:1756      add   ax, ax                                ; arg1
│       ╎   0000:1758      adc   cl, cl
│       ╎   0000:175a      add   ax, ax                                ; arg1
│       ╎   0000:175c      adc   cl, cl
│       ╎   0000:175e      and   cl, 3
│       ╎   0000:1761      mov   bl, byte cs:[0x5080]
│       ╎   0000:1766      xor   bh, bh
│       ╎   0000:1768      add   bx, bx                                ; arg3
│       ╎   0000:176a      call  word cs:[bx + 0x4777]
│       ╎   0000:176f      add   dx, dx                                ; arg2
│       ╎   0000:1771      add   dx, dx                                ; arg2
│       ╎   0000:1773      or    dl, cl
│       ╎   0000:1775      pop   cx
│       └─< 0000:1776      loop  0x1755
│           0000:1778      mov   ax, dx                                ; arg2
└           0000:177a      ret
```

### Function 0x00001f5f
```asm
; CALL XREF from fcn.00001752 @ +0x7f7
┌ fcn.00001f5f(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:1f5f      mov   cx, 8
│       ┌─> 0000:1f62      xor   bx, bx
│       ╎   0000:1f64      rol   word cs:[0x5071], 1
│       ╎   0000:1f69      adc   bx, bx
│       ╎   0000:1f6b      rol   word cs:[0x506d], 1
│       ╎   0000:1f70      adc   bx, bx
│       ╎   0000:1f72      rol   word cs:[0x5071], 1
│       ╎   0000:1f77      adc   bx, bx
│       ╎   0000:1f79      rol   word cs:[0x506d], 1
│       ╎   0000:1f7e      adc   bx, bx
│       ╎   0000:1f80      add   dx, dx                                ; arg2
│       ╎   0000:1f82      add   dx, dx                                ; arg2
│       ╎   0000:1f84      or    dl, byte cs:[bx + 0x4f88]
│       └─< 0000:1f89      loop  0x1f62
└           0000:1f8b      ret
```

### Function 0x00001f9c
```asm
; CALL XREF from fcn.00001752 @ +0x7fd
┌ fcn.00001f9c(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:1f9c      mov   cx, 8
│       ┌─> 0000:1f9f      xor   al, al
│       ╎   0000:1fa1      rol   word cs:[0x507e], 1
│       ╎   0000:1fa6      adc   al, al
│       ╎   0000:1fa8      rol   word cs:[0x507e], 1
│       ╎   0000:1fad      adc   al, al
│       ╎   0000:1faf      cmp   al, 3
│      ┌──< 0000:1fb1      je    0x1fb5
│      │╎   0000:1fb3      xor   al, al
│      └──> 0000:1fb5      add   dx, dx                                ; arg2
│       ╎   0000:1fb7      add   dx, dx                                ; arg2
│       ╎   0000:1fb9      or    dl, al
│       └─< 0000:1fbb      loop  0x1f9f
└           0000:1fbd      ret
```

## Cross-References (callers)
```json
  0x00000110:
[{"from":5410,"to":272,"type":"CALL"}]
  0x00000112:
[{"from":5415,"to":274,"type":"CALL"}]
  0x00000114:
[{"from":5420,"to":276,"type":"CALL"}]
  0x00000116:
[{"from":5425,"to":278,"type":"CALL"}]
  0x00000118:
[{"from":5430,"to":280,"type":"CALL"}]
  0x0000011a:
[{"from":435,"to":282,"type":"CALL"},{"from":2153,"to":282,"type":"CALL"},{"from":2188,"to":282,"type":"CALL"},{"from":2218,"to":282,"type":"CALL"},{"from":2245,"to":282,"type":"CALL"}]
  0x00000128:
[{"from":210,"to":296,"type":"CALL"},{"from":217,"to":296,"type":"CALL"},{"from":224,"to":296,"type":"CALL"},{"from":231,"to":296,"type":"CALL"},{"from":241,"to":296,"type":"CALL"},{"from":248,"to":296,"type":"CALL"},{"from":255,"to":296,"type":"CALL"},{"from":274,"to":296,"type":"CALL"}]
  0x00000270:
[{"from":343,"to":624,"type":"CALL"}]
  0x00000422:
[{"from":87,"to":1058,"type":"CALL"}]
  0x0000045f:
[{"from":100,"to":1119,"type":"CALL"},{"from":110,"to":1119,"type":"CALL"},{"from":120,"to":1119,"type":"CALL"},{"from":130,"to":1119,"type":"CALL"},{"from":143,"to":1119,"type":"CALL"},{"from":153,"to":1119,"type":"CALL"},{"from":163,"to":1119,"type":"CALL"}]
  0x000004a3:
[{"from":172,"to":1187,"type":"CALL"}]
  0x000004db:
[{"from":200,"to":1243,"type":"CALL"}]
  0x00000657:
[{"from":1181,"to":1623,"type":"CALL"},{"from":1453,"to":1623,"type":"CALL"},{"from":1467,"to":1623,"type":"CALL"}]
  0x00000684:
[{"from":1113,"to":1668,"type":"CALL"},{"from":1240,"to":1668,"type":"CODE"},{"from":1320,"to":1668,"type":"CALL"},{"from":1365,"to":1668,"type":"CALL"},{"from":1569,"to":1668,"type":"CALL"},{"from":1614,"to":1668,"type":"CALL"},{"from":1655,"to":1668,"type":"CALL"}]
  0x000006f8:
[{"from":1764,"to":1784,"type":"CALL"},{"from":3736,"to":1784,"type":"CALL"}]
  0x0000070e:
[{"from":1804,"to":1806,"type":"CODE"},{"from":2263,"to":1806,"type":"CODE"},{"from":3568,"to":1806,"type":"CALL"}]
  0x00000726:
[{"from":1740,"to":1830,"type":"CALL"},{"from":3743,"to":1830,"type":"CALL"}]
  0x00000731:
[{"from":1817,"to":1841,"type":"CALL"},{"from":1834,"to":1841,"type":"CALL"}]
  0x0000078e:
[{"from":1754,"to":1934,"type":"CALL"},{"from":1778,"to":1934,"type":"CALL"},{"from":4463,"to":1934,"type":"CALL"}]
```