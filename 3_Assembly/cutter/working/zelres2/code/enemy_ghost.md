# ENEMY_GHOST - Analysis

**Source:** `chunk_12.bin`  
**Size:** 7.1 KB  
**Functions:** 12  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    7 186          fcn.00000000
0x000000ba    5 44           fcn.000000ba
0x000000e6    5 44           fcn.000000e6
0x00000112    1 8            fcn.00000112
0x0000011a    1 10           fcn.0000011a
0x0000047f    7 29           fcn.0000047f
0x0000070a    3 16           fcn.0000070a
0x00000874    3 16           fcn.00000874
0x000008e4    7 29           fcn.000008e4
0x00000906    1 13           fcn.00000906
0x00000913   21 192          fcn.00000913
0x000009d3    9 65           fcn.000009d3
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                                                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x00000311 0x00000311   4    4         ascii  `XP2
  1 0x0000054c 0x0000054c   4    4         ascii  `XP2
  2 0x00000a0c 0x00000a0c   8    9         ibm037 ßSV;ßSNC
  3 0x00000a50 0x00000a50  10   11         ascii  \a\b\t\n\v\f\f\f\f\r
  4 0x00000a68 0x00000a68  10   11         ascii  \a\b\t\n\v\f\f\f\f\r
  5 0x00000a9f 0x00000a9f  61   62         ascii   \f!"#$%\f&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRPQPQPQST
  6 0x00000ae0 0x00000ae0   5    6         ascii  UVW\f\f
  7 0x00000aec 0x00000aec  56   57         ascii  XYZ[\f!"#$%\f\]^_`a,-./0bcdefghi9:;<jklmnopqEFGrstuvwxyz{R
  8 0x00000b28 0x00000b28   5    6         ascii  UVW\f\f
  9 0x00000b34 0x00000b34  23   23         ascii  XYZ[\f!"#$%\f|]^_}~,-./0j
 10 0x00000b51 0x00000b51   6    7         ascii  i9:;<\f
 11 0x00000b5d 0x00000b5d  16   16         ascii  qEFGrsJKLMNyz{R]
 12 0x00000b7d 0x00000b7d   5    5         ascii  ,-./0
 13 0x00000b8a 0x00000b8a   4    4         ascii  9:;<
 14 0x00000b8e 0x00000b8e  22   23         ibm037 stuvwxyzáãåÊ¡¿.<(+ÐÝ#ê
 15 0x00000bad 0x00000bad   4    4         ascii  !"#$
 16 0x00000bc6 0x00000bc6   6    6         ascii  9:;<\f\f
 17 0x00000bd1 0x00000bd1  15   16         ascii  qEFGrsJKLMNyz{R
 18 0x00000bfa 0x00000bfa   7    8         ibm037 óõ}JKLM
 19 0x00000c07 0x00000c07   6    6         ibm037 NOPQR¹
 20 0x00000c0d 0x00000c0d   6    6         utf8   !"#$%\f
 21 0x00000c18 0x00000c18   8    8         ascii  \f,-./0\fj
 22 0x00000c24 0x00000c24   8    8         ascii  \fi9:;<\f\f
 23 0x00000c31 0x00000c31  15   15         ascii  qEFGrsJKLMNyz{R
 24 0x00000c58 0x00000c58  24   24         ibm037 YZ²ÔuvwxÖÒáãÓÕ0123456789
 25 0x00000c79 0x00000c79   5    5         utf8   ,-./0
 26 0x00000c98 0x00000c98   4    4         ascii  KLMN
 27 0x00000ca8 0x00000ca8   9   10         ascii  ARMOR.GRP
 28 0x00000cb6 0x00000cb6  32   33         ascii  Weapon and Armour ShopGo outside
 29 0x00000cd7 0x00000cd7  13   14         ascii  Repair shield
 30 0x00000ce5 0x00000ce5  10   11         ascii  Buy weapon
 31 0x00000cf0 0x00000cf0  10   11         ascii  Buy shield
 32 0x00000cfb 0x00000cfb  13   14         ascii  Explain goods
 33 0x00000d1f 0x00000d1f  15   17         utf8   íTraining sword blocks=Latin-1 Supplement,Basic Latin
 34 0x00000d30 0x00000d30  16   17         ascii  Wise man\s sword
 35 0x00000d41 0x00000d41  12   13         ascii  Spirit sword
 36 0x00000d4e 0x00000d4e  14   15         ascii  Knight\s sword
 37 0x00000d5d 0x00000d5d  18   19         ascii  Illumination sword
 38 0x00000d70 0x00000d70  17   18         ascii  Enchantment sword
 39 0x00000d82 0x00000d82  11   12         ascii  Clay shield
 40 0x00000d8e 0x00000d8e  17   18         ascii  Wise man\s shield
 41 0x00000da0 0x00000da0  12   13         ascii  Stone shield
 42 0x00000dad 0x00000dad  12   13         ascii  Honor shield
 43 0x00000dba 0x00000dba  12   13         ascii  Light shield
 44 0x00000dc7 0x00000dc7  15   16         ascii  Titanium Shield
 45 0x00000dd7 0x00000dd7  26   26         ascii  May I&be of service, sir?/
 46 0x00000df3 0x00000df3  43   43         ascii  \fIs there something I&can do for you, sir?/
 47 0x00000e20 0x00000e20  44   44         ascii  \fWill there be something else for you, sir?/
 48 0x00000e4e 0x00000e4e 101  101         ascii  \fSir, you aren\t carrying a shield -- however, I do have a fine selection, if you\d like to buy one./
 49 0x00000eb5 0x00000eb5  69   69         ascii  \fSir, your shield is not in need of repair. How else can I help you?/
 50 0x00000efc 0x00000efc  63   63         ascii  \fI\ll be glad to repair your shield, sir, for the low price of 
 51 0x00000f3d 0x00000f3d  24   24         ascii  &golds. Shall I&proceed?
 52 0x00000f57 0x00000f57  90   90         ascii  \rI\m sorry sir, you aren\t carrying enough gold. Perhaps after you\ve visited the bank.../
 53 0x00000fb3 0x00000fb3  41   41         ascii  \rPlease wait here, I\ll only be a moment.
 54 0x00000fe4 0x00000fe4  68   68         ascii  \fThe repairs to your armour are complete. It is now as good as new./
 55 0x0000102a 0x0000102a  30   30         ascii  \fSomething else for you, sir?/
 56 0x0000104a 0x0000104a  14   14         ascii  I\ll give you 
 57 0x0000105a 0x0000105a  41   41         ascii  &golds on your old weapon as a trade-in.\r
 58 0x00001085 0x00001085  30   30         ascii  \fSomething else for you, sir?/
 59 0x000010a5 0x000010a5  14   14         ascii  I\ll give you 
 60 0x000010b5 0x000010b5  41   41         ascii  &golds on your old shield as a trade-in.\r
 61 0x000010e0 0x000010e0   9    9         ascii  \fOh, the 
 62 0x000010f1 0x000010f1  23   23         ascii  Will that be all right?
 63 0x0000110a 0x0000110a  13   13         ascii  That will be 
 64 0x00001119 0x00001119   8    8         ascii  &golds./
 65 0x00001123 0x00001123  93   93         ascii  \fAll of my goods are of the highest quality. Which item would you like me to tell you about?/
 66 0x00001182 0x00001182  42   42         ascii  \fWhich item would you like to know about?/
 67 0x000011ad 0x000011ad  52   52         ascii  Is there another item you would like to know about?/
 68 0x000011e2 0x000011e2  30   31         ascii  \fThank you, please come again.
 69 0x00001203 0x00001203  58   58         ascii  \fIf you\re going to waste my time, please be on your way./
 70 0x00001244 0x00001244  10   10         ascii  \fUh....../
 71 0x00001250 0x00001250  84   84         ascii  \fI do not sell that weapon. I haven\t a single one in stock. Please choose another./
 72 0x000012a6 0x000012a6  17   17         ascii  \fWell I\ll be... 
 73 0x000012bb 0x000012bb   5    5         ascii  Sir! 
 74 0x000012c4 0x000012c4 116  116         ascii  Isn\t that the crest of honor you bear? Please come in... I mean...uh... /Might I trade you a knight\s sword for it?
 75 0x00001339 0x00001339  61   62         ascii  \b\fOh, I&see. Well, if you change your mind, please come back.
 76 0x00001379 0x00001379  63   63         ascii  \fOh, thank you, sir! As promised, here is your knight\s sword./
 77 0x000013ba 0x000013ba  37   38         ascii  Thank you, and please come back soon.
 78 0x000013fa 0x000013fa 165  166         ascii  Well, I\d say this sword is all right for a beginner./You get what you pay for./It\s your standard, maintenance-free sword. If money\s a problem, this one\s for you.
 79 0x000014a3 0x000014a3 195  196         ascii  This one is just a bit better than the Training Sword. Once you get the hang of it, it\s an easy one to wield. The price is a bit higher, but you can\t lose on this one./Why not take it with you?
 80 0x0000156a 0x0000156a  95   96         ascii  You like this one?/A wise choice./This is a high grade product. It\s one of my biggest sellers.
 81 0x000015cd 0x000015cd 127  128         ascii  Oh, I\d be more than happy to tell you about this one./This is a real man\s sword. It\ll topple monsters in the wink of an eye.
 82 0x00001650 0x00001650 139  140         ascii  You\ve got a lot of grit I\d say. This one really packs a punch. A top-of-the-line sword for a top-of-the-line-swordsman. Will you take it?
 83 0x000016df 0x000016df  45   46         ascii  Isn\t that the sword you brought in with you?
 84 0x00001710 0x00001710 171  172         ascii  This shield is small and has limited defense capability. It\s not very durable -- unless it\s used with great skill, it won\t last long. It\s better than nothing, I guess.
 85 0x000017bf 0x000017bf 128  129         ascii  Well, it\s slightly better than the Clay Shield. Long ago, a well-known hero used it for a short time. You could do a lot worse.
 86 0x00001843 0x00001843 135  136         ascii  This one is more of a general-use shield. It\s not the best one I carry. I can\t really recommend it, I think it will soon be obsolete.
 87 0x000018ce 0x000018ce 138  139         ascii  This shield is in a class by itself. It is strong and light and easy to use. This is a superior shield, the least a brave man should have.
 88 0x0000195c 0x0000195c 179  180         ascii  Ho! You\ve got quite an eye for these things, I see. This shield is not made of common iron. It is made of a magic metal called Magane. Against ordinary weapons, it\s unbreakable.
 89 0x00001a13 0x00001a13 148  149         ascii  This shield makes the mightiest swords seem like paper. It\s light as a feather and hard as a diamond. Used well, this one will last you a lifetime.
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000();
│           0000:0000      inc   di
│           0000:0001      sbb   al, 0
│           ; DATA XREF from fcn.0000011a @ +0x15b
│           ; DATA XREF from fcn.0000047f @ 0x47f
│           ; DATA XREF from fcn.0000047f @ +0x35
│           ; DATA XREF from fcn.000008e4 @ 0x8e4
│           0000:0003      add   byte [si], al
│           0000:0005      mov   al, byte [0xa90f]                     ; [0xa90f:1]=255
│           0000:0008      mov   es, word [0xff2c]
│           ; XREFS: DATA 0x000009f5  DATA 0x000009f8  DATA 0x00000a06  
│           ; XREFS: DATA 0x00000a55  DATA 0x00000a57  DATA 0x00000a6d  
│           ; XREFS: DATA 0x00000a6f  DATA 0x00000a7b  DATA 0x00000ae3  
│           ; XREFS: DATA 0x00000b2b  DATA 0x00000bca  DATA 0x00000c2a  
│           ; XREFS: DATA 0x000013ed  
│           0000:000c      mov   di, 0x8000
│           0000:000f      mov   si, 0xaca2
│           ; DATA XREF from fcn.00000000 @ 0x65
│           0000:0012      mov   al, 2
│           0000:0014      call  word cs:[0x10c]
│           0000:0019      push  ds
│           0000:001a      mov   ds, word cs:[0xff2c]
│           0000:001f      mov   si, 0x8000
│           0000:0022      mov   cx, 0x100
│           ; DATA XREFS from fcn.000009d3 @ +0x121, +0x169, +0x23d, +0x29d
│           0000:0025      call  word cs:[0x2044]
│           0000:002a      pop   ds
│           0000:002b      mov   byte [0xff4e], 0
│           0000:0030      mov   byte [0xff4f], 0
│           ; DATA XREF from fcn.000009d3 @ +0xe2
│           0000:0035      mov   byte [0xbc21], 0
│           0000:003a      call  word cs:[0x2002]
│           ; DATA XREF from fcn.000009d3 @ +0xa1e
│           0000:003f      call  word cs:[0x2012]
│           ; DATA XREF from fcn.0000011a @ +0x60
│           0000:0044      mov   si, 0xacae
│           0000:0047      call  word cs:[0x2010]
│           ; DATA XREF from fcn.000009d3 @ +0xa16
│           0000:004c      call  fcn.000000ba                          ; fcn.000000ba
│           ; DATA XREFS from fcn.000009d3 @ +0x70d, +0x967
│           0000:004f      call  fcn.000000e6                          ; fcn.000000e6
│           0000:0052      push  cs
│           ; DATA XREFS from fcn.000009d3 @ +0x47b, +0x4e2, +0x657, +0x6b2, +0x8e7
│           0000:0053      pop   es
│           ; DATA XREF from fcn.000009d3 @ +0x611
│           0000:0054      mov   bl, byte [0xc006]
│           ; DATA XREF from fcn.000009d3 @ +0x6b
│           0000:0058      dec   bl
│           0000:005a      add   bl, bl
│           ; DATA XREF from fcn.000009d3 @ +0x123
│           0000:005c      xor   bh, bh
│           0000:005e      mov   si, word [bx - 0x4559]
│           0000:0062      mov   di, 0xbbfd
│           ; CALL XREF from fcn.000009d3 @ +0xdeb
│           0000:0065      mov   cx, 0x12
│           ; CALL XREFS from fcn.000009d3 @ +0xacf, +0xd3c, +0xe6f, +0xefa, +0x103f
│           0000:0068      rep   movsw word es:[di], word ptr [si]
│           ; DATA XREF from fcn.000009d3 @ +0x13a
│           0000:006a      xor   al, al
│           ; DATA XREF from fcn.000009d3 @ +0x6e
│           0000:006c      call  fcn.000009d3                          ; fcn.000009d3
│           ; CALL XREFS from fcn.000009d3 @ +0xb96, +0xc7c
│           0000:006f      mov   byte [0xbc23], 0xff                   ; [0xff:1]=210
│           0000:0074      mov   bx, 0xd60                             ; "umination sword"
│           0000:0077      mov   cx, 0x3637                            ; '76'
│           0000:007a      mov   al, 0xff
│           ; DATA XREF from fcn.000009d3 @ +0x16b
│           0000:007c      call  word cs:[0x2000]
│           0000:0081      mov   word [0xff4c], 0xadd3                 ; [0xadd3:2]=0xffff
│           0000:0087      test  byte [0x24], 2                        ; [0x24:1]=1
│       ┌─< 0000:008c      jne   0xa7
│       │   0000:008e      cmp   byte [0xc006], 5
│       │   ; DATA XREF from fcn.0000011a @ +0x85
│       │   ; DATA XREFS from fcn.0000047f @ +0x144, +0x14b, +0x214, +0x22b
│      ┌──< 0000:0093      jne   0xa7
│      ││   0000:0095      test  byte [0x9b], 0xff                     ; [0x9b:1]=11
│     ┌───< 0000:009a      je    0xa7
│     │││   0000:009c      mov   word [0xff4c], 0xb2a2                 ; [0xb2a2:2]=0xffff
│     │││   ; DATA XREF from fcn.000009d3 @ +0x1ba
│     │││   0000:00a2      mov   byte [0xbc23], 0
│     │││   ; CODE XREF from fcn.00000000 @ 0xb3
│    ┌└└└─> 0000:00a7      call  word cs:[0x6004]
│    ╎      0000:00ac      cmp   al, 0xff
│    ╎      ; DATA XREF from fcn.000009d3 @ +0x1d3
│    ╎  ┌─< 0000:00ae      je    0xb5
│    ╎  │   0000:00b0      call  fcn.00000112                          ; fcn.00000112
│    │  │   ; DATA XREF from fcn.000009d3 @ +0x1de
│    └────< 0000:00b3      jmp   0xa7
│       │   ; DATA XREF from fcn.000009d3 @ +0x1e0
└       └─> 0000:00b5      jmp   word cs:[0x2040]
```

### Function 0x000000ba
```asm
; CALL XREF from fcn.00000000 @ 0x4c
            ; CALL XREF from fcn.0000011a @ +0x34c
┌ fcn.000000ba(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:00ba      mov   si, 0xd2
│           0000:00bd      mov   al, byte [0xc006]                     ; [0xc006:1]=255
│           0000:00c0      dec   al
│           0000:00c2      xor   ah, ah
│           0000:00c4      add   si, ax                                ; arg1
│           0000:00c6      mov   dl, byte [si]
│           0000:00c8      push  cs
│           ; DATA XREF from fcn.000009d3 @ +0xa14
│           0000:00c9      pop   es
│           0000:00ca      mov   di, 0xbc3b
│           0000:00cd      xor   dh, dh
│           0000:00cf      mov   cx, 6
│           ; DATA XREF from fcn.000000ba @ 0xba
│       ┌─> 0000:00d2      add   dl, dl
│      ┌──< 0000:00d4      jae   0xdf
│      │╎   0000:00d6      mov   al, cl
│      │╎   0000:00d8      neg   al
│      │╎   0000:00da      add   al, 6
│      │╎   ; DATA XREF from fcn.000009d3 @ +0x241
│      │╎   0000:00dc      stosb byte es:[di], al
│      │╎   0000:00dd      inc   dh
│      └└─< 0000:00df      loop  0xd2
│           0000:00e1      mov   byte [0xbc31], dh
└           0000:00e5      ret
```

### Function 0x000000e6
```asm
; CALL XREF from fcn.00000000 @ 0x4f
            ; CALL XREF from fcn.0000047f @ +0x211
┌ fcn.000000e6(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:00e6      mov   si, 0xdb
│           0000:00e9      mov   al, byte [0xc006]                     ; [0xc006:1]=255
│           0000:00ec      dec   al
│           0000:00ee      xor   ah, ah
│           0000:00f0      add   si, ax                                ; arg1
│           0000:00f2      mov   dl, byte [si]
│           0000:00f4      push  cs
│           0000:00f5      pop   es
│           0000:00f6      mov   di, 0xbc41
│           0000:00f9      xor   dh, dh
│           ; DATA XREF from fcn.0000011a @ +0x347
│           0000:00fb      mov   cx, 6
│       ┌─> 0000:00fe      add   dl, dl
│       ╎   ; DATA XREF from fcn.00000000 @ 0x22
│      ┌──< 0000:0100      jae   0x10b
│      │╎   0000:0102      mov   al, cl
│      │╎   0000:0104      neg   al
│      │╎   0000:0106      add   al, 6
│      │╎   0000:0108      stosb byte es:[di], al
│      │╎   0000:0109      inc   dh
│      └└─< 0000:010b      loop  0xfe
│           0000:010d      mov   byte [0xbc32], dh
└           0000:0111      ret
```

### Function 0x00000112
```asm
; CALL XREF from fcn.00000000 @ 0xb0
┌ fcn.00000112(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0112      mov   bl, al
│           0000:0114      xor   bh, bh
│           0000:0116      add   bx, bx                                ; arg3
│           0000:0118      invalid
..
```

### Function 0x0000011a
```asm
; CALL XREF from fcn.00000913 @ 0x9aa
┌ fcn.0000011a(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:011a      cmpsw word [si], word ptr es:[di]
│           0000:011b      sbb   word [bx + di - 0x5ed3], sp           ; arg3
│           0000:011f      pop   cx
│           0000:0120      mov   byte [0xa498], al                     ; [0xa498:1]=255
└           0000:0123      retf
```

### Function 0x0000047f
```asm
; CALL XREF from fcn.0000011a @ +0x1c6
┌ fcn.0000047f();
│           0000:047f      cmp   al, 3
│       ┌─< 0000:0481      je    0x484
│       │   0000:0483      ret
│       └─> 0000:0484      test  byte [0x24], 2                        ; [0x24:1]=1
│       ┌─< 0000:0489      je    0x48c
│       │   0000:048b      ret
│       └─> 0000:048c      cmp   byte [0xc006], 5
│       ┌─< 0000:0491      je    0x494
│       │   0000:0493      ret
│       └─> 0000:0494      pop   ax
│           0000:0495      mov   word [0xff4c], 0xb24c                 ; [0xb24c:2]=0xffff
└           0000:049b      ret
```

### Function 0x0000070a
```asm
; CALL XREF from fcn.0000011a @ +0x77
┌ fcn.0000070a();
│           0000:070a      mov   byte [0xff1a], 0
│       ┌─> 0000:070f      call  fcn.00000913                          ; fcn.00000913
│       ╎   0000:0712      cmp   byte [0xff1a], 0x96
│       │   ; DATA XREF from fcn.000009d3 @ 0x9e2
│       └─< 0000:0717      jb    0x70f
└           0000:0719      ret
```

### Function 0x00000874
```asm
; CALL XREF from fcn.0000047f @ +0x27c
┌ fcn.00000874(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0874      mov   byte [0xff1a], 0
│       ┌─> 0000:0879      call  fcn.00000913                          ; fcn.00000913
│       ╎   0000:087c      cmp   byte [0xff1a], 0x32
│       └─< 0000:0881      jb    0x879
└           0000:0883      ret
```

### Function 0x000008e4
```asm
; CALL XREF from fcn.0000070a @ +0xeb
┌ fcn.000008e4();
│           0000:08e4      cmp   al, 3
│       ┌─< 0000:08e6      je    0x8e9
│       │   0000:08e8      ret
│       └─> 0000:08e9      test  byte [0x24], 2                        ; [0x24:1]=1
│       ┌─< 0000:08ee      je    0x8f1
│       │   0000:08f0      ret
│       └─> 0000:08f1      cmp   byte [0xc006], 5
│       ┌─< 0000:08f6      je    0x8f9
│       │   0000:08f8      ret
│       └─> 0000:08f9      pop   ax
│           0000:08fa      mov   word [0xff4c], 0xb240                 ; [0xb240:2]=0xffff
└           0000:0900      ret
```

### Function 0x00000906
```asm
; CALL XREFS from fcn.0000011a @ +0x82, +0xfb
            ; CALL XREF from fcn.00000874 @ +0x29
┌ fcn.00000906();
│           0000:0906      mov   bx, 0x2717
│           0000:0909      mov   cx, 0x1c41
│           0000:090c      xor   al, al
└           0000:090e      jmp   word cs:[0x2000]
```

### Function 0x00000913
```asm
; CALL XREF from fcn.0000070a @ 0x70f
            ; CALL XREF from fcn.00000874 @ 0x879
┌ fcn.00000913(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0913      test  byte [0xbc23], 0xff
│       ┌─< 0000:0918      jne   0x91b
│       │   0000:091a      ret
│       └─> 0000:091b      cmp   word [0xff50], 2
│       ┌─< 0000:0920      jae   0x923
│       │   0000:0922      ret
│       └─> 0000:0923      mov   word [0xff50], 0
│           0000:0929      inc   byte [0xbc24]
│           0000:092d      cmp   byte [0xbc24], 0x1e
│       ┌─< 0000:0932      jae   0x935
│       │   0000:0934      ret
│       └─> 0000:0935      mov   byte [0xbc24], 0
│           0000:093a      inc   byte [0xbc25]
│           0000:093e      test  byte [0xbc26], 0xff
│       ┌─< 0000:0943      je    0x989
│       │   0000:0945      cmp   byte [0xbc26], 0x7f
│      ┌──< 0000:094a      jne   0x955
│      ││   0000:094c      mov   byte [0xbc26], 0xff                   ; [0xff:1]=210
│      ││   0000:0951      mov   al, 2
│     ┌───< 0000:0953      jmp   fcn.000009d3                          ; fcn.000009d3
│     │└──> 0000:0955      cmp   byte [0xbc26], 0x80
│     │┌──< 0000:095a      jne   0x965
│     │││   0000:095c      mov   byte [0xbc26], 0
│     │││   0000:0961      xor   al, al
│    ┌────< 0000:0963      jmp   fcn.000009d3                          ; fcn.000009d3
│    ││└──> 0000:0965      mov   si, 0xab68
│    ││ │   0000:0968      mov   al, byte [0xbc25]                     ; [0xbc25:1]=255
│    ││ │   0000:096b      and   ax, 3                                 ; arg1
│    ││ │   0000:096e      add   ax, ax                                ; arg1
│    ││ │   0000:0970      add   si, ax                                ; arg1
│    ││ │   0000:0972      mov   bx, 0xb37
│    ││ │   0000:0975      mov   cx, 2
│    ││┌──> 0000:0978      push  cx
│    ││╎│   0000:0979      push  bx
│    ││╎│   0000:097a      lodsb al, byte [si]
│    ││╎│   0000:097b      call  word cs:[0x3016]
│    ││╎│   0000:0980      pop   bx
│    ││╎│   0000:0981      add   bl, 8
│    ││╎│   0000:0984      pop   cx
│    ││└──< 0000:0985      loop  0x978
│    ││┌──< 0000:0987      jmp   0x9aa
│    │││└─> 0000:0989      mov   si, 0xaad0
│    │││    0000:098c      mov   al, byte [0xbc25]                     ; [0xbc25:1]=255
│    │││    0000:098f      and   ax, 3                                 ; arg1
│    │││    0000:0992      add   ax, ax                                ; arg1
│    │││    0000:0994      add   si, ax                                ; arg1
│    │││    0000:0996      mov   bx, 0x104f                            ; "give you \xff"
│    │││    0000:0999      mov   cx, 2
│    │││┌─> 0000:099c      push  cx
│    │││╎   0000:099d      push  bx
│    │││╎   0000:099e      lodsb al, byte [si]
│    │││╎   0000:099f      call  word cs:[0x3016]
│    │││╎   0000:09a4      pop   bx
│    │││╎   0000:09a5      inc   bh
│    │││╎   0000:09a7      pop   cx
│    │││└─< 0000:09a8      loop  0x99c
│    │││    ; CODE XREF from fcn.00000913 @ 0x987
│    ││└──> 0000:09aa      call  word cs:[fcn.0000011a]                ; 0x11a
│    ││     0000:09af      and   al, 1
│    ││ ┌─< 0000:09b1      je    0x9b4
│    ││ │   0000:09b3      ret
│    ││ └─> 0000:09b4      inc   byte [0xbc27]
│    ││     0000:09b8      cmp   byte [0xbc27], 0x1e
│    ││ ┌─< 0000:09bd      jae   0x9c0
│    ││ │   0000:09bf      ret
│    ││ └─> 0000:09c0      mov   byte [0xbc27], 0
│    ││     0000:09c5      mov   al, byte [0xbc26]                     ; [0xbc26:1]=255
│    ││     0000:09c8      not   al
│    ││     0000:09ca      xor   al, 0x80
│    ││     0000:09cc      mov   byte [0xbc26], al                     ; [0xbc26:1]=255
│    ││     0000:09cf      mov   al, 1
└    ││ ┌─< 0000:09d1      jmp   fcn.000009d3                          ; fcn.000009d3
```

### Function 0x000009d3
```asm
; XREFS: CALL 0x0000006c  CALL 0x000006f8  CALL 0x0000074e  
            ; XREFS: CALL 0x000008ac  CODE 0x00000903  CODE 0x00000953  
            ; XREFS: CODE 0x00000963  CODE 0x000009d1  
┌ fcn.000009d3(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:09d3      xor   ah, ah
│           0000:09d5      add   ax, ax                                ; arg1
│           0000:09d7      mov   cx, ax                                ; arg1
│           0000:09d9      add   ax, ax                                ; arg1
│           0000:09db      add   ax, cx                                ; arg1
│           0000:09dd      add   ax, 0xaa10                            ; arg1
│           0000:09e0      mov   si, ax                                ; arg1
│           0000:09e2      mov   bx, 0x717
│           0000:09e5      mov   cx, 2
│       ┌─> 0000:09e8      lodsb al, byte [si]
│       ╎   0000:09e9      or    al, al
│      ┌──< 0000:09eb      jne   0x9ee
│      │╎   0000:09ed      ret
│      └──> 0000:09ee      push  cx
│       ╎   0000:09ef      mov   cl, al
│       ╎   0000:09f1      lodsw ax, word [si]
│       ╎   0000:09f2      xchg  si, ax                                ; arg1
│       ╎   0000:09f3      push  ax                                    ; arg1
│      ┌──> 0000:09f4      push  cx
│      ╎╎   0000:09f5      mov   cx, 0xc
│     ┌───> 0000:09f8      push  cx
│     ╎╎╎   0000:09f9      push  bx
│     ╎╎╎   0000:09fa      lodsb al, byte [si]
│     ╎╎╎   0000:09fb      call  word cs:[0x3016]
│     ╎╎╎   0000:0a00      pop   bx
│     ╎╎╎   0000:0a01      inc   bh
│     ╎╎╎   0000:0a03      pop   cx
│     └───< 0000:0a04      loop  0x9f8
│      ╎╎   0000:0a06      sub   bh, 0xc
│      ╎╎   0000:0a09      add   bl, 8
│      ╎╎   0000:0a0c      pop   cx
│      └──< 0000:0a0d      loop  0x9f4
│       ╎   0000:0a0f      pop   si
│       ╎   0000:0a10      pop   cx
│       └─< 0000:0a11      loop  0x9e8
└           0000:0a13      ret
```

## Cross-References (callers)
```json
  0x000000ba:
[{"from":76,"to":186,"type":"CALL"},{"from":1126,"to":186,"type":"CALL"}]
  0x000000e6:
[{"from":79,"to":230,"type":"CALL"},{"from":1680,"to":230,"type":"CALL"}]
  0x00000112:
[{"from":176,"to":274,"type":"CALL"}]
  0x0000011a:
[{"from":2474,"to":282,"type":"CALL"}]
  0x0000047f:
[{"from":736,"to":1151,"type":"CALL"}]
  0x0000070a:
[{"from":401,"to":1802,"type":"CALL"}]
  0x00000874:
[{"from":1787,"to":2164,"type":"CALL"}]
  0x000008e4:
[{"from":2037,"to":2276,"type":"CALL"}]
  0x00000906:
[{"from":412,"to":2310,"type":"CALL"},{"from":533,"to":2310,"type":"CALL"},{"from":2205,"to":2310,"type":"CALL"}]
  0x00000913:
[{"from":1807,"to":2323,"type":"CALL"},{"from":2169,"to":2323,"type":"CALL"}]
  0x000009d3:
[{"from":108,"to":2515,"type":"CALL"},{"from":1784,"to":2515,"type":"CALL"},{"from":1870,"to":2515,"type":"CALL"},{"from":2220,"to":2515,"type":"CALL"},{"from":2307,"to":2515,"type":"CODE"},{"from":2387,"to":2515,"type":"CODE"},{"from":2403,"to":2515,"type":"CODE"},{"from":2513,"to":2515,"type":"CODE"}]
```