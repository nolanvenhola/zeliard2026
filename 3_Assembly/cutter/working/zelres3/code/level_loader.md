# LEVEL_LOADER - Analysis

**Source:** `chunk_00.bin`  
**Size:** 1.4 KB  
**Functions:** 5  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000   40 1035         fcn.00000000
0x0000040b    5 46           fcn.0000040b
0x00000493    3 20           fcn.00000493
0x000004a7   11 103          fcn.000004a7
0x0000050e   11 95           fcn.0000050e
```

## Strings
```
nth      paddr      vaddr len size section type    string                                                                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x00000053 0x00000053   5    5         ibm037  suv]ê
  1 0x00000425 0x00000425   4    4         ascii   "0[^
  2 0x00000442 0x00000442   6    7         ascii   \a\t\v\b\n\f
  3 0x00000471 0x00000471   4    5         ascii   # !$
  4 0x0000047a 0x0000047a   4    5         ascii   # &(
  5 0x00000483 0x00000483  16   16         ascii   #*,(+-).1#/24035
  6 0x000004e7 0x000004e7  11   12         ibm037  ¤vµµv}YstvF
  7 0x000004ff 0x000004ff  10   11         ibm037  Cµ~v}YstvF
  8 0x00000528 0x00000528   8    9         ibm037  ¸vstvµÆv
  9 0x00000554 0x00000554   8    9         ibm037  ævstvµ¤v
 10 0x0000057d 0x0000057d  16   34         utf16le 7\e1!+Ȧ䵟䅆⹎卍D㘂䵄乁䜮偒 blocks=Basic Latin,Latin Extended-B,CJK Unified Ideographs Extension A,Supplemental Punctuation,CJK Unified Ideographs
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0000      test  al, 5
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           0000:0004      add   ah, byte [bx + si - 0x7b42]           ; arg3
│           0000:0008      movsw word es:[di], word ptr [si]
│           0000:0009      mov   es, word cs:[0xff2c]
│           0000:000e      mov   di, 0x3000
│           0000:0011      mov   al, 5
│           0000:0013      call  word cs:[0x10c]
│           ; DATA XREFS from fcn.00000000 @ 0x171, 0x2ca
│           ; DATA XREF from fcn.0000040b @ 0x42f
│           0000:0018      mov   es, word cs:[0xff2c]
│           0000:001d      mov   si, 0xa58f
│           0000:0020      mov   di, 0x6000
│           0000:0023      mov   al, 2
│           0000:0025      call  word cs:[0x10c]
│           0000:002a      push  ds
│           0000:002b      mov   ds, word cs:[0xff2c]
│           0000:0030      mov   si, 0x6000
│           0000:0033      mov   bp, 0xd000
│           0000:0036      mov   cx, 0x100
│           0000:0039      call  word cs:[0x3028]
│           ; DATA XREF from fcn.00000000 @ 0x3ea
│           0000:003e      pop   ds
│           0000:003f      inc   byte [0xa0]
│           0000:0043      mov   al, 0
│           0000:0045      cmp   byte [0xa0], 9                        ; [0xa0:1]=0
│       ┌─< 0000:004a      jb    0x53
│       │   0000:004c      mov   byte [0xa0], 9
│       │   0000:0051      mov   al, 1
│       └─> 0000:0053      mov   byte [0xa5a4], al                     ; [0xa5a4:1]=255
│           0000:0056      mov   bx, 0x2552                            ; 'R%'
│           0000:0059      call  word cs:[0x203e]
│           0000:005e      and   byte [0xc2], 0xfe                     ; [0xfe:1]=3
│           0000:0063      mov   bx, 0xc6e                             ; 3182
│           0000:0066      mov   cx, 0xd
│       ┌─> 0000:0069      test  cx, 1
│      ┌──< 0000:006d      jne   0x74
│      │╎   0000:006f      mov   byte [0xff75], 0x1a                   ; [0x1a:1]=6
│      └──> 0000:0074      push  cx
│       ╎   0000:0075      push  bx
│       ╎   0000:0076      inc   byte [0xe7]
│       ╎   0000:007a      and   byte [0xe7], 3
│       ╎   0000:007f      call  fcn.0000040b                          ; fcn.0000040b
│       ╎   0000:0082      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:0085      pop   bx
│       ╎   0000:0086      cmp   bh, 0x24
│      ┌──< 0000:0089      je    0x9a
│      │╎   0000:008b      push  bx
│      │╎   0000:008c      mov   cx, 0x218
│      │╎   0000:008f      xor   al, al
│      │╎   0000:0091      call  word cs:[0x2000]
│      │╎   0000:0096      pop   bx
│      │╎   0000:0097      add   bh, 2
│      └──> 0000:009a      pop   cx
│       └─< 0000:009b      loop  0x69
│           0000:009d      mov   byte [0xe7], 4
│           0000:00a2      mov   bx, 0x246e                            ; 'n$'
│           0000:00a5      call  fcn.0000040b                          ; fcn.0000040b
│           0000:00a8      mov   cx, 5
│       ┌─> 0000:00ab      push  cx
│       ╎   0000:00ac      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:00af      pop   cx
│       └─< 0000:00b0      loop  0xab
│           0000:00b2      mov   byte [0xe7], 5
│       ┌─> 0000:00b7      mov   bx, 0x246e                            ; 'n$'
│       ╎   0000:00ba      call  fcn.0000040b                          ; fcn.0000040b
│       ╎   0000:00bd      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:00c0      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:00c3      inc   byte [0xe7]
│       ╎   0000:00c7      cmp   byte [0xe7], 9                        ; [0xe7:1]=198
│       └─< 0000:00cc      jb    0xb7
│           0000:00ce      mov   bx, 0x246e                            ; 'n$'
│           0000:00d1      call  fcn.0000040b                          ; fcn.0000040b
│           0000:00d4      call  word cs:[0x3024]
│           0000:00d9      xor   bh, bh
│           0000:00db      mov   bl, byte [0xa0]                       ; [0xa0:1]=0
│           0000:00df      dec   bx
│           0000:00e0      mov   al, byte [bx - 0x5a97]
│           0000:00e4      mov   byte [0xa59a], al                     ; [0xa59a:1]=255
│           ; DATA XREFS from fcn.00000000 @ 0xc7, 0x3a3
│           ; DATA XREF from fcn.0000040b @ 0x40b
│           0000:00e7      mov   byte [0xa59b], 2
│           0000:00ec      call  fcn.000004a7                          ; fcn.000004a7
│           0000:00ef      mov   ah, byte [0xa59c]
│           0000:00f3      shr   ah, 1
│           0000:00f5      shr   ah, 1
│           0000:00f7      shr   ah, 1
│           0000:00f9      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│           0000:00fc      mov   cx, 0x310
│           ; DATA XREF from fcn.000004a7 @ 0x508
│           0000:00ff      xor   di, di
│           0000:0101      call  word cs:[0x2026]
│           0000:0106      mov   byte [0xa5a5], 0
│       ┌─> 0000:010b      mov   al, byte [0xa5a5]                     ; [0xa5a5:1]=255
│       ╎   0000:010e      mov   bl, byte [0xa59c]
│       ╎   0000:0112      xor   bh, bh
│       ╎   0000:0114      mov   cl, byte [0xa59d]
│       ╎   0000:0118      call  word cs:[0x3026]
│       ╎   0000:011d      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:0120      mov   ah, byte [0xa59c]
│       ╎   0000:0124      shr   ah, 1
│       ╎   0000:0126      shr   ah, 1
│       ╎   0000:0128      shr   ah, 1
│       ╎   0000:012a      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│       ╎   0000:012d      mov   cx, 0x310
│       ╎   0000:0130      xor   di, di
│       ╎   0000:0132      call  word cs:[0x2028]
│       ╎   0000:0137      inc   byte [0xa5a5]
│       ╎   0000:013b      cmp   byte [0xa5a5], 2
│       └─< 0000:0140      jb    0x10b
│           0000:0142      mov   ah, byte [0xa59c]
│           0000:0146      shr   ah, 1
│           0000:0148      shr   ah, 1
│           0000:014a      shr   ah, 1
│           0000:014c      sub   ah, 6
│           0000:014f      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│           0000:0152      mov   cx, 0x1110
│           0000:0155      xor   di, di
│           0000:0157      call  word cs:[0x2026]
│           0000:015c      mov   byte [0xff75], 0x1b                   ; [0x1b:1]=44
│           0000:0161      mov   byte [0xa5a5], 0
│       ┌─> 0000:0166      mov   al, byte [0xa5a5]                     ; [0xa5a5:1]=255
│       ╎   0000:0169      or    al, 0x80
│       ╎   0000:016b      mov   bl, byte [0xa59c]
│       ╎   0000:016f      xor   bh, bh
│       ╎   0000:0171      sub   bx, 0x18
│       ╎   0000:0174      mov   cl, byte [0xa59d]
│       ╎   0000:0178      call  word cs:[0x3026]
│       ╎   0000:017d      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:0180      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:0183      mov   ah, byte [0xa59c]
│       ╎   0000:0187      shr   ah, 1
│       ╎   0000:0189      shr   ah, 1
│       ╎   0000:018b      shr   ah, 1
│       ╎   0000:018d      sub   ah, 6
│       ╎   0000:0190      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│       ╎   0000:0193      mov   cx, 0x1110
│       ╎   0000:0196      xor   di, di
│       ╎   0000:0198      call  word cs:[0x2028]
│       ╎   0000:019d      inc   byte [0xa5a5]
│       ╎   0000:01a1      cmp   byte [0xa5a5], 2
│       └─< 0000:01a6      jb    0x166
│           0000:01a8      mov   bx, 0x2552                            ; 'R%'
│           0000:01ab      mov   cx, 0x410                             ; 1040
│           0000:01ae      xor   al, al
│           0000:01b0      call  word cs:[0x2000]
│           0000:01b5      call  word cs:[0x3024]
│           0000:01ba      mov   ah, byte [0xa59c]
│           0000:01be      shr   ah, 1
│           0000:01c0      shr   ah, 1
│           0000:01c2      shr   ah, 1
│           0000:01c4      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│           0000:01c7      mov   cx, 0x310
│           0000:01ca      xor   di, di
│           0000:01cc      call  word cs:[0x2026]
│           0000:01d1      mov   byte [0xa5a5], 0
│       ┌─> 0000:01d6      mov   al, byte [0xa5a5]                     ; [0xa5a5:1]=255
│       ╎   0000:01d9      mov   bl, byte [0xa59c]
│       ╎   0000:01dd      xor   bh, bh
│       ╎   0000:01df      mov   cl, byte [0xa59d]
│       ╎   0000:01e3      call  word cs:[0x3026]
│       ╎   0000:01e8      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:01eb      mov   ah, byte [0xa59c]
│       ╎   0000:01ef      shr   ah, 1
│       ╎   0000:01f1      shr   ah, 1
│       ╎   0000:01f3      shr   ah, 1
│       ╎   0000:01f5      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│       ╎   0000:01f8      mov   cx, 0x310
│       ╎   0000:01fb      xor   di, di
│       ╎   0000:01fd      call  word cs:[0x2028]
│       ╎   0000:0202      inc   byte [0xa5a5]
│       ╎   0000:0206      cmp   byte [0xa5a5], 4
│       └─< 0000:020b      jb    0x1d6
│           0000:020d      mov   byte [0xa5a7], 0xc8                   ; [0xc8:1]=62
│       ┌─> 0000:0212      inc   byte [0xa5a6]
│       ╎   0000:0216      test  byte [0xa5a6], 1
│      ┌──< 0000:021b      jne   0x236
│      │╎   0000:021d      inc   byte [0xa5a5]
│      │╎   0000:0221      inc   byte [0xa5a7]
│      │╎   0000:0225      cmp   byte [0xa5a7], 3
│     ┌───< 0000:022a      jb    0x236
│     ││╎   0000:022c      mov   byte [0xa5a7], 0
│     ││╎   0000:0231      mov   byte [0xff75], 0x1c                   ; [0x1c:1]=255
│     └└──> 0000:0236      mov   ah, byte [0xa59c]
│       ╎   0000:023a      shr   ah, 1
│       ╎   0000:023c      shr   ah, 1
│       ╎   0000:023e      shr   ah, 1
│       ╎   0000:0240      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│       ╎   0000:0243      mov   cx, 0x310
│       ╎   0000:0246      xor   di, di
│       ╎   0000:0248      call  word cs:[0x2028]
│       ╎   0000:024d      call  fcn.0000050e                          ; fcn.0000050e
│       ╎   0000:0250      pushf
│       ╎   0000:0251      mov   ah, byte [0xa59c]
│       ╎   0000:0255      shr   ah, 1
│       ╎   0000:0257      shr   ah, 1
│       ╎   0000:0259      shr   ah, 1
│       ╎   0000:025b      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│       ╎   0000:025e      mov   cx, 0x310
│       ╎   0000:0261      xor   di, di
│       ╎   0000:0263      call  word cs:[0x2026]
│       ╎   0000:0268      mov   al, byte [0xa5a5]                     ; [0xa5a5:1]=255
│       ╎   0000:026b      and   al, 1
│       ╎   0000:026d      add   al, 2
│       ╎   0000:026f      mov   bl, byte [0xa59c]
│       ╎   0000:0273      xor   bh, bh
│       ╎   0000:0275      mov   cl, byte [0xa59d]
│       ╎   0000:0279      call  word cs:[0x3026]
│       ╎   0000:027e      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:0281      popf
│       └─< 0000:0282      jae   0x212
│           0000:0284      mov   ah, byte [0xa59c]
│           0000:0288      shr   ah, 1
│           0000:028a      shr   ah, 1
│           0000:028c      shr   ah, 1
│           0000:028e      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│           0000:0291      mov   cx, 0x310
│           0000:0294      xor   di, di
│           0000:0296      call  word cs:[0x2028]
│           0000:029b      mov   ah, byte [0xa59c]
│           0000:029f      shr   ah, 1
│           0000:02a1      shr   ah, 1
│           0000:02a3      shr   ah, 1
│           0000:02a5      sub   ah, 6
│           0000:02a8      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│           0000:02ab      mov   cx, 0x1110
│           0000:02ae      xor   di, di
│           0000:02b0      call  word cs:[0x2026]
│           0000:02b5      mov   byte [0xff75], 0x1b                   ; [0x1b:1]=44
│           0000:02ba      mov   byte [0xa5a5], 0
│       ┌─> 0000:02bf      mov   al, byte [0xa5a5]                     ; [0xa5a5:1]=255
│       ╎   0000:02c2      or    al, 0x80
│       ╎   0000:02c4      mov   bl, byte [0xa59c]
│       ╎   0000:02c8      xor   bh, bh
│       ╎   0000:02ca      sub   bx, 0x18
│       ╎   0000:02cd      mov   cl, byte [0xa59d]
│       ╎   0000:02d1      call  word cs:[0x3026]
│       ╎   0000:02d6      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:02d9      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:02dc      mov   ah, byte [0xa59c]
│       ╎   0000:02e0      shr   ah, 1
│       ╎   0000:02e2      shr   ah, 1
│       ╎   0000:02e4      shr   ah, 1
│       ╎   0000:02e6      sub   ah, 6
│       ╎   0000:02e9      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│       ╎   0000:02ec      mov   cx, 0x1110
│       ╎   0000:02ef      xor   di, di
│       ╎   0000:02f1      call  word cs:[0x2028]
│       ╎   0000:02f6      inc   byte [0xa5a5]
│       ╎   0000:02fa      cmp   byte [0xa5a5], 2
│       └─< 0000:02ff      jb    0x2bf
│           0000:0301      mov   al, byte [0xa5a4]                     ; [0xa5a4:1]=255
│           0000:0304      mov   bl, byte [0xa0]                       ; [0xa0:1]=0
│           0000:0308      dec   bl
│           0000:030a      xor   bh, bh
│           0000:030c      add   bx, bx
│           0000:030e      mov   bx, word [bx - 0x5a8e]
│           0000:0312      call  word cs:[0x203e]
│           0000:0317      mov   ah, byte [0xa59c]
│           0000:031b      shr   ah, 1
│           0000:031d      shr   ah, 1
│           0000:031f      shr   ah, 1
│           0000:0321      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│           0000:0324      mov   cx, 0x310
│           0000:0327      xor   di, di
│           0000:0329      call  word cs:[0x2026]
│           0000:032e      mov   byte [0xa5a5], 4
│       ┌─> 0000:0333      mov   al, byte [0xa5a5]                     ; [0xa5a5:1]=255
│       ╎   0000:0336      dec   al
│       ╎   0000:0338      mov   bl, byte [0xa59c]
│       ╎   0000:033c      xor   bh, bh
│       ╎   0000:033e      mov   cl, byte [0xa59d]
│       ╎   0000:0342      call  word cs:[0x3026]
│       ╎   0000:0347      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:034a      mov   ah, byte [0xa59c]
│       ╎   0000:034e      shr   ah, 1
│       ╎   0000:0350      shr   ah, 1
│       ╎   0000:0352      shr   ah, 1
│       ╎   0000:0354      mov   al, byte [0xa59d]                     ; [0xa59d:1]=255
│       ╎   0000:0357      mov   cx, 0x310
│       ╎   0000:035a      xor   di, di
│       ╎   0000:035c      call  word cs:[0x2028]
│       ╎   0000:0361      dec   byte [0xa5a5]
│       └─< 0000:0365      jne   0x333
│           0000:0367      push  ds
│           0000:0368      mov   ds, word cs:[0xff2c]
│           0000:036d      mov   si, 0x3000
│           0000:0370      xor   ax, ax
│           0000:0372      int   0x60
│           0000:0374      pop   ds
│       ┌─> 0000:0375      test  byte [0xff26], 0xff
│       └─< 0000:037a      je    0x375
│           0000:037c      mov   ax, 1
│           0000:037f      int   0x60
│           0000:0381      mov   bx, 0x2456                            ; 'V$'
│           0000:0384      mov   cx, 0x618                             ; 1560
│           0000:0387      xor   al, al
│           0000:0389      call  word cs:[0x2000]
│           0000:038e      mov   byte [0xe7], 8
│       ┌─> 0000:0393      mov   bx, 0x246e                            ; 'n$'
│       ╎   0000:0396      call  fcn.0000040b                          ; fcn.0000040b
│       ╎   0000:0399      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:039c      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:039f      dec   byte [0xe7]
│       ╎   0000:03a3      cmp   byte [0xe7], 5                        ; [0xe7:1]=198
│       └─< 0000:03a8      jae   0x393
│           0000:03aa      mov   bx, 0x246e                            ; 'n$'
│           0000:03ad      call  fcn.0000040b                          ; fcn.0000040b
│           0000:03b0      mov   cx, 5
│       ┌─> 0000:03b3      push  cx
│       ╎   0000:03b4      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:03b7      pop   cx
│       └─< 0000:03b8      loop  0x3b3
│           0000:03ba      mov   bx, 0x246e                            ; 'n$'
│           0000:03bd      mov   cx, 0x218
│           0000:03c0      xor   al, al
│           0000:03c2      call  word cs:[0x2000]
│           0000:03c7      mov   bx, 0x266e                            ; 'n&'
│           0000:03ca      mov   cx, 0xd
│       ┌─> 0000:03cd      test  cx, 1
│      ┌──< 0000:03d1      jne   0x3d8
│      │╎   0000:03d3      mov   byte [0xff75], 0x1a                   ; [0x1a:1]=6
│      └──> 0000:03d8      push  cx
│       ╎   0000:03d9      push  bx
│       ╎   0000:03da      inc   byte [0xe7]
│       ╎   0000:03de      and   byte [0xe7], 3
│       ╎   0000:03e3      call  fcn.0000040b                          ; fcn.0000040b
│       ╎   0000:03e6      call  fcn.00000493                          ; fcn.00000493
│       ╎   0000:03e9      pop   bx
│       ╎   0000:03ea      cmp   bh, 0x3e
│      ┌──< 0000:03ed      je    0x3fe
│      │╎   0000:03ef      push  bx
│      │╎   0000:03f0      mov   cx, 0x218
│      │╎   0000:03f3      xor   al, al
│      │╎   0000:03f5      call  word cs:[0x2000]
│      │╎   0000:03fa      pop   bx
│      │╎   0000:03fb      add   bh, 2
│      └──> 0000:03fe      pop   cx
│       └─< 0000:03ff      loop  0x3cd
│           0000:0401      mov   cx, 0x618                             ; 1560
│           0000:0404      xor   al, al
└           0000:0406      jmp   word cs:[0x2000]
```

### Function 0x0000040b
```asm
; XREFS: CALL 0x0000007f  CALL 0x000000a5  CALL 0x000000ba  
            ; XREFS: CALL 0x000000d1  CALL 0x00000396  CALL 0x000003ad  
            ; XREFS: CALL 0x000003e3  
