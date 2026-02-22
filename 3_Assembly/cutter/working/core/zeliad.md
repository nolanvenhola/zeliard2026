# ZELIAD - Analysis

**Source:** `zeliad.exe`  
**Size:** 3.0 KB  
**Functions:** 12  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000   28 729          entry0
0x00000385    3 11           fcn.00000385
0x00000390    9 60           fcn.00000390
0x000003cc   13 93           fcn.000003cc
0x00000443    5 48           fcn.00000443
0x0000047c    3 23           fcn.0000047c
0x00000493    6 50           fcn.00000493
0x000004da    6 37           fcn.000004da
0x000004ef    8 480  -> 118  fcn.000004ef
0x00000520    7 90           fcn.00000520
0x0000057a    1 14           fcn.0000057a
0x000005f9   14 83           fcn.000005f9
```

## Strings
```
nth paddr vaddr len size section type string 
---------------------------------------------
```

## Function Disassembly

### Function 0x00000000
```asm
;-- section.seg_000:
┌ entry0();
│           0000:0000      cld                                         ; [00] -rwx section size 2538 named seg_000
│           0000:0001      mov   ah, 0x30                              ; '0'
│           ; DATA XREF from fcn.000003cc @ 0x3d2
│           ; DATA XREF from fcn.00000493 @ 0x49e
│           0000:0003      int   0x21
│           ; DATA XREF from fcn.00000520 @ 0x557
│           0000:0005      cmp   al, 2
│       ┌─< 0000:0007      jae   0xb
│       │   0000:0009      int   0x20
│       └─> 0000:000b      mov   ax, 0                                 ; RELOC 0 
│           0000:000e      mov   ds, ax
│           0000:0010      call  fcn.000005f9                          ; fcn.000005f9
│           ; DATA XREF from entry0 @ 0x2c7
│           ; DATA XREF from fcn.0000057a @ +0x2c
│           0000:0013      mov   dx, 0x7e2                             ; "RESOURCE.CFG"
│           0000:0016      mov   ax, 0x3d00
│           0000:0019      int   0x21
│       ┌─< 0000:001b      jae   0x25
│       │   0000:001d      call  fcn.00000520                          ; fcn.00000520
│       │   ; DATA XREFS from entry0 @ +0x31f, +0x32b
│       │   ; DATA XREF from fcn.00000390 @ 0x3b2
│       │   ; DATA XREF from fcn.000005f9 @ 0x61e
│       │   ; DATA XREF from fcn.000005f9 @ +0xd0
│       │   0000:0020      mov   ax, 0x4c00
│       │   0000:0023      int   0x21
│       └─> 0000:0025      mov   bx, ax
│           0000:0027      call  fcn.00000390                          ; fcn.00000390
│           ; DATA XREF from fcn.0000057a @ +0x5c
│       ┌─< 0000:002a      jae   0x2f
│      ┌──< 0000:002c      jmp   0x4ca                                 ; fcn.000004da-0x10
│      │└─> 0000:002f      call  fcn.000003cc                          ; fcn.000003cc
│      │    0000:0032      call  fcn.00000390                          ; fcn.00000390
│      │┌─< 0000:0035      jae   0x3a
│     ┌───< 0000:0037      jmp   0x4ca                                 ; fcn.000004da-0x10
│     │││   ; DATA XREF from entry0 @ +0x325
│     │││   ; DATA XREF from fcn.000004da @ 0x4e6
│     ││└─> 0000:003a      call  fcn.00000443                          ; fcn.00000443
│     ││    0000:003d      call  fcn.00000390                          ; fcn.00000390
│     ││┌─< 0000:0040      jae   0x45
│    ┌────< 0000:0042      jmp   0x4ca                                 ; fcn.000004da-0x10
│    │││└─> 0000:0045      call  fcn.0000047c                          ; fcn.0000047c
│    │││    ; DATA XREF from entry0 @ 0x5a
│    │││    ; DATA XREF from fcn.00000520 @ 0x56e
│    │││    0000:0048      call  fcn.00000390                          ; fcn.00000390
│    │││┌─< 0000:004b      jae   0x50
│   ┌─────< 0000:004d      jmp   0x4ca                                 ; fcn.000004da-0x10
│   ││││└─> 0000:0050      call  fcn.00000493                          ; fcn.00000493
│   ││││    ; DATA XREF from fcn.000005f9 @ 0x63f
│   ││││    0000:0053      mov   ah, 0x3e                              ; '>'
│   ││││    ; DATA XREF from fcn.000005f9 @ 0x63b
│   ││││    0000:0055      int   0x21
│   ││││    0000:0057      mov   bx, 0x4000
│   ││││    0000:005a      mov   ah, 0x48                              ; 'H'
│   ││││    0000:005c      int   0x21
│   ││││┌─< 0000:005e      jae   0x7d
│   │││││   0000:0060      cmp   ax, 8
│   │││││   ; DATA XREF from fcn.000003cc @ +0x66
│  ┌──────< 0000:0063      jne   0x71
│  ││││││   0000:0065      mov   dx, 0x6ff                             ; "Not enough memory to run 'ZELIARD'.\r\n$Memory error !!!\r\n$Thank you for playing.\r\n$File Error from $     Error Type : $File"
│  ││││││   0000:0068      mov   ah, 9
│  ││││││   0000:006a      int   0x21
│  ││││││   0000:006c      mov   ax, 0x4c00
│  ││││││   0000:006f      int   0x21
│  └──────> 0000:0071      mov   dx, 0x725                             ; "Memory error !!!\r\n$Thank you for playing.\r\n$File Error from $     Error Type : $File not found.$DISK read Error!!$USER file "
│   │││││   0000:0074      mov   ah, 9
│   │││││   0000:0076      int   0x21
│   │││││   0000:0078      mov   ax, 0x4c00
│   │││││   ; DATA XREF from entry0 @ 0x1e9
│   │││││   0000:007b      int   0x21
│   ││││└─> 0000:007d      mov   word [0x8af], ax
│   ││││    0000:0080      call  fcn.00000385                          ; fcn.00000385
│   ││││    0000:0083      mov   dx, 0x64c                             ; "The Fantasy Action Game ZELIARD Version 1.208\r\nCopyright (C) 1987 ~ 1990 Game Arts Co.,Ltd.\r\nCopyright (C) 1990 Sierra On-Li"
│   ││││    0000:0086      mov   ah, 9
│   ││││    0000:0088      int   0x21
│   ││││    0000:008a      test  byte cs:[0x8e8], 0xff
│   ││││┌─< 0000:0090      je    0xc0
│   │││││   0000:0092      mov   word cs:[0x8c2], sp
│   │││││   0000:0097      mov   word cs:[0x8c4], ss
│   │││││   0000:009c      mov   di, 0x7ed                             ; "G"
│   │││││   0000:009f      mov   dx, 0x7ef                             ; "MTINIT.COM"
│   │││││   0000:00a2      mov   bx, 0x8c6                             ; 2246
│   │││││   0000:00a5      mov   ax, 0x4b00
│   │││││   0000:00a8      int   0x21
│   │││││   0000:00aa      cli
│   │││││   0000:00ab      mov   sp, word cs:[0x8c2]
│   │││││   0000:00b0      mov   ss, word cs:[0x8c4]
│   │││││   0000:00b5      sti
│  ┌──────< 0000:00b6      jae   0xc0
│  ││││││   0000:00b8      call  fcn.00000520                          ; fcn.00000520
│  ││││││   0000:00bb      mov   ax, 0x4c00
│  ││││││   0000:00be      int   0x21
│  └────└─> 0000:00c0      mov   ax, 0x3508
│   ││││    0000:00c3      int   0x21
│   ││││    0000:00c5      mov   word [0x8b1], bx
│   ││││    0000:00c9      mov   word [0x8b3], es
│   ││││    0000:00cd      mov   ax, 0x3509
│   ││││    0000:00d0      int   0x21
│   ││││    0000:00d2      mov   word [0x8b5], bx
│   ││││    0000:00d6      mov   word [0x8b7], es
│   ││││    0000:00da      mov   ax, 0x3560                            ; '`5'
│   ││││    0000:00dd      int   0x21
│   ││││    0000:00df      mov   word [0x8b9], bx
│   ││││    0000:00e3      mov   word [0x8bb], es
│   ││││    0000:00e7      mov   ax, 0x3561                            ; 'a5'
│   ││││    0000:00ea      int   0x21
│   ││││    0000:00ec      mov   word [0x8bd], bx
│   ││││    0000:00f0      mov   word [0x8bf], es
│   ││││    0000:00f4      mov   es, word cs:[0x8af]
│   ││││    0000:00f9      mov   word es:[0xff00], 0x2d9               ; [0x2d9:2]=0xb850
│   ││││    ; DATA XREFS from entry0 @ 0x27c, 0x29f
│   ││││    0000:0100      mov   word es:[0xff02], cs
│   ││││    0000:0105      lds   dx, cs:[0x8b1]
│   ││││    0000:010a      mov   word es:[0xff04], dx
│   ││││    0000:010f      mov   word es:[0xff06], ds
│   ││││    0000:0114      lds   dx, cs:[0x8b5]
│   ││││    0000:0119      mov   word es:[0xff79], dx
│   ││││    0000:011e      mov   word es:[0xff7b], ds
│   ││││    0000:0123      mov   byte es:[0xff16], 0
│   ││││    0000:0129      mov   byte es:[0xff17], 0
│   ││││    0000:012f      mov   word es:[0xff18], 0
│   ││││    0000:0136      mov   byte es:[0xff1d], 0
│   ││││    0000:013c      mov   byte es:[0xff1e], 0
│   ││││    0000:0142      mov   word es:[0xff1f], 0
│   ││││    0000:0149      mov   byte es:[0xff26], 0xff                ; [0xff:1]=2
│   ││││    0000:014f      mov   byte es:[0xff09], 0xff                ; [0xff:1]=2
│   ││││    0000:0155      mov   byte es:[0xff27], 0
│   ││││    0000:015b      mov   byte es:[0xff28], 0
│   ││││    0000:0161      mov   byte es:[0xff0b], 0
│   ││││    0000:0167      mov   byte es:[0xff08], 0
│   ││││    0000:016d      mov   byte es:[0xff75], 0
│   ││││    0000:0173      mov   byte es:[0xff33], 5
│   ││││    0000:0179      mov   byte es:[0xff34], 0
│   ││││    0000:017f      mov   byte es:[0xff38], 0
│   ││││    0000:0185      mov   byte es:[0xff39], 0
│   ││││    0000:018b      mov   byte es:[0xff3a], 0
│   ││││    0000:0191      mov   byte es:[0xff43], 0
│   ││││    0000:0197      mov   byte es:[0xff3c], 0
│   ││││    0000:019d      mov   byte es:[0xff3b], 0
│   ││││    0000:01a3      mov   byte es:[0xff74], 0
│   ││││    0000:01a9      mov   byte es:[0xff40], 0
│   ││││    0000:01af      mov   byte es:[0xff42], 0
│   ││││    0000:01b5      mov   byte es:[0xff78], 0
│   ││││    0000:01bb      mov   al, byte cs:[0x8e9]
│   ││││    0000:01bf      mov   byte es:[0xff0a], al
│   ││││    0000:01c3      mov   al, byte cs:[0x8e8]
│   ││││    0000:01c7      mov   byte es:[0xff15], al
│   ││││    0000:01cb      mov   di, 0xff6c
│   ││││    0000:01ce      xor   al, al
│   ││││    0000:01d0      mov   cx, 8
│   ││││    0000:01d3      rep   stosb byte es:[di], al
│   ││││    0000:01d5      push  cs
│   ││││    0000:01d6      pop   ds
│   ││││    0000:01d7      mov   si, 0x869
│   ││││    0000:01da      mov   di, 0xff6c
│   ││││    0000:01dd      mov   cx, 8
│   ││││┌─> 0000:01e0      lodsb al, byte [si]
│   ││││╎   0000:01e1      cmp   al, 0x2e
│  ┌──────< 0000:01e3      je    0x1f2
│  │││││╎   0000:01e5      cmp   al, 0x61
│ ┌───────< 0000:01e7      jb    0x1ef
│ ││││││╎   0000:01e9      cmp   al, 0x7b
│ ────────< 0000:01eb      jae   0x1ef
│ ││││││╎   0000:01ed      and   al, 0x5f
│ └───────> 0000:01ef      stosb byte es:[di], al
│  │││││└─< 0000:01f0      loop  0x1e0
│  └──────> 0000:01f2      mov   al, byte cs:[0x8e7]
│   ││││    0000:01f6      mov   byte es:[0xff14], al
│   ││││    0000:01fa      mov   ax, word cs:[0x8af]
│   ││││    0000:01fe      add   ax, 0x1000
│   ││││    0000:0201      mov   word es:[0xff2c], ax
│   ││││    0000:0205      push  cs
│   ││││    0000:0206      pop   ds
│   ││││    0000:0207      mov   es, word cs:[0x8af]
│   ││││    0000:020c      mov   di, 0x85a
│   ││││    0000:020f      test  byte [0x8c1], 0xff                    ; [0x8c1:1]=0 ; 255
│   ││││┌─< 0000:0214      je    0x219
│   │││││   0000:0216      mov   di, 0x867
│   ││││└─> 0000:0219      call  fcn.000004ef                          ; fcn.000004ef
│   ││││    0000:021c      mov   es, word cs:[0x8af]
│   ││││    0000:0221      mov   di, 0x806
│   ││││    0000:0224      call  fcn.000004ef                          ; fcn.000004ef
│   ││││    0000:0227      mov   es, word cs:[0x8af]
│   ││││    0000:022c      mov   di, 0x84f
│   ││││    0000:022f      call  fcn.000004ef                          ; fcn.000004ef
│   ││││    0000:0232      mov   es, word cs:[0x8af]
│   ││││    0000:0237      xor   bx, bx
│   ││││    0000:0239      mov   bl, byte [0x8e7]                      ; [0x8e7:1]=0 ; 2279
│   ││││    0000:023d      add   bx, bx
│   ││││    0000:023f      mov   di, word [bx + 0x7fa]
│   ││││    0000:0243      call  fcn.000004ef                          ; fcn.000004ef
│   ││││    0000:0246      mov   ax, word cs:[0x8af]
│   ││││    0000:024a      add   ax, 0xff0                             ; 4080
│   ││││    0000:024d      mov   es, ax
│   ││││    0000:024f      mov   di, 0x889                             ; 2185
│   ││││    0000:0252      call  fcn.000004ef                          ; fcn.000004ef
│   ││││    0000:0255      mov   ax, word cs:[0x8af]
│   ││││    0000:0259      add   ax, 0xff0                             ; 4080
│   ││││    0000:025c      mov   es, ax
│   ││││    0000:025e      mov   di, 0x89b                             ; 2203
│   ││││    0000:0261      call  fcn.000004ef                          ; fcn.000004ef
│   ││││    0000:0264      cli
│   ││││    0000:0265      push  cs
│   ││││    0000:0266      pop   ds
│   ││││    0000:0267      mov   dx, 0x5f8
│   ││││    0000:026a      mov   ax, 0x2523                            ; '#%'
│   ││││    0000:026d      int   0x21
│   ││││    0000:026f      mov   ds, word cs:[0x8af]
│   ││││    0000:0274      mov   dx, 0x103
│   ││││    0000:0277      mov   ax, 0x2508
│   ││││    0000:027a      int   0x21
│   ││││    0000:027c      mov   dx, 0x100
│   ││││    0000:027f      mov   ax, 0x2509
│   ││││    0000:0282      int   0x21
│   ││││    0000:0284      mov   dx, 0x106
│   ││││    0000:0287      mov   ax, 0x2524                            ; '$%'
│   ││││    0000:028a      int   0x21
│   ││││    0000:028c      mov   dx, 0x109
│   ││││    0000:028f      mov   ax, 0x2561                            ; 'a%'
│   ││││    0000:0292      int   0x21
│   ││││    0000:0294      mov   ax, word cs:[0x8af]
│   ││││    0000:0298      mov   es, ax
│   ││││    0000:029a      add   ax, 0xff0                             ; 4080
│   ││││    0000:029d      mov   ds, ax
│   ││││    0000:029f      mov   word es:[0xff0c], 0x100               ; [0x100:2]=0x8c26
│   ││││    0000:02a6      mov   word es:[0xff0e], ds
│   ││││    0000:02ab      mov   word es:[0xff10], 0x1100              ; [0x1100:2]=0xffff
│   ││││    0000:02b2      mov   word es:[0xff12], ds
│   ││││    0000:02b7      mov   dx, 0x103
│   ││││    0000:02ba      mov   ax, 0x2560                            ; '`%' ; int16_t arg3
│   ││││    0000:02bd      int   0x21
│   ││││    0000:02bf      mov   al, 0x36                              ; '6'
│   ││││    0000:02c1      out   0x43, al
│   ││││    0000:02c3      mov   al, 0xb1
│   ││││    0000:02c5      out   0x40, al
│   ││││    0000:02c7      mov   al, 0x13
│   ││││    0000:02c9      out   0x40, al
│   ││││    0000:02cb      sti
│   ││││    0000:02cc      call  fcn.0000057a                          ; fcn.0000057a
│   ││││    0000:02cf      mov   al, byte cs:[0x8c1]
│   ││││    0000:02d3      cwde
└   ││││    0000:02d4      ljmp  cs:[0x8ad]                            ; 2221
```

### Function 0x00000385
```asm
; CALL XREF from entry0 @ 0x80
            ; CALL XREF from entry0 @ +0x2e4
