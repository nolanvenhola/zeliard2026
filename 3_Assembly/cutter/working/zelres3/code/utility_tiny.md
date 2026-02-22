# UTILITY_TINY - Analysis

**Source:** `chunk_37.bin`  
**Size:** 0.8 KB  
**Functions:** 1  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    2 14           fcn.00000000
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x0000006c 0x0000006c   5    6         ibm037 ¿cCDE
  1 0x000000af 0x000000af  15   16         ibm037 äE¿cóõ}CD\DGIôI
  2 0x000000c1 0x000000c1  13   14         ibm037 öHED¿fCD\I$Iö
  3 0x000000ff 0x000000ff 100  101         ibm037 òöEDEDED¿kCä¿kCED¿kC\D¿kCE\¿kCä¿kC\D¿kC\D¿kC\D¿kCED¿kC\D¿kC\D¿kCED¿kCDG¿kCED¿kCE\¿kC\D¿kCEG¿kCEG¿kCE
  4 0x00000164 0x00000164   9   10         ibm037 ¿kCGI¿kCE
  5 0x00000173 0x00000173 101  102         ibm037 ¿kCDH¿kCE\¿kCED¿kC\D¿kCED¿kCED¿kC\D¿kCED¿kCE\¿kC\D¿kCä¿kCä¿kCED¿kCED¿kC\D¿kCED¿kCE\¿kCED¿kCED¿kCED¿có
  6 0x000001fe 0x000001fe  16   17         ibm037 g.IHëED\Ä¿cKLMöI
  7 0x000002c4 0x000002c4  16   16         ascii  Cavern of Tesoro
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3, int16_t arg4);
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:0000      inc   byte [bp + si]
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           0000:0004      rol   dl, 1
│           0000:0006      dec   cx                                    ; arg4
│           0000:0007      add   byte [bx - 0x3e], ch                  ; arg3
│       ┌─< 0000:000a      jno   0xffffffce
└      ┌──< 0000:000c      jae   0xffffffd0
```
