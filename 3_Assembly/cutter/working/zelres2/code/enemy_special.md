# ENEMY_SPECIAL - Analysis

**Source:** `chunk_17.bin`  
**Size:** 6.8 KB  
**Functions:** 17  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    4 94   -> 62   fcn.00000000
0x0000005e    1 74           fcn.0000005e
0x000000a8    1 11           fcn.000000a8
0x0000010c    1 12           fcn.0000010c
0x000001d5    5 44           fcn.000001d5
0x00000204    5 46           fcn.00000204
0x00000232   11 94           fcn.00000232
0x00000414    3 16           fcn.00000414
0x0000042b   17 239          fcn.0000042b
0x0000052c    3 49           fcn.0000052c
0x0000055d   63 777  -> 735  fcn.0000055d
0x00000801    1 42           fcn.00000801
0x00000987    1 13           fcn.00000987
0x00000994    5 38           fcn.00000994
0x00000a1a    5 49           fcn.00000a1a
0x00000b4b   16 180          fcn.00000b4b
0x00000c0b    1 17           fcn.00000c0b
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x00000253 0x00000253   5    5         ibm037 C»BJZ
  1 0x000002a7 0x000002a7   4    4         ascii  : N@
  2 0x000003fb 0x000003fb   6    7         ascii  40$0\t\b
  3 0x00000404 0x00000404   4    5         ascii  86,6
  4 0x0000040d 0x0000040d   4    5         ascii  <<<H
  5 0x0000051a 0x0000051a   5    6         ascii  *.usr
  6 0x00000520 0x00000520  11   11         ascii  Input name:
  7 0x0000052e 0x0000052e   4    4         ascii  QVP.
  8 0x00000553 0x00000553  11   12         ibm037 ìÚ{ÚD;ßSKCF
  9 0x000005c2 0x000005c2   4    4         ascii  tcV2
 10 0x00000607 0x00000607   8    9         ibm037 ]JYJY«8«
 11 0x00000798 0x00000798   8    8         ibm037 ]JYJY«8µ
 12 0x00000804 0x00000804   8    9         ibm037 ]JYJY«8«
 13 0x0000090d 0x0000090d  10   11         ascii  STDPLY.BIN
 14 0x000009c1 0x000009c1   7    8         ascii  \a\b\t\n\v\f\r
 15 0x000009da 0x000009da  64   64         ascii  \e !"#$%\e&'()\e+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]
 16 0x00000a51 0x00000a51  26   27         ascii  \e %\e&'()\e+01234567<=>?@ABC
 17 0x00000a71 0x00000a71  28   29         ascii  \e %\eq'(t\e+01u34v67<=>?@ABC^_
 18 0x00000a91 0x00000a91  26   27         ascii  `abcdefgij0klmnop7<=>?@ABC
 19 0x00000ab0 0x00000ab0  16   17         ascii  wx %\eyezrs+0{|}~
 20 0x00000ac6 0x00000ac6   5    6         ascii  ?@ABC
 21 0x00000adc 0x00000adc   5    5         ibm037 fg'hi
 22 0x00000ae1 0x00000ae1  10   11         ascii  67<=>?@ABC
 23 0x00000b02 0x00000b02   9   10         ascii  7<=>?@ABC
 24 0x00000b14 0x00000b14   6    6         ibm037 lmÁnop
 25 0x00000b22 0x00000b22   9   10         ascii  7<=>?@ABC
 26 0x00000b42 0x00000b42   6    6         ascii  7<=>?@
 27 0x00000bfe 0x00000bfe   5    6         ascii  0)*gh
 28 0x00000cb6 0x00000cb6  10   11         ascii  KENJYA.GRP
 29 0x00000cd5 0x00000cd5  14   15         ascii  The Sage Marid
 30 0x00000ce7 0x00000ce7  15   16         ascii  The Sage Yasmin
 31 0x00000cfa 0x00000cfa  15   16         ascii  The Sage Hajjar
 32 0x00000d0d 0x00000d0d  16   17         ascii  The Sage Chiriga
 33 0x00000d21 0x00000d21  15   16         ascii  The Sage Hisham
 34 0x00000d34 0x00000d34  15   16         ascii  The Sage Maryam
 35 0x00000d47 0x00000d47  14   15         ascii  The Sage Saied
 36 0x00000d59 0x00000d59  26   27         ascii  The Sage IndiharGo outside
 37 0x00000d74 0x00000d74   9   10         ascii  See Power
 38 0x00000d7e 0x00000d7e  16   17         ascii  Listen Knowledge
 39 0x00000d8f 0x00000d8f  17   18         ascii  Record Experience
 40 0x00000da1 0x00000da1  32   32         ascii  \fHow can I help you, Brave One?/
 41 0x00000dc3 0x00000dc3  42   42         ascii  \fIs there anything else I can do for you?/
 42 0x00000def 0x00000def  26   27         ascii  \fThe Spirits are with you.
 43 0x00000e0c 0x00000e0c  54   54         ascii  \fI shall call upon the Spirits and their powers..... /
 44 0x00000e46 0x00000e46  99   99         ascii  \fI fear the spirits are no longer with you. No matter how many times I try, it comes out the same. 
 45 0x00000eab 0x00000eab  90   90         ascii  \fYou are brave, but your experience is lacking. Come back when you have accomplished more.
 46 0x00000f07 0x00000f07 119  119         ascii  \fI can no longer impart the power of the Spirits to you. Continue on your quest. You will soon find others to help you.
 47 0x00000f80 0x00000f80  34   34         ascii  \fI shall record your experiences./
 48 0x00000fa4 0x00000fa4  58   58         ascii  Place is saved on user disk. Will you continue your quest?
 49 0x00000fe5 0x00000fe5  60   60         ascii  Oh, Holy Spirits, purify my thoughts and grant me strength. 
 50 0x00001037 0x00001037  52   52         ascii  Your experience is lacking. Persevere in your quest.
 51 0x0000106d 0x0000106d  36   36         ascii  You must accumulate more experience.
 52 0x00001093 0x00001093  81   81         ascii  I can see the faint light of the Spirits in you. You must endure a little longer.
 53 0x000010e6 0x000010e6  55   55         ascii  The light of the Spirits is bursting forth within you. 
 54 0x0000111f 0x0000111f  30   30         ascii  \rIndeed, your power has grown.
 55 0x00001143 0x00001143 119  119         ascii  I can no longer impart the power of the Spirits to you. Continue on your quest. You will soon find others to help you. 
 56 0x000011bc 0x000011bc 115  115         ascii  I am the Sage Marid./You are very brave to embark on such a dangerous journey. I&shall assist you in your travels. 
 57 0x00001231 0x00001231 110  110         ascii  I am the Sage Yasmin./I have been expecting you. I&shall teach you the Magic Spell of Throwing Swords: Espada.
 58 0x000012a3 0x000012a3 116  116         ascii  I am the Sage Hajjar./I am happy to see you\ve made it this far. I&shall teach you the Magic Spell of Arrows: Saeta.
 59 0x0000131b 0x0000131b 113  113         ascii  I am the Sage Chiriga./You have come far, and you must be cold. I&shall teach you the Magic Spell of Fire: Fuego.
 60 0x00001390 0x00001390 112  112         ascii  I am the Sage Hisham./You are doing well to stand before me. I&shall teach you the Magic Spell of Flame: Lanzar.
 61 0x00001404 0x00001404 132  132         ascii  I am the Sage Maryam./You have made the Spirits proud with your bravery. I&shall teach you the Magic Spell of Falling Rocks: Rascar.
 62 0x0000148c 0x0000148c 146  146         ascii  I am the Sage Saied./You have lived through much, but your journey is not over. You must be hot. I&shall teach you the Magic Spell of Water: Agua.
 63 0x00001522 0x00001522  82   83         ascii  I am the Sage of All Sages, Indihar./Brave lad, you\ve done well to get this far./
 64 0x00001575 0x00001575  55   55         ascii  I&shall teach you the Magic Spell of Lightning: Guerra.
 65 0x000015b0 0x000015b0  62   62         ascii        Disk error.\rPlease check your disk\r  and press spacebar.
 66 0x000015ff 0x000015ff 114  115         ascii  \fMy master, the Sage Yasmin, resides in the underground town. She is a person you can turn to if you are in need. 
 67 0x00001674 0x00001674 120  121         ascii  \fWhen you leave the city, climb to the plateau on the left. You\ll see a door that looks like the exit from this world. 
 68 0x000016ef 0x000016ef 127  128         ascii  \fThe exit from this world is very near the exit from the village. However, before you go there you must have the Hero\s Crest. 
 69 0x00001771 0x00001771 172  173         ascii  \fThis is a message from the Spirits: Bend when you walk a low road. Walk not on the steep path with the needles of ice, choose another path instead. Heed well these words. 
 70 0x00001820 0x00001820 147  148         ascii  \fYou can\t defeat the demons at the edge of the badlands without the Knight\s Sword. Until you get that sword, do not open the door of the demons. 
 71 0x000018b6 0x000018b6 159  160         ascii  \fOnce you leave this world, get the Silkarn shoes made by the spirits at the behest of Percel. If you do not get those, you cannot travel far from this world. 
 72 0x00001958 0x00001958  88   89         ascii  \fThat world is controlled by dragons. To get there, you have to open three closed doors.
 73 0x000019b3 0x000019b3 181  182         ascii  \fAt the edge of this world is the final foe, Jashiin./To fight Jashiin, you must have the Sword of the Fairy Flame. And to get there, you must topple the invincible monster Alguien.
 74 0x00001a6b 0x00001a6b  59   59         ascii  \fWhile you were unconscious, the spirits brought you here./
 75 0x00001aaa 0x00001aaa  46   46         ascii  Be careful not to exhaust yourself in battle./
 76 0x00001ada 0x00001ada  20   20         ascii  Now be on your way. 
 77 0x00001af0 0x00001af0  35   36         ascii  The spirits are looking after you.
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(short unsigned int arg1, int16_t arg3, int16_t arg_e17h);
│           ; arg short unsigned int arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg_e17h @ stack + 0xe17
│           0000:0000      cmp   ax, 0x1b                              ; arg1
│           ; DATA XREF from fcn.000001d5 @ 0x1e5
│           0000:0003      add   byte [bx], ah                         ; arg3
│           ; DATA XREF from fcn.0000042b @ 0x4b8
│           0000:0005      mov   al, byte [0xab47]                     ; [0xab47:1]=255
│           ; DATA XREFS from fcn.0000055d @ 0x63f, 0x665, 0x670
│           ; DATA XREF from fcn.00000994 @ 0x99e
│           ; DATA XREF from fcn.00000a1a @ 0xa33
│           0000:0008      push  es
│           0000:0009      mov   al, byte [0x51e8]                     ; [0x51e8:1]=255
│           ; DATA XREFS from fcn.00000994 @ 0x99f, 0x9a2, 0x9b0
│           0000:000c      add   bh, al
│           0000:000e      push  es
│           ; XREFS: DATA 0x00000238  DATA 0x0000023d  DATA 0x00000355  
│           ; XREFS: DATA 0x0000035a  DATA 0x0000036c  DATA 0x00000371  
│           ; XREFS: DATA 0x00000b6b  DATA 0x00000bb8  
│           0000:000f      adc   bh, byte [bp + di + 0xe17]
│           0000:0013      call  fcn.00000994                          ; fcn.00000994
│           0000:0016      mov   bx, 0xd60                             ; "e IndiharGo outside"
│           0000:0019      mov   cx, 0x3637                            ; '76'
│           ; DATA XREF from fcn.00000c0b @ +0x9eb
│           0000:001c      mov   al, 0xff
│           0000:001e      call  word cs:[0x2000]
│           0000:0023      mov   word [0xff4c], 0xba67                 ; [0xba67:2]=0xffff
│       ┌─< 0000:0029      jmp   0x4b
..
        │   ; DATA XREF from fcn.00000801 @ +0x78
        │   ; XREFS: DATA 0x000009f8  DATA 0x00000a63  DATA 0x00000a83  
        │   ; XREFS: DATA 0x00000aa3  DATA 0x00000ae3  DATA 0x00000b03  
        │   ; XREFS: DATA 0x00000b43  
        │   ; DATA XREF from fcn.00000c0b @ +0x429
│       │   ; CODE XREFS from fcn.00000000 @ 0x29, 0x57
│      ┌└─> 0000:004b      call  word cs:[0x6004]
│      ╎    ; DATA XREF from fcn.00000801 @ +0xd2
│      ╎    0000:0050      cmp   al, 0xff
│      ╎┌─< 0000:0052      je    0x59
│      ╎│   ; DATA XREFS from fcn.00000c0b @ +0x1e4, +0xae4, +0xb66, +0xd4d, +0xee4
│      ╎│   0000:0054      call  fcn.000000a8                          ; fcn.000000a8
│      ││   ; DATA XREF from fcn.00000c0b @ +0xa69
│      └──< 0000:0057      jmp   0x4b
│       │   ; DATA XREFS from fcn.00000c0b @ +0x42b, +0xc15
└       └─> 0000:0059      jmp   word cs:[0x2040]
```

