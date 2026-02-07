00000000  261200            adc al,[es:bx+si]
00000003  0004              add [si],al
00000005  A044A6            mov al,[0xa644]
00000008  8E062CFF          mov es,word [0xff2c]
0000000C  BF0080            mov di,0x8000
0000000F  BE11A8            mov si,0xa811
00000012  B002              mov al,0x2
00000014  2EFF160C01        call word near [cs:0x10c]
00000019  1E                push ds
0000001A  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000001F  BE0080            mov si,0x8000
00000022  B90001            mov cx,0x100
00000025  2EFF164420        call word near [cs:0x2044]
0000002A  1F                pop ds
0000002B  C6064EFF00        mov byte [0xff4e],0x0
00000030  C6064FFF00        mov byte [0xff4f],0x0
00000035  C60617B200        mov byte [0xb217],0x0
0000003A  2EFF160220        call word near [cs:0x2002]
0000003F  2EFF161220        call word near [cs:0x2012]
00000044  BE1CA8            mov si,0xa81c
00000047  2EFF161020        call word near [cs:0x2010]
0000004C  E84100            call 0x90
0000004F  0E                push cs
00000050  07                pop es
00000051  8A1E06C0          mov bl,[0xc006]
00000055  FECB              dec bl
00000057  02DB              add bl,bl
00000059  32FF              xor bh,bh
0000005B  8BB70CB1          mov si,[bx-0x4ef4]
0000005F  BFF6B1            mov di,0xb1f6
00000062  B90C00            mov cx,0xc
00000065  F3A5              rep movsw
00000067  E85905            call 0x5c3
0000006A  BB600D            mov bx,0xd60
0000006D  B93736            mov cx,0x3637
00000070  B0FF              mov al,0xff
00000072  2EFF160020        call word near [cs:0x2000]
00000077  C7064CFF6BA8      mov word [0xff4c],0xa86b
0000007D  2EFF160460        call word near [cs:0x6004]
00000082  3CFF              cmp al,0xff
00000084  7405              jz 0x8b
00000086  E83300            call 0xbc
00000089  EBF2              jmp 0x7d
0000008B  2EFF264020        jmp word near [cs:0x2040]
00000090  BEC900            mov si,0xc9
00000093  A006C0            mov al,[0xc006]
00000096  FEC8              dec al
00000098  32E4              xor ah,ah
0000009A  03F0              add si,ax
0000009C  8A14              mov dl,[si]
0000009E  0E                push cs
0000009F  07                pop es
000000A0  BF0FB2            mov di,0xb20f
000000A3  32F6              xor dh,dh
000000A5  B90800            mov cx,0x8
000000A8  02D2              add dl,dl
000000AA  7309              jnc 0xb5
000000AC  8AC1              mov al,cl
000000AE  F6D8              neg al
000000B0  0408              add al,0x8
000000B2  AA                stosb
000000B3  FEC6              inc dh
000000B5  E2F1              loop 0xa8
000000B7  88360EB2          mov [0xb20e],dh
000000BB  C3                ret
000000BC  8AD8              mov bl,al
000000BE  32FF              xor bh,bh
000000C0  03DB              add bx,bx
000000C2  2EFFA7C3A0        jmp word near [cs:bx-0x5f3d]
000000C7  D5A0              aad byte 0xa0
000000C9  EBA0              jmp 0x6b
000000CB  0CA1              or al,0xa1
000000CD  8DA1AAA1          lea sp,[bx+di-0x5e56]
000000D1  00A3BAA4          add [bp+di-0x5b46],ah
000000D5  00A106A1          add [bx+di-0x5efa],ah
000000D9  C6061AFF00        mov byte [0xff1a],0x0
000000DE  E86705            call 0x648
000000E1  803E1AFF50        cmp byte [0xff1a],0x50
000000E6  72F6              jc 0xde
000000E8  BE45A7            mov si,0xa745
000000EB  E81E06            call 0x70c
000000EE  C3                ret
000000EF  C6061AFF00        mov byte [0xff1a],0x0
000000F4  E85105            call 0x648
000000F7  803E1AFF50        cmp byte [0xff1a],0x50
000000FC  72F6              jc 0xf4
000000FE  BE4FA7            mov si,0xa74f
00000101  E90806            jmp 0x70c
00000104  BE59A7            mov si,0xa759
00000107  E90206            jmp 0x70c
0000010A  BE61A7            mov si,0xa761
0000010D  E9FC05            jmp 0x70c
00000110  E8A304            call 0x5b6
00000113  BB2227            mov bx,0x2722
00000116  B92D1C            mov cx,0x1c2d
00000119  B0FF              mov al,0xff
0000011B  2EFF160020        call word near [cs:0x2000]
00000120  C70654FF2527      mov word [0xff54],0x2725
00000126  C60652FF04        mov byte [0xff52],0x4
0000012B  C60653FF04        mov byte [0xff53],0x4
00000130  B90400            mov cx,0x4
00000133  BE39A8            mov si,0xa839
00000136  2EFF160E60        call word near [cs:0x600e]
0000013B  C60656FF00        mov byte [0xff56],0x0
00000140  8A1E17B2          mov bl,[0xb217]
00000144  2EFF161060        call word near [cs:0x6010]
00000149  7302              jnc 0x14d
0000014B  32DB              xor bl,bl
0000014D  881E17B2          mov [0xb217],bl
00000151  32FF              xor bh,bh
00000153  03DB              add bx,bx
00000155  FFA755A1          jmp word near [bx-0x5eab]
00000159  5D                pop bp
0000015A  A167A1            mov ax,[0xa167]
0000015D  6E                outsb
0000015E  A186A1            mov ax,[0xa186]
00000161  E85204            call 0x5b6
00000164  C7064CFF0EAB      mov word [0xff4c],0xab0e
0000016A  C3                ret
0000016B  C7064CFF8CA8      mov word [0xff4c],0xa88c
00000171  C3                ret
00000172  E82B03            call 0x4a0
00000175  C7064CFF8DA9      mov word [0xff4c],0xa98d
0000017B  F60653FFFF        test byte [0xff53],0xff
00000180  7401              jz 0x183
00000182  C3                ret
00000183  C7064CFF79AA      mov word [0xff4c],0xaa79
00000189  C3                ret
0000018A  C7064CFFA6AA      mov word [0xff4c],0xaaa6
00000190  C3                ret
00000191  0E                push cs
00000192  07                pop es
00000193  BE0FB2            mov si,0xb20f
00000196  BF58FF            mov di,0xff58
00000199  B90800            mov cx,0x8
0000019C  F3A4              rep movsb
0000019E  A00EB2            mov al,[0xb20e]
000001A1  A253FF            mov [0xff53],al
000001A4  C60656FF00        mov byte [0xff56],0x0
000001A9  C60618B200        mov byte [0xb218],0x0
000001AE  A00EB2            mov al,[0xb20e]
000001B1  A253FF            mov [0xff53],al
000001B4  3C03              cmp al,0x3
000001B6  7202              jc 0x1ba
000001B8  B003              mov al,0x3
000001BA  A252FF            mov [0xff52],al
000001BD  BB6E15            mov bx,0x156e
000001C0  B92425            mov cx,0x2524
000001C3  B0FF              mov al,0xff
000001C5  2EFF160020        call word near [cs:0x2000]
000001CA  C60657FFFF        mov byte [0xff57],0xff
000001CF  C70654FF7115      mov word [0xff54],0x1571
000001D5  C7066AFF2100      mov word [0xff6a],0x21
000001DB  C70668FF1700      mov word [0xff68],0x17
000001E1  BE8AB0            mov si,0xb08a
000001E4  BFF6B1            mov di,0xb1f6
000001E7  8A0E52FF          mov cl,[0xff52]
000001EB  32ED              xor ch,ch
000001ED  A056FF            mov al,[0xff56]
000001F0  2EFF161260        call word near [cs:0x6012]
000001F5  8A1E18B2          mov bl,[0xb218]
000001F9  2EFF161060        call word near [cs:0x6010]
000001FE  7307              jnc 0x207
00000200  C7064CFF65A9      mov word [0xff4c],0xa965
00000206  C3                ret
00000207  881E18B2          mov [0xb218],bl
0000020B  8AC3              mov al,bl
0000020D  020656FF          add al,[0xff56]
00000211  BB58FF            mov bx,0xff58
00000214  D7                xlatb
00000215  50                push ax
00000216  C7064CFFC4A8      mov word [0xff4c],0xa8c4
0000021C  2EFF160460        call word near [cs:0x6004]
00000221  58                pop ax
00000222  50                push ax
00000223  8B364CFF          mov si,[0xff4c]
00000227  56                push si
00000228  32E4              xor ah,ah
0000022A  03C0              add ax,ax
0000022C  8BD8              mov bx,ax
0000022E  8B878AB0          mov ax,[bx-0x4f76]
00000232  A34CFF            mov [0xff4c],ax
00000235  2EFF160460        call word near [cs:0x6004]
0000023A  5E                pop si
0000023B  89364CFF          mov [0xff4c],si
0000023F  2EFF160460        call word near [cs:0x6004]
00000244  58                pop ax
00000245  50                push ax
00000246  32E4              xor ah,ah
00000248  8BD8              mov bx,ax
0000024A  03C0              add ax,ax
0000024C  03C3              add ax,bx
0000024E  BEF6B1            mov si,0xb1f6
00000251  03F0              add si,ax
00000253  8A14              mov dl,[si]
00000255  8B4401            mov ax,[si+0x1]
00000258  88161BB2          mov [0xb21b],dl
0000025C  A31CB2            mov [0xb21c],ax
0000025F  2EFF160A60        call word near [cs:0x600a]
00000264  5B                pop bx
00000265  C7064CFF28A9      mov word [0xff4c],0xa928
0000026B  7255              jc 0x2c2
0000026D  52                push dx
0000026E  50                push ax
0000026F  BEA600            mov si,0xa6
00000272  B90500            mov cx,0x5
00000275  F604FF            test byte [si],0xff
00000278  740C              jz 0x286
0000027A  46                inc si
0000027B  E2F8              loop 0x275
0000027D  58                pop ax
0000027E  5A                pop dx
0000027F  C7064CFF40A9      mov word [0xff4c],0xa940
00000285  C3                ret
00000286  58                pop ax
00000287  5A                pop dx
00000288  88168500          mov [0x85],dl
0000028C  A38600            mov [0x86],ax
0000028F  FEC3              inc bl
00000291  881C              mov [si],bl
00000293  C7064CFFF2A8      mov word [0xff4c],0xa8f2
00000299  2EFF160460        call word near [cs:0x6004]
0000029E  8A161BB2          mov dl,[0xb21b]
000002A2  A11CB2            mov ax,[0xb21c]
000002A5  BF1EB2            mov di,0xb21e
000002A8  2EFF160660        call word near [cs:0x6006]
000002AD  8B364CFF          mov si,[0xff4c]
000002B1  56                push si
000002B2  C7064CFF1EB2      mov word [0xff4c],0xb21e
000002B8  2EFF160460        call word near [cs:0x6004]
000002BD  5E                pop si
000002BE  89364CFF          mov [0xff4c],si
000002C2  2EFF160460        call word near [cs:0x6004]
000002C7  2EFF161620        call word near [cs:0x2016]
000002CC  C7064CFF09A9      mov word [0xff4c],0xa909
000002D2  2EFF160460        call word near [cs:0x6004]
000002D7  BB2B2F            mov bx,0x2f2b
000002DA  B9190C            mov cx,0xc19
000002DD  B0FF              mov al,0xff
000002DF  2EFF160020        call word near [cs:0x2000]
000002E4  C70654FF2E30      mov word [0xff54],0x302e
000002EA  2EFF160860        call word near [cs:0x6008]
000002EF  9C                pushf
000002F0  E8C302            call 0x5b6
000002F3  9D                popf
000002F4  C7064CFFA8A8      mov word [0xff4c],0xa8a8
000002FA  7201              jc 0x2fd
000002FC  C3                ret
000002FD  C7064CFF65A9      mov word [0xff4c],0xa965
00000303  C3                ret
00000304  E89901            call 0x4a0
00000307  C60656FF00        mov byte [0xff56],0x0
0000030C  A053FF            mov al,[0xff53]
0000030F  3C02              cmp al,0x2
00000311  7202              jc 0x315
00000313  B002              mov al,0x2
00000315  A252FF            mov [0xff52],al
00000318  BB7817            mov bx,0x1778
0000031B  B91A21            mov cx,0x211a
0000031E  B0FF              mov al,0xff
00000320  2EFF160020        call word near [cs:0x2000]
00000325  C60657FF00        mov byte [0xff57],0x0
0000032A  C70654FF7B19      mov word [0xff54],0x197b
00000330  C7066AFF1900      mov word [0xff6a],0x19
00000336  BE8AB0            mov si,0xb08a
00000339  8A0E52FF          mov cl,[0xff52]
0000033D  32ED              xor ch,ch
0000033F  A056FF            mov al,[0xff56]
00000342  2EFF161260        call word near [cs:0x6012]
00000347  32DB              xor bl,bl
00000349  2EFF161060        call word near [cs:0x6010]
0000034E  7307              jnc 0x357
00000350  C7064CFF65A9      mov word [0xff4c],0xa965
00000356  C3                ret
00000357  881E18B2          mov [0xb218],bl
0000035B  C7064CFFD7A8      mov word [0xff4c],0xa8d7
00000361  2EFF160460        call word near [cs:0x6004]
00000366  A018B2            mov al,[0xb218]
00000369  020656FF          add al,[0xff56]
0000036D  BB58FF            mov bx,0xff58
00000370  D7                xlatb
00000371  50                push ax
00000372  8B364CFF          mov si,[0xff4c]
00000376  56                push si
00000377  32E4              xor ah,ah
00000379  03C0              add ax,ax
0000037B  8BD8              mov bx,ax
0000037D  8B878AB0          mov ax,[bx-0x4f76]
00000381  A34CFF            mov [0xff4c],ax
00000384  2EFF160460        call word near [cs:0x6004]
00000389  5E                pop si
0000038A  89364CFF          mov [0xff4c],si
0000038E  2EFF160460        call word near [cs:0x6004]
00000393  58                pop ax
00000394  B103              mov cl,0x3
00000396  F6E1              mul cl
00000398  BBF6B1            mov bx,0xb1f6
0000039B  03D8              add bx,ax
0000039D  8A17              mov dl,[bx]
0000039F  8B4701            mov ax,[bx+0x1]
000003A2  D0EA              shr dl,0x0
000003A4  D1D8              rcr ax,0x0
000003A6  88161BB2          mov [0xb21b],dl
000003AA  A31CB2            mov [0xb21c],ax
000003AD  50                push ax
000003AE  52                push dx
000003AF  C7064CFFC4A9      mov word [0xff4c],0xa9c4
000003B5  2EFF160460        call word near [cs:0x6004]
000003BA  5A                pop dx
000003BB  58                pop ax
000003BC  BF1EB2            mov di,0xb21e
000003BF  2EFF160660        call word near [cs:0x6006]
000003C4  8B364CFF          mov si,[0xff4c]
000003C8  56                push si
000003C9  C7064CFF1EB2      mov word [0xff4c],0xb21e
000003CF  2EFF160460        call word near [cs:0x6004]
000003D4  5E                pop si
000003D5  89364CFF          mov [0xff4c],si
000003D9  2EFF160460        call word near [cs:0x6004]
000003DE  BB2134            mov bx,0x3421
000003E1  B9190C            mov cx,0xc19
000003E4  B0FF              mov al,0xff
000003E6  2EFF160020        call word near [cs:0x2000]
000003EB  C70654FF2435      mov word [0xff54],0x3524
000003F1  2EFF160860        call word near [cs:0x6008]
000003F6  C7064CFFFEA9      mov word [0xff4c],0xa9fe
000003FC  7301              jnc 0x3ff
000003FE  C3                ret
000003FF  8A161BB2          mov dl,[0xb21b]
00000403  A11CB2            mov ax,[0xb21c]
00000406  2EFF160C60        call word near [cs:0x600c]
0000040B  C7064CFFADA9      mov word [0xff4c],0xa9ad
00000411  2EFF160460        call word near [cs:0x6004]
00000416  A018B2            mov al,[0xb218]
00000419  020656FF          add al,[0xff56]
0000041D  BB58FF            mov bx,0xff58
00000420  D7                xlatb
00000421  FEC0              inc al
00000423  BEA600            mov si,0xa6
00000426  B90500            mov cx,0x5
00000429  3A04              cmp al,[si]
0000042B  7403              jz 0x430
0000042D  46                inc si
0000042E  E2F9              loop 0x429
00000430  C60400            mov byte [si],0x0
00000433  FEC8              dec al
00000435  32E4              xor ah,ah
00000437  50                push ax
00000438  A006C0            mov al,[0xc006]
0000043B  FEC8              dec al
0000043D  BEC900            mov si,0xc9
00000440  03F0              add si,ax
00000442  58                pop ax
00000443  BF94A4            mov di,0xa494
00000446  03F8              add di,ax
00000448  8A05              mov al,[di]
0000044A  0804              or [si],al
0000044C  2EFF161620        call word near [cs:0x2016]
00000451  E84C00            call 0x4a0
00000454  C7064CFF66A9      mov word [0xff4c],0xa966
0000045A  F60653FFFF        test byte [0xff53],0xff
0000045F  7501              jnz 0x462
00000461  C3                ret
00000462  C7064CFF4BAA      mov word [0xff4c],0xaa4b
00000468  2EFF160460        call word near [cs:0x6004]
0000046D  BB2B2F            mov bx,0x2f2b
00000470  B9190C            mov cx,0xc19
00000473  B0FF              mov al,0xff
00000475  2EFF160020        call word near [cs:0x2000]
0000047A  C70654FF2E30      mov word [0xff54],0x302e
00000480  2EFF160860        call word near [cs:0x6008]
00000485  C7064CFF65A9      mov word [0xff4c],0xa965
0000048B  7301              jnc 0x48e
0000048D  C3                ret
0000048E  E82501            call 0x5b6
00000491  C7064CFF8DA9      mov word [0xff4c],0xa98d
00000497  C3                ret
00000498  80402010          add byte [bx+si+0x20],0x10
0000049C  0804              or [si],al
0000049E  0201              add al,[bx+di]
000004A0  0E                push cs
000004A1  07                pop es
000004A2  BEA600            mov si,0xa6
000004A5  BF58FF            mov di,0xff58
000004A8  B90500            mov cx,0x5
000004AB  32D2              xor dl,dl
000004AD  AC                lodsb
000004AE  0AC0              or al,al
000004B0  7405              jz 0x4b7
000004B2  FEC8              dec al
000004B4  AA                stosb
000004B5  FEC2              inc dl
000004B7  E2F4              loop 0x4ad
000004B9  881653FF          mov [0xff53],dl
000004BD  C3                ret
000004BE  C60618B200        mov byte [0xb218],0x0
000004C3  C60656FF00        mov byte [0xff56],0x0
000004C8  0E                push cs
000004C9  07                pop es
000004CA  BE0FB2            mov si,0xb20f
000004CD  BF58FF            mov di,0xff58
000004D0  B90800            mov cx,0x8
000004D3  F3A4              rep movsb
000004D5  A00EB2            mov al,[0xb20e]
000004D8  A253FF            mov [0xff53],al
000004DB  A053FF            mov al,[0xff53]
000004DE  3C02              cmp al,0x2
000004E0  7202              jc 0x4e4
000004E2  B002              mov al,0x2
000004E4  A252FF            mov [0xff52],al
000004E7  BB7817            mov bx,0x1778
000004EA  B91A21            mov cx,0x211a
000004ED  B0FF              mov al,0xff
000004EF  2EFF160020        call word near [cs:0x2000]
000004F4  C60657FF00        mov byte [0xff57],0x0
000004F9  C70654FF7B19      mov word [0xff54],0x197b
000004FF  C7066AFF1900      mov word [0xff6a],0x19
00000505  BE8AB0            mov si,0xb08a
00000508  8A0E52FF          mov cl,[0xff52]
0000050C  32ED              xor ch,ch
0000050E  A056FF            mov al,[0xff56]
00000511  2EFF161260        call word near [cs:0x6012]
00000516  8A1E18B2          mov bl,[0xb218]
0000051A  2EFF161060        call word near [cs:0x6010]
0000051F  7307              jnc 0x528
00000521  C7064CFF65A9      mov word [0xff4c],0xa965
00000527  C3                ret
00000528  881E18B2          mov [0xb218],bl
0000052C  C7064CFFCAAA      mov word [0xff4c],0xaaca
00000532  2EFF160460        call word near [cs:0x6004]
00000537  A018B2            mov al,[0xb218]
0000053A  020656FF          add al,[0xff56]
0000053E  BB58FF            mov bx,0xff58
00000541  D7                xlatb
00000542  50                push ax
00000543  8B364CFF          mov si,[0xff4c]
00000547  56                push si
00000548  32E4              xor ah,ah
0000054A  03C0              add ax,ax
0000054C  8BD8              mov bx,ax
0000054E  8B878AB0          mov ax,[bx-0x4f76]
00000552  A34CFF            mov [0xff4c],ax
00000555  2EFF160460        call word near [cs:0x6004]
0000055A  5E                pop si
0000055B  89364CFF          mov [0xff4c],si
0000055F  2EFF160460        call word near [cs:0x6004]
00000564  58                pop ax
00000565  32E4              xor ah,ah
00000567  03C0              add ax,ax
00000569  8BD8              mov bx,ax
0000056B  8B873AAB          mov ax,[bx-0x54c6]
0000056F  A34CFF            mov [0xff4c],ax
00000572  2EFF160460        call word near [cs:0x6004]
00000577  C7064CFFE9AA      mov word [0xff4c],0xaae9
0000057D  2EFF160460        call word near [cs:0x6004]
00000582  BB2B2F            mov bx,0x2f2b
00000585  B9190C            mov cx,0xc19
00000588  B0FF              mov al,0xff
0000058A  2EFF160020        call word near [cs:0x2000]
0000058F  C70654FF2E30      mov word [0xff54],0x302e
00000595  2EFF160860        call word near [cs:0x6008]
0000059A  9C                pushf
0000059B  E81800            call 0x5b6
0000059E  9D                popf
0000059F  C7064CFF65A9      mov word [0xff4c],0xa965
000005A5  7301              jnc 0x5a8
000005A7  C3                ret
000005A8  C7064CFFA6AA      mov word [0xff4c],0xaaa6
000005AE  2EFF160460        call word near [cs:0x6004]
000005B3  E912FF            jmp 0x4c8
000005B6  BB1727            mov bx,0x2717
000005B9  B9411D            mov cx,0x1d41
000005BC  32C0              xor al,al
000005BE  2EFF260020        jmp word near [cs:0x2000]
000005C3  BEE4A5            mov si,0xa5e4
000005C6  BB1707            mov bx,0x717
000005C9  B90800            mov cx,0x8
000005CC  51                push cx
000005CD  B90C00            mov cx,0xc
000005D0  51                push cx
000005D1  53                push bx
000005D2  AC                lodsb
000005D3  2EFF161630        call word near [cs:0x3016]
000005D8  5B                pop bx
000005D9  FEC7              inc bh
000005DB  59                pop cx
000005DC  E2F2              loop 0x5d0
000005DE  80EF0C            sub bh,0xc
000005E1  80C308            add bl,0x8
000005E4  59                pop cx
000005E5  E2E5              loop 0x5cc
000005E7  C3                ret
000005E8  0001              add [bx+di],al
000005EA  0203              add al,[bp+di]
000005EC  0405              add al,0x5
000005EE  1C1D              sbb al,0x1d
000005F0  1E                push ds
000005F1  1F                pop ds
000005F2  2021              and [bx+di],ah
000005F4  06                push es
000005F5  097D7E            or [di+0x7e],di
000005F8  7F80              jg 0x57a
000005FA  2223              and ah,[bp+di]
000005FC  2425              and al,0x25
000005FE  2627              es daa
00000600  06                push es
00000601  0A818283          or al,[bx+di-0x7c7e]
00000605  8428              test [bx+si],ch
00000607  292A              sub [bp+si],bp
00000609  2B2C              sub bp,[si]
0000060B  2D060B            sub ax,0xb06
0000060E  85868788          test [bp-0x7779],ax
00000612  2E2F              cs das
00000614  3031              xor [bx+di],dh
00000616  3233              xor dh,[bp+di]
00000618  06                push es
00000619  0C89              or al,0x89
0000061B  8A8B8C34          mov cl,[bp+di+0x348c]
0000061F  353637            xor ax,0x3736
00000622  3839              cmp [bx+di],bh
00000624  06                push es
00000625  0D8D8E            or ax,0x8e8d
00000628  8F                db 0x8f
00000629  90                nop
0000062A  3A3B              cmp bh,[bp+di]
0000062C  3C3D              cmp al,0x3d
0000062E  3E3F              ds aas
00000630  07                pop es
00000631  0E                push cs
00000632  91                xchg ax,cx
00000633  92                xchg ax,dx
00000634  93                xchg ax,bx
00000635  94                xchg ax,sp
00000636  1011              adc [bx+di],dl
00000638  1213              adc dl,[bp+di]
0000063A  1415              adc al,0x15
0000063C  080F              or [bx],cl
0000063E  95                xchg ax,bp
0000063F  96                xchg ax,si
00000640  97                xchg ax,di
00000641  98                cbw
00000642  16                push ss
00000643  17                pop ss
00000644  1819              sbb [bx+di],bl
00000646  1A1B              sbb bl,[bp+di]
00000648  833E50FF02        cmp word [0xff50],0x2
0000064D  7301              jnc 0x650
0000064F  C3                ret
00000650  C70650FF0000      mov word [0xff50],0x0
00000656  FE0619B2          inc byte [0xb219]
0000065A  803E19B214        cmp byte [0xb219],0x14
0000065F  7301              jnc 0x662
00000661  C3                ret
00000662  C60619B200        mov byte [0xb219],0x0
00000667  A01AB2            mov al,[0xb21a]
0000066A  FEC0              inc al
0000066C  3C03              cmp al,0x3
0000066E  7202              jc 0x672
00000670  32C0              xor al,al
00000672  A21AB2            mov [0xb21a],al
00000675  B124              mov cl,0x24
00000677  F6E1              mul cl
00000679  BE9CA6            mov si,0xa69c
0000067C  03F0              add si,ax
0000067E  BB170D            mov bx,0xd17
00000681  B90600            mov cx,0x6
00000684  51                push cx
00000685  B90600            mov cx,0x6
00000688  51                push cx
00000689  53                push bx
0000068A  AC                lodsb
0000068B  2EFF161630        call word near [cs:0x3016]
00000690  5B                pop bx
00000691  FEC7              inc bh
00000693  59                pop cx
00000694  E2F2              loop 0x688
00000696  80EF06            sub bh,0x6
00000699  80C308            add bl,0x8
0000069C  59                pop cx
0000069D  E2E5              loop 0x684
0000069F  C3                ret
000006A0  1C1D              sbb al,0x1d
000006A2  1E                push ds
000006A3  1F                pop ds
000006A4  2021              and [bx+di],ah
000006A6  2223              and ah,[bp+di]
000006A8  2425              and al,0x25
000006AA  2627              es daa
000006AC  2829              sub [bx+di],ch
000006AE  2A2B              sub ch,[bp+di]
000006B0  2C2D              sub al,0x2d
000006B2  2E2F              cs das
000006B4  3031              xor [bx+di],dh
000006B6  3233              xor dh,[bp+di]
000006B8  3435              xor al,0x35
000006BA  3637              ss aaa
000006BC  3839              cmp [bx+di],bh
000006BE  3A3B              cmp bh,[bp+di]
000006C0  3C3D              cmp al,0x3d
000006C2  3E3F              ds aas
000006C4  5F                pop di
000006C5  60                pusha
000006C6  61                popa
000006C7  626364            bound sp,[bp+di+0x64]
000006CA  65666768696A286B  gs a32 push dword 0x6b286a69
000006D2  6C                insb
000006D3  6D                insw
000006D4  6E                outsb
000006D5  6F                outsw
000006D6  2E7030            {pn} jo 0x709
000006D9  315233            xor [bp+si+0x33],dx
000006DC  7172              jno 0x750
000006DE  7374              jnc 0x754
000006E0  7576              jnz 0x758
000006E2  7778              ja 0x75c
000006E4  797A              jns 0x760
000006E6  7B7C              jpo 0x764
000006E8  40                inc ax
000006E9  41                inc cx
000006EA  42                inc dx
000006EB  43                inc bx
000006EC  44                inc sp
000006ED  45                inc bp
000006EE  46                inc si
000006EF  47                inc di
000006F0  48                dec ax
000006F1  49                dec cx
000006F2  4A                dec dx
000006F3  4B                dec bx
000006F4  284C4D            sub [si+0x4d],cl
000006F7  4E                dec si
000006F8  4F                dec di
000006F9  50                push ax
000006FA  2E51              cs push cx
000006FC  3031              xor [bx+di],dh
000006FE  52                push dx
000006FF  53                push bx
00000700  54                push sp
00000701  55                push bp
00000702  56                push si
00000703  37                aaa
00000704  57                push di
00000705  58                pop ax
00000706  59                pop cx
00000707  5A                pop dx
00000708  5B                pop bx
00000709  5C                pop sp
0000070A  5D                pop bp
0000070B  5E                pop si
0000070C  C6061AFF00        mov byte [0xff1a],0x0
00000711  AD                lodsw
00000712  3DFFFF            cmp ax,0xffff
00000715  7501              jnz 0x718
00000717  C3                ret
00000718  56                push si
00000719  8BF0              mov si,ax
0000071B  BB1F09            mov bx,0x91f
0000071E  B90700            mov cx,0x7
00000721  51                push cx
00000722  B90400            mov cx,0x4
00000725  51                push cx
00000726  53                push bx
00000727  AC                lodsb
00000728  2EFF161630        call word near [cs:0x3016]
0000072D  5B                pop bx
0000072E  FEC7              inc bh
00000730  59                pop cx
00000731  E2F2              loop 0x725
00000733  80EF04            sub bh,0x4
00000736  80C308            add bl,0x8
00000739  59                pop cx
0000073A  E2E5              loop 0x721
0000073C  E809FF            call 0x648
0000073F  803E1AFF28        cmp byte [0xff1a],0x28
00000744  72F6              jc 0x73c
00000746  5E                pop si
00000747  EBC3              jmp 0x70c
00000749  69A785A7A1A7      imul sp,[bx-0x587b],0xa7a1
0000074F  BDA7FF            mov bp,0xffa7
00000752  FF                db 0xff
00000753  BDA7A1            mov bp,0xa1a7
00000756  A7                cmpsw
00000757  85A769A7          test [bx-0x5897],sp
0000075B  FF                db 0xff
0000075C  FF                db 0xff
0000075D  BDA7D9            mov bp,0xd9a7
00000760  A7                cmpsw
00000761  F5                cmc
00000762  A7                cmpsw
00000763  FF                db 0xff
00000764  FFF5              push bp
00000766  A7                cmpsw
00000767  D9A7BDA7          fldenv [bx-0x5843]
0000076B  FF                db 0xff
0000076C  FF                db 0xff
0000076D  7D7E              jnl 0x7ed
0000076F  7F80              jg 0x6f1
00000771  818283848586      add word [bp+si-0x7b7d],0x8685
00000777  8788898A          xchg cx,[bx+si-0x7577]
0000077B  8B8C8D8E          mov cx,[si-0x7173]
0000077F  8F                db 0x8f
00000780  90                nop
00000781  91                xchg ax,cx
00000782  92                xchg ax,dx
00000783  93                xchg ax,bx
00000784  94                xchg ax,sp
00000785  95                xchg ax,bp
00000786  96                xchg ax,si
00000787  97                xchg ax,di
00000788  98                cbw
00000789  99                cwd
0000078A  9A7F809B9C        call word 0x9c9b:word 0x807f
0000078F  83849D9E9F        add word [si-0x6163],0xffffffffffffff9f
00000794  88A0A1A2          mov [bx+si-0x5d5f],ah
00000798  A38DA4            mov [0xa48d],ax
0000079B  A5                movsw
0000079C  A6                cmpsb
0000079D  91                xchg ax,cx
0000079E  92                xchg ax,dx
0000079F  93                xchg ax,bx
000007A0  94                xchg ax,sp
000007A1  95                xchg ax,bp
000007A2  96                xchg ax,si
000007A3  97                xchg ax,di
000007A4  98                cbw
000007A5  99                cwd
000007A6  9A7F809B9C        call word 0x9c9b:word 0x807f
000007AB  83849D9E9F        add word [si-0x6163],0xffffffffffffff9f
000007B0  88A0A1A2          mov [bx+si-0x5d5f],ah
000007B4  A38DA4            mov [0xa48d],ax
000007B7  A5                movsw
000007B8  A6                cmpsb
000007B9  91                xchg ax,cx
000007BA  92                xchg ax,dx
000007BB  93                xchg ax,bx
000007BC  94                xchg ax,sp
000007BD  95                xchg ax,bp
000007BE  96                xchg ax,si
000007BF  97                xchg ax,di
000007C0  98                cbw
000007C1  99                cwd
000007C2  9AB8BFA7B3        call word 0xb3a7:word 0xbfb8
000007C7  B9C085            mov cx,0x85c0
000007CA  A9BAC1            test ax,0xc1ba
000007CD  AC                lodsb
000007CE  B4BB              mov ah,0xbb
000007D0  C28DB5            ret word 0xb58d
000007D3  BCC391            mov sp,0x91c3
000007D6  B6BD              mov dh,0xbd
000007D8  C495B7BE          les dx,word [di-0x4149]
000007DC  C5999AC7          lds bx,word [bx+di-0x3866]
000007E0  C6                db 0xc6
000007E1  A7                cmpsw
000007E2  CAC9C8            retf word 0xc8c9
000007E5  85A9CCCB          test [bx+di-0x3434],bp
000007E9  AC                lodsb
000007EA  B4BB              mov ah,0xbb
000007EC  C28DB5            ret word 0xb58d
000007EF  BCC391            mov sp,0x91c3
000007F2  B6BD              mov dh,0xbd
000007F4  C495B7BE          les dx,word [di-0x4149]
000007F8  C5999ACE          lds bx,word [bx+di-0x3166]
000007FC  CDA7              int byte 0xa7
000007FE  D1D0              rcl ax,0x0
00000800  CF                iret
00000801  85A9D3D2          test [bx+di-0x2d2d],bp
00000805  AC                lodsb
00000806  B4BB              mov ah,0xbb
00000808  C28DB5            ret word 0xb58d
0000080B  BCC391            mov sp,0x91c3
0000080E  B6BD              mov dh,0xbd
00000810  C495B7BE          les dx,word [di-0x4149]
00000814  C501              lds ax,word [bx+di]
00000816  184452            sbb [si+0x52],al
00000819  55                push bp
0000081A  47                inc di
0000081B  2E47              cs inc di
0000081D  52                push dx
0000081E  50                push ax
0000081F  000EAF00          add [0xaf],cl
00000823  195769            sbb [bx+0x69],dx
00000826  7463              jz 0x88b
00000828  686372            push word 0x7263
0000082B  61                popa
0000082C  667420            jz 0x84f
0000082F  49                dec cx
00000830  6D                insw
00000831  706C              jo 0x89f
00000833  656D              gs insw
00000835  656E              gs outsb
00000837  7420              jz 0x859
00000839  7368              jnc 0x8a3
0000083B  6F                outsw
0000083C  7047              jo 0x885
0000083E  6F                outsw
0000083F  206F75            and [bx+0x75],ch
00000842  7473              jz 0x8b7
00000844  6964650042        imul sp,[si+0x65],0x4200
00000849  7579              jnz 0x8c4
0000084B  206974            and [bx+di+0x74],ch
0000084E  656D              gs insw
00000850  005365            add [bp+di+0x65],dl
00000853  6C                insb
00000854  6C                insb
00000855  206974            and [bx+di+0x74],ch
00000858  656D              gs insw
0000085A  004465            add [si+0x65],al
0000085D  7363              jnc 0x8c2
0000085F  7269              jc 0x8ca
00000861  7074              jo 0x8d7
00000863  696F6E206F        imul bp,[bx+0x6e],0x6f20
00000868  66206974          o32 and [bx+di+0x74],ch
0000086C  656D              gs insw
0000086E  004F68            add [bx+0x68],cl
00000871  2E2E2E20FF        cs and bh,bh
00000876  006865            add [bx+si+0x65],ch
00000879  6C                insb
0000087A  6C                insb
0000087B  6F                outsw
0000087C  2C20              sub al,0x20
0000087E  63616E            arpl [bx+di+0x6e],sp
00000881  204920            and [bx+di+0x20],cl
00000884  68656C            push word 0x6c65
00000887  7020              jo 0x8a9
00000889  796F              jns 0x8fa
0000088B  753F              jnz 0x8cc
0000088D  2F                das
0000088E  FF02              inc word [bp+si]
00000890  0C57              or al,0x57
00000892  686174            push word 0x7461
00000895  206172            and [bx+di+0x72],ah
00000898  6520796F          and [gs:bx+di+0x6f],bh
0000089C  7520              jnz 0x8be
0000089E  6C                insb
0000089F  6F                outsw
000008A0  6F                outsw
000008A1  6B696E67          imul bp,[bx+di+0x6e],0x67
000008A5  20666F            and [bp+0x6f],ah
000008A8  723F              jc 0x8e9
000008AA  FF03              inc word [bp+di]
000008AC  0C57              or al,0x57
000008AE  686174            push word 0x7461
000008B1  206172            and [bx+di+0x72],ah
000008B4  6520796F          and [gs:bx+di+0x6f],bh
000008B8  7520              jnz 0x8da
000008BA  6C                insb
000008BB  6F                outsw
000008BC  6F                outsw
000008BD  6B696E67          imul bp,[bx+di+0x6e],0x67
000008C1  20666F            and [bp+0x6f],ah
000008C4  723F              jc 0x905
000008C6  FF04              inc word [si]
000008C8  0C59              or al,0x59
000008CA  6F                outsw
000008CB  755C              jnz 0x929
000008CD  64206C69          and [fs:si+0x69],ch
000008D1  6B652061          imul sp,[di+0x20],0x61
000008D5  20FF              and bh,bh
000008D7  002E2FFF          add [0xff2f],ch
000008DB  0C59              or al,0x59
000008DD  6F                outsw
000008DE  755C              jnz 0x93c
000008E0  64206C69          and [fs:si+0x69],ch
000008E4  6B652074          imul sp,[di+0x20],0x74
000008E8  6F                outsw
000008E9  207365            and [bp+di+0x65],dh
000008EC  6C                insb
000008ED  6C                insb
000008EE  206120            and [bx+di+0x20],ah
000008F1  FF00              inc word [bx+si]
000008F3  2E2F              cs das
000008F5  FF5468            call word near [si+0x68]
000008F8  61                popa
000008F9  7420              jz 0x91b
000008FB  7769              ja 0x966
000008FD  6C                insb
000008FE  6C                insb
000008FF  206265            and [bp+si+0x65],ah
00000902  20FF              and bh,bh
00000904  0026676F          add [0x6f67],ah
00000908  6C                insb
00000909  64732E            fs jnc 0x93a
0000090C  FF0D              dec word [di]
0000090E  57                push di
0000090F  696C6C2074        imul bp,[si+0x6c],0x7420
00000914  686572            push word 0x7265
00000917  65206265          and [gs:bp+si+0x65],ah
0000091B  20736F            and [bp+di+0x6f],dh
0000091E  6D                insw
0000091F  657468            gs jz 0x98a
00000922  696E672065        imul bp,[bp+0x67],0x6520
00000927  6C                insb
00000928  7365              jnc 0x98f
0000092A  3F                aas
0000092B  FF596F            call word far [bx+di+0x6f]
0000092E  7520              jnz 0x950
00000930  686176            push word 0x7661
00000933  65206E6F          and [gs:bp+0x6f],ch
00000937  206D6F            and [di+0x6f],ch
0000093A  6E                outsb
0000093B  65792C            gs jns 0x96a
0000093E  207369            and [bp+di+0x69],dh
00000941  722E              jc 0x971
00000943  FF596F            call word far [bx+di+0x6f]
00000946  7520              jnz 0x968
00000948  63616E            arpl [bx+di+0x6e],sp
0000094B  5C                pop sp
0000094C  7420              jz 0x96e
0000094E  706F              jo 0x9bf
00000950  7373              jnc 0x9c5
00000952  69626C7920        imul sp,[bp+si+0x6c],0x2079
00000957  636172            arpl [bx+di+0x72],sp
0000095A  7279              jc 0x9d5
0000095C  20616E            and [bx+di+0x6e],ah
0000095F  7920              jns 0x981
00000961  6D                insw
00000962  6F                outsw
00000963  7265              jc 0x9ca
00000965  2E2F              cs das
00000967  FF02              inc word [bp+si]
00000969  0C49              or al,0x49
0000096B  7320              jnc 0x98d
0000096D  7468              jz 0x9d7
0000096F  657265            gs jc 0x9d7
00000972  20736F            and [bp+di+0x6f],dh
00000975  6D                insw
00000976  657468            gs jz 0x9e1
00000979  696E672049        imul bp,[bp+0x67],0x4920
0000097E  2663616E          arpl [es:bx+di+0x6e],sp
00000982  20646F            and [si+0x6f],ah
00000985  20666F            and [bp+0x6f],ah
00000988  7220              jc 0x9aa
0000098A  796F              jns 0x9fb
0000098C  753F              jnz 0x9cd
0000098E  2F                das
0000098F  FF02              inc word [bp+si]
00000991  0C57              or al,0x57
00000993  686174            push word 0x7461
00000996  20776F            and [bx+0x6f],dh
00000999  756C              jnz 0xa07
0000099B  6420796F          and [fs:bx+di+0x6f],bh
0000099F  7520              jnz 0x9c1
000009A1  6C                insb
000009A2  696B652074        imul bp,[bp+di+0x65],0x7420
000009A7  6F                outsw
000009A8  207365            and [bp+di+0x65],dh
000009AB  6C                insb
000009AC  6C                insb
000009AD  3F                aas
000009AE  2F                das
000009AF  FF05              inc word [di]
000009B1  0C54              or al,0x54
000009B3  68616E            push word 0x6e61
000009B6  6B2079            imul sp,[bx+si],0x79
000009B9  6F                outsw
000009BA  7520              jnz 0x9dc
000009BC  7665              jna 0xa23
000009BE  7279              jc 0xa39
000009C0  206D75            and [di+0x75],ch
000009C3  63682E            arpl [bx+si+0x2e],bp
000009C6  2F                das
000009C7  FF495C            dec word [bx+di+0x5c]
000009CA  6C                insb
000009CB  6C                insb
000009CC  206769            and [bx+0x69],ah
000009CF  7665              jna 0xa36
000009D1  20796F            and [bx+di+0x6f],bh
000009D4  7520              jnz 0x9f6
000009D6  FF00              inc word [bx+si]
000009D8  26676F            es a32 outsw
000009DB  6C                insb
000009DC  647320            fs jnc 0x9ff
000009DF  666F              outsd
000009E1  7220              jc 0xa03
000009E3  7468              jz 0xa4d
000009E5  61                popa
000009E6  742E              jz 0xa16
000009E8  2F                das
000009E9  57                push di
000009EA  696C6C2074        imul bp,[si+0x6c],0x7420
000009EF  686174            push word 0x7461
000009F2  206265            and [bp+si+0x65],ah
000009F5  20616C            and [bx+di+0x6c],ah
000009F8  6C                insb
000009F9  207269            and [bp+si+0x69],dh
000009FC  6768743F          a32 push word 0x3f74
00000A00  FF00              inc word [bx+si]
00000A02  0C4F              or al,0x4f
00000A04  682C20            push word 0x202c
00000A07  49                dec cx
00000A08  267365            es jnc 0xa70
00000A0B  652E205765        and [cs:bx+0x65],dl
00000A10  6C                insb
00000A11  6C                insb
00000A12  2C20              sub al,0x20
00000A14  7468              jz 0xa7e
00000A16  61                popa
00000A17  745C              jz 0xa75
00000A19  7320              jnc 0xa3b
00000A1B  7468              jz 0xa85
00000A1D  65206265          and [gs:bp+si+0x65],ah
00000A21  7374              jnc 0xa97
00000A23  204926            and [bx+di+0x26],cl
00000A26  63616E            arpl [bx+di+0x6e],sp
00000A29  20646F            and [si+0x6f],ah
00000A2C  2E20495C          and [cs:bx+di+0x5c],cl
00000A30  6D                insw
00000A31  20736F            and [bp+di+0x6f],dh
00000A34  7272              jc 0xaa8
00000A36  7920              jns 0xa58
00000A38  6974206973        imul si,[si+0x20],0x7369
00000A3D  5C                pop sp
00000A3E  7420              jz 0xa60
00000A40  7361              jnc 0xaa3
00000A42  7469              jz 0xaad
00000A44  7366              jnc 0xaac
00000A46  61                popa
00000A47  63746F            arpl [si+0x6f],si
00000A4A  7279              jc 0xac5
00000A4C  2EFF02            inc word [cs:bp+si]
00000A4F  44                inc sp
00000A50  6F                outsw
00000A51  20796F            and [bx+di+0x6f],bh
00000A54  7520              jnz 0xa76
00000A56  686176            push word 0x7661
00000A59  6520616E          and [gs:bx+di+0x6e],ah
00000A5D  7974              jns 0xad3
00000A5F  68696E            push word 0x6e69
00000A62  6720656C          and [ebp+0x6c],ah
00000A66  7365              jnc 0xacd
00000A68  20796F            and [bx+di+0x6f],bh
00000A6B  755C              jnz 0xac9
00000A6D  64206C69          and [fs:si+0x69],ch
00000A71  6B652074          imul sp,[di+0x20],0x74
00000A75  6F                outsw
00000A76  207365            and [bp+di+0x65],dh
00000A79  6C                insb
00000A7A  6C                insb
00000A7B  3F                aas
00000A7C  FF0C              dec word [si]
00000A7E  59                pop cx
00000A7F  6F                outsw
00000A80  7520              jnz 0xaa2
00000A82  61                popa
00000A83  7265              jc 0xaea
00000A85  6E                outsb
00000A86  5C                pop sp
00000A87  7420              jz 0xaa9
00000A89  636172            arpl [bx+di+0x72],sp
00000A8C  7279              jc 0xb07
00000A8E  696E672061        imul bp,[bp+0x67],0x6120
00000A93  6E                outsb
00000A94  7920              jns 0xab6
00000A96  6D                insw
00000A97  61                popa
00000A98  676963206974      imul sp,[ebx+0x20],0x7469
00000A9E  656D              gs insw
00000AA0  732C              jnc 0xace
00000AA2  207369            and [bp+di+0x69],dh
00000AA5  722E              jc 0xad5
00000AA7  2F                das
00000AA8  FF02              inc word [bp+si]
00000AAA  0C57              or al,0x57
00000AAC  686963            push word 0x6369
00000AAF  682069            push word 0x6920
00000AB2  7465              jz 0xb19
00000AB4  6D                insw
00000AB5  206361            and [bp+di+0x61],ah
00000AB8  6E                outsb
00000AB9  204920            and [bx+di+0x20],cl
00000ABC  7465              jz 0xb23
00000ABE  6C                insb
00000ABF  6C                insb
00000AC0  20796F            and [bx+di+0x6f],bh
00000AC3  7520              jnz 0xae5
00000AC5  61                popa
00000AC6  626F75            bound bp,[bx+0x75]
00000AC9  743F              jz 0xb0a
00000ACB  2F                das
00000ACC  FF060C59          inc word [0x590c]
00000AD0  6F                outsw
00000AD1  755C              jnz 0xb2f
00000AD3  7265              jc 0xb3a
00000AD5  20696E            and [bx+di+0x6e],ch
00000AD8  7465              jz 0xb3f
00000ADA  7265              jc 0xb41
00000ADC  7374              jnc 0xb52
00000ADE  656420696E        and [fs:bx+di+0x6e],ch
00000AE3  207468            and [si+0x68],dh
00000AE6  6520FF            gs and bh,bh
00000AE9  002E2FFF          add [0xff2f],ch
00000AED  0C43              or al,0x43
00000AEF  61                popa
00000AF0  6E                outsb
00000AF1  204920            and [bx+di+0x20],cl
00000AF4  7465              jz 0xb5b
00000AF6  6C                insb
00000AF7  6C                insb
00000AF8  20796F            and [bx+di+0x6f],bh
00000AFB  7520              jnz 0xb1d
00000AFD  61                popa
00000AFE  626F75            bound bp,[bx+0x75]
00000B01  7420              jz 0xb23
00000B03  61                popa
00000B04  6E                outsb
00000B05  7974              jns 0xb7b
00000B07  68696E            push word 0x6e69
00000B0A  6720656C          and [ebp+0x6c],ah
00000B0E  7365              jnc 0xb75
00000B10  3F                aas
00000B11  FF0C              dec word [si]
00000B13  FF07              inc word [bx]
00000B15  54                push sp
00000B16  68616E            push word 0x6e61
00000B19  6B2079            imul sp,[bx+si],0x79
00000B1C  6F                outsw
00000B1D  752C              jnz 0xb4b
00000B1F  207369            and [bp+di+0x69],dh
00000B22  722E              jc 0xb52
00000B24  20FF              and bh,bh
00000B26  08506C            or [bx+si+0x6c],dl
00000B29  6561              gs popa
00000B2B  7365              jnc 0xb92
00000B2D  20636F            and [bp+di+0x6f],ah
00000B30  6D                insw
00000B31  65206167          and [gs:bx+di+0x67],ah
00000B35  61                popa
00000B36  696E2EFF01        imul bp,[bp+0x2e],0x1ff
00000B3B  11FF              adc di,di
00000B3D  FF4AAB            dec word [bp+si-0x55]
00000B40  C5AB9CAC          lds bp,word [bp+di-0x5364]
00000B44  39ADFDAD          cmp [di-0x5203],bp
00000B48  A6                cmpsb
00000B49  AE                scasb
00000B4A  3DAFD3            cmp ax,0xd3af
00000B4D  AF                scasw
00000B4E  57                push di
00000B4F  656C              gs insb
00000B51  6C                insb
00000B52  2C20              sub al,0x20
00000B54  69745C7320        imul si,[si+0x5c],0x2073
00000B59  61                popa
00000B5A  207370            and [bp+di+0x70],dh
00000B5D  65636961          arpl [gs:bx+di+0x61],bp
00000B61  6C                insb
00000B62  20626C            and [bp+si+0x6c],ah
00000B65  656E              gs outsb
00000B67  64206F66          and [fs:bx+0x66],ch
00000B6B  207975            and [bx+di+0x75],bh
00000B6E  6E                outsb
00000B6F  6B656C20          imul sp,[di+0x6c],0x20
00000B73  667275            jc 0xbeb
00000B76  697420616E        imul si,[si+0x20],0x6e61
00000B7B  64207269          and [fs:bp+si+0x69],dh
00000B7F  706F              jo 0xbf0
00000B81  6469206C65        imul sp,[fs:bx+si],0x656c
00000B86  61                popa
00000B87  662E2F            cs o32 das
00000B8A  49                dec cx
00000B8B  745C              jz 0xbe9
00000B8D  7320              jnc 0xbaf
00000B8F  6C                insb
00000B90  6F                outsw
00000B91  7720              ja 0xbb3
00000B93  696E207072        imul bp,[bp+0x20],0x7270
00000B98  6963652061        imul sp,[bp+di+0x65],0x6120
00000B9D  6E                outsb
00000B9E  64206173          and [fs:bx+di+0x73],ah
00000BA2  206120            and [bx+di+0x20],ah
00000BA5  6D                insw
00000BA6  696C642068        imul bp,[si+0x64],0x6820
00000BAB  6561              gs popa
00000BAD  6C                insb
00000BAE  7468              jz 0xc18
00000BB0  20746F            and [si+0x6f],dh
00000BB3  6E                outsb
00000BB4  69632C2069        imul sp,[bp+di+0x2c],0x6920
00000BB9  745C              jz 0xc17
00000BBB  7320              jnc 0xbdd
00000BBD  7065              jo 0xc24
00000BBF  7266              jc 0xc27
00000BC1  6563742E          arpl [gs:si+0x2e],si
00000BC5  110C              adc [si],cx
00000BC7  FF                db 0xff
00000BC8  FF5468            call word near [si+0x68]
00000BCB  6973206973        imul si,[bp+di+0x20],0x7369
00000BD0  207468            and [si+0x68],dh
00000BD3  65206672          and [gs:bp+0x72],ah
00000BD7  7569              jnz 0xc42
00000BD9  7420              jz 0xbfb
00000BDB  6F                outsw
00000BDC  66207468          o32 and [si+0x68],dh
00000BE0  65204A75          and [gs:bp+si+0x75],cl
00000BE4  752D              jnz 0xc13
00000BE6  656E              gs outsb
00000BE8  207472            and [si+0x72],dh
00000BEB  6565207768        and [gs:bx+0x68],dh
00000BF0  6963682062        imul sp,[bp+di+0x68],0x6220
00000BF5  6561              gs popa
00000BF7  7273              jc 0xc6c
00000BF9  206F6E            and [bx+0x6e],ch
00000BFC  6C                insb
00000BFD  7920              jns 0xc1f
00000BFF  6F                outsw
00000C00  6E                outsb
00000C01  636520            arpl [di+0x20],sp
00000C04  657665            gs jna 0xc6c
00000C07  7279              jc 0xc82
00000C09  207465            and [si+0x65],dh
00000C0C  6E                outsb
00000C0D  207965            and [bx+di+0x65],bh
00000C10  61                popa
00000C11  7273              jc 0xc86
00000C13  2E2F              cs das
00000C15  54                push sp
00000C16  686520            push word 0x2065
00000C19  7072              jo 0xc8d
00000C1B  6963652069        imul sp,[bp+di+0x65],0x6920
00000C20  7320              jnc 0xc42
00000C22  61                popa
00000C23  206269            and [bp+si+0x69],ah
00000C26  7420              jz 0xc48
00000C28  686967            push word 0x6769
00000C2B  682C20            push word 0x202c
00000C2E  627574            bound si,[di+0x74]
00000C31  206974            and [bx+di+0x74],ch
00000C34  207072            and [bx+si+0x72],dh
00000C37  6F                outsw
00000C38  7669              jna 0xca3
00000C3A  64657320          gs jnc 0xc5e
00000C3E  657863            gs js 0xca4
00000C41  656C              gs insb
00000C43  6C                insb
00000C44  656E              gs outsb
00000C46  7420              jz 0xc68
00000C48  7265              jc 0xcaf
00000C4A  6C                insb
00000C4B  6965662066        imul sp,[di+0x66],0x6620
00000C50  726F              jc 0xcc1
00000C52  6D                insw
00000C53  20776F            and [bx+0x6f],dh
00000C56  756E              jnz 0xcc6
00000C58  647320            fs jnc 0xc7b
00000C5B  61                popa
00000C5C  6E                outsb
00000C5D  64206578          and [fs:di+0x78],ah
00000C61  686175            push word 0x7561
00000C64  7374              jnc 0xcda
00000C66  696F6E202D        imul bp,[bx+0x6e],0x2d20
00000C6B  2D2069            sub ax,0x6920
00000C6E  745C              jz 0xccc
00000C70  7320              jnc 0xc92
00000C72  7175              jno 0xce9
00000C74  6974652061        imul si,[si+0x65],0x6120
00000C79  206269            and [bp+si+0x69],ah
00000C7C  7420              jz 0xc9e
00000C7E  626574            bound sp,[di+0x74]
00000C81  7465              jz 0xce8
00000C83  7220              jc 0xca5
00000C85  7468              jz 0xcef
00000C87  61                popa
00000C88  6E                outsb
00000C89  207468            and [si+0x68],dh
00000C8C  65204B65          and [gs:bp+di+0x65],cl
00000C90  6E                outsb
00000C91  5C                pop sp
00000C92  6B6F2070          imul bp,[bx+0x20],0x70
00000C96  6F                outsw
00000C97  7469              jz 0xd02
00000C99  6F                outsw
00000C9A  6E                outsb
00000C9B  2E110C            adc [cs:si],cx
00000C9E  FF                db 0xff
00000C9F  FF5468            call word near [si+0x68]
00000CA2  697320706F        imul si,[bp+di+0x20],0x6f70
00000CA7  7469              jz 0xd12
00000CA9  6F                outsw
00000CAA  6E                outsb
00000CAB  206973            and [bx+di+0x73],ch
00000CAE  206D61            and [di+0x61],ch
00000CB1  6465206672        and [gs:bp+0x72],ah
00000CB6  6F                outsw
00000CB7  6D                insw
00000CB8  207468            and [si+0x68],dh
00000CBB  65206272          and [gs:bp+si+0x72],ah
00000CBF  6F                outsw
00000CC0  7468              jz 0xd2a
00000CC2  206F66            and [bx+0x66],ch
00000CC5  206D69            and [di+0x69],ch
00000CC8  7374              jnc 0xd3e
00000CCA  6C                insb
00000CCB  65746F            gs jz 0xd3d
00000CCE  65207369          and [gs:bp+di+0x69],dh
00000CD2  6D                insw
00000CD3  6D                insw
00000CD4  657265            gs jc 0xd3c
00000CD7  64206F6E          and [fs:bx+0x6e],ch
00000CDB  207468            and [si+0x68],dh
00000CDE  65206E69          and [gs:bp+0x69],ch
00000CE2  67687420          a32 push word 0x2074
00000CE6  6F                outsw
00000CE7  66206120          o32 and [bx+di+0x20],ah
00000CEB  66756C            jnz 0xd5a
00000CEE  6C                insb
00000CEF  206D6F            and [di+0x6f],ch
00000CF2  6F                outsw
00000CF3  6E                outsb
00000CF4  2E2F              cs das
00000CF6  49                dec cx
00000CF7  7420              jz 0xd19
00000CF9  7265              jc 0xd60
00000CFB  7374              jnc 0xd71
00000CFD  6F                outsw
00000CFE  7265              jc 0xd65
00000D00  7320              jnc 0xd22
00000D02  6D                insw
00000D03  61                popa
00000D04  676963616C20      imul sp,[ebx+0x61],0x206c
00000D0A  706F              jo 0xd7b
00000D0C  7765              ja 0xd73
00000D0E  7273              jc 0xd83
00000D10  2E204974          and [cs:bx+di+0x74],cl
00000D14  5C                pop sp
00000D15  7320              jnc 0xd37
00000D17  7665              jna 0xd7e
00000D19  7279              jc 0xd94
00000D1B  206269            and [bp+si+0x69],ah
00000D1E  7474              jz 0xd94
00000D20  65722C            gs jc 0xd4f
00000D23  206275            and [bp+si+0x75],ah
00000D26  7420              jz 0xd48
00000D28  7468              jz 0xd92
00000D2A  65207072          and [gs:bx+si+0x72],dh
00000D2E  6963652069        imul sp,[bp+di+0x65],0x6920
00000D33  7320              jnc 0xd55
00000D35  6C                insb
00000D36  6F                outsw
00000D37  772E              ja 0xd67
00000D39  110C              adc [si],cx
00000D3B  FF                db 0xff
00000D3C  FF5468            call word near [si+0x68]
00000D3F  6973206973        imul si,[bp+di+0x20],0x7369
00000D44  206D61            and [di+0x61],ch
00000D47  6465206672        and [gs:bp+0x72],ah
00000D4C  6F                outsw
00000D4D  6D                insw
00000D4E  206120            and [bx+di+0x20],ah
00000D51  6D                insw
00000D52  6978747572        imul di,[bx+si+0x74],0x7275
00000D57  65206F66          and [gs:bx+0x66],ch
00000D5B  207468            and [si+0x68],dh
00000D5E  6520706F          and [gs:bx+si+0x6f],dh
00000D62  7764              ja 0xdc8
00000D64  657265            gs jc 0xdcc
00000D67  64206472          and [fs:si+0x72],ah
00000D6B  61                popa
00000D6C  676F              a32 outsw
00000D6E  6E                outsb
00000D6F  207363            and [bp+di+0x63],dh
00000D72  61                popa
00000D73  6C                insb
00000D74  657320            gs jnc 0xd97
00000D77  61                popa
00000D78  6E                outsb
00000D79  64206372          and [fs:bp+di+0x72],ah
00000D7D  7573              jnz 0xdf2
00000D7F  686564            push word 0x6465
00000D82  205769            and [bx+0x69],dl
00000D85  7365              jnc 0xdec
00000D87  204D61            and [di+0x61],cl
00000D8A  6E                outsb
00000D8B  5C                pop sp
00000D8C  7320              jnc 0xdae
00000D8E  53                push bx
00000D8F  746F              jz 0xe00
00000D91  6E                outsb
00000D92  65207374          and [gs:bp+di+0x74],dh
00000D96  6561              gs popa
00000D98  6D                insw
00000D99  656420666F        and [fs:bp+0x6f],ah
00000D9E  7220              jc 0xdc0
00000DA0  6F                outsw
00000DA1  6E                outsb
00000DA2  65206875          and [gs:bx+si+0x75],ch
00000DA6  6E                outsb
00000DA7  647265            fs jc 0xe0f
00000DAA  64206461          and [fs:si+0x61],ah
00000DAE  7973              jns 0xe23
00000DB0  2E2F              cs das
00000DB2  49                dec cx
00000DB3  7420              jz 0xdd5
00000DB5  7769              ja 0xe20
00000DB7  6C                insb
00000DB8  6C                insb
00000DB9  206675            and [bp+0x75],ah
00000DBC  6C                insb
00000DBD  6C                insb
00000DBE  7920              jns 0xde0
00000DC0  7265              jc 0xe27
00000DC2  7374              jnc 0xe38
00000DC4  6F                outsw
00000DC5  7265              jc 0xe2c
00000DC7  20796F            and [bx+di+0x6f],bh
00000DCA  7572              jnz 0xe3e
00000DCC  206D61            and [di+0x61],ch
00000DCF  676963616C20      imul sp,[ebx+0x61],0x206c
00000DD5  706F              jo 0xe46
00000DD7  7765              ja 0xe3e
00000DD9  7273              jc 0xe4e
00000DDB  2E205468          and [cs:si+0x68],dl
00000DDF  65207072          and [gs:bx+si+0x72],dh
00000DE3  6963652C20        imul sp,[bp+di+0x65],0x202c
00000DE8  686F77            push word 0x776f
00000DEB  657665            gs jna 0xe53
00000DEE  722E              jc 0xe1e
00000DF0  2E2E2E2E206973    and [cs:bx+di+0x73],ch
00000DF7  206869            and [bx+si+0x69],ch
00000DFA  67682E11          a32 push word 0x112e
00000DFE  0CFF              or al,0xff
00000E00  FF5468            call word near [si+0x68]
00000E03  6973207374        imul si,[bp+di+0x20],0x7473
00000E08  6F                outsw
00000E09  6E                outsb
00000E0A  65207072          and [gs:bx+si+0x72],dh
00000E0E  6F                outsw
00000E0F  7465              jz 0xe76
00000E11  637473            arpl [si+0x73],si
00000E14  207468            and [si+0x68],dh
00000E17  65206175          and [gs:bx+di+0x75],ah
00000E1B  7261              jc 0xe7e
00000E1D  207468            and [si+0x68],dh
00000E20  61                popa
00000E21  7420              jz 0xe43
00000E23  6C                insb
00000E24  6976696E67        imul si,[bp+0x69],0x676e
00000E29  206265            and [bp+si+0x65],ah
00000E2C  696E677320        imul bp,[bp+0x67],0x2073
00000E31  657875            gs js 0xea9
00000E34  64652E2F          cs das
00000E38  49                dec cx
00000E39  7420              jz 0xe5b
00000E3B  7375              jnc 0xeb2
00000E3D  7272              jc 0xeb1
00000E3F  6F                outsw
00000E40  756E              jnz 0xeb0
00000E42  647320            fs jnc 0xe65
00000E45  7468              jz 0xeaf
00000E47  65206175          and [gs:bx+di+0x75],ah
00000E4B  7261              jc 0xeae
00000E4D  20746F            and [si+0x6f],dh
00000E50  207072            and [bx+si+0x72],dh
00000E53  657665            gs jna 0xebb
00000E56  6E                outsb
00000E57  7420              jz 0xe79
00000E59  696E746572        imul bp,[bp+0x74],0x7265
00000E5E  66657265          gs jc 0xec7
00000E62  6E                outsb
00000E63  636520            arpl [di+0x20],sp
00000E66  66726F            jc 0xed8
00000E69  6D                insw
00000E6A  206F74            and [bx+0x74],ch
00000E6D  686572            push word 0x7265
00000E70  206175            and [bx+di+0x75],ah
00000E73  7261              jc 0xed6
00000E75  7320              jnc 0xe97
00000E77  61                popa
00000E78  6E                outsb
00000E79  64206163          and [fs:bx+di+0x63],ah
00000E7D  7473              jz 0xef2
00000E7F  206173            and [bx+di+0x73],ah
00000E82  206120            and [bx+di+0x20],ah
00000E85  7072              jo 0xef9
00000E87  6F                outsw
00000E88  7465              jz 0xeef
00000E8A  637469            arpl [si+0x69],si
00000E8D  6F                outsw
00000E8E  6E                outsb
00000E8F  206167            and [bx+di+0x67],ah
00000E92  61                popa
00000E93  696E737420        imul bp,[bp+0x73],0x2074
00000E98  656E              gs outsb
00000E9A  656D              gs insw
00000E9C  7920              jns 0xebe
00000E9E  61                popa
00000E9F  7474              jz 0xf15
00000EA1  61                popa
00000EA2  636B73            arpl [bp+di+0x73],bp
00000EA5  2E110C            adc [cs:si],cx
00000EA8  FF                db 0xff
00000EA9  FF5468            call word near [si+0x68]
00000EAC  6973206973        imul si,[bp+di+0x20],0x7369
00000EB1  206120            and [bx+di+0x20],ah
00000EB4  6C                insb
00000EB5  6971756966        imul si,[bx+di+0x75],0x6669
00000EBA  696564206D        imul sp,[di+0x64],0x6d20
00000EBF  657461            gs jz 0xf23
00000EC2  6C                insb
00000EC3  206D61            and [di+0x61],ch
00000EC6  6465206672        and [gs:bp+0x72],ah
00000ECB  6F                outsw
00000ECC  6D                insw
00000ECD  206D65            and [di+0x65],ch
00000ED0  7263              jc 0xf35
00000ED2  7572              jnz 0xf46
00000ED4  7920              jns 0xef6
00000ED6  61                popa
00000ED7  6E                outsb
00000ED8  64206972          and [fs:bx+di+0x72],ch
00000EDC  6F                outsw
00000EDD  6E                outsb
00000EDE  2E2F              cs das
00000EE0  49                dec cx
00000EE1  6620796F          o32 and [bx+di+0x6f],bh
00000EE5  7520              jnz 0xf07
00000EE7  7061              jo 0xf4a
00000EE9  696E742069        imul bp,[bp+0x74],0x6920
00000EEE  7420              jz 0xf10
00000EF0  6F                outsw
00000EF1  6E                outsb
00000EF2  206120            and [bx+di+0x20],ah
00000EF5  7368              jnc 0xf5f
00000EF7  69656C6420        imul sp,[di+0x6c],0x2064
00000EFC  7765              ja 0xf63
00000EFE  61                popa
00000EFF  6B656E65          imul sp,[di+0x6e],0x65
00000F03  64206279          and [fs:bp+si+0x79],ah
00000F07  206261            and [bp+si+0x61],ah
00000F0A  7474              jz 0xf80
00000F0C  6C                insb
00000F0D  652C20            gs sub al,0x20
00000F10  7468              jz 0xf7a
00000F12  65207368          and [gs:bp+di+0x68],dh
00000F16  69656C6420        imul sp,[di+0x6c],0x2064
00000F1B  7769              ja 0xf86
00000F1D  6C                insb
00000F1E  6C                insb
00000F1F  207265            and [bp+si+0x65],dh
00000F22  6761              a32 popa
00000F24  696E206974        imul bp,[bp+0x20],0x7469
00000F29  7320              jnc 0xf4b
00000F2B  6F                outsw
00000F2C  7269              jc 0xf97
00000F2E  67696E616C20      imul bp,[esi+0x61],0x206c
00000F34  7374              jnc 0xfaa
00000F36  7265              jc 0xf9d
00000F38  6E                outsb
00000F39  677468            a32 jz 0xfa4
00000F3C  2E110C            adc [cs:si],cx
00000F3F  FF                db 0xff
00000F40  FF486D            dec word [bx+si+0x6d]
00000F43  6D                insw
00000F44  2E2E2E204920      and [cs:bx+di+0x20],cl
00000F4A  646F              fs outsw
00000F4C  6E                outsb
00000F4D  5C                pop sp
00000F4E  7420              jz 0xf70
00000F50  6B6E6F77          imul bp,[bp+0x6f],0x77
00000F54  206D75            and [di+0x75],ch
00000F57  636820            arpl [bx+si+0x20],bp
00000F5A  61                popa
00000F5B  626F75            bound bp,[bx+0x75]
00000F5E  7420              jz 0xf80
00000F60  7468              jz 0xfca
00000F62  6973206F6E        imul si,[bp+di+0x20],0x6e6f
00000F67  652C20            gs sub al,0x20
00000F6A  627574            bound si,[di+0x74]
00000F6D  204920            and [bx+di+0x20],cl
00000F70  646F              fs outsw
00000F72  206B6E            and [bp+di+0x6e],ch
00000F75  6F                outsw
00000F76  7720              ja 0xf98
00000F78  7468              jz 0xfe2
00000F7A  61                popa
00000F7B  7420              jz 0xf9d
00000F7D  697420696E        imul si,[si+0x20],0x6e69
00000F82  637265            arpl [bp+si+0x65],si
00000F85  61                popa
00000F86  7365              jnc 0xfed
00000F88  7320              jnc 0xfaa
00000F8A  7468              jz 0xff4
00000F8C  65206F66          and [gs:bx+0x66],ch
00000F90  66656E            gs o32 outsb
00000F93  7369              jnc 0xffe
00000F95  7665              jna 0xffc
00000F97  20706F            and [bx+si+0x6f],dh
00000F9A  7765              ja 0x1001
00000F9C  7220              jc 0xfbe
00000F9E  6F                outsw
00000F9F  66206120          o32 and [bx+di+0x20],ah
00000FA3  7377              jnc 0x101c
00000FA5  6F                outsw
00000FA6  7264              jc 0x100c
00000FA8  2E2F              cs das
00000FAA  44                inc sp
00000FAB  6F                outsw
00000FAC  6E                outsb
00000FAD  5C                pop sp
00000FAE  7420              jz 0xfd0
00000FB0  776F              ja 0x1021
00000FB2  7272              jc 0x1026
00000FB4  792C              jns 0xfe2
00000FB6  206974            and [bx+di+0x74],ch
00000FB9  206861            and [bx+si+0x61],ch
00000FBC  736E              jnc 0x102c
00000FBE  5C                pop sp
00000FBF  7420              jz 0xfe1
00000FC1  6B696C6C          imul bp,[bx+di+0x6c],0x6c
00000FC5  656420616E        and [fs:bx+di+0x6e],ah
00000FCA  796F              jns 0x103b
00000FCC  6E                outsb
00000FCD  65207965          and [gs:bx+di+0x65],bh
00000FD1  742E              jz 0x1001
00000FD3  110C              adc [si],cx
00000FD5  FF                db 0xff
00000FD6  FF5468            call word near [si+0x68]
00000FD9  6973206665        imul si,[bp+di+0x20],0x6566
00000FDE  61                popa
00000FDF  7468              jz 0x1049
00000FE1  657220            gs jc 0x1004
00000FE4  7265              jc 0x104b
00000FE6  6D                insw
00000FE7  656D              gs insw
00000FE9  626572            bound sp,[di+0x72]
00000FEC  7320              jnc 0x100e
00000FEE  7468              jz 0x1058
00000FF0  6520766F          and [gs:bp+0x6f],dh
00000FF4  696365206F        imul sp,[bp+di+0x65],0x6f20
00000FF9  66207468          o32 and [si+0x68],dh
00000FFD  65206C61          and [gs:si+0x61],ch
00001001  7374              jnc 0x1077
00001003  207769            and [bx+0x69],dh
00001006  7365              jnc 0x106d
00001008  206D61            and [di+0x61],ch
0000100B  6E                outsb
0000100C  207768            and [bx+0x68],dh
0000100F  6F                outsw
00001010  207370            and [bp+di+0x70],dh
00001013  6F                outsw
00001014  6B652074          imul sp,[di+0x20],0x74
00001018  6F                outsw
00001019  20796F            and [bx+di+0x6f],bh
0000101C  752E              jnz 0x104c
0000101E  2F                das
0000101F  49                dec cx
00001020  6620796F          o32 and [bx+di+0x6f],bh
00001024  7520              jnz 0x1046
00001026  686F6C            push word 0x6c6f
00001029  64206974          and [fs:bx+di+0x74],ch
0000102D  20696E            and [bx+di+0x6e],ch
00001030  20796F            and [bx+di+0x6f],bh
00001033  7572              jnz 0x10a7
00001035  207269            and [bp+si+0x69],dh
00001038  67687420          a32 push word 0x2074
0000103C  68616E            push word 0x6e61
0000103F  6420616E          and [fs:bx+di+0x6e],ah
00001043  64207377          and [fs:bp+di+0x77],dh
00001047  696E672069        imul bp,[bp+0x67],0x6920
0000104C  7420              jz 0x106e
0000104E  6F                outsw
0000104F  6E                outsb
00001050  63652C            arpl [di+0x2c],sp
00001053  20796F            and [bx+di+0x6f],bh
00001056  755C              jnz 0x10b4
00001058  6C                insb
00001059  6C                insb
0000105A  207265            and [bp+si+0x65],dh
0000105D  7475              jz 0x10d4
0000105F  726E              jc 0x10cf
00001061  20746F            and [si+0x6f],dh
00001064  206869            and [bx+si+0x69],ch
00001067  6D                insw
00001068  2E204974          and [cs:bx+di+0x74],cl
0000106C  5C                pop sp
0000106D  7320              jnc 0x108f
0000106F  6E                outsb
00001070  657665            gs jna 0x10d8
00001073  7220              jc 0x1095
00001075  6661              popad
00001077  696C656420        imul bp,[si+0x65],0x2064
0000107C  61                popa
0000107D  6E                outsb
0000107E  796F              jns 0x10ef
00001080  6E                outsb
00001081  65204920          and [gs:bx+di+0x20],cl
00001085  6B6E6F77          imul bp,[bp+0x6f],0x77
00001089  2E110C            adc [cs:si],cx
0000108C  FF                db 0xff
0000108D  FF9AB0A8          call word far [bp+si-0x5750]
00001091  B0B5              mov al,0xb5
00001093  B0C5              mov al,0xc5
00001095  B0D4              mov al,0xd4
00001097  B0E0              mov al,0xe0
00001099  B0F4              mov al,0xf4
0000109B  B0FE              mov al,0xfe
0000109D  B04B              mov al,0x4b
0000109F  656E              gs outsb
000010A1  5C                pop sp
000010A2  6B6F2050          imul bp,[bx+0x20],0x50
000010A6  6F                outsw
000010A7  7469              jz 0x1112
000010A9  6F                outsw
000010AA  6E                outsb
000010AB  004A75            add [bp+si+0x75],cl
000010AE  752D              jnz 0x10dd
000010B0  656E              gs outsb
000010B2  204672            and [bp+0x72],al
000010B5  7569              jnz 0x1120
000010B7  7400              jz 0x10b9
000010B9  45                inc bp
000010BA  6C                insb
000010BB  6978697220        imul di,[bx+si+0x69],0x2072
000010C0  6F                outsw
000010C1  66204B61          o32 and [bp+di+0x61],cl
000010C5  7368              jnc 0x112f
000010C7  69004368          imul ax,[bx+si],0x6843
000010CB  696B617261        imul bp,[bp+di+0x61],0x6172
000010D0  20506F            and [bx+si+0x6f],dl
000010D3  7764              ja 0x1139
000010D5  657200            gs jc 0x10d8
000010D8  4D                dec bp
000010D9  61                popa
000010DA  676961205374      imul sp,[ecx+0x20],0x7453
000010E0  6F                outsw
000010E1  6E                outsb
000010E2  6500486F          add [gs:bx+si+0x6f],cl
000010E6  6C                insb
000010E7  7920              jns 0x1109
000010E9  57                push di
000010EA  61                popa
000010EB  7465              jz 0x1152
000010ED  7220              jc 0x110f
000010EF  6F                outsw
000010F0  66204163          o32 and [bx+di+0x63],al
000010F4  65726F            gs jc 0x1166
000010F7  005361            add [bp+di+0x61],dl
000010FA  627265            bound si,[bp+si+0x65]
000010FD  204F69            and [bx+0x69],cl
00001100  6C                insb
00001101  004B69            add [bp+di+0x69],cl
00001104  6F                outsw
00001105  6B752046          imul si,[di+0x20],0x46
00001109  6561              gs popa
0000110B  7468              jz 0x1175
0000110D  657200            gs jc 0x1110
00001110  1E                push ds
00001111  B136              mov cl,0x36
00001113  B14E              mov cl,0x4e
00001115  B166              mov cl,0x66
00001117  B17E              mov cl,0x7e
00001119  B196              mov cl,0x96
0000111B  B1AE              mov cl,0xae
0000111D  B1C6              mov cl,0xc6
0000111F  B1DE              mov cl,0xde
00001121  B100              mov cl,0x0
00001123  3200              xor al,[bx+si]
00001125  00F0              add al,dh
00001127  0000              add [bx+si],al
00001129  3C00              cmp al,0x0
0000112B  004001            add [bx+si+0x1],al
0000112E  00E8              add al,ch
00001130  0300              add ax,[bx+si]
00001132  640000            add [fs:bx+si],al
00001135  B004              mov al,0x4
00001137  005E01            add [bp+0x1],bl
0000113A  0032              add [bp+si],dh
0000113C  0000              add [bx+si],al
0000113E  F00000            lock add [bx+si],al
00001141  3C00              cmp al,0x0
00001143  004001            add [bx+si+0x1],al
00001146  00E8              add al,ch
00001148  0300              add ax,[bx+si]
0000114A  640000            add [fs:bx+si],al
0000114D  B004              mov al,0x4
0000114F  005E01            add [bp+0x1],bl
00001152  0032              add [bp+si],dh
00001154  0000              add [bx+si],al
00001156  F00000            lock add [bx+si],al
00001159  3C00              cmp al,0x0
0000115B  004001            add [bx+si+0x1],al
0000115E  00DC              add ah,bl
00001160  050064            add ax,0x6400
00001163  0000              add [bx+si],al
00001165  B004              mov al,0x4
00001167  005E01            add [bp+0x1],bl
0000116A  0032              add [bp+si],dh
0000116C  0000              add [bx+si],al
0000116E  2C01              sub al,0x1
00001170  007800            add [bx+si+0x0],bh
00001173  004001            add [bx+si+0x1],al
00001176  00DC              add ah,bl
00001178  050064            add ax,0x6400
0000117B  0000              add [bx+si],al
0000117D  B004              mov al,0x4
0000117F  005E01            add [bp+0x1],bl
00001182  0005              add [di],al
00001184  0000              add [bx+si],al
00001186  58                pop ax
00001187  0200              add al,[bx+si]
00001189  F00000            lock add [bx+si],al
0000118C  E001              loopne 0x118f
0000118E  00D0              add al,dl
00001190  07                pop es
00001191  00C8              add al,cl
00001193  0000              add [bx+si],al
00001195  D007              rol byte [bx],0x0
00001197  005E01            add [bp+0x1],bl
0000119A  0005              add [di],al
0000119C  0000              add [bx+si],al
0000119E  58                pop ax
0000119F  0200              add al,[bx+si]
000011A1  F00000            lock add [bx+si],al
000011A4  E001              loopne 0x11a7
000011A6  00D0              add al,dl
000011A8  07                pop es
000011A9  00C8              add al,cl
000011AB  0000              add [bx+si],al
000011AD  D007              rol byte [bx],0x0
000011AF  005E01            add [bp+0x1],bl
000011B2  0005              add [di],al
000011B4  0000              add [bx+si],al
000011B6  8403              test [bp+di],al
000011B8  006801            add [bx+si+0x1],ch
000011BB  00C0              add al,al
000011BD  0300              add ax,[bx+si]
000011BF  C409              les cx,word [bx+di]
000011C1  00900100          add [bx+si+0x1],dl
000011C5  60                pusha
000011C6  0900              or [bx+si],ax
000011C8  5E                pop si
000011C9  0100              add [bx+si],ax
000011CB  050000            add ax,0x0
000011CE  8403              test [bp+di],al
000011D0  006801            add [bx+si+0x1],ch
000011D3  00C0              add al,al
000011D5  0300              add ax,[bx+si]
000011D7  C409              les cx,word [bx+di]
000011D9  00900100          add [bx+si+0x1],dl
000011DD  60                pusha
000011DE  0900              or [bx+si],ax
000011E0  5E                pop si
000011E1  0100              add [bx+si],ax
000011E3  0200              add al,[bx+si]
000011E5  00C8              add al,cl
000011E7  0000              add [bx+si],al
000011E9  2800              sub [bx+si],al
000011EB  0018              add [bx+si],bl
000011ED  0100              add [bx+si],ax
000011EF  2003              and [bp+di],al
000011F1  005000            add [bx+si+0x0],dl
000011F4  00E8              add al,ch
000011F6  0300              add ax,[bx+si]
000011F8  96                xchg ax,si
000011F9  0000              add [bx+si],al
000011FB  0000              add [bx+si],al
000011FD  0000              add [bx+si],al
000011FF  0000              add [bx+si],al
00001201  0000              add [bx+si],al
00001203  0000              add [bx+si],al
00001205  0000              add [bx+si],al
00001207  0000              add [bx+si],al
00001209  0000              add [bx+si],al
0000120B  0000              add [bx+si],al
0000120D  0000              add [bx+si],al
0000120F  0000              add [bx+si],al
00001211  0000              add [bx+si],al
00001213  0000              add [bx+si],al
00001215  0000              add [bx+si],al
00001217  0000              add [bx+si],al
00001219  0000              add [bx+si],al
0000121B  0000              add [bx+si],al
0000121D  0000              add [bx+si],al
0000121F  0000              add [bx+si],al
00001221  0000              add [bx+si],al
00001223  0000              add [bx+si],al
00001225  0000              add [bx+si],al
00001227  0000              add [bx+si],al
00001229  00                db 0x00
