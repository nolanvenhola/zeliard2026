00000000  A5                movsw
00000001  1F                pop ds
00000002  0000              add [bx+si],al
00000004  2EA28833          mov [cs:0x3388],al
00000008  8CCA              mov dx,cs
0000000A  8EDA              mov ds,dx
0000000C  81C20010          add dx,0x1000
00000010  8EC2              mov es,dx
00000012  FC                cld
00000013  BF0000            mov di,0x0
00000016  B9C00F            mov cx,0xfc0
00000019  33C0              xor ax,ax
0000001B  F3AB              rep stosw
0000001D  8CCA              mov dx,cs
0000001F  81C20010          add dx,0x1000
00000023  8EC2              mov es,dx
00000025  BF0000            mov di,0x0
00000028  BEE038            mov si,0x38e0
0000002B  E83A03            call 0x368
0000002E  BFC00F            mov di,0xfc0
00000031  BE6A42            mov si,0x426a
00000034  E83103            call 0x368
00000037  1E                push ds
00000038  8CCA              mov dx,cs
0000003A  81C20010          add dx,0x1000
0000003E  8EDA              mov ds,dx
00000040  BE0000            mov si,0x0
00000043  BDC00F            mov bp,0xfc0
00000046  BB1E0C            mov bx,0xc1e
00000049  B94838            mov cx,0x3848
0000004C  E84A03            call 0x399
0000004F  1F                pop ds
00000050  C60694361C        mov byte [0x3694],0x1c
00000055  8CCA              mov dx,cs
00000057  81C20010          add dx,0x1000
0000005B  8EC2              mov es,dx
0000005D  BF0000            mov di,0x0
00000060  BE6D4C            mov si,0x4c6d
00000063  E80203            call 0x368
00000066  BFC001            mov di,0x1c0
00000069  BEB84D            mov si,0x4db8
0000006C  E8F902            call 0x368
0000006F  1E                push ds
00000070  8CCA              mov dx,cs
00000072  81C20010          add dx,0x1000
00000076  8EDA              mov ds,dx
00000078  BE0000            mov si,0x0
0000007B  BDC001            mov bp,0x1c0
0000007E  BB0E0C            mov bx,0xc0e
00000081  B9101C            mov cx,0x1c10
00000084  E81203            call 0x399
00000087  1F                pop ds
00000088  E80200            call 0x8d
0000008B  CB                retf
0000008C  0033              add [bp+di],dh
0000008E  DB8A1E88          fisttp dword [bp+si-0x77e2]
00000092  3303              xor ax,[bp+di]
00000094  DB                db 0xdb
00000095  FFA79533          jmp word near [bx+0x3395]
00000099  A13312            mov ax,[0x1233]
0000009C  3412              xor al,0x12
0000009E  34A7              xor al,0xa7
000000A0  3448              xor al,0x48
000000A2  35C235            xor ax,0x35c2
000000A5  1E                push ds
000000A6  B800A0            mov ax,0xa000
000000A9  8EC0              mov es,ax
000000AB  8ED8              mov ds,ax
000000AD  BAC403            mov dx,0x3c4
000000B0  B80207            mov ax,0x702
000000B3  EF                out dx,ax
000000B4  BACE03            mov dx,0x3ce
000000B7  B80501            mov ax,0x105
000000BA  EF                out dx,ax
000000BB  BE6C04            mov si,0x46c
000000BE  BF8804            mov di,0x488
000000C1  B410              mov ah,0x10
000000C3  B91C00            mov cx,0x1c
000000C6  F3A4              rep movsb
000000C8  83C634            add si,0x34
000000CB  83C734            add di,0x34
000000CE  FECC              dec ah
000000D0  75F1              jnz 0xc3
000000D2  BACE03            mov dx,0x3ce
000000D5  B80500            mov ax,0x5
000000D8  EF                out dx,ax
000000D9  1F                pop ds
000000DA  33F6              xor si,si
000000DC  BF6C2C            mov di,0x2c6c
000000DF  BAC403            mov dx,0x3c4
000000E2  B002              mov al,0x2
000000E4  EE                out dx,al
000000E5  42                inc dx
000000E6  B91000            mov cx,0x10
000000E9  51                push cx
000000EA  57                push di
000000EB  B91C00            mov cx,0x1c
000000EE  B002              mov al,0x2
000000F0  EE                out dx,al
000000F1  8A84254F          mov al,[si+0x4f25]
000000F5  268805            mov [es:di],al
000000F8  2688451C          mov [es:di+0x1c],al
000000FC  B004              mov al,0x4
000000FE  EE                out dx,al
000000FF  8A84E550          mov al,[si+0x50e5]
00000103  268805            mov [es:di],al
00000106  2688451C          mov [es:di+0x1c],al
0000010A  47                inc di
0000010B  46                inc si
0000010C  E2E0              loop 0xee
0000010E  5F                pop di
0000010F  83C750            add di,0x50
00000112  59                pop cx
00000113  E2D4              loop 0xe9
00000115  C3                ret
00000116  1E                push ds
00000117  B800B8            mov ax,0xb800
0000011A  8EC0              mov es,ax
0000011C  8ED8              mov ds,ax
0000011E  BE3C02            mov si,0x23c
00000121  B410              mov ah,0x10
00000123  56                push si
00000124  8BFE              mov di,si
00000126  83C71C            add di,0x1c
00000129  B90E00            mov cx,0xe
0000012C  F3A5              rep movsw
0000012E  5E                pop si
0000012F  81C60020          add si,0x2000
00000133  81FE0040          cmp si,0x4000
00000137  7204              jc 0x13d
00000139  81C650C0          add si,0xc050
0000013D  FECC              dec ah
0000013F  75E2              jnz 0x123
00000141  1F                pop ds
00000142  33F6              xor si,si
00000144  BF3C16            mov di,0x163c
00000147  B91000            mov cx,0x10
0000014A  51                push cx
0000014B  57                push di
0000014C  B91C00            mov cx,0x1c
0000014F  51                push cx
00000150  8AA4E550          mov ah,[si+0x50e5]
00000154  8A84254F          mov al,[si+0x4f25]
00000158  46                inc si
00000159  32D2              xor dl,dl
0000015B  B90400            mov cx,0x4
0000015E  02E4              add ah,ah
00000160  12DB              adc bl,bl
00000162  02C0              add al,al
00000164  12DB              adc bl,bl
00000166  02E4              add ah,ah
00000168  12DB              adc bl,bl
0000016A  02C0              add al,al
0000016C  12DB              adc bl,bl
0000016E  80E30F            and bl,0xf
00000171  32FF              xor bh,bh
00000173  02D2              add dl,dl
00000175  02D2              add dl,dl
00000177  0A979734          or dl,[bx+0x3497]
0000017B  E2E1              loop 0x15e
0000017D  268815            mov [es:di],dl
00000180  2688551C          mov [es:di+0x1c],dl
00000184  47                inc di
00000185  59                pop cx
00000186  E2C7              loop 0x14f
00000188  5F                pop di
00000189  81C70020          add di,0x2000
0000018D  81FF0040          cmp di,0x4000
00000191  7204              jc 0x197
00000193  81C750C0          add di,0xc050
00000197  59                pop cx
00000198  E2B0              loop 0x14a
0000019A  C3                ret
0000019B  0002              add [bp+si],al
0000019D  0301              add ax,[bx+di]
0000019F  0003              add [bp+di],al
000001A1  0201              add al,[bx+di]
000001A3  0002              add [bp+si],al
000001A5  0301              add ax,[bx+di]
000001A7  0002              add [bp+si],al
000001A9  0301              add ax,[bx+di]
000001AB  1E                push ds
000001AC  B800B0            mov ax,0xb000
000001AF  8EC0              mov es,ax
000001B1  8ED8              mov ds,ax
000001B3  BEFD04            mov si,0x4fd
000001B6  B410              mov ah,0x10
000001B8  E88400            call 0x23f
000001BB  81C60020          add si,0x2000
000001BF  81FE0060          cmp si,0x6000
000001C3  7207              jc 0x1cc
000001C5  E87700            call 0x23f
000001C8  81C65AA0          add si,0xa05a
000001CC  FECC              dec ah
000001CE  75E8              jnz 0x1b8
000001D0  1F                pop ds
000001D1  33F6              xor si,si
000001D3  BFC153            mov di,0x53c1
000001D6  B91000            mov cx,0x10
000001D9  51                push cx
000001DA  57                push di
000001DB  B91C00            mov cx,0x1c
000001DE  51                push cx
000001DF  8AA4E550          mov ah,[si+0x50e5]
000001E3  8A84254F          mov al,[si+0x4f25]
000001E7  46                inc si
000001E8  32D2              xor dl,dl
000001EA  B90400            mov cx,0x4
000001ED  02E4              add ah,ah
000001EF  12DB              adc bl,bl
000001F1  02C0              add al,al
000001F3  12DB              adc bl,bl
000001F5  02E4              add ah,ah
000001F7  12DB              adc bl,bl
000001F9  02C0              add al,al
000001FB  12DB              adc bl,bl
000001FD  80E30F            and bl,0xf
00000200  32FF              xor bh,bh
00000202  02D2              add dl,dl
00000204  02D2              add dl,dl
00000206  0A979734          or dl,[bx+0x3497]
0000020A  E2E1              loop 0x1ed
0000020C  268815            mov [es:di],dl
0000020F  2688551C          mov [es:di+0x1c],dl
00000213  47                inc di
00000214  59                pop cx
00000215  E2C7              loop 0x1de
00000217  5F                pop di
00000218  81C70020          add di,0x2000
0000021C  81FF0060          cmp di,0x6000
00000220  7219              jc 0x23b
00000222  1E                push ds
00000223  56                push si
00000224  51                push cx
00000225  57                push di
00000226  06                push es
00000227  1F                pop ds
00000228  8BF7              mov si,di
0000022A  81EE0020          sub si,0x2000
0000022E  B93800            mov cx,0x38
00000231  F3A4              rep movsb
00000233  5F                pop di
00000234  59                pop cx
00000235  5E                pop si
00000236  1F                pop ds
00000237  81C75AA0          add di,0xa05a
0000023B  59                pop cx
0000023C  E29B              loop 0x1d9
0000023E  C3                ret
0000023F  56                push si
00000240  8BFE              mov di,si
00000242  83C71C            add di,0x1c
00000245  B90E00            mov cx,0xe
00000248  F3A5              rep movsw
0000024A  5E                pop si
0000024B  C3                ret
0000024C  1E                push ds
0000024D  B800A0            mov ax,0xa000
00000250  8EC0              mov es,ax
00000252  8ED8              mov ds,ax
00000254  BEB011            mov si,0x11b0
00000257  BF2012            mov di,0x1220
0000025A  B410              mov ah,0x10
0000025C  B93800            mov cx,0x38
0000025F  F3A5              rep movsw
00000261  81C6D000          add si,0xd0
00000265  81C7D000          add di,0xd0
00000269  FECC              dec ah
0000026B  75EF              jnz 0x25c
0000026D  1F                pop ds
0000026E  33F6              xor si,si
00000270  BFB0B1            mov di,0xb1b0
00000273  B91000            mov cx,0x10
00000276  51                push cx
00000277  57                push di
00000278  B91C00            mov cx,0x1c
0000027B  8A94254F          mov dl,[si+0x4f25]
0000027F  8AB4E550          mov dh,[si+0x50e5]
00000283  E82900            call 0x2af
00000286  AA                stosb
00000287  2688456F          mov [es:di+0x6f],al
0000028B  E82100            call 0x2af
0000028E  AA                stosb
0000028F  2688456F          mov [es:di+0x6f],al
00000293  E81900            call 0x2af
00000296  AA                stosb
00000297  2688456F          mov [es:di+0x6f],al
0000029B  E81100            call 0x2af
0000029E  AA                stosb
0000029F  2688456F          mov [es:di+0x6f],al
000002A3  46                inc si
000002A4  E2D5              loop 0x27b
000002A6  5F                pop di
000002A7  81C74001          add di,0x140
000002AB  59                pop cx
000002AC  E2C8              loop 0x276
000002AE  C3                ret
000002AF  32C0              xor al,al
000002B1  02F6              add dh,dh
000002B3  12C0              adc al,al
000002B5  02D2              add dl,dl
000002B7  12C0              adc al,al
000002B9  02C0              add al,al
000002BB  02F6              add dh,dh
000002BD  12C0              adc al,al
000002BF  02D2              add dl,dl
000002C1  12C0              adc al,al
000002C3  02C0              add al,al
000002C5  C3                ret
000002C6  1E                push ds
000002C7  B800B8            mov ax,0xb800
000002CA  8EC0              mov es,ax
000002CC  8ED8              mov ds,ax
000002CE  BEF841            mov si,0x41f8
000002D1  B410              mov ah,0x10
000002D3  56                push si
000002D4  8BFE              mov di,si
000002D6  83C738            add di,0x38
000002D9  B91C00            mov cx,0x1c
000002DC  F3A5              rep movsw
000002DE  5E                pop si
000002DF  81C60020          add si,0x2000
000002E3  81FE0080          cmp si,0x8000
000002E7  7204              jc 0x2ed
000002E9  81C6A080          add si,0x80a0
000002ED  FECC              dec ah
000002EF  75E2              jnz 0x2d3
000002F1  1F                pop ds
000002F2  33F6              xor si,si
000002F4  BFF855            mov di,0x55f8
000002F7  B91000            mov cx,0x10
000002FA  51                push cx
000002FB  57                push di
000002FC  B91C00            mov cx,0x1c
000002FF  51                push cx
00000300  8AB4E550          mov dh,[si+0x50e5]
00000304  8A94254F          mov dl,[si+0x4f25]
00000308  E82400            call 0x32f
0000030B  26884538          mov [es:di+0x38],al
0000030F  AA                stosb
00000310  E81C00            call 0x32f
00000313  26884538          mov [es:di+0x38],al
00000317  AA                stosb
00000318  46                inc si
00000319  59                pop cx
0000031A  E2E3              loop 0x2ff
0000031C  5F                pop di
0000031D  81C70020          add di,0x2000
00000321  81FF0080          cmp di,0x8000
00000325  7204              jc 0x32b
00000327  81C7A080          add di,0x80a0
0000032B  59                pop cx
0000032C  E2CC              loop 0x2fa
0000032E  C3                ret
0000032F  32C0              xor al,al
00000331  B90200            mov cx,0x2
00000334  02F6              add dh,dh
00000336  12DB              adc bl,bl
00000338  02D2              add dl,dl
0000033A  12DB              adc bl,bl
0000033C  02F6              add dh,dh
0000033E  12DB              adc bl,bl
00000340  02D2              add dl,dl
00000342  12DB              adc bl,bl
00000344  80E30F            and bl,0xf
00000347  32FF              xor bh,bh
00000349  02C0              add al,al
0000034B  02C0              add al,al
0000034D  02C0              add al,al
0000034F  02C0              add al,al
00000351  0A875436          or al,[bx+0x3654]
00000355  E2DD              loop 0x334
00000357  C3                ret
00000358  0004              add [si],al
0000035A  0302              add ax,[bp+si]
0000035C  040C              add al,0xc
0000035E  050603            add ax,0x306
00000361  050B0A            add ax,0xa0b
00000364  02060A0E          add al,[0xe0a]
00000368  8BDF              mov bx,di
0000036A  AC                lodsb
0000036B  0AC0              or al,al
0000036D  7501              jnz 0x370
0000036F  C3                ret
00000370  8AE0              mov ah,al
00000372  80E4F0            and ah,0xf0
00000375  80FC10            cmp ah,0x10
00000378  7508              jnz 0x382
0000037A  240F              and al,0xf
0000037C  8AE0              mov ah,al
0000037E  32C0              xor al,al
00000380  EB0F              jmp 0x391
00000382  80FC40            cmp ah,0x40
00000385  7508              jnz 0x38f
00000387  240F              and al,0xf
00000389  8AE0              mov ah,al
0000038B  B0AA              mov al,0xaa
0000038D  EB02              jmp 0x391
0000038F  B401              mov ah,0x1
00000391  AA                stosb
00000392  FECC              dec ah
00000394  75FB              jnz 0x391
00000396  EBD2              jmp 0x36a
00000398  3833              cmp [bp+di],dh
0000039A  C02EA08833        shr byte [0x88a0],byte 0x33
0000039F  03C0              add ax,ax
000003A1  05A536            add ax,0x36a5
000003A4  8BF8              mov di,ax
000003A6  2EFF25            jmp word near [cs:di]
000003A9  B136              mov cl,0x36
000003AB  EA36EA3663        jmp word 0x6336:word 0xea36
000003B0  37                aaa
000003B1  F337              rep aaa
000003B3  51                push cx
000003B4  38B85000          cmp [bx+si+0x50],bh
000003B8  F6E3              mul bl
000003BA  8ADF              mov bl,bh
000003BC  32FF              xor bh,bh
000003BE  03C3              add ax,bx
000003C0  8BF8              mov di,ax
000003C2  B800A0            mov ax,0xa000
000003C5  8EC0              mov es,ax
000003C7  BAC403            mov dx,0x3c4
000003CA  B002              mov al,0x2
000003CC  EE                out dx,al
000003CD  42                inc dx
000003CE  8BD9              mov bx,cx
000003D0  57                push di
000003D1  B001              mov al,0x1
000003D3  EE                out dx,al
000003D4  3E8A22            mov ah,[ds:bp+si]
000003D7  A4                movsb
000003D8  B004              mov al,0x4
000003DA  EE                out dx,al
000003DB  268865FF          mov [es:di-0x1],ah
000003DF  FECF              dec bh
000003E1  75EE              jnz 0x3d1
000003E3  5F                pop di
000003E4  83C750            add di,0x50
000003E7  8AFD              mov bh,ch
000003E9  FECB              dec bl
000003EB  75E3              jnz 0x3d0
000003ED  C3                ret
000003EE  B85000            mov ax,0x50
000003F1  D0EB              shr bl,0x0
000003F3  1BD2              sbb dx,dx
000003F5  F6E3              mul bl
000003F7  81E20020          and dx,0x2000
000003FB  03C2              add ax,dx
000003FD  8ADF              mov bl,bh
000003FF  32FF              xor bh,bh
00000401  03C3              add ax,bx
00000403  8BF8              mov di,ax
00000405  B800B8            mov ax,0xb800
00000408  8EC0              mov es,ax
0000040A  8BD9              mov bx,cx
0000040C  57                push di
0000040D  51                push cx
0000040E  53                push bx
0000040F  3E8A22            mov ah,[ds:bp+si]
00000412  AC                lodsb
00000413  32D2              xor dl,dl
00000415  B90400            mov cx,0x4
00000418  02E4              add ah,ah
0000041A  12DB              adc bl,bl
0000041C  02C0              add al,al
0000041E  12DB              adc bl,bl
00000420  02E4              add ah,ah
00000422  12DB              adc bl,bl
00000424  02C0              add al,al
00000426  12DB              adc bl,bl
00000428  80E30F            and bl,0xf
0000042B  32FF              xor bh,bh
0000042D  02D2              add dl,dl
0000042F  02D2              add dl,dl
00000431  2E0A975337        or dl,[cs:bx+0x3753]
00000436  E2E0              loop 0x418
00000438  8AC2              mov al,dl
0000043A  AA                stosb
0000043B  5B                pop bx
0000043C  FECF              dec bh
0000043E  75CE              jnz 0x40e
00000440  59                pop cx
00000441  5F                pop di
00000442  81C70020          add di,0x2000
00000446  81FF0040          cmp di,0x4000
0000044A  7204              jc 0x450
0000044C  81C750C0          add di,0xc050
00000450  8AFD              mov bh,ch
00000452  FECB              dec bl
00000454  75B6              jnz 0x40c
00000456  C3                ret
00000457  0003              add [bp+di],al
00000459  0201              add al,[bx+di]
0000045B  0103              add [bp+di],ax
0000045D  0201              add al,[bx+di]
0000045F  0003              add [bp+di],al
00000461  0201              add al,[bx+di]
00000463  0103              add [bp+di],ax
00000465  0201              add al,[bx+di]
00000467  33C0              xor ax,ax
00000469  8AC3              mov al,bl
0000046B  051C00            add ax,0x1c
0000046E  B203              mov dl,0x3
00000470  F6F2              div dl
00000472  8AF4              mov dh,ah
00000474  D0CE              ror dh,0x0
00000476  D0CE              ror dh,0x0
00000478  D0CE              ror dh,0x0
0000047A  B45A              mov ah,0x5a
0000047C  F6E4              mul ah
0000047E  81E20060          and dx,0x6000
00000482  03C2              add ax,dx
00000484  80C705            add bh,0x5
00000487  8ADF              mov bl,bh
00000489  32FF              xor bh,bh
0000048B  03C3              add ax,bx
0000048D  8BF8              mov di,ax
0000048F  B800B0            mov ax,0xb000
00000492  8EC0              mov es,ax
00000494  8BD9              mov bx,cx
00000496  57                push di
00000497  51                push cx
00000498  53                push bx
00000499  3E8A22            mov ah,[ds:bp+si]
0000049C  AC                lodsb
0000049D  32D2              xor dl,dl
0000049F  B90400            mov cx,0x4
000004A2  02E4              add ah,ah
000004A4  12DB              adc bl,bl
000004A6  02C0              add al,al
000004A8  12DB              adc bl,bl
000004AA  02E4              add ah,ah
000004AC  12DB              adc bl,bl
000004AE  02C0              add al,al
000004B0  12DB              adc bl,bl
000004B2  80E30F            and bl,0xf
000004B5  32FF              xor bh,bh
000004B7  02D2              add dl,dl
000004B9  02D2              add dl,dl
000004BB  2E0A975337        or dl,[cs:bx+0x3753]
000004C0  E2E0              loop 0x4a2
000004C2  8AC2              mov al,dl
000004C4  AA                stosb
000004C5  5B                pop bx
000004C6  FECF              dec bh
000004C8  75CE              jnz 0x498
000004CA  59                pop cx
000004CB  5F                pop di
000004CC  81C70020          add di,0x2000
000004D0  81FF0060          cmp di,0x6000
000004D4  721A              jc 0x4f0
000004D6  1E                push ds
000004D7  56                push si
000004D8  51                push cx
000004D9  57                push di
000004DA  06                push es
000004DB  1F                pop ds
000004DC  8BF7              mov si,di
000004DE  81EE0020          sub si,0x2000
000004E2  8ACD              mov cl,ch
000004E4  32ED              xor ch,ch
000004E6  F3A4              rep movsb
000004E8  5F                pop di
000004E9  59                pop cx
000004EA  5E                pop si
000004EB  1F                pop ds
000004EC  81C75AA0          add di,0xa05a
000004F0  8AFD              mov bh,ch
000004F2  FECB              dec bl
000004F4  75A0              jnz 0x496
000004F6  C3                ret
000004F7  33D2              xor dx,dx
000004F9  8AD7              mov dl,bh
000004FB  8AFE              mov bh,dh
000004FD  52                push dx
000004FE  B84001            mov ax,0x140
00000501  F7E3              mul bx
00000503  5A                pop dx
00000504  03D2              add dx,dx
00000506  03D2              add dx,dx
00000508  03C2              add ax,dx
0000050A  8BF8              mov di,ax
0000050C  B800A0            mov ax,0xa000
0000050F  8EC0              mov es,ax
00000511  8BD9              mov bx,cx
00000513  57                push di
00000514  51                push cx
00000515  53                push bx
00000516  8A14              mov dl,[si]
00000518  3E8A32            mov dh,[ds:bp+si]
0000051B  E82000            call 0x53e
0000051E  AA                stosb
0000051F  E81C00            call 0x53e
00000522  AA                stosb
00000523  E81800            call 0x53e
00000526  AA                stosb
00000527  E81400            call 0x53e
0000052A  AA                stosb
0000052B  46                inc si
0000052C  5B                pop bx
0000052D  FECF              dec bh
0000052F  75E4              jnz 0x515
00000531  59                pop cx
00000532  5F                pop di
00000533  81C74001          add di,0x140
00000537  8AFD              mov bh,ch
00000539  FECB              dec bl
0000053B  75D6              jnz 0x513
0000053D  C3                ret
0000053E  32C0              xor al,al
00000540  02F6              add dh,dh
00000542  12C0              adc al,al
00000544  02C0              add al,al
00000546  02D2              add dl,dl
00000548  12C0              adc al,al
0000054A  02F6              add dh,dh
0000054C  12C0              adc al,al
0000054E  02C0              add al,al
00000550  02D2              add dl,dl
00000552  12C0              adc al,al
00000554  C3                ret
00000555  8AF3              mov dh,bl
00000557  D0CE              ror dh,0x0
00000559  D0CE              ror dh,0x0
0000055B  D0CE              ror dh,0x0
0000055D  81E20060          and dx,0x6000
00000561  D0EB              shr bl,0x0
00000563  D0EB              shr bl,0x0
00000565  B8A000            mov ax,0xa0
00000568  F6E3              mul bl
0000056A  03C2              add ax,dx
0000056C  8ADF              mov bl,bh
0000056E  32FF              xor bh,bh
00000570  03DB              add bx,bx
00000572  03C3              add ax,bx
00000574  8BF8              mov di,ax
00000576  B800B8            mov ax,0xb800
00000579  8EC0              mov es,ax
0000057B  8BD9              mov bx,cx
0000057D  57                push di
0000057E  51                push cx
0000057F  53                push bx
00000580  3E8A32            mov dh,[ds:bp+si]
00000583  8A14              mov dl,[si]
00000585  E82200            call 0x5aa
00000588  AA                stosb
00000589  E81E00            call 0x5aa
0000058C  AA                stosb
0000058D  46                inc si
0000058E  5B                pop bx
0000058F  FECF              dec bh
00000591  75EC              jnz 0x57f
00000593  59                pop cx
00000594  5F                pop di
00000595  81C70020          add di,0x2000
00000599  81FF0080          cmp di,0x8000
0000059D  7204              jc 0x5a3
0000059F  81C7A080          add di,0x80a0
000005A3  8AFD              mov bh,ch
000005A5  FECB              dec bl
000005A7  75D4              jnz 0x57d
000005A9  C3                ret
000005AA  32C0              xor al,al
000005AC  B90200            mov cx,0x2
000005AF  02F6              add dh,dh
000005B1  12DB              adc bl,bl
000005B3  02D2              add dl,dl
000005B5  12DB              adc bl,bl
000005B7  02F6              add dh,dh
000005B9  12DB              adc bl,bl
000005BB  02D2              add dl,dl
000005BD  12DB              adc bl,bl
000005BF  80E30F            and bl,0xf
000005C2  32FF              xor bh,bh
000005C4  02C0              add al,al
000005C6  02C0              add al,al
000005C8  02C0              add al,al
000005CA  02C0              add al,al
000005CC  2E0A87D038        or al,[cs:bx+0x38d0]
000005D1  E2DC              loop 0x5af
000005D3  C3                ret
000005D4  0007              add [bx],al
000005D6  0901              or [bx+di],ax
000005D8  07                pop es
000005D9  0F0B              ud2
000005DB  07                pop es
000005DC  090B              or [bp+di],cx
000005DE  0B03              or ax,[bp+di]
000005E0  0107              add [bx],ax
000005E2  0309              add cx,[bx+di]
000005E4  4C                dec sp
000005E5  A8A0              test al,0xa0
000005E7  43                inc bx
000005E8  882A              mov [bp+si],ch
000005EA  4F                dec di
000005EB  4F                dec di
000005EC  4F                dec di
000005ED  41                inc cx
000005EE  A0A243            mov al,[0x43a2]
000005F1  A0438A            mov al,[0x8a43]
000005F4  4F                dec di
000005F5  4B                dec bx
000005F6  A802              test al,0x2
000005F8  4D                dec bp
000005F9  A82A              test al,0x2a
000005FB  43                inc bx
000005FC  0A4111            or al,[bx+di+0x11]
000005FF  46                inc si
00000600  8045800A          add byte [di-0x80],0xa
00000604  4F                dec di
00000605  43                inc bx
00000606  A01122            mov al,[0x2211]
00000609  0A4380            or al,[bp+di-0x80]
0000060C  2A46EB            sub al,[bp-0x15]
0000060F  C00A42            ror byte [bp+si],byte 0x42
00000612  A04113            mov al,[0x1341]
00000615  2A44A0            sub al,[si-0x60]
00000618  AB                stosw
00000619  EA42A00211        jmp word 0x1102:word 0xa042
0000061E  0AAE49AF          or ch,[bp-0x50b7]
00000622  42                inc dx
00000623  BE42A0            mov si,0xa042
00000626  1102              adc [bp+si],ax
00000628  8A802A41          mov al,[bx+si+0x412a]
0000062C  A01102            mov al,[0x211]
0000062F  45                inc bp
00000630  AE                scasb
00000631  AC                lodsb
00000632  0280428A          add al,[bx+si-0x75be]
00000636  800202            add byte [bp+si],0x2
00000639  800320            add byte [bp+di],0x20
0000063C  2A42A8            sub al,[bp+si-0x58]
0000063F  2ABA4288          sub bh,[bp+si-0x77be]
00000643  0820              or [bx+si],ah
00000645  114380            adc [bp+di-0x80],ax
00000648  0A41AB            or al,[bx+di-0x55]
0000064B  43                inc bx
0000064C  A03AAB            mov al,[0xab3a]
0000064F  1141A8            adc [bx+di-0x58],ax
00000652  1102              adc [bp+si],ax
00000654  2028              and [bx+si],ch
00000656  080A              or [bp+si],cl
00000658  41                inc cx
00000659  110A              adc [bp+si],cx
0000065B  A046E8            mov al,[0xe846]
0000065E  0AA80A41          or ch,[bx+si+0x410a]
00000662  8811              mov [bx+di],dl
00000664  882A              mov [bp+si],ch
00000666  41                inc cx
00000667  BC0C08            mov sp,0x80c
0000066A  2A4202            sub al,[bp+si+0x2]
0000066D  42                inc dx
0000066E  A822              test al,0x22
00000670  22A0A22B          and ah,[bx+si+0x2ba2]
00000674  41                inc cx
00000675  A01120            mov al,[0x2011]
00000678  0F41EA            cmovno bp,dx
0000067B  41                inc cx
0000067C  F8                clc
0000067D  0802              or [bp+si],al
0000067F  A0020A            mov al,[0xa02]
00000682  A811              test al,0x11
00000684  88A008A2          mov [bx+si-0x5df8],ah
00000688  02A00288          add ah,[bx+si-0x77fe]
0000068C  110EBF43          adc [0x43bf],cx
00000690  AE                scasb
00000691  112A              adc [bp+si],bp
00000693  41                inc cx
00000694  82                db 0x82
00000695  41                inc cx
00000696  2802              sub [bp+si],al
00000698  2041AB            and [bx+di-0x55],al
0000069B  803011            xor byte [bx+si],0x11
0000069E  2242A0            and al,[bp+si-0x60]
000006A1  AB                stosw
000006A2  41                inc cx
000006A3  A00841            mov al,[0x4108]
000006A6  0A4311            or al,[bp+di+0x11]
000006A9  088A80BA          or [bp+si-0x4580],cl
000006AD  BAAE12            mov dx,0x12ae
000006B0  08F0              or al,dh
000006B2  8002A0            add byte [bp+si],0xa0
000006B5  0222              add ah,[bp+si]
000006B7  41                inc cx
000006B8  800282            add byte [bp+si],0x82
000006BB  80202A            and byte [bx+si],0x2a
000006BE  A003C0            mov al,[0xc003]
000006C1  FE42B0            inc byte [bp+si-0x50]
000006C4  0241A2            add al,[bx+di-0x5e]
000006C7  82                db 0x82
000006C8  41                inc cx
000006C9  A02211            mov al,[0x1122]
000006CC  22AE4130          and ch,[bp+0x3041]
000006D0  1102              adc [bp+si],ax
000006D2  42                inc dx
000006D3  A82B              test al,0x2b
000006D5  41                inc cx
000006D6  A04120            mov al,[0x2041]
000006D9  41                inc cx
000006DA  800AEA            or byte [bp+si],0xea
000006DD  8841A8            mov [bx+di-0x58],al
000006E0  280B              sub [bp+di],cl
000006E2  BAE011            mov dx,0x11e0
000006E5  2208              and cl,[bx+si]
000006E7  02A202A2          add ah,[bp+si-0x5dfe]
000006EB  0241A2            add al,[bx+di-0x5e]
000006EE  802280            and byte [bp+si],0x80
000006F1  82                db 0x82
000006F2  8A11              mov dl,[bx+di]
000006F4  028C1123          add cl,[si+0x2311]
000006F8  42                inc dx
000006F9  A00A41            mov al,[0x410a]
000006FC  2A824180          sub al,[bp+si-0x7fbf]
00000700  0A20              or ah,[bx+si]
00000702  43                inc bx
00000703  E2A0              loop 0x6a5
00000705  11A8422A          adc [bx+si+0x2a42],bp
00000709  41                inc cx
0000070A  A0A041            mov al,[0x41a0]
0000070D  A0110A            mov al,[0xa11]
00000710  E82A41            call 0x483d
00000713  A880              test al,0x80
00000715  11EA              adc dx,bp
00000717  11820822          adc [bp+si+0x2208],ax
0000071B  8AA011A2          mov ah,[bx+si-0x5def]
0000071F  82                db 0x82
00000720  41                inc cx
00000721  2A20              sub ah,[bx+si]
00000723  2AA80822          sub ch,[bx+si+0x2208]
00000727  8A412C            mov al,[bx+di+0x2c]
0000072A  0241AB            add al,[bx+di-0x55]
0000072D  41                inc cx
0000072E  A08AA8            mov al,[0xa88a]
00000731  41                inc cx
00000732  80C811            or al,0x11
00000735  0A28              or ch,[bx+si]
00000737  8A42A8            mov al,[bp+si-0x58]
0000073A  8A80A843          mov al,[bx+si+0x43a8]
0000073E  EA82A24112        jmp word 0x1241:word 0xa282
00000743  0AA8112A          or ch,[bx+si+0x2a11]
00000747  41                inc cx
00000748  8808              mov [bx+si],cl
0000074A  EA118880A8        jmp word 0xa880:word 0x8811
0000074F  0AA80888          or ch,[bx+si-0x77f8]
00000753  808841A80A        or byte [bx+si-0x57bf],0xa
00000758  0880110A          or [bx+si+0xa11],al
0000075C  88B0288A          mov [bx+si-0x75d8],dh
00000760  024180            add al,[bx+di-0x80]
00000763  2222              and ah,[bp+si]
00000765  2282CA11          and al,[bp+si+0x11ca]
00000769  8820              mov [bx+si],ah
0000076B  22EA              and ch,dl
0000076D  41                inc cx
0000076E  A22220            mov [0x2022],al
00000771  2A2A              sub ch,[bp+si]
00000773  41                inc cx
00000774  AE                scasb
00000775  41                inc cx
00000776  8A8A2812          mov cl,[bp+si+0x1228]
0000077A  03A0110A          add sp,[bx+si+0xa11]
0000077E  BA2241            mov dx,0x4122
00000781  3820              cmp [bx+si],ah
00000783  228A2222          and cl,[bp+si+0x2222]
00000787  224122            and al,[bx+di+0x22]
0000078A  2022              and [bp+si],ah
0000078C  41                inc cx
0000078D  2212              and dl,[bp+si]
0000078F  0A22              or ah,[bp+si]
00000791  2222              and ah,[bp+si]
00000793  B002              mov al,0x2
00000795  2211              and dl,[bx+di]
00000797  EACA428A8B        jmp word 0x8b8a:word 0x42ca
0000079C  C82820A8          enter word 0x2028,byte 0xa8
000007A0  41                inc cx
000007A1  FA                cli
000007A2  41                inc cx
000007A3  EA41A80A2A        jmp word 0x2a0a:word 0xa841
000007A8  41                inc cx
000007A9  AB                stosw
000007AA  41                inc cx
000007AB  8A888012          mov cl,[bx+si+0x1280]
000007AF  034188            add ax,[bx+di-0x78]
000007B2  024220            add al,[bp+si+0x20]
000007B5  88A82A8A          mov [bx+si-0x75d6],ch
000007B9  A02B41            mov al,[0x412b]
000007BC  20420A            and [bp+si+0xa],al
000007BF  42                inc dx
000007C0  A02A20            mov al,[0x202a]
000007C3  43                inc bx
000007C4  C02A41            shr byte [bp+si],byte 0x41
000007C7  11EA              adc dx,bp
000007C9  E222              loop 0x7ed
000007CB  A22A03            mov [0x32a],al
000007CE  2020              and [bx+si],ah
000007D0  0820              or [bx+si],ah
000007D2  3AF2              cmp dh,dl
000007D4  41                inc cx
000007D5  2222              and ah,[bp+si]
000007D7  2022              and [bp+si],ah
000007D9  44                inc sp
000007DA  0A2A              or ch,[bp+si]
000007DC  800222            add byte [bp+si],0x22
000007DF  22A22211          and ah,[bp+si+0x1122]
000007E3  AE                scasb
000007E4  22EA              and ch,dl
000007E6  2222              and ah,[bp+si]
000007E8  220A              and cl,[bp+si]
000007EA  022A              add ch,[bp+si]
000007EC  222B              and ch,[bp+di]
000007EE  2222              and ah,[bp+si]
000007F0  022A              add ch,[bp+si]
000007F2  A01122            mov al,[0x2211]
000007F5  2A22              sub ah,[bp+si]
000007F7  223F              and bh,[bx]
000007F9  0A02              or al,[bp+si]
000007FB  2280450B          and al,[bx+si+0xb45]
000007FF  A820              test al,0x20
00000801  8022BA            and byte [bp+si],0xba
00000804  FA                cli
00000805  43                inc bx
00000806  AB                stosw
00000807  E282              loop 0x78b
00000809  42                inc dx
0000080A  EA2AA2110A        jmp word 0xa11:word 0xa22a
0000080F  42                inc dx
00000810  EA41A0EA41        jmp word 0x41ea:word 0xa041
00000815  BA422A            mov dx,0x2a42
00000818  8A2A              mov ch,[bp+si]
0000081A  EE                out dx,al
0000081B  44                inc sp
0000081C  A04180            mov al,[0x8041]
0000081F  44                inc sp
00000820  BFC02A            mov di,0x2ac0
00000823  82                db 0x82
00000824  41                inc cx
00000825  20ABA222          and [bp+di+0x22a2],ch
00000829  A2A80F            mov [0xfa8],al
0000082C  2020              and [bx+si],ah
0000082E  22A222EA          and ah,[bp+si-0x15de]
00000832  AB                stosw
00000833  2222              and ah,[bp+si]
00000835  FE                db 0xfe
00000836  282A              sub [bp+si],ch
00000838  42                inc dx
00000839  A82A              test al,0x2a
0000083B  A00220            mov al,[0x2002]
0000083E  1122              adc [bp+si],sp
00000840  E222              loop 0x864
00000842  2022              and [bp+si],ah
00000844  23EB              and bp,bx
00000846  E232              loop 0x87a
00000848  0211              add dl,[bx+di]
0000084A  22AE222A          and ch,[bp+0x2a22]
0000084E  A3222A            mov [0x2a22],ax
00000851  2202              and al,[bp+si]
00000853  2222              and ah,[bp+si]
00000855  2AFF              sub bh,bh
00000857  C00222            rol byte [bp+si],byte 0x22
0000085A  2022              and [bp+si],ah
0000085C  802B88            sub byte [bp+di],0x88
0000085F  8A88883B          mov cl,[bx+si+0x3b88]
00000863  808880808B        or byte [bx+si-0x7f80],0x8b
00000868  EAA8A88F88        jmp word 0x888f:word 0xa8a8
0000086D  888242BA          mov [bp+si-0x45be],al
00000871  A8A8              test al,0xa8
00000873  0811              or [bx+di],dl
00000875  88888888          mov [bx+si-0x7778],cl
00000879  883A              mov [bp+si],bh
0000087B  8CBFBF8B          mov word [bx-0x7441],segr7
0000087F  C0118B            rcl byte [bx+di],byte 0x8b
00000882  8CC8              mov ax,cs
00000884  8AF8              mov bh,al
00000886  88C8              mov al,cl
00000888  800888            or byte [bx+si],0x88
0000088B  88BF1280          mov [bx-0x7fee],bh
0000088F  88880820          mov [bx+si+0x2008],cl
00000893  2AA2412A          sub ah,[bp+si+0x2a41]
00000897  A82F              test al,0x2f
00000899  0222              add ah,[bp+si]
0000089B  0A82ABE2          or al,[bp+si-0x1d55]
0000089F  2EA2BA22          mov [cs:0x22ba],al
000008A3  2AA2FE41          sub ah,[bp+si+0x41fe]
000008A7  BA41A0            mov dx,0xa041
000008AA  202A              and [bp+si],ch
000008AC  A24122            mov [0x2241],al
000008AF  2AA23A2E          sub ah,[bp+si+0x2e3a]
000008B3  2F                das
000008B4  EBBA              jmp 0x870
000008B6  320A              xor cl,[bp+si]
000008B8  AE                scasb
000008B9  B332              mov bl,0x32
000008BB  2AEE              sub ch,dh
000008BD  EA2A0AA2EA        jmp word 0xeaa2:word 0xa2a
000008C2  2F                das
000008C3  C00212            rol byte [bp+si],byte 0x12
000008C6  22A20A88          and ah,[bp+si-0x77f6]
000008CA  2C88              sub al,0x88
000008CC  A841              test al,0x41
000008CE  A0BB08            mov al,[0x8bb]
000008D1  800888            or byte [bx+si],0x88
000008D4  CB                retf
000008D5  88B888C8          mov [bx+si-0x3778],bh
000008D9  888888AE          mov [bx+si-0x5178],cl
000008DD  42                inc dx
000008DE  A21180            mov [0x8011],al
000008E1  88888888          mov [bx+si-0x7778],cl
000008E5  88880EB8          mov [bx+si-0x47f2],cl
000008E9  88CA              mov dl,cl
000008EB  BF880A            mov di,0xa88
000008EE  CB                retf
000008EF  C3                ret
000008F0  B888BF            mov ax,0xbf88
000008F3  CC                int3
000008F4  8A08              mov cl,[bx+si]
000008F6  88ABF03C          mov [bp+di+0x3cf0],ch
000008FA  88880808          mov [bx+si+0x808],cl
000008FE  88884122          mov [bx+si+0x2241],cl
00000902  2A41EA            sub al,[bx+di-0x16]
00000905  82                db 0x82
00000906  3B0A              cmp cx,[bp+si]
00000908  82                db 0x82
00000909  200A              and [bp+si],cl
0000090B  AB                stosw
0000090C  41                inc cx
0000090D  A241EA            mov [0xea41],al
00000910  41                inc cx
00000911  F32AAE428A        rep sub ch,[bp-0x75be]
00000916  02A2A22A          add ah,[bp+si+0x2aa2]
0000091A  42                inc dx
0000091B  A22A8E            mov [0x8e2a],al
0000091E  EAA2EABAEE        jmp word 0xeeba:word 0xeaa2
00000923  AE                scasb
00000924  3C11              cmp al,0x11
00000926  FA                cli
00000927  B22B              mov dl,0x2b
00000929  AE                scasb
0000092A  41                inc cx
0000092B  A22AB8            mov [0xb82a],al
0000092E  1103              adc [bp+di],ax
00000930  C2A802            ret word 0x2a8
00000933  022A              add ch,[bp+si]
00000935  82                db 0x82
00000936  8802              mov [bp+si],al
00000938  41                inc cx
00000939  A8A8              test al,0xa8
0000093B  0BEE              or bp,si
0000093D  2011              and [bx+di],dl
0000093F  A841              test al,0x41
00000941  AE                scasb
00000942  8A42E0            mov al,[bp+si-0x20]
00000945  8F42AB            pop word [bp+si-0x55]
00000948  42                inc dx
00000949  8811              mov [bx+di],dl
0000094B  8842A0            mov [bp+si-0x60],al
0000094E  884288            mov [bp+si-0x78],al
00000951  C841BAA0          enter word 0xba41,byte 0xa0
00000955  41                inc cx
00000956  BEC011            mov si,0x11c0
00000959  CC                int3
0000095A  BA41F8            mov dx,0xf841
0000095D  8A42C0            mov al,[bp+si-0x40]
00000960  0880282A          or [bx+si+0x2a28],al
00000964  88A241A0          mov [bp+si-0x5fbf],ah
00000968  220A              and cl,[bp+si]
0000096A  2A4180            sub al,[bx+di-0x80]
0000096D  2BF8              sub di,ax
0000096F  2820              sub [bx+si],ah
00000971  282B              sub [bp+di],ch
00000973  AB                stosw
00000974  EA2A2BABF2        jmp word 0xf2ab:word 0x2b2a
00000979  2F                das
0000097A  FF08              dec word [bx+si]
0000097C  42                inc dx
0000097D  880A              mov [bp+si],cl
0000097F  222A              and ch,[bp+si]
00000981  110A              adc [bp+si],cx
00000983  202A              and [bp+si],ch
00000985  2AA2222A          sub ah,[bp+si+0x2a22]
00000989  3A413E            cmp al,[bx+di+0x3e]
0000098C  EB11              jmp 0x99f
0000098E  20EE              and dh,ch
00000990  3A2A              cmp ch,[bp+si]
00000992  AE                scasb
00000993  222A              and ch,[bp+si]
00000995  2A02              sub al,[bp+si]
00000997  2011              and [bx+di],dl
00000999  0202              add al,[bp+si]
0000099B  222A              and ch,[bp+si]
0000099D  2AA28888          sub ah,[bp+si-0x7778]
000009A1  BAA811            mov dx,0x11a8
000009A4  BC1188            mov sp,0x8811
000009A7  1180AB8E          adc [bx+si-0x7155],ax
000009AB  F8                clc
000009AC  888B8C8B          mov [bp+di-0x7474],cl
000009B0  F0110A            lock adc [bp+si],cx
000009B3  42                inc dx
000009B4  2808              sub [bx+si],cl
000009B6  801108            adc byte [bx+di],0x8
000009B9  8888128A          mov [bx+si-0x75ee],cl
000009BD  88888C88          mov [bx+si-0x7774],cl
000009C1  88A00811          mov [bx+si+0x1108],ah
000009C5  B8A888            mov ax,0x88a8
000009C8  8C8A88AC          mov word [bp+si-0x5378],cs
000009CC  88888811          mov [bx+si+0x1188],cl
000009D0  888A888A          mov [bp+si-0x7578],cl
000009D4  80222A            and byte [bp+si],0x2a
000009D7  EA28023C11        jmp word 0x113c:word 0x228
000009DC  2002              and [bp+si],al
000009DE  0AA22B32          or ah,[bp+si+0x322b]
000009E2  2A2EF2FC          sub ch,[0xfcf2]
000009E6  120E2A41          adc cl,[0x412a]
000009EA  2011              and [bx+di],dl
000009EC  022A              add ch,[bp+si]
000009EE  2222              and ah,[bp+si]
000009F0  2202              and al,[bp+si]
000009F2  2002              and [bp+si],al
000009F4  222A              and ch,[bp+si]
000009F6  2EE22A            loop 0xa23
000009F9  C00220            rol byte [bp+si],byte 0x20
000009FC  32EA              xor ch,dl
000009FE  2222              and ah,[bp+si]
00000A00  2A2A              sub ch,[bp+si]
00000A02  AE                scasb
00000A03  22E2              and ah,dl
00000A05  2A20              sub ah,[bx+si]
00000A07  A22241            mov [0x4122],al
00000A0A  2222              and ah,[bp+si]
00000A0C  8888EBA0          mov [bx+si-0x5f15],cl
00000A10  08FC              or ah,bh
00000A12  128808A8          adc cl,[bx+si-0x57f8]
00000A16  FB                sti
00000A17  A888              test al,0x88
00000A19  AF                scasw
00000A1A  8B13              mov dx,[bp+di]
00000A1C  022A              add ch,[bp+si]
00000A1E  41                inc cx
00000A1F  2011              and [bx+di],dl
00000A21  888FCBC8          mov [bx-0x3735],cl
00000A25  F8                clc
00000A26  88888088          mov [bx+si-0x7780],cl
00000A2A  118CB88E          adc [si-0x7148],cx
00000A2E  C088883CE8        ror byte [bx+si+0x3c88],byte 0xe8
00000A33  88AFA888          mov [bx-0x7758],ch
00000A37  BB88C8            mov bx,0xc888
00000A3A  8B8028FC          mov ax,[bx+si-0x3d8]
00000A3E  A888              test al,0x88
00000A40  A822              test al,0x22
00000A42  A22320            mov [0x2023],al
00000A45  22F2              and dh,dl
00000A47  2022              and [bp+si],ah
00000A49  2022              and [bp+si],ah
00000A4B  A2A3A2            mov [0xa2a3],al
00000A4E  A2322C            mov [0x2c32],al
00000A51  1102              adc [bp+si],ax
00000A53  1122              adc [bp+si],sp
00000A55  42                inc dx
00000A56  AE                scasb
00000A57  2222              and ah,[bp+si]
00000A59  AE                scasb
00000A5A  FF23              jmp word near [bp+di]
00000A5C  22A22220          and ah,[bp+si+0x2022]
00000A60  11A002A2          adc [bx+si-0x5dfe],sp
00000A64  3222              xor ah,[bp+si]
00000A66  2011              and [bx+di],dl
00000A68  2EFA              cs cli
00000A6A  222B              and ch,[bp+di]
00000A6C  E2A2              loop 0xa10
00000A6E  32E2              xor ah,dl
00000A70  EAE22022C3        jmp word 0xc322:word 0x20e2
00000A75  A2222A            mov [0x2a22],al
00000A78  888B88A0          mov [bp+di-0x5f78],cl
00000A7C  88B01180          mov [bx+si-0x7fef],dh
00000A80  11AB8E8F          adc [bp+di-0x7072],bp
00000A84  C888CBB0          enter word 0xcb88,byte 0xb0
00000A88  130A              adc cx,[bp+si]
00000A8A  42                inc dx
00000A8B  AC                lodsb
00000A8C  888BCBBC          mov [bp+di-0x4335],cl
00000A90  FC                cld
00000A91  8B888888          mov cx,[bx+si-0x7778]
00000A95  88888AB8          mov [bx+si-0x4776],cl
00000A99  BB0811            mov bx,0x1108
00000A9C  8888CA88          mov [bx+si-0x7736],cl
00000AA0  CB                retf
00000AA1  B88AC8            mov ax,0xc88a
00000AA4  CA41E8            retf word 0xe841
00000AA7  880B              mov [bp+di],cl
00000AA9  11FA              adc dx,di
00000AAB  888A2223          mov [bp+si+0x2322],cl
00000AAF  AE                scasb
00000AB0  8023F2            and byte [bp+di],0xf2
00000AB3  2011              and [bx+di],dl
00000AB5  2EA23223          mov [cs:0x2332],al
00000AB9  200F              and [bx],cl
00000ABB  2E3020            xor [cs:bx+si],ah
00000ABE  1122              adc [bp+si],sp
00000AC0  2242AE            and al,[bp+si-0x52]
00000AC3  2220              and ah,[bx+si]
00000AC5  3E                ds
00000AC6  FE                db 0xfe
00000AC7  E3EC              jcxz 0xab5
00000AC9  0222              add ah,[bp+si]
00000ACB  2222              and ah,[bp+si]
00000ACD  2222              and ah,[bp+si]
00000ACF  AE                scasb
00000AD0  E302              jcxz 0xad4
00000AD2  2222              and ah,[bp+si]
00000AD4  2AEF              sub ch,bh
00000AD6  E322              jcxz 0xafa
00000AD8  E822E2            call 0xecfd
00000ADB  3AAFA222          cmp ch,[bx+0x22a2]
00000ADF  0B11              or dx,[bx+di]
00000AE1  0E                push cs
00000AE2  2222              and ah,[bp+si]
00000AE4  88888CC0          mov [bx+si-0x3f74],cl
00000AE8  8C0C              mov word [si],cs
00000AEA  C088F88B80        ror byte [bx+si-0x7408],byte 0x80
00000AEF  8883F00C          mov [bp+di+0xcf0],al
00000AF3  C01188            rcl byte [bx+di],byte 0x88
00000AF6  808842AC88        or byte [bx+si-0x53be],0x88
00000AFB  8803              mov [bp+di],al
00000AFD  BF8C13            mov di,0x138c
00000B00  88888882          mov [bx+si-0x7d78],cl
00000B04  B8C012            mov ax,0x12c0
00000B07  888ACEC3          mov [bp+si-0x3c32],cl
00000B0B  88B888C0          mov [bx+si-0x3f78],bh
00000B0F  BBAE88            mov bx,0x88ae
00000B12  8080110811        add byte [bx+si+0x811],0x11
00000B17  8822              mov [bp+si],ah
00000B19  2322              and sp,[bp+si]
00000B1B  82                db 0x82
00000B1C  2F                das
00000B1D  203E0222          and [0x2202],bh
00000B21  FC                cld
00000B22  0222              add ah,[bp+si]
00000B24  FE                db 0xfe
00000B25  200EC202          and [0x2c2],cl
00000B29  2002              and [bp+si],al
00000B2B  22BB4222          and bh,[bp+di+0x2242]
00000B2F  2211              and dl,[bx+di]
00000B31  BE3022            mov si,0x2230
00000B34  2002              and [bp+si],al
00000B36  2222              and ah,[bp+si]
00000B38  2002              and [bp+si],al
00000B3A  AE                scasb
00000B3B  E220              loop 0xb5d
00000B3D  0222              add ah,[bp+si]
00000B3F  2333              and si,[bp+di]
00000B41  832241            and word [bp+si],0x41
00000B44  2302              and ax,[bp+si]
00000B46  3B41A0            cmp ax,[bx+di-0x60]
00000B49  0222              add ah,[bp+si]
00000B4B  2208              and cl,[bx+si]
00000B4D  82                db 0x82
00000B4E  2211              and dl,[bx+di]
00000B50  8BBA12FF          mov di,[bp+si-0xee]
00000B54  C80B3FA8          enter word 0x3f0b,byte 0xa8
00000B58  883F              mov [bx],bh
00000B5A  11A8B8C0          adc [bx+si-0x3f48],bp
00000B5E  11888811          adc [bx+si+0x1188],cx
00000B62  8A41B8            mov al,[bx+di-0x48]
00000B65  1288ACC0          adc cl,[bx+si-0x3f54]
00000B69  11888812          adc [bx+si+0x1288],cx
00000B6D  888AB311          mov [bp+si+0x11b3],cl
00000B71  888812AB          mov [bx+si-0x54ee],cl
00000B75  CB                retf
00000B76  C0F8AB            sar al,byte 0xab
00000B79  880A              mov [bp+si],cl
00000B7B  41                inc cx
00000B7C  88881202          mov [bx+si+0x212],cl
00000B80  8811              mov [bx+di],dl
00000B82  222C              and ch,[si]
00000B84  2302              and ax,[bp+si]
00000B86  2203              and al,[bp+di]
00000B88  3E2AE2            ds sub ah,dl
00000B8B  8003E2            add byte [bp+di],0xe2
00000B8E  2220              and ah,[bx+si]
00000B90  C3                ret
00000B91  1122              adc [bp+si],sp
00000B93  1102              adc [bp+si],ax
00000B95  228AEAB2          and cl,[bp+si-0x4d16]
00000B99  2222              and ah,[bp+si]
00000B9B  11EE              adc si,bp
00000B9D  E222              loop 0xbc1
00000B9F  1102              adc [bp+si],ax
00000BA1  2222              and ah,[bp+si]
00000BA3  1102              adc [bp+si],ax
00000BA5  AF                scasw
00000BA6  2211              and dl,[bx+di]
00000BA8  0222              add ah,[bp+si]
00000BAA  2223              and ah,[bp+di]
00000BAC  CE                into
00000BAD  32BA8302          xor bh,[bp+si+0x283]
00000BB1  2EBA1102          cs mov dx,0x211
00000BB5  2222              and ah,[bp+si]
00000BB7  020F              add cl,[bx]
00000BB9  228A88AB          and cl,[bp+si-0x5478]
00000BBD  088888CB          or [bx+si-0x3478],cl
00000BC1  8F                db 0x8f
00000BC2  8B88BCC8          mov cx,[bx+si-0x3744]
00000BC6  88A8CB11          mov [bx+si+0x11cb],ch
00000BCA  08888888          or [bx+si-0x7778],cl
00000BCE  BAEAB8            mov dx,0xb8ea
00000BD1  888888A8          mov [bx+si-0x5778],cl
00000BD5  88888888          mov [bx+si-0x7778],cl
00000BD9  02888888          add cl,[bx+si-0x7778]
00000BDD  BB8888            mov bx,0x8888
00000BE0  8888888B          mov [bx+si-0x7478],cl
00000BE4  8CB8BB8C          mov word [bx+si-0x7345],segr7
00000BE8  888ABA88          mov [bp+si-0x7746],cl
00000BEC  88888882          mov [bx+si-0x7d78],cl
00000BF0  B0C8              mov al,0xc8
00000BF2  022A              add ch,[bp+si]
00000BF4  AC                lodsb
00000BF5  0222              add ah,[bp+si]
00000BF7  02E3              add ah,bl
00000BF9  2E0222            add ah,[cs:bp+si]
00000BFC  E0E2              loopne 0xbe0
00000BFE  22A32315          and ah,[bp+di+0x1523]
00000C02  88828002          mov [bp+si+0x280],al
00000C06  A01122            mov al,[0x2211]
00000C09  C01420            rcl byte [si],byte 0x20
00000C0C  12EB              adc ch,bl
00000C0E  1202              adc al,[bp+si]
00000C10  E0A0              loopne 0xbb2
00000C12  08CC              or ah,cl
00000C14  0F08              invd
00000C16  2002              and [bp+si],al
00000C18  22BA22A0          and bh,[bp+si-0x5fde]
00000C1C  1108              adc [bx+si],cx
00000C1E  80A03C8AA8        and byte [bx+si-0x75c4],0xa8
00000C23  B008              mov al,0x8
00000C25  8808              mov [bx+si],cl
00000C27  B8CC8C            mov ax,0x8ccc
00000C2A  8B80F841          mov ax,[bx+si+0x41f8]
00000C2E  8B8B110A          mov cx,[bp+di+0xa11]
00000C32  0A08              or cl,[bx+si]
00000C34  2822              sub [bp+si],ah
00000C36  02B0A011          add dh,[bx+si+0x11a0]
00000C3A  883A              mov [bp+si],bh
00000C3C  802A08            sub byte [bp+si],0x8
00000C3F  2011              and [bx+di],dl
00000C41  0211              add dl,[bx+di]
00000C43  20FF              and bh,bh
00000C45  20882088          and [bx+si-0x77e0],cl
00000C49  220F              and cl,[bx]
00000C4B  3220              xor ah,[bx+si]
00000C4D  41                inc cx
00000C4E  28880ABA          sub [bx+si-0x45f6],cl
00000C52  20802222          and [bx+si+0x2222],al
00000C56  20800311          and [bx+si+0x1103],al
00000C5A  2A11              sub dl,[bx+di]
00000C5C  A8A2              test al,0xa2
00000C5E  0AB0F008          or dh,[bx+si+0x8f0]
00000C62  0CC0              or al,0xc0
00000C64  304183            xor [bx+di-0x7d],al
00000C67  0C13              or al,0x13
00000C69  02800C0A          add al,[bx+si+0xa0c]
00000C6D  B012              mov al,0x12
00000C6F  084182            or [bx+di-0x7e],al
00000C72  1322              adc sp,[bp+si]
00000C74  1122              adc [bp+si],sp
00000C76  11CB              adc bx,cx
00000C78  11820880          adc [bp+si-0x7ff8],ax
00000C7C  2002              and [bp+si],al
00000C7E  F0                lock
00000C7F  882A              mov [bp+si],ch
00000C81  800882            or byte [bx+si],0x82
00000C84  E80202            call 0xe89
00000C87  1380118A          adc ax,[bx+si-0x75ef]
00000C8B  802222            and byte [bp+si],0x22
00000C8E  200B              and [bp+di],cl
00000C90  A8F8              test al,0xf8
00000C92  888CC00C          mov [si+0xcc0],cl
00000C96  41                inc cx
00000C97  8C8C1608          mov word [si+0x816],cs
00000C9B  B013              mov al,0x13
00000C9D  28C0              sub al,al
00000C9F  150220            adc ax,0x2002
00000CA2  FB                sti
00000CA3  1502F0            adc ax,0xf002
00000CA6  110A              adc [bp+si],cx
00000CA8  80110A            adc byte [bx+di],0xa
00000CAB  E81120            call 0x2cbf
00000CAE  152012            adc ax,0x1220
00000CB1  88A02BA0          mov [bx+si-0x5fd5],ah
00000CB5  3030              xor [bx+si],dh
00000CB7  30C0              xor al,al
00000CB9  0308              add cx,[bx+si]
00000CBB  0C0C              or al,0xc
00000CBD  152B8A            adc ax,0x8a2b
00000CC0  B013              mov al,0x13
00000CC2  2A801402          sub al,[bx+si+0x214]
00000CC6  12CE              adc cl,dh
00000CC8  150320            adc ax,0x2003
00000CCB  1102              adc [bp+si],ax
00000CCD  120A              adc cl,[bp+si]
00000CCF  E817A0            call 0xace9
00000CD2  08822A88          or [bp+si-0x77d6],al
00000CD6  2EB8B8A8          cs mov ax,0xa8b8
00000CDA  BB1103            mov bx,0x311
00000CDD  88B8B015          mov [bx+si+0x15b0],bh
00000CE1  0B8AA013          or cx,[bp+si+0x13a0]
00000CE5  2A18              sub bl,[bx+si]
00000CE7  FE                db 0xfe
00000CE8  16                push ss
00000CE9  801102            adc byte [bx+di],0x2
00000CEC  120A              adc cl,[bp+si]
00000CEE  E81120            call 0x2d02
00000CF1  158011            adc ax,0x1180
00000CF4  28A88A41          sub [bx+si+0x418a],ch
00000CF8  CF                iret
00000CF9  3020              xor [bx+si],ah
00000CFB  C21103            ret word 0x311
00000CFE  0B33              or si,[bp+di]
00000D00  C0152A            rcl byte [di],byte 0x2a
00000D03  41                inc cx
00000D04  C0132A            rcl byte [bp+di],byte 0x2a
00000D07  18F2              sbb dl,dh
00000D09  16                push ss
00000D0A  80140A            adc byte [si],0xa
00000D0D  E81788            call 0x9527
00000D10  8822              mov [bp+si],ah
00000D12  A28AAB            mov [0xab8a],al
00000D15  B0F8              mov al,0xf8
00000D17  CB                retf
00000D18  8A11              mov dl,[bx+di]
00000D1A  038B8C16          add cx,[bp+di+0x168c]
00000D1E  0AA2C013          or ah,[bp+si+0x13c0]
00000D22  3A18              cmp bl,[bx+si]
00000D24  CE                into
00000D25  16                push ss
00000D26  80140A            adc byte [si],0xa
00000D29  E81780            call 0x8d43
00000D2C  41                inc cx
00000D2D  82                db 0x82
00000D2E  41                inc cx
00000D2F  2B4111            sub ax,[bx+di+0x11]
00000D32  0F0302            lsl ax,[bp+si]
00000D35  12C3              adc al,bl
00000D37  0C16              or al,0x16
00000D39  0AA2C013          or ah,[bp+si+0x13c0]
00000D3D  2B18              sub bx,[bx+si]
00000D3F  CE                into
00000D40  16                push ss
00000D41  80140A            adc byte [si],0xa
00000D44  A817              test al,0x17
00000D46  88A222A2          mov [bp+si-0x5dde],ah
00000D4A  2AA812FC          sub ch,[bx+si-0x3ee]
00000D4E  A812              test al,0x12
00000D50  CB                retf
00000D51  8C160A82          mov word [0x820a],ss
00000D55  C01322            rcl byte [bp+di],byte 0x22
00000D58  18EE              sbb dh,ch
00000D5A  1B02              sbb ax,[bp+si]
00000D5C  E8172A            call 0x3776
00000D5F  280A              sub [bp+si],cl
00000D61  8841E0            mov [bx+di-0x20],al
00000D64  120F              adc cl,[bx]
00000D66  8812              mov [bp+si],dl
00000D68  C3                ret
00000D69  0C17              or al,0x17
00000D6B  A28013            mov [0x1380],al
00000D6E  2A17              sub dl,[bx]
00000D70  03B31B02          add si,[bp+di+0x21b]
00000D74  EA172802A2        jmp word 0xa202:word 0x2817
00000D79  82                db 0x82
00000D7A  41                inc cx
00000D7B  1303              adc ax,[bp+di]
00000D7D  2812              sub [bp+si],dl
00000D7F  CC                int3
00000D80  0C16              or al,0x16
00000D82  2A20              sub ah,[bx+si]
00000D84  B013              mov al,0x13
00000D86  FA                cli
00000D87  17                pop ss
00000D88  03CB              add cx,bx
00000D8A  1B02              sbb ax,[bp+si]
00000D8C  3A17              cmp dl,[bx]
00000D8E  02A81141          add ch,[bx+si+0x4111]
00000D92  AB                stosw
00000D93  1303              adc ax,[bp+di]
00000D95  1203              adc al,[bp+di]
00000D97  0C30              or al,0x30
00000D99  16                push ss
00000D9A  0A88B013          or cl,[bx+si+0x13b0]
00000D9E  8B17              mov dx,[bx]
00000DA0  0323              add sp,[bp+di]
00000DA2  1C41              sbb al,0x41
00000DA4  17                pop ss
00000DA5  82                db 0x82
00000DA6  41                inc cx
00000DA7  A241BE            mov [0xbe41],al
00000DAA  14A8              adc al,0xa8
00000DAC  1103              adc [bp+di],ax
00000DAE  8CB01608          mov word [bx+si+0x816],segr6
00000DB2  88B013AB          mov [bx+si-0x54ed],dh
00000DB6  17                pop ss
00000DB7  0323              add sp,[bp+di]
00000DB9  1B02              sbb ax,[bp+si]
00000DBB  3217              xor dl,[bx]
00000DBD  22BFA841          and bh,[bx+0x41a8]
00000DC1  E81488            call 0x95d8
00000DC4  1102              adc [bp+si],ax
00000DC6  0830              or [bx+si],dh
00000DC8  16                push ss
00000DC9  0228              add ch,[bx+si]
00000DCB  B013              mov al,0x13
00000DCD  8A17              mov dl,[bx]
00000DCF  0323              add sp,[bp+di]
00000DD1  1C88              sbb al,0x88
00000DD3  80168BC8F2        adc byte [0xc88b],0xf2
00000DD8  41                inc cx
00000DD9  EC                in al,dx
00000DDA  14B0              adc al,0xb0
00000DDC  1102              adc [bp+si],ax
00000DDE  0AA01622          or ah,[bx+si+0x2216]
00000DE2  28B013BB          sub [bx+si-0x44ed],dh
00000DE6  17                pop ss
00000DE7  0323              add sp,[bp+di]
00000DE9  1B02              sbb ax,[bp+si]
00000DEB  0217              add dl,[bx]
00000DED  2C11              sub al,0x11
00000DEF  3841F0            cmp [bx+di-0x10],al
00000DF2  1302              adc ax,[bp+si]
00000DF4  2811              sub [bx+di],dl
00000DF6  0228              add ch,[bx+si]
00000DF8  A0162A            mov al,[0x2a16]
00000DFB  8AB01203          mov dh,[bx+si+0x312]
00000DFF  0217              add dl,[bx]
00000E01  0330              add si,[bx+si]
00000E03  C01A08            rcr byte [bp+si],byte 0x8
00000E06  8080162C11        add byte [bx+si+0x2c16],0x11
00000E0B  0A2B              or ch,[bp+di]
00000E0D  A01488            mov al,[0x8814]
00000E10  1102              adc [bp+si],ax
00000E12  2AA0162A          sub ah,[bx+si+0x2a16]
00000E16  8AAC1202          mov ch,[si+0x212]
00000E1A  3080160C          xor [bx+si+0xc16],al
00000E1E  80C01A            add al,0x1a
00000E21  028817B0          add cl,[bx+si-0x4fe9]
00000E25  1108              adc [bx+si],cx
00000E27  AB                stosw
00000E28  A01308            mov al,[0x813]
00000E2B  2811              sub [bx+di],dl
00000E2D  032C              add bp,[si]
00000E2F  8C160A8A          mov word [0x8a0a],ss
00000E33  A812              test al,0x12
00000E35  028C8016          add cl,[si+0x1680]
00000E39  0F80C01A          jo 0x28fd
00000E3D  0802              or [bp+si],al
00000E3F  2016B011          and [0x11b0],dl
00000E43  0E                push cs
00000E44  2BB01428          sub si,[bx+si+0x2814]
00000E48  1108              adc [bx+si],cx
00000E4A  2288160A          and cl,[bx+si+0xa16]
00000E4E  A888              test al,0x88
00000E50  1208              adc cl,[bx+si]
00000E52  2020              and [bx+si],ah
00000E54  16                push ss
00000E55  028C801A          add cl,[si+0x1a80]
00000E59  0220              add ah,[bx+si]
00000E5B  2016B011          and [0x11b0],dl
00000E5F  08AB8014          or [bp+di+0x1480],ch
00000E63  0811              or [bx+di],dl
00000E65  0C08              or al,0x8
00000E67  28160A8A          sub [0x8a0a],dl
00000E6B  2813              sub [bp+di],dl
00000E6D  82                db 0x82
00000E6E  17                pop ss
00000E6F  0AC8              or cl,al
00000E71  801A28            sbb byte [bp+si],0x28
00000E74  0208              add cl,[bx+si]
00000E76  16                push ss
00000E77  B011              mov al,0x11
00000E79  022A              add ch,[bp+si]
00000E7B  801308            adc byte [bp+di],0x8
00000E7E  0212              add dl,[bp+si]
00000E80  0C08              or al,0x8
00000E82  16                push ss
00000E83  0A888812          or cl,[bx+si+0x1288]
00000E87  0A0A              or cl,[bp+si]
00000E89  80160CC8A0        adc byte [0xc80c],0xa0
00000E8E  1A28              sbb ch,[bx+si]
00000E90  208216C0          and [bp+si-0x3fea],al
00000E94  1108              adc [bx+si],cx
00000E96  AE                scasb
00000E97  C01308            rcl byte [bp+di],byte 0x8
00000E9A  1208              adc cl,[bx+si]
00000E9C  0C08              or al,0x8
00000E9E  16                push ss
00000E9F  0A2A              or ch,[bp+si]
00000EA1  2812              sub [bp+si],dl
00000EA3  0211              add dl,[bx+di]
00000EA5  80163A0820        adc byte [0x83a],0x20
00000EAA  1A801108          sbb al,[bx+si+0x811]
00000EAE  2015              and [di],dl
00000EB0  C01122            rcl byte [bx+di],byte 0x22
00000EB3  2EC016088888      rcl byte [cs:0x8808],byte 0x88
00000EB9  16                push ss
00000EBA  0A08              or cl,[bx+si]
00000EBC  8812              mov [bp+si],dl
00000EBE  0818              or [bx+si],bl
00000EC0  2211              and dl,[bx+di]
00000EC2  2019              and [bx+di],bl
00000EC4  0A19              or bl,[bx+di]
00000EC6  C01128            rcl byte [bx+di],byte 0x28
00000EC9  AE                scasb
00000ECA  1480              adc al,0x80
00000ECC  1208              adc cl,[bx+si]
00000ECE  8802              mov [bp+si],al
00000ED0  16                push ss
00000ED1  0A22              or ah,[bp+si]
00000ED3  021B              add bl,[bp+di]
00000ED5  2308              and cx,[bx+si]
00000ED7  081F              or [bx],bl
00000ED9  16                push ss
00000EDA  222E1708          and ch,[0x817]
00000EDE  82                db 0x82
00000EDF  02160A41          add dl,[0x410a]
00000EE3  82                db 0x82
00000EE4  1BE0              sbb sp,ax
00000EE6  021E2817          add bl,[0x1728]
00000EEA  08AB1980          or [bp+di-0x7fe7],ch
00000EEE  801508            adc byte [di],0x8
00000EF1  41                inc cx
00000EF2  021B              add bl,[bp+di]
00000EF4  A0021E            mov al,[0x1e02]
00000EF7  0A17              or dl,[bx]
00000EF9  2ABB1702          sub bh,[bp+di+0x217]
00000EFD  0220              add ah,[bx+si]
00000EFF  80150A            adc byte [di],0xa
00000F02  2A808019          sub al,[bx+si+0x1980]
00000F06  03801180          add ax,[bx+si-0x7fef]
00000F0A  1D0217            sbb ax,0x1702
00000F0D  0AAC1780          or ch,[si-0x7fe9]
00000F11  08802015          or [bx+si+0x1520],al
00000F15  2228              and ch,[bx+si]
00000F17  801F1F            sbb byte [bx],0x1f
00000F1A  153AB8            adc ax,0xb83a
00000F1D  16                push ss
00000F1E  0A08              or cl,[bx+si]
00000F20  0208              add cl,[bx+si]
00000F22  0A15              or dl,[di]
00000F24  2828              sub [bx+si],ch
00000F26  11801F1F          adc [bx+si+0x1f1f],ax
00000F2A  1432              adc al,0x32
00000F2C  B81982            mov ax,0x8219
00000F2F  16                push ss
00000F30  2822              sub [bp+si],ah
00000F32  021F              add bl,[bx]
00000F34  1F                pop ds
00000F35  150EB8            adc ax,0xb80e
00000F38  1F                pop ds
00000F39  11A0A880          adc [bx+si-0x7f58],sp
00000F3D  881F              mov [bx],bl
00000F3F  1F                pop ds
00000F40  140A              adc al,0xa
00000F42  BC1F11            mov sp,0x111f
00000F45  A02811            mov al,[0x1128]
00000F48  201F              and [bx],bl
00000F4A  1F                pop ds
00000F4B  140A              adc al,0xa
00000F4D  8C1F              mov word [bx],ds
00000F4F  0211              add dl,[bx+di]
00000F51  82                db 0x82
00000F52  1F                pop ds
00000F53  1F                pop ds
00000F54  16                push ss
00000F55  0820              or [bx+si],ah
00000F57  1F                pop ds
00000F58  1202              adc al,[bp+si]
00000F5A  1F                pop ds
00000F5B  1F                pop ds
00000F5C  16                push ss
00000F5D  08A01F12          or [bx+si+0x121f],ah
00000F61  081F              or [bx],bl
00000F63  1F                pop ds
00000F64  17                pop ss
00000F65  301F              xor [bx],bl
00000F67  1120              adc [bx+si],sp
00000F69  1F                pop ds
00000F6A  1F                pop ds
00000F6B  1830              sbb [bx+si],dh
00000F6D  004CAB            add [si-0x55],cl
00000F70  AF                scasw
00000F71  43                inc bx
00000F72  C83A4F4B          enter word 0x4f3a,byte 0x4b
00000F76  AB                stosw
00000F77  FE48FF            dec byte [bx+si-0x1]
00000F7A  44                inc sp
00000F7B  AB                stosw
00000F7C  EA41BA41AF        jmp word 0xaf41:word 0xba41
00000F81  AE                scasb
00000F82  FF42AF            inc word [bp+si-0x51]
00000F85  43                inc bx
00000F86  8F45BF            pop word [di-0x41]
00000F89  FA                cli
00000F8A  FE44BE            inc byte [si-0x42]
00000F8D  46                inc si
00000F8E  AF                scasw
00000F8F  45                inc bp
00000F90  AF                scasw
00000F91  FC                cld
00000F92  03FA              add di,dx
00000F94  41                inc cx
00000F95  EA41BFEA41        jmp word 0x41ea:word 0xbf41
00000F9A  AF                scasw
00000F9B  BA43AE            mov dx,0xae43
00000F9E  BC3AFA            mov sp,0xfa3a
00000FA1  EA41FAFF11        jmp word 0x11ff:word 0xfa41
00000FA6  FF                db 0xff
00000FA7  EABEAEAF41        jmp word 0x41af:word 0xaebe
00000FAC  80EEEA            sub dh,0xea
00000FAF  42                inc dx
00000FB0  AF                scasw
00000FB1  C00FFB            ror byte [bx],byte 0xfb
00000FB4  FA                cli
00000FB5  43                inc bx
00000FB6  AB                stosw
00000FB7  FE43AB            inc byte [bp+di-0x55]
00000FBA  EA41EA43AF        jmp word 0xaf43:word 0xea41
00000FBF  F01122            lock adc [bp+si],sp
00000FC2  0FEEBAAFC0        pmaxsw mm7,[bp+si-0x3f51]
00000FC7  3E41              ds inc cx
00000FC9  FB                sti
00000FCA  EABE423811        jmp word 0x1138:word 0x42be
00000FCF  0FAFBAAFBF        imul di,[bp+si-0x4051]
00000FD4  133F              adc di,[bx]
00000FD6  EAFF41FAA0        jmp word 0xa0fa:word 0x41ff
00000FDB  E83F42            call 0x521d
00000FDE  B002              mov al,0x2
00000FE0  110F              adc [bx],cx
00000FE2  A241FA            mov [0xfa41],al
00000FE5  BFFAAB            mov di,0xabfa
00000FE8  FA                cli
00000FE9  41                inc cx
00000FEA  EBEE              jmp 0xfda
00000FEC  A0EABA            mov al,[0xbaea]
00000FEF  C3                ret
00000FF0  BAABF0            mov dx,0xf0ab
00000FF3  1102              adc [bp+si],ax
00000FF5  8A803B41          mov al,[bx+si+0x413b]
00000FF9  F01103            lock adc [bp+di],ax
00000FFC  AF                scasw
00000FFD  BE41AB            mov si,0xab41
00001000  AE                scasb
00001001  A3A002            mov [0x2a0],ax
00001004  80FEEA            cmp dh,0xea
00001007  BBC002            mov bx,0x2c0
0000100A  0280033F          add al,[bx+si+0x3f03]
0000100E  FA                cli
0000100F  FE                db 0xfe
00001010  AB                stosw
00001011  A83E              test al,0x3e
00001013  8EEA              mov gs,dx
00001015  AB                stosw
00001016  C8082011          enter word 0x2008,byte 0x11
0000101A  EBAB              jmp 0xfc7
0000101C  AF                scasw
0000101D  C00FFB            ror byte [bx],byte 0xfb
00001020  AC                lodsb
00001021  41                inc cx
00001022  BEABF0            mov si,0xf0ab
00001025  0E                push cs
00001026  AC                lodsb
00001027  11FF              adc di,di
00001029  AC                lodsb
0000102A  1102              adc [bp+si],ax
0000102C  2028              and [bx+si],ch
0000102E  080EEF11          or [0x11ef],cl
00001032  0AA0FBEA          or ah,[bx+si-0x1505]
00001036  41                inc cx
00001037  AF                scasw
00001038  AE                scasb
00001039  BA380A            mov dx,0xa38
0000103C  E80EAE            call 0xbe4d
0000103F  BC1188            mov sp,0x8811
00001042  2A41BC            sub al,[bx+di-0x44]
00001045  0C0F              or al,0xf
00001047  EBEA              jmp 0x1033
00001049  41                inc cx
0000104A  03EB              add bp,bx
0000104C  BAAC22            mov dx,0x22ac
0000104F  22F0              and dh,al
00001051  E238              loop 0x108b
00001053  AE                scasb
00001054  F01120            lock adc [bx+si],sp
00001057  11BE2E41          adc [bp+0x412e],di
0000105B  0C08              or al,0x8
0000105D  03B0020E          add si,[bx+si+0xe02]
00001061  EC                in al,dx
00001062  1188A008          adc [bx+si+0x8a0],cx
00001066  A203F0            mov [0xf003],al
00001069  0288110E          add cl,[bx+si+0xe11]
0000106D  BF41FA            mov di,0xfa41
00001070  EE                out dx,al
00001071  A3113A            mov [0x3a11],ax
00001074  EAC3EFEC02        jmp word 0x2ec:word 0xefc3
00001079  2041AB            and [bx+di-0x55],al
0000107C  C0                db 0xc0
0000107D  3011              xor [bx+di],dl
0000107F  3EBA41A0          ds mov dx,0xa041
00001083  E8BAB0            call 0xc140
00001086  08AF0ABF          or [bx-0x40f6],ch
0000108A  FA                cli
0000108B  EB11              jmp 0x109e
0000108D  08CA              or dl,cl
0000108F  80CB8A            or bl,0x8a
00001092  A31208            mov [0x812],ax
00001095  118003B0          adc [bx+si-0x4ffd],ax
00001099  0222              add ah,[bp+si]
0000109B  41                inc cx
0000109C  800283            add byte [bp+si],0x83
0000109F  80202A            and byte [bx+si],0x2a
000010A2  A003C0            mov al,[0xc003]
000010A5  FE41EA            inc byte [bx+di-0x16]
000010A8  8002AF            add byte [bp+si],0xaf
000010AB  A2C3FE            mov [0xfec3],al
000010AE  B022              mov al,0x22
000010B0  1122              adc [bp+si],sp
000010B2  AF                scasw
000010B3  41                inc cx
000010B4  3011              xor [bx+di],dl
000010B6  0342A8            add ax,[bp+si-0x58]
000010B9  38BAB041          cmp [bp+si+0x41b0],bh
000010BD  30AFC00F          xor [bx+0xfc0],ch
000010C1  2BC8              sub cx,ax
000010C3  41                inc cx
000010C4  A828              test al,0x28
000010C6  0C8A              or al,0x8a
000010C8  3011              xor [bx+di],dl
000010CA  2208              and cl,[bx+si]
000010CC  02A203B2          add ah,[bp+si-0x4dfd]
000010D0  0241A2            add al,[bx+di-0x5e]
000010D3  802280            and byte [bp+si],0x80
000010D6  C28A11            ret word 0x118a
000010D9  028C1123          add cl,[si+0x2311]
000010DD  AF                scasw
000010DE  EE                out dx,al
000010DF  B00A              mov al,0xa
000010E1  BA2BC3            mov dx,0xc32b
000010E4  BAC00A            mov dx,0xac0
000010E7  20ABAE41          and [bp+di+0x41ae],ch
000010EB  E2A0              loop 0x108d
000010ED  11EB              adc bx,bp
000010EF  42                inc dx
000010F0  3B41B0            cmp ax,[bx+di-0x50]
000010F3  A0BAF0            mov al,[0xf0ba]
000010F6  110E2C3F          adc [0x3f2c],cx
000010FA  EAE880112F        jmp word 0x2f11:word 0x80e8
000010FF  11820822          adc [bp+si+0x2208],ax
00001103  8AA011F2          mov ah,[bx+si-0xdef]
00001107  82                db 0x82
00001108  41                inc cx
00001109  2A20              sub ah,[bx+si]
0000110B  2AA80822          sub ch,[bx+si+0x2208]
0000110F  8A412C            mov al,[bx+di+0x2c]
00001112  0241F8            add al,[bx+di-0x8]
00001115  BAB08A            mov dx,0x8ab0
00001118  B8ABC0            mov ax,0xc0ab
0000111B  FB                sti
0000111C  110A              adc [bp+si],cx
0000111E  288BAE41          sub [bp+di+0x41ae],cl
00001122  E88A80            call 0x91af
00001125  EB42              jmp 0x1169
00001127  BA2AC2            mov dx,0xc22a
0000112A  A2EB12            mov [0x12eb],al
0000112D  0BAC113A          or bp,[si+0x3a11]
00001131  BA8808            mov dx,0x888
00001134  2B11              sub dx,[bx+di]
00001136  8880A80A          mov [bx+si+0xaa8],al
0000113A  B808C8            mov ax,0xc808
0000113D  808841A80A        or byte [bx+si-0x57bf],0xa
00001142  0880110A          or [bx+si+0xa11],al
00001146  88B0288A          mov [bx+si-0x75d8],dh
0000114A  03BAC023          add di,[bp+si+0x23c0]
0000114E  3223              xor ah,[bp+di]
00001150  C2FB11            ret word 0x11fb
00001153  8820              mov [bx+si],ah
00001155  22EE              and ch,dh
00001157  41                inc cx
00001158  E222              loop 0x117c
0000115A  203A              and [bp+si],bh
0000115C  FA                cli
0000115D  41                inc cx
0000115E  A2EACA            mov [0xcaea],al
00001161  8BFC              mov di,sp
00001163  13B0110E          adc si,[bx+si+0xe11]
00001167  8E22              mov fs,word [bp+si]
00001169  41                inc cx
0000116A  0C20              or al,0x20
0000116C  228A2222          and cl,[bp+si+0x2222]
00001170  224122            and al,[bx+di+0x22]
00001173  2022              and [bp+si],ah
00001175  41                inc cx
00001176  2212              and dl,[bp+si]
00001178  0A22              or ah,[bp+si]
0000117A  2222              and ah,[bp+si]
0000117C  B002              mov al,0x2
0000117E  2211              and dl,[bx+di]
00001180  3A0A              cmp cl,[bp+si]
00001182  41                inc cx
00001183  FA                cli
00001184  8ECB              mov cs,bx
00001186  FC                cld
00001187  2820              sub [bx+si],ah
00001189  A841              test al,0x41
0000118B  FA                cli
0000118C  41                inc cx
0000118D  EA41A83EEF        jmp word 0xef3e:word 0xa841
00001192  41                inc cx
00001193  A8BA              test al,0xba
00001195  CA8FC0            retf word 0xc08f
00001198  13FA              adc di,dx
0000119A  8803              mov [bp+di],al
0000119C  BA4120            mov dx,0x2041
0000119F  8CA82A8A          mov word [bx+si-0x75d6],gs
000011A3  A02BEA            mov al,[0xea2b]
000011A6  20420A            and [bp+si+0xa],al
000011A9  42                inc dx
000011AA  A02A20            mov al,[0x202a]
000011AD  43                inc bx
000011AE  C02A41            shr byte [bp+si],byte 0x41
000011B1  112E2222          adc [0x2222],bp
000011B5  E22F              loop 0x11e6
000011B7  0330              add si,[bx+si]
000011B9  2008              and [bx+si],cl
000011BB  203EF2AB          and [0xabf2],bh
000011BF  2222              and ah,[bp+si]
000011C1  203F              and [bx],bh
000011C3  BAEAAB            mov dx,0xabea
000011C6  BB0A3A            mov bx,0x3a0a
000011C9  C00222            rol byte [bp+si],byte 0x22
000011CC  23F2              and si,dx
000011CE  2211              and dl,[bx+di]
000011D0  E222              loop 0x11f4
000011D2  EA2222220A        jmp word 0xa22:word 0x2222
000011D7  023F              add bh,[bx]
000011D9  222B              and ch,[bp+di]
000011DB  2222              and ah,[bp+si]
000011DD  022A              add ch,[bp+si]
000011DF  A01122            mov al,[0x2211]
000011E2  2A22              sub ah,[bp+si]
000011E4  223F              and bh,[bx]
000011E6  0A02              or al,[bp+si]
000011E8  2280FB42          and al,[bx+si+0x42fb]
000011EC  EABB0BB820        jmp word 0x20b8:word 0xbbb
000011F1  8022BE            and byte [bp+si],0xbe
000011F4  FA                cli
000011F5  AF                scasw
000011F6  42                inc dx
000011F7  AB                stosw
000011F8  EE                out dx,al
000011F9  FE                db 0xfe
000011FA  BAEA3B            mov dx,0x3bea
000011FD  2AEF              sub ch,bh
000011FF  110A              adc [bp+si],cx
00001201  42                inc dx
00001202  2A41A0            sub al,[bx+di-0x60]
00001205  2E41              cs inc cx
00001207  BA422A            mov dx,0x2a42
0000120A  8A2A              mov ch,[bp+si]
0000120C  EE                out dx,al
0000120D  43                inc bx
0000120E  AE                scasb
0000120F  E041              loopne 0x1252
00001211  8044BFC0          add byte [si-0x41],0xc0
00001215  2A824120          sub al,[bp+si+0x2041]
00001219  EC                in al,dx
0000121A  A222E2            mov [0xe222],al
0000121D  EC                in al,dx
0000121E  0F                db 0x0f
0000121F  2020              and [bx+si],ah
00001221  22A232FA          and ah,[bp+si-0x5ce]
00001225  BF2222            mov di,0x2222
00001228  FE                db 0xfe
00001229  2BEA              sub bp,dx
0000122B  BAEAEC            mov dx,0xecea
0000122E  2AEC              sub ch,ah
00001230  0220              add ah,[bx+si]
00001232  1122              adc [bp+si],sp
00001234  2222              and ah,[bp+si]
00001236  2033              and [bp+di],dh
00001238  23EB              and bp,bx
0000123A  E232              loop 0x126e
0000123C  0211              add dl,[bx+di]
0000123E  23EE              and bp,si
00001240  222A              and ch,[bp+si]
00001242  A3223E            mov [0x3e22],ax
00001245  2202              and al,[bp+si]
00001247  2222              and ah,[bp+si]
00001249  2AFF              sub bh,bh
0000124B  C00222            rol byte [bp+si],byte 0x22
0000124E  2022              and [bp+si],ah
00001250  803888            cmp byte [bx+si],0x88
00001253  8B88CC3B          mov cx,[bx+si+0x3bcc]
00001257  80888080CB        or byte [bx+si-0x7f80],0xcb
0000125C  FA                cli
0000125D  AC                lodsb
0000125E  B88F88            mov ax,0x888f
00001261  88BEAEEA          mov [bp-0x1552],bh
00001265  8EA8EC08          mov gs,word [bx+si+0x8ec]
00001269  118888C8          adc [bx+si-0x3778],cx
0000126D  88880B8C          mov [bx+si-0x73f5],cl
00001271  BFBF8B            mov di,0x8bbf
00001274  C0118B            rcl byte [bx+di],byte 0x8b
00001277  8CC8              mov ax,cs
00001279  8BF8              mov di,ax
0000127B  88CC              mov ah,cl
0000127D  800888            or byte [bx+si],0x88
00001280  88BF1280          mov [bx-0x7fee],bh
00001284  88880820          mov [bx+si+0x2008],cl
00001288  3BA2AB2F          cmp sp,[bp+si+0x2fab]
0000128C  EC                in al,dx
0000128D  2F                das
0000128E  0222              add ah,[bp+si]
00001290  0A82EBE2          or al,[bp+si-0x1d15]
00001294  3EE2BA            loop 0x1251
00001297  222A              and ch,[bp+si]
00001299  A3CEBA            mov [0xbace],ax
0000129C  8EABB020          mov gs,word [bp+di+0x20b0]
000012A0  2AA24122          sub ah,[bp+si+0x2241]
000012A4  2AA20A2E          sub ah,[bp+si+0x2e0a]
000012A8  2F                das
000012A9  FF                db 0xff
000012AA  BA320A            mov dx,0xa32
000012AD  FE                db 0xfe
000012AE  B332              mov bl,0x32
000012B0  2AFF              sub bh,bh
000012B2  EA2E0EA2EA        jmp word 0xeaa2:word 0xe2e
000012B7  2F                das
000012B8  C00212            rol byte [bp+si],byte 0x12
000012BB  22A20A88          and ah,[bp+si-0x77f6]
000012BF  3088BCBB          xor [bx+si-0x4444],cl
000012C3  B0BB              mov al,0xbb
000012C5  08800888          or [bx+si-0x77f8],al
000012C9  CB                retf
000012CA  C8BCC8C8          enter word 0xc8bc,byte 0xc8
000012CE  888888EE          mov [bx+si-0x1178],cl
000012D2  BABAA3            mov dx,0xa3ba
000012D5  C080888888        rol byte [bx+si-0x7778],byte 0x88
000012DA  88888803          mov [bx+si+0x388],cl
000012DE  B888CB            mov ax,0xcb88
000012E1  FF8C0FCB          dec word [si-0x34f1]
000012E5  C3                ret
000012E6  B888BF            mov ax,0xbf88
000012E9  CC                int3
000012EA  8B0C              mov cx,[si]
000012EC  88BBF03C          mov [bp+di+0x3cf0],bh
000012F0  C8880808          enter word 0x888,byte 0x8
000012F4  88884132          mov [bx+si+0x3241],cl
000012F8  2BEB              sub bp,bx
000012FA  EF                out dx,ax
000012FB  C23B0A            ret word 0xa3b
000012FE  82                db 0x82
000012FF  200A              and [bp+si],cl
00001301  EBEB              jmp 0x12ee
00001303  F2EBEA            repne jmp 0x12f0
00001306  41                inc cx
00001307  F32AB3BA41        rep sub dh,[bp+di+0x41ba]
0000130C  8FC2              pop dx
0000130E  A2A22A            mov [0x2aa2],al
00001311  42                inc dx
00001312  A22A83            mov [0x832a],al
00001315  EAA2EABFEF        jmp word 0xefbf:word 0xeaa2
0000131A  BE3C11            mov si,0x113c
0000131D  FA                cli
0000131E  B22B              mov dl,0x2b
00001320  BEAEA2            mov si,0xa2ae
00001323  2EFC              cs cld
00001325  1103              adc [bp+di],ax
00001327  C3                ret
00001328  B80202            mov ax,0x202
0000132B  2A828802          sub al,[bp+si+0x288]
0000132F  AE                scasb
00001330  AC                lodsb
00001331  BC0BEE            mov sp,0xee0b
00001334  2011              and [bx+di],dl
00001336  A841              test al,0x41
00001338  EF                out dx,ax
00001339  CF                iret
0000133A  AB                stosw
0000133B  AE                scasb
0000133C  E08F              loopne 0x12cd
0000133E  42                inc dx
0000133F  B8AE41            mov ax,0x41ae
00001342  8F                db 0x8f
00001343  118842A0          adc [bx+si-0x5fbe],cx
00001347  88428C            mov [bp+si-0x74],al
0000134A  C841BAA0          enter word 0xba41,byte 0xa0
0000134E  BBBEC0            mov bx,0xc0be
00001351  11CC              adc sp,cx
00001353  BA41FC            mov dx,0xfc41
00001356  8F41AB            pop word [bx+di-0x55]
00001359  C00880            ror byte [bx+si],byte 0x80
0000135C  3C2F              cmp al,0x2f
0000135E  C8A2EAA0          enter word 0xeaa2,byte 0xa0
00001362  220A              and cl,[bp+si]
00001364  2EBBC02B          cs mov bx,0x2bc0
00001368  F8                clc
00001369  2820              sub [bx+si],ah
0000136B  283B              sub [bp+di],bh
0000136D  AF                scasw
0000136E  EE                out dx,al
0000136F  2A3F              sub bh,[bx]
00001371  AB                stosw
00001372  F22F              repne das
00001374  FF0F              dec word [bx]
00001376  AE                scasb
00001377  BA8F0A            mov dx,0xa8f
0000137A  222A              and ch,[bp+si]
0000137C  110A              adc [bp+si],cx
0000137E  202A              and [bp+si],ch
00001380  2AA3222A          sub ah,[bp+di+0x2a22]
00001384  3A413F            cmp al,[bx+di+0x3f]
00001387  EF                out dx,ax
00001388  1120              adc [bx+si],sp
0000138A  EE                out dx,al
0000138B  3A2A              cmp ch,[bp+si]
0000138D  AE                scasb
0000138E  222A              and ch,[bp+si]
00001390  3F                aas
00001391  0220              add ah,[bx+si]
00001393  1103              adc [bp+di],ax
00001395  0233              add dh,[bp+di]
00001397  2A3EA288          sub bh,[0x88a2]
0000139B  888FBC11          mov [bx+0x11bc],cl
0000139F  BC1188            mov sp,0x8811
000013A2  1180BB8F          adc [bx+si-0x7045],ax
000013A6  F8                clc
000013A7  8CCB              mov bx,cs
000013A9  8C8BF011          mov word [bp+di+0x11f0],cs
000013AD  0FAB412F          bts [bx+di+0x2f],ax
000013B1  08801108          or [bx+si+0x811],al
000013B5  8888128B          mov [bx+si-0x74ee],cl
000013B9  88888C88          mov [bx+si-0x7774],cl
000013BD  8CB00811          mov word [bx+si+0x1108],segr6
000013C1  B8B888            mov ax,0x88b8
000013C4  8C8F88BC          mov word [bx-0x4378],cs
000013C8  88888811          mov [bx+si+0x1188],cl
000013CC  C88B888B          enter word 0x888b,byte 0x8b
000013D0  C0222A            shl byte [bp+si],byte 0x2a
000013D3  2F                das
000013D4  2C02              sub al,0x2
000013D6  3C11              cmp al,0x11
000013D8  2002              and [bp+si],al
000013DA  0AE3              or ah,bl
000013DC  3F                aas
000013DD  322E3EF2          xor ch,[0xf23e]
000013E1  FC                cld
000013E2  120EEBBA          adc cl,[0xbaeb]
000013E6  3C11              cmp al,0x11
000013E8  022A              add ch,[bp+si]
000013EA  2222              and ah,[bp+si]
000013EC  2202              and al,[bp+si]
000013EE  2002              and [bp+si],al
000013F0  222A              and ch,[bp+si]
000013F2  2EE22F            loop 0x1424
000013F5  C00220            rol byte [bp+si],byte 0x20
000013F8  32FA              xor bh,dl
000013FA  2222              and ah,[bp+si]
000013FC  2E2AEE            cs sub ch,dh
000013FF  22E2              and ah,dl
00001401  2A20              sub ah,[bx+si]
00001403  E222              loop 0x1427
00001405  EA22328888        jmp word 0x8888:word 0x3222
0000140A  38B008FC          cmp [bx+si-0x3f8],dh
0000140E  128808BC          adc cl,[bx+si-0x43f8]
00001412  FF                db 0xff
00001413  B888FF            mov ax,0xff88
00001416  8B13              mov dx,[bp+di]
00001418  03EA              add bp,dx
0000141A  BA3C11            mov dx,0x113c
0000141D  888FCBC8          mov [bx-0x3735],cl
00001421  F8                clc
00001422  88888088          mov [bx+si-0x7780],cl
00001426  118CB88F          adc [si-0x7048],cx
0000142A  C088883CF8        ror byte [bx+si+0x3c88],byte 0xf8
0000142F  88BFB888          mov [bx-0x7748],bh
00001433  BB88C8            mov bx,0xc888
00001436  8B8038FC          mov ax,[bx+si-0x3c8]
0000143A  BC88B8            mov sp,0xb888
0000143D  22A23030          and ah,[bp+si+0x3030]
00001441  22F2              and dh,dl
00001443  2022              and [bp+si],ah
00001445  2022              and [bp+si],ah
00001447  E2F3              loop 0x143c
00001449  E2B3              loop 0x13fe
0000144B  322C              xor ch,[si]
0000144D  1102              adc [bp+si],ax
0000144F  1123              adc [bp+di],sp
00001451  BBBAFE            mov bx,0xfeba
00001454  2222              and ah,[bp+si]
00001456  AE                scasb
00001457  FF23              jmp word near [bp+di]
00001459  22A22220          and ah,[bp+si+0x2022]
0000145D  11A002A2          adc [bx+si-0x5dfe],sp
00001461  3322              xor sp,[bp+si]
00001463  2011              and [bx+di],dl
00001465  2E                cs
00001466  FE                db 0xfe
00001467  222F              and ch,[bx]
00001469  F2A232E2          repne mov [0xe232],al
0000146D  EAE22032C3        jmp word 0xc332:word 0x20e2
00001472  A2222E            mov [0x2e22],al
00001475  8888CCB0          mov [bx+si-0x4f34],cl
00001479  88B01180          mov [bx+si-0x7fef],dh
0000147D  11BF8F8F          adc [bx-0x7071],di
00001481  C8CCCBB0          enter word 0xcbcc,byte 0xb0
00001485  130B              adc cx,[bp+di]
00001487  EF                out dx,ax
00001488  AB                stosw
00001489  EC                in al,dx
0000148A  888BCBBC          mov [bp+di-0x4335],cl
0000148E  FC                cld
0000148F  8B888888          mov cx,[bx+si-0x7778]
00001493  88888AB8          mov [bx+si-0x4776],cl
00001497  BB0811            mov bx,0x1108
0000149A  888CCF88          mov [si-0x7731],cl
0000149E  CF                iret
0000149F  BCCBC8            mov sp,0xc8cb
000014A2  CA41E8            retf word 0xe841
000014A5  880F              mov [bx],cl
000014A7  11FB              adc bx,di
000014A9  888B2220          mov [bp+di+0x2022],cl
000014AD  E2C0              loop 0x146f
000014AF  23F2              and si,dx
000014B1  2011              and [bx+di],dl
000014B3  3F                aas
000014B4  E232              loop 0x14e8
000014B6  2320              and sp,[bx+si]
000014B8  0F2E30            ucomiss xmm6,dword [bx+si]
000014BB  2011              and [bx+di],dl
000014BD  2223              and ah,[bp+di]
000014BF  BF41EE            mov di,0xee41
000014C2  2220              and ah,[bx+si]
000014C4  3E                ds
000014C5  FE                db 0xfe
000014C6  E3EC              jcxz 0x14b4
000014C8  0222              add ah,[bp+si]
000014CA  2222              and ah,[bp+si]
000014CC  2222              and ah,[bp+si]
000014CE  AE                scasb
000014CF  E302              jcxz 0x14d3
000014D1  2222              and ah,[bp+si]
000014D3  2EEF              cs out dx,ax
000014D5  E323              jcxz 0x14fa
000014D7  EC                in al,dx
000014D8  33E2              xor sp,dx
000014DA  3AAFA222          cmp ch,[bx+0x22a2]
000014DE  0F110F            movups oword [bx],xmm1
000014E1  2223              and ah,[bp+di]
000014E3  8888C011          mov [bx+si+0x11c0],cl
000014E7  8C0C              mov word [si],cs
000014E9  C088F88BC0        ror byte [bx+si-0x7408],byte 0xc0
000014EE  8883F00C          mov [bp+di+0xcf0],al
000014F2  C01188            rcl byte [bx+di],byte 0x88
000014F5  8088FBEFAC        or byte [bx+si-0x1005],0xac
000014FA  888803BF          mov [bx+si-0x40fd],cl
000014FE  8C13              mov word [bp+di],ss
00001500  88888882          mov [bx+si-0x7d78],cl
00001504  B8C012            mov ax,0x12c0
00001507  888BCFC3          mov [bp+di-0x3c31],cl
0000150B  88FC              mov ah,bh
0000150D  CC                int3
0000150E  C0BBAE8880        sar byte [bp+di-0x7752],byte 0x80
00001513  80110C            adc byte [bx+di],0xc
00001516  11882220          adc [bx+si+0x2022],cx
0000151A  32C2              xor al,dl
0000151C  2F                das
0000151D  203E0322          and [0x2203],bh
00001521  FC                cld
00001522  0222              add ah,[bp+si]
00001524  FE                db 0xfe
00001525  200EC202          and [0x2c2],cl
00001529  2002              and [bp+si],al
0000152B  22C8              and cl,al
0000152D  EF                out dx,ax
0000152E  AE                scasb
0000152F  2222              and ah,[bp+si]
00001531  11BE3022          adc [bp+0x2230],di
00001535  2002              and [bp+si],al
00001537  2222              and ah,[bp+si]
00001539  2002              and [bp+si],al
0000153B  AE                scasb
0000153C  E220              loop 0x155e
0000153E  0222              add ah,[bp+si]
00001540  2333              and si,[bp+di]
00001542  C3                ret
00001543  22EE              and ch,dh
00001545  3302              xor ax,[bp+si]
00001547  3B41A0            cmp ax,[bx+di-0x60]
0000154A  0222              add ah,[bp+si]
0000154C  220C              and cl,[si]
0000154E  C22211            ret word 0x1122
00001551  888B12FF          mov [bp+di-0xee],cl
00001555  C80F3FB8          enter word 0x3f0f,byte 0xb8
00001559  883F              mov [bx],bh
0000155B  11A8B8C0          adc [bx+si-0x3f48],bp
0000155F  11888811          adc [bx+si+0x1188],cx
00001563  FA                cli
00001564  FA                cli
00001565  B81288            mov ax,0x8812
00001568  AC                lodsb
00001569  C01188            rcl byte [bx+di],byte 0x88
0000156C  8812              mov [bp+si],dl
0000156E  888AB311          mov [bp+si+0x11b3],cl
00001572  888812BB          mov [bx+si-0x44ee],cl
00001576  CB                retf
00001577  C0FCFB            sar ah,byte 0xfb
0000157A  880A              mov [bp+si],cl
0000157C  41                inc cx
0000157D  88881203          mov [bx+si+0x312],cl
00001581  C8112230          enter word 0x2211,byte 0x30
00001585  3002              xor [bp+si],al
00001587  2203              and al,[bp+di]
00001589  3E2EE2C0          loop 0x154d
0000158D  03E2              add sp,dx
0000158F  2220              and ah,[bx+si]
00001591  C3                ret
00001592  1122              adc [bp+si],sp
00001594  1102              adc [bp+si],ax
00001596  22FA              and bh,dl
00001598  2AB22222          sub dh,[bp+si+0x2222]
0000159C  11EE              adc si,bp
0000159E  E222              loop 0x15c2
000015A0  1102              adc [bp+si],ax
000015A2  2222              and ah,[bp+si]
000015A4  1102              adc [bp+si],ax
000015A6  AF                scasw
000015A7  2211              and dl,[bx+di]
000015A9  0222              add ah,[bp+si]
000015AB  2233              and dh,[bp+di]
000015AD  CE                into
000015AE  32FE              xor bh,dh
000015B0  C3                ret
000015B1  022EBA11          add ch,[0x11ba]
000015B5  0222              add ah,[bp+si]
000015B7  2203              and al,[bp+di]
000015B9  0F                db 0x0f
000015BA  228BC8B8          and cl,[bp+di-0x4738]
000015BE  088888CB          or [bx+si-0x3478],cl
000015C2  8F                db 0x8f
000015C3  8B88BCC8          mov cx,[bx+si-0x3744]
000015C7  88A8CB11          mov [bx+si+0x11cb],ch
000015CB  08888888          or [bx+si-0x7778],cl
000015CF  CA2AB8            retf word 0xb82a
000015D2  888888A8          mov [bx+si-0x5778],cl
000015D6  88888888          mov [bx+si-0x7778],cl
000015DA  02888888          add cl,[bx+si-0x7778]
000015DE  BB8888            mov bx,0x8888
000015E1  8888888F          mov [bx+si-0x7078],cl
000015E5  8CB8FBCC          mov word [bx+si-0x3305],segr7
000015E9  888ABA88          mov [bp+si-0x7746],cl
000015ED  88888883          mov [bx+si-0x7c78],cl
000015F1  B0C8              mov al,0xc8
000015F3  022F              add ch,[bx]
000015F5  E002              loopne 0x15f9
000015F7  2202              and al,[bp+si]
000015F9  E32E              jcxz 0x1629
000015FB  0322              add sp,[bp+si]
000015FD  E0E2              loopne 0x15e1
000015FF  22A32315          and ah,[bp+di+0x1523]
00001603  CC                int3
00001604  C2C002            ret word 0x2c0
00001607  A01122            mov al,[0x2211]
0000160A  C01420            rcl byte [si],byte 0x20
0000160D  12EB              adc ch,bl
0000160F  1202              adc al,[bp+si]
00001611  E0A0              loopne 0x15b3
00001613  0CCC              or al,0xcc
00001615  0F                db 0x0f
00001616  0C20              or al,0x20
00001618  0222              add ah,[bp+si]
0000161A  BA22A0            mov dx,0xa022
0000161D  1108              adc [bx+si],cx
0000161F  80F03C            xor al,0x3c
00001622  8BF8              mov di,ax
00001624  C00888            ror byte [bx+si],byte 0x88
00001627  08B8CC8C          or [bx+si-0x7334],bh
0000162B  8B80F841          mov ax,[bx+si+0x41f8]
0000162F  8B8B110A          mov cx,[bp+di+0xa11]
00001633  0A08              or cl,[bx+si]
00001635  283F              sub [bx],bh
00001637  02F0              add dh,al
00001639  A01188            mov al,[0x8811]
0000163C  3A802A08          cmp al,[bx+si+0x82a]
00001640  2011              and [bx+di],dl
00001642  0211              add dl,[bx+di]
00001644  20FF              and bh,bh
00001646  20882088          and [bx+si-0x77e0],cl
0000164A  220F              and cl,[bx]
0000164C  3220              xor ah,[bx+si]
0000164E  BB2888            mov bx,0x8828
00001651  0ABA2080          or bh,[bp+si-0x7fe0]
00001655  2222              and ah,[bp+si]
00001657  20C0              and al,al
00001659  0311              add dx,[bx+di]
0000165B  3F                aas
0000165C  11A8A20A          adc [bx+si+0xaa2],bp
00001660  B0F0              mov al,0xf0
00001662  0C0C              or al,0xc
00001664  C0                db 0xc0
00001665  304183            xor [bx+di-0x7d],al
00001668  0C13              or al,0x13
0000166A  0280330A          add al,[bx+si+0xa33]
0000166E  B012              mov al,0x12
00001670  084182            or [bx+di-0x7e],al
00001673  1322              adc sp,[bp+si]
00001675  1122              adc [bp+si],sp
00001677  11CB              adc bx,cx
00001679  11820880          adc [bp+si-0x7ff8],ax
0000167D  2003              and [bp+di],al
0000167F  F0                lock
00001680  883A              mov [bp+si],bh
00001682  800882            or byte [bx+si],0x82
00001685  E80202            call 0x188a
00001688  13C0              adc ax,ax
0000168A  118FC022          adc [bx+0x22c0],cx
0000168E  2220              and ah,[bx+si]
00001690  0BB8F88C          or di,[bx+si-0x7308]
00001694  8CC0              mov ax,es
00001696  0C41              or al,0x41
00001698  8C8C1533          mov word [si+0x3315],cs
0000169C  08B01328          or [bx+si+0x2813],dh
000016A0  C01502            rcl byte [di],byte 0x2
000016A3  20FB              and bl,bh
000016A5  1503F0            adc ax,0xf003
000016A8  110B              adc [bp+di],cx
000016AA  80110A            adc byte [bx+di],0xa
000016AD  E81120            call 0x36c1
000016B0  153012            adc ax,0x1230
000016B3  88A02BB0          mov [bx+si-0x4fd5],ah
000016B7  3030              xor [bx+si],dh
000016B9  30C0              xor al,al
000016BB  0308              add cx,[bx+si]
000016BD  0C0C              or al,0xc
000016BF  153CCA            adc ax,0xca3c
000016C2  B013              mov al,0x13
000016C4  2A801402          sub al,[bx+si+0x214]
000016C8  12CE              adc cl,dh
000016CA  150330            adc ax,0x3003
000016CD  1102              adc [bp+si],ax
000016CF  120A              adc cl,[bp+si]
000016D1  E817B0            call 0xc6eb
000016D4  08822A88          or [bp+si-0x77d6],al
000016D8  2F                das
000016D9  B8B8B8            mov ax,0xb8b8
000016DC  BB1103            mov bx,0x311
000016DF  88B8B015          mov [bx+si+0x15b0],bh
000016E3  3C8A              cmp al,0x8a
000016E5  B013              mov al,0x13
000016E7  2A18              sub bl,[bx+si]
000016E9  FE                db 0xfe
000016EA  16                push ss
000016EB  C01102            rcl byte [bx+di],byte 0x2
000016EE  120A              adc cl,[bp+si]
000016F0  E81120            call 0x3704
000016F3  15C011            adc ax,0x11c0
000016F6  28A88AAE          sub [bx+si-0x5176],ch
000016FA  CF                iret
000016FB  3030              xor [bx+si],dh
000016FD  C21103            ret word 0x311
00001700  0B33              or si,[bp+di]
00001702  C0153E            rcl byte [di],byte 0x3e
00001705  EAC0132A18        jmp word 0x182a:word 0x13c0
0000170A  F216              repne push ss
0000170C  C0140A            rcl byte [si],byte 0xa
0000170F  E817C8            call 0xdf29
00001712  8822              mov [bp+si],ah
00001714  A28ABB            mov [0xbb8a],al
00001717  F0                lock
00001718  F8                clc
00001719  CB                retf
0000171A  8A11              mov dl,[bx+di]
0000171C  038B8C16          add cx,[bp+di+0x168c]
00001720  3BE2              cmp sp,dx
00001722  C0133A            rcl byte [bp+di],byte 0x3a
00001725  18CE              sbb dh,cl
00001727  16                push ss
00001728  C0140A            rcl byte [si],byte 0xa
0000172B  E817C0            call 0xd745
0000172E  41                inc cx
0000172F  82                db 0x82
00001730  41                inc cx
00001731  2BEB              sub bp,bx
00001733  110F              adc [bx],cx
00001735  0302              add ax,[bp+si]
00001737  12C3              adc al,bl
00001739  0C16              or al,0x16
0000173B  3BB2C013          cmp si,[bp+si+0x13c0]
0000173F  2B18              sub bx,[bx+si]
00001741  CE                into
00001742  16                push ss
00001743  C0140A            rcl byte [si],byte 0xa
00001746  A817              test al,0x17
00001748  88A222A2          mov [bp+si-0x5dde],ah
0000174C  2EAC              cs lodsb
0000174E  12FC              adc bh,ah
00001750  A812              test al,0x12
00001752  CB                retf
00001753  8C163B82          mov word [0x823b],ss
00001757  C01322            rcl byte [bp+di],byte 0x22
0000175A  18EE              sbb dh,ch
0000175C  1B02              sbb ax,[bp+si]
0000175E  E8172A            call 0x4178
00001761  280A              sub [bp+si],cl
00001763  88AEF012          mov [bp+0x12f0],ch
00001767  0F8812C3          js 0xda7d
0000176B  0C16              or al,0x16
0000176D  30E2              xor dl,ah
0000176F  C0132A            rcl byte [bp+di],byte 0x2a
00001772  17                pop ss
00001773  03B31B02          add si,[bp+di+0x21b]
00001777  EA172802A2        jmp word 0xa202:word 0x2817
0000177C  82                db 0x82
0000177D  BB1303            mov bx,0x313
00001780  2812              sub [bp+si],dl
00001782  CC                int3
00001783  0C16              or al,0x16
00001785  3E20B013FA        and [ds:bx+si-0x5ed],dh
0000178A  17                pop ss
0000178B  03CB              add cx,bx
0000178D  1B02              sbb ax,[bp+si]
0000178F  3A17              cmp dl,[bx]
00001791  02A81141          add ch,[bx+si+0x4111]
00001795  BB1303            mov bx,0x313
00001798  1203              adc al,[bp+di]
0000179A  0C30              or al,0x30
0000179C  16                push ss
0000179D  3E8CB0138B        mov word [ds:bx+si-0x74ed],segr6
000017A2  17                pop ss
000017A3  0323              add sp,[bp+di]
000017A5  1C41              sbb al,0x41
000017A7  17                pop ss
000017A8  82                db 0x82
000017A9  41                inc cx
000017AA  A241BF            mov [0xbf41],al
000017AD  14A8              adc al,0xa8
000017AF  1103              adc [bp+di],ax
000017B1  8CB0163C          mov word [bx+si+0x3c16],segr6
000017B5  8CB013AB          mov word [bx+si-0x54ed],segr6
000017B9  17                pop ss
000017BA  0323              add sp,[bp+di]
000017BC  1B02              sbb ax,[bp+si]
000017BE  3217              xor dl,[bx]
000017C0  22BFA841          and bh,[bx+0x41a8]
000017C4  EC                in al,dx
000017C5  1488              adc al,0x88
000017C7  1102              adc [bp+si],ax
000017C9  0830              or [bx+si],dh
000017CB  16                push ss
000017CC  332C              xor bp,[si]
000017CE  B013              mov al,0x13
000017D0  8A17              mov dl,[bx]
000017D2  0323              add sp,[bp+di]
000017D4  1C88              sbb al,0x88
000017D6  80168BC8F2        adc byte [0xc88b],0xf2
000017DB  AB                stosw
000017DC  EC                in al,dx
000017DD  14B0              adc al,0xb0
000017DF  1102              adc [bp+si],ax
000017E1  0AA01632          or ah,[bx+si+0x3216]
000017E5  2CB0              sub al,0xb0
000017E7  13BB1703          adc di,[bp+di+0x317]
000017EB  231B              and bx,[bp+di]
000017ED  0202              add al,[bp+si]
000017EF  17                pop ss
000017F0  2C11              sub al,0x11
000017F2  38ABF013          cmp [bp+di+0x13f0],ch
000017F6  0228              add ch,[bx+si]
000017F8  1102              adc [bp+si],ax
000017FA  28A0163A          sub [bx+si+0x3a16],ah
000017FE  BAB012            mov dx,0x12b0
00001801  0302              add ax,[bp+si]
00001803  17                pop ss
00001804  0330              add si,[bx+si]
00001806  C01A08            rcr byte [bp+si],byte 0x8
00001809  8080162C11        add byte [bx+si+0x2c16],0x11
0000180E  0A2B              or ch,[bp+di]
00001810  B014              mov al,0x14
00001812  8811              mov [bx+di],dl
00001814  022A              add ch,[bp+si]
00001816  A0163E            mov al,[0x3e16]
00001819  BEAC12            mov si,0x12ac
0000181C  0230              add dh,[bx+si]
0000181E  80160C80C0        adc byte [0x800c],0xc0
00001823  1A02              sbb al,[bp+si]
00001825  8817              mov [bx],dl
00001827  B011              mov al,0x11
00001829  08AFB013          or [bx+0x13b0],ch
0000182D  0828              or [bx+si],ch
0000182F  1103              adc [bp+di],ax
00001831  2C8C              sub al,0x8c
00001833  16                push ss
00001834  0E                push cs
00001835  BEA812            mov si,0x12a8
00001838  028C8016          add cl,[si+0x1680]
0000183C  0F80C01A          jo 0x3300
00001840  0802              or [bp+si],al
00001842  2016B011          and [0x11b0],dl
00001846  0E                push cs
00001847  2F                das
00001848  B014              mov al,0x14
0000184A  2811              sub [bx+di],dl
0000184C  0822              or [bp+si],ah
0000184E  88160AAC          mov [0xac0a],dl
00001852  8812              mov [bp+si],dl
00001854  0820              or [bx+si],ah
00001856  2016028C          and [0x8c02],dl
0000185A  801A02            sbb byte [bp+si],0x2
0000185D  2020              and [bx+si],ah
0000185F  16                push ss
00001860  B011              mov al,0x11
00001862  08AFC014          or [bx+0x14c0],ch
00001866  0811              or [bx+di],dl
00001868  0C08              or al,0x8
0000186A  28160ABA          sub [0xba0a],dl
0000186E  2813              sub [bp+di],dl
00001870  82                db 0x82
00001871  17                pop ss
00001872  0AC8              or cl,al
00001874  801A28            sbb byte [bp+si],0x28
00001877  0208              add cl,[bx+si]
00001879  16                push ss
0000187A  B011              mov al,0x11
0000187C  022EC013          add ch,[0x13c0]
00001880  0802              or [bp+si],al
00001882  120C              adc cl,[si]
00001884  08160EB8          or [0xb80e],dl
00001888  8812              mov [bp+si],dl
0000188A  0A0A              or cl,[bp+si]
0000188C  80160CC8A0        adc byte [0xc80c],0xa0
00001891  1A28              sbb ch,[bx+si]
00001893  208216C0          and [bp+si-0x3fea],al
00001897  1108              adc [bx+si],cx
00001899  AE                scasb
0000189A  C01308            rcl byte [bp+di],byte 0x8
0000189D  1208              adc cl,[bx+si]
0000189F  0C08              or al,0x8
000018A1  16                push ss
000018A2  0E                push cs
000018A3  3A28              cmp ch,[bx+si]
000018A5  1202              adc al,[bp+si]
000018A7  1180163A          adc [bx+si+0x3a16],ax
000018AB  0820              or [bx+si],ah
000018AD  1A801108          sbb al,[bx+si+0x811]
000018B1  2015              and [di],dl
000018B3  C01122            rcl byte [bx+di],byte 0x22
000018B6  2EC016088888      rcl byte [cs:0x8808],byte 0x88
000018BC  16                push ss
000018BD  0A08              or cl,[bx+si]
000018BF  8812              mov [bp+si],dl
000018C1  0818              or [bx+si],bl
000018C3  2211              and dl,[bx+di]
000018C5  2019              and [bx+di],bl
000018C7  0A19              or bl,[bx+di]
000018C9  C01128            rcl byte [bx+di],byte 0x28
000018CC  BF1480            mov di,0x8014
000018CF  1208              adc cl,[bx+si]
000018D1  8802              mov [bp+si],al
000018D3  16                push ss
000018D4  0A22              or ah,[bp+si]
000018D6  021B              add bl,[bp+di]
000018D8  2308              and cx,[bx+si]
000018DA  081F              or [bx],bl
000018DC  16                push ss
000018DD  223F              and bh,[bx]
000018DF  17                pop ss
000018E0  08820216          or [bp+si+0x1602],al
000018E4  0E                push cs
000018E5  AE                scasb
000018E6  82                db 0x82
000018E7  1BE0              sbb sp,ax
000018E9  021E2817          add bl,[0x1728]
000018ED  08BB1980          or [bp+di-0x7fe7],bh
000018F1  801508            adc byte [di],0x8
000018F4  41                inc cx
000018F5  021B              add bl,[bp+di]
000018F7  A0021E            mov al,[0x1e02]
000018FA  0A17              or dl,[bx]
000018FC  2ABF1702          sub bh,[bx+0x217]
00001900  0220              add ah,[bx+si]
00001902  80150E            adc byte [di],0xe
00001905  2E8080190380      add byte [cs:bx+si+0x319],0x80
0000190B  11801D02          adc [bx+si+0x21d],ax
0000190F  17                pop ss
00001910  0AFC              or bh,ah
00001912  17                pop ss
00001913  800880            or byte [bx+si],0x80
00001916  2015              and [di],dl
00001918  3228              xor ch,[bx+si]
0000191A  801F1F            sbb byte [bx],0x1f
0000191D  153AFC            adc ax,0xfc3a
00001920  16                push ss
00001921  0A08              or cl,[bx+si]
00001923  0208              add cl,[bx+si]
00001925  0A15              or dl,[di]
00001927  2828              sub [bx+si],ch
00001929  11801F1F          adc [bx+si+0x1f1f],ax
0000192D  1432              adc al,0x32
0000192F  FC                cld
00001930  19821628          sbb [bp+si+0x2816],ax
00001934  3202              xor al,[bp+si]
00001936  1F                pop ds
00001937  1F                pop ds
00001938  150EFC            adc ax,0xfc0e
0000193B  1F                pop ds
0000193C  11E0              adc ax,sp
0000193E  E88088            call 0xa1c1
00001941  1F                pop ds
00001942  1F                pop ds
00001943  140A              adc al,0xa
00001945  BC1F11            mov sp,0x111f
00001948  A02811            mov al,[0x1128]
0000194B  201F              and [bx],bl
0000194D  1F                pop ds
0000194E  140A              adc al,0xa
00001950  CC                int3
00001951  1F                pop ds
00001952  0311              add dx,[bx+di]
00001954  82                db 0x82
00001955  1F                pop ds
00001956  1F                pop ds
00001957  16                push ss
00001958  0830              or [bx+si],dh
0000195A  1F                pop ds
0000195B  1202              adc al,[bp+si]
0000195D  1F                pop ds
0000195E  1F                pop ds
0000195F  16                push ss
00001960  08B01F12          or [bx+si+0x121f],dh
00001964  081F              or [bx],bl
00001966  1F                pop ds
00001967  17                pop ss
00001968  301F              xor [bx],bl
0000196A  1120              adc [bx+si],sp
0000196C  1F                pop ds
0000196D  1F                pop ds
0000196E  1830              sbb [bx+si],dh
00001970  004B80            add [bp+di-0x80],cl
00001973  2A4228            sub al,[bp+si+0x28]
00001976  2A4228            sub al,[bp+si+0x28]
00001979  4A                dec dx
0000197A  8A45A8            mov al,[di-0x58]
0000197D  8A41A8            mov al,[bx+di-0x58]
00001980  0A4220            or al,[bp+si+0x20]
00001983  42                inc dx
00001984  A2A249            mov [0x49a2],al
00001987  A28A42            mov [0x428a],al
0000198A  A88A              test al,0x8a
0000198C  A80A              test al,0xa
0000198E  2A4282            sub al,[bp+si-0x7e]
00001991  41                inc cx
00001992  A8A2              test al,0xa2
00001994  42                inc dx
00001995  A88A              test al,0x8a
00001997  45                inc bp
00001998  A8A8              test al,0xa8
0000199A  41                inc cx
0000199B  0AAB2A42          or ch,[bp+di+0x422a]
0000199F  1122              adc [bp+si],sp
000019A1  B003              mov al,0x3
000019A3  A042A0            mov al,[0xa042]
000019A6  41                inc cx
000019A7  A88A              test al,0x8a
000019A9  43                inc bx
000019AA  2A41A2            sub al,[bx+di-0x5e]
000019AD  208A420A          and [bp+si+0xa42],cl
000019B1  2A11              sub dl,[bx+di]
000019B3  41                inc cx
000019B4  CA413C            retf word 0x3c41
000019B7  03CF              add cx,di
000019B9  0203              add al,[bp+di]
000019BB  C00A42            ror byte [bp+si],byte 0x42
000019BE  2AA280A8          sub ah,[bp+si-0x5780]
000019C2  41                inc cx
000019C3  A041A2            mov al,[0xa241]
000019C6  203F              and [bx],bh
000019C8  222A              and ch,[bp+si]
000019CA  A8F0              test al,0xf0
000019CC  A0802A            mov al,[0x2a80]
000019CF  8AAC1120          mov ch,[si+0x2011]
000019D3  328020C8          xor al,[bx+si-0x37e0]
000019D7  0F                db 0x0f
000019D8  222A              and ch,[bp+si]
000019DA  2AA220CA          sub ah,[bp+si-0x35e0]
000019DE  2288A888          and cl,[bx+si-0x7758]
000019E2  CF                iret
000019E3  110C              adc [si],cx
000019E5  8A800C11          mov al,[bx+si+0x110c]
000019E9  20C8              and al,cl
000019EB  41                inc cx
000019EC  802A41            sub byte [bp+si],0x41
000019EF  0220              add ah,[bx+si]
000019F1  A0A220            mov al,[0x20a2]
000019F4  0F08              invd
000019F6  8AA8410C          mov ch,[bx+si+0xc41]
000019FA  228888F0          and cl,[bx+si-0xf78]
000019FE  114183            adc [bx+di-0x7d],ax
00001A01  0B02              or ax,[bp+si]
00001A03  AB                stosw
00001A04  EA41322A11        jmp word 0x112a:word 0x3241
00001A09  0320              add sp,[bx+si]
00001A0B  41                inc cx
00001A0C  808A418880        or byte [bp+si-0x77bf],0x80
00001A11  0F                db 0x0f
00001A12  C8A88AA3          enter word 0x8aa8,byte 0xa3
00001A16  C8A28002          enter word 0x80a2,byte 0x2
00001A1A  43                inc bx
00001A1B  C2432A            ret word 0x2a43
00001A1E  30A84232          xor [bx+si+0x3242],ch
00001A22  22A28A32          and ah,[bp+si+0x328a]
00001A26  41                inc cx
00001A27  2211              and dl,[bx+di]
00001A29  322A              xor ch,[bp+si]
00001A2B  A828              test al,0x28
00001A2D  80A0C2428A        and byte [bx+si+0x42c2],0x8a
00001A32  41                inc cx
00001A33  8A418A            mov al,[bx+di-0x76]
00001A36  2A880C43          sub cl,[bx+si+0x430c]
00001A3A  A8FC              test al,0xfc
00001A3C  E28C              loop 0x19ca
00001A3E  A8F2              test al,0xf2
00001A40  2288830A          and cl,[bx+si+0xa83]
00001A44  82                db 0x82
00001A45  8A22              mov ah,[bp+si]
00001A47  2241A0            and al,[bx+di-0x60]
00001A4A  A822              test al,0x22
00001A4C  82                db 0x82
00001A4D  A888              test al,0x88
00001A4F  41                inc cx
00001A50  C222AC            ret word 0xac22
00001A53  2A43AF            sub al,[bp+di-0x51]
00001A56  382A              cmp [bp+si],ch
00001A58  41                inc cx
00001A59  A3C888            mov [0x88c8],ax
00001A5C  AB                stosw
00001A5D  28A32232          sub [bp+di+0x3222],ah
00001A61  8A410A            mov al,[bx+di+0xa]
00001A64  830A28            or word [bp+si],0x28
00001A67  F2222A            repne and ch,[bp+si]
00001A6A  C0                db 0xc0
00001A6B  B2A3              mov dl,0xa3
00001A6D  EA44F2418A        jmp word 0x8a41:word 0xf244
00001A72  41                inc cx
00001A73  A3F022            mov [0x22f0],ax
00001A76  C8F88F0E          enter word 0x8ff8,byte 0xe
00001A7A  388AA02A          cmp [bp+si+0x2aa0],cl
00001A7E  F22AA33228        repne sub ah,[bp+di+0x2832]
00001A83  A0CAAB            mov al,[0xabca]
00001A86  2A44BA            sub al,[si-0x46]
00001A89  45                inc bp
00001A8A  F0                lock
00001A8B  C242B0            ret word 0xb042
00001A8E  20E2              and dl,ah
00001A90  82                db 0x82
00001A91  41                inc cx
00001A92  8C42BC            mov word [bp+si-0x44],es
00001A95  A2A82A            mov [0x2aa8],al
00001A98  A8EA              test al,0xea
00001A9A  45                inc bp
00001A9B  A245B2            mov [0xb245],al
00001A9E  42                inc dx
00001A9F  AC                lodsb
00001AA0  41                inc cx
00001AA1  322A              xor ch,[bp+si]
00001AA3  41                inc cx
00001AA4  A2A041            mov [0x41a0],al
00001AA7  AC                lodsb
00001AA8  2243E8            and al,[bp+di-0x18]
00001AAB  2A4A8A            sub cl,[bp+si-0x76]
00001AAE  44                inc sp
00001AAF  8C45AB            mov word [di-0x55],es
00001AB2  CA432A            retf word 0x2a43
00001AB5  4F                dec di
00001AB6  41                inc cx
00001AB7  A2462A            mov [0x2a46],al
00001ABA  41                inc cx
00001ABB  0042EA            add [bp+si-0x16],al
00001ABE  BA4780            mov dx,0x8047
00001AC1  3EBA4128          ds mov dx,0x2841
00001AC5  2A41AB            sub al,[bx+di-0x55]
00001AC8  3C41              cmp al,0x41
00001ACA  FE49EA            dec byte [bx+di-0x16]
00001ACD  EA43AB42A8        jmp word 0xa842:word 0xab43
00001AD2  0FAE4120          fxsave [bx+di+0x20]
00001AD6  42                inc dx
00001AD7  B3E2              mov bl,0xe2
00001AD9  41                inc cx
00001ADA  AB                stosw
00001ADB  FA                cli
00001ADC  46                inc si
00001ADD  AE                scasb
00001ADE  AB                stosw
00001ADF  AF                scasw
00001AE0  41                inc cx
00001AE1  AB                stosw
00001AE2  BAABFA            mov dx,0xfaab
00001AE5  EA4283EEA8        jmp word 0xa8ee:word 0x8342
00001AEA  A242EC            mov [0xec42],al
00001AED  8A42AF            mov al,[bp+si-0x51]
00001AF0  42                inc dx
00001AF1  AB                stosw
00001AF2  AB                stosw
00001AF3  41                inc cx
00001AF4  FA                cli
00001AF5  A8AB              test al,0xab
00001AF7  BA41FF            mov dx,0xff41
00001AFA  EE                out dx,al
00001AFB  8C0C              mov word [si],cs
00001AFD  AF                scasw
00001AFE  42                inc dx
00001AFF  A0FBA8            mov al,[0xa8fb]
00001B02  8A42EE            mov al,[bp+si-0x12]
00001B05  2A41AE            sub al,[bx+di-0x52]
00001B08  EF                out dx,ax
00001B09  BA42FA            mov dx,0xfa42
00001B0C  EA0F410AFA        jmp word 0xfa0a:word 0x410f
00001B11  C3                ret
00001B12  1130              adc [bx+si],si
00001B14  C21130            ret word 0x3011
00001B17  FA                cli
00001B18  42                inc dx
00001B19  3BA28FAB          cmp sp,[bp+si-0x5471]
00001B1D  AB                stosw
00001B1E  B041              mov al,0x41
00001B20  AE                scasb
00001B21  EF                out dx,ax
00001B22  C0EEEA            shr dh,byte 0xea
00001B25  AB                stosw
00001B26  0FAF80EA41        imul ax,[bx+si+0x41ea]
00001B2B  F31120            rep adc [bx+si],sp
00001B2E  0E                push cs
00001B2F  802008            and byte [bx+si],0x8
00001B32  11EE              adc si,bp
00001B34  EAEFA2203A        jmp word 0x3a20:word 0xa2ef
00001B39  EE                out dx,al
00001B3A  88ABBB30          mov [bp+di+0x30bb],ch
00001B3E  1133              adc [bp+di],si
00001B40  BABC03            mov dx,0x3bc
00001B43  F0203B            lock and [bp+di],bh
00001B46  AB                stosw
00001B47  C02A41            shr byte [bp+si],byte 0x41
00001B4A  0220              add ah,[bx+si]
00001B4C  A0A220            mov al,[0x20a2]
00001B4F  30FB              xor bl,bh
00001B51  BEA841            mov si,0x41a8
00001B54  03EE              add bp,si
00001B56  8BBB0C11          mov di,[bp+di+0x110c]
00001B5A  41                inc cx
00001B5B  80F8C2            cmp al,0xc2
00001B5E  A82A              test al,0x2a
00001B60  41                inc cx
00001B61  0E                push cs
00001B62  EB11              jmp 0x1b75
00001B64  3CEF              cmp al,0xef
00001B66  41                inc cx
00001B67  808A418880        or byte [bp+si-0x77bf],0x80
00001B6C  303B              xor [bp+di],bh
00001B6E  A8BB              test al,0xbb
00001B70  E03B              loopne 0x1bad
00001B72  AE                scasb
00001B73  BC0243            mov sp,0x4302
00001B76  3E43              ds inc bx
00001B78  EA0FAC42CE        jmp word 0xce42:word 0xac0f
00001B7D  EE                out dx,al
00001B7E  A28ACE            mov [0xce8a],al
00001B81  41                inc cx
00001B82  2211              and dl,[bx+di]
00001B84  0E                push cs
00001B85  EAFC2B8FAF        jmp word 0xaf8f:word 0x2bfc
00001B8A  0242BA            add al,[bp+si-0x46]
00001B8D  41                inc cx
00001B8E  BA41BA            mov dx,0xba41
00001B91  EABB03BE42        jmp word 0x42be:word 0x3bb
00001B96  AB                stosw
00001B97  032EB3AB          add bp,[0xabb3]
00001B9B  0E                push cs
00001B9C  EE                out dx,al
00001B9D  8880FAC2          mov [bx+si-0x3d06],al
00001BA1  BAEEEE            mov dx,0xeeee
00001BA4  41                inc cx
00001BA5  AF                scasw
00001BA6  AB                stosw
00001BA7  EE                out dx,al
00001BA8  BEABBB            mov si,0xbbab
00001BAB  41                inc cx
00001BAC  3EEE              ds out dx,al
00001BAE  A3FA43            mov [0x43fa],ax
00001BB1  A0CBEA            mov al,[0xeacb]
00001BB4  EAAC3BBBA8        jmp word 0xa8bb:word 0x3bac
00001BB9  E8ACEE            call 0xa68
00001BBC  CE                into
00001BBD  BA41FA            mov dx,0xfa41
00001BC0  BCFAEB            mov sp,0xebfa
00001BC3  0E                push cs
00001BC4  EE                out dx,al
00001BC5  EA3F8EAC3A        jmp word 0x3aac:word 0x8e3f
00001BCA  AB                stosw
00001BCB  EB42              jmp 0x1c0f
00001BCD  0E                push cs
00001BCE  41                inc cx
00001BCF  EE                out dx,al
00001BD0  41                inc cx
00001BD1  AC                lodsb
00001BD2  0FEE38            pmaxsw mm7,[bx+si]
00001BD5  0BB0F2CB          or si,[bx+si-0x340e]
00001BD9  BAAFEA            mov dx,0xeaaf
00001BDC  0E                push cs
00001BDD  EAACCEEBAF        jmp word 0xafeb:word 0xceac
00001BE2  3AA8FA41          cmp ch,[bx+si+0x41fa]
00001BE6  BEEB41            mov si,0x41eb
00001BE9  8ABEBA43          mov bh,[bp+0x43ba]
00001BED  0F32              rdmsr
00001BEF  42                inc dx
00001BF0  8F                db 0x8f
00001BF1  EF                out dx,ax
00001BF2  2EBE41B3          cs mov si,0xb341
00001BF6  42                inc dx
00001BF7  83AEABEAAB        sub word [bp-0x1555],0xffffffffffffffab
00001BFC  3A41AB            cmp al,[bx+di-0x55]
00001BFF  FE4882            dec byte [bx+si-0x7e]
00001C02  42                inc dx
00001C03  A341CE            mov [0xce41],ax
00001C06  EA41AE42A3        jmp word 0xa342:word 0xae41
00001C0B  EE                out dx,al
00001C0C  43                inc bx
00001C0D  2A42BA            sub al,[bp+si-0x46]
00001C10  44                inc sp
00001C11  EE                out dx,al
00001C12  43                inc bx
00001C13  BA41BE            mov dx,0xbe41
00001C16  42                inc dx
00001C17  B343              mov bl,0x43
00001C19  AE                scasb
00001C1A  41                inc cx
00001C1B  A83A              test al,0x3a
00001C1D  43                inc bx
00001C1E  EB47              jmp 0x1c67
00001C20  BA45AE            mov dx,0xae45
00001C23  42                inc dx
00001C24  AE                scasb
00001C25  46                inc si
00001C26  EA4100FF50        jmp word 0x50ff:word 0x41
00001C2B  000F              add [bx],cl
00001C2D  FD                std
00001C2E  D400              aam byte 0x0
00001C30  0035              add [di],dh
00001C32  43                inc bx
00001C33  8ABFFD40          mov bh,[bx+0x40fd]
00001C37  7FFF              jg 0x1c38
00001C39  F5                cmc
00001C3A  50                push ax
00001C3B  000F              add [bx],cl
00001C3D  FD                std
00001C3E  50                push ax
00001C3F  000F              add [bx],cl
00001C41  F5                cmc
00001C42  40                inc ax
00001C43  0000              add [bx+si],al
00001C45  FFF5              push bp
00001C47  DF                db 0xdf
00001C48  FF                db 0xff
00001C49  FF                db 0xff
00001C4A  FF57FF            call word near [bx-0x1]
00001C4D  FF                db 0xff
00001C4E  FF55B9            call word near [di-0x47]
00001C51  DB                db 0xdb
00001C52  FF                db 0xff
00001C53  FFF7              push di
00001C55  FF775F            push word [bx+0x5f]
00001C58  FF                db 0xff
00001C59  FF                db 0xff
00001C5A  D5FD              aad byte 0xfd
00001C5C  7FFF              jg 0x1c5d
00001C5E  755D              jnz 0x1cbd
00001C60  FF                db 0xff
00001C61  FF                db 0xff
00001C62  FF                db 0xff
00001C63  D5FF              aad byte 0xff
00001C65  FF                db 0xff
00001C66  FF5FFF            call word far [bx-0x1]
00001C69  DF                db 0xdf
00001C6A  FF                db 0xff
00001C6B  FF                db 0xff
00001C6C  FD                std
00001C6D  7FFF              jg 0x1c6e
00001C6F  FF                db 0xff
00001C70  FF                db 0xff
00001C71  FF                db 0xff
00001C72  DD5FFD            fstp qword [bx-0x3]
00001C75  55                push bp
00001C76  FF                db 0xff
00001C77  FD                std
00001C78  FF                db 0xff
00001C79  FF                db 0xff
00001C7A  D7                xlatb
00001C7B  FF                db 0xff
00001C7C  FF                db 0xff
00001C7D  FF                db 0xff
00001C7E  FF55FF            call word near [di-0x1]
00001C81  FF                db 0xff
00001C82  FFF5              push bp
00001C84  FFF5              push bp
00001C86  FF                db 0xff
00001C87  FF77DF            push word [bx-0x21]
00001C8A  FF                db 0xff
00001C8B  DDD7              fst st7
00001C8D  FF75FF            push word [di-0x1]
00001C90  57                push di
00001C91  FF                db 0xff
00001C92  FF                db 0xff
00001C93  FD                std
00001C94  F7FF              idiv di
00001C96  F5                cmc
00001C97  7FFF              jg 0x1c98
00001C99  FD                std
00001C9A  55                push bp
00001C9B  5F                pop di
00001C9C  FD                std
00001C9D  DD5FFF            fstp qword [bx-0x1]
00001CA0  D7                xlatb
00001CA1  FF5FFF            call word far [bx-0x1]
00001CA4  DD7FFF            fnstsw [bx-0x1]
00001CA7  7557              jnz 0x1d00
00001CA9  FF57F5            call word near [bx-0xb]
00001CAC  7FFF              jg 0x1cad
00001CAE  FF                db 0xff
00001CAF  FD                std
00001CB0  FF                db 0xff
00001CB1  DFF7              fcomip st7
00001CB3  5F                pop di
00001CB4  F5                cmc
00001CB5  55                push bp
00001CB6  FF                db 0xff
00001CB7  FF7757            push word [bx+0x57]
00001CBA  FF                db 0xff
00001CBB  FF                db 0xff
00001CBC  D7                xlatb
00001CBD  FF57FF            call word near [bx-0x1]
00001CC0  57                push di
00001CC1  FF                db 0xff
00001CC2  FD                std
00001CC3  55                push bp
00001CC4  7FD5              jg 0x1c9b
00001CC6  7FD7              jg 0x1c9f
00001CC8  FF                db 0xff
00001CC9  FF                db 0xff
00001CCA  FF                db 0xff
00001CCB  FD                std
00001CCC  FD                std
00001CCD  DF                db 0xdf
00001CCE  FD                std
00001CCF  5F                pop di
00001CD0  F5                cmc
00001CD1  FF                db 0xff
00001CD2  FD                std
00001CD3  D557              aad byte 0x57
00001CD5  FF                db 0xff
00001CD6  FD                std
00001CD7  DD5FF7            fstp qword [bx-0x9]
00001CDA  5F                pop di
00001CDB  D57F              aad byte 0x7f
00001CDD  FF75FF            push word [di-0x1]
00001CE0  FD                std
00001CE1  57                push di
00001CE2  FF5FFF            call word far [bx-0x1]
00001CE5  FF5FF7            call word far [bx-0x9]
00001CE8  FF                db 0xff
00001CE9  FF775F            push word [bx+0x5f]
00001CEC  57                push di
00001CED  77D5              ja 0x1cc4
00001CEF  7FFF              jg 0x1cf0
00001CF1  7777              ja 0x1d6a
00001CF3  75FD              jnz 0x1cf2
00001CF5  DD                db 0xdd
00001CF6  FD                std
00001CF7  DF                db 0xdf
00001CF8  FD                std
00001CF9  DD0F              fisttp qword [bx]
00001CFB  DD55FF            fst qword [di-0x1]
00001CFE  757D              jnz 0x1d7d
00001D00  FD                std
00001D01  D7                xlatb
00001D02  FD                std
00001D03  D3DD              rcr bp,cl
00001D05  FD                std
00001D06  DC3D              fdivr qword [di]
00001D08  7F55              jg 0x1d5f
00001D0A  FF                db 0xff
00001D0B  D555              aad byte 0x55
00001D0D  55                push bp
00001D0E  55                push bp
00001D0F  4F                dec di
00001D10  55                push bp
00001D11  53                push bx
00001D12  55                push bp
00001D13  F5                cmc
00001D14  55                push bp
00001D15  50                push ax
00001D16  F5                cmc
00001D17  43                inc bx
00001D18  FF5503            call word near [di+0x3]
00001D1B  D5D7              aad byte 0xd7
00001D1D  FD                std
00001D1E  55                push bp
00001D1F  0D5375            or ax,0x7553
00001D22  43                inc bx
00001D23  D4D5              aam byte 0xd5
00001D25  FF5555            call word near [di+0x55]
00001D28  50                push ax
00001D29  55                push bp
00001D2A  54                push sp
00001D2B  35554D            xor ax,0x4d55
00001D2E  53                push bx
00001D2F  D555              aad byte 0x55
00001D31  4F                dec di
00001D32  54                push sp
00001D33  3D5540            cmp ax,0x4055
00001D36  FD                std
00001D37  54                push sp
00001D38  FD                std
00001D39  55                push bp
00001D3A  40                inc ax
00001D3B  F5                cmc
00001D3C  43                inc bx
00001D3D  353D53            xor ax,0x533d
00001D40  54                push sp
00001D41  55                push bp
00001D42  55                push bp
00001D43  55                push bp
00001D44  0FD553D5          pmullw mm2,[bp+di-0x2b]
00001D48  55                push bp
00001D49  4D                dec bp
00001D4A  4D                dec bp
00001D4B  355535            xor ax,0x3555
00001D4E  53                push bx
00001D4F  D540              aad byte 0x40
00001D51  FF5550            call word near [di+0x50]
00001D54  D550              aad byte 0x50
00001D56  3F                aas
00001D57  54                push sp
00001D58  3CD4              cmp al,0xd4
00001D5A  D54D              aad byte 0x4d
00001D5C  53                push bx
00001D5D  55                push bp
00001D5E  55                push bp
00001D5F  53                push bx
00001D60  F5                cmc
00001D61  354D55            xor ax,0x554d
00001D64  55                push bp
00001D65  4D                dec bp
00001D66  354D54            xor ax,0x544d
00001D69  D54D              aad byte 0x4d
00001D6B  50                push ax
00001D6C  FF5555            call word near [di+0x55]
00001D6F  4F                dec di
00001D70  55                push bp
00001D71  0FD553C3          pmullw mm2,[bp+di-0x3d]
00001D75  53                push bx
00001D76  55                push bp
00001D77  4D                dec bp
00001D78  53                push bx
00001D79  55                push bp
00001D7A  54                push sp
00001D7B  3D5535            cmp ax,0x3555
00001D7E  4D                dec bp
00001D7F  55                push bp
00001D80  55                push bp
00001D81  7535              jnz 0x1db8
00001D83  4D                dec bp
00001D84  54                push sp
00001D85  D535              aad byte 0x35
00001D87  4F                dec di
00001D88  55                push bp
00001D89  55                push bp
00001D8A  54                push sp
00001D8B  0D54F5            or ax,0xf554
00001D8E  55                push bp
00001D8F  4C                dec sp
00001D90  3D5355            cmp ax,0x5553
00001D93  354D55            xor ax,0x554d
00001D96  03D5              add dx,bp
00001D98  54                push sp
00001D99  D535              aad byte 0x35
00001D9B  55                push bp
00001D9C  55                push bp
00001D9D  34D5              xor al,0xd5
00001D9F  355355            xor ax,0x5553
00001DA2  353555            xor ax,0x5535
00001DA5  55                push bp
00001DA6  0FFD5355          paddw mm2,[bp+di+0x55]
00001DAA  55                push bp
00001DAB  33D5              xor dx,bp
00001DAD  4D                dec bp
00001DAE  55                push bp
00001DAF  354D00            xor ax,0x4d
00001DB2  FD                std
00001DB3  1113              adc [bp+di],dx
00001DB5  1131              adc [bx+di],si
00001DB7  1111              adc [bx+di],dx
00001DB9  30D1              xor cl,dl
00001DBB  3113              xor [bp+di],dx
00001DBD  10D0              adc al,dl
00001DBF  D111              rcl word [bx+di],0x0
00001DC1  13F1              adc si,cx
00001DC3  310D              xor [di],cx
00001DC5  1110              adc [bx+si],dx
00001DC7  CD11              int byte 0x11
00001DC9  0D1131            or ax,0x3111
00001DCC  13FF              adc di,di
00001DCE  44                inc sp
00001DCF  44                inc sp
00001DD0  4C                dec sp
00001DD1  44                inc sp
00001DD2  3444              xor al,0x44
00001DD4  44                inc sp
00001DD5  34C4              xor al,0xc4
00001DD7  3443              xor al,0x43
00001DD9  44                inc sp
00001DDA  C4                db 0xc4
00001DDB  C4443C            les ax,word [si+0x3c]
00001DDE  44                inc sp
00001DDF  C44C44            les cx,word [si+0x44]
00001DE2  43                inc bx
00001DE3  3444              xor al,0x44
00001DE5  4C                dec sp
00001DE6  44                inc sp
00001DE7  3444              xor al,0x44
00001DE9  005000            add [bx+si+0x0],dl
00001DEC  0001              add [bx+di],al
00001DEE  1400              adc al,0x0
00001DF0  0005              add [di],al
00001DF2  40                inc ax
00001DF3  0A808540          or al,[bx+si+0x4085]
00001DF7  40                inc ax
00001DF8  0005              add [di],al
00001DFA  50                push ax
00001DFB  0000              add [bx+si],al
00001DFD  015000            add [bx+si+0x0],dx
00001E00  0005              add [di],al
00001E02  40                inc ax
00001E03  0000              add [bx+si],al
00001E05  0225              add ah,[di]
00001E07  1000              adc [bx+si],al
00001E09  20885400          and [bx+si+0x54],cl
00001E0D  0200              add al,[bx+si]
00001E0F  54                push sp
00001E10  2918              sub [bx+si],bx
00001E12  0002              add [bp+si],al
00001E14  06                push es
00001E15  226450            and ah,[si+0x50]
00001E18  0AAA8501          or ch,[bp+si+0x185]
00001E1C  4A                dec dx
00001E1D  2A4551            sub al,[di+0x51]
00001E20  0008              add [bx+si],cl
00001E22  8814              mov [si],dl
00001E24  0A00              or al,[bx+si]
00001E26  0A5020            or dl,[bx+si+0x20]
00001E29  90                nop
00001E2A  22A80150          and ch,[bx+si+0x5001]
00001E2E  20A8008A          and [bx+si-0x7600],ch
00001E32  99                cwd
00001E33  00A94080          add [bx+di-0x7fc0],ch
00001E37  2822              sub [bp+si],ah
00001E39  8A942AA2          mov dl,[si-0x5dd6]
00001E3D  22AA500A          and ch,[bp+si+0xa50]
00001E41  A800              test al,0x0
00001E43  A5                movsw
00001E44  0225              add ah,[di]
00001E46  08AA66C0          or [bp+si-0x3f9a],ch
00001E4A  82                db 0x82
00001E4B  99                cwd
00001E4C  90                nop
00001E4D  2A640A            sub ah,[si+0xa]
00001E50  50                push ax
00001E51  002A              add [bp+si],ch
00001E53  A820              test al,0x20
00001E55  8AA50AA8          mov ah,[di-0x57f6]
00001E59  A91100            test ax,0x11
00001E5C  2889022A          sub [bx+di+0x2a02],cl
00001E60  94                xchg ax,sp
00001E61  0A52AA            or dl,[bp+si-0x56]
00001E64  99                cwd
00001E65  022A              add ch,[bp+si]
00001E67  6550              gs push ax
00001E69  8A50A5            mov dl,[bx+si-0x5b]
00001E6C  02AAAAA8          add ch,[bp+si-0x5756]
00001E70  2882A642          sub [bp+si+0x42a6],al
00001E74  A5                movsw
00001E75  1000              adc [bx+si],al
00001E77  0A22              or ah,[bp+si]
00001E79  1408              adc al,0x8
00001E7B  AA                stosb
00001E7C  90                nop
00001E7D  2A10              sub dl,[bx+si]
00001E7F  AA                stosb
00001E80  50                push ax
00001E81  08A94402          or [bx+di+0x244],ch
00001E85  95                xchg ax,bp
00001E86  02902A80          add dl,[bx+si-0x7fd6]
00001E8A  0AA82802          or ch,[bx+si+0x228]
00001E8E  A952A4            test ax,0xa452
00001E91  00A88450          add [bx+si+0x5084],ch
00001E95  0028              add [bx+si],ch
00001E97  8942A2            mov [bp+si-0x5e],ax
00001E9A  029402AA          add dl,[si-0x55fe]
00001E9E  2400              and al,0x0
00001EA0  29402A            sub [bx+si+0x2a],ax
00001EA3  42                inc dx
00001EA4  A82A              test al,0x2a
00001EA6  02A0AA22          add ah,[bx+si+0x22aa]
00001EAA  224210            and al,[bp+si+0x10]
00001EAD  22804000          and al,[bx+si+0x40]
00001EB1  0222              add ah,[bp+si]
00001EB3  2008              and [bx+si],cl
00001EB5  8808              mov [bx+si],cl
00001EB7  80A8880088        sub byte [bx+si+0x88],0x88
00001EBC  50                push ax
00001EBD  0221              add ah,[bx+di]
00001EBF  08808088          or [bx+si-0x7780],al
00001EC3  8088208808        or byte [bx+si-0x77e0],0x8
00001EC8  0200              add al,[bx+si]
00001ECA  88800000          mov [bx+si+0x0],al
00001ECE  000A              add [bp+si],cl
00001ED0  0000              add [bx+si],al
00001ED2  0000              add [bx+si],al
00001ED4  0000              add [bx+si],al
00001ED6  A00082            mov al,[0x8200]
00001ED9  0002              add [bp+si],al
00001EDB  800228            add byte [bp+si],0x28
00001EDE  0008              add [bx+si],cl
00001EE0  0020              add [bx+si],ah
00001EE2  0280808A          add al,[bx+si-0x7580]
00001EE6  0000              add [bx+si],al
00001EE8  0000              add [bx+si],al
00001EEA  0000              add [bx+si],al
00001EEC  0008              add [bx+si],cl
00001EEE  02800002          add al,[bx+si+0x200]
00001EF2  0008              add [bx+si],cl
00001EF4  0000              add [bx+si],al
00001EF6  8800              mov [bx+si],al
00001EF8  A800              test al,0x0
00001EFA  00800220          add [bx+si+0x2002],al
00001EFE  0802              or [bp+si],al
00001F00  0000              add [bx+si],al
00001F02  0000              add [bx+si],al
00001F04  08800080          or [bx+si-0x8000],al
00001F08  0000              add [bx+si],al
00001F0A  0020              add [bx+si],ah
00001F0C  0000              add [bx+si],al
00001F0E  00800082          add [bx+si-0x7e00],al
00001F12  0000              add [bx+si],al
00001F14  800002            add byte [bx+si],0x2
00001F17  0008              add [bx+si],cl
00001F19  800000            add byte [bx+si],0x0
00001F1C  0000              add [bx+si],al
00001F1E  0000              add [bx+si],al
00001F20  A02000            mov al,[0x20]
00001F23  0000              add [bx+si],al
00001F25  0820              or [bx+si],ah
00001F27  0800              or [bx+si],al
00001F29  0000              add [bx+si],al
00001F2B  000A              add [bp+si],cl
00001F2D  0000              add [bx+si],al
00001F2F  0000              add [bx+si],al
00001F31  08800082          or [bx+si-0x7e00],al
00001F35  0000              add [bx+si],al
00001F37  0802              or [bp+si],al
00001F39  0000              add [bx+si],al
00001F3B  2800              sub [bx+si],al
00001F3D  2008              and [bx+si],cl
00001F3F  0000              add [bx+si],al
00001F41  0000              add [bx+si],al
00001F43  0000              add [bx+si],al
00001F45  800002            add byte [bx+si],0x2
00001F48  0000              add [bx+si],al
00001F4A  0000              add [bx+si],al
00001F4C  00800008          add [bx+si+0x800],al
00001F50  0802              or [bp+si],al
00001F52  0000              add [bx+si],al
00001F54  0000              add [bx+si],al
00001F56  00800080          add [bx+si-0x8000],al
00001F5A  0000              add [bx+si],al
00001F5C  0000              add [bx+si],al
00001F5E  0000              add [bx+si],al
00001F60  0200              add al,[bx+si]
00001F62  2000              and [bx+si],al
00001F64  0000              add [bx+si],al
00001F66  00880000          add [bx+si+0x0],cl
00001F6A  0000              add [bx+si],al
00001F6C  800000            add byte [bx+si],0x0
00001F6F  0008              add [bx+si],cl
00001F71  00880000          add [bx+si+0x0],cl
00001F75  0000              add [bx+si],al
00001F77  0000              add [bx+si],al
00001F79  2000              and [bx+si],al
00001F7B  0000              add [bx+si],al
00001F7D  0000              add [bx+si],al
00001F7F  0000              add [bx+si],al
00001F81  0220              add ah,[bx+si]
00001F83  2000              and [bx+si],al
00001F85  0000              add [bx+si],al
00001F87  0000              add [bx+si],al
00001F89  0000              add [bx+si],al
00001F8B  2002              and [bp+si],al
00001F8D  82                db 0x82
00001F8E  0000              add [bx+si],al
00001F90  0800              or [bx+si],al
00001F92  2000              and [bx+si],al
00001F94  0020              add [bx+si],ah
00001F96  802000            and byte [bx+si],0x0
00001F99  00808000          add [bx+si+0x80],al
00001F9D  0800              or [bx+si],al
00001F9F  800800            or byte [bx+si],0x0
00001FA2  0220              add ah,[bx+si]
00001FA4  0008              add [bx+si],cl
00001FA6  0020              add [bx+si],ah
00001FA8  00                db 0x00
