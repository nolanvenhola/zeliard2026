# ENEMY_SKELETON - Analysis

**Source:** `chunk_10.bin`  
**Size:** 1.9 KB  
**Functions:** 9  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    4 113          fcn.00000000
0x00000071    1 11           fcn.00000071
0x00000108    3 16           fcn.00000108
0x00000118    8 46           fcn.00000118
0x0000011a    1 4            fcn.0000011a
0x00000146    5 44           fcn.00000146
0x00000306   12 210  -> 97   fcn.00000306
0x00000319    9 75           fcn.00000319
0x000003ec    7 39           fcn.000003ec
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x00000176 0x00000176   4    5         ascii  >?@A
  1 0x00000181 0x00000181   5    6         ascii  \aBCDE
  2 0x0000018a 0x0000018a  24   25         ascii  \b\t\nFGHIJK !"\v\f\rLMNOPQ#$%
  3 0x000001a5 0x000001a5   9   10         ascii  RSTUVW&'(
  4 0x000001b1 0x000001b1   9   10         ascii  XYZ[\)*+,
  5 0x000001be 0x000001be  20   20         utf8   ]^_-./0123456789:;<=
  6 0x000001d7 0x000001d7   9   10         ibm037 s!sdsÞsQs
  7 0x000001e1 0x000001e1   4    5         ascii  >?@A
  8 0x000001e6 0x000001e6   5    6         ascii  \aBCDE
  9 0x000001ec 0x000001ec  24   25         ascii  FGHIJKLMNOPQRSTUVWXYZ[\)
 10 0x00000205 0x00000205   5    6         ascii  ]^_-.
 11 0x0000020b 0x0000020b   4    5         ascii  >?@A
 12 0x00000210 0x00000210   5    6         ascii  \aBCDE
 13 0x00000216 0x00000216  24   25         ascii  FGHIJKLMNOPQR`abVWXYZ[\)
 14 0x0000022f 0x0000022f   5    6         ascii  ]^_-.
 15 0x00000235 0x00000235   4    5         ascii  >?@A
 16 0x0000023a 0x0000023a   5    6         ascii  \aBCDE
 17 0x00000240 0x00000240  24   25         ascii  FGHIJKLMNOPQRcdeVWXYZ[\)
 18 0x00000259 0x00000259   5    6         ascii  ]^_-.
 19 0x0000025f 0x0000025f   4    5         ascii  fghi
 20 0x00000264 0x00000264   5    6         ascii  \ajklm
 21 0x0000026a 0x0000026a  17   18         ascii  nopqrstuvwxyz{|}~
 22 0x00000294 0x00000294  23   23         ibm037 °jklmnoÝ¿Þªºæ¸Æ¤µ~stuvw
 23 0x000002be 0x000002be  23   23         ibm037 °jklmno¡¿Ðªºæ¸Æ¤µ~stuvw
 24 0x000002e8 0x000002e8  23   23         ibm037 °jklmnopqrªºæ¸Æ¤µ~stuvw
 25 0x0000037e 0x0000037e  13   14         ibm037 opqro¡¿ÐoÝ¿Þ6
 26 0x000003ae 0x000003ae   9    9         ibm037 6÷»0aFMt]
 27 0x000003d4 0x000003d4   9   10         ibm037 ßSVCstuvw
 28 0x00000415 0x00000415   8    9         ascii  KING.GRP
 29 0x00000422 0x00000422  18   18         ascii  King of Felishika\f
 30 0x0000043a 0x0000043a  20   20         ascii  Brave Duke Garland, 
 31 0x00000454 0x00000454  72   72         ascii  you\ll need money for your journey./I&hereby bestow upon you 1000&Golds.
 32 0x000004a5 0x000004a5 150  150         ascii  Go to town and outfit yourself, then make haste to the labyrinth to defeat the forces of Jashiin. My kingdom and the life of my daughter are at stake.
 33 0x00000547 0x00000547  37   37         ascii  Brave Duke, did you forget something?
 34 0x00000573 0x00000573  53   53         ascii  The entrance to the labyrinth is at the edge of town.
 35 0x000005ad 0x000005ad  36   36         ascii  Please hurry, before it\s too late! 
 36 0x000005dd 0x000005dd  14   14         ascii  Duke Garland, 
 37 0x000005f1 0x000005f1  38   38         ascii  I am in debt to you for your efforts. 
 38 0x0000061d 0x0000061d  51   51         ascii  Have you not yet succeeded in vanquishing Jashiin? 
 39 0x00000657 0x00000657 105  105         ascii  I pray that the spirits will guide you. Please don\t give up, the people of Zeliard are depending on you!
 40 0x000006ca 0x000006ca  14   14         ascii  Duke Garland, 
 41 0x000006de 0x000006de  90   90         ascii  you are a brave man. You have conquered Jashiin and returned the nine Tears of Esmesanti. 
 42 0x0000073f 0x0000073f  93   93         ascii  Now go quickly to the chamber of Princess Felicia. The&crystals will bring her back to life.
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000();
│           0000:0000      mov   byte [7], al
│           0000:0003      add   byte [si], al
│           ; DATA XREF from fcn.00000306 @ 0x3c0
│           ; DATA XREF from fcn.000003ec @ 0x3ef
│           0000:0005      mov   al, byte [0xa302]                     ; [0xa302:1]=255
│           ; DATA XREF from fcn.00000118 @ 0x121
│           0000:0008      mov   es, word [0xff2c]
│           ; DATA XREF from fcn.00000071 @ +0x7a
│           ; DATA XREFS from fcn.00000118 @ 0x122, 0x125, 0x133
│           0000:000c      mov   di, 0x8000
│           0000:000f      mov   si, 0xa40f
│           0000:0012      mov   al, 2
│           0000:0014      call  word cs:[0x10c]
│           0000:0019      push  ds
│           0000:001a      mov   ds, word cs:[0xff2c]
│           0000:001f      mov   si, 0x8000
│           0000:0022      mov   cx, 0x100
│           0000:0025      call  word cs:[0x2044]
│           0000:002a      pop   ds
│           0000:002b      mov   byte [0xff4e], 0
│           0000:0030      mov   byte [0xff4f], 0
│           ; DATA XREF from fcn.00000146 @ +0x82
│           0000:0035      call  word cs:[0x2002]
│           0000:003a      call  word cs:[0x2012]
│           0000:003f      mov   si, 0xa41a
│           ; DATA XREF from fcn.000003ec @ +0x4d
│           0000:0042      call  word cs:[0x2010]
│           0000:0047      call  fcn.00000118                          ; fcn.00000118
│           0000:004a      mov   bx, 0xd60                             ; 3424
│           0000:004d      mov   cx, 0x3637                            ; '76'
│           0000:0050      mov   al, 0xff
│           0000:0052      call  word cs:[0x2000]
│           0000:0057      call  fcn.000003ec                          ; fcn.000003ec
│           0000:005a      mov   word [0xff4c], si
│           ; CODE XREF from fcn.00000000 @ 0x6a
│       ┌─> 0000:005e      call  word cs:[0x6004]
│       ╎   0000:0063      cmp   al, 0xff
│      ┌──< 0000:0065      je    0x6c
│      │╎   0000:0067      call  fcn.00000071                          ; fcn.00000071
│      │└─< 0000:006a      jmp   0x5e
└      └──> 0000:006c      jmp   word cs:[0x2040]
```

