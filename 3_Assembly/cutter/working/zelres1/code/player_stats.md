# PLAYER_STATS - Analysis

**Source:** `chunk_04.bin`  
**Size:** 8.7 KB  
**Functions:** 22  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    8 416  -> 136  fcn.00000000
0x000001a0   13 152          fcn.000001a0
0x0000035c    1 33           fcn.0000035c
0x000005b3    5 35           fcn.000005b3
0x000005d6    5 35           fcn.000005d6
0x000005f9    7 75           fcn.000005f9
0x0000076c    8 97           fcn.0000076c
0x0000099f    7 114          fcn.0000099f
0x00000a11    7 55           fcn.00000a11
0x00000ce0    9 111          fcn.00000ce0
0x00000dbe    1 19           fcn.00000dbe
0x00000dd1    4 44           fcn.00000dd1
0x00000dfd    1 13           fcn.00000dfd
0x00000f00    3 48           fcn.00000f00
0x00000f30    7 124          fcn.00000f30
0x00000fac    7 133          fcn.00000fac
0x00001031    1 12           fcn.00001031
0x0000107b   11 162          fcn.0000107b
0x0000115b    5 91           fcn.0000115b
0x00001ae8    3 86           fcn.00001ae8
0x00001b3e    1 80           fcn.00001b3e
0x00001be0    1 32           fcn.00001be0
```

## Strings
```
nth      paddr      vaddr len size section type   string                                       
-----------------------------------------------------------------------------------------------
  0 0x0000000f 0x0000000f   5    5         ascii  K\f3y3
  1 0x0000002b 0x0000002b   5    6         ascii  >\>9@
  2 0x00000035 0x00000035   4    5         ascii  KPSQ
  3 0x00000185 0x00000185   4    4         ascii  L42.
  4 0x000001bc 0x000001bc   4    4         ascii  QVW.
  5 0x00000221 0x00000221   4    4         ascii  _^Y.
  6 0x0000023e 0x0000023e   5    5         ascii  t.VWQ
  7 0x000002fd 0x000002fd   5    7         utf8   Y_À \b blocks=Basic Latin,Latin-1 Supplement
  8 0x0000032a 0x0000032a   5    5         ascii  t+VW2
  9 0x0000049c 0x0000049c   8    9         ibm037 {¡¡uuaBØ
 10 0x000004b9 0x000004b9   4    5         ascii  D\r:D
 11 0x000005b3 0x000005b3   4    4         ascii  VQVQ
 12 0x000005d6 0x000005d6   4    4         ascii  WQWQ
 13 0x000007e9 0x000007e9   5    6         ibm037 3uaF>
 14 0x00000a54 0x00000a54   4    5         ibm037 dddd
 15 0x00000a5c 0x00000a5c   4    5         ibm037 dddM
 16 0x00000a84 0x00000a84   4    4         ascii  !!!!
 17 0x00000a8c 0x00000a8c   4    4         ascii  !!!!
 18 0x00000a9c 0x00000a9c   4    5         ibm037 Mddd
 19 0x00000aa4 0x00000aa4   4    5         ibm037 dddd
 20 0x00000acc 0x00000acc   4    4         ascii  +!!!
 21 0x00000ad4 0x00000ad4   4    4         ascii  !!!!
 22 0x00000af0 0x00000af0   4    4         ascii  \a\a\a\a
 23 0x00000b80 0x00000b80   4    5         ascii  \n\t\b\a
 24 0x00000be3 0x00000be3  15   16         ascii  ;\r:\f9\v8\n7\t6\b5\a4
 25 0x00000c08 0x00000c08   4    4         ascii  \fLSQ
 26 0x00000cc3 0x00000cc3   4    4         ascii  ^[Y.
 27 0x00000cf4 0x00000cf4   4    4         ascii  \nLrO
 28 0x00000d02 0x00000d02   5    5         ascii  \nLsA.
 29 0x00000d24 0x00000d24   6    7         ascii  .8>\tLr
 30 0x00000d3a 0x00000d3a   5    5         ascii  OOGG.
 31 0x00000eb3 0x00000eb3   4    5         ascii  r\n=q
 32 0x00000ee4 0x00000ee4   4    5         ascii  r\n=q
 33 0x000010cc 0x000010cc   5    5         ibm037 ¿STC¾
 34 0x000011ec 0x000011ec   6    7         ascii  \a\a\a\a\b\a
 35 0x000011f4 0x000011f4   4    5         ascii  \a\a\a\a
 36 0x000011fc 0x000011fc   4    5         ascii  \t\t\t\t
 37 0x00001204 0x00001204   4    5         ascii  \t\t\t\t
 38 0x0000120a 0x0000120a   6    7         ascii  \f\r\f\f\f\f
 39 0x00001211 0x00001211   7    8         ascii  \f\f\r\f\f\f\f
 40 0x0000121a 0x0000121a   6    7         ascii  \r\r\r\r\r\r
 41 0x00001221 0x00001221  11   12         ascii  \r\r\r\r\r\r\r\a\t\f\r
 42 0x00001238 0x00001238   4    5         ascii  \a\t\f\r
 43 0x00001248 0x00001248   4    5         ascii  \a\t\f\r
 44 0x00001258 0x00001258   4    5         ascii  \a\t\f\r
 45 0x0000126c 0x0000126c   6    7         ascii  \a\a\a\a\b\a
 46 0x00001274 0x00001274   8    9         ascii  \a\a\a\a\a\t\f\r
 47 0x0000128a 0x0000128a   6    7         ascii  \f\r\f\f\f\f
 48 0x00001291 0x00001291   7    8         ascii  \f\f\r\f\f\f\f
 49 0x0000129a 0x0000129a   6    7         ascii  \r\r\r\r\r\r
 50 0x000012a1 0x000012a1  11   12         ascii  \r\r\r\r\r\r\r\a\t\f\r
 51 0x000012b8 0x000012b8   4    5         ascii  \a\t\f\r
 52 0x000012c8 0x000012c8   4    5         ascii  \a\t\f\r
 53 0x000012d8 0x000012d8   4    5         ascii  \a\t\f\r
 54 0x00001311 0x00001311   5    6         ascii  \f\f\r\r\r
 55 0x00001321 0x00001321   5    6         ascii  \r\r\r\r\r
 56 0x00001341 0x00001341   7    8         ascii  \n\r\r\n\v\n\v
 57 0x00001358 0x00001358   6    7         ascii  \a\t\f\r\a\v
 58 0x00001362 0x00001362   4    5         ascii  \f\r\n\v
 59 0x00001377 0x00001377   7    8         ascii  \a\a\t\f\r\a\n
 60 0x00001382 0x00001382   4    5         ascii  \f\r\n\n
 61 0x000013a1 0x000013a1   5    6         ascii  \r\r\r\r\r
 62 0x000013b3 0x000013b3   5    6         ascii  \r\r\n\n\n
 63 0x000013c1 0x000013c1   7    8         ascii  \n\r\r\n\v\n\v
 64 0x000013d8 0x000013d8   6    7         ascii  \a\t\f\r\a\v
 65 0x000013e2 0x000013e2   4    5         ascii  \f\r\n\v
 66 0x0000150a 0x0000150a   4    5         ascii  \f\r\r\r
 67 0x00001512 0x00001512   4    5         ascii  \f\r\r\r
 68 0x0000151a 0x0000151a   6    7         ascii  \r\r\r\r\f\r
 69 0x00001522 0x00001522   6    7         ascii  \r\r\r\r\f\r
 70 0x00001529 0x00001529   7    8         ascii  \t\r\r\v\v\n\v
 71 0x00001531 0x00001531   7    8         ascii  \t\r\r\v\v\n\v
 72 0x00001539 0x00001539   7    8         ascii  \t\r\r\v\v\n\v
 73 0x00001541 0x00001541   7    8         ascii  \t\r\r\v\v\n\v
 74 0x0000155a 0x0000155a   4    5         ascii  \f\r\v\v
 75 0x00001562 0x00001562   4    5         ascii  \f\r\v\v
 76 0x0000158a 0x0000158a   4    5         ascii  \f\r\r\r
 77 0x00001592 0x00001592   4    5         ascii  \f\r\r\r
 78 0x0000159a 0x0000159a   6    7         ascii  \r\r\r\r\f\r
 79 0x000015a2 0x000015a2   6    7         ascii  \r\r\r\r\f\r
 80 0x000015a9 0x000015a9   7    8         ascii  \t\r\r\v\v\n\v
 81 0x000015b1 0x000015b1   7    8         ascii  \t\r\r\v\v\n\v
 82 0x000015b9 0x000015b9   7    8         ascii  \t\r\r\v\v\n\v
 83 0x000015c1 0x000015c1   7    8         ascii  \t\r\r\v\v\n\v
 84 0x000015da 0x000015da   4    5         ascii  \f\r\v\v
 85 0x000015e2 0x000015e2   4    5         ascii  \f\r\v\v
 86 0x0000161b 0x0000161b   5    6         ascii  \v\n\v\a\v
 87 0x0000162a 0x0000162a   4    5         ascii  \b\n\n\n
 88 0x0000163b 0x0000163b   5    6         ascii  \v\n\v\a\v
 89 0x0000165a 0x0000165a   4    5         ascii  \f\v\a\v
 90 0x00001711 0x00001711   5    6         ascii  \f\f\r\r\r
 91 0x00001721 0x00001721   5    6         ascii  \r\r\r\r\r
 92 0x00001741 0x00001741   7    8         ascii  \n\r\r\n\v\n\v
 93 0x00001758 0x00001758   6    7         ascii  \a\t\f\r\a\v
 94 0x00001762 0x00001762   4    5         ascii  \f\r\n\v
 95 0x00001777 0x00001777   7    8         ascii  \a\a\t\f\r\a\n
 96 0x00001782 0x00001782   4    5         ascii  \f\r\n\n
 97 0x000017a1 0x000017a1   5    6         ascii  \r\r\r\r\r
 98 0x000017b3 0x000017b3   5    6         ascii  \r\r\n\n\n
 99 0x000017c1 0x000017c1   7    8         ascii  \n\r\r\n\v\n\v
100 0x000017d8 0x000017d8   6    7         ascii  \a\t\f\r\a\v
101 0x000017e2 0x000017e2   4    5         ascii  \f\r\n\v
102 0x00001812 0x00001812   4    5         ascii  \f\r\b\b
103 0x0000181a 0x0000181a   6    7         ascii  \r\r\b\b\f\r
104 0x00001822 0x00001822   6    7         ascii  \r\r\b\b\f\r
105 0x00001839 0x00001839   7    8         ascii  \t\b\b\v\v\n\v
106 0x00001841 0x00001841   7    8         ascii  \t\b\b\v\v\n\v
107 0x0000185a 0x0000185a   4    5         ascii  \f\r\n\v
108 0x00001862 0x00001862   4    5         ascii  \f\r\v\v
109 0x00001892 0x00001892   4    5         ascii  \f\r\b\b
110 0x0000189a 0x0000189a   6    7         ascii  \r\r\b\b\f\r
111 0x000018a2 0x000018a2   6    7         ascii  \r\r\b\b\f\r
112 0x000018a9 0x000018a9   7    8         ascii  \t\b\b\n\v\n\v
113 0x000018b1 0x000018b1   7    8         ascii  \t\b\b\v\v\n\v
114 0x000018b9 0x000018b9   7    8         ascii  \t\b\b\v\v\n\v
115 0x000018c1 0x000018c1   7    8         ascii  \t\b\b\v\v\n\v
116 0x000018da 0x000018da   4    5         ascii  \f\r\n\v
117 0x000018e2 0x000018e2   4    5         ascii  \f\r\v\v
118 0x00001911 0x00001911   5    6         ascii  \f\f\b\r\r
119 0x00001941 0x00001941   7    8         ascii  \n\b\b\n\v\n\v
120 0x00001958 0x00001958   6    7         ascii  \a\t\f\n\a\v
121 0x00001962 0x00001962   4    5         ascii  \f\r\n\v
122 0x00001977 0x00001977   4    5         ascii  \a\a\t\f
123 0x00001982 0x00001982   4    5         ascii  \f\r\n\n
124 0x000019a1 0x000019a1   5    6         ascii  \r\r\b\r\r
125 0x000019b3 0x000019b3   5    6         ascii  \r\r\n\n\n
126 0x000019c1 0x000019c1   7    8         ascii  \n\b\b\n\v\n\v
127 0x000019d8 0x000019d8   6    7         ascii  \a\t\f\n\a\v
128 0x000019e2 0x000019e2   4    5         ascii  \f\r\n\v
129 0x00001a1b 0x00001a1b   5    6         ascii  \f\r\f\a\f
130 0x00001a2a 0x00001a2a   4    5         ascii  \b\r\n\r
131 0x00001a3b 0x00001a3b   5    6         ascii  \f\r\f\a\f
132 0x00001a5a 0x00001a5a   4    5         ascii  \f\f\a\f
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg2, int16_t arg3, int16_t arg4, int16_t arg_ch);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           ; arg int16_t arg_ch @ stack + 0xc
│           0000:0000      cdq
│           0000:0001      and   al, byte [bx + si]                    ; arg3
│           ; DATA XREF from fcn.0000076c @ 0x7b0
│           0000:0003      add   ah, bh
│           0000:0005      dec   bx                                    ; arg3
│           0000:0006      xor   dh, byte [bx + si]                    ; arg3
│           0000:0008      xor   byte [bx + si], 0xd4                  ; [0xd4:1]=0 ; arg3
│           ; DATA XREFS from fcn.00000f30 @ 0xf30, 0xf8b
│           0000:000b      xor   dh, dl
│           ; XREFS(40)
│           0000:000d      inc   cx                                    ; arg4
│           ; DATA XREF from fcn.00000a11 @ +0x1d0
│           ; DATA XREFS from fcn.00000fac @ 0xfe3, 0xffd
│           ; DATA XREFS from fcn.0000115b @ +0x6f0, +0x902
│           0000:000e  ~   mov   cl, byte [bp + di + 0xc]
│           ; XREFS: DATA 0x0000024e  DATA 0x00000262  DATA 0x00000288  
│           ; XREFS: DATA 0x000002b1  DATA 0x000002bc  DATA 0x000002da  
│           ; XREFS: DATA 0x000002ea  DATA 0x00000367  DATA 0x00000377  
│           ; XREFS: DATA 0x00000515  DATA 0x00000561  DATA 0x0000059a  
│           ; XREFS: DATA 0x000005ad  DATA 0x00000d90  DATA 0x00000dc1  
│           ; XREFS: DATA 0x00000dd6  DATA 0x0000165d  DATA 0x00001b61  
│           ; XREFS: DATA 0x00001b88  
│           ;-- str.K_3y3:
..
│           ; DATA XREFS from fcn.0000076c @ +0xb2, +0x10b
│           0000:0011     .string "K\f3y3" ; len=5                     ; arg3
│           ; DATA XREF from fcn.0000107b @ 0x1091
│           ; DATA XREF from fcn.0000115b @ 0x116c
│           0000:0014      push  word [bp + di]
│           ; DATA XREFS from fcn.00000dfd @ +0xb3, +0xe4
│       ┌─< 0000:0016      jg    0x4c
│       │   ; XREFS: DATA 0x0000093c  DATA 0x00000957  DATA 0x0000096e  
│       │   ; XREFS: DATA 0x00000989  DATA 0x00000f57  DATA 0x00000f85  
│       │   ; XREFS: DATA 0x00001034  
│       │   0000:0018      pushaw
│       │   ; DATA XREF from fcn.000005f9 @ +0x154
│       │   0000:0019      mov   ah, 0x36                              ; '6'
│       │   ; DATA XREF from fcn.0000107b @ 0x10a3
│       │   0000:001c      or    byte [bx], dh                         ; arg3
│       │   0000:001e      in    al, dx
│       │   0000:001f      xor   byte [bx + 0x37], al                  ; arg3
│       │   ; DATA XREF from fcn.000005f9 @ +0x158
│       │   ; DATA XREFS from fcn.0000076c @ +0x6d, +0x7a, +0x83
│       │   0000:0022      leave
│       │   ; DATA XREF from fcn.0000107b @ 0x109b
│       │   0000:0023      aaa
│       │   0000:0024      ret
..
        │   ; DATA XREF from fcn.0000076c @ 0x7ba
        │   ; DATA XREF from fcn.00000fac @ 0xfdc
        │   ; DATA XREFS from fcn.00001031 @ +0x1f, +0x2d
        │   ; DATA XREFS from fcn.0000107b @ +0xb5, +0xc3
        │   ; DATA XREF from str.K_3y3 @ +0x23
        │   ; DATA XREF from fcn.0000076c @ +0x8b
        │   ; DATA XREFS from fcn.00000dfd @ +0x8a, +0x94
        │   ; DATA XREF from str.K_3y3 @ +0x18
        │   ; DATA XREF from fcn.0000035c @ +0x1e3
│       └─> 0000:004c      add   byte [bx + si], al                    ; arg3
│           0000:004e      mov   word cs:[0x4c01], 0
│           0000:0055      mov   word cs:[0x4c03], 0
│           0000:005c      mov   cx, bp
│           ; DATA XREF from fcn.0000115b @ 0x1177
│           0000:005e      shr   cx, 1
│       ┌─> 0000:0060      mov   ax, word ds:[bp + si]
│       ╎   0000:0063      xchg  al, ah
│       ╎   0000:0065      mov   word cs:[0x4c05], ax
│       ╎   0000:0069      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:006a      xchg  al, ah
│       ╎   0000:006c      mov   word cs:[0x4bff], ax
│       ╎   ; DATA XREF from fcn.00000fac @ 0xfeb
│       ╎   0000:0070      call  fcn.00001ae8                          ; fcn.00001ae8
│       ╎   0000:0073      stosw word es:[di], ax
│       ╎   0000:0074      call  fcn.00001ae8                          ; fcn.00001ae8
│       ╎   0000:0077      stosw word es:[di], ax
│       └─< 0000:0078      loop  0x60
│           0000:007a      pop   ds
│           0000:007b      pop   cx
│           0000:007c      pop   bx
│           0000:007d      pop   ax
│           0000:007e      mov   di, 0
│       ┌─< 0000:0081      jmp   0x175
..
        │   ; DATA XREF from fcn.0000076c @ +0x102
       ╎│   ; DATA XREF from fcn.00001b3e @ +0x62
       ││   ; XREFS: DATA 0x00000254  DATA 0x0000025e  DATA 0x0000027e  
       ││   ; XREFS: DATA 0x000002ac  DATA 0x000002c0  DATA 0x000002e2  
       ││   ; XREFS: DATA 0x000002f2  DATA 0x00000360  DATA 0x00000370  
       ││   ; XREFS: DATA 0x00000d99  DATA 0x00000dcc  DATA 0x00000de1  
       ││   ; XREFS: DATA 0x00001b4e  DATA 0x00001b75  
       ││   ; DATA XREFS from fcn.00000000 @ 0x15b, 0x195
       ││   ; DATA XREF from fcn.000001a0 @ +0x180
       ││   ; DATA XREF from fcn.00000dbe @ 0xdc8
       ││   ; DATA XREF from fcn.00001031 @ 0x1032
       ││   ; DATA XREF from fcn.0000076c @ 0x79c
      │││   ; DATA XREF from fcn.0000076c @ 0x78b
│      ││   ; CODE XREF from fcn.00000000 @ 0x81
│      ││   ; CODE XREF from str.K_3y3 @ +0xc6
│      └└─> 0000:0175      push  ds
│           0000:0176      push  ax
│           0000:0177      push  es
│           0000:0178      push  di
│           0000:0179      call  fcn.00001be0                          ; fcn.00001be0
│           0000:017c      mov   di, ax
│           0000:017e      pop   si
│           0000:017f      pop   ds
│           ; DATA XREF from fcn.0000035c @ +0x145
│           0000:0180      pop   ax
│           0000:0181      mov   word cs:[0x4c0f], 0x3234              ; '42'
│                                                                      ; [0x3234:2]=0xffff
│           0000:0188      mov   byte cs:[0x4c0c], 0
│           0000:018e      or    al, al
│       ┌─< 0000:0190      jne   0x195
│       │   0000:0192      call  fcn.000001a0                          ; fcn.000001a0
│       └─> 0000:0195      mov   byte cs:[0x4c0c], 0xff                ; [0xff:1]=5
│           0000:019b      call  fcn.000001a0                          ; fcn.000001a0
│           0000:019e      pop   ds
└           0000:019f      ret
```

### Function 0x000001a0
```asm
; CALL XREFS from fcn.00000000 @ 0xdc, 0x158, 0x161, 0x192, 0x19b
┌ fcn.000001a0(int16_t arg3, int16_t arg4);
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:01a0      mov   byte cs:[0x4c0a], 0
│           0000:01a6      mov   ax, 0xb800
│           0000:01a9      mov   es, ax
│           0000:01ab      mov   bp, 8
│           ; CODE XREF from fcn.000001a0 @ 0x234
│       ┌─> 0000:01ae      mov   al, byte cs:[0x4c0a]
│       ╎   0000:01b2      mov   byte cs:[0x4c09], al
│       ╎   0000:01b6      mov   byte cs:[0xff1a], 0
│       ╎   0000:01bc      push  cx                                    ; arg4
│       ╎   0000:01bd      push  si
│       ╎   0000:01be      push  di
│      ┌──> 0000:01bf      mov   bl, byte cs:[0x4c09]
│      ╎╎   0000:01c4      and   bx, 7                                 ; arg3
│      ╎╎   0000:01c7      mov   bl, byte cs:[bx + 0x32fc]             ; arg3
│      ╎╎   0000:01cc      call  word cs:[0x4c0f]
│      ╎╎   0000:01d1      inc   byte cs:[0x4c09]
│      ╎╎   0000:01d6      mov   al, ch
│      ╎╎   0000:01d8      xor   ah, ah
│      ╎╎   0000:01da      add   ax, ax
│      ╎╎   0000:01dc      add   si, ax
│      ╎╎   0000:01de      add   di, 0x2000
│      ╎╎   0000:01e2      cmp   di, 0x8000
│     ┌───< 0000:01e6      jb    0x1ec
│     │╎╎   0000:01e8      add   di, 0x80a0
│     └───> 0000:01ec      dec   cl
│     ┌───< 0000:01ee      je    0x221
│     │╎╎   0000:01f0      mov   bl, byte cs:[0x4c09]
│     │╎╎   0000:01f5      and   bx, 7                                 ; arg3
│     │╎╎   0000:01f8      mov   bl, byte cs:[bx + 0x3304]             ; arg3
│     │╎╎   0000:01fd      call  word cs:[0x4c0f]
│     │╎╎   0000:0202      inc   byte cs:[0x4c09]
│     │╎╎   0000:0207      mov   al, ch
│     │╎╎   ; DATA XREF from fcn.0000115b @ +0x49f
│     │╎╎   0000:0209      xor   ah, ah
│     │╎╎   0000:020b      add   ax, ax
│     │╎╎   ; DATA XREFS from fcn.0000115b @ +0x24f, +0x64f
│     │╎╎   0000:020d      add   si, ax
│     │╎╎   0000:020f      add   di, 0x2000
│     │╎╎   0000:0213      cmp   di, 0x8000
│    ┌────< 0000:0217      jb    0x21d
│    ││╎╎   0000:0219      add   di, 0x80a0
│    └────> 0000:021d      dec   cl
│     │└──< 0000:021f      jne   0x1bf
│     └───> 0000:0221      pop   di
│       ╎   0000:0222      pop   si
│       ╎   0000:0223      pop   cx
│       ╎   0000:0224      inc   byte cs:[0x4c0a]
│      ┌──> 0000:0229      cmp   byte cs:[0xff1a], 0x14
│      └──< 0000:022f      jb    0x229
│       ╎   0000:0231      dec   bp
│      ┌──< 0000:0232      je    0x237
│      │└─< 0000:0234      jmp   0x1ae
└      └──> 0000:0237      ret
```

### Function 0x0000035c
```asm
; CALL XREFS from fcn.000001a0 @ +0x1a1, +0x1a7
┌ fcn.0000035c();
│           0000:035c      add   al, al
│           0000:035e      sbb   ah, ah
│           0000:0360      and   ah, 0xf0
│           0000:0363      add   al, al
│           0000:0365      sbb   dl, dl
│           0000:0367      and   dl, 0xf                               ; str.K_3y3 ; "K\f3y3\xff3\U0000007f4`6\xb46\b7\xec0G7\xc97\xc38\U00000001<K=\U00000006>\>9@\U00000019A\xb2A\xc4KPSQ\U0000001e\x8a\xc5\xf6\xe1\"
│           0000:036a      or    dl, ah
│           0000:036c      add   al, al
│           0000:036e      sbb   ah, ah
│           0000:0370      and   ah, 0xf0
│           0000:0373      add   al, al
│           0000:0375      sbb   dh, dh
│           0000:0377      and   dh, 0xf                               ; str.K_3y3 ; "K\f3y3\xff3\U0000007f4`6\xb46\b7\xec0G7\xc97\xc38\U00000001<K=\U00000006>\>9@\U00000019A\xb2A\xc4KPSQ\U0000001e\x8a\xc5\xf6\xe1\"
│           0000:037a      or    dh, ah
└           0000:037c      ret
```

### Function 0x000005b3
```asm
; CALL XREF from fcn.0000035c @ +0x1b3
┌ fcn.000005b3(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:05b3      push  si
│           0000:05b4      push  cx                                    ; arg4
│       ┌─> 0000:05b5      push  si
│       ╎   0000:05b6      push  cx                                    ; arg4
│       ╎   0000:05b7      mov   cl, ch
│       ╎   0000:05b9      xor   ch, ch
│       ╎   0000:05bb      add   cx, cx                                ; arg4
│       ╎   0000:05bd      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:05bf      pop   cx
│       ╎   0000:05c0      pop   si
│       ╎   0000:05c1      add   si, 0x2000
│       ╎   0000:05c5      cmp   si, 0x8000
│      ┌──< 0000:05c9      jb    0x5cf
│      │╎   0000:05cb      add   si, 0x80a0
│      └──> 0000:05cf      dec   cl
│       └─< 0000:05d1      jne   0x5b5
│           0000:05d3      pop   cx
│           0000:05d4      pop   si
└           0000:05d5      ret
```

### Function 0x000005d6
```asm
; CALL XREF from fcn.0000035c @ +0x238
┌ fcn.000005d6(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│           0000:05d6      push  di
│           0000:05d7      push  cx                                    ; arg4
│       ┌─> 0000:05d8      push  di
│       ╎   0000:05d9      push  cx                                    ; arg4
│       ╎   0000:05da      mov   cl, ch
│       ╎   0000:05dc      xor   ch, ch
│       ╎   0000:05de      add   cx, cx                                ; arg4
│       ╎   0000:05e0      rep   movsb byte es:[di], byte ptr [si]
│       ╎   0000:05e2      pop   cx
│       ╎   0000:05e3      pop   di
│       ╎   0000:05e4      add   di, 0x2000
│       ╎   0000:05e8      cmp   di, 0x8000
│      ┌──< 0000:05ec      jb    0x5f2
│      │╎   0000:05ee      add   di, 0x80a0
│      └──> 0000:05f2      dec   cl
│       └─< 0000:05f4      jne   0x5d8
│           0000:05f6      pop   cx
│           0000:05f7      pop   di
└           0000:05f8      ret
```

### Function 0x000005f9
```asm
; CALL XREF from fcn.0000035c @ +0x1ff
┌ fcn.000005f9(int16_t arg1, int16_t arg2, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg4 @ cx
│           0000:05f9      push  di
│           0000:05fa      push  cx                                    ; arg4
│           0000:05fb      mov   al, ch
│           0000:05fd      mul   cl
│           0000:05ff      mov   bx, ax                                ; arg1
│           0000:0601      mov   word cs:[0x4c05], 0
│           ; DATA XREFS from fcn.0000115b @ +0x5c1, +0x841
│       ┌─> 0000:0608      push  di
│       ╎   0000:0609      push  cx                                    ; arg4
│       ╎   0000:060a      mov   cl, ch
│       ╎   ; DATA XREF from fcn.0000115b @ +0x7ae
│       ╎   0000:060c      xor   ch, ch
│       ╎   ; XREFS: DATA 0x0000134d  DATA 0x000013cd  DATA 0x0000154d  
│       ╎   ; XREFS: DATA 0x000015cd  DATA 0x0000174d  DATA 0x000017cd  
│       ╎   ; XREFS: DATA 0x0000184d  DATA 0x000018cd  DATA 0x0000194d  
│       ╎   ; XREFS: DATA 0x000019c9  DATA 0x000019cd  
│      ┌──> 0000:060e      xor   al, al
│      ╎╎   0000:0610      mov   ah, byte [bx + si]
│      ╎╎   0000:0612      mov   word cs:[0x4c01], ax                  ; arg1
│      ╎╎   0000:0616      mov   ah, byte [si]
│      ╎╎   0000:0618      mov   word cs:[0x4bff], ax                  ; arg1
│      ╎╎   0000:061c      mov   word cs:[0x4c03], ax                  ; arg1
│      ╎╎   ; DATA XREF from fcn.000005f9 @ +0x4b
│      ╎╎   0000:0620      inc   si
│      ╎╎   0000:0621      push  bx
│      ╎╎   0000:0622      call  fcn.00001ae8                          ; fcn.00001ae8
│      ╎╎   0000:0625      pop   bx
│      ╎╎   0000:0626      or    word es:[di], ax
│      ╎╎   0000:0629      inc   di
│      ╎╎   0000:062a      inc   di
│      └──< 0000:062b      loop  0x60e
│       ╎   0000:062d      pop   cx
│       ╎   0000:062e      pop   di
│       ╎   0000:062f      add   di, 0x2000
│       ╎   0000:0633      cmp   di, 0x8000
│      ┌──< 0000:0637      jb    0x63d
│      │╎   0000:0639      add   di, 0x80a0
│      └──> 0000:063d      dec   cl
│       └─< 0000:063f      jne   0x608
│           0000:0641      pop   cx
│           0000:0642      pop   di
└           0000:0643      ret
```

### Function 0x0000076c
```asm
; CALL XREF from fcn.000005f9 @ +0x160
┌ fcn.0000076c(int16_t arg1, int16_t arg3, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:076c      mov   ds, word cs:[0xff2c]
│           0000:0771      mov   dx, cs
│           0000:0773      add   dx, 0x2000
│           0000:0777      mov   es, dx
│           0000:0779      xor   ah, ah
│           ; CODE XREF from fcn.0000076c @ 0x781
│       ┌─> 0000:077b      sub   al, 0x28
│      ┌──< 0000:077d      jb    0x783
│      │╎   0000:077f      inc   ah
│      │└─< 0000:0781      jmp   0x77b
│      └──> 0000:0783      add   al, 0x28
│           0000:0785      mov   cl, al
│           0000:0787      mov   al, ah
│           0000:0789      xor   ah, ah
│           0000:078b      mov   dx, 0x140
│           0000:078e      mul   dx
│           0000:0790      xor   ch, ch
│           0000:0792      add   ax, cx                                ; arg4
│           0000:0794      add   ax, 0x4000                            ; arg1
│           0000:0797      push  ax                                    ; arg1
│           0000:0798      mov   dx, bx                                ; arg3
│           0000:079a      xor   dh, dh
│           0000:079c      mov   ax, 0x110
│           0000:079f      mul   dx
│           0000:07a1      mov   dl, bh
│           0000:07a3      xor   dh, dh
│           0000:07a5      add   ax, dx
│           0000:07a7      add   ax, 0
│           0000:07aa      mov   di, ax
│           0000:07ac      pop   si
│           0000:07ad      mov   cx, 3
│       ┌─> 0000:07b0      push  cx
│       ╎   0000:07b1      push  di
│       ╎   0000:07b2      push  si
│       ╎   0000:07b3      mov   cx, 8
│      ┌──> 0000:07b6      movsb byte es:[di], byte ptr [si]
│      ╎╎   0000:07b7      add   di, 0x21
│      ╎╎   0000:07ba      add   si, 0x27
│      └──< 0000:07bd      loop  0x7b6
│       ╎   0000:07bf      pop   si
│       ╎   0000:07c0      pop   di
│       ╎   0000:07c1      add   di, 0x1a90
│       ╎   0000:07c5      add   si, 0x640
│       ╎   0000:07c9      pop   cx
│       └─< 0000:07ca      loop  0x7b0
└           0000:07cc      ret
```

### Function 0x0000099f
```asm
; XREFS: CALL 0x000008e9  CALL 0x000008fb  CALL 0x0000090b  
            ; XREFS: CALL 0x0000091d  CALL 0x0000093e  CALL 0x00000959  
            ; XREFS: CALL 0x00000970  CALL 0x0000098b  
┌ fcn.0000099f(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:099f      push  si
│           0000:09a0      dec   al
│           0000:09a2      xor   ah, ah
│           0000:09a4      add   ax, ax                                ; arg1
│           0000:09a6      add   ax, ax                                ; arg1
│           0000:09a8      add   ax, ax                                ; arg1
│           0000:09aa      add   ax, 0x3a44                            ; int16_t arg1
│           0000:09ad      mov   si, ax                                ; arg1
│           0000:09af      push  di
│           0000:09b0      mov   bh, byte cs:[0x4c09]
│           0000:09b5      call  fcn.00000a11                          ; fcn.00000a11
│           0000:09b8      call  fcn.00001ae8                          ; fcn.00001ae8
│           0000:09bb      stosw word es:[di], ax
│           0000:09bc      add   di, 0x1ffe
│           0000:09c0      cmp   di, 0x8000
│       ┌─< 0000:09c4      jb    0x9ca
│       │   0000:09c6      add   di, 0x80a0
│       └─> 0000:09ca      mov   bh, byte cs:[0x4c09]
│           0000:09cf      ror   bh, 1
│           0000:09d1      call  fcn.00000a11                          ; fcn.00000a11
│           0000:09d4      call  fcn.00001ae8                          ; fcn.00001ae8
│           0000:09d7      stosw word es:[di], ax
│           0000:09d8      add   di, 0x1ffe
│           0000:09dc      cmp   di, 0x8000
│       ┌─< 0000:09e0      jb    0x9e6
│       │   0000:09e2      add   di, 0x80a0
│       └─> 0000:09e6      mov   bh, byte cs:[0x4c09]
│           0000:09eb      call  fcn.00000a11                          ; fcn.00000a11
│           0000:09ee      call  fcn.00001ae8                          ; fcn.00001ae8
│           0000:09f1      stosw word es:[di], ax
│           0000:09f2      add   di, 0x1ffe
│           0000:09f6      cmp   di, 0x8000
│       ┌─< 0000:09fa      jb    0xa00
│       │   0000:09fc      add   di, 0x80a0
│       └─> 0000:0a00      mov   bh, byte cs:[0x4c09]
│           0000:0a05      ror   bh, 1
│           ; DATA XREFS from fcn.0000115b @ +0x220, +0x620
│           0000:0a07      call  fcn.00000a11                          ; fcn.00000a11
│           0000:0a0a      call  fcn.00001ae8                          ; fcn.00001ae8
│           ; DATA XREFS from fcn.0000115b @ +0x1e7, +0x258, +0x658, +0x858
│           0000:0a0d      stosw word es:[di], ax
│           0000:0a0e      pop   di
│           0000:0a0f      pop   si
└           0000:0a10      ret
```

### Function 0x00000a11
```asm
; CALL XREFS from fcn.0000099f @ 0x9b5, 0x9d1, 0x9eb, 0xa07
┌ fcn.00000a11(int16_t arg1);
│           ; arg int16_t arg1 @ ax
│           0000:0a11      mov   word [0x4bff], 0                      ; [0x4bff:2]=0xffff
│           0000:0a17      mov   word [0x4c05], 0                      ; [0x4c05:2]=0xffff
│           0000:0a1d      mov   ah, byte [si + 4]
│           0000:0a20      mov   word [0x4c03], ax                     ; [0x4c03:2]=0xffff ; arg1
│           0000:0a23      mov   word [0x4c01], ax                     ; [0x4c01:2]=0xffff ; arg1
│           0000:0a26      lodsb al, byte [si]
│           0000:0a27      and   al, bh
│           0000:0a29      mov   ah, al
│           0000:0a2b      mov   al, byte [0x4c0a]                     ; [0x4c0a:1]=255
│           0000:0a2e      shr   al, 1
│       ┌─< 0000:0a30      jae   0xa36
│       │   0000:0a32      or    word [0x4bff], ax                     ; [0x4bff:2]=0xffff ; arg1
│       └─> 0000:0a36      shr   al, 1
│       ┌─< 0000:0a38      jae   0xa3e
│       │   0000:0a3a      or    word [0x4c01], ax                     ; [0x4c01:2]=0xffff ; arg1
│       └─> 0000:0a3e      shr   al, 1
│       ┌─< 0000:0a40      jb    0xa43
│       │   0000:0a42      ret
│       └─> 0000:0a43      or    word [0x4c03], ax                     ; [0x4c03:2]=0xffff ; arg1
└           0000:0a47      ret
```

### Function 0x00000ce0
```asm
; CALL XREF from fcn.00000a11 @ +0x2af
┌ fcn.00000ce0(int16_t arg1, int16_t arg2, int16_t arg3);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:0ce0      push  bx                                    ; arg3
│           0000:0ce1      mov   bl, byte cs:[0x4c0a]
│           0000:0ce6      add   bl, 0x10
│           0000:0ce9      mov   bh, 4
│           0000:0ceb      call  fcn.00001be0                          ; fcn.00001be0
│           0000:0cee      mov   di, ax
│           0000:0cf0      pop   bx
│           0000:0cf1      cmp   byte cs:[0x4c0a], bl
│       ┌─< 0000:0cf6      jb    0xd47
│       │   0000:0cf8      mov   al, bl
│       │   0000:0cfa      add   al, byte cs:[0x4c0f]
│       │   0000:0cff      cmp   byte cs:[0x4c0a], al
│      ┌──< 0000:0d04      jae   0xd47
│      ││   ; DATA XREFS from fcn.0000115b @ +0x1ca, +0x24a, +0x5ca, +0x64a, +0x84a
│      ││   0000:0d06      mov   al, byte cs:[0x4c0a]
│      ││   ; DATA XREF from fcn.0000115b @ +0x8d0
│      ││   0000:0d0a      sub   al, bl
│      ││   ; XREFS: DATA 0x00001309  DATA 0x00001511  DATA 0x00001525  
│      ││   ; XREFS: DATA 0x00001591  DATA 0x000015a5  DATA 0x00001709  
│      ││   ; XREFS: DATA 0x00001811  DATA 0x00001891  DATA 0x00001a3a  
│      ││   0000:0d0c      add   al, al
│      ││   0000:0d0e      mul   byte cs:[0x4c10]
│      ││   0000:0d13      add   si, ax
│      ││   0000:0d15      mov   byte cs:[0x4c09], 0
│      ││   0000:0d1b      mov   cx, 0x48                              ; 'H'
│     ┌───> 0000:0d1e      push  cx
│     ╎││   0000:0d1f      mov   word es:[di], 0
│     ╎││   0000:0d24      cmp   byte cs:[0x4c09], bh
│    ┌────< 0000:0d29      jb    0xd3c
│    │╎││   0000:0d2b      mov   al, bh
│    │╎││   0000:0d2d      add   al, byte cs:[0x4c10]
│    │╎││   0000:0d32      cmp   byte cs:[0x4c09], al
│   ┌─────< 0000:0d37      jae   0xd3c
│   ││╎││   0000:0d39      movsw word es:[di], word ptr [si]
│   ││╎││   0000:0d3a      dec   di
│   ││╎││   0000:0d3b      dec   di
│   └└────> 0000:0d3c      inc   di
│     ╎││   0000:0d3d      inc   di
│     ╎││   0000:0d3e      inc   byte cs:[0x4c09]
│     ╎││   0000:0d43      pop   cx
│     └───< 0000:0d44      loop  0xd1e
│      ││   0000:0d46      ret
│      └└─> 0000:0d47      mov   cx, 0x48                              ; 'H'
│           0000:0d4a      xor   ax, ax
│           0000:0d4c      rep   stosw word es:[di], ax
└           0000:0d4e      ret
```

### Function 0x00000dbe
```asm
; CALL XREF from fcn.00000ce0 @ +0x8e
┌ fcn.00000dbe();
│           0000:0dbe      call  fcn.00000dfd                          ; fcn.00000dfd
│           0000:0dc1      or    byte es:[di], 0xf                     ; str.K_3y3
│                                                                      ; [0xf:1]=75 ; "K\f3y3\xff3\U0000007f4`6\xb46\b7\xec0G7\xc97\xc38\U00000001<K=\U00000006>\>9@\U00000019A\xb2A\xc4KPSQ\U0000001e\x8a\xc5\xf6\xe1\"
│           0000:0dc5      inc   di
│           0000:0dc6      mov   cx, bx
│           0000:0dc8      mov   al, 0xff
│           0000:0dca      rep   stosb byte es:[di], al
│           0000:0dcc      or    byte es:[di], 0xf0                    ; [0xf0:1]=83
└           0000:0dd0      ret
```

### Function 0x00000dd1
```asm
; CALL XREFS from fcn.00000ce0 @ +0xa8, +0xdb
┌ fcn.00000dd1(int16_t arg4);
│           ; arg int16_t arg4 @ cx
│       ┌─> 0000:0dd1      push  cx                                    ; arg4
│       ╎   0000:0dd2      push  di
│       ╎   0000:0dd3      call  fcn.00000dfd                          ; fcn.00000dfd
│       ╎   0000:0dd6      or    byte es:[di], 0xf                     ; str.K_3y3
│       ╎                                                              ; [0xf:1]=75 ; "K\f3y3\xff3\U0000007f4`6\xb46\b7\xec0G7\xc97\xc38\U00000001<K=\U00000006>\>9@\U00000019A\xb2A\xc4KPSQ\U0000001e\x8a\xc5\xf6\xe1\"
│       ╎   0000:0dda      inc   di
│       ╎   0000:0ddb      mov   cx, bx
│       ╎   0000:0ddd      xor   al, al
│       ╎   0000:0ddf      rep   stosb byte es:[di], al
│       ╎   0000:0de1      or    byte es:[di], 0xf0                    ; [0xf0:1]=83
│       ╎   0000:0de5      pop   di
│       ╎   0000:0de6      inc   byte cs:[0x4c0a]
│       ╎   0000:0deb      add   di, 0x2000
│       ╎   0000:0def      cmp   di, 0x8000
│      ┌──< 0000:0df3      jb    0xdf9
│      │╎   0000:0df5      add   di, 0x80a0
│      └──> 0000:0df9      pop   cx
│       └─< 0000:0dfa      loop  fcn.00000dd1
└           0000:0dfc      ret
```

### Function 0x00000dfd
```asm
; CALL XREF from fcn.00000ce0 @ +0xad
            ; CALL XREF from fcn.00000dbe @ 0xdbe
            ; CALL XREF from fcn.00000dd1 @ 0xdd3
┌ fcn.00000dfd();
│           0000:0dfd      mov   word es:[di - 3], 0x4444              ; 'DD'
│                                                                      ; [0x4444:2]=0xffff
│           0000:0e03      mov   word es:[di - 1], 0x4444              ; 'DD'
│                                                                      ; [0x4444:2]=0xffff
└           0000:0e09      ret
```

### Function 0x00000f00
```asm
; CALL XREFS from fcn.00000dfd @ +0xc2, +0xf3
            ; DATA XREF from fcn.0000107b @ 0x1114
┌ fcn.00000f00(int16_t arg2);
│           ; arg int16_t arg2 @ dx
│           0000:0f00      mov   cx, 0x28                              ; '('
│           0000:0f03      mov   word cs:[0x4c05], 0
│       ┌─> 0000:0f0a      mov   ax, word [si + 0x5500]
│       ╎   0000:0f0e      xchg  al, ah
│       ╎   0000:0f10      mov   word cs:[0x4c03], ax
│       ╎   0000:0f14      mov   ax, word [si + 0x2a80]
│       ╎   0000:0f18      xchg  al, ah
│       ╎   0000:0f1a      mov   word cs:[0x4c01], ax
│       ╎   0000:0f1e      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0f1f      xchg  al, ah
│       ╎   0000:0f21      mov   word cs:[0x4bff], ax
│       ╎   0000:0f25      call  fcn.00001ae8                          ; fcn.00001ae8
│       ╎   0000:0f28      stosw word es:[di], ax
│       ╎   0000:0f29      call  fcn.00001ae8                          ; fcn.00001ae8
│       ╎   0000:0f2c      stosw word es:[di], ax
│       └─< 0000:0f2d      loop  0xf0a
└           0000:0f2f      ret
```

### Function 0x00000f30
```asm
; CALL XREFS from fcn.00000dfd @ +0xbd, +0xee
┌ fcn.00000f30(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:0f30      mov   cx, 0xb
│           0000:0f33      mov   word cs:[0x4c05], 0
│       ┌─> 0000:0f3a      mov   ah, byte [si + 0x5500]
│       ╎   0000:0f3e      mov   word cs:[0x4c03], ax                  ; arg1
│       ╎   0000:0f42      mov   ah, byte [si + 0x2a80]
│       ╎   0000:0f46      mov   word cs:[0x4c01], ax                  ; arg1
│       ╎   0000:0f4a      lodsb al, byte [si]
│       ╎   0000:0f4b      xchg  al, ah
│       ╎   0000:0f4d      mov   word cs:[0x4bff], ax                  ; arg1
│       ╎   0000:0f51      call  fcn.00001ae8                          ; fcn.00001ae8
│       ╎   0000:0f54      stosw word es:[di], ax
│       └─< 0000:0f55      loop  0xf3a
│           0000:0f57      add   si, 0x18
│           0000:0f5a      add   di, 0x30
│           0000:0f5d      mov   cx, 5
│       ┌─> 0000:0f60      mov   ax, word [si + 0x5500]
│       ╎   0000:0f64      xchg  al, ah
│       ╎   0000:0f66      mov   word cs:[0x4c03], ax
│       ╎   0000:0f6a      mov   ax, word [si + 0x2a80]
│       ╎   0000:0f6e      xchg  al, ah
│       ╎   0000:0f70      mov   word cs:[0x4c01], ax
│       ╎   0000:0f74      lodsw ax, word [si]                         ; int16_t arg1
│       ╎   0000:0f75      xchg  al, ah
│       ╎   0000:0f77      mov   word cs:[0x4bff], ax
│       ╎   0000:0f7b      call  fcn.00001ae8                          ; fcn.00001ae8
│       ╎   0000:0f7e      stosw word es:[di], ax
│       ╎   0000:0f7f      call  fcn.00001ae8                          ; fcn.00001ae8
│       ╎   0000:0f82      stosw word es:[di], ax
│       └─< 0000:0f83      loop  0xf60
│           0000:0f85      add   si, 0x18
│           0000:0f88      add   di, 0x30
│           0000:0f8b      mov   cx, 0xb
│       ┌─> 0000:0f8e      mov   ah, byte [si + 0x5500]
│       ╎   0000:0f92      mov   word cs:[0x4c03], ax
│       ╎   0000:0f96      mov   ah, byte [si + 0x2a80]
│       ╎   0000:0f9a      mov   word cs:[0x4c01], ax
│       ╎   0000:0f9e      lodsb al, byte [si]
│       ╎   0000:0f9f      xchg  al, ah
│       ╎   0000:0fa1      mov   word cs:[0x4bff], ax
│       ╎   0000:0fa5      call  fcn.00001ae8                          ; fcn.00001ae8
│       ╎   0000:0fa8      stosw word es:[di], ax
│       └─< 0000:0fa9      loop  0xf8e
└           0000:0fab      ret
```

### Function 0x00000fac
```asm
; CALL XREFS from fcn.00000dfd @ +0x73, +0x7d
┌ fcn.00000fac();
│           0000:0fac      push  di
│           0000:0fad      mov   ax, 0xfc3f
│           0000:0fb0      call  fcn.00001031                          ; fcn.00001031
│           0000:0fb3      add   di, 0x36
│           0000:0fb6      mov   cx, 0x5b                              ; '['
│       ┌─> 0000:0fb9      mov   byte es:[di], 0x30                    ; '0'
│       ╎                                                              ; [0x30:1]=25
│       ╎   0000:0fbd      mov   byte es:[di + 0x19], 0xc              ; [0xc:1]=214
│       ╎   0000:0fc2      add   di, 0x50
│       └─< 0000:0fc5      loop  0xfb9
│           0000:0fc7      mov   ax, 0xfc3f
│           0000:0fca      call  fcn.00001031                          ; fcn.00001031
│           0000:0fcd      pop   di
│           0000:0fce      add   di, 0x2a80
│           0000:0fd2      push  di
│           0000:0fd3      mov   ax, 0xfd7f
│           0000:0fd6      call  fcn.00001031                          ; fcn.00001031
│           0000:0fd9      add   di, 0x36
│           0000:0fdc      mov   cx, 0x2d                              ; '-'
│       ┌─> 0000:0fdf      mov   byte es:[di], 0xb0                    ; [0xb0:1]=3
│       ╎   0000:0fe3      mov   byte es:[di + 0x19], 0xe              ; [0xe:1]=138
│       ╎   0000:0fe8      add   di, 0x50
│       ╎   0000:0feb      mov   byte es:[di], 0x70                    ; 'p'
│       ╎                                                              ; [0x70:1]=232
│       ╎   0000:0fef      mov   byte es:[di + 0x19], 0xd              ; [0xd:1]=65
│       ╎   0000:0ff4      add   di, 0x50
│       └─< 0000:0ff7      loop  0xfdf
│           0000:0ff9      mov   byte es:[di], 0xb0                    ; [0xb0:1]=3
│           0000:0ffd      mov   byte es:[di + 0x19], 0xe              ; [0xe:1]=138
│           0000:1002      add   di, 0x50
│           0000:1005      mov   ax, 0xfd7f
│           0000:1008      call  fcn.00001031                          ; fcn.00001031
│           0000:100b      pop   di
│           0000:100c      add   di, 0x2a80
│           ; DATA XREF from fcn.000005f9 @ +0x137
│           0000:1010      mov   ax, 0xfc3f
│           0000:1013      call  fcn.00001031                          ; fcn.00001031
│           0000:1016      add   di, 0x36
│           0000:1019      mov   cx, 0x5b                              ; '['
│       ┌─> 0000:101c      mov   byte es:[di], 0x30                    ; '0'
│       ╎                                                              ; [0x30:1]=25
│       ╎   0000:1020      mov   byte es:[di + 0x19], 0xc              ; [0xc:1]=214
│       ╎   0000:1025      add   di, 0x50
│       │   ; DATA XREFS from fcn.00000dfd @ +0x10, +0x16, +0x29, +0x3f, +0x4b
│       └─< 0000:1028      loop  0x101c
│           0000:102a      mov   ax, 0xfc3f
│           0000:102d      call  fcn.00001031                          ; fcn.00001031
└           0000:1030      ret
```

### Function 0x00001031
```asm
; XREFS: CALL 0x00000fb0  CALL 0x00000fca  CALL 0x00000fd6  
            ; XREFS: CALL 0x00001008  CALL 0x00001013  CALL 0x0000102d  
┌ fcn.00001031();
│           0000:1031      stosb byte es:[di], al
│           0000:1032      mov   al, 0xff
│           0000:1034      mov   cx, 0x18
│           0000:1037      rep   stosb byte es:[di], al
│           0000:1039      mov   al, ah
│           0000:103b      stosb byte es:[di], al
└           0000:103c      ret
```

### Function 0x0000107b
```asm
; CALL XREFS from fcn.00001031 @ +0x32, +0x3a
┌ fcn.0000107b(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:107b      push  ax                                    ; arg1
│           0000:107c      mov   bl, al
│           0000:107e      mov   al, 0x2f                              ; '/'
│           0000:1080      mul   bl
│           0000:1082      add   ax, word cs:[0x4c11]                  ; int16_t arg2
│           0000:1087      mov   si, ax                                ; arg1
│           0000:1089      xor   bh, bh
│           0000:108b      call  fcn.00001be0                          ; fcn.00001be0
│           0000:108e      mov   di, ax
│           0000:1090      pop   ax
│           0000:1091      cmp   ax, 0x14
│       ┌─< 0000:1094      jae   0x109b
│       │   0000:1096      mov   cx, 0x2f                              ; '/'
│      ┌──< 0000:1099      jmp   0x10ab
│      │└─> 0000:109b      mov   cx, 0x23                              ; '#'
│      │    0000:109e      cmp   ax, 0x17
│      │┌─< 0000:10a1      jb    0x10ab
│      ││   0000:10a3      cmp   ax, 0x1c
│     ┌───< 0000:10a6      jb    0x10d0
│     │││   0000:10a8      mov   cx, 0x21                              ; '!'
│     │││   ; CODE XREF from fcn.0000107b @ 0x1099
│     │└└─> 0000:10ab      mov   word cs:[0x4c05], 0
│     │ ┌─> 0000:10b2      mov   ah, byte [si + 0x29dc]
│     │ ╎   0000:10b6      mov   word cs:[0x4c03], ax
│     │ ╎   0000:10ba      mov   ah, byte [si + 0x14ee]
│     │ ╎   0000:10be      mov   word cs:[0x4c01], ax
│     │ ╎   0000:10c2      lodsb al, byte [si]
│     │ ╎   0000:10c3      xchg  al, ah
│     │ ╎   0000:10c5      mov   word cs:[0x4bff], ax
│     │ ╎   0000:10c9      call  fcn.00001ae8                          ; fcn.00001ae8
│     │ ╎   0000:10cc      stosw word es:[di], ax
│     │ └─< 0000:10cd      loop  0x10b2
│     │     0000:10cf      ret
│     └───> 0000:10d0      mov   cx, 0x21                              ; '!'
│           0000:10d3      mov   word cs:[0x4c05], 0
│       ┌─> 0000:10da      mov   ah, byte [si + 0x29dc]
│       ╎   0000:10de      mov   word cs:[0x4c03], ax
│       ╎   0000:10e2      mov   ah, byte [si + 0x14ee]
│       ╎   0000:10e6      mov   word cs:[0x4c01], ax
│       ╎   0000:10ea      lodsb al, byte [si]
│       ╎   0000:10eb      xchg  al, ah
│       ╎   0000:10ed      mov   word cs:[0x4bff], ax
│       ╎   0000:10f1      call  fcn.00001ae8                          ; fcn.00001ae8
│       ╎   0000:10f4      stosw word es:[di], ax
│       └─< 0000:10f5      loop  0x10da
│           0000:10f7      mov   ah, byte [si + 0x29dc]
│           0000:10fb      mov   word cs:[0x4c03], ax
│           0000:10ff      mov   ah, byte [si + 0x14ee]
│           0000:1103      mov   word cs:[0x4c01], ax
│           0000:1107      lodsb al, byte [si]
│           0000:1108      xchg  al, ah
│           0000:110a      mov   word cs:[0x4bff], ax
│           0000:110e      call  fcn.00001ae8                          ; fcn.00001ae8
│           0000:1111      and   ax, 0xf0ff
│           0000:1114      and   word es:[di], fcn.00000f00            ; [0xf00:2]=0x28b9
│           0000:1119      or    word es:[di], ax
└           0000:111c      ret
```

### Function 0x0000115b
```asm
; CALL XREFS from fcn.0000107b @ +0xc8, +0xd0
┌ fcn.0000115b(int16_t arg1, int16_t arg2);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg2 @ dx
│           0000:115b      push  ax                                    ; arg1
│           0000:115c      mov   bl, al
│           0000:115e      mov   al, 0x2f                              ; '/'
│           0000:1160      mul   bl
│           0000:1162      add   ax, 0x3cd                             ; arg1
│           0000:1165      add   ax, word cs:[0x4c11]                  ; int16_t arg2
│           0000:116a      mov   si, ax                                ; arg1
│           0000:116c      add   bl, 0x14
│           0000:116f      mov   bh, 0x21                              ; '!'
│           0000:1171      call  fcn.00001be0                          ; fcn.00001be0
│           0000:1174      mov   di, ax
│           0000:1176      pop   ax
│           0000:1177      cmp   ax, 0x5e
│           0000:117a      mov   cx, 0x2f                              ; '/'
│       ┌─< 0000:117d      jae   0x11b1
│       │   0000:117f      mov   cx, 7
│       │   0000:1182      mov   word cs:[0x4c05], 0
│      ┌──> 0000:1189      mov   ax, word [si + 0x29dc]
│      ╎│   0000:118d      xchg  al, ah
│      ╎│   0000:118f      mov   word cs:[0x4c03], ax
│      ╎│   0000:1193      mov   ax, word [si + 0x14ee]
│      ╎│   0000:1197      xchg  al, ah
│      ╎│   0000:1199      mov   word cs:[0x4c01], ax
│      ╎│   0000:119d      lodsw ax, word [si]                         ; int16_t arg1
│      ╎│   0000:119e      xchg  al, ah
│      ╎│   0000:11a0      mov   word cs:[0x4bff], ax
│      ╎│   0000:11a4      call  fcn.00001ae8                          ; fcn.00001ae8
│      ╎│   0000:11a7      stosw word es:[di], ax
│      ╎│   0000:11a8      call  fcn.00001ae8                          ; fcn.00001ae8
│      ╎│   0000:11ab      stosw word es:[di], ax
│      └──< 0000:11ac      loop  0x1189
│       │   0000:11ae      mov   cx, 0x21                              ; '!'
│       └─> 0000:11b1      xor   ax, ax
│           0000:11b3      rep   stosw word es:[di], ax
└           0000:11b5      ret
```

### Function 0x00001ae8
```asm
; XREFS(34)
┌ fcn.00001ae8(int16_t arg1, int16_t arg4);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg4 @ cx
│           0000:1ae8      push  cx                                    ; arg4
│           0000:1ae9      push  si
│           0000:1aea      mov   si, word cs:[0x4bfd]
│           0000:1aef      mov   cx, 4
│       ┌─> 0000:1af2      xor   bx, bx
│       ╎   0000:1af4      rol   word cs:[0x4c05], 1
│       ╎   0000:1af9      adc   bx, bx
│       ╎   0000:1afb      rol   word cs:[0x4c03], 1
│       ╎   0000:1b00      adc   bx, bx
│       ╎   0000:1b02      rol   word cs:[0x4c01], 1
│       ╎   0000:1b07      adc   bx, bx
│       ╎   0000:1b09      rol   word cs:[0x4bff], 1
│       ╎   0000:1b0e      adc   bx, bx
│       ╎   0000:1b10      rol   word cs:[0x4c05], 1
│       ╎   0000:1b15      adc   bx, bx
│       ╎   0000:1b17      rol   word cs:[0x4c03], 1
│       ╎   0000:1b1c      adc   bx, bx
│       ╎   0000:1b1e      rol   word cs:[0x4c01], 1
│       ╎   0000:1b23      adc   bx, bx
│       ╎   0000:1b25      rol   word cs:[0x4bff], 1
│       ╎   0000:1b2a      adc   bx, bx
│       ╎   0000:1b2c      add   ax, ax                                ; arg1
│       ╎   0000:1b2e      add   ax, ax                                ; arg1
│       ╎   0000:1b30      add   ax, ax                                ; arg1
│       ╎   0000:1b32      add   ax, ax                                ; arg1
│       ╎   0000:1b34      or    al, byte cs:[bx + si]
│       └─< 0000:1b37      loop  0x1af2
│           0000:1b39      xchg  al, ah
│           0000:1b3b      pop   si
│           0000:1b3c      pop   cx
└           0000:1b3d      ret
```

### Function 0x00001b3e
```asm
; CALL XREFS from fcn.0000076c @ +0xe1, +0xed, +0x139, +0x147
┌ fcn.00001b3e();
│           0000:1b3e      rol   word cs:[0x4c07], 1
│           0000:1b43      sbb   dl, dl
│           0000:1b45      rol   word cs:[0x4c07], 1
│           0000:1b4a      sbb   dh, dh
│           0000:1b4c      or    dl, dh
│           0000:1b4e      and   dl, 0xf0
│           0000:1b51      rol   word cs:[0x4c07], 1
│           0000:1b56      sbb   al, al
│           0000:1b58      rol   word cs:[0x4c07], 1
│           0000:1b5d      sbb   dh, dh
│           0000:1b5f      or    al, dh
│           0000:1b61      and   al, 0xf                               ; str.K_3y3 ; "K\f3y3\xff3\U0000007f4`6\xb46\b7\xec0G7\xc97\xc38\U00000001<K=\U00000006>\>9@\U00000019A\xb2A\xc4KPSQ\U0000001e\x8a\xc5\xf6\xe1\"
│           0000:1b63      or    al, dl
│           0000:1b65      rol   word cs:[0x4c07], 1
│           0000:1b6a      sbb   dl, dl
│           0000:1b6c      rol   word cs:[0x4c07], 1
│           0000:1b71      sbb   dh, dh
│           0000:1b73      or    dl, dh
│           0000:1b75      and   dl, 0xf0
│           0000:1b78      rol   word cs:[0x4c07], 1
│           0000:1b7d      sbb   ah, ah
│           0000:1b7f      rol   word cs:[0x4c07], 1
│           0000:1b84      sbb   dh, dh
│           0000:1b86      or    ah, dh
│           0000:1b88      and   ah, 0xf                               ; str.K_3y3 ; "K\f3y3\xff3\U0000007f4`6\xb46\b7\xec0G7\xc97\xc38\U00000001<K=\U00000006>\>9@\U00000019A\xb2A\xc4KPSQ\U0000001e\x8a\xc5\xf6\xe1\"
│           0000:1b8b      or    ah, dl
└           0000:1b8d      ret
```

### Function 0x00001be0
```asm
; XREFS: CALL 0x000000dc  CALL 0x0000014e  CALL 0x00000179  
            ; XREFS: CALL 0x000003b3  CALL 0x00000452  CALL 0x000004f2  
            ; XREFS: CALL 0x00000813  CALL 0x00000ceb  CALL 0x00000d54  
            ; XREFS: CALL 0x00000ea2  CALL 0x00000ed3  CALL 0x0000108b  
            ; XREFS: CALL 0x00001171  CALL 0x000011b7  
┌ fcn.00001be0(int16_t arg2, int16_t arg3);
│           ; arg int16_t arg2 @ dx
│           ; arg int16_t arg3 @ bx
│           0000:1be0      add   bh, bh
│           0000:1be2      mov   dh, bl
│           0000:1be4      ror   dh, 1
│           0000:1be6      ror   dh, 1
│           0000:1be8      ror   dh, 1
│           0000:1bea      and   dx, 0x6000                            ; arg2
│           0000:1bee      mov   ax, 0xa0
│           0000:1bf1      shr   bl, 1
│           0000:1bf3      shr   bl, 1
│           0000:1bf5      mul   bl
│           0000:1bf7      add   ax, dx                                ; arg2
│           0000:1bf9      mov   bl, bh
│           0000:1bfb      xor   bh, bh
│           0000:1bfd      add   ax, bx                                ; arg3
└           0000:1bff      ret
```

## Cross-References (callers)
```json
  0x000001a0:
[{"from":235,"to":416,"type":"CALL"},{"from":359,"to":416,"type":"CALL"},{"from":368,"to":416,"type":"CALL"},{"from":402,"to":416,"type":"CALL"},{"from":411,"to":416,"type":"CALL"}]
  0x0000035c:
[{"from":833,"to":860,"type":"CALL"},{"from":839,"to":860,"type":"CALL"}]
  0x000005b3:
[{"from":1295,"to":1459,"type":"CALL"}]
  0x000005d6:
[{"from":1428,"to":1494,"type":"CALL"}]
  0x000005f9:
[{"from":1371,"to":1529,"type":"CALL"}]
  0x0000076c:
[{"from":1881,"to":1900,"type":"CALL"}]
  0x0000099f:
[{"from":2281,"to":2463,"type":"CALL"},{"from":2299,"to":2463,"type":"CALL"},{"from":2315,"to":2463,"type":"CALL"},{"from":2333,"to":2463,"type":"CALL"},{"from":2366,"to":2463,"type":"CALL"},{"from":2393,"to":2463,"type":"CALL"},{"from":2416,"to":2463,"type":"CALL"},{"from":2443,"to":2463,"type":"CALL"}]
  0x00000a11:
[{"from":2485,"to":2577,"type":"CALL"},{"from":2513,"to":2577,"type":"CALL"},{"from":2539,"to":2577,"type":"CALL"},{"from":2567,"to":2577,"type":"CALL"}]
  0x00000ce0:
[{"from":3264,"to":3296,"type":"CALL"}]
  0x00000dbe:
[{"from":3438,"to":3518,"type":"CALL"}]
  0x00000dd1:
[{"from":3464,"to":3537,"type":"CALL"},{"from":3515,"to":3537,"type":"CALL"}]
  0x00000dfd:
[{"from":3469,"to":3581,"type":"CALL"},{"from":3518,"to":3581,"type":"CALL"},{"from":3539,"to":3581,"type":"CALL"}]
  0x00000f00:
[{"from":3775,"to":3840,"type":"CALL"},{"from":3824,"to":3840,"type":"CALL"},{"from":4372,"to":3840,"type":"DATA"}]
  0x00000f30:
[{"from":3770,"to":3888,"type":"CALL"},{"from":3819,"to":3888,"type":"CALL"}]
  0x00000fac:
[{"from":3696,"to":4012,"type":"CALL"},{"from":3706,"to":4012,"type":"CALL"}]
  0x00001031:
[{"from":4016,"to":4145,"type":"CALL"},{"from":4042,"to":4145,"type":"CALL"},{"from":4054,"to":4145,"type":"CALL"},{"from":4104,"to":4145,"type":"CALL"},{"from":4115,"to":4145,"type":"CALL"},{"from":4141,"to":4145,"type":"CALL"}]
  0x0000107b:
[{"from":4195,"to":4219,"type":"CALL"},{"from":4203,"to":4219,"type":"CALL"}]
  0x0000115b:
[{"from":4419,"to":4443,"type":"CALL"},{"from":4427,"to":4443,"type":"CALL"}]
  0x00001ae8:
[{"from":112,"to":6888,"type":"CALL"},{"from":116,"to":6888,"type":"CALL"},{"from":196,"to":6888,"type":"CALL"},{"from":200,"to":6888,"type":"CALL"},{"from":311,"to":6888,"type":"CALL"},{"from":315,"to":6888,"type":"CALL"},{"from":1091,"to":6888,"type":"CALL"},{"from":1095,"to":6888,"type":"CALL"},{"from":1570,"to":6888,"type":"CALL"},{"from":1699,"to":6888,"type":"CALL"},{"from":1703,"to":6888,"type":"CALL"},{"from":1783,"to":6888,"type":"CALL"},{"from":1787,"to":6888,"type":"CALL"},{"from":2131,"to":6888,"type":"CALL"},{"from":2144,"to":6888,"type":"CALL"},{"from":2220,"to":6888,"type":"CALL"},{"from":2233,"to":6888,"type":"CALL"},{"from":2488,"to":6888,"type":"CALL"},{"from":2516,"to":6888,"type":"CALL"},{"from":2542,"to":6888,"type":"CALL"},{"from":2570,"to":6888,"type":"CALL"},{"from":3189,"to":6888,"type":"CALL"},{"from":3193,"to":6888,"type":"CALL"},{"from":3877,"to":6888,"type":"CALL"},{"from":3881,"to":6888,"type":"CALL"},{"from":3921,"to":6888,"type":"CALL"},{"from":3963,"to":6888,"type":"CALL"},{"from":3967,"to":6888,"type":"CALL"},{"from":4005,"to":6888,"type":"CALL"},{"from":4297,"to":6888,"type":"CALL"},{"from":4337,"to":6888,"type":"CALL"},{"from":4366,"to":6888,"type":"CALL"},{"from":4516,"to":6888,"type":"CALL"},{"from":4520,"to":6888,"type":"CALL"}]
```