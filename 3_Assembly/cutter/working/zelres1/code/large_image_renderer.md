# LARGE_IMAGE_RENDERER - Analysis

**Source:** `chunk_10.bin`  
**Size:** 5.3 KB  
**Functions:** 30  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000   11 93   -> 94   fcn.00000000
0x000000e1    7 63           fcn.000000e1
0x00000120   14 863  -> 203  fcn.00000120
0x00000129   37 334          fcn.00000129
0x00000277   25 288          fcn.00000277
0x0000039a    1 3            fcn.0000039a
0x0000039d    3 32           fcn.0000039d
0x0000047f    7 127          fcn.0000047f
0x000004fe    4 25           fcn.000004fe
0x00000517    1 4            fcn.00000517
0x0000051b    3 10           fcn.0000051b
0x00000525   21 139          fcn.00000525
0x000005b0    1 14           fcn.000005b0
0x000005d2    3 38           fcn.000005d2
0x000005f8    5 20           fcn.000005f8
0x00000638    3 67           fcn.00000638
0x000006b3    5 53           fcn.000006b3
0x000008ff    4 29           fcn.000008ff
0x0000091c    5 81           fcn.0000091c
0x0000096d    3 26           fcn.0000096d
0x000009ad    3 38           fcn.000009ad
0x000009d3    5 56           fcn.000009d3
0x00000a0b    5 24           fcn.00000a0b
0x00000a2a    1 70           fcn.00000a2a
0x00000a70    8 25           fcn.00000a70
0x00000a89    1 10           fcn.00000a89
0x00000d90    3 63           fcn.00000d90
0x00000e0f    5 34           fcn.00000e0f
0x00000e31    1 30           fcn.00000e31
0x00000e4f    3 25           fcn.00000e4f
```

## Strings
```
nth      paddr      vaddr len size section type   string                                        
------------------------------------------------------------------------------------------------
  0 0x00000004 0x00000004   6    6         ascii  G;(0Y0
  1 0x0000000b 0x0000000b   5    5         ascii  6B7t7
  2 0x00000013 0x00000013   5    5         ascii  3\b6w6
  3 0x00000042 0x00000042   5    6         ibm037 vvaFÜ
  4 0x000000e0 0x000000e0   6    8         utf8   À>f>\eu blocks=Latin-1 Supplement,Basic Latin
  5 0x0000011c 0x0000011c   5    6         utf8   ^\a_À| blocks=Basic Latin,Latin-1 Supplement
  6 0x0000013c 0x0000013c   5    5         ascii  WVSR2
  7 0x0000017a 0x0000017a   5    6         ibm037 vvaGÜ
  8 0x00000198 0x00000198  10   11         ibm037 ½þ{þQvvaGÜ
  9 0x000001b7 0x000001b7   9   10         ibm037 aFµØvvaGÜ
 10 0x000001d5 0x000001d5   9   10         ibm037 aFµØvvaGÜ
 11 0x000001f3 0x000001f3   9   10         ibm037 aFµØvvaGÜ
 12 0x00000211 0x00000211   9   10         ibm037 aFµØvvaGÜ
 13 0x0000022f 0x0000022f   9   10         ibm037 aFµØvvaGÜ
 14 0x0000024d 0x0000024d   9   10         ibm037 aFµØvvaGÜ
 15 0x00000298 0x00000298   4    4         ascii  7\a[\n
 16 0x000002a7 0x000002a7   5    5         ascii  WVSR2
 17 0x000002be 0x000002be  12   13         ibm037 6S»0JYJY»YaF
 18 0x00000377 0x00000377   4    4         ascii  t\eG&
 19 0x0000044d 0x0000044d   6    6         ascii  >f>\et\r
 20 0x00000528 0x00000528   5    6         ibm037 vvaGÜ
 21 0x00000534 0x00000534   9   10         ibm037 aGµØvvaGÜ
 22 0x00000544 0x00000544   9   10         ibm037 aGµØvvaGÜ
 23 0x00000554 0x00000554   9   10         ibm037 aGµØvvaGÜ
 24 0x00000564 0x00000564   9   10         ibm037 aGµØvvaGÜ
 25 0x00000574 0x00000574   9   10         ibm037 aGµØvvaGÜ
 26 0x00000584 0x00000584   9   10         ibm037 aGµØvvaGÜ
 27 0x00000594 0x00000594   9   10         ibm037 aGµØvvaGÜ
 28 0x0000061a 0x0000061a   4    5         ascii  ,6$6
 29 0x00000654 0x00000654   5    6         ibm037  JYJY
 30 0x00000690 0x00000690   5    6         ibm037 -JYJY
 31 0x000006c8 0x000006c8   4    5         ascii  \a&!U
 32 0x00000727 0x00000727  12   13         ibm037 3vcF vvvv;aF
 33 0x000007b6 0x000007b6  12   13         ibm037 3vcÓ vvvv;aF
 34 0x0000082e 0x0000082e   5    6         ibm037 vvaGÜ
 35 0x0000085a 0x0000085a   5    6         ibm037 vvaGÜ
 36 0x000008c6 0x000008c6   4    4         ascii  VWW2
 37 0x00000a05 0x00000a05   7    8         ibm037 cG&SSC×
 38 0x00000b87 0x00000b87   4    4         ascii  >w>.
 39 0x00000c0e 0x00000c0e   6    6         ascii  >w>_\aY
 40 0x00000c63 0x00000c63   5    5         ascii  h<[CY
 41 0x00000df0 0x00000df0   7    8         ascii  \v\a\n\v\t\n\t
 42 0x00000e08 0x00000e08   4    5         ascii  \r\f\a\t
 43 0x00000e2d 0x00000e2d  14   15         ibm037 }SSC«3}ó}ó}óaS
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg2, short unsigned int arg3, int16_t arg4, short unsigned int arg_1639h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg short unsigned int arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           ; arg short unsigned int arg_1639h @ stack + 0x1639
│           0000:0000      sbb   dx, word [di]                         ; arg2
│           ; DATA XREF from fcn.000000e1 @ 0x110
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.00000277 @ 0x2ef
│           ; DATA XREF from fcn.0000091c @ 0x965
│           ;-- str.G__0Y0:
│           0000:0004     .string "G;(0Y0" ; len=6
│           0000:000a  ~   in    al, 0x36
│           ; DATA XREF from fcn.0000096d @ +0x38
│           ;-- str.6B7t7:
..
│           0000:000c     .string "6B7t7" ; len=5                      ; arg2
│       │   ; DATA XREF from fcn.0000039d @ 0x3b2
│       │   ; DATA XREFS from fcn.000006b3 @ +0x9f, +0x12c
│       │   0000:0010      sal   byte [bx], 1                          ; arg3
│       │   ; DATA XREF from fcn.00000a89 @ +0xcf
│       │   0000:0012      xchg  bx, ax                                ; arg1
│       │   0000:0013      xor   cx, word [bx + si]                    ; arg4
│      ┌──< 0000:0015      ja    0x4e
│      ││   ; DATA XREF from fcn.00000000 @ 0x3f
│      ││   0000:0018      into
│      ││   ; DATA XREF from fcn.00000277 @ 0x360
│      ││   0000:0019      xor   ax, 0x3800
│      ││   ; DATA XREFS from fcn.00000000 @ 0x3a, 0x3d
│      ││   0000:001c      aas
│      ││   ; DATA XREF from fcn.00000a89 @ +0x1e8
│      ││   0000:001d      cmp   dl, al
│      ││   0000:001f      cmp   byte [bx + si - 0x70c8], dl
│      ││   0000:0023      cmp   ah, bh
│      ││   ; DATA XREF from fcn.0000047f @ 0x485
│      ││   0000:0025      cmp   al, byte [bp + di + 0x1639]
│      ││   0000:0029      cmp   al, 0x81
│      ││   0000:002b      cmp   bx, word [0xf8be]
│      ││   0000:002f      dec   bx
│      ││   ; DATA XREF from fcn.000005d2 @ 0x5d9
│      ││   ; DATA XREF from fcn.00000a89 @ +0x110
│      ││   0000:0030      mov   di, 0xa000
│      ││   0000:0033      push  cs
│      ││   ; DATA XREFS from fcn.000006b3 @ +0x71, +0x100
│      ││   0000:0034      pop   es
│      ││   0000:0035      mov   ax, 0xb800
│      ││   ; DATA XREF from fcn.00000a89 @ +0xd4
│      ││   0000:0038      mov   ds, ax
│      ││   ; DATA XREFS from fcn.000006b3 @ +0xab, +0x138
│      ││   0000:003a      mov   cx, 0x1c
│     ┌───> 0000:003d      push  cx
│     ╎││   0000:003e      push  si
│     ╎││   0000:003f      mov   cx, 0x18
│    ┌────> 0000:0042      movsw word es:[di], word ptr [si]
│    ╎╎││   0000:0043      movsw word es:[di], word ptr [si]
│    ╎╎││   0000:0044  ~   add   si, 0x1ffc
│    ╎╎│└─> 0000:0047      pop   ds
│    ╎╎│    0000:0048      cmp   si, 0x8000
│    ╎╎│┌─< 0000:004c      jb    0x52
│    ╎╎└──> 0000:004e      add   si, 0x80a0
│    └──└─> 0000:0052      loop  0x42
│     ╎     0000:0054      pop   si
│     ╎     0000:0055      pop   cx
│     ╎     0000:0056      add   si, 4
│     └───< 0000:0059      loop  0x3d
│           0000:005b      pop   ds
└           0000:005c      ret
```

### Function 0x000000e1
```asm
; CALL XREF from str.6B7t7 @ +0x82
            ; DATA XREF from fcn.00000a89 @ +0x1e6
