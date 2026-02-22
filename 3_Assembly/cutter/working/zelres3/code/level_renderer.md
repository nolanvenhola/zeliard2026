# LEVEL_RENDERER - Analysis

**Source:** `chunk_14.bin`  
**Size:** 2.0 KB  
**Functions:** 5  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000  112 1740 -> 1449 fcn.00000000
0x0000042d    3 18           fcn.0000042d
0x0000043f    3 17           fcn.0000043f
0x000005fe    5 74           fcn.000005fe
0x00000648    5 42           fcn.00000648
```

## Strings
```
nth      paddr      vaddr len size section type   string                                               
-------------------------------------------------------------------------------------------------------
  0 0x0000001a 0x0000001a  27   27         ascii  P\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>
  1 0x00000093 0x00000093   4    5         ascii  \t\n\v\f
  2 0x000000c0 0x000000c0   4    5         ascii   !"#
  3 0x000000de 0x000000de   4    5         ascii  *+./
  4 0x000000e3 0x000000e3   4    5         ascii  ,-01
  5 0x000000e8 0x000000e8   4    5         ascii  2367
  6 0x000000f2 0x000000f2   4    5         ascii  67:;
  7 0x00000106 0x00000106   4    5         ascii  <=>?
  8 0x0000010b 0x0000010b   4    5         ascii  ?@CD
  9 0x00000110 0x00000110   4    5         ascii  ABEF
 10 0x0000011f 0x0000011f   4    5         ascii  45XY
 11 0x00000124 0x00000124   4    5         ascii  KLNO
 12 0x0000012e 0x0000012e   4    5         ascii  XYZ[
 13 0x00000133 0x00000133   4    5         ascii  STVW
 14 0x00000138 0x00000138   4    5         ascii  NOTU
 15 0x0000014c 0x0000014c   4    5         ascii  a,jk
 16 0x00000151 0x00000151   4    5         ascii  ,ikl
 17 0x00000156 0x00000156   4    5         ascii  klmn
 18 0x0000015b 0x0000015b   4    5         ascii  nopq
 19 0x00000160 0x00000160   4    5         ascii  pqZr
 20 0x0000016a 0x0000016a   4    5         ascii  \]_`
 21 0x0000016f 0x0000016f   4    5         ascii  bcef
 22 0x00000174 0x00000174   4    5         ascii  degh
 23 0x00000183 0x00000183   4    5         ascii  vwz{
 24 0x00000188 0x00000188   4    5         ascii  xy|}
 25 0x000001ce 0x000001ce   4    5         ibm037 fghi
 26 0x000001dd 0x000001dd   4    5         ibm037 klop
 27 0x000001fb 0x000001fb   4    5         ibm037 jkno
 28 0x0000020f 0x0000020f   4    5         ibm037 ABCD
 29 0x00000214 0x00000214   4    5         ibm037 EFGH
 30 0x0000023f 0x0000023f   4    4         ascii  6`r%
 31 0x0000028d 0x0000028d   4    5         ascii  X<\tt
 32 0x0000030b 0x0000030b   5    5         ascii  X<\au\b
 33 0x000003b1 0x000003b1   7    8         ibm037 uPs[xZp
 34 0x000003e6 0x000003e6   6    6         ibm037 tCxµsx
 35 0x00000482 0x00000482   4    4         ascii  GGEY
 36 0x000004b8 0x000004b8   4    4         ascii  QWP.
 37 0x000004fb 0x000004fb   4    6         utf8   \a\nÈD blocks=Basic Latin,Latin-1 Supplement
 38 0x00000605 0x00000605   4    6         utf8   áçP. blocks=Latin-1 Supplement,Basic Latin
 39 0x0000060d 0x0000060d   4    5         ascii  6`Xs
 40 0x00000650 0x00000650   7    7         ibm037 {ttx»Q&
 41 0x0000065a 0x0000065a   4    4         ascii  \f X\v
 42 0x000006f6 0x000006f6   9   10         ascii   "$%)*'&(
 43 0x00000701 0x00000701  10   11         ascii   "$%20-1+.
 44 0x0000070d 0x0000070d   8    9         ascii   ,/=:<;3
 45 0x00000716 0x00000716  11   12         ascii  456789BC@D>
 46 0x00000722 0x00000722  16   16         ascii  ?AEFXYZOPRTVQSUW
 47 0x00000733 0x00000733   5    6         ascii  BG@H>
 48 0x00000739 0x00000739   4    4         ascii  ?AEF
 49 0x0000073e 0x0000073e   5    6         ascii  BM@L>
 50 0x00000744 0x00000744   5    5         ascii  ?AEFX
 51 0x000007b5 0x000007b5   5    6         ascii  Tarso
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg3, int16_t arg4, int16_t arg_4fh, int16_t arg_6fh, int16_t arg_7fh, int16_t arg_8fh, int16_t arg_a3h, int16_t arg_a4h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           ; var int16_t var_7779h @ stack - 0x7779
│           ; var int16_t var_5860h @ stack - 0x5860
│           ; var int16_t var_5759h @ stack - 0x5759
│           ; var int16_t var_5000h @ stack - 0x5000
│           ; var int16_t var_484ch @ stack - 0x484c
│           ; arg int16_t arg_4fh @ stack + 0x4f
│           ; arg int16_t arg_6fh @ stack + 0x6f
│           ; arg int16_t arg_7fh @ stack + 0x7f
│           ; arg int16_t arg_8fh @ stack + 0x8f
│           ; arg int16_t arg_a3h @ stack + 0xa3
│           ; arg int16_t arg_a4h @ stack + 0xa4
│           0000:0000      sbb   word [bx + si], cx                    ; arg4
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           0000:0004      and   sp, word [bp + si - 0x5860]
│           ; DATA XREFS from fcn.00000000 @ 0x473, 0x4b8
│           0000:0008      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.00000000 @ 0x536
│           0000:000a      add   byte [bx + si], al                    ; arg3
│           0000:000c      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.0000042d @ 0x431
│           0000:000e      add   byte [bx + si], al                    ; arg3
│           ; DATA XREFS from fcn.00000000 @ 0x26c, 0x52a
│           ; DATA XREF from fcn.000005fe @ 0x644
│           0000:0010      add   byte [bx + si], al                    ; arg3
│           0000:0012      add   byte [bx + si], al                    ; arg3
│           ; DATA XREFS from fcn.00000000 @ 0x2af, 0x385
│           0000:0014      mov   al, byte [0xa0a0]                     ; [0xa0a0:1]=255
│           0000:0017      mov   al, byte [0xa0a0]                     ; [0xa0a0:1]=255
│           ; DATA XREF from fcn.00000000 @ 0x1bd
│           ;-- str.P:
│           0000:001a     .string "P\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>" ; len=27 ; arg1
│           ; DATA XREF from fcn.00000000 @ 0xed
..
│           ; DATA XREF from fcn.00000000 @ 0xe9
│           0000:0037      mov   al, byte [0xa0de]                     ; [0xa0de:1]=255
│           0000:003a      mov   ax, word cs:[0xa17e]
│       │   0000:003e      into
│       │   ; DATA XREF from str.P @ +0x3d2
│       │   ; DATA XREF from fcn.00000000 @ 0x4d7
│       │   0000:003f      mov   ax, word [0xa205]                     ; [0xa205:2]=0xffff
│       │   0000:0042      add   al, byte [bx + si]                    ; arg3
│       │   0000:0044      add   byte [bx + si], al                    ; arg3
│       │   0000:0046      add   ax, word [bp + si]
│       │   0000:0048      add   byte [bx + si], al                    ; arg3
│       │   0000:004a      add   al, 0
│       │   0000:004c      add   al, byte [bx + si]                    ; arg3
│       │   0000:004e      add   byte [bx + si], al                    ; arg3
│       │   0000:0050      add   ax, 2
│       │   0000:0053      add   byte [0x200], al
│       │   0000:0057      add   byte [bx + si], al                    ; arg3
│       │   0000:0059      add   byte [bx], al                         ; arg3
│       │   0000:005b      add   al, byte [bx + si]                    ; arg3
│       │   0000:005d      add   byte [bx + si], cl                    ; arg3
│       │   0000:005f      add   byte [bp + si], al
│       │   0000:0061      add   byte [di - 0x5100], ch
│       │   0000:0065      add   ch, byte [bp - 0x5000]
│       │   0000:0069      add   byte [bp + si], al
│       │   0000:006b      mov   cl, 0xb2
│       │   0000:006d      mov   ch, 0xb6
│       │   0000:006f      add   dh, byte [bp + di - 0x484c]
│       │   0000:0073      mov   ax, 0xb902
│       │   0000:0076      mov   dx, 0x139
│       │   0000:0079      add   dh, byte [di - 0x56]
│       │   0000:007c      add   bh, byte [bx + si]                    ; arg3
│       │   0000:007e      add   al, byte [bx + si]                    ; arg3
│       │   ; DATA XREF from fcn.00000000 @ 0x521
│       │   ; DATA XREF from fcn.000005fe @ 0x63c
│       │   0000:0080      add   byte [bx + si], al                    ; arg3
│       │   0000:0082      add   word [bp + si], ax
│       │   0000:0084      add   byte [bx + si], al                    ; arg3
│       │   0000:0086      add   al, byte [bx + si]                    ; arg3
│       │   0000:0088      add   al, byte [bx + si]                    ; arg3
│       │   0000:008a      add   byte [bx + si], al                    ; arg3
│       │   0000:008c      mov   bx, 2
│       │   0000:008f      add   byte [si], bh
│       │   0000:0093      or    word [bp + si], cx                    ; arg4
│       │   0000:0095      or    cx, word [si]                         ; arg4
│       │   0000:0097      add   byte [di], cl
│       │   0000:0099      push  cs
│       │   0000:009a      adc   byte [bx + di], dl
│       │   0000:009c      add   byte [0x110f], cl                     ; [0x110f:1]=255
│       │   0000:00a0      adc   al, byte [bx + si]
│       │   0000:00a2      adc   dx, word [si]
│       │   0000:00a4      adc   ax, 0x16
│       │   ; DATA XREF from fcn.00000000 @ 0x232
│       │   ; DATA XREF from fcn.00000648 @ +0x8e
│       │   0000:00a7      pop   ss
│       │   0000:00a8      sbb   byte [bx + di], bl
│       │   0000:00aa      sbb   al, byte [bx + si]
│       │   0000:00ac      sbb   word [bp + si], bx
│       │   0000:00ae      sbb   al, 0x1d
│       │   0000:00b0      add   byte [bp + si], bl
│       │   ; DATA XREF from fcn.00000000 @ 0x6b
│       │   0000:00b2      sbb   bx, word [di]
│       │   0000:00b4      push  ds
│       │   0000:00b5      add   byte [bx], bl
│       │   0000:00b7      adc   sp, word [bx + si]
│       │   0000:00b9      and   word [bx + si], ax
│       │   0000:00bb      adc   dx, word [si]
│       │   0000:00bd      and   word [0x2000], dx                     ; [0x2000:2]=0xffff
│       │   0000:00c1      and   word [bp + si], sp
│       │   0000:00c3      and   ax, word [bx + si]
│       │   0000:00c5      and   word [0x1823], dx                     ; [0x1823:2]=0xffff
│       │   0000:00c9      add   byte [si], ah
│       │   0000:00cb      sbb   ah, byte [di]
│       │   0000:00cd      sbb   ax, 0x1a00
│       │   0000:00d0      sbb   bx, word [di]
│       │   0000:00d2      push  ds
│       │   0000:00d3      add   byte [di], cl
│       │   0000:00d5      push  cs
│       │   0000:00d6      daa
│       │   0000:00d8      add   byte [bx], cl
│       │   0000:00da      add   byte [bx + si], ch
│       │   0000:00dc      sub   word [bx + si], ax
│       │   0000:00de      sub   ch, byte [bp + di]
│       │   0000:00e0      das
│       │   0000:00e2      add   byte [si], ch
│       │   0000:00e4      sub   ax, 0x3130
│       │   0000:00e7      add   byte [bp + si], dh
│       │   0000:00e9      xor   si, word [0x37]                       ; [0x37:2]=0xdea0
│       │   0000:00ed      xor   al, 0x35
│       │   0000:00ef      sbb   word [bp + si], bx
│       │   0000:00f1      add   byte [0x3a37], dh                     ; [0x3a37:1]=255
│       │   0000:00f5      cmp   ax, word [bx + si]
│       │   0000:00f7      sbb   word [bp + si], bx
│       │   0000:00f9      sbb   al, 0x1d
│       │   0000:00fb      add   byte [bp + si], bl
│       │   0000:00fd      add   byte [di], bl
│       │   ; XREFS: DATA 0x000002b4  DATA 0x0000038a  DATA 0x000003db  
│       │   ; XREFS: DATA 0x00000565  DATA 0x0000066c  DATA 0x00000679  
│       │   ; XREFS: DATA 0x000006c6  
│       │   0000:00ff      push  ds
│       │   0000:0100      add   byte [di], cl
│       │   0000:0102      push  cs
│       │   0000:0103      cmp   ax, 0x27
│       │   0000:0106      cmp   al, 0x3d
│       │   0000:0108      aas
│       │   0000:010a      add   byte [bx], bh
│       │   0000:010c      inc   ax
│       │   0000:010d      inc   bx
│       │   0000:010e      inc   sp
│       │   0000:010f      add   byte [bx + di + 0x42], al
│       │   0000:0112      inc   bp
│       │   0000:0113      inc   si
│       │   0000:0114      add   byte [bx + 0x48], al
│       │   0000:0117      dec   cx                                    ; arg4
│       │   0000:0118      add   byte [bx + si], al
│       │   ; CALL XREF from fcn.00000000 @ 0x371
│       │   0000:011a      dec   dx
│       │   0000:011b      push  cs
│       │   0000:011c      dec   bp
│       │   0000:011d      daa
│       │   0000:011e      add   byte [si], dh
│       │   0000:0120      xor   ax, 0x5958
│       │   0000:0123      add   byte [bp + di + 0x4c], cl
│       │   0000:0126      dec   si
│       │   0000:0127      dec   di
│       │   0000:0128      add   byte [bx + si + 0x51], dl
│       │   0000:012b      add   byte [si], al
│       │   0000:012e      pop   ax
│       │   0000:012f      pop   cx
│       │   0000:0130      pop   dx
│       │   0000:0131      pop   bx
│       │   0000:0132      add   byte [bp + di + 0x54], dl
│       │   0000:0135      push  si
│       │   0000:0136      push  di
│       │   0000:0137      add   byte [bp + 0x4f], cl
│       │   0000:013a      push  sp
│       │   0000:013b      push  bp
│       │   0000:013c      add   byte [bx + si], al
│       │   0000:013e      add   byte [bp + si + 0x53], dl
│       │   0000:0141      add   byte [di], cl
│       │   0000:0143      push  cs
│       │   0000:0144      pop   bp
│       │   0000:0145      daa
│       │   0000:0146      add   byte [0x270f], cl                     ; [0x270f:1]=255
│       │   0000:014a      sub   byte [bx + si], al
│       │   0000:014c      popaw
│       │   0000:014d      sub   al, 0x6a
│       │   0000:014f      imul  ax, word [bx + si], 0x2c
│       │   0000:0152      imul  bp, word [bp + di + 0x6c], 0x6b00
│       │   0000:0157      insb  byte es:[di], dx
│       │   0000:0158      insw  word es:[di], dx
│       │   0000:0159      outsb dx, byte [si]
│       │   0000:015a      add   byte [bp + 0x6f], ch
│       ┌─< 0000:015d      jo    0x1d0
│      ││   0000:015f      add   byte [bx + si + 0x71], dh
│      ││   0000:0162      pop   dx
│      ┌──< 0000:0163      jb    0x165
│      └──> 0000:0165      add   byte [si + 0x5e], bl
│      ││   0000:0168      pop   di
│      ││   0000:0169      add   byte [si + 0x5d], bl
│      ││   0000:016c      pop   di
│      ││   0000:016d      pushaw
│      ││   0000:016e      add   byte [bp + si + 0x63], ah
│      ││   0000:0171      add   byte gs:[si + 0x65], ah
│      ││   0000:0176      push  0xd00                                 ; 3328
│      ││   0000:017a      push  cs
│      ┌──< 0000:017b      jae   0x1f1
│     │││   0000:017d      add   byte [0x740f], cl                     ; [0x740f:1]=255
│     │││   0000:0181      adc   al, byte [bx + si]
│     ┌───< 0000:0183      jbe   0x1fc
│    ┌────< 0000:0185      jp    0x202
│   │││││   0000:0187      add   byte [bx + si + 0x79], bh
│   ┌─────< 0000:018a      jl    0x209
│  ││││││   0000:018c      add   byte [bx], dl
│  ┌──────< 0000:018e      jp    0x1a9
│ │││││││   0000:0190      sbb   al, byte [bx + si]
│ │││││││   0000:0192      sbb   word [bp + si], bx
│ │││││││   0000:0194      sbb   al, 0x1d
│ │││││││   0000:0196      add   byte [bp + si], bl
│ │││││││   0000:0198      sbb   bx, word [di]
│ │││││││   0000:019a      push  ds
│ │││││││   0000:019b      add   byte [bp + 0x7f], bh
│ │││││││   0000:019e      add   byte [bp + di - 0x8000], 0x81         ; [0x81:1]=0
│ │││││││   0000:01a3      test  byte [di + 0x1900], al
│ │││││││   0000:01a7  ~   sbb   ah, byte [bp + si + 0xa3]
│  └──────> 0000:01a9      mov   word [0x1a00], ax                     ; [0x1a00:2]=0xffff
│  ││││││   0000:01ac      sbb   sp, word [bp + di + 0xa4]
│  ┌──────< 0000:01b0      jle   0x231
│ │││││││   0000:01b2      movsw word es:[di], word ptr [si]
│ │││││││   0000:01b3      add   word [bx + si], 0
│ │││││││   0000:01b6      add   byte [bx + si + 0xa1], ah
│ ┌───────< 0000:01ba      jle   0x23b
│ │││││││   0000:01bc      lodsb al, byte [si]
│ │││││││   0000:01bd      add   word [bx + si], 0x1a                  ; str.P
│ │││││││                                                              ; [0x1a:2]=0xa50 ; "P\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>\xa0\x8e\xa0ޠ.\xa1~\xa1Ρ\U00000005\xa2\U00000002"
│ │││││││   0000:01c0      sbb   bx, word [di]
│ │││││││   0000:01c2      stosw word es:[di], ax
│ │││││││   0000:01c3      add   byte [bx + di], bl
│ │││││││   0000:01c5      sbb   ch, byte [bx + di + 0x1d]
│ │││││││   0000:01c9      add   byte [bp - 0x5759], ah
│ │││││││   0000:01cd  ~   add   byte [bp - 0x7779], al
│ ││││││└─> 0000:01d0      mov   byte [bx + di - 0x7500], cl
│ │││││││   0000:01d4      mov   word [bp + 0x8f], cs
│ │││││││   0000:01d8      mov   word [bp + si - 0x7274], cx
│ │││││││   0000:01dc      add   byte [bp + si - 0x696d], dl
│ │││││││   0000:01e0      xchg  di, ax
│ │││││││   0000:01e1      add   byte [bx - 0x6c70], cl
│ │││││││   0000:01e5      xchg  sp, ax
│ │││││││   0000:01e6      add   byte [bx + si + 0x1a99], bl
│ │││││││   0000:01ea      wait
│ │││││││   0000:01eb      add   byte [bx + di - 0x6466], bl
│ │││││││   0000:01ef      pushf
│ │││││││   0000:01f0  ~   add   byte [bp + si], bl
│ │││││└──> 0000:01f1      sbb   bl, byte [bp + di - 0x6163]
│ │││││ │   0000:01f5      add   byte [bp + di - 0x6164], bl
│ │││││ │   0000:01f9      lahf
│ │││││ │   0000:01fa  ~   add   byte [bx + di - 0x6a6e], dl
│ ││││└───> 0000:01fc      xchg  dx, ax
│ ││││  │   0000:01fd      xchg  bp, ax
│ ││││  │   0000:01fe      xchg  si, ax
│ ││││  │   0000:01ff      add   byte [bx], dl
│ ││││  │   0000:0201      cwde
│ │││└────> 0000:0202      sbb   word [bp + si], bx
│ │││   │   0000:0204      add   byte [bx + di], bl
│ │││   │   0000:0206      sbb   bl, byte [si]
│ │││   │   0000:0208      popf
│ ││└─────> 0000:0209      add   bh, byte [di - 0x4042]
│ ││    │   0000:020d      rol   byte [bp + si], 0xc1
│ ││    │   0000:0210      ret   0xc4c3
..
│ │└──────> 0000:0231      push  es
│ │     │   0000:0232      mov   bh, 0xa7
│ │     │   0000:0234  ~   add   byte [bp + di - 0xc4], al
│       │   ; CODE XREF from fcn.00000000 @ 0x26f
│ │     ┌─> 0000:0235      cmp   word [si], 0xffff
│ │    ┌──< 0000:0238      je    0x271
│     │╎│   0000:023a  ~   mov   ax, word [si]
│ └───────> 0000:023b      add   al, 0x2e
│     │╎│   0000:023d      call  word [0x6036]
│     ┌───< 0000:0241      jb    0x268
│    ││╎│   0000:0243      mov   byte [si + 3], bl
│    ││╎│   0000:0246      mov   ax, word [si + 2]
│    ││╎│   0000:0249      call  word cs:[0x6028]
│    ││╎│   0000:024e      mov   bl, byte [0xa7b6]
│    ││╎│   0000:0252      xor   bh, bh
│    ││╎│   0000:0254      mov   al, byte [bx - 0x12e0]
│    ││╎│   0000:0258      mov   byte [di], al
│    ││╎│   0000:025a      test  byte [si + 5], 0x40
│    ┌────< 0000:025e      je    0x268
│   │││╎│   0000:0260      mov   al, byte [si + 5]
│   │││╎│   0000:0263      and   al, 0x1f
│   │││╎│   0000:0265      mov   byte [0xa7b7], al                     ; [0xa7b7:1]=255
│    └└───> 0000:0268      inc   byte [0xa7b6]
│     │╎│   0000:026c      add   si, 0x10
│      │└─< 0000:026f      jmp   0x235
│      └──> 0000:0271      mov   si, word [0xc010]
│       │   0000:0275      mov   word [si], 0xffff                     ; [0xffff:2]=0xffff
│       │   0000:0279      test  byte [0xa7b7], 0xff
│       ┌─< 0000:027e      je    0x2b9
│      ││   0000:0280      mov   al, byte [0xa7b7]                     ; [0xa7b7:1]=255
│      ││   0000:0283      push  ax
│      ││   0000:0284      call  word cs:[0x6038]
│      ││   0000:0289      mov   bl, ah
│      ││   0000:028b      xor   bh, bh
│      ││   0000:028d      pop   ax
│      ││   0000:028e      cmp   al, 9
│      ┌──< 0000:0290      je    0x2a0
│     │││   0000:0292      cmp   al, 1
│     ┌───< 0000:0294      jne   0x29a
│    ││││   0000:0296      add   bx, bx
│    ┌────< 0000:0298      jmp   0x2a0
│    │└───> 0000:029a      shr   bx, 1
│   │ │││   0000:029c      shr   bx, 1
│   │ │││   0000:029e      shr   bx, 1
│   │ │││   ; CODE XREF from fcn.00000000 @ 0x298
│    └─└──> 0000:02a0      call  fcn.00000648                          ; fcn.00000648
│      ││   0000:02a3      mov   byte [0xff75], 0x2f                   ; '/'
│      ││                                                              ; [0x2f:1]=10
│      ││   0000:02a8      cmp   byte [0xa7a0], 0x2f
│      ┌──< 0000:02ad      jae   0x2b9
│     │││   0000:02af      mov   byte [0xa7bf], 0x14                   ; [0x14:1]=160
│     │││   0000:02b4      mov   byte [0xa7bd], 0xff                   ; [0xff:1]=30
│      └└─> 0000:02b9      test  byte [0xff2e], 0xff
│       ┌─< 0000:02be      je    0x2c3
│      ┌──< 0000:02c0      jmp   0x672
│      │└─> 0000:02c3      test  byte [0xa7c0], 0xff
│      │┌─< 0000:02c8      je    0x2cd
│     ┌───< 0000:02ca      jmp   0x3b9
│     ││└─> 0000:02cd      test  byte [0xa7c2], 0xff
│     ││┌─< 0000:02d2      je    0x2de
│    ││││   0000:02d4      cmp   byte [0xa7c7], 0xd
│    ┌────< 0000:02d9      jae   0x2de
│   ┌─────< 0000:02db      jmp   0x363
│   │└──└─> 0000:02de      test  byte [0xa7bd], 0xff
│   │ ││┌─< 0000:02e3      jne   0x31a
│  │ ││││   0000:02e5      mov   byte [0xa7bf], 0x3c                   ; '<'
│  │ ││││                                                              ; [0x3c:1]=126
│  │ ││││   0000:02ea      inc   byte [0xa7b9]
│  │ ││││   0000:02ee      and   byte [0xa7b9], 7
│  │ ││││   0000:02f3      mov   al, byte [0xa7b9]                     ; [0xa7b9:1]=255
│  │ ││││   0000:02f6      push  cs
│  │ ││││   0000:02f7      pop   es
│  │ ││││   0000:02f8      mov   di, 0xa41f
│  │ ││││   0000:02fb      mov   cx, 5
│  │ ││││   0000:02fe      repne scasb al, byte es:[di]
│   │┌────< 0000:0300      jne   0x318
│  ││││││   0000:0302      push  ax
│  ││││││   0000:0303      call  fcn.0000042d                          ; fcn.0000042d
│  ││││││   0000:0306      sbb   al, al
│  ││││││   0000:0308      mov   byte [0xa7bd], al                     ; [0xa7bd:1]=255
│  ││││││   0000:030b      pop   ax
│  ││││││   ; DATA XREF from fcn.00000648 @ +0x140
│  ││││││   0000:030c      cmp   al, 7
│  ┌──────< 0000:030e      jne   0x318
│ │││││││   0000:0310      call  fcn.0000042d                          ; fcn.0000042d
│ │││││││   0000:0313      sbb   al, al
│ │││││││   0000:0315      mov   byte [0xa7bd], al                     ; [0xa7bd:1]=255
│ ┌└─└────> 0000:0318      jmp   0x363
│ │ │ ││└─> 0000:031a      dec   byte [0xa7bf]
│ │ │ ││┌─< 0000:031e      jne   0x327
│  │ ││││   0000:0320      mov   byte [0xa7bd], 0
│ │ │┌────< 0000:0325      jmp   0x363
│ │┌────└─> 0000:0327      mov   al, byte [0xa7b9]                     ; [0xa7b9:1]=255
│ │╎│││││   0000:032a      or    al, al
│ │╎││││┌─< 0000:032c      jne   0x330
│ ╎││││││   0000:032e      mov   al, 8
│ │╎││││└─> 0000:0330      cmp   al, 6
│ │╎││││┌─< 0000:0332      jne   0x336
│ ╎││││││   0000:0334      sub   al, 2
│ │╎││││└─> 0000:0336      dec   al
│ │╎│││││   0000:0338      mov   byte [0xa7b9], al                     ; [0xa7b9:1]=255
│ │╎│││││   0000:033b      push  cs
│ │╎│││││   0000:033c      pop   es
│ │╎│││││   0000:033d      mov   di, 0xa424
│ │╎│││││   0000:0340      mov   cx, 5
│ │╎│││││   0000:0343      repne scasb al, byte es:[di]
│ │╎││││┌─< 0000:0345      jne   0x363
│ ╎││││││   0000:0347      push  ax
│ ╎││││││   0000:0348      call  fcn.0000043f                          ; fcn.0000043f
│ ╎││││││   0000:034b      cmc
│ ╎││││││   0000:034c      sbb   al, al
│ ╎││││││   0000:034e      mov   byte [0xa7bd], al                     ; [0xa7bd:1]=255
│ ╎││││││   0000:0351      pop   ax
│ ╎││││││   0000:0352      cmp   al, 6
│ ────────< 0000:0354      je    0x35a
│ ╎││││││   0000:0356      cmp   al, 3
│ │└──────< 0000:0358      jne   0x327
│ ────────> 0000:035a      call  fcn.0000043f                          ; fcn.0000043f
│  ││││││   0000:035d      cmc
│  ││││││   0000:035e      sbb   al, al
│  ││││││   0000:0360      mov   byte [0xa7bd], al                     ; [0xa7bd:1]=255
│  ││││││   ; CODE XREFS from fcn.00000000 @ 0x2db, 0x318, 0x325
│ └─└└──└─> 0000:0363      test  byte [0xa7bd], 0xff
│     ││┌─< 0000:0368      jne   0x3a3
│    ││││   0000:036a      cmp   byte [0xa7b9], 6
│    ┌────< 0000:036f      jne   0x3a3
│   │││││   0000:0371      call  word cs:[0x11a]
│   │││││   0000:0376      and   al, 1
│   ┌─────< 0000:0378      jne   0x3a3
│  ││││││   0000:037a      test  byte [0xa7c2], 0xff
│  ┌──────< 0000:037f      jne   0x3a3
│ │││││││   0000:0381      mov   ax, word cs:[0xa7a0]
│ │││││││   0000:0385      sub   ax, 0x14
│ ┌───────< 0000:0388      jb    0x3a3
│ │││││││   0000:038a      mov   byte [0xa7c0], 0xff                   ; [0xff:1]=30
│ │││││││   0000:038f      mov   byte [0xa7c1], 0
│ │││││││   0000:0394      mov   byte [0xa7be], 0
│ │││││││   0000:0399      mov   byte [0xa7b9], 8
│ │││││││   0000:039e      mov   byte [0xff75], 0x30                   ; '0'
│ │││││││                                                              ; [0x30:1]=10
│ │││││││   ; CODE XREF from fcn.00000000 @ 0x69c
│ └└└└──└─> 0000:03a3      inc   byte [0xa7bb]
│     │││   0000:03a7      and   byte [0xa7bb], 3
│     │││   0000:03ac      mov   al, byte [0xa7bb]                     ; [0xa7bb:1]=255
│     │││   0000:03af      mov   bx, 0xa41b
│     │││   0000:03b2      xlatb
│     │││   0000:03b3      mov   byte [0xa7ba], al                     ; [0xa7ba:1]=255
│     ││┌─< 0000:03b6      jmp   0x450
│    ││││   ; CODE XREF from fcn.00000000 @ 0x2ca
│     └───> 0000:03b9      inc   byte [0xa7c1]
│     │││   0000:03bd      mov   bl, byte [0xa7c1]
│     │││   0000:03c1      dec   bl
│     │││   0000:03c3      xor   bh, bh
│     │││   0000:03c5      add   bx, bx
│     │││   0000:03c7      jmp   word [bx - 0x5c39]
..
   ││││││   ; CALL XREFS from fcn.00000000 @ 0x303, 0x310
   ││││││   ; CALL XREFS from fcn.00000000 @ 0x348, 0x35a
│  ││││││   ; CODE XREF from fcn.00000000 @ 0x3b6
│  ││││││   ; CODE XREFS from str.P @ +0x3e6, +0x3f2, +0x403
│  ││││││   ; CODE XREF from fcn.00000000 @ 0x6bd
│  ┌└└└─└─> 0000:0450      push  cs
│  ╎   ││   0000:0451      pop   es
│  ╎   ││   0000:0452      mov   di, 0xa7c9
│  ╎   ││   0000:0455      mov   cx, 0x28                              ; '('
│  ╎   ││   0000:0458      mov   ax, 0xffff
│  ╎   ││   0000:045b      rep   stosw word es:[di], ax
│  ╎   ││   0000:045d      mov   bl, byte [0xa7b9]
│  ╎   ││   0000:0461      xor   bh, bh
│  ╎   ││   0000:0463      add   bx, bx
│  ╎   ││   0000:0465      mov   si, word [bx - 0x5938]
│  ╎   ││   0000:0469      mov   bp, word [bx - 0x58bc]
│  ╎   ││   0000:046d      mov   di, 0xa7cb
│  ╎   ││   0000:0470      mov   cx, 8
│  ╎   │┌─> 0000:0473      push  cx
│ ╎   │╎│   0000:0474      mov   cx, 8
│  ╎  ┌───> 0000:0477      rol   byte ds:[bp], 1
│  ╎ ┌────< 0000:047b      jae   0x47f
│ ╎ │╎│╎│   0000:047d      movsb byte es:[di], byte ptr [si]
│ ╎ │╎│╎│   0000:047e      dec   di
│  ╎ └────> 0000:047f      inc   di
│  ╎  └───< 0000:0480      loop  0x477
│ ╎   │╎│   0000:0482      inc   di
│ ╎   │╎│   0000:0483      inc   di
│ ╎   │╎│   0000:0484      inc   bp
│ ╎   │╎│   0000:0485      pop   cx
│  ╎   │└─< 0000:0486      loop  0x473
│  ╎   ││   0000:0488      mov   al, byte [0xa7ba]                     ; [0xa7ba:1]=255
│  ╎   ││   0000:048b      add   al, al
│  ╎   ││   0000:048d      mov   di, 0xa7f1
│  ╎   ││   0000:0490      cmp   byte [0xa7b9], 6
│  ╎   │┌─< 0000:0495      je    0x49e
│ ╎   │││   0000:0497      cmp   byte [0xa7b9], 8
│  ╎  ┌───< 0000:049c      jb    0x49f
│  ╎  ││└─> 0000:049e      inc   di
│  ╎  └───> 0000:049f      stosb byte es:[di], al
│  ╎   ││   0000:04a0      add   di, 0x13
│  ╎   ││   0000:04a3      inc   al
│  ╎   ││   0000:04a5      stosb byte es:[di], al
│  ╎   ││   0000:04a6      mov   byte [0xa7b6], 0
│  ╎   ││   0000:04ab      mov   ax, word [0xa7a0]                     ; [0xa7a0:2]=0xffff
│  ╎   ││   0000:04ae      mov   si, word [0xc010]
│  ╎   ││   0000:04b2      mov   di, 0xa7c9
│  ╎   ││   0000:04b5      mov   cx, 8
│ ╎   │ │   ; CODE XREF from fcn.00000000 @ 0x545
│  ╎   │┌─> 0000:04b8      push  cx
│ ╎   │╎│   0000:04b9      push  di
│ ╎   │╎│   0000:04ba      push  ax
│ ╎   │╎│   0000:04bb      call  word cs:[0x6036]
│ ╎   │╎│   0000:04c0      pop   ax
│ ╎   │╎│   0000:04c1      mov   byte [0xa7bc], bl
│  ╎  ┌───< 0000:04c5      jb    0x53b
│ ╎  ││╎│   0000:04c7      xor   cl, cl
│  ╎ ┌────> 0000:04c9      push  cx
│ ╎ ╎││╎│   0000:04ca      push  ax
│ ╎ ╎││╎│   0000:04cb      cmp   byte [di], 0xff
│  ╎┌─────< 0000:04ce      je    0x531
│ ╎│╎││╎│   0000:04d0      mov   word [si], ax
│ ╎│╎││╎│   0000:04d2      mov   al, byte [0xa7a2]                     ; [0xa7a2:1]=255
│ ╎│╎││╎│   0000:04d5      add   al, cl
│ ╎│╎││╎│   0000:04d7      and   al, 0x3f
│ ╎│╎││╎│   0000:04d9      mov   byte [si + 2], al
│ ╎│╎││╎│   0000:04dc      mov   al, byte [0xa7bc]                     ; [0xa7bc:1]=255
│ ╎│╎││╎│   0000:04df      mov   byte [si + 3], al
│ ╎│╎││╎│   0000:04e2      mov   al, byte [di]
│ ╎│╎││╎│   0000:04e4      mov   byte [si + 6], al
│ ╎│╎││╎│   0000:04e7      mov   ah, al
│ ╎│╎││╎│   0000:04e9      add   al, al
│ ╎│╎││╎│   0000:04eb      sbb   al, al
│ ╎│╎││╎│   0000:04ed      and   al, 0x60
│ ╎│╎││╎│   0000:04ef      mov   bl, ah
│ ╎│╎││╎│   0000:04f1      shr   bl, 1
│ ╎│╎││╎│   0000:04f3      shr   bl, 1
│ ╎│╎││╎│   0000:04f5      shr   bl, 1
│ ╎│╎││╎│   0000:04f7      shr   bl, 1
│ ╎│╎││╎│   0000:04f9      and   bl, 7
│ ╎│╎││╎│   0000:04fc      or    al, bl
│ ╎│╎││╎│   0000:04fe      mov   byte [si + 4], al
│ ╎│╎││╎│   0000:0501      mov   byte [si + 5], 0
│ ╎│╎││╎│   0000:0505      test  byte [0xa7b7], 0xff
│ ┌───────< 0000:050a      je    0x510
│ ╎│╎││╎│   0000:050c      or    byte [si + 5], 0x20                   ; [0x20:1]=10 ; "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n>\xa0\x8e\xa0ޠ.\xa1~\xa1Ρ\U00000005\xa2\U00000002"
│ └───────> 0000:0510      push  di
│ ╎│╎││╎│   0000:0511      mov   ax, word [si + 2]
│ ╎│╎││╎│   0000:0514      call  word cs:[0x6028]
│ ╎│╎││╎│   0000:0519      mov   bl, byte [0xa7b6]
│ ╎│╎││╎│   0000:051d      xor   bh, bh
│ ╎│╎││╎│   0000:051f      mov   al, bl
│ ╎│╎││╎│   0000:0521      or    al, 0x80
│ ╎│╎││╎│   0000:0523      xchg  byte [di], al
│ ╎│╎││╎│   0000:0525      mov   byte [bx - 0x12e0], al
│ ╎│╎││╎│   0000:0529      pop   di
│ ╎│╎││╎│   0000:052a      add   si, 0x10
│ ╎│╎││╎│   0000:052d      inc   byte [0xa7b6]
│  ╎└─────> 0000:0531      inc   di
│ ╎ ╎││╎│   0000:0532      pop   ax
│ ╎ ╎││╎│   0000:0533      pop   cx
│ ╎ ╎││╎│   0000:0534      inc   cl
│ ╎ ╎││╎│   0000:0536      cmp   cl, 0xa
│  ╎ └────< 0000:0539      jne   0x4c9
│  ╎  └───> 0000:053b      inc   ax
│ ╎   │╎│   0000:053c      pop   di
│ ╎   │╎│   0000:053d      add   di, 0xa
│ ╎   │╎│   0000:0540      pop   cx
│  ╎  ┌───< 0000:0541      loop  0x545
│  ╎ ┌────< 0000:0543      jmp   0x548
│  ╎ │└─└─< 0000:0545      jmp   0x4b8
│  ╎ │ ││   ; CODE XREF from fcn.00000000 @ 0x543
│  ╎ └────> 0000:0548      call  fcn.000005fe                          ; fcn.000005fe
│  ╎   ││   0000:054b      mov   word [si], 0xffff                     ; [0xffff:2]=0xffff
│  ╎   ││   0000:054f      test  byte [0xa7c2], 0xff
│  ╎   │┌─< 0000:0554      jne   0x557
│ ╎   │││   0000:0556      ret
│  ╎   │└─> 0000:0557      test  byte [0xa7c8], 0xff
│  ╎   │┌─< 0000:055c      jne   0x5ca
│ ╎   │││   0000:055e      cmp   byte [0xa7c3], 0x12
│  ╎  ┌───< 0000:0563      jae   0x575
│ ╎  ││││   0000:0565      mov   byte [0xa7c8], 0xff                   ; [0xff:1]=30
│ ╎  ││││   0000:056a      mov   byte [0xa7c6], 3
│ ╎  ││││   0000:056f      mov   byte [0xff75], 0x32                   ; '2'
│ ╎  ││││                                                              ; [0x32:1]=10
│ ╎  ││││   0000:0574      ret
│  ╎  └───> 0000:0575      mov   bl, byte [0xa7c7]
│ ╎   │││   0000:0579      xor   bh, bh
│ ╎   │││   0000:057b      add   bx, bx
│ ╎   │││   0000:057d      mov   al, byte [bx - 0x5a28]
│ ╎   │││   0000:0581      add   byte [0xa7c3], al
│ ╎   │││   0000:0585      mov   al, byte [bx - 0x5a27]
│ ╎   │││   0000:0589      add   byte [0xa7c5], al
│ ╎   │││   0000:058d      cmp   byte [0xa7c7], 0x10
│ ╎   │││   0000:0592      adc   byte [0xa7c7], 0
│ ╎   │││   0000:0597      mov   al, byte [0xa7c6]                     ; [0xa7c6:1]=255
│ ╎   │││   0000:059a      inc   al
│ ╎   │││   0000:059c      cmp   al, 3
│  ╎  ┌───< 0000:059e      jb    0x5a2
│ ╎  ││││   0000:05a0      xor   al, al
│  ╎  └───> 0000:05a2      mov   byte [0xa7c6], al                     ; [0xa7c6:1]=255
│ ╎   │││   0000:05a5      cmp   byte [0xa7c7], 9
│  ╎  ┌───< 0000:05aa      jne   0x5b1
│ ╎  ││││   0000:05ac      mov   byte [0xff75], 0x31                   ; '1'
│ ╎  ││││                                                              ; [0x31:1]=10
│  ╎  └───> 0000:05b1      cmp   byte [0xa7c7], 0xc
│  ╎  ┌───< 0000:05b6      jne   0x5bd
│ ╎  ││││   0000:05b8      mov   byte [0xff75], 0x31                   ; '1'
│ ╎  ││││                                                              ; [0x31:1]=10
│  ╎  └───> 0000:05bd      cmp   byte [0xa7c7], 0xf
│  ╎  ┌───< 0000:05c2      jne   0x5c9
│ ╎  ││││   0000:05c4      mov   byte [0xff75], 0x31                   ; '1'
│ ╎  ││││                                                              ; [0x31:1]=10
│  ╎  └───> 0000:05c9      ret
│  ╎   │└─> 0000:05ca      inc   byte [0xa7c6]
│  ╎   ││   0000:05ce      cmp   byte [0xa7c6], 6
│  ╎   │┌─< 0000:05d3      jae   0x5d6
│ ╎   │││   0000:05d5      ret
│  ╎   │└─> 0000:05d6      mov   byte [0xa7c2], 0
│  ╎   ││   0000:05db      ret
..
   ╎   ││   ; CALL XREF from fcn.00000000 @ 0x548
   ╎   ││   ; CALL XREF from fcn.00000000 @ 0x2a0
│  ╎   ││   ; CODE XREF from fcn.00000000 @ 0x2c0
│  ╎   └──> 0000:0672      cmp   byte [0xa7b8], 0x28                   ; arg3
│  ╎    ┌─< 0000:0677      jae   0x6c6
│ ╎    ││   0000:0679      mov   byte [0xff2f], 0xff                   ; [0xff:1]=30
│ ╎    ││   0000:067e      inc   byte [0xa7b8]
│ ╎    ││   0000:0682      cmp   byte [0xa7b8], 0xa
│  ╎   ┌──< 0000:0687      jae   0x6a9
│ ╎   │││   0000:0689      mov   al, byte [0xa7b8]                     ; [0xa7b8:1]=255
│ ╎   │││   0000:068c      mov   bx, 0xa69b
│ ╎   │││   0000:068f      xlatb
│ ╎   │││   0000:0690      mov   byte [0xa7b9], al                     ; [0xa7b9:1]=255
│ ╎   │││   0000:0693      cmp   al, 3
│  ╎  ┌───< 0000:0695      jb    0x69c
│ ╎  ││││   0000:0697      mov   byte [0xff75], 0x33                   ; '3'
│ ╎  ││││                                                              ; [0x33:1]=10
│ ────└───> 0000:069c      jmp   0x3a3
..
│  ╎   └──> 0000:06a9      mov   ah, byte [0xa7b8]
│ ╎    ││   0000:06ad      mov   al, 6
│ ╎    ││   0000:06af      cmp   ah, 6
│  ╎   ┌──< 0000:06b2      jae   0x6ba
│ ╎   │││   0000:06b4      mov   al, ah
│ ╎   │││   0000:06b6      mov   bx, 0xa6bc
│ ╎   │││   0000:06b9      xlatb
│  ╎   └──> 0000:06ba      mov   byte [0xa7ba], al                     ; [0xa7ba:1]=255
│  └──────< 0000:06bd      jmp   0x450
..
│       └─> 0000:06c6      mov   byte [0xff30], 0xff                   ; [0xff:1]=30
└       │   0000:06cb      ret
```

### Function 0x0000042d
```asm
; CALL XREFS from fcn.00000000 @ 0x303, 0x310
┌ fcn.0000042d();
│           0000:042d      mov   ax, word [0xa7a0]                     ; [0xa7a0:2]=0xffff
│           0000:0430      dec   ax
│           0000:0431      mov   bx, 0xe
│           0000:0434      sub   bx, ax
│           0000:0436      mov   word [0xa7a0], ax                     ; [0xa7a0:2]=0xffff
│           0000:0439      cmc
│       ┌─< 0000:043a      jae   0x43d
│       │   0000:043c      ret
│       └─> 0000:043d      clc
└           0000:043e      ret
```

### Function 0x0000043f
```asm
; CALL XREFS from fcn.00000000 @ 0x348, 0x35a
┌ fcn.0000043f();
│           0000:043f      mov   ax, word [0xa7a0]                     ; [0xa7a0:2]=0xffff
│           0000:0442      inc   ax
│           0000:0443      mov   bx, 0x32                              ; '2'
│           0000:0446      sub   bx, ax
│       ┌─< 0000:0448      jae   0x44b
│       │   0000:044a      ret
│       └─> 0000:044b      mov   word [0xa7a0], ax                     ; [0xa7a0:2]=0xffff
│           0000:044e      clc
└           0000:044f      ret
```

### Function 0x000005fe
```asm
; CALL XREF from fcn.00000000 @ 0x548
┌ fcn.000005fe(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:05fe      test  byte [0xa7c2], 0xff
│       ┌─< 0000:0603      jne   0x606
│       │   0000:0605      ret
│       └─> 0000:0606      mov   ax, word [0xa7c3]                     ; [0xa7c3:2]=0xffff
│           0000:0609      push  ax
│           0000:060a      call  word cs:[0x6036]
│           0000:060f      pop   ax
│       ┌─< 0000:0610      jae   0x613
│       │   0000:0612      ret
│       └─> 0000:0613      mov   word [si], ax
│           0000:0615      mov   al, byte [0xa7c5]                     ; [0xa7c5:1]=255
│           0000:0618      mov   byte [si + 2], al
│           0000:061b      mov   byte [si + 3], bl
│           0000:061e      mov   byte [si + 4], 0x26                   ; '&'
│                                                                      ; [0x26:1]=10 ; "\n\n\n\n\n\n\n\n\n\n\n\n\n\n>\xa0\x8e\xa0ޠ.\xa1~\xa1Ρ\U00000005\xa2\U00000002"
│           0000:0622      mov   byte [si + 5], 0
│           0000:0626      mov   al, byte [0xa7c6]                     ; [0xa7c6:1]=255
│           0000:0629      mov   byte [si + 6], al
│           0000:062c      mov   ax, word [si + 2]
│           0000:062f      call  word cs:[0x6028]
│           0000:0634      mov   bl, byte [0xa7b6]
│           0000:0638      xor   bh, bh
│           0000:063a      mov   al, bl
│           0000:063c      or    al, 0x80
│           0000:063e      xchg  byte [di], al
│           0000:0640      mov   byte [bx - 0x12e0], al                ; arg3
│           0000:0644      add   si, 0x10
└           0000:0647      ret
```

### Function 0x00000648
```asm
; CALL XREF from fcn.00000000 @ 0x2a0
┌ fcn.00000648(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0648      mov   ax, word [0xa7a3]                     ; [0xa7a3:2]=0xffff
│           0000:064b      sub   ax, bx                                ; arg3
│       ┌─< 0000:064d      jae   0x651
│       │   0000:064f      xor   ax, ax
│       └─> 0000:0651      mov   word [0xa7a3], ax                     ; [0xa7a3:2]=0xffff
│           0000:0654      mov   bx, ax
│           0000:0656      push  ax
│           0000:0657      call  word cs:[0x200c]
│           0000:065c      pop   ax
│           0000:065d      or    ax, ax
│       ┌─< 0000:065f      je    0x662
│       │   0000:0661      ret
│       └─> 0000:0662      mov   byte [0xa7b8], 0
│           0000:0667      mov   byte [0xa7c2], 0
│           0000:066c      mov   byte [0xff2e], 0xff                   ; [0xff:1]=30
└           0000:0671      ret
```

## Cross-References (callers)
```json
  0x0000042d:
[{"from":771,"to":1069,"type":"CALL"},{"from":784,"to":1069,"type":"CALL"}]
  0x0000043f:
[{"from":840,"to":1087,"type":"CALL"},{"from":858,"to":1087,"type":"CALL"}]
  0x000005fe:
[{"from":1352,"to":1534,"type":"CALL"}]
  0x00000648:
[{"from":672,"to":1608,"type":"CALL"}]
```