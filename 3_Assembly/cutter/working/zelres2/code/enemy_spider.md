# ENEMY_SPIDER - Analysis

**Source:** `chunk_09.bin`  
**Size:** 7.9 KB  
**Functions:** 12  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    1 140          fcn.00000000
0x0000008d    1 12           fcn.0000008d
0x0000023f    1 13           fcn.0000023f
0x000002af    1 23           fcn.000002af
0x0000032f    3 41           fcn.0000032f
0x00000368   10 48           fcn.00000368
0x00000399    1 16           fcn.00000399
0x0000053e    1 23           fcn.0000053e
0x000005aa    3 42           fcn.000005aa
0x00000a68    3 101  -> 89   fcn.00000a68
0x00000e89    1 248          fcn.00000e89
0x0000188a    1 199          fcn.0000188a
```

## Strings
```
nth      paddr      vaddr len size section type   string                                      
----------------------------------------------------------------------------------------------
  0 0x0000010a 0x0000010a  12   13         ibm037 åãS\¬cG&ßSMC
  1 0x00000156 0x00000156   4    4         utf8   %OF2
  2 0x000001e5 0x000001e5   4    4         utf8   %OF2
  3 0x0000025f 0x0000025f   5    6         ibm037 3vaF}
  4 0x00000384 0x00000384   4    5         ascii  @u\b$
  5 0x0000040c 0x0000040c   4    4         ascii  WQS>
  6 0x00000496 0x00000496   4    4         ascii  WQS>
  7 0x0000057d 0x0000057d   4    4         ascii  WQS>
  8 0x000005da 0x000005da   5    6         ascii  \v\a\t\v\v
  9 0x000005e9 0x000005e9   5    5         ascii  *OOOA
 10 0x000005fa 0x000005fa   4    5         ascii  *C\nA
 11 0x00000654 0x00000654   5    6         ascii   (\b\nA
 12 0x00000668 0x00000668   4    5         ascii  \f\b*B
 13 0x000006a4 0x000006a4   4    5         ascii  \bA\nC
 14 0x00000720 0x00000720   4    4         ascii  A* *
 15 0x0000076f 0x0000076f   5    5         ascii  " **A
 16 0x0000077f 0x0000077f   5    5         ascii  "A8 "
 17 0x00000785 0x00000785   9   10         ascii  """A" "A"
 18 0x0000078f 0x0000078f   4    4         ascii  \n"""
 19 0x000007ba 0x000007ba   6    6         ascii  +A B\nB
 20 0x000007ce 0x000007ce   5    5         ascii    \b :
 21 0x000007d4 0x000007d4   8    8         ascii  A"" "D\n*
 22 0x000007e6 0x000007e6   4    5         ascii  """\n
 23 0x000007eb 0x000007eb   5    6         ascii  *"+""
 24 0x000007f4 0x000007f4   6    7         ascii  "*""?\n
 25 0x00000841 0x00000841   4    4         ascii  " "#
 26 0x00000875 0x00000875   5    5         ibm037 hhhhh
 27 0x000008d3 0x000008d3  12   13         ibm037 hôh½hHhhhÞâs
 28 0x000008e0 0x000008e0   7    8         ibm037 Øhhhhhh
 29 0x00000900 0x00000900   4    4         ascii  A"*A
 30 0x00000968 0x00000968   4    4         ascii  "\n*A
 31 0x0000096f 0x0000096f   4    4         ascii  ( (+
 32 0x00000982 0x00000982   4    4         ascii  \n **
 33 0x00000987 0x00000987   5    5         ascii  "*:A>
 34 0x0000099e 0x0000099e   5    6         ibm037 shh[y
 35 0x000009b2 0x000009b2   4    4         ascii  \nB(\b
 36 0x000009c5 0x000009c5  10   11         ibm037 ½yhð«hÐhhh
 37 0x000009e0 0x000009e0   4    4         ascii  +2*.
 38 0x000009ed 0x000009ed   4    5         ascii  *"""
 39 0x000009fe 0x000009fe   4    4         ascii  ""**
 40 0x00000a08 0x00000a08   4    4         ascii  "A""
 41 0x00000a32 0x00000a32  10   10         ibm037 Yh®yh]hH»Ø
 42 0x00000a47 0x00000a47   4    4         ascii   " "
 43 0x00000a4b 0x00000a4b   4    4         ibm037 stss
 44 0x00000a72 0x00000a72   5    6         utf8    "â"* blocks=Basic Latin,Latin-1 Supplement
 45 0x00000a8a 0x00000a8a  17   18         ibm037 âÐh»ô¯Ü»hhhhh«½]\b
 46 0x00000aca 0x00000aca   5    5         ascii  """""
 47 0x00000b00 0x00000b00   6    7         ibm037 hhhb½{
 48 0x00000bbe 0x00000bbe  11   12         ibm037 hhô±»h¯Hhyô
 49 0x00000bcb 0x00000bcb  14   15         ibm037 hhh[²½hhhyhhhh
 50 0x00000bda 0x00000bda  24   25         ibm037 hhh]hhhhh»ð½]ðh«[hhhhb^H
 51 0x00000c31 0x00000c31   5    6         ascii  \n\n\b("
 52 0x00000c4b 0x00000c4b   4    4         ascii  2 A(
 53 0x00000c8c 0x00000c8c   4    4         ascii  "" \v
 54 0x00000ed4 0x00000ed4   4    5         ascii  \e#\b\b
 55 0x00001059 0x00001059   4    5         ascii  .A\f\b
 56 0x00001108 0x00001108   4    4         ascii  A* *
 57 0x00001168 0x00001168   5    5         ascii  "A\f "
 58 0x0000116e 0x0000116e   9   10         ascii  """A" "A"
 59 0x00001178 0x00001178   4    4         ascii  \n"""
 60 0x000011a6 0x000011a6   4    4         ascii   B\nB
 61 0x000011b8 0x000011b8   5    5         ascii  0 \b >
 62 0x000011bf 0x000011bf   4    4         ascii  "" ?
 63 0x000011d3 0x000011d3   4    5         ascii  """\n
 64 0x000011d8 0x000011d8   5    6         ascii  ?"+""
 65 0x000011e1 0x000011e1   6    7         ascii  "*""?\n
 66 0x00001200 0x00001200   4    4         ascii  \nB*A
 67 0x00001233 0x00001233   6    6         ascii  """ 3#
 68 0x0000126a 0x0000126a  11   12         ibm037 hhHhh\vð××»{
 69 0x000012c8 0x000012c8  21   22         ibm037 hôH¯HHhhhÓ[[t{Øhhhhhh
 70 0x00001369 0x00001369   4    4         ascii  ( (;
 71 0x0000137d 0x0000137d   4    4         ascii  \n **
 72 0x00001382 0x00001382   5    5         ascii  "*:A?
 73 0x00001399 0x00001399   5    6         ibm037 shh±¯
 74 0x000013d1 0x000013d1   4    5         ascii  "*/,
 75 0x000013dc 0x000013dc   4    4         ascii  ?2.>
 76 0x000013e9 0x000013e9   4    5         ascii  *"""
 77 0x000013fa 0x000013fa   4    4         ascii  "".*
 78 0x00001443 0x00001443   4    4         ascii   " "
 79 0x0000146f 0x0000146f   5    6         utf8    2â". blocks=Basic Latin,Latin-1 Supplement
 80 0x00001487 0x00001487  18   19         ibm037 Õ¿Öh»ô¯Ü»hhhhh«½]\b
 81 0x000014c9 0x000014c9   5    5         ascii  """""
 82 0x000014e9 0x000014e9  10   11         ibm037 {h8»{hc0\f{
 83 0x00001500 0x00001500   6    7         ibm037 hhhb½{
 84 0x000015bf 0x000015bf  11   12         ibm037 hhô±»h¯Hhyô
 85 0x000015d1 0x000015d1   9   10         ibm037 ½hhhyhhhh
 86 0x000015db 0x000015db  24   25         ibm037 hhh]hhhhh±ð½Ûöh«[hhhhc^H
 87 0x00001632 0x00001632   5    6         ascii  \n\n\b(?
 88 0x0000168d 0x0000168d   4    4         ascii  "" \v
 89 0x000018d7 0x000018d7   4    5         ascii  \e#\b\b
 90 0x00001973 0x00001973   7    7         ascii  *B(*B(J
 91 0x00001980 0x00001980   4    4         ascii  \nB B
 92 0x000019c6 0x000019c6   4    4         ascii   ?"*
 93 0x000019df 0x000019df   4    5         ibm037 hyhõ
 94 0x00001a4c 0x00001a4c   5    5         ibm037 byh B
 95 0x00001aa0 0x00001aa0   4    4         ascii  A2*A
 96 0x00001ab3 0x00001ab3   4    4         ascii  C*OA
 97 0x00001ac3 0x00001ac3   4    4         ascii  A(*A
 98 0x00001cea 0x00001cea   4    4         ascii  w_Ww
 99 0x00001d0c 0x00001d0c   7    7         ascii  UUUOUSU
100 0x00001d1e 0x00001d1e   5    5         ascii  U\rSuC
101 0x00001d26 0x00001d26   9    9         ascii  UUPUT5UMS
102 0x00001d30 0x00001d30   6    6         ascii  UOT=U@
103 0x00001d3c 0x00001d3c   8    9         ascii  C5=STUUU
104 0x00001d48 0x00001d48   7    7         ascii  UMM5U5S
105 0x00001d55 0x00001d55   4    4         ascii  P?T<
106 0x00001d5b 0x00001d5b   5    5         ascii  MSUUS
107 0x00001d61 0x00001d61   8    8         ascii  5MUUM5MT
108 0x00001d6d 0x00001d6d   4    5         ascii  UUOU
109 0x00001d75 0x00001d75  16   16         ascii  SUMSUT=U5MUUu5MT
110 0x00001d86 0x00001d86   7    7         ascii  5OUUT\rT
111 0x00001d8e 0x00001d8e   8    9         ascii  UL=SU5MU
112 0x00001d9a 0x00001d9a   4    4         ascii  5UU4
113 0x00001d9f 0x00001d9f   7    8         ascii  5SU55UU
114 0x00001da8 0x00001da8   4    4         ascii  SUU3
115 0x00001dad 0x00001dad   4    5         ascii  MU5M
116 0x00001dce 0x00001dce   8    8         ascii  DDLD4DD4
117 0x00001de0 0x00001de0   9   10         ascii  LDC4DLD4D
118 0x00001e15 0x00001e15   4    4         ascii  "dP\n
119 0x00001e1c 0x00001e1c   4    5         ascii  J*EQ
120 0x00001e4d 0x00001e4d   4    5         ascii  *d\nP
121 0x00001ea0 0x00001ea0   4    4         ascii  )@*B
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0000      movsw word es:[di], word ptr [si]
│           0000:0001      pop   ds
│           ; DATA XREF from fcn.000005aa @ +0x4c
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           0000:0004      mov   byte cs:[0x3388], al
│           0000:0008      mov   dx, cs
│           ; DATA XREF from str.B_B @ +0xc
│           0000:000a      mov   ds, dx
│           ; DATA XREF from fcn.0000032f @ +0x2d
│           ; DATA XREF from fcn.00000a68 @ +0x253
│           ; DATA XREFS from str.3 @ +0x42f, +0x48a
│           0000:000c      add   dx, 0x1000
│           ; XREFS: DATA 0x000000c1  DATA 0x000000e6  DATA 0x00000121  
│           ; XREFS: DATA 0x00000147  DATA 0x000001b6  DATA 0x000001d6  
│           ; XREFS: DATA 0x0000025a  DATA 0x00000273  DATA 0x000002d1  
│           ; XREFS: DATA 0x000002f7  DATA 0x00000375  
│           0000:0010      mov   es, dx
│           ; XREFS: DATA 0x0000009c  DATA 0x00000c6d  DATA 0x00000d4e  
│           ; XREFS: DATA 0x00000e33  DATA 0x0000166e  DATA 0x00001750  
│           0000:0012      cld
│           ; XREFS: DATA 0x00000c67  DATA 0x00000c9b  DATA 0x00000cc0  
│           ; XREFS: DATA 0x00000d84  DATA 0x00000dcb  DATA 0x00001667  
│           ; XREFS: DATA 0x000016c2  DATA 0x000016e5  DATA 0x0000179f  
│           ; XREFS: DATA 0x000017b6  DATA 0x000017ce  
│           0000:0013      mov   di, 0
│           ; XREFS: DATA 0x00000d37  DATA 0x00000d80  DATA 0x00000daf  
│           ; XREFS: DATA 0x00000ede  DATA 0x00001739  DATA 0x0000176b  
│           ; XREFS: DATA 0x00001783  DATA 0x000017b2  
│           0000:0016      mov   cx, 0xfc0
│           0000:0019      xor   ax, ax
│           0000:001b      rep   stosw word es:[di], ax
│           0000:001d      mov   dx, cs
│           0000:001f      add   dx, 0x1000
│           0000:0023      mov   es, dx
│           0000:0025      mov   di, 0
│           ; DATA XREF from fcn.00000e89 @ +0x23b
│           ; DATA XREFS from str.B_B @ +0xab, +0xe4, +0x55b
│           0000:0028      mov   si, 0x38e0
│           ; DATA XREF from fcn.000005aa @ +0x37d
│           ; DATA XREF from str.3 @ +0xeb
│           0000:002b      call  fcn.00000368                          ; fcn.00000368
│           0000:002e      mov   di, 0xfc0
│           0000:0031      mov   si, 0x426a                            ; 'jB'
│           ; DATA XREFS from fcn.0000008d @ +0x3b, +0x3e
│           0000:0034      call  fcn.00000368                          ; fcn.00000368
│           0000:0037      push  ds
│           ; DATA XREF from fcn.0000008d @ +0x1a1
│           ; DATA XREF from fcn.0000023f @ +0x1d
│           ; DATA XREF from fcn.000002af @ +0x27
│           0000:0038      mov   dx, cs
│           ; DATA XREF from str.B_B @ +0x29b
│           0000:003a      add   dx, 0x1000
│           ; DATA XREF from fcn.00000e89 @ +0x188
│           0000:003e      mov   ds, dx
│           ; DATA XREF from fcn.00000368 @ 0x382
│           0000:0040      mov   si, 0
│           ; DATA XREFS from str.B_B @ +0x98, +0x297, +0x457
│           0000:0043      mov   bp, 0xfc0
│           0000:0046      mov   bx, 0xc1e
│           0000:0049      mov   cx, 0x3848                            ; 'H8'
│           0000:004c      call  fcn.00000399                          ; fcn.00000399
│           0000:004f      pop   ds
│           ; DATA XREF from fcn.0000008d @ +0x82
│           ; DATA XREFS from fcn.00000399 @ +0x4b, +0x55
│           ; CALL XREF from str.B_B @ +0x3d1
│           0000:0050      mov   byte [0x3694], 0x1c                   ; [0x3694:1]=255
│           ; CALL XREFS from str.B_B @ +0x3a5, +0x3ec
│           0000:0055      mov   dx, cs
│           0000:0057      add   dx, 0x1000
│           0000:005b      mov   es, dx
│           0000:005d      mov   di, 0
│           0000:0060      mov   si, 0x4c6d                            ; 'mL'
│           0000:0063      call  fcn.00000368                          ; fcn.00000368
│           0000:0066      mov   di, 0x1c0
│           0000:0069      mov   si, 0x4db8
│           0000:006c      call  fcn.00000368                          ; fcn.00000368
│           0000:006f      push  ds
│           0000:0070      mov   dx, cs
│           0000:0072      add   dx, 0x1000
│           0000:0076      mov   ds, dx
│           0000:0078      mov   si, 0
│           0000:007b      mov   bp, 0x1c0
│           0000:007e      mov   bx, 0xc0e
│           0000:0081      mov   cx, 0x1c10
│           0000:0084      call  fcn.00000399                          ; fcn.00000399
│           0000:0087      pop   ds
│           ; XREFS: DATA 0x0000085c  DATA 0x00000888  DATA 0x000008ca  
│           ; XREFS: DATA 0x000008d1  DATA 0x00000a17  DATA 0x00000a3e  
│           ; XREFS: DATA 0x00000af6  DATA 0x00000e4e  DATA 0x0000127d  
│           ; XREFS: DATA 0x00001eb7  
│           0000:0088      call  fcn.0000008d                          ; fcn.0000008d
│           ; DATA XREF from fcn.000005aa @ +0x2b9
└           0000:008b      retf
```

### Function 0x0000008d
```asm
; CALL XREF from fcn.00000000 @ 0x88
┌ fcn.0000008d();
│           0000:008d      xor   bx, bx
│           0000:008f      mov   bl, byte [0x3388]                     ; [0x3388:1]=255
│           0000:0093      add   bx, bx
└           0000:0095      jmp   word [bx + 0x3395]
```

### Function 0x0000023f
```asm
; CALL XREFS from fcn.0000008d @ +0x12b, +0x138
┌ fcn.0000023f();
│           0000:023f      push  si
│           0000:0240      mov   di, si
│           0000:0242      add   di, 0x1c
│           0000:0245      mov   cx, 0xe
│           0000:0248      rep   movsw word es:[di], word ptr [si]
│           0000:024a      pop   si
└           0000:024b      ret
```

### Function 0x000002af
```asm
; CALL XREFS from fcn.0000023f @ +0x44, +0x4c, +0x54, +0x5c
┌ fcn.000002af();
│           0000:02af      xor   al, al
│           0000:02b1      add   dh, dh
│           0000:02b3      adc   al, al
│           0000:02b5      add   dl, dl
│           0000:02b7      adc   al, al
│           0000:02b9      add   al, al
│           0000:02bb      add   dh, dh
│           0000:02bd      adc   al, al
│           0000:02bf      add   dl, dl
│           0000:02c1      adc   al, al
│           0000:02c3      add   al, al
└           0000:02c5      ret
```

### Function 0x0000032f
```asm
; CALL XREFS from fcn.000002af @ +0x59, +0x61
┌ fcn.0000032f(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:032f      xor   al, al
│           0000:0331      mov   cx, 2
│       ┌─> 0000:0334      add   dh, dh
│       ╎   0000:0336      adc   bl, bl
│       ╎   0000:0338      add   dl, dl
│       ╎   0000:033a      adc   bl, bl
│       ╎   0000:033c      add   dh, dh
│       ╎   0000:033e      adc   bl, bl
│       ╎   0000:0340      add   dl, dl
│       ╎   0000:0342      adc   bl, bl
│       ╎   0000:0344      and   bl, 0xf
│       ╎   0000:0347      xor   bh, bh
│       ╎   0000:0349      add   al, al
│       ╎   0000:034b      add   al, al
│       ╎   0000:034d      add   al, al
│       ╎   0000:034f      add   al, al
│       ╎   0000:0351      or    al, byte [bx + 0x3654]                ; arg3
│       └─< 0000:0355      loop  0x334
└           0000:0357      ret
```

### Function 0x00000368
```asm
; CALL XREFS from fcn.00000000 @ 0x2b, 0x34, 0x63, 0x6c
┌ fcn.00000368();
│           0000:0368      mov   bx, di
│           ; CODE XREF from fcn.00000368 @ 0x396
│       ┌─> 0000:036a      lodsb al, byte [si]
│       ╎   0000:036b      or    al, al
│      ┌──< 0000:036d      jne   0x370
│      │╎   0000:036f      ret
│      └──> 0000:0370      mov   ah, al
│       ╎   0000:0372      and   ah, 0xf0
│       ╎   0000:0375      cmp   ah, 0x10
│      ┌──< 0000:0378      jne   0x382
│      │╎   0000:037a      and   al, 0xf
│      │╎   0000:037c      mov   ah, al
│      │╎   0000:037e      xor   al, al
│     ┌───< 0000:0380      jmp   0x391
│     │└──> 0000:0382      cmp   ah, 0x40
│     │┌──< 0000:0385      jne   0x38f
│     ││╎   0000:0387      and   al, 0xf
│     ││╎   0000:0389      mov   ah, al
│     ││╎   0000:038b      mov   al, 0xaa
│    ┌────< 0000:038d      jmp   0x391
│    ││└──> 0000:038f      mov   ah, 1
│    ││ ╎   ; CODE XREFS from fcn.00000368 @ 0x380, 0x38d
│    └└┌──> 0000:0391      stosb byte es:[di], al
│      ╎╎   0000:0392      dec   ah
│      └──< 0000:0394      jne   0x391
└       └─< 0000:0396      jmp   0x36a
```

### Function 0x00000399
```asm
; CALL XREFS from fcn.00000000 @ 0x4c, 0x84
┌ fcn.00000399();
│           0000:0399      xor   ax, ax
│           0000:039b      mov   al, byte cs:[0x3388]
│           0000:039f      add   ax, ax
│           0000:03a1      add   ax, 0x36a5
│           0000:03a4      mov   di, ax
└           0000:03a6      jmp   word cs:[di]
```

### Function 0x0000053e
```asm
; CALL XREFS from fcn.00000399 @ +0x182, +0x186, +0x18a, +0x18e
┌ fcn.0000053e();
│           0000:053e      xor   al, al
│           0000:0540      add   dh, dh
│           0000:0542      adc   al, al
│           0000:0544      add   al, al
│           0000:0546      add   dl, dl
│           0000:0548      adc   al, al
│           0000:054a      add   dh, dh
│           0000:054c      adc   al, al
│           0000:054e      add   al, al
│           0000:0550      add   dl, dl
│           0000:0552      adc   al, al
└           0000:0554      ret
```

### Function 0x000005aa
```asm
; CALL XREFS from fcn.0000053e @ +0x47, +0x4b
┌ fcn.000005aa(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:05aa      xor   al, al
│           0000:05ac      mov   cx, 2
│       ┌─> 0000:05af      add   dh, dh
│       ╎   0000:05b1      adc   bl, bl
│       ╎   0000:05b3      add   dl, dl
│       ╎   0000:05b5      adc   bl, bl
│       ╎   0000:05b7      add   dh, dh
│       ╎   0000:05b9      adc   bl, bl
│       ╎   0000:05bb      add   dl, dl
│       ╎   0000:05bd      adc   bl, bl
│       ╎   0000:05bf      and   bl, 0xf
│       ╎   0000:05c2      xor   bh, bh
│       ╎   0000:05c4      add   al, al
│       ╎   0000:05c6      add   al, al
│       ╎   0000:05c8      add   al, al
│       ╎   0000:05ca      add   al, al
│       ╎   0000:05cc      or    al, byte cs:[bx + 0x38d0]             ; arg3
│       └─< 0000:05d1      loop  0x5af
└           0000:05d3      ret
```

### Function 0x00000a68
```asm
╎   ; CALL XREF from str.B_B @ +0x239
┌ fcn.00000a68(int16_t arg3, int16_t arg4);
│       ╎   ; arg int16_t arg3 @ bx
│       ╎   ; arg int16_t arg4 @ cx
│       ╎   0000:0a68      cli
│       ╎   0000:0a6a      and   ch, byte [bp + di]
│       └─< 0000:0a6c      loop  0xa10
│           0000:0a6e      xor   ah, dl
│       ┌─< 0000:0a70      ljmp  0xc322:0x20e2
```

### Function 0x00000e89
```asm
; CALL XREF from fcn.00000a68 @ +0x21c
┌ fcn.00000e89(int16_t arg1, int16_t arg3, int16_t arg4, int16_t arg_217h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           ; arg int16_t arg_217h @ stack + 0x217
│           0000:0e89      adc   byte [0xc80c], 0xa0
│           0000:0e8e      sbb   ch, byte [bx + si]                    ; arg3
│           0000:0e90      and   byte [bp + si - 0x3fea], al
│           0000:0e94      adc   word [bx + si], cx                    ; arg4
│           0000:0e96      scasb al, byte es:[di]
│           0000:0e97      rcl   byte [bp + di], 8
│           0000:0e9a      adc   cl, byte [bx + si]                    ; arg3
│           0000:0e9c      or    al, 8
│           0000:0e9e      push  ss
│           0000:0e9f      or    ch, byte [bp + si]
│           0000:0ea1      sub   byte [bp + si], dl
│           0000:0ea3      add   dl, byte [bx + di]                    ; arg3
│           0000:0ea5      adc   byte [0x83a], 0x20
│           0000:0eaa      sbb   al, byte [bx + si + 0x811]            ; arg3
│           0000:0eae      and   byte [di], dl
│           0000:0eb0      rcl   byte [bx + di], 0x22
│           0000:0eb3      rcl   byte cs:[0x8808], 0x88
│           0000:0eb9      push  ss
│           0000:0eba      or    cl, byte [bx + si]                    ; arg3
│           0000:0ebc      mov   byte [bp + si], dl
│           0000:0ebe      or    byte [bx + si], bl                    ; arg3
│           0000:0ec0      and   dl, byte [bx + di]                    ; arg3
│           0000:0ec2      and   byte [bx + di], bl                    ; arg3
│           0000:0ec4      or    bl, byte [bx + di]                    ; arg3
│           0000:0ec6      rcl   byte [bx + di], 0x28
│           0000:0ec9      scasb al, byte es:[di]
│           0000:0eca      adc   al, 0x80
│           0000:0ecc      adc   cl, byte [bx + si]                    ; arg3
│           0000:0ece      mov   byte [bp + si], al
│           0000:0ed0      push  ss
│           0000:0ed1      or    ah, byte [bp + si]
│           0000:0ed3      add   bl, byte [bp + di]
│           0000:0ed5      and   cx, word [bx + si]                    ; arg4
│           0000:0ed7      or    byte [bx], bl                         ; arg3
│           0000:0ed9      push  ss
│           0000:0eda      and   ch, byte [0x817]                      ; [0x817:1]=42
│           0000:0ede      add   byte [bp + si], 0x16                  ; [0x16:1]=185
│           0000:0ee1      or    al, byte [bx + di - 0x7e]             ; arg3
│           0000:0ee4      sbb   sp, ax                                ; arg1
│           0000:0ee6      add   bl, byte [0x1728]                     ; [0x1728:1]=192
│           0000:0eea      or    byte [bp + di - 0x7fe7], ch
│           0000:0eee      adc   byte [di], 8
│           0000:0ef1      inc   cx                                    ; arg4
│           0000:0ef2      add   bl, byte [bp + di]
│           0000:0ef4      mov   al, byte [0x1e02]                     ; [0x1e02:1]=64
│           0000:0ef7      or    dl, byte [bx]                         ; arg3
│           0000:0ef9      sub   bh, byte [bp + di + 0x217]
│           0000:0efd      add   ah, byte [bx + si]                    ; arg3
│           0000:0eff      adc   byte [di], 0xa
│           0000:0f02      sub   al, byte [bx + si + str.B_B]          ; [0x1980:1]=10 ; "\nB B\xa2\xa2I\xa2\x8aB\xa8\x8a\xa8\n*B\x82A\xa8\xa2B\xa8\x8aE\xa8\xa8A\n\xab*B\U00000011\"\xb0\U00000003\xa0B\xa0A\xa8\x8aC*A\x" ; arg3
│           0000:0f06      add   ax, word [bx + si - 0x7fef]           ; arg3
│           0000:0f0a      sbb   ax, 0x1702                            ; arg1
│           0000:0f0d      or    ch, byte [si - 0x7fe9]
│           0000:0f11      or    byte [bx + si + 0x1520], al           ; arg3
│           0000:0f15      and   ch, byte [bx + si]                    ; arg3
│           0000:0f17      sbb   byte [bx], 0x1f                       ; arg3
│           0000:0f1a      adc   ax, 0xb83a                            ; arg1
│           0000:0f1d      push  ss
│           0000:0f1e      or    cl, byte [bx + si]                    ; arg3
│           0000:0f20      add   cl, byte [bx + si]                    ; arg3
│           0000:0f22      or    dl, byte [di]
│           0000:0f24      sub   byte [bx + si], ch                    ; arg3
│           0000:0f26      adc   word [bx + si + 0x1f1f], ax           ; arg3
│           0000:0f2a      adc   al, 0x32
│           0000:0f2c      mov   ax, 0x8219
│           0000:0f2f      push  ss
│           0000:0f30      sub   byte [bp + si], ah
│           0000:0f32      add   bl, byte [bx]                         ; arg3
│           0000:0f34      pop   ds
│           0000:0f35      adc   ax, 0xb80e
│           0000:0f38      pop   ds
│           0000:0f39      adc   word [bx + si - 0x7f58], sp           ; arg3
│           0000:0f3d      mov   byte [bx], bl                         ; arg3
│           0000:0f3f      pop   ds
│           0000:0f40      adc   al, 0xa
│           0000:0f42      mov   sp, 0x111f
│           0000:0f45      mov   al, byte [0x1128]                     ; [0x1128:1]=42
│           0000:0f48      and   byte [bx], bl                         ; arg3
│           0000:0f4a      pop   ds
│           0000:0f4b      adc   al, 0xa
│           0000:0f4d      mov   word [bx], ds                         ; arg3
│           0000:0f4f      add   dl, byte [bx + di]                    ; arg3
│           0000:0f51      sbb   byte [bx], 0x1f                       ; arg3
│           0000:0f54      push  ss
│           0000:0f55      or    byte [bx + si], ah                    ; arg3
│           0000:0f57      pop   ds
│           0000:0f58      adc   al, byte [bp + si]
│           0000:0f5a      pop   ds
│           0000:0f5b      pop   ds
│           0000:0f5c      push  ss
│           0000:0f5d      or    byte [bx + si + 0x121f], ah           ; arg3
│           0000:0f61      or    byte [bx], bl                         ; arg3
│           0000:0f63      pop   ds
│           0000:0f64      pop   ss
│           0000:0f65      xor   byte [bx], bl                         ; arg3
│           0000:0f67      adc   word [bx + si], sp                    ; arg3
│           0000:0f69      pop   ds
│           0000:0f6a      pop   ds
│           0000:0f6b      sbb   byte [bx + si], dh                    ; arg3
│           0000:0f6d      add   byte [si - 0x55], cl
│           0000:0f70      scasw ax, word es:[di]
│           0000:0f71      inc   bx                                    ; arg3
│           0000:0f72      enter 0x4f3a, 0x4b                          ; ':O'
│           0000:0f76      stosw word es:[di], ax
│           0000:0f77      dec   byte [bx + si - 1]                    ; arg3
│           0000:0f7a      inc   sp
│           0000:0f7b      stosw word es:[di], ax
└       ┌─< 0000:0f7c      ljmp  0xaf41:0xba41
```

### Function 0x0000188a
```asm
; CALL XREF from str.3 @ +0x452
┌ fcn.0000188a(int16_t arg1, short unsigned int arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg short unsigned int arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:188a      or    cl, byte [bp + si]
│           0000:188c      adc   byte [0xc80c], 0xa0
│           0000:1891      sbb   ch, byte [bx + si]                    ; arg3
│           0000:1893      and   byte [bp + si - 0x3fea], al
│           0000:1897      adc   word [bx + si], cx                    ; arg4
│           0000:1899      scasb al, byte es:[di]
│           0000:189a      rcl   byte [bp + di], 8
│           0000:189d      adc   cl, byte [bx + si]                    ; arg3
│           0000:189f      or    al, 8
│           0000:18a1      push  ss
│           0000:18a2      push  cs
│           0000:18a3      cmp   ch, byte [bx + si]                    ; arg3
│           0000:18a5      adc   al, byte [bp + si]
│           0000:18a7      adc   word [bx + si + 0x3a16], ax           ; arg3
│           0000:18ab      or    byte [bx + si], ah                    ; arg3
│           0000:18ad      sbb   al, byte [bx + si + 0x811]            ; arg3
│           0000:18b1      and   byte [di], dl
│           0000:18b3      rcl   byte [bx + di], 0x22
│           0000:18b6      rcl   byte cs:[0x8808], 0x88
│           0000:18bc      push  ss
│           0000:18bd      or    cl, byte [bx + si]                    ; arg3
│           0000:18bf      mov   byte [bp + si], dl
│           0000:18c1      or    byte [bx + si], bl                    ; arg3
│           0000:18c3      and   dl, byte [bx + di]                    ; arg3
│           0000:18c5      and   byte [bx + di], bl                    ; arg3
│           0000:18c7      or    bl, byte [bx + di]                    ; arg3
│           0000:18c9      rcl   byte [bx + di], 0x28
│           0000:18cc      mov   di, 0x8014
│           0000:18cf      adc   cl, byte [bx + si]                    ; arg3
│           0000:18d1      mov   byte [bp + si], al
│           0000:18d3      push  ss
│           0000:18d4      or    ah, byte [bp + si]
│           0000:18d6      add   bl, byte [bp + di]
│           0000:18d8      and   cx, word [bx + si]                    ; arg4
│           0000:18da      or    byte [bx], bl                         ; arg3
│           0000:18dc      push  ss
│           0000:18dd      and   bh, byte [bx]                         ; arg3
│           0000:18df      pop   ss
│           0000:18e0      or    byte [bp + si + 0x1602], al
│           0000:18e4      push  cs
│           0000:18e5      scasb al, byte es:[di]
│           0000:18e6      sbb   byte [bp + di], 0xe0
│           0000:18e9      add   bl, byte [0x1728]                     ; [0x1728:1]=192
│           0000:18ed      or    byte [bp + di - 0x7fe7], bh
│           0000:18f1      adc   byte [di], 8
│           0000:18f4      inc   cx                                    ; arg4
│           0000:18f5      add   bl, byte [bp + di]
│           0000:18f7      mov   al, byte [0x1e02]                     ; [0x1e02:1]=64
│           0000:18fa      or    dl, byte [bx]                         ; arg3
│           0000:18fc      sub   bh, byte [bx + 0x217]                 ; arg3
│           0000:1900      add   ah, byte [bx + si]                    ; arg3
│           0000:1902      adc   byte [di], 0xe
│           0000:1905      add   byte cs:[bx + si + 0x319], 0x80       ; [0x80:1]=12 ; arg3
│           0000:190b      adc   word [bx + si + 0x21d], ax            ; arg3
│           0000:190f      pop   ss
│           0000:1910      or    bh, ah
│           0000:1912      pop   ss
│           0000:1913      or    byte [bx + si], 0x80                  ; [0x80:1]=12 ; arg3
│           0000:1916      and   byte [di], dl
│           0000:1918      xor   ch, byte [bx + si]                    ; arg3
│           0000:191a      sbb   byte [bx], 0x1f                       ; arg3
│           0000:191d      adc   ax, 0xfc3a                            ; arg1
│           0000:1920      push  ss
│           0000:1921      or    cl, byte [bx + si]                    ; arg3
│           0000:1923      add   cl, byte [bx + si]                    ; arg3
│           0000:1925      or    dl, byte [di]
│           0000:1927      sub   byte [bx + si], ch                    ; arg3
│           0000:1929      adc   word [bx + si + 0x1f1f], ax           ; arg3
│           0000:192d      adc   al, 0x32
│           0000:192f      cld
│           0000:1930      sbb   word [bp + si + 0x2816], ax           ; arg1
│           0000:1934      xor   al, byte [bp + si]
│           0000:1936      pop   ds
│           0000:1937      pop   ds
│           0000:1938      adc   ax, 0xfc0e                            ; arg1
│           0000:193b      pop   ds
│           0000:193c      adc   ax, sp                                ; arg1
│           0000:193e      call  0xffffa1c1
│           0000:1941      pop   ds
│           0000:1942      pop   ds
│           0000:1943      adc   al, 0xa
│           0000:1945      mov   sp, 0x111f
│           0000:1948      mov   al, byte [0x1128]                     ; [0x1128:1]=42
│           0000:194b      and   byte [bx], bl
│           0000:194d      pop   ds
│           0000:194e      adc   al, 0xa
└           0000:1950      int3
```

## Cross-References (callers)
```json
  0x0000008d:
[{"from":136,"to":141,"type":"CALL"}]
  0x0000023f:
[{"from":440,"to":575,"type":"CALL"},{"from":453,"to":575,"type":"CALL"}]
  0x000002af:
[{"from":643,"to":687,"type":"CALL"},{"from":651,"to":687,"type":"CALL"},{"from":659,"to":687,"type":"CALL"},{"from":667,"to":687,"type":"CALL"}]
  0x0000032f:
[{"from":776,"to":815,"type":"CALL"},{"from":784,"to":815,"type":"CALL"}]
  0x00000368:
[{"from":43,"to":872,"type":"CALL"},{"from":52,"to":872,"type":"CALL"},{"from":99,"to":872,"type":"CALL"},{"from":108,"to":872,"type":"CALL"}]
  0x00000399:
[{"from":76,"to":921,"type":"CALL"},{"from":132,"to":921,"type":"CALL"}]
  0x0000053e:
[{"from":1307,"to":1342,"type":"CALL"},{"from":1311,"to":1342,"type":"CALL"},{"from":1315,"to":1342,"type":"CALL"},{"from":1319,"to":1342,"type":"CALL"}]
  0x000005aa:
[{"from":1413,"to":1450,"type":"CALL"},{"from":1417,"to":1450,"type":"CALL"}]
  0x00000a68:
[{"from":7097,"to":2664,"type":"CALL"}]
  0x00000e89:
[{"from":3204,"to":3721,"type":"CALL"}]
  0x0000188a:
[{"from":5765,"to":6282,"type":"CALL"}]
```