# UTILITIES_B - Analysis

**Source:** `chunk_30.bin`  
**Size:** 2.8 KB  
**Functions:** 4  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000002    1 36           fcn.00000002
0x000000d6   25 683  -> 676  fcn.000000d6
0x00000136    1 13           fcn.00000136
0x0000059b    1 56           fcn.0000059b
```

## Strings
```
nth      paddr      vaddr len size section type   string  
----------------------------------------------------------
  0 0x00000166 0x00000166   4    5         ascii  \f?}L
  1 0x00000272 0x00000272   4    5         ascii  \ak\a 
  2 0x000002cf 0x000002cf   4    5         ascii  \v; `
  3 0x00000494 0x00000494   4    5         ascii  (h: 
  4 0x00000956 0x00000956   7    8         ibm037 2A AN b
```

## Function Disassembly

### Function 0x00000002
```asm
; DATA XREF from fcn.00000136 @ +0x40f
┌ fcn.00000002(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           0000:0004      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.0000059b @ +0x3d0
│           0000:0006      xchg  di, ax                                ; arg1
│           ; DATA XREF from fcn.0000059b @ +0x551
│           0000:0007      add   byte [0x8015], al
│           ; DATA XREFS from fcn.000000d6 @ 0x2cd, 0x321
│           ; DATA XREF from fcn.0000059b @ +0x28a
│           0000:000b      add   byte [bx + di], al                    ; arg3
│           ; DATA XREFS from fcn.00000002 @ +0xa6, +0xcb
│           ; DATA XREFS from fcn.00000136 @ +0x3c2, +0x3e2
│           ; DATA XREF from fcn.0000059b @ +0x9d
│           0000:000d      mov   al, byte [0x8714]                     ; [0x8714:1]=255
│           ; DATA XREFS from fcn.00000136 @ +0x40c, +0x441
│           ; DATA XREFS from fcn.0000059b @ +0x304, +0x354
│           0000:0010      add   byte [si], al
│           ; DATA XREF from fcn.0000059b @ +0x163
│           0000:0012      add   ax, 0xff57                            ; arg1
│           ; DATA XREF from fcn.0000059b @ +0x43e
│           0000:0015      rcl   word [bx + 0x600]
│           ; DATA XREF from fcn.000000d6 @ 0x27a
│           0000:0019      das
│           0000:001a      nop
│           0000:001b      add   byte [bx + di], al                    ; arg3
│           ; DATA XREF from fcn.0000059b @ +0x40d
│           0000:001d      mov   al, byte [0x86a8]                     ; [0x86a8:1]=255
│           0000:0020      add   byte [di], al
└           0000:0022      or    bh, byte [bx + 0xe0]                  ; arg3
```

