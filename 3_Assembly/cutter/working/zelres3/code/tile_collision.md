# TILE_COLLISION - Analysis

**Source:** `chunk_16.bin`  
**Size:** 2.9 KB  
**Functions:** 6  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000   28 309  -> 326  fcn.00000000
0x000001fa   10 129  -> 158  fcn.000001fa
0x00000525    3 17           fcn.00000525
0x00000536    3 16           fcn.00000536
0x0000075c    7 43           fcn.0000075c
0x000009b8    5 62           fcn.000009b8
```

## Strings
```
nth      paddr      vaddr len size section type    string                                                                        
---------------------------------------------------------------------------------------------------------------------------------
  0 0x0000004e 0x0000004e   4    5         ascii   himn
  1 0x00000053 0x00000053   4    5         ascii   lmrs
  2 0x00000076 0x00000076   4    5         ascii   jkop
  3 0x0000007b 0x0000007b   4    5         ascii   pquv
  4 0x00000080 0x00000080   4    5         ascii   wxz{
  5 0x00000085 0x00000085   4    5         ascii   xy{|
  6 0x00000184 0x00000184   4    5         ibm037  3434
  7 0x000001de 0x000001de   4    5         ascii   6,&'
  8 0x000001f2 0x000001f2   4    5         ascii   \b\t>?
  9 0x000001f7 0x000001f7   4    5         ascii   CDIJ
 10 0x000001fc 0x000001fc   4    5         ascii   EFKL
 11 0x00000210 0x00000210   4    5         ascii   PQWX
 12 0x00000215 0x00000215   4    5         ascii   RSYZ
 13 0x0000021f 0x0000021f   4    5         ascii   \b\t]?
 14 0x00000224 0x00000224   4    5         ascii   _`-.
 15 0x00000229 0x00000229   4    5         ascii   ab/0
 16 0x00000233 0x00000233   4    5         ascii   \n\v@A
 17 0x000002f9 0x000002f9   4    4         ascii   6`r4
 18 0x0000051a 0x0000051a   4    4         ascii   <\nr(
 19 0x000005fd 0x000005fd   4    4         ascii   QWP.
 20 0x00000673 0x00000673   4    4         ascii   _GXY
 21 0x00000742 0x00000742   4    4         ascii   _GXY
 22 0x00000780 0x00000780   4    4         ascii   GGEY
 23 0x000007eb 0x000007eb   8    9         ascii   #$%&'()!
 24 0x000007f6 0x000007f6   8    9         ascii   #$%&'()!
 25 0x00000801 0x00000801   8    9         ascii   *$%&'()!
 26 0x0000080c 0x0000080c   9    9         ascii   *$%&'()!&
 27 0x0000088d 0x0000088d  17   17         ascii   PQRTSUVWXZY[\]_^`
 28 0x000008a8 0x000008a8   6   14         utf16le    †ꀀꀀ blocks=Basic Latin,Latin-1 Supplement,General Punctuation,Yi Syllables
 29 0x000008c3 0x000008c3  24   24         ascii   ubcdsetfugcisjthaklpsqtr
 30 0x000008e6 0x000008e6  27   28         ascii   657<08=19>2:;34@AFBGJCHKIDE
 31 0x00000922 0x00000922  18   18         ibm037  zØcba«ifgehdýþð±»a
 32 0x0000096f 0x0000096f  34   35         ibm037  ØÈzÎz`z"z°jklmnopqorªººæº¸ýzªzxzxz
 33 0x000009ac 0x000009ac   5   12         utf16le      
 34 0x000009ca 0x000009ca   4    4         ascii   \f X\v
 35 0x00000a51 0x00000a51   6    7         ascii   Dragon
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg3, int16_t arg_10h, int16_t arg_6fh, int16_t arg_c01h, int16_t arg_6710h);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; var int16_t var_7861h @ stack - 0x7861
│           ; arg int16_t arg_10h @ stack + 0x10
│           ; arg int16_t arg_6fh @ stack + 0x6f
│           ; arg int16_t arg_c01h @ stack + 0xc01
│           ; arg int16_t arg_6710h @ stack + 0x6710
│           0000:0000      test  ax, 0xb                               ; arg1
│           0000:0003      add   ch, bl
│           0000:0005      mov   byte [0xaa3c], al                     ; [0xaa3c:1]=255
│           ; DATA XREF from fcn.00000536 @ +0x212
│           0000:0008      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.000001fa @ +0x320
│           ; DATA XREF from fcn.00000536 @ +0x143
│           0000:000a      add   byte [bx + si], al                    ; arg3
│           ; DATA XREFS from fcn.00000536 @ +0x37, +0x3d
│           0000:000c      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.00000525 @ 0x529
│           0000:000e      add   byte [bx + si], al                    ; arg3
│           ; DATA XREFS from fcn.000001fa @ +0x13b, +0x255
│           ; DATA XREFS from fcn.00000536 @ +0x136, +0x205
│           0000:0010      add   byte [bx + si], al                    ; arg3
│           0000:0012      add   byte [bx + si], al                    ; arg3
│           0000:0014      sub   byte [0x1e1e], bl                     ; [0x1e1e:1]=255
│           0000:0018      push  ds
│           ; DATA XREF from fcn.00000536 @ +0x9f
│           0000:0019      push  ds
│           0000:001a      push  ds
│           0000:001b      push  ds
│           0000:001c      sub   byte [bx + si], ch                    ; arg3
│           ; DATA XREF from fcn.00000536 @ 0x53a
│           0000:001e      add   byte [bx + si], al                    ; arg3
│           ; DATA XREFS from fcn.00000536 @ +0x119, +0x1e0
│           ; DATA XREFS from fcn.0000075c @ +0xd1, +0x149
│           0000:0020      add   byte [bx + si], al                    ; arg3
│           0000:0022      add   byte [bx + si], al                    ; arg3
│           0000:0024      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.0000075c @ +0xbb
│           0000:0026      add   byte [bx + si], al                    ; arg3
│           0000:0028      add   byte [bx + si], al                    ; arg3
│           0000:002a      add   byte [bx + si], al                    ; arg3
│           0000:002c      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.000001fa @ 0x226
│           0000:002e      add   byte [bx + si], al                    ; arg3
│           0000:0030      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.0000075c @ +0xbd
│           0000:0032      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.000001fa @ +0x178
│           0000:0034      inc   sp
│           ; DATA XREF from fcn.000001fa @ +0x186
│           0000:0035      mov   al, byte [0xa06c]                     ; [0xa06c:1]=255
│           0000:0038      mov   sp, 0x7a0
│           0000:003b      mov   ax, word [0xa152]                     ; [0xa152:2]=0xffff
│           ; DATA XREF from fcn.0000075c @ +0xbf
│           0000:003e      mov   fs, word [bx + di - 0x5e22]           ; arg3
│           0000:0042      pop   ds
│           0000:0043      mov   byte [0xa247], al                     ; [0xa247:1]=255
│           0000:0046      xchg  di, ax
│           0000:0047      mov   byte [0x6600], al                     ; [0x6600:1]=255
│           ; DATA XREF from fcn.0000075c @ +0xc1
│           0000:004a      add   byte [bx + 0x6c], ah                  ; arg3
│           0000:004d      add   byte [bx + si + 0x69], ch             ; arg3
│           ; DATA XREF from fcn.0000075c @ +0x130
│           0000:0050      insw  word es:[di], dx
│           0000:0051      outsb dx, byte [si]
│           0000:0052      add   byte [si + 0x6d], ch
│       ┌─< 0000:0055      jb    0xca
│       │   0000:0057      add   byte [bp + di + 0x84], al
│       │   0000:005b      xchg  byte [bx + si], al                    ; arg3
│       │   0000:005d      xchg  bp, ax
│       │   0000:005e      mov   cl, 0x98
│       │   0000:0060      cdq
│       │   0000:0061      add   byte [bp + si - 0x6265], bl
│       │   0000:0065      sahf
│       │   0000:0066      add   byte [bx + si - 0x70], ch             ; arg3
│       │   0000:0069      insw  word es:[di], dx
│       │   0000:006a      xchg  cx, ax
│       │   0000:006b      add   byte [bp + si - 0x6265], bl
│       │   0000:006f      inc   byte [bx + si]                        ; arg3
│      ┌──< 0000:0071      jae   0xe7
│      ││   0000:0073      add   byte [bx + si], al                    ; arg3
│      ││   ; DATA XREF from fcn.00000000 @ 0x9e
│      ││   ; DATA XREF from fcn.0000075c @ +0x166
│      ││   0000:0075  ~   add   byte [bp + si + 0x6b], ch
│      ││   ; DATA XREFS from fcn.0000075c @ +0x78, +0x213
│      ││   ;-- str.jkop:
..
│      ││   0000:0078     .string "jkop" ; len=5
│   ┌┌└───> 0000:007b      jo    0xee
│   │╎┌───< 0000:007d      jne   0xf5
│   │╎│││   ; DATA XREFS from fcn.000001fa @ +0x161, +0x2ad
│   │╎│││   0000:007f  ~   add   byte [bx + 0x78], dh                  ; arg3
│   │╎│││   ; XREFS: DATA 0x0000032c  DATA 0x00000369  DATA 0x000003e0  
│   │╎│││   ; XREFS: DATA 0x0000044c  DATA 0x00000639  DATA 0x00000664  
│   │╎│││   ; XREFS: DATA 0x00000733  DATA 0x00000839  DATA 0x00000880  
│   │╎│││   ; XREFS: DATA 0x00000908  
│   │╎│││   ;-- str.wxz:
..
│  ┌──────< 0000:0082     .string "wxz{" ; len=5
..
│ ┌───────< 0000:0087      jnp   0x105
│ │││╎│││   0000:0089      add   byte [di + 0x7e], bh
│ ────────< 0000:008c      ja    0x9e
│ │││╎│││   0000:008e      add   byte [bx + 1], bh                     ; arg3
│ │││╎│││   0000:0091      or    al, 0xd
│ │││╎│││   0000:0093      add   byte [bx + 0x10], dh                  ; arg3
│ │││╎│││   ; DATA XREF from str.wxz @ +0xca
│ │││╎│││   0000:0096      add   byte [0x9700], cl
│ │││╎│││   0000:009a      add   byte [bx + si + 0x71], dh             ; arg3
│ │││╎│││   0000:009d  ~   add   byte [bp + di + 0x75], dh
│ ────────> 0000:009e      mov   bl, 0x75                              ; 'u'
│ │││╎│││   ; DATA XREF from fcn.00000536 @ +0x18
│ │││╎│││   0000:00a0      add   byte [bx], dh                         ; arg3
│ ────────> 0000:00a3      jbe   0xa5
│ ────────< 0000:00a5      js    0x120
│ │││╎│││   0000:00a7      add   byte [bp - 0x7861], ah
│ │││╎│││   0000:00ab      mov   ax, word [0x9900]                     ; [0x9900:2]=0xffff
│ │││╎│││   0000:00ae      xchg  word [bp + di + 0x88], si
│ │││╎│││   0000:00b2      mov   ax, word [0x8ca3]                     ; [0x8ca3:2]=0xffff
│ │││╎│││   ; DATA XREF from fcn.000001fa @ 0x261
│ │││╎│││   0000:00b5      mov   word [bx + si], ax                    ; arg3
│ │││╎│││   ; DATA XREFS from fcn.000001fa @ 0x24d, 0x257
│ │││╎│││   0000:00b7      mov   al, byte [bx + si]                    ; arg3
│ │││╎│││   0000:00b9      lodsw ax, word [si]
│ │││╎│││   0000:00ba      lea   ax, [bx + si]                         ; arg3
│ │││╎│││   0000:00bc      lodsw ax, word [si]
│ │││╎│││   0000:00bd      lea   cx, [bp + di + 0x10]
│ │││╎│││   0000:00c1      lea   cx, [bx + 0x7e10]                     ; arg3
│ │││╎│││   0000:00c5      add   byte [bp + 0xc01], ah
│ │││╎│││   0000:00c9  ~   or    ax, 0x8e00
│ │││╎││└─> 0000:00ca      add   byte [bp + 0x6710], cl
│ │││╎││    0000:00ce      push  cs
│ │││╎││    ; DATA XREF from fcn.0000075c @ +0x162
│ │││╎││    0000:00cf      add   byte [bp + 0x6f], ch
│ │││└────< 0000:00d2      jae   0x7b
│ │││ ││    0000:00d4      add   byte [bp + si + 0x6b], ch
│ │││ ││    0000:00d7      outsw dx, word [si]
│ │││ ││    0000:00d8      mov   al, byte [0xa000]                     ; [0xa000:1]=255
│ │││ ││    0000:00db      mov   ax, word [0xa9a8]                     ; [0xa9a8:2]=0xffff
│ │││ ││    0000:00de      add   byte [bx - 0x5e61], bl                ; arg3
│ │││ ││    0000:00e2      mov   byte [0xa200], al                     ; [0xa200:1]=255
│ │││ ││    0000:00e5  ~   mov   word [0xabaa], ax                     ; [0xabaa:2]=0xffff
│ │││ │└──> 0000:00e7      stosw word es:[di], ax
│ │││ │     0000:00e8      add   byte [si - 0x535b], ah
│ │││ │     0000:00ec      lodsw ax, word [si]
│ │││ │     0000:00ed  ~   add   byte [si + 0x67ad], ch
│ ││└─────> 0000:00ee      lodsb al, byte [si]
│ ││  │     0000:00ef      lodsw ax, word [si]
│ ││  │     0000:00f0      push  cs
│ ││  │     0000:00f2  ~   add   byte [bp + 0x6f], ch
│ ││  │ ┌─> 0000:00f4      outsw dx, word [si]
│ ││  └───> 0000:00f5      test  word [bx - 0x8000], sp                ; arg3
│ ││    ╎   0000:00f9      add   byte [bx + di + 0xae], 0xb4           ; [0xb4:1]=140 ; arg3
│ ││    ╎   0000:00fe  ~   rol   sp, cl
│ ││    ╎   ; XREFS: DATA 0x0000036d  DATA 0x0000037b  DATA 0x000003aa  
│ ││    ╎   ; XREFS: DATA 0x000003af  DATA 0x00000444  DATA 0x000004f4  
│ ││    ╎   ; XREFS: DATA 0x000009d7  DATA 0x000009fd  DATA 0x00000a3a  
│ │└──────> 0000:00ff      les   dx, [si - 0x2d00]
│ │     ╎   0000:0103  ~   add   byte [si + 0x9c], dl
│ └───────> 0000:0105      pushf
│       ╎   0000:0106      add   byte [di + 0x74], al
│       ╎   0000:010a      add   byte [bx + si], al                    ; arg3
│       ╎   0000:010c      add   bh, bl
│       ╎   0000:010e      call  fcn.000001fa                          ; fcn.000001fa
│       └─< 0000:0111      loopne 0xf4
│       ┌─< 0000:0113      ljmp  0xe2e2:0xea
..
│ ────────> 0000:0120      in    al, 0xe5
│      ││   0000:0122      add   byte [bx + si], al                    ; arg3
│      ││   0000:0124      add   byte [bx + si], al                    ; arg3
│      ││   0000:0126      out   0xec, ax
│      ││   0000:0128      in    ax, dx
│      ││   0000:0129      add   byte [bx + si], al                    ; arg3
│      ││   0000:012b      cmc
│      ││   0000:012c      stc
│      ││   0000:012d      cli
│      ││   0000:012e      add   ch, ch
│      ││   0000:0130      out   dx, al
│      ││   0000:0131      div   bh
└      ││   0000:0133      add   bh, ch
```

### Function 0x000001fa
```asm
; CALL XREF from fcn.00000000 @ 0x10e
┌ fcn.000001fa(int16_t arg2, int16_t arg3, int16_t arg_b5h, int16_t arg_b7h);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg_b5h @ stack + 0xb5
│           ; arg int16_t arg_b7h @ stack + 0xb7
│           0000:01fa      dec   dx                                    ; arg2
│           0000:01fb      add   byte [di + 0x46], al
│           0000:01fe      dec   bx                                    ; arg3
│           0000:01ff      dec   sp
│           0000:0200      add   byte [bx + 0x16], al                  ; arg3
│           ; DATA XREF from fcn.000001fa @ +0x2c3
│           0000:0203      dec   bp
│           0000:0204      dec   si
│           0000:0205      add   byte [bx + di], dl                    ; arg3
│           0000:0207      dec   di
│           0000:0208      push  bp
│           0000:0209      push  si
│           0000:020a      add   byte [si + 0x16], dl
│           0000:020d      pop   bx
│           0000:020e      dec   si
│           0000:020f      add   byte [bx + si + 0x51], dl
│           0000:0212      push  di
│           0000:0213      pop   ax
│           0000:0214      add   byte [bp + si + 0x53], dl
│           0000:0217      pop   cx
│           0000:0218      pop   dx
│           0000:0219      add   byte [bx + di], dl
│           0000:021b      pop   si
│           0000:021c      add   byte gs:[bx + si], cl
│           0000:0220      or    word [di + 0x3f], bx
│           0000:0223      add   byte [bx + 0x60], bl
│           0000:0226      sub   ax, 0x2e
│           0000:0229      popaw
│           0000:022a      bound bp, dword [bx]
│           0000:022c      xor   byte [bx + si], al
│           0000:022e      arpl  word [0x4e3a], dx
│           0000:0232      add   byte [bp + si], cl
│           0000:0234      or    ax, word [bx + si + 0x41]
│           0000:0237      add   byte [bx + si], al
│           0000:0239      add   byte [si], dl
│           0000:023b      adc   ax, 0x600
│           0000:023e      pop   es
│           0000:023f      adc   word [bx + di], dx
│           0000:0241      add   byte [bp + di], dl
│       ┌─< 0000:0243      jne   0x25c
│      ┌──< 0000:0245      ja    0x247
│      └──> 0000:0247      pop   ss
│      ┌──< 0000:0248      ja    0x262
│     ┌───< 0000:024a      jp    0x24d
│     │││   0000:024c  ~   add   byte [bp + 0xb7], dh
│     └───> 0000:024d      mov   dh, 0xb7
│      ││   0000:024f      add   byte [bx + di], al
│      ││   0000:0251      add   byte [di + 0xb6], dh
│      ││   0000:0255      add   word [bx + si], ax
│      ││   0000:0257      mov   dh, 0xb7
│      ││   0000:0259      add   byte [bx + di], al
│      ││   0000:025b  ~   add   byte [bx + 0xb8], dh
│      │└─> 0000:025c      mov   bh, 0xb8
│      │    0000:025e      add   byte [bx + di], al
│      │    0000:0260  ~   add   byte [bp + 0xb5], dh
│      └──> 0000:0262      mov   ch, 0
│           0000:0264      add   word [bx + di - 0x474a], di
│           0000:0268      add   byte [bx + di], al
│           0000:026a      mov   si, 0xb8b8
│           0000:026d      rol   byte [bx + di], 0xb8
│           0000:0270      rol   ch, 0xc6
│           0000:0273      add   word [bx + si], ax
│           0000:0275      add   dl, al
└           0000:0277      mov   word [bx + di], 0xbebd                ; [0xbebd:2]=0xffff
```

### Function 0x00000525
```asm
; CALL XREF from fcn.000001fa @ +0x1f4
┌ fcn.00000525();
│           0000:0525      mov   ax, word [0xaa3c]                     ; [0xaa3c:2]=0xffff
│           0000:0528      dec   ax
│           0000:0529      mov   bx, 0xe
│           0000:052c      sub   bx, ax
│           0000:052e      cmc
│       ┌─< 0000:052f      jae   0x532
│       │   0000:0531      ret
│       └─> 0000:0532      mov   word [0xaa3c], ax                     ; [0xaa3c:2]=0xffff
└           0000:0535      ret
```

### Function 0x00000536
```asm
; CALL XREF from fcn.000001fa @ +0x20c
┌ fcn.00000536();
│           0000:0536      mov   ax, word [0xaa3c]                     ; [0xaa3c:2]=0xffff
│           0000:0539      inc   ax
│           0000:053a      mov   bx, 0x1e
│           0000:053d      sub   bx, ax
│       ┌─< 0000:053f      jae   0x542
│       │   0000:0541      ret
│       └─> 0000:0542      mov   word [0xaa3c], ax                     ; [0xaa3c:2]=0xffff
└           0000:0545      ret
```

### Function 0x0000075c
```asm
; CALL XREFS from fcn.00000536 @ +0x3a, +0x5b, +0x7c, +0x9c, +0xb2
┌ fcn.0000075c(int16_t arg1, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:075c      mov   al, byte [0xaa53]                     ; [0xaa53:1]=255
│           0000:075f      mov   bl, 0xa
│           0000:0761      mul   bl
│           0000:0763      mov   bl, byte [0xaa54]
│           0000:0767      xor   bh, bh
│           0000:0769      add   ax, bx                                ; arg3
│           0000:076b      add   ax, 0xaa69                            ; arg1
│           0000:076e      mov   di, ax                                ; arg1
│       ┌─> 0000:0770      push  cx                                    ; arg4
│       ╎   0000:0771      mov   cx, 8
│      ┌──> 0000:0774      rol   byte ds:[bp], 1
│     ┌───< 0000:0778      jae   0x77d
│     │╎╎   0000:077a      lodsb al, byte [si]
│     │╎╎   0000:077b      mov   byte [di], al
│     └───> 0000:077d      inc   di
│      └──< 0000:077e      loop  0x774
│       ╎   0000:0780      inc   di
│       ╎   0000:0781      inc   di
│       ╎   0000:0782      inc   bp
│       ╎   0000:0783      pop   cx
│       └─< 0000:0784      loop  0x770
└           0000:0786      ret
```

### Function 0x000009b8
```asm
; CALL XREF from fcn.000001fa @ +0x18b
┌ fcn.000009b8(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:09b8      mov   ax, word [0xaa3f]                     ; [0xaa3f:2]=0xffff
│           0000:09bb      sub   ax, bx                                ; arg3
│       ┌─< 0000:09bd      jae   0x9c1
│       │   0000:09bf      xor   ax, ax
│       └─> 0000:09c1      mov   word [0xaa3f], ax                     ; [0xaa3f:2]=0xffff
│           0000:09c4      mov   bx, ax
│           0000:09c6      push  ax
│           0000:09c7      call  word cs:[0x200c]
│           0000:09cc      pop   ax
│           0000:09cd      or    ax, ax
│       ┌─< 0000:09cf      je    0x9d2
│       │   0000:09d1      ret
│       └─> 0000:09d2      mov   byte [0xaa58], 0
│           0000:09d7      mov   byte [0xff2e], 0xff                   ; [0xff:1]=196
│           0000:09dc      mov   byte [0xaa58], 0
│           0000:09e1      mov   byte [0xaa65], 0
│           0000:09e6      mov   byte [0xaa67], 0
│           0000:09eb      mov   byte [0xaa56], 0
│           0000:09f0      mov   byte [0xaa61], 0
└           0000:09f5      ret
```

## Cross-References (callers)
```json
  0x000001fa:
[{"from":270,"to":506,"type":"CALL"}]
  0x00000525:
[{"from":1006,"to":1317,"type":"CALL"}]
  0x00000536:
[{"from":1030,"to":1334,"type":"CALL"}]
  0x0000075c:
[{"from":1392,"to":1884,"type":"CALL"},{"from":1425,"to":1884,"type":"CALL"},{"from":1458,"to":1884,"type":"CALL"},{"from":1490,"to":1884,"type":"CALL"},{"from":1512,"to":1884,"type":"CALL"}]
  0x000009b8:
[{"from":901,"to":2488,"type":"CALL"}]
```