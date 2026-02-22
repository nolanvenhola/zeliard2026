# ENEMY_WIZARD - Analysis

**Source:** `chunk_15.bin`  
**Size:** 4.5 KB  
**Functions:** 8  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    4 144          fcn.00000000
0x00000090    5 44           fcn.00000090
0x000000bc    1 11           fcn.000000bc
0x000004a0    5 30           fcn.000004a0
0x000005b6    1 13           fcn.000005b6
0x000005c3    5 37           fcn.000005c3
0x00000648   11 88           fcn.00000648
0x0000070c    8 61           fcn.0000070c
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                                                                                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x00000243 0x00000243   4    4         ascii  `XP2
  1 0x0000026b 0x0000026b   4    4         ascii  rURP
  2 0x000005fa 0x000005fa   6    7         ascii  "#$%&'
  3 0x00000602 0x00000602   4    4         ibm037 abcd
  4 0x00000606 0x00000606   6    7         ascii  ()*+,-
  5 0x0000060e 0x0000060e   4    4         ibm037 efgh
  6 0x00000612 0x00000612   6    7         ascii  ./0123
  7 0x0000061e 0x0000061e   6    7         ascii  456789
  8 0x0000062a 0x0000062a   7    8         ascii  :;<=>?\a
  9 0x00000632 0x00000632   4    5         ibm037 jklm
 10 0x0000063e 0x0000063e   4    5         ibm037 nopq
 11 0x000006a4 0x000006a4 104  104         ascii   !"#$%&'()*+,-./0123456789:;<=>?_`abcdefghij(klmno.p01R3qrstuvwxyz{|@ABCDEFGHIJK(LMNOP.Q01RSTUV7WXYZ[\]^
 12 0x0000076d 0x0000076d 117  118         ibm037 '="Øabcdefghi«»ðýþ±°jklmnopqrª"Øºæcd¸Æ¤hµ~stýuvwjklmnopqrª"Øºæcd¸Æ¤hµ~stýuvwjklmnopqrª½×x·¾{ez[AÐ©]Bý§¯Cj¶¨Dn¼´ErªGFx
 13 0x00000817 0x00000817   8    9         ascii  DRUG.GRP
 14 0x00000824 0x00000824  35   36         ascii  Witchcraft Implement shopGo outside
 15 0x00000848 0x00000848   8    9         ascii  Buy item
 16 0x00000851 0x00000851   9   10         ascii  Sell item
 17 0x0000085b 0x0000085b  19   20         ascii  Description of item
 18 0x0000086f 0x0000086f   6    6         ascii  Oh... 
 19 0x00000877 0x00000877  23   23         ascii  hello, can I help you?/
 20 0x00000890 0x00000890  26   26         ascii  \fWhat are you looking for?
 21 0x000008ac 0x000008ac  26   26         ascii  \fWhat are you looking for?
 22 0x000008c8 0x000008c8  14   14         ascii  \fYou\d like a 
 23 0x000008db 0x000008db  22   22         ascii  \fYou\d like to sell a 
 24 0x000008f6 0x000008f6  13   13         ascii  That will be 
 25 0x00000905 0x00000905   7    7         ascii  &golds.
 26 0x0000090d 0x0000090d  30   30         ascii  \rWill there be something else?
 27 0x0000092c 0x0000092c  23   23         ascii  You have no money, sir.
 28 0x00000944 0x00000944  35   35         ascii  You can\t possibly carry any more./
 29 0x00000969 0x00000969  38   38         ascii  \fIs there something I&can do for you?/
 30 0x00000991 0x00000991  30   30         ascii  \fWhat would you like to sell?/
 31 0x000009b1 0x000009b1  22   22         ascii  \fThank you very much./
 32 0x000009c8 0x000009c8  14   14         ascii  I\ll give you 
 33 0x000009d8 0x000009d8  40   40         ascii  &golds for that./Will that be all right?
 34 0x00000a02 0x00000a02  75   75         ascii  \fOh, I&see. Well, that\s the best I&can do. I\m sorry it is\t satisfactory.
 35 0x00000a4f 0x00000a4f  45   45         ascii  Do you have anything else you\d like to sell?
 36 0x00000a7d 0x00000a7d  43   43         ascii  \fYou aren\t carrying any magic items, sir./
 37 0x00000aaa 0x00000aaa  34   34         ascii  \fWhich item can I tell you about?/
 38 0x00000ace 0x00000ace  26   26         ascii  \fYou\re interested in the 
 39 0x00000aed 0x00000aed  36   36         ascii  \fCan I tell you about anything else?
 40 0x00000b14 0x00000b14  17   17         ascii  \aThank you, sir. 
 41 0x00000b26 0x00000b26  19   19         ascii  \bPlease come again.
 42 0x00000b4e 0x00000b4e 119  120         ascii  Well, it\s a special blend of yunkel fruit and ripodi leaf./It\s low in price and as a mild health tonic, it\s perfect.
 43 0x00000bc9 0x00000bc9 211  212         ascii  This is the fruit of the Juu-en tree which bears only once every ten years./The price is a bit high, but it provides excellent relief from wounds and exhaustion -- it\s quite a bit better than the Ken\ko potion.
 44 0x00000ca0 0x00000ca0 153  154         ascii  This potion is made from the broth of mistletoe simmered on the night of a full moon./It restores magical powers. It\s very bitter, but the price is low.
 45 0x00000d3d 0x00000d3d 192  193         ascii  This is made from a mixture of the powdered dragon scales and crushed Wise Man\s Stone steamed for one hundred days./It will fully restore your magical powers. The price, however..... is high.
 46 0x00000e01 0x00000e01 165  166         ascii  This stone protects the aura that living beings exude./It surrounds the aura to prevent interference from other auras and acts as a protection against enemy attacks.
 47 0x00000eaa 0x00000eaa 147  148         ascii  This is a liquified metal made from mercury and iron./If you paint it on a shield weakened by battle, the shield will regain its original strength.
 48 0x00000f41 0x00000f41 146  147         ascii  Hmm... I don\t know much about this one, but I do know that it increases the offensive power of a sword./Don\t worry, it hasn\t killed anyone yet.
 49 0x00000fd7 0x00000fd7 179  180         ascii  This feather remembers the voice of the last wise man who spoke to you./If you hold it in your right hand and swing it once, you\ll return to him. It\s never failed anyone I know.
 50 0x0000109e 0x0000109e  13   14         ascii  Ken\ko Potion
 51 0x000010ac 0x000010ac  12   13         ascii  Juu-en Fruit
 52 0x000010b9 0x000010b9  15   16         ascii  Elixir of Kashi
 53 0x000010c9 0x000010c9  14   15         ascii  Chikara Powder
 54 0x000010d8 0x000010d8  11   12         ascii  Magia Stone
 55 0x000010e4 0x000010e4  19   20         ascii  Holy Water of Acero
 56 0x000010f8 0x000010f8   9   10         ascii  Sabre Oil
 57 0x00001102 0x00001102  13   14         ascii  Kioku Feather
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0000      adc   al, byte es:[bx + si]                 ; arg3
│           ; DATA XREF from fcn.000000bc @ +0xf8
│           ; DATA XREF from fcn.00000648 @ 0x66c
│           0000:0003      add   byte [si], al
│           0000:0005      mov   al, byte [0xa644]                     ; [0xa644:1]=255
│           ; DATA XREF from fcn.000005c3 @ 0x5cc
│           0000:0008      mov   es, word [0xff2c]
│           ; DATA XREF from fcn.00000000 @ 0x62
│           ; DATA XREFS from fcn.000005c3 @ 0x5cd, 0x5d0, 0x5de
│           0000:000c      mov   di, 0x8000
│           0000:000f      mov   si, 0xa811
│           0000:0012      mov   al, 2
│           0000:0014      call  word cs:[0x10c]
│           ; DATA XREF from fcn.000000bc @ +0x274
│           ; DATA XREF from fcn.000004a0 @ +0x5f
│           0000:0019      push  ds
│           0000:001a      mov   ds, word cs:[0xff2c]
│           0000:001f      mov   si, 0x8000
│           0000:0022      mov   cx, 0x100
│           ; DATA XREF from fcn.000005c3 @ +0x39
│           ; DATA XREF from fcn.00000648 @ +0x60
│           0000:0025      call  word cs:[0x2044]
│           0000:002a      pop   ds
│           0000:002b      mov   byte [0xff4e], 0
│           0000:0030      mov   byte [0xff4f], 0
│           ; DATA XREF from fcn.00000648 @ +0x70
│           0000:0035      mov   byte [0xb217], 0
│           0000:003a      call  word cs:[0x2002]
│           0000:003f      call  word cs:[0x2012]
│           0000:0044      mov   si, 0xa81c
│           0000:0047      call  word cs:[0x2010]
│           0000:004c      call  fcn.00000090                          ; fcn.00000090
│           ; DATA XREF from fcn.0000070c @ +0x2f6
│           0000:004f      push  cs
│           0000:0050      pop   es
│           0000:0051      mov   bl, byte [0xc006]
│           0000:0055      dec   bl
│           ; DATA XREFS from fcn.0000070c @ +0x184, +0x1a0, +0x285, +0x39e
│           0000:0057      add   bl, bl
│           ; DATA XREFS from fcn.0000070c @ +0x1bc, +0x1cf
│           0000:0059      xor   bh, bh
│           0000:005b      mov   si, word [bx - 0x4ef4]
│           0000:005f      mov   di, 0xb1f6
│           0000:0062      mov   cx, 0xc
│           0000:0065      rep   movsw word es:[di], word ptr [si]
│           0000:0067      call  fcn.000005c3                          ; fcn.000005c3
│           0000:006a      mov   bx, 0xd60
│           0000:006d      mov   cx, 0x3637                            ; '76'
│           0000:0070      mov   al, 0xff
│           0000:0072      call  word cs:[0x2000]
│           0000:0077      mov   word [0xff4c], 0xa86b                 ; [0xa86b:2]=0xffff
│           ; CODE XREF from fcn.00000000 @ 0x89
│       ┌─> 0000:007d      call  word cs:[0x6004]
│       ╎   0000:0082      cmp   al, 0xff
│      ┌──< 0000:0084      je    0x8b
│      │╎   0000:0086      call  fcn.000000bc                          ; fcn.000000bc
│      ││   ; DATA XREF from fcn.000005c3 @ +0x56
│      │└─< 0000:0089      jmp   0x7d
└      └──> 0000:008b      jmp   word cs:[0x2040]
```

### Function 0x00000090
```asm
; CALL XREF from fcn.00000000 @ 0x4c
┌ fcn.00000090(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0090      mov   si, 0xc9
│           0000:0093      mov   al, byte [0xc006]                     ; [0xc006:1]=255
│           ; DATA XREF from fcn.0000070c @ +0xa0d
│           0000:0096      dec   al
│           0000:0098      xor   ah, ah
│           0000:009a      add   si, ax                                ; arg1
│           0000:009c      mov   dl, byte [si]
│           0000:009e      push  cs
│           0000:009f      pop   es
│           0000:00a0      mov   di, 0xb20f
│           0000:00a3      xor   dh, dh
│           0000:00a5      mov   cx, 8
│       ┌─> 0000:00a8      add   dl, dl
│      ┌──< 0000:00aa      jae   0xb5
│      │╎   0000:00ac      mov   al, cl
│      │╎   ; DATA XREF from fcn.0000070c @ +0xa0f
│      │╎   0000:00ae      neg   al
│      │╎   0000:00b0      add   al, 8
│      │╎   0000:00b2      stosb byte es:[di], al
│      │╎   0000:00b3      inc   dh
│      ││   ; DATA XREF from fcn.0000070c @ +0x985
│      └└─< 0000:00b5      loop  0xa8
│           0000:00b7      mov   byte [0xb20e], dh
│           ; DATA XREFS from fcn.0000070c @ +0xc2, +0xde, +0xfa
└           0000:00bb      ret
```

### Function 0x000000bc
```asm
; CALL XREF from fcn.00000000 @ 0x86
┌ fcn.000000bc(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:00bc      mov   bl, al
│           0000:00be      xor   bh, bh
│           0000:00c0      add   bx, bx                                ; arg3
└           0000:00c2      jmp   word cs:[bx - 0x5f3d]
```

### Function 0x000004a0
```asm
; CALL XREFS from fcn.000000bc @ +0xb6, +0x248, +0x395
┌ fcn.000004a0();
│           0000:04a0      push  cs
│           0000:04a1      pop   es
│           0000:04a2      mov   si, 0xa6
│           0000:04a5      mov   di, 0xff58
│           0000:04a8      mov   cx, 5
│           0000:04ab      xor   dl, dl
│       ┌─> 0000:04ad      lodsb al, byte [si]
│       ╎   0000:04ae      or    al, al
│      ┌──< 0000:04b0      je    0x4b7
│      │╎   0000:04b2      dec   al
│      │╎   0000:04b4      stosb byte es:[di], al
│      │╎   0000:04b5      inc   dl
│      └└─< 0000:04b7      loop  0x4ad
│           0000:04b9      mov   byte [0xff53], dl
└           0000:04bd      ret
```

### Function 0x000005b6
```asm
; CALL XREFS from fcn.000000bc @ +0x54, +0xa5, +0x234, +0x3d2
            ; CALL XREF from fcn.000004a0 @ +0xfb
┌ fcn.000005b6();
│           0000:05b6      mov   bx, 0x2717
│           0000:05b9      mov   cx, 0x1d41
│           0000:05bc      xor   al, al
└           0000:05be      jmp   word cs:[0x2000]
```

### Function 0x000005c3
```asm
; CALL XREF from fcn.00000000 @ 0x67
┌ fcn.000005c3();
│           0000:05c3      mov   si, 0xa5e4
│           0000:05c6      mov   bx, 0x717
│           0000:05c9      mov   cx, 8
│       ┌─> 0000:05cc      push  cx
│       ╎   0000:05cd      mov   cx, 0xc
│      ┌──> 0000:05d0      push  cx
│      ╎╎   0000:05d1      push  bx
│      ╎╎   0000:05d2      lodsb al, byte [si]
│      ╎╎   0000:05d3      call  word cs:[0x3016]
│      ╎╎   0000:05d8      pop   bx
│      ╎╎   0000:05d9      inc   bh
│      ╎╎   0000:05db      pop   cx
│      └──< 0000:05dc      loop  0x5d0
│       ╎   0000:05de      sub   bh, 0xc
│       ╎   0000:05e1      add   bl, 8
│       ╎   0000:05e4      pop   cx
│       └─< 0000:05e5      loop  0x5cc
└           0000:05e7      ret
```

### Function 0x00000648
```asm
; CALL XREFS from fcn.000000bc @ +0x22, +0x38
            ; CALL XREF from fcn.0000070c @ 0x73c
┌ fcn.00000648(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0648      cmp   word [0xff50], 2
│       ┌─< 0000:064d      jae   0x650
│       │   0000:064f      ret
│       └─> 0000:0650      mov   word [0xff50], 0
│           0000:0656      inc   byte [0xb219]
│           0000:065a      cmp   byte [0xb219], 0x14
│       ┌─< 0000:065f      jae   0x662
│       │   0000:0661      ret
│       └─> 0000:0662      mov   byte [0xb219], 0
│           0000:0667      mov   al, byte [0xb21a]                     ; [0xb21a:1]=255
│           0000:066a      inc   al
│           0000:066c      cmp   al, 3
│       ┌─< 0000:066e      jb    0x672
│       │   0000:0670      xor   al, al
│       └─> 0000:0672      mov   byte [0xb21a], al                     ; [0xb21a:1]=255
│           0000:0675      mov   cl, 0x24                              ; '$'
│           0000:0677      mul   cl
│           0000:0679      mov   si, 0xa69c
│           0000:067c      add   si, ax                                ; arg1
│           0000:067e      mov   bx, 0xd17
│           0000:0681      mov   cx, 6
│       ┌─> 0000:0684      push  cx
│       ╎   0000:0685      mov   cx, 6
│      ┌──> 0000:0688      push  cx
│      ╎╎   0000:0689      push  bx
│      ╎╎   0000:068a      lodsb al, byte [si]
│      ╎╎   0000:068b      call  word cs:[0x3016]
│      ╎╎   0000:0690      pop   bx
│      ╎╎   0000:0691      inc   bh
│      ╎╎   0000:0693      pop   cx
│      └──< 0000:0694      loop  0x688
│       ╎   0000:0696      sub   bh, 6
│       ╎   0000:0699      add   bl, 8
│       ╎   0000:069c      pop   cx
│       └─< 0000:069d      loop  0x684
└           0000:069f      ret
```

### Function 0x0000070c
```asm
; CODE XREFS from fcn.000000bc @ +0x2f, +0x45, +0x4b, +0x51
            ; CODE XREF from fcn.0000070c @ 0x747
┌ fcn.0000070c(short unsigned int arg1);
│           ; arg short unsigned int arg1 @ ax
│       ┌─> 0000:070c      mov   byte [0xff1a], 0
│       ╎   0000:0711      lodsw ax, word [si]
│       ╎   0000:0712      cmp   ax, 0xffff                            ; arg1
│      ┌──< 0000:0715      jne   0x718
│      │╎   ; DATA XREF from fcn.000005c3 @ 0x5c6
│      │╎   0000:0717      ret
│      └──> 0000:0718      push  si
│       ╎   0000:0719      mov   si, ax                                ; arg1
│       ╎   0000:071b      mov   bx, 0x91f                             ; "ething else?\xffYou have no money, sir.\xffYou can\t possibly carry any more./\xff\U00000002\fIs there something I&can do for yo"
│       ╎   0000:071e      mov   cx, 7
│      ┌──> 0000:0721      push  cx
│      ╎╎   0000:0722      mov   cx, 4
│     ┌───> 0000:0725      push  cx
│     ╎╎╎   0000:0726      push  bx
│     ╎╎╎   0000:0727      lodsb al, byte [si]
│     ╎╎╎   0000:0728      call  word cs:[0x3016]
│     ╎╎╎   0000:072d      pop   bx
│     ╎╎╎   0000:072e      inc   bh
│     ╎╎╎   0000:0730      pop   cx
│     └───< 0000:0731      loop  0x725
│      ╎╎   0000:0733      sub   bh, 4
│      ╎╎   0000:0736      add   bl, 8
│      ╎╎   0000:0739      pop   cx
│      └──< 0000:073a      loop  0x721
│      ┌──> 0000:073c      call  fcn.00000648                          ; fcn.00000648
│      ╎╎   0000:073f      cmp   byte [0xff1a], 0x28
│      └──< 0000:0744      jb    0x73c
│       ╎   0000:0746      pop   si
└       └─< 0000:0747      jmp   fcn.0000070c
```

## Cross-References (callers)
```json
  0x00000090:
[{"from":76,"to":144,"type":"CALL"}]
  0x000000bc:
[{"from":134,"to":188,"type":"CALL"}]
  0x000004a0:
[{"from":370,"to":1184,"type":"CALL"},{"from":772,"to":1184,"type":"CALL"},{"from":1105,"to":1184,"type":"CALL"}]
  0x000005b6:
[{"from":272,"to":1462,"type":"CALL"},{"from":353,"to":1462,"type":"CALL"},{"from":752,"to":1462,"type":"CALL"},{"from":1166,"to":1462,"type":"CALL"},{"from":1435,"to":1462,"type":"CALL"}]
  0x000005c3:
[{"from":103,"to":1475,"type":"CALL"}]
  0x00000648:
[{"from":222,"to":1608,"type":"CALL"},{"from":244,"to":1608,"type":"CALL"},{"from":1852,"to":1608,"type":"CALL"}]
  0x0000070c:
[{"from":235,"to":1804,"type":"CALL"},{"from":257,"to":1804,"type":"CODE"},{"from":263,"to":1804,"type":"CODE"},{"from":269,"to":1804,"type":"CODE"},{"from":1863,"to":1804,"type":"CODE"}]
```