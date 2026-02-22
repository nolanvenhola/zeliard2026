# BOSS_PATTERNS - Analysis

**Source:** `chunk_35.bin`  
**Size:** 6.2 KB  
**Functions:** 1  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    1 23           fcn.00000000
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                                                                                                      
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x00000036 0x00000036  10   11         ibm037 GIHDGIñôbC
  1 0x0000004e 0x0000004e   4    5         ibm037 GDGì
  2 0x00000066 0x00000066  18   19         ibm037 jCDgCäiB   aCòGçH\v
  3 0x00000079 0x00000079  27   28         ibm037  é& gCD éAaCäBA  B hCQòIHËù
  4 0x00000096 0x00000096  12   13         ibm037 jCDgCäiÄfQòH
  5 0x000000a4 0x000000a4   6    7         ibm037 eCDeC\a
  6 0x000000b8 0x000000b8   7    8         ibm037 eCDeCDù
  7 0x000000c1 0x000000c1  10   11         ibm037 cCD±CëÄhQD
  8 0x000000cd 0x000000cd   7    8         ibm037 ëeCDeC\a
  9 0x000000d5 0x000000d5  15   16         ibm037 mCëÄiO÷ùëeCDeC\a
 10 0x000000e5 0x000000e5  76   77         ibm037 mCëùëiO÷ùëeCDeCÄ\ëmCëùëiO÷ùëeCDeCäªCëÄiO÷ùëeCDeCDùªCëÄeCcO÷ùëeCDeCäªCëëùeCcC
 11 0x00000133 0x00000133  48   49         ibm037 ëeCDeCäkCDfCëbCDiCËeCDeCähGòñôjbCDðCDùeCDeCähQöI
 12 0x00000164 0x00000164  19   20         ibm037 aô°bCDðCäeCDeCäiQöò
 13 0x00000178 0x00000178  55   56         ibm037 jbCDðCäeCDeCä«QökbCDðCäeCDeCäÆbCDðCäeCDeCDùÆbCDðCùDeCä\
 14 0x000001c8 0x000001c8 171  172         ibm037 äeCdCäeCëhiCùDdCäeCäeCDeCdCäeCëhiCädCäeCäeCDeCdCäjiCädCäeCäeCùeCdCùD /-BABAciCädCäeCäeCD«CäjHGäeCädCäeCäeCDB-B BaCäeCä\dCGçIHäeCDùdCgCùDeCD«CäeCëdCGòIçä¹dCädCgCäeCë\gCDùä\
 15 0x00000275 0x00000275  23   24         ibm037 dQHIòHëûdCädCäeCäeCÄgC\n
 16 0x000002b4 0x000002b4 147  148         ibm037 äeCDùägCË\ËgQCëFdCädCäeCäeCÄgCäeCëhCëeCädCäeCäeCÄgCäeCäùhCëeCädCäeCäeCÄgCäeCëhCëeCädCäeCäeCÄgCäeCëhCëeCädCäeCäeCäiCäeCëhCä\eCùDdCäeCùDeCäiCDùeCëhCD
 17 0x0000039a 0x0000039a  76   77         ibm037 B  ABAiCädCgCDùeO÷ëgCäjÄe\ädCgCäeO÷ëgCäe\DGIñôHä\Dë\ðCäeCäeO÷ëgCDGgQòìHGHäùD
 18 0x000003e8 0x000003e8  20   21         ibm037 AéAB éaCäeCäeO÷ëgCDI
 19 0x0000041c 0x0000041c  27   28         ibm037 ðCäBAé&BABAaCäùDgCDGIHDgQòç
 20 0x0000044b 0x0000044b   5    5         ascii  APA@A
 21 0x00000465 0x00000465  10   11         ibm037 D\ËeCDùeCD
 22 0x000004b8 0x000004b8  10   11         ibm037 hRöIHGIHçD
 23 0x000004c4 0x000004c4  15   16         ibm037 hCä±CDùËdCDGìÄù
 24 0x000004d5 0x000004d5  13   14         ibm037 hCä  é BA AaC
 25 0x0000051e 0x0000051e  13   14         ibm037 bdCë°CäeCùDgC
 26 0x00000530 0x00000530  16   17         ibm037 ùbdCDùD°CäeCägCù
 27 0x00000563 0x00000563  15   16         ibm037 \ë\äbqCDùeCädC\v
 28 0x00000573 0x00000573  13   14         ibm037 ðqCDùeCädCDù\t
 29 0x000005cb 0x000005cb  13   14         ibm037 A - aCDfCëb°C
 30 0x000005ec 0x000005ec  18   19         ibm037 eCDfCëbhCEDeCË«CËù
 31 0x00000600 0x00000600  16   17         ibm037 ýCëbhCäeCDEë«Cëù
 32 0x00000631 0x00000631  15   16         ibm037 eCDfCDdhCähCðC\b
 33 0x00000641 0x00000641 100  101         ibm037 ùäeCDfCùdhCähCðCùD\ä\Ä\DeCDfCëbhCDùhCdCgCùD±CDôeCëbhCähCdCgCä B-  B aCùñôcCDGôbôgCDùhCD»Cä±CDIñôbCëI
 34 0x000006a7 0x000006a7  13   14         ibm037 ôfCähCD»CäfCD
 35 0x000006bb 0x000006bb   9   10         ibm037 ôbCDùHGII
 36 0x000006d5 0x000006d5  51   52         ibm037 GìbCGIäGGIjCëiCäfCëeCDGìHäçHä B&  BABfCä«CDùfCëeCGç
 37 0x00000709 0x00000709  20   21         ibm037 HDEDÇHlCä«CäfCùäeÇåG
 38 0x00000745 0x00000745  23   24         ibm037 ôbfCëàëEhCgCäfCëgQÇHDGI
 39 0x00000763 0x00000763  14   15         ibm037 hCgCäfCëhQìHGì
 40 0x00000784 0x00000784  17   18         ibm037 bfCÄEäED°CäfCë«CÇ
 41 0x00000796 0x00000796   7    8         ibm037 ôbfCD±C
 42 0x000007a9 0x000007a9   7    8         ibm037 ôafED±C
 43 0x000007c1 0x000007c1   9   10         ibm037 fCë«CDHGì
 44 0x000007cb 0x000007cb   7    8         ibm037 ôþCEDfC
 45 0x00000802 0x00000802  13   14         ibm037 ôbbùäiùäfCDE\a
 46 0x00000810 0x00000810   9   10         ibm037 \Ä\Ë«CDGI
 47 0x0000081a 0x0000081a  15   16         ibm037 ôcþCDùä«CDqCDùI
 48 0x0000082a 0x0000082a  27   28         ibm037 ôcbCäiCÄ& -aCDAé&  É   bCHI
 49 0x00000846 0x00000846  15   16         ibm037 ôdbùäiCÄ«CDqCGI
 50 0x00000869 0x00000869  65   66         ibm037 ebCäiCDùÄþCÄeCäeRöìfbùäiCäùëþCÄeCùDdRöIGHIfþCäùëþCägCädCDHëfbCäiC
 51 0x000008e0 0x000008e0  16   17         ibm037 þCÄeCEDdCËfbùäiC
 52 0x00000951 0x00000951  20   21         ibm037 ýCÄfdCëB B é&B B-aC\t
 53 0x00000980 0x00000980  15   16         ibm037 þCDùeCÄfdCDùDfC
 54 0x00000991 0x00000991  15   16         ibm037 þCäeCÄfdCDùDfC\n
 55 0x000009d9 0x000009d9  65   66         ibm037 ùDfCÄjCëeCùDeCùëfdCëfCÄ /øÉaCëeCùDeCÄfdCëfCÄjCëeCäeCëùfdCëfCDùäeC
 56 0x00000a1c 0x00000a1c  18   19         ibm037 eCDgCäeCÄfdCëfCÄeC
 57 0x00000a30 0x00000a30  41   42         ibm037 eCùgCäeCÄfdCëfCägCëùäeCëeCDùeCÄfdCëfCägCä
 58 0x00000a5b 0x00000a5b  21   22         ibm037 äeCëeCäeCDùäfdCëfCÄeC
 59 0x00000acd 0x00000acd  90   91         ibm037 dbCËfCÄðCëùAB é- AfCëdbCËfCÄýCëmCëdbCËfCÄýCëeCDABAB   cCëdbCùÄfCDùäþCäeCD\D»CëdbCËfCÄþCäeC
 60 0x00000b2b 0x00000b2b  17   18         ibm037 ädCùfbCËfCÄ±CDeC\t
 61 0x00000b3d 0x00000b3d  16   17         ibm037 dCDfbCËfCÄ±CDeC\t
 62 0x00000b6e 0x00000b6e  57   58         ibm037 DeCä\ëhCëdbCËfCùë±CDeCäðCëdbCËfCÄ±CDeCäðCëdäùËfCÄ±CDeCDýC
 63 0x00000ba9 0x00000ba9  15   16         ibm037 \ËùäfCÄ±CDeCDýC
 64 0x00000bbc 0x00000bbc  15   16         ibm037 gCë±CDeCDýCDùË\a
 65 0x00000bcc 0x00000bcc  16   17         ibm037 hCäeCùäfCD«DfC\\b
 66 0x00000bdf 0x00000bdf  15   16         ibm037 ëiCDeCëfCDiÄdC\t
 67 0x00000bef 0x00000bef  19   20         ibm037 eCäiCDeCëfCD«DfCD\\a
 68 0x00000c03 0x00000c03  10   11         ibm037 eCùDiCDeC\n
 69 0x00000c0e 0x00000c0e  14   15         ibm037 mCäùÄeCäiCDeC\n
 70 0x00000c21 0x00000c21  10   11         ibm037 eCäiCDeCÄù
 71 0x00000c31 0x00000c31   8    9         ibm037 eCäiCDeC
 72 0x00000c42 0x00000c42  15   16         ibm037 eCäiGIeCënCEeO÷
 73 0x00000c53 0x00000c53  24   25         ibm037 eCähRöIeCDùD &B& AiCDeO÷
 74 0x00000c75 0x00000c75  10   11         ibm037 ôdCënCDeO÷
 75 0x00000cc9 0x00000cc9  24   25         ibm037 eCùDeCHGIñeCëfCDeCDfCädC
 76 0x00000ce3 0x00000ce3  20   21         ibm037 ýCHGIñeCëfCùeCùfCädC
 77 0x00000cf9 0x00000cf9  11   12         ibm037 A &BAB BaCä
 78 0x00000d05 0x00000d05  94   95         ibm037 ôfCëfCDeCDfEDeCDEËýCäôgCùäfCDeCäjCäeCäeCähCùäfCDeCäA &B é BAaCùDeCäeCäeCDùÄfCDeCùDjCäeCäeCDùeC
 79 0x00000d65 0x00000d65  19   20         ibm037 fCDeCägCiCäeCäeCäeC
 80 0x00000d7a 0x00000d7a  21   22         ibm037 fCDeCägCEäfCäeCäeCäeC
 81 0x00000d91 0x00000d91  21   22         ibm037 fCDeCägCëfCäeCùDeCäeC
 82 0x00000db5 0x00000db5  30   31         ibm037 eCgCäeCÄùDfCDeCDùgCëfCäeCgCäeC
 83 0x00000e02 0x00000e02  16   17         ibm037 gCëfCäeCäeCäeCDù
 84 0x00000e8c 0x00000e8c  28   29         ibm037  é&BeCäA/ABA aCÄùiCä\ä\DdCDù
 85 0x00000f02 0x00000f02  20   21         ibm037 hAB&dCäùDeCëùDiCD«C\b
 86 0x00000f93 0x00000f93   5    5         ascii  @Q@a@
 87 0x00000fa2 0x00000fa2 125  126         ibm037 DùeCëkCDneCeCäeCDùDbDdùähCDneCeCäeCëaÄbùähCDn»CäeCëbDcCëhCDùähCäeCD»CëþCëhCDùähCäeCD»CëþCëhCÄhCäeCD»CËðCëhCÄhCäeCD»CDùëðCäùfC
 88 0x0000105e 0x0000105e 107  108         ibm037 DeCDeCDeCÄðCëfCëàDhCäeCDeCDeCäþCùäfCäàDEhCùDeCùeCDeCäþCDùDfCDEäEDhCäeCDeCEeCädCiCëfCEäùähCäeCDeCDeCädCiCëfC
 89 0x000010cb 0x000010cb  55   56         ibm037 hCäeCDeCDeCäþCäùfCËùhCDùeCDeCDeCäþCëfCËùhCägeCDeCÄðCëfC
 90 0x00001104 0x00001104 107  108         ibm037 hCägeCDeCÄðCëfC\ä\ähCägeCDeCÄðCäùnCäeC\eCDeCÄðCë& &/-/aCäeCDeCDeCùÄ»CùänCäeCDeCDeCË»CënCäeCD\ë\DùeCÄðCëfCäE
 91 0x0000117a 0x0000117a  15   16         ibm037 eCÄðCëfCDEDàËù\f
 92 0x000011b1 0x000011b1  14   15         ibm037 \DeCDeCDeCëfC\v
 93 0x000011c0 0x000011c0  16   17         ibm037 ±CëceCDeCDeCëfC\v
 94 0x000011d6 0x000011d6  15   16         ibm037 ceCùeCDeCD\DfC\v
 95 0x000011e6 0x000011e6 101  102         ibm037 ±CëceCDeCD±Cë\D\Ä\DAB   gCëceCDeCD éAé  AaCärCëceCDeCù±Cä±CDhCëceCùeCDeC\Ë\ËB     B aCDhCäùceCDeCDeC\v
 96 0x0000124c 0x0000124c  13   14         ibm037 rCëceCDeCDeC\t
 97 0x0000126a 0x0000126a  12   13         ibm037 eCDEDEDþCëcA
 98 0x00001281 0x00001281  13   14         ibm037 »CEDEäþCëG lC
 99 0x00001290 0x00001290  22   23         ibm037 ø &aCËABA  gCäùcdôaôðC
100 0x000012bf 0x000012bf  15   16         ibm037 dCDhCëccDIHñ¢iC
101 0x000012d4 0x000012d4  11   12         ibm037 dCDhCëccDHì
102 0x000012e9 0x000012e9   7    8         ibm037 dCDhCËa
103 0x000012fb 0x000012fb   5    6         ibm037 nCDhC
104 0x00001306 0x00001306  21   22         ibm037 ôgCùËnCËdCËùDGHGÌñôgC
105 0x0000132e 0x0000132e  15   16         ibm037 pCëdCDùÄDGIGçGç
106 0x00001366 0x00001366  10   11         ibm037 jCDA  / aC
107 0x0000151a 0x0000151a  15   16         ascii  Cavern of Plata
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0000      in    al, dx
│           0000:0001      sbb   byte [bx + si], al                    ; arg3
│           0000:0003      add   byte [di], ah
│           0000:0005      aad   0
│           0000:0007      add   word [bx + di - 0x5e2d], ax           ; arg3
│           0000:000b      shl   word [bp + di + 0x1cd3], cl
│           0000:000f      aam   0xd2
│           0000:0011      aam   0x12
│           0000:0013      aad   0x2a
└           0000:0015      aad   6
```