### Function 0x000000d6
```asm
; CALL XREF from fcn.00000002 @ +0x4e
┌ fcn.000000d6(int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4, int16_t arg_100h, int16_t arg_300h, int16_t arg_500h, short unsigned int arg_b00h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           ; arg int16_t arg_100h @ stack + 0x100
│           ; arg int16_t arg_300h @ stack + 0x300
│           ; arg int16_t arg_500h @ stack + 0x500
│           ; arg short unsigned int arg_b00h @ stack + 0xb00
│           0000:00d6      ror   byte [bx + si], 0
│       ┌─< 0000:00d9      jge   0xdb
│       └─> 0000:00db      add   ax, di                                ; arg1
│           0000:00dd      mov   al, byte [bx + si]                    ; arg3
│           0000:00df      add   al, 7
│           0000:00e1      xchg  al, al
│           0000:00e3      sbb   byte [bp + si + 0x300], al
│           0000:00e7      adc   byte [si], cl
│           0000:00e9      push  es
│           0000:00ea      add   byte [bx + si], 7                     ; arg3
│           0000:00ed      add   ax, di                                ; arg1
│           0000:00ef      add   al, al
│           0000:00f1      pop   ds
│           0000:00f2      clc
│           0000:00f3      pushaw
│           0000:00f4      add   byte [bx + si], 5                     ; arg3
│           0000:00f7      add   byte ds:[bx + di], 0x80               ; [0x80:1]=126 ; arg3
│           0000:00fb      cmp   al, byte [si + 0x300]
│           ; DATA XREF from fcn.0000059b @ +0x4d2
│           0000:00ff      push  cs
│           0000:0100      xor   si, ax                                ; arg1
│       ┌─> 0000:0102      test  byte [bx + si], al                    ; arg3
│       ╎   0000:0104      add   al, byte [bx]                         ; arg3
│       ╎   0000:0106      push  ax                                    ; arg1
│       ╎   0000:0107      add   byte [bx + si], 9                     ; arg3
│       ╎   0000:010a      add   ax, ax                                ; arg1
│       ╎   0000:010c      add   byte [si], al
│       ╎   0000:010e      add   byte [bx + di], al                    ; arg3
│       ╎   0000:0110      add   byte [0x8303], al
│       ╎   0000:0114      add   byte [bp + si], al
│       ╎   0000:0116      pop   ds
│       ╎   0000:0117      cld
│       ╎   0000:0118      add   word [bx + si], 0xa                   ; arg3
│       ╎   0000:011b      push  ds
│       ╎   0000:011c      add   byte [bx + si + 0x3b], ah             ; arg3
│       ╎   0000:011f      inc   ax                                    ; arg1
│       ╎   0000:0120      push  cs
│       ╎   0000:0121      add   byte [bp + si], bh
│       ╎   0000:0123      add   byte [bp + si], al
│       ╎   0000:0125      add   word [bx + si], 2                     ; arg3
│       ╎   0000:0128      cmp   byte [si - 0x7c], ah
│       ╎   0000:012b      add   byte [bp + di], al
│       ╎   0000:012d      add   sp, ax                                ; arg1
│       ╎   0000:012f      add   byte [si + 0x700], 3
│       ╎   0000:0134      nop
│       ╎   ; CALL XREF from fcn.00000002 @ +0xb1
│       ╎   ;-- (0x00000136) fcn.00000136:
│       ╎   0000:0135  ~   add   al, byte [bx + di]                    ; arg3
│       ╎   0000:0137      add   al, 1
│       ╎   0000:0139      add   byte [bp + di + 0x100], 0x60          ; [0x60:1]=0
│       ╎   0000:013e      add   word [bx + si], 0xe                   ; [0xe:2]=0x8714 ; arg3
│       ╎   0000:0141      add   si, di
│       ╎   0000:0143      add   byte [bp + si], bh
│       ╎   0000:0145      stosb byte es:[di], al
│       ╎   0000:0146      rol   byte [bx + si], cl
│       ╎   0000:0148      add   cx, bp                                ; arg4
│       ╎   0000:014b      add   byte [si], 0
│       ╎   0000:014e      push  ds
│       ╎   0000:014f      xchg  word [bx + si], ax                    ; arg3
│       ╎   0000:0151      add   word [bx + si - 0x7e], si             ; arg3
│       ╎   0000:0154      add   byte [bp + si], cl
│       ╎   0000:0156      add   al, 0
│       ╎   0000:0158      add   ax, ax                                ; arg1
│       ╎   0000:015a      push  es
│       ╎   0000:015b      add   ax, word [bx + si]                    ; arg3
│       ╎   0000:015d      add   word [bx + si - 0x7de8], ax           ; arg3
│       ╎   0000:0161      add   byte [bx + di], al                    ; arg3
│       ╎   0000:0163      pushaw
│       ╎   0000:0164      xchg  byte [bx + si], al                    ; arg3
│       ╎   0000:0166      or    al, 0x3f
│      ┌──< 0000:0168      jge   0x1b6
│      │╎   0000:016a      add   byte [0xf419], bh
│      │╎   0000:016e      ror   byte [bx + si], 0
│      │╎   0000:0171      pop   es
│      │╎   0000:0172      lock  add byte [bx + si], 1
│      │╎   0000:0176      adc   ax, word [bp + si + 0x500]
│      │╎   0000:017a      add   word [bx], cx
│      │╎   0000:017c      lea   ax, [bx + si]
│      │└─< 0000:017e      loopne 0x102
│      │    0000:0180      add   byte [bx], al
│      │    0000:0182      add   byte [0xf001], 1
│      │    0000:0187      cmp   byte [bx + si], 0x82
│      │    0000:018a      add   byte [bx + di], al
│      │    0000:018c      pushaw
│      │    0000:018d      xchg  byte [bx + si], al
│      │    0000:018f      cmp   byte [bx], 7
│      │    0000:0192      rol   byte [bx + si], 0x3f
│      │    0000:0195      cmp   byte [bp + si - 0x40], 0x10
│      │    0000:0199      test  word [bx + si], ax
│      │    0000:019b      pop   es
│      │    0000:019c      inc   ax
│      │    0000:019d      rol   byte [bx + si], 1
│      │    0000:01a0      add   byte [bx - 2], bh
│      │    0000:01a3      test  byte [bx + si], al
│      │    0000:01a5      add   word [bx], ax
│      │    0000:01a7      add   byte [bx + si], 3
│      │    0000:01aa      add   word [bx + si], ax
│      │    0000:01ac      cmp   byte [bp + si + 0x100], al
│      │    0000:01b0      inc   ax
│      │    0000:01b1      xchg  byte [bx + si], al
│      │    0000:01b3      add   word [bp + di], di
│      │    0000:01b5  ~   add   word [bx + si], 5
│      └──> 0000:01b6      add   byte [di], al
│           0000:01b8      and   byte [bx + si], al                    ; arg3
│           0000:01ba      xor   ax, 0x3000                            ; arg1
│           0000:01bd      test  byte [bx + si], al                    ; arg3
│           0000:01bf      add   ax, 0x8f02                            ; arg1
│           0000:01c2      and   byte [bx + si], al                    ; arg3
│           0000:01c4      add   al, byte [bx + 0x100]                 ; arg3
│           0000:01c8      add   ax, word [bp + si + 0x300]            ; arg1
│           0000:01cc      add   al, byte [bx + si]                    ; arg3
│           0000:01ce      cmp   byte [bp + si + 0x100], al
│       ┌─> 0000:01d2      add   byte [bp + 0x100], 0x3a               ; [0x3a:1]=4
│       ╎   0000:01d7      test  word [bx + si], ax                    ; arg3
│       ╎   0000:01d9      add   sp, word [bx + di + 0x3000]           ; arg3
│       ╎   0000:01dd      test  byte [bx + si], al                    ; arg3
│       ╎   0000:01df      add   ax, 0x9b06                            ; arg1
│       ╎   0000:01e2      mov   al, byte [0x400]                      ; [0x400:1]=8
│       ╎   0000:01e5      xchg  word [bx + si], ax                    ; arg3
│       ╎   0000:01e7      add   al, byte [bx + di]                    ; arg3
│       ╎   0000:01e9      add   byte [bp + di + 0x100], 0x3e          ; [0x3e:1]=144
│       ╎   0000:01ee      add   byte [bx + si], 1                     ; arg3
│       ╎   0000:01f1      inc   ax                                    ; arg1
│       ╎   0000:01f2      xchg  byte [bx + si], al                    ; arg3
│       ╎   0000:01f4      add   word [bp + di], di
│       ╎   0000:01f6      test  byte [bx + si], al                    ; arg3
│       ╎   ; DATA XREF from fcn.0000059b @ +0x489
│       ╎   0000:01f8      add   ax, 0x7805                            ; arg1
│       ╎   0000:01fb      add   byte [bx + si], dh                    ; arg3
│       ╎   0000:01fd      add   byte [bp + di + 0xb00], 6
│       ╎   0000:0202      test  ax, 0xc0                              ; arg1
│       ╎   0000:0205      or    al, al
│       ╎   0000:0207      adc   al, 0xc0
│       ╎   0000:0209      add   byte [0x8280], cl
│       ╎   0000:020d      add   byte [0xd406], cl
│       ╎   0000:0211      add   byte [bx + si + 1], dh                ; arg3
│       ╎   0000:0214      mov   ah, 0xe0
│       ╎   0000:0216      outsw dx, word [si]
│       ╎   0000:0217      dec   di
│       ╎   ; DATA XREF from fcn.00000136 @ +0x39d
│       ╎   0000:0218      cli
│       ╎   0000:0219  ~   add   byte [bx], ch                         ; arg3
│      ┌──> 0000:021a      outsw dx, word [si]
│      ╎╎   0000:021b      add   byte [si - 0x7c], ch
│      ╎╎   0000:021e      add   byte [di], al
│      ╎╎   0000:0220      push  0x330
│      ╎╎   0000:0223      jcxz  0x265
│      ╎╎   0000:0225      test  word [bx + si], ax                    ; arg3
│      ╎╎   0000:0227      add   ch, byte [bx + di - 0x72]             ; arg3
│     ╎╎╎   0000:022a      add   byte [bx + si], 6                     ; arg3
│     ╎╎╎   0000:022d      shr   byte [bx + si], 0xd0                  ; arg3
│     ╎╎╎   ; DATA XREF from fcn.00000136 @ +0x279
│     ╎╎╎   0000:0230      add   byte [bx], al                         ; arg3
│     ╎╎╎   0000:0232      inc   ax                                    ; arg1
│     ╎╎╎   0000:0233      add   byte [bx + si], 0xe                   ; [0xe:1]=20 ; arg3
│     ╎╎╎   0000:0236      pop   es
│     ╎╎╎   0000:0237      push  si
│     ╎╎╎   0000:0238      add   byte [bx + si + 1], ch                ; arg3
│     ╎╎╎   0000:023b      xor   al, 0xe0
│     ╎╎╎   0000:023d      insb  byte es:[di], dx
│     ╎╎╎   0000:023e      stosb byte es:[di], al
│     ╎╎╎   0000:023f      test  al, 0
│     ╎╎╎   0000:0241      outsw dx, word [si]
│     ╎╎╎   0000:0242      add   byte [bx + si - 0x7c], ch             ; arg3
│     ╎╎╎   0000:0245      add   byte [si], al
│     ╎╎╎   0000:0247      push  0x8120
│     ╎╎└─< 0000:024a      loope 0x1d2
│     ╎╎    0000:024c      add   byte [bp + si], bl
│     ╎╎    0000:024e      imul  ax, word [0x80], 0xff80
│     ╎╎    0000:0253      push  0xe0
│     ╎╎    0000:0256      add   dx, ax                                ; arg2
│     ╎╎    0000:0258      add   byte [bx + si], dl
│     ╎╎    0000:025a      add   bp, word [bp + di]
│     ╎╎    0000:025d      push  0x6903
│     ╎╎┌─< 0000:0260      loopne 0x2ca
│     ╎╎│   0000:0262      push  0xffffffffffffffa0
│     ╎╎│   0000:0264  ~   add   byte [bp], ch
│     ╎╎│   0000:0265      outsb dx, byte [si]
│     ╎╎│   0000:0266      add   byte [bx + si - 0x7c], ch
│     ╎╎│   0000:0269      add   byte [di], al
│     ╎╎│   0000:026b      push  0x3b61                                ; 'a;'
│     ╎╎│   0000:026e      add   word [bx + si + 0x85], 0x6b07         ; [0x6b07:2]=0xffff
│     ╎╎│   0000:0274      pop   es
│     ╎╎│   0000:0275      and   byte [bx + si], al
│     ╎╎│   0000:0277      adc   byte [bx + si + 0x68], 0x82
│     ╎╎│   0000:027b      add   byte [bx + di], bl
│     ╎╎│   0000:027d      call  0x6280
│     ╎╎│   0000:0280      add   si, word [bx]
│     ╎╎│   0000:0282      xor   byte [si], 0xd1                       ; [0xd1:1]=240
│    ┌────< 0000:0286      loopne 0x2f0
│    │╎└──< 0000:0288      jp    0x21a
│    │╎ │   0000:028a      add   byte [bp], ch
│    │╎ │   0000:028d      push  0x300
│    │╎ │   0000:0290      add   byte [bx + si], 0x68                  ; [0x68:1]=132
│    │╎ │   0000:0293      ret   0xc161
..
│    │  └─> 0000:02ca      add   dl, al
│    │      0000:02cc      xor   al, 0x82
│    │      0000:02ce      add   byte [bp + di], cl
│    │      0000:02d0      cmp   sp, word [bx + si]
│    │      0000:02d2      pushaw
│    │      0000:02d3      add   word [di + 0x6ac0], si
│    │      0000:02d7      add   al, byte [bx + 0x6b80]
│    │      0000:02db      add   word [bx + si], 0x14                  ; [0x14:2]=0xd1ff
│    │      0000:02de      insb  byte es:[di], dx
│    │      0000:02df      add   byte [bx + si], ch
│    │      0000:02e2      inc   ax
│    │  ┌─< 0000:02e3      jno   0x2e5
│    │  └─> 0000:02e5      push  0xc1c4
│    │      0000:02e8      add   byte [bx + si], 3
│    │  ┌─< 0000:02eb      jcxz  0x2f4
│    │  │   0000:02ed      dec   si
│    │  │   0000:02ee  ~   sub   byte [si], 0xe8                       ; [0xe8:1]=12
│    └────> 0000:02f0      add   al, ch
│       │   0000:02f2  ~   add   byte [bx + si], 2
│       └─> 0000:02f4      add   al, al
│           0000:02f6      cmp   al, byte [bp + si + 0xb00]
│       ┌─> 0000:02fa      sbb   ax, 0x7090
│       ╎   0000:02fd      add   word [di + 0x6cc0], si
│       ╎   0000:0301      inc   ax
│       ╎   0000:0302      pop   ds
│       ╎   0000:0303      add   byte [bp + di - 0x7d], ch
│       ╎   0000:0306      add   byte [si], dl
│       ╎   0000:0308      insb  byte es:[di], dx
│       ╎   0000:0309      add   byte [bx + si + 8], ch
│       ╎   0000:030c      add   byte [si], cl
│       ╎   0000:030e      sub   byte [bx + di - 0x74], 0x80           ; [0x80:1]=126
│       ╎   0000:0312      clc
│       ╎   0000:0313      add   byte [bx + si], dh
│       ╎   0000:0315      and   ax, word ds:[bx + 0x6c00]
│       ╎   0000:031a      add   byte [bx + si - 0x7e], dh
│       ╎   0000:031d      add   byte [bp + si], al
│       ╎   0000:031f      rcr   byte [di], 1
│       ╎   0000:0321      add   byte [bx + si], 0xb                   ; [0xb:1]=0
│       ╎   0000:0324      push  cs
│       ╎   0000:0325      test  al, 0x68
│       ╎   0000:0327      add   word [si + 0x6ec0], si
│       ╎   0000:032b      test  al, 0xfe
│       ╎   0000:032d      add   byte [bp + di - 0x7d], ch
│       ╎   ; DATA XREF from fcn.000000d6 @ 0x220
│       ╎   0000:0330      add   byte [bx + di], cl
│       ╎   0000:0332      push  0x6800
│       ╎   0000:0335      adc   byte [bp + di], al
│       ╎   0000:0337      xchg  byte [bx + si + 0x69], al
│       ╎   0000:033a      lea   ax, [si + 0x1700]
│       ╎   0000:033e      add   ax, cx
│       ╎   0000:0340      sbb   byte [bx + si + 0x68], al
│       ╎   0000:0343      add   byte [si], bl
│       ╎   0000:0345      add   byte [bx + si], dl
│       ╎   0000:0347      add   byte [bx + si + 0x77], ah
│       ╎   0000:034a      and   al, 0x70
│       ╎   0000:034d      add   word [0x7440], cx                     ; [0x7440:2]=0xffff
│       ╎   0000:0351      xor   byte [bp + si + 0x10], 0x63           ; [0x63:1]=30
│       ╎   0000:0355      xchg  byte [bx + si], al
│       ╎   0000:0357      pop   ds
│       ╎   0000:0358      cmp   bx, di
│       ╎   0000:035a      push  sp
│       ╎   0000:035b      add   bh, byte [bx - 0x30]
│       ╎   0000:035e      inc   ax
│       ╎   0000:035f      add   byte [bx + si + 1], al
│       ╎   0000:0362      rol   byte [bx + si], 2
│       ╎   0000:0365      add   byte [bx], bh
│       ╎   0000:0367      adc   byte [bx + si], al
│       ╎   0000:0369      aas
│       ╎   0000:036a      and   byte [bx + si], 8
│       ╎   0000:036d      sbb   byte [bp + si], bh
│       ╎   0000:036f      out   0x40, ax
│       ╎   0000:0371      pushaw
│       ╎   0000:0372      add   al, byte [bx + 0x3cb0]
│       └─< 0000:0376      loopne 0x2fa
│           0000:0378      xor   byte [bp + si], al
│           0000:037a      xor   word [bx + si + 0x85], ax
│           0000:037e      pop   es
│           0000:037f      inc   bx
└           0000:0380      ret
```