┌ fcn.0000040b(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:040b      mov   al, byte [0xe7]                       ; [0xe7:1]=198
│           0000:040e      mov   cl, 9
│           ; DATA XREF from fcn.00000000 @ 0x1ab
│           0000:0410      mul   cl
│           0000:0412      add   ax, 0xa435                            ; arg1
│           0000:0415      mov   si, ax                                ; arg1
│           0000:0417      mov   cx, 3
│       ┌─> 0000:041a      push  cx
│       ╎   0000:041b      mov   cx, 3
│      ┌──> 0000:041e      push  cx
│      ╎╎   0000:041f      lodsb al, byte [si]
│      ╎╎   0000:0420      push  si
│      ╎╎   0000:0421      push  bx                                    ; arg3
│      ╎╎   0000:0422      call  word cs:[0x3022]
│      ╎╎   0000:0427      pop   bx
│      ╎╎   0000:0428      pop   si
│      ╎╎   0000:0429      add   bl, 8
│      ╎╎   0000:042c      pop   cx
│      └──< 0000:042d      loop  0x41e
│       ╎   0000:042f      sub   bl, 0x18
│       ╎   0000:0432      add   bh, 2
│       ╎   0000:0435      pop   cx
│       └─< 0000:0436      loop  0x41a
└           0000:0438      ret
```

### Function 0x00000493
```asm
; XREFS: CALL 0x00000082  CALL 0x000000ac  CALL 0x000000bd  
            ; XREFS: CALL 0x000000c0  CALL 0x0000011d  CALL 0x0000017d  
            ; XREFS: CALL 0x00000180  CALL 0x000001e8  CALL 0x0000027e  
            ; XREFS: CALL 0x000002d6  CALL 0x000002d9  CALL 0x00000347  
            ; XREFS: CALL 0x00000399  CALL 0x0000039c  CALL 0x000003b4  
            ; XREFS: CALL 0x000003e6  
┌ fcn.00000493();
│           0000:0493      mov   cl, byte [0xff33]
│           0000:0497      mov   al, 4
│           0000:0499      mul   cl
│       ┌─> 0000:049b      cmp   byte [0xff1a], al
│       └─< 0000:049f      jb    0x49b
│           0000:04a1      mov   byte [0xff1a], 0
└           0000:04a6      ret
```

### Function 0x000004a7
```asm
; CALL XREF from fcn.00000000 @ 0xec
┌ fcn.000004a7();
│           0000:04a7      mov   byte [0xa59c], 0x94                   ; [0x94:1]=0
│           0000:04ac      mov   byte [0xa59d], 0x50                   ; 'P'
│                                                                      ; [0x50:1]=9
│           0000:04b1      xor   cl, cl
│           0000:04b3      mov   al, byte [0xa59a]                     ; [0xa59a:1]=255
│           0000:04b6      sub   al, byte [0xa59c]
│       ┌─< 0000:04ba      je    0x4c6
│      ┌──< 0000:04bc      jae   0x4c4
│      ││   0000:04be      neg   al
│      ││   0000:04c0      dec   cl
│     ┌───< 0000:04c2      jmp   0x4c6
│     │└──> 0000:04c4      inc   cl
│     │ │   ; CODE XREF from fcn.000004a7 @ 0x4c2
│     └─└─> 0000:04c6      mov   byte [0xa5a0], al                     ; [0xa5a0:1]=255
│           0000:04c9      mov   byte [0xa59e], cl
│           0000:04cd      xor   cl, cl
│           0000:04cf      mov   al, byte [0xa59b]                     ; [0xa59b:1]=255
│           0000:04d2      sub   al, byte [0xa59d]
│       ┌─< 0000:04d6      je    0x4e2
│      ┌──< 0000:04d8      jae   0x4e0
│      ││   0000:04da      neg   al
│      ││   0000:04dc      dec   cl
│     ┌───< 0000:04de      jmp   0x4e2
│     │└──> 0000:04e0      inc   cl
│     │ │   ; CODE XREF from fcn.000004a7 @ 0x4de
│     └─└─> 0000:04e2      mov   byte [0xa5a1], al                     ; [0xa5a1:1]=255
│           0000:04e5      mov   byte [0xa59f], cl
│           0000:04e9      mov   al, byte [0xa5a0]                     ; [0xa5a0:1]=255
│           0000:04ec      shr   al, 1
│           0000:04ee      mov   byte [0xa5a3], al                     ; [0xa5a3:1]=255
│           0000:04f1      mov   byte [0xa5a2], 0
│           0000:04f6      mov   al, byte [0xa5a0]                     ; [0xa5a0:1]=255
│           0000:04f9      cmp   al, byte [0xa5a1]
│       ┌─< 0000:04fd      jb    0x500
│       │   0000:04ff      ret
│       └─> 0000:0500      mov   al, byte [0xa5a1]                     ; [0xa5a1:1]=255
│           0000:0503      shr   al, 1
│           0000:0505      mov   byte [0xa5a3], al                     ; [0xa5a3:1]=255
│           0000:0508      mov   byte [0xa5a2], 0xff                   ; [0xff:1]=51
└           0000:050d      ret
```

### Function 0x0000050e
```asm
; CALL XREF from fcn.00000000 @ 0x24d
┌ fcn.0000050e();
│           0000:050e      test  byte [0xa5a2], 0xff
│       ┌─< 0000:0513      jne   0x541
│       │   0000:0515      mov   al, byte [0xa5a3]                     ; [0xa5a3:1]=255
│       │   0000:0518      sub   al, byte [0xa5a1]
│      ┌──< 0000:051c      jae   0x52a
│      ││   0000:051e      add   al, byte [0xa5a0]
│      ││   0000:0522      mov   ah, byte [0xa59f]
│      ││   0000:0526      add   byte [0xa59d], ah
│      └──> 0000:052a      mov   byte [0xa5a3], al                     ; [0xa5a3:1]=255
│       │   0000:052d      mov   al, byte [0xa59e]                     ; [0xa59e:1]=255
│       │   0000:0530      add   byte [0xa59c], al
│       │   0000:0534      mov   al, byte [0xa59a]                     ; [0xa59a:1]=255
│       │   0000:0537      cmp   al, byte [0xa59c]
│       │   0000:053b      stc
│      ┌──< 0000:053c      jne   0x53f
│      ││   0000:053e      ret
│      └──> 0000:053f      clc
│       │   0000:0540      ret
│       └─> 0000:0541      mov   al, byte [0xa5a3]                     ; [0xa5a3:1]=255
│           0000:0544      sub   al, byte [0xa5a0]
│       ┌─< 0000:0548      jae   0x556
│       │   0000:054a      add   al, byte [0xa5a1]
│       │   0000:054e      mov   ah, byte [0xa59e]
│       │   0000:0552      add   byte [0xa59c], ah
│       └─> 0000:0556      mov   byte [0xa5a3], al                     ; [0xa5a3:1]=255
│           0000:0559      mov   al, byte [0xa59f]                     ; [0xa59f:1]=255
│           0000:055c      add   byte [0xa59d], al
│           0000:0560      mov   al, byte [0xa59b]                     ; [0xa59b:1]=255
│           0000:0563      cmp   al, byte [0xa59d]
│           0000:0567      stc
│       ┌─< 0000:0568      jne   0x56b
│       │   0000:056a      ret
│       └─> 0000:056b      clc
└           0000:056c      ret
```

## Cross-References (callers)
```json
  0x0000040b:
[{"from":127,"to":1035,"type":"CALL"},{"from":165,"to":1035,"type":"CALL"},{"from":186,"to":1035,"type":"CALL"},{"from":209,"to":1035,"type":"CALL"},{"from":918,"to":1035,"type":"CALL"},{"from":941,"to":1035,"type":"CALL"},{"from":995,"to":1035,"type":"CALL"}]
  0x00000493:
[{"from":130,"to":1171,"type":"CALL"},{"from":172,"to":1171,"type":"CALL"},{"from":189,"to":1171,"type":"CALL"},{"from":192,"to":1171,"type":"CALL"},{"from":285,"to":1171,"type":"CALL"},{"from":381,"to":1171,"type":"CALL"},{"from":384,"to":1171,"type":"CALL"},{"from":488,"to":1171,"type":"CALL"},{"from":638,"to":1171,"type":"CALL"},{"from":726,"to":1171,"type":"CALL"},{"from":729,"to":1171,"type":"CALL"},{"from":839,"to":1171,"type":"CALL"},{"from":921,"to":1171,"type":"CALL"},{"from":924,"to":1171,"type":"CALL"},{"from":948,"to":1171,"type":"CALL"},{"from":998,"to":1171,"type":"CALL"}]
  0x000004a7:
[{"from":236,"to":1191,"type":"CALL"}]
  0x0000050e:
[{"from":589,"to":1294,"type":"CALL"}]
```