### Function 0x00000071
```asm
; CALL XREF from fcn.00000000 @ 0x67
┌ fcn.00000071(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0071      mov   bl, al
│           0000:0073      xor   bh, bh
│           0000:0075      add   bx, bx                                ; arg3
└           0000:0077      jmp   word cs:[bx - 0x5f88]
```

### Function 0x00000108
```asm
; CALL XREF from fcn.00000071 @ +0x83
┌ fcn.00000108();
│           0000:0108      mov   byte [0xff1a], 0
│       ┌─> 0000:010d      call  fcn.00000306                          ; fcn.00000306
│       ╎   0000:0110      cmp   byte [0xff1a], 0x19
│       └─< 0000:0115      jb    0x10d
└           0000:0117      ret
```

### Function 0x00000118
```asm
; CALL XREF from fcn.00000000 @ 0x47
│           ; CALL XREF from fcn.00000319 @ 0x32c
│           ;-- (0x0000011a) fcn.0000011a:
┌ fcn.00000118();
│           0000:0118  ~   mov   si, 0xa16e
│           0000:011b      mov   bx, 0xe17                             ; 3607
│           0000:011e      mov   cx, 8
│       ┌─> 0000:0121      push  cx
│       ╎   0000:0122      mov   cx, 0xc
│      ┌──> 0000:0125      push  cx
│      ╎╎   0000:0126      push  bx                                    ; arg3
│      ╎╎   0000:0127      lodsb al, byte [si]
│      ╎╎   0000:0128      call  word cs:[0x3016]
│      ╎╎   0000:012d      pop   bx
│      ╎╎   0000:012e      inc   bh
│      ╎╎   0000:0130      pop   cx
│      └──< 0000:0131      loop  0x125
│       ╎   0000:0133      sub   bh, 0xc
│       ╎   0000:0136      add   bl, 8
│       ╎   0000:0139      pop   cx
│       └─< 0000:013a      loop  0x121
│           0000:013c      test  byte [0x49], 0xff                     ; [0x49:1]=0
│       ┌─< 0000:0141      jne   0x144
│       │   0000:0143      ret
└       └─> 0000:0144      mov   al, 6
```

