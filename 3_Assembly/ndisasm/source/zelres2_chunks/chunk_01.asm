00000000  1D0E00            sbb ax,0xe
00000003  0004              add [si],al
00000005  A00BA0            mov al,[0xa00b]
00000008  C606F8AD00        mov byte [0xadf8],0x0
0000000D  EB05              jmp 0x14
0000000F  C606F8ADFF        mov byte [0xadf8],0xff
00000014  C60602AE00        mov byte [0xae02],0x0
00000019  BEE8AD            mov si,0xade8
0000001C  B90400            mov cx,0x4
0000001F  51                push cx
00000020  AD                lodsw
00000021  8BD8              mov bx,ax
00000023  AD                lodsw
00000024  8BC8              mov cx,ax
00000026  56                push si
00000027  B0FF              mov al,0xff
00000029  2EFF160020        call word near [cs:0x2000]
0000002E  5E                pop si
0000002F  59                pop cx
00000030  E2ED              loop 0x1f
00000032  E8A409            call 0x9d9
00000035  0E                push cs
00000036  07                pop es
00000037  BEBB00            mov si,0xbb
0000003A  BF03AE            mov di,0xae03
0000003D  32C9              xor cl,cl
0000003F  B501              mov ch,0x1
00000041  AC                lodsb
00000042  0AC0              or al,al
00000044  7405              jz 0x4b
00000046  8AC5              mov al,ch
00000048  AA                stosb
00000049  FEC1              inc cl
0000004B  FEC5              inc ch
0000004D  80FD08            cmp ch,0x8
00000050  75EF              jnz 0x41
00000052  880EFAAD          mov [0xadfa],cl
00000056  BEA100            mov si,0xa1
00000059  BF0AAE            mov di,0xae0a
0000005C  32C0              xor al,al
0000005E  AA                stosb
0000005F  32C9              xor cl,cl
00000061  B505              mov ch,0x5
00000063  AC                lodsb
00000064  0AC0              or al,al
00000066  7403              jz 0x6b
00000068  AA                stosb
00000069  FEC1              inc cl
0000006B  FECD              dec ch
0000006D  75F4              jnz 0x63
0000006F  0AC9              or cl,cl
00000071  7402              jz 0x75
00000073  FEC1              inc cl
00000075  880EFCAD          mov [0xadfc],cl
00000079  E8CB05            call 0x647
0000007C  E83408            call 0x8b3
0000007F  E85306            call 0x6d5
00000082  E8E805            call 0x66d
00000085  E8CE06            call 0x756
00000088  E8D109            call 0xa5c
0000008B  1AC0              sbb al,al
0000008D  A201AE            mov [0xae01],al
00000090  32C9              xor cl,cl
00000092  F606FAADFF        test byte [0xadfa],0xff
00000097  751F              jnz 0xb8
00000099  FEC1              inc cl
0000009B  F606FCADFF        test byte [0xadfc],0xff
000000A0  7516              jnz 0xb8
000000A2  F606F8ADFF        test byte [0xadf8],0xff
000000A7  7509              jnz 0xb2
000000A9  FEC1              inc cl
000000AB  F606FEADFF        test byte [0xadfe],0xff
000000B0  7506              jnz 0xb8
000000B2  E8A709            call 0xa5c
000000B5  73FB              jnc 0xb2
000000B7  C3                ret
000000B8  880EF9AD          mov [0xadf9],cl
000000BC  8A1EF9AD          mov bl,[0xadf9]
000000C0  32FF              xor bh,bh
000000C2  03DB              add bx,bx
000000C4  FFA7C4A0          jmp word near [bx-0x5f3c]
000000C8  CAA0BB            retf word 0xbba0
000000CB  A1B9A2            mov ax,[0xa2b9]
000000CE  E80809            call 0x9d9
000000D1  B002              mov al,0x2
000000D3  E8A900            call 0x17f
000000D6  CD61              int byte 0x61
000000D8  2403              and al,0x3
000000DA  75FA              jnz 0xd6
000000DC  E87D09            call 0xa5c
000000DF  7301              jnc 0xe2
000000E1  C3                ret
000000E2  CD61              int byte 0x61
000000E4  240E              and al,0xe
000000E6  74F4              jz 0xdc
000000E8  240C              and al,0xc
000000EA  7503              jnz 0xef
000000EC  E9A500            jmp 0x194
000000EF  A804              test al,0x4
000000F1  7527              jnz 0x11a
000000F3  A0FBAD            mov al,[0xadfb]
000000F6  FEC0              inc al
000000F8  8A26FAAD          mov ah,[0xadfa]
000000FC  FECC              dec ah
000000FE  3AE0              cmp ah,al
00000100  72DA              jc 0xdc
00000102  32C0              xor al,al
00000104  E87800            call 0x17f
00000107  FE06FBAD          inc byte [0xadfb]
0000010B  B002              mov al,0x2
0000010D  E86F00            call 0x17f
00000110  C60675FF0C        mov byte [0xff75],0xc
00000115  E82100            call 0x139
00000118  EBC2              jmp 0xdc
0000011A  F606FBADFF        test byte [0xadfb],0xff
0000011F  74BB              jz 0xdc
00000121  32C0              xor al,al
00000123  E85900            call 0x17f
00000126  FE0EFBAD          dec byte [0xadfb]
0000012A  B002              mov al,0x2
0000012C  E85000            call 0x17f
0000012F  C60675FF0C        mov byte [0xff75],0xc
00000134  E80200            call 0x139
00000137  EBA3              jmp 0xdc
00000139  BB03AE            mov bx,0xae03
0000013C  A0FBAD            mov al,[0xadfb]
0000013F  D7                xlatb
00000140  A29D00            mov [0x9d],al
00000143  BB1127            mov bx,0x2711
00000146  B90910            mov cx,0x1009
00000149  32C0              xor al,al
0000014B  2EFF160020        call word near [cs:0x2000]
00000150  8A1E9D00          mov bl,[0x9d]
00000154  FECB              dec bl
00000156  32FF              xor bh,bh
00000158  03DB              add bx,bx
0000015A  8BB7B8AA          mov si,[bx-0x5548]
0000015E  BB9E00            mov bx,0x9e
00000161  B112              mov cl,0x12
00000163  B401              mov ah,0x1
00000165  E8C708            call 0xa2f
00000168  A09D00            mov al,[0x9d]
0000016B  BBA437            mov bx,0x37a4
0000016E  2EFF161E20        call word near [cs:0x201e]
00000173  2EFF161820        call word near [cs:0x2018]
00000178  CD61              int byte 0x61
0000017A  240C              and al,0xc
0000017C  75FA              jnz 0x178
0000017E  C3                ret
0000017F  8A3EFBAD          mov bh,[0xadfb]
00000183  32DB              xor bl,bl
00000185  03DB              add bx,bx
00000187  03DB              add bx,bx
00000189  03DB              add bx,bx
0000018B  81C31A0E          add bx,0xe1a
0000018F  2EFF262E20        jmp word near [cs:0x202e]
00000194  B101              mov cl,0x1
00000196  F606FCADFF        test byte [0xadfc],0xff
0000019B  7511              jnz 0x1ae
0000019D  F606F8ADFF        test byte [0xadf8],0xff
000001A2  B102              mov cl,0x2
000001A4  F606FEADFF        test byte [0xadfe],0xff
000001A9  7503              jnz 0x1ae
000001AB  E92EFF            jmp 0xdc
000001AE  C60675FF0D        mov byte [0xff75],0xd
000001B3  880EF9AD          mov [0xadf9],cl
000001B7  B005              mov al,0x5
000001B9  E8C3FF            call 0x17f
000001BC  E9FDFE            jmp 0xbc
000001BF  E81708            call 0x9d9
000001C2  B002              mov al,0x2
000001C4  E8A300            call 0x26a
000001C7  CD61              int byte 0x61
000001C9  2403              and al,0x3
000001CB  75FA              jnz 0x1c7
000001CD  E88C08            call 0xa5c
000001D0  7301              jnc 0x1d3
000001D2  C3                ret
000001D3  CD61              int byte 0x61
000001D5  240F              and al,0xf
000001D7  74F4              jz 0x1cd
000001D9  8AE0              mov ah,al
000001DB  240C              and al,0xc
000001DD  7503              jnz 0x1e2
000001DF  E99F00            jmp 0x281
000001E2  A804              test al,0x4
000001E4  7527              jnz 0x20d
000001E6  A0FDAD            mov al,[0xadfd]
000001E9  FEC0              inc al
000001EB  8A26FCAD          mov ah,[0xadfc]
000001EF  FECC              dec ah
000001F1  3AE0              cmp ah,al
000001F3  72D8              jc 0x1cd
000001F5  32C0              xor al,al
000001F7  E87000            call 0x26a
000001FA  FE06FDAD          inc byte [0xadfd]
000001FE  B002              mov al,0x2
00000200  E86700            call 0x26a
00000203  C60675FF0C        mov byte [0xff75],0xc
00000208  E82100            call 0x22c
0000020B  EBC0              jmp 0x1cd
0000020D  F606FDADFF        test byte [0xadfd],0xff
00000212  74B9              jz 0x1cd
00000214  32C0              xor al,al
00000216  E85100            call 0x26a
00000219  FE0EFDAD          dec byte [0xadfd]
0000021D  B002              mov al,0x2
0000021F  E84800            call 0x26a
00000222  C60675FF0C        mov byte [0xff75],0xc
00000227  E80200            call 0x22c
0000022A  EBA1              jmp 0x1cd
0000022C  BB0AAE            mov bx,0xae0a
0000022F  A0FDAD            mov al,[0xadfd]
00000232  D7                xlatb
00000233  A29E00            mov [0x9e],al
00000236  BB4217            mov bx,0x1742
00000239  B91116            mov cx,0x1611
0000023C  32C0              xor al,al
0000023E  2EFF160020        call word near [cs:0x2000]
00000243  8A1E9E00          mov bl,[0x9e]
00000247  32FF              xor bh,bh
00000249  03DB              add bx,bx
0000024B  8BB7F3AA          mov si,[bx-0x550d]
0000024F  BB5C00            mov bx,0x5c
00000252  B143              mov cl,0x43
00000254  B401              mov ah,0x1
00000256  E8D607            call 0xa2f
00000259  BB5C00            mov bx,0x5c
0000025C  B14B              mov cl,0x4b
0000025E  B401              mov ah,0x1
00000260  E8CC07            call 0xa2f
00000263  CD61              int byte 0x61
00000265  240C              and al,0xc
00000267  75FA              jnz 0x263
00000269  C3                ret
0000026A  8A3EFDAD          mov bh,[0xadfd]
0000026E  32DB              xor bl,bl
00000270  8BCB              mov cx,bx
00000272  03DB              add bx,bx
00000274  03DB              add bx,bx
00000276  03D9              add bx,cx
00000278  81C3530E          add bx,0xe53
0000027C  2EFF262E20        jmp word near [cs:0x202e]
00000281  F6C401            test ah,0x1
00000284  7411              jz 0x297
00000286  F606FAADFF        test byte [0xadfa],0xff
0000028B  7503              jnz 0x290
0000028D  E93DFF            jmp 0x1cd
00000290  C606F9AD00        mov byte [0xadf9],0x0
00000295  EB19              jmp 0x2b0
00000297  F606F8ADFF        test byte [0xadf8],0xff
0000029C  7403              jz 0x2a1
0000029E  E92CFF            jmp 0x1cd
000002A1  F606FEADFF        test byte [0xadfe],0xff
000002A6  7503              jnz 0x2ab
000002A8  E922FF            jmp 0x1cd
000002AB  C606F9AD02        mov byte [0xadf9],0x2
000002B0  C60675FF0D        mov byte [0xff75],0xd
000002B5  B005              mov al,0x5
000002B7  E8B0FF            call 0x26a
000002BA  E9FFFD            jmp 0xbc
000002BD  E81907            call 0x9d9
000002C0  B002              mov al,0x2
000002C2  E8B900            call 0x37e
000002C5  CD61              int byte 0x61
000002C7  2403              and al,0x3
000002C9  75FA              jnz 0x2c5
000002CB  E88E07            call 0xa5c
000002CE  7301              jnc 0x2d1
000002D0  C3                ret
000002D1  813E18FF8602      cmp word [0xff18],0x286
000002D7  7503              jnz 0x2dc
000002D9  E9DF00            jmp 0x3bb
000002DC  CD61              int byte 0x61
000002DE  80E401            and ah,0x1
000002E1  7403              jz 0x2e6
000002E3  E92B01            jmp 0x411
000002E6  240D              and al,0xd
000002E8  74E1              jz 0x2cb
000002EA  50                push ax
000002EB  E83F03            call 0x62d
000002EE  58                pop ax
000002EF  240C              and al,0xc
000002F1  7503              jnz 0x2f6
000002F3  E99F00            jmp 0x395
000002F6  A804              test al,0x4
000002F8  7527              jnz 0x321
000002FA  A000AE            mov al,[0xae00]
000002FD  FEC0              inc al
000002FF  8A26FEAD          mov ah,[0xadfe]
00000303  FECC              dec ah
00000305  3AE0              cmp ah,al
00000307  72C2              jc 0x2cb
00000309  32C0              xor al,al
0000030B  E87000            call 0x37e
0000030E  FE0600AE          inc byte [0xae00]
00000312  B002              mov al,0x2
00000314  E86700            call 0x37e
00000317  C60675FF0C        mov byte [0xff75],0xc
0000031C  E82100            call 0x340
0000031F  EBAA              jmp 0x2cb
00000321  F60600AEFF        test byte [0xae00],0xff
00000326  74A3              jz 0x2cb
00000328  32C0              xor al,al
0000032A  E85100            call 0x37e
0000032D  FE0E00AE          dec byte [0xae00]
00000331  B002              mov al,0x2
00000333  E84800            call 0x37e
00000336  C60675FF0C        mov byte [0xff75],0xc
0000033B  E80200            call 0x340
0000033E  EB8B              jmp 0x2cb
00000340  BB10AE            mov bx,0xae10
00000343  A000AE            mov al,[0xae00]
00000346  D7                xlatb
00000347  A2FFAD            mov [0xadff],al
0000034A  BB7015            mov bx,0x1570
0000034D  B91118            mov cx,0x1811
00000350  32C0              xor al,al
00000352  2EFF160020        call word near [cs:0x2000]
00000357  8A1EFFAD          mov bl,[0xadff]
0000035B  32FF              xor bh,bh
0000035D  03DB              add bx,bx
0000035F  8BB732AC          mov si,[bx-0x53ce]
00000363  BB5400            mov bx,0x54
00000366  B170              mov cl,0x70
00000368  B401              mov ah,0x1
0000036A  E8C206            call 0xa2f
0000036D  BB5400            mov bx,0x54
00000370  B178              mov cl,0x78
00000372  B401              mov ah,0x1
00000374  E8B806            call 0xa2f
00000377  CD61              int byte 0x61
00000379  240C              and al,0xc
0000037B  75FA              jnz 0x377
0000037D  C3                ret
0000037E  8A3E00AE          mov bh,[0xae00]
00000382  32DB              xor bl,bl
00000384  8BCB              mov cx,bx
00000386  03DB              add bx,bx
00000388  03DB              add bx,bx
0000038A  03D9              add bx,cx
0000038C  81C3810E          add bx,0xe81
00000390  2EFF262E20        jmp word near [cs:0x202e]
00000395  B101              mov cl,0x1
00000397  F606FCADFF        test byte [0xadfc],0xff
0000039C  750C              jnz 0x3aa
0000039E  32C9              xor cl,cl
000003A0  F606FAADFF        test byte [0xadfa],0xff
000003A5  7503              jnz 0x3aa
000003A7  E921FF            jmp 0x2cb
000003AA  880EF9AD          mov [0xadf9],cl
000003AE  C60675FF0D        mov byte [0xff75],0xd
000003B3  B005              mov al,0x5
000003B5  E8C6FF            call 0x37e
000003B8  E901FD            jmp 0xbc
000003BB  F60602AEFF        test byte [0xae02],0xff
000003C0  7403              jz 0x3c5
000003C2  E906FF            jmp 0x2cb
000003C5  E84B02            call 0x613
000003C8  BB431B            mov bx,0x1b43
000003CB  B9241A            mov cx,0x1a24
000003CE  B0FF              mov al,0xff
000003D0  2EFF160020        call word near [cs:0x2000]
000003D5  BEA2AA            mov si,0xaaa2
000003D8  BB8000            mov bx,0x80
000003DB  B14C              mov cl,0x4c
000003DD  B401              mov ah,0x1
000003DF  E84D06            call 0xa2f
000003E2  A08D00            mov al,[0x8d]
000003E5  32E4              xor ah,ah
000003E7  40                inc ax
000003E8  B90200            mov cx,0x2
000003EB  B306              mov bl,0x6
000003ED  BA4C2C            mov dx,0x2c4c
000003F0  E8C405            call 0x9b7
000003F3  BEA8AA            mov si,0xaaa8
000003F6  BB8000            mov bx,0x80
000003F9  B156              mov cl,0x56
000003FB  B401              mov ah,0x1
000003FD  E82F06            call 0xa2f
00000400  A18E00            mov ax,[0x8e]
00000403  B90500            mov cx,0x5
00000406  B306              mov bl,0x6
00000408  BA5628            mov dx,0x2856
0000040B  E8A905            call 0x9b7
0000040E  E9BAFE            jmp 0x2cb
00000411  F606FFADFF        test byte [0xadff],0xff
00000416  7503              jnz 0x41b
00000418  E9B0FE            jmp 0x2cb
0000041B  E80F02            call 0x62d
0000041E  B8C7A2            mov ax,0xa2c7
00000421  50                push ax
00000422  B8B4A5            mov ax,0xa5b4
00000425  50                push ax
00000426  8A0E00AE          mov cl,[0xae00]
0000042A  32ED              xor ch,ch
0000042C  BBA600            mov bx,0xa6
0000042F  F607FF            test byte [bx],0xff
00000432  7402              jz 0x436
00000434  FEC5              inc ch
00000436  43                inc bx
00000437  3AE9              cmp ch,cl
00000439  75F4              jnz 0x42f
0000043B  C647FF00          mov byte [bx-0x1],0x0
0000043F  E80502            call 0x647
00000442  A0FFAD            mov al,[0xadff]
00000445  A24BFF            mov [0xff4b],al
00000448  8A1EFFAD          mov bl,[0xadff]
0000044C  FECB              dec bl
0000044E  32FF              xor bh,bh
00000450  03DB              add bx,bx
00000452  FFA752A4          jmp word near [bx-0x5bae]
00000456  62A483A4          bound sp,[si-0x5b7d]
0000045A  96                xchg ax,si
0000045B  A4                movsb
0000045C  BEA42C            mov si,0x2ca4
0000045F  A5                movsw
00000460  EAA4DBA48B        jmp word 0x8ba4:word 0xdba4
00000465  A5                movsw
00000466  C60675FF0E        mov byte [0xff75],0xe
0000046B  8306900050        add word [0x90],0x50
00000470  A19000            mov ax,[0x90]
00000473  2B06B200          sub ax,[0xb2]
00000477  7206              jc 0x47f
00000479  A1B200            mov ax,[0xb2]
0000047C  A39000            mov [0x90],ax
0000047F  2EFF160820        call word near [cs:0x2008]
00000484  E95701            jmp 0x5de
00000487  C60675FF0E        mov byte [0xff75],0xe
0000048C  A1B200            mov ax,[0xb2]
0000048F  A39000            mov [0x90],ax
00000492  2EFF160820        call word near [cs:0x2008]
00000497  E94401            jmp 0x5de
0000049A  C60675FF0E        mov byte [0xff75],0xe
0000049F  F6069D00FF        test byte [0x9d],0xff
000004A4  7501              jnz 0x4a7
000004A6  C3                ret
000004A7  8A1E9D00          mov bl,[0x9d]
000004AB  FECB              dec bl
000004AD  32FF              xor bh,bh
000004AF  8A87B400          mov al,[bx+0xb4]
000004B3  8887AB00          mov [bx+0xab],al
000004B7  2EFF161820        call word near [cs:0x2018]
000004BC  E86E04            call 0x92d
000004BF  E91C01            jmp 0x5de
000004C2  C60675FF0E        mov byte [0xff75],0xe
000004C7  0E                push cs
000004C8  07                pop es
000004C9  BEB400            mov si,0xb4
000004CC  BFAB00            mov di,0xab
000004CF  B90700            mov cx,0x7
000004D2  F3A4              rep movsb
000004D4  2EFF161820        call word near [cs:0x2018]
000004D9  E85104            call 0x92d
000004DC  E9FF00            jmp 0x5de
000004DF  C60675FF0E        mov byte [0xff75],0xe
000004E4  FE06E400          inc byte [0xe4]
000004E8  E88703            call 0x872
000004EB  E9F000            jmp 0x5de
000004EE  C60675FF0E        mov byte [0xff75],0xe
000004F3  F6069300FF        test byte [0x93],0xff
000004F8  7501              jnz 0x4fb
000004FA  C3                ret
000004FB  8A1E9300          mov bl,[0x93]
000004FF  FECB              dec bl
00000501  32FF              xor bh,bh
00000503  03DB              add bx,bx
00000505  8B8720A5          mov ax,[bx-0x5ae0]
00000509  01069400          add [0x94],ax
0000050D  A19400            mov ax,[0x94]
00000510  2B069600          sub ax,[0x96]
00000514  7206              jc 0x51c
00000516  A19600            mov ax,[0x96]
00000519  A39400            mov [0x94],ax
0000051C  2EFF161A20        call word near [cs:0x201a]
00000521  E9BA00            jmp 0x5de
00000524  50                push ax
00000525  005A00            add [bp+si+0x0],bl
00000528  64006E00          add [fs:bp+0x0],ch
0000052C  7300              jnc 0x52e
0000052E  7800              js 0x530
00000530  0E                push cs
00000531  07                pop es
00000532  C60675FF0E        mov byte [0xff75],0xe
00000537  C60684A500        mov byte [0xa584],0x0
0000053C  C60685A501        mov byte [0xa585],0x1
00000541  BE84A5            mov si,0xa584
00000544  BF60EB            mov di,0xeb60
00000547  B90700            mov cx,0x7
0000054A  F3A4              rep movsb
0000054C  C60684A504        mov byte [0xa584],0x4
00000551  C60685A5FF        mov byte [0xa585],0xff
00000556  BE84A5            mov si,0xa584
00000559  BF67EB            mov di,0xeb67
0000055C  B90700            mov cx,0x7
0000055F  F3A4              rep movsb
00000561  C60684A508        mov byte [0xa584],0x8
00000566  BE84A5            mov si,0xa584
00000569  BF6EEB            mov di,0xeb6e
0000056C  B90700            mov cx,0x7
0000056F  F3A4              rep movsb
00000571  C60684A50C        mov byte [0xa584],0xc
00000576  C60685A501        mov byte [0xa585],0x1
0000057B  BE84A5            mov si,0xa584
0000057E  BF75EB            mov di,0xeb75
00000581  B90700            mov cx,0x7
00000584  F3A4              rep movsb
00000586  EB56              jmp 0x5de
00000588  0000              add [bx+si],al
0000058A  50                push ax
0000058B  0000              add [bx+si],al
0000058D  0000              add [bx+si],al
0000058F  C60675FF0F        mov byte [0xff75],0xf
00000594  E84700            call 0x5de
00000597  E81E00            call 0x5b8
0000059A  58                pop ax
0000059B  58                pop ax
0000059C  C60624FF08        mov byte [0xff24],0x8
000005A1  C6061AFF00        mov byte [0xff1a],0x0
000005A6  803E1AFF78        cmp byte [0xff1a],0x78
000005AB  72F9              jc 0x5a6
000005AD  2EFF164020        call word near [cs:0x2040]
000005B2  B80100            mov ax,0x1
000005B5  CD60              int byte 0x60
000005B7  C3                ret
000005B8  32C0              xor al,al
000005BA  E8C1FD            call 0x37e
000005BD  BB830E            mov bx,0xe83
000005C0  B9101E            mov cx,0x1e10
000005C3  32C0              xor al,al
000005C5  2EFF160020        call word near [cs:0x2000]
000005CA  F606FEADFF        test byte [0xadfe],0xff
000005CF  7505              jnz 0x5d6
000005D1  C606FEAD01        mov byte [0xadfe],0x1
000005D6  E89400            call 0x66d
000005D9  B002              mov al,0x2
000005DB  E9A0FD            jmp 0x37e
000005DE  E83200            call 0x613
000005E1  BB430F            mov bx,0xf43
000005E4  B92432            mov cx,0x3224
000005E7  B0FF              mov al,0xff
000005E9  2EFF160020        call word near [cs:0x2000]
000005EE  BEACAA            mov si,0xaaac
000005F1  BB4400            mov bx,0x44
000005F4  B14C              mov cl,0x4c
000005F6  B401              mov ah,0x1
000005F8  E83404            call 0xa2f
000005FB  8A1EFFAD          mov bl,[0xadff]
000005FF  FECB              dec bl
00000601  32FF              xor bh,bh
00000603  03DB              add bx,bx
00000605  8BB762AB          mov si,[bx-0x549e]
00000609  BB4800            mov bx,0x48
0000060C  B156              mov cl,0x56
0000060E  B401              mov ah,0x1
00000610  E91C04            jmp 0xa2f
00000613  F60602AEFF        test byte [0xae02],0xff
00000618  7401              jz 0x61b
0000061A  C3                ret
0000061B  C60602AEFF        mov byte [0xae02],0xff
00000620  B84306            mov ax,0x643
00000623  33FF              xor di,di
00000625  B9241C            mov cx,0x1c24
00000628  2EFF262620        jmp word near [cs:0x2026]
0000062D  F60602AEFF        test byte [0xae02],0xff
00000632  7501              jnz 0x635
00000634  C3                ret
00000635  C60602AE00        mov byte [0xae02],0x0
0000063A  B84306            mov ax,0x643
0000063D  33FF              xor di,di
0000063F  B9241C            mov cx,0x1c24
00000642  2EFF262820        jmp word near [cs:0x2028]
00000647  0E                push cs
00000648  07                pop es
00000649  BEA600            mov si,0xa6
0000064C  BF10AE            mov di,0xae10
0000064F  32C0              xor al,al
00000651  AA                stosb
00000652  32C9              xor cl,cl
00000654  B505              mov ch,0x5
00000656  AC                lodsb
00000657  0AC0              or al,al
00000659  7403              jz 0x65e
0000065B  AA                stosb
0000065C  FEC1              inc cl
0000065E  FECD              dec ch
00000660  75F4              jnz 0x656
00000662  0AC9              or cl,cl
00000664  7402              jz 0x668
00000666  FEC1              inc cl
00000668  880EFEAD          mov [0xadfe],cl
0000066C  C3                ret
0000066D  F606FEADFF        test byte [0xadfe],0xff
00000672  7454              jz 0x6c8
00000674  8A0EFEAD          mov cl,[0xadfe]
00000678  32ED              xor ch,ch
0000067A  BB830E            mov bx,0xe83
0000067D  BE10AE            mov si,0xae10
00000680  51                push cx
00000681  AC                lodsb
00000682  56                push si
00000683  53                push bx
00000684  2EFF163620        call word near [cs:0x2036]
00000689  5B                pop bx
0000068A  5E                pop si
0000068B  81C30005          add bx,0x500
0000068F  59                pop cx
00000690  E2EE              loop 0x680
00000692  C606FFAD00        mov byte [0xadff],0x0
00000697  C60600AE00        mov byte [0xae00],0x0
0000069C  F606F8ADFF        test byte [0xadf8],0xff
000006A1  7401              jz 0x6a4
000006A3  C3                ret
000006A4  BB810E            mov bx,0xe81
000006A7  B005              mov al,0x5
000006A9  2EFF162E20        call word near [cs:0x202e]
000006AE  BB7015            mov bx,0x1570
000006B1  B91118            mov cx,0x1811
000006B4  32C0              xor al,al
000006B6  2EFF160020        call word near [cs:0x2000]
000006BB  BE9AAA            mov si,0xaa9a
000006BE  BB5400            mov bx,0x54
000006C1  B171              mov cl,0x71
000006C3  B401              mov ah,0x1
000006C5  E96703            jmp 0xa2f
000006C8  BB5400            mov bx,0x54
000006CB  B171              mov cl,0x71
000006CD  BE92AA            mov si,0xaa92
000006D0  B401              mov ah,0x1
000006D2  E95A03            jmp 0xa2f
000006D5  F606FCADFF        test byte [0xadfc],0xff
000006DA  746D              jz 0x749
000006DC  8A0EFCAD          mov cl,[0xadfc]
000006E0  32ED              xor ch,ch
000006E2  BB550E            mov bx,0xe55
000006E5  BE0AAE            mov si,0xae0a
000006E8  51                push cx
000006E9  AC                lodsb
000006EA  56                push si
000006EB  53                push bx
000006EC  2EFF163420        call word near [cs:0x2034]
000006F1  5B                pop bx
000006F2  5E                pop si
000006F3  81C30005          add bx,0x500
000006F7  59                pop cx
000006F8  E2EE              loop 0x6e8
000006FA  0E                push cs
000006FB  07                pop es
000006FC  BF0AAE            mov di,0xae0a
000006FF  A09E00            mov al,[0x9e]
00000702  B90600            mov cx,0x6
00000705  F2AE              repne scasb
00000707  F7D9              neg cx
00000709  83C105            add cx,0x5
0000070C  880EFDAD          mov [0xadfd],cl
00000710  8AE9              mov ch,cl
00000712  32C9              xor cl,cl
00000714  8BD9              mov bx,cx
00000716  03C9              add cx,cx
00000718  03C9              add cx,cx
0000071A  03CB              add cx,bx
0000071C  81C1530E          add cx,0xe53
00000720  8BD9              mov bx,cx
00000722  B005              mov al,0x5
00000724  2EFF162E20        call word near [cs:0x202e]
00000729  8A1E9E00          mov bl,[0x9e]
0000072D  32FF              xor bh,bh
0000072F  03DB              add bx,bx
00000731  8BB7F3AA          mov si,[bx-0x550d]
00000735  BB5C00            mov bx,0x5c
00000738  B143              mov cl,0x43
0000073A  B401              mov ah,0x1
0000073C  E8F002            call 0xa2f
0000073F  BB5C00            mov bx,0x5c
00000742  B14B              mov cl,0x4b
00000744  B401              mov ah,0x1
00000746  E9E602            jmp 0xa2f
00000749  BB5C00            mov bx,0x5c
0000074C  B143              mov cl,0x43
0000074E  BE92AA            mov si,0xaa92
00000751  B401              mov ah,0x1
00000753  E9D902            jmp 0xa2f
00000756  F6069200FF        test byte [0x92],0xff
0000075B  7430              jz 0x78d
0000075D  BB4D17            mov bx,0x174d
00000760  A09200            mov al,[0x92]
00000763  2EFF161C20        call word near [cs:0x201c]
00000768  8A1E9200          mov bl,[0x92]
0000076C  32FF              xor bh,bh
0000076E  FECB              dec bl
00000770  03DB              add bx,bx
00000772  8BB7D9AC          mov si,[bx-0x5327]
00000776  BB4E34            mov bx,0x344e
00000779  32C9              xor cl,cl
0000077B  2EFF163820        call word near [cs:0x2038]
00000780  BB5634            mov bx,0x3456
00000783  32C9              xor cl,cl
00000785  2EFF163820        call word near [cs:0x2038]
0000078A  E8E500            call 0x872
0000078D  F6069300FF        test byte [0x93],0xff
00000792  7430              jz 0x7c4
00000794  BB612E            mov bx,0x2e61
00000797  A09300            mov al,[0x93]
0000079A  2EFF162020        call word near [cs:0x2020]
0000079F  8A1E9300          mov bl,[0x93]
000007A3  32FF              xor bh,bh
000007A5  FECB              dec bl
000007A7  03DB              add bx,bx
000007A9  8BB767AD          mov si,[bx-0x5299]
000007AD  BB6134            mov bx,0x3461
000007B0  32C9              xor cl,cl
000007B2  2EFF163820        call word near [cs:0x2038]
000007B7  BB6934            mov bx,0x3469
000007BA  32C9              xor cl,cl
000007BC  2EFF163820        call word near [cs:0x2038]
000007C1  E88400            call 0x848
000007C4  F6069800FF        test byte [0x98],0xff
000007C9  7428              jz 0x7f3
000007CB  BB752E            mov bx,0x2e75
000007CE  32C0              xor al,al
000007D0  2EFF163A20        call word near [cs:0x203a]
000007D5  BBC800            mov bx,0xc8
000007D8  B17E              mov cl,0x7e
000007DA  B05E              mov al,0x5e
000007DC  B401              mov ah,0x1
000007DE  2EFF162220        call word near [cs:0x2022]
000007E3  A09800            mov al,[0x98]
000007E6  32E4              xor ah,ah
000007E8  B90100            mov cx,0x1
000007EB  B301              mov bl,0x1
000007ED  BA7E34            mov dx,0x347e
000007F0  E8C401            call 0x9b7
000007F3  F6069900FF        test byte [0x99],0xff
000007F8  7428              jz 0x822
000007FA  BB753A            mov bx,0x3a75
000007FD  B001              mov al,0x1
000007FF  2EFF163A20        call word near [cs:0x203a]
00000804  BBF800            mov bx,0xf8
00000807  B17E              mov cl,0x7e
00000809  B05E              mov al,0x5e
0000080B  B401              mov ah,0x1
0000080D  2EFF162220        call word near [cs:0x2022]
00000812  A09900            mov al,[0x99]
00000815  32E4              xor ah,ah
00000817  B90100            mov cx,0x1
0000081A  B301              mov bl,0x1
0000081C  BA7E40            mov dx,0x407e
0000081F  E89501            call 0x9b7
00000822  BE9A00            mov si,0x9a
00000825  BB8930            mov bx,0x3089
00000828  B90300            mov cx,0x3
0000082B  51                push cx
0000082C  AC                lodsb
0000082D  0AC0              or al,al
0000082F  7413              jz 0x844
00000831  8AC1              mov al,cl
00000833  F6D8              neg al
00000835  0403              add al,0x3
00000837  53                push bx
00000838  56                push si
00000839  2EFF163C20        call word near [cs:0x203c]
0000083E  5E                pop si
0000083F  5B                pop bx
00000840  81C30006          add bx,0x600
00000844  59                pop cx
00000845  E2E4              loop 0x82b
00000847  C3                ret
00000848  A19600            mov ax,[0x96]
0000084B  BA6934            mov dx,0x3469
0000084E  B90300            mov cx,0x3
00000851  B304              mov bl,0x4
00000853  E86101            call 0x9b7
00000856  BBCA00            mov bx,0xca
00000859  B169              mov cl,0x69
0000085B  B028              mov al,0x28
0000085D  B404              mov ah,0x4
0000085F  2EFF162220        call word near [cs:0x2022]
00000864  BBE000            mov bx,0xe0
00000867  B169              mov cl,0x69
00000869  B029              mov al,0x29
0000086B  B404              mov ah,0x4
0000086D  2EFF262220        jmp word near [cs:0x2022]
00000872  F606E400FF        test byte [0xe4],0xff
00000877  7501              jnz 0x87a
00000879  C3                ret
0000087A  BB5732            mov bx,0x3257
0000087D  B90804            mov cx,0x408
00000880  32C0              xor al,al
00000882  2EFF160020        call word near [cs:0x2000]
00000887  BBCA00            mov bx,0xca
0000088A  B157              mov cl,0x57
0000088C  B028              mov al,0x28
0000088E  B401              mov ah,0x1
00000890  2EFF162220        call word near [cs:0x2022]
00000895  A0E400            mov al,[0xe4]
00000898  32E4              xor ah,ah
0000089A  BA5734            mov dx,0x3457
0000089D  B301              mov bl,0x1
0000089F  B90100            mov cx,0x1
000008A2  E81201            call 0x9b7
000008A5  BBD400            mov bx,0xd4
000008A8  B157              mov cl,0x57
000008AA  B029              mov al,0x29
000008AC  B401              mov ah,0x1
000008AE  2EFF262220        jmp word near [cs:0x2022]
000008B3  F606FAADFF        test byte [0xadfa],0xff
000008B8  7466              jz 0x920
000008BA  8A0EFAAD          mov cl,[0xadfa]
000008BE  32ED              xor ch,ch
000008C0  BB1C0E            mov bx,0xe1c
000008C3  BE03AE            mov si,0xae03
000008C6  51                push cx
000008C7  AC                lodsb
000008C8  56                push si
000008C9  53                push bx
000008CA  2EFF161E20        call word near [cs:0x201e]
000008CF  5B                pop bx
000008D0  5E                pop si
000008D1  81C30008          add bx,0x800
000008D5  59                pop cx
000008D6  E2EE              loop 0x8c6
000008D8  E85200            call 0x92d
000008DB  0E                push cs
000008DC  07                pop es
000008DD  BF03AE            mov di,0xae03
000008E0  A09D00            mov al,[0x9d]
000008E3  B90700            mov cx,0x7
000008E6  F2AE              repne scasb
000008E8  F7D9              neg cx
000008EA  83C106            add cx,0x6
000008ED  880EFBAD          mov [0xadfb],cl
000008F1  8AE9              mov ch,cl
000008F3  32C9              xor cl,cl
000008F5  03C9              add cx,cx
000008F7  03C9              add cx,cx
000008F9  03C9              add cx,cx
000008FB  81C11A0E          add cx,0xe1a
000008FF  8BD9              mov bx,cx
00000901  B005              mov al,0x5
00000903  2EFF162E20        call word near [cs:0x202e]
00000908  8A1E9D00          mov bl,[0x9d]
0000090C  FECB              dec bl
0000090E  32FF              xor bh,bh
00000910  03DB              add bx,bx
00000912  8BB7B8AA          mov si,[bx-0x5548]
00000916  BB9E00            mov bx,0x9e
00000919  B112              mov cl,0x12
0000091B  B401              mov ah,0x1
0000091D  E90F01            jmp 0xa2f
00000920  BB9E00            mov bx,0x9e
00000923  B112              mov cl,0x12
00000925  BE92AA            mov si,0xaa92
00000928  B401              mov ah,0x1
0000092A  E90201            jmp 0xa2f
0000092D  BA2E0E            mov dx,0xe2e
00000930  BE03AE            mov si,0xae03
00000933  8A0EFAAD          mov cl,[0xadfa]
00000937  32ED              xor ch,ch
00000939  51                push cx
0000093A  AC                lodsb
0000093B  56                push si
0000093C  52                push dx
0000093D  FEC8              dec al
0000093F  8AD8              mov bl,al
00000941  32FF              xor bh,bh
00000943  8A87AB00          mov al,[bx+0xab]
00000947  8AA7B400          mov ah,[bx+0xb4]
0000094B  50                push ax
0000094C  52                push dx
0000094D  50                push ax
0000094E  52                push dx
0000094F  8BDA              mov bx,dx
00000951  B90805            mov cx,0x508
00000954  32C0              xor al,al
00000956  2EFF160020        call word near [cs:0x2000]
0000095B  5A                pop dx
0000095C  58                pop ax
0000095D  32E4              xor ah,ah
0000095F  B301              mov bl,0x1
00000961  B90300            mov cx,0x3
00000964  E85000            call 0x9b7
00000967  5A                pop dx
00000968  83C209            add dx,0x9
0000096B  52                push dx
0000096C  81EA0002          sub dx,0x200
00000970  8ACA              mov cl,dl
00000972  8ADE              mov bl,dh
00000974  32FF              xor bh,bh
00000976  03DB              add bx,bx
00000978  03DB              add bx,bx
0000097A  43                inc bx
0000097B  43                inc bx
0000097C  B028              mov al,0x28
0000097E  B404              mov ah,0x4
00000980  2EFF162220        call word near [cs:0x2022]
00000985  5A                pop dx
00000986  58                pop ax
00000987  8AC4              mov al,ah
00000989  52                push dx
0000098A  32E4              xor ah,ah
0000098C  B304              mov bl,0x4
0000098E  B90300            mov cx,0x3
00000991  E82300            call 0x9b7
00000994  5A                pop dx
00000995  81C20004          add dx,0x400
00000999  8ACA              mov cl,dl
0000099B  8ADE              mov bl,dh
0000099D  32FF              xor bh,bh
0000099F  03DB              add bx,bx
000009A1  03DB              add bx,bx
000009A3  4B                dec bx
000009A4  B029              mov al,0x29
000009A6  B404              mov ah,0x4
000009A8  2EFF162220        call word near [cs:0x2022]
000009AD  5A                pop dx
000009AE  81C20008          add dx,0x800
000009B2  5E                pop si
000009B3  59                pop cx
000009B4  E283              loop 0x939
000009B6  C3                ret
000009B7  53                push bx
000009B8  52                push dx
000009B9  51                push cx
000009BA  32D2              xor dl,dl
000009BC  BF16AE            mov di,0xae16
000009BF  2EFF163220        call word near [cs:0x2032]
000009C4  59                pop cx
000009C5  BF16AE            mov di,0xae16
000009C8  B007              mov al,0x7
000009CA  2AC1              sub al,cl
000009CC  32E4              xor ah,ah
000009CE  03F8              add di,ax
000009D0  58                pop ax
000009D1  5B                pop bx
000009D2  32FF              xor bh,bh
000009D4  2EFF263020        jmp word near [cs:0x2030]
000009D9  BEFCA9            mov si,0xa9fc
000009DC  B90400            mov cx,0x4
000009DF  51                push cx
000009E0  8AF1              mov dh,cl
000009E2  AD                lodsw
000009E3  8BD8              mov bx,ax
000009E5  AC                lodsb
000009E6  8AC8              mov cl,al
000009E8  8A16F9AD          mov dl,[0xadf9]
000009EC  F6DE              neg dh
000009EE  80C604            add dh,0x4
000009F1  B403              mov ah,0x3
000009F3  3AD6              cmp dl,dh
000009F5  7502              jnz 0x9f9
000009F7  B402              mov ah,0x2
000009F9  E83300            call 0xa2f
000009FC  59                pop cx
000009FD  E2E0              loop 0x9df
000009FF  C3                ret
00000A00  3400              xor al,0x0
00000A02  125345            adc dl,[bp+di+0x45]
00000A05  4C                dec sp
00000A06  45                inc bp
00000A07  43                inc bx
00000A08  54                push sp
00000A09  2D4D41            sub ax,0x414d
00000A0C  47                inc di
00000A0D  49                dec cx
00000A0E  43                inc bx
00000A0F  3A00              cmp al,[bx+si]
00000A11  3400              xor al,0x0
00000A13  43                inc bx
00000A14  57                push di
00000A15  45                inc bp
00000A16  41                inc cx
00000A17  52                push dx
00000A18  3A00              cmp al,[bx+si]
00000A1A  3400              xor al,0x0
00000A1C  7155              jno 0xa73
00000A1E  53                push bx
00000A1F  45                inc bp
00000A20  3A00              cmp al,[bx+si]
00000A22  B80043            mov ax,0x4300
00000A25  49                dec cx
00000A26  4E                dec si
00000A27  56                push si
00000A28  45                inc bp
00000A29  4E                dec si
00000A2A  54                push sp
00000A2B  4F                dec di
00000A2C  52                push dx
00000A2D  59                pop cx
00000A2E  00AC0AC0          add [si-0x3ff6],ch
00000A32  7501              jnz 0xa35
00000A34  C3                ret
00000A35  56                push si
00000A36  80FC01            cmp ah,0x1
00000A39  7410              jz 0xa4b
00000A3B  53                push bx
00000A3C  51                push cx
00000A3D  50                push ax
00000A3E  43                inc bx
00000A3F  FEC1              inc cl
00000A41  B405              mov ah,0x5
00000A43  2EFF162220        call word near [cs:0x2022]
00000A48  58                pop ax
00000A49  59                pop cx
00000A4A  5B                pop bx
00000A4B  53                push bx
00000A4C  51                push cx
00000A4D  50                push ax
00000A4E  2EFF162220        call word near [cs:0x2022]
00000A53  58                pop ax
00000A54  59                pop cx
00000A55  5B                pop bx
00000A56  5E                pop si
00000A57  83C308            add bx,0x8
00000A5A  EBD3              jmp 0xa2f
00000A5C  2EFF161001        call word near [cs:0x110]
00000A61  2EFF161201        call word near [cs:0x112]
00000A66  2EFF161401        call word near [cs:0x114]
00000A6B  2EFF161601        call word near [cs:0x116]
00000A70  2EFF161801        call word near [cs:0x118]
00000A75  F60601AEFF        test byte [0xae01],0xff
00000A7A  740E              jz 0xa8a
00000A7C  E80B00            call 0xa8a
00000A7F  F5                cmc
00000A80  7201              jc 0xa83
00000A82  C3                ret
00000A83  F8                clc
00000A84  C60601AE00        mov byte [0xae01],0x0
00000A89  C3                ret
00000A8A  F70618FF0100      test word [0xff18],0x1
00000A90  F9                stc
00000A91  7401              jz 0xa94
00000A93  C3                ret
00000A94  F8                clc
00000A95  C3                ret
00000A96  4E                dec si
00000A97  4F                dec di
00000A98  54                push sp
00000A99  48                dec ax
00000A9A  49                dec cx
00000A9B  4E                dec si
00000A9C  47                inc di
00000A9D  004E4F            add [bp+0x4f],cl
00000AA0  205553            and [di+0x53],dl
00000AA3  45                inc bp
00000AA4  0000              add [bx+si],al
00000AA6  4C                dec sp
00000AA7  45                inc bp
00000AA8  56                push si
00000AA9  45                inc bp
00000AAA  4C                dec sp
00000AAB  004558            add [di+0x58],al
00000AAE  50                push ax
00000AAF  004920            add [bx+di+0x20],cl
00000AB2  686176            push word 0x7661
00000AB5  65207573          and [gs:di+0x73],dh
00000AB9  656400C6          fs add dh,al
00000ABD  AA                stosb
00000ABE  CDAA              int byte 0xaa
00000AC0  D3AAD9AA          shr word [bp+si-0x5527],cl
00000AC4  E0AA              loopne 0xa70
00000AC6  E7AA              out byte 0xaa,ax
00000AC8  EC                in al,dx
00000AC9  AA                stosb
00000ACA  45                inc bp
00000ACB  7370              jnc 0xb3d
00000ACD  61                popa
00000ACE  6461              fs popa
00000AD0  005361            add [bp+di+0x61],dl
00000AD3  657461            gs jz 0xb37
00000AD6  004675            add [bp+0x75],al
00000AD9  65676F            gs a32 outsw
00000ADC  004C61            add [si+0x61],cl
00000ADF  6E                outsb
00000AE0  7A61              jpe 0xb43
00000AE2  7200              jc 0xae4
00000AE4  52                push dx
00000AE5  61                popa
00000AE6  7363              jnc 0xb4b
00000AE8  61                popa
00000AE9  7200              jc 0xaeb
00000AEB  41                inc cx
00000AEC  677561            a32 jnz 0xb50
00000AEF  004775            add [bx+0x75],al
00000AF2  657272            gs jc 0xb67
00000AF5  61                popa
00000AF6  009AAAFF          add [bp+si-0x56],bl
00000AFA  AA                stosb
00000AFB  12AB25AB          adc ch,[bp+di-0x54db]
00000AFF  39AB4DAB          cmp [bp+di-0x54b3],bp
00000B03  46                inc si
00000B04  657275            gs jc 0xb7c
00000B07  7A61              jpe 0xb6a
00000B09  0020              add [bx+si],ah
00000B0B  2020              and [bx+si],ah
00000B0D  2020              and [bx+si],ah
00000B0F  207368            and [bp+di+0x68],dh
00000B12  6F                outsw
00000B13  657300            gs jnc 0xb16
00000B16  50                push ax
00000B17  6972696B61        imul si,[bp+si+0x69],0x616b
00000B1C  0020              add [bx+si],ah
00000B1E  2020              and [bx+si],ah
00000B20  2020              and [bx+si],ah
00000B22  207368            and [bp+di+0x68],dh
00000B25  6F                outsw
00000B26  657300            gs jnc 0xb29
00000B29  53                push bx
00000B2A  696C6B6172        imul bp,[si+0x6b],0x7261
00000B2F  6E                outsb
00000B30  0020              add [bx+si],ah
00000B32  2020              and [bx+si],ah
00000B34  2020              and [bx+si],ah
00000B36  207368            and [bp+di+0x68],dh
00000B39  6F                outsw
00000B3A  657300            gs jnc 0xb3d
00000B3D  52                push dx
00000B3E  757A              jnz 0xbba
00000B40  657269            gs jc 0xbac
00000B43  61                popa
00000B44  0020              add [bx+si],ah
00000B46  2020              and [bx+si],ah
00000B48  2020              and [bx+si],ah
00000B4A  207368            and [bp+di+0x68],dh
00000B4D  6F                outsw
00000B4E  657300            gs jnc 0xb51
00000B51  41                inc cx
00000B52  7362              jnc 0xbb6
00000B54  657374            gs jnc 0xbcb
00000B57  6F                outsw
00000B58  7300              jnc 0xb5a
00000B5A  2020              and [bx+si],ah
00000B5C  2020              and [bx+si],ah
00000B5E  2020              and [bx+si],ah
00000B60  206361            and [bp+di+0x61],ah
00000B63  7065              jo 0xbca
00000B65  0072AB            add [bp+si-0x55],dh
00000B68  8AABA2AB          mov ch,[bp+di-0x545e]
00000B6C  BAABD2            mov dx,0xd2ab
00000B6F  AB                stosw
00000B70  EAAB02AC1A        jmp word 0x1aac:word 0x2ab
00000B75  AC                lodsb
00000B76  2020              and [bx+si],ah
00000B78  2020              and [bx+si],ah
00000B7A  2020              and [bx+si],ah
00000B7C  206120            and [bx+di+0x20],ah
00000B7F  4B                dec bx
00000B80  656E              gs outsb
00000B82  5C                pop sp
00000B83  6B6F2050          imul bp,[bx+0x20],0x50
00000B87  6F                outsw
00000B88  7469              jz 0xbf3
00000B8A  6F                outsw
00000B8B  6E                outsb
00000B8C  2E0020            add [cs:bx+si],ah
00000B8F  2020              and [bx+si],ah
00000B91  2020              and [bx+si],ah
00000B93  2020              and [bx+si],ah
00000B95  206120            and [bx+di+0x20],ah
00000B98  4A                dec dx
00000B99  7575              jnz 0xc10
00000B9B  2D656E            sub ax,0x6e65
00000B9E  204672            and [bp+0x72],al
00000BA1  7569              jnz 0xc0c
00000BA3  742E              jz 0xbd3
00000BA5  0020              add [bx+si],ah
00000BA7  2020              and [bx+si],ah
00000BA9  2020              and [bx+si],ah
00000BAB  61                popa
00000BAC  20456C            and [di+0x6c],al
00000BAF  6978697220        imul di,[bx+si+0x69],0x2072
00000BB4  6F                outsw
00000BB5  66204B61          o32 and [bp+di+0x61],cl
00000BB9  7368              jnc 0xc23
00000BBB  692E00202020      imul bp,[0x2000],0x2020
00000BC1  2020              and [bx+si],ah
00000BC3  206120            and [bx+di+0x20],ah
00000BC6  43                inc bx
00000BC7  68696B            push word 0x6b69
00000BCA  61                popa
00000BCB  7261              jc 0xc2e
00000BCD  20506F            and [bx+si+0x6f],dl
00000BD0  7764              ja 0xc36
00000BD2  65722E            gs jc 0xc03
00000BD5  0020              add [bx+si],ah
00000BD7  2020              and [bx+si],ah
00000BD9  2020              and [bx+si],ah
00000BDB  2020              and [bx+si],ah
00000BDD  2020              and [bx+si],ah
00000BDF  61                popa
00000BE0  204D61            and [di+0x61],cl
00000BE3  676961205374      imul sp,[ecx+0x20],0x7453
00000BE9  6F                outsw
00000BEA  6E                outsb
00000BEB  652E0020          add [cs:bx+si],ah
00000BEF  61                popa
00000BF0  20486F            and [bx+si+0x6f],cl
00000BF3  6C                insb
00000BF4  7920              jns 0xc16
00000BF6  57                push di
00000BF7  61                popa
00000BF8  7465              jz 0xc5f
00000BFA  7220              jc 0xc1c
00000BFC  6F                outsw
00000BFD  66204163          o32 and [bx+di+0x63],al
00000C01  65726F            gs jc 0xc73
00000C04  2E0020            add [cs:bx+si],ah
00000C07  2020              and [bx+si],ah
00000C09  2020              and [bx+si],ah
00000C0B  2020              and [bx+si],ah
00000C0D  2020              and [bx+si],ah
00000C0F  2020              and [bx+si],ah
00000C11  61                popa
00000C12  205361            and [bp+di+0x61],dl
00000C15  627265            bound si,[bp+si+0x65]
00000C18  204F69            and [bx+0x69],cl
00000C1B  6C                insb
00000C1C  2E0020            add [cs:bx+si],ah
00000C1F  2020              and [bx+si],ah
00000C21  2020              and [bx+si],ah
00000C23  2020              and [bx+si],ah
00000C25  61                popa
00000C26  204B69            and [bp+di+0x69],cl
00000C29  6F                outsw
00000C2A  6B752046          imul si,[di+0x20],0x46
00000C2E  6561              gs popa
00000C30  7468              jz 0xc9a
00000C32  65722E            gs jc 0xc63
00000C35  009AAA44          add [bp+si+0x44aa],bl
00000C39  AC                lodsb
00000C3A  58                pop ax
00000C3B  AC                lodsb
00000C3C  6D                insw
00000C3D  AC                lodsb
00000C3E  81AC96ACA3AC      sub word [si-0x536a],0xaca3
00000C44  BBACC6            mov bx,0xc6ac
00000C47  AC                lodsb
00000C48  4B                dec bx
00000C49  656E              gs outsb
00000C4B  5C                pop sp
00000C4C  6B6F0020          imul bp,[bx+0x0],0x20
00000C50  2020              and [bx+si],ah
00000C52  2020              and [bx+si],ah
00000C54  20506F            and [bx+si+0x6f],dl
00000C57  7469              jz 0xcc2
00000C59  6F                outsw
00000C5A  6E                outsb
00000C5B  004A75            add [bp+si+0x75],cl
00000C5E  752D              jnz 0xc8d
00000C60  656E              gs outsb
00000C62  2000              and [bx+si],al
00000C64  2020              and [bx+si],ah
00000C66  2020              and [bx+si],ah
00000C68  2020              and [bx+si],ah
00000C6A  204672            and [bp+0x72],al
00000C6D  7569              jnz 0xcd8
00000C6F  7400              jz 0xc71
00000C71  45                inc bp
00000C72  6C                insb
00000C73  6978697200        imul di,[bx+si+0x69],0x72
00000C78  2020              and [bx+si],ah
00000C7A  2020              and [bx+si],ah
00000C7C  6F                outsw
00000C7D  66204B61          o32 and [bp+di+0x61],cl
00000C81  7368              jnc 0xceb
00000C83  69004368          imul ax,[bx+si],0x6843
00000C87  696B617261        imul bp,[bp+di+0x61],0x6172
00000C8C  0020              add [bx+si],ah
00000C8E  2020              and [bx+si],ah
00000C90  2020              and [bx+si],ah
00000C92  20506F            and [bx+si+0x6f],dl
00000C95  7764              ja 0xcfb
00000C97  657200            gs jc 0xc9a
00000C9A  4D                dec bp
00000C9B  61                popa
00000C9C  676961205374      imul sp,[ecx+0x20],0x7453
00000CA2  6F                outsw
00000CA3  6E                outsb
00000CA4  650000            add [gs:bx+si],al
00000CA7  48                dec ax
00000CA8  6F                outsw
00000CA9  6C                insb
00000CAA  7920              jns 0xccc
00000CAC  57                push di
00000CAD  61                popa
00000CAE  7465              jz 0xd15
00000CB0  7200              jc 0xcb2
00000CB2  2020              and [bx+si],ah
00000CB4  2020              and [bx+si],ah
00000CB6  6F                outsw
00000CB7  66204163          o32 and [bx+di+0x63],al
00000CBB  65726F            gs jc 0xd2d
00000CBE  005361            add [bp+di+0x61],dl
00000CC1  627265            bound si,[bp+si+0x65]
00000CC4  204F69            and [bx+0x69],cl
00000CC7  6C                insb
00000CC8  0000              add [bx+si],al
00000CCA  4B                dec bx
00000CCB  696F6B7500        imul bp,[bx+0x6b],0x75
00000CD0  2020              and [bx+si],ah
00000CD2  2020              and [bx+si],ah
00000CD4  206665            and [bp+0x65],ah
00000CD7  61                popa
00000CD8  7468              jz 0xd42
00000CDA  657200            gs jc 0xcdd
00000CDD  E5AC              in ax,byte 0xac
00000CDF  F9                stc
00000CE0  AC                lodsb
00000CE1  10AD21AD          adc [di-0x52df],ch
00000CE5  34AD              xor al,0xad
00000CE7  4E                dec si
00000CE8  AD                lodsw
00000CE9  54                push sp
00000CEA  7261              jc 0xd4d
00000CEC  696E696E67        imul bp,[bp+0x69],0x676e
00000CF1  0020              add [bx+si],ah
00000CF3  2020              and [bx+si],ah
00000CF5  2020              and [bx+si],ah
00000CF7  53                push bx
00000CF8  776F              ja 0xd69
00000CFA  7264              jc 0xd60
00000CFC  005769            add [bx+0x69],dl
00000CFF  7365              jnc 0xd66
00000D01  206D61            and [di+0x61],ch
00000D04  6E                outsb
00000D05  5C                pop sp
00000D06  7300              jnc 0xd08
00000D08  2020              and [bx+si],ah
00000D0A  2020              and [bx+si],ah
00000D0C  2020              and [bx+si],ah
00000D0E  53                push bx
00000D0F  776F              ja 0xd80
00000D11  7264              jc 0xd77
00000D13  005370            add [bp+di+0x70],dl
00000D16  6972697400        imul si,[bp+si+0x69],0x74
00000D1B  2020              and [bx+si],ah
00000D1D  2020              and [bx+si],ah
00000D1F  53                push bx
00000D20  776F              ja 0xd91
00000D22  7264              jc 0xd88
00000D24  004B6E            add [bp+di+0x6e],cl
00000D27  696768745C        imul sp,[bx+0x68],0x5c74
00000D2C  7300              jnc 0xd2e
00000D2E  2020              and [bx+si],ah
00000D30  2020              and [bx+si],ah
00000D32  53                push bx
00000D33  776F              ja 0xda4
00000D35  7264              jc 0xd9b
00000D37  00496C            add [bx+di+0x6c],cl
00000D3A  6C                insb
00000D3B  756D              jnz 0xdaa
00000D3D  696E617469        imul bp,[bp+0x61],0x6974
00000D42  6F                outsw
00000D43  6E                outsb
00000D44  0020              add [bx+si],ah
00000D46  2020              and [bx+si],ah
00000D48  2020              and [bx+si],ah
00000D4A  2020              and [bx+si],ah
00000D4C  53                push bx
00000D4D  776F              ja 0xdbe
00000D4F  7264              jc 0xdb5
00000D51  00456E            add [di+0x6e],al
00000D54  636861            arpl [bx+si+0x61],bp
00000D57  6E                outsb
00000D58  746D              jz 0xdc7
00000D5A  656E              gs outsb
00000D5C  7400              jz 0xd5e
00000D5E  2020              and [bx+si],ah
00000D60  2020              and [bx+si],ah
00000D62  2020              and [bx+si],ah
00000D64  205377            and [bp+di+0x77],dl
00000D67  6F                outsw
00000D68  7264              jc 0xdce
00000D6A  0073AD            add [bp+di-0x53],dh
00000D6D  84AD9CAD          test [di-0x5264],ch
00000D71  AE                scasb
00000D72  AD                lodsw
00000D73  C0ADD2AD43        shr byte [di-0x522e],byte 0x43
00000D78  6C                insb
00000D79  61                popa
00000D7A  7900              jns 0xd7c
00000D7C  2020              and [bx+si],ah
00000D7E  2020              and [bx+si],ah
00000D80  205368            and [bp+di+0x68],dl
00000D83  69656C6400        imul sp,[di+0x6c],0x64
00000D88  57                push di
00000D89  697365204D        imul si,[bp+di+0x65],0x4d20
00000D8E  61                popa
00000D8F  6E                outsb
00000D90  5C                pop sp
00000D91  7300              jnc 0xd93
00000D93  2020              and [bx+si],ah
00000D95  2020              and [bx+si],ah
00000D97  2020              and [bx+si],ah
00000D99  53                push bx
00000D9A  686965            push word 0x6569
00000D9D  6C                insb
00000D9E  64005374          add [fs:bp+di+0x74],dl
00000DA2  6F                outsw
00000DA3  6E                outsb
00000DA4  650020            add [gs:bx+si],ah
00000DA7  2020              and [bx+si],ah
00000DA9  2020              and [bx+si],ah
00000DAB  53                push bx
00000DAC  686965            push word 0x6569
00000DAF  6C                insb
00000DB0  6400486F          add [fs:bx+si+0x6f],cl
00000DB4  6E                outsb
00000DB5  6F                outsw
00000DB6  7200              jc 0xdb8
00000DB8  2020              and [bx+si],ah
00000DBA  2020              and [bx+si],ah
00000DBC  205368            and [bp+di+0x68],dl
00000DBF  69656C6400        imul sp,[di+0x6c],0x64
00000DC4  4C                dec sp
00000DC5  6967687400        imul sp,[bx+0x68],0x74
00000DCA  2020              and [bx+si],ah
00000DCC  2020              and [bx+si],ah
00000DCE  205368            and [bp+di+0x68],dl
00000DD1  69656C6400        imul sp,[di+0x6c],0x64
00000DD6  54                push sp
00000DD7  6974616E69        imul si,[si+0x61],0x696e
00000DDC  756D              jnz 0xe4b
00000DDE  0020              add [bx+si],ah
00000DE0  2020              and [bx+si],ah
00000DE2  2020              and [bx+si],ah
00000DE4  205368            and [bp+di+0x68],dl
00000DE7  69656C6400        imul sp,[di+0x6c],0x64
00000DEC  0E                push cs
00000DED  0C33              or al,0x33
00000DEF  383F              cmp [bx],bh
00000DF1  0C30              or al,0x30
00000DF3  226D0C            and ch,[di+0xc]
00000DF6  3022              xor [bp+si],ah
00000DF8  3F                aas
00000DF9  2D5E17            sub ax,0x175e
00000DFC  0000              add [bx+si],al
00000DFE  0000              add [bx+si],al
00000E00  0000              add [bx+si],al
00000E02  0000              add [bx+si],al
00000E04  0000              add [bx+si],al
00000E06  0000              add [bx+si],al
00000E08  0000              add [bx+si],al
00000E0A  0000              add [bx+si],al
00000E0C  0000              add [bx+si],al
00000E0E  0000              add [bx+si],al
00000E10  0000              add [bx+si],al
00000E12  0000              add [bx+si],al
00000E14  0000              add [bx+si],al
00000E16  0000              add [bx+si],al
00000E18  0000              add [bx+si],al
00000E1A  0000              add [bx+si],al
00000E1C  0000              add [bx+si],al
00000E1E  0000              add [bx+si],al
00000E20  00                db 0x00
