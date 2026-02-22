# ENEMY_BEHAVIOR - Analysis

**Source:** `chunk_22.bin`  
**Size:** 6.9 KB  
**Functions:** 1  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    1 51           fcn.00000000
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------
  0 0x0000001c 0x0000001c  43   44         ibm037 P5OaDHñògEÑHògEñöaóhEIöhCñôöófaDHñògDßåòófE
  1 0x00000088 0x00000088  27   28         ibm037 ïIöeaEHòiDãßògEñôöaógEòiDïô
  2 0x000000a4 0x000000a4  25   26         ibm037 öódaEHIöhDHÑôòfEHñöiEòiDï
  3 0x000000be 0x000000be   8    9         ibm037 öbNcaEHI
  4 0x000000c7 0x000000c7  17   18         ibm037 GòfEH`òfEHñöiFöiD
  5 0x000000d9 0x000000d9  11   12         ibm037 åôöóaOcaEHI
  6 0x000000f8 0x000000f8  45   46         ibm037 öaPcaEHIöCöóeE`HòfEßåôò   BA   ABaEÅôöaQcaDHç
  7 0x00000136 0x00000136   9   10         ibm037 ôöaRcaDHI
  8 0x00000173 0x00000173   4    5         ibm037 aDHI
  9 0x0000018e 0x0000018e  13   14         ibm037 ïãòeaDHIôògEå
 10 0x000001c5 0x000001c5  20   21         ibm037 öóeaFôòiFE`òfEÑòóhED
 11 0x000002e5 0x000002e5  13   14         ibm037 ódFôöieCDògEå
 12 0x00000316 0x00000316  89   90         ibm037 ôòAB  &BAB-eëòfEßòóhDñöiDßöjeëöfEßHöhEßöhDñGò«CDòddCäIòfDßHöhEñòiDñHò«ëòcdäçòfDñåòhEßòógE
 13 0x000003a0 0x000003a0  10   11         ibm037 òhEöCHGöiD
 14 0x0000042c 0x0000042c  24   25         ibm037 `òfEÑGöhEGödbEIïIöfDÑòhE
 15 0x0000046e 0x0000046e  11   12         ibm037 òócbEHìògEH
 16 0x00000489 0x00000489  21   22         ibm037 òdbDHÇòfEïñògEÑHòfDßå
 17 0x000004a4 0x000004a4  33   34         ibm037 òócbDHIHIògEßòiE`ôòeEñåñögDñòcbDï
 18 0x000004d6 0x000004d6  16   17         ibm037 öFßögDôödaCôIHIö
 19 0x00000517 0x00000517  31   32         ibm037 eFöB-BABø -B&B  aDßöfDñGçaôIôIå
 20 0x000005f3 0x000005f3   8    9         ibm037 öddCöiDH
 21 0x00000655 0x00000655  26   27         ibm037 ñôöfEGòddDÑöeDßòeCöiDßöódD
 22 0x00000682 0x00000682  14   15         ibm037 öhDßöeDHò±dEHG
 23 0x000006af 0x000006af  10   11         ibm037 åfEHöaófEH
 24 0x000006d0 0x000006d0  40   41         ibm037 öhEHñöeDHö±dEÑôòdEßòeEñöaóeEHñòeDöó±dEåG
 25 0x0000070d 0x0000070d  12   13         ibm037 dEHñöfEßòeEH
 26 0x00000793 0x00000793  19   20         ibm037 HGHöeDßòeDñHöeC`ödE
 27 0x000007c5 0x000007c5   8    9         ibm037 òhDöedEH
 28 0x00000818 0x00000818  28   29         ibm037 ögDñòaóeDñöcdEHöaófDñòfEñGÑG
 29 0x0000083e 0x0000083e  10   11         ibm037 HñöadFòiDH
 30 0x00000986 0x00000986  25   26         ibm037 åòfEñòhDòeEHGö BABøaEñö±D
 31 0x000009f2 0x000009f2   4    4         ascii  A`AP
 32 0x00000a9b 0x00000a9b  13   14         ibm037 ôòFñHñGDòifDG
 33 0x00000b0e 0x00000b0e  33   34         ibm037 GögDÑGHöjFöaKLMIHñöafEÑödDåòófDñH
 34 0x00000b30 0x00000b30  28   29         ibm037 IöB-B&B-gKLMIßGòfFßöeDHòhDñH
 35 0x00000b4d 0x00000b4d  12   13         ibm037 IönKLMIÑöòfE
 36 0x00000b62 0x00000b62  21   22         ibm037 HñHòeCÇöaóhKLMHßHGòfE
 37 0x00000b88 0x00000b88   7    8         ibm037 KLMHñGH
 38 0x00000ba0 0x00000ba0  12   13         ibm037 eF!çHòhKLMH`
 39 0x00000bc4 0x00000bc4  11   12         ibm037 ögKLMHÑHò±E
 40 0x00000bfc 0x00000bfc  42   43         ibm037 HñögKLMßHñö±EGñòóeEñIòhKLMßôögKLMßHñhCöfEå
 41 0x00000c27 0x00000c27  11   12         ibm037 öfEñçògKLMH
 42 0x00000c35 0x00000c35   7    8         ibm037 ögKLMñG
 43 0x00000c4c 0x00000c4c  29   30         ibm037 DçògKLMHñöbóeKLMÑHöhEñödFHöhD
 44 0x00000c6a 0x00000c6a  16   17         ibm037 ìògKLMHßö«FßHòhE
 45 0x00000d8e 0x00000d8e  13   14         ibm037 òqEIHGòógEåñå
 46 0x00000e59 0x00000e59  15   16         ibm037 òiDHöóbfDIôòfDH
 47 0x00000e91 0x00000e91  12   13         ibm037 öaóadCçHògEH
 48 0x00000eae 0x00000eae  21   22         ibm037 GöadDIåGöfE¢GòeDò»EñH
 49 0x00000ef4 0x00000ef4  11   12         ibm037 òFGödDIòóiD
 50 0x00000f59 0x00000f59  17   18         ibm037 òdDßögEñòbdEHöiEå
 51 0x00000f7f 0x00000f7f  22   23         ibm037 öcdEIòbófEåöóeEIGçòófE
 52 0x00000f96 0x00000f96  28   29         ibm037 öócDßögEHöcdEìògEñöfEIHIHògE
 53 0x00000fb3 0x00000fb3  29   30         ibm037 ödDñHGòfEñòbdEìògEFGöfEåçòófE
 54 0x00000fd7 0x00000fd7  32   33         ibm037 ögEñHöadEIHôögFGögDìGIòfFòeDåöhE
 55 0x00000ff8 0x00000ff8  27   28         ibm037 öcdEHIòkDÌöòðDñöhEñòbdEçòkD
 56 0x0000104b 0x0000104b  21   22         ibm037 òbdEçò  -  B BAaDIåGç
 57 0x00001073 0x00001073   4    4         utf8   GHGI
 58 0x0000107e 0x0000107e  16   17         ibm037 EñHöadDçòkDIHIåI
 59 0x00001095 0x00001095  32   33         ibm037 òdDHñHögEñöbdDçòójDIHIåIñHñåödDH
 60 0x000010b6 0x000010b6  25   26         ibm037 HöógDñòbdDIHIòjEIÅIÑåòeDH
 61 0x000010f6 0x000010f6  16   17         ibm037 öcdDHÇåöýEIHçHIH
 62 0x00001107 0x00001107  43   44         ibm037 öhCDIßôöfDñòbdD\t\tãöhEçGìñòaófäIñòaófDñHöadD
 63 0x0000114f 0x0000114f  37   38         ibm037 ìHçöcCIHÌHGògÄßögDñòbdDç\a\bGöCHçåÌHIHç
 64 0x000011a7 0x000011a7   8    8         utf8   \bhWHGHGh
 65 0x000011bc 0x000011bc   5    5         ascii  X\v\bXW
 66 0x000011f1 0x000011f1  17   18         ibm037 IHIHIHIåIHGIHçöhë
 67 0x00001205 0x00001205  77   78         ibm037 DöóiEHöcdEç\a\bìHIHIHÌHçòhëñäò«DñôòadEåIÅIÏçïÌHìöófÄñDòaóhDñòbdEHç\a\bìHIHçbÅçògä
 68 0x000012b1 0x000012b1  21   22         ibm037 òadEIåGIôHEIÅãöeDIHìH
 69 0x00001312 0x00001312  10   11         ibm037 ögDHIHGògD
 70 0x0000131e 0x0000131e  15   16         ibm037 òfE`òdEòeEDHòbd
 71 0x00001335 0x00001335  22   23         ibm037 GöfEIåGIògEÑöeEòeEDöcd
 72 0x00001456 0x00001456   4    4         utf8   \a\nGi
 73 0x0000148b 0x0000148b  24   25         ibm037 HÑåôöFÑöhDGIHIHGåîòÅòhEì
 74 0x000014d3 0x000014d3  27   28         ibm037 GödEGïåñòhEIHIòógEÑögDñHögE
 75 0x00001513 0x00001513   8    9         ibm037 öbófEHGI
 76 0x00001566 0x00001566   8    9         ibm037 HögFEHDI
 77 0x0000157f 0x0000157f  16   17         ibm037 öfDñöhFFDIñògDçG
 78 0x0000159f 0x0000159f  17   18         ibm037 åöhaDIHòhIåôòhFÑH
 79 0x000015b1 0x000015b1  35   36         ibm037 öeDñôögDïiaDIòaógDHIòaóhDñåöfEåñòfD
 80 0x000015d5 0x000015d5   6    7         ibm037 GöiaDI
 81 0x00001601 0x00001601  11   12         ibm037 öófEHñömaDI
 82 0x00001617 0x00001617  20   21         ibm037 .aóeFÑölaDIñögEìGòhä
 83 0x000016c4 0x000016c4  40   41         ibm037 ögDHñHòkaEHöiEìòiDHñöhFÑôòøBABøB&aEåöhEì
 84 0x00001735 0x00001735  22   23         ascii  ,Danger!!/ Don\t open/
 85 0x0000174c 0x0000174c  14   14         ascii  the box ahead.
 86 0x00001822 0x00001822  18   19         ascii  Cavern of Peligro\v
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0000      mov   dh, 0x1b
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           0000:0004      das
│           0000:0005      fsub  st(0)
│           0000:0007      add   ch, dh
│           0000:0009      salc
│           0000:000a      push  es
│           ; DATA XREF from fcn.00000000 @ +0x11b9
│           0000:000b      xlatb
│           0000:000c      or    bh, dl
│           0000:000e      push  di
│           0000:000f      xlatb
│           0000:0010      mov   ax, word [0x1ad7]                     ; [0x1ad7:2]=0xb000
│           0000:0013      fdiv  dword [si]
│           ; DATA XREF from fcn.00000000 @ +0x179b
│           0000:0015      fadd  dword [bp + si]
│           0000:0017      stosw word es:[di], ax
│           0000:0018      add   byte [bx], dh                         ; arg3
│           0000:001a      or    ch, byte [di]
│           0000:001c      xlatb
│           0000:001d      cmc
│           0000:001e      salc
│           ; DATA XREFS from fcn.00000000 @ +0x19e8, +0x19f3
│           0000:001f      add   sp, 0x49c8
│           0000:0023      int   0x87
│           ; DATA XREFS from fcn.00000000 @ +0x19f8, +0x1a03
│           0000:0025      lds   bp, [bx + di - 0x38]
│           0000:0028      int   0x87
│           0000:002a      lds   cx, [bx + di - 0x34]
│           0000:002d      or    si, 0xc588
│           0000:0031      leave
└           0000:0032      int3
```