┌ fcn.000000e1();
│           0000:00e1      cmp   byte [0x3e66], 0x1b                   ; [0x3e66:1]=255
│       ┌─< 0000:00e6      jne   0xe9
│       │   0000:00e8      ret
│       └─> 0000:00e9      mov   al, byte [0x83]                       ; [0x83:1]=14
│           0000:00ec      cmp   byte [0x3e66], al                     ; [0x3e66:1]=255
│       ┌─< 0000:00f0      je    0xf3
│       │   0000:00f2      ret
│       └─> 0000:00f3      push  di
│           0000:00f4      push  es
│           0000:00f5      push  si
│           0000:00f6      xor   ax, ax
│           0000:00f8      mov   al, byte [0x83]                       ; [0x83:1]=14
│           0000:00fb      add   ax, ax
│           ; DATA XREFS from fcn.000004fe @ 0x504, 0x512
│           0000:00fd      add   ax, ax
│           ; XREFS: DATA 0x0000037d  DATA 0x00000462  DATA 0x000004f8  
│           ; XREFS: DATA 0x0000063c  DATA 0x00000a1b  DATA 0x00000d86  
│           0000:00ff      mov   di, ax
│           0000:0101      add   di, 0x5238
│           0000:0105      mov   ax, 0xb800
│           0000:0108      mov   es, ax
│           0000:010a      mov   si, 0x419b
│           0000:010d      mov   cx, 2
│       ┌─> 0000:0110      push  cx
│       ╎   0000:0111      push  di
│       ╎   0000:0112      call  fcn.00000525                          ; fcn.00000525
│       ╎   0000:0115      pop   di
│       ╎   0000:0116      add   di, 4
│       ╎   0000:0119      pop   cx
│       └─< 0000:011a      loop  0x110
│           0000:011c      pop   si
│           0000:011d      pop   es
│           0000:011e      pop   di
└           0000:011f      ret
```

### Function 0x00000120
```asm
; CALL XREF from str.6B7t7 @ +0xb2
┌ fcn.00000120(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0120      cmp   byte [si - 1], 0xfd
│       ┌─< 0000:0124      jne   fcn.00000129                          ; fcn.00000129
│      ┌──< 0000:0126      jmp   0x3bd
       ││   ; CALL XREFS from str.6B7t7 @ +0xa2, +0xaa, +0xba, +0xc2
       ││   ; CODE XREF from fcn.00000277 @ 0x29f
..
│     ╎│    ; DATA XREF from fcn.00000a89 @ +0xe2
│     ╎││   ; DATA XREF from fcn.000006b3 @ +0x220
│     ╎││   ; DATA XREF from fcn.0000096d @ +0x23
      ╎│    ; CALL XREFS from str.6B7t7 @ +0x8a, +0x92, +0x9a
│     ││    ; CODE XREF from fcn.00000277 @ 0x330
│  │ │ ││   ; CODE XREF from fcn.00000277 @ 0x38c
       │    ; CALL XREF from fcn.00000120 @ 0x3fa
       │    ; CALL XREF from fcn.0000047f @ 0x4af
│      │    ; CODE XREF from fcn.00000120 @ 0x126
│      └──> 0000:03bd      push  ds                                    ; arg1
│           0000:03be      push  si
│           0000:03bf      push  es
│           0000:03c0      push  di
│           0000:03c1      mov   di, 0x3e68                            ; 'h>'
│           0000:03c4      movsw word es:[di], word ptr [si]
│           0000:03c5      add   si, 5
│           0000:03c8      movsw word es:[di], word ptr [si]
│           0000:03c9      movsb byte es:[di], byte ptr [si]
│           0000:03ca      mov   dl, byte cs:[0x3e66]
│           0000:03cf      add   dl, 4
│           0000:03d2      xor   dh, dh
│           0000:03d4      add   dx, word cs:[0x80]
│           0000:03d9      mov   word [0x3e6d], dx                     ; [0x3e6d:2]=0xffff ; arg2
│           0000:03dd      call  fcn.000004fe                          ; fcn.000004fe
│           0000:03e0      mov   byte es:[0x3e67], al
│           0000:03e4      cmp   byte es:[0x3e6a], 0xfd
│       ┌─< 0000:03ea      jne   0x3f4
│       │   0000:03ec      inc   dx
│       │   0000:03ed      call  fcn.000004fe                          ; fcn.000004fe
│       │   0000:03f0      mov   byte es:[0x3e6a], al
│       └─> 0000:03f4      mov   si, 0x3e67                            ; 'g>'
│           0000:03f7      mov   di, 0x425b                            ; '[B'
│           0000:03fa      call  fcn.0000039a                          ; fcn.0000039a
│           0000:03fd      mov   si, word cs:[0xc00f]
│       ┌─> 0000:0402      call  fcn.000005f8                          ; fcn.000005f8
│       ╎   0000:0405      or    bl, bl
│      ┌──< 0000:0407      je    0x41b
│      │╎   0000:0409      push  si
│      │╎   0000:040a      push  bx
│      │╎   0000:040b      call  fcn.000005d2                          ; fcn.000005d2
│      │╎   0000:040e      pop   bx
│      │╎   0000:040f      mov   es, word cs:[0xff2c]
│      │╎   0000:0414      mov   si, 0x3e67                            ; 'g>'
│      │╎   0000:0417      call  fcn.000005b0                          ; fcn.000005b0
│      │╎   0000:041a      pop   si
│      └──> 0000:041b      add   si, 8
│       ╎   0000:041e      cmp   word [si], 0xffff
│       └─< 0000:0421      jne   0x402
│           0000:0423      pop   di
│           0000:0424      pop   es
│           0000:0425      mov   ch, byte es:[di - 1]
│           0000:0429      mov   cl, byte es:[di + 7]
│           0000:042d      push  es
│           0000:042e      push  di
│           0000:042f      push  cx
│           0000:0430      mov   di, word cs:[0x3e64]
│           0000:0435      add   di, 0x640
│           0000:0439      push  di
│           0000:043a      mov   si, 0x425b                            ; '[B'
│           0000:043d      mov   ax, 0xb800
│           0000:0440      mov   es, ax
│           0000:0442      inc   ch
│       ┌─< 0000:0444      je    0x449
│       │   0000:0446      call  fcn.00000525                          ; fcn.00000525
│       └─> 0000:0449      pop   di
│           0000:044a      pop   cx
│           0000:044b      cmp   byte cs:[0x3e66], 0x1b
│       ┌─< 0000:0451      je    0x460
│       │   0000:0453      mov   si, 0x42bb
│       │   0000:0456      add   di, 4
│       │   0000:0459      inc   cl
│      ┌──< 0000:045b      je    0x460
│      ││   0000:045d      call  fcn.00000525                          ; fcn.00000525
│      └└─> 0000:0460      pop   di
│           0000:0461      pop   es
│           0000:0462      mov   al, 0xff
│           0000:0464      mov   byte es:[di - 1], 0xfe                ; [0xfe:1]=192
│           0000:0469      mov   byte es:[di], al
│           0000:046c      mov   byte es:[di + 1], al
│           0000:0470      mov   byte es:[di + 7], al
│           0000:0474      mov   byte es:[di + 8], al
│           0000:0478      mov   byte es:[di + 9], al
│           0000:047c      pop   si
│           0000:047d      pop   ds
└           0000:047e      ret
```

### Function 0x00000129
```asm
; CALL XREFS from str.6B7t7 @ +0xa2, +0xaa, +0xba, +0xc2
            ; CODE XREF from fcn.00000277 @ 0x29f
┌ fcn.00000129(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0129      mov   al, byte [di - 1]
│           0000:012c      mov   byte [di - 1], 0xfe                   ; [0xfe:1]=192
│           0000:0130      inc   al
│       ┌─< 0000:0132      jne   0x135
│       │   0000:0134      ret
│       └─> 0000:0135      dec   di
│           0000:0136      dec   si
│           0000:0137      mov   dl, byte [si]
│           0000:0139      movsb byte es:[di], byte ptr [si]
│           0000:013a      push  es
│           0000:013b      push  ds
│           0000:013c      push  di
│           0000:013d      push  si
│           0000:013e      push  bx                                    ; arg3
│           0000:013f      push  dx                                    ; arg2
│           ; DATA XREF from fcn.00000a89 @ +0xe2
│           0000:0140      xor   bh, bh
│           0000:0142      add   bx, bx                                ; arg3
│           0000:0144      mov   ax, 0xa0
│           0000:0147      mul   bx
│           0000:0149      add   ax, word [0x3e64]                     ; [0x3e64:2]=0xffff
│           0000:014d      mov   di, ax
│           0000:014f      pop   dx
│           0000:0150      mov   bl, dl
│           0000:0152      xor   bh, bh
│           0000:0154      add   bx, bx                                ; arg3
│           0000:0156      test  word [bx + 0x431b], 0xffff            ; arg3
│       ┌─< 0000:015c      jne   0x192
│       │   0000:015e      mov   word [bx + 0x431b], di                ; arg3
│       │   0000:0162      mov   ax, 0x20
│       │   0000:0165      mul   dl
│       │   0000:0167      mov   si, ax
│       │   0000:0169      add   si, 0x8100
│       │   0000:016d      mov   ds, word cs:[0xff2c]
│       │   0000:0172      mov   ax, 0xb800
│       │   0000:0175      mov   es, ax
│       │   0000:0177      mov   cx, 8
│      ┌──> 0000:017a      movsw word es:[di], word ptr [si]
│      ╎│   0000:017b      movsw word es:[di], word ptr [si]
│      ╎│   0000:017c      add   di, 0x1ffc
│      ╎│   0000:0180      cmp   di, 0x8000
│     ┌───< 0000:0184      jb    0x18a
│     │╎│   0000:0186      add   di, 0x80a0
│     └└──< 0000:018a      loop  0x17a
│       │   0000:018c      pop   bx
│       │   0000:018d      pop   si
│       │   0000:018e      pop   di
│       │   0000:018f      pop   ds
│       │   ; DATA XREF from fcn.000006b3 @ +0x220
│       │   ; DATA XREF from fcn.0000096d @ +0x23
│       │   0000:0190      pop   es
│       │   0000:0191      ret
│       └─> 0000:0192      mov   si, word [bx + 0x431b]                ; arg3
│           0000:0196      mov   ax, 0xb800
│           0000:0199      mov   es, ax
│           0000:019b      mov   ds, ax
│           0000:019d      movsw word es:[di], word ptr [si]
│           0000:019e      movsw word es:[di], word ptr [si]
│           0000:019f      add   di, 0x1ffc
│           0000:01a3      cmp   di, 0x8000
│       ┌─< 0000:01a7      jb    0x1ad
│       │   0000:01a9      add   di, 0x80a0
│       └─> 0000:01ad      add   si, 0x1ffc
│           0000:01b1      cmp   si, 0x8000
│       ┌─< 0000:01b5      jb    0x1bb
│       │   0000:01b7      add   si, 0x80a0
│       └─> 0000:01bb      movsw word es:[di], word ptr [si]
│           0000:01bc      movsw word es:[di], word ptr [si]
│           0000:01bd      add   di, 0x1ffc
│           0000:01c1      cmp   di, 0x8000
│       ┌─< 0000:01c5      jb    0x1cb
│       │   0000:01c7      add   di, 0x80a0
│       └─> 0000:01cb      add   si, 0x1ffc
│           0000:01cf      cmp   si, 0x8000
│       ┌─< 0000:01d3      jb    0x1d9
│       │   0000:01d5      add   si, 0x80a0
│       └─> 0000:01d9      movsw word es:[di], word ptr [si]
│           0000:01da      movsw word es:[di], word ptr [si]
│           0000:01db      add   di, 0x1ffc
│           0000:01df      cmp   di, 0x8000
│       ┌─< 0000:01e3      jb    0x1e9
│       │   0000:01e5      add   di, 0x80a0
│       └─> 0000:01e9      add   si, 0x1ffc
│           0000:01ed      cmp   si, 0x8000
│       ┌─< 0000:01f1      jb    0x1f7
│       │   0000:01f3      add   si, 0x80a0
│       └─> 0000:01f7      movsw word es:[di], word ptr [si]
│           0000:01f8      movsw word es:[di], word ptr [si]
│           0000:01f9      add   di, 0x1ffc
│           0000:01fd      cmp   di, 0x8000
│       ┌─< 0000:0201      jb    0x207
│       │   0000:0203      add   di, 0x80a0
│       └─> 0000:0207      add   si, 0x1ffc
│           0000:020b      cmp   si, 0x8000
│       ┌─< 0000:020f      jb    0x215
│       │   0000:0211      add   si, 0x80a0
│       └─> 0000:0215      movsw word es:[di], word ptr [si]
│           0000:0216      movsw word es:[di], word ptr [si]
│           0000:0217      add   di, 0x1ffc
│           0000:021b      cmp   di, 0x8000
│       ┌─< 0000:021f      jb    0x225
│       │   0000:0221      add   di, 0x80a0
│       └─> 0000:0225      add   si, 0x1ffc
│           0000:0229      cmp   si, 0x8000
│       ┌─< 0000:022d      jb    0x233
│       │   0000:022f      add   si, 0x80a0
│       └─> 0000:0233      movsw word es:[di], word ptr [si]
│           0000:0234      movsw word es:[di], word ptr [si]
│           0000:0235      add   di, 0x1ffc
│           0000:0239      cmp   di, 0x8000
│       ┌─< 0000:023d      jb    0x243
│       │   0000:023f      add   di, 0x80a0
│       └─> 0000:0243      add   si, 0x1ffc
│           0000:0247      cmp   si, 0x8000
│       ┌─< 0000:024b      jb    0x251
│       │   0000:024d      add   si, 0x80a0
│       └─> 0000:0251      movsw word es:[di], word ptr [si]
│           0000:0252      movsw word es:[di], word ptr [si]
│           0000:0253      add   di, 0x1ffc
│           0000:0257      cmp   di, 0x8000
│       ┌─< 0000:025b      jb    0x261
│       │   0000:025d      add   di, 0x80a0
│       └─> 0000:0261      add   si, 0x1ffc
│           0000:0265      cmp   si, 0x8000
│       ┌─< 0000:0269      jb    0x26f
│       │   0000:026b      add   si, 0x80a0
│       └─> 0000:026f      movsw word es:[di], word ptr [si]
│           0000:0270      movsw word es:[di], word ptr [si]
│           0000:0271      pop   bx
│           0000:0272      pop   si
│           0000:0273      pop   di
│           0000:0274      pop   ds
│           0000:0275      pop   es
└           0000:0276      ret
```

### Function 0x00000277
```asm
╎   ; CALL XREFS from str.6B7t7 @ +0x8a, +0x92, +0x9a
┌ fcn.00000277(int16_t arg2, int16_t arg3);
│       ╎   ; arg int16_t arg2 @ dx
│       ╎   ; arg int16_t arg3 @ bx
│       ╎   0000:0277      mov   al, byte [di - 1]
│       ╎   0000:027a      mov   byte [di - 1], 0xfe                   ; [0xfe:1]=192
│       ╎   0000:027e      inc   al
│      ┌──< 0000:0280      jne   0x283
│      │╎   0000:0282      ret
│      └──> 0000:0283      push  bx                                    ; arg3
│       ╎   0000:0284      push  es
│       ╎   0000:0285      mov   dl, byte [si - 1]
│       ╎   0000:0288      mov   bl, dl
│       ╎   0000:028a      xor   bh, bh
│       ╎   0000:028c      mov   es, word cs:[0xff2c]
│       ╎   0000:0291      add   bx, word es:[0x8000]                  ; arg3
│       ╎   0000:0296      mov   dh, byte es:[bx]                      ; arg3
│       ╎   0000:0299      pop   es
│       ╎   0000:029a      pop   bx
│       ╎   0000:029b      or    dh, dh
│      ┌──< 0000:029d      jne   0x2a2
│      │└─< 0000:029f      jmp   fcn.00000129                          ; fcn.00000129
│      └──> 0000:02a2      dec   di
│           0000:02a3      dec   si
│           0000:02a4      movsb byte es:[di], byte ptr [si]
│           0000:02a5      push  es
│           0000:02a6      push  ds
│           0000:02a7      push  di
│           0000:02a8      push  si
│           0000:02a9      push  bx
│           0000:02aa      push  dx                                    ; arg2
│           0000:02ab      xor   bh, bh
│           0000:02ad      add   bx, bx
│           0000:02af      mov   ax, 0xa0
│           0000:02b2      mul   bx
│           0000:02b4      add   ax, word [0x3e64]                     ; [0x3e64:2]=0xffff
│           0000:02b8      mov   di, ax
│           0000:02ba      pop   dx
│           0000:02bb      mov   ax, 0x20
│           0000:02be      mul   dl
│           0000:02c0      mov   si, ax
│           0000:02c2      shr   ax, 1
│           0000:02c4      shr   ax, 1
│           0000:02c6      mov   bp, ax
│           0000:02c8      add   si, 0x8100
│           0000:02cc      add   bp, 0xd000
│           0000:02d0      mov   ax, 0x60                              ; '`'
│           0000:02d3      mul   byte [0x3e66]
│           0000:02d7      add   bx, bx
│           0000:02d9      add   bx, bx
│           0000:02db      add   bx, bx
│           0000:02dd      add   bx, bx
│           0000:02df      add   bx, ax
│           0000:02e1      add   bx, 0xa000
│           0000:02e5      mov   ds, word cs:[0xff2c]
│           0000:02ea      mov   ax, 0xb800
│           0000:02ed      mov   es, ax
│           0000:02ef      cmp   dh, 4                                 ; str.G__0Y0 ; "G;(0Y0\xe46B7t7\xd07\x933\b6w6\xce5"
│       ┌─< 0000:02f2      je    0x332
│       │   0000:02f4      mov   cx, 8
│      ┌──> 0000:02f7      push  cx
│      ╎│   0000:02f8      mov   al, byte ds:[bp]
│      ╎│   0000:02fc      call  fcn.00000e4f                          ; fcn.00000e4f
│      ╎│   0000:02ff      mov   cl, al
│      ╎│   0000:0301      mov   ax, word cs:[bx]
│      ╎│   0000:0304      and   ax, dx
│      ╎│   0000:0306      or    ax, word [si]                         ; int16_t arg2
│      ╎│   0000:0308      stosw word es:[di], ax
│      ╎│   0000:0309      mov   al, cl
│      ╎│   0000:030b      call  fcn.00000e4f                          ; fcn.00000e4f
│      ╎│   0000:030e      mov   ax, word cs:[bx + 2]
│      ╎│   0000:0312      and   ax, dx
│      ╎│   0000:0314      or    ax, word [si + 2]
│      ╎│   0000:0317      stosw word es:[di], ax
│      ╎│   0000:0318      inc   bp
│      ╎│   0000:0319      add   bx, 4
│      ╎│   0000:031c      add   si, 4
│      ╎│   0000:031f      add   di, 0x1ffc
│      ╎│   0000:0323      cmp   di, 0x8000
│     ┌───< 0000:0327      jb    0x32d
│     │╎│   0000:0329      add   di, 0x80a0
│     └───> 0000:032d      pop   cx
│      └──< 0000:032e      loop  0x2f7
│      ┌──< 0000:0330      jmp   0x353
│      │└─> 0000:0332      mov   cx, 8
│      │┌─> 0000:0335      push  cx
│      │╎   0000:0336      mov   ax, word cs:[bx]
│      │╎   0000:0339      stosw word es:[di], ax
│      │╎   0000:033a      mov   ax, word cs:[bx + 2]
│      │╎   0000:033e      stosw word es:[di], ax
│      │╎   0000:033f      add   bx, 4
│      │╎   0000:0342      add   di, 0x1ffc
│      │╎   0000:0346      cmp   di, 0x8000
│     ┌───< 0000:034a      jb    0x350
│     ││╎   0000:034c      add   di, 0x80a0
│     └───> 0000:0350      pop   cx
│      │└─< 0000:0351      loop  0x335
│      │    ; CODE XREF from fcn.00000277 @ 0x330
│      └──> 0000:0353      pop   bx
│           0000:0354      pop   si
│           0000:0355      pop   di
│           0000:0356      pop   ds
│           0000:0357      pop   es
│           0000:0358      mov   ah, byte [di - 1]
│           0000:035b      or    ah, ah
│       ┌─< 0000:035d      jne   0x360
│       │   0000:035f      ret
│       └─> 0000:0360      cmp   ah, 0x19
│       ┌─< 0000:0363      jb    0x366
│       │   0000:0365      ret
│       └─> 0000:0366      push  di
│           0000:0367      push  es
│           0000:0368      mov   es, word cs:[0xff2c]
│           0000:036d      mov   di, word es:[0x8004]
│           0000:0372      mov   cl, byte es:[di]
│           0000:0375      or    cl, cl
│       ┌─< 0000:0377      je    0x394
│       │   0000:0379      inc   di
│      ┌──> 0000:037a      mov   al, byte es:[di]
│      ╎│   0000:037d      cmp   al, 0xff
│     ┌───< 0000:037f      je    0x394
│     │╎│   0000:0381      cmp   ah, al
│    ┌────< 0000:0383      jne   0x38e
│    ││╎│   0000:0385      mov   al, byte es:[di + 1]
│    ││╎│   0000:0389      mov   byte [si - 1], al
│   ┌─────< 0000:038c      jmp   0x394
│   │└────> 0000:038e      inc   di
│   │ │╎│   0000:038f      inc   di
│   │ │╎│   0000:0390      dec   cl
│   │ │└──< 0000:0392      jne   0x37a
│   │ │ │   ; CODE XREF from fcn.00000277 @ 0x38c
│   └─└─└─> 0000:0394      pop   es
│           0000:0395      pop   di
└           0000:0396      ret
```

### Function 0x0000039a
```asm
; CALL XREF from fcn.00000120 @ 0x3fa
┌ fcn.0000039a(int16_t arg1);
│           ; arg int16_t arg1 @ ax
└           0000:039a      mov   cx, 6
```

### Function 0x0000039d
```asm
; CALL XREF from fcn.0000047f @ 0x4af
┌ fcn.0000039d(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:039d      push  cs
│           0000:039e      pop   es
│       ┌─> 0000:039f      push  cx                                    ; arg4
│       ╎   0000:03a0      lodsb al, byte [si]
│       ╎   0000:03a1      push  ds
│       ╎   0000:03a2      push  si
│       ╎   0000:03a3      mov   cl, 0x20
│       ╎   0000:03a5      mul   cl
│       ╎   0000:03a7      mov   si, ax                                ; arg1
│       ╎   0000:03a9      add   si, 0x8100
│       ╎   0000:03ad      mov   ds, word cs:[0xff2c]
│       ╎   0000:03b2      mov   cx, 0x10
│       ╎   0000:03b5      rep   movsw word es:[di], word ptr [si]
│       ╎   0000:03b7      pop   si
│       ╎   0000:03b8      pop   ds
│       ╎   0000:03b9      pop   cx
│       └─< 0000:03ba      loop  0x39f
└           0000:03bc      ret
```

### Function 0x0000047f
```asm
; CALL XREF from str.6B7t7 @ +0x68
┌ fcn.0000047f();
│           0000:047f      push  es
│           0000:0480      push  ds
│           0000:0481      mov   si, word [0xff2a]
│           0000:0485      add   si, 0x25
│           0000:0488      mov   di, 0x3e67                            ; 'g>'
│           0000:048b      movsw word es:[di], word ptr [si]
│           0000:048c      movsb byte es:[di], byte ptr [si]
│           0000:048d      mov   dx, word [0x80]                       ; [0x80:2]=0xc683
│           0000:0491      add   dx, 3
│           0000:0494      mov   word [0x3e6d], dx                     ; [0x3e6d:2]=0xffff
│           0000:0498      cmp   byte [0x3e67], 0xfd                   ; [0x3e67:1]=255
│       ┌─< 0000:049d      jne   0x4a6
│       │   0000:049f      inc   dx
│       │   0000:04a0      call  fcn.000004fe                          ; fcn.000004fe
│       │   0000:04a3      mov   byte [0x3e67], al                     ; [0x3e67:1]=255
│       └─> 0000:04a6      mov   si, 0x3e67                            ; 'g>'
│           0000:04a9      mov   di, 0x425b                            ; '[B'
│           0000:04ac      mov   cx, 3
│           0000:04af      call  fcn.0000039d                          ; fcn.0000039d
│           0000:04b2      mov   si, word cs:[0xc00f]
│       ┌─> 0000:04b7      call  fcn.000005f8                          ; fcn.000005f8
│       ╎   0000:04ba      or    bl, bl
│      ┌──< 0000:04bc      je    0x4dd
│      │╎   0000:04be      push  si
│      │╎   0000:04bf      dec   bl
│      │╎   0000:04c1      mov   al, 3
│      │╎   0000:04c3      mul   bl
│      │╎   0000:04c5      push  ax
│      │╎   0000:04c6      call  fcn.000005d2                          ; fcn.000005d2
│      │╎   0000:04c9      pop   ax                                    ; int16_t arg1
│      │╎   0000:04ca      add   di, ax
│      │╎   0000:04cc      mov   bp, di
│      │╎   0000:04ce      mov   es, word cs:[0xff2c]
│      │╎   0000:04d3      mov   si, 0x3e67                            ; 'g>'
│      │╎   0000:04d6      mov   di, 0x425b                            ; '[B'
│      │╎   0000:04d9      call  fcn.00000638                          ; fcn.00000638
│      │╎   0000:04dc      pop   si
│      └──> 0000:04dd      add   si, 8
│       ╎   0000:04e0      cmp   word [si], 0xffff
│       └─< 0000:04e3      jne   0x4b7
│           0000:04e5      mov   di, 0x5238                            ; '8R'
│           0000:04e8      mov   si, 0x425b                            ; '[B'
│           0000:04eb      mov   ax, 0xb800
│           0000:04ee      mov   es, ax
│           0000:04f0      call  fcn.00000525                          ; fcn.00000525
│           0000:04f3      pop   ds
│           0000:04f4      pop   es
│           0000:04f5      mov   di, 0xe005
│           0000:04f8      mov   al, 0xff
│           0000:04fa      stosb byte es:[di], al
│           0000:04fb      stosb byte es:[di], al
│           0000:04fc      stosb byte es:[di], al
└           0000:04fd      ret
```

### Function 0x000004fe
```asm
; CALL XREFS from fcn.00000120 @ 0x3dd, 0x3ed
            ; CALL XREF from fcn.0000047f @ 0x4a0
┌ fcn.000004fe();
│           0000:04fe      call  fcn.00000517                          ; fcn.00000517
│           0000:0501      mov   al, byte [si + 3]
│           0000:0504      cmp   al, 0xfd
│       ┌─< 0000:0506      je    0x509
│       │   0000:0508      ret
│      ┌└─> 0000:0509      add   si, 8
│      ╎    0000:050c      call  fcn.0000051b                          ; fcn.0000051b
│      ╎    0000:050f      mov   al, byte [si + 3]
│      ╎    0000:0512      cmp   al, 0xfd
│      └──< 0000:0514      je    0x509
└           0000:0516      ret
```

### Function 0x00000517
```asm
; CALL XREF from fcn.000004fe @ 0x4fe
┌ fcn.00000517(int16_t arg2);
│           ; arg int16_t arg2 @ dx
└           0000:0517      mov   si, word [0xc00f]
```

### Function 0x0000051b
```asm
; CALL XREF from fcn.000004fe @ 0x50c
            ; CODE XREF from fcn.0000051b @ 0x523
┌ fcn.0000051b(short unsigned int arg2);
│           ; arg short unsigned int arg2 @ dx
│       ┌─> 0000:051b      cmp   dx, word [si]                         ; arg2
│      ┌──< 0000:051d      jne   0x520
│      │╎   0000:051f      ret
│      └──> 0000:0520      add   si, 8
└       └─< 0000:0523      jmp   fcn.0000051b
```

### Function 0x00000525
```asm
; CALL XREF from fcn.000000e1 @ 0x112
            ; CALL XREFS from fcn.00000120 @ 0x446, 0x45d
            ; CALL XREF from fcn.0000047f @ 0x4f0
┌ fcn.00000525();
│           0000:0525      mov   cx, 3
│           ; CODE XREF from fcn.00000525 @ 0x5ac
│       ┌─> 0000:0528      movsw word es:[di], word ptr [si]
│       ╎   0000:0529      movsw word es:[di], word ptr [si]
│       ╎   0000:052a      add   di, 0x1ffc
│       ╎   0000:052e      cmp   di, 0x8000
│      ┌──< 0000:0532      jb    0x538
│      │╎   0000:0534      add   di, 0x80a0
│      └──> 0000:0538      movsw word es:[di], word ptr [si]
│       ╎   0000:0539      movsw word es:[di], word ptr [si]
│       ╎   0000:053a      add   di, 0x1ffc
│       ╎   0000:053e      cmp   di, 0x8000
│      ┌──< 0000:0542      jb    0x548
│      │╎   0000:0544      add   di, 0x80a0
│      └──> 0000:0548      movsw word es:[di], word ptr [si]
│       ╎   0000:0549      movsw word es:[di], word ptr [si]
│       ╎   0000:054a      add   di, 0x1ffc
│       ╎   0000:054e      cmp   di, 0x8000
│      ┌──< 0000:0552      jb    0x558
│      │╎   0000:0554      add   di, 0x80a0
│      └──> 0000:0558      movsw word es:[di], word ptr [si]
│       ╎   0000:0559      movsw word es:[di], word ptr [si]
│       ╎   0000:055a      add   di, 0x1ffc
│       ╎   0000:055e      cmp   di, 0x8000
│      ┌──< 0000:0562      jb    0x568
│      │╎   0000:0564      add   di, 0x80a0
│      └──> 0000:0568      movsw word es:[di], word ptr [si]
│       ╎   0000:0569      movsw word es:[di], word ptr [si]
│       ╎   0000:056a      add   di, 0x1ffc
│       ╎   0000:056e      cmp   di, 0x8000
│      ┌──< 0000:0572      jb    0x578
│      │╎   0000:0574      add   di, 0x80a0
│      └──> 0000:0578      movsw word es:[di], word ptr [si]
│       ╎   0000:0579      movsw word es:[di], word ptr [si]
│       ╎   0000:057a      add   di, 0x1ffc
│       ╎   0000:057e      cmp   di, 0x8000
│      ┌──< 0000:0582      jb    0x588
│      │╎   0000:0584      add   di, 0x80a0
│      └──> 0000:0588      movsw word es:[di], word ptr [si]
│       ╎   0000:0589      movsw word es:[di], word ptr [si]
│       ╎   0000:058a      add   di, 0x1ffc
│       ╎   0000:058e      cmp   di, 0x8000
│      ┌──< 0000:0592      jb    0x598
│      │╎   0000:0594      add   di, 0x80a0
│      └──> 0000:0598      movsw word es:[di], word ptr [si]
│       ╎   0000:0599      movsw word es:[di], word ptr [si]
│       ╎   0000:059a      add   di, 0x1ffc
│       ╎   0000:059e      cmp   di, 0x8000
│      ┌──< 0000:05a2      jb    0x5a8
│      │╎   0000:05a4      add   di, 0x80a0
│     ┌└──> 0000:05a8      loop  0x5ac
│     │┌──< 0000:05aa      jmp   0x5af
│     └─└─< 0000:05ac      jmp   0x528
│      │    ; CODE XREF from fcn.00000525 @ 0x5aa
└      └──> 0000:05af      ret
```

### Function 0x000005b0
```asm
; CALL XREF from fcn.00000120 @ 0x417
┌ fcn.000005b0(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:05b0      mov   bp, di
│           0000:05b2      dec   bl
│           0000:05b4      xor   bh, bh
│           0000:05b6      add   bx, bx                                ; arg3
│           0000:05b8      call  word cs:[bx + 0x35ba]
└           0000:05bd      ret
```

### Function 0x000005d2
```asm
; CALL XREF from fcn.00000120 @ 0x40b
            ; CALL XREF from fcn.0000047f @ 0x4c6
┌ fcn.000005d2(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:05d2      mov   al, byte [si + 2]
│           0000:05d5      mov   ch, al
│           0000:05d7      and   al, 0x7f
│           0000:05d9      mov   cl, 0x30                              ; '0'
│           0000:05db      mul   cl
│           0000:05dd      add   ax, 0x4000                            ; arg1
│           0000:05e0      mov   di, ax                                ; arg1
│           0000:05e2      xor   dl, dl
│           0000:05e4      or    ch, ch
│       ┌─< 0000:05e6      js    0x5ea
│       │   0000:05e8      mov   dl, 4
│       └─> 0000:05ea      mov   al, byte [si + 4]
│           0000:05ed      and   al, 3
│           0000:05ef      add   al, dl
│           0000:05f1      mov   cl, 6
│           0000:05f3      mul   cl
│           0000:05f5      add   di, ax                                ; arg1
└           0000:05f7      ret
```

### Function 0x000005f8
```asm
; CALL XREF from fcn.00000120 @ 0x402
            ; CALL XREF from fcn.0000047f @ 0x4b7
┌ fcn.000005f8();
│           0000:05f8      mov   cx, 2
│           0000:05fb      mov   dx, word [0x3e6d]                     ; [0x3e6d:2]=0xffff
│       ┌─> 0000:05ff      mov   bl, cl
│       ╎   0000:0601      cmp   word [si], dx
│      ┌──< 0000:0603      jne   0x606
│      │╎   0000:0605      ret
│      └──> 0000:0606      inc   dx
│       └─< 0000:0607      loop  0x5ff
│           0000:0609      mov   bl, cl
└           0000:060b      ret
```

### Function 0x00000638
```asm
; XREFS: CALL 0x000004d9  CALL 0x000005c5  CODE 0x000005c8  
            ; XREFS: CODE 0x000005d0  CODE 0x00000626  CALL 0x0000062b  
            ; XREFS: CODE 0x0000062e  CODE 0x00000636  
┌ fcn.00000638(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0638      mov   cx, 3
│       ┌─> 0000:063b      push  cx
│       ╎   0000:063c      mov   byte [si], 0xff                       ; [0xff:1]=139
│       ╎   0000:063f      inc   si
│       ╎   ; DATA XREF from fcn.00000120 @ 0x435
│       ╎   0000:0640      push  ds
│       ╎   0000:0641      push  si
│       ╎   0000:0642      mov   al, byte es:[bp]
│       ╎   0000:0646      inc   bp
│       ╎   0000:0647      push  es
│       ╎   0000:0648      push  bp
│       ╎   0000:0649      dec   al
│       ╎   0000:064b      mov   cl, 0x20
│       ╎   0000:064d      mul   cl
│       ╎   0000:064f      mov   si, ax                                ; arg1
│       ╎   0000:0651      add   si, 0x4100
│       ╎   0000:0655      shr   ax, 1                                 ; arg1
│       ╎   0000:0657      shr   ax, 1                                 ; arg1
│       ╎   0000:0659      add   ax, 0x7000                            ; arg1
│       ╎   0000:065c      mov   word cs:[0x3e77], ax                  ; arg1
│       ╎   0000:0660      mov   ax, cs
│       ╎   0000:0662      add   ax, 0x2000                            ; int16_t arg1
│       ╎   0000:0665      mov   word cs:[0x3e79], ax
│       ╎   0000:0669      mov   ds, word cs:[0xff2c]
│       ╎   0000:066e      push  cs
│       ╎   0000:066f      pop   es
│       ╎   0000:0670      call  fcn.000006b3                          ; fcn.000006b3
│       ╎   0000:0673      pop   bp
│       ╎   0000:0674      pop   es
│       ╎   0000:0675      pop   si
│       ╎   0000:0676      pop   ds
│       ╎   0000:0677      pop   cx
│       └─< 0000:0678      loop  0x63b
└           0000:067a      ret
```

### Function 0x000006b3
```asm
; CALL XREF from fcn.00000638 @ 0x670
            ; CALL XREF from fcn.00000638 @ +0x72
┌ fcn.000006b3(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:06b3      push  ds
│           0000:06b4      push  si
│           0000:06b5      push  di
│           0000:06b6      lds   si, cs:[0x3e77]
│           0000:06bb      mov   cx, 8
│       ┌─> 0000:06be      push  cx
│       ╎   0000:06bf      lodsb al, byte [si]
│       ╎   0000:06c0      call  fcn.00000e4f                          ; fcn.00000e4f
│       ╎   0000:06c3      and   word es:[di], dx
│       ╎   0000:06c6      call  fcn.00000e4f                          ; fcn.00000e4f
│       ╎   0000:06c9      and   word es:[di + 2], dx
│       ╎   0000:06cd      add   di, 4
│       ╎   0000:06d0      pop   cx
│       └─< 0000:06d1      loop  0x6be
│           0000:06d3      pop   di
│           0000:06d4      pop   si
│           0000:06d5      pop   ds
│           0000:06d6      mov   cx, 8
│       ┌─> 0000:06d9      lodsw ax, word [si]
│       ╎   0000:06da      or    word es:[di], ax
│       ╎   0000:06dd      lodsw ax, word [si]
│       ╎   0000:06de      or    word es:[di + 2], ax
│       ╎   0000:06e2      add   di, 4
│       └─< 0000:06e5      loop  0x6d9
└           0000:06e7      ret
```

### Function 0x000008ff
```asm
; CALL XREF from fcn.000006b3 @ +0x22d
┌ fcn.000008ff(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:08ff      push  cs
│           0000:0900      pop   es
│           0000:0901      mov   di, 0x3ecb
│           0000:0904      xor   bl, bl
│           ; CODE XREF from fcn.000008ff @ 0x91a
│       ┌─> 0000:0906      lodsb al, byte [si]
│       ╎   0000:0907      or    al, al
│      ┌──< 0000:0909      jne   0x90c
│      │╎   0000:090b      ret
│      └──> 0000:090c      push  bx                                    ; arg3
│       ╎   0000:090d      push  ds
│       ╎   0000:090e      push  si
│       ╎   0000:090f      and   bl, 1
│       ╎   0000:0912      call  fcn.0000091c                          ; fcn.0000091c
│       ╎   0000:0915      pop   si
│       ╎   0000:0916      pop   ds
│       ╎   0000:0917      pop   bx
│       ╎   0000:0918      inc   bl
└       └─< 0000:091a      jmp   0x906
```

### Function 0x0000091c
```asm
; CALL XREF from fcn.000008ff @ 0x912
┌ fcn.0000091c(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:091c      sub   al, 0x20
│           0000:091e      xor   ah, ah
│           0000:0920      shl   ax, 1                                 ; arg1
│           0000:0922      shl   ax, 1                                 ; arg1
│           0000:0924      shl   ax, 1                                 ; arg1
│           0000:0926      mov   si, ax                                ; arg1
│           0000:0928      push  cs
│           0000:0929      pop   ds
│           0000:092a      add   si, word [0xf504]
│           0000:092e      add   bl, bl
│           0000:0930      add   bl, bl
│           0000:0932      mov   cl, bl
│           0000:0934      push  di
│           0000:0935      mov   bl, 8
│       ┌─> 0000:0937      push  bx                                    ; arg3
│       ╎   0000:0938      lodsb al, byte [si]
│       ╎   0000:0939      call  fcn.0000096d                          ; fcn.0000096d
│       ╎   0000:093c      push  ax
│       ╎   0000:093d      call  fcn.0000096d                          ; fcn.0000096d
│       ╎   0000:0940      pop   bx
│       ╎   0000:0941      mov   bl, ah
│       ╎   0000:0943      mov   dh, bl
│       ╎   0000:0945      xor   dl, dl
│       ╎   0000:0947      shr   bx, cl
│       ╎   0000:0949      shr   dx, cl
│       ╎   0000:094b      mov   dh, dl
│       ╎   0000:094d      xor   dl, dl
│       ╎   0000:094f      xchg  bl, bh
│       ╎   0000:0951      xchg  dl, dh
│       ╎   0000:0953      or    word es:[di], bx
│       ╎   0000:0956      or    word es:[di + 2], dx
│       ╎   0000:095a      add   di, 0x50
│       ╎   0000:095d      pop   bx
│       ╎   0000:095e      dec   bl
│       └─< 0000:0960      jne   0x937
│           0000:0962      pop   di
│           0000:0963      inc   di
│           0000:0964      inc   di
│           0000:0965      cmp   cl, 4                                 ; str.G__0Y0 ; "G;(0Y0\xe46B7t7\xd07\x933\b6w6\xce5"
│       ┌─< 0000:0968      je    0x96b
│       │   0000:096a      ret
│       └─> 0000:096b      inc   di
└           0000:096c      ret
```

### Function 0x0000096d
```asm
; CALL XREFS from fcn.0000091c @ 0x939, 0x93d
            ; CALL XREFS from fcn.000009d3 @ 0x9f1, 0x9f7, 0x9fe
┌ fcn.0000096d();
│           0000:096d      xor   ah, ah
│           0000:096f      mov   dl, 2
│       ┌─> 0000:0971      add   al, al
│       ╎   0000:0973      sbb   dh, dh
│       ╎   0000:0975      and   dh, 0xf
│       ╎   0000:0978      add   ah, ah
│       ╎   0000:097a      add   ah, ah
│       ╎   0000:097c      add   ah, ah
│       ╎   0000:097e      add   ah, ah
│       ╎   0000:0980      or    ah, dh
│       ╎   0000:0982      dec   dl
│       └─< 0000:0984      jne   0x971
└           0000:0986      ret
```

### Function 0x000009ad
```asm
; CALL XREF from fcn.000006b3 @ +0x246
┌ fcn.000009ad();
│           0000:09ad      call  fcn.00000a0b                          ; fcn.00000a0b
│           0000:09b0      push  cs
│           0000:09b1      pop   es
│           0000:09b2      mov   di, 0x3ecb
│           0000:09b5      mov   ax, word [0xff68]                     ; [0xff68:2]=0xffff
│           0000:09b8      add   ax, ax
│           0000:09ba      add   di, ax
│           0000:09bc      inc   di
│           0000:09bd      mov   si, 0x3a20                            ; ' :'
│           0000:09c0      mov   cx, 6
│           ; CODE XREF from fcn.0000096d @ +0x3e
│       ┌─> 0000:09c3      push  cx
│       ╎   0000:09c4      push  di
│       ╎   0000:09c5      lodsb al, byte [si]
│       ╎   0000:09c6      push  si
│       ╎   0000:09c7      call  fcn.000009d3                          ; fcn.000009d3
│       ╎   0000:09ca      pop   si
│       ╎   0000:09cb      pop   di
│       ╎   0000:09cc      add   di, 3
│       ╎   0000:09cf      pop   cx
│       └─< 0000:09d0      loop  0x9c3
└           0000:09d2      ret
```

### Function 0x000009d3
```asm
; CALL XREF from fcn.000009ad @ 0x9c7
┌ fcn.000009d3(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:09d3      inc   al
│       ┌─< 0000:09d5      jne   0x9d8
│       │   0000:09d7      ret
│       └─> 0000:09d8      dec   al
│           0000:09da      xor   ah, ah
│           0000:09dc      add   ax, ax                                ; arg1
│           0000:09de      add   ax, ax                                ; arg1
│           0000:09e0      add   ax, ax                                ; arg1
│           0000:09e2      add   ax, word cs:[0xf502]                  ; arg1
│           0000:09e7      mov   si, ax                                ; arg1
│           0000:09e9      mov   cx, 7
│       ┌─> 0000:09ec      lodsb al, byte [si]
│       ╎   0000:09ed      add   al, al
│       ╎   0000:09ef      add   al, al
│       ╎   0000:09f1      call  fcn.0000096d                          ; fcn.0000096d
│       ╎   0000:09f4      or    byte es:[di], ah
│       ╎   0000:09f7      call  fcn.0000096d                          ; fcn.0000096d
│       ╎   0000:09fa      or    byte es:[di + 1], ah
│       ╎   0000:09fe      call  fcn.0000096d                          ; fcn.0000096d
│       ╎   0000:0a01      or    byte es:[di + 2], ah
│       ╎   0000:0a05      add   di, 0x50
│       └─< 0000:0a08      loop  0x9ec
└           0000:0a0a      ret
```

### Function 0x00000a0b
```asm
; CALL XREF from fcn.0000096d @ +0x2a
            ; CALL XREF from fcn.000009ad @ 0x9ad
┌ fcn.00000a0b();
│           0000:0a0b      mov   di, 0x3a1f
│           ; DATA XREF from fcn.00000d90 @ +0x57
│           0000:0a0e      call  fcn.00000a2a                          ; fcn.00000a2a
│           0000:0a11      mov   cx, 6
│       ┌─> 0000:0a14      test  byte cs:[di], 0xff
│      ┌──< 0000:0a18      je    0xa1b
│      │╎   0000:0a1a      ret
│      └──> 0000:0a1b      mov   byte cs:[di], 0xff                    ; [0xff:1]=139
│       ╎   0000:0a1f      inc   di
│       └─< 0000:0a20      loop  0xa14
└           0000:0a22      ret
```

### Function 0x00000a2a
```asm
; CALL XREF from fcn.00000a0b @ 0xa0e
┌ fcn.00000a2a();
│           0000:0a2a      mov   cl, 0xf
│           0000:0a2c      mov   bx, 0x4240                            ; '@B'
│           0000:0a2f      call  fcn.00000a70                          ; fcn.00000a70
│           0000:0a32      mov   byte cs:[di], dh
│           0000:0a35      mov   cl, 1
│           0000:0a37      mov   bx, 0x86a0
│           0000:0a3a      call  fcn.00000a70                          ; fcn.00000a70
│           0000:0a3d      mov   byte cs:[di + 1], dh
│           0000:0a41      xor   cl, cl
│           0000:0a43      mov   bx, 0x2710
│           0000:0a46      call  fcn.00000a70                          ; fcn.00000a70
│           0000:0a49      mov   byte cs:[di + 2], dh
│           0000:0a4d      mov   bx, 0x3e8
│           0000:0a50      call  fcn.00000a89                          ; fcn.00000a89
│           0000:0a53      mov   byte cs:[di + 3], dh
│           0000:0a57      mov   bx, 0x64                              ; 'd'
│           0000:0a5a      call  fcn.00000a89                          ; fcn.00000a89
│           0000:0a5d      mov   byte cs:[di + 4], dh
│           0000:0a61      mov   bx, 0xa
│           0000:0a64      call  fcn.00000a89                          ; fcn.00000a89
│           0000:0a67      mov   byte cs:[di + 5], dh
│           0000:0a6b      mov   byte cs:[di + 6], al
└           0000:0a6f      ret
```

### Function 0x00000a70
```asm
; CALL XREFS from fcn.00000a2a @ 0xa2f, 0xa3a, 0xa46
┌ fcn.00000a70(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0a70      xor   dh, dh
│           ; CODE XREF from fcn.00000a70 @ 0xa82
│       ┌─> 0000:0a72      sub   dl, cl
│      ┌──< 0000:0a74      jb    0xa86
│      │╎   0000:0a76      sub   ax, bx                                ; arg3
│     ┌───< 0000:0a78      jae   0xa80
│     ││╎   0000:0a7a      or    dl, dl
│    ┌────< 0000:0a7c      je    0xa84
│    │││╎   0000:0a7e      dec   dl
│    │└───> 0000:0a80      inc   dh
│    │ │└─< 0000:0a82      jmp   0xa72
│    └────> 0000:0a84      add   ax, bx                                ; arg3
│      └──> 0000:0a86      add   dl, cl
└           0000:0a88      ret
```

### Function 0x00000a89
```asm
; CALL XREFS from fcn.00000a2a @ 0xa50, 0xa5a, 0xa64
┌ fcn.00000a89(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0a89      xor   dh, dh
│           0000:0a8b      div   bx
│           0000:0a8d      xchg  dx, ax                                ; arg1
│           0000:0a8e      mov   dh, dl
│           0000:0a90      xor   dl, dl
└           0000:0a92      ret
```

### Function 0x00000d90
```asm
; XREFS: CALL 0x00000bef  CALL 0x00000bf7  CALL 0x00000c8f  
            ; XREFS: CALL 0x00000c97  CALL 0x00000cc9  CALL 0x00000cd1  
            ; XREFS: CALL 0x00000d05  CALL 0x00000d0d  CALL 0x00000d41  
            ; XREFS: CALL 0x00000d49  CALL 0x00000d76  CALL 0x00000d7e  
┌ fcn.00000d90(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0d90      mov   cx, 4
│       ┌─> 0000:0d93      xor   bx, bx
│       ╎   0000:0d95      rol   word cs:[0x3e73], 1
│       ╎   0000:0d9a      adc   bx, bx
│       ╎   0000:0d9c      rol   word cs:[0x3e71], 1
│       ╎   0000:0da1      adc   bx, bx
│       ╎   0000:0da3      rol   word cs:[0x3e6f], 1
│       ╎   0000:0da8      adc   bx, bx
│       ╎   0000:0daa      rol   word cs:[0x3e73], 1
│       ╎   0000:0daf      adc   bx, bx
│       ╎   0000:0db1      rol   word cs:[0x3e71], 1
│       ╎   0000:0db6      adc   bx, bx
│       ╎   0000:0db8      rol   word cs:[0x3e6f], 1
│       ╎   0000:0dbd      adc   bx, bx
│       ╎   0000:0dbf      add   dx, dx                                ; arg2
│       ╎   0000:0dc1      add   dx, dx                                ; arg2
│       ╎   0000:0dc3      add   dx, dx                                ; arg2
│       ╎   0000:0dc5      add   dx, dx                                ; arg2
│       ╎   0000:0dc7      or    dl, byte cs:[bx + 0x3dcb]
│       └─< 0000:0dcc      loop  0xd93
└           0000:0dce      ret
```

### Function 0x00000e0f
```asm
; CALL XREFS from fcn.00000a89 @ +0x17d, +0x250, +0x28c, +0x2c8
┌ fcn.00000e0f();
│           0000:0e0f      mov   cx, 8
│       ┌─> 0000:0e12      xor   al, al
│       ╎   0000:0e14      rol   word cs:[0x3e75], 1
│       ╎   0000:0e19      adc   al, al
│       ╎   0000:0e1b      rol   word cs:[0x3e75], 1
│       ╎   0000:0e20      adc   al, al
│       ╎   0000:0e22      cmp   al, 3
│      ┌──< 0000:0e24      je    0xe28
│      │╎   0000:0e26      xor   al, al
│      └──> 0000:0e28      and   al, 1
│       ╎   0000:0e2a      add   dl, dl
│       ╎   0000:0e2c      or    dl, al
│       └─< 0000:0e2e      loop  0xe12
└           0000:0e30      ret
```

### Function 0x00000e31
```asm
; CALL XREFS from fcn.000006b3 @ +0x169, +0x197, +0x1e3
            ; CALL XREFS from fcn.00000a89 @ +0x12, +0x66
┌ fcn.00000e31(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0e31      mov   dh, bl
│           0000:0e33      ror   dh, 1
│           0000:0e35      ror   dh, 1
│           0000:0e37      ror   dh, 1
│           0000:0e39      and   dx, 0x6000                            ; arg2
│           0000:0e3d      mov   ax, 0xa0
│           0000:0e40      shr   bl, 1
│           0000:0e42      shr   bl, 1
│           0000:0e44      mul   bl
│           0000:0e46      add   ax, dx                                ; arg2
│           0000:0e48      mov   bl, bh
│           0000:0e4a      xor   bh, bh
│           0000:0e4c      add   ax, bx                                ; arg3
└           0000:0e4e      ret
```

### Function 0x00000e4f
```asm
; CALL XREFS from fcn.00000277 @ 0x2fc, 0x30b
            ; CALL XREFS from fcn.000006b3 @ 0x6c0, 0x6c6
┌ fcn.00000e4f(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0e4f      mov   cx, 4
│       ┌─> 0000:0e52      add   al, al
│       ╎   0000:0e54      sbb   ah, ah
│       ╎   0000:0e56      and   ah, 0xf
│       ╎   0000:0e59      add   dx, dx                                ; arg2
│       ╎   0000:0e5b      add   dx, dx                                ; arg2
│       ╎   0000:0e5d      add   dx, dx                                ; arg2
│       ╎   0000:0e5f      add   dx, dx                                ; arg2
│       ╎   0000:0e61      or    dl, ah
│       └─< 0000:0e63      loop  0xe52
│           0000:0e65      xchg  dl, dh
└           0000:0e67      ret
```

## Cross-References (callers)
```json
  0x000000e1:
[{"from":141,"to":225,"type":"CALL"},{"from":3183,"to":225,"type":"DATA"}]
  0x00000120:
[{"from":189,"to":288,"type":"CALL"}]
  0x00000129:
[{"from":173,"to":297,"type":"CALL"},{"from":181,"to":297,"type":"CALL"},{"from":197,"to":297,"type":"CALL"},{"from":205,"to":297,"type":"CALL"},{"from":671,"to":297,"type":"CODE"}]
  0x00000277:
[{"from":149,"to":631,"type":"CALL"},{"from":157,"to":631,"type":"CALL"},{"from":165,"to":631,"type":"CALL"}]
  0x0000039a:
[{"from":1018,"to":922,"type":"CALL"}]
  0x0000039d:
[{"from":1199,"to":925,"type":"CALL"}]
  0x0000047f:
[{"from":115,"to":1151,"type":"CALL"}]
  0x000004fe:
[{"from":989,"to":1278,"type":"CALL"},{"from":1005,"to":1278,"type":"CALL"},{"from":1184,"to":1278,"type":"CALL"}]
  0x00000517:
[{"from":1278,"to":1303,"type":"CALL"}]
  0x0000051b:
[{"from":1292,"to":1307,"type":"CALL"},{"from":1315,"to":1307,"type":"CODE"}]
  0x00000525:
[{"from":274,"to":1317,"type":"CALL"},{"from":1094,"to":1317,"type":"CALL"},{"from":1117,"to":1317,"type":"CALL"},{"from":1264,"to":1317,"type":"CALL"}]
  0x000005b0:
[{"from":1047,"to":1456,"type":"CALL"}]
  0x000005d2:
[{"from":1035,"to":1490,"type":"CALL"},{"from":1222,"to":1490,"type":"CALL"}]
  0x000005f8:
[{"from":1026,"to":1528,"type":"CALL"},{"from":1207,"to":1528,"type":"CALL"}]
  0x00000638:
[{"from":1241,"to":1592,"type":"CALL"},{"from":1477,"to":1592,"type":"CALL"},{"from":1480,"to":1592,"type":"CODE"},{"from":1488,"to":1592,"type":"CODE"},{"from":1574,"to":1592,"type":"CODE"},{"from":1579,"to":1592,"type":"CALL"},{"from":1582,"to":1592,"type":"CODE"},{"from":1590,"to":1592,"type":"CODE"}]
  0x000006b3:
[{"from":1648,"to":1715,"type":"CALL"},{"from":1706,"to":1715,"type":"CALL"}]
  0x000008ff:
[{"from":2272,"to":2303,"type":"CALL"}]
  0x0000091c:
[{"from":2322,"to":2332,"type":"CALL"}]
  0x0000096d:
[{"from":2361,"to":2413,"type":"CALL"},{"from":2365,"to":2413,"type":"CALL"},{"from":2545,"to":2413,"type":"CALL"},{"from":2551,"to":2413,"type":"CALL"},{"from":2558,"to":2413,"type":"CALL"}]
```