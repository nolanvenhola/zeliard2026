# UTILITY_A - Analysis

**Source:** `chunk_36.bin`  
**Size:** 2.2 KB  
**Functions:** 1  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    1 15           fcn.00000000
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                                                                                                 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x00000035 0x00000035  86   87         ascii  <=====UX\ldeimVZ]aeflnWZ^bfgkoTX\`ddimUY]alejmVZ^bfglnW[_cghioVXX^\`imVY\_]aooVZ_`ddim
  1 0x0000008c 0x0000008c   7    8         ascii  WYbceln
  2 0x00000094 0x00000094   7    8         ascii  VZdgimo
  3 0x0000009c 0x0000009c   7    8         ascii  U`ceglm
  4 0x000000a4 0x000000a4   7    8         ascii  ?B`ddhm
  5 0x000000ad 0x000000ad   6    7         ascii  FI`IQS
  6 0x000001af 0x000001af   4    5         ascii  \e &,
  7 0x000002c4 0x000002c4   6    7         ascii  @CGKNO
  8 0x000002cb 0x000002cb  47   47         ascii  >ADHLLPRTX\``eimUY]aaflmVZ^bbgkmW[_ccfimTX^`dfi
  9 0x00000328 0x00000328  15   16         ibm037 »krèÍ'cefgªíÎ=d
 10 0x0000035b 0x0000035b   7    7         ascii  W[]`chl
 11 0x00000363 0x00000363  40   41         ascii  T\\`diimUY]adgimVZ^behkmW[_cfclnTX\``cim
 12 0x000003b8 0x000003b8  18   19         ascii  Felishika\s Castle
 13 0x0000040e 0x0000040e 161  161         ascii  If you are the brave warrior we have awaited, we have something to tell you: throughout the ages, many young men have entered the caverns, but few have returned.
 14 0x000004b0 0x000004b0 166  166         ascii  According to legend, there may still be underground places that have not been destroyed by Jashiin. People may still be living there, and will surely lend you a hand.
 15 0x00000557 0x00000557 111  111         ascii  I have been in the underground town. After I fled, they put a lock on the door. If the town is still there.... 
 16 0x000005c7 0x000005c7 104  104         ascii  This is the chamber of poor Princess Felicia, who has been turned to stone. You may enter, Duke Garland.
 17 0x00000630 0x00000630 151  151         ascii  Brave knight, you have awakened. When you fell at the hand of Jashiin, the Spirits brought you here. Now make haste to the aid of the Princess Felicia.
 18 0x000006c8 0x000006c8  28   28         ascii  Quickly, go to the Princess!
 19 0x000006e5 0x000006e5 112  112         ascii  Ah, the Nine Tears of Esmesanti. Jashiin exists no more and the light of peace shines once again on our land... 
 20 0x00000756 0x00000756  88   88         ascii  This will benefit the people living underground, as well. Hurry to the Princess Felicia.
 21 0x000007af 0x000007af 115  115         ascii  The peace we dared not hope for has come. I\ll get my things together and be on my way. I\ve a family to attend to.
 22 0x00000823 0x00000823 116  116         ascii  Quickly, enter this chamber. The holy crystals will break the evil spell which has turned Princess Felicia to stone.
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0000      mov   si, 8
│           0000:0003      add   byte [bp + di + 0x72c3], ch
│           0000:0007      add   byte [bx + si + 0x1c3], dh            ; arg3
│           0000:000b      mov   bl, 0xca
└           0000:000e      ret
```
