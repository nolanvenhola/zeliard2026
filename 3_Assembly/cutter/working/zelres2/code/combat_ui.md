# COMBAT_UI - Analysis

**Source:** `chunk_01.bin`  
**Size:** 3.5 KB  
**Functions:** 29  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000   20 188  -> 183  fcn.00000000
0x000000bc    1 12           fcn.000000bc
0x00000110    2 8            fcn.00000110
0x00000112    2 3    -> 4    fcn.00000112
0x00000114    1 2            fcn.00000114
0x00000116    1 2            fcn.00000116
0x00000118   15 227  -> 128  fcn.00000118
0x00000139    3 70           fcn.00000139
0x0000017f    1 21           fcn.0000017f
0x0000022c    3 62           fcn.0000022c
0x0000026a    1 23           fcn.0000026a
0x00000340    3 62           fcn.00000340
0x0000037e    1 23           fcn.0000037e
0x000005b8    3 38           fcn.000005b8
0x000005de    1 53           fcn.000005de
0x00000613    3 26           fcn.00000613
0x0000062d    3 26           fcn.0000062d
0x00000647    7 38           fcn.00000647
0x0000066d    7 104          fcn.0000066d
0x000006d5    5 129          fcn.000006d5
0x00000756   13 242          fcn.00000756
0x00000848    1 42           fcn.00000848
0x00000872    3 65           fcn.00000872
0x000008b3    5 122          fcn.000008b3
0x0000092d    3 138          fcn.0000092d
0x000009b7    1 34           fcn.000009b7
0x000009d9    5 39           fcn.000009d9
0x00000a2f    5 45           fcn.00000a2f
0x00000a5c    7 58           fcn.00000a5c
```

## Strings
```
nth      paddr      vaddr len size section type    string                                                                   
----------------------------------------------------------------------------------------------------------------------------
  0 0x00000179 0x00000179   4    4         ascii   a$\fu
  1 0x00000264 0x00000264   4    4         ascii   a$\fu
  2 0x000002ee 0x000002ee   4    5         ascii   X$\fu
  3 0x00000378 0x00000378   4    4         ascii   a$\fu
  4 0x00000453 0x00000453  11   11         ibm037  xêuÂucuou´u
  5 0x00000524 0x00000524   6   12         utf16le PZdnsx
  6 0x00000687 0x00000687   4    4         ascii   6 [^
  7 0x000006ef 0x000006ef   4    4         ascii   4 [^
  8 0x0000083c 0x0000083c   4    4         ascii   < ^[
  9 0x00000844 0x00000844   6    7         ibm037  ßSUC~o
 10 0x0000094b 0x0000094b   4    4         ascii   PRPR
 11 0x0000095a 0x0000095a   4    4         ascii    ZX2
 12 0x00000983 0x00000983   4    4         ascii   " ZX
 13 0x000009b7 0x000009b7   4    4         utf8    SRQ2
 14 0x00000a03 0x00000a03  13   14         ascii   SELECT-MAGIC:
 15 0x00000a13 0x00000a13   6    7         ascii   CWEAR:
 16 0x00000a1c 0x00000a1c   5    6         ascii   qUSE:
 17 0x00000a24 0x00000a24  10   11         ascii   CINVENTORY
 18 0x00000a3b 0x00000a3b   4    4         ascii   SQPC
 19 0x00000a46 0x00000a46   9    9         ascii   " XY[SQP.
 20 0x00000a51 0x00000a51   6    6         ascii   " XY[^
 21 0x00000a96 0x00000a96   7    8         ascii   NOTHING
 22 0x00000a9e 0x00000a9e   6    7         ascii   NO USE
 23 0x00000aa6 0x00000aa6   5    6         ascii   LEVEL
 24 0x00000ab0 0x00000ab0  11   12         ascii   I have used
 25 0x00000abc 0x00000abc   4    8         utf8    ƪͪӪ٪ blocks=Latin Extended-B,Combining Diacritical Marks,Cyrillic,Arabic
 26 0x00000aca 0x00000aca   6    7         ascii   Espada
 27 0x00000ad1 0x00000ad1   5    6         ascii   Saeta
 28 0x00000ad7 0x00000ad7   5    6         ascii   Fuego
 29 0x00000add 0x00000add   6    7         ascii   Lanzar
 30 0x00000ae4 0x00000ae4   6    7         ascii   Rascar
 31 0x00000aeb 0x00000aeb   4    5         ascii   Agua
 32 0x00000af0 0x00000af0   6    7         ascii   Guerra
 33 0x00000b03 0x00000b03   6    7         ascii   Feruza
 34 0x00000b0a 0x00000b0a  11   12         ascii         shoes
 35 0x00000b16 0x00000b16   6    7         ascii   Pirika
 36 0x00000b1d 0x00000b1d  11   12         ascii         shoes
 37 0x00000b29 0x00000b29   7    8         ascii   Silkarn
 38 0x00000b31 0x00000b31  11   12         ascii         shoes
 39 0x00000b3d 0x00000b3d   7    8         ascii   Ruzeria
 40 0x00000b45 0x00000b45  11   12         ascii         shoes
 41 0x00000b51 0x00000b51   8    9         ascii   Asbestos
 42 0x00000b5a 0x00000b5a  11   12         ascii          cape
 43 0x00000b76 0x00000b76  23   24         ascii          a Ken\ko Potion.
 44 0x00000b8e 0x00000b8e  23   24         ascii           a Juu-en Fruit.
 45 0x00000ba6 0x00000ba6  23   24         ascii        a Elixir of Kashi.
 46 0x00000bbe 0x00000bbe  23   24         ascii         a Chikara Powder.
 47 0x00000bd6 0x00000bd6  23   24         ascii            a Magia Stone.
 48 0x00000bee 0x00000bee  23   24         ascii    a Holy Water of Acero.
 49 0x00000c06 0x00000c06  23   24         ascii              a Sabre Oil.
 50 0x00000c1e 0x00000c1e  23   24         ascii          a Kioku Feather.
 51 0x00000c48 0x00000c48   6    7         ascii   Ken\ko
 52 0x00000c4f 0x00000c4f  12   13         ascii         Potion
 53 0x00000c5c 0x00000c5c   7    8         ascii   Juu-en 
 54 0x00000c64 0x00000c64  12   13         ascii          Fruit
 55 0x00000c71 0x00000c71   6    7         ascii   Elixir
 56 0x00000c78 0x00000c78  12   13         ascii       of Kashi
 57 0x00000c85 0x00000c85   7    8         ascii   Chikara
 58 0x00000c8d 0x00000c8d  12   13         ascii         Powder
 59 0x00000c9a 0x00000c9a  11   12         ascii   Magia Stone
 60 0x00000ca7 0x00000ca7  10   11         ascii   Holy Water
 61 0x00000cb2 0x00000cb2  12   13         ascii       of Acero
 62 0x00000cbf 0x00000cbf   9   10         ascii   Sabre Oil
 63 0x00000cca 0x00000cca   5    6         ascii   Kioku
 64 0x00000cd0 0x00000cd0  12   13         ascii        feather
 65 0x00000ce9 0x00000ce9   8    9         ascii   Training
 66 0x00000cf2 0x00000cf2  10   11         ascii        Sword
 67 0x00000cfd 0x00000cfd  10   11         ascii   Wise man\s
 68 0x00000d08 0x00000d08  11   12         ascii         Sword
 69 0x00000d14 0x00000d14   6    7         ascii   Spirit
 70 0x00000d1b 0x00000d1b   9   10         ascii       Sword
 71 0x00000d25 0x00000d25   8    9         ascii   Knight\s
 72 0x00000d2e 0x00000d2e   9   10         ascii       Sword
 73 0x00000d38 0x00000d38  12   13         ascii   Illumination
 74 0x00000d45 0x00000d45  12   13         ascii          Sword
 75 0x00000d52 0x00000d52  11   12         ascii   Enchantment
 76 0x00000d5e 0x00000d5e  12   13         ascii          Sword
 77 0x00000d77 0x00000d77   4    5         ascii   Clay
 78 0x00000d7c 0x00000d7c  11   12         ascii        Shield
 79 0x00000d88 0x00000d88  10   11         ascii   Wise Man\s
 80 0x00000d93 0x00000d93  12   13         ascii         Shield
 81 0x00000da0 0x00000da0   5    6         ascii   Stone
 82 0x00000da6 0x00000da6  11   12         ascii        Shield
 83 0x00000db2 0x00000db2   5    6         ascii   Honor
 84 0x00000db8 0x00000db8  11   12         ascii        Shield
 85 0x00000dc4 0x00000dc4   5    6         ascii   Light
 86 0x00000dca 0x00000dca  11   12         ascii        Shield
 87 0x00000dd6 0x00000dd6   8    9         ascii   Titanium
 88 0x00000ddf 0x00000ddf  12   13         ascii         Shield
 89 0x00000ded 0x00000ded  14   15         ascii   \f38?\f0"m\f0"?-^
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0000      sbb   ax, 0xe                               ; arg1
│           ; DATA XREF from fcn.00000756 @ 0x82b
│           0000:0003      add   byte [si], al
│           0000:0005      mov   al, byte [0xa00b]                     ; [0xa00b:1]=255
│           ; DATA XREF from fcn.00000000 @ 0x4d
│           0000:0008      mov   byte [0xadf8], 0
│           ; DATA XREF from fcn.00000118 @ 0x1ae
│           ; DATA XREFS from fcn.0000026a @ +0x46, +0x7c
│           ; DATA XREF from fcn.0000037e @ +0x30
│       ┌─< 0000:000d      jmp   0x14
        │   ; DATA XREF from fcn.0000017f @ +0x56
        │   ; DATA XREF from fcn.0000037e @ +0x211
..
│       │   ; CODE XREF from fcn.00000000 @ 0xd
│       └─> 0000:0014      mov   byte [0xae02], 0
│           0000:0019      mov   si, 0xade8
│           0000:001c      mov   cx, 4
│       ┌─> 0000:001f      push  cx
│       ╎   0000:0020      lodsw ax, word [si]
│       ╎   0000:0021      mov   bx, ax                                ; arg1
│       ╎   0000:0023      lodsw ax, word [si]
│       ╎   0000:0024      mov   cx, ax                                ; arg1
│       ╎   0000:0026      push  si
│       ╎   0000:0027      mov   al, 0xff
│       ╎   ; DATA XREF from fcn.00000848 @ 0x869
│       ╎   ; DATA XREF from fcn.00000872 @ 0x8aa
│       ╎   ; DATA XREF from fcn.0000092d @ 0x9a4
│       ╎   0000:0029      call  word cs:[0x2000]
│       ╎   0000:002e      pop   si
│       ╎   0000:002f      pop   cx
│       │   ; DATA XREF from fcn.00000a5c @ +0x395
│       └─< 0000:0030      loop  0x1f
│           0000:0032      call  fcn.000009d9                          ; fcn.000009d9
│           0000:0035      push  cs
│           0000:0036      pop   es
│           0000:0037      mov   si, 0xbb
│           0000:003a      mov   di, 0xae03
│           0000:003d      xor   cl, cl
│           0000:003f      mov   ch, 1
│       ┌─> 0000:0041      lodsb al, byte [si]
│       ╎   0000:0042      or    al, al
│       ╎   ; DATA XREF from fcn.000005de @ 0x5f1
│      ┌──< 0000:0044      je    0x4b
│      │╎   0000:0046      mov   al, ch
│      │╎   ; DATA XREF from fcn.000005de @ 0x609
│      │╎   0000:0048      stosb byte es:[di], al
│      │╎   0000:0049      inc   cl
│      │╎   ; DATA XREF from fcn.0000022c @ 0x25c
│      │╎   ; DATA XREF from fcn.000006d5 @ 0x742
│      └──> 0000:004b      inc   ch
│       ╎   0000:004d      cmp   ch, 8
│       │   ; DATA XREF from fcn.0000037e @ +0xed
│       └─< 0000:0050      jne   0x41
│           0000:0052      mov   byte [0xadfa], cl
│           ; DATA XREF from fcn.0000037e @ +0x7b
│           ; DATA XREF from fcn.000005de @ 0x60c
│           0000:0056      mov   si, 0xa1
│           0000:0059      mov   di, 0xae0a
│           ; DATA XREFS from fcn.0000022c @ 0x24f, 0x259
│           ; DATA XREFS from fcn.000006d5 @ 0x735, 0x73f, 0x749
│           0000:005c      xor   al, al
│           ; DATA XREFS from fcn.00000756 @ 0x7da, 0x809
│           0000:005e      stosb byte es:[di], al
│           0000:005f      xor   cl, cl
│           0000:0061      mov   ch, 5
│       ┌─> 0000:0063      lodsb al, byte [si]
│       ╎   0000:0064      or    al, al
│      ┌──< 0000:0066      je    0x6b
│      │╎   0000:0068      stosb byte es:[di], al
│      │╎   ; DATA XREFS from fcn.00000848 @ 0x859, 0x867
│      │╎   0000:0069      inc   cl
│      └──> 0000:006b      dec   ch
│       └─< 0000:006d      jne   0x63
│           0000:006f      or    cl, cl
│           ; DATA XREFS from fcn.0000066d @ 0x6c1, 0x6cb
│       ┌─< 0000:0071      je    0x75
│       │   0000:0073      inc   cl
│       └─> 0000:0075      mov   byte [0xadfc], cl
│           0000:0079      call  fcn.00000647                          ; fcn.00000647
│           0000:007c      call  fcn.000008b3                          ; fcn.000008b3
│           0000:007f      call  fcn.000006d5                          ; fcn.000006d5
│           0000:0082      call  fcn.0000066d                          ; fcn.0000066d
│           0000:0085      call  fcn.00000756                          ; fcn.00000756
│           0000:0088      call  fcn.00000a5c                          ; fcn.00000a5c
│           0000:008b      sbb   al, al
│           ; DATA XREF from fcn.0000037e @ +0x64
│           0000:008d      mov   byte [0xae01], al                     ; [0xae01:1]=255
│           ; DATA XREF from fcn.0000037e @ +0xf2
│           0000:0090      xor   cl, cl
│           ; DATA XREFS from fcn.00000756 @ 0x756, 0x760, 0x768
│           0000:0092      test  byte [0xadfa], 0xff
│       ┌─< 0000:0097      jne   0xb8
│       │   ; DATA XREFS from fcn.00000756 @ 0x7f3, 0x812
│       │   0000:0099      inc   cl
│       │   0000:009b      test  byte [0xadfc], 0xff
│      ┌──< 0000:00a0      jne   0xb8
│      ││   0000:00a2      test  byte [0xadf8], 0xff
│     ┌───< 0000:00a7      jne   0xb2
│     │││   0000:00a9      inc   cl
│     │││   ; DATA XREF from fcn.0000037e @ +0x14e
│     │││   0000:00ab      test  byte [0xadfe], 0xff
│    ┌────< 0000:00b0      jne   0xb8
│    ││││   ; DATA XREFS from fcn.0000037e @ +0xf5, +0xfb, +0x10e
│   ┌─└───> 0000:00b2      call  fcn.00000a5c                          ; fcn.00000a5c
│   └─────< 0000:00b5      jae   0xb2
│    │ ││   0000:00b7      ret
└    └─└└─> 0000:00b8      mov   byte [0xadf9], cl
```

### Function 0x000000bc
```asm
; CODE XREF from fcn.00000118 @ 0x1bc
            ; CODE XREF from fcn.0000026a @ +0x50
            ; CODE XREF from fcn.0000037e @ +0x3a
├ (loc) fcn.000000bc(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:00bc      mov   bl, byte [0xadf9]
│           0000:00c0      xor   bh, bh
│           0000:00c2      add   bx, bx                                ; arg3
└           0000:00c4      jmp   word [bx - 0x5f3c]
```

### Function 0x00000110
```asm
; CALL XREF from fcn.00000a5c @ 0xa5c
│           ; CALL XREF from fcn.00000a5c @ 0xa61
│           ;-- (0x00000112) fcn.00000112:
┌ fcn.00000110();
│           0000:0110  ~   mov   byte [0xff75], 0xc                    ; [0xc:1]=0
│           ; CALL XREF from fcn.00000a5c @ 0xa66
│           ;-- (0x00000114) fcn.00000114:
..
│           ; CALL XREF from fcn.00000a5c @ 0xa6b
│           ;-- (0x00000116) fcn.00000116:
└           0000:0115  ~   call  fcn.00000139                          ; fcn.00000139
```

### Function 0x00000112
```asm
│           ; CALL XREF from fcn.00000a5c @ 0xa61
┌ fcn.00000112(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│       ┌─< 0000:0112  ~   jne   0x113
│       │   ; CALL XREF from fcn.00000a5c @ 0xa66
│       │   ;-- (0x00000114) fcn.00000114:
│       └─> 0000:0113  ~   dec   word [si]
```

### Function 0x00000114
```asm
│           ; CALL XREF from fcn.00000a5c @ 0xa66
┌ fcn.00000114(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0114  ~   or    al, 0xe8
..
```

### Function 0x00000116
```asm
│           ; CALL XREF from fcn.00000a5c @ 0xa6b
┌ fcn.00000116(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
└           0000:0116      and   word [bx + si], ax                    ; arg3
```

### Function 0x00000118
```asm
│╎╎╎╎   ; CALL XREF from fcn.00000a5c @ 0xa70
┌ fcn.00000118();
│   └─────< 0000:0118      jmp   0xdc
│    ╎╎╎╎   0000:011a      test  byte [0xadfb], 0xff
│    └────< 0000:011f      je    0xdc
│     ╎╎╎   0000:0121      xor   al, al
│     ╎╎╎   0000:0123      call  fcn.0000017f                          ; fcn.0000017f
│     ╎╎╎   0000:0126      dec   byte [0xadfb]
│     ╎╎╎   0000:012a      mov   al, 2
│     ╎╎╎   0000:012c      call  fcn.0000017f                          ; fcn.0000017f
│     ╎╎╎   0000:012f      mov   byte [0xff75], 0xc                    ; [0xc:1]=0
│     ╎╎╎   0000:0134      call  fcn.00000139                          ; fcn.00000139
│     └───< 0000:0137      jmp   0xdc
       ╎╎   ; CALL XREF from fcn.00000110 @ 0x115
       ╎╎   ; CALL XREF from fcn.00000118 @ 0x134
..
       ╎╎   ; XREFS: CALL 0x000000d3  CALL 0x00000104  CALL 0x0000010d  
       ╎╎   ; XREFS: CALL 0x00000123  CALL 0x0000012c  CALL 0x000001b9  
│      ╎╎   ; CODE XREF from fcn.00000118 @ 0xec
│      ╎╎   0000:0194      mov   cl, 1                                 ; arg3
│      ╎╎   0000:0196      test  byte [0xadfc], 0xff
│     ┌───< 0000:019b      jne   0x1ae
│     │╎╎   0000:019d      test  byte [0xadf8], 0xff
│     │╎╎   0000:01a2      mov   cl, 2
│     │╎╎   0000:01a4      test  byte [0xadfe], 0xff
│    ┌────< 0000:01a9      jne   0x1ae
│    ││└──< 0000:01ab      jmp   0xdc
│    └└───> 0000:01ae      mov   byte [0xff75], 0xd                    ; [0xd:1]=235
│       ╎   0000:01b3      mov   byte [0xadf9], cl
│       ╎   0000:01b7      mov   al, 5
│       ╎   0000:01b9      call  fcn.0000017f                          ; fcn.0000017f
│       └─< 0000:01bc      jmp   fcn.000000bc                          ; fcn.000000bc
```

### Function 0x00000139
```asm
; CALL XREF from fcn.00000110 @ 0x115
            ; CALL XREF from fcn.00000118 @ 0x134
┌ fcn.00000139(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0139      mov   bx, 0xae03
│           0000:013c      mov   al, byte [0xadfb]                     ; [0xadfb:1]=255
│           0000:013f      xlatb
│           0000:0140      mov   byte [0x9d], al
│           0000:0143      mov   bx, 0x2711
│           0000:0146      mov   cx, 0x1009
│           0000:0149      xor   al, al
│           0000:014b      call  word cs:[0x2000]
│           0000:0150      mov   bl, byte [0x9d]                       ; [0x9d:1]=252
│           0000:0154      dec   bl
│           0000:0156      xor   bh, bh
│           0000:0158      add   bx, bx
│           0000:015a      mov   si, word [bx - 0x5548]
│           0000:015e      mov   bx, 0x9e                              ; int16_t arg4
│           0000:0161      mov   cl, 0x12
│           0000:0163      mov   ah, 1
│           0000:0165      call  fcn.00000a2f                          ; fcn.00000a2f
│           0000:0168      mov   al, byte [0x9d]                       ; [0x9d:1]=252
│           0000:016b      mov   bx, 0x37a4
│           0000:016e      call  word cs:[0x201e]
│           0000:0173      call  word cs:[0x2018]
│       ┌─> 0000:0178      int   0x61
│       ╎   0000:017a      and   al, 0xc
│       └─< 0000:017c      jne   0x178
└           0000:017e      ret
```

### Function 0x0000017f
```asm
; XREFS: CALL 0x000000d3  CALL 0x00000104  CALL 0x0000010d  
            ; XREFS: CALL 0x00000123  CALL 0x0000012c  CALL 0x000001b9  
┌ fcn.0000017f(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:017f      mov   bh, byte [0xadfb]
│           0000:0183      xor   bl, bl
│           0000:0185      add   bx, bx                                ; arg3
│           0000:0187      add   bx, bx                                ; arg3
│           0000:0189      add   bx, bx                                ; arg3
│           0000:018b      add   bx, 0xe1a                             ; 3610 ; arg3
└           0000:018f      jmp   word cs:[0x202e]
```

### Function 0x0000022c
```asm
; CALL XREFS from fcn.0000017f @ +0x89, +0xa8
┌ fcn.0000022c(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:022c      mov   bx, 0xae0a
│           0000:022f      mov   al, byte [0xadfd]                     ; [0xadfd:1]=255
│           0000:0232      xlatb
│           0000:0233      mov   byte [0x9e], al
│           0000:0236      mov   bx, 0x1742
│           0000:0239      mov   cx, 0x1611
│           0000:023c      xor   al, al
│           0000:023e      call  word cs:[0x2000]
│           0000:0243      mov   bl, byte [0x9e]                       ; [0x9e:1]=173
│           0000:0247      xor   bh, bh
│           0000:0249      add   bx, bx
│           0000:024b      mov   si, word [bx - 0x550d]
│           0000:024f      mov   bx, 0x5c                              ; '\' ; int16_t arg4
│           0000:0252      mov   cl, 0x43                              ; 'C'
│           0000:0254      mov   ah, 1
│           0000:0256      call  fcn.00000a2f                          ; fcn.00000a2f
│           0000:0259      mov   bx, 0x5c                              ; '\' ; int16_t arg4
│           0000:025c      mov   cl, 0x4b                              ; 'K'
│           0000:025e      mov   ah, 1
│           0000:0260      call  fcn.00000a2f                          ; fcn.00000a2f
│       ┌─> 0000:0263      int   0x61
│       ╎   0000:0265      and   al, 0xc
│       └─< 0000:0267      jne   0x263
└           0000:0269      ret
```

### Function 0x0000026a
```asm
; XREFS: CALL 0x000001c4  CALL 0x000001f7  CALL 0x00000200  
            ; XREFS: CALL 0x00000216  CALL 0x0000021f  CALL 0x000002b7  
┌ fcn.0000026a(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:026a      mov   bh, byte [0xadfd]
│           0000:026e      xor   bl, bl
│           0000:0270      mov   cx, bx                                ; arg3
│           0000:0272      add   bx, bx                                ; arg3
│           0000:0274      add   bx, bx                                ; arg3
│           0000:0276      add   bx, cx                                ; arg3
│           0000:0278      add   bx, 0xe53                             ; 3667 ; arg3
└           0000:027c      jmp   word cs:[0x202e]
```

### Function 0x00000340
```asm
; CALL XREFS from fcn.0000026a @ +0xb2, +0xd1
┌ fcn.00000340(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0340      mov   bx, 0xae10
│           0000:0343      mov   al, byte [0xae00]                     ; [0xae00:1]=255
│           0000:0346      xlatb
│           0000:0347      mov   byte [0xadff], al                     ; [0xadff:1]=255
│           0000:034a      mov   bx, 0x1570
│           0000:034d      mov   cx, 0x1811
│           0000:0350      xor   al, al
│           0000:0352      call  word cs:[0x2000]
│           0000:0357      mov   bl, byte [0xadff]
│           0000:035b      xor   bh, bh
│           0000:035d      add   bx, bx
│           0000:035f      mov   si, word [bx - 0x53ce]
│           0000:0363      mov   bx, 0x54                              ; 'T' ; int16_t arg4
│           0000:0366      mov   cl, 0x70                              ; 'p'
│           0000:0368      mov   ah, 1
│           0000:036a      call  fcn.00000a2f                          ; fcn.00000a2f
│           0000:036d      mov   bx, 0x54                              ; 'T' ; int16_t arg4
│           0000:0370      mov   cl, 0x78                              ; 'x'
│           0000:0372      mov   ah, 1
│           0000:0374      call  fcn.00000a2f                          ; fcn.00000a2f
│       ┌─> 0000:0377      int   0x61
│       ╎   0000:0379      and   al, 0xc
│       └─< 0000:037b      jne   0x377
└           0000:037d      ret
```

### Function 0x0000037e
```asm
; XREFS: CALL 0x000002c2  CALL 0x0000030b  CALL 0x00000314  
            ; XREFS: CALL 0x0000032a  CALL 0x00000333  CALL 0x000003b5  
            ; XREFS: CALL 0x000005ba  CODE 0x000005db  
┌ fcn.0000037e(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:037e      mov   bh, byte [0xae00]
│           0000:0382      xor   bl, bl
│           0000:0384      mov   cx, bx                                ; arg3
│           0000:0386      add   bx, bx                                ; arg3
│           0000:0388      add   bx, bx                                ; arg3
│           0000:038a      add   bx, cx                                ; arg3
│           0000:038c      add   bx, 0xe81                             ; 3713 ; arg3
└           0000:0390      jmp   word cs:[0x202e]
```

### Function 0x000005b8
```asm
╎   ; CALL XREF from fcn.0000037e @ +0x219
┌ fcn.000005b8(int16_t arg1);
│       ╎   ; arg int16_t arg1 @ ax
│       ╎   0000:05b8      xor   al, al
│       ╎   0000:05ba      call  fcn.0000037e                          ; fcn.0000037e
│       ╎   0000:05bd      mov   bx, 0xe83                             ; 3715
│       ╎   0000:05c0      mov   cx, 0x1e10
│       ╎   0000:05c3      xor   al, al
│       ╎   0000:05c5      call  word cs:[0x2000]
│       ╎   0000:05ca      test  byte [0xadfe], 0xff
│      ┌──< 0000:05cf      jne   0x5d6
│      │╎   0000:05d1      mov   byte [0xadfe], 1
│      └──> 0000:05d6      call  fcn.0000066d                          ; fcn.0000066d
│       ╎   0000:05d9      mov   al, 2
└       └─< 0000:05db      jmp   fcn.0000037e                          ; fcn.0000037e
```

### Function 0x000005de
```asm
; XREFS: CODE 0x00000484  CODE 0x00000497  CODE 0x000004bf  
            ; XREFS: CODE 0x000004dc  CODE 0x000004eb  CODE 0x00000521  
            ; XREFS: CODE 0x00000586  CALL 0x00000594  
┌ fcn.000005de();
│           0000:05de      call  fcn.00000613                          ; fcn.00000613
│           0000:05e1      mov   bx, 0xf43                             ; 3907
│           0000:05e4      mov   cx, 0x3224                            ; '$2'
│           0000:05e7      mov   al, 0xff
│           0000:05e9      call  word cs:[0x2000]
│           0000:05ee      mov   si, 0xaaac
│           0000:05f1      mov   bx, 0x44                              ; 'D' ; int16_t arg4
│           0000:05f4      mov   cl, 0x4c                              ; 'L'
│           0000:05f6      mov   ah, 1
│           0000:05f8      call  fcn.00000a2f                          ; fcn.00000a2f
│           0000:05fb      mov   bl, byte [0xadff]
│           0000:05ff      dec   bl
│           0000:0601      xor   bh, bh
│           0000:0603      add   bx, bx
│           0000:0605      mov   si, word [bx - 0x549e]
│           0000:0609      mov   bx, 0x48                              ; 'H'
│           0000:060c      mov   cl, 0x56                              ; 'V'
│           0000:060e      mov   ah, 1
└       ┌─< 0000:0610      jmp   fcn.00000a2f                          ; fcn.00000a2f
```

### Function 0x00000613
```asm
; CALL XREF from fcn.0000037e @ +0x47
            ; CALL XREF from fcn.000005de @ 0x5de
┌ fcn.00000613();
│           0000:0613      test  byte [0xae02], 0xff
│       ┌─< 0000:0618      je    0x61b
│       │   0000:061a      ret
│       └─> 0000:061b      mov   byte [0xae02], 0xff                   ; [0xff:1]=224
│           0000:0620      mov   ax, 0x643
│           0000:0623      xor   di, di
│           0000:0625      mov   cx, 0x1c24
└           0000:0628      jmp   word cs:[0x2026]
```

### Function 0x0000062d
```asm
; CALL XREF from fcn.0000026a @ +0x81
            ; CALL XREF from fcn.0000037e @ +0x9d
┌ fcn.0000062d();
│           0000:062d      test  byte [0xae02], 0xff
│       ┌─< 0000:0632      jne   0x635
│       │   0000:0634      ret
│       └─> 0000:0635      mov   byte [0xae02], 0
│           0000:063a      mov   ax, 0x643
│           0000:063d      xor   di, di
│           0000:063f      mov   cx, 0x1c24
└           0000:0642      jmp   word cs:[0x2028]
```

### Function 0x00000647
```asm
; CALL XREF from fcn.00000000 @ 0x79
            ; CALL XREF from fcn.0000037e @ +0xc1
┌ fcn.00000647();
│           0000:0647      push  cs
│           0000:0648      pop   es
│           0000:0649      mov   si, 0xa6
│           0000:064c      mov   di, 0xae10
│           0000:064f      xor   al, al
│           0000:0651      stosb byte es:[di], al
│           0000:0652      xor   cl, cl
│           0000:0654      mov   ch, 5
│       ┌─> 0000:0656      lodsb al, byte [si]
│       ╎   0000:0657      or    al, al
│      ┌──< 0000:0659      je    0x65e
│      │╎   0000:065b      stosb byte es:[di], al
│      │╎   0000:065c      inc   cl
│      └──> 0000:065e      dec   ch
│       └─< 0000:0660      jne   0x656
│           0000:0662      or    cl, cl
│       ┌─< 0000:0664      je    0x668
│       │   0000:0666      inc   cl
│       └─> 0000:0668      mov   byte [0xadfe], cl
└           0000:066c      ret
```

### Function 0x0000066d
```asm
; CALL XREF from fcn.00000000 @ 0x82
            ; CALL XREF from fcn.000005b8 @ 0x5d6
┌ fcn.0000066d(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:066d      test  byte [0xadfe], 0xff
│       ┌─< 0000:0672      je    0x6c8
│       │   0000:0674      mov   cl, byte [0xadfe]
│       │   0000:0678      xor   ch, ch
│       │   0000:067a      mov   bx, 0xe83                             ; 3715
│       │   0000:067d      mov   si, 0xae10
│      ┌──> 0000:0680      push  cx
│      ╎│   0000:0681      lodsb al, byte [si]
│      ╎│   0000:0682      push  si
│      ╎│   0000:0683      push  bx
│      ╎│   0000:0684      call  word cs:[0x2036]
│      ╎│   0000:0689      pop   bx
│      ╎│   0000:068a      pop   si
│      ╎│   0000:068b      add   bx, 0x500
│      ╎│   0000:068f      pop   cx
│      └──< 0000:0690      loop  0x680
│       │   0000:0692      mov   byte [0xadff], 0
│       │   0000:0697      mov   byte [0xae00], 0
│       │   0000:069c      test  byte [0xadf8], 0xff
│      ┌──< 0000:06a1      je    0x6a4
│      ││   0000:06a3      ret
│      └──> 0000:06a4      mov   bx, 0xe81                             ; 3713
│       │   0000:06a7      mov   al, 5
│       │   0000:06a9      call  word cs:[0x202e]
│       │   0000:06ae      mov   bx, 0x1570
│       │   0000:06b1      mov   cx, 0x1811
│       │   0000:06b4      xor   al, al
│       │   0000:06b6      call  word cs:[0x2000]
│       │   0000:06bb      mov   si, 0xaa9a
│       │   0000:06be      mov   bx, 0x54                              ; 'T'
│       │   0000:06c1      mov   cl, 0x71                              ; 'q'
│       │   0000:06c3      mov   ah, 1
│      ┌──< 0000:06c5      jmp   fcn.00000a2f                          ; fcn.00000a2f
│      │└─> 0000:06c8      mov   bx, 0x54                              ; 'T'
│      │    0000:06cb      mov   cl, 0x71                              ; 'q'
│      │    0000:06cd      mov   si, 0xaa92
│      │    0000:06d0      mov   ah, 1
└      │┌─< 0000:06d2      jmp   fcn.00000a2f                          ; fcn.00000a2f
```

### Function 0x000006d5
```asm
; CALL XREF from fcn.00000000 @ 0x7f
┌ fcn.000006d5(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:06d5      test  byte [0xadfc], 0xff
│       ┌─< 0000:06da      je    0x749
│       │   0000:06dc      mov   cl, byte [0xadfc]
│       │   0000:06e0      xor   ch, ch
│       │   0000:06e2      mov   bx, 0xe55                             ; 3669
│       │   0000:06e5      mov   si, 0xae0a
│      ┌──> 0000:06e8      push  cx
│      ╎│   0000:06e9      lodsb al, byte [si]
│      ╎│   0000:06ea      push  si
│      ╎│   0000:06eb      push  bx
│      ╎│   0000:06ec      call  word cs:[0x2034]
│      ╎│   0000:06f1      pop   bx
│      ╎│   0000:06f2      pop   si
│      ╎│   0000:06f3      add   bx, 0x500
│      ╎│   0000:06f7      pop   cx
│      └──< 0000:06f8      loop  0x6e8
│       │   0000:06fa      push  cs
│       │   0000:06fb      pop   es
│       │   0000:06fc      mov   di, 0xae0a
│       │   0000:06ff      mov   al, byte [0x9e]                       ; [0x9e:1]=173
│       │   0000:0702      mov   cx, 6
│       │   0000:0705      repne scasb al, byte es:[di]
│       │   0000:0707      neg   cx
│       │   0000:0709      add   cx, 5
│       │   0000:070c      mov   byte [0xadfd], cl
│       │   0000:0710      mov   ch, cl
│       │   0000:0712      xor   cl, cl
│       │   0000:0714      mov   bx, cx
│       │   0000:0716      add   cx, cx
│       │   0000:0718      add   cx, cx
│       │   0000:071a      add   cx, bx
│       │   0000:071c      add   cx, 0xe53                             ; 3667
│       │   0000:0720      mov   bx, cx
│       │   0000:0722      mov   al, 5
│       │   0000:0724      call  word cs:[0x202e]
│       │   0000:0729      mov   bl, byte [0x9e]                       ; [0x9e:1]=173
│       │   0000:072d      xor   bh, bh
│       │   0000:072f      add   bx, bx
│       │   0000:0731      mov   si, word [bx - 0x550d]
│       │   0000:0735      mov   bx, 0x5c                              ; '\' ; int16_t arg4
│       │   0000:0738      mov   cl, 0x43                              ; 'C'
│       │   0000:073a      mov   ah, 1
│       │   0000:073c      call  fcn.00000a2f                          ; fcn.00000a2f
│       │   0000:073f      mov   bx, 0x5c                              ; '\'
│       │   0000:0742      mov   cl, 0x4b                              ; 'K'
│       │   0000:0744      mov   ah, 1
│      ┌──< 0000:0746      jmp   fcn.00000a2f                          ; fcn.00000a2f
│      │└─> 0000:0749      mov   bx, 0x5c                              ; '\'
│      │    0000:074c      mov   cl, 0x43                              ; 'C'
│      │    0000:074e      mov   si, 0xaa92
│      │    0000:0751      mov   ah, 1
└      │┌─< 0000:0753      jmp   fcn.00000a2f                          ; fcn.00000a2f
```

### Function 0x00000756
```asm
; CALL XREF from fcn.00000000 @ 0x85
┌ fcn.00000756();
│           0000:0756      test  byte [0x92], 0xff                     ; [0x92:1]=246
│       ┌─< 0000:075b      je    0x78d
│       │   0000:075d      mov   bx, 0x174d
│       │   0000:0760      mov   al, byte [0x92]                       ; [0x92:1]=246
│       │   0000:0763      call  word cs:[0x201c]
│       │   0000:0768      mov   bl, byte [0x92]                       ; [0x92:1]=246
│       │   0000:076c      xor   bh, bh
│       │   0000:076e      dec   bl
│       │   0000:0770      add   bx, bx
│       │   0000:0772      mov   si, word [bx - 0x5327]
│       │   0000:0776      mov   bx, 0x344e                            ; 'N4'
│       │   0000:0779      xor   cl, cl
│       │   0000:077b      call  word cs:[0x2038]
│       │   0000:0780      mov   bx, 0x3456                            ; 'V4'
│       │   0000:0783      xor   cl, cl
│       │   0000:0785      call  word cs:[0x2038]
│       │   0000:078a      call  fcn.00000872                          ; fcn.00000872
│       └─> 0000:078d      test  byte [0x93], 0xff                     ; [0x93:1]=6
│       ┌─< 0000:0792      je    0x7c4
│       │   0000:0794      mov   bx, 0x2e61                            ; 'a.'
│       │   0000:0797      mov   al, byte [0x93]                       ; [0x93:1]=6
│       │   0000:079a      call  word cs:[0x2020]
│       │   0000:079f      mov   bl, byte [0x93]                       ; [0x93:1]=6
│       │   0000:07a3      xor   bh, bh
│       │   0000:07a5      dec   bl
│       │   0000:07a7      add   bx, bx
│       │   0000:07a9      mov   si, word [bx - 0x5299]
│       │   0000:07ad      mov   bx, 0x3461                            ; 'a4'
│       │   0000:07b0      xor   cl, cl
│       │   0000:07b2      call  word cs:[0x2038]
│       │   0000:07b7      mov   bx, 0x3469                            ; 'i4'
│       │   0000:07ba      xor   cl, cl
│       │   0000:07bc      call  word cs:[0x2038]
│       │   0000:07c1      call  fcn.00000848                          ; fcn.00000848
│       └─> 0000:07c4      test  byte [0x98], 0xff                     ; [0x98:1]=31
│       ┌─< 0000:07c9      je    0x7f3
│       │   0000:07cb      mov   bx, 0x2e75                            ; 'u.'
│       │   0000:07ce      xor   al, al
│       │   0000:07d0      call  word cs:[0x203a]
│       │   0000:07d5      mov   bx, 0xc8                              ; int16_t arg3
│       │   0000:07d8      mov   cl, 0x7e                              ; '~'
│       │   0000:07da      mov   al, 0x5e                              ; '^'
│       │   0000:07dc      mov   ah, 1
│       │   0000:07de      call  word cs:[0x2022]
│       │   0000:07e3      mov   al, byte [0x98]                       ; [0x98:1]=31
│       │   0000:07e6      xor   ah, ah
│       │   0000:07e8      mov   cx, 1                                 ; int16_t arg4
│       │   0000:07eb      mov   bl, 1
│       │   0000:07ed      mov   dx, 0x347e                            ; '~4' ; int16_t arg2
│       │   0000:07f0      call  fcn.000009b7                          ; fcn.000009b7
│       └─> 0000:07f3      test  byte [0x99], 0xff                     ; [0x99:1]=254
│       ┌─< 0000:07f8      je    0x822
│       │   0000:07fa      mov   bx, 0x3a75                            ; 'u:'
│       │   0000:07fd      mov   al, 1
│       │   0000:07ff      call  word cs:[0x203a]
│       │   0000:0804      mov   bx, 0xf8                              ; int16_t arg3
│       │   0000:0807      mov   cl, 0x7e                              ; '~'
│       │   0000:0809      mov   al, 0x5e                              ; '^'
│       │   0000:080b      mov   ah, 1
│       │   0000:080d      call  word cs:[0x2022]
│       │   0000:0812      mov   al, byte [0x99]                       ; [0x99:1]=254
│       │   0000:0815      xor   ah, ah
│       │   0000:0817      mov   cx, 1                                 ; int16_t arg4
│       │   0000:081a      mov   bl, 1
│       │   0000:081c      mov   dx, 0x407e                            ; '~@' ; int16_t arg2
│       │   0000:081f      call  fcn.000009b7                          ; fcn.000009b7
│       └─> 0000:0822      mov   si, 0x9a
│           0000:0825      mov   bx, 0x3089
│           0000:0828      mov   cx, 3
│       ┌─> 0000:082b      push  cx
│       ╎   0000:082c      lodsb al, byte [si]
│       ╎   0000:082d      or    al, al
│      ┌──< 0000:082f      je    0x844
│      │╎   0000:0831      mov   al, cl
│      │╎   0000:0833      neg   al
│      │╎   0000:0835      add   al, 3
│      │╎   0000:0837      push  bx
│      │╎   0000:0838      push  si
│      │╎   0000:0839      call  word cs:[0x203c]
│      │╎   0000:083e      pop   si
│      │╎   0000:083f      pop   bx
│      │╎   0000:0840      add   bx, 0x600
│      └──> 0000:0844      pop   cx
│       └─< 0000:0845      loop  0x82b
└           0000:0847      ret
```

### Function 0x00000848
```asm
; CALL XREF from fcn.00000756 @ 0x7c1
┌ fcn.00000848(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0848      mov   ax, word [0x96]                       ; [0x96:2]=0x75ff ; int16_t arg1
│           0000:084b      mov   dx, 0x3469                            ; 'i4' ; int16_t arg2
│           0000:084e      mov   cx, 3                                 ; int16_t arg4
│           0000:0851      mov   bl, 4
│           0000:0853      call  fcn.000009b7                          ; fcn.000009b7
│           0000:0856      mov   bx, 0xca
│           0000:0859      mov   cl, 0x69                              ; 'i'
│           0000:085b      mov   al, 0x28                              ; '('
│           0000:085d      mov   ah, 4
│           0000:085f      call  word cs:[0x2022]
│           0000:0864      mov   bx, 0xe0
│           0000:0867      mov   cl, 0x69                              ; 'i'
│           0000:0869      mov   al, 0x29                              ; ')'
│           0000:086b      mov   ah, 4
└           0000:086d      jmp   word cs:[0x2022]
```

### Function 0x00000872
```asm
; CALL XREF from fcn.0000037e @ +0x16a
            ; CALL XREF from fcn.00000756 @ 0x78a
┌ fcn.00000872(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0872      test  byte [0xe4], 0xff                     ; [0xe4:1]=36
│       ┌─< 0000:0877      jne   0x87a
│       │   0000:0879      ret
│       └─> 0000:087a      mov   bx, 0x3257                            ; 'W2'
│           0000:087d      mov   cx, 0x408
│           0000:0880      xor   al, al
│           0000:0882      call  word cs:[0x2000]
│           0000:0887      mov   bx, 0xca                              ; int16_t arg3
│           0000:088a      mov   cl, 0x57                              ; 'W'
│           0000:088c      mov   al, 0x28                              ; '('
│           0000:088e      mov   ah, 1
│           0000:0890      call  word cs:[0x2022]
│           0000:0895      mov   al, byte [0xe4]                       ; [0xe4:1]=36
│           0000:0898      xor   ah, ah
│           0000:089a      mov   dx, 0x3457                            ; 'W4' ; int16_t arg2
│           0000:089d      mov   bl, 1
│           0000:089f      mov   cx, 1                                 ; int16_t arg4
│           0000:08a2      call  fcn.000009b7                          ; fcn.000009b7
│           0000:08a5      mov   bx, 0xd4
│           0000:08a8      mov   cl, 0x57                              ; 'W'
│           0000:08aa      mov   al, 0x29                              ; ')'
│           0000:08ac      mov   ah, 1
└           0000:08ae      jmp   word cs:[0x2022]
```

### Function 0x000008b3
```asm
; CALL XREF from fcn.00000000 @ 0x7c
┌ fcn.000008b3(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:08b3      test  byte [0xadfa], 0xff
│       ┌─< 0000:08b8      je    0x920
│       │   0000:08ba      mov   cl, byte [0xadfa]
│       │   0000:08be      xor   ch, ch
│       │   0000:08c0      mov   bx, 0xe1c                             ; 3612
│       │   0000:08c3      mov   si, 0xae03
│      ┌──> 0000:08c6      push  cx
│      ╎│   0000:08c7      lodsb al, byte [si]
│      ╎│   0000:08c8      push  si
│      ╎│   0000:08c9      push  bx
│      ╎│   0000:08ca      call  word cs:[0x201e]
│      ╎│   0000:08cf      pop   bx
│      ╎│   0000:08d0      pop   si
│      ╎│   0000:08d1      add   bx, 0x800
│      ╎│   0000:08d5      pop   cx
│      └──< 0000:08d6      loop  0x8c6
│       │   0000:08d8      call  fcn.0000092d                          ; fcn.0000092d
│       │   0000:08db      push  cs
│       │   0000:08dc      pop   es
│       │   0000:08dd      mov   di, 0xae03
│       │   0000:08e0      mov   al, byte [0x9d]                       ; [0x9d:1]=252
│       │   0000:08e3      mov   cx, 7
│       │   0000:08e6      repne scasb al, byte es:[di]
│       │   0000:08e8      neg   cx
│       │   0000:08ea      add   cx, 6
│       │   0000:08ed      mov   byte [0xadfb], cl
│       │   0000:08f1      mov   ch, cl
│       │   0000:08f3      xor   cl, cl
│       │   0000:08f5      add   cx, cx
│       │   0000:08f7      add   cx, cx
│       │   0000:08f9      add   cx, cx
│       │   0000:08fb      add   cx, 0xe1a                             ; 3610
│       │   0000:08ff      mov   bx, cx
│       │   0000:0901      mov   al, 5
│       │   0000:0903      call  word cs:[0x202e]
│       │   0000:0908      mov   bl, byte [0x9d]                       ; [0x9d:1]=252
│       │   0000:090c      dec   bl
│       │   0000:090e      xor   bh, bh
│       │   0000:0910      add   bx, bx
│       │   0000:0912      mov   si, word [bx - 0x5548]
│       │   0000:0916      mov   bx, 0x9e
│       │   0000:0919      mov   cl, 0x12
│       │   0000:091b      mov   ah, 1
│      ┌──< 0000:091d      jmp   fcn.00000a2f                          ; fcn.00000a2f
│      │└─> 0000:0920      mov   bx, 0x9e
│      │    0000:0923      mov   cl, 0x12
│      │    0000:0925      mov   si, 0xaa92
│      │    0000:0928      mov   ah, 1
└      │┌─< 0000:092a      jmp   fcn.00000a2f                          ; fcn.00000a2f
```

### Function 0x0000092d
```asm
; CALL XREFS from fcn.0000037e @ +0x13e, +0x15b
            ; CALL XREF from fcn.000008b3 @ 0x8d8
┌ fcn.0000092d(int16_t arg1, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:092d      mov   dx, 0xe2e                             ; 3630
│           0000:0930      mov   si, 0xae03
│           0000:0933      mov   cl, byte [0xadfa]
│           0000:0937      xor   ch, ch
│       ┌─> 0000:0939      push  cx                                    ; arg4
│       ╎   0000:093a      lodsb al, byte [si]
│       ╎   0000:093b      push  si
│       ╎   0000:093c      push  dx
│       ╎   0000:093d      dec   al
│       ╎   0000:093f      mov   bl, al
│       ╎   0000:0941      xor   bh, bh
│       ╎   0000:0943      mov   al, byte [bx + 0xab]                  ; arg3
│       ╎   0000:0947      mov   ah, byte [bx + 0xb4]                  ; arg3
│       ╎   0000:094b      push  ax                                    ; arg1
│       ╎   0000:094c      push  dx
│       ╎   0000:094d      push  ax                                    ; arg1
│       ╎   0000:094e      push  dx
│       ╎   0000:094f      mov   bx, dx                                ; int16_t arg3
│       ╎   0000:0951      mov   cx, 0x508
│       ╎   0000:0954      xor   al, al
│       ╎   0000:0956      call  word cs:[0x2000]
│       ╎   0000:095b      pop   dx                                    ; int16_t arg2
│       ╎   0000:095c      pop   ax                                    ; int16_t arg1
│       ╎   0000:095d      xor   ah, ah
│       ╎   0000:095f      mov   bl, 1
│       ╎   0000:0961      mov   cx, 3                                 ; int16_t arg4
│       ╎   0000:0964      call  fcn.000009b7                          ; fcn.000009b7
│       ╎   0000:0967      pop   dx
│       ╎   0000:0968      add   dx, 9
│       ╎   0000:096b      push  dx
│       ╎   0000:096c      sub   dx, 0x200
│       ╎   0000:0970      mov   cl, dl
│       ╎   0000:0972      mov   bl, dh
│       ╎   0000:0974      xor   bh, bh
│       ╎   0000:0976      add   bx, bx
│       ╎   0000:0978      add   bx, bx
│       ╎   0000:097a      inc   bx
│       ╎   0000:097b      inc   bx                                    ; int16_t arg3
│       ╎   0000:097c      mov   al, 0x28                              ; '('
│       ╎   0000:097e      mov   ah, 4
│       ╎   0000:0980      call  word cs:[0x2022]
│       ╎   0000:0985      pop   dx                                    ; int16_t arg2
│       ╎   0000:0986      pop   ax                                    ; int16_t arg1
│       ╎   0000:0987      mov   al, ah
│       ╎   0000:0989      push  dx
│       ╎   0000:098a      xor   ah, ah
│       ╎   0000:098c      mov   bl, 4
│       ╎   0000:098e      mov   cx, 3                                 ; int16_t arg4
│       ╎   0000:0991      call  fcn.000009b7                          ; fcn.000009b7
│       ╎   0000:0994      pop   dx
│       ╎   0000:0995      add   dx, 0x400
│       ╎   0000:0999      mov   cl, dl
│       ╎   0000:099b      mov   bl, dh
│       ╎   0000:099d      xor   bh, bh
│       ╎   0000:099f      add   bx, bx
│       ╎   0000:09a1      add   bx, bx
│       ╎   0000:09a3      dec   bx
│       ╎   0000:09a4      mov   al, 0x29                              ; ')'
│       ╎   0000:09a6      mov   ah, 4
│       ╎   0000:09a8      call  word cs:[0x2022]
│       ╎   0000:09ad      pop   dx
│       ╎   0000:09ae      add   dx, 0x800
│       ╎   0000:09b2      pop   si
│       ╎   0000:09b3      pop   cx
│       └─< 0000:09b4      loop  0x939
└           0000:09b6      ret
```

### Function 0x000009b7
```asm
; XREFS: CALL 0x000003f0  CALL 0x0000040b  CALL 0x000007f0  
            ; XREFS: CALL 0x0000081f  CALL 0x00000853  CALL 0x000008a2  
            ; XREFS: CALL 0x00000964  CALL 0x00000991  
┌ fcn.000009b7(int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:09b7      push  bx                                    ; arg3
│           0000:09b8      push  dx                                    ; arg2
│           0000:09b9      push  cx                                    ; arg4
│           0000:09ba      xor   dl, dl
│           0000:09bc      mov   di, 0xae16
│           0000:09bf      call  word cs:[0x2032]
│           0000:09c4      pop   cx
│           0000:09c5      mov   di, 0xae16
│           0000:09c8      mov   al, 7
│           0000:09ca      sub   al, cl
│           0000:09cc      xor   ah, ah
│           0000:09ce      add   di, ax                                ; arg1
│           0000:09d0      pop   ax
│           0000:09d1      pop   bx
│           0000:09d2      xor   bh, bh
└           0000:09d4      jmp   word cs:[0x2030]
```

### Function 0x000009d9
```asm
; CALL XREF from fcn.00000000 @ 0x32
            ; CALL XREF from fcn.000000bc @ +0x12
            ; CALL XREF from fcn.0000017f @ +0x40
            ; CALL XREF from fcn.0000026a @ +0x53
┌ fcn.000009d9(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:09d9      mov   si, 0xa9fc
│           0000:09dc      mov   cx, 4
│       ┌─> 0000:09df      push  cx
│       ╎   0000:09e0      mov   dh, cl
│       ╎   0000:09e2      lodsw ax, word [si]
│       ╎   0000:09e3      mov   bx, ax                                ; arg1
│       ╎   0000:09e5      lodsb al, byte [si]
│       ╎   0000:09e6      mov   cl, al
│       ╎   0000:09e8      mov   dl, byte [0xadf9]
│       ╎   0000:09ec      neg   dh
│       ╎   0000:09ee      add   dh, 4
│       ╎   0000:09f1      mov   ah, 3
│       ╎   0000:09f3      cmp   dl, dh
│      ┌──< 0000:09f5      jne   0x9f9
│      │╎   0000:09f7      mov   ah, 2
│      └──> 0000:09f9      call  fcn.00000a2f                          ; fcn.00000a2f
│       ╎   0000:09fc      pop   cx
│       └─< 0000:09fd      loop  0x9df
└           0000:09ff      ret
```

### Function 0x00000a2f
```asm
; XREFS: CALL 0x00000165  CALL 0x00000256  CALL 0x00000260  
            ; XREFS: CALL 0x0000036a  CALL 0x00000374  CALL 0x000003df  
            ; XREFS: CALL 0x000003fd  CALL 0x000005f8  CODE 0x00000610  
            ; XREFS: CODE 0x000006c5  CODE 0x000006d2  CALL 0x0000073c  
            ; XREFS: CODE 0x00000746  CODE 0x00000753  CODE 0x0000091d  
            ; XREFS: CODE 0x0000092a  CALL 0x000009f9  CODE 0x00000a5a  
├ (loc) fcn.00000a2f(int16_t arg1, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│       ┌─> 0000:0a2f      lodsb al, byte [si]
│       ╎   0000:0a30      or    al, al
│      ┌──< 0000:0a32      jne   0xa35
│      │╎   0000:0a34      ret
│      └──> 0000:0a35      push  si
│       ╎   0000:0a36      cmp   ah, 1
│      ┌──< 0000:0a39      je    0xa4b
│      │╎   0000:0a3b      push  bx
│      │╎   0000:0a3c      push  cx
│      │╎   0000:0a3d      push  ax
│      │╎   0000:0a3e      inc   bx
│      │╎   0000:0a3f      inc   cl
│      │╎   0000:0a41      mov   ah, 5
│      │╎   0000:0a43      call  word cs:[0x2022]
│      │╎   0000:0a48      pop   ax
│      │╎   0000:0a49      pop   cx
│      │╎   0000:0a4a      pop   bx
│      └──> 0000:0a4b      push  bx                                    ; arg3
│       ╎   0000:0a4c      push  cx                                    ; arg4
│       ╎   0000:0a4d      push  ax                                    ; arg1
│       ╎   0000:0a4e      call  word cs:[0x2022]
│       ╎   0000:0a53      pop   ax
│       ╎   0000:0a54      pop   cx
│       ╎   0000:0a55      pop   bx
│       ╎   0000:0a56      pop   si
│       ╎   0000:0a57      add   bx, 8
└       └─< 0000:0a5a      jmp   fcn.00000a2f
```

### Function 0x00000a5c
```asm
; CALL XREFS from fcn.00000000 @ 0x88, 0xb2
            ; CALL XREF from fcn.00000118 @ 0xdc
            ; CALL XREF from fcn.0000017f @ +0x4e
            ; CALL XREF from fcn.0000026a @ +0x61
┌ fcn.00000a5c();
│           0000:0a5c      call  word cs:[fcn.00000110]                ; 0x110
│           0000:0a61      call  word cs:[fcn.00000112]                ; 0x112 ; "u\xff\f\xe8!"
│           0000:0a66      call  word cs:[fcn.00000114]                ; 0x114
│           0000:0a6b      call  word cs:[fcn.00000116]                ; 0x116 ; "!"
│           0000:0a70      call  word cs:[fcn.00000118]                ; 0x118
│           0000:0a75      test  byte [0xae01], 0xff
│       ┌─< 0000:0a7a      je    0xa8a
│       │   0000:0a7c      call  0xa8a
│       │   0000:0a7f      cmc
│      ┌──< 0000:0a80      jb    0xa83
│      ││   0000:0a82      ret
│      └──> 0000:0a83      clc
│       │   0000:0a84      mov   byte [0xae01], 0
│       │   0000:0a89      ret
│       │   ; CALL XREF from fcn.00000a5c @ 0xa7c
│       └─> 0000:0a8a      test  word [0xff18], 1
│           0000:0a90      stc
│       ┌─< 0000:0a91      je    0xa94
│       │   0000:0a93      ret
│       └─> 0000:0a94      clc
└           0000:0a95      ret
```

## Cross-References (callers)
```json
  0x000000bc:
[{"from":444,"to":188,"type":"CODE"},{"from":698,"to":188,"type":"CODE"},{"from":952,"to":188,"type":"CODE"}]
  0x00000110:
[{"from":2652,"to":272,"type":"CALL"}]
  0x00000112:
[{"from":2657,"to":274,"type":"CALL"}]
  0x00000114:
[{"from":2662,"to":276,"type":"CALL"}]
  0x00000116:
[{"from":2667,"to":278,"type":"CALL"}]
  0x00000118:
[{"from":2672,"to":280,"type":"CALL"}]
  0x00000139:
[{"from":277,"to":313,"type":"CALL"},{"from":308,"to":313,"type":"CALL"}]
  0x0000017f:
[{"from":211,"to":383,"type":"CALL"},{"from":260,"to":383,"type":"CALL"},{"from":269,"to":383,"type":"CALL"},{"from":291,"to":383,"type":"CALL"},{"from":300,"to":383,"type":"CALL"},{"from":441,"to":383,"type":"CALL"}]
  0x0000022c:
[{"from":520,"to":556,"type":"CALL"},{"from":551,"to":556,"type":"CALL"}]
  0x0000026a:
[{"from":452,"to":618,"type":"CALL"},{"from":503,"to":618,"type":"CALL"},{"from":512,"to":618,"type":"CALL"},{"from":534,"to":618,"type":"CALL"},{"from":543,"to":618,"type":"CALL"},{"from":695,"to":618,"type":"CALL"}]
  0x00000340:
[{"from":796,"to":832,"type":"CALL"},{"from":827,"to":832,"type":"CALL"}]
  0x0000037e:
[{"from":706,"to":894,"type":"CALL"},{"from":779,"to":894,"type":"CALL"},{"from":788,"to":894,"type":"CALL"},{"from":810,"to":894,"type":"CALL"},{"from":819,"to":894,"type":"CALL"},{"from":949,"to":894,"type":"CALL"},{"from":1466,"to":894,"type":"CALL"},{"from":1499,"to":894,"type":"CODE"}]
  0x000005b8:
[{"from":1431,"to":1464,"type":"CALL"}]
  0x000005de:
[{"from":1156,"to":1502,"type":"CODE"},{"from":1175,"to":1502,"type":"CODE"},{"from":1215,"to":1502,"type":"CODE"},{"from":1244,"to":1502,"type":"CODE"},{"from":1259,"to":1502,"type":"CODE"},{"from":1313,"to":1502,"type":"CODE"},{"from":1414,"to":1502,"type":"CODE"},{"from":1428,"to":1502,"type":"CALL"}]
  0x00000613:
[{"from":965,"to":1555,"type":"CALL"},{"from":1502,"to":1555,"type":"CALL"}]
  0x0000062d:
[{"from":747,"to":1581,"type":"CALL"},{"from":1051,"to":1581,"type":"CALL"}]
  0x00000647:
[{"from":121,"to":1607,"type":"CALL"},{"from":1087,"to":1607,"type":"CALL"}]
  0x0000066d:
[{"from":130,"to":1645,"type":"CALL"},{"from":1494,"to":1645,"type":"CALL"}]
  0x000006d5:
[{"from":127,"to":1749,"type":"CALL"}]
```