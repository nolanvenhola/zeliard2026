# EQUIPMENT - Analysis

**Source:** `chunk_02.bin`  
**Size:** 7.5 KB  
**Functions:** 19  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    8 420  -> 137  fcn.00000000
0x000001a4   13 152          fcn.000001a4
0x0000032c    3 20           fcn.0000032c
0x000005ac    5 33           fcn.000005ac
0x000005cd    5 33           fcn.000005cd
0x000005ee    7 75           fcn.000005ee
0x00000712    8 97           fcn.00000712
0x000008e3    7 102          fcn.000008e3
0x00000bd4    9 112          fcn.00000bd4
0x00000cbd    1 22           fcn.00000cbd
0x00000cd3    4 55           fcn.00000cd3
0x00000d0a    1 7            fcn.00000d0a
0x00000e1a    3 38           fcn.00000e1a
0x00000e40    7 114          fcn.00000e40
0x00000eb2    7 133          fcn.00000eb2
0x00000f37    1 12           fcn.00000f37
0x00000f81   11 167          fcn.00000f81
0x00001066    5 91           fcn.00001066
0x00001a01    3 80           fcn.00001a01
```

## Strings
```
nth      paddr      vaddr len size section type   string                 
-------------------------------------------------------------------------
  0 0x00000005 0x00000005   5    5         ascii  J20x0
  1 0x00000015 0x00000015   5    5         ascii  3V4U6
  2 0x00000027 0x00000027  11   11         ascii  :@<\r=c=??$@
  3 0x00000035 0x00000035   4    5         ascii  JPSQ
  4 0x0000014f 0x0000014f   4    4         ascii  Ju2.
  5 0x00000189 0x00000189   4    4         ascii  J82.
  6 0x000001c0 0x000001c0   4    4         ascii  QVW.
  7 0x00000225 0x00000225   4    4         ascii  _^Y.
  8 0x000002a1 0x000002a1   4    4         ascii  & %"
  9 0x00000302 0x00000302   5    5         ascii  t#VW2
 10 0x00000452 0x00000452   6    7         ibm037 aG&{SY
 11 0x00000473 0x00000473   8    9         ibm037 {¡¡uuaB{
 12 0x00000490 0x00000490   4    5         ascii  D\r:D
 13 0x000005ac 0x000005ac   4    4         ascii  VQVQ
 14 0x000005cd 0x000005cd   4    4         ascii  WQWQ
 15 0x00000796 0x00000796   5    6         ibm037 3uaF>
 16 0x00000955 0x00000955   4    5         ibm037 hhhh
 17 0x0000095d 0x0000095d   4    5         ibm037 hhhy
 18 0x00000985 0x00000985   4    4         ascii  """"
 19 0x0000098d 0x0000098d   4    4         ascii  """"
 20 0x0000099d 0x0000099d   4    5         ibm037 yhhh
 21 0x000009a5 0x000009a5   4    5         ibm037 hhhh
 22 0x000009cd 0x000009cd   4    4         ascii  *"""
 23 0x000009d5 0x000009d5   4    4         ascii  """"
 24 0x00000a81 0x00000a81   4    5         ascii  \n\t\b\a
 25 0x00000ae4 0x00000ae4  15   16         ascii  ;\r:\f9\v8\n7\t6\b5\a4
 26 0x00000bb7 0x00000bb7   4    4         ascii  ^[Y.
 27 0x00000bfd 0x00000bfd   4    4         ascii  Js<.
 28 0x00000cb0 0x00000cb0   8    9         ibm037 aG&{ßSM¾
 29 0x00000dc1 0x00000dc1   4    5         ascii  r\n=q
 30 0x00000df9 0x00000df9   4    5         ascii  r\n=q
 31 0x00000e36 0x00000e36  12   13         ibm037 ts¢YE\v¿SVC¾\v
 32 0x00000fd9 0x00000fd9   5    5         ibm037 ¡STC¾
 33 0x00001018 0x00001018   6    6         ibm037 ts¢YT\t
 34 0x0000108a 0x0000108a   4    5         ascii  !X=^
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0000      sbb   byte [0], bl
│           0000:0004      lahf
│           0000:0005      dec   dx                                    ; arg2
│           0000:0006      xor   dh, byte [bx + si]                    ; arg3
│       ┌─< 0000:0008      js    0x3a
│       │   0000:000a      ret   0xef30
        │   ; DATA XREF from fcn.000008e3 @ +0x2cb
        │   ; DATA XREF from fcn.00000eb2 @ 0xef5
..
        │   ; DATA XREF from fcn.000008e3 @ +0x1ff
        │   ; DATA XREFS from fcn.00000eb2 @ 0xee9, 0xf03
        │   ; XREFS: DATA 0x00000509  DATA 0x0000055a  DATA 0x00000593  
        │   ; XREFS: DATA 0x000005a6  DATA 0x00000c9c  DATA 0x00000cee  
        │   ; DATA XREF from fcn.00000bd4 @ 0xbd8
        │   ; DATA XREF from fcn.00000f81 @ 0xf9e
        │   ; DATA XREF from fcn.00001066 @ 0x1077
        │   ; DATA XREFS from fcn.00000d0a @ +0xb4, +0xec
        │   ; DATA XREF from fcn.00000f81 @ 0xfab
        │   ; DATA XREF from fcn.000005ee @ +0x105
       ││   ; DATA XREF from fcn.00000712 @ 0x75d
       ││   ; DATA XREFS from fcn.00000f81 @ 0xfb5, 0xfdd
       ││   ; DATA XREFS from fcn.00001066 @ 0x1088, 0x10b9
       ││   ; DATA XREF from fcn.00000f81 @ 0xfa8
       ││   ; DATA XREF from fcn.00000bd4 @ 0xc3c
       ││   ; DATA XREF from fcn.00000712 @ 0x760
       ││   ;-- str.:____c:
       ││   ; DATA XREFS from fcn.00000eb2 @ 0xeb9, 0xedf, 0xf1c
       ││   ; DATA XREFS from fcn.00000f37 @ +0x1f, +0x2d
       ││   ; DATA XREFS from fcn.00000f81 @ +0xba, +0xc8
│      │└─> 0000:003a      mov   al, ch
│      │    0000:003c      mul   cl
│      │    0000:003e      mov   bp, ax                                ; arg1
│      │    ; DATA XREF from str.:____c @ +0x9
│      │    0000:0040      push  es
│      │    0000:0041      pop   ds
│      │    0000:0042      mov   si, di
│      │    ; DATA XREF from fcn.00000712 @ +0x92
│      │    ; DATA XREFS from fcn.00000d0a @ +0x84, +0x8e
│      │    0000:0044      mov   ax, cs
│      │    0000:0046      add   ax, 0x3000
│      │    0000:0049      mov   es, ax
│      │    ; DATA XREF from fcn.0000032c @ +0x20c
│      │    0000:004b      mov   di, 0
│      │    ; DATA XREF from fcn.00000712 @ +0xdd
│      │    0000:004e      mov   word cs:[0x4aa4], 0
│      │    ; DATA XREF from fcn.00000000 @ +0x17
│      │    0000:0055      mov   word cs:[0x4aa6], 0
│      │    0000:005c      mov   cx, bp
│      │    ; DATA XREF from fcn.00001066 @ 0x108c
│      │    0000:005e      shr   cx, 1
│      │┌─> 0000:0060      mov   ax, word ds:[bp + si]
│      │╎   0000:0063      mov   word cs:[0x4aa8], ax
│      │╎   0000:0067      lodsw ax, word [si]                         ; int16_t arg1
│      │╎   0000:0068      mov   word cs:[0x4aa2], ax
│      │╎   0000:006c      call  fcn.00001a01                          ; fcn.00001a01
│      │╎   0000:006f      stosw word es:[di], ax
│      ││   ; DATA XREF from fcn.00000eb2 @ 0xef1
│      │└─< 0000:0070      loop  0x60
│      │    0000:0072      pop   ds
│      │    0000:0073      pop   cx
│      │    0000:0074      pop   bx
│      │    0000:0075      pop   ax
│      │    0000:0076      mov   di, 0
│      │┌─< 0000:0079      jmp   0x16a
..
       ││   ; DATA XREF from fcn.000008e3 @ +0xba
       ││   ; DATA XREF from fcn.00000712 @ +0x14b
      ╎││   ; DATA XREF from fcn.00000712 @ +0x15a
       ││   ; DATA XREF from fcn.0000032c @ +0x14c
       ││   ; DATA XREF from fcn.000008e3 @ +0x115
      │││   ; DATA XREF from fcn.00001a01 @ +0x62
      │││   ; DATA XREF from fcn.00000bd4 @ +0xbf
      │││   ; DATA XREF from fcn.00000cd3 @ 0xcdc
      │││   ; DATA XREF from fcn.00000cbd @ 0xcce
      │││   ; DATA XREF from fcn.00000f81 @ 0x101e
      │││   ;-- str.J20x0:
      │││   ; DATA XREF from fcn.0000032c @ +0x140
      │││   ; DATA XREF from fcn.00000712 @ 0x731
│     │││   ; CODE XREF from fcn.00000000 @ 0x79
│     │││   ; CODE XREF from str.:____c @ +0x9c
│     └─└─> 0000:016a      push  ds
│      │    0000:016b      push  ax
│      │    0000:016c      push  es
│      │    0000:016d      push  di
│      │    0000:016e      shr   bl, 1
│      │    0000:0170      sbb   di, di
│      │    0000:0172      and   di, 0x2000
│      │    0000:0176      mov   al, 0x50                              ; 'P'
│      │    0000:0178      mul   bl
│      │    0000:017a      add   di, ax
│      │    0000:017c      mov   bl, bh
│      │    0000:017e      xor   bh, bh
│      │    0000:0180      add   di, bx
│      │    0000:0182      pop   si
│      │    0000:0183      pop   ds
│      │    0000:0184      pop   ax
│      │    0000:0185      mov   word cs:[0x4aae], 0x3238              ; '82'
│      │                                                               ; [0x3238:2]=0xffff
│      │    0000:018c      mov   byte cs:[0x4aad], 0
│      │    0000:0192      or    al, al
│      │┌─< 0000:0194      jne   0x199
│      ││   0000:0196      call  fcn.000001a4                          ; fcn.000001a4
│      │└─> 0000:0199      mov   byte cs:[0x4aad], 0xff                ; [0xff:1]=142
│      │    0000:019f      call  fcn.000001a4                          ; fcn.000001a4
│      │    0000:01a2      pop   ds
└      │    0000:01a3      ret
```

### Function 0x000001a4
```asm
; CALL XREF from str.:____c @ +0xc1
            ; CALL XREFS from fcn.00000000 @ 0x60, 0x69, 0x196, 0x19f
┌ fcn.000001a4(int16_t arg3, int16_t arg4);
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:01a4      mov   byte cs:[0x4aab], 0
│           0000:01aa      mov   ax, 0xb800
│           0000:01ad      mov   es, ax
│           0000:01af      mov   bp, 8
│           ; CODE XREF from fcn.000001a4 @ 0x238
│       ┌─> 0000:01b2      mov   al, byte cs:[0x4aab]
│       ╎   0000:01b6      mov   byte cs:[0x4aaa], al
│       ╎   0000:01ba      mov   byte cs:[0xff1a], 0
│       ╎   0000:01c0      push  cx                                    ; arg4
│       ╎   0000:01c1      push  si
│       ╎   0000:01c2      push  di
│      ┌──> 0000:01c3      mov   bl, byte cs:[0x4aaa]
│      ╎╎   0000:01c8      and   bx, 7                                 ; arg3
│      ╎╎   0000:01cb      add   bx, bx                                ; arg3
│      ╎╎   0000:01cd      mov   bx, word cs:[bx + 0x32c4]             ; arg3
│      ╎╎   0000:01d2      call  word cs:[0x4aae]
│      ╎╎   0000:01d7      inc   byte cs:[0x4aaa]
│      ╎╎   0000:01dc      mov   al, ch
│      ╎╎   0000:01de      xor   ah, ah
│      ╎╎   0000:01e0      add   si, ax
│      ╎╎   0000:01e2      add   di, 0x2000
│      ╎╎   0000:01e6      cmp   di, 0x4000
│     ┌───< 0000:01ea      jb    0x1f0
│     │╎╎   0000:01ec      add   di, 0xc050
│     └───> 0000:01f0      dec   cl
│     ┌───< 0000:01f2      je    0x225
│     │╎╎   0000:01f4      mov   bl, byte cs:[0x4aaa]
│     │╎╎   0000:01f9      and   bx, 7                                 ; arg3
│     │╎╎   0000:01fc      add   bx, bx                                ; arg3
│     │╎╎   0000:01fe      mov   bx, word cs:[bx + 0x32d4]             ; arg3
│     │╎╎   0000:0203      call  word cs:[0x4aae]
│     │╎╎   0000:0208      inc   byte cs:[0x4aaa]
│     │╎╎   0000:020d      mov   al, ch
│     │╎╎   0000:020f      xor   ah, ah
│     │╎╎   0000:0211      add   si, ax
│     │╎╎   0000:0213      add   di, 0x2000
│     │╎╎   0000:0217      cmp   di, 0x4000
│    ┌────< 0000:021b      jb    0x221
│    ││╎╎   0000:021d      add   di, 0xc050
│    └────> 0000:0221      dec   cl
│     │└──< 0000:0223      jne   0x1c3
│     └───> 0000:0225      pop   di
│       ╎   0000:0226      pop   si
│       ╎   0000:0227      pop   cx
│       ╎   0000:0228      inc   byte cs:[0x4aab]
│      ┌──> 0000:022d      cmp   byte cs:[0xff1a], 0x14
│      └──< 0000:0233      jb    0x22d
│       ╎   0000:0235      dec   bp
│      ┌──< 0000:0236      je    0x23b
│      │└─< 0000:0238      jmp   0x1b2
└      └──> 0000:023b      ret
```

### Function 0x0000032c
```asm
; CALL XREF from fcn.000001a4 @ +0x175
┌ fcn.0000032c(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:032c      mov   cx, 8
│       ┌─> 0000:032f      add   al, al
│       ╎   0000:0331      adc   bx, bx                                ; arg3
│       ╎   0000:0333      add   bx, bx                                ; arg3
│       └─< 0000:0335      loop  0x32f
│           0000:0337      mov   dx, bx                                ; arg3
│           0000:0339      shr   dx, 1
│           0000:033b      or    dx, bx                                ; arg3
│           0000:033d      xchg  dl, dh
└           0000:033f      ret
```

### Function 0x000005ac
```asm
; CALL XREF from fcn.0000032c @ +0x1d7
┌ fcn.000005ac(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:05ac      push  si
│           0000:05ad      push  cx                                    ; arg4
│       ┌─> 0000:05ae      push  si
│       ╎   0000:05af      push  cx                                    ; arg4
│       ╎   0000:05b0      mov   cl, ch
│       ╎   0000:05b2      xor   ch, ch
│       ╎   0000:05b4      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:05b6      pop   cx
│       ╎   0000:05b7      pop   si
│       ╎   0000:05b8      add   si, 0x2000
│       ╎   0000:05bc      cmp   si, 0x4000
│      ┌──< 0000:05c0      jb    0x5c6
│      │╎   0000:05c2      add   si, 0xc050
│      └──> 0000:05c6      dec   cl
│       └─< 0000:05c8      jne   0x5ae
│           0000:05ca      pop   cx
│           0000:05cb      pop   si
└           0000:05cc      ret
```

### Function 0x000005cd
```asm
; CALL XREF from fcn.0000032c @ +0x261
┌ fcn.000005cd(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:05cd      push  di
│           0000:05ce      push  cx                                    ; arg4
│       ┌─> 0000:05cf      push  di
│       ╎   0000:05d0      push  cx                                    ; arg4
│       ╎   0000:05d1      mov   cl, ch
│       ╎   0000:05d3      xor   ch, ch
│       ╎   0000:05d5      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:05d7      pop   cx
│       ╎   0000:05d8      pop   di
│       ╎   0000:05d9      add   di, 0x2000
│       ╎   0000:05dd      cmp   di, 0x4000
│      ┌──< 0000:05e1      jb    0x5e7
│      │╎   0000:05e3      add   di, 0xc050
│      └──> 0000:05e7      dec   cl
│       └─< 0000:05e9      jne   0x5cf
│           0000:05eb      pop   cx
│           0000:05ec      pop   di
└           0000:05ed      ret
```

### Function 0x000005ee
```asm
; CALL XREF from fcn.0000032c @ +0x228
┌ fcn.000005ee(int16_t arg1, int16_t arg2, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg4 @ cx
│           0000:05ee      push  di
│           0000:05ef      push  cx                                    ; arg4
│           0000:05f0      mov   al, ch
│           0000:05f2      mul   cl
│           0000:05f4      mov   bx, ax                                ; arg1
│           0000:05f6      mov   word cs:[0x4aa8], 0
│           0000:05fd      mov   word cs:[0x4aa6], 0
│       ┌─> 0000:0604      push  di
│       ╎   0000:0605      push  cx                                    ; arg4
│       ╎   0000:0606      mov   cl, ch
│       ╎   0000:0608      xor   ch, ch
│      ┌──> 0000:060a      xor   ah, ah
│      ╎╎   0000:060c      mov   al, byte [bx + si]
│      ╎╎   0000:060e      mov   word cs:[0x4aa4], ax                  ; arg1
│      ╎╎   0000:0612      lodsb al, byte [si]
│      ╎╎   0000:0613      mov   word cs:[0x4aa2], ax                  ; arg1
│      ╎╎   0000:0617      push  bx
│      ╎╎   0000:0618      call  fcn.00001a01                          ; fcn.00001a01
│      ╎╎   0000:061b      pop   bx
│      ╎╎   0000:061c      or    byte es:[di], al
│      ╎╎   0000:061f      inc   di
│      │╎   ; DATA XREF from fcn.000005ee @ +0x4b
│      └──< 0000:0620      loop  0x60a
│       ╎   0000:0622      pop   cx
│       ╎   0000:0623      pop   di
│       ╎   0000:0624      add   di, 0x2000
│       ╎   0000:0628      cmp   di, 0x4000
│      ┌──< 0000:062c      jb    0x632
│      │╎   0000:062e      add   di, 0xc050
│      └──> 0000:0632      dec   cl
│       └─< 0000:0634      jne   0x604
│           0000:0636      pop   cx
│           0000:0637      pop   di
└           0000:0638      ret
```

### Function 0x00000712
```asm
; CALL XREF from fcn.000005ee @ +0x111
┌ fcn.00000712(int16_t arg1, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0712      mov   ds, word cs:[0xff2c]
│           0000:0717      mov   dx, cs
│           0000:0719      add   dx, 0x2000
│           0000:071d      mov   es, dx
│           0000:071f      xor   ah, ah
│           ; CODE XREF from fcn.00000712 @ 0x727
│       ┌─> 0000:0721      sub   al, 0x28
│      ┌──< 0000:0723      jb    0x729
│      │╎   0000:0725      inc   ah
│      │└─< 0000:0727      jmp   0x721
│      └──> 0000:0729      add   al, 0x28
│           0000:072b      mov   cl, al
│           0000:072d      mov   al, ah
│           0000:072f      xor   ah, ah
│           0000:0731      mov   dx, 0x140
│           0000:0734      mul   dx
│           0000:0736      xor   ch, ch
│           0000:0738      add   ax, cx                                ; arg4
│           0000:073a      add   ax, 0x4000                            ; arg1
│           0000:073d      push  ax                                    ; arg1
│           0000:073e      mov   dx, bx                                ; arg3
│           0000:0740      xor   dh, dh
│           0000:0742      mov   ax, 0x110
│           0000:0745      mul   dx
│           0000:0747      mov   dl, bh
│           0000:0749      xor   dh, dh
│           0000:074b      add   ax, dx
│           0000:074d      add   ax, 0
│           0000:0750      mov   di, ax
│           0000:0752      pop   si
│           0000:0753      mov   cx, 3
│       ┌─> 0000:0756      push  cx
│       ╎   0000:0757      push  di
│       ╎   0000:0758      push  si
│       ╎   0000:0759      mov   cx, 8
│      ┌──> 0000:075c      movsb byte es:[di], byte ptr [si]
│      ╎╎   0000:075d      add   di, 0x21
│      ╎╎   0000:0760      add   si, 0x27                              ; str.:____c ; ":@<\r=c=??$@\xbd@\x87JPSQ\U0000001e\x8a\xc5\xf6\xe1\x8b\xe8\U00000006\U0000001f\x8b\xf7\x8c\xc8\U00000005"
│      └──< 0000:0763      loop  0x75c
│       ╎   0000:0765      pop   si
│       ╎   0000:0766      pop   di
│       ╎   0000:0767      add   di, 0x1a90
│       ╎   0000:076b      add   si, 0x640
│       ╎   0000:076f      pop   cx
│       └─< 0000:0770      loop  0x756
└           0000:0772      ret
```

### Function 0x000008e3
```asm
; XREFS: CALL 0x00000833  CALL 0x00000845  CALL 0x00000854  
            ; XREFS: CALL 0x00000866  CALL 0x00000886  CALL 0x000008a1  
            ; XREFS: CALL 0x000008b6  CALL 0x000008d1  
┌ fcn.000008e3(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:08e3      push  si
│           0000:08e4      push  di
│           0000:08e5      dec   al
│           0000:08e7      xor   ah, ah
│           0000:08e9      add   ax, ax                                ; arg1
│           0000:08eb      add   ax, ax                                ; arg1
│           0000:08ed      add   ax, ax                                ; arg1
│           0000:08ef      add   ax, 0x3945                            ; arg1
│           0000:08f2      mov   si, ax                                ; arg1
│           0000:08f4      lodsb al, byte [si]
│           0000:08f5      and   al, byte cs:[0x4aab]
│           0000:08fa      or    al, byte [si + 3]
│           0000:08fd      stosb byte es:[di], al
│           0000:08fe      add   di, 0x1fff
│           0000:0902      cmp   di, 0x4000
│       ┌─< 0000:0906      jb    0x90c
│       │   0000:0908      add   di, 0xc050
│       └─> 0000:090c      lodsb al, byte [si]
│           0000:090d      and   al, byte cs:[0x4aab]
│           0000:0912      or    al, byte [si + 3]
│           0000:0915      stosb byte es:[di], al
│           0000:0916      add   di, 0x1fff
│           0000:091a      cmp   di, 0x4000
│       ┌─< 0000:091e      jb    0x924
│       │   0000:0920      add   di, 0xc050
│       └─> 0000:0924      lodsb al, byte [si]
│           0000:0925      and   al, byte cs:[0x4aab]
│           0000:092a      or    al, byte [si + 3]
│           0000:092d      stosb byte es:[di], al
│           0000:092e      add   di, 0x1fff
│           0000:0932      cmp   di, 0x4000
│       ┌─< 0000:0936      jb    0x93c
│       │   0000:0938      add   di, 0xc050
│       └─> 0000:093c      lodsb al, byte [si]
│           0000:093d      and   al, byte cs:[0x4aab]
│           0000:0942      or    al, byte [si + 3]
│           0000:0945      stosb byte es:[di], al
│           0000:0946      pop   di
│           0000:0947      pop   si
└           0000:0948      ret
```

### Function 0x00000bd4
```asm
; CALL XREF from fcn.000008e3 @ +0x2d1
┌ fcn.00000bd4(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0bd4      mov   al, byte cs:[0x4aab]
│           0000:0bd8      add   al, 0x10
│           0000:0bda      shr   al, 1
│           0000:0bdc      sbb   di, di
│           0000:0bde      and   di, 0x2000
│           0000:0be2      mov   dl, 0x50                              ; 'P'
│           0000:0be4      mul   dl
│           0000:0be6      add   ax, 4                                 ; arg1
│           0000:0be9      add   di, ax                                ; arg1
│           0000:0beb      cmp   byte cs:[0x4aab], bl
│       ┌─< 0000:0bf0      jb    0xc3c
│       │   0000:0bf2      mov   al, bl
│       │   0000:0bf4      add   al, byte cs:[0x4aae]
│       │   0000:0bf9      cmp   byte cs:[0x4aab], al
│      ┌──< 0000:0bfe      jae   0xc3c
│      ││   0000:0c00      mov   al, byte cs:[0x4aab]
│      ││   0000:0c04      sub   al, bl
│      ││   0000:0c06      mul   byte cs:[0x4aaf]
│      ││   0000:0c0b      add   si, ax                                ; arg1
│      ││   0000:0c0d      mov   byte cs:[0x4aaa], 0
│      ││   0000:0c13      mov   cx, 0x48                              ; 'H'
│     ┌───> 0000:0c16      push  cx
│     ╎││   0000:0c17      mov   byte es:[di], 0
│     ╎││   0000:0c1b      cmp   byte cs:[0x4aaa], bh
│    ┌────< 0000:0c20      jb    0xc32
│    │╎││   0000:0c22      mov   al, bh
│    │╎││   0000:0c24      add   al, byte cs:[0x4aaf]
│    │╎││   0000:0c29      cmp   byte cs:[0x4aaa], al
│   ┌─────< 0000:0c2e      jae   0xc32
│   ││╎││   0000:0c30      movsb byte es:[di], byte ptr [si]
│   ││╎││   0000:0c31      dec   di
│   └└────> 0000:0c32      inc   di
│     ╎││   0000:0c33      inc   byte cs:[0x4aaa]
│     ╎││   0000:0c38      pop   cx
│     └───< 0000:0c39      loop  0xc16
│      ││   0000:0c3b      ret
│      └└─> 0000:0c3c      mov   cx, 0x24                              ; '$'
│           0000:0c3f      xor   ax, ax
│           0000:0c41      rep   stosw word es:[di], ax
└           0000:0c43      ret
```

### Function 0x00000cbd
```asm
; CALL XREF from fcn.00000bd4 @ +0x99
┌ fcn.00000cbd();
│           0000:0cbd      call  fcn.00000d0a                          ; fcn.00000d0a
│           ; DATA XREF from fcn.000005ee @ +0x6f
│           0000:0cc0      or    byte es:[di], 0x3f                    ; [0x3f:1]=232
│           0000:0cc4      inc   di
│           0000:0cc5      mov   cx, bx
│           0000:0cc7      sub   cx, 2
│           0000:0cca      mov   al, 0xff
│           0000:0ccc      rep   stosb byte es:[di], al
│           0000:0cce      or    byte es:[di], 0xfc                    ; str.J20x0
│                                                                      ; [0xfc:1]=5
└           0000:0cd2      ret
```

### Function 0x00000cd3
```asm
; CALL XREFS from fcn.00000bd4 @ +0xb3, +0xe6
┌ fcn.00000cd3(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│       ┌─> 0000:0cd3      push  cx                                    ; arg4
│       ╎   0000:0cd4      push  di
│       ╎   0000:0cd5      call  fcn.00000d0a                          ; fcn.00000d0a
│       ╎   0000:0cd8      or    byte es:[di], 0x30                    ; [0x30:1]=36
│       ╎   0000:0cdc      and   byte es:[di], 0xf0                    ; [0xf0:1]=138
│       ╎   0000:0ce0      inc   di
│       ╎   0000:0ce1      mov   cx, bx
│       ╎   0000:0ce3      sub   cx, 2
│       ╎   0000:0ce6      xor   al, al
│       ╎   0000:0ce8      rep   stosb byte es:[di], al
│       ╎   0000:0cea      or    byte es:[di], 0xc                     ; [0xc:1]=239
│       ╎   0000:0cee      and   byte es:[di], 0xf                     ; [0xf:1]=74
│       ╎   0000:0cf2      pop   di
│       ╎   0000:0cf3      inc   byte cs:[0x4aab]
│       ╎   0000:0cf8      add   di, 0x2000
│       ╎   0000:0cfc      cmp   di, 0x4000
│      ┌──< 0000:0d00      jb    0xd06
│      │╎   0000:0d02      add   di, 0xc050
│      └──> 0000:0d06      pop   cx
│       └─< 0000:0d07      loop  fcn.00000cd3
└           0000:0d09      ret
```

### Function 0x00000d0a
```asm
; CALL XREF from fcn.00000bd4 @ +0xb8
            ; CALL XREF from fcn.00000cbd @ 0xcbd
            ; CALL XREF from fcn.00000cd3 @ 0xcd5
┌ fcn.00000d0a();
│           0000:0d0a      mov   word es:[di - 1], 0
└           0000:0d10      ret
```

### Function 0x00000e1a
```asm
; CALL XREFS from fcn.00000d0a @ +0xc3, +0xfb
┌ fcn.00000e1a(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0e1a      mov   cx, 0x28                              ; '('
│           0000:0e1d      mov   word cs:[0x4aa8], 0
│       ┌─> 0000:0e24      mov   ax, word [si + 0x5500]
│       ╎   0000:0e28      mov   word cs:[0x4aa6], ax
│       ╎   0000:0e2c      mov   ax, word [si + 0x2a80]
│       ╎   0000:0e30      mov   word cs:[0x4aa4], ax
│       ╎   0000:0e34      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0e35      mov   word cs:[0x4aa2], ax
│       ╎   0000:0e39      call  fcn.00001a01                          ; fcn.00001a01
│       ╎   0000:0e3c      stosw word es:[di], ax
│       └─< 0000:0e3d      loop  0xe24
└           0000:0e3f      ret
```

### Function 0x00000e40
```asm
; CALL XREFS from fcn.00000d0a @ +0xbe, +0xf6
┌ fcn.00000e40(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0e40      mov   cx, 0xb
│           0000:0e43      mov   word cs:[0x4aa8], 0
│       ┌─> 0000:0e4a      xor   ah, ah
│       ╎   0000:0e4c      mov   al, byte [si + 0x5500]
│       ╎   0000:0e50      mov   word cs:[0x4aa6], ax                  ; arg1
│       ╎   0000:0e54      mov   al, byte [si + 0x2a80]
│       ╎   0000:0e58      mov   word cs:[0x4aa4], ax                  ; arg1
│       ╎   0000:0e5c      lodsb al, byte [si]
│       ╎   0000:0e5d      mov   word cs:[0x4aa2], ax                  ; arg1
│       ╎   0000:0e61      call  fcn.00001a01                          ; fcn.00001a01
│       ╎   0000:0e64      stosb byte es:[di], al
│       └─< 0000:0e65      loop  0xe4a
│           0000:0e67      add   si, 0x18
│           0000:0e6a      add   di, 0x18
│           0000:0e6d      mov   cx, 5
│       ┌─> 0000:0e70      mov   ax, word [si + 0x5500]
│       ╎   0000:0e74      mov   word cs:[0x4aa6], ax
│       ╎   0000:0e78      mov   ax, word [si + 0x2a80]
│       ╎   0000:0e7c      mov   word cs:[0x4aa4], ax
│       ╎   0000:0e80      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0e81      mov   word cs:[0x4aa2], ax
│       ╎   0000:0e85      call  fcn.00001a01                          ; fcn.00001a01
│       ╎   0000:0e88      stosw word es:[di], ax
│       └─< 0000:0e89      loop  0xe70
│           0000:0e8b      add   si, 0x18
│           0000:0e8e      add   di, 0x18
│           0000:0e91      mov   cx, 0xb
│       ┌─> 0000:0e94      xor   ah, ah
│       ╎   0000:0e96      mov   al, byte [si + 0x5500]
│       ╎   0000:0e9a      mov   word cs:[0x4aa6], ax
│       ╎   0000:0e9e      mov   al, byte [si + 0x2a80]
│       ╎   0000:0ea2      mov   word cs:[0x4aa4], ax
│       ╎   0000:0ea6      lodsb al, byte [si]
│       ╎   0000:0ea7      mov   word cs:[0x4aa2], ax
│       ╎   0000:0eab      call  fcn.00001a01                          ; fcn.00001a01
│       ╎   0000:0eae      stosb byte es:[di], al
│       └─< 0000:0eaf      loop  0xe94
└           0000:0eb1      ret
```

### Function 0x00000eb2
```asm
; CALL XREFS from fcn.00000d0a @ +0x6d, +0x77
┌ fcn.00000eb2();
│           0000:0eb2      push  di
│           0000:0eb3      mov   ax, 0xfc3f
│           0000:0eb6      call  fcn.00000f37                          ; fcn.00000f37
│           0000:0eb9      add   di, 0x36
│           0000:0ebc      mov   cx, 0x5b                              ; '['
│       ┌─> 0000:0ebf      mov   byte es:[di], 0x30                    ; '0'
│       ╎                                                              ; [0x30:1]=36
│       ╎   0000:0ec3      mov   byte es:[di + 0x19], 0xc              ; [0xc:1]=239
│       ╎   0000:0ec8      add   di, 0x50
│       └─< 0000:0ecb      loop  0xebf
│           0000:0ecd      mov   ax, 0xfc3f
│           0000:0ed0      call  fcn.00000f37                          ; fcn.00000f37
│           0000:0ed3      pop   di
│           0000:0ed4      add   di, 0x2a80
│           0000:0ed8      push  di
│           0000:0ed9      mov   ax, 0xfd7f
│           0000:0edc      call  fcn.00000f37                          ; fcn.00000f37
│           0000:0edf      add   di, 0x36
│           0000:0ee2      mov   cx, 0x2d                              ; '-'
│       ┌─> 0000:0ee5      mov   byte es:[di], 0xb0                    ; [0xb0:1]=74
│       ╎   0000:0ee9      mov   byte es:[di + 0x19], 0xe              ; [0xe:1]=77
│       ╎   0000:0eee      add   di, 0x50
│       ╎   0000:0ef1      mov   byte es:[di], 0x70                    ; 'p'
│       ╎                                                              ; [0x70:1]=226
│       ╎   0000:0ef5      mov   byte es:[di + 0x19], 0xd              ; [0xd:1]=64
│       ╎   0000:0efa      add   di, 0x50
│       └─< 0000:0efd      loop  0xee5
│           0000:0eff      mov   byte es:[di], 0xb0                    ; [0xb0:1]=74
│           0000:0f03      mov   byte es:[di + 0x19], 0xe              ; [0xe:1]=77
│           0000:0f08      add   di, 0x50
│           0000:0f0b      mov   ax, 0xfd7f
│           0000:0f0e      call  fcn.00000f37                          ; fcn.00000f37
│           0000:0f11      pop   di
│           0000:0f12      add   di, 0x2a80
│           0000:0f16      mov   ax, 0xfc3f
│           0000:0f19      call  fcn.00000f37                          ; fcn.00000f37
│           0000:0f1c      add   di, 0x36
│           0000:0f1f      mov   cx, 0x5b                              ; '['
│       ┌─> 0000:0f22      mov   byte es:[di], 0x30                    ; '0'
│       ╎                                                              ; [0x30:1]=36
│       ╎   0000:0f26      mov   byte es:[di + 0x19], 0xc              ; [0xc:1]=239
│       ╎   0000:0f2b      add   di, 0x50
│       └─< 0000:0f2e      loop  0xf22
│           0000:0f30      mov   ax, 0xfc3f
│           0000:0f33      call  fcn.00000f37                          ; fcn.00000f37
└           0000:0f36      ret
```

### Function 0x00000f37
```asm
; XREFS: CALL 0x00000eb6  CALL 0x00000ed0  CALL 0x00000edc  
            ; XREFS: CALL 0x00000f0e  CALL 0x00000f19  CALL 0x00000f33  
┌ fcn.00000f37();
│           0000:0f37      stosb byte es:[di], al
│           0000:0f38      mov   al, 0xff
│           0000:0f3a      mov   cx, 0x18
│           0000:0f3d      rep   stosb byte es:[di], al
│           0000:0f3f      mov   al, ah
│           0000:0f41      stosb byte es:[di], al
└           0000:0f42      ret
```

### Function 0x00000f81
```asm
; CALL XREFS from fcn.00000f37 @ +0x32, +0x3a
┌ fcn.00000f81(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0f81      push  ax                                    ; arg1
│           0000:0f82      mov   bl, al
│           0000:0f84      mov   al, 0x2f                              ; '/'
│           0000:0f86      mul   bl
│           0000:0f88      add   ax, word cs:[0x4ab0]                  ; arg1
│           0000:0f8d      mov   si, ax                                ; arg1
│           0000:0f8f      shr   bl, 1
│           0000:0f91      sbb   di, di
│           0000:0f93      and   di, 0x2000
│           0000:0f97      mov   al, 0x50                              ; 'P'
│           0000:0f99      mul   bl
│           0000:0f9b      add   di, ax                                ; arg1
│           0000:0f9d      pop   ax
│           0000:0f9e      cmp   ax, 0x14
│       ┌─< 0000:0fa1      jae   0xfa8
│       │   0000:0fa3      mov   cx, 0x2f                              ; '/'
│      ┌──< 0000:0fa6      jmp   0xfb8
│      │└─> 0000:0fa8      mov   cx, 0x23                              ; '#'
│      │    0000:0fab      cmp   ax, 0x17
│      │┌─< 0000:0fae      jb    0xfb8
│      ││   0000:0fb0      cmp   ax, 0x1c
│     ┌───< 0000:0fb3      jb    0xfdd
│     │││   0000:0fb5      mov   cx, 0x21                              ; '!'
│     │││   ; CODE XREF from fcn.00000f81 @ 0xfa6
│     │└└─> 0000:0fb8      mov   word cs:[0x4aa8], 0
│     │ ┌─> 0000:0fbf      xor   ah, ah
│     │ ╎   0000:0fc1      mov   al, byte [si + 0x29dc]
│     │ ╎   0000:0fc5      mov   word cs:[0x4aa6], ax
│     │ ╎   0000:0fc9      mov   al, byte [si + 0x14ee]
│     │ ╎   0000:0fcd      mov   word cs:[0x4aa4], ax
│     │ ╎   0000:0fd1      lodsb al, byte [si]
│     │ ╎   0000:0fd2      mov   word cs:[0x4aa2], ax
│     │ ╎   0000:0fd6      call  fcn.00001a01                          ; fcn.00001a01
│     │ ╎   0000:0fd9      stosb byte es:[di], al
│     │ └─< 0000:0fda      loop  0xfbf
│     │     0000:0fdc      ret
│     └───> 0000:0fdd      mov   cx, 0x21                              ; '!'
│           0000:0fe0      mov   word cs:[0x4aa8], 0
│       ┌─> 0000:0fe7      xor   ah, ah
│       ╎   0000:0fe9      mov   al, byte [si + 0x29dc]
│       ╎   0000:0fed      mov   word cs:[0x4aa6], ax
│       ╎   0000:0ff1      mov   al, byte [si + 0x14ee]
│       ╎   0000:0ff5      mov   word cs:[0x4aa4], ax
│       ╎   0000:0ff9      lodsb al, byte [si]
│       ╎   0000:0ffa      mov   word cs:[0x4aa2], ax
│       ╎   0000:0ffe      call  fcn.00001a01                          ; fcn.00001a01
│       ╎   0000:1001      stosb byte es:[di], al
│       └─< 0000:1002      loop  0xfe7
│           0000:1004      xor   ah, ah
│           0000:1006      mov   al, byte [si + 0x29dc]
│           0000:100a      mov   word cs:[0x4aa6], ax
│           0000:100e      mov   al, byte [si + 0x14ee]
│           0000:1012      mov   word cs:[0x4aa4], ax
│           0000:1016      lodsb al, byte [si]
│           0000:1017      mov   word cs:[0x4aa2], ax
│           0000:101b      call  fcn.00001a01                          ; fcn.00001a01
│           0000:101e      and   al, 0xfc                              ; str.J20x0
│           0000:1020      and   byte es:[di], 3
│           0000:1024      or    byte es:[di], al
└           0000:1027      ret
```

### Function 0x00001066
```asm
; CALL XREFS from fcn.00000f81 @ +0xcd, +0xd5
┌ fcn.00001066(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:1066      push  ax                                    ; arg1
│           0000:1067      mov   bl, al
│           0000:1069      mov   al, 0x2f                              ; '/'
│           0000:106b      mul   bl
│           0000:106d      add   ax, 0x3cd                             ; arg1
│           0000:1070      add   ax, word cs:[0x4ab0]                  ; arg1
│           0000:1075      mov   si, ax                                ; arg1
│           0000:1077      add   bl, 0x14
│           0000:107a      shr   bl, 1
│           0000:107c      sbb   di, di
│           0000:107e      and   di, 0x2000
│           0000:1082      mov   al, 0x50                              ; 'P'
│           0000:1084      mul   bl
│           0000:1086      add   di, ax                                ; arg1
│           0000:1088      add   di, 0x21
│           0000:108b      pop   ax
│           0000:108c      cmp   ax, 0x5e
│           0000:108f      mov   cx, 0x2f                              ; '/'
│       ┌─< 0000:1092      jae   0x10bc
│       │   0000:1094      mov   cx, 7
│       │   0000:1097      mov   word cs:[0x4aa8], 0
│      ┌──> 0000:109e      mov   ax, word [si + 0x29dc]
│      ╎│   0000:10a2      mov   word cs:[0x4aa6], ax
│      ╎│   0000:10a6      mov   ax, word [si + 0x14ee]
│      ╎│   0000:10aa      mov   word cs:[0x4aa4], ax
│      ╎│   0000:10ae      lodsw ax, word [si]                         ; int16_t arg1
│      ╎│   0000:10af      mov   word cs:[0x4aa2], ax
│      ╎│   0000:10b3      call  fcn.00001a01                          ; fcn.00001a01
│      ╎│   0000:10b6      stosw word es:[di], ax
│      └──< 0000:10b7      loop  0x109e
│       │   0000:10b9      mov   cx, 0x21                              ; '!'
│       └─> 0000:10bc      xor   al, al
│           0000:10be      rep   stosb byte es:[di], al
└           0000:10c0      ret
```

### Function 0x00001a01
```asm
; XREFS: CALL 0x0000006c  CALL 0x000000b6  CALL 0x00000122  
            ; XREFS: CALL 0x00000411  CALL 0x00000618  CALL 0x00000694  
            ; XREFS: CALL 0x000006e0  CALL 0x000007e4  CALL 0x0000080e  
            ; XREFS: CALL 0x00000b6d  CALL 0x00000e39  CALL 0x00000e61  
            ; XREFS: CALL 0x00000e85  CALL 0x00000eab  CALL 0x00000fd6  
            ; XREFS: CALL 0x00000ffe  CALL 0x0000101b  CALL 0x000010b3  
┌ fcn.00001a01(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:1a01      push  cx                                    ; arg4
│           0000:1a02      push  si
│           0000:1a03      mov   si, word cs:[0x4aa0]
│           0000:1a08      mov   cx, 8
│       ┌─> 0000:1a0b      xor   bx, bx
│       ╎   0000:1a0d      rol   word cs:[0x4aa8], 1
│       ╎   0000:1a12      adc   bx, bx
│       ╎   0000:1a14      rol   word cs:[0x4aa6], 1
│       ╎   0000:1a19      adc   bx, bx
│       ╎   0000:1a1b      rol   word cs:[0x4aa4], 1
│       ╎   0000:1a20      adc   bx, bx
│       ╎   0000:1a22      rol   word cs:[0x4aa2], 1
│       ╎   0000:1a27      adc   bx, bx
│       ╎   0000:1a29      rol   word cs:[0x4aa8], 1
│       ╎   0000:1a2e      adc   bx, bx
│       ╎   0000:1a30      rol   word cs:[0x4aa6], 1
│       ╎   0000:1a35      adc   bx, bx
│       ╎   0000:1a37      rol   word cs:[0x4aa4], 1
│       ╎   0000:1a3c      adc   bx, bx
│       ╎   0000:1a3e      rol   word cs:[0x4aa2], 1
│       ╎   0000:1a43      adc   bx, bx
│       ╎   0000:1a45      add   ax, ax                                ; arg1
│       ╎   0000:1a47      add   ax, ax                                ; arg1
│       ╎   0000:1a49      or    al, byte cs:[bx + si]
│       └─< 0000:1a4c      loop  0x1a0b
│           0000:1a4e      pop   si
│           0000:1a4f      pop   cx
└           0000:1a50      ret
```

## Cross-References (callers)
```json
  0x000001a4:
[{"from":232,"to":420,"type":"CALL"},{"from":348,"to":420,"type":"CALL"},{"from":357,"to":420,"type":"CALL"},{"from":406,"to":420,"type":"CALL"},{"from":415,"to":420,"type":"CALL"}]
  0x0000032c:
[{"from":793,"to":812,"type":"CALL"}]
  0x000005ac:
[{"from":1283,"to":1452,"type":"CALL"}]
  0x000005cd:
[{"from":1421,"to":1485,"type":"CALL"}]
  0x000005ee:
[{"from":1364,"to":1518,"type":"CALL"}]
  0x00000712:
[{"from":1791,"to":1810,"type":"CALL"}]
  0x000008e3:
[{"from":2099,"to":2275,"type":"CALL"},{"from":2117,"to":2275,"type":"CALL"},{"from":2132,"to":2275,"type":"CALL"},{"from":2150,"to":2275,"type":"CALL"},{"from":2182,"to":2275,"type":"CALL"},{"from":2209,"to":2275,"type":"CALL"},{"from":2230,"to":2275,"type":"CALL"},{"from":2257,"to":2275,"type":"CALL"}]
  0x00000bd4:
[{"from":2996,"to":3028,"type":"CALL"}]
  0x00000cbd:
[{"from":3181,"to":3261,"type":"CALL"}]
  0x00000cd3:
[{"from":3207,"to":3283,"type":"CALL"},{"from":3258,"to":3283,"type":"CALL"}]
  0x00000d0a:
[{"from":3212,"to":3338,"type":"CALL"},{"from":3261,"to":3338,"type":"CALL"},{"from":3285,"to":3338,"type":"CALL"}]
  0x00000e1a:
[{"from":3533,"to":3610,"type":"CALL"},{"from":3589,"to":3610,"type":"CALL"}]
  0x00000e40:
[{"from":3528,"to":3648,"type":"CALL"},{"from":3584,"to":3648,"type":"CALL"}]
  0x00000eb2:
[{"from":3447,"to":3762,"type":"CALL"},{"from":3457,"to":3762,"type":"CALL"}]
  0x00000f37:
[{"from":3766,"to":3895,"type":"CALL"},{"from":3792,"to":3895,"type":"CALL"},{"from":3804,"to":3895,"type":"CALL"},{"from":3854,"to":3895,"type":"CALL"},{"from":3865,"to":3895,"type":"CALL"},{"from":3891,"to":3895,"type":"CALL"}]
  0x00000f81:
[{"from":3945,"to":3969,"type":"CALL"},{"from":3953,"to":3969,"type":"CALL"}]
  0x00001066:
[{"from":4174,"to":4198,"type":"CALL"},{"from":4182,"to":4198,"type":"CALL"}]
  0x00001a01:
[{"from":108,"to":6657,"type":"CALL"},{"from":182,"to":6657,"type":"CALL"},{"from":290,"to":6657,"type":"CALL"},{"from":1041,"to":6657,"type":"CALL"},{"from":1560,"to":6657,"type":"CALL"},{"from":1684,"to":6657,"type":"CALL"},{"from":1760,"to":6657,"type":"CALL"},{"from":2020,"to":6657,"type":"CALL"},{"from":2062,"to":6657,"type":"CALL"},{"from":2925,"to":6657,"type":"CALL"},{"from":3641,"to":6657,"type":"CALL"},{"from":3681,"to":6657,"type":"CALL"},{"from":3717,"to":6657,"type":"CALL"},{"from":3755,"to":6657,"type":"CALL"},{"from":4054,"to":6657,"type":"CALL"},{"from":4094,"to":6657,"type":"CALL"},{"from":4123,"to":6657,"type":"CALL"},{"from":4275,"to":6657,"type":"CALL"}]
```