# IMAGE_DECODER_A - Analysis

**Source:** `chunk_08.bin`  
**Size:** 4.5 KB  
**Functions:** 27  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    9 91   -> 60   fcn.00000000
0x000000df    7 60           fcn.000000df
0x0000011b   14 799  -> 202  fcn.0000011b
0x00000124   39 342          fcn.00000124
0x0000027a   19 217          fcn.0000027a
0x00000356    1 3            fcn.00000356
0x00000359    3 32           fcn.00000359
0x0000043a    7 127          fcn.0000043a
0x000004b9    4 25           fcn.000004b9
0x000004d2    1 4            fcn.000004d2
0x000004d6    3 10           fcn.000004d6
0x000004e0   19 126          fcn.000004e0
0x0000055e    1 14           fcn.0000055e
0x00000580    3 38           fcn.00000580
0x000005a6    5 20           fcn.000005a6
0x000005e6    3 63           fcn.000005e6
0x00000659    5 34           fcn.00000659
0x0000089f    4 29           fcn.0000089f
0x000008bc    7 74           fcn.000008bc
0x0000092c    3 45           fcn.0000092c
0x00000959    9 70           fcn.00000959
0x0000099f    5 24           fcn.0000099f
0x000009be    1 70           fcn.000009be
0x00000a04    8 25           fcn.00000a04
0x00000a1d    1 10           fcn.00000a1d
0x00000cd4    3 59           fcn.00000cd4
0x00000d4f    5 34           fcn.00000d4f
```

## Strings
```
nth      paddr      vaddr len size section type   string                                        
------------------------------------------------------------------------------------------------
  0 0x00000005 0x00000005   7    7         ascii  :(0W0w6
  1 0x0000000f 0x0000000f   5    5         ascii  7`7O3
  2 0x00000015 0x00000015   5    5         ascii  5!6|5
  3 0x0000001d 0x0000001d   7    7         ascii  7b8#8#:
  4 0x00000053 0x00000053   4    4         ascii  ^YFF
  5 0x00000076 0x00000076   4    4         ascii  m=<\f
  6 0x000000de 0x000000de   6    8         utf8   À>o=\eu blocks=Latin-1 Supplement,Basic Latin
  7 0x00000111 0x00000111   4    4         ascii  _GGY
  8 0x00000117 0x00000117   5    6         utf8   ^\a_À| blocks=Basic Latin,Latin-1 Supplement
  9 0x00000137 0x00000137   5    5         ascii  WVSR2
 10 0x00000182 0x00000182   8    9         ibm037 aG&{vaGÚ
 11 0x000001c1 0x000001c1   8    9         ibm037 aF&{vaGÚ
 12 0x000001de 0x000001de   8    9         ibm037 aF&{vaGÚ
 13 0x000001fb 0x000001fb   8    9         ibm037 aF&{vaGÚ
 14 0x00000218 0x00000218   8    9         ibm037 aF&{vaGÚ
 15 0x00000235 0x00000235   8    9         ibm037 aF&{vaGÚ
 16 0x00000252 0x00000252   8    9         ibm037 aF&{vaGÚ
 17 0x0000029b 0x0000029b   4    4         ascii  7\a[\n
 18 0x000002aa 0x000002aa   5    5         ascii  WVSR2
 19 0x000002f1 0x000002f1   6    7         ascii  \aCC>#F
 20 0x00000333 0x00000333   4    4         ascii  t\eG&
 21 0x00000409 0x00000409   6    6         ascii  >o=\et\f
 22 0x000004ee 0x000004ee   8    9         ibm037 aG&{vaGÚ
 23 0x000004fd 0x000004fd   8    9         ibm037 aG&{vaGÚ
 24 0x0000050c 0x0000050c   8    9         ibm037 aG&{vaGÚ
 25 0x0000051b 0x0000051b   8    9         ibm037 aG&{vaGÚ
 26 0x0000052a 0x0000052a   8    9         ibm037 aG&{vaGÚ
 27 0x00000539 0x00000539   8    9         ibm037 aG&{vaGÚ
 28 0x00000548 0x00000548   8    9         ibm037 aG&{vaGÚ
 29 0x0000056c 0x0000056c   4    4         ascii  t5l5
 30 0x000006be 0x000006be   7    8         ibm037 uuuu;aF
 31 0x0000074b 0x0000074b   7    8         ibm037 uuuu;aF
 32 0x00000866 0x00000866   4    4         ascii  VWW2
 33 0x000008ed 0x000008ed   6    7         ascii  &\b=&\b]
 34 0x00000992 0x00000992   6    7         ascii  &\b%&\bE
 35 0x00000b2b 0x00000b2b   8    8         ibm037 aG&{ßSKC
 36 0x00000bac 0x00000bac   4    4         ascii  =_\aY
 37 0x00000c00 0x00000c00   4    4         ascii  <[CY
 38 0x00000c09 0x00000c09   5    5         ascii  <3<`<
 39 0x00000d6d 0x00000d6d   4    5         ibm037 }SSC
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, short unsigned int arg3, int16_t arg_2135h);
│           ; arg int16_t arg1 @ ax
│           ; arg short unsigned int arg3 @ bx
│           ; arg int16_t arg_2135h @ stack + 0x2135
│           0000:0000      aam   0x11
│           ; DATA XREF from fcn.000000df @ 0x10c
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           0000:0004      cmc
│           ; DATA XREF from fcn.00000a1d @ +0x1d2
│           ;-- str.:_0W0w6:
│           0000:0005     .string ":(0W0w6" ; len=7                    ; arg3
│           0000:000c      aam   0x36
│           0000:000e      add   ax, 0x6037                            ; arg1
│           0000:0011      aaa
│           ; DATA XREF from fcn.00000a1d @ +0xe9
│           0000:0012      dec   di
│           0000:0013      xor   si, word [bp + 0x2135]
│       ┌─< 0000:0017      jl    0x4f
..
        │   ; DATA XREF from str.7b8_8_: @ +0x1d
        │   ; DATA XREF from fcn.00000a1d @ +0xf1
        │   ; DATA XREFS from fcn.00000659 @ +0x3a, +0xc7
        │   ; DATA XREF from str.7b8_8_: @ +0x61
        │   ; DATA XREFS from fcn.00000659 @ +0x62, +0xef
        │   ; DATA XREF from fcn.000008bc @ 0x8bc
        │   ; DATA XREF from fcn.00000659 @ +0x1f7
        │   ; DATA XREF from fcn.000008bc @ 0x8f4
        │   ; DATA XREF from fcn.00000959 @ 0x999
        │   ; DATA XREFS from fcn.00000a1d @ +0x5e, +0xcb
