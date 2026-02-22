# TOWN_NPC - Analysis

**Source:** `chunk_20.bin`  
**Size:** 6.4 KB  
**Functions:** 1  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000001    1 33           fcn.00000001
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                                                      
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x00000008 0x00000008  10   11         ibm037 íN)N¬N'NGN
  1 0x00000028 0x00000028  10   11         ibm037 GäGFDGÁDeE
  2 0x0000003e 0x0000003e  16   17         ibm037 IjõóDáCGFIfGfDáG
  3 0x00000062 0x00000062  25   26         ibm037 áGAB BAB BfõóòÍHeDFFHeDáG
  4 0x00000090 0x00000090 104  105         ibm037 »DÁGF ABABA iõóòDÁGIdDFídDíG»DÁGHkõóòDáDFIeDFEFHdDáGðDÍHeDFCFHhõóòEíHfDFFHeDáGðDFDÁHdDáHiõóòÁGHeEFFfDáýD
  5 0x0000010a 0x0000010a  14   15         ibm037 FGýDÍHeDFH«õóò
  6 0x0000011a 0x0000011a  63   64         ibm037 IdDFCFeDáGðDÁHfDáHiõóòCáCFHeDFíHcDFGýDíGFHeDCáiõóòDígDFáHdDíG«ô
  7 0x0000015b 0x0000015b  47   48         ibm037 eDíIhõóòDÁGIdEFFHeDáG«ôÍHIeCFCáHhõóòDÁHIdáFfDFG
  8 0x00000190 0x00000190  27   28         ibm037 IeDíHIhõóòDíCFeáHfDáECFfôD\a
  9 0x000001ac 0x000001ac  21   22         ibm037 HdDíHiõóòCFCÁHcCFFådD
 10 0x000001c3 0x000001c3  13   14         ibm037 eDÁDÁeDáGhCFê
 11 0x000001d2 0x000001d2  10   11         ibm037 HdDFáeDÁDf
 12 0x000001de 0x000001de  26   27         ibm037 DEHeDíeCÍEÁEåeäídDÍnDÁIcD\v
 13 0x000001f9 0x000001f9  66   67         ibm037 HeDFEFHdäÁ    -é BABaDÁIcDFEíèíGfDFFHeDÍHmäáHdDÁHcEíDFHcDFFHeDÁHf\b
 14 0x0000023c 0x0000023c  25   26         ibm037 HeDáGHdàáGeDÁIcDFáeEÁHfD\a
 15 0x00000256 0x00000256  21   22         ibm037 GeEí±DíGHcäHfCáCáHeD\t
 16 0x0000026c 0x0000026c  45   46         ibm037 HcCíA & &BABaäCFHdDFFHeDÍHeDFGbEÁeDí±DáådDFgD
 17 0x0000029b 0x0000029b  62   63         ibm037 eDFdDíHdDáHeCFhDíHdEDgDÍHeDFdDáGeDíHdDáGHeDáGg   aDÁHfDEdDíeDÁ
 18 0x000002da 0x000002da  70   71         ibm037 cDíHeDíA  BAgDÍfCFdDíHdDÁHcDÁeDFDHgFHeDÍHIdDGdDíGdDíHdCíGHdDíHdCFFGHcC
 19 0x00000322 0x00000322  54   55         ibm037 HeDFdäáGHcDáGHdDÁHIcàDHeDFáGHbDíCáfDFdDíçcäáHdDáDFþDF\b
 20 0x00000359 0x00000359  20   21         ibm037 EífDFdEáGeDíeDÁHðCá\f
 21 0x0000036e 0x0000036e  21   22         ibm037 GHdDFdCíHdEáHeDíå«âí\r
 22 0x00000384 0x00000384  21   22         ibm037 eDEdDÁdÁGdDíGH«èááCD\n
 23 0x0000039a 0x0000039a  20   21         ibm037 HcEGdDáHeÍHcDÁH»õóEF
 24 0x000003c9 0x000003c9  33   34         ibm037 iÁGHcDíHdDíEFH«õóDFÁGdDÁG«DíHdDáH
 25 0x000003eb 0x000003eb  25   26         ibm037 dEÁH»õóDFÁGdEFDíHiDíHdDáG
 26 0x00000431 0x00000431  90   91         ibm037 cCáGHðõóDFÁHeDáH»CÁdDíHdDÁH»õóDFíGfEDFðDíñcDáHeDíGðõóDFíoDíHdDáHeDCáHðõóEFíG&é& -/bDáGeDáH
 27 0x0000049c 0x0000049c  63   64         ibm037 DíHdDíCFH«õóDFígCFGH»äáHdDíeDÁH»õóDFáCIfCäGH«DíeäáGHcDÁH»õóDFáE
 28 0x000004dc 0x000004dc  13   14         ibm037 fDFDGH«DÁHcDí
 29 0x00000513 0x00000513  22   23         ibm037 HdEÁdDáGFH«êááCGHeDÁfD
 30 0x00000572 0x00000572  16   17         ibm037 ådâGfDFáCgDíGIeD
 31 0x00000584 0x00000584  21   22         ibm037 HdDíHdDÁHdDíeDFáGHfDÁ
 32 0x0000059e 0x0000059e  84   85         ibm037 eDáHeDíGeäídDFíHfDÁfDíEÁHcDCFHeDÁeDFEFHdDFáGbNdDíEfDíCíHdDáGHdDÁGdEFCGeDFíHaOdDÁGHdD
 33 0x000005f4 0x000005f4  27   28         ibm037 HeDáHeäÁHdDáHdDFáCGHPdDíHfE
 34 0x00000611 0x00000611  28   29         ibm037 HeDíHdDÁDFdDáDHcDFFGHbQdDÁHe
 35 0x0000062f 0x0000062f  26   27         ibm037 GfäíHcEÍHdDíHcDFáHbRdDíHf\a
 36 0x00000651 0x00000651  41   42         ibm037 HdäHeDFáDHfDÁfíEÁHdDáHeÍGeDFHeDFíCfDíGHeD
 37 0x0000067c 0x0000067c  49   50         ibm037 GeDFHfCÁIeDáHdDFáDgDáCGfDÍGfDFGFeDíHIeDáHdDFígDÁf
 38 0x000006af 0x000006af  24   25         ibm037 HeEáfDíHIeDFHIdDFáDHfDÁf
 39 0x000006c9 0x000006c9  19   20         ibm037 fÁeDíHfDFDHdDFáhDÁf
 40 0x000006de 0x000006de  52   53         ibm037 HfCáHeDíHfDáHdDFáCgDíCGeCáCífDíHdDFEFHfDáHdDFíGfDÁfD
 41 0x00000714 0x00000714  24   25         ibm037 HdDíHdDFCFHfäádDFÁfDÁHeD
 42 0x0000072e 0x0000072e 123  124         ibm037 HeäáGdDíHfDáHdDFÁfDÁDHdDFDÁGeDÁHcEíHfDFGHdDFáGåeDÁHeDÍHfDíHdCáHIfDáHdDFígEíGHeDÁGgEíHdDáHgäádDFÁfCígDÍHfífDáHgDídDFíHfDíDfD
 43 0x000007ab 0x000007ab  21   22         ibm037 HdíHeäáHfDáHdDFígDÁfD
 44 0x000007c2 0x000007c2  22   23         ibm037 HeÁeDíGfDáeDFáHgDíGHeD
 45 0x000007da 0x000007da  49   50         ibm037 fCFDFHdDíGfDGDGdDFíHfDÁfäÁGfDáGHdDíHfDáHdDFígDÁfD
 46 0x00000822 0x00000822  49   50         ibm037 HdDíHdEáHgDáHdDFÁfDáCGHeDÍGfDáHeáEHgDFDHdDFÁGHdDí
 47 0x00000864 0x00000864   9   10         ibm037 dDFÁfDÁfE
 48 0x0000086f 0x0000086f  27   28         ibm037 fDFCáHcCáHgäFHdDFíHfDíDHeD\a
 49 0x0000088b 0x0000088b  25   26         ibm037 HcDÁHcDáGgDGFHdDFáGgDíIfD
 50 0x000008a6 0x000008a6  25   26         ibm037 eDáGHdDáGgDáHdEFáåfDáDHfD
 51 0x000008d3 0x000008d3  23   24         ibm037 fDÍGfECGHeäFHgDíeDígÍfD
 52 0x000008fb 0x000008fb  30   31         ibm037 HdDáDí  &  BABaDáHgDíeDÁHeCÁfE
 53 0x00000935 0x00000935  17   18         ibm037 CÁHfDíHdFÍHdDíHf\b
 54 0x00000957 0x00000957  10   11         ibm037 eDFDFCHeC\r
 55 0x00000965 0x00000965  17   18         ibm037 CFHfDíHdFÁfDíHfD\b
 56 0x0000097a 0x0000097a  16   17         ibm037 HfDáHeFíHfDÁGeD\a
 57 0x0000098b 0x0000098b  50   51         ibm037 HIaDÍHbEÁGfEáGeDÁfDáåfDíDFGHdDÁHdDÁHeCíHdDÁHeDíHfD
 58 0x000009bf 0x000009bf  43   44         ibm037 eDÁeDÁHeDÁHcDÍeDÁHeDÍfäíHdDÁCHdDíeDÁHeCíåeD
 59 0x000009f5 0x000009f5  29   30         ibm037 CbCífFíåeDíHfDFDÁGHcDÁHdDáCíG
 60 0x00000a14 0x00000a14  10   11         ibm037 HdDíHfDÁfD
 61 0x00000a28 0x00000a28  10   11         ibm037 fDígDFEíeD
 62 0x00000a3b 0x00000a3b  25   26         ibm037 CÁGHdDígDÁGHdEÁåeCágàíCGE
 63 0x00000a56 0x00000a56  49   50         ibm037 eDíHfDÁHfDÁHeDí°EÍHcDígDÁCGHdEáGFGHdDí&  B   BbDÁ
 64 0x00000a88 0x00000a88  37   38         ibm037 cEDíHeDáDGHgDÁeDÍHþDíHeDÁeEFGHiàáHeD\a
 65 0x00000abc 0x00000abc  23   24         ibm037 HgDíHeDFCG-é&é& & & aD\t
 66 0x00000ad4 0x00000ad4  13   14         ibm037 DáGHeDÁHdDáÆD
 67 0x00000ae3 0x00000ae3  21   22         ibm037 GdDífDáåeCDFGHiCFHfD\r
 68 0x00000af9 0x00000af9 114  115         ibm037 fDíHeDífDíDHgCíCeèCGÁàÁHeDífDáHfDÍGfDÁ°EÁGdDáDHeEGHgDÁHgDÁé  AB   bDíeDíHe«DáCGhäÁ°DáHeäíe«EÍgDÍCÍDáCHeDíeDíf«ÍçfD
 69 0x00000b6d 0x00000b6d  12   13         ibm037 HdDíHdDíGHd«
 70 0x00000b90 0x00000b90  20   21         ibm037 eDáEÍHbEÁeEíHdDáGf«D
 71 0x00000baa 0x00000baa  18   19         ibm037 HdDíHdáGHeEFDFHe«D
 72 0x00000bc3 0x00000bc3   9   10         ibm037 GHdDáfáGf
 73 0x00000bce 0x00000bce  26   27         ibm037 d«DCÍfDÍCHeDíHdáHfÍe«DÍHfD
 74 0x00000bea 0x00000bea  16   17         ibm037 fDÁHcCFHfDíGñc«D
 75 0x00000bfc 0x00000bfc  17   18         ibm037 fDÍGH}dDíGdDFHfÁH
 76 0x00000c13 0x00000c13  23   24         ibm037 HeDÍHaJdDíHdDFHfCíDñciC
 77 0x00000c2c 0x00000c2c  18   19         ibm037 HeEÍbKdDíeDFHfDÍd\b
 78 0x00000c44 0x00000c44  16   17         ibm037 bLdDáHeEFHfDÁHdD
 79 0x00000c5a 0x00000c5a  17   18         ibm037 HaMdDÁHcáHfDáåeà\r
 80 0x00000c6c 0x00000c6c  25   26         ibm037 GHeCÍGHeCíHdáHfDáDfbEDÁD\a
 81 0x00000c8a 0x00000c8a  15   16         ibm037 eDíHdCFHfDÁecE\v
 82 0x00000c9a 0x00000c9a  17   18         ibm037 HfDÁGFfDíeDFHfDíH
 83 0x00000cb1 0x00000cb1  20   21         ibm037 gDÍHfDíGIcDáfDífdED\b
 84 0x00000cc6 0x00000cc6  43   44         ibm037 HgDÁCFfDáGFdDáHeDágeDáDÍGhDÍgCíåcDíHdDíHeeD
 85 0x00000d22 0x00000d22  17   18         ibm037 HeDíeDáGHdDáGfeD\a
 86 0x00000d34 0x00000d34  26   27         ibm037 IhDFDÁfDíHdDíeDÁHdeDFDÍçhD
 87 0x00000d50 0x00000d50  15   16         ibm037 GeDíGdDÁHcEÁeeD
 88 0x00000d61 0x00000d61  18   19         ibm037 ìhDÍHfDáEFIcEÁdDÁa
 89 0x00000d79 0x00000d79  21   22         ibm037 IiDÍgDÁHdDáHdDFDFfeD\a
 90 0x00000d8f 0x00000d8f  18   19         ibm037 iDÍgDíGeDáGdDÁHdeD
 91 0x00000da8 0x00000da8  15   16         ibm037 fDáHfEáHdDífeD\a
 92 0x00000db8 0x00000db8  16   17         ibm037 IhDÍHfDíþDíGeeD\a
 93 0x00000dce 0x00000dce  15   16         ibm037 fDíABABA    aDÍ
 94 0x00000dfa 0x00000dfa   8    9         ibm037 HeDíHfCG
 95 0x00000e03 0x00000e03   8    9         ibm037 cCÁHeeD\t
 96 0x00000e0c 0x00000e0c  19   20         ibm037 HgDÍfDíGHeDÁCÍGeeD\b
 97 0x00000e20 0x00000e20  14   15         ibm037 CFgDÍfDÍDdDáD\b
 98 0x00000e42 0x00000e42   8    9         ibm037 DíGHCaeD
 99 0x00000e7c 0x00000e7c  14   15         ibm037 gDáCáhöídDGeD\b
