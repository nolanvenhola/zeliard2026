# BOSS_BEHAVIORS - Analysis

**Source:** `chunk_16.bin`  
**Size:** 1.3 KB  
**Functions:** 9  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    4 99           fcn.00000000
0x00000063    1 22           fcn.00000063
0x00000079    1 11           fcn.00000079
0x0000011a    3 20           fcn.0000011a
0x00000163    3 16           fcn.00000163
0x00000173    3 16           fcn.00000173
0x00000183    5 43           fcn.00000183
0x000001ae    5 37           fcn.000001ae
0x00000233    9 74           fcn.00000233
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x00000115 0x00000115   4    5         ibm037 cuCF
  1 0x000001da 0x000001da   7    8         ascii  \a\b\t\n\v\f\r
  2 0x000001f4 0x000001f4   7    8         ascii   !"#$%&
  3 0x000001fc 0x000001fc  55   55         ascii  '()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]
  4 0x0000027f 0x0000027f   6    7         ascii  $%^_$`
  5 0x0000028e 0x0000028e  11   12         ascii  '/0123;<=>?
  6 0x000002a2 0x000002a2  11   12         ascii  '/0123;<=>?
  7 0x000002b6 0x000002b6  11   12         ascii  '/cd23;ef>?
  8 0x000002c6 0x000002c6  15   16         ascii  $%&gh/ijkl;mno?
  9 0x000002e7 0x000002e7   7    8         ascii  INN.GRP
 10 0x000002f2 0x000002f2 180  180         ascii  \aThe Inn\fWelcome, sir!/You look like you\ve come a long way./One night of rest in my inn is all you need to recover your strength. You can have the best room in the house for only 
 11 0x000003a8 0x000003a8  23   23         ascii  &golds. Will you stay? 
 12 0x000003c1 0x000003c1  90   91         ascii  \fOh, I\m sorry to hear that./Well, if you should ever need a place to rest, do come back. 
 13 0x0000041e 0x0000041e  59   59         ascii  \fI\m sorry sir, but I can\t accommodate you without funds./
 14 0x0000045b 0x0000045b  41   42         ascii  Please come back when you can afford it. 
 15 0x00000487 0x00000487  34   34         ascii  \fThank you, sir. Enjoy your stay. 
 16 0x000004b2 0x000004b2  84   85         ascii  I trust you had a good night\s sleep. We\ll be looking forward to seeing you again./
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0000      adc   byte [di], al
│           ; DATA XREFS from fcn.00000233 @ 0x261, 0x265
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.0000011a @ 0x129
│           ; DATA XREF from fcn.00000183 @ 0x192
│           0000:0004      add   al, 0xa0
│           0000:0006      das
│           0000:0007      mov   byte [0x68e], al
│           0000:000a      sub   al, 0xff
│           ; DATA XREFS from fcn.000001ae @ 0x1b8, 0x1bb, 0x1c9
│           0000:000c      mov   di, 0x8000
│           0000:000f      mov   si, 0xa2e1
│           0000:0012      mov   al, 2
│           ; DATA XREF from fcn.00000183 @ 0x183
│           0000:0014      call  word cs:[0x10c]
│           0000:0019      push  ds
│           0000:001a      mov   ds, word cs:[0xff2c]
│           0000:001f      mov   si, 0x8000
│           0000:0022      mov   cx, 0x100
│           ; DATA XREF from fcn.000001ae @ +0x4a
│           ; DATA XREF from fcn.00000233 @ +0x4c
│           0000:0025      call  word cs:[0x2044]
│           0000:002a      pop   ds
│           0000:002b      mov   byte [0xff4e], 0
│           0000:0030      mov   byte [0xff4f], 0
│           ; DATA XREF from fcn.000001ae @ +0x5b
│           0000:0035      call  word cs:[0x2002]
│           0000:003a      call  word cs:[0x2012]
│           0000:003f      mov   si, 0xa2eb
│           0000:0042      call  word cs:[0x2010]
│           0000:0047      call  fcn.00000063                          ; fcn.00000063
│           0000:004a      mov   word [0xff4c], 0xa2f6                 ; [0xa2f6:2]=0xffff
│           ; CODE XREF from fcn.00000000 @ 0x5c
│       ┌─> 0000:0050      call  word cs:[0x6004]
│       ╎   0000:0055      cmp   al, 0xff
│       ╎   ; DATA XREF from fcn.00000233 @ +0xc7
│      ┌──< 0000:0057      je    0x5e
│      │╎   0000:0059      call  fcn.00000079                          ; fcn.00000079
│      │└─< 0000:005c      jmp   0x50
└      └──> 0000:005e      jmp   word cs:[0x2040]
```

