# IMAGE_DECODER_B - Analysis

**Source:** `chunk_09.bin`  
**Size:** 4.3 KB  
**Functions:** 34  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    1 24           fcn.00000000
0x000000df    7 60           fcn.000000df
0x0000011b   18 662  -> 218  fcn.0000011b
0x00000124   19 172          fcn.00000124
0x000001d0   25 231          fcn.000001d0
0x000002ba    1 3            fcn.000002ba
0x000002bd    3 35           fcn.000002bd
0x000003b1    7 127          fcn.000003b1
0x00000430    4 25           fcn.00000430
0x00000449    1 4            fcn.00000449
0x0000044d    3 10           fcn.0000044d
0x00000457    5 25           fcn.00000457
0x00000470    1 14           fcn.00000470
0x00000492    3 38           fcn.00000492
0x000004b8    5 20           fcn.000004b8
0x000004f8    3 63           fcn.000004f8
0x0000056b    5 34           fcn.0000056b
0x000005d3    1 17           fcn.000005d3
0x000005e4    1 20           fcn.000005e4
0x00000621    1 15           fcn.00000621
0x00000674    1 17           fcn.00000674
0x00000685    1 20           fcn.00000685
0x000006c0    1 15           fcn.000006c0
0x000007c0    4 29           fcn.000007c0
0x000007dd    7 74           fcn.000007dd
0x0000084d    3 45           fcn.0000084d
0x0000087a    9 70           fcn.0000087a
0x000008c0    5 24           fcn.000008c0
0x000008df    1 70           fcn.000008df
0x00000925    8 25           fcn.00000925
0x0000093e    1 10           fcn.0000093e
0x00000bed    3 59           fcn.00000bed
0x00000c68    5 34           fcn.00000c68
0x00000c8a    1 38           fcn.00000c8a
```

## Strings
```
nth      paddr      vaddr len size section type   string                                       
-----------------------------------------------------------------------------------------------
  0 0x00000004 0x00000004   6    6         ascii  \f:(0W0
  1 0x0000001f 0x0000001f   5    5         ascii  7I7D9
  2 0x00000053 0x00000053   4    4         ascii  ^YFF
  3 0x00000111 0x00000111   4    4         ascii  _GGY
  4 0x00000117 0x00000117   5    6         utf8   ^\a_À| blocks=Basic Latin,Latin-1 Supplement
  5 0x000001f1 0x000001f1   4    4         ascii  7\a[\n
  6 0x00000254 0x00000254   6    7         ascii  \aCC>#F
  7 0x00000297 0x00000297   4    4         ascii  t\eG&
  8 0x000002b4 0x000002b4   5    6         utf8   \a_ÿS> blocks=Basic Latin,Latin-1 Supplement
  9 0x000002d2 0x000002d2   9   10         ibm037 vvvvvvvv;
 10 0x00000382 0x00000382   4    4         ascii  <\et\f
 11 0x0000047b 0x0000047b   6    7         utf8   z4Æ4~4 blocks=Basic Latin,Latin-1 Supplement
 12 0x000005f2 0x000005f2   6    7         ibm037 uuuu;C
 13 0x00000693 0x00000693   6    7         ibm037 uuuu;C
 14 0x00000787 0x00000787   4    4         ascii  VWW2
 15 0x0000080e 0x0000080e   6    7         ascii  &\b=&\b]
 16 0x000008b3 0x000008b3   6    7         ascii  &\b%&\bE
 17 0x000009de 0x000009de   5    5         ascii  `r\fWV
 18 0x00000ac5 0x00000ac5   4    4         ascii  <_\aY
 19 0x00000b19 0x00000b19   4    4         ascii  ;[CY
 20 0x00000b21 0x00000b21   6    6         ascii  ';L;y;
 21 0x00000c86 0x00000c86   4    4         ibm037 }SSC
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0000      adc   dx, word [bx + di]                    ; arg3
│           ; DATA XREF from fcn.000000df @ 0x10c
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           0000:0004      or    al, 0x3a
│           ; DATA XREF from fcn.000007dd @ 0x81f
│           0000:0006      sub   byte [bx + si], dh                    ; arg3
│           0000:0008      push  di
│           0000:0009      xor   byte [bx + di - 0xbcb], cl            ; arg3
│           0000:000d      xor   ax, 0x362c                            ; arg1
│           ; XREFS: DATA 0x00000166  DATA 0x0000021f  DATA 0x000002c3  
│           ; XREFS: DATA 0x0000050b  DATA 0x00000543  DATA 0x00000604  
│           ; XREFS: DATA 0x000006a4  
│           0000:0010      xchg  bp, ax                                ; arg1
│           0000:0011      mov   bl, 0x32                              ; '2'
└           0000:0014      enter 0x3334, 0x35                          ; '43'
```

### Function 0x000000df
```asm
; CALL XREF from fcn.00000000 @ +0x8b
┌ fcn.000000df(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:00df      cmp   byte [0x3cae], 0x1b                   ; [0x3cae:1]=255
│           ; DATA XREF from fcn.000004b8 @ +0x23
│       ┌─< 0000:00e4      jne   0xe7
│       │   0000:00e6      ret
│       └─> 0000:00e7      mov   al, byte [0x83]                       ; [0x83:1]=191
│           0000:00ea      cmp   byte [0x3cae], al                     ; [0x3cae:1]=255
│       ┌─< 0000:00ee      je    0xf1
│       │   0000:00f0      ret
│       └─> 0000:00f1      push  di
│           0000:00f2      push  es
│           0000:00f3      push  si
│           0000:00f4      mov   al, byte [0x83]                       ; [0x83:1]=191
│           0000:00f7      add   al, al
│           0000:00f9      xor   ah, ah
│           0000:00fb      mov   di, ax                                ; arg1
│           ; DATA XREFS from fcn.00000430 @ 0x436, 0x444
│           0000:00fd      add   di, 0x50f1
│           0000:0101      mov   ax, 0xb000
│           0000:0104      mov   es, ax
│           0000:0106      mov   si, 0x3e53                            ; 'S>'
│           0000:0109      mov   cx, 2
│       ┌─> 0000:010c      push  cx
│       ╎   0000:010d      push  di
│       ╎   0000:010e      call  fcn.00000457                          ; fcn.00000457
│       ╎   0000:0111      pop   di
│       ╎   0000:0112      inc   di
│       ╎   0000:0113      inc   di
│       ╎   0000:0114      pop   cx
│       └─< 0000:0115      loop  0x10c
│           0000:0117      pop   si
│           0000:0118      pop   es
│           0000:0119      pop   di
└           0000:011a      ret
```

### Function 0x0000011b
```asm
; CALL XREF from fcn.00000000 @ +0xbb
┌ fcn.0000011b(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:011b      cmp   byte [si - 1], 0xfd
│       ┌─< 0000:011f      jne   fcn.00000124                          ; fcn.00000124
│      ┌──< 0000:0121      jmp   0x2e0
       ││   ; CALL XREFS from fcn.00000000 @ +0xab, +0xb3, +0xc3, +0xcb
       ││   ; CODE XREF from fcn.000001d0 @ 0x1f8
..
      ╎│    ; CALL XREFS from fcn.00000000 @ +0x93, +0x9b, +0xa3
│  │ │ ││   ; CODE XREF from fcn.000001d0 @ 0x2ac
       │    ; CALL XREF from fcn.0000011b @ 0x31d
       │    ; CALL XREF from fcn.000003b1 @ 0x3e1
│      │    ; CODE XREF from fcn.0000011b @ 0x121
│      └──> 0000:02e0      push  ds                                    ; arg1
│           0000:02e1      push  si
│           0000:02e2      push  es
│           0000:02e3      push  di
│           0000:02e4      mov   di, 0x3cb0
│           0000:02e7      movsw word es:[di], word ptr [si]
│           0000:02e8      add   si, 5
│           0000:02eb      movsw word es:[di], word ptr [si]
│           0000:02ec      movsb byte es:[di], byte ptr [si]
│           0000:02ed      mov   dl, byte cs:[0x3cae]
│           0000:02f2      add   dl, 4
│           0000:02f5      xor   dh, dh
│           0000:02f7      add   dx, word cs:[0x80]                    ; arg2
│           0000:02fc      mov   word [0x3cb5], dx                     ; [0x3cb5:2]=0xffff ; arg2
│           0000:0300      call  fcn.00000430                          ; fcn.00000430
│           0000:0303      mov   byte es:[0x3caf], al
│           0000:0307      cmp   byte es:[0x3cb2], 0xfd
│       ┌─< 0000:030d      jne   0x317
│       │   0000:030f      inc   dx
│       │   0000:0310      call  fcn.00000430                          ; fcn.00000430
│       │   0000:0313      mov   byte es:[0x3cb2], al
│       └─> 0000:0317      mov   si, 0x3caf
│           0000:031a      mov   di, 0x3eb3
│           0000:031d      call  fcn.000002ba                          ; fcn.000002ba
│           0000:0320      mov   si, word cs:[0xc00f]
│       ┌─> 0000:0325      call  fcn.000004b8                          ; fcn.000004b8
│       ╎   0000:0328      or    bl, bl
│      ┌──< 0000:032a      je    0x33e
│      │╎   0000:032c      push  si
│      │╎   0000:032d      push  bx
│      │╎   0000:032e      call  fcn.00000492                          ; fcn.00000492
│      │╎   0000:0331      pop   bx
│      │╎   0000:0332      mov   es, word cs:[0xff2c]
│      │╎   0000:0337      mov   si, 0x3caf
│      │╎   0000:033a      call  fcn.00000470                          ; fcn.00000470
│      │╎   0000:033d      pop   si
│      └──> 0000:033e      add   si, 8
│       ╎   0000:0341      cmp   word [si], 0xffff
│       └─< 0000:0344      jne   0x325
│           0000:0346      pop   di
│           0000:0347      pop   es
│           0000:0348      mov   ch, byte es:[di - 1]
│           0000:034c      mov   cl, byte es:[di + 7]
│           0000:0350      push  es
│           0000:0351      push  di
│           0000:0352      push  cx
│           0000:0353      mov   di, word cs:[0x3cac]
│           0000:0358      mov   bl, 5
│       ┌─> 0000:035a      add   di, 0x40b4
│       ╎   0000:035e      cmp   di, 0x6000
│      ┌──< 0000:0362      jb    0x368
│      │╎   0000:0364      add   di, 0xa05a
│      └──> 0000:0368      dec   bl
│       └─< 0000:036a      jne   0x35a
│           0000:036c      push  di
│           0000:036d      mov   si, 0x3eb3
│           0000:0370      mov   ax, 0xb000
│           0000:0373      mov   es, ax
│           0000:0375      inc   ch
│       ┌─< 0000:0377      je    0x37c
│       │   0000:0379      call  fcn.00000457                          ; fcn.00000457
│       └─> 0000:037c      pop   di
│           0000:037d      pop   cx
│           0000:037e      cmp   byte cs:[0x3cae], 0x1b
│       ┌─< 0000:0384      je    0x392
│       │   0000:0386      mov   si, 0x3ee3
│       │   0000:0389      inc   di
│       │   0000:038a      inc   di
│       │   0000:038b      inc   cl
│      ┌──< 0000:038d      je    0x392
│      ││   0000:038f      call  fcn.00000457                          ; fcn.00000457
│      └└─> 0000:0392      pop   di
│           0000:0393      pop   es
│           0000:0394      mov   al, 0xff
│           0000:0396      mov   byte es:[di - 1], 0xfe                ; [0xfe:1]=199
│           0000:039b      mov   byte es:[di], al
│           0000:039e      mov   byte es:[di + 1], al
│           0000:03a2      mov   byte es:[di + 7], al
│           0000:03a6      mov   byte es:[di + 8], al
│           0000:03aa      mov   byte es:[di + 9], al
│           0000:03ae      pop   si
│           0000:03af      pop   ds
└           0000:03b0      ret
```

### Function 0x00000124
```asm
; CALL XREFS from fcn.00000000 @ +0xab, +0xb3, +0xc3, +0xcb
            ; CODE XREF from fcn.000001d0 @ 0x1f8
┌ fcn.00000124(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0124      mov   al, byte [di - 1]
│           0000:0127      mov   byte [di - 1], 0xfe                   ; [0xfe:1]=199
│           0000:012b      inc   al
│       ┌─< 0000:012d      jne   0x130
│       │   0000:012f      ret
│       └─> 0000:0130      dec   di
│           0000:0131      dec   si
│           0000:0132      mov   dl, byte [si]
│           0000:0134      movsb byte es:[di], byte ptr [si]
│           0000:0135      push  es
│           0000:0136      push  ds
│           0000:0137      push  di
│           0000:0138      push  si
│           0000:0139      push  bx                                    ; arg3
│           0000:013a      mov   di, word [0x3cac]                     ; [0x3cac:2]=0xffff
│           0000:013e      or    bl, bl
│       ┌─< 0000:0140      je    0x154
│      ┌──> 0000:0142      add   di, 0x40b4
│      ╎│   0000:0146      cmp   di, 0x6000
│     ┌───< 0000:014a      jb    0x150
│     │╎│   0000:014c      add   di, 0xa05a
│     └───> 0000:0150      dec   bl
│      └──< 0000:0152      jne   0x142
│       └─> 0000:0154      mov   bl, dl
│           0000:0156      xor   bh, bh
│           0000:0158      add   bx, bx                                ; arg3
│           0000:015a      test  word [bx + 0x3f13], 0xffff            ; arg3
│       ┌─< 0000:0160      jne   0x199
│       │   0000:0162      mov   word [bx + 0x3f13], di                ; arg3
│       │   0000:0166      mov   ax, 0x10
│       │   0000:0169      mul   dl
│       │   0000:016b      mov   si, ax
│       │   0000:016d      add   si, 0x8100
│       │   0000:0171      mov   ds, word cs:[0xff2c]
│       │   0000:0176      mov   ax, 0xb000
│       │   0000:0179      mov   es, ax
│       │   0000:017b      mov   cx, 8
│      ┌──> 0000:017e      movsw word es:[di], word ptr [si]
│      ╎│   0000:017f      add   di, 0x1ffe
│      ╎│   0000:0183      cmp   di, 0x6000
│     ┌───< 0000:0187      jb    0x191
│     │╎│   0000:0189      mov   ax, word [si - 2]
│     │╎│   0000:018c      stosw word es:[di], ax
│     │╎│   0000:018d      add   di, 0xa058
│     └└──< 0000:0191      loop  0x17e
│       │   0000:0193      pop   bx
│       │   0000:0194      pop   si
│       │   0000:0195      pop   di
│       │   0000:0196      pop   ds
│       │   0000:0197      pop   es
│       │   0000:0198      ret
│       └─> 0000:0199      mov   si, word [bx + 0x3f13]                ; arg3
│           0000:019d      mov   ax, 0xb000
│           0000:01a0      mov   es, ax
│           0000:01a2      mov   ds, ax
│           0000:01a4      mov   cx, 8
│       ┌─> 0000:01a7      movsw word es:[di], word ptr [si]
│       ╎   0000:01a8      add   di, 0x1ffe
│       ╎   0000:01ac      cmp   di, 0x6000
│      ┌──< 0000:01b0      jb    0x1ba
│      │╎   0000:01b2      mov   ax, word [si - 2]
│      │╎   0000:01b5      stosw word es:[di], ax
│      │╎   0000:01b6      add   di, 0xa058
│      └──> 0000:01ba      add   si, 0x1ffe
│       ╎   0000:01be      cmp   si, 0x6000
│      ┌──< 0000:01c2      jb    0x1c8
│      │╎   0000:01c4      add   si, 0xa05a
│      └└─< 0000:01c8      loop  0x1a7
│           0000:01ca      pop   bx
│           0000:01cb      pop   si
│           0000:01cc      pop   di
│           0000:01cd      pop   ds
│           0000:01ce      pop   es
└           0000:01cf      ret
```

### Function 0x000001d0
```asm
╎   ; CALL XREFS from fcn.00000000 @ +0x93, +0x9b, +0xa3
┌ fcn.000001d0(int16_t arg3);
│       ╎   ; arg int16_t arg3 @ bx
│       ╎   0000:01d0      mov   al, byte [di - 1]
│       ╎   0000:01d3      mov   byte [di - 1], 0xfe                   ; [0xfe:1]=199
│       ╎   0000:01d7      inc   al
│      ┌──< 0000:01d9      jne   0x1dc
│      │╎   0000:01db      ret
│      └──> 0000:01dc      push  bx                                    ; arg3
│       ╎   0000:01dd      push  es
│       ╎   0000:01de      mov   dl, byte [si - 1]
│       ╎   0000:01e1      mov   bl, dl
│       ╎   0000:01e3      xor   bh, bh
│       ╎   0000:01e5      mov   es, word cs:[0xff2c]
│       ╎   0000:01ea      add   bx, word es:[0x8000]                  ; arg3
│       ╎   0000:01ef      mov   dh, byte es:[bx]                      ; arg3
│       ╎   0000:01f2      pop   es
│       ╎   0000:01f3      pop   bx
│       ╎   0000:01f4      or    dh, dh
│      ┌──< 0000:01f6      jne   0x1fb
│      │└─< 0000:01f8      jmp   fcn.00000124                          ; fcn.00000124
│      └──> 0000:01fb      dec   di
│           0000:01fc      dec   si
│           0000:01fd      movsb byte es:[di], byte ptr [si]
│           0000:01fe      push  es
│           0000:01ff      push  ds
│           0000:0200      push  di
│           0000:0201      push  si
│           0000:0202      push  bx
│           0000:0203      mov   di, word [0x3cac]                     ; [0x3cac:2]=0xffff
│           0000:0207      or    bl, bl
│       ┌─< 0000:0209      je    0x21f
│       │   0000:020b      push  bx
│      ┌──> 0000:020c      add   di, 0x40b4
│      ╎│   0000:0210      cmp   di, 0x6000
│     ┌───< 0000:0214      jb    0x21a
│     │╎│   0000:0216      add   di, 0xa05a
│     └───> 0000:021a      dec   bl
│      └──< 0000:021c      jne   0x20c
│       │   0000:021e      pop   bx
│       └─> 0000:021f      mov   ax, 0x10
│           0000:0222      mul   dl
│           0000:0224      mov   si, ax
│           0000:0226      mov   bp, ax
│           0000:0228      add   si, 0x8100
│           0000:022c      add   bp, 0xd000
│           0000:0230      mov   ax, 0x30                              ; '0'
│           0000:0233      mul   byte [0x3cae]
│           0000:0237      add   bx, bx
│           0000:0239      add   bx, bx
│           0000:023b      add   bx, bx
│           0000:023d      add   bx, bx
│           0000:023f      add   bx, ax
│           0000:0241      add   bx, 0xa000
│           0000:0245      mov   ds, word cs:[0xff2c]
│           0000:024a      mov   ax, 0xb000
│           0000:024d      mov   es, ax
│           0000:024f      mov   cx, 8
│       ┌─> 0000:0252      mov   ax, word cs:[bx]
│       ╎   0000:0255      inc   bx
│       ╎   0000:0256      inc   bx
│       ╎   0000:0257      and   ax, word ds:[bp]
│       ╎   0000:025b      inc   bp
│       ╎   0000:025c      inc   bp
│       ╎   0000:025d      or    ax, word [si]
│       ╎   0000:025f      inc   si
│       ╎   0000:0260      inc   si
│       ╎   0000:0261      stosw word es:[di], ax
│       ╎   0000:0262      add   di, 0x1ffe
│       ╎   0000:0266      cmp   di, 0x6000
│      ┌──< 0000:026a      jb    0x271
│      │╎   0000:026c      stosw word es:[di], ax
│      │╎   0000:026d      add   di, 0xa058
│      └└─< 0000:0271      loop  0x252
│           0000:0273      pop   bx
│           0000:0274      pop   si
│           0000:0275      pop   di
│           0000:0276      pop   ds
│           0000:0277      pop   es
│           0000:0278      mov   ah, byte [di - 1]
│           0000:027b      or    ah, ah
│       ┌─< 0000:027d      jne   0x280
│       │   0000:027f      ret
│       └─> 0000:0280      cmp   ah, 0x19
│       ┌─< 0000:0283      jb    0x286
│       │   0000:0285      ret
│       └─> 0000:0286      push  di
│           0000:0287      push  es
│           0000:0288      mov   es, word cs:[0xff2c]
│           0000:028d      mov   di, word es:[0x8004]
│           0000:0292      mov   cl, byte es:[di]
│           0000:0295      or    cl, cl
│       ┌─< 0000:0297      je    0x2b4
│       │   0000:0299      inc   di
│      ┌──> 0000:029a      mov   al, byte es:[di]
│      ╎│   0000:029d      cmp   al, 0xff
│     ┌───< 0000:029f      je    0x2b4
│     │╎│   0000:02a1      cmp   ah, al
│    ┌────< 0000:02a3      jne   0x2ae
│    ││╎│   0000:02a5      mov   al, byte es:[di + 1]
│    ││╎│   0000:02a9      mov   byte [si - 1], al
│   ┌─────< 0000:02ac      jmp   0x2b4
│   │└────> 0000:02ae      inc   di
│   │ │╎│   0000:02af      inc   di
│   │ │╎│   0000:02b0      dec   cl
│   │ │└──< 0000:02b2      jne   0x29a
│   │ │ │   ; CODE XREF from fcn.000001d0 @ 0x2ac
│   └─└─└─> 0000:02b4      pop   es
│           0000:02b5      pop   di
└           0000:02b6      ret
```

### Function 0x000002ba
```asm
; CALL XREF from fcn.0000011b @ 0x31d
┌ fcn.000002ba(int16_t arg1);
│           ; arg int16_t arg1 @ ax
└           0000:02ba      mov   cx, 6
```

### Function 0x000002bd
```asm
; CALL XREF from fcn.000003b1 @ 0x3e1
┌ fcn.000002bd(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:02bd      push  cs
│           0000:02be      pop   es
│       ┌─> 0000:02bf      push  cx                                    ; arg4
│       ╎   0000:02c0      lodsb al, byte [si]
│       ╎   0000:02c1      push  ds
│       ╎   0000:02c2      push  si
│       ╎   0000:02c3      mov   cl, 0x10
│       ╎   0000:02c5      mul   cl
│       ╎   0000:02c7      mov   si, ax                                ; arg1
│       ╎   0000:02c9      add   si, 0x8100
│       ╎   0000:02cd      mov   ds, word cs:[0xff2c]
│       ╎   0000:02d2      movsw word es:[di], word ptr [si]
│       ╎   0000:02d3      movsw word es:[di], word ptr [si]
│       ╎   0000:02d4      movsw word es:[di], word ptr [si]
│       ╎   0000:02d5      movsw word es:[di], word ptr [si]
│       ╎   0000:02d6      movsw word es:[di], word ptr [si]
│       ╎   0000:02d7      movsw word es:[di], word ptr [si]
│       ╎   0000:02d8      movsw word es:[di], word ptr [si]
│       ╎   0000:02d9      movsw word es:[di], word ptr [si]
│       ╎   0000:02da      pop   si
│       ╎   0000:02db      pop   ds
│       ╎   0000:02dc      pop   cx
│       └─< 0000:02dd      loop  0x2bf
└           0000:02df      ret
```

### Function 0x000003b1
```asm
; CALL XREF from fcn.00000000 @ +0x71
┌ fcn.000003b1();
│           0000:03b1      push  es
│           0000:03b2      push  ds
│           0000:03b3      mov   si, word [0xff2a]
│           0000:03b7      add   si, 0x25
│           0000:03ba      mov   di, 0x3caf
│           0000:03bd      movsw word es:[di], word ptr [si]
│           0000:03be      movsb byte es:[di], byte ptr [si]
│           0000:03bf      mov   dx, word [0x80]                       ; [0x80:2]=0xe20
│           0000:03c3      add   dx, 3
│           0000:03c6      mov   word [0x3cb5], dx                     ; [0x3cb5:2]=0xffff
│           0000:03ca      cmp   byte [0x3caf], 0xfd                   ; [0x3caf:1]=255
│       ┌─< 0000:03cf      jne   0x3d8
│       │   0000:03d1      inc   dx
│       │   0000:03d2      call  fcn.00000430                          ; fcn.00000430
│       │   0000:03d5      mov   byte [0x3caf], al                     ; [0x3caf:1]=255
│       └─> 0000:03d8      mov   si, 0x3caf
│           0000:03db      mov   di, 0x3eb3
│           0000:03de      mov   cx, 3
│           0000:03e1      call  fcn.000002bd                          ; fcn.000002bd
│           0000:03e4      mov   si, word cs:[0xc00f]
│       ┌─> 0000:03e9      call  fcn.000004b8                          ; fcn.000004b8
│       ╎   0000:03ec      or    bl, bl
│      ┌──< 0000:03ee      je    0x40f
│      │╎   0000:03f0      push  si
│      │╎   0000:03f1      dec   bl
│      │╎   0000:03f3      mov   al, 3
│      │╎   0000:03f5      mul   bl
│      │╎   0000:03f7      push  ax
│      │╎   0000:03f8      call  fcn.00000492                          ; fcn.00000492
│      │╎   0000:03fb      pop   ax                                    ; int16_t arg1
│      │╎   0000:03fc      add   di, ax
│      │╎   0000:03fe      mov   bp, di
│      │╎   0000:0400      mov   es, word cs:[0xff2c]
│      │╎   0000:0405      mov   si, 0x3caf
│      │╎   0000:0408      mov   di, 0x3eb3
│      │╎   0000:040b      call  fcn.000004f8                          ; fcn.000004f8
│      │╎   0000:040e      pop   si
│      └──> 0000:040f      add   si, 8
│       ╎   0000:0412      cmp   word [si], 0xffff
│       └─< 0000:0415      jne   0x3e9
│           0000:0417      mov   di, 0x50f1
│           0000:041a      mov   si, 0x3eb3
│           0000:041d      mov   ax, 0xb000
│           0000:0420      mov   es, ax
│           0000:0422      call  fcn.00000457                          ; fcn.00000457
│           0000:0425      pop   ds
│           0000:0426      pop   es
│           0000:0427      mov   di, 0xe005
│           0000:042a      mov   al, 0xff
│           0000:042c      stosb byte es:[di], al
│           0000:042d      stosb byte es:[di], al
│           0000:042e      stosb byte es:[di], al
└           0000:042f      ret
```

### Function 0x00000430
```asm
; CALL XREFS from fcn.0000011b @ 0x300, 0x310
            ; CALL XREF from fcn.000003b1 @ 0x3d2
┌ fcn.00000430();
│           0000:0430      call  fcn.00000449                          ; fcn.00000449
│           0000:0433      mov   al, byte [si + 3]
│           0000:0436      cmp   al, 0xfd
│       ┌─< 0000:0438      je    0x43b
│       │   0000:043a      ret
│      ┌└─> 0000:043b      add   si, 8
│      ╎    0000:043e      call  fcn.0000044d                          ; fcn.0000044d
│      ╎    0000:0441      mov   al, byte [si + 3]
│      ╎    0000:0444      cmp   al, 0xfd
│      └──< 0000:0446      je    0x43b
└           0000:0448      ret
```

### Function 0x00000449
```asm
; CALL XREF from fcn.00000430 @ 0x430
┌ fcn.00000449(int16_t arg2);
│           ; arg int16_t arg2 @ dx
└           0000:0449      mov   si, word [0xc00f]
```

### Function 0x0000044d
```asm
; CALL XREF from fcn.00000430 @ 0x43e
            ; CODE XREF from fcn.0000044d @ 0x455
┌ fcn.0000044d(short unsigned int arg2);
│           ; arg short unsigned int arg2 @ dx
│       ┌─> 0000:044d      cmp   dx, word [si]                         ; arg2
│      ┌──< 0000:044f      jne   0x452
│      │╎   0000:0451      ret
│      └──> 0000:0452      add   si, 8
└       └─< 0000:0455      jmp   fcn.0000044d
```

### Function 0x00000457
```asm
; CALL XREF from fcn.000000df @ 0x10e
            ; CALL XREFS from fcn.0000011b @ 0x379, 0x38f
            ; CALL XREF from fcn.000003b1 @ 0x422
┌ fcn.00000457();
│           0000:0457      mov   cx, 0x18
│       ┌─> 0000:045a      movsw word es:[di], word ptr [si]
│       ╎   0000:045b      add   di, 0x1ffe
│       ╎   0000:045f      cmp   di, 0x6000
│      ┌──< 0000:0463      jb    0x46d
│      │╎   0000:0465      mov   ax, word [si - 2]
│      │╎   0000:0468      stosw word es:[di], ax
│      │╎   0000:0469      add   di, 0xa058
│      └└─< 0000:046d      loop  0x45a
└           0000:046f      ret
```

### Function 0x00000470
```asm
; CALL XREF from fcn.0000011b @ 0x33a
┌ fcn.00000470(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0470      mov   bp, di
│           0000:0472      dec   bl
│           0000:0474      xor   bh, bh
│           0000:0476      add   bx, bx                                ; arg3
│           0000:0478      call  word cs:[bx + 0x347a]
└           0000:047d      ret
```

### Function 0x00000492
```asm
; CALL XREF from fcn.0000011b @ 0x32e
            ; CALL XREF from fcn.000003b1 @ 0x3f8
┌ fcn.00000492(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0492      mov   al, byte [si + 2]
│           0000:0495      mov   ch, al
│           0000:0497      and   al, 0x7f
│           0000:0499      mov   cl, 0x30                              ; '0'
│           0000:049b      mul   cl
│           0000:049d      add   ax, 0x4000                            ; arg1
│           0000:04a0      mov   di, ax                                ; arg1
│           0000:04a2      xor   dl, dl
│           0000:04a4      or    ch, ch
│       ┌─< 0000:04a6      js    0x4aa
│       │   0000:04a8      mov   dl, 4
│       └─> 0000:04aa      mov   al, byte [si + 4]
│           0000:04ad      and   al, 3
│           0000:04af      add   al, dl
│           0000:04b1      mov   cl, 6
│           0000:04b3      mul   cl
│           0000:04b5      add   di, ax                                ; arg1
└           0000:04b7      ret
```

### Function 0x000004b8
```asm
; CALL XREF from fcn.0000011b @ 0x325
            ; CALL XREF from fcn.000003b1 @ 0x3e9
┌ fcn.000004b8();
│           0000:04b8      mov   cx, 2
│           0000:04bb      mov   dx, word [0x3cb5]                     ; [0x3cb5:2]=0xffff
│       ┌─> 0000:04bf      mov   bl, cl
│       ╎   0000:04c1      cmp   word [si], dx
│      ┌──< 0000:04c3      jne   0x4c6
│      │╎   0000:04c5      ret
│      └──> 0000:04c6      inc   dx
│       └─< 0000:04c7      loop  0x4bf
│           0000:04c9      mov   bl, cl
└           0000:04cb      ret
```

### Function 0x000004f8
```asm
; XREFS: CALL 0x0000040b  CALL 0x00000485  CODE 0x00000488  
            ; XREFS: CODE 0x00000490  CODE 0x000004e6  CALL 0x000004eb  
            ; XREFS: CODE 0x000004ee  CODE 0x000004f6  
┌ fcn.000004f8(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:04f8      mov   cx, 3
│       ┌─> 0000:04fb      push  cx
│       ╎   0000:04fc      mov   byte [si], 0xff                       ; [0xff:1]=241
│       ╎   0000:04ff      inc   si
│       ╎   0000:0500      push  ds
│       ╎   0000:0501      push  si
│       ╎   0000:0502      mov   al, byte es:[bp]
│       ╎   0000:0506      inc   bp
│       ╎   0000:0507      push  es
│       ╎   0000:0508      push  bp
│       ╎   0000:0509      dec   al
│       ╎   0000:050b      mov   cl, 0x10
│       ╎   0000:050d      mul   cl
│       ╎   0000:050f      mov   si, ax                                ; arg1
│       ╎   0000:0511      add   si, 0x4100
│       ╎   0000:0515      add   ax, 0x7000                            ; arg1
│       ╎   0000:0518      mov   word cs:[0x3cbf], ax                  ; arg1
│       ╎   0000:051c      mov   ax, cs
│       ╎   0000:051e      add   ax, 0x2000                            ; int16_t arg1
│       ╎   0000:0521      mov   word cs:[0x3cc1], ax
│       ╎   0000:0525      mov   ds, word cs:[0xff2c]
│       ╎   0000:052a      push  cs
│       ╎   0000:052b      pop   es
│       ╎   0000:052c      call  fcn.0000056b                          ; fcn.0000056b
│       ╎   0000:052f      pop   bp
│       ╎   0000:0530      pop   es
│       ╎   0000:0531      pop   si
│       ╎   0000:0532      pop   ds
│       ╎   0000:0533      pop   cx
│       │   ; DATA XREF from fcn.000005e4 @ +0x1d
│       └─< 0000:0534      loop  0x4fb
└           0000:0536      ret
```

### Function 0x0000056b
```asm
; CALL XREF from fcn.000004f8 @ 0x52c
            ; CALL XREF from fcn.000004f8 @ +0x6a
┌ fcn.0000056b(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:056b      push  ds
│           0000:056c      push  si
│           0000:056d      push  di
│           0000:056e      lds   si, cs:[0x3cbf]
│           0000:0573      mov   cx, 8
│       ┌─> 0000:0576      lodsw ax, word [si]
│       ╎   0000:0577      and   word es:[di], ax                      ; arg1
│       ╎   0000:057a      inc   di
│       ╎   0000:057b      inc   di
│       └─< 0000:057c      loop  0x576
│           0000:057e      pop   di
│           0000:057f      pop   si
│           0000:0580      pop   ds
│           0000:0581      mov   cx, 8
│       ┌─> 0000:0584      lodsw ax, word [si]
│       ╎   0000:0585      or    word es:[di], ax                      ; arg1
│       ╎   0000:0588      inc   di
│       ╎   0000:0589      inc   di
│       └─< 0000:058a      loop  0x584
└           0000:058c      ret
```

### Function 0x000005d3
```asm
; CALL XREFS from fcn.0000056b @ +0x30, +0x3d
┌ fcn.000005d3();
│           0000:05d3      push  si
│           0000:05d4      mov   di, si
│           0000:05d6      dec   si
│           0000:05d7      dec   si
│           0000:05d8      mov   cx, 0x36                              ; '6'
│           0000:05db      rep   movsb byte es:[di], byte ptr [si]
│           0000:05dd      add   si, 0x1e
│           0000:05e0      movsb byte es:[di], byte ptr [si]
│           0000:05e1      movsb byte es:[di], byte ptr [si]
│           0000:05e2      pop   si
└           0000:05e3      ret
```

### Function 0x000005e4
```asm
; CALL XREFS from fcn.0000056b @ +0x4d, +0x5a
┌ fcn.000005e4();
│           0000:05e4      push  si
│           0000:05e5      mov   di, si
│           0000:05e7      sub   si, 4
│           0000:05ea      mov   cx, 0x34                              ; '4'
│           0000:05ed      rep   movsb byte es:[di], byte ptr [si]
│           0000:05ef      add   si, 0x20                              ; "I7D9\xa69#8\xcb:H:\U0000001e\xbe_,\xbf"
│           0000:05f2      movsb byte es:[di], byte ptr [si]
│           0000:05f3      movsb byte es:[di], byte ptr [si]
│           0000:05f4      movsb byte es:[di], byte ptr [si]
│           0000:05f5      movsb byte es:[di], byte ptr [si]
│           0000:05f6      pop   si
└           0000:05f7      ret
```

### Function 0x00000621
```asm
; CALL XREFS from fcn.000005e4 @ +0x22, +0x2f
┌ fcn.00000621();
│           0000:0621      push  si
│           0000:0622      mov   di, si
│           0000:0624      dec   si
│           0000:0625      mov   cx, 0x37                              ; '7'
│           0000:0628      rep   movsb byte es:[di], byte ptr [si]
│           0000:062a      add   si, 0x1d
│           0000:062d      movsb byte es:[di], byte ptr [si]
│           0000:062e      pop   si
└           0000:062f      ret
```

### Function 0x00000674
```asm
; CALL XREFS from fcn.00000621 @ +0x1c, +0x29
┌ fcn.00000674();
│           0000:0674      push  si
│           0000:0675      mov   di, si
│           0000:0677      inc   si
│           0000:0678      inc   si
│           0000:0679      mov   cx, 0x36                              ; '6'
│           0000:067c      rep   movsb byte es:[di], byte ptr [si]
│           0000:067e      sub   si, 0x1e
│           0000:0681      movsb byte es:[di], byte ptr [si]
│           0000:0682      movsb byte es:[di], byte ptr [si]
│           0000:0683      pop   si
└           0000:0684      ret
```

### Function 0x00000685
```asm
; CALL XREFS from fcn.00000621 @ +0x39, +0x46
┌ fcn.00000685();
│           0000:0685      push  si
│           0000:0686      mov   di, si
│           0000:0688      add   si, 4
│           0000:068b      mov   cx, 0x34                              ; '4'
│           0000:068e      rep   movsb byte es:[di], byte ptr [si]
│           0000:0690      sub   si, 0x20                              ; "I7D9\xa69#8\xcb:H:\U0000001e\xbe_,\xbf"
│           0000:0693      movsb byte es:[di], byte ptr [si]
│           0000:0694      movsb byte es:[di], byte ptr [si]
│           0000:0695      movsb byte es:[di], byte ptr [si]
│           0000:0696      movsb byte es:[di], byte ptr [si]
│           0000:0697      pop   si
└           0000:0698      ret
```

### Function 0x000006c0
```asm
; CALL XREFS from fcn.00000685 @ +0x21, +0x2e
┌ fcn.000006c0();
│           0000:06c0      push  si
│           0000:06c1      mov   di, si
│           0000:06c3      inc   si
│           0000:06c4      mov   cx, 0x37                              ; '7'
│           0000:06c7      rep   movsb byte es:[di], byte ptr [si]
│           0000:06c9      sub   si, 0x1d
│           0000:06cc      movsb byte es:[di], byte ptr [si]
│           0000:06cd      pop   si
└           0000:06ce      ret
```

### Function 0x000007c0
```asm
; CALL XREF from fcn.000006c0 @ +0xe1
┌ fcn.000007c0(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:07c0      push  cs
│           0000:07c1      pop   es
│           0000:07c2      mov   di, 0x3ceb
│           0000:07c5      xor   bl, bl
│           ; CODE XREF from fcn.000007c0 @ 0x7db
│       ┌─> 0000:07c7      lodsb al, byte [si]
│       ╎   0000:07c8      or    al, al
│      ┌──< 0000:07ca      jne   0x7cd
│      │╎   0000:07cc      ret
│      └──> 0000:07cd      push  bx                                    ; arg3
│       ╎   0000:07ce      push  ds
│       ╎   0000:07cf      push  si
│       ╎   0000:07d0      and   bl, 3
│       ╎   0000:07d3      call  fcn.000007dd                          ; fcn.000007dd
│       ╎   0000:07d6      pop   si
│       ╎   0000:07d7      pop   ds
│       ╎   0000:07d8      pop   bx
│       ╎   0000:07d9      inc   bl
└       └─< 0000:07db      jmp   0x7c7
```

### Function 0x000007dd
```asm
; CALL XREF from fcn.000007c0 @ 0x7d3
┌ fcn.000007dd(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:07dd      sub   al, 0x20                              ; "I7D9\xa69#8\xcb:H:\U0000001e\xbe_,\xbf"
│           0000:07df      xor   ah, ah
│           0000:07e1      shl   ax, 1                                 ; arg1
│           0000:07e3      shl   ax, 1                                 ; arg1
│           0000:07e5      shl   ax, 1                                 ; arg1
│           0000:07e7      mov   si, ax                                ; arg1
│           0000:07e9      push  cs
│           0000:07ea      pop   ds
│           0000:07eb      add   si, word [0xf504]
│           0000:07ef      add   bl, bl
│           0000:07f1      mov   cl, bl
│           0000:07f3      push  di
│           0000:07f4      mov   bl, 8
│       ┌─> 0000:07f6      push  bx                                    ; arg3
│       ╎   0000:07f7      lodsb al, byte [si]
│       ╎   0000:07f8      mov   dl, 4
│      ┌──> 0000:07fa      add   ax, ax                                ; arg1
│      ╎╎   0000:07fc      add   ah, ah
│      ╎╎   0000:07fe      dec   dl
│      └──< 0000:0800      jne   0x7fa
│       ╎   0000:0802      mov   al, ah
│       ╎   0000:0804      shr   ah, 1
│       ╎   0000:0806      or    al, ah
│       ╎   0000:0808      xor   bl, bl
│       ╎   0000:080a      mov   bh, al
│       ╎   0000:080c      shr   bx, cl                                ; arg3
│       ╎   0000:080e      or    byte es:[di], bh
│       ╎   0000:0811      or    byte es:[di + 1], bl
│       ╎   0000:0815      add   di, 0x28
│       ╎   0000:0818      pop   bx
│       ╎   0000:0819      dec   bl
│       └─< 0000:081b      jne   0x7f6
│           0000:081d      pop   di
│           0000:081e      inc   di
│           0000:081f      cmp   cl, 6
│       ┌─< 0000:0822      je    0x825
│       │   0000:0824      ret
│       └─> 0000:0825      inc   di
└           0000:0826      ret
```

### Function 0x0000084d
```asm
; CALL XREF from fcn.000006c0 @ +0xfa
┌ fcn.0000084d();
│           0000:084d      call  fcn.000008c0                          ; fcn.000008c0
│           0000:0850      push  cs
│           0000:0851      pop   es
│           0000:0852      mov   di, 0x3ceb
│           0000:0855      add   di, word [0xff68]
│           0000:0859      mov   si, 0x38d5
│           0000:085c      mov   cx, 6
│           0000:085f      mov   bl, 1
│           ; CODE XREF from fcn.000007dd @ +0x6e
│       ┌─> 0000:0861      push  cx
│       ╎   0000:0862      push  bx
│       ╎   0000:0863      push  di
│       ╎   0000:0864      lodsb al, byte [si]
│       ╎   0000:0865      push  si
│       ╎   0000:0866      call  fcn.0000087a                          ; fcn.0000087a
│       ╎   0000:0869      pop   si
│       ╎   0000:086a      pop   di
│       ╎   0000:086b      pop   bx
│       ╎   0000:086c      mov   al, bl
│       ╎   0000:086e      inc   di
│       ╎   0000:086f      and   ax, 1
│       ╎   0000:0872      add   di, ax
│       ╎   0000:0874      inc   bl
│       ╎   0000:0876      pop   cx
│       └─< 0000:0877      loop  0x861
└           0000:0879      ret
```

### Function 0x0000087a
```asm
; CALL XREF from fcn.0000084d @ 0x866
┌ fcn.0000087a(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:087a      inc   al
│       ┌─< 0000:087c      jne   0x87f
│       │   0000:087e      ret
│       └─> 0000:087f      dec   al
│           0000:0881      xor   ah, ah
│           0000:0883      add   ax, ax                                ; arg1
│           0000:0885      add   ax, ax                                ; arg1
│           0000:0887      add   ax, ax                                ; arg1
│           0000:0889      add   ax, word cs:[0xf502]                  ; arg1
│           0000:088e      mov   si, ax                                ; arg1
│           0000:0890      mov   cx, 7
│       ┌─> 0000:0893      lodsb al, byte [si]
│       ╎   0000:0894      mov   ah, 8
│      ┌──> 0000:0896      add   al, al
│      ╎╎   0000:0898      adc   dx, dx                                ; arg2
│      ╎╎   0000:089a      add   dx, dx                                ; arg2
│      ╎╎   0000:089c      dec   ah
│      └──< 0000:089e      jne   0x896
│       ╎   0000:08a0      mov   ax, dx                                ; arg2
│       ╎   0000:08a2      shr   dx, 1                                 ; arg2
│       ╎   0000:08a4      or    ax, dx                                ; arg2
│       ╎   0000:08a6      test  bl, 1
│      ┌──< 0000:08a9      jne   0x8b3
│      │╎   0000:08ab      add   ax, ax
│      │╎   0000:08ad      add   ax, ax
│      │╎   0000:08af      add   ax, ax
│      │╎   0000:08b1      add   ax, ax
│      └──> 0000:08b3      or    byte es:[di], ah
│       ╎   0000:08b6      or    byte es:[di + 1], al
│       ╎   0000:08ba      add   di, 0x28
│       └─< 0000:08bd      loop  0x893
└           0000:08bf      ret
```

### Function 0x000008c0
```asm
; CALL XREF from fcn.000007dd @ +0x5a
            ; CALL XREF from fcn.0000084d @ 0x84d
┌ fcn.000008c0();
│           0000:08c0      mov   di, 0x38d4
│           0000:08c3      call  fcn.000008df                          ; fcn.000008df
│           0000:08c6      mov   cx, 6
│       ┌─> 0000:08c9      test  byte cs:[di], 0xff
│      ┌──< 0000:08cd      je    0x8d0
│      │╎   0000:08cf      ret
│      └──> 0000:08d0      mov   byte cs:[di], 0xff                    ; [0xff:1]=241
│       ╎   0000:08d4      inc   di
│       └─< 0000:08d5      loop  0x8c9
└           0000:08d7      ret
```

### Function 0x000008df
```asm
; CALL XREF from fcn.000008c0 @ 0x8c3
┌ fcn.000008df();
│           0000:08df      mov   cl, 0xf
│           0000:08e1      mov   bx, 0x4240                            ; '@B'
│           0000:08e4      call  fcn.00000925                          ; fcn.00000925
│           0000:08e7      mov   byte cs:[di], dh
│           0000:08ea      mov   cl, 1
│           0000:08ec      mov   bx, 0x86a0
│           0000:08ef      call  fcn.00000925                          ; fcn.00000925
│           0000:08f2      mov   byte cs:[di + 1], dh
│           0000:08f6      xor   cl, cl
│           0000:08f8      mov   bx, 0x2710
│           0000:08fb      call  fcn.00000925                          ; fcn.00000925
│           0000:08fe      mov   byte cs:[di + 2], dh
│           0000:0902      mov   bx, 0x3e8
│           0000:0905      call  fcn.0000093e                          ; fcn.0000093e
│           0000:0908      mov   byte cs:[di + 3], dh
│           0000:090c      mov   bx, 0x64                              ; 'd'
│           0000:090f      call  fcn.0000093e                          ; fcn.0000093e
│           0000:0912      mov   byte cs:[di + 4], dh
│           0000:0916      mov   bx, 0xa
│           0000:0919      call  fcn.0000093e                          ; fcn.0000093e
│           0000:091c      mov   byte cs:[di + 5], dh
│           0000:0920      mov   byte cs:[di + 6], al
└           0000:0924      ret
```

### Function 0x00000925
```asm
; CALL XREFS from fcn.000008df @ 0x8e4, 0x8ef, 0x8fb
┌ fcn.00000925(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0925      xor   dh, dh
│           ; CODE XREF from fcn.00000925 @ 0x937
│       ┌─> 0000:0927      sub   dl, cl
│      ┌──< 0000:0929      jb    0x93b
│      │╎   0000:092b      sub   ax, bx                                ; arg3
│     ┌───< 0000:092d      jae   0x935
│     ││╎   0000:092f      or    dl, dl
│    ┌────< 0000:0931      je    0x939
│    │││╎   0000:0933      dec   dl
│    │└───> 0000:0935      inc   dh
│    │ │└─< 0000:0937      jmp   0x927
│    └────> 0000:0939      add   ax, bx                                ; arg3
│      └──> 0000:093b      add   dl, cl
└           0000:093d      ret
```

### Function 0x0000093e
```asm
; CALL XREFS from fcn.000008df @ 0x905, 0x90f, 0x919
┌ fcn.0000093e(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:093e      xor   dh, dh
│           0000:0940      div   bx
│           0000:0942      xchg  dx, ax                                ; arg1
│           0000:0943      mov   dh, dl
│           0000:0945      xor   dl, dl
└           0000:0947      ret
```

### Function 0x00000bed
```asm
; CALL XREFS from fcn.0000093e @ +0x170, +0x200, +0x22c, +0x259, +0x286
┌ fcn.00000bed(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0bed      mov   cx, 8
│       ┌─> 0000:0bf0      xor   bx, bx
│       ╎   0000:0bf2      rol   word cs:[0x3cbb], 1
│       ╎   0000:0bf7      adc   bx, bx
│       ╎   0000:0bf9      rol   word cs:[0x3cb9], 1
│       ╎   0000:0bfe      adc   bx, bx
│       ╎   0000:0c00      rol   word cs:[0x3cb7], 1
│       ╎   0000:0c05      adc   bx, bx
│       ╎   0000:0c07      rol   word cs:[0x3cbb], 1
│       ╎   0000:0c0c      adc   bx, bx
│       ╎   0000:0c0e      rol   word cs:[0x3cb9], 1
│       ╎   0000:0c13      adc   bx, bx
│       ╎   0000:0c15      rol   word cs:[0x3cb7], 1
│       ╎   0000:0c1a      adc   bx, bx
│       ╎   0000:0c1c      add   dx, dx                                ; arg2
│       ╎   0000:0c1e      add   dx, dx                                ; arg2
│       ╎   0000:0c20      or    dl, byte cs:[bx + 0x3c24]
│       └─< 0000:0c25      loop  0xbf0
└           0000:0c27      ret
```

### Function 0x00000c68
```asm
; CALL XREFS from fcn.0000093e @ +0x17d, +0x232, +0x25f, +0x28c
┌ fcn.00000c68(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0c68      mov   cx, 8
│       ┌─> 0000:0c6b      xor   al, al
│       ╎   0000:0c6d      rol   word cs:[0x3cbd], 1
│       ╎   0000:0c72      adc   al, al
│       ╎   0000:0c74      rol   word cs:[0x3cbd], 1
│       ╎   0000:0c79      adc   al, al
│       ╎   0000:0c7b      cmp   al, 3
│      ┌──< 0000:0c7d      je    0xc81
│      │╎   0000:0c7f      xor   al, al
│      └──> 0000:0c81      add   dx, dx                                ; arg2
│       ╎   0000:0c83      add   dx, dx                                ; arg2
│       ╎   0000:0c85      or    dl, al
│       └─< 0000:0c87      loop  0xc6b
└           0000:0c89      ret
```

### Function 0x00000c8a
```asm
; CALL XREFS from fcn.000006c0 @ +0x23, +0x52, +0x8d
            ; CALL XREFS from fcn.0000093e @ +0x10, +0x6e
┌ fcn.00000c8a(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0c8a      xor   ax, ax
│           0000:0c8c      mov   al, bl
│           0000:0c8e      add   ax, 0x1c
│           0000:0c91      mov   bl, 3
│           0000:0c93      div   bl
│           0000:0c95      mov   bl, ah
│           0000:0c97      ror   bl, 1
│           0000:0c99      ror   bl, 1
│           0000:0c9b      ror   bl, 1
│           0000:0c9d      and   bl, 0x60
│           0000:0ca0      mov   ah, 0x5a                              ; 'Z'
│           0000:0ca2      mul   ah
│           0000:0ca4      add   ah, bl
│           0000:0ca6      add   bh, 5
│           0000:0ca9      mov   bl, bh
│           0000:0cab      xor   bh, bh
│           0000:0cad      add   ax, bx                                ; arg3
└           0000:0caf      ret
```

## Cross-References (callers)
```json
  0x000000df:
[{"from":139,"to":223,"type":"CALL"}]
  0x0000011b:
[{"from":187,"to":283,"type":"CALL"}]
  0x00000124:
[{"from":171,"to":292,"type":"CALL"},{"from":179,"to":292,"type":"CALL"},{"from":195,"to":292,"type":"CALL"},{"from":203,"to":292,"type":"CALL"},{"from":504,"to":292,"type":"CODE"}]
  0x000001d0:
[{"from":147,"to":464,"type":"CALL"},{"from":155,"to":464,"type":"CALL"},{"from":163,"to":464,"type":"CALL"}]
  0x000002ba:
[{"from":797,"to":698,"type":"CALL"}]
  0x000002bd:
[{"from":993,"to":701,"type":"CALL"}]
  0x000003b1:
[{"from":113,"to":945,"type":"CALL"}]
  0x00000430:
[{"from":768,"to":1072,"type":"CALL"},{"from":784,"to":1072,"type":"CALL"},{"from":978,"to":1072,"type":"CALL"}]
  0x00000449:
[{"from":1072,"to":1097,"type":"CALL"}]
  0x0000044d:
[{"from":1086,"to":1101,"type":"CALL"},{"from":1109,"to":1101,"type":"CODE"}]
  0x00000457:
[{"from":270,"to":1111,"type":"CALL"},{"from":889,"to":1111,"type":"CALL"},{"from":911,"to":1111,"type":"CALL"},{"from":1058,"to":1111,"type":"CALL"}]
  0x00000470:
[{"from":826,"to":1136,"type":"CALL"}]
  0x00000492:
[{"from":814,"to":1170,"type":"CALL"},{"from":1016,"to":1170,"type":"CALL"}]
  0x000004b8:
[{"from":805,"to":1208,"type":"CALL"},{"from":1001,"to":1208,"type":"CALL"}]
  0x000004f8:
[{"from":1035,"to":1272,"type":"CALL"},{"from":1157,"to":1272,"type":"CALL"},{"from":1160,"to":1272,"type":"CODE"},{"from":1168,"to":1272,"type":"CODE"},{"from":1254,"to":1272,"type":"CODE"},{"from":1259,"to":1272,"type":"CALL"},{"from":1262,"to":1272,"type":"CODE"},{"from":1270,"to":1272,"type":"CODE"}]
  0x0000056b:
[{"from":1324,"to":1387,"type":"CALL"},{"from":1378,"to":1387,"type":"CALL"}]
  0x000005d3:
[{"from":1435,"to":1491,"type":"CALL"},{"from":1448,"to":1491,"type":"CALL"}]
  0x000005e4:
[{"from":1464,"to":1508,"type":"CALL"},{"from":1477,"to":1508,"type":"CALL"}]
  0x00000621:
[{"from":1542,"to":1569,"type":"CALL"},{"from":1555,"to":1569,"type":"CALL"}]
```