100 0x00000e95 0x00000e95  12   13         ibm037 GHfCáHcDFeD\a
101 0x00000ead 0x00000ead  10   11         ibm037 HgDádDFeD\a
102 0x00000ebe 0x00000ebe   5    6         ibm037 CFHfE
103 0x00000ec5 0x00000ec5  16   17         ibm037 GfDFHdEFeäíEÁHdä
104 0x00000ed7 0x00000ed7  24   25         ibm037 CíHhDíCFHgDádCFeDÁCÁHdD\f
105 0x00000ef0 0x00000ef0  17   18         ibm037 HfEáGFHhDFGdDGeD\b
106 0x00000f08 0x00000f08   9   10         ibm037 nDádDHeD\b
107 0x00000f17 0x00000f17  24   25         ibm037 GFGAB     é& AaDáHcDHeD\b
108 0x00000f36 0x00000f36   9   10         ibm037 pEáIcDFeD
109 0x00000f5c 0x00000f5c  17   18         ibm037 CáHðDígDFHdDFeDáD
110 0x00000f72 0x00000f72  18   19         ibm037 HeCFgDáCHfDFeDFeE\a
111 0x00000f89 0x00000f89  18   19         ibm037 GHgDáHeDÁGeDFeDFfD
112 0x00000fa2 0x00000fa2  18   19         ibm037 HgCíGHdDÁHeDGeDFfE
113 0x00000fb6 0x00000fb6  80   81         ibm037 HeCÍGHdCíGFfDáEHfDådDáfEFEáHbeDíGFHeDÍHeDíGFeDCGdDáþébDÍfDÁgDÍGdDHeEáB   BA  BeD
114 0x00001008 0x00001008  17   18         ibm037 HdäÁHeDÁHeDHeíþeD
115 0x00001020 0x00001020  40   41         ibm037 dDíEFHdDFHdíCDFCáHgeDÍHeDíDGFHdäífDáIcC\t
116 0x0000104a 0x0000104a  23   24         ibm037 eeDÁGfDÍHeDFDáGHdDáIcD\b
117 0x00001078 0x00001078  18   19         ibm037 eeDÁgDÍfDÁEFdDFGdä
118 0x0000108f 0x0000108f  17   18         ibm037 ceDÍHeDÁgDÍeDFHdD
119 0x000010a2 0x000010a2  23   24         ibm037 CíeeDíCáeDÍHeDÁådDáHcD\t
120 0x000010ba 0x000010ba  21   22         ibm037 GHdeDFDífDÍGeDígDádD\t
121 0x000010d0 0x000010d0   7    8         ibm037 feDÍHeD
122 0x000010d9 0x000010d9  11   12         ibm037 dDÁHeDFHdD\n
123 0x000010e5 0x000010e5  31   32         ibm037 HdeDÁGfDÍHeDíEádDáHcDíDíDGíñbeD
124 0x00001106 0x00001106  18   19         ibm037 HdDíGgDÍGdEáIcEíE\a
125 0x0000111a 0x0000111a  19   20         ibm037 ceDíCFHeDÍfDÍeíIdE\t
126 0x00001151 0x00001151  57   58         ibm037 EÍdeÁGHfDÁåeDíEHeí B BA AbDáCFHceCÍHeEÍfDÍHdíH»DíHdeDÁGád
127 0x0000118c 0x0000118c  17   18         ibm037 GeEFDáGeÁH«DíGdeD
128 0x000011a8 0x000011a8  30   31         ibm037 dCFDíGHIfDÁHceDÁCHeDÁHfDÁGHdD\a
129 0x000011c7 0x000011c7   5    6         ibm037 HeDGí
130 0x000011cd 0x000011cd  15   16         ibm037 ceDÍfDÍHeDíEHeD
131 0x000011de 0x000011de  17   18         ibm037 HfDÁdeDÍHeäÁfDÍeD
132 0x000011f1 0x000011f1  63   64         ibm037 HgDÁHceDÁgDáEFGfDáGFfDíDFHhäáeeDíCFHeDáCáHeDíåeäÁGhDáGHdeDÁGFeD
133 0x00001232 0x00001232  15   16         ibm037 eDÁHeDÍHhDíedC\a
134 0x00001246 0x00001246  26   27         ibm037 dDíGFHdDÍHhEÁHcdDÁGFfDÍHeD
135 0x00001269 0x00001269  27   28         ibm037 ccCáCíHfDFDáHfEÍeDÁHiÍHcaC\b
136 0x00001285 0x00001285  20   21         ibm037 HeDíGgíEáHdDÁHiÁeaD\t
137 0x0000129a 0x0000129a  18   19         ibm037 HdDÍfÁCFeDÍGhCÁåb\t
138 0x000012ad 0x000012ad   5    6         ibm037 CFGdD
139 0x000012b4 0x000012b4  11   12         ibm037 HdCíHfDÍHhD
140 0x000012c6 0x000012c6  23   24         ibm037 HeDáCáådDÁHeDFEíGhDíDÁ\t
141 0x000012de 0x000012de  16   17         ibm037 gDÁgDíEFeDFCÁhD\a
142 0x000012f9 0x000012f9   9   10         ibm037 IcDÍGHgD\a
143 0x0000131c 0x0000131c   5    6         ibm037 CFCFf
144 0x00001333 0x00001333   4    5         ibm037 GFHf
145 0x00001341 0x00001341  25   26         ibm037 hDáDÍCáGFH»CDíGfDÁHeäÁHhD
146 0x0000135c 0x0000135c  19   20         ibm037 DáHþDÍfDFEíHdDÍågD\a
147 0x00001370 0x00001370  15   16         ibm037 GH±DáCáHeDÍGIcD
148 0x00001399 0x00001399  13   14         ibm037 GFABA  é& AaD
149 0x000013a8 0x000013a8   8    9         ibm037 HdDÁEHdD
150 0x000013b2 0x000013b2  18   19         ibm037 HfDÍGFGI°DÍHeDÍeE\a
151 0x000013c9 0x000013c9  47   48         ibm037 GHIeâGgDíDgDíGHfDÍGHfDÍGáHfDÁHdDÍHeEDEágàFEFHhä
152 0x0000140f 0x0000140f   4    4         ascii  APA@
153 0x00001414 0x00001414   5    5         ascii  @Q@A@
154 0x0000141c 0x0000141c  20   21         ibm037 ABAaDíDÁGHeDíHeDÁHµD
155 0x00001432 0x00001432  17   18         ibm037 GFHfDÁHdDíGgêímD\a
156 0x00001455 0x00001455  17   18         ibm037 HIfEFDÁâÁDíHdDÍmD
157 0x00001486 0x00001486   5    6         ibm037 DFIfä
158 0x0000149f 0x0000149f   6    7         ibm037 àFGHfD
159 0x000014ac 0x000014ac   5    6         ibm037 GHIfD
160 0x000014ec 0x000014ec  12   12         ibm037 GFGFHagDEí»D
161 0x00001507 0x00001507  15   16         ibm037 GFEáCGEFGFHbpD\n
162 0x0000151a 0x0000151a   4    5         ibm037 HjpD
163 0x00001520 0x00001520   5    6         ibm037 GHkpä
164 0x0000153a 0x0000153a  16   17         ibm037 GEíDáHdCáGF«gDáG
165 0x0000161c 0x0000161c  18   19         ascii  Cavern of Malicia\t
```

## Function Disassembly

### Function 0x00000001
```asm
┌ fcn.00000001(int16_t arg1, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           0000:0001      sbb   word [bx + si], ax                    ; arg3
│           0000:0003      add   byte [bx + di], ch                    ; arg3
│           0000:0005      salc
│           0000:0006      lock  add byte [di - 0x2b], dl
│           0000:000a      pop   bp
│           ; DATA XREF from fcn.00000001 @ +0x1f4
│           0000:000b      aad   0x5f
│           0000:000d      aad   0x7d
│           0000:000f      aad   0xc7
│           0000:0011      aad   0x14
│           0000:0013      salc
│           0000:0014      salc
│           0000:0016      add   word [bp + si], bx                    ; arg3
│           0000:0018      add   byte [bx + si], dl                    ; arg3
│           0000:001a      or    al, byte [bx + si]                    ; arg3
│           0000:001c      add   byte [di - 0x2b], dl
│           0000:001f      xchg  sp, ax                                ; arg1
└           0000:0021      inc   bp
```
