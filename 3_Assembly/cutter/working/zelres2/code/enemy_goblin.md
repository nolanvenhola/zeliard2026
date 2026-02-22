# ENEMY_GOBLIN - Analysis

**Source:** `chunk_13.bin`  
**Size:** 3.3 KB  
**Functions:** 8  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    8 177          fcn.00000000
0x000000b1    1 11           fcn.000000b1
0x00000623    1 13           fcn.00000623
0x00000630   13 119          fcn.00000630
0x000006a7    5 37           fcn.000006a7
0x0000072c    5 41           fcn.0000072c
0x00000755    5 34           fcn.00000755
0x00000817    5 28           fcn.00000817
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                        
--------------------------------------------------------------------------------------------------------------------------------
  0 0x00000124 0x00000124   7    8         ibm037 s}tnvY7
  1 0x00000234 0x00000234   4    4         ascii   ZYA
  2 0x000002cc 0x000002cc   4    4         ascii  0XZ.
  3 0x0000046b 0x0000046b   4    4         ascii  0XZ.
  4 0x000006cc 0x000006cc  14   15         ascii  lmnopqrstuvwxy
  5 0x000006e1 0x000006e1  11   12         ascii  \az{|}\b\t\n\v\f\r
  6 0x000006fa 0x000006fa   4    5         ibm037 bcde
  7 0x00000706 0x00000706   4    4         ibm037 fghi
  8 0x0000070a 0x0000070a   8    8         ascii   !"#$%&'
  9 0x00000712 0x00000712  27   28         ibm037 «»ðýþ±°jklmnopqrªºæ¸Æ¤µ~st6
 10 0x0000077e 0x0000077e   7    8         ascii  \a\b\t\n\v\f\r
 11 0x00000797 0x00000797   8    9         ascii   !"#$%&'
 12 0x000007a6 0x000007a6   7    8         ascii  \a\b\t\n\v\f\r
 13 0x000007b7 0x000007b7   4    5         ascii  *+,\e
 14 0x000007bf 0x000007bf   8    9         ascii   -.#$%&'
 15 0x000007ce 0x000007ce   8    9         ascii  \a\b\tABCDE
 16 0x000007d9 0x000007d9   6    7         ascii  FMNIJ9
 17 0x000007e2 0x000007e2  13   14         ascii  OPQL= !"RS>?@
 18 0x000007f6 0x000007f6   8    9         ascii  \a\b\tWXYZ[
 19 0x00000800 0x00000800   6    7         ascii  \]^_`a
 20 0x00000809 0x00000809  14   14         ascii  bcdefg !"hi>jk
 21 0x0000082e 0x0000082e  13   14         ibm037 Ê9;ÔUäy,yly]y
 22 0x0000083d 0x0000083d   8    9         ibm037 ]yly,yäy
 23 0x0000084e 0x0000084e   7    8         ascii  \a\b\t\n\v\f\r
 24 0x00000867 0x00000867   8    9         ascii   !"#$%&'
 25 0x00000876 0x00000876   7    8         ascii  \a\b\t\n\v\f\r
 26 0x0000088f 0x0000088f   8    9         ascii   !"#123'
 27 0x0000089e 0x0000089e   7    8         ascii  \a\b\t\n\v45
 28 0x000008ab 0x000008ab   4    5         ascii  6789
 29 0x000008b2 0x000008b2  13   14         ascii  /:;<= !"#$>?@
 30 0x000008c6 0x000008c6   8    9         ascii  \a\b\tABCDE
 31 0x000008d1 0x000008d1   6    7         ascii  FGHIJ9
 32 0x000008da 0x000008da  13   14         ascii  /0KL= !"#$>?@
 33 0x000008e9 0x000008e9   8    9         ascii  BANK.GRP
 34 0x000008f5 0x000008f5   9   10         ascii  \bThe Bank
 35 0x0000090f 0x0000090f  11   12         ascii  \bGo outside
 36 0x0000091b 0x0000091b  14   15         ascii  Exchange almas
 37 0x0000092a 0x0000092a  13   14         ascii  Deposit money
 38 0x00000938 0x00000938  14   15         ascii  Withdraw money
 39 0x00000947 0x00000947  13   14         ascii  Check balance
 40 0x00000955 0x00000955  12   13         ascii  GOLD CARRIED
 41 0x00000964 0x00000964  12   13         ascii   DEPOSIT AMT
 42 0x00000971 0x00000971  12   13         ascii  GOLD IN BANK
 43 0x00000980 0x00000980  12   13         ascii  WITHDRAW AMT
 44 0x00000991 0x00000991  15   15         ascii  Oh, excuse me. 
 45 0x000009a2 0x000009a2  16   16         ascii  Can I help you?/
 46 0x000009b6 0x000009b6  37   37         ascii  \fSir, you aren\t carrying any almas. 
 47 0x000009dd 0x000009dd  22   22         ascii  \fOur exchange rate is 
 48 0x000009f5 0x000009f5  10   10         ascii  &almas to 
 49 0x00000a01 0x00000a01  31   31         ascii  &golds./Will that be all right?
 50 0x00000a21 0x00000a21  41   41         ascii  \fI\m sorry, you do not have enough almas.
 51 0x00000a4c 0x00000a4c  56   56         ascii  \fI don\t understand. Please state your business clearly.
 52 0x00000a86 0x00000a86  29   29         ascii  \fWill there be anything else?
 53 0x00000aa5 0x00000aa5  39   39         ascii  \fYou aren\t carrying any gold, are you?
 54 0x00000ace 0x00000ace  41   41         ascii  \fHow much gold would you like to deposit?
 55 0x00000af8 0x00000af8  17   17         ascii  \rYour balance is 
 56 0x00000b0b 0x00000b0b   7    7         ascii  &golds.
 57 0x00000b14 0x00000b14  30   30         ascii  \fThank you. Please come again.
 58 0x00000b36 0x00000b36  76   76         ascii  \fI\m afraid we have a problem here. You don\t have any gold in your account.
 59 0x00000b84 0x00000b84  35   35         ascii  \fHow much do you wish to withdraw?/
 60 0x00000ba8 0x00000ba8  19   19         ascii  Here you are, sir. 
 61 0x00000bbd 0x00000bbd   7    7         ascii  &golds.
 62 0x00000bc5 0x00000bc5  28   28         ascii  Here you are, sir. One gold.
 63 0x00000be2 0x00000be2  23   23         ascii  \rYour account is empty.
 64 0x00000bfb 0x00000bfb  23   23         ascii  \fYour account is empty.
 65 0x00000c14 0x00000c14  10   10         ascii  \fYou have 
 66 0x00000c20 0x00000c20  23   23         ascii  &golds in your account.
 67 0x00000c39 0x00000c39  35   35         ascii  \fYou have one gold in your account.
 68 0x00000c5e 0x00000c5e  62   62         ascii  \fUnless you have business, don\t come in here. I\m a busy man.
 69 0x00000ca1 0x00000ca1  50   50         ascii  \fNext time please deposit a large sum in savings. 
 70 0x00000cd8 0x00000cd8  69   69         ascii  \fThank you. Come again to make a deposit for a large sum in savings.
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0000      cmp   byte [di], cl
│           ; DATA XREFS from fcn.000000b1 @ +0x23b, +0x3da
│           ; DATA XREF from fcn.00000630 @ 0x66c
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           ; DATA XREF from fcn.00000630 @ 0x64a
│           0000:0004      add   al, 0xa0
│           0000:0006      sub   byte [bx + 0x68e], ah                 ; arg3
│           0000:000a      sub   al, 0xff
│           ; DATA XREFS from fcn.000006a7 @ 0x6b1, 0x6b4, 0x6c2
│           0000:000c      mov   di, 0x8000
│           0000:000f      mov   si, 0xa8e3
│           0000:0012      mov   al, 2
│           0000:0014      call  word cs:[0x10c]
│           0000:0019      push  ds
│           0000:001a      mov   ds, word cs:[0xff2c]
│           0000:001f      mov   si, 0x8000
│           0000:0022      mov   cx, 0x100
│           ; DATA XREF from str.fghi @ +0x8
│           ; DATA XREF from fcn.00000755 @ +0x46
│           ; DATA XREF from fcn.00000817 @ +0x54
│           0000:0025      call  word cs:[0x2044]
│           0000:002a      pop   ds
│           0000:002b      mov   byte [0xff4e], 0
│           ; DATA XREFS from fcn.000000b1 @ +0xe1, +0xff
│           0000:0030      mov   byte [0xff4f], 0
│           ; DATA XREF from fcn.00000817 @ +0x8c
│           0000:0035      mov   byte [0xad1e], 0
│           0000:003a      call  word cs:[0x2002]
│           0000:003f      call  word cs:[0x2012]
│           0000:0044      mov   si, 0xa8ee
│           0000:0047      call  word cs:[0x2010]
│           0000:004c      call  fcn.000006a7                          ; fcn.000006a7
│           0000:004f      mov   bx, 0xd60                             ; 3424
│           0000:0052      mov   cx, 0x3637                            ; '76'
│           ; DATA XREF from fcn.00000817 @ +0x447
│           0000:0055      mov   al, 0xff
│           ; DATA XREF from fcn.00000817 @ +0x26f
│           0000:0057      call  word cs:[0x2000]
│           0000:005c      mov   byte [0xad21], 0xff                   ; [0xff:1]=14
│           0000:0061      mov   word [0xad1f], 0xa773                 ; [0xa773:2]=0xffff
│           0000:0067      mov   word [0xff4c], 0xa989                 ; [0xa989:2]=0xffff
│           0000:006d      call  word cs:[0x6004]
│           ; DATA XREF from fcn.000000b1 @ +0x1c
│           0000:0072      mov   cx, 5
│       ┌─> 0000:0075      push  cx
│       ╎   0000:0076      mov   byte [0xff1a], 0
│       ╎   0000:007b      mov   word [0xff4c], 0xa98b                 ; [0xa98b:2]=0xffff
│       ╎   0000:0081      call  word cs:[0x6004]
│       ╎   ; DATA XREFS from fcn.000000b1 @ +0x1a2, +0x1f7
│      ┌──> 0000:0086      call  fcn.0000072c                          ; fcn.0000072c
│      ╎╎   ; XREFS: DATA 0x0000037f  DATA 0x00000395  DATA 0x000003ac  
│      ╎╎   ; XREFS: DATA 0x000003e8  DATA 0x0000043d  DATA 0x00000454  
│      ╎╎   ; XREFS: DATA 0x00000527  DATA 0x00000551  DATA 0x00000568  
│      ╎╎   ; XREFS: DATA 0x000005a7  DATA 0x000005bf  DATA 0x000005d6  
│      ╎╎   0000:0089      cmp   byte [0xff1a], 0x3f
│      └──< 0000:008e      jb    0x86
│       ╎   0000:0090      pop   cx
│       └─< 0000:0091      loop  0x75
│           ; DATA XREF from fcn.00000817 @ +0x1f
│           0000:0093      mov   byte [0xad21], 0
│           0000:0098      mov   word [0xff4c], 0xa98d                 ; [0xa98d:2]=0xffff
│           ; CODE XREF from fcn.00000000 @ 0xaa
│       ┌─> 0000:009e      call  word cs:[0x6004]
│       ╎   0000:00a3      cmp   al, 0xff
│      ┌──< 0000:00a5      je    0xac
│      │╎   0000:00a7      call  fcn.000000b1                          ; fcn.000000b1
│      │└─< 0000:00aa      jmp   0x9e
└      └──> 0000:00ac      jmp   word cs:[0x2040]
```