### Function 0x0000011a
```asm
│           ; CALL XREF from fcn.00000319 @ 0x32c
┌ fcn.0000011a(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:011a      mov   ax, word [0x17bb]                     ; [0x17bb:2]=0xffff
│           0000:011d      push  cs
```

### Function 0x00000146
```asm
; CALL XREF from fcn.00000071 @ +0x80
┌ fcn.00000146(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0146      mov   bl, al
│           0000:0148      xor   bh, bh
│           0000:014a      add   bx, bx                                ; arg3
│           0000:014c      mov   si, word [bx - 0x5e32]                ; arg3
│           0000:0150      mov   bx, 0x1117
│           0000:0153      mov   cx, 7
│       ┌─> 0000:0156      push  cx
│       ╎   0000:0157      mov   cx, 6
│      ┌──> 0000:015a      push  cx
│      ╎╎   0000:015b      push  bx
│      ╎╎   0000:015c      lodsb al, byte [si]
│      ╎╎   0000:015d      call  word cs:[0x3016]
│      ╎╎   0000:0162      pop   bx
│      ╎╎   0000:0163      inc   bh
│      ╎╎   0000:0165      pop   cx
│      └──< 0000:0166      loop  0x15a
│       ╎   0000:0168      sub   bh, 6
│       ╎   0000:016b      add   bl, 8
│       ╎   0000:016e      pop   cx
│       └─< 0000:016f      loop  0x156
└           0000:0171      ret
```

### Function 0x00000306
```asm
; CALL XREFS from fcn.00000071 @ +0x54, +0x6c
            ; CALL XREF from fcn.00000108 @ 0x10d
┌ fcn.00000306();
│           0000:0306      cmp   word [0xff50], 4
│       ┌─< 0000:030b      jae   0x30e
│       │   0000:030d      ret
│       └─> 0000:030e      mov   word [0xff50], 0
│           0000:0314      call  fcn.00000319                          ; fcn.00000319
│       ┌─< 0000:0317      jmp   0x38a
        │   ; CALL XREF from fcn.00000306 @ 0x314
..
│       │   ; CODE XREF from fcn.00000306 @ 0x317
│       └─> 0000:038a      test  byte [0xa79d], 0xff                   ; arg1
│       ┌─< 0000:038f      jne   0x392
│       │   0000:0391      ret
│       └─> 0000:0392      inc   byte [0xa79e]
│           0000:0396      cmp   byte [0xa79e], 6
│       ┌─< 0000:039b      jae   0x39e
│       │   0000:039d      ret
│       └─> 0000:039e      mov   byte [0xa79e], 0
│           0000:03a3      inc   byte [0xa79f]
│           0000:03a7      mov   al, byte [0xa79f]                     ; [0xa79f:1]=255
│           ; CODE XREFS from fcn.00000071 @ +0x22, +0x2a
│           0000:03aa      and   al, 1
│           0000:03ac      mov   cl, 0xa
│           0000:03ae      mul   cl
│           0000:03b0      mov   si, ax
│           0000:03b2      add   si, 0xa3d4
│           0000:03b6      mov   bx, 0x113f
│           0000:03b9      mov   cx, 2
│       ┌─> 0000:03bc      push  cx
│       ╎   0000:03bd      mov   cx, 5
│      ┌──> 0000:03c0      push  cx
│      ╎╎   0000:03c1      push  bx
│      ╎╎   0000:03c2      lodsb al, byte [si]
│      ╎╎   0000:03c3      call  word cs:[0x3016]
│      ╎╎   0000:03c8      pop   bx
│      ╎╎   0000:03c9      inc   bh
│      ╎╎   0000:03cb      pop   cx
│      └──< 0000:03cc      loop  0x3c0
│       ╎   0000:03ce      sub   bh, 5
│       ╎   0000:03d1      add   bl, 8
│       ╎   0000:03d4      pop   cx
│       └─< 0000:03d5      loop  0x3bc
└           0000:03d7      ret
```

