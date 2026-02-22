# PLAYER_ADVANCED - Analysis

**Source:** `chunk_06.bin`  
**Size:** 7.1 KB  
**Functions:** 55  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000  106 4166 -> 1246 fcn.00000000
0x0000010c    1 2            fcn.0000010c
0x00000243   17 174          fcn.00000243
0x000002f1   15 109          fcn.000002f1
0x0000035e    3 107          fcn.0000035e
0x000003c9    1 5            fcn.000003c9
0x000003ce   63 836  -> 733  fcn.000003ce
0x000005ea    9 35           fcn.000005ea
0x0000060d   10 68           fcn.0000060d
0x00000712    5 40           fcn.00000712
0x00000747    7 62           fcn.00000747
0x00000872    6 34           fcn.00000872
0x00000894    7 28           fcn.00000894
0x000008b0    1 3            fcn.000008b0
0x000008b3    5 68           fcn.000008b3
0x000008f7    3 69           fcn.000008f7
0x0000093c    3 24           fcn.0000093c
0x00000954    3 37           fcn.00000954
0x00000979   13 198          fcn.00000979
0x00000a7b    6 29           fcn.00000a7b
0x00000a98    1 4            fcn.00000a98
0x00000a9c    3 10           fcn.00000a9c
0x00000aa6    1 3            fcn.00000aa6
0x00000aa9    1 10           fcn.00000aa9
0x00000ab3    1 36           fcn.00000ab3
0x00000af1    9 47           fcn.00000af1
0x00000b20    4 37           fcn.00000b20
0x00000c2f    4 35           fcn.00000c2f
0x00000c52    6 36           fcn.00000c52
0x00000c76    1 33           fcn.00000c76
0x00000cb9   15 123          fcn.00000cb9
0x00000d34    3 88           fcn.00000d34
0x00000da2    1 48           fcn.00000da2
0x00000df3    1 47           fcn.00000df3
0x00001046    5 42           fcn.00001046
0x0000116d    9 71           fcn.0000116d
0x000011c0    1 35           fcn.000011c0
0x000011e3    3 38           fcn.000011e3
0x00001228   15 69           fcn.00001228
0x0000126d   16 94           fcn.0000126d
0x0000131b    8 30           fcn.0000131b
0x00001339    1 15           fcn.00001339
0x00001348   25 293          fcn.00001348
0x0000146d    1 18           fcn.0000146d
0x0000147f    5 44           fcn.0000147f
0x000014ab    5 44           fcn.000014ab
0x000014d7    5 64           fcn.000014d7
0x0000151e    3 31           fcn.0000151e
0x00001596   11 213          fcn.00001596
0x00001699   23 275          fcn.00001699
0x000017c7    3 34           fcn.000017c7
0x000017e9    3 34           fcn.000017e9
0x0000180b    3 49           fcn.0000180b
0x0000183c   67 842  -> 800  fcn.0000183c
0x00001b1e    1 42           fcn.00001b1e
```

## Strings
```
nth      paddr      vaddr len size section type   string                                        
------------------------------------------------------------------------------------------------
  0 0x00000013 0x00000013  11   11         ascii  uDs9uitBp{t
  1 0x00000227 0x00000227   4    5         ascii  \f$\f<
  2 0x00000312 0x00000312   4    4         ascii  u%BB
  3 0x00000363 0x00000363   4    4         ascii  D\aVP
  4 0x000003fc 0x000003fc   5    6         ascii  V|<\br
  5 0x00000441 0x00000441   6    7         ascii  6X|</u
  6 0x000004c9 0x000004c9   5    6         ascii  S|< t
  7 0x000004f4 0x000004f4   6    6         ascii  >T|\bu 
  8 0x0000051f 0x0000051f   5    6         ascii  >W|\as
  9 0x00000529 0x00000529   5    6         ascii  >V|\bu
 10 0x00000533 0x00000533   4    4         ascii  .V|\a
 11 0x0000055f 0x0000055f   4    4         ascii  [YQS
 12 0x00000614 0x00000614   5    6         ascii  x4</u
 13 0x0000062f 0x0000062f   4    4         ascii  Y< u
 14 0x00000640 0x00000640   4    4         ascii  Z^Yr
 15 0x0000073a 0x0000073a   4    5         ascii  Take
 16 0x0000073f 0x0000073f   7    8         ascii  No Take
 17 0x0000098f 0x0000098f  10   11         ibm037 &»0×È@vucF
 18 0x00000a46 0x00000a46   5    6         ascii  \b\n\a\t\v
 19 0x00000a63 0x00000a63   6    7         ascii   "$!#%
 20 0x00000a6a 0x00000a6a  11   12         ascii  &(\e') *,!+-
 21 0x00000ab2 0x00000ab2   4    6         utf8   àE|$ blocks=Latin-1 Supplement,Basic Latin
 22 0x00000ad8 0x00000ad8   9   10         ascii  \tYMPD.BIN
 23 0x00000ae3 0x00000ae3   9   10         ascii  \nCKPD.BIN
 24 0x00000afe 0x00000afe   5    6         utf8   ì"\au\n blocks=Latin-1 Supplement,Basic Latin
 25 0x00000b45 0x00000b45   4    4         ascii  Qklk
 26 0x00000b91 0x00000b91   4    5         ascii  t\vJ9
 27 0x00000c9b 0x00000c9b   4    5         ascii  LIFE
 28 0x00000ca3 0x00000ca3   6    6         ascii  ALMAS\r
 29 0x00000cac 0x00000cac   5    5         ascii  GOLD\r
 30 0x00000cb4 0x00000cb4   5    5         ascii  PLACE
 31 0x00000d7d 0x00000d7d   7    7         ascii  X:&F|t\a
 32 0x00000d8e 0x00000d8e   8    9         ascii  MMAN.GRP
 33 0x00000d99 0x00000d99   8    9         ascii  CMAN.GRP
 34 0x00000dd3 0x00000dd3   9   10         ascii  "CPAT.GRP
 35 0x00000dde 0x00000dde   9   10         ascii  #MPAT.GRP
 36 0x00000de9 0x00000de9   9   10         ascii  $DPAT.GRP
 37 0x00000e23 0x00000e23   9   10         ascii   TMAN.GRP
 38 0x00000e51 0x00000e51   5    6         ascii  t\fHH9
 39 0x00000f0c 0x00000f0c  12   13         ascii  \vKINGPRO.BIN
 40 0x00000f1a 0x00000f1a  12   13         ascii  \fOMOYPRO.BIN
 41 0x00000f29 0x00000f29  11   12         ascii  KENJPRO.BIN
 42 0x00000f36 0x00000f36  12   13         ascii  \rARMRPRO.BIN
 43 0x00000f45 0x00000f45  11   12         ascii  DRUGPRO.BIN
 44 0x00000f53 0x00000f53  11   12         ascii  CHURPRO.BIN
 45 0x00000f61 0x00000f61  11   12         ascii  BANKPRO.BIN
 46 0x00000f6f 0x00000f6f  11   12         ascii  INNAPRO.BIN
 47 0x00000ff2 0x00000ff2   9   10         ascii  2UGM2.MSD
 48 0x00001009 0x00001009   4    4         ascii  ,\n$?
 49 0x0000106d 0x0000106d   5    6         utf8   _^Ë6L blocks=Basic Latin,Latin-1 Supplement
 50 0x00001112 0x00001112   4    4         utf8   [SP+
 51 0x0000113e 0x0000113e   6    6         ascii  u\f< t\b
 52 0x00001233 0x00001233   9   10         ascii  t$< t </t
 53 0x00001285 0x00001285   7    8         ascii  <\ft;</u
 54 0x000012ac 0x000012ac   4    4         ascii  QVRR
 55 0x000012ba 0x000012ba   4    4         ascii  Z^Yr
 56 0x00001377 0x00001377   4    5         utf8   øSsP blocks=Latin-1 Supplement,Basic Latin
 57 0x00001469 0x00001469   5    6         utf8   [^_ð\n blocks=Basic Latin,Latin-1 Supplement
 58 0x000014a4 0x000014a4  11   12         ibm037 Ê6$ßSVC^\n6T
 59 0x00001534 0x00001534   4    4         ascii  8 ZY
 60 0x00001538 0x00001538   5    5         ibm037 ÚBSUC
 61 0x0000153f 0x0000153f   4    4         ascii  QVWP
 62 0x0000166b 0x0000166b  19   19         ascii  User File\rNot Found
 63 0x00001681 0x00001681   8    9         ascii  GAME.BIN
 64 0x0000168e 0x0000168e  10   11         ascii  STDPLY.BIN
 65 0x000017ac 0x000017ac   5    6         ascii  *.usr
 66 0x000017b2 0x000017b2  11   11         ascii  Input name:
 67 0x000017be 0x000017be   8    9         ascii  Re-Start
 68 0x0000180d 0x0000180d   4    4         ascii  QVP.
 69 0x00001832 0x00001832  12   13         ibm037 ìÚ{ÚD;ßSKCYh
 70 0x00001913 0x00001913  10   11         ibm037 ~-@JYJY«8«
 71 0x00001966 0x00001966   4    5         ascii  g|`u
 72 0x00001aab 0x00001aab  20   21         ibm037 ßSH;¬Cî&~-@JYJY«8µ;@
 73 0x00001ae6 0x00001ae6   5    6         ascii  >^|\br
 74 0x00001b1c 0x00001b1c  13   14         ibm037 ;Cî~-@JYJY«8«
 75 0x00001bf8 0x00001bf8   8    9         ascii  \a\a\a\a\a\a\a\a
 76 0x00001c05 0x00001c05  10   11         ascii  \a\b\b\b\b\b\b\b\b\b
 77 0x00001c10 0x00001c10  17   18         ascii  \b\b\b\b\b\b\b\b\b\b\a\b\b\b\b\b\a
 78 0x00001c25 0x00001c25  10   11         ascii  \a\a\b\b\a\b\a\a\b\b
 79 0x00001c33 0x00001c33   7    8         ascii  \b\a\a\b\b\b\a
 80 0x00001c3b 0x00001c3b   6    7         ascii  \b\b\b\a\a\a
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│    ┌────< 0000:0000      jge   0x1e
│    │      ; DATA XREF from fcn.0000116d @ 0x1189
│    │      ; DATA XREF from fcn.00001348 @ 0x13ed
│    │      ; DATA XREF from fcn.0000183c @ 0x1a2f
│    │      0000:0002      add   byte [bx + si], al                    ; arg3
│    │      ; DATA XREFS from fcn.00000000 @ 0x1d5, 0x22a
│    │      ; DATA XREFS from fcn.0000183c @ 0x199c, 0x19ac
│    │      0000:0004      pushaw
│    │      0000:0006      push  ds
│    │      0000:0007      pushaw
│    │      ; DATA XREF from fcn.00000000 @ 0x231
│    │      ; DATA XREF from fcn.000003ce @ 0x3fe
│    │      ; DATA XREFS from fcn.0000183c @ 0x1952, 0x1982, 0x1992
│    │      0000:0008      insb  byte es:[di], dx
│    │ ┌──< 0000:0009      jo    0xffffffd2
│    │ │    ; DATA XREF from fcn.000008f7 @ 0x900
│    │ │    ; DATA XREF from fcn.00000ab3 @ 0xab8
│    │ │    ; DATA XREF from fcn.00000d34 @ 0xd48
│    │ │    ; DATA XREF from fcn.00000da2 @ 0xda2
│    │┌───< 0000:000b      jb    0xffffffe0
│   ││ │    ; XREFS: DATA 0x0000067d  DATA 0x00000fe4  DATA 0x000010a7  
│   ││ │    ; XREFS: DATA 0x0000123d  DATA 0x00001292  DATA 0x0000194d  
│    ││┌──< 0000:000d      je    0x7f
│   ││││    ; DATA XREFS from fcn.00000b20 @ +0x61, +0xe1
│   ││││    ; DATA XREF from fcn.00001046 @ +0x6f
│   ││││    ; DATA XREF from fcn.0000126d @ +0x61
│   ││││┌─< 0000:000f      jne   0xffffff9a
│  ││││ │   ; DATA XREF from fcn.00001046 @ +0x76
│   ││││┌─< 0000:0011      jne   0x2d
│  ││││││   ; DATA XREF from fcn.00001046 @ +0x7d
│  ││││││   ;-- str.uDs9uitBp_t:
│  ││││││   0000:0013     .string "uDs9uitBp{t" ; len=11
│  ││││││   ; DATA XREF from fcn.00001046 @ +0x88
│  ││││││   0000:0015     .string "uDs9uitBp{t" ; len=11
│  ││││││   ; DATA XREF from fcn.0000035e @ 0x36f
│    └────> 0000:001e      cmpsw word [si], word ptr es:[di]
│   │││││   ; DATA XREF from fcn.00001348 @ 0x1372
│   │││││   ; DATA XREF from fcn.0000183c @ 0x18b3
│   │││││   0000:001f      je    0xffffffb3
│   │││││   ; DATA XREF from fcn.00000000 @ 0xd8
│   │││││   ; DATA XREF from fcn.00000979 @ +0xec
│     ┌───< 0000:0021  ~   jne   0x51
│  ││││││   ; CODE XREF from fcn.00000000 @ 0xfee
│    ┌────> 0000:0022  ~   mov   byte cs:[0x7c43], 0xff                ; [0xff:1]=46
│ ╎││││││   ; DATA XREF from fcn.00000000 @ 0x845
│ ╎││││││   0000:0023      mov   byte [0x7c43], 0xff                   ; [0x7c43:1]=255
│ ╎││││││   ; DATA XREF from fcn.0000035e @ 0x367
│ ╎││││││   ; DATA XREFS from fcn.00000cb9 @ 0xcc3, 0xd01
│ ╎││││││   ; DATA XREFS from fcn.00000000 @ 0xe68, 0xee5
│   ┌─────< 0000:0028      jmp   0x30
..
│ ╎││││││   ; DATA XREF from fcn.000017c7 @ 0x17d2
│ │╎││││└─> 0000:002d      inc   bx
│ │╎│││││   ; DATA XREF from fcn.00000df3 @ 0xe18
│ │╎│││││   ; DATA XREF from fcn.00001228 @ 0x125f
│ │╎│││││   ; DATA XREF from fcn.00001596 @ 0x15db
│ │╎│││││   0000:002e      jl    0x30
│ │╎│││││   ; XREFS: CODE 0x00000028  DATA 0x00000bb4  DATA 0x00000be0  
│ │╎│││││   ; XREFS: DATA 0x00000c27  DATA 0x00001309  DATA 0x00001312  
│   └─────> 0000:0030      mov   ds, word cs:[0xff2c]
│  ╎│││││   0000:0035      mov   si, 0x4100
│  ╎│││││   ; DATA XREF from fcn.00001046 @ +0xd3
│  ╎│││││   0000:0038      mov   ax, cs
│  ╎│││││   0000:003a      add   ax, 0x2000
│  ╎│││││   0000:003d      mov   es, ax
│  ╎│││││   ; DATA XREF from fcn.00000000 @ 0x100b
│  ╎│││││   0000:003f      mov   di, 0x7000
│  ╎│││││   ; DATA XREFS from fcn.00000000 @ 0xe4, 0xf0
│  ╎│││││   0000:0042      mov   cx, 0xa4
│  ╎│││││   ; DATA XREF from fcn.00000000 @ 0xf83
│  ╎│││││   0000:0045      call  word cs:[0x3026]
│  ╎│││││   ; DATA XREF from fcn.000003ce @ 0x548
│  ╎│││││   0000:004a      cli
│  ╎│││││   0000:004b      mov   sp, 0x2000
│  ╎│││││   ; DATA XREF from fcn.00000747 @ 0x75b
│  ╎│││││   0000:004e      sti
│  ╎│││││   ; DATA XREF from fcn.00000df3 @ +0x127
│  ╎│││││   0000:004f      push  cs
│  ╎│││││   0000:0050      pop   ds
│    ╎└───> 0000:0051      call  fcn.00000df3                          ; fcn.00000df3
│   ╎││││   ; DATA XREF from fcn.000003ce @ 0x545
│   ╎││││   0000:0054      mov   byte [0xe7], 0
│   ╎││││   0000:0059  ~   test  byte [0x49], 0xff                     ; [0x49:1]=48
│   ╎││││   0000:005d      push  word [si + 5]
│  ╎│││││   ; XREFS: DATA 0x000016e5  DATA 0x00001714  DATA 0x0000179b  
│  ╎│││││   ; XREFS: DATA 0x000017fd  DATA 0x00001886  DATA 0x000018e3  
│  ╎│││││   0000:0060      mov   byte [0xe8], 0
│   ╎│││└─> 0000:0065      call  word cs:[0x2002]
│   ╎││││   0000:006a      mov   si, word [0xc000]
│   ╎││││   0000:006e      inc   si
│   ╎│││┌─> 0000:006f      lodsb al, byte [si]
│  ╎│││╎│   0000:0070      inc   al
│   ╎│││└─< 0000:0072      jne   0x6f
│   ╎││││   0000:0074      lodsb al, byte [si]
│   ╎││││   0000:0075      mov   byte [0x7c45], al                     ; [0x7c45:1]=255
│   ╎││││   0000:0078      lodsb al, byte [si]
│   ╎││││   0000:0079      mov   byte [0x7c46], al                     ; [0x7c46:1]=255
│   ╎││││   0000:007c  ~   mov   byte [0x7c44], 0                      ; [0x7c44:1]=255
│   ╎││││   ; DATA XREF from fcn.00000243 @ 0x2de
│   ╎││││   ; DATA XREF from fcn.0000035e @ 0x35e
│   ╎││││   ; DATA XREFS from fcn.00000b20 @ +0x4a, +0x79, +0xb1
│    ╎│└──> 0000:007f      jl    0x81
│    ╎│││   ; DATA XREF from fcn.000003ce @ 0x44b
│    ╎│││   0000:0081  ~   test  byte [0xe8], 0xff                     ; [0xe8:1]=22
│    ╎│││   0000:0082      push  es
│    ╎│││   ; XREFS: DATA 0x00000250  DATA 0x000002f1  DATA 0x00000452  
│    ╎│││   ; XREFS: DATA 0x00000787  DATA 0x000007a3  DATA 0x000007c3  
│    ╎│││   ; XREFS: DATA 0x000007fa  DATA 0x00000816  DATA 0x00000836  
│    ╎│││   ; XREFS: DATA 0x00000954  DATA 0x0000097d  DATA 0x000009a1  
│    ╎│││   ; XREFS: DATA 0x00000bbf  DATA 0x00000cb9  DATA 0x00000e35  
│    ╎│││   0000:0083      call  0xffffff86
│   ╎││ │   ; DATA XREF from fcn.00000000 @ 0xfa6
│   ╎││ │   ; DATA XREF from fcn.0000151e @ +0x61
│    ╎││┌─< 0000:0086      jne   0xbb
│   ╎││││   0000:0088      test  byte [0x7c45], 1                      ; [0x7c45:1]=255
│    ╎│┌──< 0000:008d      je    0x9b
│  ╎│││││   0000:008f      test  byte [0x7c43], 0xff                   ; [0x7c43:1]=255
│    ╎┌───< 0000:0094      jne   0x9b
│ ╎││││││   0000:0096  ~   mov   byte [0x7c44], 0xff                   ; [0x7c44:1]=255
│ ╎││││││   0000:0098      inc   sp
│ ╎││││││   0000:0099      jl    0x9a
│    ╎└└──> 0000:009b      call  fcn.00000ab3                          ; fcn.00000ab3
│   ╎││││   0000:009e      call  fcn.00000aa6                          ; fcn.00000aa6
│   ╎││││   ; DATA XREF from fcn.000003ce @ 0x6f9
│   ╎││││   0000:00a1      call  word cs:[0x3002]
│   ╎││││   0000:00a6      test  byte [0x49], 0xff                     ; [0x49:1]=48
│    ╎│┌──< 0000:00ab      jne   0xbb
│  ╎│││││   0000:00ad      push  ds
│  ╎│││││   0000:00ae      mov   ds, word cs:[0xff2c]
│  ╎│││││   0000:00b3      mov   si, 0x3000
│  ╎│││││   0000:00b6      xor   ax, ax
│  ╎│││││   0000:00b8      int   0x60
│  ╎│││││   0000:00ba      pop   ds
│ ╎ │││││   ; CODE XREFS from fcn.00000cb9 @ 0xcf6, 0xd31
│   ┌─┌└└─> 0000:00bb      cli
│  ╎╎╎│││   0000:00bc      mov   sp, 0x2000
│  ╎╎╎│││   0000:00bf      sti
│  ╎╎╎│││   ; DATA XREFS from fcn.00000243 @ 0x28f, 0x2ce
│  ╎╎╎│││   0000:00c0      push  cs
│  ╎╎╎│││   0000:00c1      pop   ds
│  ╎╎╎│││   ; DATA XREF from fcn.00000000 @ 0x1c5
│  ╎╎╎│││   ; DATA XREF from fcn.00000243 @ 0x26c
│  ╎╎╎│││   ; DATA XREF from fcn.000002f1 @ 0x30d
│  ╎╎╎│││   ; DATA XREF from fcn.0000035e @ 0x377
│  ╎╎╎│││   ; DATA XREF from fcn.00000979 @ 0xa20
│  ╎╎╎│││   0000:00c2      call  fcn.00000af1                          ; fcn.00000af1
│  ╎╎╎│││   0000:00c5      xor   al, al
│  ╎╎╎│││   0000:00c7      mov   byte [0xff1d], al                     ; [0xff1d:1]=255
│  ╎╎╎│││   0000:00ca      mov   byte [0xff1e], al                     ; [0xff1e:1]=255
│  ╎╎╎│││   0000:00cd      mov   byte [0xe4], al
│  ╎╎╎│││   ; DATA XREFS from fcn.00001046 @ +0x39, +0x115
│  ╎╎╎│││   ; DATA XREF from fcn.0000126d @ 0x12b6
│  ╎╎╎│││   0000:00d0      mov   byte [0x9f], al
│  ╎╎╎│││   0000:00d3      mov   bx, 0x204
│  ╎╎╎│││   0000:00d6      xor   al, al
│  ╎╎╎│││   0000:00d8      mov   ch, 0x21                              ; '!'
│  ╎╎╎│││   0000:00da      call  word cs:[0x2004]
│  ╎╎╎│││   0000:00df      mov   bx, 0x21c
│  ╎╎╎│││   0000:00e2      xor   al, al
│  ╎╎╎│││   0000:00e4      mov   ch, 0x42                              ; 'B'
│  ╎╎╎│││   0000:00e6      call  word cs:[0x2004]
│  ╎╎╎│││   0000:00eb      mov   bx, 0x481c
│  ╎╎╎│││   0000:00ee      xor   al, al
│  ╎╎╎│││   0000:00f0      mov   ch, 0x42                              ; 'B'
│  ╎╎╎│││   0000:00f2      call  word cs:[0x2004]
│  ╎╎╎│││   0000:00f7      call  word cs:[0x2012]
│  ╎╎╎│││   0000:00fc      call  fcn.00000c76                          ; fcn.00000c76
│  ╎╎╎│││   ; XREFS(31)
│  ╎╎╎│││   0000:00ff      call  word cs:[0x2006]
│  ╎╎╎│││   0000:0104      call  word cs:[0x2008]
│  ╎╎╎│││   ; XREFS: CALL 0x00000190  CALL 0x00000ad1  CALL 0x00000d41  
│  ╎╎╎│││   ; XREFS: CALL 0x00000d5c  CALL 0x00000db7  CALL 0x00000e00  
│  ╎╎╎│││   ; XREFS: CALL 0x00000e9a  CALL 0x00000fae  CALL 0x00000fc0  
│  ╎╎╎│││   ; XREFS: CALL 0x00000fd9  CALL 0x00001020  CODE 0x00001041  
│  ╎╎╎│││   ; XREFS: CALL 0x000015a4  CALL 0x00001601  CALL 0x00001616  
│  ╎╎╎│││   ;-- (0x0000010c) fcn.0000010c:
│  ╎╎╎│││   0000:0109  ~   call  word cs:[0x2014]
│  ╎╎╎│││   0000:010e      call  word cs:[0x2016]
│  ╎╎╎│││   0000:0113      test  byte [0x9d], 0xff                     ; [0x9d:1]=10
│ ╎╎╎││ │   ; CALL XREF from fcn.000008b3 @ 0x8db
│  ╎╎╎││┌─< 0000:0118      je    0x12b
│ ╎╎╎││││   0000:011a      mov   bx, 0xaa1c
│ ╎╎╎││││   0000:011d      xor   al, al
│ ╎╎╎││││   0000:011f      mov   ch, 0x17
│ ╎╎╎││││   0000:0121      call  word cs:[0x2004]
│ ╎╎╎││││   0000:0126      call  word cs:[0x2018]
│  ╎╎╎││└─> 0000:012b      test  byte [0x93], 0xff                     ; [0x93:1]=255
│  ╎╎╎││┌─< 0000:0130      je    0x143
│ ╎╎╎││││   0000:0132      mov   bx, 0xc61c
│ ╎╎╎││││   0000:0135      xor   al, al
│ ╎╎╎││││   0000:0137      mov   ch, 0x17
│ ╎╎╎││││   0000:0139      call  word cs:[0x2004]
│ ╎╎╎││││   0000:013e      call  word cs:[0x201a]
│  ╎╎╎││└─> 0000:0143      mov   si, word [0xc000]
│  ╎╎╎│││   0000:0147      inc   si
│  ╎╎╎││┌─> 0000:0148      lodsb al, byte [si]
│ ╎╎╎││╎│   0000:0149      inc   al
│  ╎╎╎││└─< 0000:014b      jne   0x148
│  ╎╎╎│││   0000:014d      inc   si
│  ╎╎╎│││   0000:014e      lodsb al, byte [si]
│  ╎╎╎│││   0000:014f      mov   byte [0x7c46], al                     ; [0x7c46:1]=255
│  ╎╎╎│││   0000:0152      mov   si, word [0xc004]
│  ╎╎╎│││   0000:0156      call  word cs:[0x2010]
│  ╎╎╎│││   0000:015b      mov   al, byte [0x80]                       ; [0x80:1]=0
│  ╎╎╎│││   0000:015e      xor   ah, ah
│  ╎╎╎│││   0000:0160      shl   ax, 1                                 ; arg1
│  ╎╎╎│││   0000:0162      shl   ax, 1                                 ; arg1
│  ╎╎╎│││   0000:0164      shl   ax, 1                                 ; arg1
│  ╎╎╎│││   0000:0166      add   ax, 0xc017                            ; arg1
│  ╎╎╎│││   0000:0169      mov   word [0xff2a], ax                     ; [0xff2a:2]=0xffff ; arg1
│  ╎╎╎│││   0000:016c      call  fcn.00000c2f                          ; fcn.00000c2f
│  ╎╎╎│││   0000:016f      test  byte [0xe8], 0xff                     ; [0xe8:1]=22
│  ╎╎╎││┌─< 0000:0174      je    0x1a9
│ ╎╎╎││││   0000:0176      mov   byte [0xe8], 0
│ ╎╎╎││││   0000:017b      call  fcn.00000ab3                          ; fcn.00000ab3
│ ╎╎╎││││   0000:017e      mov   bx, 0x61fc
│ ╎╎╎││││   0000:0181      push  bx
│ ╎╎╎││││   0000:0182      mov   bx, 0x6eaf
│ ╎╎╎││││   0000:0185      push  bx
│ ╎╎╎││││   0000:0186      mov   si, 0x6f23                            ; '#o'
│ ╎╎╎││││   0000:0189      push  cs
│ ╎╎╎││││   0000:018a      pop   es
│ ╎╎╎││││   0000:018b      mov   di, 0xa000
│ ╎╎╎││││   0000:018e      mov   al, 3
│ ╎╎╎││││   0000:0190      call  word cs:[fcn.0000010c]                ; 0x10c
│ ╎╎╎││││   0000:0195      call  word cs:[0x2040]
│ ╎╎╎││││   0000:019a      mov   ax, 1
│ ╎╎╎││││   0000:019d      int   0x60
│ ╎╎╎││││   0000:019f      mov   byte [0x7c42], 0xff                   ; [0x7c42:1]=255
│ ╎╎╎││││   0000:01a4      jmp   word cs:[0xa004]
│  ╎╎╎││└─> 0000:01a9      push  cs
│  ╎╎╎│││   0000:01aa      pop   es
│  ╎╎╎│││   0000:01ab      mov   al, 0xfe
│  ╎╎╎│││   0000:01ad      mov   di, 0xe000
│  ╎╎╎│││   0000:01b0      mov   cx, 0xe0
│  ╎╎╎│││   0000:01b3      rep   stosb byte es:[di], al
│  ╎╎╎│││   0000:01b5      call  fcn.000008b0                          ; fcn.000008b0
│  ╎╎╎│││   0000:01b8      test  byte [0x7c44], 0xff                   ; [0x7c44:1]=255
│  ╎╎╎││┌─< 0000:01bd      je    0x1e6
│ ╎╎╎││││   0000:01bf      mov   word [0x7c47], 0x6781                 ; [0x7c47:2]=0xffff
│ ╎╎╎││││   0000:01c5      test  byte [0xc2], 1                        ; [0xc2:1]=232
│  ╎╎╎│┌──< 0000:01ca      jne   0x1d2
│ ╎╎│││││   0000:01cc      mov   word [0x7c47], 0x67f4                 ; [0x7c47:2]=0xffff
│  ╎╎╎│└──> 0000:01d2      mov   cx, 4
│  ╎╎╎│┌──> 0000:01d5      push  cx
│ ╎╎│╎│││   0000:01d6      call  word cs:[0x7c47]
│ ╎╎│╎│││   0000:01db      call  fcn.000008b0                          ; fcn.000008b0
│ ╎╎│╎│││   0000:01de      pop   cx
│  ╎╎╎│└──< 0000:01df      loop  0x1d5
│ ╎╎╎││││   0000:01e1      call  word cs:[0x7c47]
│  ╎╎╎││└─> 0000:01e6      mov   byte [0x7c4b], 0                      ; [0x7c4b:1]=255
│  ╎╎╎│││   0000:01eb      test  byte [0x49], 0xff                     ; [0x49:1]=48
│  ╎╎╎││┌─< 0000:01f0      je    0x200
│ ╎╎╎││││   0000:01f2      push  ds
│ ╎╎╎││││   0000:01f3      mov   ds, word cs:[0xff2c]
│ ╎╎╎││││   0000:01f8      mov   si, 0x3000
│ ╎╎╎││││   0000:01fb      xor   ax, ax
│ ╎╎╎││││   0000:01fd      int   0x60
│ ╎╎╎││││   0000:01ff      pop   ds
│  ╎╎╎││└─> 0000:0200      call  fcn.000008b0                          ; fcn.000008b0
│  ╎╎╎│││   ; DATA XREF from fcn.000003ce @ 0x6c7
│  ╎╎╎│││   0000:0203      call  fcn.000008f7                          ; fcn.000008f7
│  ╎╎╎│││   0000:0206      call  fcn.00000cb9                          ; fcn.00000cb9
│  ╎╎╎│││   0000:0209      call  fcn.00000243                          ; fcn.00000243
│  ╎╎╎│││   0000:020c      test  byte [0x7c4b], 0xff                   ; [0x7c4b:1]=255
│  ╎╎╎││┌─< 0000:0211      jne   0x216
│ ╎╎╎││││   0000:0213      call  fcn.000002f1                          ; fcn.000002f1
│  ╎╎╎││└─> 0000:0216      mov   byte [0x7c4b], 0                      ; [0x7c4b:1]=255
│  ╎╎╎│││   0000:021b      mov   dx, 0x61fc
│  ╎╎╎│││   0000:021e      push  dx
│  ╎╎╎│││   0000:021f      int   0x61
│  ╎╎╎│││   0000:0221      cmp   al, 1
│  ╎╎╎││┌─< 0000:0223      jne   0x228
│  ╎╎╎│┌──< 0000:0225      jmp   0xe2d
│ ╎╎╎│││└─> 0000:0228      and   al, 0xc
│ ╎╎╎││││   0000:022a      cmp   al, 4
│ ╎╎╎│││┌─< 0000:022c      jne   0x231
│  ┌──────< 0000:022e      jmp   0x785
│ ╎╎╎│││└─> 0000:0231      cmp   al, 8
│ ╎╎╎│││┌─< 0000:0233      jne   0x238
│ ┌───────< 0000:0235      jmp   0x7f8
│ ╎╎╎│││└─> 0000:0238      or    byte [0xe7], 1
│ ╎╎╎││││   0000:023d      mov   byte [0x7c4b], 0xff                   ; [0x7c4b:1]=255
│ ╎╎╎││││   0000:0242      ret
  ╎╎╎││││   ; CALL XREF from fcn.00000000 @ 0x209
..
  ╎╎╎││││   ; CALL XREF from fcn.00000000 @ 0x213
│ ╎╎╎││││   ; DATA XREF from fcn.0000151e @ +0x42
│ ╎╎╎││││   ; DATA XREF from fcn.0000180b @ 0x1829
  ╎╎│││││   ; CALL XREFS from fcn.00000243 @ 0x2a7, 0x2e6
  ╎╎│││││   ; CODE XREFS from fcn.000002f1 @ 0x337, 0x35c
  ╎╎│││ │   ; XREFS: CALL 0x00000397  CODE 0x00000681  CODE 0x00000686  
  ╎╎│││ │   ; XREFS: CODE 0x000006a3  CODE 0x000006ae  CODE 0x000006d9  
  ╎╎│││ │   ; XREFS: CODE 0x000006e8  CODE 0x0000070f  
  ╎╎│││╎│   ; CALL XREF from fcn.00000000 @ 0xf94
│ ╎╎│││╎│   ; DATA XREF from fcn.0000126d @ +0x79
│ ╎╎│││╎│   ; DATA XREF from fcn.00000c76 @ +0x22
│ ╎╎│││╎│   ; DATA XREF from fcn.00001b1e @ +0xc8
│ ╎╎│││╎│   ; CODE XREFS from fcn.000003ce @ 0x4cf, 0x4e7, 0x525, 0x52f, 0x5a2
│ ╎╎│││╎│   ; CODE XREF from fcn.000003ce @ 0x448
│ ╎╎│││╎│   ; CALL XREFS from fcn.000003ce @ 0x479, 0x696, 0x6a6
  ╎╎│││╎│   ; CALL XREF from fcn.000003ce @ 0x4d6
  ╎╎│││╎│   ; CALL XREF from fcn.0000060d @ 0x637
│ ╎╎│││╎│   ; CODE XREF from fcn.000005ea @ 0x60b
  ╎╎│││╎│   ; CALL XREF from fcn.000003ce @ 0x3f6
│ ╎╎│││╎│   ; CODE XREFS from fcn.0000060d @ 0x61d, 0x648
│ ╎╎│││╎│   ; CODE XREF from fcn.000003ce @ 0x472
│ ╎╎│││╎│   ; CODE XREF from fcn.000003ce @ 0x44f
│ ╎╎│││╎│   ; DATA XREF from fcn.0000183c @ 0x1b14
│ ╎╎│││╎│   ; CODE XREF from fcn.000003ce @ 0x456
│ ╎╎│││╎│   ; DATA XREF from fcn.00000da2 @ +0x50
│ ╎╎│││╎│   ; CODE XREF from fcn.000003ce @ 0x45d
│ ╎╎│││╎│   ; CODE XREF from fcn.000003ce @ 0x464
│ ╎╎│││╎│   ; CODE XREF from fcn.000003ce @ 0x46b
│ ╎╎│││╎│   ; DATA XREF from fcn.00001699 @ +0x12d
│ ╎╎│││╎│   ; CODE XREF from fcn.000003ce @ 0x702
│ ╎╎│││╎│   ; DATA XREF from fcn.00001b1e @ +0xd9
  ╎╎╎││││   ; CALL XREF from fcn.000003ce @ 0x6cf
│ ╎╎╎││││   ; DATA XREF from fcn.0000116d @ 0x11a5
│ ╎╎╎││││   ; CODE XREF from fcn.00000000 @ 0x22e
│ │└──────> 0000:0785      xor   bx, bx                                ; arg3
│ ╎╎╎││││   0000:0787      mov   bl, byte [0x83]                       ; [0x83:1]=232
│ ╎╎╎││││   0000:078b      add   bl, 3
│ ╎╎╎││││   0000:078e      add   bx, bx
│ ╎╎╎││││   0000:0790      add   bx, bx
│ ╎╎╎││││   0000:0792      add   bx, bx
│ ╎╎╎││││   0000:0794      add   bx, word [0xff2a]
│ ╎╎╎││││   0000:0798      mov   al, byte [bx + 7]
│ ╎╎╎││││   0000:079b      call  fcn.00000872                          ; fcn.00000872
│ ╎╎╎│││┌─< 0000:079e      jne   0x7a1
│ ╎╎│││││   0000:07a0      ret
│ ╎╎╎│││└─> 0000:07a1      xor   bx, bx
│ ╎╎╎││││   0000:07a3      mov   bl, byte [0x83]                       ; [0x83:1]=232
│ ╎╎╎││││   0000:07a7      add   bl, 4
│ ╎╎╎││││   0000:07aa      add   bx, word [0x80]                       ; [0x80:2]=0xf600
│ ╎╎╎││││   0000:07ae      dec   bx
│ ╎╎╎││││   0000:07af      call  fcn.00000894                          ; fcn.00000894
│ ╎╎╎│││┌─< 0000:07b2      je    0x7b5
│ ╎╎│││││   0000:07b4      ret
│ ╎╎╎│││└─> 0000:07b5      inc   byte [0xe7]
│ ╎╎╎││││   0000:07b9      and   byte [0xe7], 3
│ ╎╎╎││││   0000:07be      or    byte [0xc2], 1
│ ╎╎╎││││   0000:07c3      cmp   byte [0x83], 0xb                      ; [0x83:1]=232
│ ╎╎╎│││┌─< 0000:07c8      jb    0x7cf
│ ╎╎│││││   0000:07ca      dec   byte [0x83]
│ ╎╎│││││   0000:07ce      ret
│ ╎╎╎│││└─> 0000:07cf      test  word [0x80], 0xffff                   ; [0x80:2]=0xf600
│ ╎╎╎│││┌─< 0000:07d5      jne   0x7dc
│ ╎╎│││││   0000:07d7      dec   byte [0x83]
│ ╎╎│││││   0000:07db      ret
│ ╎╎╎│││└─> 0000:07dc      dec   word [0x80]
│ ╎╎╎││││   0000:07e0      sub   word [0xff2a], 8
│ ╎╎╎││││   0000:07e5      call  word cs:[0x3006]
│ ╎╎╎││││   0000:07ea      cmp   byte [0x7c45], 1                      ; [0x7c45:1]=255
│ ╎╎╎│││┌─< 0000:07ef      je    0x7f2
│ ╎╎│││││   0000:07f1      ret
│ ╎╎╎│││└─> 0000:07f2      call  word cs:[0x3008]
│ ╎╎╎││││   0000:07f7      ret
│ ╎╎╎││││   ; CODE XREF from fcn.00000000 @ 0x235
│ └───────> 0000:07f8      xor   bx, bx
│ ╎╎╎││││   0000:07fa      mov   bl, byte [0x83]                       ; [0x83:1]=232
│ ╎╎╎││││   0000:07fe      add   bl, 6
│ ╎╎╎││││   0000:0801      add   bx, bx
│ ╎╎╎││││   0000:0803      add   bx, bx
│ ╎╎╎││││   0000:0805      add   bx, bx
│ ╎╎╎││││   0000:0807      add   bx, word [0xff2a]
│ ╎╎╎││││   0000:080b      mov   al, byte [bx + 7]
│ ╎╎╎││││   0000:080e      call  fcn.00000872                          ; fcn.00000872
│ ╎╎╎│││┌─< 0000:0811      jne   0x814
│ ╎╎│││││   0000:0813      ret
│ ╎╎╎│││└─> 0000:0814      xor   bx, bx
│ ╎╎╎││││   0000:0816      mov   bl, byte [0x83]                       ; [0x83:1]=232
│ ╎╎╎││││   0000:081a      add   bl, 4
│ ╎╎╎││││   0000:081d      add   bx, word [0x80]                       ; [0x80:2]=0xf600
│ ╎╎╎││││   0000:0821      inc   bx
│ ╎╎╎││││   0000:0822      call  fcn.00000894                          ; fcn.00000894
│ ╎╎╎│││┌─< 0000:0825      je    0x828
│ ╎╎│││││   0000:0827      ret
│ ╎╎╎│││└─> 0000:0828      inc   byte [0xe7]
│ ╎╎╎││││   0000:082c      and   byte [0xe7], 3
│ ╎╎╎││││   0000:0831      and   byte [0xc2], 0xfe                     ; [0xfe:1]=11
│ ╎╎╎││││   0000:0836      cmp   byte [0x83], 0x10                     ; [0x83:1]=232
│ ╎╎╎│││┌─< 0000:083b      jae   0x842
│ ╎╎│││││   0000:083d      inc   byte [0x83]
│ ╎╎│││││   0000:0841      ret
│ ╎╎╎│││└─> 0000:0842      mov   ax, word [0xc002]                     ; [0xc002:2]=0xffff
│ ╎╎╎││││   0000:0845      sub   ax, 0x23
│ ╎╎╎││││   0000:0848      mov   bx, word [0x80]                       ; [0x80:2]=0xf600
│ ╎╎╎││││   0000:084c      inc   bx
│ ╎╎╎││││   0000:084d      cmp   ax, bx
│ ╎╎╎│││┌─< 0000:084f      jne   0x856
│ ╎╎│││││   0000:0851      inc   byte [0x83]
│ ╎╎│││││   0000:0855      ret
│ ╎╎╎│││└─> 0000:0856      inc   word [0x80]
│ ╎╎╎││││   0000:085a      add   word [0xff2a], 8
│ ╎╎╎││││   0000:085f      call  word cs:[0x300a]
│ ╎╎╎││││   0000:0864      cmp   byte [0x7c45], 1                      ; [0x7c45:1]=255
│ ╎╎╎│││┌─< 0000:0869      je    0x86c
│ ╎╎│││││   0000:086b      ret
│ ╎╎╎│││└─> 0000:086c      call  word cs:[0x300c]
│ ╎╎╎││││   0000:0871      ret
  ╎╎╎││││   ; CALL XREFS from fcn.00000000 @ 0x79b, 0x80e
..
  ╎╎╎││││   ; CALL XREFS from fcn.00000000 @ 0x7af, 0x822
│ ╎╎│││ │   ; CODE XREF from fcn.00000894 @ 0x8ae
  ╎╎╎││││   ; XREFS: CALL 0x000001b5  CALL 0x000001db  CALL 0x00000200  
  ╎╎╎││││   ; XREFS: CALL 0x00000566  CALL 0x000005b2  CALL 0x000005cf  
  ╎╎╎││││   ; XREFS: CALL 0x0000036c  CALL 0x0000092e  CALL 0x00000cc8  
  ╎╎╎││││   ; XREFS: CALL 0x00000d06  CALL 0x00000e6d  CALL 0x00000eea  
  ╎╎╎││││   ; XREFS: CALL 0x00000f80  
  ╎╎╎││││   ; CALL XREF from fcn.00000000 @ 0x203
  ╎╎╎││││   ; CALL XREFS from fcn.000008f7 @ 0x90a, 0x912
  ╎╎╎││││   ; CALL XREF from fcn.000008b3 @ 0x8b6
  ╎╎╎││││   ; CALL XREF from fcn.000008b3 @ 0x8b3
│ ╎╎│││╎│   ; CODE XREF from fcn.00000979 @ 0x9ca
│ ╎╎│││╎│   ; DATA XREF from fcn.000003ce @ 0x6e0
  ╎╎╎││││   ; CALL XREFS from fcn.00000243 @ 0x289, 0x2c8
  ╎╎╎││││   ; CALL XREFS from fcn.000002f1 @ 0x31d, 0x342
  ╎╎╎││││   ; CALL XREF from fcn.00000979 @ 0x9ba
  ╎╎│││ │   ; CALL XREF from fcn.00000979 @ 0x9c7
  ╎╎│││ │   ; CODE XREF from fcn.00000a9c @ 0xaa4
  ╎╎╎││││   ; CALL XREFS from fcn.00000000 @ 0x9e, 0xece
  ╎╎╎││││   ; CALL XREF from fcn.000008f7 @ 0x91a
  ╎╎╎││││   ; CALL XREFS from fcn.00000000 @ 0x9b, 0x17b
│ ╎╎│││╎│   ; CODE XREF from fcn.00000af1 @ 0xb0c
│ ╎╎│││╎│   ; CODE XREF from fcn.00000af1 @ 0xb1c
  ╎╎╎││││   ; CALL XREF from fcn.000008b0 @ 0x8b0
│ ╎╎│││ │   ; CODE XREF from fcn.00000b20 @ 0xb43
  ╎╎│││││   ; CODE XREF from fcn.00000b20 @ +0x99
  ╎╎│││││   ; CODE XREF from fcn.00000b20 @ +0x4e
  ╎╎│││││   ; CODE XREF from fcn.00000b20 @ +0x10c
  ╎╎│││││   ; DATA XREF from fcn.000003ce @ 0x664
  ╎╎╎││││   ; CALL XREF from fcn.00000000 @ 0x16c
  ╎╎╎││││   ; CODE XREF from fcn.00000b20 @ 0xb2e
│ ╎╎│││ │   ; CODE XREF from fcn.00000c2f @ 0xc50
  ╎╎╎││││   ; CALL XREF from fcn.00000b20 @ 0xb20
  ╎╎╎││││   ; CALL XREFS from fcn.00000cb9 @ 0xcc0, 0xcfe
  ╎╎╎││││   ; CALL XREF from fcn.00000000 @ 0xe65
│ ╎╎│││ │   ; CODE XREF from fcn.00000c52 @ 0xc74
  ╎╎╎││││   ; CALL XREFS from fcn.00000000 @ 0xfc, 0xec2
  ╎╎╎││││   ; CALL XREF from fcn.00000000 @ 0x206
│ ╎╎│││││   ; CODE XREF from fcn.00000cb9 @ 0xcd7
│ ╎╎│││ │   ; CODE XREF from fcn.00000cb9 @ 0xd15
   │╎││││   ; CALL XREFS from fcn.00000cb9 @ 0xce5, 0xd23
│  │╎││││   ; CODE XREF from fcn.00000000 @ 0x225
│ │ │╎│└──> 0000:0e2d      or    byte [0xe7], 1                        ; arg1
│ │ │╎│││   0000:0e32      mov   ax, word [0x80]                       ; [0x80:2]=0xf600
│ │ │╎│││   0000:0e35      mov   bl, byte [0x83]                       ; [0x83:1]=232
│ │ │╎│││   0000:0e39      xor   bh, bh
│ │ │╎│││   0000:0e3b      add   ax, bx
│ │ │╎│││   0000:0e3d      add   ax, 4
│ │ │╎│││   0000:0e40      mov   si, word [0xc009]
│  │╎││ │   ; CODE XREF from fcn.00000000 @ 0xe5d
│ │ │╎││┌─> 0000:0e44      cmp   word [si], 0xffff
│ │ │╎│┌──< 0000:0e47      jne   0xe4a
│ │╎│││╎│   0000:0e49      ret
│ │ │╎│└──> 0000:0e4a      cmp   word [si], ax
│ │ │╎│┌──< 0000:0e4c      je    0xe5f
│ │╎│││╎│   0000:0e4e      inc   ax
│ │╎│││╎│   0000:0e4f      cmp   word [si], ax
│ │ │╎┌───< 0000:0e51      je    0xe5f
│ ╎││││╎│   0000:0e53      dec   ax
│ ╎││││╎│   0000:0e54      dec   ax
│ ╎││││╎│   0000:0e55      cmp   word [si], ax
│ │┌──────< 0000:0e57      je    0xe5f
│ ╎││││╎│   0000:0e59      inc   ax
│ ╎││││╎│   0000:0e5a      add   si, 3
│ │╎││││└─< 0000:0e5d      jmp   0xe44
│ │└──└└──> 0000:0e5f      mov   byte [0xe7], 4
│ │ │╎│││   0000:0e64      push  si
│ │ │╎│││   0000:0e65      call  fcn.00000c52                          ; fcn.00000c52
│ │ │╎│││   0000:0e68      mov   byte [0xff1a], 0x28                   ; '('
│ │ │╎│││                                                              ; [0x28:1]=235
│ │ │╎│││   0000:0e6d      call  fcn.000008b3                          ; fcn.000008b3
│ │ │╎│││   0000:0e70      pop   si
│ │ │╎│││   0000:0e71      mov   al, byte [si + 2]
│ │ │╎│││   0000:0e74      cmp   al, 0xff
│ │ │╎││┌─< 0000:0e76      jne   0xe7b
│ │ │╎│┌──< 0000:0e78      jmp   0xf7b
│  │╎│││└─> 0000:0e7b      sub   al, 8
│  │╎│││┌─< 0000:0e7d      jb    0xe82
│ │ │╎┌───< 0000:0e7f      jmp   0xffc
│ │╎││││└─> 0000:0e82      mov   byte [0xff24], 4
│ │╎│││││   0000:0e87      mov   bl, byte [si + 2]
│ │╎│││││   0000:0e8a      mov   al, 0xe
│ │╎│││││   0000:0e8c      mul   bl
│ │╎│││││   0000:0e8e      add   ax, 0x6f07                            ; int16_t arg1
│ │╎│││││   0000:0e91      mov   si, ax
│ │╎│││││   0000:0e93      push  cs
│ │╎│││││   0000:0e94      pop   es
│ │╎│││││   0000:0e95      mov   di, 0xa000
│ │╎│││││   0000:0e98      mov   al, 3
│ │╎│││││   0000:0e9a      call  word cs:[fcn.0000010c]                ; 0x10c
│ │╎│││││   0000:0e9f      call  word cs:[0x2040]
│ │╎│││││   0000:0ea4      mov   ax, 1                                 ; int16_t arg1
│ │╎│││││   0000:0ea7      int   0x60
│ │╎│││││   0000:0ea9      mov   byte [0x7c42], 0xff                   ; [0x7c42:1]=255
│ │╎│││││   0000:0eae      call  word cs:[0xa000]
│ │╎│││││   0000:0eb3      call  word cs:[0x2002]
│ │╎│││││   0000:0eb8      mov   byte [0x7c42], 0                      ; [0x7c42:1]=255
│ │╎│││││   0000:0ebd      call  word cs:[0x2012]
│ │╎│││││   0000:0ec2      call  fcn.00000c76                          ; fcn.00000c76
│ │╎│││││   0000:0ec5      mov   si, word [0xc004]
│ │╎│││││   0000:0ec9      call  word cs:[0x2010]
│ │╎│││││   0000:0ece      call  fcn.00000aa6                          ; fcn.00000aa6
│ │╎│││││   0000:0ed1      call  word cs:[0x3002]
│ │╎│││││   0000:0ed6      push  cs
│ │╎│││││   0000:0ed7      pop   es
│ │╎│││││   0000:0ed8      mov   al, 0xfe
│ │╎│││││   0000:0eda      mov   di, 0xe000
│ │╎│││││   0000:0edd      mov   cx, 0xe0
│ │╎│││││   0000:0ee0      rep   stosb byte es:[di], al
│ │╎│││││   0000:0ee2      call  fcn.00000af1                          ; fcn.00000af1
│ │╎│││││   0000:0ee5      mov   byte [0xff1a], 0x28                   ; '('
│ │╎│││││                                                              ; [0x28:1]=235
│ │╎│││││   0000:0eea      call  fcn.000008b3                          ; fcn.000008b3
│ │╎│││││   0000:0eed      mov   byte [0xff1d], 0
│ │╎│││││   0000:0ef2      mov   byte [0xff1e], 0
│ │╎│││││   0000:0ef7      mov   byte [0xe7], 1
│ │╎│││││   0000:0efc      push  ds
│ │╎│││││   0000:0efd      mov   ds, word cs:[0xff2c]
│ │╎│││││   0000:0f02      mov   si, 0x3000
│ │╎│││││   0000:0f05      xor   ax, ax
│ │╎│││││   0000:0f07      int   0x60
│ │╎│││││   0000:0f09      pop   ds
│ │╎│││││   0000:0f0a      ret
..
│ │╎│││││   ; CODE XREF from fcn.00000000 @ 0xe78
│  │╎││└──> 0000:0f7b      mov   byte [0xe7], 4
│  │╎││││   0000:0f80      call  fcn.000008b3                          ; fcn.000008b3
│  │╎││││   0000:0f83      test  byte [0x45], 0x80                     ; [0x45:1]=46
│  │╎│││┌─< 0000:0f88      jne   0xfa1
│ │╎│││││   0000:0f8a      mov   byte [0x7c5c], 0xff                   ; [0x7c5c:1]=255
│ │╎│││││   0000:0f8f      mov   ax, 0x918                             ; int16_t arg1
│ │╎│││││   0000:0f92      xor   bl, bl
│ │╎│││││   0000:0f94      call  fcn.000003ce                          ; fcn.000003ce
│ │╎│││││   0000:0f97      mov   byte [0x7c5c], 0                      ; [0x7c5c:1]=255
│ │╎│││││   0000:0f9c      or    byte [0x45], 0x80                     ; [0x80:1]=0
│  │╎│││└─> 0000:0fa1      mov   byte [0xff24], 4
│  │╎││││   0000:0fa6      mov   ah, 0x86
│  │╎││││   0000:0fa8      mov   byte [0xc4], ah
│  │╎││││   0000:0fac      mov   al, 1
│  │╎││││   0000:0fae      call  word cs:[fcn.0000010c]                ; 0x10c
│  │╎││││   0000:0fb3      mov   si, 0x6d88
│  │╎││││   0000:0fb6      mov   es, word cs:[0xff2c]
│  │╎││││   0000:0fbb      mov   di, 0x4000
│  │╎││││   0000:0fbe      mov   al, 2
│  │╎││││   0000:0fc0      call  word cs:[fcn.0000010c]                ; 0x10c
│  │╎│││┌─> 0000:0fc5      test  byte [0xff26], 0xff
│  │╎│││└─< 0000:0fca      je    0xfc5
│  │╎││││   0000:0fcc      mov   si, 0x6fed
│  │╎││││   0000:0fcf      mov   es, word cs:[0xff2c]
│  │╎││││   0000:0fd4      mov   di, 0x3000
│  │╎││││   0000:0fd7      mov   al, 5
│  │╎││││   0000:0fd9      call  word cs:[fcn.0000010c]                ; 0x10c
│  │╎││││   0000:0fde      mov   word [0x80], 0x84                     ; [0x84:2]=0xff00
│  │╎││││   0000:0fe4      mov   byte [0x83], 0xd                      ; [0xd:1]=116
│  │╎││││   0000:0fe9      call  word cs:[0x2040]
│ │ │└────< 0000:0fee      jmp   0x22
..
│  │ ││││   ; CODE XREFS from fcn.00000cb9 @ 0xce2, 0xd20
│  │ ││││   ; CODE XREF from fcn.00000000 @ 0xe7f
│ └─└─└───> 0000:0ffc      mov   bl, 5
│     │││   0000:0ffe      mul   bl
│    ││││   0000:1000      add   ax, word [0xc00b]
│     ││└─> 0000:1004      mov   si, ax
│     │││   0000:1006      lodsw ax, word [si]                         ; int16_t arg1
│     │││   0000:1007      push  ax
│     │││   ; DATA XREF from fcn.00001b1e @ 0x1b2c
│     │││   0000:1008      lodsb al, byte [si]
│     │││   0000:1009      sub   al, 0xa
│     │││   0000:100b      and   al, 0x3f
│     │││   0000:100d      mov   byte [0x82], al
│     │││   ; DATA XREF from fcn.0000183c @ 0x1920
│     │││   0000:1010      lodsb al, byte [si]
│     │││   0000:1011      shr   al, 1
│     │││   0000:1013      sbb   al, al
│     │││   0000:1015      mov   byte [0xc3], al
│     │││   0000:1018      lodsb al, byte [si]
│     │││   0000:1019      mov   byte [0xc4], al
│     │││   0000:101c      mov   ah, al
│     │││   0000:101e      mov   al, 1
│     │││   0000:1020      call  word cs:[fcn.0000010c]                ; 0x10c
│     │││   0000:1025      pop   ax
│     │││   0000:1026      add   ax, 0xfff0
│     ││┌─< 0000:1029      jns   0x102f
│    ││││   0000:102b      add   ax, word [0xc002]
│     ││└─> 0000:102f      mov   word [0x80], ax
│     │││   0000:1032      mov   byte [6], 0xff                        ; [0xff:1]=46
│     │││   0000:1037      call  word cs:[0x2040]
│     │││   0000:103c      mov   bx, 0x6002
│     │││   0000:103f      xor   al, al
└     │││   0000:1041      jmp   word cs:[fcn.0000010c]                ; 0x10c
```

### Function 0x0000010c
```asm
│           ; XREFS: CALL 0x00000190  CALL 0x00000ad1  CALL 0x00000d41  
│           ; XREFS: CALL 0x00000d5c  CALL 0x00000db7  CALL 0x00000e00  
│           ; XREFS: CALL 0x00000e9a  CALL 0x00000fae  CALL 0x00000fc0  
│           ; XREFS: CALL 0x00000fd9  CALL 0x00001020  CODE 0x00001041  
│           ; XREFS: CALL 0x000015a4  CALL 0x00001601  CALL 0x00001616  
┌ fcn.0000010c(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:010c      adc   al, 0x20
```

### Function 0x00000243
```asm
; CALL XREF from fcn.00000000 @ 0x209
┌ fcn.00000243(short unsigned int arg3);
│           ; arg short unsigned int arg3 @ bx
│           0000:0243      test  byte [0xff1d], 0xff
│       ┌─< 0000:0248      jne   0x24b
│       │   0000:024a      ret
│       └─> 0000:024b      mov   byte [0xff1d], 0
│           0000:0250      mov   bl, byte [0x83]                       ; [0x83:1]=232
│           0000:0254      add   bl, 4
│           0000:0257      xor   bh, bh
│           0000:0259      mov   dx, bx                                ; arg3
│           0000:025b      add   dx, word [0x80]                       ; [0x80:2]=0xf600
│           0000:025f      add   bl, bl
│           0000:0261      add   bl, bl
│           0000:0263      add   bl, bl
│           0000:0265      add   bl, 5
│           0000:0268      add   bx, word [0xff2a]                     ; arg3
│           0000:026c      test  byte [0xc2], 1                        ; [0xc2:1]=232
│       ┌─< 0000:0271      jne   0x2b2
│       │   0000:0273      inc   dx
│       │   0000:0274      cmp   byte [bx + 8], 0xfd                   ; arg3
│      ┌──< 0000:0278      je    0x289
│      ││   0000:027a      inc   dx
│      ││   0000:027b      cmp   byte [bx + 0x10], 0xfd                ; arg3
│     ┌───< 0000:027f      je    0x289
│     │││   0000:0281      inc   dx
│     │││   0000:0282      cmp   byte [bx + 0x18], 0xfd                ; arg3
│    ┌────< 0000:0286      je    0x289
│    ││││   0000:0288      ret
│    └└└──> 0000:0289      call  fcn.00000a98                          ; fcn.00000a98
│       │   0000:028c      mov   al, byte [si + 6]
│       │   0000:028f      and   al, 0xc0
│      ┌──< 0000:0291      je    0x294
│      ││   0000:0293      ret
│      └──> 0000:0294      mov   al, byte [si + 2]
│       │   0000:0297      mov   ah, byte [si + 5]
│       │   0000:029a      push  ax
│       │   0000:029b      mov   byte [si + 5], 7
│       │   0000:029f      or    byte [si + 2], 0x80                   ; [0x80:1]=0
│       │   0000:02a3      or    byte [si + 4], 1
│       │   0000:02a7      call  fcn.0000035e                          ; fcn.0000035e
│       │   0000:02aa      pop   ax
│       │   0000:02ab      mov   byte [si + 5], ah
│       │   0000:02ae      mov   byte [si + 2], al
│       │   0000:02b1      ret
│       └─> 0000:02b2      dec   dx
│           0000:02b3      cmp   byte [bx - 8], 0xfd                   ; arg3
│       ┌─< 0000:02b7      je    0x2c8
│       │   0000:02b9      dec   dx
│       │   0000:02ba      cmp   byte [bx - 0x10], 0xfd                ; arg3
│      ┌──< 0000:02be      je    0x2c8
│      ││   0000:02c0      dec   dx
│      ││   0000:02c1      cmp   byte [bx - 0x18], 0xfd                ; arg3
│     ┌───< 0000:02c5      je    0x2c8
│     │││   0000:02c7      ret
│     └└└─> 0000:02c8      call  fcn.00000a98                          ; fcn.00000a98
│           0000:02cb      mov   al, byte [si + 6]
│           0000:02ce      and   al, 0xc0
│       ┌─< 0000:02d0      je    0x2d3
│       │   0000:02d2      ret
│       └─> 0000:02d3      mov   al, byte [si + 2]
│           0000:02d6      mov   ah, byte [si + 5]
│           0000:02d9      push  ax
│           0000:02da      mov   byte [si + 5], 7
│           0000:02de      and   byte [si + 2], 0x7f                   ; [0x7f:1]=124
│           0000:02e2      or    byte [si + 4], 1
│           0000:02e6      call  fcn.0000035e                          ; fcn.0000035e
│           0000:02e9      pop   ax
│           0000:02ea      mov   byte [si + 5], ah
│           0000:02ed      mov   byte [si + 2], al
└           0000:02f0      ret
```

### Function 0x000002f1
```asm
; CALL XREF from fcn.00000000 @ 0x213
┌ fcn.000002f1(int16_t arg1, short unsigned int arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg short unsigned int arg3 @ bx
│           0000:02f1      mov   bl, byte [0x83]                       ; [0x83:1]=232
│           0000:02f5      add   bl, 4
│           0000:02f8      xor   bh, bh
│           0000:02fa      mov   dx, bx                                ; arg3
│           0000:02fc      add   dx, word [0x80]                       ; [0x80:2]=0xf600
│           ; DATA XREF from fcn.0000151e @ +0x42
│           ; DATA XREF from fcn.0000180b @ 0x1829
│           0000:0300      add   bl, bl
│           0000:0302      add   bl, bl
│           0000:0304      add   bl, bl
│           0000:0306      add   bl, 5
│           0000:0309      add   bx, word [0xff2a]                     ; arg3
│           0000:030d      test  byte [0xc2], 1                        ; [0xc2:1]=232
│       ┌─< 0000:0312      jne   0x339
│       │   0000:0314      inc   dx
│       │   0000:0315      inc   dx
│       │   0000:0316      cmp   byte [bx + 0x10], 0xfd                ; arg3
│      ┌──< 0000:031a      je    0x31d
│      ││   0000:031c      ret
│      └──> 0000:031d      call  fcn.00000a98                          ; fcn.00000a98
│       │   0000:0320      test  byte [si + 2], 0x80
│      ┌──< 0000:0324      jne   0x327
│      ││   0000:0326      ret
│      └──> 0000:0327      test  byte [si + 6], 0x80
│      ┌──< 0000:032b      jne   0x32e
│      ││   0000:032d      ret
│      └──> 0000:032e      or    byte [si + 4], 1
│       │   0000:0332      mov   byte [0x7c5c], 0xff                   ; [0x7c5c:1]=255
│      ┌──< 0000:0337      jmp   fcn.0000035e                          ; fcn.0000035e
│      │└─> 0000:0339      dec   dx
│      │    0000:033a      dec   dx
│      │    0000:033b      cmp   byte [bx - 0x10], 0xfd                ; arg3
│      │┌─< 0000:033f      je    0x342
│      ││   0000:0341      ret
│      │└─> 0000:0342      call  fcn.00000a98                          ; fcn.00000a98
│      │    0000:0345      test  byte [si + 2], 0x80
│      │┌─< 0000:0349      je    0x34c
│      ││   0000:034b      ret
│      │└─> 0000:034c      test  byte [si + 6], 0x80
│      │┌─< 0000:0350      jne   0x353
│      ││   0000:0352      ret
│      │└─> 0000:0353      or    byte [si + 4], 1
│      │    0000:0357      mov   byte [0x7c5c], 0xff                   ; [0x7c5c:1]=255
└      │┌─< 0000:035c      jmp   fcn.0000035e                          ; fcn.0000035e
```

### Function 0x0000035e
```asm
; CALL XREFS from fcn.00000243 @ 0x2a7, 0x2e6
            ; CODE XREFS from fcn.000002f1 @ 0x337, 0x35c
┌ fcn.0000035e(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:035e      and   byte [si + 6], 0x7f                   ; [0x7f:1]=124
│           0000:0362      mov   al, byte [si + 7]
│           0000:0365      push  si
│           0000:0366      push  ax                                    ; arg1
│           0000:0367      mov   byte [0xff1a], 0x28                   ; '('
│                                                                      ; [0x28:1]=235
│           0000:036c      call  fcn.000008b3                          ; fcn.000008b3
│           0000:036f      mov   byte [0xff75], 0x1e                   ; [0x1e:1]=167
│           0000:0374      mov   ax, 0x718
│           0000:0377      test  byte [0xc2], 1                        ; [0xc2:1]=232
│       ┌─< 0000:037c      jne   0x381
│       │   0000:037e      mov   ax, 0xb18
│       └─> 0000:0381      mov   word [0x7c4c], ax                     ; [0x7c4c:2]=0xffff
│           0000:0384      xor   di, di
│           0000:0386      mov   cx, 0x1658
│           0000:0389      call  word cs:[0x2026]
│           0000:038e      mov   byte [0xff1d], 0
│           0000:0393      pop   bx
│           0000:0394      mov   ax, word [0x7c4c]                     ; [0x7c4c:2]=0xffff ; int16_t arg1
│           0000:0397      call  fcn.000003c9                          ; fcn.000003c9
│           0000:039a      mov   ax, word [0x7c4c]                     ; [0x7c4c:2]=0xffff
│           0000:039d      xor   di, di
│           0000:039f      mov   cx, 0x1658
│           0000:03a2      call  word cs:[0x2028]
│           0000:03a7      pop   si
│           0000:03a8      mov   byte [0xff1d], 0
│           0000:03ad      push  cs
│           0000:03ae      pop   es
│           0000:03af      mov   al, 0xfe
│           0000:03b1      mov   di, 0xe000
│           0000:03b4      mov   cx, 0xe0
│           0000:03b7      rep   stosb byte es:[di], al
│           0000:03b9      mov   byte [0x7c5c], 0                      ; [0x7c5c:1]=255
│           0000:03be      mov   byte [0xff1d], 0
│           0000:03c3      mov   byte [0xff1e], 0
└           0000:03c8      ret
```

### Function 0x000003c9
```asm
; XREFS: CALL 0x00000397  CODE 0x00000681  CODE 0x00000686  
            ; XREFS: CODE 0x000006a3  CODE 0x000006ae  CODE 0x000006d9  
            ; XREFS: CODE 0x000006e8  CODE 0x0000070f  
┌ fcn.000003c9(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
└           0000:03c9      or    byte [0xe7], 1
```

### Function 0x000003ce
```asm
╎╎╎╎╎╎╎   ; CALL XREF from fcn.00000000 @ 0xf94
┌ fcn.000003ce(int16_t arg1, int16_t arg3);
│ ╎╎╎╎╎╎╎   ; arg int16_t arg1 @ ax
│ ╎╎╎╎╎╎╎   ; arg int16_t arg3 @ bx
│ ╎╎╎╎╎╎╎   0000:03ce      mov   word [0x7c50], ax                     ; [0x7c50:2]=0xffff ; arg1
│ ╎╎╎╎╎╎╎   0000:03d1      mov   word [0x7c4e], ax                     ; [0x7c4e:2]=0xffff ; arg1
│ ╎╎╎╎╎╎╎   0000:03d4      xor   bh, bh
│ ╎╎╎╎╎╎╎   0000:03d6      add   bx, bx                                ; arg3
│ ╎╎╎╎╎╎╎   0000:03d8      add   bx, word [0xc00d]                     ; arg3
│ ╎╎╎╎╎╎╎   0000:03dc      mov   si, word [bx]                         ; arg3
│ ╎╎╎╎╎╎╎   0000:03de      mov   byte [0x7c53], 0                      ; [0x7c53:1]=255
│ ╎╎╎╎╎╎╎   0000:03e3      mov   byte [0x7c54], 0                      ; [0x7c54:1]=255
│ ╎╎╎╎╎╎╎   ; DATA XREF from fcn.0000126d @ +0x79
│ ╎╎╎╎╎╎╎   0000:03e8      mov   byte [0x7c55], 0                      ; [0x7c55:1]=255
│ ╎╎╎╎╎╎╎   0000:03ed      mov   byte [0x7c57], 0                      ; [0x7c57:1]=255
│ ╎╎╎╎╎╎╎   0000:03f2      mov   word [0x7c58], si                     ; [0x7c58:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:03f6      call  fcn.0000060d                          ; fcn.0000060d
│ ╎╎╎╎╎╎╎   0000:03f9      mov   al, cl
│ ╎╎╎╎╎╎╎   0000:03fb      mov   byte [0x7c56], al                     ; [0x7c56:1]=255
│ ╎╎╎╎╎╎╎   0000:03fe      cmp   al, 8
│ ╎╎╎╎╎╎╎   ; DATA XREF from fcn.00000c76 @ +0x22
│ ────────< 0000:0400      jb    0x404
│ ╎╎╎╎╎╎╎   0000:0402      mov   al, 8
│ ╎╎╎╎╎╎╎   ; DATA XREF from fcn.00001b1e @ +0xc8
│ ────────> 0000:0404      push  ax
│ ╎╎╎╎╎╎╎   0000:0405      mov   cl, 0xa
│ ╎╎╎╎╎╎╎   0000:0407      mul   cl
│ ╎╎╎╎╎╎╎   0000:0409      add   al, 6
│ ╎╎╎╎╎╎╎   0000:040b      mov   cl, al
│ ╎╎╎╎╎╎╎   0000:040d      mov   ch, 0x2c                              ; ','
│ ╎╎╎╎╎╎╎   0000:040f      mov   word [0x7c5a], cx                     ; [0x7c5a:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:0413      mov   al, 0x56                              ; 'V'
│ ╎╎╎╎╎╎╎   0000:0415      sub   al, cl
│ ╎╎╎╎╎╎╎   0000:0417      mov   bx, word [0x7c4e]                     ; [0x7c4e:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:041b      add   bl, al
│ ╎╎╎╎╎╎╎   0000:041d      pop   ax
│ ╎╎╎╎╎╎╎   0000:041e      and   al, 0xfe
│ ╎╎╎╎╎╎╎   0000:0420      add   al, al
│ ╎╎╎╎╎╎╎   0000:0422      add   al, al
│ ╎╎╎╎╎╎╎   0000:0424      add   al, al
│ ╎╎╎╎╎╎╎   0000:0426      mov   ah, 0x40                              ; '@'
│ ╎╎╎╎╎╎╎   0000:0428      sub   ah, al
│ ╎╎╎╎╎╎╎   0000:042a      shr   ah, 1
│ ╎╎╎╎╎╎╎   0000:042c      sub   bl, ah
│ ╎╎╎╎╎╎╎   0000:042e      mov   word [0x7c4e], bx                     ; [0x7c4e:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:0432      add   bh, bh
│ ╎╎╎╎╎╎╎   0000:0434      mov   al, 0xff
│ ╎╎╎╎╎╎╎   0000:0436      call  word cs:[0x2000]
│ ╎╎╎╎╎╎╎   ; CODE XREFS from fcn.000003ce @ 0x4cf, 0x4e7, 0x525, 0x52f, 0x5a2
│ ────────> 0000:043b      mov   si, word [0x7c58]                     ; [0x7c58:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:043f      lodsb al, byte [si]
│ ╎╎╎╎╎╎╎   0000:0440      mov   word [0x7c58], si                     ; [0x7c58:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:0444      cmp   al, 0x2f
│ ────────< 0000:0446      jne   0x44b
│ ────────< 0000:0448      jmp   0x4ea
│ ────────> 0000:044b      cmp   al, 0x81
│ ────────< 0000:044d      jne   0x452
│ ────────< 0000:044f      jmp   0x659
│ ────────> 0000:0452      cmp   al, 0x83
│ ────────< 0000:0454      jne   0x459
│ ────────< 0000:0456      jmp   0x689
│ ────────> 0000:0459      cmp   al, 0x85
│ ────────< 0000:045b      jne   0x460
│ ────────< 0000:045d      jmp   0x699
│ ────────> 0000:0460      cmp   al, 0x87
│ ────────< 0000:0462      jne   0x467
│ ────────< 0000:0464      jmp   0x6a6
│ ────────> 0000:0467      cmp   al, 0x89
│ ────────< 0000:0469      jne   0x46e
│ ────────< 0000:046b      jmp   0x6b1
│ ────────> 0000:046e      cmp   al, 0x8b
│ ────────< 0000:0470      jne   0x475
│ ────────< 0000:0472      jmp   0x651
│ ────────> 0000:0475      cmp   al, 0xff
│ ────────< 0000:0477      jne   0x47c
│ ────────< 0000:0479      jmp   0x5a5
│ ────────> 0000:047c      push  ax
│ ╎╎╎╎╎╎╎   0000:047d      mov   cx, word [0x7c4e]                     ; [0x7c4e:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:0481      xor   bh, bh
│ ╎╎╎╎╎╎╎   0000:0483      mov   bl, ch
│ ╎╎╎╎╎╎╎   0000:0485      add   bx, bx
│ ╎╎╎╎╎╎╎   0000:0487      add   bx, bx
│ ╎╎╎╎╎╎╎   0000:0489      add   bx, bx
│ ╎╎╎╎╎╎╎   0000:048b      mov   al, byte [0x7c53]                     ; [0x7c53:1]=255
│ ╎╎╎╎╎╎╎   0000:048e      xor   ah, ah
│ ╎╎╎╎╎╎╎   0000:0490      add   bx, ax
│ ╎╎╎╎╎╎╎   0000:0492      add   bx, 4
│ ╎╎╎╎╎╎╎   0000:0495      mov   al, byte [0x7c54]                     ; [0x7c54:1]=255
│ ╎╎╎╎╎╎╎   0000:0498      mov   dl, 0xa
│ ╎╎╎╎╎╎╎   0000:049a      mul   dl
│ ╎╎╎╎╎╎╎   0000:049c      add   cl, al
│ ╎╎╎╎╎╎╎   0000:049e      add   cl, 4
│ ╎╎╎╎╎╎╎   0000:04a1      pop   ax
│ ╎╎╎╎╎╎╎   0000:04a2      push  bx
│ ╎╎╎╎╎╎╎   0000:04a3      mov   bl, al
│ ╎╎╎╎╎╎╎   0000:04a5      sub   bl, 0x20
│ ╎╎╎╎╎╎╎   0000:04a8      xor   bh, bh
│ ╎╎╎╎╎╎╎   0000:04aa      mov   dl, byte [bx + 0x7b82]
│ ╎╎╎╎╎╎╎   0000:04ae      mov   dh, bh
│ ╎╎╎╎╎╎╎   0000:04b0      pop   bx
│ ╎╎╎╎╎╎╎   0000:04b1      push  ax
│ ╎╎╎╎╎╎╎   0000:04b2      sub   bx, dx
│ ╎╎╎╎╎╎╎   0000:04b4      mov   ah, 1
│ ╎╎╎╎╎╎╎   0000:04b6      call  word cs:[0x2022]
│ ╎╎╎╎╎╎╎   0000:04bb      pop   ax
│ ╎╎╎╎╎╎╎   0000:04bc      mov   bl, al
│ ╎╎╎╎╎╎╎   0000:04be      sub   bl, 0x20
│ ╎╎╎╎╎╎╎   0000:04c1      xor   bh, bh
│ ╎╎╎╎╎╎╎   0000:04c3      mov   cl, byte [bx + 0x7be2]
│ ╎╎╎╎╎╎╎   0000:04c7      add   byte [0x7c53], cl                     ; [0x7c53:1]=255
│ ╎╎╎╎╎╎╎   0000:04cb      cmp   al, 0x20
│ ────────< 0000:04cd      je    0x4d2
│ ────────< 0000:04cf      jmp   0x43b
│ ────────> 0000:04d2      mov   si, word [0x7c58]                     ; [0x7c58:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:04d6      call  fcn.000005ea                          ; fcn.000005ea
│ ╎╎╎╎╎╎╎   0000:04d9      mov   dl, byte [0x7c53]                     ; [0x7c53:1]=255
│ ╎╎╎╎╎╎╎   0000:04dd      xor   dh, dh
│ ╎╎╎╎╎╎╎   0000:04df      add   dx, cx
│ ╎╎╎╎╎╎╎   0000:04e1      cmp   dx, 0xa8
│ ────────< 0000:04e5      jae   0x4ea
│ ────────< 0000:04e7      jmp   0x43b
│ ╎╎╎╎╎╎╎   ; CODE XREF from fcn.000003ce @ 0x448
│ ────────> 0000:04ea      mov   byte [0x7c53], 0                      ; [0x7c53:1]=255
│ ╎╎╎╎╎╎╎   0000:04ef      inc   byte [0x7c54]
│ ╎╎╎╎╎╎╎   0000:04f3      cmp   byte [0x7c54], 8                      ; [0x7c54:1]=255
│ ────────< 0000:04f8      jne   0x51a
│ ╎╎╎╎╎╎╎   0000:04fa      dec   byte [0x7c54]
│ ╎╎╎╎╎╎╎   0000:04fe      mov   cx, 0xa
│ ────────> 0000:0501      push  cx
│ ╎╎╎╎╎╎╎   0000:0502      mov   bx, word [0x7c4e]                     ; [0x7c4e:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:0506      add   bl, 4
│ ╎╎╎╎╎╎╎   0000:0509      mov   cx, word [0x7c5a]                     ; [0x7c5a:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:050d      shr   ch, 1
│ ╎╎╎╎╎╎╎   0000:050f      sub   cl, 8
│ ╎╎╎╎╎╎╎   0000:0512      call  word cs:[0x2024]
│ ╎╎╎╎╎╎╎   0000:0517      pop   cx
│ ────────< 0000:0518      loop  0x501
│ ────────> 0000:051a      inc   byte [0x7c57]
│ ╎╎╎╎╎╎╎   0000:051e      cmp   byte [0x7c57], 7                      ; [0x7c57:1]=255
│ ────────< 0000:0523      jae   0x528
│ ────────< 0000:0525      jmp   0x43b
│ ────────> 0000:0528      cmp   byte [0x7c56], 8                      ; [0x7c56:1]=255
│ ────────< 0000:052d      jne   0x532
│ ────────< 0000:052f      jmp   0x43b
│ ────────> 0000:0532      sub   byte [0x7c56], 7                      ; [0x7c56:1]=255
│ ╎╎╎╎╎╎╎   0000:0537      mov   cx, word [0x7c4e]                     ; [0x7c4e:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:053b      xor   bh, bh
│ ╎╎╎╎╎╎╎   0000:053d      mov   bl, ch
│ ╎╎╎╎╎╎╎   0000:053f      add   bx, bx
│ ╎╎╎╎╎╎╎   0000:0541      add   bx, bx
│ ╎╎╎╎╎╎╎   0000:0543      add   bx, bx
│ ╎╎╎╎╎╎╎   0000:0545      add   bx, 0x54
│ ╎╎╎╎╎╎╎   0000:0548      add   cl, 0x4a
│ ╎╎╎╎╎╎╎   0000:054b      push  cx
│ ╎╎╎╎╎╎╎   0000:054c      push  bx
│ ╎╎╎╎╎╎╎   0000:054d      mov   ax, 0x27c
│ ╎╎╎╎╎╎╎   0000:0550      call  word cs:[0x2022]
│ ╎╎╎╎╎╎╎   0000:0555      mov   byte [0xff1d], 0
│ ╎╎╎╎╎╎╎   0000:055a      mov   byte [0xff1e], 0
│ ╎╎╎╎╎╎╎   0000:055f      pop   bx
│ ╎╎╎╎╎╎╎   0000:0560      pop   cx
│ ────────> 0000:0561      push  cx
│ ╎╎╎╎╎╎╎   0000:0562      push  bx
│ ╎╎╎╎╎╎╎   0000:0563      call  fcn.00000747                          ; fcn.00000747
│ ╎╎╎╎╎╎╎   0000:0566      call  fcn.000008b0                          ; fcn.000008b0
│ ╎╎╎╎╎╎╎   0000:0569      pop   bx
│ ╎╎╎╎╎╎╎   0000:056a      pop   cx
│ ╎╎╎╎╎╎╎   0000:056b      test  byte [0x7c5c], 0xff                   ; [0x7c5c:1]=255
│ ────────< 0000:0570      jne   0x57a
│ ╎╎╎╎╎╎╎   0000:0572      test  byte [0xff1e], 0xff
│ ────────< 0000:0577      je    0x57a
│ ╎╎╎╎╎╎╎   0000:0579      ret
│ ────────> 0000:057a      test  byte [0xff1d], 0xff
│ ────────< 0000:057f      je    0x561
│ ╎╎╎╎╎╎╎   0000:0581      shr   bx, 1
│ ╎╎╎╎╎╎╎   0000:0583      shr   bx, 1
│ ╎╎╎╎╎╎╎   0000:0585      mov   bh, bl
│ ╎╎╎╎╎╎╎   0000:0587      mov   bl, cl
│ ╎╎╎╎╎╎╎   0000:0589      xor   al, al
│ ╎╎╎╎╎╎╎   0000:058b      mov   cx, 0x208
│ ╎╎╎╎╎╎╎   0000:058e      call  word cs:[0x2000]
│ ╎╎╎╎╎╎╎   0000:0593      mov   byte [0xff1d], 0
│ ╎╎╎╎╎╎╎   0000:0598      mov   byte [0x7c57], 0                      ; [0x7c57:1]=255
│ ╎╎╎╎╎╎╎   0000:059d      mov   byte [0xff75], 0x1d                   ; [0x1d:1]=116
│ ────────< 0000:05a2      jmp   0x43b
│ ╎╎╎╎╎╎╎   ; CALL XREFS from fcn.000003ce @ 0x479, 0x696, 0x6a6
│ ────────> 0000:05a5      mov   byte [0xff1d], 0
│ ╎╎╎╎╎╎╎   0000:05aa      mov   byte [0xff1e], 0
│ ────────> 0000:05af      call  fcn.00000747                          ; fcn.00000747
│ ╎╎╎╎╎╎╎   0000:05b2      call  fcn.000008b0                          ; fcn.000008b0
│ ╎╎╎╎╎╎╎   0000:05b5      test  byte [0xff1d], 0xff
│ ────────< 0000:05ba      je    0x5bd
│ ╎╎╎╎╎╎╎   0000:05bc      ret
│ ────────> 0000:05bd      test  byte [0xff1e], 0xff
│ ────────< 0000:05c2      je    0x5c5
│ ╎╎╎╎╎╎╎   0000:05c4      ret
│ ────────> 0000:05c5      test  byte [0xff17], 0xff
│ ────────< 0000:05ca      jne   0x5af
│ ────────> 0000:05cc      call  fcn.00000747                          ; fcn.00000747
│ ╎╎╎╎╎╎╎   0000:05cf      call  fcn.000008b0                          ; fcn.000008b0
│ ╎╎╎╎╎╎╎   0000:05d2      test  byte [0xff1d], 0xff
│ ────────< 0000:05d7      je    0x5da
│ ╎╎╎╎╎╎╎   0000:05d9      ret
│ ────────> 0000:05da      test  byte [0xff1e], 0xff
│ ────────< 0000:05df      je    0x5e2
│ ╎╎╎╎╎╎╎   0000:05e1      ret
│ ────────> 0000:05e2      test  byte [0xff17], 0xff
│ ────────< 0000:05e7      je    0x5cc
│ ╎╎╎╎╎╎╎   0000:05e9      ret
  ╎╎╎╎╎╎╎   ; CALL XREF from fcn.000003ce @ 0x4d6
  ╎╎╎╎╎╎╎   ; CALL XREF from fcn.0000060d @ 0x637
..
│ ╎╎╎╎╎╎╎   ; CODE XREF from fcn.000005ea @ 0x60b
  ╎╎╎╎╎╎╎   ; CALL XREF from fcn.000003ce @ 0x3f6
│ ╎╎╎╎╎╎╎   ; CODE XREFS from fcn.0000060d @ 0x61d, 0x648
│ ╎╎╎╎╎╎╎   ; CODE XREF from fcn.000003ce @ 0x472
│ ────────> 0000:0651      or    byte [4], 0x80                        ; [0x80:1]=0 ; arg3
│ ────────< 0000:0656      jmp   fcn.00000af1                          ; fcn.00000af1
│ ╎╎╎╎╎╎╎   ; CODE XREF from fcn.000003ce @ 0x44f
│ ────────> 0000:0659      mov   bx, word [0x7c4c]                     ; [0x7c4c:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:065d      add   bh, bh
│ ╎╎╎╎╎╎╎   0000:065f      add   bx, 0x193f
│ ╎╎╎╎╎╎╎   0000:0663      push  bx
│ ╎╎╎╎╎╎╎   0000:0664      mov   cx, 0xc19
│ ╎╎╎╎╎╎╎   0000:0667      mov   al, 0xff
│ ╎╎╎╎╎╎╎   0000:0669      call  word cs:[0x2000]
│ ╎╎╎╎╎╎╎   0000:066e      pop   bx
│ ╎╎╎╎╎╎╎   0000:066f      add   bx, 0x103
│ ╎╎╎╎╎╎╎   0000:0673      mov   word [0xff54], bx
│ ╎╎╎╎╎╎╎   0000:0677      call  fcn.000014d7                          ; fcn.000014d7
│ ╎╎╎╎╎╎╎   0000:067a      mov   ax, word [0x7c4c]                     ; [0x7c4c:2]=0xffff
│ ╎╎╎╎╎╎╎   0000:067d      mov   bl, 0xd
│ ╎╎╎╎╎╎╎   ; DATA XREF from fcn.0000183c @ 0x1b14
│ ────────< 0000:067f      jae   0x684
│ └───────< 0000:0681      jmp   fcn.000003c9                          ; fcn.000003c9
│ ────────> 0000:0684      mov   bl, 0xc
│  └──────< 0000:0686      jmp   fcn.000003c9                          ; fcn.000003c9
│   ╎╎╎╎╎   ; CODE XREF from fcn.000003ce @ 0x456
│ ────────> 0000:0689      or    byte [0x34], 0x80                     ; [0x80:1]=0
│   ╎╎╎╎╎   ; DATA XREF from fcn.00000da2 @ +0x50
│   ╎╎╎╎╎   0000:068e      mov   byte [0x9a], 0xff                     ; [0xff:1]=46
│   ╎╎╎╎╎   0000:0693      call  fcn.00000af1                          ; fcn.00000af1
│ ────────< 0000:0696      jmp   0x5a5
│   ╎╎╎╎╎   ; CODE XREF from fcn.000003ce @ 0x45d
│ ────────> 0000:0699      mov   byte [0x7c5c], 0xff                   ; [0x7c5c:1]=255
│   ╎╎╎╎╎   0000:069e      mov   bl, 4
│   ╎╎╎╎╎   0000:06a0      mov   ax, word [0x7c50]                     ; [0x7c50:2]=0xffff
│   └─────< 0000:06a3      jmp   fcn.000003c9                          ; fcn.000003c9
│    ╎╎╎╎   ; CODE XREF from fcn.000003ce @ 0x464
│ ────────> 0000:06a6      call  0x5a5
│    ╎╎╎╎   0000:06a9      mov   bl, 5
│    ╎╎╎╎   0000:06ab      mov   ax, word [0x7c50]                     ; [0x7c50:2]=0xffff
│    └────< 0000:06ae      jmp   fcn.000003c9                          ; fcn.000003c9
│     ╎╎╎   ; CODE XREF from fcn.000003ce @ 0x46b
│ ────────> 0000:06b1      mov   bx, word [0x7c4c]                     ; [0x7c4c:2]=0xffff
│     ╎╎╎   0000:06b5      add   bh, bh
│     ╎╎╎   0000:06b7      add   bx, str.D___S                         ; 0x1832 ; "X\xfe\xc0\xfe\xc4^Y\xe2\xd2\xc3\xe8\x88\xff\xc6\U00000006t\xff\xff\xc6\U00000006)\xff"
│     ╎╎╎   0000:06bb      push  bx
│     ╎╎╎   0000:06bc      mov   cx, 0x1219
│     ╎╎╎   0000:06bf      mov   al, 0xff
│     ╎╎╎   0000:06c1      call  word cs:[0x2000]
│     ╎╎╎   ; DATA XREF from fcn.00001699 @ +0x12d
│     ╎╎╎   0000:06c6      pop   bx
│     ╎╎╎   0000:06c7      add   bx, 0x203
│     ╎╎╎   0000:06cb      mov   word [0xff54], bx
│     ╎╎╎   0000:06cf      call  fcn.00000712                          ; fcn.00000712
│     ╎╎╎   0000:06d2      mov   ax, word [0x7c4c]                     ; [0x7c4c:2]=0xffff
│     ╎╎╎   0000:06d5      mov   bl, 6
│    ┌────< 0000:06d7      jae   0x6dc
│    │└───< 0000:06d9      jmp   fcn.000003c9                          ; fcn.000003c9
│    └────> 0000:06dc      mov   dx, word [0x8b]                       ; [0x8b:2]=380
│      ╎╎   0000:06e0      sub   dx, 0x9c4
│      ╎╎   0000:06e4      mov   bl, 7
│     ┌───< 0000:06e6      jae   0x6eb
│     │└──< 0000:06e8      jmp   fcn.000003c9                          ; fcn.000003c9
│     └───> 0000:06eb      mov   word [0x8b], dx
│       ╎   0000:06ef      call  word cs:[0x2014]
│       ╎   0000:06f4      or    byte [0x34], 0x40                     ; [0x40:1]=0
│       ╎   0000:06f9      mov   si, 0xa1
│       ╎   ; CODE XREF from fcn.000003ce @ 0x702
│      ┌──> 0000:06fc      test  byte [si], 0xff
│     ┌───< 0000:06ff      je    0x704
│     │╎╎   0000:0701      inc   si
│     │└──< 0000:0702      jmp   0x6fc
│     └───> 0000:0704      mov   byte [si], 5
│       ╎   ; DATA XREF from fcn.00001b1e @ +0xd9
│       ╎   0000:0707      call  fcn.00000af1                          ; fcn.00000af1
│       ╎   0000:070a      mov   ax, word [0x7c4c]                     ; [0x7c4c:2]=0xffff
│       ╎   0000:070d      mov   bl, 8
└       └─< 0000:070f      jmp   fcn.000003c9                          ; fcn.000003c9
```

### Function 0x000005ea
```asm
; CALL XREF from fcn.000003ce @ 0x4d6
            ; CALL XREF from fcn.0000060d @ 0x637
┌ fcn.000005ea(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:05ea      xor   cx, cx
│           ; CODE XREF from fcn.000005ea @ 0x60b
│      ┌┌─> 0000:05ec      lodsb al, byte [si]
│      ╎╎   0000:05ed      or    al, al
│     ┌───< 0000:05ef      jns   0x5f2
│     │╎╎   0000:05f1      ret
│     └───> 0000:05f2      cmp   al, 0x20
│     ┌───< 0000:05f4      jne   0x5f7
│     │╎╎   0000:05f6      ret
│     └───> 0000:05f7      cmp   al, 0x2f
│     ┌───< 0000:05f9      jne   0x5fc
│     │╎╎   0000:05fb      ret
│     └───> 0000:05fc      sub   al, 0x20
│      └──< 0000:05fe      jb    0x5ec
│       ╎   0000:0600      mov   bl, al
│       ╎   0000:0602      xor   bh, bh
│       ╎   0000:0604      add   cl, byte cs:[bx + 0x7be2]             ; arg3
│       ╎   0000:0609      adc   ch, bh
└       └─< 0000:060b      jmp   0x5ec
```

### Function 0x0000060d
```asm
; CALL XREF from fcn.000003ce @ 0x3f6
┌ fcn.0000060d(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:060d      xor   cx, cx
│           0000:060f      xor   dx, dx
│           ; CODE XREFS from fcn.0000060d @ 0x61d, 0x648
│    ┌┌┌┌─> 0000:0611      lodsb al, byte [si]
│    ╎╎╎╎   0000:0612      or    al, al
│   ┌─────< 0000:0614      js    0x64a
│   │╎╎╎╎   0000:0616      cmp   al, 0x2f
│  ┌──────< 0000:0618      jne   0x61f
│  ││╎╎╎╎   0000:061a      inc   cx
│  ││╎╎╎╎   0000:061b      xor   dx, dx
│  ││└────< 0000:061d      jmp   0x611
│  └──────> 0000:061f      push  cx
│   │ ╎╎╎   0000:0620      mov   bl, al
│   │ ╎╎╎   0000:0622      sub   bl, 0x20
│   │ ╎╎╎   0000:0625      xor   bh, bh
│   │ ╎╎╎   0000:0627      mov   cl, byte [bx + 0x7be2]                ; arg3
│   │ ╎╎╎   0000:062b      mov   ch, bh
│   │ ╎╎╎   0000:062d      add   dx, cx
│   │ ╎╎╎   0000:062f      pop   cx
│   │ ╎╎╎   0000:0630      cmp   al, 0x20
│   │ └───< 0000:0632      jne   0x611
│   │  ╎╎   0000:0634      push  cx
│   │  ╎╎   0000:0635      push  si
│   │  ╎╎   0000:0636      push  dx
│   │  ╎╎   0000:0637      call  fcn.000005ea                          ; fcn.000005ea
│   │  ╎╎   0000:063a      add   dx, cx
│   │  ╎╎   0000:063c      cmp   dx, 0xa8
│   │  ╎╎   0000:0640      pop   dx
│   │  ╎╎   0000:0641      pop   si
│   │  ╎╎   0000:0642      pop   cx
│   │  └──< 0000:0643      jb    0x611
│   │   ╎   0000:0645      xor   dx, dx
│   │   ╎   0000:0647      inc   cx
│   │   └─< 0000:0648      jmp   0x611
│   └─────> 0000:064a      or    dx, dx
│       ┌─< 0000:064c      jne   0x64f
│       │   0000:064e      ret
│       └─> 0000:064f      inc   cx
└           0000:0650      ret
```

### Function 0x00000712
```asm
; CALL XREF from fcn.000003ce @ 0x6cf
┌ fcn.00000712();
│           0000:0712      mov   byte [0xff52], 2
│           0000:0717      mov   byte [0xff53], 2
│           0000:071c      mov   cx, 2
│           0000:071f      mov   si, 0x6736                            ; '6g'
│           0000:0722      call  fcn.0000151e                          ; fcn.0000151e
│           0000:0725      mov   byte [0xff56], 0
│           0000:072a      xor   bl, bl
│           0000:072c      call  fcn.00001348                          ; fcn.00001348
│       ┌─< 0000:072f      jae   0x733
│       │   0000:0731      mov   bl, 1
│       └─> 0000:0733      or    bl, bl
│       ┌─< 0000:0735      jne   0x738
│       │   0000:0737      ret
│       └─> 0000:0738      stc
└           0000:0739      ret
```

### Function 0x00000747
```asm
; CALL XREFS from fcn.000003ce @ 0x563, 0x5af, 0x5cc
┌ fcn.00000747();
│           0000:0747      mov   ax, word [0x7c4e]                     ; [0x7c4e:2]=0xffff
│           0000:074a      sub   ah, 6
│           0000:074d      mov   cx, word [0x7c5a]                     ; [0x7c5a:2]=0xffff
│           0000:0751      add   al, cl
│           0000:0753      cmp   al, 0x56
│       ┌─< 0000:0755      jae   0x758
│       │   0000:0757      ret
│       └─> 0000:0758      push  ax
│           0000:0759      xor   ah, ah
│           0000:075b      sub   al, 0x4e
│           0000:075d      mov   cx, 8
│           0000:0760      div   cl
│           ; DATA XREF from fcn.0000116d @ 0x11a5
│           0000:0762      mov   cl, al
│           0000:0764      pop   ax
│           0000:0765      push  cs
│           0000:0766      pop   es
│           0000:0767      mov   di, 0xe000
│           0000:076a      mov   al, ah
│           0000:076c      mov   dl, 8
│           0000:076e      mul   dl
│           0000:0770      add   di, ax
│           0000:0772      mov   al, 0xff
│       ┌─> 0000:0774      push  cx
│       ╎   0000:0775      push  di
│       ╎   0000:0776      mov   cx, 0x16
│      ┌──> 0000:0779      stosb byte es:[di], al
│      ╎╎   0000:077a      add   di, 7
│      └──< 0000:077d      loop  0x779
│       ╎   0000:077f      pop   di
│       ╎   0000:0780      inc   di
│       ╎   0000:0781      pop   cx
│       └─< 0000:0782      loop  0x774
└           0000:0784      ret
```

### Function 0x00000872
```asm
; CALL XREFS from fcn.00000000 @ 0x79b, 0x80e
┌ fcn.00000872();
│           0000:0872      mov   es, word cs:[0xff2c]
│           0000:0877      mov   si, word es:[0x8002]
│           0000:087c      mov   cl, byte es:[si]
│           0000:087f      or    cl, cl
│       ┌─< 0000:0881      je    0x88f
│       │   0000:0883      xor   ch, ch
│       │   0000:0885      inc   si
│      ┌──> 0000:0886      cmp   al, byte es:[si]
│     ┌───< 0000:0889      jne   0x88c
│     │╎│   0000:088b      ret
│     └───> 0000:088c      inc   si
│      └──< 0000:088d      loop  0x886
│       └─> 0000:088f      not   cl
│           0000:0891      or    cl, cl
└           0000:0893      ret
```

### Function 0x00000894
```asm
; CALL XREFS from fcn.00000000 @ 0x7af, 0x822
┌ fcn.00000894(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0894      mov   si, word [0xc00f]
│           ; CODE XREF from fcn.00000894 @ 0x8ae
│       ┌─> 0000:0898      mov   ax, word [si]
│       ╎   0000:089a      cmp   ax, 0xffff
│      ┌──< 0000:089d      jne   0x8a0
│      │╎   0000:089f      ret
│      └──> 0000:08a0      sub   ax, bx                                ; arg3
│      ┌──< 0000:08a2      jne   0x8ab
│      │╎   0000:08a4      test  byte [si + 6], 0x40
│     ┌───< 0000:08a8      je    0x8ab
│     ││╎   0000:08aa      ret
│     └└──> 0000:08ab      add   si, 8
└       └─< 0000:08ae      jmp   0x898
```

### Function 0x000008b0
```asm
; XREFS: CALL 0x000001b5  CALL 0x000001db  CALL 0x00000200  
            ; XREFS: CALL 0x00000566  CALL 0x000005b2  CALL 0x000005cf  
┌ fcn.000008b0();
└           0000:08b0      call  fcn.00000b20                          ; fcn.00000b20
```

### Function 0x000008b3
```asm
; XREFS: CALL 0x0000036c  CALL 0x0000092e  CALL 0x00000cc8  
            ; XREFS: CALL 0x00000d06  CALL 0x00000e6d  CALL 0x00000eea  
            ; XREFS: CALL 0x00000f80  
┌ fcn.000008b3();
│           0000:08b3      call  fcn.00000979                          ; fcn.00000979
│           0000:08b6      call  fcn.00000954                          ; fcn.00000954
│           0000:08b9      call  word cs:[0x3004]
│           0000:08be      mov   cl, byte [0xff33]
│           0000:08c2      mov   al, 4
│           0000:08c4      mul   cl
│       ┌─> 0000:08c6      push  ax
│       ╎   0000:08c7      call  word cs:[0x110]
│       ╎   0000:08cc      call  word cs:[0x112]
│       ╎   0000:08d1      call  word cs:[0x114]
│       ╎   0000:08d6      call  word cs:[0x116]
│       ╎   0000:08db      call  word cs:[0x118]
│       ╎   0000:08e0      call  word cs:[0x11e]
│      ┌──< 0000:08e5      jae   0x8ea
│      │╎   0000:08e7      call  fcn.00001596                          ; fcn.00001596
│      └──> 0000:08ea      pop   ax
│       ╎   0000:08eb      cmp   byte [0xff1a], al
│       └─< 0000:08ef      jb    0x8c6
│           0000:08f1      mov   byte [0xff1a], 0
└           0000:08f6      ret
```

### Function 0x000008f7
```asm
; CALL XREF from fcn.00000000 @ 0x203
┌ fcn.000008f7();
│           0000:08f7      test  word [0xff18], 1
│       ┌─< 0000:08fd      jne   0x900
│       │   0000:08ff      ret
│       └─> 0000:0900      mov   byte [0xff75], 0xb                    ; [0xb:1]=114
│           0000:0905      call  word cs:[0x2002]
│           0000:090a      call  fcn.0000093c                          ; fcn.0000093c
│           0000:090d      call  word cs:[0xa002]
│           0000:0912      call  fcn.0000093c                          ; fcn.0000093c
│           0000:0915      call  word cs:[0x2002]
│           0000:091a      call  fcn.00000aa9                          ; fcn.00000aa9
│           0000:091d      call  word cs:[0x3002]
│           0000:0922      push  cs
│           0000:0923      pop   es
│           0000:0924      mov   al, 0xfe
│           0000:0926      mov   di, 0xe000
│           0000:0929      mov   cx, 0xe0
│           0000:092c      rep   stosb byte es:[di], al
│           0000:092e      call  fcn.000008b3                          ; fcn.000008b3
│           0000:0931      mov   byte [0xff1d], 0
│           0000:0936      mov   byte [0xff1e], 0
└           0000:093b      ret
```

### Function 0x0000093c
```asm
; CALL XREFS from fcn.000008f7 @ 0x90a, 0x912
┌ fcn.0000093c();
│           0000:093c      mov   es, word cs:[0xff2c]
│           0000:0941      mov   di, 0xc000
│           0000:0944      mov   si, 0xa000
│           0000:0947      mov   cx, 0x800
│       ┌─> 0000:094a      mov   ax, word es:[di]
│       ╎   0000:094d      movsw word es:[di], word ptr [si]
│       ╎   0000:094e      mov   word [si - 2], ax
│       └─< 0000:0951      loop  0x94a
└           0000:0953      ret
```

### Function 0x00000954
```asm
; CALL XREF from fcn.000008b3 @ 0x8b6
┌ fcn.00000954(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0954      mov   al, byte [0x83]                       ; [0x83:1]=232
│           0000:0957      cmp   al, 0x1b
│       ┌─< 0000:0959      jb    0x95c
│       │   0000:095b      ret
│       └─> 0000:095c      add   al, al
│           0000:095e      add   al, al
│           0000:0960      add   al, al
│           0000:0962      add   al, 5
│           0000:0964      xor   ah, ah
│           0000:0966      add   ax, 0xe000                            ; arg1
│           0000:0969      mov   di, ax                                ; arg1
│           0000:096b      push  cs
│           0000:096c      pop   es
│           0000:096d      mov   al, 0xff
│           0000:096f      stosb byte es:[di], al
│           0000:0970      stosb byte es:[di], al
│           0000:0971      stosb byte es:[di], al
│           0000:0972      add   di, 5
│           0000:0975      stosb byte es:[di], al
│           0000:0976      stosb byte es:[di], al
│           0000:0977      stosb byte es:[di], al
└           0000:0978      ret
```

### Function 0x00000979
```asm
; CALL XREF from fcn.000008b3 @ 0x8b3
┌ fcn.00000979();
│           0000:0979      push  cs
│           0000:097a      pop   es
│           0000:097b      xor   ax, ax
│           0000:097d      mov   al, byte [0x83]                       ; [0x83:1]=232
│           0000:0980      add   al, 4
│           0000:0982      add   ax, ax
│           0000:0984      add   ax, ax
│           0000:0986      add   ax, ax
│           0000:0988      add   ax, 5
│           0000:098b      add   ax, word [0xff2a]
│           0000:098f      push  ax
│           0000:0990      mov   si, ax
│           0000:0992      mov   di, 0x7c74                            ; 't|'
│           0000:0995      movsw word es:[di], word ptr [si]
│           0000:0996      movsb byte es:[di], byte ptr [si]
│           0000:0997      add   si, 5
│           0000:099a      mov   cx, 3
│           0000:099d      movsw word es:[di], word ptr [si]
│           0000:099e      movsb byte es:[di], byte ptr [si]
│           0000:099f      xor   dx, dx
│           0000:09a1      mov   dl, byte [0x83]                       ; [0x83:1]=232
│           0000:09a5      add   dl, 4
│           0000:09a8      add   dx, word [0x80]                       ; [0x80:2]=0xf600
│           0000:09ac      push  dx
│           0000:09ad      mov   si, 0x7c74                            ; 't|'
│           0000:09b0      mov   cx, 2
│       ┌─> 0000:09b3      push  si
│       ╎   0000:09b4      mov   al, byte [si]
│       ╎   0000:09b6      cmp   al, 0xfd
│      ┌──< 0000:09b8      jne   0x9cc
│      │╎   0000:09ba      call  fcn.00000a98                          ; fcn.00000a98
│      │╎   ; CODE XREF from fcn.00000979 @ 0x9ca
│     ┌───> 0000:09bd      mov   al, byte [si + 3]
│     ╎│╎   0000:09c0      cmp   al, 0xfd
│    ┌────< 0000:09c2      jne   0x9cc
│    │╎│╎   ; DATA XREF from fcn.000003ce @ 0x6e0
│    │╎│╎   0000:09c4      add   si, 8
│    │╎│╎   0000:09c7      call  fcn.00000a9c                          ; fcn.00000a9c
│    │└───< 0000:09ca      jmp   0x9bd
│    └─└──> 0000:09cc      pop   si
│       ╎   0000:09cd      mov   byte [si], al
│       ╎   0000:09cf      add   si, 3
│       ╎   0000:09d2      inc   dx
│       └─< 0000:09d3      loop  0x9b3
│           0000:09d5      mov   si, 0x7c74                            ; 't|'
│           0000:09d8      call  word cs:[0x300e]
│           0000:09dd      pop   dx
│           0000:09de      dec   dx
│           0000:09df      mov   word [0x7c49], dx                     ; [0x7c49:2]=0xffff
│           0000:09e3      pop   si
│           0000:09e4      push  cs
│           0000:09e5      pop   es
│           0000:09e6      mov   di, 0x7c7a                            ; 'z|'
│           0000:09e9      mov   al, byte [si - 8]
│           0000:09ec      stosb byte es:[di], al
│           0000:09ed      mov   al, byte [si]
│           0000:09ef      stosb byte es:[di], al
│           0000:09f0      mov   al, byte [si + 8]
│           0000:09f3      stosb byte es:[di], al
│           0000:09f4      mov   si, word [0xc00f]
│       ┌─> 0000:09f8      call  fcn.00000a7b                          ; fcn.00000a7b
│       ╎   0000:09fb      or    al, al
│      ┌──< 0000:09fd      je    0xa15
│      │╎   0000:09ff      push  ax
│      │╎   0000:0a00      call  word cs:[0x3014]
│      │╎   0000:0a05      pop   bx
│      │╎   0000:0a06      mov   es, word cs:[0xff2c]
│      │╎   0000:0a0b      push  si
│      │╎   0000:0a0c      mov   si, 0x7c74                            ; 't|'
│      │╎   0000:0a0f      call  word cs:[0x3010]
│      │╎   0000:0a14      pop   si
│      └──> 0000:0a15      add   si, 8
│       ╎   0000:0a18      cmp   word [si], 0xffff
│       └─< 0000:0a1b      jne   0x9f8
│           0000:0a1d      mov   si, 0x6a3b                            ; ';j'
│           0000:0a20      test  byte [0xc2], 1                        ; [0xc2:1]=232
│       ┌─< 0000:0a25      jne   0xa2a
│       │   0000:0a27      mov   si, 0x6a59                            ; 'Yj'
│       └─> 0000:0a2a      xor   ax, ax
│           0000:0a2c      mov   al, byte [0xe7]                       ; [0xe7:1]=255
│           0000:0a2f      add   ax, ax
│           0000:0a31      mov   bx, ax
│           0000:0a33      add   ax, ax
│           0000:0a35      add   ax, bx
│           0000:0a37      add   si, ax
│           0000:0a39      call  word cs:[0x3012]
└           0000:0a3e      ret
```

### Function 0x00000a7b
```asm
; CALL XREF from fcn.00000979 @ 0x9f8
┌ fcn.00000a7b();
│           0000:0a7b      mov   cx, 3
│           0000:0a7e      mov   dx, word [0x7c49]                     ; [0x7c49:2]=0xffff
│           0000:0a82      mov   di, 0x7c7a                            ; 'z|'
│       ┌─> 0000:0a85      cmp   byte [di], 0xfd
│      ┌──< 0000:0a88      jne   0xa91
│      │╎   0000:0a8a      mov   al, cl
│      │╎   0000:0a8c      cmp   dx, word [si]
│     ┌───< 0000:0a8e      jne   0xa91
│     ││╎   0000:0a90      ret
│     └└──> 0000:0a91      inc   di
│       ╎   0000:0a92      inc   dx
│       └─< 0000:0a93      loop  0xa85
│           0000:0a95      xor   al, al
└           0000:0a97      ret
```

### Function 0x00000a98
```asm
; CALL XREFS from fcn.00000243 @ 0x289, 0x2c8
            ; CALL XREFS from fcn.000002f1 @ 0x31d, 0x342
            ; CALL XREF from fcn.00000979 @ 0x9ba
┌ fcn.00000a98(int16_t arg2);
│           ; arg int16_t arg2 @ dx
└           0000:0a98      mov   si, word [0xc00f]
```

### Function 0x00000a9c
```asm
; CALL XREF from fcn.00000979 @ 0x9c7
            ; CODE XREF from fcn.00000a9c @ 0xaa4
┌ fcn.00000a9c(short unsigned int arg2);
│           ; arg short unsigned int arg2 @ dx
│       ┌─> 0000:0a9c      cmp   dx, word [si]                         ; arg2
│      ┌──< 0000:0a9e      jne   0xaa1
│      │╎   0000:0aa0      ret
│      └──> 0000:0aa1      add   si, 8
└       └─< 0000:0aa4      jmp   fcn.00000a9c
```

### Function 0x00000aa6
```asm
; CALL XREFS from fcn.00000000 @ 0x9e, 0xece
┌ fcn.00000aa6();
└           0000:0aa6      call  fcn.00000da2                          ; fcn.00000da2
```

### Function 0x00000aa9
```asm
; CALL XREF from fcn.000008f7 @ 0x91a
┌ fcn.00000aa9();
│           0000:0aa9      mov   al, byte [0xff14]                     ; [0xff14:1]=255
│           0000:0aac      push  ds
│           0000:0aad      lcall [0x6ae9]
│           0000:0ab1      pop   ds
└           0000:0ab2      ret
```

### Function 0x00000ab3
```asm
; CALL XREFS from fcn.00000000 @ 0x9b, 0x17b
┌ fcn.00000ab3(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0ab3      mov   al, byte [0x7c45]                     ; [0x7c45:1]=255
│           0000:0ab6      and   al, 1
│           0000:0ab8      mov   cl, 0xb
│           0000:0aba      mul   cl
│           0000:0abc      mov   si, ax                                ; arg1
│           0000:0abe      add   si, 0x6ad3
│           0000:0ac2      mov   ax, cs
│           0000:0ac4      add   ax, 0x2000                            ; int16_t arg1
│           0000:0ac7      mov   word [0x6aeb], ax                     ; [0x6aeb:2]=0xffff
│           0000:0aca      mov   es, ax
│           0000:0acc      mov   di, 0x3300
│           0000:0acf      mov   al, 3
│           0000:0ad1      call  word cs:[fcn.0000010c]                ; 0x10c
└           0000:0ad6      ret
```

### Function 0x00000af1
```asm
; CALL XREF from fcn.00000000 @ 0xc2
            ; CALL XREFS from fcn.000003ce @ 0x656, 0x693, 0x707
            ; CALL XREF from fcn.00000000 @ 0xee2
┌ fcn.00000af1(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0af1      mov   si, word [0xc015]
│           ; CODE XREF from fcn.00000af1 @ 0xb1e
│       ┌─> 0000:0af5      lodsw ax, word [si]
│       ╎   0000:0af6      mov   bx, ax                                ; arg1
│       ╎   0000:0af8      and   al, ah
│       ╎   0000:0afa      inc   al
│      ┌──< 0000:0afc      jne   0xaff
│      │╎   0000:0afe      ret
│      └──> 0000:0aff      lodsb al, byte [si]
│       ╎   0000:0b00      and   al, byte [bx]
│      ┌──< 0000:0b02      jne   0xb0e
│      │╎   ; CODE XREF from fcn.00000af1 @ 0xb0c
│     ┌───> 0000:0b04      lodsw ax, word [si]
│     ╎│╎   0000:0b05      and   al, ah
│     ╎│╎   0000:0b07      inc   al
│    ┌────< 0000:0b09      je    0xb1e
│    │╎│╎   0000:0b0b      inc   si
│    │└───< 0000:0b0c      jmp   0xb04
│    │ │╎   ; CODE XREF from fcn.00000af1 @ 0xb1c
│    │┌└──> 0000:0b0e      lodsw ax, word [si]
│    │╎ ╎   0000:0b0f      mov   bx, ax                                ; arg1
│    │╎ ╎   0000:0b11      and   al, ah
│    │╎ ╎   0000:0b13      inc   al
│    │╎┌──< 0000:0b15      je    0xb1e
│    │╎│╎   0000:0b17      mov   al, byte [si]
│    │╎│╎   0000:0b19      mov   byte [bx], al
│    │╎│╎   0000:0b1b      inc   si
│    │└───< 0000:0b1c      jmp   0xb0e
└    └─└└─< 0000:0b1e      jmp   0xaf5
```

### Function 0x00000b20
```asm
; CALL XREF from fcn.000008b0 @ 0x8b0
┌ fcn.00000b20();
│           0000:0b20      call  fcn.00000c52                          ; fcn.00000c52
│           0000:0b23      mov   si, word [0xc00f]
│           ; CODE XREF from fcn.00000b20 @ 0xb43
│       ┌─> 0000:0b27      mov   dx, word [si]
│       ╎   0000:0b29      cmp   dx, 0xffff
│      ┌──< 0000:0b2c      jne   0xb31
│     ┌───< 0000:0b2e      jmp   fcn.00000c2f                          ; fcn.00000c2f
│     │└──> 0000:0b31      mov   bl, byte [si + 5]
│     │ ╎   0000:0b34      xor   bh, bh
│     │ ╎   0000:0b36      add   bx, bx
│     │ ╎   0000:0b38      mov   ax, word [bx + 0x6b41]
│     │ ╎   0000:0b3c      call  ax
│     │ ╎   0000:0b3e      mov   word [si], dx
│     │ ╎   0000:0b40      add   si, 8
└     │ └─< 0000:0b43      jmp   0xb27
```

### Function 0x00000c2f
```asm
; CALL XREF from fcn.00000000 @ 0x16c
            ; CODE XREF from fcn.00000b20 @ 0xb2e
┌ fcn.00000c2f();
│           0000:0c2f      mov   si, word [0xc00f]
│           ; CODE XREF from fcn.00000c2f @ 0xc50
│       ┌─> 0000:0c33      mov   bx, word [si]
│       ╎   0000:0c35      cmp   bx, 0xffff
│      ┌──< 0000:0c38      jne   0xc3b
│      │╎   0000:0c3a      ret
│      └──> 0000:0c3b      add   bx, bx
│       ╎   0000:0c3d      add   bx, bx
│       ╎   0000:0c3f      add   bx, bx
│       ╎   0000:0c41      mov   al, byte [bx - 0x3fe4]
│       ╎   0000:0c45      mov   byte [bx - 0x3fe4], 0xfd              ; [0xfd:1]=119
│       ╎   0000:0c4a      mov   byte [si + 3], al
│       ╎   0000:0c4d      add   si, 8
└       └─< 0000:0c50      jmp   0xc33
```

### Function 0x00000c52
```asm
; CALL XREF from fcn.00000b20 @ 0xb20
            ; CALL XREFS from fcn.00000cb9 @ 0xcc0, 0xcfe
            ; CALL XREF from fcn.00000000 @ 0xe65
┌ fcn.00000c52();
│           0000:0c52      mov   si, word [0xc00f]
│           ; CODE XREF from fcn.00000c52 @ 0xc74
│       ┌─> 0000:0c56      mov   bx, word [si]
│       ╎   0000:0c58      cmp   bx, 0xffff
│      ┌──< 0000:0c5b      jne   0xc5e
│      │╎   0000:0c5d      ret
│      └──> 0000:0c5e      mov   al, byte [si + 3]
│       ╎   0000:0c61      cmp   al, 0xfd
│      ┌──< 0000:0c63      je    0xc71
│      │╎   0000:0c65      add   bx, bx
│      │╎   0000:0c67      add   bx, bx
│      │╎   0000:0c69      add   bx, bx
│      │╎   0000:0c6b      add   bx, 0xc01c
│      │╎   0000:0c6f      mov   byte [bx], al
│      └──> 0000:0c71      add   si, 8
└       └─< 0000:0c74      jmp   0xc56
```

### Function 0x00000c76
```asm
; CALL XREFS from fcn.00000000 @ 0xfc, 0xec2
┌ fcn.00000c76();
│           0000:0c76      mov   si, 0x6c93
│           0000:0c79      call  word cs:[0x200e]
│           0000:0c7e      mov   si, 0x6c9b
│           0000:0c81      call  word cs:[0x200e]
│           0000:0c86      mov   si, 0x6ca4
│           0000:0c89      call  word cs:[0x200e]
│           0000:0c8e      mov   si, 0x6cac
│           0000:0c91      call  word cs:[0x200e]
└           0000:0c96      ret
```

### Function 0x00000cb9
```asm
╎╎   ; CALL XREF from fcn.00000000 @ 0x206
┌ fcn.00000cb9();
│      ╎╎   0000:0cb9      mov   al, byte [0x83]                       ; [0x83:1]=232
│      ╎╎   0000:0cbc      inc   al
│     ┌───< 0000:0cbe      jne   0xcf9
│     │╎╎   0000:0cc0      call  fcn.00000c52                          ; fcn.00000c52
│     │╎╎   0000:0cc3      mov   byte [0xff1a], 0x28                   ; '('
│     │╎╎                                                              ; [0x28:1]=235
│     │╎╎   0000:0cc8      call  fcn.000008b3                          ; fcn.000008b3
│     │╎╎   0000:0ccb      mov   si, word [0xc007]
│     │╎╎   ; CODE XREF from fcn.00000cb9 @ 0xcd7
│    ┌────> 0000:0ccf      test  byte [si], 1
│   ┌─────< 0000:0cd2      jne   0xcd9
│   │╎│╎╎   0000:0cd4      add   si, 4
│   │└────< 0000:0cd7      jmp   0xccf
│   └─────> 0000:0cd9      lodsb al, byte [si]
│     │╎╎   0000:0cda      mov   ah, al
│     │╎╎   0000:0cdc      lodsb al, byte [si]
│     │╎╎   0000:0cdd      and   ah, 0xfe
│    ┌────< 0000:0ce0      je    0xce5
│   ┌─────< 0000:0ce2      jmp   0xffc                                 ; fcn.00000000+0xffc
│   │└────> 0000:0ce5      call  fcn.00000d34                          ; fcn.00000d34
│   │ │╎╎   0000:0ce8      mov   byte [0x83], 0x1a                     ; [0x1a:1]=66
│   │ │╎╎   0000:0ced      mov   ax, word [0xc002]                     ; [0xc002:2]=0xffff
│   │ │╎╎   0000:0cf0      sub   ax, 0x24
│   │ │╎╎   0000:0cf3      mov   word [0x80], ax
│   │ │└──< 0000:0cf6      jmp   0xbb                                  ; fcn.00000000+0xbb
│   │ └───> 0000:0cf9      cmp   al, 0x1c
│   │  ┌──< 0000:0cfb      je    0xcfe
│   │  │╎   0000:0cfd      ret
│   │  └──> 0000:0cfe      call  fcn.00000c52                          ; fcn.00000c52
│   │   ╎   0000:0d01      mov   byte [0xff1a], 0x28                   ; '('
│   │   ╎                                                              ; [0x28:1]=235
│   │   ╎   0000:0d06      call  fcn.000008b3                          ; fcn.000008b3
│   │   ╎   0000:0d09      mov   si, word [0xc007]
│   │   ╎   ; CODE XREF from fcn.00000cb9 @ 0xd15
│   │  ┌──> 0000:0d0d      test  byte [si], 1
│   │ ┌───< 0000:0d10      je    0xd17
│   │ │╎╎   0000:0d12      add   si, 4
│   │ │└──< 0000:0d15      jmp   0xd0d
│   │ └───> 0000:0d17      lodsb al, byte [si]
│   │   ╎   0000:0d18      mov   ah, al
│   │   ╎   0000:0d1a      lodsb al, byte [si]
│   │   ╎   0000:0d1b      and   ah, 0xfe
│   │  ┌──< 0000:0d1e      je    0xd23
│   │ ┌───< 0000:0d20      jmp   0xffc                                 ; fcn.00000000+0xffc
│   │ │└──> 0000:0d23      call  fcn.00000d34                          ; fcn.00000d34
│   │ │ ╎   0000:0d26      mov   byte [0x83], 0
│   │ │ ╎   0000:0d2b      mov   word [0x80], 0
└   │ │ └─< 0000:0d31      jmp   0xbb                                  ; fcn.00000000+0xbb
```

### Function 0x00000d34
```asm
; CALL XREFS from fcn.00000cb9 @ 0xce5, 0xd23
┌ fcn.00000d34(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0d34      or    al, 0x80
│           0000:0d36      mov   byte [0xc4], al
│           0000:0d39      lodsw ax, word [si]                         ; int16_t arg1
│           0000:0d3a      push  ax                                    ; arg1
│           0000:0d3b      mov   ah, byte [0xc4]                       ; [0xc4:1]=10
│           0000:0d3f      mov   al, 1
│           0000:0d41      call  word cs:[fcn.0000010c]                ; 0x10c
│           0000:0d46      pop   ax                                    ; int16_t arg1
│           0000:0d47      push  ax
│           0000:0d48      mov   cl, 0xb
│           0000:0d4a      mul   cl
│           0000:0d4c      mov   si, ax
│           0000:0d4e      add   si, 0x6d88
│           0000:0d52      mov   es, word cs:[0xff2c]
│           0000:0d57      mov   di, 0x4000
│           0000:0d5a      mov   al, 2
│           0000:0d5c      call  word cs:[fcn.0000010c]                ; 0x10c
│           0000:0d61      push  ds
│           0000:0d62      mov   ds, word cs:[0xff2c]
│           0000:0d67      mov   si, 0x4100
│           0000:0d6a      mov   ax, cs
│           0000:0d6c      add   ax, 0x2000
│           0000:0d6f      mov   es, ax
│           0000:0d71      mov   di, 0x7000
│           0000:0d74      mov   cx, 0xa0
│           0000:0d77      call  word cs:[0x3026]
│           0000:0d7c      pop   ds
│           0000:0d7d      pop   ax
│           0000:0d7e      cmp   ah, byte [0x7c46]                     ; [0x7c46:1]=255
│       ┌─< 0000:0d82      je    0xd8b
│       │   0000:0d84      mov   byte [0x7c46], ah                     ; [0x7c46:1]=255
│       │   0000:0d88      call  fcn.00000da2                          ; fcn.00000da2
└       └─> 0000:0d8b      ret
```

### Function 0x00000da2
```asm
; CALL XREF from fcn.00000aa6 @ 0xaa6
            ; CALL XREF from fcn.00000d34 @ 0xd88
┌ fcn.00000da2(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0da2      mov   al, 0xb
│           0000:0da4      mul   byte [0x7c46]
│           0000:0da8      add   ax, 0x6dce                            ; int16_t arg1
│           0000:0dab      mov   si, ax                                ; arg1
│           0000:0dad      mov   es, word cs:[0xff2c]
│           0000:0db2      mov   di, 0x8000
│           0000:0db5      mov   al, 2
│           0000:0db7      call  word cs:[fcn.0000010c]                ; 0x10c
│           0000:0dbc      add   word es:[di], 0x8000                  ; [0x8000:2]=0xffff
│           0000:0dc1      add   word es:[di + 2], 0x8000              ; [0x8000:2]=0xffff
│           0000:0dc7      add   word es:[di + 4], 0x8000              ; [0x8000:2]=0xffff
└           0000:0dcd      jmp   word cs:[0x3024]
```

### Function 0x00000df3
```asm
; CALL XREF from fcn.00000000 @ 0x51
┌ fcn.00000df3();
│           0000:0df3      mov   es, word cs:[0xff2c]
│           0000:0df8      mov   si, 0x6e1e
│           0000:0dfb      mov   di, 0x6000
│           0000:0dfe      mov   al, 2
│           0000:0e00      call  word cs:[fcn.0000010c]                ; 0x10c
│           0000:0e05      push  ds
│           0000:0e06      mov   ds, word cs:[0xff2c]
│           0000:0e0b      mov   si, 0x6000
│           0000:0e0e      mov   ax, cs
│           0000:0e10      add   ax, 0x2000
│           0000:0e13      mov   es, ax
│           0000:0e15      mov   di, 0x8000
│           0000:0e18      mov   cx, 0x2e                              ; '.'
│           0000:0e1b      call  word cs:[0x3026]
│           0000:0e20      pop   ds
└           0000:0e21      ret
```

### Function 0x00001046
```asm
; XREFS: CALL 0x0000108d  CALL 0x000011a2  CALL 0x000011ed  
            ; XREFS: CALL 0x00001358  CALL 0x000013d7  CALL 0x00001457  
            ; XREFS: CALL 0x0000149c  CALL 0x000014c8  
┌ fcn.00001046();
│           0000:1046      push  si
│           0000:1047      push  di
│           0000:1048      call  word cs:[0x110]
│           0000:104d      call  word cs:[0x112]
│           0000:1052      call  word cs:[0x11e]
│       ┌─< 0000:1057      jae   0x105c
│       │   0000:1059      call  fcn.00001596                          ; fcn.00001596
│       └─> 0000:105c      pop   di
│           0000:105d      pop   si
│           0000:105e      test  byte [0x7c42], 0xff                   ; [0x7c42:1]=255
│       ┌─< 0000:1063      jne   0x1066
│       │   0000:1065      ret
│       └─> 0000:1066      push  si
│           0000:1067      push  di
│           0000:1068      call  word cs:[0xa002]
│           0000:106d      pop   di
│           0000:106e      pop   si
└           0000:106f      ret
```

### Function 0x0000116d
```asm
; CALL XREFS from fcn.00001046 @ +0x3f, +0xaa, +0x11b, +0x121
┌ fcn.0000116d();
│           0000:116d      mov   byte [0xff4e], 0
│           0000:1172      inc   byte [0x7c52]
│           0000:1176      inc   byte [0xff4f]
│           0000:117a      cmp   byte [0x7c52], 4                      ; [0x7c52:1]=255
│       ┌─< 0000:117f      jb    0x1192
│       │   0000:1181      call  fcn.0000126d                          ; fcn.0000126d
│       │   0000:1184      push  cx
│       │   0000:1185      call  0x1192
│       │   0000:1188      pop   cx
│       │   0000:1189      cmp   cx, 2
│      ┌──< 0000:118c      jb    0x1191
│      ││   0000:118e      call  fcn.000011c0                          ; fcn.000011c0
│      └──> 0000:1191      ret
│       │   ; CALL XREF from fcn.0000116d @ 0x1185
│       └─> 0000:1192      cmp   byte [0xff4f], 5
│       ┌─< 0000:1197      jae   0x119a
│       │   0000:1199      ret
│       └─> 0000:119a      dec   byte [0xff4f]
│           0000:119e      mov   cx, 0xa
│       ┌─> 0000:11a1      push  cx
│       ╎   0000:11a2      call  fcn.00001046                          ; fcn.00001046
│       ╎   0000:11a5      mov   bx, 0x762
│       ╎   0000:11a8      mov   cx, 0x1a32
│       ╎   0000:11ab      call  word cs:[0x2024]
│       ╎   0000:11b0      pop   cx
│       └─< 0000:11b1      loop  0x11a1
└           0000:11b3      ret
```

### Function 0x000011c0
```asm
; CALL XREF from fcn.0000116d @ 0x118e
            ; CALL XREF from fcn.0000116d @ +0x47
┌ fcn.000011c0();
│           0000:11c0      mov   bx, 0x9c
│           0000:11c3      mov   cl, 0x8b
│           0000:11c5      mov   ax, 0x27c
│           0000:11c8      call  word cs:[0x2022]
│           0000:11cd      call  fcn.000011e3                          ; fcn.000011e3
│           0000:11d0      mov   bx, 0x278b
│           0000:11d3      mov   cx, 0x20a
│           0000:11d6      xor   al, al
│           0000:11d8      call  word cs:[0x2000]
│           0000:11dd      mov   byte [0x7c52], 0                      ; [0x7c52:1]=255
└           0000:11e2      ret
```

### Function 0x000011e3
```asm
; CALL XREF from fcn.0000116d @ +0x4d
            ; CALL XREF from fcn.000011c0 @ 0x11cd
┌ fcn.000011e3();
│           0000:11e3      mov   byte [0xff1d], 0
│           0000:11e8      mov   byte [0xff1e], 0
│       ┌─> 0000:11ed      call  fcn.00001046                          ; fcn.00001046
│       ╎   0000:11f0      mov   al, byte [0xff1d]                     ; [0xff1d:1]=255
│       ╎   0000:11f3      or    al, byte [0xff1e]
│       └─< 0000:11f7      je    0x11ed
│           0000:11f9      mov   byte [0xff1d], 0
│           0000:11fe      mov   byte [0xff1e], 0
│           0000:1203      mov   byte [0xff75], 0x1d                   ; [0x1d:1]=116
└           0000:1208      ret
```

### Function 0x00001228
```asm
; CALL XREFS from fcn.00001046 @ +0x2e, +0x10a
            ; CALL XREF from fcn.0000126d @ 0x12b0
┌ fcn.00001228(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:1228      xor   cx, cx
│           0000:122a      xor   dx, dx
│           ; CODE XREF from fcn.00001228 @ 0x1257
│      ┌┌─> 0000:122c      lodsb al, byte [si]
│      ╎╎   0000:122d      or    al, al
│     ┌───< 0000:122f      je    0x1259
│     │╎╎   0000:1231      cmp   al, 0xff
│    ┌────< 0000:1233      je    0x1259
│    ││╎╎   0000:1235      cmp   al, 0x20
│   ┌─────< 0000:1237      je    0x1259
│   │││╎╎   0000:1239      cmp   al, 0x2f
│  ┌──────< 0000:123b      je    0x1259
│  ││││╎╎   0000:123d      cmp   al, 0xd
│ ┌───────< 0000:123f      je    0x1259
│ │││││╎╎   0000:1241      cmp   al, 0xc
│ ────────< 0000:1243      je    0x1259
│ │││││╎╎   0000:1245      mov   ah, al
│ │││││╎╎   0000:1247      sub   al, 0x20
│ │││││└──< 0000:1249      jb    0x122c
│ │││││ ╎   0000:124b      inc   dx
│ │││││ ╎   0000:124c      mov   bl, al
│ │││││ ╎   0000:124e      xor   bh, bh
│ │││││ ╎   0000:1250      add   cl, byte cs:[bx + 0x7be2]             ; arg3
│ │││││ ╎   0000:1255      adc   ch, bh
│ │││││ └─< 0000:1257      jmp   0x122c
│ └└└└└───> 0000:1259      cmp   dx, 1
│       ┌─< 0000:125c      je    0x125f
│       │   0000:125e      ret
│       └─> 0000:125f      cmp   ah, 0x2e
│       ┌─< 0000:1262      je    0x126a
│       │   0000:1264      cmp   ah, 0x2c
│      ┌──< 0000:1267      je    0x126a
│      ││   0000:1269      ret
│      └└─> 0000:126a      xor   cx, cx
└           0000:126c      ret
```

### Function 0x0000126d
```asm
; CALL XREF from fcn.0000116d @ 0x1181
┌ fcn.0000126d(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:126d      mov   si, word [0xff4c]
│           0000:1271      xor   cx, cx
│           0000:1273      xor   dx, dx
│           ; CODE XREFS from fcn.0000126d @ 0x1283, 0x1290, 0x1299, 0x12c2
│  ┌┌┌┌┌┌─> 0000:1275      lodsb al, byte [si]
│  ╎╎╎╎╎╎   0000:1276      or    al, al
│ ┌───────< 0000:1278      je    0x12c4
│ │╎╎╎╎╎╎   0000:127a      cmp   al, 0xff
│ ────────< 0000:127c      jne   0x1285
│ │╎╎╎╎╎╎   0000:127e      lodsb al, byte [si]
│ │╎╎╎╎╎╎   0000:127f      cmp   al, 0xff
│ ────────< 0000:1281      je    0x12c4
│ │└──────< 0000:1283      jmp   0x1275
│ ────────> 0000:1285      cmp   al, 0xc
│ │┌──────< 0000:1287      je    0x12c4
│ ││╎╎╎╎╎   0000:1289      cmp   al, 0x2f
│ ────────< 0000:128b      jne   0x1292
│ ││╎╎╎╎╎   0000:128d      xor   dx, dx
│ ││╎╎╎╎╎   0000:128f      inc   cx
│ ││└─────< 0000:1290      jmp   0x1275
│ ────────> 0000:1292      cmp   al, 0xd
│ ││┌─────< 0000:1294      jne   0x129b
│ │││╎╎╎╎   0000:1296      xor   dx, dx
│ │││╎╎╎╎   0000:1298      inc   cx
│ │││└────< 0000:1299      jmp   0x1275
│ ││└─────> 0000:129b      mov   bl, al
│ ││  ╎╎╎   0000:129d      sub   bl, 0x20
│ ││  ╎╎╎   0000:12a0      xor   bh, bh
│ ││  ╎╎╎   0000:12a2      mov   bl, byte [bx + 0x7be2]                ; arg3
│ ││  ╎╎╎   0000:12a6      add   dx, bx                                ; arg3
│ ││  ╎╎╎   0000:12a8      cmp   al, 0x20
│ ││  └───< 0000:12aa      jne   0x1275
│ ││   ╎╎   0000:12ac      push  cx
│ ││   ╎╎   0000:12ad      push  si
│ ││   ╎╎   0000:12ae      push  dx
│ ││   ╎╎   0000:12af      push  dx
│ ││   ╎╎   0000:12b0      call  fcn.00001228                          ; fcn.00001228
│ ││   ╎╎   0000:12b3      pop   dx
│ ││   ╎╎   0000:12b4      add   dx, cx
│ ││   ╎╎   0000:12b6      cmp   dx, 0xd0
│ ││   ╎╎   0000:12ba      pop   dx
│ ││   ╎╎   0000:12bb      pop   si
│ ││   ╎╎   0000:12bc      pop   cx
│ ││   └──< 0000:12bd      jb    0x1275
│ ││    ╎   0000:12bf      xor   dx, dx
│ ││    ╎   0000:12c1      inc   cx
│ ││    └─< 0000:12c2      jmp   0x1275
│ └└──────> 0000:12c4      or    dx, dx
│       ┌─< 0000:12c6      jne   0x12c9
│       │   0000:12c8      ret
│       └─> 0000:12c9      inc   cx
└           0000:12ca      ret
```

### Function 0x0000131b
```asm
; CALL XREFS from fcn.0000126d @ +0x66, +0x6e, +0x76
┌ fcn.0000131b(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:131b      xor   dh, dh
│           ; CODE XREF from fcn.0000131b @ 0x132d
│       ┌─> 0000:131d      sub   dl, bl
│      ┌──< 0000:131f      jb    0x1331
│      │╎   0000:1321      sub   ax, cx                                ; arg4
│     ┌───< 0000:1323      jae   0x132b
│     ││╎   0000:1325      or    dl, dl
│    ┌────< 0000:1327      je    0x132f
│    │││╎   0000:1329      dec   dl
│    │└───> 0000:132b      inc   dh
│    │ │└─< 0000:132d      jmp   0x131d
│    └────> 0000:132f      add   ax, cx                                ; arg4
│      └──> 0000:1331      add   dl, bl
│           0000:1333      push  ax                                    ; arg1
│           0000:1334      mov   al, dh
│           0000:1336      stosb byte es:[di], al
│           0000:1337      pop   ax
└           0000:1338      ret
```

### Function 0x00001339
```asm
; CALL XREFS from fcn.0000126d @ +0x7c, +0x82, +0x88
┌ fcn.00001339(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1339      xor   dh, dh
│           0000:133b      div   cx
│           0000:133d      xchg  dx, ax                                ; arg1
│           0000:133e      mov   dh, dl
│           0000:1340      xor   dl, dl
│           0000:1342      push  ax                                    ; arg1
│           0000:1343      mov   al, dh
│           0000:1345      stosb byte es:[di], al
│           0000:1346      pop   ax
└           0000:1347      ret
```

### Function 0x00001348
```asm
; CALL XREF from fcn.00000712 @ 0x72c
            ; CALL XREF from fcn.000014d7 @ 0x14fd
┌ fcn.00001348(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:1348      mov   byte [0xff1d], 0
│           0000:134d      mov   byte [0xff1e], 0
│           0000:1352      push  bx                                    ; arg3
│           0000:1353      call  fcn.0000146d                          ; fcn.0000146d
│           0000:1356      pop   bx
│           0000:1357      push  bx
│           0000:1358      call  fcn.00001046                          ; fcn.00001046
│           0000:135b      pop   bx
│           0000:135c      mov   byte [0xff1a], 0
│           0000:1361      test  byte [0xff1e], 0xff
│           0000:1366      stc
│       ┌─< 0000:1367      je    0x136a
│       │   0000:1369      ret
│       └─> 0000:136a      test  byte [0xff1d], 0xff
│       ┌─< 0000:136f      je    0x1378
│       │   0000:1371      clc
│       │   0000:1372      mov   byte [0xff75], 0x1f                   ; [0x1f:1]=116
│       │   0000:1377      ret
│       └─> 0000:1378      mov   ax, 0x7353                            ; 'Ss'
│           0000:137b      push  ax
│           0000:137c      int   0x61
│           0000:137e      and   al, 3
│           0000:1380      cmp   al, 1
│       ┌─< 0000:1382      jne   0x13ed
│       │   0000:1384      or    bl, bl
│      ┌──< 0000:1386      je    0x1390
│      ││   0000:1388      push  bx
│      ││   0000:1389      call  fcn.0000147f                          ; fcn.0000147f
│      ││   0000:138c      pop   bx
│      ││   0000:138d      dec   bl
│      ││   0000:138f      ret
│      └──> 0000:1390      test  byte [0xff56], 0xff
│      ┌──< 0000:1395      jne   0x1398
│      ││   0000:1397      ret
│      └──> 0000:1398      push  di
│       │   0000:1399      push  si
│       │   0000:139a      push  bx
│       │   0000:139b      dec   byte [0xff56]
│       │   0000:139f      mov   al, byte [0xff56]                     ; [0xff56:1]=255
│       │   0000:13a2      add   al, bl
│       │   0000:13a4      mov   bx, 0xff58
│       │   0000:13a7      xlatb
│       │   0000:13a8      call  word cs:[0x301a]
│       │   0000:13ad      mov   cx, 0xa
│      ┌──> 0000:13b0      push  cx
│      ╎│   0000:13b1      mov   bx, word [0xff54]
│      ╎│   0000:13b5      add   bx, 0x301
│      ╎│   0000:13b9      mov   al, cl
│      ╎│   0000:13bb      dec   al
│      ╎│   0000:13bd      mov   cl, byte [0xff52]
│      ╎│   0000:13c1      add   cl, cl
│      ╎│   0000:13c3      mov   dl, cl
│      ╎│   0000:13c5      add   cl, cl
│      ╎│   0000:13c7      add   cl, cl
│      ╎│   0000:13c9      add   cl, dl
│      ╎│   0000:13cb      sub   cl, 2
│      ╎│   0000:13ce      mov   ch, byte [0xff6a]
│      ╎│   0000:13d2      call  word cs:[0x301e]
│     ┌───> 0000:13d7      call  fcn.00001046                          ; fcn.00001046
│     ╎╎│   0000:13da      cmp   byte [0xff1a], 4
│     └───< 0000:13df      jb    0x13d7
│      ╎│   0000:13e1      mov   byte [0xff1a], 0
│      ╎│   0000:13e6      pop   cx
│      └──< 0000:13e7      loop  0x13b0
│       │   0000:13e9      pop   bx
│       │   0000:13ea      pop   si
│       │   0000:13eb      pop   di
│       │   0000:13ec      ret
│       └─> 0000:13ed      cmp   al, 2
│       ┌─< 0000:13ef      je    0x13f2
│       │   0000:13f1      ret
│       └─> 0000:13f2      mov   al, byte [0xff52]                     ; [0xff52:1]=255
│           0000:13f5      dec   al
│           0000:13f7      cmp   bl, al
│       ┌─< 0000:13f9      jae   0x1403
│       │   0000:13fb      push  bx
│       │   0000:13fc      call  fcn.000014ab                          ; fcn.000014ab
│       │   0000:13ff      pop   bx
│       │   0000:1400      inc   bl
│       │   0000:1402      ret
│       └─> 0000:1403      mov   al, bl
│           0000:1405      add   al, byte [0xff56]
│           0000:1409      inc   al
│           0000:140b      mov   ah, byte [0xff53]
│           0000:140f      dec   ah
│           0000:1411      cmp   ah, al
│       ┌─< 0000:1413      jae   0x1416
│       │   0000:1415      ret
│       └─> 0000:1416      push  di
│           0000:1417      push  si
│           0000:1418      push  bx
│           0000:1419      inc   byte [0xff56]
│           0000:141d      mov   al, byte [0xff56]                     ; [0xff56:1]=255
│           0000:1420      add   al, bl
│           0000:1422      mov   bx, 0xff58
│           0000:1425      xlatb
│           0000:1426      call  word cs:[0x301a]
│           0000:142b      mov   cx, 0xa
│       ┌─> 0000:142e      push  cx
│       ╎   0000:142f      mov   bx, word [0xff54]
│       ╎   0000:1433      add   bx, 0x301
│       ╎   0000:1437      mov   al, cl
│       ╎   0000:1439      neg   al
│       ╎   0000:143b      add   al, 0xa
│       ╎   0000:143d      mov   cl, byte [0xff52]
│       ╎   0000:1441      add   cl, cl
│       ╎   0000:1443      mov   dl, cl
│       ╎   0000:1445      add   cl, cl
│       ╎   0000:1447      add   cl, cl
│       ╎   0000:1449      add   cl, dl
│       ╎   0000:144b      sub   cl, 2
│       ╎   0000:144e      mov   ch, byte [0xff6a]
│       ╎   0000:1452      call  word cs:[0x3020]
│      ┌──> 0000:1457      call  fcn.00001046                          ; fcn.00001046
│      ╎╎   0000:145a      cmp   byte [0xff1a], 4
│      └──< 0000:145f      jb    0x1457
│       ╎   0000:1461      mov   byte [0xff1a], 0
│       ╎   0000:1466      pop   cx
│       └─< 0000:1467      loop  0x142e
│           0000:1469      pop   bx
│           0000:146a      pop   si
│           0000:146b      pop   di
└           0000:146c      ret
```

### Function 0x0000146d
```asm
; CALL XREF from fcn.00001348 @ 0x1353
┌ fcn.0000146d(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:146d      mov   al, 0xa
│           0000:146f      mul   bl
│           0000:1471      add   ax, word [0xff54]                     ; arg1
│           0000:1475      add   ax, 0x100                             ; arg1
│           0000:1478      mov   bx, ax                                ; arg1
└           0000:147a      jmp   word cs:[0x3018]
```

### Function 0x0000147f
```asm
; CALL XREF from fcn.00001348 @ 0x1389
┌ fcn.0000147f(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:147f      mov   al, 0xa
│           0000:1481      mul   bl
│           0000:1483      add   ax, word [0xff54]                     ; arg1
│           0000:1487      add   ax, 0x100                             ; arg1
│           0000:148a      mov   bx, ax                                ; arg1
│           0000:148c      mov   cx, 0xa
│       ┌─> 0000:148f      push  cx
│       ╎   0000:1490      mov   byte [0xff1a], 0
│       ╎   0000:1495      dec   bx
│       ╎   0000:1496      push  bx
│       ╎   0000:1497      call  word cs:[0x3018]
│      ┌──> 0000:149c      call  fcn.00001046                          ; fcn.00001046
│      ╎╎   0000:149f      cmp   byte [0xff1a], 4
│      └──< 0000:14a4      jb    0x149c
│       ╎   0000:14a6      pop   bx
│       ╎   0000:14a7      pop   cx
│       └─< 0000:14a8      loop  0x148f
└           0000:14aa      ret
```

### Function 0x000014ab
```asm
; CALL XREF from fcn.00001348 @ 0x13fc
┌ fcn.000014ab(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:14ab      mov   al, 0xa
│           0000:14ad      mul   bl
│           0000:14af      add   ax, word [0xff54]                     ; arg1
│           0000:14b3      add   ax, 0x100                             ; arg1
│           0000:14b6      mov   bx, ax                                ; arg1
│           0000:14b8      mov   cx, 0xa
│       ┌─> 0000:14bb      push  cx
│       ╎   0000:14bc      mov   byte [0xff1a], 0
│       ╎   0000:14c1      inc   bx
│       ╎   0000:14c2      push  bx
│       ╎   0000:14c3      call  word cs:[0x3018]
│      ┌──> 0000:14c8      call  fcn.00001046                          ; fcn.00001046
│      ╎╎   0000:14cb      cmp   byte [0xff1a], 4
│      └──< 0000:14d0      jb    0x14c8
│       ╎   0000:14d2      pop   bx
│       ╎   0000:14d3      pop   cx
│       └─< 0000:14d4      loop  0x14bb
└           0000:14d6      ret
```

### Function 0x000014d7
```asm
; CALL XREF from fcn.000003ce @ 0x677
┌ fcn.000014d7(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:14d7      mov   al, byte [0xff52]                     ; [0xff52:1]=255
│           0000:14da      mov   ah, byte [0xff53]
│           0000:14de      push  ax                                    ; arg1
│           0000:14df      mov   al, byte [0xff56]                     ; [0xff56:1]=255
│           0000:14e2      push  ax                                    ; arg1
│           0000:14e3      mov   byte [0xff52], 2
│           0000:14e8      mov   byte [0xff53], 2
│           0000:14ed      mov   cx, 2
│           0000:14f0      mov   si, 0x7513
│           0000:14f3      call  fcn.0000151e                          ; fcn.0000151e
│           0000:14f6      mov   byte [0xff56], 0
│           0000:14fb      xor   bl, bl
│           0000:14fd      call  fcn.00001348                          ; fcn.00001348
│       ┌─< 0000:1500      jae   0x1504
│       │   0000:1502      mov   bl, 1
│       └─> 0000:1504      pop   ax
│           0000:1505      mov   byte [0xff56], al                     ; [0xff56:1]=255
│           0000:1508      pop   ax
│           0000:1509      mov   byte [0xff52], al                     ; [0xff52:1]=255
│           0000:150c      mov   byte [0xff53], ah
│           0000:1510      or    bl, bl
│       ┌─< 0000:1512      jne   0x1515
│       │   0000:1514      ret
│       └─> 0000:1515      stc
└           0000:1516      ret
```

### Function 0x0000151e
```asm
; CALL XREF from fcn.00000712 @ 0x722
            ; CALL XREF from fcn.000014d7 @ 0x14f3
┌ fcn.0000151e(int16_t arg1, int16_t arg2, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg4 @ cx
│           0000:151e      xor   dl, dl
│       ┌─> 0000:1520      push  cx                                    ; arg4
│       ╎   0000:1521      push  dx                                    ; arg2
│       ╎   0000:1522      mov   al, 0xa
│       ╎   0000:1524      mul   dl
│       ╎   0000:1526      add   ax, word [0xff54]                     ; arg1
│       ╎   0000:152a      add   ax, 0x301                             ; arg1
│       ╎   0000:152d      mov   bx, ax                                ; arg1
│       ╎   0000:152f      xor   cl, cl
│       ╎   0000:1531      call  word cs:[0x2038]
│       ╎   ; DATA XREF from fcn.00000ab3 @ +0x3d
│       ╎   0000:1536      pop   dx
│       ╎   0000:1537      pop   cx
│       ╎   0000:1538      inc   dl
│       └─< 0000:153a      loop  0x1520
└           0000:153c      ret
```

### Function 0x00001596
```asm
; CALL XREF from fcn.000008b3 @ 0x8e7
            ; CALL XREF from fcn.00001046 @ 0x1059
            ; CODE XREF from fcn.00001596 @ 0x1668
┌ fcn.00001596();
│       ┌─> 0000:1596      mov   cl, 0xff
│       ╎   0000:1598      mov   ax, 3                                 ; int16_t arg1
│       ╎   0000:159b      int   0x60
│       ╎   0000:159d      push  cs
│       ╎   0000:159e      pop   es
│       ╎   0000:159f      mov   si, 0x7688
│       ╎   0000:15a2      mov   al, 6
│       ╎   0000:15a4      call  word cs:[fcn.0000010c]                ; 0x10c
│       ╎   0000:15a9      mov   byte [0xff57], 0
│       ╎   0000:15ae      call  fcn.00001699                          ; fcn.00001699
│       ╎   0000:15b1      push  cs
│       ╎   0000:15b2      pop   es
│       ╎   0000:15b3      test  byte cs:[0x7c64], 0xff
│      ┌──< 0000:15b9      je    0x15ca
│      │╎   0000:15bb      mov   di, 0xff6c
│      │╎   0000:15be      xor   al, al
│      │╎   0000:15c0      mov   cx, 8
│      │╎   0000:15c3      rep   stosb byte es:[di], al
│      │╎   0000:15c5      mov   si, 0x7688
│     ┌───< 0000:15c8      jmp   0x15fc
│     │└──> 0000:15ca      mov   si, 0xff6c
│     │ ╎   0000:15cd      mov   di, 0x7c67                            ; 'g|'
│     │ ╎   0000:15d0      mov   cx, 8
│     │┌──> 0000:15d3      lodsb al, byte [si]
│     │╎╎   0000:15d4      or    al, al
│    ┌────< 0000:15d6      je    0x15db
│    ││╎╎   0000:15d8      stosb byte es:[di], al
│    ││└──< 0000:15d9      loop  0x15d3
│    └────> 0000:15db      mov   byte es:[di], 0x2e                    ; '.'
│     │ ╎                                                              ; [0x2e:1]=124
│     │ ╎   0000:15df      mov   byte es:[di + 1], 0x55                ; 'U'
│     │ ╎                                                              ; [0x55:1]=6
│     │ ╎   0000:15e4      mov   byte es:[di + 2], 0x53                ; 'S'
│     │ ╎                                                              ; [0x53:1]=13
│     │ ╎   0000:15e9      mov   byte es:[di + 3], 0x52                ; 'R'
│     │ ╎                                                              ; [0x52:1]=159
│     │ ╎   0000:15ee      mov   byte es:[di + 4], 0
│     │ ╎   0000:15f3      mov   si, 0x7c65                            ; 'e|'
│     │ ╎   0000:15f6      mov   byte cs:[0xff78], 0xff                ; [0xff:1]=46
│     │ ╎   ; CODE XREF from fcn.00001596 @ 0x15c8
│     └───> 0000:15fc      mov   di, 0
│       ╎   0000:15ff      mov   al, 3
│       ╎   0000:1601      call  word cs:[fcn.0000010c]                ; 0x10c
│       ╎   0000:1606      mov   byte cs:[0xff78], 0
│      ┌──< 0000:160c      jb    0x1633
│      │╎   0000:160e      mov   si, 0x767b                            ; '{v'
│      │╎   0000:1611      mov   di, 0xa000
│      │╎   ; DATA XREF from fcn.00000979 @ +0xfb
│      │╎   0000:1614      mov   al, 3
│      │╎   0000:1616      call  word cs:[fcn.0000010c]                ; 0x10c
│      │╎   0000:161b      call  word cs:[0x2042]
│      │╎   0000:1620      mov   ax, 1
│      │╎   0000:1623      int   0x60
│      │╎   0000:1625      xor   cl, cl
│      │╎   0000:1627      mov   ax, 3
│      │╎   0000:162a      int   0x60
│      │╎   0000:162c      mov   ax, 0xffff
│      │╎   0000:162f      jmp   word [0x7686]
│      └──> 0000:1633      mov   bx, 0x1a46
│       ╎   0000:1636      mov   cx, 0x1e1a
│       ╎   0000:1639      mov   al, 0xff
│       ╎   0000:163b      call  word cs:[0x2000]
│       ╎   0000:1640      push  cs
│       ╎   0000:1641      pop   ds
│       ╎   0000:1642      mov   si, 0x7667                            ; 'gv'
│       ╎   0000:1645      mov   bx, 0x80
│       ╎   0000:1648      mov   cl, 0x4c                              ; 'L'
│       ╎   0000:164a      call  word cs:[0x202a]
│       ╎   0000:164f      mov   byte cs:[0xff1d], 0
│      ┌──> 0000:1655      call  word cs:[0x110]
│      ╎╎   0000:165a      test  byte cs:[0xff1d], 0xff
│      └──< 0000:1660      je    0x1655
│       ╎   0000:1662      mov   byte cs:[0xff1d], 0
└       └─< 0000:1668      jmp   fcn.00001596
```

### Function 0x00001699
```asm
; CALL XREF from fcn.00001596 @ 0x15ae
┌ fcn.00001699();
│           0000:1699      mov   ax, cs
│           0000:169b      mov   es, ax
│           0000:169d      mov   ds, ax
│           0000:169f      mov   di, 0xe000
│           0000:16a2      mov   dx, 0x77a8
│           0000:16a5      call  word cs:[0x11c]
│           0000:16aa      mov   di, 0xe000
│           0000:16ad      inc   byte [di]
│       ┌─< 0000:16af      jne   0x16b3
│       │   0000:16b1      dec   byte [di]
│       └─> 0000:16b3      std
│           0000:16b4      mov   si, 0xe1fd
│           0000:16b7      mov   di, 0xe1ff
│           0000:16ba      mov   cx, 0xff
│           0000:16bd      rep   movsw word es:[di], word ptr [si]
│           0000:16bf      cld
│           0000:16c0      mov   word [0xe001], 0x77ba                 ; [0x77ba:2]=0xffff
│           0000:16c6      mov   bx, 0xd38
│           0000:16c9      mov   cx, 0x3637                            ; '76'
│           0000:16cc      mov   al, 0xff
│           0000:16ce      call  word cs:[0x2000]
│           0000:16d3      mov   bx, 0xd38
│           0000:16d6      mov   cx, 0x2637                            ; '7&'
│           0000:16d9      mov   al, 0xff
│           0000:16db      call  word cs:[0x2000]
│           0000:16e0      push  cs
│           0000:16e1      pop   es
│           0000:16e2      mov   di, 0x7c67                            ; 'g|'
│           0000:16e5      mov   al, 0x60                              ; '`'
│           0000:16e7      mov   cx, 8
│           0000:16ea      rep   stosb byte es:[di], al
│           0000:16ec      mov   al, 0xff
│           0000:16ee      stosb byte es:[di], al
│           0000:16ef      mov   byte [0x7c5e], 0                      ; [0x7c5e:1]=255
│           0000:16f4      mov   si, 0xff6c
│           0000:16f7      mov   di, 0x7c67                            ; 'g|'
│           0000:16fa      mov   cx, 8
│       ┌─> 0000:16fd      lodsb al, byte [si]
│       ╎   0000:16fe      or    al, al
│      ┌──< 0000:1700      je    0x1709
│      │╎   0000:1702      inc   byte [0x7c5e]
│      │╎   0000:1706      stosb byte es:[di], al
│      │└─< 0000:1707      loop  0x16fd
│      └──> 0000:1709      mov   al, byte [0x7c5e]                     ; [0x7c5e:1]=255
│           0000:170c      mov   byte [0x7c5f], al                     ; [0x7c5f:1]=255
│           0000:170f      push  cs
│           0000:1710      pop   es
│           0000:1711      mov   di, 0x7c67                            ; 'g|'
│           0000:1714      mov   al, 0x60                              ; '`'
│           0000:1716      mov   cx, 8
│       ┌─> 0000:1719      scasb al, byte es:[di]
│      ┌──< 0000:171a      jne   0x1729
│      │└─< 0000:171c      loop  0x1719
│      │    0000:171e      mov   si, 0x77ba
│      │    0000:1721      mov   di, 0x7c67                            ; 'g|'
│      │    0000:1724      mov   cx, 8
│      │    0000:1727      rep   movsb byte es:[di], byte ptr [si]
│      └──> 0000:1729      mov   bx, 0x3c                              ; '<'
│           0000:172c      mov   cl, 0x44                              ; 'D'
│           0000:172e      mov   si, 0x77ae
│           0000:1731      call  word cs:[0x202a]
│           0000:1736      mov   word [0x7c60], 0x60                   ; '`'
│                                                                      ; [0x7c60:2]=0xffff
│           0000:173c      mov   byte [0x7c62], 0x56                   ; 'V'
│                                                                      ; [0x7c62:1]=255
│           0000:1741      mov   word [0xff54], 0x343b                 ; ';4'
│                                                                      ; [0x343b:2]=0xffff
│           0000:1747      mov   word [0xff6a], 0xa
│           0000:174d      mov   al, byte [0xe000]                     ; [0xe000:1]=255
│           0000:1750      or    al, al
│       ┌─< 0000:1752      je    0x17a4
│       │   0000:1754      cmp   al, 5
│      ┌──< 0000:1756      jb    0x175a
│      ││   0000:1758      mov   al, 5
│      └──> 0000:175a      xor   ah, ah
│       │   0000:175c      mov   cx, ax
│       │   0000:175e      xor   al, al
│       │   0000:1760      mov   si, 0xe001
│      ┌──< 0000:1763      jcxz  0x1768
│      ││   0000:1765      call  fcn.0000180b                          ; fcn.0000180b
│      └──> 0000:1768      mov   si, 0xe001
│       │   0000:176b      mov   al, byte [0xe000]                     ; [0xe000:1]=255
│       │   0000:176e      mov   byte [0xff53], al                     ; [0xff53:1]=255
│       │   0000:1771      mov   byte [0xff52], 5
│       │   0000:1776      call  fcn.0000183c                          ; fcn.0000183c
│       │   0000:1779      push  cs
│       │   0000:177a      pop   es
│       │   0000:177b      mov   di, 0xff6c
│       │   0000:177e      mov   cx, 8
│       │   0000:1781      xor   al, al
│       │   0000:1783      rep   stosb byte es:[di], al
│       │   0000:1785      cmp   byte [0x7c5f], 0                      ; [0x7c5f:1]=255
│       │   0000:178a      stc
│      ┌──< 0000:178b      jne   0x178e
│      ││   0000:178d      ret
│      └──> 0000:178e      mov   si, 0x7c67                            ; 'g|'
│       │   0000:1791      mov   di, 0xff6c
│       │   ; CODE XREF from fcn.00001699 @ 0x17a2
│      ┌──> 0000:1794      lodsb al, byte [si]
│      ╎│   0000:1795      cmp   al, 0xff
│      ╎│   0000:1797      clc
│     ┌───< 0000:1798      jne   0x179b
│     │╎│   0000:179a      ret
│     └───> 0000:179b      cmp   al, 0x60
│      ╎│   0000:179d      clc
│     ┌───< 0000:179e      jne   0x17a1
│     │╎│   0000:17a0      ret
│     └───> 0000:17a1      stosb byte es:[di], al
│      └──< 0000:17a2      jmp   0x1794
│       └─> 0000:17a4      mov   ax, 0xffff
└           0000:17a7      ljmp  cs:[0xff00]
```

## Cross-References (callers)
```json
  0x0000010c:
[{"from":400,"to":268,"type":"CALL"},{"from":2769,"to":268,"type":"CALL"},{"from":3393,"to":268,"type":"CALL"},{"from":3420,"to":268,"type":"CALL"},{"from":3511,"to":268,"type":"CALL"},{"from":3584,"to":268,"type":"CALL"},{"from":3738,"to":268,"type":"CALL"},{"from":4014,"to":268,"type":"CALL"},{"from":4032,"to":268,"type":"CALL"},{"from":4057,"to":268,"type":"CALL"},{"from":4128,"to":268,"type":"CALL"},{"from":4161,"to":268,"type":"CODE"},{"from":5540,"to":268,"type":"CALL"},{"from":5633,"to":268,"type":"CALL"},{"from":5654,"to":268,"type":"CALL"}]
  0x00000243:
[{"from":521,"to":579,"type":"CALL"}]
  0x000002f1:
[{"from":531,"to":753,"type":"CALL"}]
  0x0000035e:
[{"from":679,"to":862,"type":"CALL"},{"from":742,"to":862,"type":"CALL"},{"from":823,"to":862,"type":"CODE"},{"from":860,"to":862,"type":"CODE"}]
  0x000003c9:
[{"from":919,"to":969,"type":"CALL"},{"from":1665,"to":969,"type":"CODE"},{"from":1670,"to":969,"type":"CODE"},{"from":1699,"to":969,"type":"CODE"},{"from":1710,"to":969,"type":"CODE"},{"from":1753,"to":969,"type":"CODE"},{"from":1768,"to":969,"type":"CODE"},{"from":1807,"to":969,"type":"CODE"}]
  0x000003ce:
[{"from":3988,"to":974,"type":"CALL"}]
  0x000005ea:
[{"from":1238,"to":1514,"type":"CALL"},{"from":1591,"to":1514,"type":"CALL"}]
  0x0000060d:
[{"from":1014,"to":1549,"type":"CALL"}]
  0x00000712:
[{"from":1743,"to":1810,"type":"CALL"}]
  0x00000747:
[{"from":1379,"to":1863,"type":"CALL"},{"from":1455,"to":1863,"type":"CALL"},{"from":1484,"to":1863,"type":"CALL"}]
  0x00000872:
[{"from":1947,"to":2162,"type":"CALL"},{"from":2062,"to":2162,"type":"CALL"}]
  0x00000894:
[{"from":1967,"to":2196,"type":"CALL"},{"from":2082,"to":2196,"type":"CALL"}]
  0x000008b0:
[{"from":437,"to":2224,"type":"CALL"},{"from":475,"to":2224,"type":"CALL"},{"from":512,"to":2224,"type":"CALL"},{"from":1382,"to":2224,"type":"CALL"},{"from":1458,"to":2224,"type":"CALL"},{"from":1487,"to":2224,"type":"CALL"}]
  0x000008b3:
[{"from":876,"to":2227,"type":"CALL"},{"from":2350,"to":2227,"type":"CALL"},{"from":3272,"to":2227,"type":"CALL"},{"from":3334,"to":2227,"type":"CALL"},{"from":3693,"to":2227,"type":"CALL"},{"from":3818,"to":2227,"type":"CALL"},{"from":3968,"to":2227,"type":"CALL"}]
  0x000008f7:
[{"from":515,"to":2295,"type":"CALL"}]
  0x0000093c:
[{"from":2314,"to":2364,"type":"CALL"},{"from":2322,"to":2364,"type":"CALL"}]
  0x00000954:
[{"from":2230,"to":2388,"type":"CALL"}]
  0x00000979:
[{"from":2227,"to":2425,"type":"CALL"}]
  0x00000a7b:
[{"from":2552,"to":2683,"type":"CALL"}]
```