### Function 0x00000063
```asm
; CALL XREF from fcn.00000000 @ 0x47
            ; CODE XREF from fcn.0000011a @ +0x46
┌ fcn.00000063();
│           0000:0063      call  fcn.000001ae                          ; fcn.000001ae
│           0000:0066      mov   bx, 0xd60                             ; 3424
│           0000:0069      mov   cx, 0x3637                            ; '76'
│           0000:006c      mov   al, 0xff
│           0000:006e      call  word cs:[0x2000]
│           0000:0073      mov   byte [0xa505], 0xff                   ; [0xff:1]=255
└           0000:0078      ret
```

### Function 0x00000079
```asm
; CALL XREF from fcn.00000000 @ 0x59
┌ fcn.00000079(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0079      mov   bl, al
│           0000:007b      xor   bh, bh
│           0000:007d      add   bx, bx                                ; arg3
└           0000:007f      jmp   word cs:[bx - 0x5f80]
```

### Function 0x0000011a
```asm
; CALL XREF from fcn.00000233 @ 0x249
┌ fcn.0000011a(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:011a      add   ax, 0xa5                              ; arg1
│           0000:011d      xor   al, al
│       ┌─> 0000:011f      push  ax                                    ; arg1
│       ╎   0000:0120      call  fcn.00000183                          ; fcn.00000183
│       ╎   0000:0123      call  fcn.00000173                          ; fcn.00000173
│       ╎   0000:0126      pop   ax
│       ╎   0000:0127      inc   al
│       ╎   0000:0129      cmp   al, 4
│       └─< 0000:012b      jne   0x11f
└           0000:012d      ret
```

### Function 0x00000163
```asm
; CALL XREFS from fcn.0000011a @ +0x14, +0x1c, +0x1f
┌ fcn.00000163(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0163      mov   byte [0xff1a], 0
│       ┌─> 0000:0168      call  fcn.00000233                          ; fcn.00000233
│       ╎   0000:016b      cmp   byte [0xff1a], 0x96
│       └─< 0000:0170      jb    0x168
└           0000:0172      ret
```

### Function 0x00000173
```asm
; CALL XREF from fcn.0000011a @ 0x123
┌ fcn.00000173();
│           0000:0173      mov   byte [0xff1a], 0
│       ┌─> 0000:0178      call  fcn.00000233                          ; fcn.00000233
│       ╎   0000:017b      cmp   byte [0xff1a], 0x32
│       └─< 0000:0180      jb    0x178
└           0000:0182      ret
```

### Function 0x00000183
```asm
; CALL XREF from fcn.0000011a @ 0x120
┌ fcn.00000183(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0183      mov   cl, 0x14
│           0000:0185      mul   cl
│           0000:0187      add   ax, 0xa281                            ; arg1
│           0000:018a      mov   si, ax                                ; arg1
│           0000:018c      mov   bx, 0x827                             ; 2087
│           0000:018f      mov   cx, 4
│       ┌─> 0000:0192      push  cx
│       ╎   0000:0193      mov   cx, 5
│      ┌──> 0000:0196      push  cx
│      ╎╎   0000:0197      push  bx
│      ╎╎   0000:0198      lodsb al, byte [si]
│      ╎╎   0000:0199      call  word cs:[0x3016]
│      ╎╎   0000:019e      pop   bx
│      ╎╎   0000:019f      inc   bh
│      ╎╎   0000:01a1      pop   cx
│      └──< 0000:01a2      loop  0x196
│       ╎   0000:01a4      sub   bh, 5
│       ╎   0000:01a7      add   bl, 8
│       ╎   0000:01aa      pop   cx
│       └─< 0000:01ab      loop  0x192
└           0000:01ad      ret
```

