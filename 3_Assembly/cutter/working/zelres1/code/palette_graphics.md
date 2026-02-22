# PALETTE_GRAPHICS - Analysis

**Source:** `chunk_05.bin`  
**Size:** 8.5 KB  
**Functions:** 23  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    1 15           fcn.00000000
0x000001b8    8 133          fcn.000001b8
0x00000327    1 9            fcn.00000327
0x0000059a    3 27           fcn.0000059a
0x000005b5    3 27           fcn.000005b5
0x000005d0    5 75           fcn.000005d0
0x00000757    8 97           fcn.00000757
0x000009c8    1 100          fcn.000009c8
0x00000a2c    7 55           fcn.00000a2c
0x00000d03    9 122          fcn.00000d03
0x00000dee    1 13           fcn.00000dee
0x00000dfb    2 37           fcn.00000dfb
0x00000e20    1 25           fcn.00000e20
0x00000f2f    3 56           fcn.00000f2f
0x00000f67    7 140          fcn.00000f67
0x00000ff3    7 133          fcn.00000ff3
0x00001078    1 12           fcn.00001078
0x000010c2   11 164          fcn.000010c2
0x000011a4    5 101          fcn.000011a4
0x00001225    9 104          fcn.00001225
0x0000146d    3 66           fcn.0000146d
0x000014af    1 33           fcn.000014af
0x000014e7    1 20           fcn.000014e7
```

## Strings
```
nth      paddr      vaddr len size section type   string                                       
-----------------------------------------------------------------------------------------------
  0 0x00000015 0x00000015   5    5         ascii  374O6
  1 0x00000027 0x00000027   5    5         ascii  <y=5>
  2 0x00000035 0x00000035   4    5         ascii  DPSQ
  3 0x00000171 0x00000171   5    5         ascii  \vEw2.
  4 0x0000019c 0x0000019c   5    5         ascii  \vE92.
  5 0x000001d4 0x000001d4   4    4         ascii  QVW.
  6 0x00000229 0x00000229   4    4         ascii  _^Y.
  7 0x000002ba 0x000002ba   5    7         utf8   Y_À \b blocks=Basic Latin,Latin-1 Supplement
  8 0x000002e7 0x000002e7   5    5         ascii  t9VW2
  9 0x00000454 0x00000454   7    8         ibm037 {¡¡uuaB
 10 0x00000476 0x00000476   4    5         ascii  D\r:D
 11 0x00000500 0x00000500   4    4         ascii  #\r^.
 12 0x00000599 0x00000599   5    5         ascii  \fVQVQ
 13 0x000005b5 0x000005b5   4    4         ascii  WQWQ
 14 0x00000604 0x00000604   4    5         ascii  [&\tE
 15 0x000007d4 0x000007d4   5    6         ibm037 3uaF>
 16 0x00000839 0x00000839   4    5         ascii  t\f&!
 17 0x0000083f 0x0000083f   4    5         ascii  ,\f&\t
 18 0x00000845 0x00000845   5    6         ascii  h\f&!E
 19 0x0000084d 0x0000084d   4    5         ascii  \f&\tE
 20 0x00000853 0x00000853   5    6         ascii  Z\f&!E
 21 0x0000085b 0x0000085b   4    5         ascii  \f&\tE
 22 0x00000861 0x00000861   5    6         ascii  L\f&!E
 23 0x00000869 0x00000869   4    5         ascii  \f&\tE
 24 0x000008ae 0x000008ae   4    5         ascii  \f&!E
 25 0x000008b5 0x000008b5   4    5         ascii  \v&\tE
 26 0x000008bc 0x000008bc   4    5         ascii  \v&!E
 27 0x000008c3 0x000008c3   4    5         ascii  \v&\tE
 28 0x000008d6 0x000008d6   4    5         ascii  \v&!E
 29 0x000008dd 0x000008dd   4    5         ascii  \v&\tE
 30 0x00000a6f 0x00000a6f   4    5         ibm037 dddd
 31 0x00000a77 0x00000a77   4    5         ibm037 dddM
 32 0x00000a9f 0x00000a9f   4    4         ascii  !!!!
 33 0x00000aa7 0x00000aa7   4    4         ascii  !!!!
 34 0x00000ab7 0x00000ab7   4    5         ibm037 Mddd
 35 0x00000abf 0x00000abf   4    5         ibm037 dddd
 36 0x00000ae7 0x00000ae7   4    4         ascii  +!!!
 37 0x00000aef 0x00000aef   4    4         ascii  !!!!
 38 0x00000b0b 0x00000b0b   4    4         ascii  \a\a\a\a
 39 0x00000b9b 0x00000b9b   4    5         ascii  \n\t\b\a
 40 0x00000bfe 0x00000bfe  15   16         ascii  ;\r:\f9\v8\n7\t6\b5\a4
 41 0x00000c23 0x00000c23   4    4         ascii  \bESQ
 42 0x00000ce6 0x00000ce6   4    4         ascii  ^[Y.
 43 0x00000d20 0x00000d20   4    5         ascii  \vE.8
 44 0x00000d26 0x00000d26   4    4         ascii  EsL.
 45 0x00000d5b 0x00000d5b   4    5         ascii  \fE.8
 46 0x00000d64 0x00000d64   4    5         ibm037 vvcÕ
 47 0x00000ee2 0x00000ee2   4    5         ascii  r\n=q
 48 0x00000f13 0x00000f13   4    5         ascii  r\n=q
 49 0x00000f63 0x00000f63   6    7         ibm037 ¿SLC¾\v
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0000      aad   0x21
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           0000:0004      test  word [si + 0x32], 0x8830
│           0000:0009      xor   ah, ah
│           ; DATA XREFS from fcn.00000f67 @ 0xf67, 0xfce
│           0000:000b      xor   byte [bx + di], ah                    ; arg3
│           ; DATA XREF from fcn.00000a2c @ +0x2b1
│           ; DATA XREF from fcn.00000ff3 @ 0x1036
│           0000:000d      inc   dx                                    ; arg2
│           ; DATA XREF from fcn.00000a2c @ +0x1d0
│           ; DATA XREFS from fcn.00000ff3 @ 0x102a, 0x1044
└           0000:000e      int3
```

### Function 0x000001b8
```asm
; CALL XREFS from str.y_5 @ +0xd4, +0x158, +0x161, +0x183, +0x18c
┌ fcn.000001b8(int16_t arg3, int16_t arg4);
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:01b8      mov   byte cs:[0x4506], 0
│           0000:01be      mov   ax, 0xa000
│           0000:01c1      mov   es, ax
│           0000:01c3      mov   bp, 8
│       ┌─> 0000:01c6      mov   al, byte cs:[0x4506]
│       ╎   0000:01ca      mov   byte cs:[0x4505], al
│       ╎   0000:01ce      mov   byte cs:[0xff1a], 0
│       ╎   0000:01d4      push  cx                                    ; arg4
│       ╎   0000:01d5      push  si
│       ╎   0000:01d6      push  di
│      ┌──> 0000:01d7      mov   bl, byte cs:[0x4505]
│      ╎╎   0000:01dc      and   bx, 7                                 ; arg3
│      ╎╎   0000:01df      mov   bl, byte cs:[bx + 0x32b9]             ; arg3
│      ╎╎   0000:01e4      call  word cs:[0x450b]
│      ╎╎   0000:01e9      inc   byte cs:[0x4505]
│      ╎╎   0000:01ee      mov   al, ch
│      ╎╎   0000:01f0      xor   ah, ah
│      ╎╎   0000:01f2      add   ax, ax
│      ╎╎   0000:01f4      add   ax, ax
│      ╎╎   0000:01f6      add   si, ax
│      ╎╎   0000:01f8      add   di, 0x140
│      ╎╎   0000:01fc      dec   cl
│     ┌───< 0000:01fe      je    0x229
│     │╎╎   0000:0200      mov   bl, byte cs:[0x4505]
│     │╎╎   0000:0205      and   bx, 7                                 ; arg3
│     │╎╎   0000:0208      mov   bl, byte cs:[bx + 0x32c1]             ; arg3
│     │╎╎   0000:020d      call  word cs:[0x450b]
│     │╎╎   0000:0212      inc   byte cs:[0x4505]
│     │╎╎   0000:0217      mov   al, ch
│     │╎╎   0000:0219      xor   ah, ah
│     │╎╎   0000:021b      add   ax, ax
│     │╎╎   0000:021d      add   ax, ax
│     │╎╎   0000:021f      add   si, ax
│     │╎╎   0000:0221      add   di, 0x140
│     │╎╎   0000:0225      dec   cl
│     │└──< 0000:0227      jne   0x1d7
│     └───> 0000:0229      pop   di
│       ╎   0000:022a      pop   si
│       ╎   0000:022b      pop   cx
│       ╎   0000:022c      inc   byte cs:[0x4506]
│      ┌──> 0000:0231      cmp   byte cs:[0xff1a], 0x14
│      └──< 0000:0237      jb    0x231
│       ╎   0000:0239      dec   bp
│       └─< 0000:023a      jne   0x1c6
└           0000:023c      ret
```

### Function 0x00000327
```asm
; CALL XREFS from fcn.000001b8 @ +0x146, +0x14c, +0x153, +0x15a
┌ fcn.00000327();
│           0000:0327      add   al, al
│           0000:0329      sbb   dl, dl
│           0000:032b      add   al, al
│           0000:032d      sbb   dh, dh
└           0000:032f      ret
```

### Function 0x0000059a
```asm
; CALL XREF from fcn.00000327 @ +0x1a5
┌ fcn.0000059a(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:059a      push  si
│           0000:059b      push  cx                                    ; arg4
│       ┌─> 0000:059c      push  si
│       ╎   0000:059d      push  cx                                    ; arg4
│       ╎   0000:059e      mov   cl, ch
│       ╎   0000:05a0      xor   ch, ch
│       ╎   0000:05a2      add   cx, cx                                ; arg4
│       ╎   0000:05a4      add   cx, cx                                ; arg4
│       ╎   0000:05a6      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:05a8      pop   cx
│       ╎   0000:05a9      pop   si
│       ╎   0000:05aa      add   si, 0x140
│       ╎   0000:05ae      dec   cl
│       └─< 0000:05b0      jne   0x59c
│           0000:05b2      pop   cx
│           0000:05b3      pop   si
└           0000:05b4      ret
```

### Function 0x000005b5
```asm
; CALL XREF from str.. @ +0x76
┌ fcn.000005b5(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:05b5      push  di
│           0000:05b6      push  cx                                    ; arg4
│       ┌─> 0000:05b7      push  di
│       ╎   0000:05b8      push  cx                                    ; arg4
│       ╎   0000:05b9      mov   cl, ch
│       ╎   0000:05bb      xor   ch, ch
│       ╎   0000:05bd      add   cx, cx                                ; arg4
│       ╎   0000:05bf      add   cx, cx                                ; arg4
│       ╎   0000:05c1      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:05c3      pop   cx
│       ╎   0000:05c4      pop   di
│       ╎   0000:05c5      add   di, 0x140
│       ╎   0000:05c9      dec   cl
│       └─< 0000:05cb      jne   0x5b7
│           0000:05cd      pop   cx
│           0000:05ce      pop   di
└           0000:05cf      ret
```

### Function 0x000005d0
```asm
; CALL XREF from str.. @ +0x3d
┌ fcn.000005d0(int16_t arg1, int16_t arg2, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg4 @ cx
│           0000:05d0      push  di
│           0000:05d1      push  cx                                    ; arg4
│           0000:05d2      mov   al, ch
│           0000:05d4      mul   cl
│           0000:05d6      mov   bx, ax                                ; arg1
│           0000:05d8      mov   word cs:[0x4501], 0
│       ┌─> 0000:05df      push  di
│       ╎   0000:05e0      push  cx                                    ; arg4
│       ╎   0000:05e1      mov   cl, ch
│       ╎   0000:05e3      xor   ch, ch
│      ┌──> 0000:05e5      xor   al, al
│      ╎╎   0000:05e7      mov   ah, byte [bx + si]
│      ╎╎   0000:05e9      mov   word cs:[0x44fd], ax                  ; arg1
│      ╎╎   0000:05ed      mov   ah, byte [si]
│      ╎╎   0000:05ef      mov   word cs:[0x44fb], ax                  ; arg1
│      ╎╎   0000:05f3      mov   word cs:[0x44ff], ax                  ; arg1
│      ╎╎   0000:05f7      inc   si
│      ╎╎   0000:05f8      push  bx
│      ╎╎   0000:05f9      call  fcn.0000146d                          ; fcn.0000146d
│      ╎╎   0000:05fc      pop   bx
│      ╎╎   0000:05fd      or    word es:[di], ax
│      ╎╎   0000:0600      push  bx
│      ╎╎   0000:0601      call  fcn.0000146d                          ; fcn.0000146d
│      ╎╎   0000:0604      pop   bx
│      ╎╎   0000:0605      or    word es:[di + 2], ax
│      ╎╎   0000:0609      add   di, 4
│      └──< 0000:060c      loop  0x5e5
│       ╎   0000:060e      pop   cx
│       ╎   0000:060f      pop   di
│       ╎   0000:0610      add   di, 0x140
│       ╎   0000:0614      dec   cl
│       └─< 0000:0616      jne   0x5df
│           0000:0618      pop   cx
│           0000:0619      pop   di
└           0000:061a      ret
```

### Function 0x00000757
```asm
; CALL XREF from fcn.000005d0 @ +0x174
┌ fcn.00000757(int16_t arg1, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0757      mov   ds, word cs:[0xff2c]
│           0000:075c      mov   dx, cs
│           0000:075e      add   dx, 0x2000
│           0000:0762      mov   es, dx
│           0000:0764      xor   ah, ah
│           ; CODE XREF from fcn.00000757 @ 0x76c
│       ┌─> 0000:0766      sub   al, 0x28
│      ┌──< 0000:0768      jb    0x76e
│      │╎   0000:076a      inc   ah
│      │└─< 0000:076c      jmp   0x766
│      └──> 0000:076e      add   al, 0x28
│           0000:0770      mov   cl, al
│           0000:0772      mov   al, ah
│           0000:0774      xor   ah, ah
│           0000:0776      mov   dx, 0x140
│           0000:0779      mul   dx
│           0000:077b      xor   ch, ch
│           0000:077d      add   ax, cx                                ; arg4
│           0000:077f      add   ax, 0x4000                            ; arg1
│           0000:0782      push  ax                                    ; arg1
│           0000:0783      mov   dx, bx                                ; arg3
│           0000:0785      xor   dh, dh
│           0000:0787      mov   ax, 0x110
│           0000:078a      mul   dx
│           0000:078c      mov   dl, bh
│           0000:078e      xor   dh, dh
│           0000:0790      add   ax, dx
│           0000:0792      add   ax, 0
│           0000:0795      mov   di, ax
│           0000:0797      pop   si
│           0000:0798      mov   cx, 3
│       ┌─> 0000:079b      push  cx
│       ╎   0000:079c      push  di
│       ╎   0000:079d      push  si
│       ╎   0000:079e      mov   cx, 8
│      ┌──> 0000:07a1      movsb byte es:[di], byte ptr [si]
│      ╎╎   0000:07a2      add   di, 0x21
│      ╎╎   0000:07a5      add   si, 0x27                              ; str.y_5 ; "<y=5>\x8b>\x80@bA\U00000005B\xdeDPSQ\U0000001e\x8a\xc5\xf6\xe1\x8b\xe8\U00000006\U0000001f\x8b\xf7\x8c\xc8\U00000005"
│      └──< 0000:07a8      loop  0x7a1
│       ╎   0000:07aa      pop   si
│       ╎   0000:07ab      pop   di
│       ╎   0000:07ac      add   di, 0x1a90
│       ╎   0000:07b0      add   si, 0x640
│       ╎   0000:07b4      pop   cx
│       └─< 0000:07b5      loop  0x79b
└           0000:07b7      ret
```

### Function 0x000009c8
```asm
; XREFS: CALL 0x0000090c  CALL 0x0000091e  CALL 0x0000092f  
            ; XREFS: CALL 0x00000941  CALL 0x00000963  CALL 0x0000097e  
            ; XREFS: CALL 0x00000997  CALL 0x000009b2  
┌ fcn.000009c8(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:09c8      push  si
│           0000:09c9      dec   al
│           0000:09cb      xor   ah, ah
│           0000:09cd      add   ax, ax                                ; arg1
│           0000:09cf      add   ax, ax                                ; arg1
│           0000:09d1      add   ax, ax                                ; arg1
│           0000:09d3      add   ax, 0x3a5f                            ; int16_t arg1
│           0000:09d6      mov   si, ax                                ; arg1
│           0000:09d8      push  di
│           0000:09d9      mov   bh, byte cs:[0x4505]
│           0000:09de      call  fcn.00000a2c                          ; fcn.00000a2c
│           0000:09e1      call  fcn.0000146d                          ; fcn.0000146d
│           0000:09e4      stosw word es:[di], ax
│           0000:09e5      call  fcn.0000146d                          ; fcn.0000146d
│           0000:09e8      stosw word es:[di], ax
│           0000:09e9      add   di, 0x13c
│           0000:09ed      mov   bh, byte cs:[0x4505]
│           0000:09f2      ror   bh, 1
│           0000:09f4      call  fcn.00000a2c                          ; fcn.00000a2c
│           0000:09f7      call  fcn.0000146d                          ; fcn.0000146d
│           0000:09fa      stosw word es:[di], ax
│           0000:09fb      call  fcn.0000146d                          ; fcn.0000146d
│           0000:09fe      stosw word es:[di], ax
│           0000:09ff      add   di, 0x13c
│           0000:0a03      mov   bh, byte cs:[0x4505]
│           0000:0a08      call  fcn.00000a2c                          ; fcn.00000a2c
│           0000:0a0b      call  fcn.0000146d                          ; fcn.0000146d
│           0000:0a0e      stosw word es:[di], ax
│           0000:0a0f      call  fcn.0000146d                          ; fcn.0000146d
│           0000:0a12      stosw word es:[di], ax
│           0000:0a13      add   di, 0x13c
│           0000:0a17      mov   bh, byte cs:[0x4505]
│           0000:0a1c      ror   bh, 1
│           0000:0a1e      call  fcn.00000a2c                          ; fcn.00000a2c
│           0000:0a21      call  fcn.0000146d                          ; fcn.0000146d
│           0000:0a24      stosw word es:[di], ax
│           0000:0a25      call  fcn.0000146d                          ; fcn.0000146d
│           0000:0a28      stosw word es:[di], ax
│           0000:0a29      pop   di
│           0000:0a2a      pop   si
└           0000:0a2b      ret
```

### Function 0x00000a2c
```asm
; CALL XREFS from fcn.000009c8 @ 0x9de, 0x9f4, 0xa08, 0xa1e
┌ fcn.00000a2c(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0a2c      mov   word [0x44fb], 0                      ; [0x44fb:2]=0xffff
│           0000:0a32      mov   word [0x4501], 0                      ; [0x4501:2]=0xffff
│           0000:0a38      mov   ah, byte [si + 4]
│           0000:0a3b      mov   word [0x44ff], ax                     ; [0x44ff:2]=0xffff ; arg1
│           0000:0a3e      mov   word [0x44fd], ax                     ; [0x44fd:2]=0xffff ; arg1
│           0000:0a41      lodsb al, byte [si]
│           0000:0a42      and   al, bh
│           0000:0a44      mov   ah, al
│           0000:0a46      mov   al, byte [0x4506]                     ; [0x4506:1]=255
│           0000:0a49      shr   al, 1
│       ┌─< 0000:0a4b      jae   0xa51
│       │   0000:0a4d      or    word [0x44fb], ax                     ; [0x44fb:2]=0xffff ; arg1
│       └─> 0000:0a51      shr   al, 1
│       ┌─< 0000:0a53      jae   0xa59
│       │   0000:0a55      or    word [0x44fd], ax                     ; [0x44fd:2]=0xffff ; arg1
│       └─> 0000:0a59      shr   al, 1
│       ┌─< 0000:0a5b      jb    0xa5e
│       │   0000:0a5d      ret
│       └─> 0000:0a5e      or    word [0x44ff], ax                     ; [0x44ff:2]=0xffff ; arg1
└           0000:0a62      ret
```

### Function 0x00000d03
```asm
; CALL XREF from fcn.00000a2c @ +0x2b7
┌ fcn.00000d03(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0d03      push  bx                                    ; arg3
│           0000:0d04      mov   bl, byte cs:[0x4506]
│           0000:0d09      add   bl, 0x10
│           0000:0d0c      mov   bh, 4
│           0000:0d0e      call  fcn.000014e7                          ; fcn.000014e7
│           0000:0d11      mov   di, ax
│           0000:0d13      pop   bx
│           0000:0d14      cmp   byte cs:[0x4506], bl
│       ┌─< 0000:0d19      jb    0xd75
│       │   0000:0d1b      mov   al, bl
│       │   0000:0d1d      add   al, byte cs:[0x450b]
│       │   0000:0d22      cmp   byte cs:[0x4506], al
│      ┌──< 0000:0d27      jae   0xd75
│      ││   0000:0d29      mov   al, byte cs:[0x4506]
│      ││   0000:0d2d      sub   al, bl
│      ││   0000:0d2f      mul   byte cs:[0x450c]
│      ││   0000:0d34      add   ax, ax
│      ││   0000:0d36      add   ax, ax
│      ││   0000:0d38      add   si, ax
│      ││   0000:0d3a      mov   byte cs:[0x4505], 0
│      ││   0000:0d40      mov   cx, 0x48                              ; 'H'
│     ┌───> 0000:0d43      push  cx
│     ╎││   0000:0d44      mov   word es:[di], 0
│     ╎││   0000:0d49      mov   word es:[di + 2], 0
│     ╎││   0000:0d4f      cmp   byte cs:[0x4505], bh
│    ┌────< 0000:0d54      jb    0xd69
│    │╎││   0000:0d56      mov   al, bh
│    │╎││   0000:0d58      add   al, byte cs:[0x450c]
│    │╎││   0000:0d5d      cmp   byte cs:[0x4505], al
│   ┌─────< 0000:0d62      jae   0xd69
│   ││╎││   0000:0d64      movsw word es:[di], word ptr [si]
│   ││╎││   0000:0d65      movsw word es:[di], word ptr [si]
│   ││╎││   0000:0d66      sub   di, 4
│   └└────> 0000:0d69      add   di, 4
│     ╎││   0000:0d6c      inc   byte cs:[0x4505]
│     ╎││   0000:0d71      pop   cx
│     └───< 0000:0d72      loop  0xd43
│      ││   0000:0d74      ret
│      └└─> 0000:0d75      mov   cx, 0x90
│           0000:0d78      xor   ax, ax
│           0000:0d7a      rep   stosw word es:[di], ax
└           0000:0d7c      ret
```

### Function 0x00000dee
```asm
; CALL XREF from fcn.00000d03 @ +0x9b
┌ fcn.00000dee();
│           0000:0dee      call  fcn.00000e20                          ; fcn.00000e20
│           0000:0df1      mov   cx, bx
│           0000:0df3      add   cx, 4
│           0000:0df6      mov   al, 0xff
│           0000:0df8      rep   stosb byte es:[di], al
└           0000:0dfa      ret
```

### Function 0x00000dfb
```asm
; CALL XREFS from fcn.00000d03 @ +0xab, +0xe8
┌ fcn.00000dfb(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│       ┌─> 0000:0dfb      push  cx                                    ; arg4
│       ╎   0000:0dfc      push  di
│       ╎   0000:0dfd      call  fcn.00000e20                          ; fcn.00000e20
│       ╎   ; DATA XREF from fcn.00000a2c @ +0x110
│       ╎   0000:0e00      mov   byte es:[di], 0xff                    ; [0xff:1]=195
│       ╎   0000:0e04      inc   di
│       ╎   0000:0e05      mov   cx, bx
│       ╎   0000:0e07      add   cx, 2
│       ╎   0000:0e0a      xor   al, al
│       ╎   0000:0e0c      rep   stosb byte es:[di], al
│       ╎   0000:0e0e      mov   byte es:[di], 0xff                    ; [0xff:1]=195
│       ╎   0000:0e12      pop   di
│       ╎   0000:0e13      inc   byte cs:[0x4506]
│       ╎   0000:0e18      add   di, 0x140
│       ╎   0000:0e1c      pop   cx
│       └─< 0000:0e1d      loop  fcn.00000dfb
└           0000:0e1f      ret
```

### Function 0x00000e20
```asm
; CALL XREF from fcn.00000d03 @ +0xb0
            ; CALL XREF from fcn.00000dee @ 0xdee
            ; CALL XREF from fcn.00000dfb @ 0xdfd
┌ fcn.00000e20();
│           0000:0e20      mov   word es:[di - 7], 0x202               ; [0x202:2]=0x51e
│           0000:0e26      mov   word es:[di - 5], 0x202               ; [0x202:2]=0x51e
│           0000:0e2c      mov   word es:[di - 3], 0x202               ; [0x202:2]=0x51e
│           0000:0e32      mov   word es:[di - 1], 0x202               ; [0x202:2]=0x51e
└           0000:0e38      ret
```

### Function 0x00000f2f
```asm
; CALL XREFS from fcn.00000e20 @ +0xce, +0xff
┌ fcn.00000f2f(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0f2f      mov   cx, 0x28                              ; '('
│           0000:0f32      mov   word cs:[0x4501], 0
│       ┌─> 0000:0f39      mov   ax, word [si + 0x5500]
│       ╎   0000:0f3d      xchg  al, ah
│       ╎   0000:0f3f      mov   word cs:[0x44ff], ax
│       ╎   0000:0f43      mov   ax, word [si + 0x2a80]
│       ╎   0000:0f47      xchg  al, ah
│       ╎   0000:0f49      mov   word cs:[0x44fd], ax
│       ╎   0000:0f4d      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0f4e      xchg  al, ah
│       ╎   0000:0f50      mov   word cs:[0x44fb], ax
│       ╎   0000:0f54      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0f57      stosw word es:[di], ax
│       ╎   0000:0f58      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0f5b      stosw word es:[di], ax
│       ╎   0000:0f5c      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0f5f      stosw word es:[di], ax
│       ╎   0000:0f60      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0f63      stosw word es:[di], ax
│       └─< 0000:0f64      loop  0xf39
└           0000:0f66      ret
```

### Function 0x00000f67
```asm
; CALL XREFS from fcn.00000e20 @ +0xc9, +0xfa
┌ fcn.00000f67(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0f67      mov   cx, 0xb
│           0000:0f6a      mov   word cs:[0x4501], 0
│       ┌─> 0000:0f71      mov   ah, byte [si + 0x5500]
│       ╎   0000:0f75      mov   word cs:[0x44ff], ax                  ; arg1
│       ╎   0000:0f79      mov   ah, byte [si + 0x2a80]
│       ╎   0000:0f7d      mov   word cs:[0x44fd], ax                  ; arg1
│       ╎   0000:0f81      lodsb al, byte [si]
│       ╎   0000:0f82      xchg  al, ah
│       ╎   0000:0f84      mov   word cs:[0x44fb], ax                  ; arg1
│       ╎   0000:0f88      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0f8b      stosw word es:[di], ax
│       ╎   0000:0f8c      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0f8f      stosw word es:[di], ax
│       └─< 0000:0f90      loop  0xf71
│           0000:0f92      add   si, 0x18
│           0000:0f95      add   di, 0x60
│           0000:0f98      mov   cx, 5
│       ┌─> 0000:0f9b      mov   ax, word [si + 0x5500]
│       ╎   0000:0f9f      xchg  al, ah
│       ╎   0000:0fa1      mov   word cs:[0x44ff], ax
│       ╎   0000:0fa5      mov   ax, word [si + 0x2a80]
│       ╎   0000:0fa9      xchg  al, ah
│       ╎   0000:0fab      mov   word cs:[0x44fd], ax
│       ╎   0000:0faf      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0fb0      xchg  al, ah
│       ╎   0000:0fb2      mov   word cs:[0x44fb], ax
│       ╎   0000:0fb6      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0fb9      stosw word es:[di], ax
│       ╎   0000:0fba      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0fbd      stosw word es:[di], ax
│       ╎   0000:0fbe      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0fc1      stosw word es:[di], ax
│       ╎   0000:0fc2      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0fc5      stosw word es:[di], ax
│       └─< 0000:0fc6      loop  0xf9b
│           0000:0fc8      add   si, 0x18
│           0000:0fcb      add   di, 0x60
│           0000:0fce      mov   cx, 0xb
│       ┌─> 0000:0fd1      mov   ah, byte [si + 0x5500]
│       ╎   0000:0fd5      mov   word cs:[0x44ff], ax
│       ╎   0000:0fd9      mov   ah, byte [si + 0x2a80]
│       ╎   0000:0fdd      mov   word cs:[0x44fd], ax
│       ╎   0000:0fe1      lodsb al, byte [si]
│       ╎   0000:0fe2      xchg  al, ah
│       ╎   0000:0fe4      mov   word cs:[0x44fb], ax
│       ╎   0000:0fe8      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0feb      stosw word es:[di], ax
│       ╎   0000:0fec      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:0fef      stosw word es:[di], ax
│       └─< 0000:0ff0      loop  0xfd1
└           0000:0ff2      ret
```

### Function 0x00000ff3
```asm
; CALL XREFS from fcn.00000e20 @ +0x7f, +0x89
┌ fcn.00000ff3();
│           0000:0ff3      push  di
│           0000:0ff4      mov   ax, 0xfc3f
│           0000:0ff7      call  fcn.00001078                          ; fcn.00001078
│           0000:0ffa      add   di, 0x36
│           0000:0ffd      mov   cx, 0x5b                              ; '['
│           ; DATA XREF from fcn.000005d0 @ +0x147
│       ┌─> 0000:1000      mov   byte es:[di], 0x30                    ; '0'
│       ╎                                                              ; [0x30:1]=98
│       ╎   0000:1004      mov   byte es:[di + 0x19], 0xc              ; [0xc:1]=33
│       ╎   0000:1009      add   di, 0x50
│       └─< 0000:100c      loop  0x1000
│           0000:100e      mov   ax, 0xfc3f
│           0000:1011      call  fcn.00001078                          ; fcn.00001078
│           0000:1014      pop   di
│           0000:1015      add   di, 0x2a80
│           0000:1019      push  di
│           0000:101a      mov   ax, 0xfd7f
│           0000:101d      call  fcn.00001078                          ; fcn.00001078
│           0000:1020      add   di, 0x36
│           0000:1023      mov   cx, 0x2d                              ; '-'
│       ┌─> 0000:1026      mov   byte es:[di], 0xb0                    ; [0xb0:1]=237
│       ╎   0000:102a      mov   byte es:[di + 0x19], 0xe              ; [0xe:1]=204
│       ╎   0000:102f      add   di, 0x50
│       ╎   0000:1032      mov   byte es:[di], 0x70                    ; 'p'
│       ╎                                                              ; [0x70:1]=232
│       ╎   0000:1036      mov   byte es:[di + 0x19], 0xd              ; [0xd:1]=66
│       ╎   0000:103b      add   di, 0x50
│       └─< 0000:103e      loop  0x1026
│           0000:1040      mov   byte es:[di], 0xb0                    ; [0xb0:1]=237
│           0000:1044      mov   byte es:[di + 0x19], 0xe              ; [0xe:1]=204
│           0000:1049      add   di, 0x50
│           0000:104c      mov   ax, 0xfd7f
│           0000:104f      call  fcn.00001078                          ; fcn.00001078
│           0000:1052      pop   di
│           0000:1053      add   di, 0x2a80
│           0000:1057      mov   ax, 0xfc3f
│           0000:105a      call  fcn.00001078                          ; fcn.00001078
│           0000:105d      add   di, 0x36
│           0000:1060      mov   cx, 0x5b                              ; '['
│       ┌─> 0000:1063      mov   byte es:[di], 0x30                    ; '0'
│       ╎                                                              ; [0x30:1]=98
│       ╎   0000:1067      mov   byte es:[di + 0x19], 0xc              ; [0xc:1]=33
│       ╎   0000:106c      add   di, 0x50
│       └─< 0000:106f      loop  0x1063
│           0000:1071      mov   ax, 0xfc3f
│           0000:1074      call  fcn.00001078                          ; fcn.00001078
└           0000:1077      ret
```

### Function 0x00001078
```asm
; XREFS: CALL 0x00000ff7  CALL 0x00001011  CALL 0x0000101d  
            ; XREFS: CALL 0x0000104f  CALL 0x0000105a  CALL 0x00001074  
┌ fcn.00001078();
│           0000:1078      stosb byte es:[di], al
│           0000:1079      mov   al, 0xff
│           0000:107b      mov   cx, 0x18
│           0000:107e      rep   stosb byte es:[di], al
│           0000:1080      mov   al, ah
│           0000:1082      stosb byte es:[di], al
└           0000:1083      ret
```

### Function 0x000010c2
```asm
; CALL XREFS from fcn.00001078 @ +0x32, +0x3a
┌ fcn.000010c2(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:10c2      push  ax                                    ; arg1
│           0000:10c3      mov   bl, al
│           0000:10c5      mov   al, 0x2f                              ; '/'
│           0000:10c7      mul   bl
│           0000:10c9      add   ax, word cs:[0x450d]                  ; int16_t arg3
│           0000:10ce      mov   si, ax                                ; arg1
│           0000:10d0      xor   bh, bh
│           0000:10d2      call  fcn.000014e7                          ; fcn.000014e7
│           0000:10d5      mov   di, ax
│           0000:10d7      pop   ax
│           0000:10d8      cmp   ax, 0x14
│       ┌─< 0000:10db      jae   0x10e2
│       │   0000:10dd      mov   cx, 0x2f                              ; '/'
│      ┌──< 0000:10e0      jmp   0x10f2
│      │└─> 0000:10e2      mov   cx, 0x23                              ; '#'
│      │    0000:10e5      cmp   ax, 0x17
│      │┌─< 0000:10e8      jb    0x10f2
│      ││   0000:10ea      cmp   ax, 0x1c
│     ┌───< 0000:10ed      jb    0x111b
│     │││   0000:10ef      mov   cx, 0x21                              ; '!'
│     │││   ; CODE XREF from fcn.000010c2 @ 0x10e0
│     │└└─> 0000:10f2      mov   word cs:[0x4501], 0
│     │ ┌─> 0000:10f9      mov   ah, byte [si + 0x29dc]
│     │ ╎   0000:10fd      mov   word cs:[0x44ff], ax
│     │ ╎   0000:1101      mov   ah, byte [si + 0x14ee]
│     │ ╎   0000:1105      mov   word cs:[0x44fd], ax
│     │ ╎   0000:1109      lodsb al, byte [si]
│     │ ╎   0000:110a      xchg  al, ah
│     │ ╎   0000:110c      mov   word cs:[0x44fb], ax
│     │ ╎   0000:1110      call  fcn.0000146d                          ; fcn.0000146d
│     │ ╎   0000:1113      stosw word es:[di], ax
│     │ ╎   0000:1114      call  fcn.0000146d                          ; fcn.0000146d
│     │ ╎   0000:1117      stosw word es:[di], ax
│     │ └─< 0000:1118      loop  0x10f9
│     │     0000:111a      ret
│     └───> 0000:111b      mov   cx, 0x21                              ; '!'
│           0000:111e      mov   word cs:[0x4501], 0
│       ┌─> 0000:1125      mov   ah, byte [si + 0x29dc]
│       ╎   0000:1129      mov   word cs:[0x44ff], ax
│       ╎   0000:112d      mov   ah, byte [si + 0x14ee]
│       ╎   0000:1131      mov   word cs:[0x44fd], ax
│       ╎   0000:1135      lodsb al, byte [si]
│       ╎   0000:1136      xchg  al, ah
│       ╎   0000:1138      mov   word cs:[0x44fb], ax
│       ╎   0000:113c      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:113f      stosw word es:[di], ax
│       ╎   0000:1140      call  fcn.0000146d                          ; fcn.0000146d
│       ╎   0000:1143      stosw word es:[di], ax
│       └─< 0000:1144      loop  0x1125
│           0000:1146      mov   ah, byte [si + 0x29dc]
│           0000:114a      mov   word cs:[0x44ff], ax
│           0000:114e      mov   ah, byte [si + 0x14ee]
│           0000:1152      mov   word cs:[0x44fd], ax
│           0000:1156      lodsb al, byte [si]
│           0000:1157      xchg  al, ah
│           0000:1159      mov   word cs:[0x44fb], ax
│           0000:115d      call  fcn.0000146d                          ; fcn.0000146d
│           0000:1160      stosw word es:[di], ax
│           0000:1161      call  fcn.0000146d                          ; fcn.0000146d
│           0000:1164      stosb byte es:[di], al
└           0000:1165      ret
```

### Function 0x000011a4
```asm
; CALL XREFS from fcn.000010c2 @ +0xca, +0xd2
┌ fcn.000011a4(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:11a4      push  ax                                    ; arg1
│           0000:11a5      mov   bl, al
│           0000:11a7      mov   al, 0x2f                              ; '/'
│           0000:11a9      mul   bl
│           0000:11ab      add   ax, 0x3cd                             ; arg1
│           0000:11ae      add   ax, word cs:[0x450d]                  ; int16_t arg3
│           0000:11b3      mov   si, ax                                ; arg1
│           0000:11b5      add   bl, 0x14
│           0000:11b8      mov   bh, 0x21                              ; '!'
│           0000:11ba      call  fcn.000014e7                          ; fcn.000014e7
│           0000:11bd      mov   di, ax
│           0000:11bf      pop   ax
│           0000:11c0      cmp   ax, 0x5e
│           0000:11c3      mov   cx, 0x2f                              ; '/'
│       ┌─< 0000:11c6      jae   0x1202
│       │   0000:11c8      mov   cx, 7
│       │   0000:11cb      mov   word cs:[0x4501], 0
│      ┌──> 0000:11d2      mov   ax, word [si + 0x29dc]
│      ╎│   0000:11d6      xchg  al, ah
│      ╎│   0000:11d8      mov   word cs:[0x44ff], ax
│      ╎│   0000:11dc      mov   ax, word [si + 0x14ee]
│      ╎│   0000:11e0      xchg  al, ah
│      ╎│   0000:11e2      mov   word cs:[0x44fd], ax
│      ╎│   0000:11e6      lodsw ax, word [si]                         ; int16_t arg1
│      ╎│   0000:11e7      xchg  al, ah
│      ╎│   0000:11e9      mov   word cs:[0x44fb], ax
│      ╎│   0000:11ed      call  fcn.0000146d                          ; fcn.0000146d
│      ╎│   0000:11f0      stosw word es:[di], ax
│      ╎│   0000:11f1      call  fcn.0000146d                          ; fcn.0000146d
│      ╎│   0000:11f4      stosw word es:[di], ax
│      ╎│   0000:11f5      call  fcn.0000146d                          ; fcn.0000146d
│      ╎│   0000:11f8      stosw word es:[di], ax
│      ╎│   0000:11f9      call  fcn.0000146d                          ; fcn.0000146d
│      ╎│   0000:11fc      stosw word es:[di], ax
│      └──< 0000:11fd      loop  0x11d2
│       │   0000:11ff      mov   cx, 0x21                              ; '!'
│       └─> 0000:1202      add   cx, cx
│           0000:1204      xor   ax, ax
│           0000:1206      rep   stosw word es:[di], ax
└           0000:1208      ret
```

### Function 0x00001225
```asm
; CALL XREF from fcn.00000327 @ +0x1d8
            ; CODE XREF from str.. @ +0x97
┌ fcn.00001225(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:1225      mov   dx, 0x30                              ; '0'
│           0000:1228      mul   dx
│           0000:122a      add   ax, 0x4289                            ; arg1
│           0000:122d      mov   si, ax                                ; arg1
│           0000:122f      mov   word [0x44f8], si                     ; [0x44f8:2]=0xffff
│           0000:1233      pushf
│           0000:1234      cli
│           0000:1235      mov   si, word [0x44f8]                     ; [0x44f8:2]=0xffff
│           0000:1239      mov   ax, 0x40                              ; '@'
│           0000:123c      mov   es, ax
│           0000:123e      mov   dx, word es:[0x63]
│           0000:1243      add   dx, 6
│           0000:1246      push  dx
│           0000:1247      in    al, dx
│           0000:1248      mov   byte [0x44fa], 0                      ; [0x44fa:1]=255
│           0000:124d      mov   cx, 0x10
│       ┌─> 0000:1250      push  cx
│       ╎   0000:1251      lodsb al, byte [si]
│       ╎   0000:1252      mov   bh, al
│       ╎   0000:1254      lodsb al, byte [si]
│       ╎   0000:1255      mov   bl, al
│       ╎   0000:1257      lodsb al, byte [si]
│       ╎   0000:1258      mov   ah, al
│       ╎   0000:125a      push  si
│       ╎   0000:125b      mov   si, word [0x44f8]                     ; [0x44f8:2]=0xffff
│       ╎   0000:125f      mov   cx, 0x10
│      ┌──> 0000:1262      mov   dx, 0x3c8
│      ╎╎   0000:1265      mov   al, byte [0x44fa]                     ; [0x44fa:1]=255
│      ╎╎   0000:1268      out   dx, al
│     ┌───< 0000:1269      jmp   0x126b
│     │╎╎   ; CODE XREF from fcn.00001225 @ 0x1269
│     └───> 0000:126b      mov   dl, 0xc9
│      ╎╎   0000:126d      lodsb al, byte [si]
│      ╎╎   0000:126e      add   al, bh
│      ╎╎   0000:1270      out   dx, al
│     ┌───< 0000:1271      jmp   0x1273
│     │╎╎   ; CODE XREF from fcn.00001225 @ 0x1271
│     └───> 0000:1273      lodsb al, byte [si]
│      ╎╎   0000:1274      add   al, bl
│      ╎╎   0000:1276      out   dx, al
│     ┌───< 0000:1277      jmp   0x1279
│     │╎╎   ; CODE XREF from fcn.00001225 @ 0x1277
│     └───> 0000:1279      lodsb al, byte [si]
│      ╎╎   0000:127a      add   al, ah
│      ╎╎   0000:127c      out   dx, al
│     ┌───< 0000:127d      jmp   0x127f
│     │╎╎   ; CODE XREF from fcn.00001225 @ 0x127d
│     └───> 0000:127f      inc   byte [0x44fa]
│      └──< 0000:1283      loop  0x1262
│       ╎   0000:1285      pop   si
│       ╎   0000:1286      pop   cx
│       └─< 0000:1287      loop  0x1250
│           0000:1289      pop   dx
│           0000:128a      in    al, dx
│           0000:128b      popf
└           0000:128c      ret
```

### Function 0x0000146d
```asm
; XREFS(68)
┌ fcn.0000146d(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:146d      push  cx                                    ; arg4
│           0000:146e      mov   cx, 2
│       ┌─> 0000:1471      rol   word cs:[0x4501], 1
│       ╎   0000:1476      adc   ax, ax                                ; arg1
│       ╎   0000:1478      rol   word cs:[0x44ff], 1
│       ╎   0000:147d      adc   ax, ax                                ; arg1
│       ╎   0000:147f      rol   word cs:[0x44fd], 1
│       ╎   0000:1484      adc   ax, ax                                ; arg1
│       ╎   0000:1486      rol   word cs:[0x44fb], 1
│       ╎   0000:148b      adc   ax, ax                                ; arg1
│       ╎   0000:148d      rol   word cs:[0x4501], 1
│       ╎   0000:1492      adc   ax, ax                                ; arg1
│       ╎   0000:1494      rol   word cs:[0x44ff], 1
│       ╎   0000:1499      adc   ax, ax                                ; arg1
│       ╎   0000:149b      rol   word cs:[0x44fd], 1
│       ╎   0000:14a0      adc   ax, ax                                ; arg1
│       ╎   0000:14a2      rol   word cs:[0x44fb], 1
│       ╎   0000:14a7      adc   ax, ax                                ; arg1
│       └─< 0000:14a9      loop  0x1471
│           0000:14ab      xchg  al, ah
│           0000:14ad      pop   cx
└           0000:14ae      ret
```

### Function 0x000014af
```asm
; XREFS: CALL 0x00000838  CALL 0x00000844  CALL 0x00000852  
            ; XREFS: CALL 0x00000860  CALL 0x000008ac  CALL 0x000008ba  
            ; XREFS: CALL 0x000008c8  CALL 0x000008d4  
┌ fcn.000014af();
│           0000:14af      rol   word cs:[0x4503], 1
│           0000:14b4      sbb   al, al
│           0000:14b6      rol   word cs:[0x4503], 1
│           0000:14bb      sbb   ah, ah
│           0000:14bd      or    al, ah
│           0000:14bf      rol   word cs:[0x4503], 1
│           0000:14c4      sbb   dl, dl
│           0000:14c6      rol   word cs:[0x4503], 1
│           0000:14cb      sbb   ah, ah
│           0000:14cd      or    ah, dl
└           0000:14cf      ret
```

### Function 0x000014e7
```asm
; XREFS: CALL 0x000000ec  CALL 0x00000166  CALL 0x00000191  
            ; XREFS: CALL 0x0000036a  CALL 0x00000412  CALL 0x000004af  
            ; XREFS: CALL 0x000007fe  CALL 0x00000d0e  CALL 0x00000d82  
            ; XREFS: CALL 0x00000ed1  CALL 0x00000f02  CALL 0x000010d2  
            ; XREFS: CALL 0x000011ba  CALL 0x0000120a  
┌ fcn.000014e7(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:14e7      mov   dl, bl
│           0000:14e9      mov   bl, bh
│           0000:14eb      xor   bh, bh
│           0000:14ed      mov   dh, bh
│           0000:14ef      add   bx, bx                                ; arg3
│           0000:14f1      add   bx, bx                                ; arg3
│           0000:14f3      mov   ax, 0x140
│           0000:14f6      mul   dx
│           0000:14f8      add   ax, bx                                ; arg3
└           0000:14fa      ret
```

## Cross-References (callers)
```json
  0x000001b8:
[{"from":251,"to":440,"type":"CALL"},{"from":383,"to":440,"type":"CALL"},{"from":392,"to":440,"type":"CALL"},{"from":426,"to":440,"type":"CALL"},{"from":435,"to":440,"type":"CALL"}]
  0x00000327:
[{"from":766,"to":807,"type":"CALL"},{"from":772,"to":807,"type":"CALL"},{"from":779,"to":807,"type":"CALL"},{"from":786,"to":807,"type":"CALL"}]
  0x0000059a:
[{"from":1228,"to":1434,"type":"CALL"}]
  0x000005b5:
[{"from":1398,"to":1461,"type":"CALL"}]
  0x000005d0:
[{"from":1341,"to":1488,"type":"CALL"}]
  0x00000757:
[{"from":1860,"to":1879,"type":"CALL"}]
  0x000009c8:
[{"from":2316,"to":2504,"type":"CALL"},{"from":2334,"to":2504,"type":"CALL"},{"from":2351,"to":2504,"type":"CALL"},{"from":2369,"to":2504,"type":"CALL"},{"from":2403,"to":2504,"type":"CALL"},{"from":2430,"to":2504,"type":"CALL"},{"from":2455,"to":2504,"type":"CALL"},{"from":2482,"to":2504,"type":"CALL"}]
  0x00000a2c:
[{"from":2526,"to":2604,"type":"CALL"},{"from":2548,"to":2604,"type":"CALL"},{"from":2568,"to":2604,"type":"CALL"},{"from":2590,"to":2604,"type":"CALL"}]
  0x00000d03:
[{"from":3299,"to":3331,"type":"CALL"}]
  0x00000dee:
[{"from":3486,"to":3566,"type":"CALL"}]
  0x00000dfb:
[{"from":3502,"to":3579,"type":"CALL"},{"from":3563,"to":3579,"type":"CALL"}]
  0x00000e20:
[{"from":3507,"to":3616,"type":"CALL"},{"from":3566,"to":3616,"type":"CALL"},{"from":3581,"to":3616,"type":"CALL"}]
  0x00000f2f:
[{"from":3822,"to":3887,"type":"CALL"},{"from":3871,"to":3887,"type":"CALL"}]
  0x00000f67:
[{"from":3817,"to":3943,"type":"CALL"},{"from":3866,"to":3943,"type":"CALL"}]
  0x00000ff3:
[{"from":3743,"to":4083,"type":"CALL"},{"from":3753,"to":4083,"type":"CALL"}]
  0x00001078:
[{"from":4087,"to":4216,"type":"CALL"},{"from":4113,"to":4216,"type":"CALL"},{"from":4125,"to":4216,"type":"CALL"},{"from":4175,"to":4216,"type":"CALL"},{"from":4186,"to":4216,"type":"CALL"},{"from":4212,"to":4216,"type":"CALL"}]
  0x000010c2:
[{"from":4266,"to":4290,"type":"CALL"},{"from":4274,"to":4290,"type":"CALL"}]
  0x000011a4:
[{"from":4492,"to":4516,"type":"CALL"},{"from":4500,"to":4516,"type":"CALL"}]
  0x00001225:
[{"from":1279,"to":4645,"type":"CALL"},{"from":1431,"to":4645,"type":"CODE"}]
```