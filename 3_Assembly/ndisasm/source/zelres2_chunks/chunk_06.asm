00000000  5D                pop bp
00000001  2300              and ax,[bx+si]
00000003  002C              add [si],ch
00000005  30B93929          xor [bx+di+0x2939],bh
00000009  3F                aas
0000000A  343E              xor al,0x3e
0000000C  2F                das
0000000D  41                inc cx
0000000E  AD                lodsw
0000000F  44                inc sp
00000010  D03F              sar byte [bx],0x0
00000012  7232              jc 0x46
00000014  9B37              wait aaa
00000016  92                xchg ax,dx
00000017  41                inc cx
00000018  F0                lock
00000019  40                inc ax
0000001A  A339F7            mov [0xf739],ax
0000001D  42                inc dx
0000001E  CE                into
0000001F  44                inc sp
00000020  184514            sbb [di+0x14],al
00000023  46                inc si
00000024  D7                xlatb
00000025  40                inc ax
00000026  334990            xor cx,[bx+di-0x70]
00000029  49                dec cx
0000002A  51                push cx
0000002B  4B                dec bx
0000002C  DD4EE8            fisttp qword [bp-0x18]
0000002F  4F                dec di
00000030  0E                push cs
00000031  07                pop es
00000032  BF1D50            mov di,0x501d
00000035  33C0              xor ax,ax
00000037  B98000            mov cx,0x80
0000003A  F3AB              rep stosw
0000003C  FE06FF4F          inc byte [0x4fff]
00000040  C706EB4FB011      mov word [0x4feb],0x11b0
00000046  8B3631FF          mov si,[0xff31]
0000004A  83EE21            sub si,0x21
0000004D  E8C014            call 0x1510
00000050  33DB              xor bx,bx
00000052  F60480            test byte [si],0x80
00000055  7403              jz 0x5a
00000057  E8D002            call 0x32a
0000005A  46                inc si
0000005B  B90600            mov cx,0x6
0000005E  51                push cx
0000005F  F60480            test byte [si],0x80
00000062  7403              jz 0x67
00000064  E80003            call 0x367
00000067  46                inc si
00000068  43                inc bx
00000069  F60480            test byte [si],0x80
0000006C  7403              jz 0x71
0000006E  E8F602            call 0x367
00000071  46                inc si
00000072  43                inc bx
00000073  F60480            test byte [si],0x80
00000076  7403              jz 0x7b
00000078  E8EC02            call 0x367
0000007B  46                inc si
0000007C  43                inc bx
0000007D  F60480            test byte [si],0x80
00000080  7403              jz 0x85
00000082  E8E202            call 0x367
00000085  46                inc si
00000086  43                inc bx
00000087  59                pop cx
00000088  E2D4              loop 0x5e
0000008A  F60480            test byte [si],0x80
0000008D  7403              jz 0x92
0000008F  E8D502            call 0x367
00000092  46                inc si
00000093  43                inc bx
00000094  F60480            test byte [si],0x80
00000097  7403              jz 0x9c
00000099  E8CB02            call 0x367
0000009C  46                inc si
0000009D  43                inc bx
0000009E  F60480            test byte [si],0x80
000000A1  7403              jz 0xa6
000000A3  E8C102            call 0x367
000000A6  46                inc si
000000A7  F60480            test byte [si],0x80
000000AA  7403              jz 0xaf
000000AC  E80003            call 0x3af
000000AF  8B3631FF          mov si,[0xff31]
000000B3  BF00E9            mov di,0xe900
000000B6  C606F14F12        mov byte [0x4ff1],0x12
000000BB  E8410D            call 0xdff
000000BE  33DB              xor bx,bx
000000C0  83C603            add si,0x3
000000C3  AC                lodsb
000000C4  0AC0              or al,al
000000C6  7903              jns 0xcb
000000C8  E81C03            call 0x3e7
000000CB  B90600            mov cx,0x6
000000CE  51                push cx
000000CF  A6                cmpsb
000000D0  7403              jz 0xd5
000000D2  E85300            call 0x128
000000D5  43                inc bx
000000D6  A6                cmpsb
000000D7  7403              jz 0xdc
000000D9  E84C00            call 0x128
000000DC  43                inc bx
000000DD  A6                cmpsb
000000DE  7403              jz 0xe3
000000E0  E84500            call 0x128
000000E3  43                inc bx
000000E4  A6                cmpsb
000000E5  7403              jz 0xea
000000E7  E83E00            call 0x128
000000EA  43                inc bx
000000EB  59                pop cx
000000EC  E2E0              loop 0xce
000000EE  A6                cmpsb
000000EF  7403              jz 0xf4
000000F1  E83400            call 0x128
000000F4  43                inc bx
000000F5  A6                cmpsb
000000F6  7403              jz 0xfb
000000F8  E82D00            call 0x128
000000FB  43                inc bx
000000FC  A6                cmpsb
000000FD  7403              jz 0x102
000000FF  E82600            call 0x128
00000102  43                inc bx
00000103  AC                lodsb
00000104  47                inc di
00000105  0AC0              or al,al
00000107  7903              jns 0x10c
00000109  E9DB03            jmp 0x4e7
0000010C  263A45FF          cmp al,[es:di-0x1]
00000110  7403              jz 0x115
00000112  E81300            call 0x128
00000115  83C604            add si,0x4
00000118  E8E913            call 0x1504
0000011B  8106EB4F000A      add word [0x4feb],0xa00
00000121  FE0EF14F          dec byte [0x4ff1]
00000125  7594              jnz 0xbb
00000127  C3                ret
00000128  8A44FF            mov al,[si-0x1]
0000012B  0AC0              or al,al
0000012D  7903              jns 0x132
0000012F  E93A03            jmp 0x46c
00000132  26807DFFFC        cmp byte [es:di-0x1],0xfc
00000137  7507              jnz 0x140
00000139  26C645FFFF        mov byte [es:di-0x1],0xff
0000013E  EB20              jmp 0x160
00000140  26FE45FF          inc byte [es:di-0x1]
00000144  26C645FFFE        mov byte [es:di-0x1],0xfe
00000149  7415              jz 0x160
0000014B  268845FF          mov [es:di-0x1],al
0000014F  8BD3              mov dx,bx
00000151  03D2              add dx,dx
00000153  03D2              add dx,dx
00000155  03D2              add dx,dx
00000157  0316EB4F          add dx,[0x4feb]
0000015B  D1EA              shr dx,0x0
0000015D  E81601            call 0x276
00000160  A012C0            mov al,[0xc012]
00000163  2C05              sub al,0x5
00000165  7301              jnc 0x168
00000167  C3                ret
00000168  3C04              cmp al,0x4
0000016A  7201              jc 0x16d
0000016C  C3                ret
0000016D  53                push bx
0000016E  8AD8              mov bl,al
00000170  32FF              xor bh,bh
00000172  03DB              add bx,bx
00000174  FF977631          call word near [bx+0x3176]
00000178  5B                pop bx
00000179  C3                ret
0000017A  7E31              jng 0x1ad
0000017C  9E                sahf
0000017D  31D4              xor sp,dx
0000017F  315232            xor [bp+si+0x32],dx
00000182  8A44FF            mov al,[si-0x1]
00000185  2C1B              sub al,0x1b
00000187  3C02              cmp al,0x2
00000189  7201              jc 0x18c
0000018B  C3                ret
0000018C  C645FFFE          mov byte [di-0x1],0xfe
00000190  F606FF4F01        test byte [0x4fff],0x1
00000195  7501              jnz 0x198
00000197  C3                ret
00000198  FEC0              inc al
0000019A  2401              and al,0x1
0000019C  041B              add al,0x1b
0000019E  8844FF            mov [si-0x1],al
000001A1  C3                ret
000001A2  8A44FF            mov al,[si-0x1]
000001A5  2C1D              sub al,0x1d
000001A7  3C06              cmp al,0x6
000001A9  7201              jc 0x1ac
000001AB  C3                ret
000001AC  C645FFFE          mov byte [di-0x1],0xfe
000001B0  3C04              cmp al,0x4
000001B2  731A              jnc 0x1ce
000001B4  0AC0              or al,al
000001B6  750C              jnz 0x1c4
000001B8  50                push ax
000001B9  2EFF161A01        call word near [cs:0x11a]
000001BE  2403              and al,0x3
000001C0  58                pop ax
000001C1  7401              jz 0x1c4
000001C3  C3                ret
000001C4  FEC0              inc al
000001C6  2403              and al,0x3
000001C8  041D              add al,0x1d
000001CA  8844FF            mov [si-0x1],al
000001CD  C3                ret
000001CE  FEC0              inc al
000001D0  2401              and al,0x1
000001D2  0421              add al,0x21
000001D4  8844FF            mov [si-0x1],al
000001D7  C3                ret
000001D8  8A44FF            mov al,[si-0x1]
000001DB  2C2C              sub al,0x2c
000001DD  3C02              cmp al,0x2
000001DF  7316              jnc 0x1f7
000001E1  C645FFFE          mov byte [di-0x1],0xfe
000001E5  F606FF4F01        test byte [0x4fff],0x1
000001EA  7501              jnz 0x1ed
000001EC  C3                ret
000001ED  FEC0              inc al
000001EF  2401              and al,0x1
000001F1  042C              add al,0x2c
000001F3  8844FF            mov [si-0x1],al
000001F6  C3                ret
000001F7  8A44FF            mov al,[si-0x1]
000001FA  3C3E              cmp al,0x3e
000001FC  7201              jc 0x1ff
000001FE  C3                ret
000001FF  B333              mov bl,0x33
00000201  3C0E              cmp al,0xe
00000203  7441              jz 0x246
00000205  B336              mov bl,0x36
00000207  3C0D              cmp al,0xd
00000209  743B              jz 0x246
0000020B  B339              mov bl,0x39
0000020D  3C0F              cmp al,0xf
0000020F  7435              jz 0x246
00000211  B33C              mov bl,0x3c
00000213  3C0C              cmp al,0xc
00000215  742F              jz 0x246
00000217  B33D              mov bl,0x3d
00000219  3C10              cmp al,0x10
0000021B  7429              jz 0x246
0000021D  2C33              sub al,0x33
0000021F  7301              jnc 0x222
00000221  C3                ret
00000222  B30E              mov bl,0xe
00000224  3C02              cmp al,0x2
00000226  741E              jz 0x246
00000228  B30D              mov bl,0xd
0000022A  3C05              cmp al,0x5
0000022C  7418              jz 0x246
0000022E  B30F              mov bl,0xf
00000230  3C08              cmp al,0x8
00000232  7412              jz 0x246
00000234  B30C              mov bl,0xc
00000236  3C09              cmp al,0x9
00000238  740C              jz 0x246
0000023A  B310              mov bl,0x10
0000023C  3C0A              cmp al,0xa
0000023E  7406              jz 0x246
00000240  FEC0              inc al
00000242  0433              add al,0x33
00000244  8AD8              mov bl,al
00000246  C645FFFE          mov byte [di-0x1],0xfe
0000024A  F606FF4F01        test byte [0x4fff],0x1
0000024F  7501              jnz 0x252
00000251  C3                ret
00000252  885CFF            mov [si-0x1],bl
00000255  C3                ret
00000256  8A44FF            mov al,[si-0x1]
00000259  2C25              sub al,0x25
0000025B  3C04              cmp al,0x4
0000025D  7201              jc 0x260
0000025F  C3                ret
00000260  C645FFFE          mov byte [di-0x1],0xfe
00000264  F606FF4F01        test byte [0x4fff],0x1
00000269  7501              jnz 0x26c
0000026B  C3                ret
0000026C  FEC0              inc al
0000026E  2403              and al,0x3
00000270  0425              add al,0x25
00000272  8844FF            mov [si-0x1],al
00000275  C3                ret
00000276  06                push es
00000277  1E                push ds
00000278  57                push di
00000279  56                push si
0000027A  53                push bx
0000027B  03D2              add dx,dx
0000027D  8BFA              mov di,dx
0000027F  0AC0              or al,al
00000281  7503              jnz 0x286
00000283  E98A00            jmp 0x310
00000286  8AD8              mov bl,al
00000288  32FF              xor bh,bh
0000028A  03DB              add bx,bx
0000028C  F7871D50FFFF      test word [bx+0x501d],0xffff
00000292  755A              jnz 0x2ee
00000294  FEC8              dec al
00000296  89BF1D50          mov [bx+0x501d],di
0000029A  B130              mov cl,0x30
0000029C  F6E1              mul cl
0000029E  053080            add ax,0x8030
000002A1  8BF0              mov si,ax
000002A3  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000002A8  B800A0            mov ax,0xa000
000002AB  8EC0              mov es,ax
000002AD  B90800            mov cx,0x8
000002B0  51                push cx
000002B1  B90200            mov cx,0x2
000002B4  AD                lodsw
000002B5  8BD0              mov dx,ax
000002B7  AC                lodsb
000002B8  8AD8              mov bl,al
000002BA  8AFA              mov bh,dl
000002BC  D1EA              shr dx,0x0
000002BE  D1EA              shr dx,0x0
000002C0  268835            mov [es:di],dh
000002C3  D0EA              shr dl,0x0
000002C5  D0EA              shr dl,0x0
000002C7  26885501          mov [es:di+0x1],dl
000002CB  03DB              add bx,bx
000002CD  03DB              add bx,bx
000002CF  80E73F            and bh,0x3f
000002D2  26887D02          mov [es:di+0x2],bh
000002D6  243F              and al,0x3f
000002D8  26884503          mov [es:di+0x3],al
000002DC  83C704            add di,0x4
000002DF  E2D3              loop 0x2b4
000002E1  81C73801          add di,0x138
000002E5  59                pop cx
000002E6  E2C8              loop 0x2b0
000002E8  5B                pop bx
000002E9  5E                pop si
000002EA  5F                pop di
000002EB  1F                pop ds
000002EC  07                pop es
000002ED  C3                ret
000002EE  8BB71D50          mov si,[bx+0x501d]
000002F2  B800A0            mov ax,0xa000
000002F5  8EC0              mov es,ax
000002F7  8ED8              mov ds,ax
000002F9  B90800            mov cx,0x8
000002FC  A5                movsw
000002FD  A5                movsw
000002FE  A5                movsw
000002FF  A5                movsw
00000300  81C73801          add di,0x138
00000304  81C63801          add si,0x138
00000308  E2F2              loop 0x2fc
0000030A  5B                pop bx
0000030B  5E                pop si
0000030C  5F                pop di
0000030D  1F                pop ds
0000030E  07                pop es
0000030F  C3                ret
00000310  B800A0            mov ax,0xa000
00000313  8EC0              mov es,ax
00000315  33C0              xor ax,ax
00000317  B90800            mov cx,0x8
0000031A  AB                stosw
0000031B  AB                stosw
0000031C  AB                stosw
0000031D  AB                stosw
0000031E  81C73801          add di,0x138
00000322  E2F6              loop 0x31a
00000324  5B                pop bx
00000325  5E                pop si
00000326  5F                pop di
00000327  1F                pop ds
00000328  07                pop es
00000329  C3                ret
0000032A  803E00E9FF        cmp byte [0xe900],0xff
0000032F  7501              jnz 0x332
00000331  C3                ret
00000332  803E00E9FC        cmp byte [0xe900],0xfc
00000337  7501              jnz 0x33a
00000339  C3                ret
0000033A  56                push si
0000033B  53                push bx
0000033C  C60600E9FF        mov byte [0xe900],0xff
00000341  8A0C              mov cl,[si]
00000343  83C625            add si,0x25
00000346  E8BB11            call 0x1504
00000349  8A04              mov al,[si]
0000034B  0AC0              or al,al
0000034D  7903              jns 0x352
0000034F  E88303            call 0x6d5
00000352  50                push ax
00000353  8AC1              mov al,cl
00000355  E88403            call 0x6dc
00000358  83C603            add si,0x3
0000035B  58                pop ax
0000035C  8A24              mov ah,[si]
0000035E  BAB011            mov dx,0x11b0
00000361  E83902            call 0x59d
00000364  5B                pop bx
00000365  5E                pop si
00000366  C3                ret
00000367  56                push si
00000368  53                push bx
00000369  8BCB              mov cx,bx
0000036B  8BFB              mov di,bx
0000036D  81C700E9          add di,0xe900
00000371  BB1050            mov bx,0x5010
00000374  B0FF              mov al,0xff
00000376  8605              xchg al,[di]
00000378  8807              mov [bx],al
0000037A  C6470100          mov byte [bx+0x1],0x0
0000037E  C64501FF          mov byte [di+0x1],0xff
00000382  8BD1              mov dx,cx
00000384  03D2              add dx,dx
00000386  03D2              add dx,dx
00000388  03D2              add dx,dx
0000038A  81C2B011          add dx,0x11b0
0000038E  8A0C              mov cl,[si]
00000390  83C624            add si,0x24
00000393  E86E11            call 0x1504
00000396  BB1450            mov bx,0x5014
00000399  AD                lodsw
0000039A  8907              mov [bx],ax
0000039C  8AC1              mov al,cl
0000039E  E83B03            call 0x6dc
000003A1  46                inc si
000003A2  46                inc si
000003A3  BF1450            mov di,0x5014
000003A6  BD1050            mov bp,0x5010
000003A9  E8C301            call 0x56f
000003AC  5B                pop bx
000003AD  5E                pop si
000003AE  C3                ret
000003AF  803E1BE9FF        cmp byte [0xe91b],0xff
000003B4  7501              jnz 0x3b7
000003B6  C3                ret
000003B7  803E1BE9FC        cmp byte [0xe91b],0xfc
000003BC  7501              jnz 0x3bf
000003BE  C3                ret
000003BF  C6061BE9FF        mov byte [0xe91b],0xff
000003C4  8A0C              mov cl,[si]
000003C6  83C624            add si,0x24
000003C9  E83811            call 0x1504
000003CC  8A04              mov al,[si]
000003CE  0AC0              or al,al
000003D0  7903              jns 0x3d5
000003D2  E80003            call 0x6d5
000003D5  50                push ax
000003D6  8AC1              mov al,cl
000003D8  E80103            call 0x6dc
000003DB  83C602            add si,0x2
000003DE  58                pop ax
000003DF  8A24              mov ah,[si]
000003E1  BA8812            mov dx,0x1288
000003E4  E9B601            jmp 0x59d
000003E7  56                push si
000003E8  57                push di
000003E9  53                push bx
000003EA  53                push bx
000003EB  BB1050            mov bx,0x5010
000003EE  B0FF              mov al,0xff
000003F0  8605              xchg al,[di]
000003F2  8807              mov [bx],al
000003F4  B0FF              mov al,0xff
000003F6  86451C            xchg al,[di+0x1c]
000003F9  884701            mov [bx+0x1],al
000003FC  8A4CFF            mov cl,[si-0x1]
000003FF  8A14              mov dl,[si]
00000401  83C624            add si,0x24
00000404  E8FD10            call 0x1504
00000407  8A34              mov dh,[si]
00000409  8AC1              mov al,cl
0000040B  E8CE02            call 0x6dc
0000040E  46                inc si
0000040F  8BDA              mov bx,dx
00000411  5A                pop dx
00000412  03D2              add dx,dx
00000414  03D2              add dx,dx
00000416  03D2              add dx,dx
00000418  0316EB4F          add dx,[0x4feb]
0000041C  803E1050FF        cmp byte [0x5010],0xff
00000421  741B              jz 0x43e
00000423  803E1050FC        cmp byte [0x5010],0xfc
00000428  7414              jz 0x43e
0000042A  8A24              mov ah,[si]
0000042C  8AC3              mov al,bl
0000042E  53                push bx
0000042F  56                push si
00000430  52                push dx
00000431  0AC0              or al,al
00000433  7903              jns 0x438
00000435  E89D02            call 0x6d5
00000438  E86201            call 0x59d
0000043B  5A                pop dx
0000043C  5E                pop si
0000043D  5B                pop bx
0000043E  81C2000A          add dx,0xa00
00000442  803EF14F01        cmp byte [0x4ff1],0x1
00000447  741F              jz 0x468
00000449  803E1150FF        cmp byte [0x5011],0xff
0000044E  7418              jz 0x468
00000450  803E1150FC        cmp byte [0x5011],0xfc
00000455  7411              jz 0x468
00000457  46                inc si
00000458  46                inc si
00000459  AC                lodsb
0000045A  8AE0              mov ah,al
0000045C  8AC7              mov al,bh
0000045E  0AC0              or al,al
00000460  7903              jns 0x465
00000462  E87002            call 0x6d5
00000465  E83501            call 0x59d
00000468  5B                pop bx
00000469  5F                pop di
0000046A  5E                pop si
0000046B  C3                ret
0000046C  56                push si
0000046D  57                push di
0000046E  53                push bx
0000046F  53                push bx
00000470  BB1050            mov bx,0x5010
00000473  B8FEFF            mov ax,0xfffe
00000476  8745FF            xchg ax,[di-0x1]
00000479  8907              mov [bx],ax
0000047B  B8FFFF            mov ax,0xffff
0000047E  87451B            xchg ax,[di+0x1b]
00000481  894702            mov [bx+0x2],ax
00000484  8A4CFF            mov cl,[si-0x1]
00000487  BB1450            mov bx,0x5014
0000048A  8A04              mov al,[si]
0000048C  884701            mov [bx+0x1],al
0000048F  83C624            add si,0x24
00000492  E86F10            call 0x1504
00000495  8B44FF            mov ax,[si-0x1]
00000498  894702            mov [bx+0x2],ax
0000049B  5A                pop dx
0000049C  8816F24F          mov [0x4ff2],dl
000004A0  A0F14F            mov al,[0x4ff1]
000004A3  F6D8              neg al
000004A5  0412              add al,0x12
000004A7  A2F34F            mov [0x4ff3],al
000004AA  03D2              add dx,dx
000004AC  03D2              add dx,dx
000004AE  03D2              add dx,dx
000004B0  0316EB4F          add dx,[0x4feb]
000004B4  8AC1              mov al,cl
000004B6  E82302            call 0x6dc
000004B9  BF1450            mov di,0x5014
000004BC  8805              mov [di],al
000004BE  BD1050            mov bp,0x5010
000004C1  E8AB00            call 0x56f
000004C4  803EF14F01        cmp byte [0x4ff1],0x1
000004C9  7418              jz 0x4e3
000004CB  81C2F009          add dx,0x9f0
000004CF  E89D00            call 0x56f
000004D2  F60634FFFF        test byte [0xff34],0xff
000004D7  740A              jz 0x4e3
000004D9  F6062FFFFF        test byte [0xff2f],0xff
000004DE  7403              jz 0x4e3
000004E0  E84A02            call 0x72d
000004E3  5B                pop bx
000004E4  5F                pop di
000004E5  5E                pop si
000004E6  C3                ret
000004E7  56                push si
000004E8  57                push di
000004E9  53                push bx
000004EA  53                push bx
000004EB  BB1050            mov bx,0x5010
000004EE  B0FE              mov al,0xfe
000004F0  8645FF            xchg al,[di-0x1]
000004F3  8807              mov [bx],al
000004F5  B0FF              mov al,0xff
000004F7  86451B            xchg al,[di+0x1b]
000004FA  884701            mov [bx+0x1],al
000004FD  8A4CFF            mov cl,[si-0x1]
00000500  83C624            add si,0x24
00000503  E8FE0F            call 0x1504
00000506  8A54FF            mov dl,[si-0x1]
00000509  8AC1              mov al,cl
0000050B  E8CE01            call 0x6dc
0000050E  8AD8              mov bl,al
00000510  8AFA              mov bh,dl
00000512  5A                pop dx
00000513  03D2              add dx,dx
00000515  03D2              add dx,dx
00000517  03D2              add dx,dx
00000519  0316EB4F          add dx,[0x4feb]
0000051D  803E1050FF        cmp byte [0x5010],0xff
00000522  741B              jz 0x53f
00000524  803E1050FC        cmp byte [0x5010],0xfc
00000529  7414              jz 0x53f
0000052B  8A24              mov ah,[si]
0000052D  8AC3              mov al,bl
0000052F  53                push bx
00000530  56                push si
00000531  52                push dx
00000532  0AC0              or al,al
00000534  7903              jns 0x539
00000536  E89C01            call 0x6d5
00000539  E86100            call 0x59d
0000053C  5A                pop dx
0000053D  5E                pop si
0000053E  5B                pop bx
0000053F  81C2000A          add dx,0xa00
00000543  803EF14F01        cmp byte [0x4ff1],0x1
00000548  741F              jz 0x569
0000054A  803E1150FF        cmp byte [0x5011],0xff
0000054F  7418              jz 0x569
00000551  803E1150FC        cmp byte [0x5011],0xfc
00000556  7411              jz 0x569
00000558  46                inc si
00000559  46                inc si
0000055A  AC                lodsb
0000055B  8AE0              mov ah,al
0000055D  8AC7              mov al,bh
0000055F  0AC0              or al,al
00000561  7903              jns 0x566
00000563  E86F01            call 0x6d5
00000566  E83400            call 0x59d
00000569  5B                pop bx
0000056A  5F                pop di
0000056B  5E                pop si
0000056C  E9A6FB            jmp 0x115
0000056F  E80000            call 0x572
00000572  3E807E00FF        cmp byte [ds:bp+0x0],0xff
00000577  741D              jz 0x596
00000579  3E807E00FC        cmp byte [ds:bp+0x0],0xfc
0000057E  7416              jz 0x596
00000580  8A24              mov ah,[si]
00000582  8A05              mov al,[di]
00000584  0AC0              or al,al
00000586  7903              jns 0x58b
00000588  E84A01            call 0x6d5
0000058B  55                push bp
0000058C  56                push si
0000058D  57                push di
0000058E  52                push dx
0000058F  E80B00            call 0x59d
00000592  5A                pop dx
00000593  5F                pop di
00000594  5E                pop si
00000595  5D                pop bp
00000596  46                inc si
00000597  47                inc di
00000598  45                inc bp
00000599  83C208            add dx,0x8
0000059C  C3                ret
0000059D  06                push es
0000059E  1E                push ds
0000059F  8A1EF44F          mov bl,[0x4ff4]
000005A3  0AC0              or al,al
000005A5  7405              jz 0x5ac
000005A7  7803              js 0x5ac
000005A9  80CB80            or bl,0x80
000005AC  8AC8              mov cl,al
000005AE  8AC4              mov al,ah
000005B0  B520              mov ch,0x20
000005B2  F6E5              mul ch
000005B4  8BF0              mov si,ax
000005B6  81C60040          add si,0x4000
000005BA  D1E8              shr ax,0x0
000005BC  D1E8              shr ax,0x0
000005BE  8BE8              mov bp,ax
000005C0  81C500A0          add bp,0xa000
000005C4  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000005C9  8BFA              mov di,dx
000005CB  B800A0            mov ax,0xa000
000005CE  8EC0              mov es,ax
000005D0  8AEB              mov ch,bl
000005D2  80E37F            and bl,0x7f
000005D5  32FF              xor bh,bh
000005D7  03DB              add bx,bx
000005D9  2E8B878C4F        mov ax,[cs:bx+0x4f8c]
000005DE  2EA3E94F          mov [cs:0x4fe9],ax
000005E2  8AC1              mov al,cl
000005E4  0AED              or ch,ch
000005E6  7816              js 0x5fe
000005E8  57                push di
000005E9  BF00FA            mov di,0xfa00
000005EC  E86600            call 0x655
000005EF  5F                pop di
000005F0  BE00FA            mov si,0xfa00
000005F3  B800A0            mov ax,0xa000
000005F6  8ED8              mov ds,ax
000005F8  E89300            call 0x68e
000005FB  1F                pop ds
000005FC  07                pop es
000005FD  C3                ret
000005FE  57                push di
000005FF  BF00FA            mov di,0xfa00
00000602  E80F00            call 0x614
00000605  5F                pop di
00000606  BE00FA            mov si,0xfa00
00000609  B800A0            mov ax,0xa000
0000060C  8ED8              mov ds,ax
0000060E  E87D00            call 0x68e
00000611  1F                pop ds
00000612  07                pop es
00000613  C3                ret
00000614  55                push bp
00000615  56                push si
00000616  57                push di
00000617  FEC9              dec cl
00000619  B030              mov al,0x30
0000061B  F6E1              mul cl
0000061D  053080            add ax,0x8030
00000620  8BF0              mov si,ax
00000622  E87700            call 0x69c
00000625  5F                pop di
00000626  5E                pop si
00000627  5D                pop bp
00000628  EB00              jmp 0x62a
0000062A  B90800            mov cx,0x8
0000062D  51                push cx
0000062E  3E8A5600          mov dl,[ds:bp+0x0]
00000632  AD                lodsw
00000633  E80900            call 0x63f
00000636  AD                lodsw
00000637  E80500            call 0x63f
0000063A  45                inc bp
0000063B  59                pop cx
0000063C  E2EF              loop 0x62d
0000063E  C3                ret
0000063F  B90400            mov cx,0x4
00000642  02D2              add dl,dl
00000644  1AF6              sbb dh,dh
00000646  262235            and dh,[es:di]
00000649  E82600            call 0x672
0000064C  0ADE              or bl,dh
0000064E  26881D            mov [es:di],bl
00000651  47                inc di
00000652  E2EE              loop 0x642
00000654  C3                ret
00000655  B90800            mov cx,0x8
00000658  51                push cx
00000659  AD                lodsw
0000065A  E80800            call 0x665
0000065D  AD                lodsw
0000065E  E80400            call 0x665
00000661  59                pop cx
00000662  E2F4              loop 0x658
00000664  C3                ret
00000665  B90400            mov cx,0x4
00000668  E80700            call 0x672
0000066B  26881D            mov [es:di],bl
0000066E  47                inc di
0000066F  E2F7              loop 0x668
00000671  C3                ret
00000672  03C0              add ax,ax
00000674  13DB              adc bx,bx
00000676  03C0              add ax,ax
00000678  13DB              adc bx,bx
0000067A  03C0              add ax,ax
0000067C  13DB              adc bx,bx
0000067E  03C0              add ax,ax
00000680  13DB              adc bx,bx
00000682  83E30F            and bx,0xf
00000685  2E031EE94F        add bx,[cs:0x4fe9]
0000068A  2E8A1F            mov bl,[cs:bx]
0000068D  C3                ret
0000068E  B90800            mov cx,0x8
00000691  A5                movsw
00000692  A5                movsw
00000693  A5                movsw
00000694  A5                movsw
00000695  81C73801          add di,0x138
00000699  E2F6              loop 0x691
0000069B  C3                ret
0000069C  B91000            mov cx,0x10
0000069F  AD                lodsw
000006A0  8BD0              mov dx,ax
000006A2  AC                lodsb
000006A3  8AD8              mov bl,al
000006A5  8AFA              mov bh,dl
000006A7  D1EA              shr dx,0x0
000006A9  D1EA              shr dx,0x0
000006AB  268835            mov [es:di],dh
000006AE  D0EA              shr dl,0x0
000006B0  D0EA              shr dl,0x0
000006B2  26885501          mov [es:di+0x1],dl
000006B6  03DB              add bx,bx
000006B8  03DB              add bx,bx
000006BA  80E73F            and bh,0x3f
000006BD  26887D02          mov [es:di+0x2],bh
000006C1  243F              and al,0x3f
000006C3  26884503          mov [es:di+0x3],al
000006C7  83C704            add di,0x4
000006CA  E2D3              loop 0x69f
000006CC  C3                ret
000006CD  33C0              xor ax,ax
000006CF  B92000            mov cx,0x20
000006D2  F3AB              rep stosw
000006D4  C3                ret
000006D5  247F              and al,0x7f
000006D7  BB20ED            mov bx,0xed20
000006DA  D7                xlatb
000006DB  C3                ret
000006DC  247F              and al,0x7f
000006DE  8AD8              mov bl,al
000006E0  32FF              xor bh,bh
000006E2  8A8F20ED          mov cl,[bx-0x12e0]
000006E6  B510              mov ch,0x10
000006E8  F6E5              mul ch
000006EA  030610C0          add ax,[0xc010]
000006EE  8BE8              mov bp,ax
000006F0  3E8A4606          mov al,[ds:bp+0x6]
000006F4  240F              and al,0xf
000006F6  B505              mov ch,0x5
000006F8  F6E5              mul ch
000006FA  BE70A0            mov si,0xa070
000006FD  3EF6460580        test byte [ds:bp+0x5],0x80
00000702  7503              jnz 0x707
00000704  BE30A0            mov si,0xa030
00000707  3E8A5E04          mov bl,[ds:bp+0x4]
0000070B  80E31F            and bl,0x1f
0000070E  02DB              add bl,bl
00000710  32FF              xor bh,bh
00000712  0300              add ax,[bx+si]
00000714  8BF0              mov si,ax
00000716  AC                lodsb
00000717  F60634FFFF        test byte [0xff34],0xff
0000071C  7509              jnz 0x727
0000071E  3EF6460520        test byte [ds:bp+0x5],0x20
00000723  7402              jz 0x727
00000725  0403              add al,0x3
00000727  A2F44F            mov [0x4ff4],al
0000072A  8AC1              mov al,cl
0000072C  C3                ret
0000072D  803EF34F10        cmp byte [0x4ff3],0x10
00000732  7201              jc 0x735
00000734  C3                ret
00000735  0E                push cs
00000736  07                pop es
00000737  2EFF161A01        call word near [cs:0x11a]
0000073C  240F              and al,0xf
0000073E  3C0E              cmp al,0xe
00000740  7301              jnc 0x743
00000742  C3                ret
00000743  BFA0ED            mov di,0xeda0
00000746  32C9              xor cl,cl
00000748  803DFF            cmp byte [di],0xff
0000074B  7407              jz 0x754
0000074D  83C704            add di,0x4
00000750  FEC1              inc cl
00000752  EBF4              jmp 0x748
00000754  80F920            cmp cl,0x20
00000757  7201              jc 0x75a
00000759  C3                ret
0000075A  2EFF161A01        call word near [cs:0x11a]
0000075F  2403              and al,0x3
00000761  3C03              cmp al,0x3
00000763  74F5              jz 0x75a
00000765  FEC8              dec al
00000767  0206F24F          add al,[0x4ff2]
0000076B  3CFF              cmp al,0xff
0000076D  7502              jnz 0x771
0000076F  B004              mov al,0x4
00000771  3C1B              cmp al,0x1b
00000773  7202              jc 0x777
00000775  B01A              mov al,0x1a
00000777  AA                stosb
00000778  2EFF161A01        call word near [cs:0x11a]
0000077D  2403              and al,0x3
0000077F  3C03              cmp al,0x3
00000781  74F5              jz 0x778
00000783  FEC8              dec al
00000785  0206F34F          add al,[0x4ff3]
00000789  3CFF              cmp al,0xff
0000078B  7502              jnz 0x78f
0000078D  32C0              xor al,al
0000078F  AA                stosb
00000790  B003              mov al,0x3
00000792  AA                stosb
00000793  2EFF161A01        call word near [cs:0x11a]
00000798  2403              and al,0x3
0000079A  AA                stosb
0000079B  B0FF              mov al,0xff
0000079D  AA                stosb
0000079E  C3                ret
0000079F  0E                push cs
000007A0  07                pop es
000007A1  BFA0ED            mov di,0xeda0
000007A4  8BF7              mov si,di
000007A6  803CFF            cmp byte [si],0xff
000007A9  7504              jnz 0x7af
000007AB  C605FF            mov byte [di],0xff
000007AE  C3                ret
000007AF  8A4401            mov al,[si+0x1]
000007B2  B11C              mov cl,0x1c
000007B4  F6E1              mul cl
000007B6  8A0C              mov cl,[si]
000007B8  32ED              xor ch,ch
000007BA  03C1              add ax,cx
000007BC  57                push di
000007BD  0500E9            add ax,0xe900
000007C0  8BF8              mov di,ax
000007C2  B0FE              mov al,0xfe
000007C4  AA                stosb
000007C5  AA                stosb
000007C6  83C71A            add di,0x1a
000007C9  AA                stosb
000007CA  AA                stosb
000007CB  5F                pop di
000007CC  8A4401            mov al,[si+0x1]
000007CF  32E4              xor ah,ah
000007D1  BA000A            mov dx,0xa00
000007D4  F7E2              mul dx
000007D6  8A0C              mov cl,[si]
000007D8  32ED              xor ch,ch
000007DA  03C9              add cx,cx
000007DC  03C9              add cx,cx
000007DE  03C9              add cx,cx
000007E0  03C1              add ax,cx
000007E2  05B011            add ax,0x11b0
000007E5  56                push si
000007E6  57                push di
000007E7  06                push es
000007E8  50                push ax
000007E9  8A5C03            mov bl,[si+0x3]
000007EC  32FF              xor bh,bh
000007EE  03DB              add bx,bx
000007F0  8B879338          mov ax,[bx+0x3893]
000007F4  A3F54F            mov [0x4ff5],ax
000007F7  8A5C02            mov bl,[si+0x2]
000007FA  80E303            and bl,0x3
000007FD  02DB              add bl,bl
000007FF  32FF              xor bh,bh
00000801  8BB79B38          mov si,[bx+0x389b]
00000805  5F                pop di
00000806  B800A0            mov ax,0xa000
00000809  8EC0              mov es,ax
0000080B  B91000            mov cx,0x10
0000080E  AD                lodsw
0000080F  86E0              xchg ah,al
00000811  E88208            call 0x1096
00000814  F7D5              not bp
00000816  26212D            and [es:di],bp
00000819  260915            or [es:di],dx
0000081C  E87708            call 0x1096
0000081F  F7D5              not bp
00000821  26216D02          and [es:di+0x2],bp
00000825  26095502          or [es:di+0x2],dx
00000829  E86A08            call 0x1096
0000082C  F7D5              not bp
0000082E  26216D04          and [es:di+0x4],bp
00000832  26095504          or [es:di+0x4],dx
00000836  E85D08            call 0x1096
00000839  F7D5              not bp
0000083B  26216D06          and [es:di+0x6],bp
0000083F  26095506          or [es:di+0x6],dx
00000843  AD                lodsw
00000844  86E0              xchg ah,al
00000846  E84D08            call 0x1096
00000849  F7D5              not bp
0000084B  26216D08          and [es:di+0x8],bp
0000084F  26095508          or [es:di+0x8],dx
00000853  E84008            call 0x1096
00000856  F7D5              not bp
00000858  26216D0A          and [es:di+0xa],bp
0000085C  2609550A          or [es:di+0xa],dx
00000860  E83308            call 0x1096
00000863  F7D5              not bp
00000865  26216D0C          and [es:di+0xc],bp
00000869  2609550C          or [es:di+0xc],dx
0000086D  E82608            call 0x1096
00000870  F7D5              not bp
00000872  26216D0E          and [es:di+0xe],bp
00000876  2609550E          or [es:di+0xe],dx
0000087A  81C74001          add di,0x140
0000087E  E28E              loop 0x80e
00000880  07                pop es
00000881  5F                pop di
00000882  5E                pop si
00000883  FE4C02            dec byte [si+0x2]
00000886  807C02FF          cmp byte [si+0x2],0xff
0000088A  7405              jz 0x891
0000088C  A5                movsw
0000088D  A5                movsw
0000088E  83EE04            sub si,0x4
00000891  83C604            add si,0x4
00000894  E90FFF            jmp 0x7a6
00000897  1012              adc [bp+si],dl
00000899  3036383F          xor [0x3f38],dh
0000089D  30366339          xor [0x3963],dh
000008A1  2339              and di,[bx+di]
000008A3  E338              jcxz 0x8dd
000008A5  A33800            mov [0x38],ax
000008A8  0000              add [bx+si],al
000008AA  0000              add [bx+si],al
000008AC  0000              add [bx+si],al
000008AE  0000              add [bx+si],al
000008B0  0000              add [bx+si],al
000008B2  0000              add [bx+si],al
000008B4  0000              add [bx+si],al
000008B6  0000              add [bx+si],al
000008B8  0BD0              or dx,ax
000008BA  0000              add [bx+si],al
000008BC  5F                pop di
000008BD  FA                cli
000008BE  0000              add [bx+si],al
000008C0  7FFE              jg 0x8c0
000008C2  0000              add [bx+si],al
000008C4  FF                db 0xff
000008C5  FF00              inc word [bx+si]
000008C7  00FF              add bh,bh
000008C9  FF00              inc word [bx+si]
000008CB  007FFE            add [bx-0x2],bh
000008CE  0000              add [bx+si],al
000008D0  5F                pop di
000008D1  FA                cli
000008D2  0000              add [bx+si],al
000008D4  0BD0              or dx,ax
000008D6  0000              add [bx+si],al
000008D8  0000              add [bx+si],al
000008DA  0000              add [bx+si],al
000008DC  0000              add [bx+si],al
000008DE  0000              add [bx+si],al
000008E0  0000              add [bx+si],al
000008E2  0000              add [bx+si],al
000008E4  0000              add [bx+si],al
000008E6  0000              add [bx+si],al
000008E8  0000              add [bx+si],al
000008EA  0000              add [bx+si],al
000008EC  0000              add [bx+si],al
000008EE  0000              add [bx+si],al
000008F0  2F                das
000008F1  F4                hlt
000008F2  0000              add [bx+si],al
000008F4  FF                db 0xff
000008F5  FF00              inc word [bx+si]
000008F7  03FF              add di,di
000008F9  FFC0              inc ax
000008FB  07                pop es
000008FC  FF                db 0xff
000008FD  FF                db 0xff
000008FE  E00F              loopne 0x90f
00000900  FA                cli
00000901  5F                pop di
00000902  F0                lock
00000903  0F                db 0x0f
00000904  F0                lock
00000905  0F                db 0x0f
00000906  F0                lock
00000907  0F                db 0x0f
00000908  F0                lock
00000909  0F                db 0x0f
0000090A  F0                lock
0000090B  0FFA5FF0          psubd mm3,[bx-0x10]
0000090F  07                pop es
00000910  FF                db 0xff
00000911  FF                db 0xff
00000912  E003              loopne 0x917
00000914  FF                db 0xff
00000915  FFC0              inc ax
00000917  00FF              add bh,bh
00000919  FF00              inc word [bx+si]
0000091B  002F              add [bx],ch
0000091D  F4                hlt
0000091E  0000              add [bx+si],al
00000920  0000              add [bx+si],al
00000922  0000              add [bx+si],al
00000924  0000              add [bx+si],al
00000926  0000              add [bx+si],al
00000928  2F                das
00000929  F4                hlt
0000092A  0001              add [bx+di],al
0000092C  7FFE              jg 0x92c
0000092E  8007FF            add byte [bx],0xff
00000931  FF                db 0xff
00000932  E00F              loopne 0x943
00000934  FF                db 0xff
00000935  FFF0              push ax
00000937  3F                aas
00000938  F4                hlt
00000939  2F                das
0000093A  FC                cld
0000093B  7FA0              jg 0x8dd
0000093D  05FE7F            add ax,0x7ffe
00000940  8001FE            add byte [bx+di],0xfe
00000943  FF00              inc word [bx+si]
00000945  00FF              add bh,bh
00000947  FF00              inc word [bx+si]
00000949  00FF              add bh,bh
0000094B  7F80              jg 0x8cd
0000094D  01FE              add si,di
0000094F  7FA0              jg 0x8f1
00000951  05FE3F            add ax,0x3ffe
00000954  F4                hlt
00000955  2F                das
00000956  FC                cld
00000957  0FFFFF            ud0 di,di
0000095A  F0                lock
0000095B  07                pop es
0000095C  FF                db 0xff
0000095D  FF                db 0xff
0000095E  E001              loopne 0x961
00000960  7FFE              jg 0x960
00000962  80002F            add byte [bx+si],0x2f
00000965  F4                hlt
00000966  0000              add [bx+si],al
00000968  2F                das
00000969  F4                hlt
0000096A  0001              add [bx+di],al
0000096C  7FFE              jg 0x96c
0000096E  8007D0            add byte [bx],0xd0
00000971  0BE0              or sp,ax
00000973  0F0000            sldt word [bx+si]
00000976  F0                lock
00000977  3C00              cmp al,0x0
00000979  003C              add [si],bh
0000097B  7800              js 0x97d
0000097D  001E7000          add [0x70],bl
00000981  000EF000          add [0xf0],cl
00000985  000F              add [bx],cl
00000987  F00000            lock add [bx+si],al
0000098A  0F700000          pshufw mm0,[bx+si],0x0
0000098E  0E                push cs
0000098F  7800              js 0x991
00000991  001E3C00          add [0x3c],bl
00000995  003C              add [si],bh
00000997  0F0000            sldt word [bx+si]
0000099A  F0                lock
0000099B  07                pop es
0000099C  D00B              ror byte [bp+di],0x0
0000099E  E001              loopne 0x9a1
000009A0  7FFE              jg 0x9a0
000009A2  80002F            add byte [bx+si],0x2f
000009A5  F4                hlt
000009A6  00BF1450          add [bx+0x5014],bh
000009AA  0E                push cs
000009AB  07                pop es
000009AC  33C0              xor ax,ax
000009AE  AB                stosw
000009AF  AB                stosw
000009B0  AB                stosw
000009B1  AB                stosw
000009B2  AA                stosb
000009B3  BF0050            mov di,0x5000
000009B6  B90800            mov cx,0x8
000009B9  F3AB              rep stosw
000009BB  EB3C              jmp 0x9f9
000009BD  E81004            call 0xdd0
000009C0  BF0050            mov di,0x5000
000009C3  8A1635FF          mov dl,[0xff35]
000009C7  FECA              dec dl
000009C9  B90400            mov cx,0x4
000009CC  51                push cx
000009CD  80E23F            and dl,0x3f
000009D0  B024              mov al,0x24
000009D2  F6E2              mul dl
000009D4  8BD8              mov bx,ax
000009D6  81C300E0          add bx,0xe000
000009DA  A08300            mov al,[0x83]
000009DD  0403              add al,0x3
000009DF  32E4              xor ah,ah
000009E1  03D8              add bx,ax
000009E3  B90400            mov cx,0x4
000009E6  8A07              mov al,[bx]
000009E8  0AC0              or al,al
000009EA  7802              js 0x9ee
000009EC  32C0              xor al,al
000009EE  8805              mov [di],al
000009F0  43                inc bx
000009F1  47                inc di
000009F2  E2F2              loop 0x9e6
000009F4  FEC2              inc dl
000009F6  59                pop cx
000009F7  E2D3              loop 0x9cc
000009F9  A08400            mov al,[0x84]
000009FC  32E4              xor ah,ah
000009FE  B9000A            mov cx,0xa00
00000A01  F7E1              mul cx
00000A03  8A0E8300          mov cl,[0x83]
00000A07  32ED              xor ch,ch
00000A09  03C9              add cx,cx
00000A0B  03C9              add cx,cx
00000A0D  03C9              add cx,cx
00000A0F  03C1              add ax,cx
00000A11  05B011            add ax,0x11b0
00000A14  A3ED4F            mov [0x4fed],ax
00000A17  C606F24F00        mov byte [0x4ff2],0x0
00000A1C  BE1450            mov si,0x5014
00000A1F  BF0050            mov di,0x5000
00000A22  B90300            mov cx,0x3
00000A25  51                push cx
00000A26  B90300            mov cx,0x3
00000A29  51                push cx
00000A2A  B8883A            mov ax,0x3a88
00000A2D  50                push ax
00000A2E  8A05              mov al,[di]
00000A30  0A4501            or al,[di+0x1]
00000A33  0A4504            or al,[di+0x4]
00000A36  0A4505            or al,[di+0x5]
00000A39  7503              jnz 0xa3e
00000A3B  E9FA02            jmp 0xd38
00000A3E  F605FF            test byte [di],0xff
00000A41  740F              jz 0xa52
00000A43  8A05              mov al,[di]
00000A45  56                push si
00000A46  E893FC            call 0x6dc
00000A49  46                inc si
00000A4A  46                inc si
00000A4B  46                inc si
00000A4C  8A04              mov al,[si]
00000A4E  5E                pop si
00000A4F  E91E03            jmp 0xd70
00000A52  F64501FF          test byte [di+0x1],0xff
00000A56  740F              jz 0xa67
00000A58  8A4501            mov al,[di+0x1]
00000A5B  56                push si
00000A5C  E87DFC            call 0x6dc
00000A5F  46                inc si
00000A60  46                inc si
00000A61  8A04              mov al,[si]
00000A63  5E                pop si
00000A64  E90903            jmp 0xd70
00000A67  F64504FF          test byte [di+0x4],0xff
00000A6B  740E              jz 0xa7b
00000A6D  8A4504            mov al,[di+0x4]
00000A70  56                push si
00000A71  E868FC            call 0x6dc
00000A74  46                inc si
00000A75  8A04              mov al,[si]
00000A77  5E                pop si
00000A78  E9F502            jmp 0xd70
00000A7B  8A4505            mov al,[di+0x5]
00000A7E  56                push si
00000A7F  E85AFC            call 0x6dc
00000A82  8A0C              mov cl,[si]
00000A84  5E                pop si
00000A85  8804              mov [si],al
00000A87  8AC1              mov al,cl
00000A89  E9E402            jmp 0xd70
00000A8C  FE06F24F          inc byte [0x4ff2]
00000A90  47                inc di
00000A91  46                inc si
00000A92  59                pop cx
00000A93  E294              loop 0xa29
00000A95  59                pop cx
00000A96  47                inc di
00000A97  E28C              loop 0xa25
00000A99  8A1E36FF          mov bl,[0xff36]
00000A9D  80E303            and bl,0x3
00000AA0  32FF              xor bh,bh
00000AA2  03DB              add bx,bx
00000AA4  2E8B878C4F        mov ax,[cs:bx+0x4f8c]
00000AA9  2EA3E94F          mov [cs:0x4fe9],ax
00000AAD  2E8E062CFF        mov es,word [cs:0xff2c]
00000AB2  A0E800            mov al,[0xe8]
00000AB5  0A0639FF          or al,[0xff39]
00000AB9  0A063AFF          or al,[0xff3a]
00000ABD  7403              jz 0xac2
00000ABF  E9C200            jmp 0xb84
00000AC2  B1FF              mov cl,0xff
00000AC4  BE1761            mov si,0x6117
00000AC7  F606C20001        test byte [0xc2],0x1
00000ACC  7405              jz 0xad3
00000ACE  32C9              xor cl,cl
00000AD0  BEB961            mov si,0x61b9
00000AD3  F60640FFFF        test byte [0xff40],0xff
00000AD8  7442              jz 0xb1c
00000ADA  FEC1              inc cl
00000ADC  751A              jnz 0xaf8
00000ADE  A03FFF            mov al,[0xff3f]
00000AE1  D0E8              shr al,0x0
00000AE3  B109              mov cl,0x9
00000AE5  F6E1              mul cl
00000AE7  50                push ax
00000AE8  E83B02            call 0xd26
00000AEB  B124              mov cl,0x24
00000AED  F6E1              mul cl
00000AEF  5E                pop si
00000AF0  03F0              add si,ax
00000AF2  81C6C762          add si,0x62c7
00000AF6  EB6D              jmp 0xb65
00000AF8  A03FFF            mov al,[0xff3f]
00000AFB  D0E8              shr al,0x0
00000AFD  B109              mov cl,0x9
00000AFF  F6E1              mul cl
00000B01  052400            add ax,0x24
00000B04  8A1641FF          mov dl,[0xff41]
00000B08  FECA              dec dl
00000B0A  7505              jnz 0xb11
00000B0C  052400            add ax,0x24
00000B0F  EB07              jmp 0xb18
00000B11  FECA              dec dl
00000B13  7503              jnz 0xb18
00000B15  B86300            mov ax,0x63
00000B18  03F0              add si,ax
00000B1A  EB49              jmp 0xb65
00000B1C  E80702            call 0xd26
00000B1F  0AC0              or al,al
00000B21  7424              jz 0xb47
00000B23  FEC8              dec al
00000B25  8AC8              mov cl,al
00000B27  F606C20001        test byte [0xc2],0x1
00000B2C  7519              jnz 0xb47
00000B2E  B86C00            mov ax,0x6c
00000B31  8A1638FF          mov dl,[0xff38]
00000B35  80E209            and dl,0x9
00000B38  32F6              xor dh,dh
00000B3A  03C2              add ax,dx
00000B3C  0AC9              or cl,cl
00000B3E  7403              jz 0xb43
00000B40  051B00            add ax,0x1b
00000B43  03F0              add si,ax
00000B45  EB1E              jmp 0xb65
00000B47  F60638FFFF        test byte [0xff38],0xff
00000B4C  7536              jnz 0xb84
00000B4E  A0E700            mov al,[0xe7]
00000B51  3C80              cmp al,0x80
00000B53  742F              jz 0xb84
00000B55  0402              add al,0x2
00000B57  2403              and al,0x3
00000B59  A801              test al,0x1
00000B5B  7527              jnz 0xb84
00000B5D  B109              mov cl,0x9
00000B5F  F6E1              mul cl
00000B61  03F0              add si,ax
00000B63  EB14              jmp 0xb79
00000B65  F60638FFFF        test byte [0xff38],0xff
00000B6A  740D              jz 0xb79
00000B6C  B90600            mov cx,0x6
00000B6F  C606F24F03        mov byte [0x4ff2],0x3
00000B74  E86901            call 0xce0
00000B77  EB0B              jmp 0xb84
00000B79  B90900            mov cx,0x9
00000B7C  C606F24F00        mov byte [0x4ff2],0x0
00000B81  E85C01            call 0xce0
00000B84  BE0E61            mov si,0x610e
00000B87  F6063AFFFF        test byte [0xff3a],0xff
00000B8C  7568              jnz 0xbf6
00000B8E  BEEA60            mov si,0x60ea
00000B91  F60639FFFF        test byte [0xff39],0xff
00000B96  7553              jnz 0xbeb
00000B98  BE7560            mov si,0x6075
00000B9B  F606C20001        test byte [0xc2],0x1
00000BA0  7503              jnz 0xba5
00000BA2  BE0060            mov si,0x6000
00000BA5  F606E800FF        test byte [0xe8],0xff
00000BAA  7405              jz 0xbb1
00000BAC  83C65A            add si,0x5a
00000BAF  EB3A              jmp 0xbeb
00000BB1  B82D00            mov ax,0x2d
00000BB4  F60638FFFF        test byte [0xff38],0xff
00000BB9  7539              jnz 0xbf4
00000BBB  B83F00            mov ax,0x3f
00000BBE  F6063DFF80        test byte [0xff3d],0x80
00000BC3  752F              jnz 0xbf4
00000BC5  8A0E42FF          mov cl,[0xff42]
00000BC9  B84800            mov ax,0x48
00000BCC  FEC9              dec cl
00000BCE  7424              jz 0xbf4
00000BD0  B85100            mov ax,0x51
00000BD3  FEC9              dec cl
00000BD5  741D              jz 0xbf4
00000BD7  B83600            mov ax,0x36
00000BDA  803E3DFF7F        cmp byte [0xff3d],0x7f
00000BDF  7413              jz 0xbf4
00000BE1  B82400            mov ax,0x24
00000BE4  803EE70080        cmp byte [0xe7],0x80
00000BE9  7409              jz 0xbf4
00000BEB  A0E700            mov al,[0xe7]
00000BEE  2403              and al,0x3
00000BF0  B109              mov cl,0x9
00000BF2  F6E1              mul cl
00000BF4  03F0              add si,ax
00000BF6  B90900            mov cx,0x9
00000BF9  C606F24F00        mov byte [0x4ff2],0x0
00000BFE  E8DF00            call 0xce0
00000C01  F606E800FF        test byte [0xe8],0xff
00000C06  7401              jz 0xc09
00000C08  C3                ret
00000C09  B1FF              mov cl,0xff
00000C0B  BEB961            mov si,0x61b9
00000C0E  F606C20001        test byte [0xc2],0x1
00000C13  7505              jnz 0xc1a
00000C15  32C9              xor cl,cl
00000C17  BE1761            mov si,0x6117
00000C1A  A039FF            mov al,[0xff39]
00000C1D  0A063AFF          or al,[0xff3a]
00000C21  7417              jz 0xc3a
00000C23  E80001            call 0xd26
00000C26  0AC0              or al,al
00000C28  7501              jnz 0xc2b
00000C2A  C3                ret
00000C2B  FEC8              dec al
00000C2D  D0E8              shr al,0x0
00000C2F  1AC0              sbb al,al
00000C31  241B              and al,0x1b
00000C33  047E              add al,0x7e
00000C35  32E4              xor ah,ah
00000C37  E98900            jmp 0xcc3
00000C3A  F60640FFFF        test byte [0xff40],0xff
00000C3F  7442              jz 0xc83
00000C41  FEC1              inc cl
00000C43  751A              jnz 0xc5f
00000C45  A03FFF            mov al,[0xff3f]
00000C48  D0E8              shr al,0x0
00000C4A  B109              mov cl,0x9
00000C4C  F6E1              mul cl
00000C4E  50                push ax
00000C4F  E8D400            call 0xd26
00000C52  B124              mov cl,0x24
00000C54  F6E1              mul cl
00000C56  5E                pop si
00000C57  03F0              add si,ax
00000C59  81C65B62          add si,0x625b
00000C5D  EB66              jmp 0xcc5
00000C5F  A03FFF            mov al,[0xff3f]
00000C62  D0E8              shr al,0x0
00000C64  B109              mov cl,0x9
00000C66  F6E1              mul cl
00000C68  052400            add ax,0x24
00000C6B  8A1641FF          mov dl,[0xff41]
00000C6F  FECA              dec dl
00000C71  7505              jnz 0xc78
00000C73  052400            add ax,0x24
00000C76  EB07              jmp 0xc7f
00000C78  FECA              dec dl
00000C7A  7503              jnz 0xc7f
00000C7C  B86300            mov ax,0x63
00000C7F  03F0              add si,ax
00000C81  EB42              jmp 0xcc5
00000C83  F606C20001        test byte [0xc2],0x1
00000C88  741F              jz 0xca9
00000C8A  E89900            call 0xd26
00000C8D  0AC0              or al,al
00000C8F  7418              jz 0xca9
00000C91  FEC8              dec al
00000C93  8AC8              mov cl,al
00000C95  A038FF            mov al,[0xff38]
00000C98  2409              and al,0x9
00000C9A  046C              add al,0x6c
00000C9C  32E4              xor ah,ah
00000C9E  0AC9              or cl,cl
00000CA0  7403              jz 0xca5
00000CA2  051B00            add ax,0x1b
00000CA5  03F0              add si,ax
00000CA7  EB1C              jmp 0xcc5
00000CA9  B81B00            mov ax,0x1b
00000CAC  F60638FFFF        test byte [0xff38],0xff
00000CB1  7510              jnz 0xcc3
00000CB3  8A0EE700          mov cl,[0xe7]
00000CB7  80F980            cmp cl,0x80
00000CBA  7407              jz 0xcc3
00000CBC  80E103            and cl,0x3
00000CBF  B009              mov al,0x9
00000CC1  F6E1              mul cl
00000CC3  03F0              add si,ax
00000CC5  F60638FFFF        test byte [0xff38],0xff
00000CCA  740A              jz 0xcd6
00000CCC  B90600            mov cx,0x6
00000CCF  C606F24F03        mov byte [0x4ff2],0x3
00000CD4  EB0A              jmp 0xce0
00000CD6  B90900            mov cx,0x9
00000CD9  C606F24F00        mov byte [0x4ff2],0x0
00000CDE  EB00              jmp 0xce0
00000CE0  51                push cx
00000CE1  268A04            mov al,[es:si]
00000CE4  0AC0              or al,al
00000CE6  7435              jz 0xd1d
00000CE8  06                push es
00000CE9  1E                push ds
00000CEA  56                push si
00000CEB  57                push di
00000CEC  B520              mov ch,0x20
00000CEE  F6E5              mul ch
00000CF0  8BF0              mov si,ax
00000CF2  81C63363          add si,0x6333
00000CF6  D1E8              shr ax,0x0
00000CF8  D1E8              shr ax,0x0
00000CFA  8BE8              mov bp,ax
00000CFC  81C500D0          add bp,0xd000
00000D00  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000D05  8BFA              mov di,dx
00000D07  0E                push cs
00000D08  07                pop es
00000D09  2EA0F24F          mov al,[cs:0x4ff2]
00000D0D  B140              mov cl,0x40
00000D0F  F6E1              mul cl
00000D11  051D51            add ax,0x511d
00000D14  8BF8              mov di,ax
00000D16  E811F9            call 0x62a
00000D19  5F                pop di
00000D1A  5E                pop si
00000D1B  1F                pop ds
00000D1C  07                pop es
00000D1D  46                inc si
00000D1E  FE06F24F          inc byte [0x4ff2]
00000D22  59                pop cx
00000D23  E2BB              loop 0xce0
00000D25  C3                ret
00000D26  A09300            mov al,[0x93]
00000D29  0AC0              or al,al
00000D2B  7501              jnz 0xd2e
00000D2D  C3                ret
00000D2E  3C04              cmp al,0x4
00000D30  B001              mov al,0x1
00000D32  7301              jnc 0xd35
00000D34  C3                ret
00000D35  B002              mov al,0x2
00000D37  C3                ret
00000D38  8A04              mov al,[si]
00000D3A  1E                push ds
00000D3B  56                push si
00000D3C  57                push di
00000D3D  50                push ax
00000D3E  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000D43  0E                push cs
00000D44  07                pop es
00000D45  2EA0F24F          mov al,[cs:0x4ff2]
00000D49  B140              mov cl,0x40
00000D4B  F6E1              mul cl
00000D4D  051D51            add ax,0x511d
00000D50  8BF8              mov di,ax
00000D52  58                pop ax
00000D53  0AC0              or al,al
00000D55  7412              jz 0xd69
00000D57  FEC8              dec al
00000D59  B130              mov cl,0x30
00000D5B  F6E1              mul cl
00000D5D  053080            add ax,0x8030
00000D60  8BF0              mov si,ax
00000D62  E837F9            call 0x69c
00000D65  5F                pop di
00000D66  5E                pop si
00000D67  1F                pop ds
00000D68  C3                ret
00000D69  E861F9            call 0x6cd
00000D6C  5F                pop di
00000D6D  5E                pop si
00000D6E  1F                pop ds
00000D6F  C3                ret
00000D70  1E                push ds
00000D71  56                push si
00000D72  57                push di
00000D73  8AC8              mov cl,al
00000D75  8A04              mov al,[si]
00000D77  0AC0              or al,al
00000D79  7903              jns 0xd7e
00000D7B  E857F9            call 0x6d5
00000D7E  50                push ax
00000D7F  8A1EF44F          mov bl,[0x4ff4]
00000D83  32FF              xor bh,bh
00000D85  03DB              add bx,bx
00000D87  2E8B978C4F        mov dx,[cs:bx+0x4f8c]
00000D8C  2E8916E94F        mov [cs:0x4fe9],dx
00000D91  8AC1              mov al,cl
00000D93  B520              mov ch,0x20
00000D95  F6E5              mul ch
00000D97  8BF0              mov si,ax
00000D99  81C60040          add si,0x4000
00000D9D  D1E8              shr ax,0x0
00000D9F  D1E8              shr ax,0x0
00000DA1  8BE8              mov bp,ax
00000DA3  81C500A0          add bp,0xa000
00000DA7  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000DAC  0E                push cs
00000DAD  07                pop es
00000DAE  2EA0F24F          mov al,[cs:0x4ff2]
00000DB2  B140              mov cl,0x40
00000DB4  F6E1              mul cl
00000DB6  051D51            add ax,0x511d
00000DB9  8BF8              mov di,ax
00000DBB  58                pop ax
00000DBC  0AC0              or al,al
00000DBE  7409              jz 0xdc9
00000DC0  8AC8              mov cl,al
00000DC2  E84FF8            call 0x614
00000DC5  5F                pop di
00000DC6  5E                pop si
00000DC7  1F                pop ds
00000DC8  C3                ret
00000DC9  E889F8            call 0x655
00000DCC  5F                pop di
00000DCD  5E                pop si
00000DCE  1F                pop ds
00000DCF  C3                ret
00000DD0  8A0E8400          mov cl,[0x84]
00000DD4  B024              mov al,0x24
00000DD6  F6E1              mul cl
00000DD8  8A0E8300          mov cl,[0x83]
00000DDC  80C104            add cl,0x4
00000DDF  32ED              xor ch,ch
00000DE1  03C1              add ax,cx
00000DE3  030631FF          add ax,[0xff31]
00000DE7  8BF0              mov si,ax
00000DE9  E81807            call 0x1504
00000DEC  BF1450            mov di,0x5014
00000DEF  0E                push cs
00000DF0  07                pop es
00000DF1  B90300            mov cx,0x3
00000DF4  A5                movsw
00000DF5  A4                movsb
00000DF6  83C621            add si,0x21
00000DF9  E80807            call 0x1504
00000DFC  E2F6              loop 0xdf4
00000DFE  C3                ret
00000DFF  A0F14F            mov al,[0x4ff1]
00000E02  F6D8              neg al
00000E04  0412              add al,0x12
00000E06  8AC8              mov cl,al
00000E08  F60643FFFF        test byte [0xff43],0xff
00000E0D  750D              jnz 0xe1c
00000E0F  A08400            mov al,[0x84]
00000E12  2C02              sub al,0x2
00000E14  3AC1              cmp al,cl
00000E16  7503              jnz 0xe1b
00000E18  E8D902            call 0x10f4
00000E1B  C3                ret
00000E1C  A08400            mov al,[0x84]
00000E1F  2C05              sub al,0x5
00000E21  3AC8              cmp cl,al
00000E23  7301              jnc 0xe26
00000E25  C3                ret
00000E26  7506              jnz 0xe2e
00000E28  E80201            call 0xf2d
00000E2B  E9C602            jmp 0x10f4
00000E2E  040A              add al,0xa
00000E30  3AC1              cmp al,cl
00000E32  7401              jz 0xe35
00000E34  C3                ret
00000E35  E99C01            jmp 0xfd4
00000E38  F60643FFFF        test byte [0xff43],0xff
00000E3D  7501              jnz 0xe40
00000E3F  C3                ret
00000E40  06                push es
00000E41  56                push si
00000E42  57                push di
00000E43  53                push bx
00000E44  2E8E062CFF        mov es,word [cs:0xff2c]
00000E49  FE0646FF          inc byte [0xff46]
00000E4D  A045FF            mov al,[0xff45]
00000E50  0AC0              or al,al
00000E52  745C              jz 0xeb0
00000E54  FEC8              dec al
00000E56  742D              jz 0xe85
00000E58  803E46FF05        cmp byte [0xff46],0x5
00000E5D  7203              jc 0xe62
00000E5F  E9BC00            jmp 0xf1e
00000E62  32C9              xor cl,cl
00000E64  BE6EB1            mov si,0xb16e
00000E67  C706FB4F01FF      mov word [0x4ffb],0xff01
00000E6D  BAF809            mov dx,0x9f8
00000E70  F606C20001        test byte [0xc2],0x1
00000E75  757B              jnz 0xef2
00000E77  BEBEB0            mov si,0xb0be
00000E7A  C706FB4F0100      mov word [0x4ffb],0x1
00000E80  BA000A            mov dx,0xa00
00000E83  EB6D              jmp 0xef2
00000E85  803E46FF05        cmp byte [0xff46],0x5
00000E8A  7203              jc 0xe8f
00000E8C  E98F00            jmp 0xf1e
00000E8F  8A1E46FF          mov bl,[0xff46]
00000E93  FECB              dec bl
00000E95  32FF              xor bh,bh
00000E97  8ACB              mov cl,bl
00000E99  03DB              add bx,bx
00000E9B  BF9EB1            mov di,0xb19e
00000E9E  BE2EB1            mov si,0xb12e
00000EA1  F606C20001        test byte [0xc2],0x1
00000EA6  752E              jnz 0xed6
00000EA8  BF8AB1            mov di,0xb18a
00000EAB  BE7EB0            mov si,0xb07e
00000EAE  EB26              jmp 0xed6
00000EB0  803E46FF07        cmp byte [0xff46],0x7
00000EB5  7367              jnc 0xf1e
00000EB7  8A1E46FF          mov bl,[0xff46]
00000EBB  FECB              dec bl
00000EBD  32FF              xor bh,bh
00000EBF  8ACB              mov cl,bl
00000EC1  03DB              add bx,bx
00000EC3  BF92B1            mov di,0xb192
00000EC6  BECEB0            mov si,0xb0ce
00000EC9  F606C20001        test byte [0xc2],0x1
00000ECE  7506              jnz 0xed6
00000ED0  BF7EB1            mov di,0xb17e
00000ED3  BE1EB0            mov si,0xb01e
00000ED6  268B19            mov bx,[es:bx+di]
00000ED9  891EFB4F          mov [0x4ffb],bx
00000EDD  8AC3              mov al,bl
00000EDF  98                cbw
00000EE0  BA000A            mov dx,0xa00
00000EE3  F7EA              imul dx
00000EE5  8BD0              mov dx,ax
00000EE7  8AC7              mov al,bh
00000EE9  98                cbw
00000EEA  03C0              add ax,ax
00000EEC  03C0              add ax,ax
00000EEE  03C0              add ax,ax
00000EF0  03D0              add dx,ax
00000EF2  8B3EED4F          mov di,[0x4fed]
00000EF6  03FA              add di,dx
00000EF8  F60638FFFF        test byte [0xff38],0xff
00000EFD  7404              jz 0xf03
00000EFF  81C7000A          add di,0xa00
00000F03  893EF74F          mov [0x4ff7],di
00000F07  32ED              xor ch,ch
00000F09  03C9              add cx,cx
00000F0B  03C9              add cx,cx
00000F0D  03C9              add cx,cx
00000F0F  03C9              add cx,cx
00000F11  03F1              add si,cx
00000F13  8936F94F          mov [0x4ff9],si
00000F17  5B                pop bx
00000F18  5F                pop di
00000F19  5E                pop si
00000F1A  07                pop es
00000F1B  E9B600            jmp 0xfd4
00000F1E  C60643FF00        mov byte [0xff43],0x0
00000F23  C60646FF00        mov byte [0xff46],0x0
00000F28  5B                pop bx
00000F29  5F                pop di
00000F2A  5E                pop si
00000F2B  07                pop es
00000F2C  C3                ret
00000F2D  F60644FFFF        test byte [0xff44],0xff
00000F32  7501              jnz 0xf35
00000F34  C3                ret
00000F35  06                push es
00000F36  57                push di
00000F37  56                push si
00000F38  53                push bx
00000F39  E82C00            call 0xf68
00000F3C  5B                pop bx
00000F3D  5E                pop si
00000F3E  5F                pop di
00000F3F  07                pop es
00000F40  C60644FF00        mov byte [0xff44],0x0
00000F45  C3                ret
00000F46  1E                push ds
00000F47  2E8B36F74F        mov si,[cs:0x4ff7]
00000F4C  B800A0            mov ax,0xa000
00000F4F  8ED8              mov ds,ax
00000F51  8EC0              mov es,ax
00000F53  BF40FA            mov di,0xfa40
00000F56  B92000            mov cx,0x20
00000F59  51                push cx
00000F5A  B91000            mov cx,0x10
00000F5D  F3A5              rep movsw
00000F5F  81C62001          add si,0x120
00000F63  59                pop cx
00000F64  E2F3              loop 0xf59
00000F66  1F                pop ds
00000F67  C3                ret
00000F68  1E                push ds
00000F69  2E8B3EF74F        mov di,[cs:0x4ff7]
00000F6E  B800A0            mov ax,0xa000
00000F71  8EC0              mov es,ax
00000F73  8ED8              mov ds,ax
00000F75  BE40FA            mov si,0xfa40
00000F78  B92000            mov cx,0x20
00000F7B  51                push cx
00000F7C  B91000            mov cx,0x10
00000F7F  F3A5              rep movsw
00000F81  81C72001          add di,0x120
00000F85  59                pop cx
00000F86  E2F3              loop 0xf7b
00000F88  1F                pop ds
00000F89  C3                ret
00000F8A  A08400            mov al,[0x84]
00000F8D  0206FB4F          add al,[0x4ffb]
00000F91  243F              and al,0x3f
00000F93  B124              mov cl,0x24
00000F95  F6E1              mul cl
00000F97  8A0E8300          mov cl,[0x83]
00000F9B  020EFC4F          add cl,[0x4ffc]
00000F9F  80C104            add cl,0x4
00000FA2  32ED              xor ch,ch
00000FA4  03C1              add ax,cx
00000FA6  8BF0              mov si,ax
00000FA8  033631FF          add si,[0xff31]
00000FAC  E85505            call 0x1504
00000FAF  B90400            mov cx,0x4
00000FB2  51                push cx
00000FB3  B90400            mov cx,0x4
00000FB6  51                push cx
00000FB7  8A1C              mov bl,[si]
00000FB9  46                inc si
00000FBA  80E37F            and bl,0x7f
00000FBD  32FF              xor bh,bh
00000FBF  03DB              add bx,bx
00000FC1  C7871D500000      mov word [bx+0x501d],0x0
00000FC7  59                pop cx
00000FC8  E2EC              loop 0xfb6
00000FCA  83C620            add si,0x20
00000FCD  E83405            call 0x1504
00000FD0  59                pop cx
00000FD1  E2DF              loop 0xfb2
00000FD3  C3                ret
00000FD4  F60643FFFF        test byte [0xff43],0xff
00000FD9  7501              jnz 0xfdc
00000FDB  C3                ret
00000FDC  C60644FFFF        mov byte [0xff44],0xff
00000FE1  06                push es
00000FE2  1E                push ds
00000FE3  57                push di
00000FE4  56                push si
00000FE5  53                push bx
00000FE6  E8A1FF            call 0xf8a
00000FE9  E85AFF            call 0xf46
00000FEC  33DB              xor bx,bx
00000FEE  2E8A1E9200        mov bl,[cs:0x92]
00000FF3  FECB              dec bl
00000FF5  03DB              add bx,bx
00000FF7  2E8B878640        mov ax,[cs:bx+0x4086]
00000FFC  2EA3F54F          mov [cs:0x4ff5],ax
00001000  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001005  B800A0            mov ax,0xa000
00001008  8EC0              mov es,ax
0000100A  2E8B3EF74F        mov di,[cs:0x4ff7]
0000100F  2E8B36F94F        mov si,[cs:0x4ff9]
00001014  B90400            mov cx,0x4
00001017  51                push cx
00001018  57                push di
00001019  B90400            mov cx,0x4
0000101C  51                push cx
0000101D  AC                lodsb
0000101E  3CFF              cmp al,0xff
00001020  7506              jnz 0x1028
00001022  81C7000A          add di,0xa00
00001026  EB52              jmp 0x107a
00001028  56                push si
00001029  32E4              xor ah,ah
0000102B  03C0              add ax,ax
0000102D  03C0              add ax,ax
0000102F  03C0              add ax,ax
00001031  03C0              add ax,ax
00001033  8BF0              mov si,ax
00001035  033600B0          add si,[0xb000]
00001039  B90800            mov cx,0x8
0000103C  51                push cx
0000103D  AD                lodsw
0000103E  86E0              xchg ah,al
00001040  E85300            call 0x1096
00001043  F7D5              not bp
00001045  26212D            and [es:di],bp
00001048  260915            or [es:di],dx
0000104B  E84800            call 0x1096
0000104E  F7D5              not bp
00001050  26216D02          and [es:di+0x2],bp
00001054  26095502          or [es:di+0x2],dx
00001058  E83B00            call 0x1096
0000105B  F7D5              not bp
0000105D  26216D04          and [es:di+0x4],bp
00001061  26095504          or [es:di+0x4],dx
00001065  E82E00            call 0x1096
00001068  F7D5              not bp
0000106A  26216D06          and [es:di+0x6],bp
0000106E  26095506          or [es:di+0x6],dx
00001072  81C74001          add di,0x140
00001076  59                pop cx
00001077  E2C3              loop 0x103c
00001079  5E                pop si
0000107A  59                pop cx
0000107B  E29F              loop 0x101c
0000107D  5F                pop di
0000107E  83C708            add di,0x8
00001081  59                pop cx
00001082  E293              loop 0x1017
00001084  5B                pop bx
00001085  5E                pop si
00001086  5F                pop di
00001087  1F                pop ds
00001088  07                pop es
00001089  C3                ret
0000108A  0109              add [bx+di],cx
0000108C  0424              add al,0x24
0000108E  031B              add bx,[bp+di]
00001090  0109              add [bx+di],cx
00001092  0424              add al,0x24
00001094  06                push es
00001095  3633ED            ss xor bp,bp
00001098  33D2              xor dx,dx
0000109A  32DB              xor bl,bl
0000109C  03C0              add ax,ax
0000109E  12DB              adc bl,bl
000010A0  03C0              add ax,ax
000010A2  12DB              adc bl,bl
000010A4  7413              jz 0x10b9
000010A6  81CDFF00          or bp,0xff
000010AA  2E8A16F64F        mov dl,[cs:0x4ff6]
000010AF  80FB03            cmp bl,0x3
000010B2  7405              jz 0x10b9
000010B4  2E8A16F54F        mov dl,[cs:0x4ff5]
000010B9  32DB              xor bl,bl
000010BB  03C0              add ax,ax
000010BD  12DB              adc bl,bl
000010BF  03C0              add ax,ax
000010C1  12DB              adc bl,bl
000010C3  7501              jnz 0x10c6
000010C5  C3                ret
000010C6  81CD00FF          or bp,0xff00
000010CA  2E8A36F64F        mov dh,[cs:0x4ff6]
000010CF  80FB03            cmp bl,0x3
000010D2  7501              jnz 0x10d5
000010D4  C3                ret
000010D5  2E8A36F54F        mov dh,[cs:0x4ff5]
000010DA  C3                ret
000010DB  33C0              xor ax,ax
000010DD  8AC7              mov al,bh
000010DF  8AFC              mov bh,ah
000010E1  50                push ax
000010E2  B84001            mov ax,0x140
000010E5  F7E3              mul bx
000010E7  5F                pop di
000010E8  03FF              add di,di
000010EA  03FF              add di,di
000010EC  03F8              add di,ax
000010EE  893EED4F          mov [0x4fed],di
000010F2  EB0D              jmp 0x1101
000010F4  F60637FFFF        test byte [0xff37],0xff
000010F9  7401              jz 0x10fc
000010FB  C3                ret
000010FC  C60637FFFF        mov byte [0xff37],0xff
00001101  06                push es
00001102  1E                push ds
00001103  56                push si
00001104  57                push di
00001105  53                push bx
00001106  B800A0            mov ax,0xa000
00001109  8EC0              mov es,ax
0000110B  BE1D51            mov si,0x511d
0000110E  2E8B3EED4F        mov di,[cs:0x4fed]
00001113  B90300            mov cx,0x3
00001116  51                push cx
00001117  B90300            mov cx,0x3
0000111A  51                push cx
0000111B  57                push di
0000111C  E86FF5            call 0x68e
0000111F  5F                pop di
00001120  83C708            add di,0x8
00001123  59                pop cx
00001124  E2F4              loop 0x111a
00001126  81C7E809          add di,0x9e8
0000112A  59                pop cx
0000112B  E2E9              loop 0x1116
0000112D  5B                pop bx
0000112E  5F                pop di
0000112F  5E                pop si
00001130  1F                pop ds
00001131  07                pop es
00001132  C3                ret
00001133  1E                push ds
00001134  56                push si
00001135  FEC8              dec al
00001137  B130              mov cl,0x30
00001139  F6E1              mul cl
0000113B  053080            add ax,0x8030
0000113E  8BF0              mov si,ax
00001140  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001145  B800A0            mov ax,0xa000
00001148  8EC0              mov es,ax
0000114A  03FF              add di,di
0000114C  B90800            mov cx,0x8
0000114F  51                push cx
00001150  B90200            mov cx,0x2
00001153  AD                lodsw
00001154  8BD0              mov dx,ax
00001156  AC                lodsb
00001157  8AD8              mov bl,al
00001159  8AFA              mov bh,dl
0000115B  D1EA              shr dx,0x0
0000115D  D1EA              shr dx,0x0
0000115F  0AF6              or dh,dh
00001161  7403              jz 0x1166
00001163  268835            mov [es:di],dh
00001166  D0EA              shr dl,0x0
00001168  D0EA              shr dl,0x0
0000116A  0AD2              or dl,dl
0000116C  7404              jz 0x1172
0000116E  26885501          mov [es:di+0x1],dl
00001172  03DB              add bx,bx
00001174  03DB              add bx,bx
00001176  80E73F            and bh,0x3f
00001179  7404              jz 0x117f
0000117B  26887D02          mov [es:di+0x2],bh
0000117F  243F              and al,0x3f
00001181  7404              jz 0x1187
00001183  26884503          mov [es:di+0x3],al
00001187  83C704            add di,0x4
0000118A  E2C7              loop 0x1153
0000118C  81C73801          add di,0x138
00001190  59                pop cx
00001191  E2BC              loop 0x114f
00001193  5E                pop si
00001194  1F                pop ds
00001195  C3                ret
00001196  C60644FF00        mov byte [0xff44],0x0
0000119B  B800A0            mov ax,0xa000
0000119E  8EC0              mov es,ax
000011A0  C606FF4F08        mov byte [0x4fff],0x8
000011A5  C706EB4FB011      mov word [0x4feb],0x11b0
000011AB  C6061AFF00        mov byte [0xff1a],0x0
000011B0  8B3631FF          mov si,[0xff31]
000011B4  BF00E9            mov di,0xe900
000011B7  B91200            mov cx,0x12
000011BA  51                push cx
000011BB  83C604            add si,0x4
000011BE  33DB              xor bx,bx
000011C0  B91C00            mov cx,0x1c
000011C3  51                push cx
000011C4  AC                lodsb
000011C5  E82300            call 0x11eb
000011C8  47                inc di
000011C9  FEC3              inc bl
000011CB  59                pop cx
000011CC  E2F5              loop 0x11c3
000011CE  83C604            add si,0x4
000011D1  E83003            call 0x1504
000011D4  8106EB4F000A      add word [0x4feb],0xa00
000011DA  59                pop cx
000011DB  E2DD              loop 0x11ba
000011DD  803E1AFF10        cmp byte [0xff1a],0x10
000011E2  72F9              jc 0x11dd
000011E4  FE0EFF4F          dec byte [0x4fff]
000011E8  75BB              jnz 0x11a5
000011EA  C3                ret
000011EB  803DFF            cmp byte [di],0xff
000011EE  7501              jnz 0x11f1
000011F0  C3                ret
000011F1  803DFC            cmp byte [di],0xfc
000011F4  7501              jnz 0x11f7
000011F6  C3                ret
000011F7  1E                push ds
000011F8  57                push di
000011F9  56                push si
000011FA  53                push bx
000011FB  50                push ax
000011FC  8A26FF4F          mov ah,[0x4fff]
00001200  FECC              dec ah
00001202  D0EC              shr ah,0x0
00001204  D0EC              shr ah,0x0
00001206  D0EC              shr ah,0x0
00001208  1BC0              sbb ax,ax
0000120A  3500FF            xor ax,0xff00
0000120D  A3FD4F            mov [0x4ffd],ax
00001210  03DB              add bx,bx
00001212  03DB              add bx,bx
00001214  03DB              add bx,bx
00001216  031EEB4F          add bx,[0x4feb]
0000121A  8BFB              mov di,bx
0000121C  58                pop ax
0000121D  A8FF              test al,0xff
0000121F  7503              jnz 0x1224
00001221  E98500            jmp 0x12a9
00001224  FEC8              dec al
00001226  B130              mov cl,0x30
00001228  F6E1              mul cl
0000122A  053080            add ax,0x8030
0000122D  8BF0              mov si,ax
0000122F  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001234  56                push si
00001235  57                push di
00001236  2EA0FF4F          mov al,[cs:0x4fff]
0000123A  2403              and al,0x3
0000123C  F6D8              neg al
0000123E  0403              add al,0x3
00001240  E8A300            call 0x12e6
00001243  E81700            call 0x125d
00001246  5F                pop di
00001247  5E                pop si
00001248  2EA0FF4F          mov al,[cs:0x4fff]
0000124C  E89700            call 0x12e6
0000124F  83C704            add di,0x4
00001252  83C603            add si,0x3
00001255  E80500            call 0x125d
00001258  5B                pop bx
00001259  5E                pop si
0000125A  5F                pop di
0000125B  1F                pop ds
0000125C  C3                ret
0000125D  B90200            mov cx,0x2
00001260  51                push cx
00001261  AD                lodsw
00001262  8BD0              mov dx,ax
00001264  AC                lodsb
00001265  8AD8              mov bl,al
00001267  8AFA              mov bh,dl
00001269  D1EA              shr dx,0x0
0000126B  D1EA              shr dx,0x0
0000126D  D0EA              shr dl,0x0
0000126F  D0EA              shr dl,0x0
00001271  03DB              add bx,bx
00001273  03DB              add bx,bx
00001275  80E73F            and bh,0x3f
00001278  243F              and al,0x3f
0000127A  8AD8              mov bl,al
0000127C  86F2              xchg dh,dl
0000127E  86FB              xchg bh,bl
00001280  2EA1FD4F          mov ax,[cs:0x4ffd]
00001284  F7D0              not ax
00001286  262105            and [es:di],ax
00001289  26214502          and [es:di+0x2],ax
0000128D  F7D0              not ax
0000128F  23C2              and ax,dx
00001291  260905            or [es:di],ax
00001294  2EA1FD4F          mov ax,[cs:0x4ffd]
00001298  23C3              and ax,bx
0000129A  26094502          or [es:di+0x2],ax
0000129E  81C70005          add di,0x500
000012A2  83C615            add si,0x15
000012A5  59                pop cx
000012A6  E2B8              loop 0x1260
000012A8  C3                ret
000012A9  57                push di
000012AA  2EA0FF4F          mov al,[cs:0x4fff]
000012AE  2403              and al,0x3
000012B0  F6D8              neg al
000012B2  0403              add al,0x3
000012B4  E82F00            call 0x12e6
000012B7  E81300            call 0x12cd
000012BA  5F                pop di
000012BB  2EA0FF4F          mov al,[cs:0x4fff]
000012BF  E82400            call 0x12e6
000012C2  83C704            add di,0x4
000012C5  E80500            call 0x12cd
000012C8  5B                pop bx
000012C9  5E                pop si
000012CA  5F                pop di
000012CB  1F                pop ds
000012CC  C3                ret
000012CD  2EA1FD4F          mov ax,[cs:0x4ffd]
000012D1  F7D0              not ax
000012D3  262105            and [es:di],ax
000012D6  26214502          and [es:di+0x2],ax
000012DA  81C70005          add di,0x500
000012DE  262105            and [es:di],ax
000012E1  26214502          and [es:di+0x2],ax
000012E5  C3                ret
000012E6  2403              and al,0x3
000012E8  32E4              xor ah,ah
000012EA  50                push ax
000012EB  BB0600            mov bx,0x6
000012EE  F6E3              mul bl
000012F0  03F0              add si,ax
000012F2  58                pop ax
000012F3  BB4001            mov bx,0x140
000012F6  F7E3              mul bx
000012F8  03F8              add di,ax
000012FA  C3                ret
000012FB  A08300            mov al,[0x83]
000012FE  02C0              add al,al
00001300  02C0              add al,al
00001302  02C0              add al,al
00001304  8A268400          mov ah,[0x84]
00001308  02E4              add ah,ah
0000130A  02E4              add ah,ah
0000130C  02E4              add ah,ah
0000130E  A2E94F            mov [0x4fe9],al
00001311  8826EA4F          mov [0x4fea],ah
00001315  E86901            call 0x1481
00001318  C606FF4F36        mov byte [0x4fff],0x36
0000131D  E80B00            call 0x132b
00001320  C606FF4F00        mov byte [0x4fff],0x0
00001325  E80300            call 0x132b
00001328  E95601            jmp 0x1481
0000132B  A0E94F            mov al,[0x4fe9]
0000132E  FEC8              dec al
00001330  8AD8              mov bl,al
00001332  0419              add al,0x19
00001334  8AD0              mov dl,al
00001336  A0EA4F            mov al,[0x4fea]
00001339  FEC8              dec al
0000133B  8AF8              mov bh,al
0000133D  0419              add al,0x19
0000133F  8AF0              mov dh,al
00001341  E82F00            call 0x1373
00001344  A0E94F            mov al,[0x4fe9]
00001347  2C05              sub al,0x5
00001349  8AD8              mov bl,al
0000134B  0421              add al,0x21
0000134D  8AD0              mov dl,al
0000134F  A0EA4F            mov al,[0x4fea]
00001352  2C05              sub al,0x5
00001354  8AF8              mov bh,al
00001356  0421              add al,0x21
00001358  8AF0              mov dh,al
0000135A  E81600            call 0x1373
0000135D  A0E94F            mov al,[0x4fe9]
00001360  2C09              sub al,0x9
00001362  8AD8              mov bl,al
00001364  0429              add al,0x29
00001366  8AD0              mov dl,al
00001368  A0EA4F            mov al,[0x4fea]
0000136B  2C09              sub al,0x9
0000136D  8AF8              mov bh,al
0000136F  0429              add al,0x29
00001371  8AF0              mov dh,al
00001373  B90900            mov cx,0x9
00001376  51                push cx
00001377  52                push dx
00001378  53                push bx
00001379  E82900            call 0x13a5
0000137C  5B                pop bx
0000137D  5A                pop dx
0000137E  80EB0C            sub bl,0xc
00001381  7302              jnc 0x1385
00001383  32DB              xor bl,bl
00001385  80EF0C            sub bh,0xc
00001388  7302              jnc 0x138c
0000138A  32FF              xor bh,bh
0000138C  80C20C            add dl,0xc
0000138F  7302              jnc 0x1393
00001391  B2FF              mov dl,0xff
00001393  80C60C            add dh,0xc
00001396  7302              jnc 0x139a
00001398  B6FF              mov dh,0xff
0000139A  52                push dx
0000139B  53                push bx
0000139C  E8AF00            call 0x144e
0000139F  5B                pop bx
000013A0  5A                pop dx
000013A1  59                pop cx
000013A2  E2D2              loop 0x1376
000013A4  C3                ret
000013A5  B800A0            mov ax,0xa000
000013A8  8EC0              mov es,ax
000013AA  52                push dx
000013AB  53                push bx
000013AC  8AF7              mov dh,bh
000013AE  E85700            call 0x1408
000013B1  5B                pop bx
000013B2  5A                pop dx
000013B3  52                push dx
000013B4  53                push bx
000013B5  8AFE              mov bh,dh
000013B7  E84E00            call 0x1408
000013BA  5B                pop bx
000013BB  5A                pop dx
000013BC  52                push dx
000013BD  53                push bx
000013BE  8AD3              mov dl,bl
000013C0  E80400            call 0x13c7
000013C3  5B                pop bx
000013C4  5A                pop dx
000013C5  8ADA              mov bl,dl
000013C7  3AF7              cmp dh,bh
000013C9  7302              jnc 0x13cd
000013CB  87D3              xchg dx,bx
000013CD  0ADB              or bl,bl
000013CF  7501              jnz 0x13d2
000013D1  C3                ret
000013D2  80FBDF            cmp bl,0xdf
000013D5  7201              jc 0x13d8
000013D7  C3                ret
000013D8  0AFF              or bh,bh
000013DA  7502              jnz 0x13de
000013DC  B701              mov bh,0x1
000013DE  80FE8F            cmp dh,0x8f
000013E1  7202              jc 0x13e5
000013E3  B68E              mov dh,0x8e
000013E5  8AC6              mov al,dh
000013E7  2AC7              sub al,bh
000013E9  FEC0              inc al
000013EB  50                push ax
000013EC  8AC7              mov al,bh
000013EE  E84E00            call 0x143f
000013F1  8AC3              mov al,bl
000013F3  32E4              xor ah,ah
000013F5  03F8              add di,ax
000013F7  59                pop cx
000013F8  32ED              xor ch,ch
000013FA  8A26FF4F          mov ah,[0x4fff]
000013FE  268825            mov [es:di],ah
00001401  81C74001          add di,0x140
00001405  E2F7              loop 0x13fe
00001407  C3                ret
00001408  3AD3              cmp dl,bl
0000140A  7302              jnc 0x140e
0000140C  87D3              xchg dx,bx
0000140E  0AFF              or bh,bh
00001410  7501              jnz 0x1413
00001412  C3                ret
00001413  80FF8F            cmp bh,0x8f
00001416  7201              jc 0x1419
00001418  C3                ret
00001419  0ADB              or bl,bl
0000141B  7502              jnz 0x141f
0000141D  B301              mov bl,0x1
0000141F  80FADF            cmp dl,0xdf
00001422  7202              jc 0x1426
00001424  B2DE              mov dl,0xde
00001426  8AC7              mov al,bh
00001428  E81400            call 0x143f
0000142B  8AC3              mov al,bl
0000142D  32E4              xor ah,ah
0000142F  03F8              add di,ax
00001431  8AE2              mov ah,dl
00001433  2AE0              sub ah,al
00001435  8ACC              mov cl,ah
00001437  32ED              xor ch,ch
00001439  A0FF4F            mov al,[0x4fff]
0000143C  F3AA              rep stosb
0000143E  C3                ret
0000143F  52                push dx
00001440  32E4              xor ah,ah
00001442  BF4001            mov di,0x140
00001445  F7E7              mul di
00001447  05B011            add ax,0x11b0
0000144A  8BF8              mov di,ax
0000144C  5A                pop dx
0000144D  C3                ret
0000144E  8A0E33FF          mov cl,[0xff33]
00001452  D0E9              shr cl,0x0
00001454  FEC1              inc cl
00001456  B001              mov al,0x1
00001458  F6E1              mul cl
0000145A  50                push ax
0000145B  2EFF161001        call word near [cs:0x110]
00001460  2EFF161201        call word near [cs:0x112]
00001465  2EFF161401        call word near [cs:0x114]
0000146A  2EFF161601        call word near [cs:0x116]
0000146F  2EFF161801        call word near [cs:0x118]
00001474  58                pop ax
00001475  38061AFF          cmp [0xff1a],al
00001479  72DF              jc 0x145a
0000147B  C6061AFF00        mov byte [0xff1a],0x0
00001480  C3                ret
00001481  B800A0            mov ax,0xa000
00001484  8EC0              mov es,ax
00001486  BFB011            mov di,0x11b0
00001489  B90800            mov cx,0x8
0000148C  51                push cx
0000148D  57                push di
0000148E  B91200            mov cx,0x12
00001491  51                push cx
00001492  57                push di
00001493  B81212            mov ax,0x1212
00001496  B97000            mov cx,0x70
00001499  263105            xor [es:di],ax
0000149C  47                inc di
0000149D  47                inc di
0000149E  E2F9              loop 0x1499
000014A0  5F                pop di
000014A1  81C7000A          add di,0xa00
000014A5  59                pop cx
000014A6  E2E9              loop 0x1491
000014A8  5F                pop di
000014A9  81C74001          add di,0x140
000014AD  59                pop cx
000014AE  E2DC              loop 0x148c
000014B0  C3                ret
000014B1  243F              and al,0x3f
000014B3  8ADC              mov bl,ah
000014B5  32E4              xor ah,ah
000014B7  BA000A            mov dx,0xa00
000014BA  F7E2              mul dx
000014BC  80EB04            sub bl,0x4
000014BF  32FF              xor bh,bh
000014C1  03DB              add bx,bx
000014C3  03DB              add bx,bx
000014C5  03DB              add bx,bx
000014C7  03C3              add ax,bx
000014C9  8BF8              mov di,ax
000014CB  81C7B011          add di,0x11b0
000014CF  D1EF              shr di,0x0
000014D1  C3                ret
000014D2  8A1E9D00          mov bl,[0x9d]
000014D6  0ADB              or bl,bl
000014D8  7421              jz 0x14fb
000014DA  80FB07            cmp bl,0x7
000014DD  741C              jz 0x14fb
000014DF  FECB              dec bl
000014E1  32FF              xor bh,bh
000014E3  03DB              add bx,bx
000014E5  2E8E062CFF        mov es,word [cs:0xff2c]
000014EA  8CC8              mov ax,cs
000014EC  050020            add ax,0x2000
000014EF  8ED8              mov ds,ax
000014F1  8B37              mov si,[bx]
000014F3  BF5093            mov di,0x9350
000014F6  B98004            mov cx,0x480
000014F9  F3A4              rep movsb
000014FB  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001500  BE5093            mov si,0x9350
00001503  C3                ret
00001504  81FE00E9          cmp si,0xe900
00001508  7301              jnc 0x150b
0000150A  C3                ret
0000150B  81EE0009          sub si,0x900
0000150F  C3                ret
00001510  81FE00E0          cmp si,0xe000
00001514  7201              jc 0x1517
00001516  C3                ret
00001517  81C60009          add si,0x900
0000151B  C3                ret
0000151C  56                push si
0000151D  1E                push ds
0000151E  2EC706F54F1012    mov word [cs:0x4ff5],0x1210
00001525  BE8845            mov si,0x4588
00001528  BF3032            mov di,0x3230
0000152B  B800A0            mov ax,0xa000
0000152E  8EC0              mov es,ax
00001530  B90500            mov cx,0x5
00001533  51                push cx
00001534  B91C00            mov cx,0x1c
00001537  51                push cx
00001538  AC                lodsb
00001539  1E                push ds
0000153A  56                push si
0000153B  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001540  32E4              xor ah,ah
00001542  03C0              add ax,ax
00001544  03C0              add ax,ax
00001546  03C0              add ax,ax
00001548  03C0              add ax,ax
0000154A  050040            add ax,0x4000
0000154D  8BF0              mov si,ax
0000154F  57                push di
00001550  B90800            mov cx,0x8
00001553  51                push cx
00001554  AD                lodsw
00001555  86E0              xchg ah,al
00001557  E83CFB            call 0x1096
0000155A  268915            mov [es:di],dx
0000155D  E836FB            call 0x1096
00001560  26895502          mov [es:di+0x2],dx
00001564  E82FFB            call 0x1096
00001567  26895504          mov [es:di+0x4],dx
0000156B  E828FB            call 0x1096
0000156E  26895506          mov [es:di+0x6],dx
00001572  81C74001          add di,0x140
00001576  59                pop cx
00001577  E2DA              loop 0x1553
00001579  5F                pop di
0000157A  83C708            add di,0x8
0000157D  5E                pop si
0000157E  1F                pop ds
0000157F  59                pop cx
00001580  E2B5              loop 0x1537
00001582  81C72009          add di,0x920
00001586  59                pop cx
00001587  E2AA              loop 0x1533
00001589  1F                pop ds
0000158A  5E                pop si
0000158B  C3                ret
0000158C  0001              add [bx+di],al
0000158E  0204              add al,[si]
00001590  07                pop es
00001591  090D              or [di],cx
00001593  1004              adc [si],al
00001595  15171C            adc ax,0x1c17
00001598  1E                push ds
00001599  0407              add al,0x7
0000159B  0922              or [bp+si],sp
0000159D  0225              add ah,[di]
0000159F  0802              or [bp+si],al
000015A1  2802              sub [bp+si],al
000015A3  2D3136            sub ax,0x3631
000015A6  3B4000            cmp ax,[bx+si+0x0]
000015A9  0103              add [bp+di],ax
000015AB  06                push es
000015AC  080A              or [bp+si],cl
000015AE  0E                push cs
000015AF  11060818          adc [0x1808],ax
000015B3  0E                push cs
000015B4  1E                push ds
000015B5  0408              add al,0x8
000015B7  0A23              or ah,[bp+di]
000015B9  2426              and al,0x26
000015BB  0827              or [bx],ah
000015BD  292A              sub [bp+si],bp
000015BF  0432              add al,0x32
000015C1  37                aaa
000015C2  3C06              cmp al,0x6
000015C4  0001              add [bx+di],al
000015C6  0205              add al,[di]
000015C8  0802              or [bp+si],al
000015CA  0E                push cs
000015CB  12060819          adc al,[0x1908]
000015CF  0E                push cs
000015D0  1E                push ds
000015D1  0408              add al,0x8
000015D3  0223              add ah,[bp+di]
000015D5  2426              and al,0x26
000015D7  0825              or [di],ah
000015D9  2902              sub [bp+si],ax
000015DB  2E3338            xor di,[cs:bx+si]
000015DE  3D0600            cmp ax,0x6
000015E1  0103              add [bp+di],ax
000015E3  06                push es
000015E4  080B              or [bp+di],cl
000015E6  0E                push cs
000015E7  1306081A          adc ax,[0x1a08]
000015EB  0E                push cs
000015EC  1F                pop ds
000015ED  0408              add al,0x8
000015EF  0B23              or sp,[bp+di]
000015F1  2426              and al,0x26
000015F3  0827              or [bx],ah
000015F5  292B              sub [bp+di],bp
000015F7  2F                das
000015F8  3439              xor al,0x39
000015FA  3E06              ds push es
000015FC  0001              add [bx+di],al
000015FE  0204              add al,[si]
00001600  080C              or [si],cl
00001602  0F1404            unpcklps xmm0,oword [si]
00001605  16                push ss
00001606  1B1D              sbb bx,[di]
00001608  2021              and [bx+di],ah
0000160A  080C              or [si],cl
0000160C  2324              and sp,[si]
0000160E  260802            or [es:bp+si],al
00001611  282C              sub [si],ch
00001613  3035              xor [di],dh
00001615  3A3F              cmp bh,[bx]
00001617  06                push es
00001618  A2FF4F            mov [0x4fff],al
0000161B  BE3B47            mov si,0x473b
0000161E  C706EB4FB011      mov word [0x4feb],0x11b0
00001624  B91200            mov cx,0x12
00001627  51                push cx
00001628  B91C00            mov cx,0x1c
0000162B  51                push cx
0000162C  AC                lodsb
0000162D  56                push si
0000162E  E81300            call 0x1644
00001631  5E                pop si
00001632  8306EB4F08        add word [0x4feb],0x8
00001637  59                pop cx
00001638  E2F1              loop 0x162b
0000163A  8106EB4F2009      add word [0x4feb],0x920
00001640  59                pop cx
00001641  E2E4              loop 0x1627
00001643  C3                ret
00001644  1E                push ds
00001645  B130              mov cl,0x30
00001647  F6E1              mul cl
00001649  050080            add ax,0x8000
0000164C  8BF0              mov si,ax
0000164E  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001653  B800A0            mov ax,0xa000
00001656  8EC0              mov es,ax
00001658  2E8B3EEB4F        mov di,[cs:0x4feb]
0000165D  B90800            mov cx,0x8
00001660  51                push cx
00001661  E80900            call 0x166d
00001664  81C73801          add di,0x138
00001668  59                pop cx
00001669  E2F5              loop 0x1660
0000166B  1F                pop ds
0000166C  C3                ret
0000166D  B90200            mov cx,0x2
00001670  51                push cx
00001671  AD                lodsw
00001672  8BD0              mov dx,ax
00001674  AC                lodsb
00001675  8AD8              mov bl,al
00001677  8AFA              mov bh,dl
00001679  D1EA              shr dx,0x0
0000167B  D1EA              shr dx,0x0
0000167D  268835            mov [es:di],dh
00001680  D0EA              shr dl,0x0
00001682  D0EA              shr dl,0x0
00001684  26885501          mov [es:di+0x1],dl
00001688  03DB              add bx,bx
0000168A  03DB              add bx,bx
0000168C  80E73F            and bh,0x3f
0000168F  26887D02          mov [es:di+0x2],bh
00001693  243F              and al,0x3f
00001695  26884503          mov [es:di+0x3],al
00001699  2E8A1EFF4F        mov bl,[cs:0x4fff]
0000169E  32FF              xor bh,bh
000016A0  03DB              add bx,bx
000016A2  B90400            mov cx,0x4
000016A5  268A05            mov al,[es:di]
000016A8  0AC0              or al,al
000016AA  7425              jz 0x16d1
000016AC  8AE0              mov ah,al
000016AE  D0EC              shr ah,0x0
000016B0  D0EC              shr ah,0x0
000016B2  D0EC              shr ah,0x0
000016B4  2EFF97D446        call word near [cs:bx+0x46d4]
000016B9  02E4              add ah,ah
000016BB  02E4              add ah,ah
000016BD  02E4              add ah,ah
000016BF  2407              and al,0x7
000016C1  0AC4              or al,ah
000016C3  8AE0              mov ah,al
000016C5  80E407            and ah,0x7
000016C8  2EFF97D446        call word near [cs:bx+0x46d4]
000016CD  2438              and al,0x38
000016CF  0AC4              or al,ah
000016D1  AA                stosb
000016D2  E2D1              loop 0x16a5
000016D4  59                pop cx
000016D5  E299              loop 0x1670
000016D7  C3                ret
000016D8  DE46EF            fiadd word [bp-0x11]
000016DB  46                inc si
000016DC  F8                clc
000016DD  46                inc si
000016DE  094722            or [bx+0x22],ax
000016E1  47                inc di
000016E2  80FC06            cmp ah,0x6
000016E5  7503              jnz 0x16ea
000016E7  B403              mov ah,0x3
000016E9  C3                ret
000016EA  80FC07            cmp ah,0x7
000016ED  7401              jz 0x16f0
000016EF  C3                ret
000016F0  B405              mov ah,0x5
000016F2  C3                ret
000016F3  80FC04            cmp ah,0x4
000016F6  7401              jz 0x16f9
000016F8  C3                ret
000016F9  B402              mov ah,0x2
000016FB  C3                ret
000016FC  80FC04            cmp ah,0x4
000016FF  7503              jnz 0x1704
00001701  B405              mov ah,0x5
00001703  C3                ret
00001704  80FC07            cmp ah,0x7
00001707  7401              jz 0x170a
00001709  C3                ret
0000170A  B404              mov ah,0x4
0000170C  C3                ret
0000170D  80FC04            cmp ah,0x4
00001710  7503              jnz 0x1715
00001712  B403              mov ah,0x3
00001714  C3                ret
00001715  80FC07            cmp ah,0x7
00001718  7503              jnz 0x171d
0000171A  B405              mov ah,0x5
0000171C  C3                ret
0000171D  80FC06            cmp ah,0x6
00001720  7401              jz 0x1723
00001722  C3                ret
00001723  B407              mov ah,0x7
00001725  C3                ret
00001726  80FC07            cmp ah,0x7
00001729  7503              jnz 0x172e
0000172B  B405              mov ah,0x5
0000172D  C3                ret
0000172E  80FC04            cmp ah,0x4
00001731  7503              jnz 0x1736
00001733  B407              mov ah,0x7
00001735  C3                ret
00001736  80FC06            cmp ah,0x6
00001739  7401              jz 0x173c
0000173B  C3                ret
0000173C  B404              mov ah,0x4
0000173E  C3                ret
0000173F  07                pop es
00001740  0809              or [bx+di],cl
00001742  0A07              or al,[bx]
00001744  080B              or [bp+di],cl
00001746  0C07              or al,0x7
00001748  0809              or [bx+di],cl
0000174A  0A19              or bl,[bx+di]
0000174C  3D6127            cmp ax,0x2761
0000174F  1D1E1D            sbb ax,0x1d1e
00001752  1E                push ds
00001753  1F                pop ds
00001754  201F              and [bx],bl
00001756  201D              and [di],bl
00001758  1E                push ds
00001759  1F                pop ds
0000175A  200D              and [di],cl
0000175C  0E                push cs
0000175D  0F100F            movups xmm1,oword [bx]
00001760  100D              adc [di],cl
00001762  0E                push cs
00001763  0F1017            movups xmm2,oword [bx]
00001766  183E5C62          sbb [0x625c],bh
0000176A  262A25            sub ah,[es:di]
0000176D  2122              and [bp+si],sp
0000176F  2122              and [bp+si],sp
00001771  2324              and sp,[si]
00001773  2122              and [bp+si],sp
00001775  2122              and [bp+si],sp
00001777  090A              or [bp+si],cx
00001779  07                pop es
0000177A  0807              or [bx],al
0000177C  0809              or [bx+di],cl
0000177E  0A07              or al,[bx]
00001780  0819              or [bx+di],bl
00001782  54                push sp
00001783  59                pop cx
00001784  5D                pop bp
00001785  6332              arpl [bp+si],si
00001787  2F                das
00001788  2E1F              cs pop ds
0000178A  201F              and [bx],bl
0000178C  201D              and [di],bl
0000178E  1E                push ds
0000178F  1F                pop ds
00001790  201F              and [bx],bl
00001792  200F              and [bx],cl
00001794  1011              adc [bx+di],dl
00001796  120F              adc cl,[bx]
00001798  100D              adc [di],cl
0000179A  0E                push cs
0000179B  17                pop ss
0000179C  185055            sbb [bx+si+0x55],dl
0000179F  5A                pop dx
000017A0  5E                pop si
000017A1  64662830          o32 sub [fs:bx+si],dh
000017A5  2324              and sp,[si]
000017A7  2122              and [bp+si],sp
000017A9  2324              and sp,[si]
000017AB  2122              and [bp+si],sp
000017AD  2324              and sp,[si]
000017AF  07                pop es
000017B0  080A              or [bp+si],cl
000017B2  0C07              or al,0x7
000017B4  0809              or [bx+di],cl
000017B6  0A1A              or bl,[bp+si]
000017B8  3451              xor al,0x51
000017BA  56                push si
000017BB  5B                pop bx
000017BC  5F                pop di
000017BD  65672F            gs a32 das
000017C0  2D1D1E            sub ax,0x1e1d
000017C3  1F                pop ds
000017C4  201D              and [di],bl
000017C6  1E                push ds
000017C7  1F                pop ds
000017C8  201D              and [di],bl
000017CA  1E                push ds
000017CB  0F100D            movups xmm1,oword [di]
000017CE  0E                push cs
000017CF  0D0E17            or ax,0x170e
000017D2  18494D            sbb [bx+di+0x4d],cl
000017D5  52                push dx
000017D6  57                push di
000017D7  006069            add [bx+si+0x69],ah
000017DA  686A6B            push word 0x6b6a
000017DD  28262122          sub [0x2221],ah
000017E1  2B262122          sub sp,[0x2221]
000017E5  2122              and [bp+si],sp
000017E7  07                pop es
000017E8  0809              or [bx+di],cl
000017EA  0A09              or cl,[bx+di]
000017EC  0A1B              or bl,[bp+di]
000017EE  46                inc si
000017EF  4A                dec dx
000017F0  4E                dec si
000017F1  53                push bx
000017F2  58                pop ax
000017F3  0000              add [bx+si],al
000017F5  0000              add [bx+si],al
000017F7  696C312D1F        imul bp,[si+0x31],0x1f2d
000017FC  202C              and [si],ch
000017FE  2D1F20            sub ax,0x201f
00001801  1F                pop ds
00001802  2013              and [bp+di],dl
00001804  1413              adc al,0x13
00001806  1417              adc al,0x17
00001808  184347            sbb [bp+di+0x47],al
0000180B  4B                dec bx
0000180C  4F                dec di
0000180D  0000              add [bx+si],al
0000180F  0000              add [bx+si],al
00001811  0000              add [bx+si],al
00001813  006D6E            add [di+0x6e],ch
00001816  6F                outsw
00001817  29262122          sub [0x2221],sp
0000181B  2A25              sub ah,[di]
0000181D  2122              and [bp+si],sp
0000181F  151615            adc ax,0x1516
00001822  16                push ss
00001823  1C35              sbb al,0x35
00001825  44                inc sp
00001826  48                dec ax
00001827  4C                dec sp
00001828  0000              add [bx+si],al
0000182A  0000              add [bx+si],al
0000182C  0000              add [bx+si],al
0000182E  0000              add [bx+si],al
00001830  006971            add [bx+di+0x71],ch
00001833  7374              jnc 0x18a9
00001835  1F                pop ds
00001836  202C              and [si],ch
00001838  27                daa
00001839  1F                pop ds
0000183A  2017              and [bx],dl
0000183C  1838              sbb [bx+si],bh
0000183E  3A3F              cmp bh,[bx]
00001840  42                inc dx
00001841  45                inc bp
00001842  0000              add [bx+si],al
00001844  0000              add [bx+si],al
00001846  0000              add [bx+si],al
00001848  0000              add [bx+si],al
0000184A  0000              add [bx+si],al
0000184C  0000              add [bx+si],al
0000184E  6D                insw
0000184F  7577              jnz 0x18c8
00001851  796F              jns 0x18c2
00001853  2B262926          sub sp,[0x2629]
00001857  1A34              sbb dh,[si]
00001859  393B              cmp [bp+di],di
0000185B  40                inc ax
0000185C  41                inc cx
0000185D  0000              add [bx+si],al
0000185F  0000              add [bx+si],al
00001861  0000              add [bx+si],al
00001863  0000              add [bx+si],al
00001865  0000              add [bx+si],al
00001867  0000              add [bx+si],al
00001869  0000              add [bx+si],al
0000186B  7678              jna 0x18e5
0000186D  7A7B              jpe 0x18ea
0000186F  3132              xor [bp+si],si
00001871  2F                das
00001872  2D3336            sub ax,0x3633
00001875  37                aaa
00001876  3C00              cmp al,0x0
00001878  0000              add [bx+si],al
0000187A  0000              add [bx+si],al
0000187C  0000              add [bx+si],al
0000187E  0000              add [bx+si],al
00001880  0000              add [bx+si],al
00001882  0000              add [bx+si],al
00001884  0000              add [bx+si],al
00001886  0000              add [bx+si],al
00001888  0000              add [bx+si],al
0000188A  6D                insw
0000188B  7170              jno 0x18fd
0000188D  7270              jc 0x18ff
0000188F  0000              add [bx+si],al
00001891  0000              add [bx+si],al
00001893  0000              add [bx+si],al
00001895  0000              add [bx+si],al
00001897  0000              add [bx+si],al
00001899  0000              add [bx+si],al
0000189B  0000              add [bx+si],al
0000189D  0000              add [bx+si],al
0000189F  0000              add [bx+si],al
000018A1  0000              add [bx+si],al
000018A3  0000              add [bx+si],al
000018A5  0000              add [bx+si],al
000018A7  0000              add [bx+si],al
000018A9  0000              add [bx+si],al
000018AB  0000              add [bx+si],al
000018AD  0000              add [bx+si],al
000018AF  0000              add [bx+si],al
000018B1  0000              add [bx+si],al
000018B3  0000              add [bx+si],al
000018B5  0000              add [bx+si],al
000018B7  0000              add [bx+si],al
000018B9  0000              add [bx+si],al
000018BB  0000              add [bx+si],al
000018BD  0000              add [bx+si],al
000018BF  0000              add [bx+si],al
000018C1  0000              add [bx+si],al
000018C3  0000              add [bx+si],al
000018C5  0000              add [bx+si],al
000018C7  0000              add [bx+si],al
000018C9  0000              add [bx+si],al
000018CB  0000              add [bx+si],al
000018CD  0000              add [bx+si],al
000018CF  0000              add [bx+si],al
000018D1  0000              add [bx+si],al
000018D3  0000              add [bx+si],al
000018D5  0000              add [bx+si],al
000018D7  0000              add [bx+si],al
000018D9  0000              add [bx+si],al
000018DB  0000              add [bx+si],al
000018DD  0000              add [bx+si],al
000018DF  0000              add [bx+si],al
000018E1  0000              add [bx+si],al
000018E3  0102              add [bp+si],ax
000018E5  0102              add [bp+si],ax
000018E7  0102              add [bp+si],ax
000018E9  0102              add [bp+si],ax
000018EB  0102              add [bp+si],ax
000018ED  0102              add [bp+si],ax
000018EF  0102              add [bp+si],ax
000018F1  0102              add [bp+si],ax
000018F3  0102              add [bp+si],ax
000018F5  0102              add [bp+si],ax
000018F7  0102              add [bp+si],ax
000018F9  0102              add [bp+si],ax
000018FB  0102              add [bp+si],ax
000018FD  0102              add [bp+si],ax
000018FF  0304              add ax,[si]
00001901  0304              add ax,[si]
00001903  0304              add ax,[si]
00001905  0304              add ax,[si]
00001907  0304              add ax,[si]
00001909  0304              add ax,[si]
0000190B  0304              add ax,[si]
0000190D  0304              add ax,[si]
0000190F  0304              add ax,[si]
00001911  0304              add ax,[si]
00001913  0304              add ax,[si]
00001915  0304              add ax,[si]
00001917  0304              add ax,[si]
00001919  0304              add ax,[si]
0000191B  050605            add ax,0x506
0000191E  06                push es
0000191F  050605            add ax,0x506
00001922  06                push es
00001923  050605            add ax,0x506
00001926  06                push es
00001927  050605            add ax,0x506
0000192A  06                push es
0000192B  050605            add ax,0x506
0000192E  06                push es
0000192F  050606            add ax,0x606
00001932  050506            add ax,0x605
00001935  05061E            add ax,0x1e06
00001938  50                push ax
00001939  33C0              xor ax,ax
0000193B  8AC7              mov al,bh
0000193D  8AFC              mov bh,ah
0000193F  50                push ax
00001940  B84001            mov ax,0x140
00001943  F7E3              mul bx
00001945  5F                pop di
00001946  03FF              add di,di
00001948  03FF              add di,di
0000194A  03F8              add di,ax
0000194C  58                pop ax
0000194D  B120              mov cl,0x20
0000194F  F6E1              mul cl
00001951  050060            add ax,0x6000
00001954  8BF0              mov si,ax
00001956  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000195B  B800A0            mov ax,0xa000
0000195E  8EC0              mov es,ax
00001960  B90800            mov cx,0x8
00001963  51                push cx
00001964  AD                lodsw
00001965  8BD0              mov dx,ax
00001967  E80F00            call 0x1979
0000196A  AD                lodsw
0000196B  8BD0              mov dx,ax
0000196D  E80900            call 0x1979
00001970  81C73801          add di,0x138
00001974  59                pop cx
00001975  E2EC              loop 0x1963
00001977  1F                pop ds
00001978  C3                ret
00001979  B90400            mov cx,0x4
0000197C  33C0              xor ax,ax
0000197E  03D2              add dx,dx
00001980  13C0              adc ax,ax
00001982  03D2              add dx,dx
00001984  13C0              adc ax,ax
00001986  03C0              add ax,ax
00001988  03D2              add dx,dx
0000198A  13C0              adc ax,ax
0000198C  03D2              add dx,dx
0000198E  13C0              adc ax,ax
00001990  AA                stosb
00001991  E2E9              loop 0x197c
00001993  C3                ret
00001994  1E                push ds
00001995  2EC706F54F0809    mov word [cs:0x4ff5],0x908
0000199C  8A1E9200          mov bl,[0x92]
000019A0  FECB              dec bl
000019A2  32FF              xor bh,bh
000019A4  03DB              add bx,bx
000019A6  8BB7254A          mov si,[bx+0x4a25]
000019AA  BF106C            mov di,0x6c10
000019AD  B800A0            mov ax,0xa000
000019B0  8EC0              mov es,ax
000019B2  B91800            mov cx,0x18
000019B5  AD                lodsw
000019B6  86E0              xchg ah,al
000019B8  E8DBF6            call 0x1096
000019BB  F7D5              not bp
000019BD  26212D            and [es:di],bp
000019C0  260915            or [es:di],dx
000019C3  E8D0F6            call 0x1096
000019C6  F7D5              not bp
000019C8  26216D02          and [es:di+0x2],bp
000019CC  26095502          or [es:di+0x2],dx
000019D0  E8C3F6            call 0x1096
000019D3  F7D5              not bp
000019D5  26216D04          and [es:di+0x4],bp
000019D9  26095504          or [es:di+0x4],dx
000019DD  E8B6F6            call 0x1096
000019E0  F7D5              not bp
000019E2  26216D06          and [es:di+0x6],bp
000019E6  26095506          or [es:di+0x6],dx
000019EA  AD                lodsw
000019EB  86E0              xchg ah,al
000019ED  E8A6F6            call 0x1096
000019F0  F7D5              not bp
000019F2  26216D08          and [es:di+0x8],bp
000019F6  26095508          or [es:di+0x8],dx
000019FA  E899F6            call 0x1096
000019FD  F7D5              not bp
000019FF  26216D0A          and [es:di+0xa],bp
00001A03  2609550A          or [es:di+0xa],dx
00001A07  E88CF6            call 0x1096
00001A0A  F7D5              not bp
00001A0C  26216D0C          and [es:di+0xc],bp
00001A10  2609550C          or [es:di+0xc],dx
00001A14  E87FF6            call 0x1096
00001A17  F7D5              not bp
00001A19  26216D0E          and [es:di+0xe],bp
00001A1D  2609550E          or [es:di+0xe],dx
00001A21  81C74001          add di,0x140
00001A25  E28E              loop 0x19b5
00001A27  1F                pop ds
00001A28  C3                ret
00001A29  314A31            xor [bp+si+0x31],cx
00001A2C  4A                dec dx
00001A2D  314A91            xor [bp+si-0x6f],cx
00001A30  4A                dec dx
00001A31  91                xchg ax,cx
00001A32  4A                dec dx
00001A33  F1                int1
00001A34  4A                dec dx
00001A35  0000              add [bx+si],al
00001A37  0000              add [bx+si],al
00001A39  0000              add [bx+si],al
00001A3B  0000              add [bx+si],al
00001A3D  0000              add [bx+si],al
00001A3F  0000              add [bx+si],al
00001A41  0000              add [bx+si],al
00001A43  0000              add [bx+si],al
00001A45  0000              add [bx+si],al
00001A47  0000              add [bx+si],al
00001A49  0000              add [bx+si],al
00001A4B  0000              add [bx+si],al
00001A4D  0000              add [bx+si],al
00001A4F  0000              add [bx+si],al
00001A51  0000              add [bx+si],al
00001A53  0000              add [bx+si],al
00001A55  0000              add [bx+si],al
00001A57  0000              add [bx+si],al
00001A59  0000              add [bx+si],al
00001A5B  0000              add [bx+si],al
00001A5D  0000              add [bx+si],al
00001A5F  0000              add [bx+si],al
00001A61  0002              add [bp+si],al
00001A63  0000              add [bx+si],al
00001A65  00060000          add [0x0],al
00001A69  00060000          add [0x0],al
00001A6D  000E0000          add [0x0],cl
00001A71  000E0000          add [0x0],cl
00001A75  000C              add [si],cl
00001A77  0000              add [bx+si],al
00001A79  000E0000          add [0x0],cl
00001A7D  001C              add [si],bl
00001A7F  0000              add [bx+si],al
00001A81  000C              add [si],cl
00001A83  0000              add [bx+si],al
00001A85  001C              add [si],bl
00001A87  0000              add [bx+si],al
00001A89  001C              add [si],bl
00001A8B  0000              add [bx+si],al
00001A8D  001C              add [si],bl
00001A8F  0000              add [bx+si],al
00001A91  001C              add [si],bl
00001A93  0000              add [bx+si],al
00001A95  0000              add [bx+si],al
00001A97  0000              add [bx+si],al
00001A99  0000              add [bx+si],al
00001A9B  0000              add [bx+si],al
00001A9D  0000              add [bx+si],al
00001A9F  0000              add [bx+si],al
00001AA1  0000              add [bx+si],al
00001AA3  800000            add byte [bx+si],0x0
00001AA6  01800000          add [bx+si+0x0],ax
00001AAA  03800000          add ax,[bx+si+0x0]
00001AAE  0300              add ax,[bx+si]
00001AB0  0000              add [bx+si],al
00001AB2  07                pop es
00001AB3  800000            add byte [bx+si],0x0
00001AB6  07                pop es
00001AB7  0000              add [bx+si],al
00001AB9  0007              add [bx],al
00001ABB  0000              add [bx+si],al
00001ABD  000F              add [bx],cl
00001ABF  0000              add [bx+si],al
00001AC1  000E0000          add [0x0],cl
00001AC5  000F              add [bx],cl
00001AC7  0000              add [bx+si],al
00001AC9  001E0000          add [0x0],bl
00001ACD  000E0000          add [0x0],cl
00001AD1  001F              add [bx],bl
00001AD3  0000              add [bx+si],al
00001AD5  001E0000          add [0x0],bl
00001AD9  001F              add [bx],bl
00001ADB  0000              add [bx+si],al
00001ADD  001E0000          add [0x0],bl
00001AE1  001E0000          add [0x0],bl
00001AE5  001E0000          add [0x0],bl
00001AE9  001E0000          add [0x0],bl
00001AED  001C              add [si],bl
00001AEF  0000              add [bx+si],al
00001AF1  003F              add [bx],bh
00001AF3  0000              add [bx+si],al
00001AF5  0000              add [bx+si],al
00001AF7  0000              add [bx+si],al
00001AF9  0000              add [bx+si],al
00001AFB  0000              add [bx+si],al
00001AFD  0000              add [bx+si],al
00001AFF  40                inc ax
00001B00  0000              add [bx+si],al
00001B02  00C0              add al,al
00001B04  0000              add [bx+si],al
00001B06  01C0              add ax,ax
00001B08  0000              add [bx+si],al
00001B0A  03800000          add ax,[bx+si+0x0]
00001B0E  03800000          add ax,[bx+si+0x0]
00001B12  07                pop es
00001B13  800000            add byte [bx+si],0x0
00001B16  07                pop es
00001B17  0000              add [bx+si],al
00001B19  0007              add [bx],al
00001B1B  0000              add [bx+si],al
00001B1D  000F              add [bx],cl
00001B1F  0000              add [bx+si],al
00001B21  000F              add [bx],cl
00001B23  0000              add [bx+si],al
00001B25  000E0000          add [0x0],cl
00001B29  001F              add [bx],bl
00001B2B  0000              add [bx+si],al
00001B2D  000E0000          add [0x0],cl
00001B31  001F              add [bx],bl
00001B33  0000              add [bx+si],al
00001B35  001E0000          add [0x0],bl
00001B39  001F              add [bx],bl
00001B3B  0000              add [bx+si],al
00001B3D  001E0000          add [0x0],bl
00001B41  001F              add [bx],bl
00001B43  0000              add [bx+si],al
00001B45  001F              add [bx],bl
00001B47  0000              add [bx+si],al
00001B49  001E0000          add [0x0],bl
00001B4D  031C              add bx,[si]
00001B4F  C00000            rol byte [bx+si],byte 0x0
00001B52  FF00              inc word [bx+si]
00001B54  001E0AC0          add [0xc00a],bl
00001B58  7810              js 0x1b6a
00001B5A  2403              and al,0x3
00001B5C  B240              mov dl,0x40
00001B5E  F6E2              mul dl
00001B60  05DD4B            add ax,0x4bdd
00001B63  8BF0              mov si,ax
00001B65  BD0100            mov bp,0x1
00001B68  EB0E              jmp 0x1b78
00001B6A  2401              and al,0x1
00001B6C  8AE0              mov ah,al
00001B6E  32C0              xor al,al
00001B70  05DD4C            add ax,0x4cdd
00001B73  8BF0              mov si,ax
00001B75  BD0400            mov bp,0x4
00001B78  B84001            mov ax,0x140
00001B7B  32ED              xor ch,ch
00001B7D  F7E1              mul cx
00001B7F  03C3              add ax,bx
00001B81  8BF8              mov di,ax
00001B83  B800A0            mov ax,0xa000
00001B86  8EC0              mov es,ax
00001B88  8BCD              mov cx,bp
00001B8A  51                push cx
00001B8B  57                push di
00001B8C  B91000            mov cx,0x10
00001B8F  51                push cx
00001B90  57                push di
00001B91  B90200            mov cx,0x2
00001B94  51                push cx
00001B95  AD                lodsw
00001B96  86E0              xchg ah,al
00001B98  E8FBF4            call 0x1096
00001B9B  F7D5              not bp
00001B9D  26212D            and [es:di],bp
00001BA0  260915            or [es:di],dx
00001BA3  E8F0F4            call 0x1096
00001BA6  F7D5              not bp
00001BA8  26216D02          and [es:di+0x2],bp
00001BAC  26095502          or [es:di+0x2],dx
00001BB0  E8E3F4            call 0x1096
00001BB3  F7D5              not bp
00001BB5  26216D04          and [es:di+0x4],bp
00001BB9  26095504          or [es:di+0x4],dx
00001BBD  E8D6F4            call 0x1096
00001BC0  F7D5              not bp
00001BC2  26216D06          and [es:di+0x6],bp
00001BC6  26095506          or [es:di+0x6],dx
00001BCA  83C708            add di,0x8
00001BCD  59                pop cx
00001BCE  E2C4              loop 0x1b94
00001BD0  5F                pop di
00001BD1  81C74001          add di,0x140
00001BD5  59                pop cx
00001BD6  E2B7              loop 0x1b8f
00001BD8  5F                pop di
00001BD9  83C710            add di,0x10
00001BDC  59                pop cx
00001BDD  E2AB              loop 0x1b8a
00001BDF  1F                pop ds
00001BE0  C3                ret
00001BE1  0000              add [bx+si],al
00001BE3  0000              add [bx+si],al
00001BE5  0000              add [bx+si],al
00001BE7  0000              add [bx+si],al
00001BE9  0000              add [bx+si],al
00001BEB  0000              add [bx+si],al
00001BED  0000              add [bx+si],al
00001BEF  0000              add [bx+si],al
00001BF1  0000              add [bx+si],al
00001BF3  0000              add [bx+si],al
00001BF5  0000              add [bx+si],al
00001BF7  1000              adc [bx+si],al
00001BF9  0010              add [bx+si],dl
00001BFB  60                pusha
00001BFC  0000              add [bx+si],al
00001BFE  07                pop es
00001BFF  C00000            rol byte [bx+si],byte 0x0
00001C02  07                pop es
00001C03  C00000            rol byte [bx+si],byte 0x0
00001C06  07                pop es
00001C07  C00000            rol byte [bx+si],byte 0x0
00001C0A  0C10              or al,0x10
00001C0C  0000              add [bx+si],al
00001C0E  1000              adc [bx+si],al
00001C10  0000              add [bx+si],al
00001C12  0000              add [bx+si],al
00001C14  0000              add [bx+si],al
00001C16  0000              add [bx+si],al
00001C18  0000              add [bx+si],al
00001C1A  0000              add [bx+si],al
00001C1C  0000              add [bx+si],al
00001C1E  0000              add [bx+si],al
00001C20  0000              add [bx+si],al
00001C22  0000              add [bx+si],al
00001C24  0000              add [bx+si],al
00001C26  0000              add [bx+si],al
00001C28  0000              add [bx+si],al
00001C2A  0100              add [bx+si],ax
00001C2C  0000              add [bx+si],al
00001C2E  0100              add [bx+si],ax
00001C30  0000              add [bx+si],al
00001C32  40                inc ax
00001C33  0400              add al,0x0
00001C35  0001              add [bx+di],al
00001C37  0000              add [bx+si],al
00001C39  0009              add [bx+di],cl
00001C3B  2000              and [bx+si],al
00001C3D  0003              add [bp+di],al
00001C3F  800004            add byte [bx+si],0x4
00001C42  57                push di
00001C43  D480              aam byte 0x80
00001C45  0003              add [bp+di],al
00001C47  800000            add byte [bx+si],0x0
00001C4A  0920              or [bx+si],sp
00001C4C  0000              add [bx+si],al
00001C4E  0100              add [bx+si],ax
00001C50  0000              add [bx+si],al
00001C52  40                inc ax
00001C53  0400              add al,0x0
00001C55  0001              add [bx+di],al
00001C57  0000              add [bx+si],al
00001C59  0001              add [bx+di],al
00001C5B  0000              add [bx+si],al
00001C5D  0000              add [bx+si],al
00001C5F  0000              add [bx+si],al
00001C61  0001              add [bx+di],al
00001C63  0000              add [bx+si],al
00001C65  0001              add [bx+di],al
00001C67  0000              add [bx+si],al
00001C69  0001              add [bx+di],al
00001C6B  0000              add [bx+si],al
00001C6D  0002              add [bp+si],al
00001C6F  800000            add byte [bx+si],0x0
00001C72  8380000023        add word [bx+si+0x0],0x23
00001C77  8800              mov [bx+si],al
00001C79  000D              add [di],cl
00001C7B  B000              mov al,0x0
00001C7D  000B              add [bp+di],cl
00001C7F  E80096            call 0xb282
00001C82  FF                db 0xff
00001C83  FF                db 0xff
00001C84  B90017            mov cx,0x1700
00001C87  E80000            call 0x1c8a
00001C8A  0B5800            or bx,[bx+si+0x0]
00001C8D  0023              add [bp+di],ah
00001C8F  82                db 0x82
00001C90  0000              add [bx+si],al
00001C92  02808002          add al,[bx+si+0x280]
00001C96  0100              add [bx+si],ax
00001C98  0000              add [bx+si],al
00001C9A  0100              add [bx+si],ax
00001C9C  0000              add [bx+si],al
00001C9E  0100              add [bx+si],ax
00001CA0  0000              add [bx+si],al
00001CA2  0000              add [bx+si],al
00001CA4  0000              add [bx+si],al
00001CA6  0000              add [bx+si],al
00001CA8  1010              adc [bx+si],dl
00001CAA  0000              add [bx+si],al
00001CAC  0004              add [si],al
00001CAE  0000              add [bx+si],al
00001CB0  800080            add byte [bx+si],0x80
00001CB3  0300              add ax,[bx+si]
00001CB5  00710C            add [bx+di+0xc],dh
00001CB8  0000              add [bx+si],al
00001CBA  3D3800            cmp ax,0x38
00001CBD  0007              add [bx],al
00001CBF  F00000            lock add [bx+si],al
00001CC2  97                xchg ax,di
00001CC3  E500              in ax,byte 0x0
00001CC5  000F              add [bx],cl
00001CC7  F00000            lock add [bx+si],al
00001CCA  1F                pop ds
00001CCB  3800              cmp [bx+si],al
00001CCD  0039              add [bx+di],bh
00001CCF  0E                push cs
00001CD0  0000              add [bx+si],al
00001CD2  E101              loope 0x1cd5
00001CD4  800100            add byte [bx+di],0x0
00001CD7  004004            add [bx+si+0x4],al
00001CDA  0000              add [bx+si],al
00001CDC  0810              or [bx+si],dl
00001CDE  0000              add [bx+si],al
00001CE0  0000              add [bx+si],al
00001CE2  0000              add [bx+si],al
00001CE4  0000              add [bx+si],al
00001CE6  0000              add [bx+si],al
00001CE8  0000              add [bx+si],al
00001CEA  0000              add [bx+si],al
00001CEC  0000              add [bx+si],al
00001CEE  0000              add [bx+si],al
00001CF0  0000              add [bx+si],al
00001CF2  0000              add [bx+si],al
00001CF4  0000              add [bx+si],al
00001CF6  0000              add [bx+si],al
00001CF8  0000              add [bx+si],al
00001CFA  0000              add [bx+si],al
00001CFC  0000              add [bx+si],al
00001CFE  0000              add [bx+si],al
00001D00  00924AAA          add [bp+si-0x55b6],dl
00001D04  EB00              jmp 0x1d06
00001D06  0000              add [bx+si],al
00001D08  0000              add [bx+si],al
00001D0A  0000              add [bx+si],al
00001D0C  0000              add [bx+si],al
00001D0E  0000              add [bx+si],al
00001D10  0000              add [bx+si],al
00001D12  0000              add [bx+si],al
00001D14  0000              add [bx+si],al
00001D16  0000              add [bx+si],al
00001D18  0000              add [bx+si],al
00001D1A  0000              add [bx+si],al
00001D1C  0000              add [bx+si],al
00001D1E  0000              add [bx+si],al
00001D20  0000              add [bx+si],al
00001D22  0000              add [bx+si],al
00001D24  0000              add [bx+si],al
00001D26  0000              add [bx+si],al
00001D28  0100              add [bx+si],ax
00001D2A  0000              add [bx+si],al
00001D2C  0100              add [bx+si],ax
00001D2E  0001              add [bx+di],al
00001D30  0100              add [bx+si],ax
00001D32  0000              add [bx+si],al
00001D34  82                db 0x82
00001D35  0000              add [bx+si],al
00001D37  00AB0000          add [bp+di+0x0],ch
00001D3B  015D04            add [di+0x4],bx
00001D3E  24AE              and al,0xae
00001D40  EF                out dx,ax
00001D41  FF                db 0xff
00001D42  FF                db 0xff
00001D43  FF                db 0xff
00001D44  FF04              inc word [si]
00001D46  24AB              and al,0xab
00001D48  EF                out dx,ax
00001D49  0000              add [bx+si],al
00001D4B  015D00            add [di+0x0],bx
00001D4E  0000              add [bx+si],al
00001D50  2200              and al,[bx+si]
00001D52  0000              add [bx+si],al
00001D54  81000000          add word [bx+si],0x0
00001D58  0100              add [bx+si],ax
00001D5A  0000              add [bx+si],al
00001D5C  0100              add [bx+si],ax
00001D5E  0000              add [bx+si],al
00001D60  0000              add [bx+si],al
00001D62  0000              add [bx+si],al
00001D64  0000              add [bx+si],al
00001D66  0000              add [bx+si],al
00001D68  0000              add [bx+si],al
00001D6A  0000              add [bx+si],al
00001D6C  0000              add [bx+si],al
00001D6E  0000              add [bx+si],al
00001D70  00810000          add [bx+di+0x0],al
00001D74  00C4              add ah,al
00001D76  0000              add [bx+si],al
00001D78  00BC0000          add [si+0x0],bh
00001D7C  00EE              add dh,ch
00001D7E  EA2420FFFF        jmp word 0xffff:word 0x2024
00001D83  FF                db 0xff
00001D84  FF                db 0xff
00001D85  FB                sti
00001D86  AA                stosb
00001D87  2420              and al,0x20
00001D89  FD                std
00001D8A  40                inc ax
00001D8B  0000              add [bx+si],al
00001D8D  E600              out byte 0x0,al
00001D8F  0000              add [bx+si],al
00001D91  40                inc ax
00001D92  800000            add byte [bx+si],0x0
00001D95  0020              add [bx+si],ah
00001D97  0000              add [bx+si],al
00001D99  0000              add [bx+si],al
00001D9B  0000              add [bx+si],al
00001D9D  0000              add [bx+si],al
00001D9F  0000              add [bx+si],al
00001DA1  0000              add [bx+si],al
00001DA3  0000              add [bx+si],al
00001DA5  0000              add [bx+si],al
00001DA7  0000              add [bx+si],al
00001DA9  0000              add [bx+si],al
00001DAB  0000              add [bx+si],al
00001DAD  0000              add [bx+si],al
00001DAF  0000              add [bx+si],al
00001DB1  0000              add [bx+si],al
00001DB3  0000              add [bx+si],al
00001DB5  0000              add [bx+si],al
00001DB7  0000              add [bx+si],al
00001DB9  0000              add [bx+si],al
00001DBB  0000              add [bx+si],al
00001DBD  0000              add [bx+si],al
00001DBF  0000              add [bx+si],al
00001DC1  D7                xlatb
00001DC2  55                push bp
00001DC3  52                push dx
00001DC4  49                dec cx
00001DC5  0000              add [bx+si],al
00001DC7  0000              add [bx+si],al
00001DC9  0000              add [bx+si],al
00001DCB  0000              add [bx+si],al
00001DCD  0000              add [bx+si],al
00001DCF  0000              add [bx+si],al
00001DD1  0000              add [bx+si],al
00001DD3  0000              add [bx+si],al
00001DD5  0000              add [bx+si],al
00001DD7  0000              add [bx+si],al
00001DD9  0000              add [bx+si],al
00001DDB  0000              add [bx+si],al
00001DDD  0000              add [bx+si],al
00001DDF  0000              add [bx+si],al
00001DE1  0000              add [bx+si],al
00001DE3  0000              add [bx+si],al
00001DE5  0000              add [bx+si],al
00001DE7  0000              add [bx+si],al
00001DE9  0000              add [bx+si],al
00001DEB  0000              add [bx+si],al
00001DED  0000              add [bx+si],al
00001DEF  0000              add [bx+si],al
00001DF1  0000              add [bx+si],al
00001DF3  0000              add [bx+si],al
00001DF5  0000              add [bx+si],al
00001DF7  0000              add [bx+si],al
00001DF9  0000              add [bx+si],al
00001DFB  0000              add [bx+si],al
00001DFD  0000              add [bx+si],al
00001DFF  0000              add [bx+si],al
00001E01  A7                cmpsw
00001E02  54                push sp
00001E03  90                nop
00001E04  0400              add al,0x0
00001E06  0000              add [bx+si],al
00001E08  0000              add [bx+si],al
00001E0A  0000              add [bx+si],al
00001E0C  0000              add [bx+si],al
00001E0E  0000              add [bx+si],al
00001E10  0000              add [bx+si],al
00001E12  0000              add [bx+si],al
00001E14  0000              add [bx+si],al
00001E16  0000              add [bx+si],al
00001E18  0000              add [bx+si],al
00001E1A  0000              add [bx+si],al
00001E1C  0000              add [bx+si],al
00001E1E  0000              add [bx+si],al
00001E20  0000              add [bx+si],al
00001E22  0000              add [bx+si],al
00001E24  0000              add [bx+si],al
00001E26  0000              add [bx+si],al
00001E28  0000              add [bx+si],al
00001E2A  0010              add [bx+si],dl
00001E2C  0000              add [bx+si],al
00001E2E  0004              add [si],al
00001E30  0000              add [bx+si],al
00001E32  0000              add [bx+si],al
00001E34  800000            add byte [bx+si],0x0
00001E37  007100            add [bx+di+0x0],dh
00001E3A  0000              add [bx+si],al
00001E3C  3D0000            cmp ax,0x0
00001E3F  0007              add [bx],al
00001E41  1004              adc [si],al
00001E43  00970000          add [bx+0x0],dl
00001E47  000F              add [bx],cl
00001E49  0000              add [bx+si],al
00001E4B  001F              add [bx],bl
00001E4D  0000              add [bx+si],al
00001E4F  0039              add [bx+di],bh
00001E51  0000              add [bx+si],al
00001E53  00E1              add cl,ah
00001E55  0000              add [bx+si],al
00001E57  0100              add [bx+si],ax
00001E59  0000              add [bx+si],al
00001E5B  0400              add al,0x0
00001E5D  0000              add [bx+si],al
00001E5F  1000              adc [bx+si],al
00001E61  0000              add [bx+si],al
00001E63  0000              add [bx+si],al
00001E65  0010              add [bx+si],dl
00001E67  0000              add [bx+si],al
00001E69  0000              add [bx+si],al
00001E6B  0000              add [bx+si],al
00001E6D  00800000          add [bx+si+0x0],al
00001E71  0300              add ax,[bx+si]
00001E73  0000              add [bx+si],al
00001E75  0C00              or al,0x0
00001E77  0000              add [bx+si],al
00001E79  3800              cmp [bx+si],al
00001E7B  0000              add [bx+si],al
00001E7D  F00000            lock add [bx+si],al
00001E80  00E5              add ch,ah
00001E82  0200              add al,[bx+si]
00001E84  10F0              adc al,dh
00001E86  0000              add [bx+si],al
00001E88  003C              add [si],bh
00001E8A  0000              add [bx+si],al
00001E8C  0007              add [bx],al
00001E8E  0000              add [bx+si],al
00001E90  0000              add [bx+si],al
00001E92  C00000            rol byte [bx+si],byte 0x0
00001E95  0020              add [bx+si],ah
00001E97  0000              add [bx+si],al
00001E99  0004              add [si],al
00001E9B  0000              add [bx+si],al
00001E9D  0000              add [bx+si],al
00001E9F  0000              add [bx+si],al
00001EA1  0000              add [bx+si],al
00001EA3  0000              add [bx+si],al
00001EA5  0000              add [bx+si],al
00001EA7  0000              add [bx+si],al
00001EA9  0000              add [bx+si],al
00001EAB  0000              add [bx+si],al
00001EAD  0000              add [bx+si],al
00001EAF  0000              add [bx+si],al
00001EB1  0000              add [bx+si],al
00001EB3  0000              add [bx+si],al
00001EB5  0000              add [bx+si],al
00001EB7  0000              add [bx+si],al
00001EB9  0000              add [bx+si],al
00001EBB  0000              add [bx+si],al
00001EBD  0000              add [bx+si],al
00001EBF  0000              add [bx+si],al
00001EC1  2009              and [bx+di],cl
00001EC3  2AE5              sub ah,ch
00001EC5  0000              add [bx+si],al
00001EC7  0000              add [bx+si],al
00001EC9  0000              add [bx+si],al
00001ECB  0000              add [bx+si],al
00001ECD  0000              add [bx+si],al
00001ECF  0000              add [bx+si],al
00001ED1  0000              add [bx+si],al
00001ED3  0000              add [bx+si],al
00001ED5  0000              add [bx+si],al
00001ED7  0000              add [bx+si],al
00001ED9  0000              add [bx+si],al
00001EDB  0000              add [bx+si],al
00001EDD  0000              add [bx+si],al
00001EDF  0000              add [bx+si],al
00001EE1  51                push cx
00001EE2  1E                push ds
00001EE3  56                push si
00001EE4  8CC8              mov ax,cs
00001EE6  050030            add ax,0x3000
00001EE9  8EC0              mov es,ax
00001EEB  B82000            mov ax,0x20
00001EEE  F7E1              mul cx
00001EF0  8BC8              mov cx,ax
00001EF2  BF0000            mov di,0x0
00001EF5  F3A4              rep movsb
00001EF7  5F                pop di
00001EF8  07                pop es
00001EF9  59                pop cx
00001EFA  8CC8              mov ax,cs
00001EFC  050030            add ax,0x3000
00001EFF  8ED8              mov ds,ax
00001F01  BE0000            mov si,0x0
00001F04  51                push cx
00001F05  B90800            mov cx,0x8
00001F08  51                push cx
00001F09  AD                lodsw
00001F0A  86E0              xchg ah,al
00001F0C  8BD0              mov dx,ax
00001F0E  AD                lodsw
00001F0F  86E0              xchg ah,al
00001F11  8BC8              mov cx,ax
00001F13  2E8916EB4F        mov [cs:0x4feb],dx
00001F18  2E890EEF4F        mov [cs:0x4fef],cx
00001F1D  0BC2              or ax,dx
00001F1F  8BD8              mov bx,ax
00001F21  D1EB              shr bx,0x0
00001F23  0BC3              or ax,bx
00001F25  03DB              add bx,bx
00001F27  03DB              add bx,bx
00001F29  0BC3              or ax,bx
00001F2B  F7D0              not ax
00001F2D  2EA3F54F          mov [cs:0x4ff5],ax
00001F31  E81800            call 0x1f4c
00001F34  8BC2              mov ax,dx
00001F36  AB                stosw
00001F37  E81200            call 0x1f4c
00001F3A  8BC2              mov ax,dx
00001F3C  AB                stosw
00001F3D  E82E00            call 0x1f6e
00001F40  26885600          mov [es:bp+0x0],dl
00001F44  45                inc bp
00001F45  59                pop cx
00001F46  E2C0              loop 0x1f08
00001F48  59                pop cx
00001F49  E2B9              loop 0x1f04
00001F4B  C3                ret
00001F4C  B90400            mov cx,0x4
00001F4F  2ED106EF4F        rol word [cs:0x4fef],0x0
00001F54  13D2              adc dx,dx
00001F56  2ED106EB4F        rol word [cs:0x4feb],0x0
00001F5B  13D2              adc dx,dx
00001F5D  2ED106EF4F        rol word [cs:0x4fef],0x0
00001F62  13D2              adc dx,dx
00001F64  2ED106EB4F        rol word [cs:0x4feb],0x0
00001F69  13D2              adc dx,dx
00001F6B  E2E2              loop 0x1f4f
00001F6D  C3                ret
00001F6E  B90800            mov cx,0x8
00001F71  32C0              xor al,al
00001F73  2ED106F54F        rol word [cs:0x4ff5],0x0
00001F78  12C0              adc al,al
00001F7A  2ED106F54F        rol word [cs:0x4ff5],0x0
00001F7F  12C0              adc al,al
00001F81  3C03              cmp al,0x3
00001F83  7402              jz 0x1f87
00001F85  32C0              xor al,al
00001F87  2401              and al,0x1
00001F89  02D2              add dl,dl
00001F8B  0AD0              or dl,al
00001F8D  E2E2              loop 0x1f71
00001F8F  C3                ret
00001F90  98                cbw
00001F91  4F                dec di
00001F92  A84F              test al,0x4f
00001F94  B84FC8            mov ax,0xc84f
00001F97  4F                dec di
00001F98  D84FC8            fmul dword [bx-0x38]
00001F9B  4F                dec di
00001F9C  0001              add [bx+di],al
00001F9E  0203              add al,[bp+di]
00001FA0  0809              or [bx+di],cl
00001FA2  0A0B              or cl,[bp+di]
00001FA4  1011              adc [bx+di],dl
00001FA6  1213              adc dl,[bp+di]
00001FA8  1819              sbb [bx+di],bl
00001FAA  1A1B              sbb bl,[bp+di]
00001FAC  0002              add [bp+si],al
00001FAE  0406              add al,0x6
00001FB0  1012              adc [bp+si],dl
00001FB2  1416              adc al,0x16
00001FB4  2022              and [bp+si],ah
00001FB6  2426              and al,0x26
00001FB8  3032              xor [bp+si],dh
00001FBA  3436              xor al,0x36
00001FBC  0001              add [bx+di],al
00001FBE  0405              add al,0x5
00001FC0  0809              or [bx+di],cl
00001FC2  0C0D              or al,0xd
00001FC4  2021              and [bx+di],ah
00001FC6  2425              and al,0x25
00001FC8  2829              sub [bx+di],ch
00001FCA  2C2D              sub al,0x2d
00001FCC  0005              add [di],al
00001FCE  06                push es
00001FCF  07                pop es
00001FD0  282D              sub [di],ch
00001FD2  2E2F              cs das
00001FD4  3035              xor [di],dh
00001FD6  3637              ss aaa
00001FD8  383D              cmp [di],bh
00001FDA  3E3F              ds aas
00001FDC  00060507          add [0x705],al
00001FE0  30363537          xor [0x3735],dh
00001FE4  282E2D2F          sub [0x2f2d],ch
00001FE8  383E3D3F          cmp [0x3f3d],bh
00001FEC  C3                ret
00001FED  0000              add [bx+si],al
00001FEF  0000              add [bx+si],al
00001FF1  0000              add [bx+si],al
00001FF3  0000              add [bx+si],al
00001FF5  0000              add [bx+si],al
00001FF7  0000              add [bx+si],al
00001FF9  0000              add [bx+si],al
00001FFB  0000              add [bx+si],al
00001FFD  0000              add [bx+si],al
00001FFF  0000              add [bx+si],al
00002001  0000              add [bx+si],al
00002003  0000              add [bx+si],al
00002005  0000              add [bx+si],al
00002007  0000              add [bx+si],al
00002009  0000              add [bx+si],al
0000200B  0000              add [bx+si],al
0000200D  0000              add [bx+si],al
0000200F  0000              add [bx+si],al
00002011  0000              add [bx+si],al
00002013  0000              add [bx+si],al
00002015  0000              add [bx+si],al
00002017  0000              add [bx+si],al
00002019  0000              add [bx+si],al
0000201B  0000              add [bx+si],al
0000201D  0000              add [bx+si],al
0000201F  0000              add [bx+si],al
00002021  0000              add [bx+si],al
00002023  0000              add [bx+si],al
00002025  0000              add [bx+si],al
00002027  0000              add [bx+si],al
00002029  0000              add [bx+si],al
0000202B  0000              add [bx+si],al
0000202D  0000              add [bx+si],al
0000202F  0000              add [bx+si],al
00002031  0000              add [bx+si],al
00002033  0000              add [bx+si],al
00002035  0000              add [bx+si],al
00002037  0000              add [bx+si],al
00002039  0000              add [bx+si],al
0000203B  0000              add [bx+si],al
0000203D  0000              add [bx+si],al
0000203F  0000              add [bx+si],al
00002041  0000              add [bx+si],al
00002043  0000              add [bx+si],al
00002045  0000              add [bx+si],al
00002047  0000              add [bx+si],al
00002049  0000              add [bx+si],al
0000204B  0000              add [bx+si],al
0000204D  0000              add [bx+si],al
0000204F  0000              add [bx+si],al
00002051  0000              add [bx+si],al
00002053  0000              add [bx+si],al
00002055  0000              add [bx+si],al
00002057  0000              add [bx+si],al
00002059  0000              add [bx+si],al
0000205B  0000              add [bx+si],al
0000205D  0000              add [bx+si],al
0000205F  0000              add [bx+si],al
00002061  0000              add [bx+si],al
00002063  0000              add [bx+si],al
00002065  0000              add [bx+si],al
00002067  0000              add [bx+si],al
00002069  0000              add [bx+si],al
0000206B  0000              add [bx+si],al
0000206D  0000              add [bx+si],al
0000206F  0000              add [bx+si],al
00002071  0000              add [bx+si],al
00002073  0000              add [bx+si],al
00002075  0000              add [bx+si],al
00002077  0000              add [bx+si],al
00002079  0000              add [bx+si],al
0000207B  0000              add [bx+si],al
0000207D  0000              add [bx+si],al
0000207F  0000              add [bx+si],al
00002081  0000              add [bx+si],al
00002083  0000              add [bx+si],al
00002085  0000              add [bx+si],al
00002087  0000              add [bx+si],al
00002089  0000              add [bx+si],al
0000208B  0000              add [bx+si],al
0000208D  0000              add [bx+si],al
0000208F  0000              add [bx+si],al
00002091  0000              add [bx+si],al
00002093  0000              add [bx+si],al
00002095  0000              add [bx+si],al
00002097  0000              add [bx+si],al
00002099  0000              add [bx+si],al
0000209B  0000              add [bx+si],al
0000209D  0000              add [bx+si],al
0000209F  0000              add [bx+si],al
000020A1  0000              add [bx+si],al
000020A3  0000              add [bx+si],al
000020A5  0000              add [bx+si],al
000020A7  0000              add [bx+si],al
000020A9  0000              add [bx+si],al
000020AB  0000              add [bx+si],al
000020AD  0000              add [bx+si],al
000020AF  0000              add [bx+si],al
000020B1  0000              add [bx+si],al
000020B3  0000              add [bx+si],al
000020B5  0000              add [bx+si],al
000020B7  0000              add [bx+si],al
000020B9  0000              add [bx+si],al
000020BB  0000              add [bx+si],al
000020BD  0000              add [bx+si],al
000020BF  0000              add [bx+si],al
000020C1  0000              add [bx+si],al
000020C3  0000              add [bx+si],al
000020C5  0000              add [bx+si],al
000020C7  0000              add [bx+si],al
000020C9  0000              add [bx+si],al
000020CB  0000              add [bx+si],al
000020CD  0000              add [bx+si],al
000020CF  0000              add [bx+si],al
000020D1  0000              add [bx+si],al
000020D3  0000              add [bx+si],al
000020D5  0000              add [bx+si],al
000020D7  0000              add [bx+si],al
000020D9  0000              add [bx+si],al
000020DB  0000              add [bx+si],al
000020DD  0000              add [bx+si],al
000020DF  0000              add [bx+si],al
000020E1  0000              add [bx+si],al
000020E3  0000              add [bx+si],al
000020E5  0000              add [bx+si],al
000020E7  0000              add [bx+si],al
000020E9  0000              add [bx+si],al
000020EB  0000              add [bx+si],al
000020ED  0000              add [bx+si],al
000020EF  0000              add [bx+si],al
000020F1  0000              add [bx+si],al
000020F3  0000              add [bx+si],al
000020F5  0000              add [bx+si],al
000020F7  0000              add [bx+si],al
000020F9  0000              add [bx+si],al
000020FB  0000              add [bx+si],al
000020FD  0000              add [bx+si],al
000020FF  0000              add [bx+si],al
00002101  0000              add [bx+si],al
00002103  0000              add [bx+si],al
00002105  0000              add [bx+si],al
00002107  0000              add [bx+si],al
00002109  0000              add [bx+si],al
0000210B  0000              add [bx+si],al
0000210D  0000              add [bx+si],al
0000210F  0000              add [bx+si],al
00002111  0000              add [bx+si],al
00002113  0000              add [bx+si],al
00002115  0000              add [bx+si],al
00002117  0000              add [bx+si],al
00002119  0000              add [bx+si],al
0000211B  0000              add [bx+si],al
0000211D  0000              add [bx+si],al
0000211F  0000              add [bx+si],al
00002121  0000              add [bx+si],al
00002123  0000              add [bx+si],al
00002125  0000              add [bx+si],al
00002127  0000              add [bx+si],al
00002129  0000              add [bx+si],al
0000212B  0000              add [bx+si],al
0000212D  0000              add [bx+si],al
0000212F  0000              add [bx+si],al
00002131  0000              add [bx+si],al
00002133  0000              add [bx+si],al
00002135  0000              add [bx+si],al
00002137  0000              add [bx+si],al
00002139  0000              add [bx+si],al
0000213B  0000              add [bx+si],al
0000213D  0000              add [bx+si],al
0000213F  0000              add [bx+si],al
00002141  0000              add [bx+si],al
00002143  0000              add [bx+si],al
00002145  0000              add [bx+si],al
00002147  0000              add [bx+si],al
00002149  0000              add [bx+si],al
0000214B  0000              add [bx+si],al
0000214D  0000              add [bx+si],al
0000214F  0000              add [bx+si],al
00002151  0000              add [bx+si],al
00002153  0000              add [bx+si],al
00002155  0000              add [bx+si],al
00002157  0000              add [bx+si],al
00002159  0000              add [bx+si],al
0000215B  0000              add [bx+si],al
0000215D  0000              add [bx+si],al
0000215F  0000              add [bx+si],al
00002161  0000              add [bx+si],al
00002163  0000              add [bx+si],al
00002165  0000              add [bx+si],al
00002167  0000              add [bx+si],al
00002169  0000              add [bx+si],al
0000216B  0000              add [bx+si],al
0000216D  0000              add [bx+si],al
0000216F  0000              add [bx+si],al
00002171  0000              add [bx+si],al
00002173  0000              add [bx+si],al
00002175  0000              add [bx+si],al
00002177  0000              add [bx+si],al
00002179  0000              add [bx+si],al
0000217B  0000              add [bx+si],al
0000217D  0000              add [bx+si],al
0000217F  0000              add [bx+si],al
00002181  0000              add [bx+si],al
00002183  0000              add [bx+si],al
00002185  0000              add [bx+si],al
00002187  0000              add [bx+si],al
00002189  0000              add [bx+si],al
0000218B  0000              add [bx+si],al
0000218D  0000              add [bx+si],al
0000218F  0000              add [bx+si],al
00002191  0000              add [bx+si],al
00002193  0000              add [bx+si],al
00002195  0000              add [bx+si],al
00002197  0000              add [bx+si],al
00002199  0000              add [bx+si],al
0000219B  0000              add [bx+si],al
0000219D  0000              add [bx+si],al
0000219F  0000              add [bx+si],al
000021A1  0000              add [bx+si],al
000021A3  0000              add [bx+si],al
000021A5  0000              add [bx+si],al
000021A7  0000              add [bx+si],al
000021A9  0000              add [bx+si],al
000021AB  0000              add [bx+si],al
000021AD  0000              add [bx+si],al
000021AF  0000              add [bx+si],al
000021B1  0000              add [bx+si],al
000021B3  0000              add [bx+si],al
000021B5  0000              add [bx+si],al
000021B7  0000              add [bx+si],al
000021B9  0000              add [bx+si],al
000021BB  0000              add [bx+si],al
000021BD  0000              add [bx+si],al
000021BF  0000              add [bx+si],al
000021C1  0000              add [bx+si],al
000021C3  0000              add [bx+si],al
000021C5  0000              add [bx+si],al
000021C7  0000              add [bx+si],al
000021C9  0000              add [bx+si],al
000021CB  0000              add [bx+si],al
000021CD  0000              add [bx+si],al
000021CF  0000              add [bx+si],al
000021D1  0000              add [bx+si],al
000021D3  0000              add [bx+si],al
000021D5  0000              add [bx+si],al
000021D7  0000              add [bx+si],al
000021D9  0000              add [bx+si],al
000021DB  0000              add [bx+si],al
000021DD  0000              add [bx+si],al
000021DF  0000              add [bx+si],al
000021E1  0000              add [bx+si],al
000021E3  0000              add [bx+si],al
000021E5  0000              add [bx+si],al
000021E7  0000              add [bx+si],al
000021E9  0000              add [bx+si],al
000021EB  0000              add [bx+si],al
000021ED  0000              add [bx+si],al
000021EF  0000              add [bx+si],al
000021F1  0000              add [bx+si],al
000021F3  0000              add [bx+si],al
000021F5  0000              add [bx+si],al
000021F7  0000              add [bx+si],al
000021F9  0000              add [bx+si],al
000021FB  0000              add [bx+si],al
000021FD  0000              add [bx+si],al
000021FF  0000              add [bx+si],al
00002201  0000              add [bx+si],al
00002203  0000              add [bx+si],al
00002205  0000              add [bx+si],al
00002207  0000              add [bx+si],al
00002209  0000              add [bx+si],al
0000220B  0000              add [bx+si],al
0000220D  0000              add [bx+si],al
0000220F  0000              add [bx+si],al
00002211  0000              add [bx+si],al
00002213  0000              add [bx+si],al
00002215  0000              add [bx+si],al
00002217  0000              add [bx+si],al
00002219  0000              add [bx+si],al
0000221B  0000              add [bx+si],al
0000221D  0000              add [bx+si],al
0000221F  0000              add [bx+si],al
00002221  0000              add [bx+si],al
00002223  0000              add [bx+si],al
00002225  0000              add [bx+si],al
00002227  0000              add [bx+si],al
00002229  0000              add [bx+si],al
0000222B  0000              add [bx+si],al
0000222D  0000              add [bx+si],al
0000222F  0000              add [bx+si],al
00002231  0000              add [bx+si],al
00002233  0000              add [bx+si],al
00002235  0000              add [bx+si],al
00002237  0000              add [bx+si],al
00002239  0000              add [bx+si],al
0000223B  0000              add [bx+si],al
0000223D  0000              add [bx+si],al
0000223F  0000              add [bx+si],al
00002241  0000              add [bx+si],al
00002243  0000              add [bx+si],al
00002245  0000              add [bx+si],al
00002247  0000              add [bx+si],al
00002249  0000              add [bx+si],al
0000224B  0000              add [bx+si],al
0000224D  0000              add [bx+si],al
0000224F  0000              add [bx+si],al
00002251  0000              add [bx+si],al
00002253  0000              add [bx+si],al
00002255  0000              add [bx+si],al
00002257  0000              add [bx+si],al
00002259  0000              add [bx+si],al
0000225B  0000              add [bx+si],al
0000225D  0000              add [bx+si],al
0000225F  0000              add [bx+si],al
00002261  0000              add [bx+si],al
00002263  0000              add [bx+si],al
00002265  0000              add [bx+si],al
00002267  0000              add [bx+si],al
00002269  0000              add [bx+si],al
0000226B  0000              add [bx+si],al
0000226D  0000              add [bx+si],al
0000226F  0000              add [bx+si],al
00002271  0000              add [bx+si],al
00002273  0000              add [bx+si],al
00002275  0000              add [bx+si],al
00002277  0000              add [bx+si],al
00002279  0000              add [bx+si],al
0000227B  0000              add [bx+si],al
0000227D  0000              add [bx+si],al
0000227F  0000              add [bx+si],al
00002281  0000              add [bx+si],al
00002283  0000              add [bx+si],al
00002285  0000              add [bx+si],al
00002287  0000              add [bx+si],al
00002289  0000              add [bx+si],al
0000228B  0000              add [bx+si],al
0000228D  0000              add [bx+si],al
0000228F  0000              add [bx+si],al
00002291  0000              add [bx+si],al
00002293  0000              add [bx+si],al
00002295  0000              add [bx+si],al
00002297  0000              add [bx+si],al
00002299  0000              add [bx+si],al
0000229B  0000              add [bx+si],al
0000229D  0000              add [bx+si],al
0000229F  0000              add [bx+si],al
000022A1  0000              add [bx+si],al
000022A3  0000              add [bx+si],al
000022A5  0000              add [bx+si],al
000022A7  0000              add [bx+si],al
000022A9  0000              add [bx+si],al
000022AB  0000              add [bx+si],al
000022AD  0000              add [bx+si],al
000022AF  0000              add [bx+si],al
000022B1  0000              add [bx+si],al
000022B3  0000              add [bx+si],al
000022B5  0000              add [bx+si],al
000022B7  0000              add [bx+si],al
000022B9  0000              add [bx+si],al
000022BB  0000              add [bx+si],al
000022BD  0000              add [bx+si],al
000022BF  0000              add [bx+si],al
000022C1  0000              add [bx+si],al
000022C3  0000              add [bx+si],al
000022C5  0000              add [bx+si],al
000022C7  0000              add [bx+si],al
000022C9  0000              add [bx+si],al
000022CB  0000              add [bx+si],al
000022CD  0000              add [bx+si],al
000022CF  0000              add [bx+si],al
000022D1  0000              add [bx+si],al
000022D3  0000              add [bx+si],al
000022D5  0000              add [bx+si],al
000022D7  0000              add [bx+si],al
000022D9  0000              add [bx+si],al
000022DB  0000              add [bx+si],al
000022DD  0000              add [bx+si],al
000022DF  0000              add [bx+si],al
000022E1  0000              add [bx+si],al
000022E3  0000              add [bx+si],al
000022E5  0000              add [bx+si],al
000022E7  0000              add [bx+si],al
000022E9  0000              add [bx+si],al
000022EB  0000              add [bx+si],al
000022ED  0000              add [bx+si],al
000022EF  0000              add [bx+si],al
000022F1  0000              add [bx+si],al
000022F3  0000              add [bx+si],al
000022F5  0000              add [bx+si],al
000022F7  0000              add [bx+si],al
000022F9  0000              add [bx+si],al
000022FB  0000              add [bx+si],al
000022FD  0000              add [bx+si],al
000022FF  0000              add [bx+si],al
00002301  0000              add [bx+si],al
00002303  0000              add [bx+si],al
00002305  0000              add [bx+si],al
00002307  0000              add [bx+si],al
00002309  0000              add [bx+si],al
0000230B  0000              add [bx+si],al
0000230D  0000              add [bx+si],al
0000230F  0000              add [bx+si],al
00002311  0000              add [bx+si],al
00002313  0000              add [bx+si],al
00002315  0000              add [bx+si],al
00002317  0000              add [bx+si],al
00002319  0000              add [bx+si],al
0000231B  0000              add [bx+si],al
0000231D  0000              add [bx+si],al
0000231F  0000              add [bx+si],al
00002321  0000              add [bx+si],al
00002323  0000              add [bx+si],al
00002325  0000              add [bx+si],al
00002327  0000              add [bx+si],al
00002329  0000              add [bx+si],al
0000232B  0000              add [bx+si],al
0000232D  0000              add [bx+si],al
0000232F  0000              add [bx+si],al
00002331  0000              add [bx+si],al
00002333  0000              add [bx+si],al
00002335  0000              add [bx+si],al
00002337  0000              add [bx+si],al
00002339  0000              add [bx+si],al
0000233B  0000              add [bx+si],al
0000233D  0000              add [bx+si],al
0000233F  0000              add [bx+si],al
00002341  0000              add [bx+si],al
00002343  0000              add [bx+si],al
00002345  0000              add [bx+si],al
00002347  0000              add [bx+si],al
00002349  0000              add [bx+si],al
0000234B  0000              add [bx+si],al
0000234D  0000              add [bx+si],al
0000234F  0000              add [bx+si],al
00002351  0000              add [bx+si],al
00002353  0000              add [bx+si],al
00002355  0000              add [bx+si],al
00002357  0000              add [bx+si],al
00002359  0000              add [bx+si],al
0000235B  0000              add [bx+si],al
0000235D  0000              add [bx+si],al
0000235F  0000              add [bx+si],al