### Function 0x000001ae
```asm
; CALL XREF from fcn.00000063 @ 0x63
┌ fcn.000001ae();
│           0000:01ae      mov   si, 0xa1cf
│           0000:01b1      mov   bx, 0x717                             ; 1815
│           0000:01b4      mov   cx, 8
│       ┌─> 0000:01b7      push  cx
│       ╎   0000:01b8      mov   cx, 0xc
│      ┌──> 0000:01bb      push  cx
│      ╎╎   0000:01bc      push  bx
│      ╎╎   0000:01bd      lodsb al, byte [si]
│      ╎╎   0000:01be      call  word cs:[0x3016]
│      ╎╎   0000:01c3      pop   bx
│      ╎╎   0000:01c4      inc   bh
│      ╎╎   0000:01c6      pop   cx
│      └──< 0000:01c7      loop  0x1bb
│       ╎   0000:01c9      sub   bh, 0xc
│       ╎   0000:01cc      add   bl, 8
│       ╎   0000:01cf      pop   cx
│       └─< 0000:01d0      loop  0x1b7
└           0000:01d2      ret
```

### Function 0x00000233
```asm
; CALL XREF from fcn.00000163 @ 0x168
            ; CALL XREF from fcn.00000173 @ 0x178
┌ fcn.00000233(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0233      test  byte [0xa505], 0xff
│       ┌─< 0000:0238      jne   0x23b
│       │   0000:023a      ret
│       └─> 0000:023b      cmp   word [0xff50], 0x28
│       ┌─< 0000:0240      jae   0x243
│       │   0000:0242      ret
│       └─> 0000:0243      mov   word [0xff50], 0
│           0000:0249      call  word cs:[fcn.0000011a]                ; 0x11a
│           0000:024e      and   al, 1
│           0000:0250      add   al, al
│           0000:0252      add   al, al
│           0000:0254      xor   ah, ah
│           0000:0256      add   ax, 0xa279                            ; arg1
│           0000:0259      mov   si, ax                                ; arg1
│           0000:025b      mov   bx, 0x827                             ; 2087
│           0000:025e      mov   cx, 2
│       ┌─> 0000:0261      push  cx
│       ╎   0000:0262      mov   cx, 2
│      ┌──> 0000:0265      push  cx
│      ╎╎   0000:0266      push  bx
│      ╎╎   0000:0267      lodsb al, byte [si]
│      ╎╎   0000:0268      call  word cs:[0x3016]
│      ╎╎   0000:026d      pop   bx
│      ╎╎   0000:026e      inc   bh
│      ╎╎   0000:0270      pop   cx
│      └──< 0000:0271      loop  0x265
│       ╎   0000:0273      sub   bh, 2
│       ╎   0000:0276      add   bl, 8
│       ╎   0000:0279      pop   cx
│       └─< 0000:027a      loop  0x261
└           0000:027c      ret
```

## Cross-References (callers)
```json
  0x00000063:
[{"from":71,"to":99,"type":"CALL"},{"from":352,"to":99,"type":"CODE"}]
  0x00000079:
[{"from":89,"to":121,"type":"CALL"}]
  0x0000011a:
[{"from":585,"to":282,"type":"CALL"}]
  0x00000163:
[{"from":302,"to":355,"type":"CALL"},{"from":310,"to":355,"type":"CALL"},{"from":313,"to":355,"type":"CALL"}]
  0x00000173:
[{"from":291,"to":371,"type":"CALL"}]
  0x00000183:
[{"from":288,"to":387,"type":"CALL"}]
  0x000001ae:
[{"from":99,"to":430,"type":"CALL"}]
  0x00000233:
[{"from":360,"to":563,"type":"CALL"},{"from":376,"to":563,"type":"CALL"}]
```