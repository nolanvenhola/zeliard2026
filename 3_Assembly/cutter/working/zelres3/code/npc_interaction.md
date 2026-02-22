# NPC_INTERACTION - Analysis

**Source:** `chunk_26.bin`  
**Size:** 4.4 KB  
**Functions:** 1  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    3 68           fcn.00000000
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                     
-----------------------------------------------------------------------------------------------------------------------------
  0 0x00000078 0x00000078  14   15         ibm037 ýDHN¹gDHiDHþDH
  1 0x0000008c 0x0000008c   4    6         utf8   ՍCՈC blocks=Armenian,Basic Latin
  2 0x000000a0 0x000000a0  14   15         ibm037 äiäHýDIDHfäHýä
  3 0x000000b1 0x000000b1   4    6         utf8   ȈCȍC blocks=Latin Extended-B,Basic Latin
  4 0x000000d8 0x000000d8  15   16         ibm037 H¹fäHýIägDëhDED
  5 0x000000e8 0x000000e8  12   13         ibm037 ðëgIäýëHfDID
  6 0x000000f5 0x000000f5  12   13         ibm037 hë!«IDE¢eDIä
  7 0x00000102 0x00000102  19   20         ibm037 »DIäfDDE¢gIàDH»ëHfë
  8 0x00000125 0x00000125   4    6         utf8   ʆCʍC blocks=IPA Extensions,Basic Latin
  9 0x00000198 0x00000198   7    8         ibm037 eIDH¹ýD
 10 0x000001b4 0x000001b4  23   24         ibm037 gDëhDIDdChëHeäFäðäNgDID
 11 0x000001e1 0x000001e1   9   10         ibm037 dDHgDI¹fë
 12 0x000001ee 0x000001ee  14   15         ibm037 gDäHhIDeägäHfä
 13 0x0000020e 0x0000020e  13   14         ibm037 fID/-BAB&aäiä
 14 0x0000021f 0x0000021f   6    7         ibm037 eIDMfD
 15 0x00000226 0x00000226   8    9         ibm037 gä±IDHhD
 16 0x00000234 0x00000234   4    7         utf8   ĈCʄÉ blocks=Latin Extended-A,Basic Latin,IPA Extensions,Latin-1 Supplement
 17 0x0000023e 0x0000023e   6   10         utf8   ʊʆSȅʈC blocks=IPA Extensions,Basic Latin,Latin Extended-B
 18 0x00000248 0x00000248  12   13         ibm037 eDiëHgkDFäþD
 19 0x00000255 0x00000255   8    9         ibm037 eDiDFà¢e
 20 0x0000025f 0x0000025f  47   48         ibm037 B& &bÄé&B B bDfDiIëñ  Bkë±IeCD¢gDMIôgDjäN±Ieäiä
 21 0x000002b1 0x000002b1   4    6         utf8   ՉCՈS blocks=Armenian,Basic Latin
 22 0x000002bc 0x000002bc  15   16         ibm037 DIDHhäNhë±äIDlÄ
 23 0x000002d3 0x000002d3   4    4         ascii  cIA`
 24 0x000002df 0x000002df   9   10         ibm037 hFDNFgÄþä
 25 0x00000308 0x00000308  11   12         ibm037 NiDFDNMfËýä
 26 0x00000321 0x00000321  14   15         ibm037 fËýäHN«ägDHNiä
 27 0x0000034e 0x0000034e  18   19         ibm037 fÄþDIDà¢gäHfDIDôhë
 28 0x00000367 0x00000367   6    7         ibm037 «DIDfë
 29 0x0000036e 0x0000036e  11   12         ibm037 hFDIHNfëNþä
 30 0x0000037a 0x0000037a   5    6         ibm037 N«DFD
 31 0x00000385 0x00000385   4    7         utf8   ՆSՎC blocks=Armenian,Basic Latin
 32 0x000004bf 0x000004bf   9   10         ibm037 lCFEé&B&«
 33 0x000004e2 0x000004e2   4    7         utf8   ՓCՇĂ blocks=Armenian,Basic Latin,Latin Extended-A
 34 0x000004f3 0x000004f3  12   13         ibm037 «CDgDINgDb«D
 35 0x0000050b 0x0000050b  20   21         ibm037 «äEIôdäNgDb«DHNfäHeä
 36 0x00000536 0x00000536  20   21         ibm037 «DMgDE¢fäa«IDHfDFNeë
 37 0x00000568 0x00000568  10   11         ibm037 gIDM«ëfëHd
 38 0x00000573 0x00000573  10   11         ibm037 äHN«DIEHeD
 39 0x00000586 0x00000586  13   14         ibm037 eä¹DcùÿDIDN«ë
 40 0x000005b2 0x000005b2  23   24         ibm037 fDFDôcùÿäEF«DIDHeëEôeDà
 41 0x000005d0 0x000005d0  36   37         ibm037 ôcùÿDFDIôiÄeDIED%bë¦fäEôeFDNöcùÿÄ«ä¹
 42 0x000005f5 0x000005f5  27   28         ibm037 eÄ_bäEDHhëHeäNdùÿëE¢häHfäID
 43 0x00000612 0x00000612   4    5         ibm037 DIDä
 44 0x00000622 0x00000622   4    7         utf8   ʊCʆc blocks=IPA Extensions,Basic Latin
 45 0x00000640 0x00000640   7    8         ibm037 DEDE¢gä
 46 0x00000648 0x00000648   7    8         ibm037 öeDgFID
 47 0x00000670 0x00000670   4    7         utf8   ʅƇSՒ blocks=IPA Extensions,Latin Extended-B,Basic Latin,Armenian
 48 0x0000068e 0x0000068e   7    8         ibm037 fDIDNiä
 49 0x00000696 0x00000696  10   11         ibm037 é&B B&aDFD
 50 0x000006d7 0x000006d7  14   15         ibm037 nDiDHNNiD°äýCh
 51 0x000006ea 0x000006ea  21   22         ibm037 i\°ä &BAB-aDHjFäNiD°D
 52 0x0000070b 0x0000070b  16   17         ibm037 i\iCfDeHhäH°ëNiD
 53 0x00000720 0x00000720   9   10         ibm037 dCDhDFD°ä
 54 0x0000072a 0x0000072a  12   13         ibm037 NiDMhD»äHgë°
 55 0x00000737 0x00000737   6    7         ibm037 DNNMhD
 56 0x00000748 0x00000748  10   11         ibm037 gë°FDIDNhä
 57 0x00000769 0x00000769   6    7         ibm037 «DNMgë
 58 0x00000793 0x00000793  12   13         ibm037 häFDfDIDiDFD
 59 0x000007a0 0x000007a0   6    7         ibm037 fDIN°ë
 60 0x000007d8 0x000007d8  14   15         ibm037 hDHhDFEôhäà¢dë
 61 0x000007e7 0x000007e7   7    8         ibm037 ±äIDNhë
 62 0x000007ef 0x000007ef  20   21         ibm037 fIDHiëHfë°FäDNhDFDgä
 63 0x00000804 0x00000804   4    5         ibm037 iDFD
 64 0x00000810 0x00000810   4    5         ibm037 NhID
 65 0x00000839 0x00000839  15   16         ibm037 häHiDIEHôeäN°äH
 66 0x0000085b 0x0000085b   4    6         utf8   ʉCʉS blocks=IPA Extensions,Basic Latin
 67 0x00000865 0x00000865  14   15         ibm037 M±DFDà¢°DE¢hID
 68 0x00000976 0x00000976   5    6         ibm037 öajDH
 69 0x000009ad 0x000009ad  72   73         ibm037 bðSdäHN«äNýDHNhäHNbðTdDID¹«äNýIDHhëNbðUdë»DINýëHgëNbðVdIäH«ëMðÄHfëHbðWdë
 70 0x000009fe 0x000009fe   7    8         ibm037 gDFäbjD
 71 0x00000a28 0x00000a28   4    6         utf8   ʋSʇs blocks=IPA Extensions,Basic Latin
 72 0x00000a3b 0x00000a3b  11   12         ibm037 ajDFDH«ëNðD
 73 0x00000a5f 0x00000a5f  38   39         ibm037 «ëHðIHNhëHbjäà¢hÄH»ëHgäFDbjDID»Fëñ«DFD
 74 0x00000a9d 0x00000a9d   4    6         utf8   ՌCՈC blocks=Armenian,Basic Latin
 75 0x00000ab4 0x00000ab4  44   45         ibm037 bjFDN»äHNðDIäHfÄbhChä¹»ëNðë!eËahDhDE¢«ëHðüEä
 76 0x00000ae1 0x00000ae1   6    7         ibm037 fFDFDI
 77 0x00000ae8 0x00000ae8   8    9         ibm037 hDhDID»Ä
 78 0x00000af9 0x00000af9   6    7         ibm037 bhDHgä
 79 0x00000b00 0x00000b00   9   10         ibm037 »DFä±DHfä
 80 0x00000b0a 0x00000b0a  17   18         ibm037 NbhIDHfIDeHfÄ±äfä
 81 0x00000b30 0x00000b30   7    8         ibm037 bhDE¢eD
 82 0x00000b38 0x00000b38   5    6         ibm037 eDHeä
 83 0x00000b3e 0x00000b3e  14   15         ibm037 N±äfëHbhäHfDfD
 84 0x00000b57 0x00000b57  14   15         ibm037 fÄHahëHeDfDMeä
 85 0x00000b66 0x00000b66   4    7         utf8   ՄĊʇC blocks=Armenian,Latin Extended-A,IPA Extensions,Basic Latin
 86 0x00000b78 0x00000b78   5    6         ibm037 fDHeä
 87 0x00000b8e 0x00000b8e  26   27         ibm037 dä -BA  B&aÄbhÄðäeäHNdäjFä
 88 0x00000bb9 0x00000bb9  14   15         ibm037 HfëNbhäNýDINdä
 89 0x00000be8 0x00000be8   4    7         utf8   ȋCȄC blocks=Latin Extended-B,Basic Latin
 90 0x00000bf8 0x00000bf8  28   29         ibm037 dëchäFEô»ëdäHNdäNhIädCäEôbhÄ
 91 0x00000c15 0x00000c15   6    7         ibm037 »IDIdä
 92 0x00000c1c 0x00000c1c  18   19         ibm037 NdDFNhëEöaCäEHchID
 93 0x00000c55 0x00000c55   7    8         ibm037 DE¢chDH
 94 0x00000c6a 0x00000c6a   4    4         utf8   CDZC
 95 0x00000cb0 0x00000cb0   5    6         ibm037 DeDFD
 96 0x00000cb6 0x00000cb6  19   20         ibm037 gDEô»hDFDNðëfDeäNhä
 97 0x00000cd2 0x00000cd2   4    7         utf8   ʆʅCȈ blocks=IPA Extensions,Basic Latin,Latin Extended-B
 98 0x00000cf3 0x00000cf3  12   13         ibm037 N  B&B aäNhD
 99 0x00000e99 0x00000e99  15   16         ascii  Cavern of Riza\r
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0000      stosb byte es:[di], al
│           0000:0001      adc   word [bx + si], ax                    ; arg3
│           0000:0003      add   byte [bp + di - 0x3332], ah
│           0000:0007      add   byte [bx + di - 0x33], dh             ; arg3
│       ┌─< 0000:000a      jns   0xffffffd9
│      ┌──< 0000:000c      jnp   0xffffffdb
│      ││   0000:000e      test  ch, cl
│      ││   0000:0010      into
│      ││   ; DATA XREFS from fcn.00000000 @ +0x10bc, +0x10c7
│      ││   0000:0012      xchg  cx, ax
│      ││   0000:0013      into
│      ││   0000:0014      test  al, 0xce
│      ││   ; DATA XREF from fcn.00000000 @ +0xd98
│      ││   0000:0016      add   di, word [si + 0x1500]
│      ││   0000:001a      or    al, byte [bx + si]
│      ││   0000:001c      add   byte [bx + di - 0x33], dh
│      ││   0000:001f      xor   al, 0xf
│      ││   0000:0021      rcl   bl, cl
│      ││   ; DATA XREF from fcn.00000000 @ +0x1087
│      ││   0000:0023      or    byte [bx], cl
│      ││   0000:0025      or    cl, byte [bx]
│      ││   0000:0027      rcl   bl, cl
│      ││   0000:0029      sbb   cx, word [bx]
│      ││   0000:002b      rcl   bl, cl
│      ││   0000:002d      adc   al, 0xf
│      ││   0000:002f      aas
│      ││   0000:0030      adc   byte [bp + si], bl
│      ││   0000:0032      adc   ax, bx
│      ││   0000:0034      or    byte [bx + di], dl
│      ││   0000:0036      fmul  dword [0xd811]
│      ││   0000:003a      or    word [bx + di], dx
│      ││   0000:003c      wait
│      ││   0000:003d      fld   dword [bp + si]
│      ││   0000:003f      adc   ax, 0xd986
└      ││   0000:0042      add   word [di], dx
```
