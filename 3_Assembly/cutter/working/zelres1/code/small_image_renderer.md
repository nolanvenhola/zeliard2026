# SMALL_IMAGE_RENDERER - Analysis

**Source:** `chunk_11.bin`  
**Size:** 5.2 KB  
**Functions:** 28  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    7 85           fcn.00000000
0x000000d9    7 69           fcn.000000d9
0x0000011e   14 762  -> 205  fcn.0000011e
0x00000127   11 181          fcn.00000127
0x000001dc   27 292          fcn.000001dc
0x00000303    1 3            fcn.00000303
0x00000306    5 78           fcn.00000306
0x00000418    7 129          fcn.00000418
0x00000499    4 25           fcn.00000499
0x000004b2    1 4            fcn.000004b2
0x000004b6    3 10           fcn.000004b6
0x000004c0    3 14           fcn.000004c0
0x000004ce    1 14           fcn.000004ce
0x000004f0    3 38           fcn.000004f0
0x00000516    5 20           fcn.00000516
0x00000556    3 72           fcn.00000556
0x000005db    7 81           fcn.000005db
0x00000842    4 22           fcn.00000842
0x00000858    5 58           fcn.00000858
0x000008b8    3 39           fcn.000008b8
0x000008df    7 54           fcn.000008df
0x00000915    5 24           fcn.00000915
0x00000934    1 70           fcn.00000934
0x0000097a    8 25           fcn.0000097a
0x00000993    1 10           fcn.00000993
0x00000c32    3 50           fcn.00000c32
0x00000c64    1 22           fcn.00000c64
0x00000c7a    5 34           fcn.00000c7a
```

## Strings
```
nth      paddr      vaddr len size section type   string                                       
-----------------------------------------------------------------------------------------------
  0 0x00000004 0x00000004  10   10         ascii  A:(0Q0(6w6
  1 0x00000042 0x00000042   6    6         ibm037 vvvvaF
  2 0x0000011a 0x0000011a   5    6         utf8   ^\a_À| blocks=Basic Latin,Latin-1 Supplement
  3 0x0000013a 0x0000013a   5    5         ascii  WVSR2
  4 0x000001ab 0x000001ab   4    4         ibm037 SLaG
  5 0x000001c8 0x000001c8   6    6         ibm037 vvvvaG
  6 0x000001fd 0x000001fd   4    4         ascii  7\a[\n
  7 0x0000020c 0x0000020c   5    5         ascii  WVSR2
  8 0x000002e0 0x000002e0   4    4         ascii  t\eG&
  9 0x000003e8 0x000003e8   4    4         ascii  <\et\r
 10 0x000004c3 0x000004c3   6    6         ibm037 vvvvaG
 11 0x00000538 0x00000538   6    6         ascii  J5B5:5
 12 0x000005ef 0x000005ef   4    4         ascii  & %G
 13 0x0000061b 0x0000061b   4    5         ascii  ?&\b}
 14 0x00000620 0x00000620   5    6         ascii  $?&\bE
 15 0x0000077d 0x0000077d   4    4         ibm037 SLaG
 16 0x000007c8 0x000007c8   7    8         ascii  `px|xp`
 17 0x00000809 0x00000809   4    4         ascii  VWW2
 18 0x00000912 0x00000912   4    4         ibm037 SUC×
 19 0x00000af3 0x00000af3   4    4         ascii  <_\aY
 20 0x00000b46 0x00000b46   5    5         ascii  K;[CY
 21 0x00000b4f 0x00000b4f   4    4         ascii  U;{;
 22 0x00000c98 0x00000c98   4    5         ibm037 }SSC
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, short unsigned int arg3, short unsigned int arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg short unsigned int arg3 @ bx
│           ; arg short unsigned int arg4 @ cx
│           ; var short unsigned int var_6c8h @ stack - 0x6c8
│           0000:0000      out   dx, ax
│           0000:0001      adc   al, 0
│           ; DATA XREF from fcn.00000556 @ 0x559
│           ; DATA XREF from fcn.00000c7a @ 0xc8d
│           0000:0003      add   byte [bx + di + 0x3a], al             ; arg3
│           ; DATA XREF from fcn.000008b8 @ 0x8cf
│           0000:0006      sub   byte [bx + si], dh                    ; arg3
│           ; DATA XREF from fcn.00000127 @ 0x17c
│           ; DATA XREF from fcn.000001dc @ 0x25a
│           ; DATA XREF from fcn.000005db @ 0x5e6
│           0000:0008      push  cx                                    ; arg4
│           0000:0009      xor   byte [bx + si], ch                    ; arg3
│           ; DATA XREF from fcn.00000858 @ +0x58
│       ┌─< 0000:000b      ja    0x44
│       │   0000:000e      movsb byte es:[di], byte ptr [si]
│       │   ; DATA XREF from fcn.00000934 @ 0x934
│       │   0000:000f      int1
│       │   0000:0011      cld
│       │   0000:0013      xor   ah, byte [0x9a35]
│       │   0000:0017      xor   ax, 0x34ec                            ; arg1
│       │   0000:001a      sbb   al, 0x37
│       │   ; DATA XREFS from fcn.00000000 @ 0x3a, 0x3d
│       │   0000:001c      test  word [bx], si                         ; arg3
│       │   0000:001e      add   ax, 0xcc38                            ; arg1
│       │   0000:0021      aaa
│       │   0000:0022      cdq
│       │   0000:0023      cmp   di, bp
│       │   ; DATA XREF from fcn.00000418 @ 0x41e
│       │   0000:0025      cmp   word [bp - 0x6c8], cx                 ; arg4
│       │   0000:0029      cmp   dh, byte [bx + di + 0x3a]             ; arg3
│       │   0000:002c      push  ds
│       │   0000:002d      mov   si, 0x61b0
│       │   ; XREFS: DATA 0x00000164  DATA 0x0000022b  DATA 0x0000030f  
│       │   ; XREFS: DATA 0x000004f7  DATA 0x0000056a  DATA 0x000005a9  
│       │   ; XREFS: DATA 0x00000722  DATA 0x00000a89  
│       │   0000:0030      mov   di, 0xa000
│       │   0000:0033      push  cs
│       │   0000:0034      pop   es
│       │   0000:0035      mov   ax, 0xa000
│       │   0000:0038      mov   ds, ax
│       │   0000:003a      mov   cx, 0x1c
│      ┌──> 0000:003d      push  cx
│      ╎│   0000:003e      push  si
│      ╎│   ; XREFS: DATA 0x0000019b  DATA 0x000001a2  DATA 0x00000292  
│      ╎│   ; XREFS: DATA 0x000002a1  DATA 0x0000033c  DATA 0x00000343  
│      ╎│   ; XREFS: DATA 0x00000619  DATA 0x00000620  DATA 0x0000076d  
│      ╎│   ; XREFS: DATA 0x00000774  
│      ╎│   0000:003f      mov   cx, 0x18
│     ┌───> 0000:0042      movsw word es:[di], word ptr [si]
│     ╎╎│   0000:0043      movsw word es:[di], word ptr [si]
│     ╎╎└─> 0000:0044      movsw word es:[di], word ptr [si]
│     ╎╎    0000:0045      movsw word es:[di], word ptr [si]
│     ╎╎    0000:0046      add   si, 0x138
│     └───< 0000:004a      loop  0x42
│      ╎    0000:004c      pop   si
│      ╎    0000:004d      pop   cx
│      ╎    0000:004e      add   si, 8
│      └──< 0000:0051      loop  0x3d
│           0000:0053      pop   ds
└           0000:0054      ret
```

### Function 0x000000d9
```asm
; CALL XREF from fcn.00000000 @ +0x85
┌ fcn.000000d9(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:00d9      cmp   byte [0x3c9a], 0x1b                   ; [0x3c9a:1]=255
│       ┌─< 0000:00de      jne   0xe1
│       │   0000:00e0      ret
│       └─> 0000:00e1      mov   al, byte [0x83]                       ; [0x83:1]=60
│           0000:00e4      cmp   byte [0x3c9a], al                     ; [0x3c9a:1]=255
│       ┌─< 0000:00e8      je    0xeb
│       │   0000:00ea      ret
│       └─> 0000:00eb      push  di
│           0000:00ec      push  es
│           0000:00ed      push  si
│           0000:00ee      push  ds
│           0000:00ef      mov   al, byte [0x83]                       ; [0x83:1]=60
│           0000:00f2      add   al, al
│           0000:00f4      add   al, al
│           0000:00f6      add   al, al
│           0000:00f8      xor   ah, ah
│           ; DATA XREF from fcn.00000993 @ +0x19c
│           0000:00fa      mov   di, ax                                ; arg1
│           0000:00fc      add   di, 0x93b0
│           ; DATA XREF from fcn.00000000 @ +0x5c
│           0000:0100      mov   ax, 0xa000
│           0000:0103      mov   es, ax
│           0000:0105      mov   ds, ax
│           0000:0107      mov   si, 0xfa00
│           0000:010a      mov   cx, 2
│       ┌─> 0000:010d      push  cx
│       ╎   0000:010e      push  di
│       ╎   0000:010f      call  fcn.000004c0                          ; fcn.000004c0
│       ╎   0000:0112      pop   di
│       ╎   0000:0113      add   di, 8
│       ╎   0000:0116      pop   cx
│       └─< 0000:0117      loop  0x10d
│           0000:0119      pop   ds
│           0000:011a      pop   si
│           0000:011b      pop   es
│           0000:011c      pop   di
└           0000:011d      ret
```

### Function 0x0000011e
```asm
; CALL XREF from fcn.00000000 @ +0xb5
┌ fcn.0000011e(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:011e      cmp   byte [si - 1], 0xfd
│       ┌─< 0000:0122      jne   fcn.00000127                          ; fcn.00000127
│      ┌──< 0000:0124      jmp   0x354
       ││   ; CALL XREFS from fcn.00000000 @ +0xa5, +0xad, +0xbd, +0xc5
       ││   ; CODE XREF from fcn.000001dc @ 0x204
..
│     ╎│    ; XREFS: DATA 0x00000046  DATA 0x000001ad  DATA 0x000001cc  
│     ╎│    ; XREFS: DATA 0x000001d0  DATA 0x000002b6  DATA 0x000004c7  
│     ╎│    ; XREFS: DATA 0x0000077f  DATA 0x000007bc  
│     ╎│    ; XREFS(21)
      ╎│    ; CALL XREFS from fcn.00000000 @ +0x8d, +0x95, +0x9d
│  │ │ ││   ; CODE XREF from fcn.000001dc @ 0x2f5
       │    ; CALL XREF from fcn.0000011e @ 0x391
       │    ; CALL XREF from fcn.00000418 @ 0x448
│      │    ; CODE XREF from fcn.0000011e @ 0x124
│      └──> 0000:0354      push  ds                                    ; arg3
│           0000:0355      push  si
│           0000:0356      push  es
│           0000:0357      push  di
│           0000:0358      mov   di, 0x3c9c
│           0000:035b      movsw word es:[di], word ptr [si]
│           0000:035c      add   si, 5
│           0000:035f      movsw word es:[di], word ptr [si]
│           0000:0360      movsb byte es:[di], byte ptr [si]
│           0000:0361      mov   dl, byte cs:[0x3c9a]
│           0000:0366      add   dl, 4
│           0000:0369      xor   dh, dh
│           0000:036b      add   dx, word cs:[0x80]
│           0000:0370      mov   word [0x3ca1], dx                     ; [0x3ca1:2]=0xffff ; arg2
│           0000:0374      call  fcn.00000499                          ; fcn.00000499
│           0000:0377      mov   byte es:[0x3c9b], al
│           0000:037b      cmp   byte es:[0x3c9e], 0xfd
│       ┌─< 0000:0381      jne   0x38b
│       │   0000:0383      inc   dx
│       │   0000:0384      call  fcn.00000499                          ; fcn.00000499
│       │   0000:0387      mov   byte es:[0x3c9e], al
│       └─> 0000:038b      mov   si, 0x3c9b
│           0000:038e      mov   di, 0xfb80
│           0000:0391      call  fcn.00000303                          ; fcn.00000303
│           0000:0394      mov   si, word cs:[0xc00f]
│       ┌─> 0000:0399      call  fcn.00000516                          ; fcn.00000516
│       ╎   0000:039c      or    bl, bl
│      ┌──< 0000:039e      je    0x3b2
│      │╎   0000:03a0      push  si
│      │╎   0000:03a1      push  bx
│      │╎   0000:03a2      call  fcn.000004f0                          ; fcn.000004f0
│      │╎   0000:03a5      pop   bx
│      │╎   0000:03a6      mov   es, word cs:[0xff2c]
│      │╎   0000:03ab      mov   si, 0x3c9b
│      │╎   0000:03ae      call  fcn.000004ce                          ; fcn.000004ce
│      │╎   0000:03b1      pop   si
│      └──> 0000:03b2      add   si, 8
│       ╎   0000:03b5      cmp   word [si], 0xffff
│       └─< 0000:03b8      jne   0x399
│           0000:03ba      pop   di
│           0000:03bb      pop   es
│           0000:03bc      mov   ch, byte es:[di - 1]
│           0000:03c0      mov   cl, byte es:[di + 7]
│           0000:03c4      push  es
│           0000:03c5      push  di
│           0000:03c6      push  cx
│           0000:03c7      mov   di, word cs:[0x3c98]
│           0000:03cc      add   di, 0x3200
│           0000:03d0      push  di
│           0000:03d1      mov   si, 0xfb80
│           0000:03d4      mov   ax, 0xa000
│           0000:03d7      mov   es, ax
│           0000:03d9      mov   ds, ax
│           0000:03db      inc   ch
│       ┌─< 0000:03dd      je    0x3e2
│       │   0000:03df      call  fcn.000004c0                          ; fcn.000004c0
│       └─> 0000:03e2      pop   di
│           0000:03e3      pop   cx
│           0000:03e4  ~   cmp   byte cs:[0x3c9a], 0x1b
│           ; DATA XREF from fcn.00000934 @ 0x957
│           ;-- str.t:
..
│       ┌─< 0000:03ea     .string "<\et\r" ; len=4
│       │   0000:03ec      mov   si, 0xfc40
│       │   0000:03ef      add   di, 8
│       │   0000:03f2      inc   cl
│      ┌──< 0000:03f4      je    0x3f9
│      ││   0000:03f6      call  fcn.000004c0                          ; fcn.000004c0
│      └└─> 0000:03f9      pop   di
│           0000:03fa      pop   es
│           0000:03fb      mov   al, 0xff
│           0000:03fd      mov   byte es:[di - 1], 0xfe                ; [0xfe:1]=176
│           0000:0402      mov   byte es:[di], al
│           0000:0405      mov   byte es:[di + 1], al
│           0000:0409      mov   byte es:[di + 7], al
│           0000:040d      mov   byte es:[di + 8], al
│           0000:0411      mov   byte es:[di + 9], al
│           0000:0415      pop   si
│           0000:0416      pop   ds
└           0000:0417      ret
```

### Function 0x00000127
```asm
; CALL XREFS from fcn.00000000 @ +0xa5, +0xad, +0xbd, +0xc5
            ; CODE XREF from fcn.000001dc @ 0x204
┌ fcn.00000127(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0127      mov   al, byte [di - 1]
│           0000:012a      mov   byte [di - 1], 0xfe                   ; [0xfe:1]=176
│           0000:012e      inc   al
│       ┌─< 0000:0130      jne   0x133
│       │   0000:0132      ret
│       └─> 0000:0133      dec   di
│           0000:0134      dec   si
│           0000:0135      mov   dl, byte [si]
│           0000:0137      movsb byte es:[di], byte ptr [si]
│           ; XREFS: DATA 0x00000046  DATA 0x000001ad  DATA 0x000001cc  
│           ; XREFS: DATA 0x000001d0  DATA 0x000002b6  DATA 0x000004c7  
│           ; XREFS: DATA 0x0000077f  DATA 0x000007bc  
│           0000:0138      push  es
│           0000:0139      push  ds
│           0000:013a      push  di
│           0000:013b      push  si
│           0000:013c      push  bx                                    ; arg3
│           0000:013d      push  dx                                    ; arg2
│           0000:013e      xor   bh, bh
│           ; XREFS(21)
│           0000:0140      add   bx, bx                                ; arg3
│           0000:0142      add   bx, bx                                ; arg3
│           0000:0144      add   bx, bx                                ; arg3
│           0000:0146      mov   ax, 0x140
│           0000:0149      mul   bx
│           0000:014b      add   ax, word [0x3c98]                     ; [0x3c98:2]=0xffff
│           0000:014f      mov   di, ax
│           0000:0151      pop   dx
│           0000:0152      mov   bl, dl
│           0000:0154      xor   bh, bh
│           0000:0156      add   bx, bx                                ; arg3
│           0000:0158      test  word [bx + 0x42ef], 0xffff            ; arg3
│       ┌─< 0000:015e      jne   0x1ba
│       │   0000:0160      mov   word [bx + 0x42ef], di                ; arg3
│       │   0000:0164      mov   ax, 0x30                              ; '0'
│       │   0000:0167      mul   dl
│       │   0000:0169      mov   si, ax
│       │   0000:016b      add   si, 0x8100
│       │   0000:016f      mov   ds, word cs:[0xff2c]
│       │   0000:0174      mov   ax, 0xa000
│       │   0000:0177      mov   es, ax
│       │   0000:0179      mov   cx, 8
│      ┌──> 0000:017c      push  cx
│      ╎│   0000:017d      mov   cx, 2
│     ┌───> 0000:0180      lodsw ax, word [si]
│     ╎╎│   0000:0181      mov   dx, ax
│     ╎╎│   0000:0183      lodsb al, byte [si]
│     ╎╎│   0000:0184      mov   bl, al
│     ╎╎│   0000:0186      mov   bh, dl
│     ╎╎│   0000:0188      shr   dx, 1
│     ╎╎│   0000:018a      shr   dx, 1
│     ╎╎│   0000:018c      mov   byte es:[di], dh
│     ╎╎│   0000:018f      shr   dl, 1
│     ╎╎│   0000:0191      shr   dl, 1
│     ╎╎│   0000:0193      mov   byte es:[di + 1], dl
│     ╎╎│   0000:0197      add   bx, bx                                ; arg3
│     ╎╎│   0000:0199      add   bx, bx                                ; arg3
│     ╎╎│   0000:019b      and   bh, 0x3f
│     ╎╎│   0000:019e      mov   byte es:[di + 2], bh
│     ╎╎│   0000:01a2      and   al, 0x3f
│     ╎╎│   0000:01a4      mov   byte es:[di + 3], al
│     ╎╎│   0000:01a8      add   di, 4
│     └───< 0000:01ab      loop  0x180
│      ╎│   0000:01ad      add   di, 0x138
│      ╎│   0000:01b1      pop   cx
│      └──< 0000:01b2      loop  0x17c
│       │   0000:01b4      pop   bx
│       │   0000:01b5      pop   si
│       │   0000:01b6      pop   di
│       │   0000:01b7      pop   ds
│       │   0000:01b8      pop   es
│       │   0000:01b9      ret
│       └─> 0000:01ba      mov   si, word [bx + 0x42ef]                ; arg3
│           0000:01be      mov   ax, 0xa000
│           0000:01c1      mov   es, ax
│           0000:01c3      mov   ds, ax
│           0000:01c5      mov   cx, 8
│       ┌─> 0000:01c8      movsw word es:[di], word ptr [si]
│       ╎   0000:01c9      movsw word es:[di], word ptr [si]
│       ╎   0000:01ca      movsw word es:[di], word ptr [si]
│       ╎   0000:01cb      movsw word es:[di], word ptr [si]
│       ╎   0000:01cc      add   di, 0x138
│       ╎   0000:01d0      add   si, 0x138
│       └─< 0000:01d4      loop  0x1c8
│           0000:01d6      pop   bx
│           0000:01d7      pop   si
│           0000:01d8      pop   di
│           0000:01d9      pop   ds
│           0000:01da      pop   es
└           0000:01db      ret
```

### Function 0x000001dc
```asm
╎   ; CALL XREFS from fcn.00000000 @ +0x8d, +0x95, +0x9d
┌ fcn.000001dc(int16_t arg2, int16_t arg3);
│       ╎   ; arg int16_t arg2 @ dx
│       ╎   ; arg int16_t arg3 @ bx
│       ╎   0000:01dc      mov   al, byte [di - 1]
│       ╎   0000:01df      mov   byte [di - 1], 0xfe                   ; [0xfe:1]=176
│       ╎   0000:01e3      inc   al
│      ┌──< 0000:01e5      jne   0x1e8
│      │╎   0000:01e7      ret
│      └──> 0000:01e8      push  bx                                    ; arg3
│       ╎   0000:01e9      push  es
│       ╎   0000:01ea      mov   dl, byte [si - 1]
│       ╎   0000:01ed      mov   bl, dl
│       ╎   0000:01ef      xor   bh, bh
│       ╎   0000:01f1      mov   es, word cs:[0xff2c]
│       ╎   0000:01f6      add   bx, word es:[0x8000]                  ; arg3
│       ╎   0000:01fb      mov   dh, byte es:[bx]                      ; arg3
│       ╎   0000:01fe      pop   es
│       ╎   0000:01ff      pop   bx
│       ╎   0000:0200      or    dh, dh
│      ┌──< 0000:0202      jne   0x207
│      │└─< 0000:0204      jmp   fcn.00000127                          ; fcn.00000127
│      └──> 0000:0207      dec   di
│           0000:0208      dec   si
│           0000:0209      movsb byte es:[di], byte ptr [si]
│           0000:020a      push  es
│           0000:020b      push  ds
│           0000:020c      push  di
│           0000:020d      push  si
│           0000:020e      push  bx
│           0000:020f      push  dx                                    ; arg2
│           0000:0210      xor   bh, bh
│           0000:0212      add   bx, bx
│           0000:0214      add   bx, bx
│           0000:0216      add   bx, bx
│           0000:0218      mov   ax, 0x140
│           0000:021b      mul   bx
│           0000:021d      add   ax, word [0x3c98]                     ; [0x3c98:2]=0xffff
│           0000:0221      mov   di, ax
│           0000:0223      pop   dx
│           0000:0224      mov   ax, 8
│           0000:0227      mul   dl
│           0000:0229      mov   bp, ax
│           0000:022b      mov   ax, 0x30                              ; '0'
│           0000:022e      mul   dl
│           0000:0230      mov   si, ax
│           0000:0232      add   si, 0x8100
│           0000:0236      add   bp, 0xd000
│           0000:023a      mov   ax, 0xc0
│           0000:023d      mul   byte [0x3c9a]
│           0000:0241      add   bx, bx
│           0000:0243      add   bx, bx
│           0000:0245      add   bx, bx
│           0000:0247      add   bx, ax
│           0000:0249      add   bx, 0xa000
│           0000:024d      mov   ds, word cs:[0xff2c]
│           0000:0252      mov   ax, 0xa000
│           0000:0255      mov   es, ax
│           0000:0257      mov   cx, 8
│       ┌─> 0000:025a      push  cx
│       ╎   0000:025b      mov   ah, byte ds:[bp]
│       ╎   0000:025f      inc   bp
│       ╎   0000:0260      mov   cx, 2
│      ┌──> 0000:0263      push  cx
│      ╎╎   0000:0264      lodsb al, byte [si]
│      ╎╎   0000:0265      mov   dl, al
│      ╎╎   0000:0267      lodsb al, byte [si]
│      ╎╎   0000:0268      mov   dh, al
│      ╎╎   0000:026a      lodsb al, byte [si]
│      ╎╎   0000:026b      mov   cl, al
│      ╎╎   0000:026d      mov   ch, dl
│      ╎╎   0000:026f      shr   dx, 1
│      ╎╎   0000:0271      shr   dx, 1
│      ╎╎   0000:0273      add   ah, ah
│     ┌───< 0000:0275      jae   0x27a
│     │╎╎   0000:0277      mov   dh, byte cs:[bx]
│     └───> 0000:027a      inc   bx
│      ╎╎   0000:027b      mov   byte es:[di], dh
│      ╎╎   0000:027e      shr   dl, 1
│      ╎╎   0000:0280      shr   dl, 1
│      ╎╎   0000:0282      add   ah, ah
│     ┌───< 0000:0284      jae   0x289
│     │╎╎   0000:0286      mov   dl, byte cs:[bx]
│     └───> 0000:0289      inc   bx
│      ╎╎   0000:028a      mov   byte es:[di + 1], dl
│      ╎╎   0000:028e      add   cx, cx
│      ╎╎   0000:0290      add   cx, cx
│      ╎╎   0000:0292      and   ch, 0x3f
│      ╎╎   0000:0295      add   ah, ah
│     ┌───< 0000:0297      jae   0x29c
│     │╎╎   0000:0299      mov   ch, byte cs:[bx]
│     └───> 0000:029c      inc   bx
│      ╎╎   0000:029d      mov   byte es:[di + 2], ch
│      ╎╎   0000:02a1      and   al, 0x3f
│      ╎╎   0000:02a3      add   ah, ah
│     ┌───< 0000:02a5      jae   0x2aa
│     │╎╎   0000:02a7      mov   al, byte cs:[bx]
│     └───> 0000:02aa      inc   bx
│      ╎╎   0000:02ab      mov   byte es:[di + 3], al
│      ╎╎   0000:02af      add   di, 4
│      ╎╎   0000:02b2      pop   cx
│      └──< 0000:02b3      loop  0x263
│       ╎   0000:02b5      pop   cx
│       ╎   0000:02b6      add   di, 0x138
│       └─< 0000:02ba      loop  0x25a
│           0000:02bc      pop   bx
│           0000:02bd      pop   si
│           0000:02be      pop   di
│           0000:02bf      pop   ds
│           0000:02c0      pop   es
│           0000:02c1      mov   ah, byte [di - 1]
│           0000:02c4      or    ah, ah
│       ┌─< 0000:02c6      jne   0x2c9
│       │   0000:02c8      ret
│       └─> 0000:02c9      cmp   ah, 0x19
│       ┌─< 0000:02cc      jb    0x2cf
│       │   0000:02ce      ret
│       └─> 0000:02cf      push  di
│           0000:02d0      push  es
│           0000:02d1      mov   es, word cs:[0xff2c]
│           0000:02d6      mov   di, word es:[0x8004]
│           0000:02db      mov   cl, byte es:[di]
│           0000:02de      or    cl, cl
│       ┌─< 0000:02e0      je    0x2fd
│       │   0000:02e2      inc   di
│      ┌──> 0000:02e3      mov   al, byte es:[di]
│      ╎│   0000:02e6      cmp   al, 0xff
│     ┌───< 0000:02e8      je    0x2fd
│     │╎│   0000:02ea      cmp   ah, al
│    ┌────< 0000:02ec      jne   0x2f7
│    ││╎│   0000:02ee      mov   al, byte es:[di + 1]
│    ││╎│   0000:02f2      mov   byte [si - 1], al
│   ┌─────< 0000:02f5      jmp   0x2fd
│   │└────> 0000:02f7      inc   di
│   │ │╎│   0000:02f8      inc   di
│   │ │╎│   0000:02f9      dec   cl
│   │ │└──< 0000:02fb      jne   0x2e3
│   │ │ │   ; CODE XREF from fcn.000001dc @ 0x2f5
│   └─└─└─> 0000:02fd      pop   es
│           0000:02fe      pop   di
└           0000:02ff      ret
```

### Function 0x00000303
```asm
; CALL XREF from fcn.0000011e @ 0x391
┌ fcn.00000303(int16_t arg3);
│           ; arg int16_t arg3 @ bx
└           0000:0303      mov   cx, 6
```

### Function 0x00000306
```asm
; CALL XREF from fcn.00000418 @ 0x448
┌ fcn.00000306(int16_t arg3, int16_t arg4);
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0306      mov   ax, 0xa000
│           0000:0309      mov   es, ax
│       ┌─> 0000:030b      push  cx                                    ; arg4
│       ╎   0000:030c      lodsb al, byte [si]
│       ╎   0000:030d      push  ds
│       ╎   0000:030e      push  si
│       ╎   0000:030f      mov   cl, 0x30                              ; '0'
│       ╎   0000:0311      mul   cl
│       ╎   0000:0313      mov   si, ax
│       ╎   0000:0315      add   si, 0x8100
│       ╎   0000:0319      mov   ds, word cs:[0xff2c]
│       ╎   0000:031e      mov   cx, 0x10
│      ┌──> 0000:0321      lodsw ax, word [si]
│      ╎╎   0000:0322      mov   dx, ax
│      ╎╎   0000:0324      lodsb al, byte [si]
│      ╎╎   0000:0325      mov   bl, al
│      ╎╎   0000:0327      mov   bh, dl
│      ╎╎   0000:0329      shr   dx, 1
│      ╎╎   0000:032b      shr   dx, 1
│      ╎╎   0000:032d      mov   byte es:[di], dh
│      ╎╎   0000:0330      shr   dl, 1
│      ╎╎   0000:0332      shr   dl, 1
│      ╎╎   0000:0334      mov   byte es:[di + 1], dl
│      ╎╎   0000:0338      add   bx, bx                                ; arg3
│      ╎╎   0000:033a      add   bx, bx                                ; arg3
│      ╎╎   0000:033c      and   bh, 0x3f
│      ╎╎   0000:033f      mov   byte es:[di + 2], bh
│      ╎╎   0000:0343      and   al, 0x3f
│      ╎╎   0000:0345      mov   byte es:[di + 3], al
│      ╎╎   0000:0349      add   di, 4
│      └──< 0000:034c      loop  0x321
│       ╎   0000:034e      pop   si
│       ╎   0000:034f      pop   ds
│       ╎   0000:0350      pop   cx
│       └─< 0000:0351      loop  0x30b
└           0000:0353      ret
```

### Function 0x00000418
```asm
; CALL XREF from fcn.00000000 @ +0x6b
┌ fcn.00000418();
│           0000:0418      push  es
│           0000:0419      push  ds
│           0000:041a      mov   si, word [0xff2a]
│           0000:041e      add   si, 0x25
│           0000:0421      mov   di, 0x3c9b
│           0000:0424      movsw word es:[di], word ptr [si]
│           0000:0425      movsb byte es:[di], byte ptr [si]
│           0000:0426      mov   dx, word [0x80]                       ; [0x80:2]=0x6c6
│           0000:042a      add   dx, 3
│           0000:042d      mov   word [0x3ca1], dx                     ; [0x3ca1:2]=0xffff
│           0000:0431      cmp   byte [0x3c9b], 0xfd                   ; [0x3c9b:1]=255
│       ┌─< 0000:0436      jne   0x43f
│       │   0000:0438      inc   dx
│       │   0000:0439      call  fcn.00000499                          ; fcn.00000499
│       │   0000:043c      mov   byte [0x3c9b], al                     ; [0x3c9b:1]=255
│       └─> 0000:043f      mov   si, 0x3c9b
│           0000:0442      mov   di, 0xfb80
│           0000:0445      mov   cx, 3
│           0000:0448      call  fcn.00000306                          ; fcn.00000306
│           0000:044b      mov   si, word cs:[0xc00f]
│       ┌─> 0000:0450      call  fcn.00000516                          ; fcn.00000516
│       ╎   0000:0453      or    bl, bl
│      ┌──< 0000:0455      je    0x476
│      │╎   0000:0457      push  si
│      │╎   0000:0458      dec   bl
│      │╎   0000:045a      mov   al, 3
│      │╎   0000:045c      mul   bl
│      │╎   0000:045e      push  ax
│      │╎   0000:045f      call  fcn.000004f0                          ; fcn.000004f0
│      │╎   0000:0462      pop   ax                                    ; int16_t arg1
│      │╎   0000:0463      add   di, ax
│      │╎   0000:0465      mov   bp, di
│      │╎   0000:0467      mov   es, word cs:[0xff2c]
│      │╎   0000:046c      mov   si, 0x3c9b
│      │╎   0000:046f      mov   di, 0xfb80
│      │╎   0000:0472      call  fcn.00000556                          ; fcn.00000556
│      │╎   0000:0475      pop   si
│      └──> 0000:0476      add   si, 8
│       ╎   0000:0479      cmp   word [si], 0xffff
│       └─< 0000:047c      jne   0x450
│           0000:047e      mov   di, 0x93b0
│           0000:0481      mov   si, 0xfb80
│           0000:0484      mov   ax, 0xa000
│           0000:0487      mov   es, ax
│           0000:0489      mov   ds, ax
│           0000:048b      call  fcn.000004c0                          ; fcn.000004c0
│           0000:048e      pop   ds
│           0000:048f      pop   es
│           0000:0490      mov   di, 0xe005
│           0000:0493      mov   al, 0xff
│           0000:0495      stosb byte es:[di], al
│           0000:0496      stosb byte es:[di], al
│           0000:0497      stosb byte es:[di], al
└           0000:0498      ret
```

### Function 0x00000499
```asm
; CALL XREFS from fcn.0000011e @ 0x374, 0x384
            ; CALL XREF from fcn.00000418 @ 0x439
┌ fcn.00000499();
│           0000:0499      call  fcn.000004b2                          ; fcn.000004b2
│           0000:049c      mov   al, byte [si + 3]
│           0000:049f      cmp   al, 0xfd
│       ┌─< 0000:04a1      je    0x4a4
│       │   0000:04a3      ret
│      ┌└─> 0000:04a4      add   si, 8
│      ╎    0000:04a7      call  fcn.000004b6                          ; fcn.000004b6
│      ╎    0000:04aa      mov   al, byte [si + 3]
│      ╎    0000:04ad      cmp   al, 0xfd
│      └──< 0000:04af      je    0x4a4
└           0000:04b1      ret
```

### Function 0x000004b2
```asm
; CALL XREF from fcn.00000499 @ 0x499
┌ fcn.000004b2(int16_t arg2);
│           ; arg int16_t arg2 @ dx
└           0000:04b2      mov   si, word [0xc00f]
```

### Function 0x000004b6
```asm
; CALL XREF from fcn.00000499 @ 0x4a7
            ; CODE XREF from fcn.000004b6 @ 0x4be
┌ fcn.000004b6(short unsigned int arg2);
│           ; arg short unsigned int arg2 @ dx
│       ┌─> 0000:04b6      cmp   dx, word [si]                         ; arg2
│      ┌──< 0000:04b8      jne   0x4bb
│      │╎   0000:04ba      ret
│      └──> 0000:04bb      add   si, 8
└       └─< 0000:04be      jmp   fcn.000004b6
```

### Function 0x000004c0
```asm
; CALL XREF from fcn.000000d9 @ 0x10f
            ; CALL XREFS from fcn.0000011e @ 0x3df, 0x3f6
            ; CALL XREF from fcn.00000418 @ 0x48b
┌ fcn.000004c0();
│           0000:04c0      mov   cx, 0x18
│       ┌─> 0000:04c3      movsw word es:[di], word ptr [si]
│       ╎   0000:04c4      movsw word es:[di], word ptr [si]
│       ╎   0000:04c5      movsw word es:[di], word ptr [si]
│       ╎   0000:04c6      movsw word es:[di], word ptr [si]
│       ╎   0000:04c7      add   di, 0x138
│       └─< 0000:04cb      loop  0x4c3
└           0000:04cd      ret
```

### Function 0x000004ce
```asm
; CALL XREF from fcn.0000011e @ 0x3ae
┌ fcn.000004ce(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:04ce      mov   bp, di
│           0000:04d0      dec   bl
│           0000:04d2      xor   bh, bh
│           0000:04d4      add   bx, bx                                ; arg3
│           0000:04d6      call  word cs:[bx + 0x34d8]
└           0000:04db      ret
```

### Function 0x000004f0
```asm
; CALL XREF from fcn.0000011e @ 0x3a2
            ; CALL XREF from fcn.00000418 @ 0x45f
┌ fcn.000004f0(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:04f0      mov   al, byte [si + 2]
│           0000:04f3      mov   ch, al
│           0000:04f5      and   al, 0x7f
│           0000:04f7      mov   cl, 0x30                              ; '0'
│           0000:04f9      mul   cl
│           0000:04fb      add   ax, 0x4000                            ; arg1
│           0000:04fe      mov   di, ax                                ; arg1
│           0000:0500      xor   dl, dl
│           0000:0502      or    ch, ch
│       ┌─< 0000:0504      js    0x508
│       │   0000:0506      mov   dl, 4
│       └─> 0000:0508      mov   al, byte [si + 4]
│           0000:050b      and   al, 3
│           0000:050d      add   al, dl
│           0000:050f      mov   cl, 6
│           0000:0511      mul   cl
│           0000:0513      add   di, ax                                ; arg1
└           0000:0515      ret
```

### Function 0x00000516
```asm
; CALL XREF from fcn.0000011e @ 0x399
            ; CALL XREF from fcn.00000418 @ 0x450
┌ fcn.00000516();
│           0000:0516      mov   cx, 2
│           0000:0519      mov   dx, word [0x3ca1]                     ; [0x3ca1:2]=0xffff
│       ┌─> 0000:051d      mov   bl, cl
│       ╎   0000:051f      cmp   word [si], dx
│      ┌──< 0000:0521      jne   0x524
│      │╎   0000:0523      ret
│      └──> 0000:0524      inc   dx
│       └─< 0000:0525      loop  0x51d
│           0000:0527      mov   bl, cl
└           0000:0529      ret
```

### Function 0x00000556
```asm
; XREFS: CALL 0x00000472  CALL 0x000004e3  CODE 0x000004e6  
            ; XREFS: CODE 0x000004ee  CODE 0x00000544  CALL 0x00000549  
            ; XREFS: CODE 0x0000054c  CODE 0x00000554  
┌ fcn.00000556(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0556      mov   cx, 3
│       ┌─> 0000:0559      push  cx
│       ╎   0000:055a      mov   byte [si], 0xff                       ; [0xff:1]=147
│       ╎   0000:055d      inc   si
│       ╎   0000:055e      push  ds
│       ╎   0000:055f      push  si
│       ╎   0000:0560      mov   al, byte es:[bp]
│       ╎   0000:0564      inc   bp
│       ╎   0000:0565      push  es
│       ╎   0000:0566      push  bp
│       ╎   0000:0567      dec   al
│       ╎   0000:0569      push  ax                                    ; arg1
│       ╎   0000:056a      mov   cl, 0x30                              ; '0'
│       ╎   0000:056c      mul   cl
│       ╎   0000:056e      mov   si, ax                                ; arg1
│       ╎   0000:0570      add   si, 0x4100
│       ╎   0000:0574      pop   ax
│       ╎   0000:0575      mov   cl, 8
│       ╎   0000:0577      mul   cl
│       ╎   0000:0579      add   ax, 0x7000
│       ╎   0000:057c      mov   word cs:[0x3cab], ax
│       ╎   0000:0580      mov   ax, cs
│       ╎   0000:0582      add   ax, 0x2000
│       ╎   0000:0585      mov   word cs:[0x3cad], ax
│       ╎   0000:0589      mov   ds, word cs:[0xff2c]
│       ╎   0000:058e      mov   ax, 0xa000                            ; int16_t arg1
│       ╎   0000:0591      mov   es, ax
│       ╎   0000:0593      call  fcn.000005db                          ; fcn.000005db
│       ╎   0000:0596      pop   bp
│       ╎   0000:0597      pop   es
│       ╎   0000:0598      pop   si
│       ╎   0000:0599      pop   ds
│       ╎   0000:059a      pop   cx
│       └─< 0000:059b      loop  0x559
└           0000:059d      ret
```

### Function 0x000005db
```asm
; CALL XREF from fcn.00000556 @ 0x593
            ; CALL XREF from fcn.00000556 @ +0x7c
┌ fcn.000005db(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:05db      push  ds
│           0000:05dc      push  si
│           0000:05dd      push  di
│           0000:05de      lds   si, cs:[0x3cab]
│           0000:05e3      mov   cx, 8
│       ┌─> 0000:05e6      push  cx
│       ╎   0000:05e7      lodsb al, byte [si]
│       ╎   0000:05e8      mov   cx, 8
│      ┌──> 0000:05eb      add   al, al
│      ╎╎   0000:05ed      sbb   ah, ah
│      ╎╎   0000:05ef      and   byte es:[di], ah
│      ╎╎   0000:05f2      inc   di
│      └──< 0000:05f3      loop  0x5eb
│       ╎   0000:05f5      pop   cx
│       └─< 0000:05f6      loop  0x5e6
│           0000:05f8      pop   di
│           0000:05f9      pop   si
│           0000:05fa      pop   ds
│           0000:05fb      mov   cx, 0x10
│       ┌─> 0000:05fe      lodsw ax, word [si]
│       ╎   0000:05ff      mov   dx, ax                                ; arg1
│       ╎   0000:0601      lodsb al, byte [si]
│       ╎   0000:0602      mov   bl, al
│       ╎   0000:0604      mov   bh, dl
│       ╎   0000:0606      shr   dx, 1
│       ╎   0000:0608      shr   dx, 1
│       ╎   0000:060a      or    byte es:[di], dh
│       ╎   0000:060d      shr   dl, 1
│       ╎   0000:060f      shr   dl, 1
│       ╎   0000:0611      or    byte es:[di + 1], dl
│       ╎   0000:0615      add   bx, bx                                ; arg3
│       ╎   0000:0617      add   bx, bx                                ; arg3
│       ╎   0000:0619      and   bh, 0x3f
│       ╎   0000:061c      or    byte es:[di + 2], bh
│       ╎   0000:0620      and   al, 0x3f
│       ╎   0000:0622      or    byte es:[di + 3], al
│       ╎   0000:0626      add   di, 4
│       └─< 0000:0629      loop  0x5fe
└           0000:062b      ret
```

### Function 0x00000842
```asm
; CALL XREF from fcn.000005db @ +0x248
┌ fcn.00000842();
│           0000:0842      push  cs
│           0000:0843      pop   es
│           0000:0844      mov   di, 0x3d4f                            ; 'O='
│           0000:0847      xor   bl, bl
│           ; CODE XREF from fcn.00000842 @ 0x856
│       ┌─> 0000:0849      lodsb al, byte [si]
│       ╎   0000:084a      or    al, al
│      ┌──< 0000:084c      jne   0x84f
│      │╎   0000:084e      ret
│      └──> 0000:084f      push  ds
│       ╎   0000:0850      push  si
│       ╎   0000:0851      call  fcn.00000858                          ; fcn.00000858
│       ╎   0000:0854      pop   si
│       ╎   0000:0855      pop   ds
└       └─< 0000:0856      jmp   0x849
```

### Function 0x00000858
```asm
; CALL XREF from fcn.00000842 @ 0x851
┌ fcn.00000858(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0858      sub   al, 0x20
│           0000:085a      xor   ah, ah
│           0000:085c      shl   ax, 1                                 ; arg1
│           0000:085e      shl   ax, 1                                 ; arg1
│           0000:0860      shl   ax, 1                                 ; arg1
│           0000:0862      mov   si, ax                                ; arg1
│           0000:0864      push  cs
│           0000:0865      pop   ds
│           0000:0866      add   si, word [0xf504]
│           0000:086a      push  di
│           0000:086b      mov   bl, 8
│       ┌─> 0000:086d      push  bx                                    ; arg3
│       ╎   0000:086e      lodsb al, byte [si]
│       ╎   0000:086f      push  di
│       ╎   0000:0870      mov   dh, al
│       ╎   0000:0872      mov   dl, 4
│      ┌──> 0000:0874      add   dh, dh
│      ╎╎   0000:0876      sbb   bl, bl
│      ╎╎   0000:0878      and   bl, 9
│      ╎╎   0000:087b      mov   byte es:[di], bl
│      ╎╎   0000:087e      inc   di
│      ╎╎   0000:087f      dec   dl
│      └──< 0000:0881      jne   0x874
│       ╎   0000:0883      pop   di
│       ╎   0000:0884      add   di, 0xa0
│       ╎   0000:0888      pop   bx
│       ╎   0000:0889      dec   bl
│       └─< 0000:088b      jne   0x86d
│           0000:088d      pop   di
│           0000:088e      add   di, 5
└           0000:0891      ret
```

### Function 0x000008b8
```asm
; CALL XREF from fcn.000005db @ +0x261
┌ fcn.000008b8();
│           0000:08b8      call  fcn.00000915                          ; fcn.00000915
│           0000:08bb      push  cs
│           0000:08bc      pop   es
│           0000:08bd      mov   di, 0x3def
│           0000:08c0      mov   ax, word [0xff68]                     ; [0xff68:2]=0xffff
│           0000:08c3      add   ax, ax
│           0000:08c5      add   ax, ax
│           0000:08c7      add   di, ax
│           0000:08c9      mov   si, 0x392a                            ; '*9'
│           0000:08cc      mov   cx, 6
│           ; CODE XREF from fcn.00000858 @ +0x5e
│       ┌─> 0000:08cf      push  cx
│       ╎   0000:08d0      push  di
│       ╎   0000:08d1      lodsb al, byte [si]
│       ╎   0000:08d2      push  si
│       ╎   0000:08d3      call  fcn.000008df                          ; fcn.000008df
│       ╎   0000:08d6      pop   si
│       ╎   0000:08d7      pop   di
│       ╎   0000:08d8      add   di, 6
│       ╎   0000:08db      pop   cx
│       └─< 0000:08dc      loop  0x8cf
└           0000:08de      ret
```

### Function 0x000008df
```asm
; CALL XREF from fcn.000008b8 @ 0x8d3
┌ fcn.000008df(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:08df      inc   al
│       ┌─< 0000:08e1      jne   0x8e4
│       │   0000:08e3      ret
│       └─> 0000:08e4      dec   al
│           0000:08e6      xor   ah, ah
│           0000:08e8      add   ax, ax                                ; arg1
│           0000:08ea      add   ax, ax                                ; arg1
│           0000:08ec      add   ax, ax                                ; arg1
│           0000:08ee      add   ax, word cs:[0xf502]                  ; arg1
│           0000:08f3      mov   si, ax                                ; arg1
│           0000:08f5      mov   cx, 7
│       ┌─> 0000:08f8      lodsb al, byte [si]
│       ╎   0000:08f9      add   al, al
│       ╎   0000:08fb      add   al, al
│       ╎   0000:08fd      mov   ah, 6
│      ┌──> 0000:08ff      add   al, al
│      ╎╎   0000:0901      sbb   bl, bl
│      ╎╎   0000:0903      and   bl, 9
│      ╎╎   0000:0906      mov   byte es:[di], bl
│      ╎╎   0000:0909      inc   di
│      ╎╎   0000:090a      dec   ah
│      └──< 0000:090c      jne   0x8ff
│       ╎   0000:090e      add   di, 0x9a
│       └─< 0000:0912      loop  0x8f8
└           0000:0914      ret
```

### Function 0x00000915
```asm
; CALL XREF from fcn.00000858 @ +0x4a
            ; CALL XREF from fcn.000008b8 @ 0x8b8
┌ fcn.00000915();
│           0000:0915      mov   di, 0x3929                            ; ')9'
│           0000:0918      call  fcn.00000934                          ; fcn.00000934
│           0000:091b      mov   cx, 6
│       ┌─> 0000:091e      test  byte cs:[di], 0xff
│      ┌──< 0000:0922      je    0x925
│      │╎   0000:0924      ret
│      └──> 0000:0925      mov   byte cs:[di], 0xff                    ; [0xff:1]=147
│       ╎   0000:0929      inc   di
│       └─< 0000:092a      loop  0x91e
└           0000:092c      ret
```

### Function 0x00000934
```asm
; CALL XREF from fcn.00000915 @ 0x918
┌ fcn.00000934();
│           0000:0934      mov   cl, 0xf
│           0000:0936      mov   bx, 0x4240                            ; '@B'
│           0000:0939      call  fcn.0000097a                          ; fcn.0000097a
│           0000:093c      mov   byte cs:[di], dh
│           0000:093f      mov   cl, 1
│           0000:0941      mov   bx, 0x86a0
│           0000:0944      call  fcn.0000097a                          ; fcn.0000097a
│           0000:0947      mov   byte cs:[di + 1], dh
│           0000:094b      xor   cl, cl
│           0000:094d      mov   bx, 0x2710
│           0000:0950      call  fcn.0000097a                          ; fcn.0000097a
│           0000:0953      mov   byte cs:[di + 2], dh
│           0000:0957      mov   bx, str.t                             ; 0x3e8 ; "<\et\r\xbe@\xfc\x83\xc7\b\xfe\xc1t\U00000003\xe8\xc7"
│           0000:095a      call  fcn.00000993                          ; fcn.00000993
│           0000:095d      mov   byte cs:[di + 3], dh
│           0000:0961      mov   bx, 0x64                              ; 'd'
│           0000:0964      call  fcn.00000993                          ; fcn.00000993
│           0000:0967      mov   byte cs:[di + 4], dh
│           0000:096b      mov   bx, 0xa
│           0000:096e      call  fcn.00000993                          ; fcn.00000993
│           0000:0971      mov   byte cs:[di + 5], dh
│           0000:0975      mov   byte cs:[di + 6], al
└           0000:0979      ret
```

### Function 0x0000097a
```asm
; CALL XREFS from fcn.00000934 @ 0x939, 0x944, 0x950
┌ fcn.0000097a(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:097a      xor   dh, dh
│           ; CODE XREF from fcn.0000097a @ 0x98c
│       ┌─> 0000:097c      sub   dl, cl
│      ┌──< 0000:097e      jb    0x990
│      │╎   0000:0980      sub   ax, bx                                ; arg3
│     ┌───< 0000:0982      jae   0x98a
│     ││╎   0000:0984      or    dl, dl
│    ┌────< 0000:0986      je    0x98e
│    │││╎   0000:0988      dec   dl
│    │└───> 0000:098a      inc   dh
│    │ │└─< 0000:098c      jmp   0x97c
│    └────> 0000:098e      add   ax, bx                                ; arg3
│      └──> 0000:0990      add   dl, cl
└           0000:0992      ret
```

### Function 0x00000993
```asm
; CALL XREFS from fcn.00000934 @ 0x95a, 0x964, 0x96e
┌ fcn.00000993(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0993      xor   dh, dh
│           0000:0995      div   bx
│           0000:0997      xchg  dx, ax                                ; arg1
│           0000:0998      mov   dh, dl
│           0000:099a      xor   dl, dl
└           0000:099c      ret
```

### Function 0x00000c32
```asm
; XREFS: CALL 0x00000adf  CALL 0x00000b72  CALL 0x00000b9f  
            ; XREFS: CALL 0x00000bce  CALL 0x00000bfd  CALL 0x00000c25  
┌ fcn.00000c32();
│           0000:0c32      mov   cx, 2
│       ┌─> 0000:0c35      call  fcn.00000c64                          ; fcn.00000c64
│       ╎   0000:0c38      call  fcn.00000c64                          ; fcn.00000c64
│       ╎   0000:0c3b      call  fcn.00000c64                          ; fcn.00000c64
│       ╎   0000:0c3e      call  fcn.00000c64                          ; fcn.00000c64
│       ╎   0000:0c41      call  fcn.00000c64                          ; fcn.00000c64
│       ╎   0000:0c44      rol   word cs:[0x3ca7], 1
│       ╎   0000:0c49      adc   ax, ax
│       ╎   0000:0c4b      stosw word es:[di], ax
│       ╎   0000:0c4c      rol   word cs:[0x3ca5], 1
│       ╎   0000:0c51      adc   ax, ax
│       ╎   0000:0c53      rol   word cs:[0x3ca3], 1
│       ╎   0000:0c58      adc   ax, ax                                ; int16_t arg1
│       ╎   0000:0c5a      call  fcn.00000c64                          ; fcn.00000c64
│       ╎   0000:0c5d      call  fcn.00000c64                          ; fcn.00000c64
│       ╎   0000:0c60      stosb byte es:[di], al
│       └─< 0000:0c61      loop  0xc35
└           0000:0c63      ret
```

### Function 0x00000c64
```asm
; XREFS: CALL 0x00000c35  CALL 0x00000c38  CALL 0x00000c3b  
            ; XREFS: CALL 0x00000c3e  CALL 0x00000c41  CALL 0x00000c5a  
            ; XREFS: CALL 0x00000c5d  
┌ fcn.00000c64(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0c64      rol   word cs:[0x3ca7], 1
│           0000:0c69      adc   ax, ax                                ; arg1
│           0000:0c6b      rol   word cs:[0x3ca5], 1
│           0000:0c70      adc   ax, ax                                ; arg1
│           0000:0c72      rol   word cs:[0x3ca3], 1
│           0000:0c77      adc   ax, ax                                ; arg1
└           0000:0c79      ret
```

### Function 0x00000c7a
```asm
; CALL XREFS from fcn.00000993 @ +0x156, +0x20f, +0x23e, +0x26d
┌ fcn.00000c7a();
│           0000:0c7a      mov   cx, 8
│       ┌─> 0000:0c7d      xor   al, al
│       ╎   0000:0c7f      rol   word cs:[0x3ca9], 1
│       ╎   0000:0c84      adc   al, al
│       ╎   0000:0c86      rol   word cs:[0x3ca9], 1
│       ╎   0000:0c8b      adc   al, al
│       ╎   0000:0c8d      cmp   al, 3
│      ┌──< 0000:0c8f      je    0xc93
│      │╎   0000:0c91      xor   al, al
│      └──> 0000:0c93      and   al, 1
│       ╎   0000:0c95      add   dl, dl
│       ╎   0000:0c97      or    dl, al
│       └─< 0000:0c99      loop  0xc7d
└           0000:0c9b      ret
```

## Cross-References (callers)
```json
  0x000000d9:
[{"from":133,"to":217,"type":"CALL"}]
  0x0000011e:
[{"from":181,"to":286,"type":"CALL"}]
  0x00000127:
[{"from":165,"to":295,"type":"CALL"},{"from":173,"to":295,"type":"CALL"},{"from":189,"to":295,"type":"CALL"},{"from":197,"to":295,"type":"CALL"},{"from":516,"to":295,"type":"CODE"}]
  0x000001dc:
[{"from":141,"to":476,"type":"CALL"},{"from":149,"to":476,"type":"CALL"},{"from":157,"to":476,"type":"CALL"}]
  0x00000303:
[{"from":913,"to":771,"type":"CALL"}]
  0x00000306:
[{"from":1096,"to":774,"type":"CALL"}]
  0x00000418:
[{"from":107,"to":1048,"type":"CALL"}]
  0x00000499:
[{"from":884,"to":1177,"type":"CALL"},{"from":900,"to":1177,"type":"CALL"},{"from":1081,"to":1177,"type":"CALL"}]
  0x000004b2:
[{"from":1177,"to":1202,"type":"CALL"}]
  0x000004b6:
[{"from":1191,"to":1206,"type":"CALL"},{"from":1214,"to":1206,"type":"CODE"}]
  0x000004c0:
[{"from":271,"to":1216,"type":"CALL"},{"from":991,"to":1216,"type":"CALL"},{"from":1014,"to":1216,"type":"CALL"},{"from":1163,"to":1216,"type":"CALL"}]
  0x000004ce:
[{"from":942,"to":1230,"type":"CALL"}]
  0x000004f0:
[{"from":930,"to":1264,"type":"CALL"},{"from":1119,"to":1264,"type":"CALL"}]
  0x00000516:
[{"from":921,"to":1302,"type":"CALL"},{"from":1104,"to":1302,"type":"CALL"}]
  0x00000556:
[{"from":1138,"to":1366,"type":"CALL"},{"from":1251,"to":1366,"type":"CALL"},{"from":1254,"to":1366,"type":"CODE"},{"from":1262,"to":1366,"type":"CODE"},{"from":1348,"to":1366,"type":"CODE"},{"from":1353,"to":1366,"type":"CALL"},{"from":1356,"to":1366,"type":"CODE"},{"from":1364,"to":1366,"type":"CODE"}]
  0x000005db:
[{"from":1427,"to":1499,"type":"CALL"},{"from":1490,"to":1499,"type":"CALL"}]
  0x00000842:
[{"from":2083,"to":2114,"type":"CALL"}]
  0x00000858:
[{"from":2129,"to":2136,"type":"CALL"}]
  0x000008b8:
[{"from":2108,"to":2232,"type":"CALL"}]
```