### Function 0x0000005e
```asm
; CALL XREF from fcn.00000000 @ +0x2b
┌ fcn.0000005e(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:005e      mov   es, word [0xff2c]
│           0000:0062      mov   di, 0x8000
│           0000:0065      mov   si, 0xacb0
│           0000:0068      mov   al, 2
│           ; DATA XREFS from fcn.00000c0b @ +0xfa, +0x6a8
│           0000:006a      call  word cs:[fcn.0000010c]                ; 0x10c
│           0000:006f      push  ds
│           ; DATA XREF from fcn.00000c0b @ +0x9e5
│           0000:0070      mov   ds, word cs:[0xff2c]
│           ; DATA XREF from fcn.00000801 @ +0x7c
│           0000:0075      mov   si, 0x8000
│           0000:0078      mov   cx, 0x100
│           0000:007b      call  word cs:[0x2044]
│           ; DATA XREF from fcn.00000a1a @ +0xa9
│           ; DATA XREF from fcn.00000c0b @ +0x2c
│           0000:0080      pop   ds
│           0000:0081      mov   byte [0xff4e], 0
│           0000:0086      mov   byte [0xff4f], 0
│           0000:008b      call  word cs:[0x2002]
│           0000:0090      call  word cs:[0x2012]
│           0000:0095      mov   bl, byte [0xc006]
│           0000:0099      dec   bl
│           0000:009b      xor   bh, bh
│           ; DATA XREF from fcn.00000232 @ +0x10f
│           ; DATA XREF from fcn.00000801 @ +0x176
│           0000:009d      add   bx, bx                                ; arg3
│           0000:009f      mov   si, word [bx - 0x5343]                ; arg3
└           0000:00a3      jmp   word cs:[0x2010]
```