### Function 0x000000b1
```asm
; CALL XREF from fcn.00000000 @ 0xa7
┌ fcn.000000b1(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:00b1      mov   bl, al
│           0000:00b3      xor   bh, bh
│           0000:00b5      add   bx, bx                                ; arg3
└           0000:00b7      jmp   word cs:[bx - 0x5f48]
```

### Function 0x00000623
```asm
; XREFS: CALL 0x000000d6  CALL 0x00000129  CALL 0x0000014f  
            ; XREFS: CALL 0x00000201  CALL 0x0000023f  CALL 0x000003d4  
            ; XREFS: CALL 0x00000599  
┌ fcn.00000623();
│           0000:0623      mov   bx, 0x2717
│           0000:0626      mov   cx, 0x1c41
│           0000:0629      xor   al, al
└           0000:062b      jmp   word cs:[0x2000]
```

### Function 0x00000630
```asm
; CALL XREFS from fcn.000000b1 @ +0x22d, +0x3cc
┌ fcn.00000630();
│           0000:0630      mov   dl, byte [0xad29]
│           0000:0634      mov   bx, word [0xad2a]
│           0000:0638      test  al, 8
│       ┌─< 0000:063a      je    0x64a
│       │   0000:063c      sub   bx, 0xa
│       │   0000:063f      sbb   dl, 0
│      ┌──< 0000:0642      jae   0x69e
│      ││   0000:0644      xor   bx, bx
│      ││   0000:0646      xor   dl, dl
│     ┌───< 0000:0648      jmp   0x69e
│     ││└─> 0000:064a      test  al, 4
│     ││┌─< 0000:064c      je    0x66c
│     │││   0000:064e      add   bx, 0xa
│     │││   0000:0651      adc   dl, 0
│     │││   0000:0654      mov   cx, bx
│     │││   0000:0656      sub   cx, word [0xad2d]
│     │││   0000:065a      mov   cl, dl
│     │││   0000:065c      sbb   cl, byte [0xad2c]
│    ┌────< 0000:0660      jb    0x69e
│    ││││   0000:0662      mov   dl, byte [0xad2c]
│    ││││   0000:0666      mov   bx, word [0xad2d]
│   ┌─────< 0000:066a      jmp   0x69e
│   ││││└─> 0000:066c      test  al, 2
│   ││││┌─< 0000:066e      je    0x67e
│   │││││   0000:0670      sub   bx, 1
│   │││││   0000:0673      sbb   dl, 0
│  ┌──────< 0000:0676      jae   0x69e
│  ││││││   0000:0678      xor   bx, bx
│  ││││││   0000:067a      xor   dl, dl
│ ┌───────< 0000:067c      jmp   0x69e
│ ││││││└─> 0000:067e      test  al, 1
│ ││││││┌─< 0000:0680      je    0x69e
│ │││││││   0000:0682      add   bx, 1
│ │││││││   0000:0685      adc   dl, 0
│ │││││││   0000:0688      mov   cx, bx
│ │││││││   0000:068a      sub   cx, word [0xad2d]
│ │││││││   0000:068e      mov   cl, dl
│ │││││││   0000:0690      sbb   cl, byte [0xad2c]
│ ────────< 0000:0694      jb    0x69e
│ │││││││   0000:0696      mov   dl, byte [0xad2c]
│ │││││││   0000:069a      mov   bx, word [0xad2d]
│ │││││││   ; CODE XREFS from fcn.00000630 @ 0x648, 0x66a, 0x67c
│ └└└└└└└─> 0000:069e      mov   byte [0xad29], dl
│           0000:06a2      mov   word [0xad2a], bx
└           0000:06a6      ret
```