┌ fcn.00000385(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0385      push  dx                                    ; arg2
│       ┌─> 0000:0386      mov   dl, 0xff
│       ╎   0000:0388      mov   ah, 6
│       ╎   0000:038a      int   0x21
│       └─< 0000:038c      jne   0x386
│           0000:038e      pop   dx
└           0000:038f      ret
```

### Function 0x00000390
```asm
; CALL XREFS from entry0 @ 0x27, 0x32, 0x3d, 0x48
┌ fcn.00000390(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0390      push  cs
│           0000:0391      pop   ds
│           0000:0392      mov   dx, 0x8eb
│           0000:0395      mov   byte [0x8ea], 0
│       ┌─> 0000:039a      mov   cx, 1
│       ╎   0000:039d      mov   ah, 0x3f                              ; '?'
│       ╎   0000:039f      int   0x21
│       ╎   0000:03a1      or    ax, ax                                ; arg1
│       ╎   0000:03a3      stc
│      ┌──< 0000:03a4      jne   0x3a7
│      │╎   0000:03a6      ret
│      └──> 0000:03a7      mov   si, dx
│       ╎   0000:03a9      cmp   byte [si], 0x20
│       └─< 0000:03ac      jb    0x39a
│       ┌─> 0000:03ae      inc   byte [0x8ea]
│       ╎   0000:03b2      or    byte [si], 0x20                       ; [0x20:1]=184
│       ╎   0000:03b5      inc   dx
│      ┌──> 0000:03b6      mov   cx, 1
│      ╎╎   0000:03b9      mov   ah, 0x3f                              ; '?'
│      ╎╎   0000:03bb      int   0x21
│      ╎╎   0000:03bd      or    ax, ax                                ; arg1
│      ╎╎   ; DATA XREF from fcn.0000057a @ +0x40
│     ┌───< 0000:03bf      je    0x3ca
│     │╎╎   0000:03c1      mov   si, dx
│     │╎╎   0000:03c3      cmp   byte [si], 0x20
│     │└──< 0000:03c6      je    0x3b6
│     │ └─< 0000:03c8      jae   0x3ae
│     └───> 0000:03ca      clc
└           0000:03cb      ret
```

### Function 0x000003cc
```asm
; CALL XREF from entry0 @ 0x2f
┌ fcn.000003cc();
│           0000:03cc      push  cs
│           0000:03cd      pop   es
│           0000:03ce      call  fcn.000004da                          ; fcn.000004da
│           0000:03d1      dec   cx
│           0000:03d2      cmp   cx, 3
│       ┌─< 0000:03d5      je    0x404
│       │   0000:03d7      cmp   cx, 4
│      ┌──< 0000:03da      je    0x3df
│     ┌───< 0000:03dc      jmp   0x4ca                                 ; fcn.000004da-0x10
│     │└──> 0000:03df      mov   di, 0x429
│     │ │   0000:03e2      mov   cx, 2
│     │┌──> 0000:03e5      push  cx
│     │╎│   0000:03e6      push  si
│     │╎│   0000:03e7      push  di
│     │╎│   0000:03e8      mov   cx, 4
│     │╎│   0000:03eb      repe  cmpsb byte [si], byte ptr es:[di]
│     │╎│   0000:03ed      pop   di
│     │╎│   0000:03ee      pop   si
│     │╎│   0000:03ef      pop   cx
│    ┌────< 0000:03f0      je    0x3fa
│    ││╎│   0000:03f2      add   di, 5
│    ││└──< 0000:03f5      loop  0x3e5
│    ││┌──< 0000:03f7      jmp   0x4ca                                 ; fcn.000004da-0x10
│    └────> 0000:03fa      add   di, 4
│     │││   0000:03fd      mov   al, byte es:[di]
│     │││   0000:0400      mov   byte [0x8e7], al
│     │││   0000:0403      ret
│     ││└─> 0000:0404      mov   di, 0x433
│     ││    0000:0407      mov   cx, 4
│     ││┌─> 0000:040a      push  cx
│     ││╎   0000:040b      push  si
│     ││╎   0000:040c      push  di
│     ││╎   0000:040d      mov   cx, 3
│     ││╎   0000:0410      repe  cmpsb byte [si], byte ptr es:[di]
│     ││╎   0000:0412      pop   di
│     ││╎   0000:0413      pop   si
│     ││╎   0000:0414      pop   cx
│    ┌────< 0000:0415      je    0x41f
│    │││╎   0000:0417      add   di, 4
│    │││└─< 0000:041a      loop  0x40a
│    │││┌─< 0000:041c      jmp   0x4ca                                 ; fcn.000004da-0x10
│    └────> 0000:041f      add   di, 3
│     │││   0000:0422      mov   al, byte es:[di]
│     │││   0000:0425      mov   byte [0x8e7], al
└     │││   0000:0428      ret
```

### Function 0x00000443
```asm
; CALL XREF from entry0 @ 0x3a
┌ fcn.00000443();
│           0000:0443      mov   byte cs:[0x8e8], 0
│           0000:0449      push  cs
│           0000:044a      pop   es
│           0000:044b      call  fcn.000004da                          ; fcn.000004da
│           0000:044e      dec   cx
│           0000:044f      cmp   cx, 0xf
│       ┌─< 0000:0452      jb    0x457
│       │   0000:0454      mov   cx, 0xf
│       └─> 0000:0457      mov   di, 0x88b
│           0000:045a      rep   movsb byte es:[di], byte ptr [si]
│           0000:045c      xor   al, al
│           0000:045e      stosb byte es:[di], al
│           0000:045f      mov   di, 0x88b
│           0000:0462      mov   si, 0x473
│           0000:0465      mov   cx, 9
│           0000:0468      repe  cmpsb byte [si], byte ptr es:[di]
│       ┌─< 0000:046a      je    0x46d
│       │   0000:046c      ret
│       └─> 0000:046d      mov   byte [0x8e8], 0xff                    ; [0xff:1]=2
└           0000:0472      ret
```

### Function 0x0000047c
```asm
; CALL XREF from entry0 @ 0x45
┌ fcn.0000047c();
│           0000:047c      push  cs
│           0000:047d      pop   es
│           0000:047e      call  fcn.000004da                          ; fcn.000004da
│           0000:0481      dec   cx
│           0000:0482      cmp   cx, 0xf
│       ┌─< 0000:0485      jb    0x48a
│       │   0000:0487      mov   cx, 0xf
│       └─> 0000:048a      mov   di, 0x89d
│           0000:048d      rep   movsb byte es:[di], byte ptr [si]
│           0000:048f      xor   al, al
│           0000:0491      stosb byte es:[di], al
└           0000:0492      ret
```

### Function 0x00000493
```asm
; CALL XREF from entry0 @ 0x50
┌ fcn.00000493();
│           0000:0493      push  cs
│           0000:0494      pop   es
│           0000:0495      call  fcn.000004da                          ; fcn.000004da
│           0000:0498      dec   cx
│           0000:0499      cmp   cx, 2
│       ┌─< 0000:049c      je    0x4b4
│       │   0000:049e      cmp   cx, 3
│      ┌──< 0000:04a1      jne   0x4ca                                 ; fcn.000004da-0x10
│      ││   0000:04a3      mov   di, 0x4c5
│      ││   0000:04a6      mov   cx, 3
│      ││   0000:04a9      repe  cmpsb byte [si], byte ptr es:[di]
│     ┌───< 0000:04ab      jne   0x4ca                                 ; fcn.000004da-0x10
│     │││   0000:04ad      mov   byte cs:[0x8e9], 0xff                 ; [0xff:1]=2
│     │││   0000:04b3      ret
│     ││└─> 0000:04b4      mov   di, 0x4c8
│     ││    0000:04b7      mov   cx, 2
│     ││    0000:04ba      repe  cmpsb byte [si], byte ptr es:[di]
│     ││┌─< 0000:04bc      jne   0x4ca                                 ; fcn.000004da-0x10
│     │││   0000:04be      mov   byte cs:[0x8e9], 0
└     │││   0000:04c4      ret
```

### Function 0x000004da
```asm
╎   ; CALL XREF from fcn.000003cc @ 0x3ce
        ╎   ; CALL XREF from fcn.00000443 @ 0x44b
        ╎   ; CALL XREF from fcn.0000047c @ 0x47e
        ╎   ; CALL XREF from fcn.00000493 @ 0x495
┌ fcn.000004da();
│       ╎   0000:04da      push  cs
│       ╎   0000:04db      pop   ds
│       ╎   0000:04dc      mov   si, 0x8eb
│       ╎   0000:04df      xor   cx, cx
│       ╎   0000:04e1      mov   cl, byte [0x8ea]                      ; [0x8ea:1]=0
│      ┌──> 0000:04e5      lodsb al, byte [si]
│      ╎╎   0000:04e6      cmp   al, 0x3a
│     ┌───< 0000:04e8      jne   0x4eb
│     │╎╎   0000:04ea      ret
│     └└──< 0000:04eb      loop  0x4e5
│       └─< 0000:04ed      jmp   0x4ca
```

### Function 0x000004ef
```asm
╎   ; XREFS: CALL 0x00000219  CALL 0x00000224  CALL 0x0000022f  
        ╎   ; XREFS: CALL 0x00000243  CALL 0x00000252  CALL 0x00000261  
┌ fcn.000004ef();
│       ╎   0000:04ef      push  ds
│       ╎   0000:04f0      push  es
│       ╎   0000:04f1      push  di
│       ╎   0000:04f2      mov   dx, di
│       ╎   0000:04f4      add   dx, 2
│       ╎   0000:04f7      mov   ax, 0x3d00
│       ╎   0000:04fa      int   0x21
│      ┌──< 0000:04fc      jb    0x517
│      │╎   0000:04fe      mov   bx, ax
│      │╎   0000:0500      mov   dx, word [di]
│      │╎   0000:0502      mov   cx, 0xffff
│      │╎   0000:0505      push  es
│      │╎   0000:0506      pop   ds
│      │╎   0000:0507      mov   ah, 0x3f                              ; '?'
│      │╎   0000:0509      int   0x21
│     ┌───< 0000:050b      jb    0x517
│     ││╎   0000:050d      mov   ah, 0x3e                              ; '>'
│     ││╎   0000:050f      int   0x21
│    ┌────< 0000:0511      jb    0x517
│    │││╎   0000:0513      pop   di
│    │││╎   0000:0514      pop   es
│    │││╎   0000:0515      pop   ds
│    │││╎   0000:0516      ret
│    └└└──> 0000:0517      pop   di
│       ╎   0000:0518      pop   es
│       ╎   0000:0519      pop   ds
│       ╎   0000:051a      call  fcn.00000520                          ; fcn.00000520
│       └─< 0000:051d      jmp   0x340
```

### Function 0x00000520
```asm
; CALL XREFS from entry0 @ 0x1d, 0xb8
            ; CALL XREF from fcn.000004ef @ 0x51a
┌ fcn.00000520(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0520      push  ds
│           0000:0521      push  es
│           0000:0522      push  di
│           0000:0523      push  cs
│           0000:0524      pop   ds
│           0000:0525      push  ax                                    ; arg1
│           0000:0526      mov   dx, 0x751                             ; "File Error from $     Error Type : $File not found.$DISK read Error!!$USER file nothing.$Error in RESOURCE.CFG\r\n$0001020304050"
│           0000:0529      mov   ah, 9
│           0000:052b      int   0x21
│           0000:052d      pop   ax
│           0000:052e      pop   di
│           0000:052f      pop   es
│           0000:0530      pop   ds
│           0000:0531      push  ax
│           0000:0532      add   di, 2
│           ; CODE XREF from fcn.00000520 @ 0x540
│       ┌─> 0000:0535      mov   dl, byte [di]
│       ╎   0000:0537      or    dl, dl
│      ┌──< 0000:0539      je    0x542
│      │╎   0000:053b      mov   ah, 2
│      │╎   0000:053d      int   0x21
│      │╎   0000:053f      inc   di
│      │└─< 0000:0540      jmp   0x535
│      └──> 0000:0542      pop   bx
│           0000:0543      push  cs
│           0000:0544      pop   ds
│           0000:0545      mov   dx, 0x762                             ; "     Error Type : $File not found.$DISK read Error!!$USER file nothing.$Error in RESOURCE.CFG\r\n$000102030405060708090A0B0C0D0E"
│           0000:0548      mov   ah, 9
│           0000:054a      int   0x21
│           0000:054c      mov   dx, 0x775                             ; "File not found.$DISK read Error!!$USER file nothing.$Error in RESOURCE.CFG\r\n$000102030405060708090A0B0C0D0E0FRESOURCE.CFG"
│           0000:054f      cmp   bx, 2
│       ┌─< 0000:0552      je    0x575
│       │   0000:0554      mov   dx, 0x785                             ; "DISK read Error!!$USER file nothing.$Error in RESOURCE.CFG\r\n$000102030405060708090A0B0C0D0E0FRESOURCE.CFG"
│       │   0000:0557      cmp   bx, 5
│      ┌──< 0000:055a      je    0x575
│      ││   0000:055c      shl   bx, 1
│      ││   0000:055e      mov   dl, byte [bx + 0x7c2]
│      ││   0000:0562      mov   ah, 2
│      ││   0000:0564      int   0x21
│      ││   0000:0566      mov   dl, byte [bx + 0x7c3]
│      ││   0000:056a      mov   ah, 2
│      ││   0000:056c      int   0x21
│      ││   0000:056e      mov   dl, 0x48                              ; 'H'
│      ││   0000:0570      mov   ah, 2
│      ││   0000:0572      int   0x21
│      ││   0000:0574      ret
│      └└─> 0000:0575      mov   ah, 9
│           0000:0577      int   0x21
└           0000:0579      ret
```

### Function 0x0000057a
```asm
; CALL XREF from entry0 @ 0x2cc
┌ fcn.0000057a(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:057a      mov   bl, byte cs:[0x8e7]
│           0000:057f      xor   bh, bh
│           0000:0581      add   bx, bx                                ; arg3
└           0000:0583      jmp   word cs:[bx + 0x588]
```

### Function 0x000005f9
```asm
; CALL XREF from entry0 @ 0x10
┌ fcn.000005f9();
│           0000:05f9      test  byte es:[0x80], 0xff
│       ┌─< 0000:05ff      jne   0x602
│       │   0000:0601      ret
│       └─> 0000:0602      mov   di, 0x869
│           0000:0605      xor   cx, cx
│           0000:0607      mov   cl, byte es:[0x80]
│           0000:060c      mov   si, 0x81
│       ┌─> 0000:060f      cmp   byte es:[si], 0x20
│      ┌──< 0000:0613      jne   0x619
│      │╎   0000:0615      inc   si
│      │└─< 0000:0616      loop  0x60f
│      │    0000:0618      ret
│      └──> 0000:0619      xor   ah, ah
│       ┌─> 0000:061b      mov   al, byte es:[si]
│       ╎   0000:061e      cmp   al, 0x20
│      ┌──< 0000:0620      je    0x62b
│      │╎   0000:0622      cmp   al, 0xd
│     ┌───< 0000:0624      je    0x62b
│     ││╎   0000:0626      mov   ah, 0xff
│     ││╎   0000:0628      mov   byte [di], al
│     ││╎   0000:062a      inc   di
│     └└──> 0000:062b      inc   si
│       └─< 0000:062c      loop  0x61b
│           0000:062e      or    ah, ah
│       ┌─< 0000:0630      jne   0x633
│       │   0000:0632      ret
│       └─> 0000:0633      mov   byte [0x8c1], 0xff                    ; [0xff:1]=2
│           0000:0638      mov   byte [di], 0x2e                       ; '.'
│                                                                      ; [0x2e:1]=4
│           0000:063b      mov   byte [di + 1], 0x55                   ; 'U'
│                                                                      ; [0x55:1]=205
│           0000:063f      mov   byte [di + 2], 0x53                   ; 'S'
│                                                                      ; [0x53:1]=180
│           0000:0643      mov   byte [di + 3], 0x52                   ; 'R'
│                                                                      ; [0x52:1]=4
│           0000:0647      mov   byte [di + 4], 0
└           0000:064b      ret
```

## Cross-References (callers)
```json
  0x00000385:
[{"from":128,"to":901,"type":"CALL"},{"from":740,"to":901,"type":"CALL"}]
  0x00000390:
[{"from":39,"to":912,"type":"CALL"},{"from":50,"to":912,"type":"CALL"},{"from":61,"to":912,"type":"CALL"},{"from":72,"to":912,"type":"CALL"}]
  0x000003cc:
[{"from":47,"to":972,"type":"CALL"}]
  0x00000443:
[{"from":58,"to":1091,"type":"CALL"}]
  0x0000047c:
[{"from":69,"to":1148,"type":"CALL"}]
  0x00000493:
[{"from":80,"to":1171,"type":"CALL"}]
  0x000004da:
[{"from":974,"to":1242,"type":"CALL"},{"from":1099,"to":1242,"type":"CALL"},{"from":1150,"to":1242,"type":"CALL"},{"from":1173,"to":1242,"type":"CALL"}]
  0x000004ef:
[{"from":537,"to":1263,"type":"CALL"},{"from":548,"to":1263,"type":"CALL"},{"from":559,"to":1263,"type":"CALL"},{"from":579,"to":1263,"type":"CALL"},{"from":594,"to":1263,"type":"CALL"},{"from":609,"to":1263,"type":"CALL"}]
  0x00000520:
[{"from":29,"to":1312,"type":"CALL"},{"from":184,"to":1312,"type":"CALL"},{"from":1306,"to":1312,"type":"CALL"}]
  0x0000057a:
[{"from":716,"to":1402,"type":"CALL"}]
  0x000005f9:
[{"from":16,"to":1529,"type":"CALL"}]
```