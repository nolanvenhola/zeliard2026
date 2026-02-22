# UTILITIES_A - Analysis

**Source:** `chunk_24.bin`  
**Size:** 4.2 KB  
**Functions:** 2  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    2 47           fcn.00000000
0x0000011f    1 131          fcn.0000011f
```

## Strings
```
nth      paddr      vaddr len size section type   string              
----------------------------------------------------------------------
  0 0x000002a3 0x000002a3  19   20         ibm037 ÚÄxGW=@=?XGXÕ@==7CW
  1 0x0000041c 0x0000041c   4    4         ascii  ~P@\a
  2 0x000004f0 0x000004f0   4    5         ascii  U|\eO
  3 0x00000506 0x00000506   4    5         ascii  UUX`
  4 0x00000529 0x00000529   4    5         ascii  \aEK\f
  5 0x00000565 0x00000565   4    4         ascii  Up\f\f
  6 0x0000056e 0x0000056e   4    4         ibm037  gtz
  7 0x00000574 0x00000574   4    4         ascii  U`\f0
  8 0x000005ad 0x000005ad   5    6         ascii  W'\tVU
  9 0x000005c7 0x000005c7   4    4         ascii  sUH\n
 10 0x000005f6 0x000005f6   5    5         ascii  `%P" 
 11 0x00000601 0x00000601   4    4         ascii  u D@
 12 0x00000608 0x00000608   5    6         ascii  \rUUX(
 13 0x00000628 0x00000628   5    6         ascii  @@2@D
 14 0x00000659 0x00000659   6    6         ascii  \aUUWP\n
 15 0x00000684 0x00000684   4    4         ascii  \aUUR
 16 0x000006b0 0x000006b0   4    5         ascii  X0\b\f
 17 0x000006e8 0x000006e8   4    5         ascii  0@<)
 18 0x0000071c 0x0000071c   4    5         ascii  UW`\f
 19 0x00000726 0x00000726   4    4         ascii  \f\fUT
 20 0x0000083b 0x0000083b   5    5         ascii  r1}{1
 21 0x0000086b 0x0000086b   5    6         ascii  LTd\vD
 22 0x000008ab 0x000008ab   4    5         ascii  K\e_0
 23 0x000008cb 0x000008cb   4    4         ascii  %@\f4
 24 0x000008fe 0x000008fe   5    6         ascii  2p\f\f0
 25 0x0000099d 0x0000099d   4    4         ascii  `0:\a
 26 0x00000a23 0x00000a23   4    5         ascii  86\b\b
 27 0x00000a2c 0x00000a2c   5    5         ascii  \f!(f_
 28 0x00000a38 0x00000a38   4    5         ascii  @  ,
 29 0x00000a41 0x00000a41   4    4         ascii  d!L\e
 30 0x00000a65 0x00000a65   5    5         ascii  ~Pl\r\b
 31 0x00000a72 0x00000a72   4    5         ascii  \!0 
 32 0x00000a91 0x00000a91   4    4         utf8   Nx`f
 33 0x00000a98 0x00000a98   4    5         ascii  "bL\b
 34 0x00000b3d 0x00000b3d   4    5         ascii  \a\nzp
 35 0x00000b58 0x00000b58   5    6         ascii  ` #A@
 36 0x00000ba4 0x00000ba4   4    4         ascii  `l\f\f
 37 0x00000ba9 0x00000ba9   6    6         ascii  @,9x\f@
 38 0x00000cb8 0x00000cb8   4    4         ascii  UAO(
 39 0x00000ccb 0x00000ccb   5    6         ascii  AAO(6
 40 0x00000d7a 0x00000d7a   7    8         ascii  Pf"c\nA6
 41 0x00000db2 0x00000db2   5    5         ascii  r }{1
 42 0x00000e31 0x00000e31   6    7         ascii  UX\aEK\f
 43 0x00000e6d 0x00000e6d   4    4         ascii  0KU\
 44 0x00000eb5 0x00000eb5   4    4         ascii  UWP\t
 45 0x00000eec 0x00000eec   5    6         ascii  aUUp:
 46 0x00000ef9 0x00000ef9   4    5         ascii  UH0\r
 47 0x00000f08 0x00000f08   5    5         ascii   \r& A
 48 0x00000f0e 0x00000f0e   6    7         ascii  UAupd@
 49 0x00000f35 0x00000f35   5    5         ascii  !"`BI
 50 0x00000f3d 0x00000f3d   4    5         ascii  D`BD
 51 0x00000f42 0x00000f42   4    4         utf8   \bA/\f
 52 0x00000f4d 0x00000f4d   5    6         ascii  H!xc`
 53 0x00001004 0x00001004   4    5         ascii  6S}`
 54 0x00001085 0x00001085   4    4         ascii  f8 l
 55 0x0000108f 0x0000108f   5    6         ascii  Ff\t0`
 56 0x0000109e 0x0000109e   4    5         ascii  As(6
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(short unsigned int arg1, int16_t arg2, short unsigned int arg3);
│           ; arg short unsigned int arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg short unsigned int arg3 @ bx
│           0000:0000      fst   qword [bx + si]
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.0000011f @ +0x3c1
│           0000:0004      add   byte [bx], al                         ; arg3
│           0000:0006      fstp  qword [bp + si]
│           0000:0008      add   al, 0x81
│           ; DATA XREF from str.UAO @ +0x656
│           0000:000a      add   byte [bx + si], 0x1f                  ; [0x1f:1]=255 ; arg3
│           ; DATA XREF from str.UAO @ +0x27b
│           0000:000e      cmp   byte [bx + si], al                    ; arg3
│           ; DATA XREF from str.UUX @ +0x14a
│           ; DATA XREF from str.UAO @ +0x705
│           0000:0010      add   di, si
│           ; DATA XREF from str.UAO @ +0x4d4
│           0000:0012      add   byte [bx + si], 0x1f                  ; [0x1f:1]=255 ; arg3
│           ; DATA XREFS from str.UAO @ +0x3f9, +0x3fe, +0x559
│       ┌─< 0000:0015      js    0x17
│       └─> 0000:0017      add   di, si
│           0000:0019      add   byte [bx + si], 0x1f                  ; [0x1f:1]=255 ; arg3
│           0000:001c      call  fcn.0000011f                          ; fcn.0000011f
│           ; DATA XREFS from fcn.00000000 @ 0xa, 0x12, 0x19
│           ; DATA XREF from fcn.0000011f @ +0x28f
│           ; DATA XREF from str.UUX @ +0x19
│           0000:001f      inc   word [bx + si + 0xf00]
│           0000:0023      cld
│           ; DATA XREF from str.UAO @ +0x750
│           0000:0024      add   byte [bx + si], al
│           ; DATA XREF from str.UAO @ +0x33c
│           0000:0026      inc   ax
│           ; DATA XREF from fcn.0000011f @ +0x356
│           0000:0028      add   byte [bx], cl
│           ; DATA XREF from str.UAO @ +0x682
│           0000:002a      cld
│           0000:002b      add   byte [bx + si], al
└       ┌─< 0000:002d      jmp   0xffef
```

### Function 0x0000011f
```asm
; CALL XREF from fcn.00000000 @ 0x1c
┌ fcn.0000011f(short unsigned int arg1, int16_t arg3, int16_t arg4, int16_t arg_10h);
│           ; arg short unsigned int arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           ; arg int16_t arg_10h @ stack + 0x10
│           0000:011f      ror   byte [bx + si], 0xc0
│           0000:0122      cld
│           0000:0123      add   byte [si - 0x3ff1], al
│           0000:0127      or    byte [bx + di + 0x78], al             ; arg3
│           0000:012a      add   byte [si - 0x7ff9], al
│           0000:012e      or    byte [bx + si + 0x78], al             ; arg3
│           0000:0131      add   byte [si + 6], al
│           0000:0134      add   byte [si], al
│           0000:0136      rol   byte cs:[bx + si], 0x42
│           0000:013a      stc
│           0000:013b      add   byte [si], al
│           0000:013d      adc   byte ds:[bx + si], al                 ; arg3
│           ; DATA XREFS from fcn.0000011f @ +0x26b, +0x272, +0x279, +0x280
│           0000:0140      and   si, cx                                ; arg4
│           0000:0142      add   byte [bp + si], 0x7e                  ; [0x7e:1]=63
│           0000:0145      xor   byte [bx + si], al                    ; arg3
│           0000:0147      daa
│           0000:0148      xor   word [bx + si], ax                    ; arg3
│           0000:014a      add   bh, byte [bp + di + 0x10]
│           0000:014d      add   byte [bx], ah                         ; arg3
│           0000:014f      xchg  cx, ax                                ; arg1
│           0000:0150      add   byte [bp + di], 0x79                  ; [0x79:1]=19
│           0000:0153      cwde
│           0000:0154      add   byte [0x1d], dl
│           0000:0158      add   word [bx + di - 0x28], sp             ; arg3
│           0000:015b      add   byte [0x801d], dl
│           0000:015f      add   word [bx + si - 0x28], sp             ; arg3
│           0000:0162      inc   ax                                    ; arg1
│           0000:0163      push  ss
│           0000:0164      or    al, 0x8c
│           0000:0166      add   word [bx + di], ax                    ; arg3
│           0000:0168      cmp   ax, 0x80                              ; arg1
│           0000:016b      adc   bx, word [bx + si + 0x100]            ; int16_t arg3
│           ; DATA XREF from str.UUX @ +0x267
│           0000:016f      and   word [bx + si + 0x1a00], ax           ; arg3
│           0000:0173      sbb   byte [bx + si], al                    ; arg3
│           0000:0175      add   word [bx + si + 0x80], sp             ; arg3
│           0000:0179      sbb   cl, byte [bx + si]                    ; arg3
│           0000:017b      add   byte [bx + di], al                    ; arg3
│           0000:017d      mov   ax, word [0x80]                       ; [0x80:2]=0xc125
│           0000:0180      or    cl, byte [si]
│           0000:0182      add   byte [bx + si], al                    ; arg3
│           0000:0184      mov   ax, word [0xc0]                       ; [0xc0:2]=0xe001
│           0000:0187      or    bl, byte [si]
│           0000:0189      add   byte [bx + si], al                    ; arg3
│           0000:018b      rol   ax, 1                                 ; int16_t arg1
│           0000:018d      add   byte [bx], cl                         ; arg3
│           0000:018f      cmp   al, 0
│           0000:0191      add   bl, bh
│           0000:0193      rol   byte [bx + si], 0xf
│           0000:0196      mov   sp, 0
│           0000:0199      inc   ax
│           0000:019b      add   byte [bx], cl                         ; arg3
│           0000:019d      cld
│           0000:019e      add   byte [bx + si], al                    ; arg3
└           0000:01a0      jmp   ax
```

## Cross-References (callers)
```json
  0x0000011f:
[{"from":28,"to":287,"type":"CALL"}]
```