### Function 0x000006a7
```asm
; CALL XREF from fcn.00000000 @ 0x4c
┌ fcn.000006a7();
│           0000:06a7      mov   si, 0xa6c8
│           0000:06aa      mov   bx, 0x717
│           0000:06ad      mov   cx, 8
│       ┌─> 0000:06b0      push  cx
│       ╎   0000:06b1      mov   cx, 0xc
│      ┌──> 0000:06b4      push  cx
│      ╎╎   0000:06b5      push  bx
│      ╎╎   0000:06b6      lodsb al, byte [si]
│      ╎╎   0000:06b7      call  word cs:[0x3016]
│      ╎╎   0000:06bc      pop   bx
│      ╎╎   0000:06bd      inc   bh
│      ╎╎   0000:06bf      pop   cx
│      └──< 0000:06c0      loop  0x6b4
│       ╎   0000:06c2      sub   bh, 0xc
│       ╎   0000:06c5      add   bl, 8
│       ╎   0000:06c8      pop   cx
│       └─< 0000:06c9      loop  0x6b0
└           0000:06cb      ret
```

### Function 0x0000072c
```asm
; CALL XREF from fcn.00000000 @ 0x86
            ; CALL XREF from fcn.000000b1 @ +0x561
┌ fcn.0000072c(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:072c      test  byte [0xad21], 0xff
│       ┌─< 0000:0731      jne   0x734
│       │   0000:0733      ret
│       └─> 0000:0734      cmp   word [0xff50], 0x1e
│       ┌─< 0000:0739      jae   0x73c
│       │   0000:073b      ret
│       └─> 0000:073c      mov   word [0xff50], 0
│           0000:0742      inc   byte [0xad22]
│           0000:0746      mov   al, byte [0xad22]                     ; [0xad22:1]=255
│           0000:0749      and   al, 1
│           0000:074b      mov   cl, 0x28                              ; '('
│           0000:074d      mul   cl
│           0000:074f      mov   si, ax                                ; arg1
└           0000:0751      add   si, word [0xad1f]
```

