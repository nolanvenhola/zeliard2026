# ENEMY_SLIME - Analysis

**Source:** `chunk_07.bin`  
**Size:** 10.3 KB  
**Functions:** 13  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    1 142          fcn.00000000
0x0000008e    1 2            fcn.0000008e
0x000000d4    1 14           fcn.000000d4
0x00000298    1 26           fcn.00000298
0x00000319    3 41           fcn.00000319
0x00000352    1 14           fcn.00000352
0x00000384    3 11           fcn.00000384
0x000003a1    3 22           fcn.000003a1
0x000003b7    3 28           fcn.000003b7
0x000003e5    7 38           fcn.000003e5
0x0000040b    7 61           fcn.0000040b
0x00000458   12 67           fcn.00000458
0x00001b40    2 41   -> 31   fcn.00001b40
```

## Strings
```
nth      paddr      vaddr len size section type   string                                      
----------------------------------------------------------------------------------------------
  0 0x00000163 0x00000163   4    4         ascii  WQS>
  1 0x000001ee 0x000001ee   4    4         ascii  WQS>
  2 0x0000026c 0x0000026c   4    4         ascii  WQS>
  3 0x000002b6 0x000002b6   8    9         ascii  \b\t\r\v()-+
  4 0x000002eb 0x000002eb   4    4         ascii  WQS>
  5 0x00000387 0x00000387  10   11         ibm037 uucG+S9CC½
  6 0x000003cc 0x000003cc   4    4         ascii  &\b%G
  7 0x000003d0 0x000003d0   4    5         ibm037 SYC½
  8 0x0000044f 0x0000044f   8    9         ascii  \a\b\f\r\r\f\r\r
  9 0x00000473 0x00000473   4    5         ascii  @u\b$
 10 0x0000074f 0x0000074f   5    5         ascii  C(\n(C
 11 0x0000075f 0x0000075f   8    8         ascii  B *\n\bC\b\n
 12 0x0000078c 0x0000078c   4    4         ascii  E D\v
 13 0x0000079c 0x0000079c   6    6         ascii  B\n  B 
 14 0x000007a4 0x000007a4   5    6         ascii  B0K\bG
 15 0x000007ae 0x000007ae   5    6         ascii  \bB\bE\b
 16 0x000007c2 0x000007c2  14   14         ascii  B E \vA\f \nD(E\b\n
 17 0x000007e0 0x000007e0   4    4         ascii  D8 E
 18 0x000007ea 0x000007ea   5    5         ascii  B F\b 
 19 0x000007f8 0x000007f8   4    4         ascii  A"D.
 20 0x00000809 0x00000809   4    5         ascii  \bC8F
 21 0x00000819 0x00000819   4    5         ascii  8B B
 22 0x0000082b 0x0000082b   4    5         ascii  (B\bF
 23 0x00000838 0x00000838   5    6         ascii  \nB A*
 24 0x0000083e 0x0000083e   5    6         ascii  H  D(
 25 0x00000848 0x00000848   4    5         ascii  \nC\bE
 26 0x0000084d 0x0000084d   4    4         ascii  E\n(A
 27 0x00000862 0x00000862   5    5         ascii  \n\bA. 
 28 0x0000086a 0x0000086a   6    6         ascii  A"(C \n
 29 0x00000871 0x00000871   6    6         ascii  B\bA\fE\n
 30 0x00000885 0x00000885   4    4         ascii  B.\b\v
 31 0x0000088e 0x0000088e   6    7         ascii  A\b\n  B
 32 0x0000089b 0x0000089b   6    6         ascii  C\bA\bE*
 33 0x000008a5 0x000008a5  11   12         ascii  \bC A(C "C\bA
 34 0x000008bd 0x000008bd  11   12         ascii  C\bD G\bA\bC\bD
 35 0x00000975 0x00000975   4    4         ascii  3A::
 36 0x000009be 0x000009be   4    4         ascii  A\n. 
 37 0x00000a23 0x00000a23   8    8         ibm037 yhhhh\b\v 
 38 0x00000b50 0x00000b50   8    8         ibm037 [c«ysss¿
 39 0x00000b9f 0x00000b9f   5    5         ibm037 hts \b
 40 0x00000c4a 0x00000c4a   4    5         ibm037 hts 
 41 0x00000c65 0x00000c65   4    4         ascii  . A#
 42 0x00000c7d 0x00000c7d   4    4         ascii   A"#
 43 0x00000dc0 0x00000dc0   4    5         ascii  *"\b\n
 44 0x00000dd4 0x00000dd4   5    6         ibm037 âhhh 
 45 0x00000ddb 0x00000ddb   4    5         ibm037 shbâ
 46 0x00000dea 0x00000dea   5    6         ibm037 yhh\fà
 47 0x00000f35 0x00000f35   4    4         ascii  A"\b\n
 48 0x00001074 0x00001074   7    8         ibm037 y[by»sy
 49 0x000010a6 0x000010a6   4    5         ibm037 hYbb
 50 0x000010ce 0x000010ce   4    5         ascii  " "A
 51 0x00001102 0x00001102   4    5         ascii  * 8\n
 52 0x0000110d 0x0000110d   4    5         ascii   "A8
 53 0x00001119 0x00001119   6    8         utf8    " \f\n\f
 54 0x00001162 0x00001162   4    5         ascii  "B B
 55 0x00001177 0x00001177   7    8         ascii  A A   C
 56 0x00001189 0x00001189   5    5         ascii  D \b\bA
 57 0x00001192 0x00001192   6    7         ascii  B\b A  
 58 0x000011a7 0x000011a7   5    6         ascii  C A A
 59 0x000011bf 0x000011bf   5    6         ascii  A#\nA 
 60 0x000011c6 0x000011c6   5    5         ascii  B\bA(A
 61 0x000011f6 0x000011f6   4    5         ascii  \bA A
 62 0x00001209 0x00001209   4    5         ascii  A\bB 
 63 0x00001210 0x00001210   5    6         ascii  B\bB\bC
 64 0x000012de 0x000012de   4    4         ascii  \bA:E
 65 0x000012ea 0x000012ea   4    4         ascii   A A
 66 0x000012f6 0x000012f6   4    4         ascii   A A
 67 0x00001312 0x00001312   7    7         ascii  \n: (A\bA
 68 0x0000131e 0x0000131e   4    4         ascii   \bA\b
 69 0x00001329 0x00001329   5    5         ascii   \bA\nA
 70 0x0000133f 0x0000133f   8    8         ascii  A\bA"B  A
 71 0x00001354 0x00001354   5    5         ascii  A\bA\nC
 72 0x00001367 0x00001367   4    4         ascii  D\n C
 73 0x0000136c 0x0000136c   6    6         ascii  B\n(B D
 74 0x0000137c 0x0000137c   7    8         ascii  C B\fA A
 75 0x0000138e 0x0000138e   4    5         ascii  A A 
 76 0x00001393 0x00001393   4    5         ascii  \n\b(B
 77 0x000013a9 0x000013a9   4    5         ascii  A\n\bA
 78 0x000013b2 0x000013b2   5    6         ascii  \bA\n\n 
 79 0x000013e1 0x000013e1   5    6         ascii  \bA\bD0
 80 0x000013fd 0x000013fd   6    7         ascii  \bA C"D
 81 0x0000140b 0x0000140b   7    8         ascii  B(A\b\n\bD
 82 0x00001413 0x00001413   7    8         ascii  \bA A \nE
 83 0x00001425 0x00001425   5    5         ascii   A  A
 84 0x0000143a 0x0000143a   5    5         ascii  A"A A
 85 0x00001449 0x00001449   7    8         ascii  A\fA\b8  
 86 0x00001457 0x00001457   4    5         ascii  B\b0 
 87 0x0000146d 0x0000146d   6    7         ascii  A\b  8 
 88 0x00001475 0x00001475   5    5         ascii  B<B(B
 89 0x0000147e 0x0000147e   6    6         ascii  A \fB A
 90 0x00001489 0x00001489   6    6         ascii  \b(\nB A
 91 0x00001497 0x00001497   6    7         ascii  B\b\b\b\bA
 92 0x000014b6 0x000014b6   4    4         ascii  C(A"
 93 0x000014c6 0x000014c6   5    5         ascii  B\b B 
 94 0x000014dd 0x000014dd   4    4         ascii   B\nB
 95 0x000014e7 0x000014e7   4    4         ascii  A"A0
 96 0x000014ff 0x000014ff   5    6         ascii  D\bB \b
 97 0x0000150c 0x0000150c   4    4         ascii  A \bB
 98 0x00001537 0x00001537   6    6         ascii  D\b A B
 99 0x00001575 0x00001575   4    4         ascii  \bA\b 
100 0x0000158b 0x0000158b   9    9         ascii  A *"\bB \nA
101 0x000015a8 0x000015a8   5    6         ascii  \bA  D
102 0x000015de 0x000015de   5    5         ascii  A*(*A
103 0x000015e7 0x000015e7   5    5         ascii  \nB\bA\n
104 0x0000160f 0x0000160f   4    4         ascii  B  C
105 0x00001617 0x00001617   6    6         ascii  C   D 
106 0x00001626 0x00001626   9    9         ascii  A\nC A\n\bA 
107 0x00001634 0x00001634   5    5         ascii  \b\n\nA 
108 0x0000163d 0x0000163d   4    4         ascii  \bB\bC
109 0x00001649 0x00001649   5    5         ascii  \bD(D 
110 0x00001658 0x00001658   6    7         ascii   B "B 
111 0x000016db 0x000016db   5    5         ascii  B\nA\n 
112 0x0000170c 0x0000170c   5    5         ascii  B\b\bB 
113 0x00001721 0x00001721   5    5         ascii  A D\nB
114 0x00001729 0x00001729   6    6         ascii  B B B 
115 0x00001730 0x00001730   7    7         ascii  E A \b\b 
116 0x00001738 0x00001738   5    5         ascii  E C(A
117 0x00001798 0x00001798   4    4         ascii  A  A
118 0x000017a3 0x000017a3   4    5         ascii  A" B
119 0x000017ce 0x000017ce   5    6         ascii  \b\nA\vC
120 0x000017df 0x000017df   4    4         ascii  :A"A
121 0x00001846 0x00001846  10   11         ibm037 þytybhhØ s
122 0x00001856 0x00001856   4    4         ascii  """B
123 0x000019a2 0x000019a2   6    6         ascii  ("""\bA
124 0x000019ac 0x000019ac   4    4         ascii  \bE\bA
125 0x00001a0d 0x00001a0d   4    5         ibm037  tsc
126 0x00001a5a 0x00001a5a   5    5         utf8   *\f( A
127 0x00001a72 0x00001a72   4    5         utf8   \b« A blocks=Basic Latin,Latin-1 Supplement
128 0x00001a9d 0x00001a9d   5    5         ascii  \v*" *
129 0x00001aae 0x00001aae   9    9         ibm037 syb \S[\n^
130 0x00001aed 0x00001aed   5    6         ascii   33\b*
131 0x00001bcd 0x00001bcd   4    5         ascii  (\n0\b
132 0x00001be8 0x00001be8   8    9         ibm037  hb hhh«
133 0x00001c5e 0x00001c5e   4    4         ascii  "(\n*
134 0x00001c76 0x00001c76   4    4         ascii  "  A
135 0x00001f1b 0x00001f1b   6    7         ibm037 sbhhØ 
136 0x000020bd 0x000020bd   5    5         ascii  :B  (
137 0x000020c9 0x000020c9   4    4         ascii  B A\b
138 0x00002121 0x00002121   7    8         ascii  A*B( A\n
139 0x00002135 0x00002135   5    6         ascii  A\b  \b
140 0x00002150 0x00002150   4    4         ascii   \nA\b
141 0x0000218a 0x0000218a   4    5         ascii  (A\n\n
142 0x00002195 0x00002195   5    6         ascii  A\bA\b\n
143 0x000021d6 0x000021d6   6    7         ascii  A\nC\bA:
144 0x0000220d 0x0000220d   5    6         ascii  A\nB D
145 0x00002237 0x00002237   4    5         ascii  :B:\n
146 0x0000224c 0x0000224c   4    4         ascii  \bA\bA
147 0x0000225d 0x0000225d   4    5         ascii  \bA*H
148 0x0000226c 0x0000226c   4    5         ascii  H*A\n
149 0x00002276 0x00002276   7    8         ascii  G\nB\n\bB\b
150 0x0000227e 0x0000227e   6    6         ascii  C\nB\b C
151 0x000022a3 0x000022a3   4    4         ascii   B\nG
152 0x000022b2 0x000022b2   6    7         ascii  A\n(B*C
153 0x000022c1 0x000022c1   5    5         ascii  B\bA*A
154 0x000022cd 0x000022cd   7    7         ascii  A\bA*A\nC
155 0x000022d7 0x000022d7   6    6         ascii  A\bA*\bD
156 0x00002315 0x00002315   4    5         ascii  D*A\n
157 0x0000233a 0x0000233a   4    4         ascii  A\b\nB
158 0x0000237e 0x0000237e   5    6         ascii  \b(D\b*
159 0x00002386 0x00002386   5    6         ascii  \b(D"*
160 0x0000238e 0x0000238e   6    7         ascii  \b(C \b*
161 0x00002395 0x00002395   4    4         ascii  \nA\bD
162 0x0000239e 0x0000239e   4    5         ascii  \nA\bC
163 0x000023a6 0x000023a6   4    5         ascii  \nA\bA
164 0x000023af 0x000023af   4    5         ascii  *\n\fB
165 0x000023b9 0x000023b9   8    8         ascii  \b*\nC\nB(\n
166 0x000023c3 0x000023c3   5    6         ascii  *B\bA\b
167 0x000023c9 0x000023c9   8    9         ascii  B"  *C A
168 0x0000243d 0x0000243d   5    6         ascii  B\n \nD
169 0x00002444 0x00002444   5    6         ascii  C\n \nD
170 0x0000244d 0x0000244d   5    5         ascii  A\n \nG
171 0x00002453 0x00002453   5    5         ascii  A\nA\bG
172 0x00002459 0x00002459   9   10         ascii  A\nK\nK\nK\n*
173 0x00002466 0x00002466   4    5         ascii  A\nC\n
174 0x00002475 0x00002475   4    5         ascii  \n\b*A
175 0x0000247a 0x0000247a   5    6         ascii  A E\n\f
176 0x00002480 0x00002480   4    5         ascii  C \bC
177 0x00002485 0x00002485  28   28         ascii  \n\b\nC (A\bA(\n\b\bD A\bA"\n\bG\nA\b\n\bF
178 0x000024b5 0x000024b5   6    7         ascii  \n\n \n(\b
179 0x000024c1 0x000024c1   4    4         ibm037 hhh\n
180 0x00002500 0x00002500   4    4         ascii  A**A
181 0x00002536 0x00002536  10   11         ascii  B\n*\bA\nC\b\bB
182 0x00002541 0x00002541  10   10         ascii  *\bD\b\b\bC*\bB
183 0x0000254f 0x0000254f   5    5         ascii  C*\bA 
184 0x00002559 0x00002559   4    4         ascii  A*\bA
185 0x00002566 0x00002566   4    4         ascii  C B 
186 0x0000256d 0x0000256d   5    6         ascii  *\nF B
187 0x00002573 0x00002573   8    9         ascii  *\bD(D *A
188 0x0000257f 0x0000257f   4    4         ascii  E*\bB
189 0x00002597 0x00002597   4    5         ascii  C*A\b
190 0x000025bc 0x000025bc   9    9         ascii  A(\nA A*\b 
191 0x000025c8 0x000025c8   5    6         ascii  \n\bB *
192 0x000025d1 0x000025d1   7    7         ascii   A"C *\b
193 0x000025db 0x000025db   8    8         ascii  B D*A(A"
194 0x000025e6 0x000025e6   4    4         ascii  \nC*A
195 0x000025eb 0x000025eb   5    5         ascii  A\b"A\b
196 0x00002602 0x00002602   6    6         ascii  A*C(A(
197 0x0000261a 0x0000261a   4    5         ascii  \b(C\n
198 0x00002651 0x00002651   5    5         ascii  D(A\n;
199 0x00002686 0x00002686   7    8         ascii  B\b\bA\n(A
200 0x00002691 0x00002691   6    6         ascii   C\nB\bB
201 0x000026a2 0x000026a2   9    9         ascii   C\nB\bE8 A
202 0x000026ac 0x000026ac  14   14         ascii  A\b\nB B:A"\nA\b\nC
203 0x000026bc 0x000026bc   8    8         ascii  \nA \nA8\nA
204 0x000026cb 0x000026cb   9   10         ascii  \nA \nB  A8
205 0x000026d7 0x000026d7  15   16         ascii  A \bA" B8A\n\nA \nA
206 0x000026e9 0x000026e9   5    6         ascii  \b(A\b\n
207 0x000026f3 0x000026f3   6    7         ascii  B\b;A"\n
208 0x000026fe 0x000026fe  14   14         ascii  B(*A\b\n\n (A\vC:A
209 0x0000270d 0x0000270d   6    6         ascii  \n\n(\nA\n
210 0x00002719 0x00002719   6    6         ascii  \n\n".A\v
211 0x00002723 0x00002723   4    4         ascii  \n \n\n
212 0x0000273b 0x0000273b   4    4         ascii  A \n\n
213 0x00002752 0x00002752   5    5         ascii  \n  \n\n
214 0x0000277d 0x0000277d   4    4         ibm037 ytyb
215 0x00002781 0x00002781   5    6         ascii  ""A\n\n
216 0x0000278f 0x0000278f   6    6         ascii  A\n\b" *
217 0x00002798 0x00002798   4    5         ascii  \b B\n
218 0x000027a1 0x000027a1  11   11         ascii  __________T
219 0x00002801 0x00002801   5    6         ascii  E0E\fE
220 0x000028d9 0x000028d9   4    4         ascii  ___T
221 0x000028e0 0x000028e0   4    4         ascii  ___T
222 0x000028e7 0x000028e7   4    4         ascii  ___T
223 0x000028ee 0x000028ee   4    4         ascii  ___T
224 0x000028f5 0x000028f5   4    4         ascii  ___T
225 0x000028fc 0x000028fc   4    4         ascii  ___T
226 0x00002903 0x00002903   4    4         ascii  ___T
227 0x0000290a 0x0000290a  31   32         ascii  ______________________________\
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg1, int16_t arg3, int16_t arg_4aeh);
│           ; arg int16_t arg1 @ ax
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg_4aeh @ stack + 0x4ae
│           0000:0000      sub   word es:[bx + si], ax                 ; arg3
│           ; DATA XREF from str.C_E @ +0x6eb
│           0000:0003      add   byte [0x99a2], ch
│           0000:0007      add   al, 0x8c
│           0000:0009      enter 0xffffffffffffd88e, 0xffffffffffffff8e
│           0000:000d      sar   ah, 0xe8
│           ; DATA XREF from fcn.00000000 @ 0x33
│           0000:0010      xchg  bp, ax                                ; arg1
│           ; XREFS(21)
│           0000:0011      add   byte [bp + 0x4ae], bh
│           0000:0015      mov   di, 0x2926                            ; '&)' ; "__\"
│           0000:0018      call  fcn.00000458                          ; fcn.00000458
│           0000:001b      mov   si, 0x73d
│           0000:001e      mov   di, 0x3286
│           0000:0021      call  fcn.00000458                          ; fcn.00000458
│           0000:0024      mov   si, 0x2926                            ; '&)' ; "__\"
│           0000:0027      mov   bp, 0x960
│           ; DATA XREF from str.C_E @ +0xf
│           ; DATA XREFS from fcn.00001b40 @ +0x128, +0x9ed, +0x9f5, +0xa73
│           0000:002a      mov   bx, 0xc00
│           0000:002d      mov   cx, 0x380d
│           ; DATA XREF from str.C_E @ +0x698
│           ; DATA XREFS from str.8 @ +0x29e, +0x354
│           0000:0030      call  fcn.000000d4                          ; fcn.000000d4
│           0000:0033      mov   byte [0x497], 0x10                    ; [0x10:1]=149
│           ; DATA XREF from str.C_E @ +0x8d
│           0000:0038      mov   si, 0x8cd
│           0000:003b      mov   di, 0x2926                            ; '&)' ; "__\"
│           ; DATA XREF from fcn.00000458 @ +0x25e
│           ; DATA XREF from str.8 @ +0x941
│           0000:003e      call  fcn.00000458                          ; fcn.00000458
│           ; XREFS(60)
│           0000:0041      mov   si, 0x10db
│           ; DATA XREF from fcn.00000458 @ +0x381
│           ; DATA XREF from str.C_E @ +0x5a5
│           ; DATA XREFS from str.8 @ +0x262, +0x274
│           ; DATA XREF from fcn.00001b40 @ +0x65c
│           0000:0044      mov   di, 0x3286
│           0000:0047      call  fcn.00000458                          ; fcn.00000458
│           0000:004a      mov   si, 0x2926                            ; '&)' ; "__\"
│           0000:004d      mov   bp, 0x960
│           ; DATA XREF from fcn.00000000 @ 0x7f
│           ; DATA XREFS from fcn.000000d4 @ +0x1b, +0x65, +0x71
│           0000:0050      mov   bx, 0
│           0000:0053      mov   cx, 0xcc8
│           0000:0056      call  fcn.000000d4                          ; fcn.000000d4
│           0000:0059      mov   si, 0x1861
│           0000:005c      mov   di, 0x2926                            ; '&)' ; "__\"
│           0000:005f      call  fcn.00000458                          ; fcn.00000458
│           0000:0062      mov   si, 0x2088
│           0000:0065      mov   di, 0x3286
│           0000:0068      call  fcn.00000458                          ; fcn.00000458
│           ; DATA XREF from fcn.00000458 @ +0x12f
│           0000:006b      mov   si, 0x2926                            ; '&)' ; "__\"
│           0000:006e      mov   bp, 0x960
│           0000:0071      mov   bx, 0x4400
│           0000:0074      mov   cx, 0xcc8
│           0000:0077      call  fcn.000000d4                          ; fcn.000000d4
│           0000:007a      mov   byte [0x498], 0xff                    ; [0xff:1]=142
│           0000:007f      mov   byte [0x497], 0x50                    ; 'P'
│                                                                      ; [0x50:1]=187
│           0000:0084      mov   si, 0x2799
│           0000:0087      mov   di, 0x2926                            ; '&)' ; "__\"
│           ; XREFS: DATA 0x00000db2  DATA 0x00001010  DATA 0x00001a18  
│           ; XREFS: DATA 0x00001f3a  DATA 0x00001f5c  DATA 0x0000209d  
│           ; XREFS: DATA 0x00002402  DATA 0x000024c8  
│           0000:008a      call  fcn.00000458                          ; fcn.00000458
│           0000:008d      invalid
```

### Function 0x0000008e
```asm
; CALL XREF from fcn.00000458 @ +0x149
            ; DATA XREF from str.8 @ +0x841
┌ fcn.0000008e();
└           0000:008e      xchg  byte [bp + si], dh
```

### Function 0x000000d4
```asm
; CALL XREFS from fcn.00000000 @ 0x30, 0x56, 0x77
            ; CALL XREF from fcn.0000008e @ +0x12
┌ fcn.000000d4();
│           0000:00d4      xor   ax, ax
│           0000:00d6      mov   al, byte [0x499]                      ; [0x499:1]=235
│           0000:00d9      add   ax, ax
│           0000:00db      add   ax, 0xde
│           ; DATA XREF from fcn.000000d4 @ 0xdb
│           0000:00de      mov   di, ax
│           ; DATA XREF from str.8 @ +0x2e
│           ; DATA XREF from fcn.00001b40 @ +0xb0d
└           0000:00e0      jmp   word [di]
```

### Function 0x00000298
```asm
; CALL XREFS from fcn.000000d4 @ +0x1a0, +0x1a4, +0x1a8, +0x1ac
┌ fcn.00000298(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0298      add   dh, dh
│           0000:029a      adc   bl, bl
│           0000:029c      add   dl, dl
│           0000:029e      adc   bl, bl
│           ; DATA XREF from str.8 @ +0x1e1
│           0000:02a0      add   dh, dh
│           ; DATA XREF from fcn.00001b40 @ +0xa61
│           0000:02a2      adc   bl, bl
│           0000:02a4      add   dl, dl
│           0000:02a6      adc   bl, bl
│           ; DATA XREF from str.8 @ +0x5e0
│           0000:02a8      and   bl, 0xf
│           0000:02ab      xor   bh, bh
│           0000:02ad      mov   al, byte [bx + 0x2ae]                 ; arg3
└           0000:02b1      ret
```

### Function 0x00000319
```asm
; CALL XREFS from fcn.00000298 @ +0x5b, +0x5f
┌ fcn.00000319(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0319      xor   al, al
│           0000:031b      mov   cx, 2
│       ┌─> 0000:031e      add   dh, dh
│       ╎   0000:0320      adc   bl, bl
│       ╎   0000:0322      add   dl, dl
│       ╎   0000:0324      adc   bl, bl
│       ╎   0000:0326      add   dh, dh
│       ╎   0000:0328      adc   bl, bl
│       ╎   0000:032a      add   dl, dl
│       ╎   0000:032c      adc   bl, bl
│       ╎   0000:032e      and   bl, 0xf
│       ╎   0000:0331      xor   bh, bh
│       ╎   0000:0333      add   al, al
│       ╎   0000:0335      add   al, al
│       ╎   0000:0337      add   al, al
│       ╎   0000:0339      add   al, al
│       ╎   0000:033b      or    al, byte [bx + 0x33e]                 ; arg3
│       └─< 0000:033f      loop  0x31e
│           ; DATA XREF from str.C_E @ +0x47e
└           0000:0341      ret
```

### Function 0x00000352
```asm
; CALL XREF from fcn.0000008e @ +0x15
┌ fcn.00000352();
│           0000:0352      xor   ax, ax
│           0000:0354      mov   al, byte [0x499]                      ; [0x499:1]=235
│           0000:0357      add   ax, ax
│           0000:0359      add   ax, 0x35c
│           ; DATA XREF from fcn.00000352 @ 0x359
│           0000:035c      mov   di, ax
└           0000:035e      jmp   word [di]
```

### Function 0x00000384
```asm
; CALL XREF from fcn.00000352 @ +0x2c
┌ fcn.00000384();
│           0000:0384      mov   cx, 5
│       ┌─> 0000:0387      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0388      movsb byte es:[di], byte ptr [si]
│       ╎   0000:0389      add   di, 0x4e
│       └─< 0000:038c      loop  0x387
└           0000:038e      ret
```

### Function 0x000003a1
```asm
; CALL XREF from fcn.00000384 @ +0x17
┌ fcn.000003a1();
│           0000:03a1      mov   cx, 5
│       ┌─> 0000:03a4      push  cx
│       ╎   0000:03a5      push  di
│       ╎   0000:03a6      lodsb al, byte [si]
│       ╎   0000:03a7      call  fcn.000003b7                          ; fcn.000003b7
│       ╎   0000:03aa      lodsb al, byte [si]
│       ╎   0000:03ab      call  fcn.000003b7                          ; fcn.000003b7
│       ╎   0000:03ae      pop   di
│       ╎   0000:03af      add   di, 0x140
│       ╎   0000:03b3      pop   cx
│       └─< 0000:03b4      loop  0x3a4
└           0000:03b6      ret
```

### Function 0x000003b7
```asm
; CALL XREFS from fcn.000003a1 @ 0x3a7, 0x3ab
┌ fcn.000003b7();
│           0000:03b7      mov   cx, 4
│           0000:03ba      xor   ah, ah
│           0000:03bc      add   al, al
│           0000:03be      adc   ah, ah
│           0000:03c0      add   ah, ah
│           0000:03c2      add   ah, ah
│           ; DATA XREF from fcn.000000d4 @ +0x2d
│           ; DATA XREF from fcn.00000352 @ +0x1f
│           0000:03c4      add   al, al
│           0000:03c6      adc   ah, ah
│           0000:03c8      add   ah, ah
│           0000:03ca      add   ah, ah
│           ; DATA XREF from fcn.0000008e @ +0x21
│           ;-- str.G:
│           0000:03cc     .string "&\b%G" ; len=4
│           0000:03d0      loop  0x3ba
└           0000:03d2      ret
```

### Function 0x000003e5
```asm
; CALL XREF from str.G @ +0x11
┌ fcn.000003e5();
│           0000:03e5      mov   cx, 5
│       ┌─> 0000:03e8      push  cx
│       ╎   0000:03e9      push  di
│       ╎   0000:03ea      xor   dl, dl
│       ╎   0000:03ec      mov   cx, 4
│      ┌──> 0000:03ef      mov   al, byte es:[di]
│      ╎╎   0000:03f2      call  fcn.0000040b                          ; fcn.0000040b
│      ╎╎   0000:03f5      stosb byte es:[di], al
│      └──< 0000:03f6      loop  0x3ef
│       ╎   0000:03f8      pop   di
│       ╎   0000:03f9      add   di, 0x2000                            ; "*\xa0A\xca\"\U00000011*\U00000013\x82((\x88A\xba \xae*\xab\x8a\x8a\x88\xea* A\xfa\xe2\xae*\xae\n\xee*\x88\b\x88A\xfa\"\xea\n\xa8"
│       ╎   0000:03fd      cmp   di, 0x8000
│      ┌──< 0000:0401      jb    0x407
│      │╎   0000:0403      add   di, 0x80a0
│      └──> 0000:0407      pop   cx
│       └─< 0000:0408      loop  0x3e8
└           0000:040a      ret
```

### Function 0x0000040b
```asm
; CALL XREF from fcn.000003e5 @ 0x3f2
┌ fcn.0000040b(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:040b      test  dl, 0xff
│       ┌─< 0000:040e      je    0x411
│       │   0000:0410      ret
│       └─> 0000:0411      mov   ah, al
│           0000:0413      mov   bl, ah
│           0000:0415      shr   bl, 1
│           0000:0417      shr   bl, 1
│           0000:0419      shr   bl, 1
│           0000:041b      shr   bl, 1
│           0000:041d      xor   bh, bh
│           0000:041f      mov   si, bx                                ; arg3
│           0000:0421      mov   al, byte cs:[bx + 0x444]              ; arg3
│           0000:0426      add   al, al
│           0000:0428      add   al, al
│           0000:042a      add   al, al
│           0000:042c      add   al, al
│           0000:042e      mov   bl, ah
│           0000:0430      and   bl, 0xf
│           0000:0433      or    al, byte cs:[bx + 0x444]              ; arg3
│           0000:0438      or    si, si
│       ┌─< 0000:043a      je    0x43d
│       │   0000:043c      ret
│       └─> 0000:043d      test  dh, 0xff
│       ┌─< 0000:0440      jne   0x443
│       │   0000:0442      ret
│       └─> 0000:0443      mov   al, ah
│           0000:0445      mov   dl, 0xff
└           0000:0447      ret
```

### Function 0x00000458
```asm
; XREFS: CALL 0x00000018  CALL 0x00000021  CALL 0x0000003e  
            ; XREFS: CALL 0x00000047  CALL 0x0000005f  CALL 0x00000068  
            ; XREFS: CALL 0x0000008a  CODE 0x00000499  
┌ fcn.00000458();
│       ┌─> 0000:0458      lodsb al, byte [si]
│       ╎   0000:0459      or    al, al
│      ┌──< 0000:045b      jne   0x45e
│      │╎   0000:045d      ret
│      └──> 0000:045e      mov   ah, al
│       ╎   0000:0460      and   ah, 0xf0
│       ╎   0000:0463      cmp   ah, byte [0x497]                      ; [0x497:1]=117
│      ┌──< 0000:0467      jne   0x471
│      │╎   0000:0469      and   al, 0xf
│      │╎   0000:046b      mov   ah, al
│      │╎   0000:046d      mov   al, 0xaa
│     ┌───< 0000:046f      jmp   0x494
│     │└──> 0000:0471      cmp   ah, 0x40
│     │┌──< 0000:0474      jne   0x47e
│     ││╎   0000:0476      and   al, 0xf
│     ││╎   0000:0478      mov   ah, al
│     ││╎   0000:047a      xor   al, al
│    ┌────< 0000:047c      jmp   0x494
│    ││└──> 0000:047e      test  byte [0x498], 0xff                    ; [0x498:1]=251
│    ││┌──< 0000:0483      je    0x492
│    │││╎   0000:0485      cmp   ah, 0xd0
│   ┌─────< 0000:0488      jne   0x492
│   ││││╎   0000:048a      and   al, 0xf
│   ││││╎   0000:048c      mov   ah, al
│   ││││╎   0000:048e      mov   al, 0xff
│  ┌──────< 0000:0490      jmp   0x494
│  │└──└──> 0000:0492      mov   ah, 1
│  │ ││ ╎   ; CODE XREFS from fcn.00000458 @ 0x46f, 0x47c, 0x490
│  └─└└┌──> 0000:0494      stosb byte es:[di], al
│      ╎╎   0000:0495      dec   ah
│      │╎   ; DATA XREF from fcn.00000458 @ 0x463
│      └──< 0000:0497      jne   0x494
│       │   ; DATA XREF from fcn.0000008e @ +0x19
│       │   ; DATA XREF from fcn.000000d4 @ 0xd6
│       │   ; DATA XREF from fcn.00000352 @ 0x354
└       └─< 0000:0499      jmp   fcn.00000458
```

### Function 0x00001b40
```asm
; CALL XREF from str.8 @ +0x21b
┌ fcn.00001b40(int16_t arg3, int16_t arg4);
│           ; arg int16_t arg3 @ bx
│           ; arg int16_t arg4 @ cx
│           0000:1b40      out   dx, al
│           0000:1b41      and   byte [bx + si + 0x3aa8], 0xa8         ; [0xa8:1]=6 ; arg3
│           0000:1b46      sub   ch, byte [0xa11]                      ; [0xa11:1]=138
│           0000:1b4a      test  al, 0x41
│           0000:1b4c      lodsb al, byte [si]
│           0000:1b4d      adc   word [bx + si - 0x4560], cx           ; arg4
│           0000:1b51      mov   al, byte [0x822a]                     ; [0x822a:1]=255
│           0000:1b54      adc   word [bp + si + 0x41a2], cx           ; arg4
│       ┌─< 0000:1b58      jmp   0x1b64
..
│       │   ; CODE XREF from fcn.00001b40 @ 0x1b58
└       └─> 0000:1b64      ljmp  0xbaa0:0x3c0
```

## Cross-References (callers)
```json
  0x0000008e:
[{"from":1441,"to":142,"type":"CALL"},{"from":6467,"to":142,"type":"DATA"}]
  0x000000d4:
[{"from":48,"to":212,"type":"CALL"},{"from":86,"to":212,"type":"CALL"},{"from":119,"to":212,"type":"CALL"},{"from":160,"to":212,"type":"CALL"}]
  0x00000298:
[{"from":628,"to":664,"type":"CALL"},{"from":632,"to":664,"type":"CALL"},{"from":636,"to":664,"type":"CALL"},{"from":640,"to":664,"type":"CALL"}]
  0x00000319:
[{"from":755,"to":793,"type":"CALL"},{"from":759,"to":793,"type":"CALL"}]
  0x00000352:
[{"from":163,"to":850,"type":"CALL"}]
  0x00000384:
[{"from":894,"to":900,"type":"CALL"}]
  0x000003a1:
[{"from":923,"to":929,"type":"CALL"}]
  0x000003b7:
[{"from":935,"to":951,"type":"CALL"},{"from":939,"to":951,"type":"CALL"}]
  0x000003e5:
[{"from":989,"to":997,"type":"CALL"}]
  0x0000040b:
[{"from":1010,"to":1035,"type":"CALL"}]
  0x00000458:
[{"from":24,"to":1112,"type":"CALL"},{"from":33,"to":1112,"type":"CALL"},{"from":62,"to":1112,"type":"CALL"},{"from":71,"to":1112,"type":"CALL"},{"from":95,"to":1112,"type":"CALL"},{"from":104,"to":1112,"type":"CALL"},{"from":138,"to":1112,"type":"CALL"},{"from":1177,"to":1112,"type":"CODE"}]
  0x00001b40:
[{"from":4893,"to":6976,"type":"CALL"}]
```