### Function 0x000000a8
```asm
; CALL XREF from fcn.00000000 @ 0x54
┌ fcn.000000a8(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:00a8      mov   bl, al
│           0000:00aa      xor   bh, bh
│           0000:00ac      add   bx, bx                                ; arg3
└           0000:00ae      jmp   word cs:[bx - 0x5f51]
```

### Function 0x0000010c
```asm
; CALL XREF from fcn.0000005e @ 0x6a
            ; CALL XREF from fcn.0000042b @ 0x432
┌ fcn.0000010c(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:010c      mov   byte [0xbb14], bl
│           0000:0110      xor   bh, bh
│           0000:0112      add   bx, bx                                ; arg3
└           0000:0114      jmp   word [bx - 0x5eec]
```

### Function 0x000001d5
```asm
; CALL XREF from fcn.0000010c @ +0x8b
┌ fcn.000001d5();
│           0000:01d5      mov   si, 0xa1fd
│           0000:01d8      mov   byte [0xbb19], 0xff                   ; [0xff:1]=138
│           0000:01dd      mov   byte [0xbb1b], 0xff                   ; [0xff:1]=138
│           0000:01e2      mov   cx, 3
│       ┌─> 0000:01e5      push  cx
│       ╎   0000:01e6      mov   byte [0xff1a], 0
│       ╎   0000:01eb      lodsb al, byte [si]
│       ╎   0000:01ec      push  si
│       ╎   0000:01ed      call  fcn.00000a1a                          ; fcn.00000a1a
│      ┌──> 0000:01f0      cmp   byte [0xff1a], 0x19
│      └──< 0000:01f5      jb    0x1f0
│       ╎   0000:01f7      pop   si
│       ╎   0000:01f8      pop   cx
│       └─< 0000:01f9      loop  0x1e5
│           0000:01fb      mov   byte [0xbb19], 0
└           0000:0200      ret
```

### Function 0x00000204
```asm
; CALL XREF from fcn.0000010c @ +0xb2
┌ fcn.00000204(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0204      mov   si, 0xa1fe
│           0000:0207      mov   byte [0xbb19], 0xff                   ; [0xff:1]=138
│           0000:020c      mov   cx, 2
│       ┌─> 0000:020f      push  cx
│       ╎   ; DATA XREF from fcn.00000a1a @ 0xa22
│       ╎   0000:0210      mov   byte [0xff1a], 0
│       ╎   0000:0215      mov   al, byte [si]
│       ╎   0000:0217      dec   si
│       ╎   0000:0218      push  si
│       ╎   0000:0219      call  fcn.00000a1a                          ; fcn.00000a1a
│      ┌──> 0000:021c      cmp   byte [0xff1a], 0x19
│      └──< 0000:0221      jb    0x21c
│       ╎   0000:0223      pop   si
│       ╎   0000:0224      pop   cx
│       └─< 0000:0225      loop  0x20f
│           0000:0227      mov   byte [0xbb19], 0
│           0000:022c      mov   byte [0xbb1b], 0
└           0000:0231      ret
```

### Function 0x00000232
```asm
; CALL XREF from fcn.0000010c @ +0xba
┌ fcn.00000232();
│           0000:0232      xor   bx, bx
│           0000:0234      mov   bl, byte [0x8d]                       ; [0x8d:1]=22
│           0000:0238      cmp   bl, 0xf
│       ┌─< 0000:023b      jb    0x23f
│       │   0000:023d      mov   bl, 0xf
│       └─> 0000:023f      add   bx, bx
│           0000:0241      add   bx, 0xa28c
│           0000:0245      mov   dx, word [bx]
│           0000:0247      mov   cx, dx
│           0000:0249      xor   ax, ax
│           0000:024b      shr   cx, 1
│           0000:024d      cmp   word [0x8e], cx                       ; [0x8e:2]=0x2002
│       ┌─< 0000:0251      jae   0x254
│       │   0000:0253      ret
│       └─> 0000:0254      mov   ax, dx
│           0000:0256      shr   cx, 1
│           0000:0258      sub   ax, cx
│           0000:025a      mov   cx, ax
│           0000:025c      mov   ax, 1
│           0000:025f      cmp   word [0x8e], cx                       ; [0x8e:2]=0x2002
│       ┌─< 0000:0263      jae   0x266
│       │   0000:0265      ret
│       └─> 0000:0266      mov   ax, 2
│           0000:0269      cmp   word [0x8e], dx                       ; [0x8e:2]=0x2002
│       ┌─< 0000:026d      jae   0x270
│       │   0000:026f      ret
│       └─> 0000:0270      xor   bx, bx
│           0000:0272      mov   bl, byte [0xc006]
│           0000:0276      dec   bx
│           0000:0277      add   bx, 0xa2ac
│           0000:027b      mov   ax, 3
│           0000:027e      mov   cl, byte [0x8d]                       ; [0x8d:1]=22
│           0000:0282      cmp   cl, byte [bx]
│       ┌─< 0000:0284      jae   0x287
│       │   0000:0286      ret
│       └─> 0000:0287      mov   byte [0xbb17], 0xff                   ; [0xff:1]=138
│           0000:028c      mov   ax, 4
└           0000:028f      ret
```