│      ┌──> 0000:003d      push  cx
│      ╎│   0000:003e      push  si
│      ╎│   0000:003f      mov   cx, 0x18
│     ┌───> 0000:0042      movsw word es:[di], word ptr [si]
│     ╎╎│   0000:0043      add   si, 0x1ffe
│     ╎╎│   0000:0047      cmp   si, 0x4000
│    ┌────< 0000:004b      jb    0x51
│    │╎╎│   0000:004d  ~   add   si, 0xc050
│    │╎╎└─> 0000:004f      push  ax                                    ; arg1
│    │╎╎    ; XREFS: DATA 0x00000141  DATA 0x000002b4  DATA 0x000007ad  
│    │╎╎    ; XREFS: DATA 0x000007e9  DATA 0x0000082f  DATA 0x00000a35  
│    │╎╎    ; XREFS: DATA 0x00000a96  
│    │╎╎    0000:0050  ~   shl   dl, 0xef
│    └└───< 0000:0051      loop  0x42
│      ╎    0000:0053      pop   si
│      ╎    0000:0054      pop   cx
│      ╎    0000:0055      inc   si
│      ╎    0000:0056      inc   si
│      └──< 0000:0057      loop  0x3d
│           0000:0059      pop   ds
└           0000:005a      ret
```

### Function 0x000000df
```asm
; CALL XREF from str.7b8_8_: @ +0x6e
┌ fcn.000000df(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:00df      cmp   byte [0x3d6f], 0x1b                   ; [0x3d6f:1]=255
│       ┌─< 0000:00e4      jne   0xe7
│       │   0000:00e6      ret
│       └─> 0000:00e7      mov   al, byte [0x83]                       ; [0x83:1]=191
│           0000:00ea      cmp   byte [0x3d6f], al                     ; [0x3d6f:1]=255
│       ┌─< 0000:00ee      je    0xf1
│       │   0000:00f0      ret
│       └─> 0000:00f1      push  di
│           0000:00f2      push  es
│           0000:00f3      push  si
│           0000:00f4      mov   al, byte [0x83]                       ; [0x83:1]=191
│           0000:00f7      add   al, al
│           0000:00f9      xor   ah, ah
│           0000:00fb      mov   di, ax                                ; arg1
│           ; DATA XREFS from fcn.000004b9 @ 0x4bf, 0x4cd
│           0000:00fd      add   di, 0x127c
│           0000:0101      mov   ax, 0xb800
│           0000:0104      mov   es, ax
│           0000:0106      mov   si, 0x3f14
│           0000:0109      mov   cx, 2
│       ┌─> 0000:010c      push  cx
│       ╎   0000:010d      push  di
│       ╎   0000:010e      call  fcn.000004e0                          ; fcn.000004e0
│       ╎   0000:0111      pop   di
│       ╎   0000:0112      inc   di
│       ╎   0000:0113      inc   di
│       ╎   0000:0114      pop   cx
│       └─< 0000:0115      loop  0x10c
│           0000:0117      pop   si
│           0000:0118      pop   es
│           0000:0119      pop   di
└           0000:011a      ret
```

### Function 0x0000011b
```asm
; CALL XREF from str.7b8_8_: @ +0x9e
┌ fcn.0000011b(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:011b      cmp   byte [si - 1], 0xfd
│       ┌─< 0000:011f      jne   fcn.00000124                          ; fcn.00000124
│      ┌──< 0000:0121      jmp   0x379
       ││   ; CALL XREFS from str.7b8_8_: @ +0x8e, +0x96, +0xa6, +0xae
       ││   ; CODE XREF from fcn.0000027a @ 0x2a2
..
│     ╎││   ; DATA XREF from fcn.00000659 @ +0x88
      ╎│    ; CALL XREFS from str.7b8_8_: @ +0x76, +0x7e, +0x86
│  │ │ ││   ; CODE XREF from fcn.0000027a @ 0x348
       │    ; CALL XREF from fcn.0000011b @ 0x3b6
       │    ; CALL XREF from fcn.0000043a @ 0x46a
│      │    ; CODE XREF from fcn.0000011b @ 0x121
│      └──> 0000:0379      push  ds                                    ; arg1
│           0000:037a      push  si
│           0000:037b      push  es
│           0000:037c      push  di
│           0000:037d      mov   di, 0x3d71                            ; 'q='
│           0000:0380      movsw word es:[di], word ptr [si]
│           0000:0381      add   si, 5
│           0000:0384      movsw word es:[di], word ptr [si]
│           0000:0385      movsb byte es:[di], byte ptr [si]
│           0000:0386      mov   dl, byte cs:[0x3d6f]
│           0000:038b      add   dl, 4
│           0000:038e      xor   dh, dh
│           0000:0390      add   dx, word cs:[0x80]
│           0000:0395      mov   word [0x3d76], dx                     ; [0x3d76:2]=0xffff ; arg2
│           0000:0399      call  fcn.000004b9                          ; fcn.000004b9
│           0000:039c      mov   byte es:[0x3d70], al
│           0000:03a0      cmp   byte es:[0x3d73], 0xfd
│       ┌─< 0000:03a6      jne   0x3b0
│       │   0000:03a8      inc   dx
│       │   0000:03a9      call  fcn.000004b9                          ; fcn.000004b9
│       │   0000:03ac      mov   byte es:[0x3d73], al
│       └─> 0000:03b0      mov   si, 0x3d70                            ; 'p='
│           0000:03b3      mov   di, 0x3f74                            ; 't?'
│           0000:03b6      call  fcn.00000356                          ; fcn.00000356
│           0000:03b9      mov   si, word cs:[0xc00f]
│       ┌─> 0000:03be      call  fcn.000005a6                          ; fcn.000005a6
│       ╎   0000:03c1      or    bl, bl
│      ┌──< 0000:03c3      je    0x3d7
│      │╎   0000:03c5      push  si
│      │╎   0000:03c6      push  bx
│      │╎   0000:03c7      call  fcn.00000580                          ; fcn.00000580
│      │╎   0000:03ca      pop   bx
│      │╎   0000:03cb      mov   es, word cs:[0xff2c]
│      │╎   0000:03d0      mov   si, 0x3d70                            ; 'p='
│      │╎   0000:03d3      call  fcn.0000055e                          ; fcn.0000055e
│      │╎   0000:03d6      pop   si
│      └──> 0000:03d7      add   si, 8
│       ╎   0000:03da      cmp   word [si], 0xffff
│       └─< 0000:03dd      jne   0x3be
│           0000:03df      pop   di
│           0000:03e0      pop   es
│           0000:03e1      mov   ch, byte es:[di - 1]
│           0000:03e5      mov   cl, byte es:[di + 7]
│           0000:03e9      push  es
│           0000:03ea      push  di
│           0000:03eb      push  cx
│           0000:03ec      mov   di, word cs:[0x3d6d]
│           0000:03f1      add   di, 0x640
│           0000:03f5      push  di
│           0000:03f6      mov   si, 0x3f74                            ; 't?'
│           0000:03f9      mov   ax, 0xb800
│           0000:03fc      mov   es, ax
│           0000:03fe      inc   ch
│       ┌─< 0000:0400      je    0x405
│       │   0000:0402      call  fcn.000004e0                          ; fcn.000004e0
│       └─> 0000:0405      pop   di
│           0000:0406      pop   cx
│           0000:0407      cmp   byte cs:[0x3d6f], 0x1b
│       ┌─< 0000:040d      je    0x41b
│       │   0000:040f      mov   si, 0x3fa4
│       │   0000:0412      inc   di
│       │   0000:0413      inc   di
│       │   0000:0414      inc   cl
│      ┌──< 0000:0416      je    0x41b
│      ││   0000:0418      call  fcn.000004e0                          ; fcn.000004e0
│      └└─> 0000:041b      pop   di
│           0000:041c      pop   es
│           0000:041d      mov   al, 0xff
│           0000:041f      mov   byte es:[di - 1], 0xfe                ; [0xfe:1]=199
│           0000:0424      mov   byte es:[di], al
│           0000:0427      mov   byte es:[di + 1], al
│           0000:042b      mov   byte es:[di + 7], al
│           0000:042f      mov   byte es:[di + 8], al
│           0000:0433      mov   byte es:[di + 9], al
│           0000:0437      pop   si
│           0000:0438      pop   ds
└           0000:0439      ret
```

### Function 0x00000124
```asm
; CALL XREFS from str.7b8_8_: @ +0x8e, +0x96, +0xa6, +0xae
            ; CODE XREF from fcn.0000027a @ 0x2a2
┌ fcn.00000124(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0124      mov   al, byte [di - 1]
│           0000:0127      mov   byte [di - 1], 0xfe                   ; [0xfe:1]=199
│           0000:012b      inc   al
│       ┌─< 0000:012d      jne   0x130
│       │   0000:012f      ret
│       └─> 0000:0130      dec   di
│           0000:0131      dec   si
│           0000:0132      mov   dl, byte [si]
│           0000:0134      movsb byte es:[di], byte ptr [si]
│           0000:0135      push  es
│           0000:0136      push  ds
│           0000:0137      push  di
│           0000:0138      push  si
│           0000:0139      push  bx                                    ; arg3
│           0000:013a      push  dx                                    ; arg2
│           0000:013b      xor   bh, bh
│           0000:013d      add   bx, bx                                ; arg3
│           0000:013f      add   bx, bx                                ; arg3
│           0000:0141      mov   ax, 0x50                              ; 'P'
│           0000:0144      mul   bx
│           0000:0146      add   ax, word [0x3d6d]                     ; [0x3d6d:2]=0xffff
│           0000:014a      mov   di, ax
│           0000:014c      pop   dx
│           0000:014d      mov   bl, dl
│           0000:014f      xor   bh, bh
│           0000:0151      add   bx, bx                                ; arg3
│           0000:0153      test  word [bx + 0x3fd4], 0xffff            ; arg3
│       ┌─< 0000:0159      jne   0x19d
│       │   0000:015b      mov   word [bx + 0x3fd4], di                ; arg3
│       │   0000:015f      mov   ax, 0x10
│       │   0000:0162      mul   dl
│       │   0000:0164      mov   si, ax
│       │   0000:0166      add   si, 0x8100
│       │   0000:016a      mov   ds, word cs:[0xff2c]
│       │   0000:016f      mov   ax, 0xb800
│       │   0000:0172      mov   es, ax
│       │   0000:0174      mov   cx, 4
│      ┌──> 0000:0177      movsw word es:[di], word ptr [si]
│      ╎│   0000:0178      add   di, 0x1ffe
│      ╎│   0000:017c      cmp   di, 0x4000
│     ┌───< 0000:0180      jb    0x186
│     │╎│   0000:0182      add   di, 0xc050
│     └───> 0000:0186      movsw word es:[di], word ptr [si]
│      ╎│   0000:0187      add   di, 0x1ffe
│      ╎│   0000:018b      cmp   di, 0x4000
│     ┌───< 0000:018f      jb    0x195
│     │╎│   0000:0191      add   di, 0xc050
│     └└──< 0000:0195      loop  0x177
│       │   0000:0197      pop   bx
│       │   0000:0198      pop   si
│       │   0000:0199      pop   di
│       │   0000:019a      pop   ds
│       │   0000:019b      pop   es
│       │   0000:019c      ret
│       └─> 0000:019d      mov   si, word [bx + 0x3fd4]                ; arg3
│           0000:01a1      mov   ax, 0xb800
│           0000:01a4      mov   es, ax
│           0000:01a6      mov   ds, ax
│           0000:01a8      movsw word es:[di], word ptr [si]
│           0000:01a9      add   di, 0x1ffe
│           0000:01ad      cmp   di, 0x4000
│       ┌─< 0000:01b1      jb    0x1b7
│       │   0000:01b3      add   di, 0xc050
│       └─> 0000:01b7      add   si, 0x1ffe
│           0000:01bb      cmp   si, 0x4000
│       ┌─< 0000:01bf      jb    0x1c5
│       │   0000:01c1      add   si, 0xc050
│       └─> 0000:01c5      movsw word es:[di], word ptr [si]
│           0000:01c6      add   di, 0x1ffe
│           0000:01ca      cmp   di, 0x4000
│       ┌─< 0000:01ce      jb    0x1d4
│       │   0000:01d0      add   di, 0xc050
│       └─> 0000:01d4      add   si, 0x1ffe
│           0000:01d8      cmp   si, 0x4000
│       ┌─< 0000:01dc      jb    0x1e2
│       │   0000:01de      add   si, 0xc050
│       └─> 0000:01e2      movsw word es:[di], word ptr [si]
│           0000:01e3      add   di, 0x1ffe
│           0000:01e7      cmp   di, 0x4000
│       ┌─< 0000:01eb      jb    0x1f1
│       │   0000:01ed      add   di, 0xc050
│       └─> 0000:01f1      add   si, 0x1ffe
│           0000:01f5      cmp   si, 0x4000
│       ┌─< 0000:01f9      jb    0x1ff
│       │   0000:01fb      add   si, 0xc050
│       └─> 0000:01ff      movsw word es:[di], word ptr [si]
│           0000:0200      add   di, 0x1ffe
│           0000:0204      cmp   di, 0x4000
│       ┌─< 0000:0208      jb    0x20e
│       │   0000:020a      add   di, 0xc050
│       └─> 0000:020e      add   si, 0x1ffe
│           0000:0212      cmp   si, 0x4000
│       ┌─< 0000:0216      jb    0x21c
│       │   0000:0218      add   si, 0xc050
│       └─> 0000:021c      movsw word es:[di], word ptr [si]
│           0000:021d      add   di, 0x1ffe
│           0000:0221      cmp   di, 0x4000
│       ┌─< 0000:0225      jb    0x22b
│       │   0000:0227      add   di, 0xc050
│       └─> 0000:022b      add   si, 0x1ffe
│           0000:022f      cmp   si, 0x4000
│       ┌─< 0000:0233      jb    0x239
│       │   0000:0235      add   si, 0xc050
│       └─> 0000:0239      movsw word es:[di], word ptr [si]
│           0000:023a      add   di, 0x1ffe
│           0000:023e      cmp   di, 0x4000
│       ┌─< 0000:0242      jb    0x248
│       │   0000:0244      add   di, 0xc050
│       └─> 0000:0248      add   si, 0x1ffe
│           0000:024c      cmp   si, 0x4000
│       ┌─< 0000:0250      jb    0x256
│       │   0000:0252      add   si, 0xc050
│       └─> 0000:0256      movsw word es:[di], word ptr [si]
│           0000:0257      add   di, 0x1ffe
│           0000:025b      cmp   di, 0x4000
│       ┌─< 0000:025f      jb    0x265
│       │   0000:0261      add   di, 0xc050
│       └─> 0000:0265      add   si, 0x1ffe
│           0000:0269      cmp   si, 0x4000
│       ┌─< 0000:026d      jb    0x273
│       │   0000:026f      add   si, 0xc050
│       │   ; DATA XREF from fcn.00000659 @ +0x88
│       └─> 0000:0273      movsw word es:[di], word ptr [si]
│           0000:0274      pop   bx
│           0000:0275      pop   si
│           0000:0276      pop   di
│           0000:0277      pop   ds
│           0000:0278      pop   es
└           0000:0279      ret
```

### Function 0x0000027a
```asm
╎   ; CALL XREFS from str.7b8_8_: @ +0x76, +0x7e, +0x86
┌ fcn.0000027a(int16_t arg2, int16_t arg3);
│       ╎   ; arg int16_t arg2 @ dx
│       ╎   ; arg int16_t arg3 @ bx
│       ╎   0000:027a      mov   al, byte [di - 1]
│       ╎   0000:027d      mov   byte [di - 1], 0xfe                   ; [0xfe:1]=199
│       ╎   0000:0281      inc   al
│      ┌──< 0000:0283      jne   0x286
│      │╎   0000:0285      ret
│      └──> 0000:0286      push  bx                                    ; arg3
│       ╎   0000:0287      push  es
│       ╎   0000:0288      mov   dl, byte [si - 1]
│       ╎   0000:028b      mov   bl, dl
│       ╎   0000:028d      xor   bh, bh
│       ╎   0000:028f      mov   es, word cs:[0xff2c]
│       ╎   0000:0294      add   bx, word es:[0x8000]                  ; arg3
│       ╎   0000:0299      mov   dh, byte es:[bx]                      ; arg3
│       ╎   0000:029c      pop   es
│       ╎   0000:029d      pop   bx
│       ╎   0000:029e      or    dh, dh
│      ┌──< 0000:02a0      jne   0x2a5
│      │└─< 0000:02a2      jmp   fcn.00000124                          ; fcn.00000124
│      └──> 0000:02a5      dec   di
│           0000:02a6      dec   si
│           0000:02a7      movsb byte es:[di], byte ptr [si]
│           0000:02a8      push  es
│           0000:02a9      push  ds
│           0000:02aa      push  di
│           0000:02ab      push  si
│           0000:02ac      push  bx
│           0000:02ad      push  dx                                    ; arg2
│           0000:02ae      xor   bh, bh
│           0000:02b0      add   bx, bx
│           0000:02b2      add   bx, bx
│           0000:02b4      mov   ax, 0x50                              ; 'P'
│           0000:02b7      mul   bx
│           0000:02b9      add   ax, word [0x3d6d]                     ; [0x3d6d:2]=0xffff
│           0000:02bd      mov   di, ax
│           0000:02bf      pop   dx
│           0000:02c0      mov   ax, 0x10
│           0000:02c3      mul   dl
│           0000:02c5      mov   si, ax
│           0000:02c7      mov   bp, ax
│           0000:02c9      add   si, 0x8100
│           0000:02cd      add   bp, 0xd000
│           0000:02d1      mov   ax, 0x30                              ; '0'
│           0000:02d4      mul   byte [0x3d6f]
│           0000:02d8      add   bx, bx
│           0000:02da      add   bx, bx
│           0000:02dc      add   bx, ax
│           0000:02de      add   bx, 0xa000
│           0000:02e2      mov   ds, word cs:[0xff2c]
│           0000:02e7      mov   ax, 0xb800
│           0000:02ea      mov   es, ax
│           0000:02ec      mov   cx, 8
│       ┌─> 0000:02ef      mov   ax, word cs:[bx]
│       ╎   0000:02f2      inc   bx
│       ╎   0000:02f3      inc   bx
│       ╎   0000:02f4      and   ax, word ds:[bp]
│       ╎   0000:02f8      inc   bp
│       ╎   0000:02f9      inc   bp
│       ╎   0000:02fa      or    ax, word [si]
│       ╎   0000:02fc      inc   si
│       ╎   0000:02fd      inc   si
│       ╎   0000:02fe      stosw word es:[di], ax
│       ╎   0000:02ff      add   di, 0x1ffe
│       ╎   0000:0303      cmp   di, 0x4000
│      ┌──< 0000:0307      jb    0x30d
│      │╎   0000:0309      add   di, 0xc050
│      └└─< 0000:030d      loop  0x2ef
│           0000:030f      pop   bx
│           0000:0310      pop   si
│           0000:0311      pop   di
│           0000:0312      pop   ds
│           0000:0313      pop   es
│           0000:0314      mov   ah, byte [di - 1]
│           0000:0317      or    ah, ah
│       ┌─< 0000:0319      jne   0x31c
│       │   0000:031b      ret
│       └─> 0000:031c      cmp   ah, 0x19
│       ┌─< 0000:031f      jb    0x322
│       │   0000:0321      ret
│       └─> 0000:0322      push  di
│           0000:0323      push  es
│           0000:0324      mov   es, word cs:[0xff2c]
│           0000:0329      mov   di, word es:[0x8004]
│           0000:032e      mov   cl, byte es:[di]
│           0000:0331      or    cl, cl
│       ┌─< 0000:0333      je    0x350
│       │   0000:0335      inc   di
│      ┌──> 0000:0336      mov   al, byte es:[di]
│      ╎│   0000:0339      cmp   al, 0xff
│     ┌───< 0000:033b      je    0x350
│     │╎│   0000:033d      cmp   ah, al
│    ┌────< 0000:033f      jne   0x34a
│    ││╎│   0000:0341      mov   al, byte es:[di + 1]
│    ││╎│   0000:0345      mov   byte [si - 1], al
│   ┌─────< 0000:0348      jmp   0x350
│   │└────> 0000:034a      inc   di
│   │ │╎│   0000:034b      inc   di
│   │ │╎│   0000:034c      dec   cl
│   │ │└──< 0000:034e      jne   0x336
│   │ │ │   ; CODE XREF from fcn.0000027a @ 0x348
│   └─└─└─> 0000:0350      pop   es
│           0000:0351      pop   di
└           0000:0352      ret
```

### Function 0x00000356
```asm
; CALL XREF from fcn.0000011b @ 0x3b6
┌ fcn.00000356(int16_t arg1);
│           ; arg int16_t arg1 @ ax
└           0000:0356      mov   cx, 6
```

### Function 0x00000359
```asm
; CALL XREF from fcn.0000043a @ 0x46a
┌ fcn.00000359(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:0359      push  cs
│           0000:035a      pop   es
│       ┌─> 0000:035b      push  cx                                    ; arg4
│       ╎   0000:035c      lodsb al, byte [si]
│       ╎   0000:035d      push  ds
│       ╎   0000:035e      push  si
│       ╎   0000:035f      mov   cl, 0x10
│       ╎   0000:0361      mul   cl
│       ╎   0000:0363      mov   si, ax                                ; arg1
│       ╎   0000:0365      add   si, 0x8100
│       ╎   0000:0369      mov   ds, word cs:[0xff2c]
│       ╎   0000:036e      mov   cx, 8
│       ╎   0000:0371      rep   movsw word es:[di], word ptr [si]
│       ╎   0000:0373      pop   si
│       ╎   0000:0374      pop   ds
│       ╎   0000:0375      pop   cx
│       └─< 0000:0376      loop  0x35b
└           0000:0378      ret
```

### Function 0x0000043a
```asm
; CALL XREF from str.7b8_8_: @ +0x54
┌ fcn.0000043a();
│           0000:043a      push  es
│           0000:043b      push  ds
│           0000:043c      mov   si, word [0xff2a]
│           0000:0440      add   si, 0x25
│           0000:0443      mov   di, 0x3d70                            ; 'p='
│           0000:0446      movsw word es:[di], word ptr [si]
│           0000:0447      movsb byte es:[di], byte ptr [si]
│           0000:0448      mov   dx, word [0x80]                       ; [0x80:2]=0xe20
│           0000:044c      add   dx, 3
│           0000:044f      mov   word [0x3d76], dx                     ; [0x3d76:2]=0xffff
│           0000:0453      cmp   byte [0x3d70], 0xfd                   ; [0x3d70:1]=255
│       ┌─< 0000:0458      jne   0x461
│       │   0000:045a      inc   dx
│       │   0000:045b      call  fcn.000004b9                          ; fcn.000004b9
│       │   0000:045e      mov   byte [0x3d70], al                     ; [0x3d70:1]=255
│       └─> 0000:0461      mov   si, 0x3d70                            ; 'p='
│           0000:0464      mov   di, 0x3f74                            ; 't?'
│           0000:0467      mov   cx, 3
│           0000:046a      call  fcn.00000359                          ; fcn.00000359
│           0000:046d      mov   si, word cs:[0xc00f]
│       ┌─> 0000:0472      call  fcn.000005a6                          ; fcn.000005a6
│       ╎   0000:0475      or    bl, bl
│      ┌──< 0000:0477      je    0x498
│      │╎   0000:0479      push  si
│      │╎   0000:047a      dec   bl
│      │╎   0000:047c      mov   al, 3
│      │╎   0000:047e      mul   bl
│      │╎   0000:0480      push  ax
│      │╎   0000:0481      call  fcn.00000580                          ; fcn.00000580
│      │╎   0000:0484      pop   ax                                    ; int16_t arg1
│      │╎   0000:0485      add   di, ax
│      │╎   0000:0487      mov   bp, di
│      │╎   0000:0489      mov   es, word cs:[0xff2c]
│      │╎   0000:048e      mov   si, 0x3d70                            ; 'p='
│      │╎   0000:0491      mov   di, 0x3f74                            ; 't?'
│      │╎   0000:0494      call  fcn.000005e6                          ; fcn.000005e6
│      │╎   0000:0497      pop   si
│      └──> 0000:0498      add   si, 8
│       ╎   0000:049b      cmp   word [si], 0xffff
│       └─< 0000:049e      jne   0x472
│           0000:04a0      mov   di, 0x127c
│           0000:04a3      mov   si, 0x3f74                            ; 't?'
│           0000:04a6      mov   ax, 0xb800
│           0000:04a9      mov   es, ax
│           0000:04ab      call  fcn.000004e0                          ; fcn.000004e0
│           0000:04ae      pop   ds
│           0000:04af      pop   es
│           0000:04b0      mov   di, 0xe005
│           0000:04b3      mov   al, 0xff
│           0000:04b5      stosb byte es:[di], al
│           0000:04b6      stosb byte es:[di], al
│           0000:04b7      stosb byte es:[di], al
└           0000:04b8      ret
```

### Function 0x000004b9
```asm
; CALL XREFS from fcn.0000011b @ 0x399, 0x3a9
            ; CALL XREF from fcn.0000043a @ 0x45b
┌ fcn.000004b9();
│           0000:04b9      call  fcn.000004d2                          ; fcn.000004d2
│           0000:04bc      mov   al, byte [si + 3]
│           0000:04bf      cmp   al, 0xfd
│       ┌─< 0000:04c1      je    0x4c4
│       │   0000:04c3      ret
│      ┌└─> 0000:04c4      add   si, 8
│      ╎    0000:04c7      call  fcn.000004d6                          ; fcn.000004d6
│      ╎    0000:04ca      mov   al, byte [si + 3]
│      ╎    0000:04cd      cmp   al, 0xfd
│      └──< 0000:04cf      je    0x4c4
└           0000:04d1      ret
```

### Function 0x000004d2
```asm
; CALL XREF from fcn.000004b9 @ 0x4b9
┌ fcn.000004d2(int16_t arg2);
│           ; arg int16_t arg2 @ dx
└           0000:04d2      mov   si, word [0xc00f]
```

### Function 0x000004d6
```asm
; CALL XREF from fcn.000004b9 @ 0x4c7
            ; CODE XREF from fcn.000004d6 @ 0x4de
┌ fcn.000004d6(short unsigned int arg2);
│           ; arg short unsigned int arg2 @ dx
│       ┌─> 0000:04d6      cmp   dx, word [si]                         ; arg2
│      ┌──< 0000:04d8      jne   0x4db
│      │╎   0000:04da      ret
│      └──> 0000:04db      add   si, 8
└       └─< 0000:04de      jmp   fcn.000004d6
```

### Function 0x000004e0
```asm
; CALL XREF from fcn.000000df @ 0x10e
            ; CALL XREFS from fcn.0000011b @ 0x402, 0x418
            ; CALL XREF from fcn.0000043a @ 0x4ab
┌ fcn.000004e0();
│           0000:04e0      mov   cx, 3
│       ┌─> 0000:04e3      movsw word es:[di], word ptr [si]
│       ╎   0000:04e4      add   di, 0x1ffe
│       ╎   0000:04e8      cmp   di, 0x4000
│      ┌──< 0000:04ec      jb    0x4f2
│      │╎   0000:04ee      add   di, 0xc050
│      └──> 0000:04f2      movsw word es:[di], word ptr [si]
│       ╎   0000:04f3      add   di, 0x1ffe
│       ╎   0000:04f7      cmp   di, 0x4000
│      ┌──< 0000:04fb      jb    0x501
│      │╎   0000:04fd      add   di, 0xc050
│      └──> 0000:0501      movsw word es:[di], word ptr [si]
│       ╎   0000:0502      add   di, 0x1ffe
│       ╎   0000:0506      cmp   di, 0x4000
│      ┌──< 0000:050a      jb    0x510
│      │╎   0000:050c      add   di, 0xc050
│      └──> 0000:0510      movsw word es:[di], word ptr [si]
│       ╎   0000:0511      add   di, 0x1ffe
│       ╎   0000:0515      cmp   di, 0x4000
│      ┌──< 0000:0519      jb    0x51f
│      │╎   0000:051b      add   di, 0xc050
│      └──> 0000:051f      movsw word es:[di], word ptr [si]
│       ╎   0000:0520      add   di, 0x1ffe
│       ╎   0000:0524      cmp   di, 0x4000
│      ┌──< 0000:0528      jb    0x52e
│      │╎   0000:052a      add   di, 0xc050
│      └──> 0000:052e      movsw word es:[di], word ptr [si]
│       ╎   0000:052f      add   di, 0x1ffe
│       ╎   0000:0533      cmp   di, 0x4000
│      ┌──< 0000:0537      jb    0x53d
│      │╎   0000:0539      add   di, 0xc050
│      └──> 0000:053d      movsw word es:[di], word ptr [si]
│       ╎   0000:053e      add   di, 0x1ffe
│       ╎   0000:0542      cmp   di, 0x4000
│      ┌──< 0000:0546      jb    0x54c
│      │╎   0000:0548      add   di, 0xc050
│      └──> 0000:054c      movsw word es:[di], word ptr [si]
│       ╎   0000:054d      add   di, 0x1ffe
│       ╎   0000:0551      cmp   di, 0x4000
│      ┌──< 0000:0555      jb    0x55b
│      │╎   0000:0557      add   di, 0xc050
│      └└─< 0000:055b      loop  0x4e3
└           0000:055d      ret
```

### Function 0x0000055e
```asm
; CALL XREF from fcn.0000011b @ 0x3d3
┌ fcn.0000055e(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:055e      mov   bp, di
│           0000:0560      dec   bl
│           0000:0562      xor   bh, bh
│           0000:0564      add   bx, bx                                ; arg3
│           0000:0566      call  word cs:[bx + 0x3568]
└           0000:056b      ret
```

### Function 0x00000580
```asm
; CALL XREF from fcn.0000011b @ 0x3c7
            ; CALL XREF from fcn.0000043a @ 0x481
┌ fcn.00000580(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0580      mov   al, byte [si + 2]
│           0000:0583      mov   ch, al
│           0000:0585      and   al, 0x7f
│           0000:0587      mov   cl, 0x30                              ; '0'
│           0000:0589      mul   cl
│           0000:058b      add   ax, 0x4000                            ; arg1
│           0000:058e      mov   di, ax                                ; arg1
│           0000:0590      xor   dl, dl
│           0000:0592      or    ch, ch
│       ┌─< 0000:0594      js    0x598
│       │   0000:0596      mov   dl, 4
│       └─> 0000:0598      mov   al, byte [si + 4]
│           0000:059b      and   al, 3
│           0000:059d      add   al, dl
│           0000:059f      mov   cl, 6
│           0000:05a1      mul   cl
│           0000:05a3      add   di, ax                                ; arg1
└           0000:05a5      ret
```

### Function 0x000005a6
```asm
; CALL XREF from fcn.0000011b @ 0x3be
            ; CALL XREF from fcn.0000043a @ 0x472
┌ fcn.000005a6();
│           0000:05a6      mov   cx, 2
│           0000:05a9      mov   dx, word [0x3d76]                     ; [0x3d76:2]=0xffff
│       ┌─> 0000:05ad      mov   bl, cl
│       ╎   0000:05af      cmp   word [si], dx
│      ┌──< 0000:05b1      jne   0x5b4
│      │╎   0000:05b3      ret
│      └──> 0000:05b4      inc   dx
│       └─< 0000:05b5      loop  0x5ad
│           0000:05b7      mov   bl, cl
└           0000:05b9      ret
```

### Function 0x000005e6
```asm
; XREFS: CALL 0x00000494  CALL 0x00000573  CODE 0x00000576  
            ; XREFS: CODE 0x0000057e  CODE 0x000005d4  CALL 0x000005d9  
            ; XREFS: CODE 0x000005dc  CODE 0x000005e4  
┌ fcn.000005e6(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:05e6      mov   cx, 3
│       ┌─> 0000:05e9      push  cx
│       ╎   0000:05ea      mov   byte [si], 0xff                       ; [0xff:1]=124
│       ╎   0000:05ed      inc   si
│       ╎   0000:05ee      push  ds
│       ╎   0000:05ef      push  si
│       ╎   0000:05f0      mov   al, byte es:[bp]
│       ╎   0000:05f4      inc   bp
│       ╎   0000:05f5      push  es
│       ╎   0000:05f6      push  bp
│       ╎   0000:05f7      dec   al
│       ╎   0000:05f9      mov   cl, 0x10
│       ╎   0000:05fb      mul   cl
│       ╎   0000:05fd      mov   si, ax                                ; arg1
│       ╎   0000:05ff      add   si, 0x4100
│       ╎   0000:0603      add   ax, 0x7000                            ; arg1
│       ╎   0000:0606      mov   word cs:[0x3d80], ax                  ; arg1
│       ╎   0000:060a      mov   ax, cs
│       ╎   0000:060c      add   ax, 0x2000                            ; int16_t arg1
│       ╎   0000:060f      mov   word cs:[0x3d82], ax
│       ╎   0000:0613      mov   ds, word cs:[0xff2c]
│       ╎   0000:0618      push  cs
│       ╎   0000:0619      pop   es
│       ╎   0000:061a      call  fcn.00000659                          ; fcn.00000659
│       ╎   0000:061d      pop   bp
│       ╎   0000:061e      pop   es
│       ╎   0000:061f      pop   si
│       ╎   0000:0620      pop   ds
│       ╎   0000:0621      pop   cx
│       └─< 0000:0622      loop  0x5e9
└           0000:0624      ret
```

### Function 0x00000659
```asm
; CALL XREF from fcn.000005e6 @ 0x61a
            ; CALL XREF from fcn.000005e6 @ +0x6a
┌ fcn.00000659(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0659      push  ds
│           0000:065a      push  si
│           0000:065b      push  di
│           0000:065c      lds   si, cs:[0x3d80]
│           0000:0661      mov   cx, 8
│       ┌─> 0000:0664      lodsw ax, word [si]
│       ╎   0000:0665      and   word es:[di], ax                      ; arg1
│       ╎   0000:0668      inc   di
│       ╎   0000:0669      inc   di
│       └─< 0000:066a      loop  0x664
│           0000:066c      pop   di
│           0000:066d      pop   si
│           0000:066e      pop   ds
│           0000:066f      mov   cx, 8
│       ┌─> 0000:0672      lodsw ax, word [si]
│       ╎   0000:0673      or    word es:[di], ax                      ; arg1
│       ╎   0000:0676      inc   di
│       ╎   0000:0677      inc   di
│       └─< 0000:0678      loop  0x672
└           0000:067a      ret
```

### Function 0x0000089f
```asm
; CALL XREF from fcn.00000659 @ +0x227
┌ fcn.0000089f(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:089f      push  cs
│           0000:08a0      pop   es
│           0000:08a1      mov   di, 0x3dac
│           0000:08a4      xor   bl, bl
│           ; CODE XREF from fcn.0000089f @ 0x8ba
│       ┌─> 0000:08a6      lodsb al, byte [si]
│       ╎   0000:08a7      or    al, al
│      ┌──< 0000:08a9      jne   0x8ac
│      │╎   0000:08ab      ret
│      └──> 0000:08ac      push  bx                                    ; arg3
│       ╎   0000:08ad      push  ds
│       ╎   0000:08ae      push  si
│       ╎   0000:08af      and   bl, 3
│       ╎   0000:08b2      call  fcn.000008bc                          ; fcn.000008bc
│       ╎   0000:08b5      pop   si
│       ╎   0000:08b6      pop   ds
│       ╎   0000:08b7      pop   bx
│       ╎   0000:08b8      inc   bl
└       └─< 0000:08ba      jmp   0x8a6
```

### Function 0x000008bc
```asm
; CALL XREF from fcn.0000089f @ 0x8b2
┌ fcn.000008bc(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:08bc      sub   al, 0x20                              ; "#8#:\x88:\U000000029\xb2;/;\U0000001e\xbe<\f\xbf"
│           0000:08be      xor   ah, ah
│           0000:08c0      shl   ax, 1                                 ; arg1
│           0000:08c2      shl   ax, 1                                 ; arg1
│           0000:08c4      shl   ax, 1                                 ; arg1
│           0000:08c6      mov   si, ax                                ; arg1
│           0000:08c8      push  cs
│           0000:08c9      pop   ds
│           0000:08ca      add   si, word [0xf504]
│           0000:08ce      add   bl, bl
│           0000:08d0      mov   cl, bl
│           0000:08d2      push  di
│           0000:08d3      mov   bl, 8
│       ┌─> 0000:08d5      push  bx                                    ; arg3
│       ╎   0000:08d6      lodsb al, byte [si]
│       ╎   0000:08d7      mov   dl, 4
│      ┌──> 0000:08d9      add   ax, ax                                ; arg1
│      ╎╎   0000:08db      add   ah, ah
│      ╎╎   0000:08dd      dec   dl
│      └──< 0000:08df      jne   0x8d9
│       ╎   0000:08e1      mov   al, ah
│       ╎   0000:08e3      shr   ah, 1
│       ╎   0000:08e5      or    al, ah
│       ╎   0000:08e7      xor   bl, bl
│       ╎   0000:08e9      mov   bh, al
│       ╎   0000:08eb      shr   bx, cl                                ; arg3
│       ╎   0000:08ed      or    byte es:[di], bh
│       ╎   0000:08f0      or    byte es:[di + 1], bl
│       ╎   0000:08f4      add   di, 0x28
│       ╎   0000:08f7      pop   bx
│       ╎   0000:08f8      dec   bl
│       └─< 0000:08fa      jne   0x8d5
│           0000:08fc      pop   di
│           0000:08fd      inc   di
│           0000:08fe      cmp   cl, 6
│       ┌─< 0000:0901      je    0x904
│       │   0000:0903      ret
│       └─> 0000:0904      inc   di
└           0000:0905      ret
```

### Function 0x0000092c
```asm
; CALL XREF from fcn.00000659 @ +0x240
┌ fcn.0000092c();
│           0000:092c      call  fcn.0000099f                          ; fcn.0000099f
│           0000:092f      push  cs
│           0000:0930      pop   es
│           0000:0931      mov   di, 0x3dac
│           0000:0934      add   di, word [0xff68]
│           0000:0938      mov   si, 0x39b4
│           0000:093b      mov   cx, 6
│           0000:093e      mov   bl, 1
│           ; CODE XREF from fcn.000008bc @ +0x6e
│       ┌─> 0000:0940      push  cx
│       ╎   0000:0941      push  bx
│       ╎   0000:0942      push  di
│       ╎   0000:0943      lodsb al, byte [si]
│       ╎   0000:0944      push  si
│       ╎   0000:0945      call  fcn.00000959                          ; fcn.00000959
│       ╎   0000:0948      pop   si
│       ╎   0000:0949      pop   di
│       ╎   0000:094a      pop   bx
│       ╎   0000:094b      mov   al, bl
│       ╎   0000:094d      inc   di
│       ╎   0000:094e      and   ax, 1
│       ╎   0000:0951      add   di, ax
│       ╎   0000:0953      inc   bl
│       ╎   0000:0955      pop   cx
│       └─< 0000:0956      loop  0x940
└           0000:0958      ret
```

### Function 0x00000959
```asm
; CALL XREF from fcn.0000092c @ 0x945
┌ fcn.00000959(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0959      inc   al
│       ┌─< 0000:095b      jne   0x95e
│       │   0000:095d      ret
│       └─> 0000:095e      dec   al
│           0000:0960      xor   ah, ah
│           0000:0962      add   ax, ax                                ; arg1
│           0000:0964      add   ax, ax                                ; arg1
│           0000:0966      add   ax, ax                                ; arg1
│           0000:0968      add   ax, word cs:[0xf502]                  ; arg1
│           0000:096d      mov   si, ax                                ; arg1
│           0000:096f      mov   cx, 7
│       ┌─> 0000:0972      lodsb al, byte [si]
│       ╎   0000:0973      mov   ah, 8
│      ┌──> 0000:0975      add   al, al
│      ╎╎   0000:0977      adc   dx, dx                                ; arg2
│      ╎╎   0000:0979      add   dx, dx                                ; arg2
│      ╎╎   0000:097b      dec   ah
│      └──< 0000:097d      jne   0x975
│       ╎   0000:097f      mov   ax, dx                                ; arg2
│       ╎   0000:0981      shr   dx, 1                                 ; arg2
│       ╎   0000:0983      or    ax, dx                                ; arg2
│       ╎   0000:0985      test  bl, 1
│      ┌──< 0000:0988      jne   0x992
│      │╎   0000:098a      add   ax, ax
│      │╎   0000:098c      add   ax, ax
│      │╎   0000:098e      add   ax, ax
│      │╎   0000:0990      add   ax, ax
│      └──> 0000:0992      or    byte es:[di], ah
│       ╎   0000:0995      or    byte es:[di + 1], al
│       ╎   0000:0999      add   di, 0x28
│       └─< 0000:099c      loop  0x972
└           0000:099e      ret
```

### Function 0x0000099f
```asm
; CALL XREF from fcn.000008bc @ +0x5a
            ; CALL XREF from fcn.0000092c @ 0x92c
┌ fcn.0000099f();
│           0000:099f      mov   di, 0x39b3
│           0000:09a2      call  fcn.000009be                          ; fcn.000009be
│           0000:09a5      mov   cx, 6
│       ┌─> 0000:09a8      test  byte cs:[di], 0xff
│      ┌──< 0000:09ac      je    0x9af
│      │╎   0000:09ae      ret
│      └──> 0000:09af      mov   byte cs:[di], 0xff                    ; [0xff:1]=124
│       ╎   0000:09b3      inc   di
│       └─< 0000:09b4      loop  0x9a8
└           0000:09b6      ret
```

### Function 0x000009be
```asm
; CALL XREF from fcn.0000099f @ 0x9a2
┌ fcn.000009be();
│           0000:09be      mov   cl, 0xf
│           0000:09c0      mov   bx, 0x4240                            ; '@B'
│           0000:09c3      call  fcn.00000a04                          ; fcn.00000a04
│           0000:09c6      mov   byte cs:[di], dh
│           0000:09c9      mov   cl, 1
│           0000:09cb      mov   bx, 0x86a0
│           0000:09ce      call  fcn.00000a04                          ; fcn.00000a04
│           0000:09d1      mov   byte cs:[di + 1], dh
│           0000:09d5      xor   cl, cl
│           0000:09d7      mov   bx, 0x2710
│           0000:09da      call  fcn.00000a04                          ; fcn.00000a04
│           0000:09dd      mov   byte cs:[di + 2], dh
│           0000:09e1      mov   bx, 0x3e8
│           0000:09e4      call  fcn.00000a1d                          ; fcn.00000a1d
│           0000:09e7      mov   byte cs:[di + 3], dh
│           0000:09eb      mov   bx, 0x64                              ; 'd'
│           0000:09ee      call  fcn.00000a1d                          ; fcn.00000a1d
│           0000:09f1      mov   byte cs:[di + 4], dh
│           0000:09f5      mov   bx, 0xa
│           0000:09f8      call  fcn.00000a1d                          ; fcn.00000a1d
│           0000:09fb      mov   byte cs:[di + 5], dh
│           0000:09ff      mov   byte cs:[di + 6], al
└           0000:0a03      ret
```

### Function 0x00000a04
```asm
; CALL XREFS from fcn.000009be @ 0x9c3, 0x9ce, 0x9da
┌ fcn.00000a04(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0a04      xor   dh, dh
│           ; CODE XREF from fcn.00000a04 @ 0xa16
│       ┌─> 0000:0a06      sub   dl, cl
│      ┌──< 0000:0a08      jb    0xa1a
│      │╎   0000:0a0a      sub   ax, bx                                ; arg3
│     ┌───< 0000:0a0c      jae   0xa14
│     ││╎   0000:0a0e      or    dl, dl
│    ┌────< 0000:0a10      je    0xa18
│    │││╎   0000:0a12      dec   dl
│    │└───> 0000:0a14      inc   dh
│    │ │└─< 0000:0a16      jmp   0xa06
│    └────> 0000:0a18      add   ax, bx                                ; arg3
│      └──> 0000:0a1a      add   dl, cl
└           0000:0a1c      ret
```

### Function 0x00000a1d
```asm
; CALL XREFS from fcn.000009be @ 0x9e4, 0x9ee, 0x9f8
┌ fcn.00000a1d(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0a1d      xor   dh, dh
│           0000:0a1f      div   bx
│           0000:0a21      xchg  dx, ax                                ; arg1
│           0000:0a22      mov   dh, dl
│           0000:0a24      xor   dl, dl
└           0000:0a26      ret
```

### Function 0x00000cd4
```asm
; CALL XREFS from fcn.00000a1d @ +0x178, +0x208, +0x234, +0x261, +0x28e
┌ fcn.00000cd4(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0cd4      mov   cx, 8
│       ┌─> 0000:0cd7      xor   bx, bx
│       ╎   0000:0cd9      rol   word cs:[0x3d7c], 1
│       ╎   0000:0cde      adc   bx, bx
│       ╎   0000:0ce0      rol   word cs:[0x3d7a], 1
│       ╎   0000:0ce5      adc   bx, bx
│       ╎   0000:0ce7      rol   word cs:[0x3d78], 1
│       ╎   0000:0cec      adc   bx, bx
│       ╎   0000:0cee      rol   word cs:[0x3d7c], 1
│       ╎   0000:0cf3      adc   bx, bx
│       ╎   0000:0cf5      rol   word cs:[0x3d7a], 1
│       ╎   0000:0cfa      adc   bx, bx
│       ╎   0000:0cfc      rol   word cs:[0x3d78], 1
│       ╎   0000:0d01      adc   bx, bx
│       ╎   0000:0d03      add   dx, dx                                ; arg2
│       ╎   0000:0d05      add   dx, dx                                ; arg2
│       ╎   0000:0d07      or    dl, byte cs:[bx + 0x3d0b]
│       └─< 0000:0d0c      loop  0xcd7
└           0000:0d0e      ret
```

### Function 0x00000d4f
```asm
; CALL XREFS from fcn.00000a1d @ +0x185, +0x23a, +0x267, +0x294
┌ fcn.00000d4f(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0d4f      mov   cx, 8
│       ┌─> 0000:0d52      xor   al, al
│       ╎   0000:0d54      rol   word cs:[0x3d7e], 1
│       ╎   0000:0d59      adc   al, al
│       ╎   0000:0d5b      rol   word cs:[0x3d7e], 1
│       ╎   0000:0d60      adc   al, al
│       ╎   0000:0d62      cmp   al, 3
│      ┌──< 0000:0d64      je    0xd68
│      │╎   0000:0d66      xor   al, al
│      └──> 0000:0d68      add   dx, dx                                ; arg2
│       ╎   0000:0d6a      add   dx, dx                                ; arg2
│       ╎   0000:0d6c      or    dl, al
│       └─< 0000:0d6e      loop  0xd52
└           0000:0d70      ret
```

## Cross-References (callers)
```json
  0x000000df:
[{"from":139,"to":223,"type":"CALL"}]
  0x0000011b:
[{"from":187,"to":283,"type":"CALL"}]
  0x00000124:
[{"from":171,"to":292,"type":"CALL"},{"from":179,"to":292,"type":"CALL"},{"from":195,"to":292,"type":"CALL"},{"from":203,"to":292,"type":"CALL"},{"from":674,"to":292,"type":"CODE"}]
  0x0000027a:
[{"from":147,"to":634,"type":"CALL"},{"from":155,"to":634,"type":"CALL"},{"from":163,"to":634,"type":"CALL"}]
  0x00000356:
[{"from":950,"to":854,"type":"CALL"}]
  0x00000359:
[{"from":1130,"to":857,"type":"CALL"}]
  0x0000043a:
[{"from":113,"to":1082,"type":"CALL"}]
  0x000004b9:
[{"from":921,"to":1209,"type":"CALL"},{"from":937,"to":1209,"type":"CALL"},{"from":1115,"to":1209,"type":"CALL"}]
  0x000004d2:
[{"from":1209,"to":1234,"type":"CALL"}]
  0x000004d6:
[{"from":1223,"to":1238,"type":"CALL"},{"from":1246,"to":1238,"type":"CODE"}]
  0x000004e0:
[{"from":270,"to":1248,"type":"CALL"},{"from":1026,"to":1248,"type":"CALL"},{"from":1048,"to":1248,"type":"CALL"},{"from":1195,"to":1248,"type":"CALL"}]
  0x0000055e:
[{"from":979,"to":1374,"type":"CALL"}]
  0x00000580:
[{"from":967,"to":1408,"type":"CALL"},{"from":1153,"to":1408,"type":"CALL"}]
  0x000005a6:
[{"from":958,"to":1446,"type":"CALL"},{"from":1138,"to":1446,"type":"CALL"}]
  0x000005e6:
[{"from":1172,"to":1510,"type":"CALL"},{"from":1395,"to":1510,"type":"CALL"},{"from":1398,"to":1510,"type":"CODE"},{"from":1406,"to":1510,"type":"CODE"},{"from":1492,"to":1510,"type":"CODE"},{"from":1497,"to":1510,"type":"CALL"},{"from":1500,"to":1510,"type":"CODE"},{"from":1508,"to":1510,"type":"CODE"}]
  0x00000659:
[{"from":1562,"to":1625,"type":"CALL"},{"from":1616,"to":1625,"type":"CALL"}]
  0x0000089f:
[{"from":2176,"to":2207,"type":"CALL"}]
  0x000008bc:
[{"from":2226,"to":2236,"type":"CALL"}]
  0x0000092c:
[{"from":2201,"to":2348,"type":"CALL"}]
```