### Function 0x00000755
```asm
; CALL XREFS from fcn.000000b1 @ +0xa9, +0x199, +0x32e
            ; CALL XREF from fcn.00000817 @ 0x826
┌ fcn.00000755();
│           0000:0755      mov   bx, 0x91f                             ; "ange almas"
│           0000:0758      mov   cx, 5
│       ┌─> 0000:075b      push  cx
│       ╎   0000:075c      mov   cx, 8
│      ┌──> 0000:075f      push  cx
│      ╎╎   0000:0760      push  bx
│      ╎╎   0000:0761      lodsb al, byte [si]
│      ╎╎   0000:0762      call  word cs:[0x3016]
│      ╎╎   0000:0767      pop   bx
│      ╎╎   0000:0768      inc   bh
│      ╎╎   0000:076a      pop   cx
│      └──< 0000:076b      loop  0x75f
│       ╎   0000:076d      sub   bh, 8
│       ╎   0000:0770      add   bl, 8
│       ╎   0000:0773      pop   cx
│       └─< 0000:0774      loop  0x75b
└           0000:0776      ret
```

### Function 0x00000817
```asm
; CALL XREFS from fcn.000000b1 @ +0x22, +0x54e
            ; CODE XREF from fcn.00000817 @ 0x831
┌ fcn.00000817(short unsigned int arg1);
│           ; arg short unsigned int arg1 @ ax
│       ┌─> 0000:0817      mov   byte [0xff1a], 0
│       ╎   0000:081c      lodsw ax, word [si]
│       ╎   0000:081d      cmp   ax, 0xffff                            ; arg1
│      ┌──< 0000:0820      jne   0x823
│      │╎   0000:0822      ret
│      └──> 0000:0823      push  si
│       ╎   0000:0824      mov   si, ax                                ; arg1
│       ╎   0000:0826      call  fcn.00000755                          ; fcn.00000755
│      ┌──> 0000:0829      cmp   byte [0xff1a], 0x28
│      └──< 0000:082e      jb    0x829
│       ╎   0000:0830      pop   si
└       └─< 0000:0831      jmp   fcn.00000817
```

