# ENEMY_BAT - Analysis

**Source:** `chunk_08.bin`  
**Size:** 9.4 KB  
**Functions:** 13  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    5 95           fcn.00000000
0x00000060    8 34           fcn.00000060
0x00000082    1 12           fcn.00000082
0x000000c0    3 21           fcn.000000c0
0x000001fd    1 23           fcn.000001fd
0x00000257    3 42           fcn.00000257
0x00000291    6 34           fcn.00000291
0x000002b3    1 12           fcn.000002b3
0x0000033d    1 10           fcn.0000033d
0x000003cd    9 133          fcn.000003cd
0x000005a1    3 42           fcn.000005a1
0x00000797    1 8            fcn.00000797
0x000015dc    1 9            fcn.000015dc
```

## Strings
```
nth      paddr      vaddr len size section type   string                               
---------------------------------------------------------------------------------------
  0 0x0000006f 0x0000006f   4    4         ascii  8u\n2
  1 0x00000287 0x00000287   5    6         ascii  \v\a\t\v\v
  2 0x000002c0 0x000002c0   5    5         ascii  5C6C6
  3 0x00000491 0x00000491  13   14         ibm037 {¡SXããßSN¬aG 
  4 0x000004d2 0x000004d2  13   14         ibm037 {¡SZããßSP¬aG 
  5 0x000004f4 0x000004f4   5    6         ibm037 3vaG}
  6 0x00000f7d 0x00000f7d   4    4         ascii  jj(_
  7 0x0000162e 0x0000162e   4    4         ascii  3?>"
  8 0x0000191c 0x0000191c   4    5         ascii  30\f3
  9 0x00001b77 0x00001b77   6    6         ibm037 Þyhbb®
 10 0x00001cfe 0x00001cfe   4    4         ascii  (\f<\n
 11 0x00001e0f 0x00001e0f   6    7         ibm037 @CGB¡½
 12 0x000022a5 0x000022a5   5    6         ascii  GU5T}
 13 0x000022c1 0x000022c1   5    6         ascii  GU5T}
 14 0x000022e5 0x000022e5   5    6         ibm037 éNJN 
 15 0x000022ec 0x000022ec  10   11         ascii  U\rEMSU5U54
 16 0x00002301 0x00002301   5    6         ibm037 éNJN 
 17 0x00002308 0x00002308  10   11         ascii  U\rEMSU5U54
 18 0x00002325 0x00002325   5    6         ascii  MQUM@
 19 0x00002341 0x00002341   5    6         ascii  MQUM@
 20 0x0000234e 0x0000234e   4    5         ascii  TU@P
 21 0x00002366 0x00002366   4    4         ascii  TU@P
 22 0x00002377 0x00002377   7    8         ascii  =cTPdW}
 23 0x0000238e 0x0000238e   7    7         ascii  =\a]@TP\a
 24 0x000023b9 0x000023b9   9   10         ascii  nnUUWUUU@
 25 0x000023c3 0x000023c3   7    7         ascii  uUUUUuU
 26 0x000023d0 0x000023d0   4    4         ascii  Uu]u
 27 0x000023d5 0x000023d5   4    4         ascii  WUnn
 28 0x000023f5 0x000023f5  35   36         ascii  i\focUUUUUUUUU]EUU]uUUUUUUUUUUUUUi0d
 29 0x00002457 0x00002457   5    6         ascii  uuWU_
 30 0x0000245d 0x0000245d   6    7         ascii  UUUu]c
 31 0x000024ad 0x000024ad   4    5         ascii  UUUs
 32 0x000024fe 0x000024fe   5    5         ascii  b\f;__
 33 0x0000251a 0x0000251a   5    5         ascii  U]{\_
 34 0x00002523 0x00002523   6    6         ascii  w_p1up
 35 0x0000253b 0x0000253b   4    4         ascii  ___U
 36 0x00002548 0x00002548   5    5         ascii  w|=_u
 37 0x00002557 0x00002557   4    4         ascii  ___U
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0000      and   ax, 0                                 ; arg1
│           ; DATA XREF from fcn.000015dc @ +0x86a
│           0000:0004      mov   byte cs:[0x335b], al
│           0000:0008      mov   dx, cs
│           ; DATA XREF from fcn.00000797 @ +0x385
│           ; DATA XREFS from fcn.000015dc @ +0x724, +0x76d
│           0000:000a      mov   ds, dx
│           ; XREFS: DATA 0x000005e3  DATA 0x000017db  DATA 0x00001872  
│           ; XREFS: DATA 0x00001adb  DATA 0x00001c51  DATA 0x00001cfd  
│           0000:000c      add   dx, 0x1000
│           ; XREFS: DATA 0x00000048  DATA 0x00000053  DATA 0x00000323  
│           ; XREFS: DATA 0x0000035b  DATA 0x000003de  DATA 0x000003e1  
│           ; XREFS: DATA 0x000004ef  
│           0000:0010      mov   es, dx
│           0000:0012      cld
│           0000:0013      mov   di, 0
│           0000:0016      mov   cx, 0x2680
│           0000:0019      xor   ax, ax
│           0000:001b      rep   stosw word es:[di], ax
│           0000:001d      mov   dx, cs
│           0000:001f      add   dx, 0x1000
│           ; DATA XREF from fcn.000015dc @ +0xae5
│           0000:0023      mov   es, dx
│           0000:0025      mov   si, 0x38e7
│           ; DATA XREF from fcn.00000797 @ +0x759
│           0000:0028      mov   di, 0
│           ; DATA XREF from fcn.00000797 @ +0x12a
│           ; DATA XREF from fcn.000015dc @ +0xc6e
│           0000:002b      call  fcn.00000060                          ; fcn.00000060
│           0000:002e      mov   si, 0x4759                            ; 'YG'
│           0000:0031      mov   di, 0x1340
│           ; DATA XREFS from fcn.000002b3 @ +0x77, +0x7a
│           0000:0034      call  fcn.00000060                          ; fcn.00000060
│           0000:0037      call  fcn.00000082                          ; fcn.00000082
│           ; DATA XREF from fcn.00000797 @ +0xb28
│           ; DATA XREF from fcn.000015dc @ +0xc8c
│           0000:003a      mov   dx, cs
│           ; DATA XREFS from fcn.000015dc @ +0x12e, +0x36f
│           0000:003c      add   dx, 0x1000
│           0000:0040      mov   es, dx
│           0000:0042      mov   di, 0
│           0000:0045      mov   si, 0x559e
│           0000:0048      mov   cx, 0x10
│       ┌─> 0000:004b      call  fcn.00000291                          ; fcn.00000291
│       └─< 0000:004e      loop  0x4b
│           ; DATA XREF from fcn.000000c0 @ 0xce
│           ; DATA XREFS from fcn.000002b3 @ +0x42, +0x59
│           0000:0050      mov   si, 0x56f1
│           0000:0053      mov   cx, 0x10
│       ┌─> 0000:0056      call  fcn.00000291                          ; fcn.00000291
│       └─< 0000:0059      loop  0x56
│           0000:005b      call  fcn.000002b3                          ; fcn.000002b3
└           0000:005e      retf
```

### Function 0x00000060
```asm
; CALL XREFS from fcn.00000000 @ 0x2b, 0x34
            ; DATA XREF from fcn.00000291 @ 0x299
┌ fcn.00000060();
│           0000:0060      xor   cx, cx
│           ; CODE XREF from fcn.00000060 @ 0x80
│       ┌─> 0000:0062      lodsb al, byte [si]
│       ╎   0000:0063      cmp   al, 6
│       ╎   0000:0065      mov   ah, 1
│      ┌──< 0000:0067      jne   0x6a
│      │╎   0000:0069      lodsw ax, word [si]
│      │╎   ; DATA XREF from fcn.00000797 @ +0x7e6
│     ┌└──> 0000:006a      stosb byte es:[di], al
│     ╎ ╎   0000:006b      inc   ch
│     ╎ ╎   0000:006d      cmp   ch, 0x38
│     ╎┌──< 0000:0070      jne   0x7c
│     ╎│╎   0000:0072      xor   ch, ch
│     ╎│╎   0000:0074      inc   cl
│     ╎│╎   0000:0076      cmp   cl, 0x58
│    ┌────< 0000:0079      jne   0x7c
│    │╎│╎   0000:007b      ret
│    └─└──> 0000:007c      dec   ah
│     └───< 0000:007e      jne   0x6a
│       │   ; DATA XREF from fcn.00000797 @ +0x7fe
│       │   ; DATA XREF from fcn.000015dc @ +0x2cb
└       └─< 0000:0080      jmp   0x62
```

### Function 0x00000082
```asm
; CALL XREF from fcn.00000000 @ 0x37
            ; DATA XREF from fcn.00000797 @ +0x3bb
            ; DATA XREF from fcn.000015dc @ +0x8c2
┌ fcn.00000082();
│           0000:0082      xor   bx, bx
│           0000:0084      mov   bl, byte [0x335b]                     ; [0x335b:1]=255
│           ; DATA XREF from fcn.00000797 @ +0x632
│           0000:0088      add   bx, bx
│           ; DATA XREFS from fcn.00000797 @ +0x1bf, +0x6b3
│           ; DATA XREF from fcn.000015dc @ +0x117
└           0000:008a      jmp   word [bx + 0x338a]
```

### Function 0x000000c0
```asm
; CALL XREFS from fcn.00000082 @ +0x33, +0x39
            ; DATA XREF from fcn.000015dc @ +0x7ca
┌ fcn.000000c0();
│           0000:00c0      mov   di, 0x46c
│           ; DATA XREFS from fcn.000015dc @ +0x23c, +0x6cf
│           0000:00c3      mov   cx, 0x58                              ; 'X'
│       ┌─> 0000:00c6      push  cx
│       ╎   0000:00c7      push  di
│       ╎   0000:00c8      mov   cx, 0x38                              ; '8'
│       ╎   0000:00cb      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:00cd      pop   di
│       ╎   0000:00ce      add   di, 0x50
│       ╎   0000:00d1      pop   cx
│       └─< 0000:00d2      loop  0xc6
└           0000:00d4      ret
```

### Function 0x000001fd
```asm
; CALL XREFS from fcn.000000c0 @ +0x120, +0x124, +0x128, +0x12c
┌ fcn.000001fd();
│           0000:01fd      xor   al, al
│           0000:01ff      add   dh, dh
│           0000:0201      adc   al, al
│           0000:0203      add   al, al
│           0000:0205      add   dl, dl
│           0000:0207      adc   al, al
│           0000:0209      add   dh, dh
│           0000:020b      adc   al, al
│           0000:020d      add   al, al
│           0000:020f      add   dl, dl
│           0000:0211      adc   al, al
└           0000:0213      ret
```

### Function 0x00000257
```asm
; CALL XREFS from fcn.000001fd @ +0x3b, +0x3f
┌ fcn.00000257(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0257      xor   al, al
│           0000:0259      mov   cx, 2
│       ┌─> 0000:025c      add   dh, dh
│       ╎   0000:025e      adc   bl, bl
│       ╎   0000:0260      add   dl, dl
│       ╎   0000:0262      adc   bl, bl
│       ╎   0000:0264      add   dh, dh
│       ╎   0000:0266      adc   bl, bl
│       ╎   0000:0268      add   dl, dl
│       ╎   0000:026a      adc   bl, bl
│       ╎   0000:026c      and   bl, 0xf
│       ╎   0000:026f      xor   bh, bh
│       ╎   0000:0271      add   al, al
│       ╎   0000:0273      add   al, al
│       ╎   0000:0275      add   al, al
│       ╎   0000:0277      add   al, al
│       ╎   0000:0279      or    al, byte cs:[bx + 0x357d]             ; arg3
│       └─< 0000:027e      loop  0x25c
└           0000:0280      ret
```

### Function 0x00000291
```asm
; CALL XREFS from fcn.00000000 @ 0x4b, 0x56
┌ fcn.00000291();
│           0000:0291      xor   bl, bl
│       ┌─> 0000:0293      lodsb al, byte [si]
│       ╎   0000:0294      mov   ah, al
│       ╎   0000:0296      and   ah, 0xf0
│       ╎   0000:0299      cmp   ah, 0x60                              ; fcn.00000060 ; "3ɬ<\U00000006\xb4\U00000001u\U00000001\xad\xaa\xfeŀ\xfd8u\n2\xed\xfe\xc1\x80\xf9Xu\U00000001\xc3\xfe\xccu\xea\xeb\xe03ۊ\U0000"
│       ╎   0000:029c      mov   ah, 1
│      ┌──< 0000:029e      jne   0x2a6
│      │╎   0000:02a0      and   al, 0xf
│      │╎   0000:02a2      mov   ah, al
│      │╎   0000:02a4      xor   al, al
│     ┌└──> 0000:02a6      stosb byte es:[di], al
│     ╎ ╎   0000:02a7      inc   bl
│     ╎ ╎   0000:02a9      dec   ah
│     │ ╎   ; DATA XREF from fcn.000015dc @ +0x47c
│     └───< 0000:02ab      jne   0x2a6
│       ╎   0000:02ad      cmp   bl, 0x1c
│       └─< 0000:02b0      jne   0x293
└           0000:02b2      ret
```

### Function 0x000002b3
```asm
; CALL XREF from fcn.00000000 @ 0x5b
┌ fcn.000002b3();
│           0000:02b3      xor   bx, bx
│           0000:02b5      mov   bl, byte [0x335b]                     ; [0x335b:1]=255
│           0000:02b9      add   bx, bx
└           0000:02bb      jmp   word [bx + 0x35bb]
```

### Function 0x0000033d
```asm
; CALL XREFS from fcn.000002b3 @ +0x39, +0x3f, +0x50, +0x56
┌ fcn.0000033d(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:033d      push  di
│           0000:033e      push  cx                                    ; arg4
│           0000:033f      mov   cx, 0x1c
│           0000:0342      rep   movsb byte es:[di], byte ptr [si]
│           0000:0344      pop   cx
│           0000:0345      pop   di
└           0000:0346      ret
```

### Function 0x000003cd
```asm
; CALL XREF from fcn.00000797 @ +0x189
┌ fcn.000003cd(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:03cd      add   dx, 0x1000                            ; arg2
│           0000:03d1      mov   ds, dx                                ; arg2
│           0000:03d3      mov   si, 0
│           0000:03d6      mov   ax, 0xb000
│           0000:03d9      mov   es, ax
│           0000:03db      mov   di, 0x53c1
│           0000:03de      mov   cx, 0x10
│       ┌─> 0000:03e1      push  cx
│       ╎   0000:03e2      push  di
│       ╎   0000:03e3      mov   cx, 0x1c
│      ┌──> 0000:03e6      push  cx
│      ╎╎   0000:03e7      mov   ah, byte [si + 0x1c]
│      ╎╎   0000:03ea      lodsb al, byte [si]
│      ╎╎   0000:03eb      xor   dl, dl
│      ╎╎   0000:03ed      mov   cx, 4
│     ┌───> 0000:03f0      add   ah, ah
│     ╎╎╎   0000:03f2      adc   bl, bl
│     ╎╎╎   0000:03f4      add   al, al
│     ╎╎╎   0000:03f6      adc   bl, bl
│     ╎╎╎   0000:03f8      add   ah, ah
│     ╎╎╎   0000:03fa      adc   bl, bl
│     ╎╎╎   0000:03fc      add   al, al
│     ╎╎╎   0000:03fe      adc   bl, bl
│     ╎╎╎   0000:0400      and   bl, 0xf
│     ╎╎╎   0000:0403      xor   bh, bh
│     ╎╎╎   0000:0405      add   dl, dl
│     ╎╎╎   0000:0407      add   dl, dl
│     ╎╎╎   0000:0409      or    dl, byte cs:[bx + 0x36b6]             ; arg3
│     └───< 0000:040e      loop  0x3f0
│      ╎╎   0000:0410      mov   al, dl
│      ╎╎   0000:0412      stosb byte es:[di], al
│      ╎╎   0000:0413      pop   cx
│      └──< 0000:0414      loop  0x3e6
│       ╎   0000:0416      push  ds
│       ╎   0000:0417      push  si
│       ╎   0000:0418      push  es
│       ╎   0000:0419      pop   ds
│       ╎   0000:041a      mov   si, di
│       ╎   0000:041c      sub   si, 0x1c
│       ╎   0000:041f      mov   cx, 0xe
│       ╎   0000:0422      rep   movsw word es:[di], word ptr [si]
│       ╎   0000:0424      pop   si
│       ╎   0000:0425      pop   ds
│       ╎   0000:0426      add   si, 0x1c
│       ╎   0000:0429      pop   di
│       ╎   0000:042a      add   di, 0x2000
│       ╎   0000:042e      cmp   di, 0x6000
│      ┌──< 0000:0432      jb    0x44d
│      │╎   0000:0434      push  ds
│      │╎   0000:0435      push  si
│      │╎   0000:0436      push  cx
│      │╎   0000:0437      push  di
│      │╎   0000:0438      push  es
│      │╎   0000:0439      pop   ds
│      │╎   0000:043a      mov   si, di
│      │╎   0000:043c      sub   si, 0x2000
│      │╎   0000:0440      mov   cx, 0x38                              ; '8'
│      │╎   0000:0443      rep   movsb byte es:[di], byte ptr [si]
│      │╎   0000:0445      pop   di
│      │╎   0000:0446      pop   cx
│      │╎   0000:0447      pop   si
│      │╎   0000:0448      pop   ds
│      │╎   0000:0449      add   di, 0xa05a
│      └──> 0000:044d      pop   cx
│       └─< 0000:044e      loop  0x3e1
│           0000:0450      pop   ds
└           0000:0451      ret
```

### Function 0x000005a1
```asm
; CALL XREFS from fcn.000003cd @ +0x15d, +0x161, +0x1a2, +0x1a6
┌ fcn.000005a1(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:05a1      xor   al, al
│           0000:05a3      mov   cx, 2
│       ┌─> 0000:05a6      add   dh, dh
│       ╎   0000:05a8      adc   bl, bl
│       ╎   0000:05aa      add   dl, dl
│       ╎   0000:05ac      adc   bl, bl
│       ╎   0000:05ae      add   dh, dh
│       ╎   0000:05b0      adc   bl, bl
│       ╎   0000:05b2      add   dl, dl
│       ╎   0000:05b4      adc   bl, bl
│       ╎   0000:05b6      and   bl, 0xf
│       ╎   0000:05b9      xor   bh, bh
│       ╎   0000:05bb      add   al, al
│       ╎   0000:05bd      add   al, al
│       ╎   0000:05bf      add   al, al
│       ╎   0000:05c1      add   al, al
│       ╎   0000:05c3      add   bx, bp                                ; arg3
│       ╎   0000:05c5      or    al, byte cs:[bx]                      ; arg3
│       └─< 0000:05c8      loop  0x5a6
└           0000:05ca      ret
```

### Function 0x00000797
```asm
; CALL XREF from fcn.00000797 @ +0x152
┌ fcn.00000797();
│           0000:0797      stosb byte es:[di], al
│           0000:0798      stosb byte es:[di], al
│           0000:0799      stosw word es:[di], ax
│           0000:079a      out   dx, al
│           0000:079b      mov   dx, 0xaaaa
└           0000:079e      stosw word es:[di], ax
```

### Function 0x000015dc
```asm
; CALL XREF from fcn.000015dc @ +0x4e
┌ fcn.000015dc();
│           0000:15dc      rol   bl, 0
│           0000:15df      add   byte [bp + di], dh
└           0000:15e1      ljmp  [bp + si + 0x6ab]
```

## Cross-References (callers)
```json
  0x00000060:
[{"from":43,"to":96,"type":"CALL"},{"from":52,"to":96,"type":"CALL"},{"from":665,"to":96,"type":"DATA"}]
  0x00000082:
[{"from":55,"to":130,"type":"CALL"},{"from":2898,"to":130,"type":"DATA"},{"from":7838,"to":130,"type":"DATA"}]
  0x000000c0:
[{"from":181,"to":192,"type":"CALL"},{"from":187,"to":192,"type":"CALL"},{"from":7590,"to":192,"type":"DATA"}]
  0x000001fd:
[{"from":480,"to":509,"type":"CALL"},{"from":484,"to":509,"type":"CALL"},{"from":488,"to":509,"type":"CALL"},{"from":492,"to":509,"type":"CALL"}]
  0x00000257:
[{"from":568,"to":599,"type":"CALL"},{"from":572,"to":599,"type":"CALL"}]
  0x00000291:
[{"from":75,"to":657,"type":"CALL"},{"from":86,"to":657,"type":"CALL"}]
  0x000002b3:
[{"from":91,"to":691,"type":"CALL"}]
  0x0000033d:
[{"from":748,"to":829,"type":"CALL"},{"from":754,"to":829,"type":"CALL"},{"from":771,"to":829,"type":"CALL"},{"from":777,"to":829,"type":"CALL"}]
  0x000003cd:
[{"from":2336,"to":973,"type":"CALL"}]
  0x000005a1:
[{"from":1322,"to":1441,"type":"CALL"},{"from":1326,"to":1441,"type":"CALL"},{"from":1391,"to":1441,"type":"CALL"},{"from":1395,"to":1441,"type":"CALL"}]
  0x00000797:
[{"from":2281,"to":1943,"type":"CALL"}]
  0x000015dc:
[{"from":5674,"to":5596,"type":"CALL"}]
```