### Function 0x00000319
```asm
; CALL XREF from fcn.00000306 @ 0x314
┌ fcn.00000319(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0319      test  byte [0xa7a0], 0xff
│       ┌─< 0000:031e      jne   0x321
│       │   0000:0320      ret
│       └─> 0000:0321      inc   byte [0xa7a1]
│           0000:0325      cmp   byte [0xa7a1], 0x1a
│       ┌─< 0000:032a      jb    0x33c
│       │   0000:032c      call  word cs:[fcn.0000011a]                ; 0x11a
│       │   0000:0331      or    al, al
│      ┌──< 0000:0333      je    0x336
│      ││   0000:0335      ret
│      └──> 0000:0336      mov   byte [0xa7a1], 0xff                   ; [0xff:1]=2
│       │   0000:033b      ret
│       └─> 0000:033c      mov   bx, 0xa360
│           0000:033f      mov   al, byte [0xa7a1]                     ; [0xa7a1:1]=255
│           0000:0342      xlatb
│           0000:0343      xor   ah, ah
│           0000:0345      add   ax, ax                                ; arg1
│           0000:0347      add   ax, ax                                ; arg1
│           0000:0349      mov   si, ax                                ; arg1
│           0000:034b      add   si, 0xa37a
│           0000:034f      mov   bx, 0x112f
│           0000:0352      mov   cx, 4
│       ┌─> 0000:0355      push  cx
│       ╎   0000:0356      push  bx
│       ╎   0000:0357      lodsb al, byte [si]
│       ╎   0000:0358      call  word cs:[0x3016]
│       ╎   0000:035d      pop   bx
│       ╎   0000:035e      inc   bh
│       ╎   0000:0360      pop   cx
│       └─< 0000:0361      loop  0x355
└           0000:0363      ret
```

### Function 0x000003ec
```asm
; CALL XREF from fcn.00000000 @ 0x57
┌ fcn.000003ec();
│           0000:03ec      mov   si, 0xa42f
│           0000:03ef      mov   al, byte [5]                          ; [0x5:1]=160
│           0000:03f2      or    al, byte [6]                          ; [0x6:1]=2
│       ┌─< 0000:03f6      jne   0x3f9
│       │   0000:03f8      ret
│       └─> 0000:03f9      mov   si, 0xa53c
│           0000:03fc      test  byte [6], 0xff                        ; [0x6:1]=2
│       ┌─< 0000:0401      jne   0x404
│       │   0000:0403      ret
│       └─> 0000:0404      mov   si, 0xa5d2
│           0000:0407      test  byte [0x49], 0xff                     ; [0x49:1]=0
│       ┌─< 0000:040c      jne   0x40f
│       │   0000:040e      ret
│       └─> 0000:040f      mov   si, 0xa6c1
└           0000:0412      ret
```

## Cross-References (callers)
```json
  0x00000071:
[{"from":103,"to":113,"type":"CALL"}]
  0x00000108:
[{"from":244,"to":264,"type":"CALL"}]
  0x00000118:
[{"from":71,"to":280,"type":"CALL"}]
  0x0000011a:
[{"from":812,"to":282,"type":"CALL"}]
  0x00000146:
[{"from":241,"to":326,"type":"CALL"}]
  0x00000306:
[{"from":197,"to":774,"type":"CALL"},{"from":221,"to":774,"type":"CALL"},{"from":269,"to":774,"type":"CALL"}]
  0x00000319:
[{"from":788,"to":793,"type":"CALL"}]
  0x000003ec:
[{"from":87,"to":1004,"type":"CALL"}]
```