# VGA_DECOMPRESSOR - Analysis

**Source:** `chunk_07.bin`  
**Size:** 3.8 KB  
**Functions:** 25  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    7 96   -> 56   fcn.00000000
0x000000e4    7 82           fcn.000000e4
0x00000136   14 923  -> 222  fcn.00000136
0x0000013f    7 221          fcn.0000013f
0x0000021c   15 211          fcn.0000021c
0x000003bd    1 3            fcn.000003bd
0x000003c0    5 60           fcn.000003c0
0x000004d1    7 147          fcn.000004d1
0x00000564    4 25           fcn.00000564
0x0000057d    1 4            fcn.0000057d
0x00000581    3 10           fcn.00000581
0x0000058b    3 41           fcn.0000058b
0x000005b4    1 14           fcn.000005b4
0x000005d6    3 38           fcn.000005d6
0x000005fc    5 20           fcn.000005fc
0x0000063c    3 49           fcn.0000063c
0x00000693    3 151          fcn.00000693
0x0000093b    4 29           fcn.0000093b
0x00000958    5 58           fcn.00000958
0x000009b8    3 45           fcn.000009b8
0x000009e5    7 56           fcn.000009e5
0x00000a1d    5 24           fcn.00000a1d
0x00000a3c    1 70           fcn.00000a3c
0x00000a82    8 25           fcn.00000a82
0x00000a9b    1 10           fcn.00000a9b
```

## Strings
```
nth      paddr      vaddr len size section type   string                                       
-----------------------------------------------------------------------------------------------
  0 0x00000004 0x00000004   8    9         ascii  f;(0\0&7
  1 0x00000013 0x00000013   5    5         ascii  3\f6i6
  2 0x00000051 0x00000051  13   14         ibm037 ÓvcF+S1;ßããSW
  3 0x00000132 0x00000132   5    6         utf8   ^\a_À| blocks=Basic Latin,Latin-1 Supplement
  4 0x00000158 0x00000158   8    9         ibm037 6TJ\J\J\
  5 0x0000023d 0x0000023d   4    4         ascii  7\a[\n
  6 0x0000024c 0x0000024c   4    4         ascii  WVS2
  7 0x00000263 0x00000263   8    9         ibm037 6TJ\J\J\
  8 0x000002cf 0x000002cf   4    4         ascii  t\eG&
  9 0x000002f0 0x000002f0   5    5         ascii  2'3b3
 10 0x00000362 0x00000362   6    7         ibm037 ßSIC¾\b
 11 0x000003b1 0x000003b1   7    8         ibm037 ÓvcG+SY
 12 0x0000049e 0x0000049e   4    4         ascii  ;\et\f
 13 0x0000061e 0x0000061e   6    6         ascii  06(6 6
 14 0x00000718 0x00000718   4    4         utf8   JGGY
 15 0x00000770 0x00000770  13   14         ibm037 uuuu;cF&ÚHÍW½
 16 0x00000800 0x00000800  13   14         ibm037 uuuu;cF&ÚHÍW½
 17 0x00000886 0x00000886   8    9         ibm037 ÓvcG+SZ;
 18 0x00000902 0x00000902   4    4         ascii  VWW2
 19 0x00000979 0x00000979   6    7         ascii  &\b=&\b]
 20 0x000009ed 0x000009ed   9    9         ibm037 UJ\J\J\J\
 21 0x00000a10 0x00000a10   6    7         ascii  &\b%&\bE
 22 0x00000a1a 0x00000a1a   4    4         ibm037 SUC×
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(short unsigned int arg3, int16_t arg_c33h);
│           ; arg short unsigned int arg3 @ bx
│           ; arg int16_t arg_c33h @ stack + 0xc33
│           0000:0000      dec   sp
│           ; DATA XREF from fcn.000009e5 @ 0xa03
│           0000:0001      sldt  word [bx + si]
│           0000:0004      cmp   ebp, dword [bx + si]                  ; arg3
│           0000:0007      xor   byte [si + 0x30], bl
│           0000:000a      aaa
│       ┌─< 0000:000c      jg    0x45
│       │   0000:000e      mov   bh, 0x37                              ; '7'
│       │   ; DATA XREFS from fcn.00000693 @ +0x10a, +0x198
│       │   0000:0010      push  cs
│       │   0000:0011      cmp   byte [bp + 0xc33], dh
│       │   0000:0015      imul  si, word ss:[0x35d2], 0x3844
        │   ; DATA XREF from fcn.00000000 @ +0x41
..
        │   ; DATA XREFS from fcn.00000693 @ +0x115, +0x1a3
        │   ; DATA XREF from fcn.000004d1 @ 0x4d7
        │   ; XREFS: DATA 0x00000178  DATA 0x00000271  DATA 0x000003c9  
        │   ; XREFS: DATA 0x000005dd  DATA 0x0000064f  DATA 0x00000677  
        │   ; XREFS: DATA 0x0000084a  
        │   ; DATA XREFS from fcn.00000693 @ +0xd5, +0x165
        │   ; DATA XREF from fcn.00000a9b @ +0xf3
│      ┌──> 0000:0044      push  cx
│      ╎└─> 0000:0045      push  si
│      ╎    0000:0046      mov   cx, 0x18
│      ╎┌─> 0000:0049      mov   al, 0
│      ╎╎   0000:004b      out   dx, al
│      ╎╎   0000:004c      movsw word es:[di], word ptr [si]
│      ╎╎   0000:004d      dec   si
│      ╎╎   ; XREFS: DATA 0x00000053  DATA 0x00000194  DATA 0x000001e3  
│      ╎╎   ; XREFS: DATA 0x00000321  DATA 0x0000035c  DATA 0x0000038e  
│      ╎╎   ; XREFS: DATA 0x000003b3  DATA 0x0000058b  DATA 0x00000888  
│      ╎╎   ; XREFS: DATA 0x000008b4  
│      ╎╎   0000:004e      dec   si
│      ╎╎   0000:004f      mov   al, 2
│      ╎╎   0000:0051      out   dx, al
│      ╎╎   0000:0052      movsw word es:[di], word ptr [si]
│      ╎╎   0000:0053      add   si, 0x4e
│      ╎└─< 0000:0056      loop  0x49
│      ╎    0000:0058      pop   si
│      ╎    0000:0059      pop   cx
│      ╎    0000:005a      inc   si
│      ╎    0000:005b      inc   si
│      └──< 0000:005c      loop  0x44
│           0000:005e      pop   ds
└           0000:005f      ret
```

### Function 0x000000e4
```asm
; CALL XREF from fcn.00000000 @ +0x90
┌ fcn.000000e4(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:00e4      cmp   byte [0x3bb3], 0x1b                   ; [0x3bb3:1]=255
│       ┌─< 0000:00e9      jne   0xec
│       │   0000:00eb      ret
│       └─> 0000:00ec      mov   al, byte [0x83]                       ; [0x83:1]=131
│           0000:00ef      cmp   byte [0x3bb3], al                     ; [0x3bb3:1]=255
│       ┌─< 0000:00f3      je    0xf6
│       │   0000:00f5      ret
│       └─> 0000:00f6      push  di
│           0000:00f7      push  es
│           0000:00f8      push  si
│           0000:00f9      push  ds
│           0000:00fa      mov   al, byte [0x83]                       ; [0x83:1]=131
│           ; DATA XREFS from fcn.00000564 @ 0x56a, 0x578
│           0000:00fd      add   al, al
│           ; DATA XREF from fcn.0000021c @ 0x2d5
│           ; DATA XREF from fcn.00000136 @ 0x4b4
│           ; DATA XREF from fcn.000004d1 @ 0x55e
│           ; DATA XREF from fcn.0000063c @ 0x640
│           ; DATA XREF from fcn.00000a1d @ 0xa2d
│           0000:00ff      xor   ah, ah
│           0000:0101      mov   di, ax                                ; arg1
│           0000:0103      add   di, 0x24ec
│           0000:0107      mov   ax, 0xa000
│           0000:010a      mov   es, ax
│           0000:010c      mov   ds, ax
│           0000:010e      mov   si, 0x3e80
│           0000:0111      mov   dx, 0x3c4
│           0000:0114      mov   ax, 0x702
│           0000:0117      out   dx, ax
│           0000:0118      mov   dx, 0x3ce
│           0000:011b      mov   ax, 0x105
│           0000:011e      out   dx, ax
│           0000:011f      mov   cx, 2
│       ┌─> 0000:0122      push  cx
│       ╎   0000:0123      call  fcn.0000058b                          ; fcn.0000058b
│       ╎   0000:0126      add   di, 0xf882
│       ╎   0000:012a      pop   cx
│       └─< 0000:012b      loop  0x122
│           0000:012d      mov   ax, 5
│           0000:0130      out   dx, ax
│           0000:0131      pop   ds
│           0000:0132      pop   si
│           0000:0133      pop   es
│           0000:0134      pop   di
└           0000:0135      ret
```

### Function 0x00000136
```asm
; CALL XREF from fcn.00000000 @ +0xc0
┌ fcn.00000136(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0136      cmp   byte [si - 1], 0xfd
│       ┌─< 0000:013a      jne   fcn.0000013f                          ; fcn.0000013f
│      ┌──< 0000:013c      jmp   0x3fc
       ││   ; CALL XREFS from fcn.00000000 @ +0xb0, +0xb8, +0xc8, +0xd0
       ││   ; CODE XREF from fcn.0000021c @ 0x244
..
│     ╎│    ; DATA XREF from fcn.00000693 @ +0x211
│     ╎│    ; DATA XREF from fcn.00000693 @ 0x69d
│     ╎│    ; DATA XREF from fcn.00000a9b @ +0xe2
      ╎│    ; CALL XREFS from fcn.00000000 @ +0x98, +0xa0, +0xa8
│  │ │ ││   ; CODE XREF from fcn.0000021c @ 0x2e4
       │    ; CALL XREF from fcn.00000136 @ 0x439
       │    ; CALL XREF from fcn.000004d1 @ 0x501
│     ╎│╎   ; DATA XREF from fcn.00000a3c @ 0xa5f
│      │    ; CODE XREF from fcn.00000136 @ 0x13c
│      └──> 0000:03fc      push  ds                                    ; arg4
│           0000:03fd      push  si
│           0000:03fe      push  es
│           0000:03ff      push  di
│           0000:0400      mov   di, 0x3bb5
│           0000:0403      movsw word es:[di], word ptr [si]
│           0000:0404      add   si, 5
│           0000:0407      movsw word es:[di], word ptr [si]
│           0000:0408      movsb byte es:[di], byte ptr [si]
│           0000:0409      mov   dl, byte cs:[0x3bb3]
│           0000:040e      add   dl, 4
│           0000:0411      xor   dh, dh
│           0000:0413      add   dx, word cs:[0x80]                    ; arg2
│           0000:0418      mov   word [0x3bba], dx                     ; [0x3bba:2]=0xffff ; arg2
│           0000:041c      call  fcn.00000564                          ; fcn.00000564
│           0000:041f      mov   byte es:[0x3bb4], al
│           0000:0423      cmp   byte es:[0x3bb7], 0xfd
│       ┌─< 0000:0429      jne   0x433
│       │   0000:042b      inc   dx
│       │   0000:042c      call  fcn.00000564                          ; fcn.00000564
│       │   0000:042f      mov   byte es:[0x3bb7], al
│       └─> 0000:0433      mov   si, 0x3bb4
│           0000:0436      mov   di, 0x3ee0
│           0000:0439      call  fcn.000003bd                          ; fcn.000003bd
│           0000:043c      mov   si, word cs:[0xc00f]
│       ┌─> 0000:0441      call  fcn.000005fc                          ; fcn.000005fc
│       ╎   0000:0444      or    bl, bl
│      ┌──< 0000:0446      je    0x45a
│      │╎   0000:0448      push  si
│      │╎   0000:0449      push  bx
│      │╎   0000:044a      call  fcn.000005d6                          ; fcn.000005d6
│      │╎   0000:044d      pop   bx
│      │╎   0000:044e      mov   es, word cs:[0xff2c]
│      │╎   0000:0453      mov   si, 0x3bb4
│      │╎   0000:0456      call  fcn.000005b4                          ; fcn.000005b4
│      │╎   0000:0459      pop   si
│      └──> 0000:045a      add   si, 8
│       ╎   0000:045d      cmp   word [si], 0xffff
│       └─< 0000:0460      jne   0x441
│           0000:0462      pop   di
│           0000:0463      pop   es
│           0000:0464      mov   ch, byte es:[di - 1]
│           0000:0468      mov   cl, byte es:[di + 7]
│           ; DATA XREF from fcn.00000693 @ +0x195
│           ; DATA XREF from fcn.00000a9b @ +0xe6
│           0000:046c      push  es
│           0000:046d      push  di
│           0000:046e      push  cx
│           0000:046f      mov   di, word cs:[0x3bb1]
│           0000:0474      add   di, 0xc80
│           0000:0478      push  di
│           0000:0479      mov   si, 0x3ee0
│           0000:047c      mov   ax, 0xa000
│           0000:047f      mov   es, ax
│           0000:0481      mov   ds, ax
│           0000:0483      mov   dx, 0x3c4
│           0000:0486      mov   ax, 0x702
│           0000:0489      out   dx, ax
│           0000:048a      mov   dx, 0x3ce
│           0000:048d      mov   ax, 0x105
│           0000:0490      out   dx, ax
│           0000:0491      inc   ch
│       ┌─< 0000:0493      je    0x498
│       │   0000:0495      call  fcn.0000058b                          ; fcn.0000058b
│       └─> 0000:0498      pop   di
│           0000:0499      pop   cx
│           0000:049a      cmp   byte cs:[0x3bb3], 0x1b
│       ┌─< 0000:04a0      je    0x4ae
│       │   0000:04a2      mov   si, 0x3f10
│       │   0000:04a5      inc   di
│       │   0000:04a6      inc   di
│       │   0000:04a7      inc   cl
│      ┌──< 0000:04a9      je    0x4ae
│      ││   0000:04ab      call  fcn.0000058b                          ; fcn.0000058b
│      └└─> 0000:04ae      mov   ax, 5
│           0000:04b1      out   dx, ax
│           0000:04b2      pop   di
│           0000:04b3      pop   es
│           0000:04b4      mov   al, 0xff
│           0000:04b6      mov   byte es:[di - 1], 0xfe                ; [0xfe:1]=192
│           0000:04bb      mov   byte es:[di], al
│           0000:04be      mov   byte es:[di + 1], al
│           0000:04c2      mov   byte es:[di + 7], al
│           0000:04c6      mov   byte es:[di + 8], al
│           0000:04ca      mov   byte es:[di + 9], al
│           0000:04ce      pop   si
│           0000:04cf      pop   ds
└           0000:04d0      ret
```

### Function 0x0000013f
```asm
; CALL XREFS from fcn.00000000 @ +0xb0, +0xb8, +0xc8, +0xd0
            ; CODE XREF from fcn.0000021c @ 0x244
┌ fcn.0000013f(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:013f      mov   al, byte [di - 1]
│           0000:0142      mov   byte [di - 1], 0xfe                   ; [0xfe:1]=192
│           0000:0146      inc   al
│       ┌─< 0000:0148      jne   0x14b
│       │   0000:014a      ret
│       └─> 0000:014b      dec   di
│           0000:014c      dec   si
│           0000:014d      mov   dl, byte [si]
│           0000:014f      movsb byte es:[di], byte ptr [si]
│           0000:0150      push  es
│           0000:0151      push  ds
│           0000:0152      push  di
│           0000:0153      push  si
│           0000:0154      push  bx                                    ; arg3
│           0000:0155      mov   ax, 0x50                              ; 'P'
│           0000:0158      mul   bl
│           0000:015a      shl   ax, 1
│           0000:015c      shl   ax, 1
│           0000:015e      shl   ax, 1
│           0000:0160      add   ax, word [0x3bb1]                     ; [0x3bb1:2]=0xffff
│           0000:0164      mov   di, ax
│           0000:0166      mov   bl, dl
│           0000:0168      xor   bh, bh
│           0000:016a      add   bx, bx                                ; arg3
│           0000:016c      test  word [bx + 0x3d4c], 0xffff            ; arg3
│       ┌─< 0000:0172      jne   0x1ca
│       │   0000:0174      mov   word [bx + 0x3d4c], di                ; arg3
│       │   0000:0178      mov   ax, 0x30                              ; '0'
│       │   0000:017b      mul   dl
│       │   0000:017d      mov   si, ax
│       │   0000:017f      add   si, 0x8100
│       │   0000:0183      mov   dx, 0x3c4
│       │   0000:0186      mov   al, 2
│       │   0000:0188      out   dx, al
│       │   0000:0189      inc   dx
│       │   0000:018a      mov   ds, word cs:[0xff2c]
│       │   0000:018f      mov   ax, 0xa000
│       │   0000:0192      mov   es, ax
│       │   0000:0194      mov   bx, 0x4e                              ; 'N'
│       │   0000:0197      mov   cx, 4
│      ┌──> 0000:019a      mov   al, 1
│      ╎│   0000:019c      out   dx, al
│      ╎│   0000:019d      movsw word es:[di], word ptr [si]
│      ╎│   0000:019e      mov   al, 2
│      ╎│   0000:01a0      out   dx, al
│      ╎│   0000:01a1      lodsw ax, word [si]
│      ╎│   0000:01a2      mov   word es:[di - 2], ax
│      ╎│   0000:01a6      dec   di
│      ╎│   0000:01a7      dec   di
│      ╎│   0000:01a8      mov   al, 4
│      ╎│   0000:01aa      out   dx, al
│      ╎│   0000:01ab      movsw word es:[di], word ptr [si]
│      ╎│   0000:01ac      add   di, bx
│      ╎│   0000:01ae      mov   al, 1
│      ╎│   0000:01b0      out   dx, al
│      ╎│   0000:01b1      movsw word es:[di], word ptr [si]
│      ╎│   0000:01b2      mov   al, 2
│      ╎│   0000:01b4      out   dx, al
│      ╎│   0000:01b5      lodsw ax, word [si]
│      ╎│   0000:01b6      mov   word es:[di - 2], ax
│      ╎│   0000:01ba      dec   di
│      ╎│   0000:01bb      dec   di
│      ╎│   0000:01bc      mov   al, 4
│      ╎│   0000:01be      out   dx, al
│      ╎│   0000:01bf      movsw word es:[di], word ptr [si]
│      ╎│   0000:01c0      add   di, bx
│      └──< 0000:01c2      loop  0x19a
│       │   0000:01c4      pop   bx
│       │   0000:01c5      pop   si
│       │   0000:01c6      pop   di
│       │   0000:01c7      pop   ds
│       │   0000:01c8      pop   es
│       │   0000:01c9      ret
│       └─> 0000:01ca      mov   si, word [bx + 0x3d4c]                ; arg3
│           0000:01ce      mov   dx, 0x3c4
│           0000:01d1      mov   ax, 0x702
│           0000:01d4      out   dx, ax
│           0000:01d5      mov   dx, 0x3ce
│           0000:01d8      mov   ax, 0x105
│           0000:01db      out   dx, ax
│           0000:01dc      mov   ax, 0xa000
│           0000:01df      mov   es, ax
│           0000:01e1      mov   ds, ax
│           0000:01e3      mov   bx, 0x4e                              ; 'N'
│           0000:01e6      movsb byte es:[di], byte ptr [si]
│           0000:01e7      movsb byte es:[di], byte ptr [si]
│           0000:01e8      add   di, bx
│           0000:01ea      add   si, bx
│           0000:01ec      movsb byte es:[di], byte ptr [si]
│           0000:01ed      movsb byte es:[di], byte ptr [si]
│           0000:01ee      add   di, bx
│           0000:01f0      add   si, bx
│           0000:01f2      movsb byte es:[di], byte ptr [si]
│           0000:01f3      movsb byte es:[di], byte ptr [si]
│           0000:01f4      add   di, bx
│           0000:01f6      add   si, bx
│           0000:01f8      movsb byte es:[di], byte ptr [si]
│           0000:01f9      movsb byte es:[di], byte ptr [si]
│           0000:01fa      add   di, bx
│           0000:01fc      add   si, bx
│           0000:01fe      movsb byte es:[di], byte ptr [si]
│           0000:01ff      movsb byte es:[di], byte ptr [si]
│           0000:0200      add   di, bx
│           ; DATA XREF from fcn.00000693 @ +0x211
│           0000:0202      add   si, bx
│           0000:0204      movsb byte es:[di], byte ptr [si]
│           ; DATA XREF from fcn.00000693 @ 0x69d
│           ; DATA XREF from fcn.00000a9b @ +0xe2
│           0000:0205      movsb byte es:[di], byte ptr [si]
│           0000:0206      add   di, bx
│           0000:0208      add   si, bx
│           0000:020a      movsb byte es:[di], byte ptr [si]
│           0000:020b      movsb byte es:[di], byte ptr [si]
│           0000:020c      add   di, bx
│           0000:020e      add   si, bx
│           0000:0210      movsb byte es:[di], byte ptr [si]
│           0000:0211      movsb byte es:[di], byte ptr [si]
│           0000:0212      mov   ax, 5
│           0000:0215      out   dx, ax
│           0000:0216      pop   bx
│           0000:0217      pop   si
│           0000:0218      pop   di
│           0000:0219      pop   ds
│           0000:021a      pop   es
└           0000:021b      ret
```

### Function 0x0000021c
```asm
╎   ; CALL XREFS from fcn.00000000 @ +0x98, +0xa0, +0xa8
┌ fcn.0000021c(int16_t arg1, int16_t arg3);
│       ╎   ; arg int16_t arg1 @ ax
│       ╎   ; arg int16_t arg3 @ bx
│       ╎   0000:021c      mov   al, byte [di - 1]
│       ╎   0000:021f      mov   byte [di - 1], 0xfe                   ; [0xfe:1]=192
│       ╎   0000:0223      inc   al
│      ┌──< 0000:0225      jne   0x228
│      │╎   0000:0227      ret
│      └──> 0000:0228      push  bx                                    ; arg3
│       ╎   0000:0229      push  es
│       ╎   0000:022a      mov   dl, byte [si - 1]
│       ╎   0000:022d      mov   bl, dl
│       ╎   0000:022f      xor   bh, bh
│       ╎   0000:0231      mov   es, word cs:[0xff2c]
│       ╎   0000:0236      add   bx, word es:[0x8000]                  ; arg3
│       ╎   0000:023b      mov   dh, byte es:[bx]                      ; arg3
│       ╎   0000:023e      pop   es
│       ╎   0000:023f      pop   bx
│       ╎   0000:0240      or    dh, dh
│      ┌──< 0000:0242      jne   0x247
│      │└─< 0000:0244      jmp   fcn.0000013f                          ; fcn.0000013f
│      └──> 0000:0247      dec   di
│           0000:0248      dec   si
│           0000:0249      movsb byte es:[di], byte ptr [si]
│           0000:024a      push  es
│           0000:024b      push  ds
│           0000:024c      push  di
│           0000:024d      push  si
│           0000:024e      push  bx
│           0000:024f      xor   ah, ah
│           0000:0251      mov   al, dh
│           0000:0253      dec   al
│           0000:0255      and   al, 3
│           0000:0257      add   al, al
│           0000:0259      mov   di, ax                                ; arg1
│           0000:025b      mov   ax, word [di + 0x32eb]
│           0000:025f      push  ax
│           0000:0260      mov   ax, 0x50                              ; 'P'
│           0000:0263      mul   bl
│           0000:0265      shl   ax, 1
│           0000:0267      shl   ax, 1
│           0000:0269      shl   ax, 1
│           0000:026b      add   ax, word [0x3bb1]                     ; [0x3bb1:2]=0xffff
│           0000:026f      mov   di, ax
│           0000:0271      mov   ax, 0x30                              ; '0'
│           0000:0274      mul   dl
│           0000:0276      mov   si, ax
│           0000:0278      add   si, 0x8100
│           0000:027c      mov   ax, 0x60                              ; '`'
│           0000:027f      mul   byte [0x3bb3]
│           0000:0283      shl   bl, 1
│           0000:0285      shl   bl, 1
│           0000:0287      shl   bl, 1
│           0000:0289      shl   bl, 1
│           0000:028b      shl   bl, 1
│           0000:028d      xor   bh, bh
│           0000:028f      add   bx, ax
│           0000:0291      add   bx, 0xa000
│           0000:0295      mov   bp, bx
│           0000:0297      mov   dx, 0x3c4
│           0000:029a      mov   al, 2
│           0000:029c      out   dx, al
│           0000:029d      inc   dx
│           0000:029e      mov   ds, word cs:[0xff2c]
│           0000:02a3      mov   ax, 0xa000
│           0000:02a6      mov   es, ax
│           0000:02a8      pop   ax
│           0000:02a9      call  ax
│           0000:02ab      pop   bx
│           0000:02ac      pop   si
│           0000:02ad      pop   di
│           0000:02ae      pop   ds
│           0000:02af      pop   es
│           0000:02b0      mov   ah, byte [di - 1]
│           0000:02b3      or    ah, ah
│       ┌─< 0000:02b5      jne   0x2b8
│       │   0000:02b7      ret
│       └─> 0000:02b8      cmp   ah, 0x19
│       ┌─< 0000:02bb      jb    0x2be
│       │   0000:02bd      ret
│       └─> 0000:02be      push  di
│           0000:02bf      push  es
│           0000:02c0      mov   es, word cs:[0xff2c]
│           0000:02c5      mov   di, word es:[0x8004]
│           0000:02ca      mov   cl, byte es:[di]
│           0000:02cd      or    cl, cl
│       ┌─< 0000:02cf      je    0x2ec
│       │   0000:02d1      inc   di
│      ┌──> 0000:02d2      mov   al, byte es:[di]
│      ╎│   0000:02d5      cmp   al, 0xff
│     ┌───< 0000:02d7      je    0x2ec
│     │╎│   0000:02d9      cmp   ah, al
│    ┌────< 0000:02db      jne   0x2e6
│    ││╎│   0000:02dd      mov   al, byte es:[di + 1]
│    ││╎│   0000:02e1      mov   byte [si - 1], al
│   ┌─────< 0000:02e4      jmp   0x2ec
│   │└────> 0000:02e6      inc   di
│   │ │╎│   0000:02e7      inc   di
│   │ │╎│   0000:02e8      dec   cl
│   │ │└──< 0000:02ea      jne   0x2d2
│   │ │ │   ; CODE XREF from fcn.0000021c @ 0x2e4
│   └─└─└─> 0000:02ec      pop   es
│           0000:02ed      pop   di
└           0000:02ee      ret
```

### Function 0x000003bd
```asm
; CALL XREF from fcn.00000136 @ 0x439
┌ fcn.000003bd();
└           0000:03bd      mov   cx, 6
```

### Function 0x000003c0
```asm
; CALL XREF from fcn.000004d1 @ 0x501
┌ fcn.000003c0(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:03c0      mov   ax, 0xa000
│           0000:03c3      mov   es, ax
│       ┌─> 0000:03c5      push  cx                                    ; arg4
│       ╎   0000:03c6      lodsb al, byte [si]
│       ╎   0000:03c7      push  ds
│       ╎   0000:03c8      push  si
│       ╎   0000:03c9      mov   cl, 0x30                              ; '0'
│       ╎   0000:03cb      mul   cl
│       ╎   0000:03cd      mov   si, ax
│       ╎   0000:03cf      add   si, 0x8100
│       ╎   0000:03d3      mov   ds, word cs:[0xff2c]
│       ╎   0000:03d8      mov   dx, 0x3c4
│       ╎   0000:03db      mov   al, 2
│       ╎   0000:03dd      out   dx, al
│       ╎   0000:03de      inc   dx
│       ╎   0000:03df      mov   cx, 8
│      ┌──> 0000:03e2      mov   al, 1
│      ╎╎   0000:03e4      out   dx, al
│      ╎╎   0000:03e5      movsw word es:[di], word ptr [si]
│      ╎╎   0000:03e6      mov   al, 2
│      ╎╎   ; DATA XREF from fcn.00000a3c @ 0xa5f
│      ╎╎   0000:03e8      out   dx, al
│      ╎╎   0000:03e9      lodsw ax, word [si]
│      ╎╎   0000:03ea      mov   word es:[di - 2], ax
│      ╎╎   0000:03ee      dec   di
│      ╎╎   0000:03ef      dec   di
│      ╎╎   0000:03f0      mov   al, 4
│      ╎╎   0000:03f2      out   dx, al
│      ╎╎   0000:03f3      movsw word es:[di], word ptr [si]
│      └──< 0000:03f4      loop  0x3e2
│       ╎   0000:03f6      pop   si
│       ╎   0000:03f7      pop   ds
│       ╎   0000:03f8      pop   cx
│       └─< 0000:03f9      loop  0x3c5
└           0000:03fb      ret
```

### Function 0x000004d1
```asm
; CALL XREF from fcn.00000000 @ +0x76
┌ fcn.000004d1();
│           0000:04d1      push  es
│           0000:04d2      push  ds
│           0000:04d3      mov   si, word [0xff2a]
│           0000:04d7      add   si, 0x25
│           0000:04da      mov   di, 0x3bb4
│           0000:04dd      movsw word es:[di], word ptr [si]
│           0000:04de      movsb byte es:[di], byte ptr [si]
│           0000:04df      mov   dx, word [0x80]                       ; [0x80:2]=0x2a36
│           0000:04e3      add   dx, 3
│           0000:04e6      mov   word [0x3bba], dx                     ; [0x3bba:2]=0xffff
│           0000:04ea      cmp   byte [0x3bb4], 0xfd                   ; [0x3bb4:1]=255
│       ┌─< 0000:04ef      jne   0x4f8
│       │   0000:04f1      inc   dx
│       │   0000:04f2      call  fcn.00000564                          ; fcn.00000564
│       │   0000:04f5      mov   byte [0x3bb4], al                     ; [0x3bb4:1]=255
│       └─> 0000:04f8      mov   si, 0x3bb4
│           0000:04fb      mov   di, 0x3ee0
│           0000:04fe      mov   cx, 3
│           0000:0501      call  fcn.000003c0                          ; fcn.000003c0
│           0000:0504      mov   si, word cs:[0xc00f]
│       ┌─> 0000:0509      call  fcn.000005fc                          ; fcn.000005fc
│       ╎   0000:050c      or    bl, bl
│      ┌──< 0000:050e      je    0x52f
│      │╎   0000:0510      push  si
│      │╎   0000:0511      dec   bl
│      │╎   0000:0513      mov   al, 3
│      │╎   0000:0515      mul   bl
│      │╎   0000:0517      push  ax
│      │╎   0000:0518      call  fcn.000005d6                          ; fcn.000005d6
│      │╎   0000:051b      pop   ax                                    ; int16_t arg1
│      │╎   0000:051c      add   di, ax
│      │╎   0000:051e      mov   bp, di
│      │╎   0000:0520      mov   es, word cs:[0xff2c]
│      │╎   0000:0525      mov   si, 0x3bb4
│      │╎   0000:0528      mov   di, 0x3ee0
│      │╎   0000:052b      call  fcn.0000063c                          ; fcn.0000063c
│      │╎   0000:052e      pop   si
│      └──> 0000:052f      add   si, 8
│       ╎   0000:0532      cmp   word [si], 0xffff
│       └─< 0000:0535      jne   0x509
│           0000:0537      mov   di, 0x24ec
│           0000:053a      mov   si, 0x3ee0
│           0000:053d      mov   ax, 0xa000
│           0000:0540      mov   es, ax
│           0000:0542      mov   ds, ax
│           0000:0544      mov   dx, 0x3c4
│           0000:0547      mov   ax, 0x702
│           0000:054a      out   dx, ax
│           0000:054b      mov   dx, 0x3ce
│           0000:054e      mov   ax, 0x105
│           0000:0551      out   dx, ax
│           0000:0552      call  fcn.0000058b                          ; fcn.0000058b
│           0000:0555      mov   ax, 5
│           0000:0558      out   dx, ax
│           0000:0559      pop   ds
│           0000:055a      pop   es
│           0000:055b      mov   di, 0xe005
│           0000:055e      mov   al, 0xff
│           0000:0560      stosb byte es:[di], al
│           0000:0561      stosb byte es:[di], al
│           0000:0562      stosb byte es:[di], al
└           0000:0563      ret
```

### Function 0x00000564
```asm
; CALL XREFS from fcn.00000136 @ 0x41c, 0x42c
            ; CALL XREF from fcn.000004d1 @ 0x4f2
┌ fcn.00000564();
│           0000:0564      call  fcn.0000057d                          ; fcn.0000057d
│           0000:0567      mov   al, byte [si + 3]
│           0000:056a      cmp   al, 0xfd
│       ┌─< 0000:056c      je    0x56f
│       │   0000:056e      ret
│      ┌└─> 0000:056f      add   si, 8
│      ╎    0000:0572      call  fcn.00000581                          ; fcn.00000581
│      ╎    0000:0575      mov   al, byte [si + 3]
│      ╎    0000:0578      cmp   al, 0xfd
│      └──< 0000:057a      je    0x56f
└           0000:057c      ret
```

### Function 0x0000057d
```asm
; CALL XREF from fcn.00000564 @ 0x564
┌ fcn.0000057d(int16_t arg2);
│           ; arg int16_t arg2 @ dx
└           0000:057d      mov   si, word [0xc00f]
```

### Function 0x00000581
```asm
; CALL XREF from fcn.00000564 @ 0x572
            ; CODE XREF from fcn.00000581 @ 0x589
┌ fcn.00000581(short unsigned int arg2);
│           ; arg short unsigned int arg2 @ dx
│       ┌─> 0000:0581      cmp   dx, word [si]                         ; arg2
│      ┌──< 0000:0583      jne   0x586
│      │╎   0000:0585      ret
│      └──> 0000:0586      add   si, 8
└       └─< 0000:0589      jmp   fcn.00000581
```

### Function 0x0000058b
```asm
; CALL XREF from fcn.000000e4 @ 0x123
            ; CALL XREFS from fcn.00000136 @ 0x495, 0x4ab
            ; CALL XREF from fcn.000004d1 @ 0x552
┌ fcn.0000058b();
│           0000:058b      mov   bx, 0x4e                              ; 'N'
│           0000:058e      mov   cx, 3
│       ┌─> 0000:0591      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0592      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0593      add   di, bx
│       ╎   0000:0595      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0596      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0597      add   di, bx
│       ╎   0000:0599      movsb byte es:[di], byte ptr [si]
│       ╎   0000:059a      movsb byte es:[di], byte ptr [si]
│       ╎   0000:059b      add   di, bx
│       ╎   0000:059d      movsb byte es:[di], byte ptr [si]
│       ╎   0000:059e      movsb byte es:[di], byte ptr [si]
│       ╎   0000:059f      add   di, bx
│       ╎   0000:05a1      movsb byte es:[di], byte ptr [si]
│       ╎   0000:05a2      movsb byte es:[di], byte ptr [si]
│       ╎   0000:05a3      add   di, bx
│       ╎   0000:05a5      movsb byte es:[di], byte ptr [si]
│       ╎   0000:05a6      movsb byte es:[di], byte ptr [si]
│       ╎   0000:05a7      add   di, bx
│       ╎   0000:05a9      movsb byte es:[di], byte ptr [si]
│       ╎   0000:05aa      movsb byte es:[di], byte ptr [si]
│       ╎   0000:05ab      add   di, bx
│       ╎   0000:05ad      movsb byte es:[di], byte ptr [si]
│       ╎   0000:05ae      movsb byte es:[di], byte ptr [si]
│       ╎   0000:05af      add   di, bx
│       └─< 0000:05b1      loop  0x591
└           0000:05b3      ret
```

### Function 0x000005b4
```asm
; CALL XREF from fcn.00000136 @ 0x456
┌ fcn.000005b4(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:05b4      mov   bp, di
│           0000:05b6      dec   bl
│           0000:05b8      xor   bh, bh
│           0000:05ba      add   bx, bx                                ; arg3
│           0000:05bc      call  word cs:[bx + 0x35be]
└           0000:05c1      ret
```

### Function 0x000005d6
```asm
; CALL XREF from fcn.00000136 @ 0x44a
            ; CALL XREF from fcn.000004d1 @ 0x518
┌ fcn.000005d6(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:05d6      mov   al, byte [si + 2]
│           0000:05d9      mov   ch, al
│           0000:05db      and   al, 0x7f
│           0000:05dd      mov   cl, 0x30                              ; '0'
│           0000:05df      mul   cl
│           0000:05e1      add   ax, 0x4000                            ; arg1
│           0000:05e4      mov   di, ax                                ; arg1
│           0000:05e6      xor   dl, dl
│           0000:05e8      or    ch, ch
│       ┌─< 0000:05ea      js    0x5ee
│       │   0000:05ec      mov   dl, 4
│       └─> 0000:05ee      mov   al, byte [si + 4]
│           0000:05f1      and   al, 3
│           0000:05f3      add   al, dl
│           0000:05f5      mov   cl, 6
│           0000:05f7      mul   cl
│           0000:05f9      add   di, ax                                ; arg1
└           0000:05fb      ret
```

### Function 0x000005fc
```asm
; CALL XREF from fcn.00000136 @ 0x441
            ; CALL XREF from fcn.000004d1 @ 0x509
┌ fcn.000005fc();
│           0000:05fc      mov   cx, 2
│           0000:05ff      mov   dx, word [0x3bba]                     ; [0x3bba:2]=0xffff
│       ┌─> 0000:0603      mov   bl, cl
│       ╎   0000:0605      cmp   word [si], dx
│      ┌──< 0000:0607      jne   0x60a
│      │╎   0000:0609      ret
│      └──> 0000:060a      inc   dx
│       └─< 0000:060b      loop  0x603
│           0000:060d      mov   bl, cl
└           0000:060f      ret
```

### Function 0x0000063c
```asm
; XREFS: CALL 0x0000052b  CALL 0x000005c8  CODE 0x000005cc  
            ; XREFS: CODE 0x000005d4  CODE 0x0000062a  CALL 0x0000062f  
            ; XREFS: CODE 0x00000632  CODE 0x0000063a  
┌ fcn.0000063c(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:063c      mov   cx, 3
│       ┌─> 0000:063f      push  cx
│       ╎   0000:0640      mov   byte [si], 0xff                       ; [0xff:1]=50
│       ╎   0000:0643      inc   si
│       ╎   0000:0644      push  ds
│       ╎   0000:0645      push  si
│       ╎   0000:0646      mov   al, byte es:[bp]
│       ╎   0000:064a      inc   bp
│       ╎   0000:064b      push  es
│       ╎   0000:064c      push  bp
│       ╎   0000:064d      dec   al
│       ╎   0000:064f      mov   cl, 0x30                              ; '0'
│       ╎   0000:0651      mul   cl
│       ╎   0000:0653      add   ax, 0x4100                            ; arg1
│       ╎   0000:0656      mov   si, ax                                ; arg1
│       ╎   0000:0658      mov   ds, word cs:[0xff2c]
│       ╎   0000:065d      mov   ax, 0xa000
│       ╎   0000:0660      mov   es, ax
│       ╎   0000:0662      call  fcn.00000693                          ; fcn.00000693
│       ╎   0000:0665      pop   bp
│       ╎   0000:0666      pop   es
│       ╎   0000:0667      pop   si
│       ╎   0000:0668      pop   ds
│       ╎   0000:0669      pop   cx
│       └─< 0000:066a      loop  0x63f
└           0000:066c      ret
```

### Function 0x00000693
```asm
; CALL XREF from fcn.0000063c @ 0x662
            ; CALL XREF from fcn.0000063c @ +0x4e
┌ fcn.00000693();
│           0000:0693      mov   dx, 0x3c4
│           0000:0696      mov   ax, 0x702
│           0000:0699      out   dx, ax
│           0000:069a      mov   dx, 0x3ce
│           0000:069d      mov   ax, 0x205
│           0000:06a0      out   dx, ax
│           0000:06a1      mov   cx, 8
│       ┌─> 0000:06a4      push  cx
│       ╎   0000:06a5      mov   ax, 3
│       ╎   0000:06a8      out   dx, ax
│       ╎   0000:06a9      mov   al, 8
│       ╎   0000:06ab      out   dx, al
│       ╎   0000:06ac      inc   dx
│       ╎   0000:06ad      lodsw ax, word [si]
│       ╎   0000:06ae      mov   cx, ax
│       ╎   0000:06b0      lodsw ax, word [si]
│       ╎   0000:06b1      mov   bx, ax
│       ╎   0000:06b3      lodsw ax, word [si]
│       ╎   0000:06b4      mov   bp, ax
│       ╎   0000:06b6      or    ax, bx
│       ╎   0000:06b8      or    ax, cx
│       ╎   0000:06ba      out   dx, al
│       ╎   0000:06bb      xor   al, al
│       ╎   0000:06bd      xchg  byte es:[di], al
│       ╎   0000:06c0      mov   al, ah
│       ╎   0000:06c2      out   dx, al
│       ╎   0000:06c3      xor   al, al
│       ╎   0000:06c5      xchg  byte es:[di + 1], al
│       ╎   0000:06c9      mov   ax, bp
│       ╎   0000:06cb      and   ax, bx
│       ╎   0000:06cd      and   ax, cx
│       ╎   0000:06cf      xchg  cx, ax
│       ╎   0000:06d0      push  ax
│       ╎   0000:06d1      dec   dx
│       ╎   0000:06d2      mov   ax, 0x1003
│       ╎   0000:06d5      out   dx, ax
│       ╎   0000:06d6      mov   al, 8
│       ╎   0000:06d8      out   dx, al
│       ╎   0000:06d9      inc   dx
│       ╎   0000:06da      pop   ax
│       ╎   0000:06db      xor   al, cl
│       ╎   0000:06dd      out   dx, al
│       ╎   0000:06de      mov   al, 1
│       ╎   0000:06e0      xchg  byte es:[di], al
│       ╎   0000:06e3      xor   ah, ch
│       ╎   0000:06e5      mov   al, ah
│       ╎   0000:06e7      out   dx, al
│       ╎   0000:06e8      mov   al, 1
│       ╎   0000:06ea      xchg  byte es:[di + 1], al
│       ╎   0000:06ee      mov   ax, bx
│       ╎   0000:06f0      xor   al, cl
│       ╎   0000:06f2      out   dx, al
│       ╎   0000:06f3      mov   al, 2
│       ╎   0000:06f5      xchg  byte es:[di], al
│       ╎   0000:06f8      xor   ah, ch
│       ╎   0000:06fa      mov   al, ah
│       ╎   0000:06fc      out   dx, al
│       ╎   0000:06fd      mov   al, 2
│       ╎   0000:06ff      xchg  byte es:[di + 1], al
│       ╎   0000:0703      mov   ax, bp
│       ╎   0000:0705      xor   al, cl
│       ╎   0000:0707      out   dx, al
│       ╎   0000:0708      mov   al, 4
│       ╎   0000:070a      xchg  byte es:[di], al
│       ╎   0000:070d      xor   ah, ch
│       ╎   0000:070f      mov   al, ah
│       ╎   0000:0711      out   dx, al
│       ╎   0000:0712      mov   al, 4
│       ╎   0000:0714      xchg  byte es:[di + 1], al
│       ╎   0000:0718      dec   dx
│       ╎   0000:0719      inc   di
│       ╎   0000:071a      inc   di
│       ╎   0000:071b      pop   cx
│       └─< 0000:071c      loop  0x6a4
│           0000:071e      mov   ax, 3
│           0000:0721      out   dx, ax
│           0000:0722      mov   al, 5
│           0000:0724      out   dx, ax
│           0000:0725      mov   ax, 0xff08
│           0000:0728      out   dx, ax
└           0000:0729      ret
```

### Function 0x0000093b
```asm
; CALL XREF from fcn.00000693 @ +0x289
┌ fcn.0000093b(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:093b      push  cs
│           0000:093c      pop   es
│           0000:093d      mov   di, 0x3be4
│           0000:0940      xor   bl, bl
│           ; CODE XREF from fcn.0000093b @ 0x956
│       ┌─> 0000:0942      lodsb al, byte [si]
│       ╎   0000:0943      or    al, al
│      ┌──< 0000:0945      jne   0x948
│      │╎   0000:0947      ret
│      └──> 0000:0948      push  bx                                    ; arg3
│       ╎   0000:0949      push  ds
│       ╎   0000:094a      push  si
│       ╎   0000:094b      and   bl, 3
│       ╎   0000:094e      call  fcn.00000958                          ; fcn.00000958
│       ╎   0000:0951      pop   si
│       ╎   0000:0952      pop   ds
│       ╎   0000:0953      pop   bx
│       ╎   0000:0954      inc   bl
└       └─< 0000:0956      jmp   0x942
```

### Function 0x00000958
```asm
; CALL XREF from fcn.0000093b @ 0x94e
┌ fcn.00000958(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0958      sub   al, 0x20
│           0000:095a      xor   ah, ah
│           0000:095c      shl   ax, 1                                 ; arg1
│           0000:095e      shl   ax, 1                                 ; arg1
│           0000:0960      shl   ax, 1                                 ; arg1
│           0000:0962      mov   si, ax                                ; arg1
│           0000:0964      push  cs
│           0000:0965      pop   ds
│           0000:0966      add   si, word [0xf504]
│           0000:096a      add   bl, bl
│           0000:096c      mov   cl, bl
│           0000:096e      push  di
│           0000:096f      mov   bl, 8
│       ┌─> 0000:0971      push  bx                                    ; arg3
│       ╎   0000:0972      lodsb al, byte [si]
│       ╎   0000:0973      xor   bl, bl
│       ╎   0000:0975      mov   bh, al
│       ╎   0000:0977      shr   bx, cl                                ; arg3
│       ╎   0000:0979      or    byte es:[di], bh
│       ╎   0000:097c      or    byte es:[di + 1], bl
│       ╎   0000:0980      add   di, 0x28
│       ╎   0000:0983      pop   bx
│       ╎   0000:0984      dec   bl
│       └─< 0000:0986      jne   0x971
│           0000:0988      pop   di
│           0000:0989      inc   di
│           0000:098a      cmp   cl, 6
│       ┌─< 0000:098d      je    0x990
│       │   0000:098f      ret
│       └─> 0000:0990      inc   di
└           0000:0991      ret
```

### Function 0x000009b8
```asm
; CALL XREF from fcn.00000693 @ +0x2a2
┌ fcn.000009b8();
│           0000:09b8      call  fcn.00000a1d                          ; fcn.00000a1d
│           0000:09bb      push  cs
│           0000:09bc      pop   es
│           0000:09bd      mov   di, 0x3be4
│           0000:09c0      add   di, word [0xff68]
│           0000:09c4      mov   si, 0x3a32                            ; '2:'
│           0000:09c7      mov   cx, 6
│           0000:09ca      mov   bl, 1
│           ; CODE XREF from fcn.00000958 @ +0x5e
│       ┌─> 0000:09cc      push  cx
│       ╎   0000:09cd      push  bx
│       ╎   0000:09ce      push  di
│       ╎   0000:09cf      lodsb al, byte [si]
│       ╎   0000:09d0      push  si
│       ╎   0000:09d1      call  fcn.000009e5                          ; fcn.000009e5
│       ╎   0000:09d4      pop   si
│       ╎   0000:09d5      pop   di
│       ╎   0000:09d6      pop   bx
│       ╎   0000:09d7      mov   al, bl
│       ╎   0000:09d9      inc   di
│       ╎   0000:09da      and   ax, 1
│       ╎   0000:09dd      add   di, ax
│       ╎   0000:09df      inc   bl
│       ╎   0000:09e1      pop   cx
│       └─< 0000:09e2      loop  0x9cc
└           0000:09e4      ret
```

### Function 0x000009e5
```asm
; CALL XREF from fcn.000009b8 @ 0x9d1
┌ fcn.000009e5(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:09e5      inc   al
│       ┌─< 0000:09e7      jne   0x9ea
│       │   0000:09e9      ret
│       └─> 0000:09ea      dec   al
│           0000:09ec      xor   ah, ah
│           0000:09ee      shl   ax, 1                                 ; arg1
│           0000:09f0      shl   ax, 1                                 ; arg1
│           0000:09f2      shl   ax, 1                                 ; arg1
│           0000:09f4      shl   ax, 1                                 ; arg1
│           0000:09f6      add   ax, word cs:[0xf502]                  ; arg1
│           0000:09fb      mov   si, ax                                ; arg1
│           0000:09fd      mov   cx, 7
│       ┌─> 0000:0a00      lodsw ax, word [si]
│       ╎   0000:0a01      xchg  al, ah
│       ╎   0000:0a03      test  bl, 1
│      ┌──< 0000:0a06      jne   0xa10
│      │╎   0000:0a08      shl   ax, 1                                 ; arg1
│      │╎   0000:0a0a      shl   ax, 1                                 ; arg1
│      │╎   0000:0a0c      shl   ax, 1                                 ; arg1
│      │╎   0000:0a0e      shl   ax, 1                                 ; arg1
│      └──> 0000:0a10      or    byte es:[di], ah
│       ╎   0000:0a13      or    byte es:[di + 1], al
│       ╎   0000:0a17      add   di, 0x28
│       └─< 0000:0a1a      loop  0xa00
└           0000:0a1c      ret
```

### Function 0x00000a1d
```asm
; CALL XREF from fcn.00000958 @ +0x4a
            ; CALL XREF from fcn.000009b8 @ 0x9b8
┌ fcn.00000a1d();
│           0000:0a1d      mov   di, 0x3a31                            ; '1:'
│           0000:0a20      call  fcn.00000a3c                          ; fcn.00000a3c
│           0000:0a23      mov   cx, 6
│       ┌─> 0000:0a26      test  byte cs:[di], 0xff
│      ┌──< 0000:0a2a      je    0xa2d
│      │╎   0000:0a2c      ret
│      └──> 0000:0a2d      mov   byte cs:[di], 0xff                    ; [0xff:1]=50
│       ╎   0000:0a31      inc   di
│       └─< 0000:0a32      loop  0xa26
└           0000:0a34      ret
```

### Function 0x00000a3c
```asm
; CALL XREF from fcn.00000a1d @ 0xa20
┌ fcn.00000a3c();
│           0000:0a3c      mov   cl, 0xf
│           0000:0a3e      mov   bx, 0x4240                            ; '@B'
│           0000:0a41      call  fcn.00000a82                          ; fcn.00000a82
│           0000:0a44      mov   byte cs:[di], dh
│           0000:0a47      mov   cl, 1
│           0000:0a49      mov   bx, 0x86a0
│           0000:0a4c      call  fcn.00000a82                          ; fcn.00000a82
│           0000:0a4f      mov   byte cs:[di + 1], dh
│           0000:0a53      xor   cl, cl
│           0000:0a55      mov   bx, 0x2710
│           0000:0a58      call  fcn.00000a82                          ; fcn.00000a82
│           0000:0a5b      mov   byte cs:[di + 2], dh
│           0000:0a5f      mov   bx, 0x3e8
│           0000:0a62      call  fcn.00000a9b                          ; fcn.00000a9b
│           0000:0a65      mov   byte cs:[di + 3], dh
│           0000:0a69      mov   bx, 0x64                              ; 'd'
│           0000:0a6c      call  fcn.00000a9b                          ; fcn.00000a9b
│           0000:0a6f      mov   byte cs:[di + 4], dh
│           0000:0a73      mov   bx, 0xa
│           0000:0a76      call  fcn.00000a9b                          ; fcn.00000a9b
│           0000:0a79      mov   byte cs:[di + 5], dh
│           0000:0a7d      mov   byte cs:[di + 6], al
└           0000:0a81      ret
```

### Function 0x00000a82
```asm
; CALL XREFS from fcn.00000a3c @ 0xa41, 0xa4c, 0xa58
┌ fcn.00000a82(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0a82      xor   dh, dh
│           ; CODE XREF from fcn.00000a82 @ 0xa94
│       ┌─> 0000:0a84      sub   dl, cl
│      ┌──< 0000:0a86      jb    0xa98
│      │╎   0000:0a88      sub   ax, bx                                ; arg3
│     ┌───< 0000:0a8a      jae   0xa92
│     ││╎   0000:0a8c      or    dl, dl
│    ┌────< 0000:0a8e      je    0xa96
│    │││╎   0000:0a90      dec   dl
│    │└───> 0000:0a92      inc   dh
│    │ │└─< 0000:0a94      jmp   0xa84
│    └────> 0000:0a96      add   ax, bx                                ; arg3
│      └──> 0000:0a98      add   dl, cl
└           0000:0a9a      ret
```

### Function 0x00000a9b
```asm
; CALL XREFS from fcn.00000a3c @ 0xa62, 0xa6c, 0xa76
┌ fcn.00000a9b(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0a9b      xor   dh, dh
│           0000:0a9d      div   bx
│           0000:0a9f      xchg  dx, ax                                ; arg1
│           0000:0aa0      mov   dh, dl
│           0000:0aa2      xor   dl, dl
└           0000:0aa4      ret
```

## Cross-References (callers)
```json
  0x000000e4:
[{"from":144,"to":228,"type":"CALL"}]
  0x00000136:
[{"from":192,"to":310,"type":"CALL"}]
  0x0000013f:
[{"from":176,"to":319,"type":"CALL"},{"from":184,"to":319,"type":"CALL"},{"from":200,"to":319,"type":"CALL"},{"from":208,"to":319,"type":"CALL"},{"from":580,"to":319,"type":"CODE"}]
  0x0000021c:
[{"from":152,"to":540,"type":"CALL"},{"from":160,"to":540,"type":"CALL"},{"from":168,"to":540,"type":"CALL"}]
  0x000003bd:
[{"from":1081,"to":957,"type":"CALL"}]
  0x000003c0:
[{"from":1281,"to":960,"type":"CALL"}]
  0x000004d1:
[{"from":118,"to":1233,"type":"CALL"}]
  0x00000564:
[{"from":1052,"to":1380,"type":"CALL"},{"from":1068,"to":1380,"type":"CALL"},{"from":1266,"to":1380,"type":"CALL"}]
  0x0000057d:
[{"from":1380,"to":1405,"type":"CALL"}]
  0x00000581:
[{"from":1394,"to":1409,"type":"CALL"},{"from":1417,"to":1409,"type":"CODE"}]
  0x0000058b:
[{"from":291,"to":1419,"type":"CALL"},{"from":1173,"to":1419,"type":"CALL"},{"from":1195,"to":1419,"type":"CALL"},{"from":1362,"to":1419,"type":"CALL"}]
  0x000005b4:
[{"from":1110,"to":1460,"type":"CALL"}]
  0x000005d6:
[{"from":1098,"to":1494,"type":"CALL"},{"from":1304,"to":1494,"type":"CALL"}]
  0x000005fc:
[{"from":1089,"to":1532,"type":"CALL"},{"from":1289,"to":1532,"type":"CALL"}]
  0x0000063c:
[{"from":1323,"to":1596,"type":"CALL"},{"from":1480,"to":1596,"type":"CALL"},{"from":1484,"to":1596,"type":"CODE"},{"from":1492,"to":1596,"type":"CODE"},{"from":1578,"to":1596,"type":"CODE"},{"from":1583,"to":1596,"type":"CALL"},{"from":1586,"to":1596,"type":"CODE"},{"from":1594,"to":1596,"type":"CODE"}]
  0x00000693:
[{"from":1634,"to":1683,"type":"CALL"},{"from":1674,"to":1683,"type":"CALL"}]
  0x0000093b:
[{"from":2332,"to":2363,"type":"CALL"}]
  0x00000958:
[{"from":2382,"to":2392,"type":"CALL"}]
  0x000009b8:
[{"from":2357,"to":2488,"type":"CALL"}]
```