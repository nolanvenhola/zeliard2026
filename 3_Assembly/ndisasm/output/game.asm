00000000  2EA374A4          mov [cs:0xa474],ax
00000004  8CC8              mov ax,cs
00000006  8ED8              mov ds,ax
00000008  0E                push cs
00000009  07                pop es
0000000A  BF00F5            mov di,0xf500
0000000D  BE1DA2            mov si,0xa21d
00000010  B002              mov al,0x2
00000012  2EFF160C01        call word near [cs:0x10c]
00000017  26013D            add [es:di],di
0000001A  26017D02          add [es:di+0x2],di
0000001E  26017D04          add [es:di+0x4],di
00000022  2EFF162001        call word near [cs:0x120]
00000027  32C0              xor al,al
00000029  A239FF            mov [0xff39],al
0000002C  A23AFF            mov [0xff3a],al
0000002F  A243FF            mov [0xff43],al
00000032  A244FF            mov [0xff44],al
00000035  A23CFF            mov [0xff3c],al
00000038  A23DFF            mov [0xff3d],al
0000003B  A238FF            mov [0xff38],al
0000003E  A236FF            mov [0xff36],al
00000041  A23EFF            mov [0xff3e],al
00000044  A24BFF            mov [0xff4b],al
00000047  A208FF            mov [0xff08],al
0000004A  A2E700            mov [0xe7],al
0000004D  A274FF            mov [0xff74],al
00000050  A277FF            mov [0xff77],al
00000053  A240FF            mov [0xff40],al
00000056  A242FF            mov [0xff42],al
00000059  8CC8              mov ax,cs
0000005B  8EC0              mov es,ax
0000005D  33DB              xor bx,bx
0000005F  8A1E14FF          mov bl,[0xff14]
00000063  03DB              add bx,bx
00000065  8BB71AA3          mov si,[bx-0x5ce6]
00000069  BF0030            mov di,0x3000
0000006C  B003              mov al,0x3
0000006E  2EFF160C01        call word near [cs:0x10c]
00000073  2EFF160030        call word near [cs:0x3000]
00000078  2E833E74A4FF      cmp word [cs:0xa474],0xffffffffffffffff
0000007E  7417              jz 0x97
00000080  2EC60677FFFF      mov byte [cs:0xff77],0xff
00000086  BE7BA2            mov si,0xa27b
00000089  BF0060            mov di,0x6000
0000008C  B003              mov al,0x3
0000008E  2EFF160C01        call word near [cs:0x10c]
00000093  FF260060          jmp word near [0x6000]
00000097  E84B03            call 0x3e5
0000009A  8CC8              mov ax,cs
0000009C  8EC0              mov es,ax
0000009E  33DB              xor bx,bx
000000A0  8A1E14FF          mov bl,[0xff14]
000000A4  03DB              add bx,bx
000000A6  8BB7D1A2          mov si,[bx-0x5d2f]
000000AA  BF0030            mov di,0x3000
000000AD  B003              mov al,0x3
000000AF  2EFF160C01        call word near [cs:0x10c]
000000B4  BE70A2            mov si,0xa270
000000B7  BF0060            mov di,0x6000
000000BA  B003              mov al,0x3
000000BC  2EFF160C01        call word near [cs:0x10c]
000000C1  8CC8              mov ax,cs
000000C3  050020            add ax,0x2000
000000C6  8EC0              mov es,ax
000000C8  33DB              xor bx,bx
000000CA  8A1E14FF          mov bl,[0xff14]
000000CE  03DB              add bx,bx
000000D0  8BB788A2          mov si,[bx-0x5d78]
000000D4  BF0090            mov di,0x9000
000000D7  B003              mov al,0x3
000000D9  2EFF160C01        call word near [cs:0x10c]
000000DE  BE64A2            mov si,0xa264
000000E1  BF00C0            mov di,0xc000
000000E4  B003              mov al,0x3
000000E6  2EFF160C01        call word near [cs:0x10c]
000000EB  8CC8              mov ax,cs
000000ED  050010            add ax,0x1000
000000F0  8EC0              mov es,ax
000000F2  BE3FA2            mov si,0xa23f
000000F5  BF00C0            mov di,0xc000
000000F8  B003              mov al,0x3
000000FA  2EFF160C01        call word near [cs:0x10c]
000000FF  8CC8              mov ax,cs
00000101  050010            add ax,0x1000
00000104  8EC0              mov es,ax
00000106  BE33A2            mov si,0xa233
00000109  BF00E2            mov di,0xe200
0000010C  B002              mov al,0x2
0000010E  2EFF160C01        call word near [cs:0x10c]
00000113  26013D            add [es:di],di
00000116  26017D02          add [es:di+0x2],di
0000011A  26017D04          add [es:di+0x4],di
0000011E  26017D06          add [es:di+0x6],di
00000122  26017D08          add [es:di+0x8],di
00000126  26017D0A          add [es:di+0xa],di
0000012A  26017D0C          add [es:di+0xc],di
0000012E  8CC8              mov ax,cs
00000130  050020            add ax,0x2000
00000133  8EC0              mov es,ax
00000135  BF0000            mov di,0x0
00000138  BE4CA2            mov si,0xa24c
0000013B  B002              mov al,0x2
0000013D  2EFF160C01        call word near [cs:0x10c]
00000142  8CC8              mov ax,cs
00000144  050020            add ax,0x2000
00000147  8EC0              mov es,ax
00000149  BE58A2            mov si,0xa258
0000014C  BF0018            mov di,0x1800
0000014F  B002              mov al,0x2
00000151  2EFF160C01        call word near [cs:0x10c]
00000156  26013D            add [es:di],di
00000159  26017D02          add [es:di+0x2],di
0000015D  26017D04          add [es:di+0x4],di
00000161  8A269200          mov ah,[0x92]
00000165  B004              mov al,0x4
00000167  2EFF160C01        call word near [cs:0x10c]
0000016C  8CC8              mov ax,cs
0000016E  8ED8              mov ds,ax
00000170  050030            add ax,0x3000
00000173  A372A4            mov [0xa472],ax
00000176  8EC0              mov es,ax
00000178  BF0000            mov di,0x0
0000017B  BE28A2            mov si,0xa228
0000017E  B003              mov al,0x3
00000180  2EFF160C01        call word near [cs:0x10c]
00000185  A014FF            mov al,[0xff14]
00000188  1E                push ds
00000189  FF1E70A4          call word far [0xa470]
0000018D  1F                pop ds
0000018E  E81402            call 0x3a5
00000191  8CC8              mov ax,cs
00000193  8ED8              mov ds,ax
00000195  F6069200FF        test byte [0x92],0xff
0000019A  740B              jz 0x1a7
0000019C  A09200            mov al,[0x92]
0000019F  BBAB18            mov bx,0x18ab
000001A2  2EFF161C20        call word near [cs:0x201c]
000001A7  F6069300FF        test byte [0x93],0xff
000001AC  740B              jz 0x1b9
000001AE  A09300            mov al,[0x93]
000001B1  BBA43E            mov bx,0x3ea4
000001B4  2EFF162020        call word near [cs:0x2020]
000001B9  F6069D00FF        test byte [0x9d],0xff
000001BE  740B              jz 0x1cb
000001C0  A09D00            mov al,[0x9d]
000001C3  BBA437            mov bx,0x37a4
000001C6  2EFF161E20        call word near [cs:0x201e]
000001CB  2E8A26C400        mov ah,[cs:0xc4]
000001D0  B001              mov al,0x1
000001D2  2EFF160C01        call word near [cs:0x10c]
000001D7  8CC8              mov ax,cs
000001D9  8ED8              mov ds,ax
000001DB  050010            add ax,0x1000
000001DE  8EC0              mov es,ax
000001E0  2E8B3600C0        mov si,[cs:0xc000]
000001E5  AC                lodsb
000001E6  56                push si
000001E7  D0E8              shr al,0x0
000001E9  241F              and al,0x1f
000001EB  2EA2C800          mov [cs:0xc8],al
000001EF  B10B              mov cl,0xb
000001F1  F6E1              mul cl
000001F3  8BF0              mov si,ax
000001F5  81C663A3          add si,0xa363
000001F9  BF0030            mov di,0x3000
000001FC  B005              mov al,0x5
000001FE  2EFF160C01        call word near [cs:0x10c]
00000203  5E                pop si
00000204  AC                lodsb
00000205  B10B              mov cl,0xb
00000207  F6E1              mul cl
00000209  8BF0              mov si,ax
0000020B  81C68FA3          add si,0xa38f
0000020F  BF0040            mov di,0x4000
00000212  B002              mov al,0x2
00000214  2EFF160C01        call word near [cs:0x10c]
00000219  FF260260          jmp word near [0x6002]
0000021D  000D              add [di],cl
0000021F  666F              outsd
00000221  6E                outsb
00000222  742E              jz 0x252
00000224  677270            a32 jc 0x297
00000227  0001              add [bx+di],al
00000229  086D6F            or [di+0x6f],ch
0000022C  6C                insb
0000022D  652E62696E        bound bp,[cs:bx+di+0x6e]
00000232  0001              add [bx+di],al
00000234  1C69              sbb al,0x69
00000236  7465              jz 0x29d
00000238  6D                insw
00000239  702E              jo 0x269
0000023B  677270            a32 jc 0x2ae
0000023E  0001              add [bx+di],al
00000240  027365            add dh,[bp+di+0x65]
00000243  6C                insb
00000244  6563742E          arpl [gs:si+0x2e],si
00000248  62696E            bound bp,[bx+di+0x6e]
0000024B  0001              add [bx+di],al
0000024D  1D6D61            sbb ax,0x616d
00000250  6769632E6772      imul sp,[ebx+0x2e],0x7267
00000256  7000              jo 0x258
00000258  011B              add [bp+di],bx
0000025A  7377              jnc 0x2d3
0000025C  6F                outsw
0000025D  7264              jc 0x2c3
0000025F  2E677270          {pn} a32 jc 0x2d3
00000263  0001              add [bx+di],al
00000265  016669            add [bp+0x69],sp
00000268  6768742E          a32 push word 0x2e74
0000026C  62696E            bound bp,[bx+di+0x6e]
0000026F  0000              add [bx+si],al
00000271  07                pop es
00000272  746F              jz 0x2e3
00000274  776E              ja 0x2e4
00000276  2E62696E          bound bp,[cs:bx+di+0x6e]
0000027A  0000              add [bx+si],al
0000027C  016F70            add [bx+0x70],bp
0000027F  64656D            gs insw
00000282  6F                outsw
00000283  2E62696E          bound bp,[cs:bx+di+0x6e]
00000287  0094A2A0          add [si-0x5f5e],dl
0000028B  A2A0A2            mov [0xa2a0],al
0000028E  AC                lodsb
0000028F  A2B8A2            mov [0xa2b8],al
00000292  C5A20103          lds sp,word [bp+si+0x301]
00000296  6766656761        gs a32 popad
0000029B  2E62696E          bound bp,[cs:bx+di+0x6e]
0000029F  0001              add [bx+di],al
000002A1  0467              add al,0x67
000002A3  66636761          arpl word [bx+0x61],esp
000002A7  2E62696E          bound bp,[cs:bx+di+0x6e]
000002AB  0001              add [bx+di],al
000002AD  056766            add ax,0x6667
000002B0  686763            push word 0x6367
000002B3  2E62696E          bound bp,[cs:bx+di+0x6e]
000002B7  0001              add [bx+di],al
000002B9  07                pop es
000002BA  67666D            a32 insd
000002BD  636761            arpl [bx+0x61],sp
000002C0  2E62696E          bound bp,[cs:bx+di+0x6e]
000002C4  0001              add [bx+di],al
000002C6  06                push es
000002C7  67667467          a32 jz 0x332
000002CB  61                popa
000002CC  2E62696E          bound bp,[cs:bx+di+0x6e]
000002D0  00DD              add ch,bl
000002D2  A2E9A2            mov [0xa2e9],al
000002D5  E9A2F5            jmp 0xf87a
000002D8  A201A3            mov [0xa301],al
000002DB  0E                push cs
000002DC  A30008            mov [0x800],ax
000002DF  677465            a32 jz 0x347
000002E2  6761              a32 popa
000002E4  2E62696E          bound bp,[cs:bx+di+0x6e]
000002E8  0000              add [bx+si],al
000002EA  096774            or [bx+0x74],sp
000002ED  636761            arpl [bx+0x61],sp
000002F0  2E62696E          bound bp,[cs:bx+di+0x6e]
000002F4  0000              add [bx+si],al
000002F6  0A6774            or ah,[bx+0x74]
000002F9  686763            push word 0x6367
000002FC  2E62696E          bound bp,[cs:bx+di+0x6e]
00000300  0000              add [bx+si],al
00000302  0C67              or al,0x67
00000304  746D              jz 0x373
00000306  636761            arpl [bx+0x61],sp
00000309  2E62696E          bound bp,[cs:bx+di+0x6e]
0000030D  0000              add [bx+si],al
0000030F  0B6774            or sp,[bx+0x74]
00000312  7467              jz 0x37b
00000314  61                popa
00000315  2E62696E          bound bp,[cs:bx+di+0x6e]
00000319  0026A332          add [0x32a3],ah
0000031D  A332A3            mov [0xa332],ax
00000320  3EA34AA3          mov [ds:0xa34a],ax
00000324  57                push di
00000325  A30002            mov [0x200],ax
00000328  6764656761        gs a32 popa
0000032D  2E62696E          bound bp,[cs:bx+di+0x6e]
00000331  0000              add [bx+si],al
00000333  036764            add sp,[bx+0x64]
00000336  636761            arpl [bx+0x61],sp
00000339  2E62696E          bound bp,[cs:bx+di+0x6e]
0000033D  0000              add [bx+si],al
0000033F  0467              add al,0x67
00000341  64686763          fs push word 0x6367
00000345  2E62696E          bound bp,[cs:bx+di+0x6e]
00000349  0000              add [bx+si],al
0000034B  06                push es
0000034C  67646D            fs a32 insw
0000034F  636761            arpl [bx+0x61],sp
00000352  2E62696E          bound bp,[cs:bx+di+0x6e]
00000356  0000              add [bx+si],al
00000358  056764            add ax,0x6467
0000035B  7467              jz 0x3c4
0000035D  61                popa
0000035E  2E62696E          bound bp,[cs:bx+di+0x6e]
00000362  0001              add [bx+di],al
00000364  2F                das
00000365  4D                dec bp
00000366  47                inc di
00000367  54                push sp
00000368  312E4D53          xor [0x534d],bp
0000036C  44                inc sp
0000036D  0001              add [bx+di],al
0000036F  315547            xor [di+0x47],dx
00000372  4D                dec bp
00000373  312E4D53          xor [0x534d],bp
00000377  44                inc sp
00000378  0001              add [bx+di],al
0000037A  304D47            xor [di+0x47],cl
0000037D  54                push sp
0000037E  322E4D53          xor ch,[0x534d]
00000382  44                inc sp
00000383  0001              add [bx+di],al
00000385  325547            xor dl,[di+0x47]
00000388  4D                dec bp
00000389  322E4D53          xor ch,[0x534d]
0000038D  44                inc sp
0000038E  0001              add [bx+di],al
00000390  1E                push ds
00000391  4D                dec bp
00000392  4D                dec bp
00000393  41                inc cx
00000394  4E                dec si
00000395  2E47              cs inc di
00000397  52                push dx
00000398  50                push ax
00000399  0001              add [bx+di],al
0000039B  1F                pop ds
0000039C  43                inc bx
0000039D  4D                dec bp
0000039E  41                inc cx
0000039F  4E                dec si
000003A0  2E47              cs inc di
000003A2  52                push dx
000003A3  50                push ax
000003A4  00F6              add dh,dh
000003A6  06                push es
000003A7  A000FF            mov al,[0xff00]
000003AA  7501              jnz 0x3ad
000003AC  C3                ret
000003AD  8A0EA000          mov cl,[0xa0]
000003B1  32ED              xor ch,ch
000003B3  33DB              xor bx,bx
000003B5  51                push cx
000003B6  53                push bx
000003B7  8BD3              mov dx,bx
000003B9  03DB              add bx,bx
000003BB  8B9FD3A3          mov bx,[bx-0x5c2d]
000003BF  32C0              xor al,al
000003C1  83FA08            cmp dx,0x8
000003C4  7502              jnz 0x3c8
000003C6  B001              mov al,0x1
000003C8  2EFF163E20        call word near [cs:0x203e]
000003CD  5B                pop bx
000003CE  43                inc bx
000003CF  59                pop cx
000003D0  E2E3              loop 0x3b5
000003D2  C3                ret
000003D3  000F              add [bx],cl
000003D5  003D              add [di],bh
000003D7  0015              add [di],dl
000003D9  0037              add [bx],dh
000003DB  001B              add [bp+di],bl
000003DD  0031              add [bx+di],dh
000003DF  0021              add [bx+di],ah
000003E1  002B              add [bp+di],ch
000003E3  00268A1E          add [0x1e8a],ah
000003E7  14FF              adc al,0xff
000003E9  32FF              xor bh,bh
000003EB  03DB              add bx,bx
000003ED  2EFFA7F2A3        jmp word near [cs:bx-0x5c0e]
000003F2  FE                db 0xfe
000003F3  A31AA4            mov [0xa41a],ax
000003F6  1AA46FA4          sbb ah,[si-0x5b91]
000003FA  1BA46EA4          sbb sp,[si-0x5b92]
000003FE  0E                push cs
000003FF  07                pop es
00000400  BA09A4            mov dx,0xa409
00000403  B80210            mov ax,0x1002
00000406  CD10              int byte 0x10
00000408  C3                ret
00000409  003F              add [bx],bh
0000040B  2412              and al,0x12
0000040D  1B09              sbb cx,[bx+di]
0000040F  362D3807          ss sub ax,0x738
00000413  0402              add al,0x2
00000415  0301              add ax,[bx+di]
00000417  06                push es
00000418  0500C3            add ax,0xc300
0000041B  0E                push cs
0000041C  1F                pop ds
0000041D  BE56A4            mov si,0xa456
00000420  33DB              xor bx,bx
00000422  B90800            mov cx,0x8
00000425  51                push cx
00000426  AC                lodsb
00000427  8AF0              mov dh,al
00000429  AC                lodsb
0000042A  8AD0              mov dl,al
0000042C  AC                lodsb
0000042D  8AE0              mov ah,al
0000042F  56                push si
00000430  BE56A4            mov si,0xa456
00000433  B90800            mov cx,0x8
00000436  51                push cx
00000437  50                push ax
00000438  52                push dx
00000439  AC                lodsb
0000043A  02F0              add dh,al
0000043C  AC                lodsb
0000043D  02C2              add al,dl
0000043F  8AE8              mov ch,al
00000441  AC                lodsb
00000442  02C4              add al,ah
00000444  8AC8              mov cl,al
00000446  B81010            mov ax,0x1010
00000449  CD10              int byte 0x10
0000044B  43                inc bx
0000044C  5A                pop dx
0000044D  58                pop ax
0000044E  59                pop cx
0000044F  E2E5              loop 0x436
00000451  5E                pop si
00000452  59                pop cx
00000453  E2D0              loop 0x425
00000455  C3                ret
00000456  0000              add [bx+si],al
00000458  001F              add [bx],bl
0000045A  1F                pop ds
0000045B  1F                pop ds
0000045C  1F                pop ds
0000045D  0000              add [bx+si],al
0000045F  001F              add [bx],bl
00000461  0000              add [bx+si],al
00000463  1F                pop ds
00000464  1F                pop ds
00000465  0000              add [bx+si],al
00000467  1F                pop ds
00000468  1F                pop ds
00000469  1F                pop ds
0000046A  001F              add [bx],bl
0000046C  001F              add [bx],bl
0000046E  C3                ret
0000046F  C3                ret
00000470  0000              add [bx+si],al
00000472  0030              add [bx+si],dh
00000474  0000              add [bx+si],al