### Function 0x00000414
```asm
; CALL XREFS from fcn.0000010c @ +0x8e, +0xa1
┌ fcn.00000414();
│           0000:0414      mov   byte [0xff1a], 0
│       ┌─> 0000:0419      call  fcn.00000b4b                          ; fcn.00000b4b
│       ╎   0000:041c      cmp   byte [0xff1a], 0x8c
│       └─< 0000:0421      jb    0x419
└           0000:0423      ret
```

### Function 0x0000042b
```asm
; CALL XREF from fcn.0000010c @ +0x73
┌ fcn.0000042b(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:042b      push  cs
│           0000:042c      pop   es
│           0000:042d      mov   si, 0xa907
│           0000:0430      mov   al, 6
│           0000:0432      call  word cs:[fcn.0000010c]                ; 0x10c
│           0000:0437      mov   ax, cs
│           0000:0439      mov   es, ax
│           0000:043b      mov   ds, ax
│           0000:043d      mov   di, 0xe000
│           0000:0440      mov   dx, 0xa516
│           0000:0443      call  word cs:[0x11c]
│           0000:0448      mov   bx, 0xd60                             ; "e IndiharGo outside"
│           0000:044b      mov   cx, 0x3637                            ; '76'
│           0000:044e      mov   al, 0xff
│           0000:0450      call  word cs:[0x2000]
│           0000:0455      mov   bx, 0xd60                             ; "e IndiharGo outside"
│           0000:0458      mov   cx, 0x2637                            ; '7&'
│           0000:045b      mov   al, 0xff
│           0000:045d      call  word cs:[0x2000]
│           0000:0462      push  cs
│           0000:0463      pop   es
│           0000:0464      mov   di, 0xbb27
│           0000:0467      mov   al, 0x60                              ; '`'
│           0000:0469      mov   cx, 8
│           0000:046c      rep   stosb byte es:[di], al
│           0000:046e      mov   al, 0xff
│           0000:0470      stosb byte es:[di], al
│           0000:0471      mov   byte [0xbb25], 0
│           0000:0476      mov   si, 0xff6c
│           0000:0479      mov   di, 0xbb27
│           0000:047c      mov   cx, 8
│       ┌─> 0000:047f      lodsb al, byte [si]
│       ╎   0000:0480      or    al, al
│      ┌──< 0000:0482      je    0x48b
│      │╎   0000:0484      inc   byte [0xbb25]
│      │╎   0000:0488      stosb byte es:[di], al
│      │└─< 0000:0489      loop  0x47f
│      └──> 0000:048b      mov   al, byte [0xbb25]                     ; [0xbb25:1]=255
│           0000:048e      mov   byte [0xbb26], al                     ; [0xbb26:1]=255
│           0000:0491      mov   bx, 0x3c                              ; '<'
│           0000:0494      mov   cl, 0x6c                              ; 'l'
│           0000:0496      mov   si, 0xa51c
│           0000:0499      call  word cs:[0x202a]
│           0000:049e      mov   word [0xbb21], 0x60                   ; '`'
│                                                                      ; [0x60:2]=0xff2c
│           0000:04a4      mov   byte [0xbb23], 0x7e                   ; '~'
│                                                                      ; [0x7e:1]=68
│           0000:04a9      mov   word [0xff54], 0x3463                 ; 'c4'
│                                                                      ; [0x3463:2]=0xffff
│           0000:04af      mov   word [0xff6a], 0xa
│           0000:04b5      mov   al, byte [0xe000]                     ; [0xe000:1]=255
│           0000:04b8      cmp   al, 5
│       ┌─< 0000:04ba      jb    0x4be
│       │   0000:04bc      mov   al, 5
│       └─> 0000:04be      xor   ah, ah
│           0000:04c0      mov   cx, ax
│           0000:04c2      xor   al, al
│           0000:04c4      mov   si, 0xe001
│       ┌─< 0000:04c7      jcxz  0x4cc
│       │   0000:04c9      call  fcn.0000052c                          ; fcn.0000052c
│       └─> 0000:04cc      mov   si, 0xe001
│           0000:04cf      mov   al, byte [0xe000]                     ; [0xe000:1]=255
│           0000:04d2      mov   byte [0xff53], al                     ; [0xff53:1]=255
│           0000:04d5      mov   byte [0xff52], 5
│           0000:04da      call  fcn.0000055d                          ; fcn.0000055d
│           0000:04dd      pushf
│           0000:04de      mov   bx, 0xd60                             ; "e IndiharGo outside"
│           0000:04e1      mov   cx, 0x3637                            ; '76'
│           0000:04e4      mov   al, 0xff
│           0000:04e6      call  word cs:[0x2000]
│           0000:04eb      popf
│       ┌─< 0000:04ec      jae   0x4ef
│       │   0000:04ee      ret
│       └─> 0000:04ef      push  cs
│           0000:04f0      pop   es
│           0000:04f1      mov   di, 0xff6c
│           0000:04f4      mov   cx, 8
│           0000:04f7      xor   al, al
│           0000:04f9      rep   stosb byte es:[di], al
│           0000:04fb      cmp   byte [0xbb26], 0
│           0000:0500      stc
│       ┌─< 0000:0501      jne   0x504
│       │   0000:0503      ret
│       └─> 0000:0504      mov   si, 0xbb27
│           0000:0507      mov   di, 0xff6c
│           ; CODE XREF from fcn.0000042b @ 0x518
│       ┌─> 0000:050a      lodsb al, byte [si]
│       ╎   0000:050b      cmp   al, 0xff
│       ╎   0000:050d      clc
│      ┌──< 0000:050e      jne   0x511
│      │╎   0000:0510      ret
│      └──> 0000:0511      cmp   al, 0x60
│       ╎   0000:0513      clc
│      ┌──< 0000:0514      jne   0x517
│      │╎   0000:0516      ret
│      └──> 0000:0517      stosb byte es:[di], al
└       └─< 0000:0518      jmp   0x50a
```

### Function 0x0000052c
```asm
; CALL XREF from fcn.0000042b @ 0x4c9
┌ fcn.0000052c(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:052c      xor   ah, ah
│       ┌─> 0000:052e      push  cx                                    ; arg4
│       ╎   0000:052f      push  si
│       ╎   0000:0530      push  ax                                    ; arg1
│       ╎   0000:0531      call  word cs:[0x301a]
│       ╎   0000:0536      pop   ax
│       ╎   0000:0537      push  ax
│       ╎   0000:0538      mov   al, ah
│       ╎   0000:053a      xor   ah, ah
│       ╎   0000:053c      add   ax, ax
│       ╎   0000:053e      mov   bx, ax
│       ╎   0000:0540      add   ax, ax
│       ╎   0000:0542      add   ax, ax
│       ╎   0000:0544      add   bx, ax
│       ╎   0000:0546      add   bx, word [0xff54]
│       ╎   0000:054a      add   bx, 0x300
│       ╎   0000:054e      call  word cs:[0x301c]
│       ╎   0000:0553      pop   ax
│       ╎   0000:0554      inc   al
│       ╎   0000:0556      inc   ah
│       ╎   0000:0558      pop   si
│       ╎   0000:0559      pop   cx
│       └─< 0000:055a      loop  0x52e
└           0000:055c      ret
```

### Function 0x0000055d
```asm
; CALL XREF from fcn.0000042b @ 0x4da
┌ fcn.0000055d();
│           0000:055d      mov   byte [0xff74], 0xff                   ; [0xff:1]=138
│           0000:0562      mov   byte [0xff29], 0
│           0000:0567      mov   byte [0xff29], 0
│           0000:056c      mov   byte [0xff1d], 0
│           0000:0571      mov   byte [0xff1e], 0
│           0000:0576      mov   byte [0xff56], 0
│           0000:057b      mov   byte [0xbb24], 0
│           0000:0580      xor   bl, bl
│           0000:0582      test  byte [0xff53], 0xff
│       ┌─< 0000:0587      je    0x58e
│       │   0000:0589      call  word cs:[0x6014]
│       └─> 0000:058e      call  fcn.00000801                          ; fcn.00000801
│           0000:0591      xor   al, al
│           0000:0593      call  0x794
│           ; CODE XREF from fcn.0000055d @ 0x624
│       ┌─> 0000:0596      call  word cs:[0x6016]
│       ╎   0000:059b      mov   byte [0xff1a], 0
│       ╎   0000:05a0      test  byte [0xff1e], 0xff
│       ╎   0000:05a5      stc
│      ┌──< 0000:05a6      jne   0x5b2
│      │╎   0000:05a8      test  word cs:[0xff18], 1
│     ┌───< 0000:05af      je    0x5bd
│     ││╎   0000:05b1      clc
│     │└──> 0000:05b2      mov   byte [0xff74], 0
│     │ ╎   0000:05b7      mov   byte [0xff1e], 0
│     │ ╎   0000:05bc      ret
│     └───> 0000:05bd      test  byte [0xff1d], 0xff
│      ┌──< 0000:05c2      je    0x627
│      │╎   0000:05c4      push  si
│      │╎   0000:05c5      xor   bh, bh
│      │╎   0000:05c7      mov   bl, byte [0xff56]
│      │╎   0000:05cb      add   bl, byte [0xbb24]
│      │╎   0000:05cf      add   bx, bx
│      │╎   0000:05d1      mov   si, word [bx + si]
│      │╎   0000:05d3      push  cs
│      │╎   0000:05d4      pop   es
│      │╎   0000:05d5      mov   di, 0xbb27
│      │╎   0000:05d8      mov   al, 0x60                              ; '`'
│      │╎   0000:05da      mov   cx, 8
│      │╎   0000:05dd      rep   stosb byte es:[di], al
│      │╎   0000:05df      mov   al, 0xff
│      │╎   0000:05e1      stosb byte es:[di], al
│      │╎   0000:05e2      mov   byte [0xbb25], 0
│      │╎   0000:05e7      mov   di, 0xbb27
│      │╎   0000:05ea      mov   cx, 8
│     ┌───> 0000:05ed      lodsb al, byte [si]
│     ╎│╎   0000:05ee      or    al, al
│    ┌────< 0000:05f0      je    0x5f9
│    │╎│╎   0000:05f2      inc   byte [0xbb25]
│    │╎│╎   0000:05f6      stosb byte es:[di], al
│    │└───< 0000:05f7      loop  0x5ed
│    └────> 0000:05f9      mov   al, byte [0xbb25]                     ; [0xbb25:1]=255
│      │╎   0000:05fc      mov   byte [0xbb26], al                     ; [0xbb26:1]=255
│      │╎   0000:05ff      pop   si
│      │╎   0000:0600      mov   byte [0xff1d], 0
│      │╎   ; DATA XREF from fcn.00000b4b @ +0xb6
│      │╎   0000:0605      mov   ax, word [0xbb21]                     ; [0xbb21:2]=0xffff
│      │╎   0000:0608      shr   ax, 1
│      │╎   0000:060a      shr   ax, 1
│      │╎   0000:060c      mov   bh, al
│      │╎   0000:060e      mov   bl, byte [0xbb23]
│      │╎   0000:0612      mov   cx, 0x1010
│      │╎   0000:0615      xor   al, al
│      │╎   0000:0617      call  word cs:[0x2000]
│      │╎   0000:061c      call  fcn.00000801                          ; fcn.00000801
│      │╎   0000:061f      xor   al, al
│      │╎   0000:0621      call  0x794
│      │└─< 0000:0624      jmp   0x596
│      └──> 0000:0627      mov   cx, 0xa592
│           0000:062a      push  cx
│           0000:062b      test  byte [0xff29], 0xff
│       ┌─< 0000:0630      je    0x663
│       │   0000:0632      mov   al, byte [0xff29]                     ; [0xff29:1]=255
│       │   0000:0635      mov   byte [0xff29], 0
│       │   0000:063a      cmp   al, 0xd
│      ┌──< 0000:063c      jne   0x63f
│      ││   0000:063e      ret
│      └──> 0000:063f      cmp   al, 8
│      ┌──< 0000:0641      jne   0x646
│     ┌───< 0000:0643      jmp   0x82b
│     │└──> 0000:0646      xor   bx, bx
│     │ │   0000:0648      mov   bl, byte [0xbb25]
│     │ │   0000:064c      cmp   byte [bx - 0x44d9], 0x60
│     │┌──< 0000:0651      jne   0x657
│     │││   0000:0653      inc   byte [0xbb26]
│     │└──> 0000:0657      mov   byte [bx - 0x44d9], al
│     │ │   0000:065b      call  fcn.00000801                          ; fcn.00000801
│     │ │   0000:065e      mov   al, 1
│     │┌──< 0000:0660      jmp   0x794
│     ││└─> 0000:0663      int   0x61
│     ││    0000:0665      test  al, 8
│     ││┌─< 0000:0667      je    0x67a
│     │││   0000:0669      mov   al, 1
│     │││   0000:066b      call  0x794
│    ┌────> 0000:066e      int   0x61
│    ╎│││   0000:0670      test  al, 8
│    └────< 0000:0672      jne   0x66e
│     │││   0000:0674      mov   byte [0xff29], 0
│     │││   0000:0679      ret
│     ││└─> 0000:067a      test  al, 4
│     ││┌─< 0000:067c      je    0x68f
│     │││   0000:067e      mov   al, 0xff
│     │││   0000:0680      call  0x794
│    ┌────> 0000:0683      int   0x61
│    ╎│││   0000:0685      test  al, 4
│    └────< 0000:0687      jne   0x683
│     │││   0000:0689      mov   byte [0xff29], 0
│     │││   0000:068e      ret
│     ││└─> 0000:068f      test  byte [0xff53], 0xff
│     ││┌─< 0000:0694      jne   0x697
│     │││   0000:0696      ret
│     ││└─> 0000:0697      and   al, 3
│     ││    0000:0699      cmp   al, 1
│     ││┌─< 0000:069b      jne   0x70d
│     │││   0000:069d      test  byte [0xbb24], 0xff
│    ┌────< 0000:06a2      je    0x6b2
│    ││││   0000:06a4      mov   bl, byte [0xbb24]
│    ││││   0000:06a8      call  word cs:[0x6018]
│    ││││   0000:06ad      dec   byte [0xbb24]
│    ││││   0000:06b1      ret
│    └────> 0000:06b2      test  byte [0xff56], 0xff
│    ┌────< 0000:06b7      jne   0x6ba
│    ││││   0000:06b9      ret
│    └────> 0000:06ba      push  di
│     │││   0000:06bb      push  si
│     │││   0000:06bc      dec   byte [0xff56]
│     │││   0000:06c0      mov   al, byte [0xff56]                     ; [0xff56:1]=255
│     │││   0000:06c3      add   al, byte [0xbb24]
│     │││   0000:06c7      call  word cs:[0x301a]
│     │││   0000:06cc      mov   cx, 0xa
│    ┌────> 0000:06cf      push  cx
│    ╎│││   0000:06d0      mov   bx, word [0xff54]
│    ╎│││   0000:06d4      add   bx, 0x301
│    ╎│││   0000:06d8      mov   al, cl
│    ╎│││   0000:06da      dec   al
│    ╎│││   0000:06dc      mov   cl, byte [0xff52]
│    ╎│││   0000:06e0      add   cl, cl
│    ╎│││   0000:06e2      mov   dl, cl
│    ╎│││   0000:06e4      add   cl, cl
│    ╎│││   0000:06e6      add   cl, cl
│    ╎│││   0000:06e8      add   cl, dl
│    ╎│││   0000:06ea      sub   cl, 2
│    ╎│││   0000:06ed      mov   ch, byte [0xff6a]
│    ╎│││   0000:06f1      call  word cs:[0x301e]
│   ┌─────> 0000:06f6      call  word cs:[0x6016]
│   ╎╎│││   0000:06fb      cmp   byte [0xff1a], 4
│   └─────< 0000:0700      jb    0x6f6
│    ╎│││   0000:0702      mov   byte [0xff1a], 0
│    ╎│││   0000:0707      pop   cx
│    └────< 0000:0708      loop  0x6cf
│     │││   0000:070a      pop   si
│     │││   0000:070b      pop   di
│     │││   0000:070c      ret
│     ││└─> 0000:070d      cmp   al, 2
│     ││┌─< 0000:070f      je    0x712
│     │││   0000:0711      ret
│     ││└─> 0000:0712      mov   al, byte [0xbb24]                     ; [0xbb24:1]=255
│     ││    0000:0715      add   al, byte [0xff56]
│     ││    0000:0719      inc   al
│     ││    0000:071b      mov   ah, byte [0xff53]
│     ││    0000:071f      dec   ah
│     ││    0000:0721      cmp   ah, al
│     ││┌─< 0000:0723      jae   0x726
│     │││   0000:0725      ret
│     ││└─> 0000:0726      mov   al, byte [0xff52]                     ; [0xff52:1]=255
│     ││    0000:0729      dec   al
│     ││    0000:072b      cmp   byte [0xbb24], al
│     ││┌─< 0000:072f      jae   0x73f
│     │││   0000:0731      mov   bl, byte [0xbb24]
│     │││   0000:0735      call  word cs:[0x601a]
│     │││   0000:073a      inc   byte [0xbb24]
│     │││   0000:073e      ret
│     ││└─> 0000:073f      push  di
│     ││    0000:0740      push  si
│     ││    0000:0741      inc   byte [0xff56]
│     ││    0000:0745      mov   al, byte [0xff56]                     ; [0xff56:1]=255
│     ││    0000:0748      add   al, byte [0xbb24]
│     ││    0000:074c      call  word cs:[0x301a]
│     ││    0000:0751      mov   cx, 0xa
│     ││┌─> 0000:0754      push  cx
│     ││╎   0000:0755      mov   bx, word [0xff54]
│     ││╎   0000:0759      add   bx, 0x301
│     ││╎   0000:075d      mov   al, cl
│     ││╎   0000:075f      neg   al
│     ││╎   0000:0761      add   al, 0xa
│     ││╎   0000:0763      mov   cl, byte [0xff52]
│     ││╎   0000:0767      add   cl, cl
│     ││╎   0000:0769      mov   dl, cl
│     ││╎   0000:076b      add   cl, cl
│     ││╎   0000:076d      add   cl, cl
│     ││╎   0000:076f      add   cl, dl
│     ││╎   0000:0771      sub   cl, 2
│     ││╎   0000:0774      mov   ch, byte [0xff6a]
│     ││╎   0000:0778      call  word cs:[0x3020]
│    ┌────> 0000:077d      call  word cs:[0x6016]
│    ╎││╎   0000:0782      cmp   byte [0xff1a], 4
│    └────< 0000:0787      jb    0x77d
│     ││╎   0000:0789      mov   byte [0xff1a], 0
│     ││╎   0000:078e      pop   cx
│     ││└─< 0000:078f      loop  0x754
│     ││    0000:0791      pop   si
│     ││    0000:0792      pop   di
│     ││    0000:0793      ret
│     ││    ; XREFS: CALL 0x00000593  CALL 0x00000621  CODE 0x00000660  
│     ││    ; XREFS: CALL 0x0000066b  CALL 0x00000680  CALL 0x0000085e  
│     │└──> 0000:0794      push  si
│     │     0000:0795      push  ax
│     │     0000:0796      mov   ax, word [0xbb21]                     ; [0xbb21:2]=0xffff
│     │     0000:0799      shr   ax, 1
│     │     0000:079b      shr   ax, 1
│     │     0000:079d      mov   bh, al
│     │     0000:079f      mov   al, byte [0xbb25]                     ; [0xbb25:1]=255
│     │     0000:07a2      add   al, al
│     │     0000:07a4      add   bh, al
│     │     0000:07a6      mov   bl, byte [0xbb23]
│     │     0000:07aa      add   bl, 8
│     │     0000:07ad      mov   cx, 0x208
│     │     0000:07b0      xor   al, al
│     │     0000:07b2      call  word cs:[0x2000]
│     │     0000:07b7      pop   ax
│     │     0000:07b8      add   byte [0xbb25], al
│     │     0000:07bc      test  byte [0xbb25], 0x80
│     │ ┌─< 0000:07c1      je    0x7c8
│     │ │   0000:07c3      mov   byte [0xbb25], 0
│     │ └─> 0000:07c8      cmp   byte [0xbb25], 8
│     │ ┌─< 0000:07cd      jb    0x7d3
│     │ │   0000:07cf      dec   byte [0xbb25]
│     │ └─> 0000:07d3      mov   al, byte [0xbb26]                     ; [0xbb26:1]=255
│     │     0000:07d6      cmp   byte [0xbb25], al
│     │ ┌─< 0000:07da      jb    0x7df
│     │ │   0000:07dc      mov   byte [0xbb25], al                     ; [0xbb25:1]=255
│     │ └─> 0000:07df      mov   bx, word [0xbb21]
│     │     0000:07e3      mov   cl, byte [0xbb23]
│     │     0000:07e7      xor   ax, ax
│     │     0000:07e9      mov   al, byte [0xbb25]                     ; [0xbb25:1]=255
│     │     0000:07ec      add   ax, ax
│     │     0000:07ee      add   ax, ax
│     │     0000:07f0      add   ax, ax
│     │     0000:07f2      add   bx, ax
│     │     0000:07f4      add   cl, 8
│     │     0000:07f7      mov   ax, 0x67f
│     │     0000:07fa      call  word cs:[0x2022]
│     │     0000:07ff      pop   si
│     │     0000:0800      ret
      │     ; CALL XREFS from fcn.0000055d @ 0x58e, 0x61c, 0x65b, 0x861
..
│     │     ; CODE XREF from fcn.0000055d @ 0x643
│     └───> 0000:082b      push  si
│           0000:082c      mov   bl, byte [0xbb25]
│           0000:0830      or    bl, bl
│       ┌─< 0000:0832      jne   0x836
│       │   0000:0834      inc   bl
│       └─> 0000:0836      xor   bh, bh
│           0000:0838      push  cs
│           0000:0839      pop   es
│           0000:083a      mov   si, 0xbb27
│           0000:083d      add   si, bx
│           0000:083f      mov   di, si
│           0000:0841      dec   di
│           0000:0842      mov   al, 8
│           0000:0844      sub   al, bl
│           0000:0846      mov   cl, al
│           0000:0848      xor   ch, ch
│           0000:084a      rep   movsb byte es:[di], byte ptr [si]
│           0000:084c      test  byte [0xbb26], 0xff
│       ┌─< 0000:0851      je    0x857
│       │   0000:0853      dec   byte [0xbb26]
│       └─> 0000:0857      mov   byte [0xbb2e], 0x60                   ; '`'
│                                                                      ; [0x60:1]=44
│           0000:085c      mov   al, 0xff
│           0000:085e      call  0x794
│           0000:0861      call  fcn.00000801                          ; fcn.00000801
│           0000:0864      pop   si
└           0000:0865      ret
```

### Function 0x00000801
```asm
; CALL XREFS from fcn.0000055d @ 0x58e, 0x61c, 0x65b, 0x861
┌ fcn.00000801();
│           0000:0801      push  si
│           0000:0802      mov   ax, word [0xbb21]                     ; [0xbb21:2]=0xffff
│           0000:0805      shr   ax, 1
│           0000:0807      shr   ax, 1
│           0000:0809      mov   bh, al
│           0000:080b      mov   bl, byte [0xbb23]
│           0000:080f      mov   cx, 0x1008
│           0000:0812      xor   al, al
│           0000:0814      call  word cs:[0x2000]
│           0000:0819      mov   bx, word [0xbb21]
│           0000:081d      mov   cl, byte [0xbb23]
│           0000:0821      mov   si, 0xbb27
│           0000:0824      call  word cs:[0x202a]
│           0000:0829      pop   si
└           0000:082a      ret
```

### Function 0x00000987
```asm
; XREFS: CALL 0x000000cf  CALL 0x00000120  CALL 0x0000012a  
            ; XREFS: CALL 0x0000015b  CALL 0x0000017c  CALL 0x00000931  
┌ fcn.00000987();
│           0000:0987      mov   bx, 0x2717
│           0000:098a      mov   cx, 0x1d41
│           0000:098d      xor   al, al
└           0000:098f      jmp   word cs:[0x2000]
```

### Function 0x00000994
```asm
; CALL XREF from fcn.00000000 @ 0x13
            ; CALL XREF from fcn.00000000 @ +0x34
┌ fcn.00000994();
│           0000:0994      mov   si, 0xa9b6
│           0000:0997      mov   bx, word [0xbb12]
│           0000:099b      mov   cx, 8
│       ┌─> 0000:099e      push  cx
│       ╎   0000:099f      mov   cx, 0xc
│      ┌──> 0000:09a2      push  cx
│      ╎╎   0000:09a3      push  bx
│      ╎╎   0000:09a4      lodsb al, byte [si]
│      ╎╎   0000:09a5      call  word cs:[0x3016]
│      ╎╎   0000:09aa      pop   bx
│      ╎╎   0000:09ab      inc   bh
│      ╎╎   0000:09ad      pop   cx
│      └──< 0000:09ae      loop  0x9a2
│       ╎   0000:09b0      sub   bh, 0xc
│       ╎   0000:09b3      add   bl, 8
│       ╎   0000:09b6      pop   cx
│       └─< 0000:09b7      loop  0x99e
└           0000:09b9      ret
```

### Function 0x00000a1a
```asm
; CALL XREF from fcn.000001d5 @ 0x1ed
            ; CALL XREF from fcn.00000204 @ 0x219
            ; CALL XREF from fcn.00000b4b @ 0xbb1
┌ fcn.00000a1a(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0a1a      mov   cl, 0x20
│           0000:0a1c      mul   cl
│           0000:0a1e      mov   bx, word [0xbb12]
│           0000:0a22      add   bx, 0x210
│           0000:0a26      mov   si, ax                                ; arg1
│           0000:0a28      add   si, 0xaa47
│           0000:0a2c      mov   cx, 4
│       ┌─> 0000:0a2f      push  cx
│       ╎   0000:0a30      mov   cx, 8
│      ┌──> 0000:0a33      push  cx
│      ╎╎   0000:0a34      push  bx
│      ╎╎   0000:0a35      lodsb al, byte [si]
│      ╎╎   0000:0a36      call  word cs:[0x3016]
│      ╎╎   0000:0a3b      pop   bx
│      ╎╎   0000:0a3c      inc   bh
│      ╎╎   0000:0a3e      pop   cx
│      └──< 0000:0a3f      loop  0xa33
│       ╎   0000:0a41      sub   bh, 8
│       ╎   0000:0a44      add   bl, 8
│       ╎   0000:0a47      pop   cx
│       └─< 0000:0a48      loop  0xa2f
└           0000:0a4a      ret
```

### Function 0x00000b4b
```asm
; CALL XREF from fcn.00000414 @ 0x419
┌ fcn.00000b4b(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0b4b      cmp   word [0xff50], 2
│       ┌─< 0000:0b50      jae   0xb53
│       │   0000:0b52      ret
│       └─> 0000:0b53      mov   word [0xff50], 0
│           0000:0b59      test  byte [0xbb18], 0xff
│       ┌─< 0000:0b5e      je    0xbbd
│       │   0000:0b60      test  byte [0xbb1a], 0xff
│      ┌──< 0000:0b65      je    0xb8d
│      ││   0000:0b67      inc   byte [0xbb1c]
│      ││   0000:0b6b      and   byte [0xbb1c], 0xf                    ; [0xf:1]=18
│      ││   0000:0b70      cmp   byte [0xbb1c], 1
│     ┌───< 0000:0b75      jne   0xbbd
│     │││   0000:0b77      mov   byte [0xbb18], 0
│     │││   0000:0b7c      mov   byte [0xbb1a], 0
│     │││   0000:0b81      mov   byte [0xbb1c], 0
│     │││   0000:0b86      mov   byte [0xbb1d], 0
│    ┌────< 0000:0b8b      jmp   0xbbd
│    ││└──> 0000:0b8d      inc   byte [0xbb20]
│    ││ │   0000:0b91      cmp   byte [0xbb20], 0x14
│    ││┌──< 0000:0b96      jae   0xb99
│    ││││   0000:0b98      ret
│    ││└──> 0000:0b99      mov   byte [0xbb20], 0
│    ││ │   0000:0b9e      inc   byte [0xbb1d]
│    ││ │   0000:0ba2      mov   bl, byte [0xbb1d]
│    ││ │   0000:0ba6      dec   bl
│    ││ │   0000:0ba8      and   bl, 7
│    ││ │   0000:0bab      xor   bh, bh
│    ││ │   0000:0bad      mov   al, byte [bx - 0x5401]
│    ││ │   0000:0bb1      call  fcn.00000a1a                          ; fcn.00000a1a
│    ││ │   0000:0bb4      inc   byte [0xbb1c]
│    ││ │   ; DATA XREF from fcn.00000232 @ +0x69
│    ││ │   0000:0bb8      and   byte [0xbb1c], 0xf                    ; [0xf:1]=18
│    ││ │   ; CODE XREF from fcn.00000b4b @ 0xb8b
│    └└─└─> 0000:0bbd      test  byte [0xbb19], 0xff
│       ┌─< 0000:0bc2      je    0xbc5
│       │   0000:0bc4      ret
│       └─> 0000:0bc5      inc   byte [0xbb1f]
│           0000:0bc9      cmp   byte [0xbb1f], 0x14
│       ┌─< 0000:0bce      jae   0xbd1
│       │   0000:0bd0      ret
│       └─> 0000:0bd1      mov   byte [0xbb1f], 0
│           0000:0bd6      mov   bl, byte [0xbb1e]
│           0000:0bda      not   byte [0xbb1e]
│           0000:0bde      and   bl, 1
│           0000:0be1      xor   bh, bh
│           0000:0be3      mov   di, 0xabfb
│           0000:0be6      test  byte [0xbb1b], 0xff
│       ┌─< 0000:0beb      je    0xbf0
│       │   0000:0bed      mov   di, 0xabfd
│       └─> 0000:0bf0      mov   al, byte [bx + di]                    ; arg3
│           0000:0bf2      mov   bx, word [0xbb12]
│           0000:0bf6      add   bx, 0x718
└           0000:0bfa      jmp   word cs:[0x3016]
```

### Function 0x00000c0b
```asm
; CALL XREF from fcn.00000000 @ +0x44
┌ fcn.00000c0b(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0c0b      mov   si, 0xad9d
│           0000:0c0e      mov   bl, byte [0xc006]
│           0000:0c12      dec   bl
│           0000:0c14      xor   bh, bh
│           0000:0c16      add   bx, bx                                ; arg3
└           0000:0c18      jmp   word [bx - 0x53e8]
```

## Cross-References (callers)
```json
  0x0000005e:
[{"from":43,"to":94,"type":"CALL"}]
  0x000000a8:
[{"from":84,"to":168,"type":"CALL"}]
  0x0000010c:
[{"from":106,"to":268,"type":"CALL"},{"from":1074,"to":268,"type":"CALL"}]
  0x000001d5:
[{"from":407,"to":469,"type":"CALL"}]
  0x00000204:
[{"from":446,"to":516,"type":"CALL"}]
  0x00000232:
[{"from":454,"to":562,"type":"CALL"}]
  0x00000414:
[{"from":410,"to":1044,"type":"CALL"},{"from":429,"to":1044,"type":"CALL"}]
  0x0000042b:
[{"from":383,"to":1067,"type":"CALL"}]
  0x0000052c:
[{"from":1225,"to":1324,"type":"CALL"}]
  0x0000055d:
[{"from":1242,"to":1373,"type":"CALL"}]
  0x00000801:
[{"from":1422,"to":2049,"type":"CALL"},{"from":1564,"to":2049,"type":"CALL"},{"from":1627,"to":2049,"type":"CALL"},{"from":2145,"to":2049,"type":"CALL"}]
  0x00000987:
[{"from":207,"to":2439,"type":"CALL"},{"from":288,"to":2439,"type":"CALL"},{"from":298,"to":2439,"type":"CALL"},{"from":347,"to":2439,"type":"CALL"},{"from":380,"to":2439,"type":"CALL"},{"from":2353,"to":2439,"type":"CALL"}]
  0x00000994:
[{"from":19,"to":2452,"type":"CALL"},{"from":52,"to":2452,"type":"CALL"}]
  0x00000a1a:
[{"from":493,"to":2586,"type":"CALL"},{"from":537,"to":2586,"type":"CALL"},{"from":2993,"to":2586,"type":"CALL"}]
  0x00000b4b:
[{"from":1049,"to":2891,"type":"CALL"}]
  0x00000c0b:
[{"from":68,"to":3083,"type":"CALL"}]
```