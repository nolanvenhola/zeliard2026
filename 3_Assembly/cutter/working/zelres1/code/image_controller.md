# IMAGE_CONTROLLER - Analysis

**Source:** `chunk_01.bin`  
**Size:** 5.4 KB  
**Functions:** 24  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    4 117  -> 93   fcn.00000000
0x000001c5    3 52           fcn.000001c5
0x000001f9    8 123          fcn.000001f9
0x00000274    3 27           fcn.00000274
0x0000028f    3 28           fcn.0000028f
0x00000365    3 76           fcn.00000365
0x0000056a    3 22           fcn.0000056a
0x00000580    3 22           fcn.00000580
0x00000596    5 27           fcn.00000596
0x00000612    3 20           fcn.00000612
0x0000065f    3 20           fcn.0000065f
0x000006bf    8 97           fcn.000006bf
0x00000903    1 173          fcn.00000903
0x00000bd0   16 179          fcn.00000bd0
0x00000d16    3 37           fcn.00000d16
0x00000d3b    4 67           fcn.00000d3b
0x00000d7e    1 39           fcn.00000d7e
0x00000e90    1 41           fcn.00000e90
0x00000eb9    1 107          fcn.00000eb9
0x00000f24    7 133          fcn.00000f24
0x00000fa9    1 12           fcn.00000fa9
0x00000ff3    7 134          fcn.00000ff3
0x000010be    3 83           fcn.000010be
0x00001138    3 54           fcn.00001138
```

## Strings
```
nth      paddr      vaddr len size section type   string                                         
-------------------------------------------------------------------------------------------------
  0 0x00000004 0x00000004   4    4         ascii  20J0
  1 0x00000019 0x00000019   7    7         ascii  5"6o6&1
  2 0x0000002f 0x0000002f   7    7         ascii  ?u@\rA\nB
  3 0x00000061 0x00000061   4    4         ascii  Bq0X
  4 0x0000013c 0x0000013c   4    4         ascii  BM12
  5 0x00000151 0x00000151   5    5         ascii  QWUVP
  6 0x000001ba 0x000001ba   4    4         ascii  JGXY
  7 0x000001c0 0x000001c0   4    4         ascii  ^]_Y
  8 0x00000215 0x00000215   4    4         ascii  QVW.
  9 0x00000260 0x00000260   4    4         ascii  _^Y.
 10 0x0000028a 0x0000028a   4    4         ascii  JXY_
 11 0x000002a6 0x000002a6   7    9         utf8   JXY_À \b blocks=Basic Latin,Latin-1 Supplement
 12 0x000002ec 0x000002ec  10   11         ibm037 vcG+S³¬;cG
 13 0x000003ad 0x000003ad   4    5         ibm037 3SGC
 14 0x000003ca 0x000003ca   8    9         ibm037 {¡¡uuaB 
 15 0x000003ef 0x000003ef   4    5         ascii  D\r:D
 16 0x000004be 0x000004be   4    4         ascii  Ks;<
 17 0x00000569 0x00000569   5    5         ascii  \vVQVQ
 18 0x00000580 0x00000580   4    4         ascii  WQWQ
 19 0x00000596 0x00000596   4    4         ascii  WQWQ
 20 0x0000073c 0x0000073c   5    6         ibm037 3uaF>
 21 0x000009bc 0x000009bc   4    5         ibm037 dddd
 22 0x000009c4 0x000009c4   4    5         ibm037 dddM
 23 0x000009ec 0x000009ec   4    4         ascii  !!!!
 24 0x000009f4 0x000009f4   4    4         ascii  !!!!
 25 0x00000a04 0x00000a04   4    5         ibm037 Mddd
 26 0x00000a0c 0x00000a0c   4    5         ibm037 dddd
 27 0x00000a34 0x00000a34   4    4         ascii  +!!!
 28 0x00000a3c 0x00000a3c   4    4         ascii  !!!!
 29 0x00000a58 0x00000a58   4    4         ascii  \a\a\a\a
 30 0x00000ae8 0x00000ae8   4    5         ascii  \n\t\b\a
 31 0x00000b4b 0x00000b4b  15   16         ascii  ;\r:\f9\v8\n7\t6\b5\a4
 32 0x00000bb3 0x00000bb3   4    4         ascii  ^[Y.
 33 0x00000bfb 0x00000bfb   4    4         ascii  Bsz.
 34 0x00000c2e 0x00000c2e   5    5         ascii  Bs=V.
 35 0x00000c6c 0x00000c6c   4    4         ascii  ^FG.
 36 0x00000e4c 0x00000e4c   4    5         ascii  r\n=q
 37 0x00000e74 0x00000e74   4    5         ascii  r\n=q
 38 0x00001015 0x00001015   4    4         ascii  XPWV
 39 0x00001030 0x00001030   4    4         ascii  XPWV
 40 0x000010db 0x000010db   4    4         ascii  XPWV
 41 0x000010eb 0x000010eb   4    4         ascii  XPWV
 42 0x00001173 0x00001173   7    8         ascii  \e6?8\a$-
 43 0x0000117f 0x0000117f  15   16         ascii  \t$-????8\a$-????
 44 0x00001193 0x00001193   7    8         ascii  \e6?8\a$-
 45 0x0000119f 0x0000119f   5    6         ascii  $\t?\t?
 46 0x000011a5 0x000011a5   5    6         ascii  ?8?$-
 47 0x000011b4 0x000011b4   8    9         ascii  6?8\t$-\e\e
 48 0x000011c3 0x000011c3  11   12         ascii  \e6?8\t$-\e\e6?
 49 0x000011d3 0x000011d3  11   12         ascii  \e6?8\t$-\e\e6?
 50 0x000011e3 0x000011e3  11   12         ascii  \e6?8\a$-????
 51 0x000011f3 0x000011f3  11   12         ascii  \e6?8\t$-\e\e6?
 52 0x00001203 0x00001203  12   12         ascii  $6?8\t$-\e\e6?.
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4, int16_t arg_33h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           ; arg int16_t arg_33h @ stack + 0x33
│           0000:0000      adc   byte [di], 0
│           ; DATA XREF from fcn.000006bf @ 0x703
│           0000:0003      add   byte [bp + si], dh
│           0000:0005      xor   byte [bp + si + 0x30], cl
│           0000:0008      sahf
│           0000:0009      xor   dh, bh
│           ; XREFS: DATA 0x00000ebe  DATA 0x00000ed4  DATA 0x00000ee4  
│           ; XREFS: DATA 0x00000efa  DATA 0x00000f08  DATA 0x00000f1e  
│           0000:000b      xor   byte [si], dh
│           ; DATA XREF from fcn.00000903 @ +0x2a7
│           ; DATA XREF from fcn.00000f24 @ 0xf67
│           0000:000d      inc   cx                                    ; arg4
│           ; XREFS: DATA 0x000007b9  DATA 0x00000803  DATA 0x00000b49  
│           ; XREFS: DATA 0x00000f5b  DATA 0x00000f75  DATA 0x00001104  
│           0000:000e      cmovb si, word [bx - 0xace]                 ; arg3
│           0000:0013      xor   al, byte [bp + si + 0x33]
│           ; DATA XREFS from fcn.00000d7e @ +0xcb, +0xf3
│           0000:0016      lodsw ax, word [si]
│           ; DATA XREF from fcn.00000ff3 @ 0x1059
│           0000:0017      xor   dx, bp                                ; arg2
│           ; DATA XREF from fcn.0000065f @ +0x41
│           ;-- str.5_6o6_1:
│           0000:0019     .string "5\"6o6&1" ; len=7                   ; arg1
│           ; DATA XREF from fcn.0000028f @ +0x41
│           ; DATA XREF from fcn.0000065f @ 0x660
│           ; DATA XREF from fcn.00001138 @ 0x1166
..
│           ; DATA XREF from fcn.00000ff3 @ 0x1056
│           0000:0023      aaa
│           ; DATA XREF from fcn.00000bd0 @ 0xc7b
│           0000:0024      push  ss
│           0000:0025      cmp   byte [bx + di + 0x3b], ch
│           ; DATA XREFS from fcn.0000065f @ +0x2d, +0x36
│           ; DATA XREFS from fcn.000006bf @ 0x6ce, 0x6d6
│       ┌─< 0000:0028      jg    0x66
│       │   0000:002a      mov   ax, word [0xf73d]                     ; [0xf73d:2]=0xffff
│       │   ; XREFS: DATA 0x00000f54  DATA 0x00001178  DATA 0x00001180  
│       │   ; XREFS: DATA 0x00001188  DATA 0x00001190  DATA 0x00001198  
│       │   ; XREFS: DATA 0x000011a8  DATA 0x000011b8  DATA 0x000011c8  
│       │   ; XREFS: DATA 0x000011d0  DATA 0x000011d8  DATA 0x000011e0  
│       │   ; XREFS: DATA 0x000011e8  DATA 0x000011f8  DATA 0x00001208  
│       │   0000:002d  ~   cmp   ax, 0x3fb1
│       │   ; DATA XREFS from fcn.00000ff3 @ 0xff6, 0x1051
│       │   ; DATA XREFS from fcn.000010be @ 0x10c1, 0x10ff
│       │   ;-- str.u__A_B:
..
│       │   ; DATA XREF from fcn.00000612 @ 0x613
│       │   ; DATA XREF from fcn.00000bd0 @ +0x102
│       │   ; DATA XREF from fcn.00000d3b @ 0xd40
│       │   ; DATA XREFS from fcn.00000f24 @ 0xf31, 0xf94
│      ┌──< 0000:0030     .string "?u@\rA\nB" ; len=7
│      ││   ; DATA XREFS from fcn.00000f24 @ 0xf2b, 0xf51, 0xf8e
│      ││   0000:0036      mov   dx, 0x3ce
│      ││   ; DATA XREFS from fcn.00000fa9 @ +0x1f, +0x2d
│      ││   ; DATA XREFS from fcn.00000ff3 @ +0xa0, +0xae
│      ││   0000:0039      mov   ax, 5
│      ││   0000:003c      out   dx, ax
│      ││   0000:003d      mov   ax, 3
│      ││   ; DATA XREF from fcn.00001138 @ 0x1144
│      ││   0000:0040      out   dx, ax
│      ││   0000:0041      mov   ax, 0xff08
│      ││   ; DATA XREF from fcn.000006bf @ +0x8b
│      ││   ; DATA XREFS from fcn.00000d7e @ +0xab, +0xb5
│      ││   0000:0044      out   dx, ax
│      ││   0000:0045      mov   ax, 0xf07
│      ││   ; DATA XREFS from fcn.00000bd0 @ 0xc11, 0xc14
│      ││   0000:0048      out   dx, ax
│      ││   0000:0049      mov   ax, 0xf02
│      ││   0000:004c      out   dx, ax
│      ││   0000:004d      ret
       ││   ; DATA XREF from fcn.0000028f @ +0x5e
       ││   ; DATA XREF from fcn.000010be @ +0x74
..
       ││   ; DATA XREF from fcn.000006bf @ +0x105
       ││   ; DATA XREF from fcn.00000d7e @ 0xd8c
       ││   ; DATA XREF from fcn.0000065f @ +0x25
│      │└─> 0000:0066      pop   bp
│      │    0000:0067      add   word [bx + si + 3], di
│      │    0000:006b      out   dx, ax
│      │    0000:006c      mov   ax, 5
│      │    0000:006f      out   dx, ax
│      │    ; DATA XREF from fcn.00000f24 @ 0xf63
│      │    0000:0070      mov   ax, 0xff08
│           0000:0073      out   dx, ax
└           0000:0074      ret
```

### Function 0x000001c5
```asm
; CALL XREFS from str.u__A_B @ +0x36, +0x8a, +0xea, +0x112
┌ fcn.000001c5(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:01c5      push  ds
│           0000:01c6      push  ax                                    ; arg1
│           0000:01c7      push  es
│           0000:01c8      push  di
│           0000:01c9      mov   ax, 0x50                              ; 'P'
│           0000:01cc      mul   bl
│           0000:01ce      mov   bl, bh
│           0000:01d0      xor   bh, bh
│           0000:01d2      add   ax, bx                                ; arg3
│           0000:01d4      mov   di, ax
│           0000:01d6      mov   al, ch
│           0000:01d8      mul   cl
│           0000:01da      mov   word cs:[0x4214], ax
│           0000:01de      pop   si
│           0000:01df      pop   ds
│           0000:01e0      pop   ax
│           0000:01e1      mov   byte cs:[0x4213], 0
│           0000:01e7      or    al, al
│       ┌─< 0000:01e9      jne   0x1ee
│       │   0000:01eb      call  fcn.000001f9                          ; fcn.000001f9
│       └─> 0000:01ee      mov   byte cs:[0x4213], 0xff                ; [0xff:1]=1
│           0000:01f4      call  fcn.000001f9                          ; fcn.000001f9
│           0000:01f7      pop   ds
└           0000:01f8      ret
```

### Function 0x000001f9
```asm
; CALL XREFS from fcn.000001c5 @ 0x1eb, 0x1f4
┌ fcn.000001f9(int16_t arg3, int16_t arg4);
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:01f9      mov   byte cs:[0x4211], 0
│           0000:01ff      mov   ax, 0xa000
│           ; DATA XREF from fcn.00000365 @ +0x187
│           ; DATA XREF from fcn.00000ff3 @ 0x1025
│           0000:0202      mov   es, ax
│           ; DATA XREF from fcn.0000028f @ +0x89
│           ; DATA XREF from fcn.00000ff3 @ 0x1047
│           0000:0204      mov   bp, 8
│       ┌─> 0000:0207      mov   al, byte cs:[0x4211]
│       ╎   0000:020b      mov   byte cs:[0x4210], al
│       ╎   0000:020f      mov   byte cs:[0xff1a], 0
│       ╎   0000:0215      push  cx                                    ; arg4
│       ╎   0000:0216      push  si
│       ╎   0000:0217      push  di
│      ┌──> 0000:0218      mov   bl, byte cs:[0x4210]
│      ╎╎   0000:021d      and   bx, 7                                 ; arg3
│      ╎╎   0000:0220      mov   ah, byte cs:[bx + 0x32a7]             ; arg3
│      ╎╎   0000:0225      call  word cs:[0x4216]
│      ╎╎   0000:022a      inc   byte cs:[0x4210]
│      ╎╎   0000:022f      mov   al, ch
│      ╎╎   0000:0231      xor   ah, ah
│      ╎╎   0000:0233      add   si, ax
│      ╎╎   0000:0235      add   di, 0x50
│      ╎╎   0000:0238      dec   cl
│     ┌───< 0000:023a      je    0x260
│     │╎╎   0000:023c      mov   bl, byte cs:[0x4210]
│     │╎╎   0000:0241      and   bx, 7                                 ; arg3
│     │╎╎   0000:0244      mov   ah, byte cs:[bx + 0x32af]             ; arg3
│     │╎╎   0000:0249      call  word cs:[0x4216]
│     │╎╎   0000:024e      inc   byte cs:[0x4210]
│     │╎╎   0000:0253      mov   al, ch
│     │╎╎   0000:0255      xor   ah, ah
│     │╎╎   0000:0257      add   si, ax
│     │╎╎   0000:0259      add   di, 0x50
│     │╎╎   0000:025c      dec   cl
│     │└──< 0000:025e      jne   0x218
│     └───> 0000:0260      pop   di
│       ╎   0000:0261      pop   si
│       ╎   0000:0262      pop   cx
│       ╎   0000:0263      inc   byte cs:[0x4211]
│      ┌──> 0000:0268      cmp   byte cs:[0xff1a], 0x14
│      └──< 0000:026e      jb    0x268
│       ╎   0000:0270      dec   bp
│       └─< 0000:0271      jne   0x207
└           0000:0273      ret
```

### Function 0x00000274
```asm
; CODE XREFS from str.u__A_B @ +0x56, +0xaa, +0xf8
┌ fcn.00000274(int16_t arg1, int16_t arg2, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg4 @ cx
│           0000:0274      push  di
│           0000:0275      push  cx                                    ; arg4
│           0000:0276      push  ax                                    ; arg1
│           0000:0277      mov   al, 8
│           0000:0279      out   dx, al
│           0000:027a      inc   dx                                    ; arg2
│           0000:027b      mov   al, ah
│           0000:027d      out   dx, al
│           0000:027e      mov   cl, ch
│           0000:0280      xor   ch, ch
│       ┌─> 0000:0282      mov   al, bh
│       ╎   0000:0284      xchg  byte es:[di], al
│       ╎   0000:0287      inc   di
│       └─< 0000:0288      loop  0x282
│           0000:028a      dec   dx                                    ; arg2
│           0000:028b      pop   ax
│           0000:028c      pop   cx
│           0000:028d      pop   di
└           0000:028e      ret
```

### Function 0x0000028f
```asm
; CALL XREFS from str.u__A_B @ +0x62, +0x6e, +0xb6, +0xc3, +0xce
┌ fcn.0000028f(int16_t arg1, int16_t arg2, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg4 @ cx
│           0000:028f      push  di
│           0000:0290      push  cx                                    ; arg4
│           0000:0291      push  ax                                    ; arg1
│           0000:0292      mov   al, 8
│           0000:0294      out   dx, al
│           0000:0295      inc   dx                                    ; arg2
│           0000:0296      mov   cl, ch
│           0000:0298      xor   ch, ch
│       ┌─> 0000:029a      lodsb al, byte [si]
│       ╎   0000:029b      and   al, ah
│       ╎   0000:029d      out   dx, al
│       ╎   0000:029e      mov   al, bh
│       ╎   0000:02a0      xchg  byte es:[di], al
│       ╎   0000:02a3      inc   di
│       └─< 0000:02a4      loop  0x29a
│           0000:02a6      dec   dx                                    ; arg2
│           0000:02a7      pop   ax
│           0000:02a8      pop   cx
│           0000:02a9      pop   di
└           0000:02aa      ret
```

### Function 0x00000365
```asm
; CALL XREF from fcn.0000028f @ +0xd1
┌ fcn.00000365(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:0365      mov   ax, 0xa000
│           0000:0368      mov   es, ax
│           0000:036a      mov   dx, 0x3c4
│           0000:036d      mov   al, 2
│           0000:036f      out   dx, al
│           0000:0370      inc   dx
│           0000:0371      xor   bx, bx
│           0000:0373      mov   bl, ch
│           0000:0375      xor   ch, ch
│       ┌─> 0000:0377      push  cx                                    ; arg4
│       ╎   0000:0378      mov   al, 1
│       ╎   0000:037a      out   dx, al
│       ╎   0000:037b      push  si
│       ╎   0000:037c      push  di
│       ╎   0000:037d      mov   cx, bx
│       ╎   0000:037f      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:0381      pop   di
│       ╎   0000:0382      pop   si
│       ╎   0000:0383      mov   al, 2
│       ╎   0000:0385      out   dx, al
│       ╎   0000:0386      push  si
│       ╎   0000:0387      push  di
│       ╎   0000:0388      add   si, word cs:[0x4214]
│       ╎   0000:038d      mov   cx, bx
│       ╎   0000:038f      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:0391      pop   di
│       ╎   0000:0392      pop   si
│       ╎   0000:0393      mov   al, 4
│       ╎   0000:0395      out   dx, al
│       ╎   0000:0396      push  si
│       ╎   0000:0397      push  di
│       ╎   0000:0398      add   si, word cs:[0x4214]
│       ╎   0000:039d      add   si, word cs:[0x4214]
│       ╎   0000:03a2      mov   cx, bx
│       ╎   0000:03a4      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:03a6      pop   di
│       ╎   0000:03a7      pop   si
│       ╎   0000:03a8      pop   cx
│       ╎   0000:03a9      add   di, 0x50
│       ╎   0000:03ac      add   si, bx
│       └─< 0000:03ae      loop  0x377
└           0000:03b0      ret
```

### Function 0x0000056a
```asm
; CALL XREFS from fcn.00000365 @ +0xff, +0x105, +0x10b
┌ fcn.0000056a(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:056a      push  si
│           0000:056b      push  cx                                    ; arg4
│       ┌─> 0000:056c      push  si
│       ╎   0000:056d      push  cx                                    ; arg4
│       ╎   0000:056e      mov   cl, ch
│       ╎   0000:0570      xor   ch, ch
│       ╎   0000:0572      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:0574      pop   cx
│       ╎   0000:0575      pop   si
│       ╎   0000:0576      add   si, 0x50
│       ╎   0000:0579      dec   cl
│       └─< 0000:057b      jne   0x56c
│           0000:057d      pop   cx
│           0000:057e      pop   si
└           0000:057f      ret
```

### Function 0x00000580
```asm
; CALL XREFS from fcn.00000365 @ +0x1d5, +0x1db, +0x1e1
┌ fcn.00000580(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:0580      push  di
│           0000:0581      push  cx                                    ; arg4
│       ┌─> 0000:0582      push  di
│       ╎   0000:0583      push  cx                                    ; arg4
│       ╎   0000:0584      mov   cl, ch
│       ╎   0000:0586      xor   ch, ch
│       ╎   0000:0588      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:058a      pop   cx
│       ╎   0000:058b      pop   di
│       ╎   0000:058c      add   di, 0x50
│       ╎   0000:058f      dec   cl
│       └─< 0000:0591      jne   0x582
│           0000:0593      pop   cx
│           0000:0594      pop   di
└           0000:0595      ret
```

### Function 0x00000596
```asm
; CALL XREFS from fcn.00000365 @ +0x181, +0x192
┌ fcn.00000596(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:0596      push  di
│           0000:0597      push  cx                                    ; arg4
│       ┌─> 0000:0598      push  di
│       ╎   0000:0599      push  cx                                    ; arg4
│       ╎   0000:059a      mov   cl, ch
│       ╎   0000:059c      xor   ch, ch
│      ┌──> 0000:059e      lodsb al, byte [si]
│      ╎╎   0000:059f      or    byte es:[di], al
│      ╎╎   0000:05a2      inc   di
│      └──< 0000:05a3      loop  0x59e
│       ╎   0000:05a5      pop   cx
│       ╎   0000:05a6      pop   di
│       ╎   0000:05a7      add   di, 0x50
│       ╎   0000:05aa      dec   cl
│       └─< 0000:05ac      jne   0x598
│           0000:05ae      pop   cx
│           0000:05af      pop   di
└           0000:05b0      ret
```

### Function 0x00000612
```asm
; CALL XREFS from fcn.00000596 @ +0x71, +0x77
┌ fcn.00000612();
│           0000:0612      push  di
│           0000:0613      mov   cx, 0x30                              ; '0'
│       ┌─> 0000:0616      push  di
│       ╎   0000:0617      push  cx
│       ╎   0000:0618      mov   cx, 0x11
│       ╎   0000:061b      rep   movsw word es:[di], word ptr [si]
│       ╎   0000:061d      pop   cx
│       ╎   0000:061e      pop   di
│       ╎   0000:061f      add   di, 0x50
│       └─< 0000:0622      loop  0x616
│           0000:0624      pop   di
└           0000:0625      ret
```

### Function 0x0000065f
```asm
; CALL XREFS from fcn.00000612 @ +0x42, +0x48
┌ fcn.0000065f();
│           0000:065f      push  di
│           0000:0660      mov   cx, 0x20
│       ┌─> 0000:0663      push  di
│       ╎   0000:0664      push  cx
│       ╎   0000:0665      mov   cx, 9
│       ╎   0000:0668      rep   movsw word es:[di], word ptr [si]
│       ╎   0000:066a      pop   cx
│       ╎   0000:066b      pop   di
│       ╎   0000:066c      add   di, 0x50
│       └─< 0000:066f      loop  0x663
│           0000:0671      pop   di
└           0000:0672      ret
```

### Function 0x000006bf
```asm
; CALL XREF from fcn.0000065f @ +0x4d
┌ fcn.000006bf(int16_t arg1, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:06bf      mov   ds, word cs:[0xff2c]
│           0000:06c4      mov   dx, cs
│           0000:06c6      add   dx, 0x2000
│           0000:06ca      mov   es, dx
│           0000:06cc      xor   ah, ah
│           ; CODE XREF from fcn.000006bf @ 0x6d4
│       ┌─> 0000:06ce      sub   al, 0x28
│      ┌──< 0000:06d0      jb    0x6d6
│      │╎   0000:06d2      inc   ah
│      │└─< 0000:06d4      jmp   0x6ce
│      └──> 0000:06d6      add   al, 0x28
│           0000:06d8      mov   cl, al
│           0000:06da      mov   al, ah
│           0000:06dc      xor   ah, ah
│           0000:06de      mov   dx, 0x140
│           0000:06e1      mul   dx
│           0000:06e3      xor   ch, ch
│           0000:06e5      add   ax, cx                                ; arg4
│           0000:06e7      add   ax, 0x4000                            ; arg1
│           0000:06ea      push  ax                                    ; arg1
│           0000:06eb      mov   dx, bx                                ; arg3
│           0000:06ed      xor   dh, dh
│           0000:06ef      mov   ax, 0x110
│           0000:06f2      mul   dx
│           0000:06f4      mov   dl, bh
│           0000:06f6      xor   dh, dh
│           0000:06f8      add   ax, dx
│           0000:06fa      add   ax, 0
│           0000:06fd      mov   di, ax
│           0000:06ff      pop   si
│           0000:0700      mov   cx, 3
│       ┌─> 0000:0703      push  cx
│       ╎   0000:0704      push  di
│       ╎   0000:0705      push  si
│       ╎   0000:0706      mov   cx, 8
│      ┌──> 0000:0709      movsb byte es:[di], byte ptr [si]
│      ╎╎   0000:070a      add   di, 0x21
│      ╎╎   0000:070d      add   si, 0x27
│      └──< 0000:0710      loop  0x709
│       ╎   0000:0712      pop   si
│       ╎   0000:0713      pop   di
│       ╎   0000:0714      add   di, 0x1a90
│       ╎   0000:0718      add   si, 0x640
│       ╎   0000:071c      pop   cx
│       └─< 0000:071d      loop  0x703
└           0000:071f      ret
```

### Function 0x00000903
```asm
; XREFS: CALL 0x0000084a  CALL 0x0000085c  CALL 0x0000086b  
            ; XREFS: CALL 0x0000087d  CALL 0x0000089c  CALL 0x000008b6  
            ; XREFS: CALL 0x000008ca  CALL 0x000008e4  
┌ fcn.00000903(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0903      push  si
│           0000:0904      dec   al
│           0000:0906      xor   ah, ah
│           0000:0908      add   ax, ax                                ; arg1
│           0000:090a      add   ax, ax                                ; arg1
│           0000:090c      add   ax, ax                                ; arg1
│           0000:090e      add   ax, 0x39ac                            ; arg1
│           0000:0911      mov   si, ax                                ; arg1
│           0000:0913      mov   ax, 3
│           0000:0916      out   dx, ax
│           0000:0917      mov   ax, 0xff08
│           0000:091a      out   dx, ax
│           0000:091b      push  di
│           0000:091c      xor   al, al
│           0000:091e      xchg  byte es:[di], al
│           0000:0921      add   di, 0x50
│           0000:0924      xor   al, al
│           0000:0926      xchg  byte es:[di], al
│           0000:0929      add   di, 0x50
│           0000:092c      xor   al, al
│           0000:092e      xchg  byte es:[di], al
│           0000:0931      add   di, 0x50
│           0000:0934      xor   al, al
│           0000:0936      xchg  byte es:[di], al
│           0000:0939      pop   di
│           0000:093a      mov   ax, 0x1003
│           0000:093d      out   dx, ax
│           0000:093e      mov   al, 8
│           0000:0940      out   dx, al
│           0000:0941      inc   dx                                    ; arg2
│           0000:0942      push  di
│           0000:0943      mov   ah, byte cs:[0x4210]
│           0000:0948      ror   ah, 1
│           0000:094a      lodsb al, byte [si]
│           0000:094b      and   al, byte cs:[0x4210]
│           0000:0950      out   dx, al
│           0000:0951      mov   al, byte cs:[0x4211]
│           0000:0955      xchg  byte es:[di], al
│           0000:0958      add   di, 0x50
│           0000:095b      lodsb al, byte [si]
│           0000:095c      and   al, ah
│           0000:095e      out   dx, al
│           0000:095f      mov   al, byte cs:[0x4211]
│           0000:0963      xchg  byte es:[di], al
│           0000:0966      add   di, 0x50
│           0000:0969      lodsb al, byte [si]
│           0000:096a      and   al, byte cs:[0x4210]
│           0000:096f      out   dx, al
│           0000:0970      mov   al, byte cs:[0x4211]
│           0000:0974      xchg  byte es:[di], al
│           0000:0977      add   di, 0x50
│           0000:097a      lodsb al, byte [si]
│           0000:097b      and   al, ah
│           0000:097d      out   dx, al
│           0000:097e      mov   al, byte cs:[0x4211]
│           0000:0982      xchg  byte es:[di], al
│           0000:0985      pop   di
│           0000:0986      push  di
│           0000:0987      lodsb al, byte [si]
│           0000:0988      out   dx, al
│           0000:0989      mov   al, 6
│           0000:098b      xchg  byte es:[di], al
│           0000:098e      add   di, 0x50
│           0000:0991      lodsb al, byte [si]
│           0000:0992      out   dx, al
│           0000:0993      mov   al, 6
│           0000:0995      xchg  byte es:[di], al
│           0000:0998      add   di, 0x50
│           0000:099b      lodsb al, byte [si]
│           0000:099c      out   dx, al
│           0000:099d      mov   al, 6
│           0000:099f      xchg  byte es:[di], al
│           0000:09a2      add   di, 0x50
│           0000:09a5      lodsb al, byte [si]
│           0000:09a6      out   dx, al
│           0000:09a7      mov   al, 6
│           0000:09a9      xchg  byte es:[di], al
│           0000:09ac      pop   di
│           0000:09ad      dec   dx                                    ; arg2
│           0000:09ae      pop   si
└           0000:09af      ret
```

### Function 0x00000bd0
```asm
; CALL XREF from fcn.00000903 @ +0x2ad
┌ fcn.00000bd0(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0bd0      mov   dx, 0x3c4
│           0000:0bd3      mov   al, 2
│           0000:0bd5      out   dx, al
│           0000:0bd6      inc   dx
│           0000:0bd7      mov   al, byte cs:[0x4211]
│           0000:0bdb      add   al, 0x10
│           0000:0bdd      mov   cl, 0x50                              ; 'P'
│           0000:0bdf      mul   cl
│           0000:0be1      add   ax, 4                                 ; arg1
│           0000:0be4      mov   di, ax                                ; arg1
│           0000:0be6      cmp   byte cs:[0x4211], bl
│       ┌─< 0000:0beb      jae   0xbf0
│      ┌──< 0000:0bed      jmp   0xc78
│      │└─> 0000:0bf0      mov   al, bl
│      │    0000:0bf2      add   al, byte cs:[0x4216]
│      │    0000:0bf7      cmp   byte cs:[0x4211], al
│      │┌─< 0000:0bfc      jae   0xc78
│      ││   0000:0bfe      mov   al, byte cs:[0x4211]
│      ││   0000:0c02      sub   al, bl
│      ││   0000:0c04      mul   byte cs:[0x4217]
│      ││   0000:0c09      add   si, ax                                ; arg1
│      ││   0000:0c0b      mov   byte cs:[0x4210], 0
│      ││   0000:0c11      mov   cx, 0x48                              ; 'H'
│     ┌───> 0000:0c14      push  cx
│     ╎││   0000:0c15      mov   al, 0xf
│     ╎││   0000:0c17      out   dx, al
│     ╎││   0000:0c18      mov   byte es:[di], 0
│     ╎││   0000:0c1c      cmp   byte cs:[0x4210], bh
│    ┌────< 0000:0c21      jb    0xc6e
│    │╎││   0000:0c23      mov   al, bh
│    │╎││   0000:0c25      add   al, byte cs:[0x4217]
│    │╎││   0000:0c2a      cmp   byte cs:[0x4210], al
│   ┌─────< 0000:0c2f      jae   0xc6e
│   ││╎││   0000:0c31      push  si
│   ││╎││   0000:0c32      test  byte cs:[0x4213], 1
│  ┌──────< 0000:0c38      je    0xc47
│  │││╎││   0000:0c3a      mov   al, 1
│  │││╎││   0000:0c3c      out   dx, al
│  │││╎││   0000:0c3d      mov   al, byte [si]
│  │││╎││   0000:0c3f      mov   byte es:[di], al
│  │││╎││   0000:0c42      add   si, word cs:[0x4214]
│  └──────> 0000:0c47      test  byte cs:[0x4213], 2
│  ┌──────< 0000:0c4d      je    0xc5c
│  │││╎││   0000:0c4f      mov   al, 2
│  │││╎││   0000:0c51      out   dx, al
│  │││╎││   0000:0c52      mov   al, byte [si]
│  │││╎││   0000:0c54      mov   byte es:[di], al
│  │││╎││   0000:0c57      add   si, word cs:[0x4214]
│  └──────> 0000:0c5c      test  byte cs:[0x4213], 4
│  ┌──────< 0000:0c62      je    0xc6c
│  │││╎││   0000:0c64      mov   al, 4
│  │││╎││   0000:0c66      out   dx, al
│  │││╎││   0000:0c67      mov   al, byte [si]
│  │││╎││   0000:0c69      mov   byte es:[di], al
│  └──────> 0000:0c6c      pop   si
│   ││╎││   0000:0c6d      inc   si
│   └└────> 0000:0c6e      inc   di
│     ╎││   0000:0c6f      inc   byte cs:[0x4210]
│     ╎││   0000:0c74      pop   cx
│     └───< 0000:0c75      loop  0xc14
│      ││   0000:0c77      ret
│      ││   ; CODE XREF from fcn.00000bd0 @ 0xbed
│      └└─> 0000:0c78      mov   al, 0xf
│           0000:0c7a      out   dx, al
│           0000:0c7b      mov   cx, 0x24                              ; '$'
│           0000:0c7e      xor   ax, ax
│           0000:0c80      rep   stosw word es:[di], ax
└           0000:0c82      ret
```

### Function 0x00000d16
```asm
; CALL XREFS from fcn.00000bd0 @ +0xeb, +0x135
┌ fcn.00000d16();
│           0000:0d16      call  fcn.00000d7e                          ; fcn.00000d7e
│           0000:0d19      mov   al, 0x3f                              ; '?'
│           0000:0d1b      out   dx, al
│           0000:0d1c      mov   al, 7
│           0000:0d1e      xchg  byte es:[di], al
│           0000:0d21      inc   di
│           0000:0d22      mov   al, 0xff
│           0000:0d24      out   dx, al
│           0000:0d25      mov   cx, bx
│           0000:0d27      sub   cx, 2
│       ┌─> 0000:0d2a      mov   al, 7
│       ╎   0000:0d2c      xchg  byte es:[di], al
│       ╎   0000:0d2f      inc   di
│       └─< 0000:0d30      loop  0xd2a
│           0000:0d32      mov   al, 0xfc
│           0000:0d34      out   dx, al
│           0000:0d35      mov   al, 7
│           0000:0d37      xchg  byte es:[di], al
└           0000:0d3a      ret
```

### Function 0x00000d3b
```asm
; CALL XREFS from fcn.00000bd0 @ +0xfa, +0x132
┌ fcn.00000d3b(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│       ┌─> 0000:0d3b      push  cx                                    ; arg4
│       ╎   0000:0d3c      push  di
│       ╎   0000:0d3d      call  fcn.00000d7e                          ; fcn.00000d7e
│       ╎   0000:0d40      mov   al, 0x30                              ; '0'
│       ╎   0000:0d42      out   dx, al
│       ╎   0000:0d43      mov   al, 7
│       ╎   0000:0d45      xchg  byte es:[di], al
│       ╎   0000:0d48      mov   al, 0xf
│       ╎   0000:0d4a      out   dx, al
│       ╎   0000:0d4b      xor   al, al
│       ╎   0000:0d4d      xchg  byte es:[di], al
│       ╎   0000:0d50      inc   di
│       ╎   0000:0d51      mov   al, 0xff
│       ╎   0000:0d53      out   dx, al
│       ╎   0000:0d54      mov   cx, bx
│       ╎   0000:0d56      sub   cx, 2
│      ┌──> 0000:0d59      xor   al, al
│      ╎╎   0000:0d5b      xchg  byte es:[di], al
│      ╎╎   0000:0d5e      inc   di
│      └──< 0000:0d5f      loop  0xd59
│       ╎   0000:0d61      mov   al, 0xc
│       ╎   0000:0d63      out   dx, al
│       ╎   0000:0d64      mov   al, 7
│       ╎   0000:0d66      xchg  byte es:[di], al
│       ╎   0000:0d69      mov   al, 0xf0
│       ╎   0000:0d6b      out   dx, al
│       ╎   0000:0d6c      xor   al, al
│       ╎   0000:0d6e      xchg  byte es:[di], al
│       ╎   0000:0d71      pop   di
│       ╎   0000:0d72      inc   byte cs:[0x4211]
│       ╎   0000:0d77      add   di, 0x50
│       ╎   0000:0d7a      pop   cx
│       └─< 0000:0d7b      loop  fcn.00000d3b
└           0000:0d7d      ret
```

### Function 0x00000d7e
```asm
; CALL XREF from fcn.00000bd0 @ +0xff
            ; CALL XREF from fcn.00000d16 @ 0xd16
            ; CALL XREF from fcn.00000d3b @ 0xd3d
┌ fcn.00000d7e();
│           0000:0d7e      mov   al, 0xff
│           0000:0d80      out   dx, al
│           0000:0d81      xor   al, al
│           0000:0d83      xchg  byte es:[di - 1], al
│           0000:0d87      xor   al, al
│           0000:0d89      xchg  byte es:[di], al
│           0000:0d8c      mov   al, 0x55                              ; 'U'
│           0000:0d8e      mov   cl, byte cs:[0x4211]
│           0000:0d93      and   cl, 1
│           0000:0d96      ror   al, cl
│           0000:0d98      out   dx, al
│           0000:0d99      mov   al, 2
│           0000:0d9b      xchg  byte es:[di - 1], al
│           0000:0d9f      mov   al, 2
│           0000:0da1      xchg  byte es:[di], al
└           0000:0da4      ret
```

### Function 0x00000e90
```asm
; CALL XREFS from fcn.00000d7e @ +0xda, +0x102
┌ fcn.00000e90();
│           0000:0e90      push  si
│           0000:0e91      push  di
│           0000:0e92      mov   al, 1
│           0000:0e94      out   dx, al
│           0000:0e95      mov   cx, 0x50                              ; 'P'
│           0000:0e98      rep   movsb byte es:[di], byte ptr [si]
│           0000:0e9a      pop   di
│           0000:0e9b      pop   si
│           0000:0e9c      add   si, 0x2a80
│           0000:0ea0      push  si
│           0000:0ea1      push  di
│           0000:0ea2      mov   al, 2
│           0000:0ea4      out   dx, al
│           0000:0ea5      mov   cx, 0x50                              ; 'P'
│           0000:0ea8      rep   movsb byte es:[di], byte ptr [si]
│           0000:0eaa      pop   di
│           0000:0eab      pop   si
│           0000:0eac      add   si, 0x2a80
│           0000:0eb0      mov   al, 4
│           0000:0eb2      out   dx, al
│           0000:0eb3      mov   cx, 0x50                              ; 'P'
│           0000:0eb6      rep   movsb byte es:[di], byte ptr [si]
└           0000:0eb8      ret
```

### Function 0x00000eb9
```asm
; CALL XREFS from fcn.00000d7e @ +0xd5, +0xfd
┌ fcn.00000eb9();
│           0000:0eb9      push  si
│           0000:0eba      push  di
│           0000:0ebb      mov   al, 1
│           0000:0ebd      out   dx, al
│           0000:0ebe      mov   cx, 0xb
│           0000:0ec1      rep   movsb byte es:[di], byte ptr [si]
│           0000:0ec3      add   si, 0x18
│           0000:0ec6      add   di, 0x18
│           0000:0ec9      mov   cx, 0xa
│           0000:0ecc      rep   movsb byte es:[di], byte ptr [si]
│           0000:0ece      add   si, 0x18
│           0000:0ed1      add   di, 0x18
│           0000:0ed4      mov   cx, 0xb
│           0000:0ed7      rep   movsb byte es:[di], byte ptr [si]
│           0000:0ed9      pop   di
│           0000:0eda      pop   si
│           0000:0edb      add   si, 0x2a80
│           0000:0edf      push  si
│           0000:0ee0      push  di
│           0000:0ee1      mov   al, 2
│           0000:0ee3      out   dx, al
│           0000:0ee4      mov   cx, 0xb
│           0000:0ee7      rep   movsb byte es:[di], byte ptr [si]
│           0000:0ee9      add   si, 0x18
│           0000:0eec      add   di, 0x18
│           0000:0eef      mov   cx, 0xa
│           0000:0ef2      rep   movsb byte es:[di], byte ptr [si]
│           0000:0ef4      add   si, 0x18
│           0000:0ef7      add   di, 0x18
│           0000:0efa      mov   cx, 0xb
│           0000:0efd      rep   movsb byte es:[di], byte ptr [si]
│           0000:0eff      pop   di
│           0000:0f00      pop   si
│           0000:0f01      add   si, 0x2a80
│           0000:0f05      mov   al, 4
│           ; DATA XREF from fcn.00000000 @ 0x45
│           0000:0f07      out   dx, al
│           0000:0f08      mov   cx, 0xb
│           0000:0f0b      rep   movsb byte es:[di], byte ptr [si]
│           0000:0f0d      add   si, 0x18
│           0000:0f10      add   di, 0x18
│           0000:0f13      mov   cx, 0xa
│           0000:0f16      rep   movsb byte es:[di], byte ptr [si]
│           0000:0f18      add   si, 0x18
│           0000:0f1b      add   di, 0x18
│           0000:0f1e      mov   cx, 0xb
│           0000:0f21      rep   movsb byte es:[di], byte ptr [si]
└           0000:0f23      ret
```

### Function 0x00000f24
```asm
; CALL XREFS from fcn.00000d7e @ +0x8d, +0x97
┌ fcn.00000f24();
│           0000:0f24      push  di
│           0000:0f25      mov   ax, 0xfc3f
│           0000:0f28      call  fcn.00000fa9                          ; fcn.00000fa9
│           0000:0f2b      add   di, 0x36
│           0000:0f2e      mov   cx, 0x5b                              ; '['
│       ┌─> 0000:0f31      mov   byte es:[di], 0x30                    ; '0'
│       ╎                                                              ; [0x30:1]=117
│       ╎   0000:0f35      mov   byte es:[di + 0x19], 0xc              ; [0xc:1]=52
│       ╎   0000:0f3a      add   di, 0x50
│       └─< 0000:0f3d      loop  0xf31
│           0000:0f3f      mov   ax, 0xfc3f
│           0000:0f42      call  fcn.00000fa9                          ; fcn.00000fa9
│           0000:0f45      pop   di
│           0000:0f46      add   di, 0x2a80
│           0000:0f4a      push  di
│           0000:0f4b      mov   ax, 0xfd7f
│           0000:0f4e      call  fcn.00000fa9                          ; fcn.00000fa9
│           0000:0f51      add   di, 0x36
│           0000:0f54      mov   cx, 0x2d                              ; '-'
│       ┌─> 0000:0f57      mov   byte es:[di], 0xb0                    ; [0xb0:1]=239
│       ╎   0000:0f5b      mov   byte es:[di + 0x19], 0xe              ; [0xe:1]=15
│       ╎   0000:0f60      add   di, 0x50
│       ╎   0000:0f63      mov   byte es:[di], 0x70                    ; 'p'
│       ╎                                                              ; [0x70:1]=184
│       ╎   0000:0f67      mov   byte es:[di + 0x19], 0xd              ; [0xd:1]=65
│       ╎   0000:0f6c      add   di, 0x50
│       └─< 0000:0f6f      loop  0xf57
│           0000:0f71      mov   byte es:[di], 0xb0                    ; [0xb0:1]=239
│           0000:0f75      mov   byte es:[di + 0x19], 0xe              ; [0xe:1]=15
│           0000:0f7a      add   di, 0x50
│           0000:0f7d      mov   ax, 0xfd7f
│           0000:0f80      call  fcn.00000fa9                          ; fcn.00000fa9
│           0000:0f83      pop   di
│           0000:0f84      add   di, 0x2a80
│           0000:0f88      mov   ax, 0xfc3f
│           0000:0f8b      call  fcn.00000fa9                          ; fcn.00000fa9
│           0000:0f8e      add   di, 0x36
│           0000:0f91      mov   cx, 0x5b                              ; '['
│       ┌─> 0000:0f94      mov   byte es:[di], 0x30                    ; '0'
│       ╎                                                              ; [0x30:1]=117
│       ╎   0000:0f98      mov   byte es:[di + 0x19], 0xc              ; [0xc:1]=52
│       ╎   0000:0f9d      add   di, 0x50
│       └─< 0000:0fa0      loop  0xf94
│           0000:0fa2      mov   ax, 0xfc3f
│           0000:0fa5      call  fcn.00000fa9                          ; fcn.00000fa9
└           0000:0fa8      ret
```

### Function 0x00000fa9
```asm
; XREFS: CALL 0x00000f28  CALL 0x00000f42  CALL 0x00000f4e  
            ; XREFS: CALL 0x00000f80  CALL 0x00000f8b  CALL 0x00000fa5  
┌ fcn.00000fa9();
│           0000:0fa9      stosb byte es:[di], al
│           0000:0faa      mov   al, 0xff
│           0000:0fac      mov   cx, 0x18
│           0000:0faf      rep   stosb byte es:[di], al
│           0000:0fb1      mov   al, ah
│           0000:0fb3      stosb byte es:[di], al
└           0000:0fb4      ret
```

### Function 0x00000ff3
```asm
; CALL XREFS from fcn.00000fa9 @ +0x32, +0x3a
┌ fcn.00000ff3(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0ff3      push  ax                                    ; arg1
│           0000:0ff4      mov   bl, al
│           0000:0ff6      mov   al, 0x2f                              ; str.u__A_B ; "?u@\rA\nB\xba\xce\U00000003\xb8\U00000005"
│           0000:0ff8      mul   bl
│           0000:0ffa      add   ax, word cs:[0x4218]                  ; arg1
│           0000:0fff      mov   si, ax                                ; arg1
│           0000:1001      mov   al, 0x50                              ; 'P'
│           ; XREFS: DATA 0x00000089  DATA 0x000000dd  DATA 0x00000156  
│           ; XREFS: DATA 0x0000019a  DATA 0x000007a7  DATA 0x000007f3  
│           ; XREFS: DATA 0x0000093a  
│           0000:1003      mul   bl
│           0000:1005      mov   di, ax                                ; arg1
│           0000:1007      mov   dx, 0x3c4
│           0000:100a      mov   ax, 0x102
│           0000:100d      out   dx, ax
│           0000:100e      mov   dx, 0x3ce
│           0000:1011      mov   ax, 4
│           0000:1014      out   dx, ax
│           0000:1015      pop   ax                                    ; int16_t arg1
│           0000:1016      push  ax
│           0000:1017      push  di
│           0000:1018      push  si
│           0000:1019      call  0x104c
│           0000:101c      pop   si
│           0000:101d      pop   di
│           0000:101e      add   si, 0x14ee
│           0000:1022      mov   dx, 0x3c4
│           0000:1025      mov   ax, 0x202
│           ; DATA XREFS from fcn.00000d7e @ +0x2a, +0x30, +0x43, +0x59, +0x65
│           0000:1028      out   dx, ax
│           0000:1029      mov   dx, 0x3ce
│           0000:102c      mov   ax, 0x104
│           0000:102f      out   dx, ax
│           0000:1030      pop   ax                                    ; int16_t arg1
│           0000:1031      push  ax
│           0000:1032      push  di
│           0000:1033      push  si
│           0000:1034      call  0x104c
│           0000:1037      pop   si
│           0000:1038      pop   di
│           0000:1039      add   si, 0x14ee
│           0000:103d      mov   dx, 0x3c4
│           0000:1040      mov   ax, 0x402
│           0000:1043      out   dx, ax
│           0000:1044      mov   dx, 0x3ce
│           0000:1047      mov   ax, 0x204
│           0000:104a      out   dx, ax
│           0000:104b      pop   ax
│           ; CALL XREFS from fcn.00000ff3 @ 0x1019, 0x1034
│           0000:104c      cmp   ax, 0x14
│       ┌─< 0000:104f      jae   0x1056
│       │   0000:1051      mov   cx, 0x2f                              ; str.u__A_B ; "?u@\rA\nB\xba\xce\U00000003\xb8\U00000005"
│      ┌──< 0000:1054      jmp   0x1066
│      │└─> 0000:1056      mov   cx, 0x23                              ; '#'
│      │    0000:1059      cmp   ax, 0x17
│      │┌─< 0000:105c      jb    0x1066
│      ││   0000:105e      cmp   ax, 0x1c
│     ┌───< 0000:1061      jb    0x1069
│     │││   0000:1063      mov   cx, 0x21                              ; '!'
│     │││   ; CODE XREF from fcn.00000ff3 @ 0x1054
│     │└└─> 0000:1066      rep   movsb byte es:[di], byte ptr [si]
│     │     0000:1068      ret
│     └───> 0000:1069      mov   cx, 0x21                              ; '!'
│           0000:106c      rep   movsb byte es:[di], byte ptr [si]
│           0000:106e      lodsb al, byte [si]
│           0000:106f      and   al, 0xfc
│           0000:1071      and   byte es:[di], 3
│           0000:1075      or    byte es:[di], al
└           0000:1078      ret
```

### Function 0x000010be
```asm
; CALL XREFS from fcn.00000ff3 @ +0xb3, +0xbb
┌ fcn.000010be(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:10be      push  ax                                    ; arg1
│           0000:10bf      mov   bl, al
│           0000:10c1      mov   al, 0x2f                              ; str.u__A_B ; "?u@\rA\nB\xba\xce\U00000003\xb8\U00000005"
│           0000:10c3      mul   bl
│           0000:10c5      add   ax, 0x3cd                             ; arg1
│           0000:10c8      add   ax, word cs:[0x4218]                  ; arg1
│           0000:10cd      mov   si, ax                                ; arg1
│           0000:10cf      mov   al, 0x50                              ; 'P'
│           0000:10d1      mul   bl
│           0000:10d3      add   ax, 0x661                             ; arg1
│           0000:10d6      mov   di, ax                                ; arg1
│           0000:10d8      mov   al, 1
│           0000:10da      out   dx, al
│           0000:10db      pop   ax                                    ; int16_t arg1
│           0000:10dc      push  ax
│           0000:10dd      push  di
│           0000:10de      push  si
│           0000:10df      call  0x10fc
│           0000:10e2      pop   si
│           0000:10e3      pop   di
│           0000:10e4      add   si, 0x14ee
│           0000:10e8      mov   al, 2
│           0000:10ea      out   dx, al
│           0000:10eb      pop   ax                                    ; int16_t arg1
│           0000:10ec      push  ax
│           0000:10ed      push  di
│           0000:10ee      push  si
│           0000:10ef      call  0x10fc
│           0000:10f2      pop   si
│           0000:10f3      pop   di
│           0000:10f4      add   si, 0x14ee
│           0000:10f8      mov   al, 4
│           0000:10fa      out   dx, al
│           0000:10fb      pop   ax
│           ; CALL XREFS from fcn.000010be @ 0x10df, 0x10ef
│           0000:10fc      cmp   ax, 0x5e
│           0000:10ff      mov   cx, 0x2f                              ; str.u__A_B ; "?u@\rA\nB\xba\xce\U00000003\xb8\U00000005"
│       ┌─< 0000:1102      jae   0x110c
│       │   0000:1104      mov   cx, 0xe
│       │   0000:1107      rep   movsb byte es:[di], byte ptr [si]
│       │   0000:1109      mov   cx, 0x21                              ; '!'
│       └─> 0000:110c      xor   al, al
│           0000:110e      rep   stosb byte es:[di], al
└           0000:1110      ret
```

### Function 0x00001138
```asm
; CODE XREFS from fcn.00000365 @ +0x135, +0x202
┌ fcn.00001138(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1138      pushf
│           0000:1139      cli
│           0000:113a      mov   dx, 0x10
│           0000:113d      mul   dx
│           0000:113f      add   ax, 0x416a                            ; arg1
│           0000:1142      mov   si, ax                                ; arg1
│           0000:1144      mov   ax, 0x40                              ; '@'
│           0000:1147      mov   es, ax
│           0000:1149      mov   dx, word es:[0x63]
│           0000:114e      add   dx, 6
│           0000:1151      push  dx
│           0000:1152      in    al, dx
│           0000:1153      mov   dx, 0x3c0
│           0000:1156      xor   ah, ah
│           0000:1158      mov   cx, 0x10
│       ┌─> 0000:115b      mov   al, ah
│       ╎   0000:115d      out   dx, al
│       ╎   0000:115e      lodsb al, byte [si]
│       ╎   0000:115f      out   dx, al
│       ╎   0000:1160      inc   ah
│       └─< 0000:1162      loop  0x115b
│           0000:1164      pop   dx
│           0000:1165      in    al, dx
│           0000:1166      mov   al, 0x20
│           0000:1168      mov   dx, 0x3c0
│           0000:116b      out   dx, al
│           0000:116c      popf
└           0000:116d      ret
```

## Cross-References (callers)
```json
  0x000001c5:
[{"from":101,"to":453,"type":"CALL"},{"from":185,"to":453,"type":"CALL"},{"from":281,"to":453,"type":"CALL"},{"from":321,"to":453,"type":"CALL"}]
  0x000001f9:
[{"from":491,"to":505,"type":"CALL"},{"from":500,"to":505,"type":"CALL"}]
  0x00000274:
[{"from":133,"to":628,"type":"CALL"},{"from":217,"to":628,"type":"CALL"},{"from":295,"to":628,"type":"CODE"}]
  0x0000028f:
[{"from":145,"to":655,"type":"CALL"},{"from":157,"to":655,"type":"CALL"},{"from":229,"to":655,"type":"CALL"},{"from":242,"to":655,"type":"CALL"},{"from":253,"to":655,"type":"CALL"}]
  0x00000365:
[{"from":864,"to":869,"type":"CALL"}]
  0x0000056a:
[{"from":1124,"to":1386,"type":"CALL"},{"from":1130,"to":1386,"type":"CALL"},{"from":1136,"to":1386,"type":"CALL"}]
  0x00000580:
[{"from":1338,"to":1408,"type":"CALL"},{"from":1344,"to":1408,"type":"CALL"},{"from":1350,"to":1408,"type":"CALL"}]
  0x00000596:
[{"from":1254,"to":1430,"type":"CALL"},{"from":1271,"to":1430,"type":"CALL"}]
  0x00000612:
[{"from":1543,"to":1554,"type":"CALL"},{"from":1549,"to":1554,"type":"CALL"}]
  0x0000065f:
[{"from":1620,"to":1631,"type":"CALL"},{"from":1626,"to":1631,"type":"CALL"}]
  0x000006bf:
[{"from":1708,"to":1727,"type":"CALL"}]
  0x00000903:
[{"from":2122,"to":2307,"type":"CALL"},{"from":2140,"to":2307,"type":"CALL"},{"from":2155,"to":2307,"type":"CALL"},{"from":2173,"to":2307,"type":"CALL"},{"from":2204,"to":2307,"type":"CALL"},{"from":2230,"to":2307,"type":"CALL"},{"from":2250,"to":2307,"type":"CALL"},{"from":2276,"to":2307,"type":"CALL"}]
  0x00000bd0:
[{"from":2992,"to":3024,"type":"CALL"}]
  0x00000d16:
[{"from":3259,"to":3350,"type":"CALL"},{"from":3333,"to":3350,"type":"CALL"}]
  0x00000d3b:
[{"from":3274,"to":3387,"type":"CALL"},{"from":3330,"to":3387,"type":"CALL"}]
  0x00000d7e:
[{"from":3279,"to":3454,"type":"CALL"},{"from":3350,"to":3454,"type":"CALL"},{"from":3389,"to":3454,"type":"CALL"}]
  0x00000e90:
[{"from":3672,"to":3728,"type":"CALL"},{"from":3712,"to":3728,"type":"CALL"}]
  0x00000eb9:
[{"from":3667,"to":3769,"type":"CALL"},{"from":3707,"to":3769,"type":"CALL"}]
  0x00000f24:
[{"from":3595,"to":3876,"type":"CALL"},{"from":3605,"to":3876,"type":"CALL"}]
```