## Cross-References (callers)
```json
  0x000000b1:
[{"from":167,"to":177,"type":"CALL"}]
  0x00000623:
[{"from":214,"to":1571,"type":"CALL"},{"from":297,"to":1571,"type":"CALL"},{"from":335,"to":1571,"type":"CALL"},{"from":513,"to":1571,"type":"CALL"},{"from":575,"to":1571,"type":"CALL"},{"from":980,"to":1571,"type":"CALL"},{"from":1433,"to":1571,"type":"CALL"}]
  0x00000630:
[{"from":734,"to":1584,"type":"CALL"},{"from":1149,"to":1584,"type":"CALL"}]
  0x000006a7:
[{"from":76,"to":1703,"type":"CALL"}]
  0x0000072c:
[{"from":134,"to":1836,"type":"CALL"},{"from":1554,"to":1836,"type":"CALL"}]
  0x00000755:
[{"from":346,"to":1877,"type":"CALL"},{"from":586,"to":1877,"type":"CALL"},{"from":991,"to":1877,"type":"CALL"},{"from":2086,"to":1877,"type":"CALL"}]
  0x00000817:
[{"from":211,"to":2071,"type":"CODE"},{"from":1535,"to":2071,"type":"CALL"},{"from":2097,"to":2071,"type":"CODE"}]
```