### Function 0x00000136
```asm
│           ; CALL XREF from fcn.00000002 @ +0xb1
┌ fcn.00000136(int16_t arg1, int16_t arg2, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0136      add   word [si], ax                         ; arg1
│           0000:0138      add   word [bx + si + 0x83], ax             ; arg3
│           0000:013c      add   word [bx + si - 0x7d], sp             ; arg3
│           0000:013f      add   byte [0xfe01], cl
```

### Function 0x0000059b
```asm
; CALL XREF from fcn.00000136 @ +0x3d6
┌ fcn.0000059b(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:059b      add   ax, 0xfa1f                            ; arg1
│           0000:059e      test  al, 0
│           0000:05a0      das
│           0000:05a1      xchg  di, ax                                ; arg1
│           0000:05a2      add   byte [bp + si], al
│           0000:05a4      adc   byte [bx + si - 0x7e], bh             ; arg3
│           0000:05a7      add   byte [bp + si], al
│           0000:05a9      pushaw
│           0000:05aa      pop   sp
│           0000:05ab      test  word [bx + si], ax                    ; arg3
│           0000:05ad      add   ax, word [bx + di]                    ; arg3
│           0000:05af      cmc
│           0000:05b0      inc   ax                                    ; arg1
│           0000:05b1      add   byte [bx + si], 1                     ; arg3
│           0000:05b4      add   word [bx + 0x200], dx                 ; arg3
│           0000:05b8      adc   byte [0x82], bl
│           0000:05bc      add   ah, byte [bx + si - 0x44]             ; arg3
│           0000:05bf      test  word [bx + si], ax                    ; arg3
│           0000:05c1      add   bl, byte [bx]                         ; arg3
│           0000:05c3      inc   ax                                    ; arg1
│           0000:05c4      mov   word [bx + si], es                    ; arg3
│           0000:05c6      add   al, byte [bx + di]                    ; arg3
│           0000:05c8      das
│           0000:05c9      cmp   di, 1
│           0000:05cc      add   byte [si + 0x300], 0x7f               ; [0x7f:1]=1
└           0000:05d1      jmp   ax                                    ; arg1
```

## Cross-References (callers)
```json
  0x00000002:
[{"from":1349,"to":2,"type":"DATA"}]
  0x000000d6:
[{"from":80,"to":214,"type":"CALL"}]
  0x00000136:
[{"from":179,"to":310,"type":"CALL"}]
  0x0000059b:
[{"from":1292,"to":1435,"type":"CALL"}]
```