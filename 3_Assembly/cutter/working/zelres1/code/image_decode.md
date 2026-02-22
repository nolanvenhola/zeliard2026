# IMAGE_DECODE - Analysis

**Source:** `chunk_03.bin`  
**Size:** 8.0 KB  
**Functions:** 22  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    1 3            fcn.00000000
0x00000177   13 166          fcn.00000177
0x00000323    3 20           fcn.00000323
0x000003b9    3 21           fcn.000003b9
0x000005a1    5 33           fcn.000005a1
0x000005c2    5 47           fcn.000005c2
0x000005f1    5 57           fcn.000005f1
0x0000062a    3 31           fcn.0000062a
0x00000722    8 97           fcn.00000722
0x0000099b    9 116          fcn.0000099b
0x00000c9a   13 154          fcn.00000c9a
0x00000db8    3 56           fcn.00000db8
0x00000df0    4 86           fcn.00000df0
0x00000e46    1 7            fcn.00000e46
0x00000f43    5 51           fcn.00000f43
0x00000f76   13 153          fcn.00000f76
0x0000100f    7 133          fcn.0000100f
0x00001094    1 12           fcn.00001094
0x000010de   17 204          fcn.000010de
0x000011e8    9 114          fcn.000011e8
0x00001b8c    3 80           fcn.00001b8c
0x00001c30    1 38           fcn.00001c30
```

## Strings
```
nth      paddr      vaddr len size section type   string                 
-------------------------------------------------------------------------
  0 0x00000004 0x00000004   6    6         ascii  +L20x0
  1 0x00000015 0x00000015   5    5         ascii  3J4e6
  2 0x00000027 0x00000027   5    5         ascii  ;0=I>
  3 0x00000035 0x00000035   4    5         ascii  LPSQ
  4 0x00000130 0x00000130   5    5         ascii  `LV2.
  5 0x00000193 0x00000193   4    4         ascii  QVW.
  6 0x000001a9 0x000001a9   4    4         ascii  `L[.
  7 0x000001b8 0x000001b8   4    4         ascii  `r\t.
  8 0x000001e1 0x000001e1   4    4         ascii  `L[.
  9 0x000001f0 0x000001f0   4    4         ascii  `r\t.
 10 0x00000206 0x00000206   4    4         ascii  _^Y.
 11 0x00000260 0x00000260   5    5         ascii  t2VWQ
 12 0x00000282 0x00000282   4    4         ascii  & %"
 13 0x000002f9 0x000002f9   5    5         ascii  t#VW2
 14 0x00000438 0x00000438   5    5         ascii  `r\fVW
 15 0x00000467 0x00000467   8    9         ibm037 {¡¡uuaB{
 16 0x00000484 0x00000484   4    5         ascii  D\r:D
 17 0x000005a1 0x000005a1   4    4         ascii  VQVQ
 18 0x000005d8 0x000005d8   6    6         ascii  `r\fVWQ
 19 0x0000062a 0x0000062a   4    4         ascii  WVQ2
 20 0x000007a6 0x000007a6   5    6         ibm037 3uaF>
 21 0x000009b0 0x000009b0   4    5         ascii  ]L\nD
 22 0x000009c9 0x000009c9   4    5         ascii  ]L\nD
 23 0x000009e2 0x000009e2   4    5         ascii  ]L\nD
 24 0x000009fb 0x000009fb   4    5         ascii  ]L\nD
 25 0x00000a1b 0x00000a1b   4    5         ibm037 hhhh
 26 0x00000a23 0x00000a23   4    5         ibm037 hhhy
 27 0x00000a4b 0x00000a4b   4    4         ascii  """"
 28 0x00000a53 0x00000a53   4    4         ascii  """"
 29 0x00000a63 0x00000a63   4    5         ibm037 yhhh
 30 0x00000a6b 0x00000a6b   4    5         ibm037 hhhh
 31 0x00000a93 0x00000a93   4    4         ascii  *"""
 32 0x00000a9b 0x00000a9b   4    4         ascii  """"
 33 0x00000b47 0x00000b47   4    5         ascii  \n\t\b\a
 34 0x00000baa 0x00000baa  15   16         ascii  ;\r:\f9\v8\n7\t6\b5\a4
 35 0x00000bcc 0x00000bcc   4    4         ascii  _LSQ
 36 0x00000c7d 0x00000c7d   4    4         ascii  ^[Y.
 37 0x00000cae 0x00000cae   4    4         ascii  ]Lrf
 38 0x00000cb7 0x00000cb7   4    5         ascii  `L.8
 39 0x00000cbc 0x00000cbc   5    5         ascii  ]LsX.
 40 0x00000cdc 0x00000cdc   6    7         ascii  .8>\Lr
 41 0x00000ce8 0x00000ce8   4    5         ascii  aL.8
 42 0x00000e1c 0x00000e1c   4    4         ascii  `r#W
 43 0x00000ef6 0x00000ef6   4    5         ascii  r\n=q
 44 0x00000f27 0x00000f27   4    5         ascii  r\n=q
 45 0x00001205 0x00001205   4    5         ascii  !X=^
 46 0x00001c1f 0x00001c1f   4    4         ascii  #L[.
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000();
└           0000:0000      retf  0x1f
```

### Function 0x00000177
```asm
; CALL XREFS from str.0_I @ +0xb2, +0x117, +0x120, +0x142, +0x14b
┌ fcn.00000177(int16_t arg3, int16_t arg4);
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0177      mov   byte cs:[0x4c5d], 0
│           0000:017d      mov   ax, 0xb000
│           0000:0180      mov   es, ax
│           0000:0182      mov   bp, 8
│           ; CODE XREF from fcn.00000177 @ 0x219
│       ┌─> 0000:0185      mov   al, byte cs:[0x4c5d]
│       ╎   0000:0189      mov   byte cs:[0x4c5c], al
│       ╎   0000:018d      mov   byte cs:[0xff1a], 0
│       ╎   0000:0193      push  cx                                    ; arg4
│       ╎   0000:0194      push  si
│       ╎   0000:0195      push  di
│      ┌──> 0000:0196      mov   bl, byte cs:[0x4c5c]
│      ╎╎   0000:019b      and   bx, 7                                 ; arg3
│      ╎╎   0000:019e      add   bx, bx                                ; arg3
│      ╎╎   0000:01a0      mov   bx, word cs:[bx + 0x32bb]             ; arg3
│      ╎╎   0000:01a5      push  bx                                    ; arg3
│      ╎╎   0000:01a6      call  word cs:[0x4c60]
│      ╎╎   0000:01ab      pop   bx
│      ╎╎   0000:01ac      inc   byte cs:[0x4c5c]
│      ╎╎   0000:01b1      add   di, 0x2000
│      ╎╎   0000:01b5      cmp   di, 0x6000
│     ┌───< 0000:01b9      jb    0x1c4
│     │╎╎   0000:01bb      call  word cs:[0x4c60]
│     │╎╎   0000:01c0      add   di, 0xa05a
│     └───> 0000:01c4      mov   al, ch
│      ╎╎   0000:01c6      xor   ah, ah
│      ╎╎   0000:01c8      add   si, ax
│      ╎╎   0000:01ca      dec   cl
│     ┌───< 0000:01cc      je    0x206
│     │╎╎   0000:01ce      mov   bl, byte cs:[0x4c5c]
│     │╎╎   0000:01d3      and   bx, 7
│     │╎╎   0000:01d6      add   bx, bx
│     │╎╎   0000:01d8      mov   bx, word cs:[bx + 0x32cb]
│     │╎╎   0000:01dd      push  bx
│     │╎╎   0000:01de      call  word cs:[0x4c60]
│     │╎╎   0000:01e3      pop   bx
│     │╎╎   0000:01e4      inc   byte cs:[0x4c5c]
│     │╎╎   0000:01e9      add   di, 0x2000
│     │╎╎   0000:01ed      cmp   di, 0x6000
│    ┌────< 0000:01f1      jb    0x1fc
│    ││╎╎   0000:01f3      call  word cs:[0x4c60]
│    ││╎╎   0000:01f8      add   di, 0xa05a
│    └────> 0000:01fc      mov   al, ch
│     │╎╎   0000:01fe      xor   ah, ah
│     │╎╎   0000:0200      add   si, ax
│     │╎╎   ; DATA XREFS from fcn.0000099b @ +0xe8, +0x109
│     │╎╎   0000:0202      dec   cl
│     │└──< 0000:0204      jne   0x196
│     └───> 0000:0206      pop   di
│       ╎   0000:0207      pop   si
│       ╎   0000:0208      pop   cx
│       ╎   0000:0209      inc   byte cs:[0x4c5d]
│      ┌──> 0000:020e      cmp   byte cs:[0xff1a], 0x14
│      └──< 0000:0214      jb    0x20e
│       ╎   0000:0216      dec   bp
│      ┌──< 0000:0217      je    0x21c
│      │└─< 0000:0219      jmp   0x185
└      └──> 0000:021c      ret
```

### Function 0x00000323
```asm
; CALL XREF from fcn.00000177 @ +0x199
┌ fcn.00000323(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0323      mov   cx, 8
│       ┌─> 0000:0326      add   al, al
│       ╎   0000:0328      adc   bx, bx                                ; arg3
│       ╎   0000:032a      add   bx, bx                                ; arg3
│       └─< 0000:032c      loop  0x326
│           0000:032e      mov   dx, bx                                ; arg3
│           ; DATA XREF from fcn.0000062a @ +0x6a
│           0000:0330      shr   dx, 1
│           0000:0332      or    dx, bx                                ; arg3
│           0000:0334      xchg  dl, dh
└           0000:0336      ret
```

### Function 0x000003b9
```asm
; CALL XREFS from fcn.00000323 @ +0x79, +0x86
┌ fcn.000003b9(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:03b9      push  di
│           0000:03ba      push  si
│           0000:03bb      push  bp
│           0000:03bc      mov   cx, bx                                ; arg3
│           0000:03be      shr   cx, 1
│       ┌─> 0000:03c0      lodsw ax, word [si]
│       ╎   0000:03c1      or    ax, word ds:[bp]                      ; arg1
│       ╎   0000:03c5      stosw word es:[di], ax
│       ╎   0000:03c6      inc   bp
│       ╎   0000:03c7      inc   bp
│       └─< 0000:03c8      loop  0x3c0
│           0000:03ca      pop   bp
│           0000:03cb      pop   si
│           0000:03cc      pop   di
│           ; DATA XREF from fcn.000011e8 @ 0x11ef
└           0000:03cd      ret
```

### Function 0x000005a1
```asm
; CALL XREF from fcn.000003b9 @ +0x13f
┌ fcn.000005a1(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:05a1      push  si
│           0000:05a2      push  cx                                    ; arg4
│       ┌─> 0000:05a3      push  si
│       ╎   0000:05a4      push  cx                                    ; arg4
│       ╎   0000:05a5      mov   cl, ch
│       ╎   0000:05a7      xor   ch, ch
│       ╎   0000:05a9      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:05ab      pop   cx
│       ╎   0000:05ac      pop   si
│       ╎   0000:05ad      add   si, 0x2000
│       ╎   0000:05b1      cmp   si, 0x6000
│      ┌──< 0000:05b5      jb    0x5bb
│      │╎   0000:05b7      add   si, 0xa05a
│      └──> 0000:05bb      dec   cl
│       └─< 0000:05bd      jne   0x5a3
│           0000:05bf      pop   cx
│           0000:05c0      pop   si
└           0000:05c1      ret
```

### Function 0x000005c2
```asm
; CALL XREF from fcn.000003b9 @ +0x1c9
┌ fcn.000005c2(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:05c2      push  di
│           0000:05c3      push  cx                                    ; arg4
│       ┌─> 0000:05c4      push  cx                                    ; arg4
│       ╎   0000:05c5      mov   cl, ch
│       ╎   0000:05c7      xor   ch, ch
│       ╎   0000:05c9      push  si
│       ╎   0000:05ca      push  di
│       ╎   0000:05cb      push  cx                                    ; arg4
│       ╎   0000:05cc      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:05ce      pop   cx
│       ╎   0000:05cf      pop   di
│       ╎   0000:05d0      pop   si
│       ╎   0000:05d1      add   di, 0x2000
│       ╎   0000:05d5      cmp   di, 0x6000
│      ┌──< 0000:05d9      jb    0x5e7
│      │╎   0000:05db      push  si
│      │╎   0000:05dc      push  di
│      │╎   0000:05dd      push  cx
│      │╎   0000:05de      rep   movsb byte es:[di], byte ptr [si]
│      │╎   0000:05e0      pop   cx
│      │╎   0000:05e1      pop   di
│      │╎   0000:05e2      pop   si
│      │╎   0000:05e3      add   di, 0xa05a
│      └──> 0000:05e7      add   si, cx
│       ╎   0000:05e9      pop   cx
│       ╎   0000:05ea      dec   cl
│       └─< 0000:05ec      jne   0x5c4
│           0000:05ee      pop   cx
│           0000:05ef      pop   di
└           0000:05f0      ret
```

### Function 0x000005f1
```asm
; CALL XREF from fcn.000003b9 @ +0x190
┌ fcn.000005f1(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:05f1      push  di
│           0000:05f2      push  cx                                    ; arg4
│           0000:05f3      mov   al, ch
│           0000:05f5      mul   cl
│           0000:05f7      mov   bx, ax                                ; arg1
│           0000:05f9      mov   word cs:[0x4c5a], 0
│           0000:0600      mov   word cs:[0x4c58], 0
│       ┌─> 0000:0607      push  cx                                    ; arg4
│       ╎   0000:0608      mov   cl, ch
│       ╎   0000:060a      xor   ch, ch
│       ╎   0000:060c      call  fcn.0000062a                          ; fcn.0000062a
│       ╎   0000:060f      add   di, 0x2000
│       ╎   0000:0613      cmp   di, 0x6000
│      ┌──< 0000:0617      jb    0x620
│      │╎   0000:0619      call  fcn.0000062a                          ; fcn.0000062a
│      │╎   0000:061c      add   di, 0xa05a
│      │╎   ; DATA XREF from fcn.0000062a @ +0x1f
│      └──> 0000:0620      add   si, cx
│       ╎   0000:0622      pop   cx
│       ╎   0000:0623      dec   cl
│       └─< 0000:0625      jne   0x607
│           0000:0627      pop   cx
│           0000:0628      pop   di
└           0000:0629      ret
```

### Function 0x0000062a
```asm
; CALL XREFS from fcn.000005f1 @ 0x60c, 0x619
┌ fcn.0000062a(int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:062a      push  di
│           0000:062b      push  si
│           0000:062c      push  cx                                    ; arg4
│       ┌─> 0000:062d      xor   ah, ah
│       ╎   0000:062f      mov   al, byte [bx + si]                    ; arg3
│       ╎   0000:0631      mov   word cs:[0x4c56], ax                  ; arg1
│       ╎   0000:0635      lodsb al, byte [si]
│       ╎   0000:0636      mov   word cs:[0x4c54], ax                  ; arg1
│       ╎   0000:063a      push  bx                                    ; arg3
│       ╎   0000:063b      call  fcn.00001b8c                          ; fcn.00001b8c
│       ╎   0000:063e      pop   bx
│       ╎   0000:063f      or    byte es:[di], al
│       ╎   0000:0642      inc   di
│       └─< 0000:0643      loop  0x62d
│           0000:0645      pop   cx
│           0000:0646      pop   si
│           0000:0647      pop   di
└           0000:0648      ret
```

### Function 0x00000722
```asm
; CALL XREF from fcn.0000062a @ +0xe5
┌ fcn.00000722(int16_t arg1, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0722      mov   ds, word cs:[0xff2c]
│           0000:0727      mov   dx, cs
│           0000:0729      add   dx, 0x2000
│           0000:072d      mov   es, dx
│           0000:072f      xor   ah, ah
│           ; CODE XREF from fcn.00000722 @ 0x737
│       ┌─> 0000:0731      sub   al, 0x28
│      ┌──< 0000:0733      jb    0x739
│      │╎   0000:0735      inc   ah
│      │└─< 0000:0737      jmp   0x731
│      └──> 0000:0739      add   al, 0x28
│           0000:073b      mov   cl, al
│           0000:073d      mov   al, ah
│           0000:073f      xor   ah, ah
│           0000:0741      mov   dx, 0x140
│           0000:0744      mul   dx
│           0000:0746      xor   ch, ch
│           0000:0748      add   ax, cx                                ; arg4
│           0000:074a      add   ax, 0x4000                            ; arg1
│           0000:074d      push  ax                                    ; arg1
│           0000:074e      mov   dx, bx                                ; arg3
│           0000:0750      xor   dh, dh
│           0000:0752      mov   ax, 0x110
│           0000:0755      mul   dx
│           0000:0757      mov   dl, bh
│           0000:0759      xor   dh, dh
│           0000:075b      add   ax, dx
│           0000:075d      add   ax, 0
│           0000:0760      mov   di, ax
│           0000:0762      pop   si
│           0000:0763      mov   cx, 3
│       ┌─> 0000:0766      push  cx
│       ╎   0000:0767      push  di
│       ╎   0000:0768      push  si
│       ╎   0000:0769      mov   cx, 8
│      ┌──> 0000:076c      movsb byte es:[di], byte ptr [si]
│      ╎╎   0000:076d      add   di, 0x21
│      ╎╎   0000:0770      add   si, 0x27                              ; str.0_I ; ";0=I>\x9f>\x9c@\xa6AVB\U00000013LPSQ\U0000001e\x8a\xc5\xf6\xe1\x8b\xe8\U00000006\U0000001f\x8b\xf7\x8c\xc8\U00000005"
│      └──< 0000:0773      loop  0x76c
│       ╎   0000:0775      pop   si
│       ╎   0000:0776      pop   di
│       ╎   0000:0777      add   di, 0x1a90
│       ╎   0000:077b      add   si, 0x640
│       ╎   0000:077f      pop   cx
│       └─< 0000:0780      loop  0x766
└           0000:0782      ret
```

### Function 0x0000099b
```asm
; XREFS: CALL 0x0000089a  CALL 0x000008bc  CALL 0x000008d1  
            ; XREFS: CALL 0x000008f3  CALL 0x0000091d  CALL 0x00000948  
            ; XREFS: CALL 0x0000095d  CALL 0x00000988  
┌ fcn.0000099b(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:099b      push  si
│           0000:099c      push  di
│           0000:099d      dec   al
│           0000:099f      xor   ah, ah
│           0000:09a1      add   ax, ax                                ; arg1
│           0000:09a3      add   ax, ax                                ; arg1
│           0000:09a5      add   ax, ax                                ; arg1
│           0000:09a7      add   ax, 0x3a0b                            ; arg1
│           0000:09aa      mov   si, ax                                ; arg1
│           0000:09ac      lodsb al, byte [si]
│           0000:09ad      and   al, byte cs:[0x4c5d]
│           0000:09b2      or    al, byte [si + 3]
│           0000:09b5      stosb byte es:[di], al
│           0000:09b6      add   di, 0x1fff
│           0000:09ba      cmp   di, 0x6000
│       ┌─< 0000:09be      jb    0x9c5
│       │   0000:09c0      stosb byte es:[di], al
│       │   0000:09c1      add   di, 0xa059
│       └─> 0000:09c5      lodsb al, byte [si]
│           0000:09c6      and   al, byte cs:[0x4c5d]
│           0000:09cb      or    al, byte [si + 3]
│           0000:09ce      stosb byte es:[di], al
│           0000:09cf      add   di, 0x1fff
│           0000:09d3      cmp   di, 0x6000
│       ┌─< 0000:09d7      jb    0x9de
│       │   0000:09d9      stosb byte es:[di], al
│       │   0000:09da      add   di, 0xa059
│       └─> 0000:09de      lodsb al, byte [si]
│           0000:09df      and   al, byte cs:[0x4c5d]
│           0000:09e4      or    al, byte [si + 3]
│           0000:09e7      stosb byte es:[di], al
│           0000:09e8      add   di, 0x1fff
│           0000:09ec      cmp   di, 0x6000
│       ┌─< 0000:09f0      jb    0x9f7
│       │   0000:09f2      stosb byte es:[di], al
│       │   0000:09f3      add   di, 0xa059
│       └─> 0000:09f7      lodsb al, byte [si]
│           0000:09f8      and   al, byte cs:[0x4c5d]
│           0000:09fd      or    al, byte [si + 3]
│           0000:0a00      stosb byte es:[di], al
│           0000:0a01      add   di, 0x1fff
│           0000:0a05      cmp   di, 0x6000
│       ┌─< 0000:0a09      jb    0xa0c
│       │   0000:0a0b      stosb byte es:[di], al
│       └─> 0000:0a0c      pop   di
│           0000:0a0d      pop   si
└           0000:0a0e      ret
```

### Function 0x00000c9a
```asm
; CALL XREF from fcn.0000099b @ +0x2df
┌ fcn.00000c9a(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0c9a      push  bx                                    ; arg3
│           0000:0c9b      mov   bl, byte cs:[0x4c5d]
│           0000:0ca0      add   bl, 0x10
│           0000:0ca3      mov   bh, 4
│           0000:0ca5      call  fcn.00001c30                          ; fcn.00001c30
│           0000:0ca8      mov   di, ax
│           0000:0caa      pop   bx
│           0000:0cab      cmp   byte cs:[0x4c5d], bl
│       ┌─< 0000:0cb0      jb    0xd18
│       │   0000:0cb2      mov   al, bl
│       │   0000:0cb4      add   al, byte cs:[0x4c60]
│       │   0000:0cb9      cmp   byte cs:[0x4c5d], al
│      ┌──< 0000:0cbe      jae   0xd18
│      ││   ; DATA XREF from fcn.0000062a @ +0x43
│      ││   0000:0cc0      mov   al, byte cs:[0x4c5d]
│      ││   0000:0cc4      sub   al, bl
│      ││   0000:0cc6      mul   byte cs:[0x4c61]
│      ││   0000:0ccb      add   si, ax
│      ││   0000:0ccd      push  di
│      ││   0000:0cce      mov   byte cs:[0x4c5c], 0
│      ││   0000:0cd4      mov   cx, 0x48                              ; 'H'
│     ┌───> 0000:0cd7      push  cx
│     ╎││   0000:0cd8      mov   byte es:[di], 0
│     ╎││   0000:0cdc      cmp   byte cs:[0x4c5c], bh
│    ┌────< 0000:0ce1      jb    0xcf3
│    │╎││   0000:0ce3      mov   al, bh
│    │╎││   0000:0ce5      add   al, byte cs:[0x4c61]
│    │╎││   0000:0cea      cmp   byte cs:[0x4c5c], al
│   ┌─────< 0000:0cef      jae   0xcf3
│   ││╎││   0000:0cf1      movsb byte es:[di], byte ptr [si]
│   ││╎││   0000:0cf2      dec   di
│   └└────> 0000:0cf3      inc   di
│     ╎││   0000:0cf4      inc   byte cs:[0x4c5c]
│     ╎││   0000:0cf9      pop   cx
│     └───< 0000:0cfa      loop  0xcd7
│      ││   0000:0cfc      pop   di
│      ││   0000:0cfd      add   di, 0x2000
│      ││   0000:0d01      cmp   di, 0x6000
│     ┌───< 0000:0d05      jae   0xd08
│     │││   0000:0d07      ret
│     └───> 0000:0d08      push  ds
│      ││   0000:0d09      push  es
│      ││   0000:0d0a      pop   ds
│      ││   0000:0d0b      mov   si, di
│      ││   0000:0d0d      sub   si, 0x2000
│      ││   0000:0d11      mov   cx, 0x48                              ; 'H'
│      ││   0000:0d14      rep   movsb byte es:[di], byte ptr [si]
│      ││   0000:0d16      pop   ds
│      ││   0000:0d17      ret
│      └└─> 0000:0d18      push  di
│           0000:0d19      mov   cx, 0x24                              ; '$'
│           0000:0d1c      xor   ax, ax
│           0000:0d1e      rep   stosw word es:[di], ax
│           0000:0d20      pop   di
│           0000:0d21      add   di, 0x2000
│           0000:0d25      cmp   di, 0x6000
│       ┌─< 0000:0d29      jae   0xd2c
│       │   0000:0d2b      ret
│       └─> 0000:0d2c      mov   cx, 0x24                              ; '$'
│           0000:0d2f      xor   ax, ax
│           0000:0d31      rep   stosw word es:[di], ax
└           0000:0d33      ret
```

### Function 0x00000db8
```asm
; CALL XREF from fcn.00000c9a @ +0xb4
┌ fcn.00000db8();
│           0000:0db8      push  di
│           0000:0db9      call  fcn.00000e46                          ; fcn.00000e46
│           0000:0dbc      or    byte es:[di], 0x3f                    ; [0x3f:1]=232
│           0000:0dc0      inc   di
│           0000:0dc1      mov   cx, bx
│           0000:0dc3      sub   cx, 2
│           0000:0dc6      mov   al, 0xff
│           0000:0dc8      rep   stosb byte es:[di], al
│           0000:0dca      or    byte es:[di], 0xfc                    ; [0xfc:1]=46
│           0000:0dce      pop   di
│           0000:0dcf      add   di, 0x2000
│           0000:0dd3      cmp   di, 0x6000
│       ┌─< 0000:0dd7      jae   0xdda
│       │   0000:0dd9      ret
│       └─> 0000:0dda      call  fcn.00000e46                          ; fcn.00000e46
│           0000:0ddd      or    byte es:[di], 0x3f                    ; [0x3f:1]=232
│           0000:0de1      inc   di
│           0000:0de2      mov   cx, bx
│           0000:0de4      sub   cx, 2
│           0000:0de7      mov   al, 0xff
│           0000:0de9      rep   stosb byte es:[di], al
│           0000:0deb      or    byte es:[di], 0xfc                    ; [0xfc:1]=46
└           0000:0def      ret
```

### Function 0x00000df0
```asm
; CALL XREFS from fcn.00000c9a @ +0xce, +0x11b
┌ fcn.00000df0(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│       ┌─> 0000:0df0      push  cx                                    ; arg4
│       ╎   0000:0df1      push  di
│       ╎   0000:0df2      call  fcn.00000e46                          ; fcn.00000e46
│       ╎   0000:0df5      or    byte es:[di], 0x30                    ; [0x30:1]=166
│       ╎   0000:0df9      and   byte es:[di], 0xf0                    ; [0xf0:1]=142
│       ╎   0000:0dfd      inc   di
│       ╎   0000:0dfe      mov   cx, bx
│       ╎   ; DATA XREF from fcn.0000099b @ +0x14d
│       ╎   0000:0e00      sub   cx, 2
│       ╎   0000:0e03      xor   al, al
│       ╎   0000:0e05      rep   stosb byte es:[di], al
│       ╎   0000:0e07      or    byte es:[di], 0xc                     ; [0xc:1]=122
│       ╎   0000:0e0b      and   byte es:[di], 0xf                     ; [0xf:1]=75
│       ╎   0000:0e0f      pop   di
│       ╎   0000:0e10      inc   byte cs:[0x4c5d]
│       ╎   0000:0e15      add   di, 0x2000
│       ╎   0000:0e19      cmp   di, 0x6000
│      ┌──< 0000:0e1d      jb    0xe42
│      │╎   0000:0e1f      push  di
│      │╎   0000:0e20      call  fcn.00000e46                          ; fcn.00000e46
│      │╎   0000:0e23      or    byte es:[di], 0x30                    ; [0x30:1]=166
│      │╎   0000:0e27      and   byte es:[di], 0xf0                    ; [0xf0:1]=142
│      │╎   0000:0e2b      inc   di
│      │╎   0000:0e2c      mov   cx, bx
│      │╎   0000:0e2e      sub   cx, 2
│      │╎   0000:0e31      xor   al, al
│      │╎   0000:0e33      rep   stosb byte es:[di], al
│      │╎   0000:0e35      or    byte es:[di], 0xc                     ; [0xc:1]=122
│      │╎   0000:0e39      and   byte es:[di], 0xf                     ; [0xf:1]=75
│      │╎   0000:0e3d      pop   di
│      │╎   0000:0e3e      add   di, 0xa05a
│      └──> 0000:0e42      pop   cx
│       └─< 0000:0e43      loop  fcn.00000df0
└           0000:0e45      ret
```

### Function 0x00000e46
```asm
; XREFS: CALL 0x00000d6d  CALL 0x00000d91  CALL 0x00000db9  
            ; XREFS: CALL 0x00000dda  CALL 0x00000df2  CALL 0x00000e20  
┌ fcn.00000e46();
│           0000:0e46      mov   word es:[di - 1], 0
└           0000:0e4c      ret
```

### Function 0x00000f43
```asm
; CALL XREFS from fcn.00000e46 @ +0xbc, +0xed
┌ fcn.00000f43(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0f43      mov   cx, 0x28                              ; '('
│           0000:0f46      mov   word cs:[0x4c5a], 0
│       ┌─> 0000:0f4d      mov   ax, word [si + 0x5500]
│       ╎   0000:0f51      mov   word cs:[0x4c58], ax
│       ╎   0000:0f55      mov   ax, word [si + 0x2a80]
│       ╎   0000:0f59      mov   word cs:[0x4c56], ax
│       ╎   0000:0f5d      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0f5e      mov   word cs:[0x4c54], ax
│       ╎   0000:0f62      call  fcn.00001b8c                          ; fcn.00001b8c
│       ╎   0000:0f65      stosw word es:[di], ax
│       ╎   0000:0f66      push  di
│       ╎   0000:0f67      add   di, 0x1ffe
│       ╎   0000:0f6b      cmp   di, 0x6000
│      ┌──< 0000:0f6f      jb    0xf72
│      │╎   0000:0f71      stosw word es:[di], ax
│      └──> 0000:0f72      pop   di
│       └─< 0000:0f73      loop  0xf4d
└           0000:0f75      ret
```

### Function 0x00000f76
```asm
; CALL XREFS from fcn.00000e46 @ +0xb7, +0xe8
┌ fcn.00000f76(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0f76      mov   cx, 0xb
│           0000:0f79      mov   word cs:[0x4c5a], 0
│       ┌─> 0000:0f80      xor   ah, ah
│       ╎   0000:0f82      mov   al, byte [si + 0x5500]
│       ╎   0000:0f86      mov   word cs:[0x4c58], ax                  ; arg1
│       ╎   0000:0f8a      mov   al, byte [si + 0x2a80]
│       ╎   0000:0f8e      mov   word cs:[0x4c56], ax                  ; arg1
│       ╎   0000:0f92      lodsb al, byte [si]
│       ╎   0000:0f93      mov   word cs:[0x4c54], ax                  ; arg1
│       ╎   0000:0f97      call  fcn.00001b8c                          ; fcn.00001b8c
│       ╎   0000:0f9a      stosb byte es:[di], al
│       ╎   0000:0f9b      push  di
│       ╎   0000:0f9c      add   di, 0x1fff
│       ╎   0000:0fa0      cmp   di, 0x6000
│      ┌──< 0000:0fa4      jb    0xfa7
│      │╎   0000:0fa6      stosb byte es:[di], al
│      └──> 0000:0fa7      pop   di
│       └─< 0000:0fa8      loop  0xf80
│           0000:0faa      add   si, 0x18
│           0000:0fad      add   di, 0x18
│           0000:0fb0      mov   cx, 5
│       ┌─> 0000:0fb3      mov   ax, word [si + 0x5500]
│       ╎   0000:0fb7      mov   word cs:[0x4c58], ax
│       ╎   0000:0fbb      mov   ax, word [si + 0x2a80]
│       ╎   0000:0fbf      mov   word cs:[0x4c56], ax
│       ╎   0000:0fc3      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0fc4      mov   word cs:[0x4c54], ax
│       ╎   0000:0fc8      call  fcn.00001b8c                          ; fcn.00001b8c
│       ╎   0000:0fcb      stosw word es:[di], ax
│       ╎   0000:0fcc      push  di
│       ╎   0000:0fcd      add   di, 0x1ffe
│       ╎   0000:0fd1      cmp   di, 0x6000
│      ┌──< 0000:0fd5      jb    0xfd8
│      │╎   0000:0fd7      stosw word es:[di], ax
│      └──> 0000:0fd8      pop   di
│       └─< 0000:0fd9      loop  0xfb3
│           0000:0fdb      add   si, 0x18
│           0000:0fde      add   di, 0x18
│           0000:0fe1      mov   cx, 0xb
│       ┌─> 0000:0fe4      xor   ah, ah
│       ╎   0000:0fe6      mov   al, byte [si + 0x5500]
│       ╎   0000:0fea      mov   word cs:[0x4c58], ax
│       ╎   0000:0fee      mov   al, byte [si + 0x2a80]
│       ╎   0000:0ff2      mov   word cs:[0x4c56], ax
│       ╎   0000:0ff6      lodsb al, byte [si]
│       ╎   0000:0ff7      mov   word cs:[0x4c54], ax
│       ╎   0000:0ffb      call  fcn.00001b8c                          ; fcn.00001b8c
│       ╎   0000:0ffe      stosb byte es:[di], al
│       ╎   0000:0fff      push  di
│       ╎   0000:1000      add   di, 0x1fff
│       ╎   0000:1004      cmp   di, 0x6000
│      ┌──< 0000:1008      jb    0x100b
│      │╎   0000:100a      stosb byte es:[di], al
│      └──> 0000:100b      pop   di
│       └─< 0000:100c      loop  0xfe4
└           0000:100e      ret
```

### Function 0x0000100f
```asm
; CALL XREFS from fcn.00000e46 @ +0x6d, +0x77
┌ fcn.0000100f();
│           0000:100f      push  di
│           0000:1010      mov   ax, 0xfc3f
│           0000:1013      call  fcn.00001094                          ; fcn.00001094
│           0000:1016      add   di, 0x36
│           0000:1019      mov   cx, 0x5b                              ; '['
│       ┌─> 0000:101c      mov   byte es:[di], 0x30                    ; '0'
│       ╎                                                              ; [0x30:1]=166
│       ╎   0000:1020      mov   byte es:[di + 0x19], 0xc              ; [0xc:1]=122
│       ╎   0000:1025      add   di, 0x50
│       │   ; DATA XREFS from fcn.00000e46 @ +0xa, +0x10, +0x23, +0x39, +0x45
│       └─< 0000:1028      loop  0x101c
│           0000:102a      mov   ax, 0xfc3f
│           0000:102d      call  fcn.00001094                          ; fcn.00001094
│           0000:1030      pop   di
│           0000:1031      add   di, 0x2a80
│           0000:1035      push  di
│           0000:1036      mov   ax, 0xfd7f
│           0000:1039      call  fcn.00001094                          ; fcn.00001094
│           0000:103c      add   di, 0x36
│           0000:103f      mov   cx, 0x2d                              ; '-'
│       ┌─> 0000:1042      mov   byte es:[di], 0xb0                    ; [0xb0:1]=76
│       ╎   0000:1046      mov   byte es:[di + 0x19], 0xe              ; [0xe:1]=216
│       ╎   0000:104b      add   di, 0x50
│       ╎   0000:104e      mov   byte es:[di], 0x70                    ; 'p'
│       ╎                                                              ; [0x70:1]=226
│       ╎   0000:1052      mov   byte es:[di + 0x19], 0xd              ; [0xd:1]=66
│       ╎   0000:1057      add   di, 0x50
│       └─< 0000:105a      loop  0x1042
│           0000:105c      mov   byte es:[di], 0xb0                    ; [0xb0:1]=76
│           0000:1060      mov   byte es:[di + 0x19], 0xe              ; [0xe:1]=216
│           0000:1065      add   di, 0x50
│           0000:1068      mov   ax, 0xfd7f
│           0000:106b      call  fcn.00001094                          ; fcn.00001094
│           0000:106e      pop   di
│           0000:106f      add   di, 0x2a80
│           0000:1073      mov   ax, 0xfc3f
│           0000:1076      call  fcn.00001094                          ; fcn.00001094
│           0000:1079      add   di, 0x36
│           0000:107c      mov   cx, 0x5b                              ; '['
│       ┌─> 0000:107f      mov   byte es:[di], 0x30                    ; '0'
│       ╎                                                              ; [0x30:1]=166
│       ╎   0000:1083      mov   byte es:[di + 0x19], 0xc              ; [0xc:1]=122
│       ╎   0000:1088      add   di, 0x50
│       └─< 0000:108b      loop  0x107f
│           0000:108d      mov   ax, 0xfc3f
│           0000:1090      call  fcn.00001094                          ; fcn.00001094
└           0000:1093      ret
```

### Function 0x00001094
```asm
; XREFS: CALL 0x00001013  CALL 0x0000102d  CALL 0x00001039  
            ; XREFS: CALL 0x0000106b  CALL 0x00001076  CALL 0x00001090  
┌ fcn.00001094();
│           0000:1094      stosb byte es:[di], al
│           0000:1095      mov   al, 0xff
│           0000:1097      mov   cx, 0x18
│           0000:109a      rep   stosb byte es:[di], al
│           0000:109c      mov   al, ah
│           0000:109e      stosb byte es:[di], al
└           0000:109f      ret
```

### Function 0x000010de
```asm
; CALL XREFS from fcn.00001094 @ +0x32, +0x3a
┌ fcn.000010de(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:10de      push  ax                                    ; arg1
│           0000:10df      mov   bl, al
│           0000:10e1      mov   al, 0x2f                              ; '/'
│           0000:10e3      mul   bl
│           0000:10e5      add   ax, word cs:[0x4c62]                  ; int16_t arg3
│           0000:10ea      mov   si, ax                                ; arg1
│           0000:10ec      xor   bh, bh
│           0000:10ee      call  fcn.00001c30                          ; fcn.00001c30
│           0000:10f1      mov   di, ax
│           0000:10f3      pop   ax
│           0000:10f4      cmp   ax, 0x14
│       ┌─< 0000:10f7      jae   0x10fe
│       │   0000:10f9      mov   cx, 0x2f                              ; '/'
│      ┌──< 0000:10fc      jmp   0x110e
│      │└─> 0000:10fe      mov   cx, 0x23                              ; '#'
│      │    0000:1101      cmp   ax, 0x17
│      │┌─< 0000:1104      jb    0x110e
│      ││   0000:1106      cmp   ax, 0x1c
│     ┌───< 0000:1109      jb    0x1140
│     │││   0000:110b      mov   cx, 0x21                              ; '!'
│     │││   ; CODE XREF from fcn.000010de @ 0x10fc
│     │└└─> 0000:110e      mov   word cs:[0x4c5a], 0
│     │ ┌─> 0000:1115      xor   ah, ah
│     │ ╎   0000:1117      mov   al, byte [si + 0x29dc]
│     │ ╎   0000:111b      mov   word cs:[0x4c58], ax
│     │ ╎   0000:111f      mov   al, byte [si + 0x14ee]
│     │ ╎   0000:1123      mov   word cs:[0x4c56], ax
│     │ ╎   0000:1127      lodsb al, byte [si]
│     │ ╎   0000:1128      mov   word cs:[0x4c54], ax
│     │ ╎   0000:112c      call  fcn.00001b8c                          ; fcn.00001b8c
│     │ ╎   0000:112f      stosb byte es:[di], al
│     │ ╎   0000:1130      push  di
│     │ ╎   0000:1131      add   di, 0x1fff
│     │ ╎   0000:1135      cmp   di, 0x6000
│     │┌──< 0000:1139      jb    0x113c
│     ││╎   0000:113b      stosb byte es:[di], al
│     │└──> 0000:113c      pop   di
│     │ └─< 0000:113d      loop  0x1115
│     │     0000:113f      ret
│     └───> 0000:1140      mov   cx, 0x21                              ; '!'
│           0000:1143      mov   word cs:[0x4c5a], 0
│       ┌─> 0000:114a      xor   ah, ah
│       ╎   0000:114c      mov   al, byte [si + 0x29dc]
│       ╎   0000:1150      mov   word cs:[0x4c58], ax
│       ╎   0000:1154      mov   al, byte [si + 0x14ee]
│       ╎   0000:1158      mov   word cs:[0x4c56], ax
│       ╎   0000:115c      lodsb al, byte [si]
│       ╎   0000:115d      mov   word cs:[0x4c54], ax
│       ╎   0000:1161      call  fcn.00001b8c                          ; fcn.00001b8c
│       ╎   0000:1164      stosb byte es:[di], al
│       ╎   0000:1165      push  di
│       ╎   0000:1166      add   di, 0x1fff
│       ╎   0000:116a      cmp   di, 0x6000
│      ┌──< 0000:116e      jb    0x1171
│      │╎   0000:1170      stosb byte es:[di], al
│      └──> 0000:1171      pop   di
│       └─< 0000:1172      loop  0x114a
│           0000:1174      xor   ah, ah
│           0000:1176      mov   al, byte [si + 0x29dc]
│           0000:117a      mov   word cs:[0x4c58], ax
│           0000:117e      mov   al, byte [si + 0x14ee]
│           0000:1182      mov   word cs:[0x4c56], ax
│           0000:1186      lodsb al, byte [si]
│           0000:1187      mov   word cs:[0x4c54], ax
│           0000:118b      call  fcn.00001b8c                          ; fcn.00001b8c
│           0000:118e      and   al, 0xfc
│           0000:1190      and   byte es:[di], 3
│           0000:1194      or    byte es:[di], al
│           0000:1197      add   di, 0x1fff
│           0000:119b      cmp   di, 0x6000
│       ┌─< 0000:119f      jae   0x11a2
│       │   0000:11a1      ret
│       └─> 0000:11a2      and   byte es:[di], 3
│           0000:11a6      or    byte es:[di], al
└           0000:11a9      ret
```

### Function 0x000011e8
```asm
; CALL XREFS from fcn.000010de @ +0xf2, +0xfa
┌ fcn.000011e8(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:11e8      push  ax                                    ; arg1
│           0000:11e9      mov   bl, al
│           0000:11eb      mov   al, 0x2f                              ; '/'
│           0000:11ed      mul   bl
│           0000:11ef      add   ax, 0x3cd                             ; arg1
│           0000:11f2      add   ax, word cs:[0x4c62]                  ; int16_t arg3
│           0000:11f7      mov   si, ax                                ; arg1
│           0000:11f9      add   bl, 0x14
│           0000:11fc      xor   bh, bh
│           0000:11fe      call  fcn.00001c30                          ; fcn.00001c30
│           0000:1201      mov   di, ax
│           0000:1203      add   di, 0x21
│           0000:1206      pop   ax
│           0000:1207      cmp   ax, 0x5e
│           0000:120a      mov   cx, 0x2f                              ; '/'
│       ┌─< 0000:120d      jae   0x1244
│       │   0000:120f      mov   cx, 7
│       │   0000:1212      mov   word cs:[0x4c5a], 0
│      ┌──> 0000:1219      mov   ax, word [si + 0x29dc]
│      ╎│   0000:121d      mov   word cs:[0x4c58], ax
│      ╎│   0000:1221      mov   ax, word [si + 0x14ee]
│      ╎│   0000:1225      mov   word cs:[0x4c56], ax
│      ╎│   0000:1229      lodsw ax, word [si]                         ; int16_t arg1
│      ╎│   0000:122a      mov   word cs:[0x4c54], ax
│      ╎│   0000:122e      call  fcn.00001b8c                          ; fcn.00001b8c
│      ╎│   0000:1231      stosw word es:[di], ax
│      ╎│   0000:1232      push  di
│      ╎│   0000:1233      add   di, 0x1ffe
│      ╎│   0000:1237      cmp   di, 0x6000
│     ┌───< 0000:123b      jb    0x123e
│     │╎│   0000:123d      stosw word es:[di], ax
│     └───> 0000:123e      pop   di
│      └──< 0000:123f      loop  0x1219
│       │   0000:1241      mov   cx, 0x21                              ; '!'
│       └─> 0000:1244      xor   al, al
│           0000:1246      push  cx
│           0000:1247      push  di
│           0000:1248      rep   stosb byte es:[di], al
│           0000:124a      pop   di
│           0000:124b      pop   cx
│           0000:124c      add   di, 0x2000
│           0000:1250      cmp   di, 0x6000
│       ┌─< 0000:1254      jae   0x1257
│       │   0000:1256      ret
│       └─> 0000:1257      rep   stosb byte es:[di], al
└           0000:1259      ret
```

### Function 0x00001b8c
```asm
; XREFS: CALL 0x0000006c  CALL 0x000000b6  CALL 0x00000113  
            ; XREFS: CALL 0x00000408  CALL 0x0000063b  CALL 0x000006a4  
            ; XREFS: CALL 0x000006f0  CALL 0x000007f1  CALL 0x0000081b  
            ; XREFS: CALL 0x00000846  CALL 0x00000875  CALL 0x00000c33  
            ; XREFS: CALL 0x00000f62  CALL 0x00000f97  CALL 0x00000fc8  
            ; XREFS: CALL 0x00000ffb  CALL 0x0000112c  CALL 0x00001161  
            ; XREFS: CALL 0x0000118b  CALL 0x0000122e  
┌ fcn.00001b8c(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:1b8c      push  cx                                    ; arg4
│           0000:1b8d      push  si
│           0000:1b8e      mov   si, word cs:[0x4c52]
│           0000:1b93      mov   cx, 8
│       ┌─> 0000:1b96      xor   bx, bx
│       ╎   0000:1b98      rol   word cs:[0x4c5a], 1
│       ╎   0000:1b9d      adc   bx, bx
│       ╎   0000:1b9f      rol   word cs:[0x4c58], 1
│       ╎   0000:1ba4      adc   bx, bx
│       ╎   0000:1ba6      rol   word cs:[0x4c56], 1
│       ╎   0000:1bab      adc   bx, bx
│       ╎   0000:1bad      rol   word cs:[0x4c54], 1
│       ╎   0000:1bb2      adc   bx, bx
│       ╎   0000:1bb4      rol   word cs:[0x4c5a], 1
│       ╎   0000:1bb9      adc   bx, bx
│       ╎   0000:1bbb      rol   word cs:[0x4c58], 1
│       ╎   0000:1bc0      adc   bx, bx
│       ╎   0000:1bc2      rol   word cs:[0x4c56], 1
│       ╎   0000:1bc7      adc   bx, bx
│       ╎   0000:1bc9      rol   word cs:[0x4c54], 1
│       ╎   0000:1bce      adc   bx, bx
│       ╎   0000:1bd0      add   ax, ax                                ; arg1
│       ╎   0000:1bd2      add   ax, ax                                ; arg1
│       ╎   0000:1bd4      or    al, byte cs:[bx + si]
│       └─< 0000:1bd7      loop  0x1b96
│           0000:1bd9      pop   si
│           0000:1bda      pop   cx
└           0000:1bdb      ret
```

### Function 0x00001c30
```asm
; XREFS: CALL 0x000000ca  CALL 0x00000125  CALL 0x00000150  
            ; XREFS: CALL 0x0000036d  CALL 0x00000413  CALL 0x000007d0  
            ; XREFS: CALL 0x00000ca5  CALL 0x00000d39  CALL 0x00000ee5  
            ; XREFS: CALL 0x00000f16  CALL 0x000010ee  CALL 0x000011fe  
            ; XREFS: CALL 0x0000125b  
┌ fcn.00001c30(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:1c30      xor   ax, ax
│           0000:1c32      mov   al, bl
│           0000:1c34      add   ax, 0x1c
│           0000:1c37      mov   bl, 3
│           0000:1c39      div   bl
│           0000:1c3b      mov   bl, ah
│           0000:1c3d      ror   bl, 1
│           0000:1c3f      ror   bl, 1
│           0000:1c41      ror   bl, 1
│           0000:1c43      and   bl, 0x60
│           0000:1c46      mov   ah, 0x5a                              ; 'Z'
│           0000:1c48      mul   ah
│           0000:1c4a      add   ah, bl
│           0000:1c4c      add   bh, 5
│           0000:1c4f      mov   bl, bh
│           0000:1c51      xor   bh, bh
│           0000:1c53      add   ax, bx                                ; arg3
└           0000:1c55      ret
```

## Cross-References (callers)
```json
  0x00000177:
[{"from":217,"to":375,"type":"CALL"},{"from":318,"to":375,"type":"CALL"},{"from":327,"to":375,"type":"CALL"},{"from":361,"to":375,"type":"CALL"},{"from":370,"to":375,"type":"CALL"}]
  0x00000323:
[{"from":784,"to":803,"type":"CALL"}]
  0x000003b9:
[{"from":924,"to":953,"type":"CALL"},{"from":937,"to":953,"type":"CALL"}]
  0x000005a1:
[{"from":1272,"to":1441,"type":"CALL"}]
  0x000005c2:
[{"from":1410,"to":1474,"type":"CALL"}]
  0x000005f1:
[{"from":1353,"to":1521,"type":"CALL"}]
  0x0000062a:
[{"from":1548,"to":1578,"type":"CALL"},{"from":1561,"to":1578,"type":"CALL"}]
  0x00000722:
[{"from":1807,"to":1826,"type":"CALL"}]
  0x0000099b:
[{"from":2202,"to":2459,"type":"CALL"},{"from":2236,"to":2459,"type":"CALL"},{"from":2257,"to":2459,"type":"CALL"},{"from":2291,"to":2459,"type":"CALL"},{"from":2333,"to":2459,"type":"CALL"},{"from":2376,"to":2459,"type":"CALL"},{"from":2397,"to":2459,"type":"CALL"},{"from":2440,"to":2459,"type":"CALL"}]
  0x00000c9a:
[{"from":3194,"to":3226,"type":"CALL"}]
  0x00000db8:
[{"from":3406,"to":3512,"type":"CALL"}]
  0x00000df0:
[{"from":3432,"to":3568,"type":"CALL"},{"from":3509,"to":3568,"type":"CALL"}]
  0x00000e46:
[{"from":3437,"to":3654,"type":"CALL"},{"from":3473,"to":3654,"type":"CALL"},{"from":3513,"to":3654,"type":"CALL"},{"from":3546,"to":3654,"type":"CALL"},{"from":3570,"to":3654,"type":"CALL"},{"from":3616,"to":3654,"type":"CALL"}]
  0x00000f43:
[{"from":3842,"to":3907,"type":"CALL"},{"from":3891,"to":3907,"type":"CALL"}]
  0x00000f76:
[{"from":3837,"to":3958,"type":"CALL"},{"from":3886,"to":3958,"type":"CALL"}]
  0x0000100f:
[{"from":3763,"to":4111,"type":"CALL"},{"from":3773,"to":4111,"type":"CALL"}]
  0x00001094:
[{"from":4115,"to":4244,"type":"CALL"},{"from":4141,"to":4244,"type":"CALL"},{"from":4153,"to":4244,"type":"CALL"},{"from":4203,"to":4244,"type":"CALL"},{"from":4214,"to":4244,"type":"CALL"},{"from":4240,"to":4244,"type":"CALL"}]
  0x000010de:
[{"from":4294,"to":4318,"type":"CALL"},{"from":4302,"to":4318,"type":"CALL"}]
  0x000011e8:
[{"from":4560,"to":4584,"type":"CALL"},{"from":4568,"to":4584,"type":"CALL"}]
```