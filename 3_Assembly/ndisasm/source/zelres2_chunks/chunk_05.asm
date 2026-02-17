00000000  A22600            mov [0x26],al
00000003  002C              add [si],ch
00000005  30063B72          xor [0x723b],al
00000009  40                inc ax
0000000A  7F3F              jg 0x4b
0000000C  B9429E            mov cx,0x9e42
0000000F  46                inc si
00000010  29416E            sub [bx+di+0x6e],ax
00000013  321D              xor bl,[di]
00000015  3909              cmp [bx+di],cx
00000017  43                inc bx
00000018  7A42              jpe 0x5c
0000001A  F0                lock
0000001B  3A4144            cmp al,[bx+di+0x44]
0000001E  BB4605            mov bx,0x546
00000021  47                inc di
00000022  FD                std
00000023  47                inc di
00000024  7042              jo 0x68
00000026  4D                dec bp
00000027  4B                dec bx
00000028  90                nop
00000029  4B                dec bx
0000002A  27                daa
0000002B  4D                dec bp
0000002C  E8502E            call 0x2e7f
0000002F  52                push dx
00000030  0E                push cs
00000031  07                pop es
00000032  BF6252            mov di,0x5262
00000035  33C0              xor ax,ax
00000037  B98000            mov cx,0x80
0000003A  F3AB              rep stosw
0000003C  FE064352          inc byte [0x5243]
00000040  C7063152F841      mov word [0x5231],0x41f8
00000046  8B3631FF          mov si,[0xff31]
0000004A  83EE21            sub si,0x21
0000004D  E8AD16            call 0x16fd
00000050  33DB              xor bx,bx
00000052  F60480            test byte [si],0x80
00000055  7403              jz 0x5a
00000057  E8DC03            call 0x436
0000005A  46                inc si
0000005B  B90600            mov cx,0x6
0000005E  51                push cx
0000005F  F60480            test byte [si],0x80
00000062  7403              jz 0x67
00000064  E80C04            call 0x473
00000067  46                inc si
00000068  43                inc bx
00000069  F60480            test byte [si],0x80
0000006C  7403              jz 0x71
0000006E  E80204            call 0x473
00000071  46                inc si
00000072  43                inc bx
00000073  F60480            test byte [si],0x80
00000076  7403              jz 0x7b
00000078  E8F803            call 0x473
0000007B  46                inc si
0000007C  43                inc bx
0000007D  F60480            test byte [si],0x80
00000080  7403              jz 0x85
00000082  E8EE03            call 0x473
00000085  46                inc si
00000086  43                inc bx
00000087  59                pop cx
00000088  E2D4              loop 0x5e
0000008A  F60480            test byte [si],0x80
0000008D  7403              jz 0x92
0000008F  E8E103            call 0x473
00000092  46                inc si
00000093  43                inc bx
00000094  F60480            test byte [si],0x80
00000097  7403              jz 0x9c
00000099  E8D703            call 0x473
0000009C  46                inc si
0000009D  43                inc bx
0000009E  F60480            test byte [si],0x80
000000A1  7403              jz 0xa6
000000A3  E8CD03            call 0x473
000000A6  46                inc si
000000A7  F60480            test byte [si],0x80
000000AA  7403              jz 0xaf
000000AC  E80A04            call 0x4b9
000000AF  8B3631FF          mov si,[0xff31]
000000B3  BF00E9            mov di,0xe900
000000B6  C606375212        mov byte [0x5237],0x12
000000BB  E88C0E            call 0xf4a
000000BE  33DB              xor bx,bx
000000C0  83C603            add si,0x3
000000C3  AC                lodsb
000000C4  0AC0              or al,al
000000C6  7903              jns 0xcb
000000C8  E82604            call 0x4f1
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
00000109  E9E104            jmp 0x5ed
0000010C  263A45FF          cmp al,[es:di-0x1]
00000110  7403              jz 0x115
00000112  E81300            call 0x128
00000115  83C604            add si,0x4
00000118  E8D615            call 0x16f1
0000011B  810631524001      add word [0x5231],0x140
00000121  FE0E3752          dec byte [0x5237]
00000125  7594              jnz 0xbb
00000127  C3                ret
00000128  8A44FF            mov al,[si-0x1]
0000012B  0AC0              or al,al
0000012D  7903              jns 0x132
0000012F  E94204            jmp 0x574
00000132  26807DFFFC        cmp byte [es:di-0x1],0xfc
00000137  7507              jnz 0x140
00000139  26C645FFFF        mov byte [es:di-0x1],0xff
0000013E  EB1C              jmp 0x15c
00000140  26FE45FF          inc byte [es:di-0x1]
00000144  26C645FFFE        mov byte [es:di-0x1],0xfe
00000149  7411              jz 0x15c
0000014B  268845FF          mov [es:di-0x1],al
0000014F  8BD3              mov dx,bx
00000151  03D2              add dx,dx
00000153  03D2              add dx,dx
00000155  03163152          add dx,[0x5231]
00000159  E81601            call 0x272
0000015C  A012C0            mov al,[0xc012]
0000015F  2C05              sub al,0x5
00000161  7301              jnc 0x164
00000163  C3                ret
00000164  3C04              cmp al,0x4
00000166  7201              jc 0x169
00000168  C3                ret
00000169  53                push bx
0000016A  8AD8              mov bl,al
0000016C  32FF              xor bh,bh
0000016E  03DB              add bx,bx
00000170  FF977231          call word near [bx+0x3172]
00000174  5B                pop bx
00000175  C3                ret
00000176  7A31              jpe 0x1a9
00000178  9A31D0314E        call word 0x4e31:word 0xd031
0000017D  328A44FF          xor cl,[bp+si-0xbc]
00000181  2C1B              sub al,0x1b
00000183  3C02              cmp al,0x2
00000185  7201              jc 0x188
00000187  C3                ret
00000188  C645FFFE          mov byte [di-0x1],0xfe
0000018C  F606435201        test byte [0x5243],0x1
00000191  7501              jnz 0x194
00000193  C3                ret
00000194  FEC0              inc al
00000196  2401              and al,0x1
00000198  041B              add al,0x1b
0000019A  8844FF            mov [si-0x1],al
0000019D  C3                ret
0000019E  8A44FF            mov al,[si-0x1]
000001A1  2C1D              sub al,0x1d
000001A3  3C06              cmp al,0x6
000001A5  7201              jc 0x1a8
000001A7  C3                ret
000001A8  C645FFFE          mov byte [di-0x1],0xfe
000001AC  3C04              cmp al,0x4
000001AE  731A              jnc 0x1ca
000001B0  0AC0              or al,al
000001B2  750C              jnz 0x1c0
000001B4  50                push ax
000001B5  2EFF161A01        call word near [cs:0x11a]
000001BA  2403              and al,0x3
000001BC  58                pop ax
000001BD  7401              jz 0x1c0
000001BF  C3                ret
000001C0  FEC0              inc al
000001C2  2403              and al,0x3
000001C4  041D              add al,0x1d
000001C6  8844FF            mov [si-0x1],al
000001C9  C3                ret
000001CA  FEC0              inc al
000001CC  2401              and al,0x1
000001CE  0421              add al,0x21
000001D0  8844FF            mov [si-0x1],al
000001D3  C3                ret
000001D4  8A44FF            mov al,[si-0x1]
000001D7  2C2C              sub al,0x2c
000001D9  3C02              cmp al,0x2
000001DB  7316              jnc 0x1f3
000001DD  C645FFFE          mov byte [di-0x1],0xfe
000001E1  F606435201        test byte [0x5243],0x1
000001E6  7501              jnz 0x1e9
000001E8  C3                ret
000001E9  FEC0              inc al
000001EB  2401              and al,0x1
000001ED  042C              add al,0x2c
000001EF  8844FF            mov [si-0x1],al
000001F2  C3                ret
000001F3  8A44FF            mov al,[si-0x1]
000001F6  3C3E              cmp al,0x3e
000001F8  7201              jc 0x1fb
000001FA  C3                ret
000001FB  B333              mov bl,0x33
000001FD  3C0E              cmp al,0xe
000001FF  7441              jz 0x242
00000201  B336              mov bl,0x36
00000203  3C0D              cmp al,0xd
00000205  743B              jz 0x242
00000207  B339              mov bl,0x39
00000209  3C0F              cmp al,0xf
0000020B  7435              jz 0x242
0000020D  B33C              mov bl,0x3c
0000020F  3C0C              cmp al,0xc
00000211  742F              jz 0x242
00000213  B33D              mov bl,0x3d
00000215  3C10              cmp al,0x10
00000217  7429              jz 0x242
00000219  2C33              sub al,0x33
0000021B  7301              jnc 0x21e
0000021D  C3                ret
0000021E  B30E              mov bl,0xe
00000220  3C02              cmp al,0x2
00000222  741E              jz 0x242
00000224  B30D              mov bl,0xd
00000226  3C05              cmp al,0x5
00000228  7418              jz 0x242
0000022A  B30F              mov bl,0xf
0000022C  3C08              cmp al,0x8
0000022E  7412              jz 0x242
00000230  B30C              mov bl,0xc
00000232  3C09              cmp al,0x9
00000234  740C              jz 0x242
00000236  B310              mov bl,0x10
00000238  3C0A              cmp al,0xa
0000023A  7406              jz 0x242
0000023C  FEC0              inc al
0000023E  0433              add al,0x33
00000240  8AD8              mov bl,al
00000242  C645FFFE          mov byte [di-0x1],0xfe
00000246  F606435201        test byte [0x5243],0x1
0000024B  7501              jnz 0x24e
0000024D  C3                ret
0000024E  885CFF            mov [si-0x1],bl
00000251  C3                ret
00000252  8A44FF            mov al,[si-0x1]
00000255  2C25              sub al,0x25
00000257  3C04              cmp al,0x4
00000259  7201              jc 0x25c
0000025B  C3                ret
0000025C  C645FFFE          mov byte [di-0x1],0xfe
00000260  F606435201        test byte [0x5243],0x1
00000265  7501              jnz 0x268
00000267  C3                ret
00000268  FEC0              inc al
0000026A  2403              and al,0x3
0000026C  0425              add al,0x25
0000026E  8844FF            mov [si-0x1],al
00000271  C3                ret
00000272  06                push es
00000273  1E                push ds
00000274  57                push di
00000275  56                push si
00000276  53                push bx
00000277  8BFA              mov di,dx
00000279  0AC0              or al,al
0000027B  7503              jnz 0x280
0000027D  E93701            jmp 0x3b7
00000280  8AD8              mov bl,al
00000282  32FF              xor bh,bh
00000284  03DB              add bx,bx
00000286  F7876252FFFF      test word [bx+0x5262],0xffff
0000028C  7544              jnz 0x2d2
0000028E  FEC8              dec al
00000290  89BF6252          mov [bx+0x5262],di
00000294  B120              mov cl,0x20
00000296  F6E1              mul cl
00000298  053080            add ax,0x8030
0000029B  8BF0              mov si,ax
0000029D  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000002A2  B800B8            mov ax,0xb800
000002A5  8EC0              mov es,ax
000002A7  B90400            mov cx,0x4
000002AA  A5                movsw
000002AB  A5                movsw
000002AC  81C7FC1F          add di,0x1ffc
000002B0  81FF0080          cmp di,0x8000
000002B4  7204              jc 0x2ba
000002B6  81C7A080          add di,0x80a0
000002BA  A5                movsw
000002BB  A5                movsw
000002BC  81C7FC1F          add di,0x1ffc
000002C0  81FF0080          cmp di,0x8000
000002C4  7204              jc 0x2ca
000002C6  81C7A080          add di,0x80a0
000002CA  E2DE              loop 0x2aa
000002CC  5B                pop bx
000002CD  5E                pop si
000002CE  5F                pop di
000002CF  1F                pop ds
000002D0  07                pop es
000002D1  C3                ret
000002D2  8BB76252          mov si,[bx+0x5262]
000002D6  B800B8            mov ax,0xb800
000002D9  8EC0              mov es,ax
000002DB  8ED8              mov ds,ax
000002DD  A5                movsw
000002DE  A5                movsw
000002DF  81C7FC1F          add di,0x1ffc
000002E3  81FF0080          cmp di,0x8000
000002E7  7204              jc 0x2ed
000002E9  81C7A080          add di,0x80a0
000002ED  81C6FC1F          add si,0x1ffc
000002F1  81FE0080          cmp si,0x8000
000002F5  7204              jc 0x2fb
000002F7  81C6A080          add si,0x80a0
000002FB  A5                movsw
000002FC  A5                movsw
000002FD  81C7FC1F          add di,0x1ffc
00000301  81FF0080          cmp di,0x8000
00000305  7204              jc 0x30b
00000307  81C7A080          add di,0x80a0
0000030B  81C6FC1F          add si,0x1ffc
0000030F  81FE0080          cmp si,0x8000
00000313  7204              jc 0x319
00000315  81C6A080          add si,0x80a0
00000319  A5                movsw
0000031A  A5                movsw
0000031B  81C7FC1F          add di,0x1ffc
0000031F  81FF0080          cmp di,0x8000
00000323  7204              jc 0x329
00000325  81C7A080          add di,0x80a0
00000329  81C6FC1F          add si,0x1ffc
0000032D  81FE0080          cmp si,0x8000
00000331  7204              jc 0x337
00000333  81C6A080          add si,0x80a0
00000337  A5                movsw
00000338  A5                movsw
00000339  81C7FC1F          add di,0x1ffc
0000033D  81FF0080          cmp di,0x8000
00000341  7204              jc 0x347
00000343  81C7A080          add di,0x80a0
00000347  81C6FC1F          add si,0x1ffc
0000034B  81FE0080          cmp si,0x8000
0000034F  7204              jc 0x355
00000351  81C6A080          add si,0x80a0
00000355  A5                movsw
00000356  A5                movsw
00000357  81C7FC1F          add di,0x1ffc
0000035B  81FF0080          cmp di,0x8000
0000035F  7204              jc 0x365
00000361  81C7A080          add di,0x80a0
00000365  81C6FC1F          add si,0x1ffc
00000369  81FE0080          cmp si,0x8000
0000036D  7204              jc 0x373
0000036F  81C6A080          add si,0x80a0
00000373  A5                movsw
00000374  A5                movsw
00000375  81C7FC1F          add di,0x1ffc
00000379  81FF0080          cmp di,0x8000
0000037D  7204              jc 0x383
0000037F  81C7A080          add di,0x80a0
00000383  81C6FC1F          add si,0x1ffc
00000387  81FE0080          cmp si,0x8000
0000038B  7204              jc 0x391
0000038D  81C6A080          add si,0x80a0
00000391  A5                movsw
00000392  A5                movsw
00000393  81C7FC1F          add di,0x1ffc
00000397  81FF0080          cmp di,0x8000
0000039B  7204              jc 0x3a1
0000039D  81C7A080          add di,0x80a0
000003A1  81C6FC1F          add si,0x1ffc
000003A5  81FE0080          cmp si,0x8000
000003A9  7204              jc 0x3af
000003AB  81C6A080          add si,0x80a0
000003AF  A5                movsw
000003B0  A5                movsw
000003B1  5B                pop bx
000003B2  5E                pop si
000003B3  5F                pop di
000003B4  1F                pop ds
000003B5  07                pop es
000003B6  C3                ret
000003B7  B800B8            mov ax,0xb800
000003BA  8EC0              mov es,ax
000003BC  33C0              xor ax,ax
000003BE  AB                stosw
000003BF  AB                stosw
000003C0  81C7FC1F          add di,0x1ffc
000003C4  81FF0080          cmp di,0x8000
000003C8  7204              jc 0x3ce
000003CA  81C7A080          add di,0x80a0
000003CE  AB                stosw
000003CF  AB                stosw
000003D0  81C7FC1F          add di,0x1ffc
000003D4  81FF0080          cmp di,0x8000
000003D8  7204              jc 0x3de
000003DA  81C7A080          add di,0x80a0
000003DE  AB                stosw
000003DF  AB                stosw
000003E0  81C7FC1F          add di,0x1ffc
000003E4  81FF0080          cmp di,0x8000
000003E8  7204              jc 0x3ee
000003EA  81C7A080          add di,0x80a0
000003EE  AB                stosw
000003EF  AB                stosw
000003F0  81C7FC1F          add di,0x1ffc
000003F4  81FF0080          cmp di,0x8000
000003F8  7204              jc 0x3fe
000003FA  81C7A080          add di,0x80a0
000003FE  AB                stosw
000003FF  AB                stosw
00000400  81C7FC1F          add di,0x1ffc
00000404  81FF0080          cmp di,0x8000
00000408  7204              jc 0x40e
0000040A  81C7A080          add di,0x80a0
0000040E  AB                stosw
0000040F  AB                stosw
00000410  81C7FC1F          add di,0x1ffc
00000414  81FF0080          cmp di,0x8000
00000418  7204              jc 0x41e
0000041A  81C7A080          add di,0x80a0
0000041E  AB                stosw
0000041F  AB                stosw
00000420  81C7FC1F          add di,0x1ffc
00000424  81FF0080          cmp di,0x8000
00000428  7204              jc 0x42e
0000042A  81C7A080          add di,0x80a0
0000042E  AB                stosw
0000042F  AB                stosw
00000430  5B                pop bx
00000431  5E                pop si
00000432  5F                pop di
00000433  1F                pop ds
00000434  07                pop es
00000435  C3                ret
00000436  803E00E9FF        cmp byte [0xe900],0xff
0000043B  7501              jnz 0x43e
0000043D  C3                ret
0000043E  803E00E9FC        cmp byte [0xe900],0xfc
00000443  7501              jnz 0x446
00000445  C3                ret
00000446  56                push si
00000447  53                push bx
00000448  C60600E9FF        mov byte [0xe900],0xff
0000044D  8A0C              mov cl,[si]
0000044F  83C625            add si,0x25
00000452  E89C12            call 0x16f1
00000455  8A04              mov al,[si]
00000457  0AC0              or al,al
00000459  7903              jns 0x45e
0000045B  E8ED03            call 0x84b
0000045E  50                push ax
0000045F  8AC1              mov al,cl
00000461  E8EE03            call 0x852
00000464  83C603            add si,0x3
00000467  58                pop ax
00000468  8A24              mov ah,[si]
0000046A  BAF841            mov dx,0x41f8
0000046D  E83102            call 0x6a1
00000470  5B                pop bx
00000471  5E                pop si
00000472  C3                ret
00000473  56                push si
00000474  53                push bx
00000475  8BCB              mov cx,bx
00000477  8BFB              mov di,bx
00000479  81C700E9          add di,0xe900
0000047D  BB5552            mov bx,0x5255
00000480  B0FF              mov al,0xff
00000482  8605              xchg al,[di]
00000484  8807              mov [bx],al
00000486  C6470100          mov byte [bx+0x1],0x0
0000048A  C64501FF          mov byte [di+0x1],0xff
0000048E  8BD1              mov dx,cx
00000490  03D2              add dx,dx
00000492  03D2              add dx,dx
00000494  81C2F841          add dx,0x41f8
00000498  8A0C              mov cl,[si]
0000049A  83C624            add si,0x24
0000049D  E85112            call 0x16f1
000004A0  BB5952            mov bx,0x5259
000004A3  AD                lodsw
000004A4  8907              mov [bx],ax
000004A6  8AC1              mov al,cl
000004A8  E8A703            call 0x852
000004AB  46                inc si
000004AC  46                inc si
000004AD  BF5952            mov di,0x5259
000004B0  BD5552            mov bp,0x5255
000004B3  E8BD01            call 0x673
000004B6  5B                pop bx
000004B7  5E                pop si
000004B8  C3                ret
000004B9  803E1BE9FF        cmp byte [0xe91b],0xff
000004BE  7501              jnz 0x4c1
000004C0  C3                ret
000004C1  803E1BE9FC        cmp byte [0xe91b],0xfc
000004C6  7501              jnz 0x4c9
000004C8  C3                ret
000004C9  C6061BE9FF        mov byte [0xe91b],0xff
000004CE  8A0C              mov cl,[si]
000004D0  83C624            add si,0x24
000004D3  E81B12            call 0x16f1
000004D6  8A04              mov al,[si]
000004D8  0AC0              or al,al
000004DA  7903              jns 0x4df
000004DC  E86C03            call 0x84b
000004DF  50                push ax
000004E0  8AC1              mov al,cl
000004E2  E86D03            call 0x852
000004E5  83C602            add si,0x2
000004E8  58                pop ax
000004E9  8A24              mov ah,[si]
000004EB  BA6442            mov dx,0x4264
000004EE  E9B001            jmp 0x6a1
000004F1  56                push si
000004F2  57                push di
000004F3  53                push bx
000004F4  53                push bx
000004F5  BB5552            mov bx,0x5255
000004F8  B0FF              mov al,0xff
000004FA  8605              xchg al,[di]
000004FC  8807              mov [bx],al
000004FE  B0FF              mov al,0xff
00000500  86451C            xchg al,[di+0x1c]
00000503  884701            mov [bx+0x1],al
00000506  8A4CFF            mov cl,[si-0x1]
00000509  8A14              mov dl,[si]
0000050B  83C624            add si,0x24
0000050E  E8E011            call 0x16f1
00000511  8A34              mov dh,[si]
00000513  8AC1              mov al,cl
00000515  E83A03            call 0x852
00000518  46                inc si
00000519  8BDA              mov bx,dx
0000051B  5A                pop dx
0000051C  03D2              add dx,dx
0000051E  03D2              add dx,dx
00000520  03163152          add dx,[0x5231]
00000524  803E5552FF        cmp byte [0x5255],0xff
00000529  741B              jz 0x546
0000052B  803E5552FC        cmp byte [0x5255],0xfc
00000530  7414              jz 0x546
00000532  8A24              mov ah,[si]
00000534  8AC3              mov al,bl
00000536  53                push bx
00000537  56                push si
00000538  52                push dx
00000539  0AC0              or al,al
0000053B  7903              jns 0x540
0000053D  E80B03            call 0x84b
00000540  E85E01            call 0x6a1
00000543  5A                pop dx
00000544  5E                pop si
00000545  5B                pop bx
00000546  81C24001          add dx,0x140
0000054A  803E375201        cmp byte [0x5237],0x1
0000054F  741F              jz 0x570
00000551  803E5652FF        cmp byte [0x5256],0xff
00000556  7418              jz 0x570
00000558  803E5652FC        cmp byte [0x5256],0xfc
0000055D  7411              jz 0x570
0000055F  46                inc si
00000560  46                inc si
00000561  AC                lodsb
00000562  8AE0              mov ah,al
00000564  8AC7              mov al,bh
00000566  0AC0              or al,al
00000568  7903              jns 0x56d
0000056A  E8DE02            call 0x84b
0000056D  E83101            call 0x6a1
00000570  5B                pop bx
00000571  5F                pop di
00000572  5E                pop si
00000573  C3                ret
00000574  56                push si
00000575  57                push di
00000576  53                push bx
00000577  53                push bx
00000578  BB5552            mov bx,0x5255
0000057B  B8FEFF            mov ax,0xfffe
0000057E  8745FF            xchg ax,[di-0x1]
00000581  8907              mov [bx],ax
00000583  B8FFFF            mov ax,0xffff
00000586  87451B            xchg ax,[di+0x1b]
00000589  894702            mov [bx+0x2],ax
0000058C  8A4CFF            mov cl,[si-0x1]
0000058F  BB5952            mov bx,0x5259
00000592  8A04              mov al,[si]
00000594  884701            mov [bx+0x1],al
00000597  83C624            add si,0x24
0000059A  E85411            call 0x16f1
0000059D  8B44FF            mov ax,[si-0x1]
000005A0  894702            mov [bx+0x2],ax
000005A3  5A                pop dx
000005A4  88163852          mov [0x5238],dl
000005A8  A03752            mov al,[0x5237]
000005AB  F6D8              neg al
000005AD  0412              add al,0x12
000005AF  A23952            mov [0x5239],al
000005B2  03D2              add dx,dx
000005B4  03D2              add dx,dx
000005B6  03163152          add dx,[0x5231]
000005BA  8AC1              mov al,cl
000005BC  E89302            call 0x852
000005BF  BF5952            mov di,0x5259
000005C2  8805              mov [di],al
000005C4  BD5552            mov bp,0x5255
000005C7  E8A900            call 0x673
000005CA  803E375201        cmp byte [0x5237],0x1
000005CF  7418              jz 0x5e9
000005D1  81C23801          add dx,0x138
000005D5  E89B00            call 0x673
000005D8  F60634FFFF        test byte [0xff34],0xff
000005DD  740A              jz 0x5e9
000005DF  F6062FFFFF        test byte [0xff2f],0xff
000005E4  7403              jz 0x5e9
000005E6  E8BA02            call 0x8a3
000005E9  5B                pop bx
000005EA  5F                pop di
000005EB  5E                pop si
000005EC  C3                ret
000005ED  56                push si
000005EE  57                push di
000005EF  53                push bx
000005F0  53                push bx
000005F1  BB5552            mov bx,0x5255
000005F4  B0FE              mov al,0xfe
000005F6  8645FF            xchg al,[di-0x1]
000005F9  8807              mov [bx],al
000005FB  B0FF              mov al,0xff
000005FD  86451B            xchg al,[di+0x1b]
00000600  884701            mov [bx+0x1],al
00000603  8A4CFF            mov cl,[si-0x1]
00000606  83C624            add si,0x24
00000609  E8E510            call 0x16f1
0000060C  8A54FF            mov dl,[si-0x1]
0000060F  8AC1              mov al,cl
00000611  E83E02            call 0x852
00000614  8AD8              mov bl,al
00000616  8AFA              mov bh,dl
00000618  5A                pop dx
00000619  03D2              add dx,dx
0000061B  03D2              add dx,dx
0000061D  03163152          add dx,[0x5231]
00000621  803E5552FF        cmp byte [0x5255],0xff
00000626  741B              jz 0x643
00000628  803E5552FC        cmp byte [0x5255],0xfc
0000062D  7414              jz 0x643
0000062F  8A24              mov ah,[si]
00000631  8AC3              mov al,bl
00000633  53                push bx
00000634  56                push si
00000635  52                push dx
00000636  0AC0              or al,al
00000638  7903              jns 0x63d
0000063A  E80E02            call 0x84b
0000063D  E86100            call 0x6a1
00000640  5A                pop dx
00000641  5E                pop si
00000642  5B                pop bx
00000643  81C24001          add dx,0x140
00000647  803E375201        cmp byte [0x5237],0x1
0000064C  741F              jz 0x66d
0000064E  803E5652FF        cmp byte [0x5256],0xff
00000653  7418              jz 0x66d
00000655  803E5652FC        cmp byte [0x5256],0xfc
0000065A  7411              jz 0x66d
0000065C  46                inc si
0000065D  46                inc si
0000065E  AC                lodsb
0000065F  8AE0              mov ah,al
00000661  8AC7              mov al,bh
00000663  0AC0              or al,al
00000665  7903              jns 0x66a
00000667  E8E101            call 0x84b
0000066A  E83400            call 0x6a1
0000066D  5B                pop bx
0000066E  5F                pop di
0000066F  5E                pop si
00000670  E9A2FA            jmp 0x115
00000673  E80000            call 0x676
00000676  3E807E00FF        cmp byte [ds:bp+0x0],0xff
0000067B  741D              jz 0x69a
0000067D  3E807E00FC        cmp byte [ds:bp+0x0],0xfc
00000682  7416              jz 0x69a
00000684  8A24              mov ah,[si]
00000686  8A05              mov al,[di]
00000688  0AC0              or al,al
0000068A  7903              jns 0x68f
0000068C  E8BC01            call 0x84b
0000068F  55                push bp
00000690  56                push si
00000691  57                push di
00000692  52                push dx
00000693  E80B00            call 0x6a1
00000696  5A                pop dx
00000697  5F                pop di
00000698  5E                pop si
00000699  5D                pop bp
0000069A  46                inc si
0000069B  47                inc di
0000069C  45                inc bp
0000069D  83C204            add dx,0x4
000006A0  C3                ret
000006A1  06                push es
000006A2  1E                push ds
000006A3  8A1E3A52          mov bl,[0x523a]
000006A7  0AC0              or al,al
000006A9  7405              jz 0x6b0
000006AB  7803              js 0x6b0
000006AD  80CB80            or bl,0x80
000006B0  8AC8              mov cl,al
000006B2  8AC4              mov al,ah
000006B4  B520              mov ch,0x20
000006B6  F6E5              mul ch
000006B8  8BF0              mov si,ax
000006BA  81C60040          add si,0x4000
000006BE  D1E8              shr ax,0x0
000006C0  D1E8              shr ax,0x0
000006C2  8BE8              mov bp,ax
000006C4  81C500A0          add bp,0xa000
000006C8  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000006CD  8BFA              mov di,dx
000006CF  0E                push cs
000006D0  07                pop es
000006D1  8AEB              mov ch,bl
000006D3  80E37F            and bl,0x7f
000006D6  32FF              xor bh,bh
000006D8  03DB              add bx,bx
000006DA  2E8B87D251        mov ax,[cs:bx+0x51d2]
000006DF  2EA32F52          mov [cs:0x522f],ax
000006E3  8AC1              mov al,cl
000006E5  0AED              or ch,ch
000006E7  7818              js 0x701
000006E9  57                push di
000006EA  BF8256            mov di,0x5682
000006ED  E86D00            call 0x75d
000006F0  5F                pop di
000006F1  BE8256            mov si,0x5682
000006F4  0E                push cs
000006F5  1F                pop ds
000006F6  B800B8            mov ax,0xb800
000006F9  8EC0              mov es,ax
000006FB  E8CC00            call 0x7ca
000006FE  1F                pop ds
000006FF  07                pop es
00000700  C3                ret
00000701  57                push di
00000702  BF8256            mov di,0x5682
00000705  E81100            call 0x719
00000708  5F                pop di
00000709  BE8256            mov si,0x5682
0000070C  0E                push cs
0000070D  1F                pop ds
0000070E  B800B8            mov ax,0xb800
00000711  8EC0              mov es,ax
00000713  E8B400            call 0x7ca
00000716  1F                pop ds
00000717  07                pop es
00000718  C3                ret
00000719  55                push bp
0000071A  56                push si
0000071B  57                push di
0000071C  FEC9              dec cl
0000071E  B020              mov al,0x20
00000720  F6E1              mul cl
00000722  053080            add ax,0x8030
00000725  8BF0              mov si,ax
00000727  E81301            call 0x83d
0000072A  5F                pop di
0000072B  5E                pop si
0000072C  5D                pop bp
0000072D  EB00              jmp 0x72f
0000072F  B90800            mov cx,0x8
00000732  51                push cx
00000733  3E8A5600          mov dl,[ds:bp+0x0]
00000737  E8651A            call 0x219f
0000073A  262105            and [es:di],ax
0000073D  52                push dx
0000073E  AD                lodsw
0000073F  E82B00            call 0x76d
00000742  260905            or [es:di],ax
00000745  5A                pop dx
00000746  E8561A            call 0x219f
00000749  26214502          and [es:di+0x2],ax
0000074D  AD                lodsw
0000074E  E81C00            call 0x76d
00000751  26094502          or [es:di+0x2],ax
00000755  45                inc bp
00000756  83C704            add di,0x4
00000759  59                pop cx
0000075A  E2D6              loop 0x732
0000075C  C3                ret
0000075D  B90800            mov cx,0x8
00000760  AD                lodsw
00000761  E80900            call 0x76d
00000764  AB                stosw
00000765  AD                lodsw
00000766  E80400            call 0x76d
00000769  AB                stosw
0000076A  E2F4              loop 0x760
0000076C  C3                ret
0000076D  8BD8              mov bx,ax
0000076F  D0EF              shr bh,0x0
00000771  D0EF              shr bh,0x0
00000773  D0EF              shr bh,0x0
00000775  D0EF              shr bh,0x0
00000777  8ADF              mov bl,bh
00000779  32FF              xor bh,bh
0000077B  2E031E2F52        add bx,[cs:0x522f]
00000780  2E8A37            mov dh,[cs:bx]
00000783  02F6              add dh,dh
00000785  02F6              add dh,dh
00000787  02F6              add dh,dh
00000789  02F6              add dh,dh
0000078B  8BD8              mov bx,ax
0000078D  80E70F            and bh,0xf
00000790  8ADF              mov bl,bh
00000792  32FF              xor bh,bh
00000794  2E031E2F52        add bx,[cs:0x522f]
00000799  2E0A37            or dh,[cs:bx]
0000079C  8BD8              mov bx,ax
0000079E  D0EB              shr bl,0x0
000007A0  D0EB              shr bl,0x0
000007A2  D0EB              shr bl,0x0
000007A4  D0EB              shr bl,0x0
000007A6  32FF              xor bh,bh
000007A8  2E031E2F52        add bx,[cs:0x522f]
000007AD  2E8A17            mov dl,[cs:bx]
000007B0  02D2              add dl,dl
000007B2  02D2              add dl,dl
000007B4  02D2              add dl,dl
000007B6  02D2              add dl,dl
000007B8  8BD8              mov bx,ax
000007BA  80E30F            and bl,0xf
000007BD  32FF              xor bh,bh
000007BF  2E031E2F52        add bx,[cs:0x522f]
000007C4  2E0A17            or dl,[cs:bx]
000007C7  8BC2              mov ax,dx
000007C9  C3                ret
000007CA  A5                movsw
000007CB  A5                movsw
000007CC  81C7FC1F          add di,0x1ffc
000007D0  81FF0080          cmp di,0x8000
000007D4  7204              jc 0x7da
000007D6  81C7A080          add di,0x80a0
000007DA  A5                movsw
000007DB  A5                movsw
000007DC  81C7FC1F          add di,0x1ffc
000007E0  81FF0080          cmp di,0x8000
000007E4  7204              jc 0x7ea
000007E6  81C7A080          add di,0x80a0
000007EA  A5                movsw
000007EB  A5                movsw
000007EC  81C7FC1F          add di,0x1ffc
000007F0  81FF0080          cmp di,0x8000
000007F4  7204              jc 0x7fa
000007F6  81C7A080          add di,0x80a0
000007FA  A5                movsw
000007FB  A5                movsw
000007FC  81C7FC1F          add di,0x1ffc
00000800  81FF0080          cmp di,0x8000
00000804  7204              jc 0x80a
00000806  81C7A080          add di,0x80a0
0000080A  A5                movsw
0000080B  A5                movsw
0000080C  81C7FC1F          add di,0x1ffc
00000810  81FF0080          cmp di,0x8000
00000814  7204              jc 0x81a
00000816  81C7A080          add di,0x80a0
0000081A  A5                movsw
0000081B  A5                movsw
0000081C  81C7FC1F          add di,0x1ffc
00000820  81FF0080          cmp di,0x8000
00000824  7204              jc 0x82a
00000826  81C7A080          add di,0x80a0
0000082A  A5                movsw
0000082B  A5                movsw
0000082C  81C7FC1F          add di,0x1ffc
00000830  81FF0080          cmp di,0x8000
00000834  7204              jc 0x83a
00000836  81C7A080          add di,0x80a0
0000083A  A5                movsw
0000083B  A5                movsw
0000083C  C3                ret
0000083D  B91000            mov cx,0x10
00000840  F3A5              rep movsw
00000842  C3                ret
00000843  33C0              xor ax,ax
00000845  B91000            mov cx,0x10
00000848  F3AB              rep stosw
0000084A  C3                ret
0000084B  247F              and al,0x7f
0000084D  BB20ED            mov bx,0xed20
00000850  D7                xlatb
00000851  C3                ret
00000852  247F              and al,0x7f
00000854  8AD8              mov bl,al
00000856  32FF              xor bh,bh
00000858  8A8F20ED          mov cl,[bx-0x12e0]
0000085C  B510              mov ch,0x10
0000085E  F6E5              mul ch
00000860  030610C0          add ax,[0xc010]
00000864  8BE8              mov bp,ax
00000866  3E8A4606          mov al,[ds:bp+0x6]
0000086A  240F              and al,0xf
0000086C  B505              mov ch,0x5
0000086E  F6E5              mul ch
00000870  BE70A0            mov si,0xa070
00000873  3EF6460580        test byte [ds:bp+0x5],0x80
00000878  7503              jnz 0x87d
0000087A  BE30A0            mov si,0xa030
0000087D  3E8A5E04          mov bl,[ds:bp+0x4]
00000881  80E31F            and bl,0x1f
00000884  02DB              add bl,bl
00000886  32FF              xor bh,bh
00000888  0300              add ax,[bx+si]
0000088A  8BF0              mov si,ax
0000088C  AC                lodsb
0000088D  F60634FFFF        test byte [0xff34],0xff
00000892  7509              jnz 0x89d
00000894  3EF6460520        test byte [ds:bp+0x5],0x20
00000899  7402              jz 0x89d
0000089B  0403              add al,0x3
0000089D  A23A52            mov [0x523a],al
000008A0  8AC1              mov al,cl
000008A2  C3                ret
000008A3  803E395210        cmp byte [0x5239],0x10
000008A8  7201              jc 0x8ab
000008AA  C3                ret
000008AB  0E                push cs
000008AC  07                pop es
000008AD  2EFF161A01        call word near [cs:0x11a]
000008B2  240F              and al,0xf
000008B4  3C0E              cmp al,0xe
000008B6  7301              jnc 0x8b9
000008B8  C3                ret
000008B9  BFA0ED            mov di,0xeda0
000008BC  32C9              xor cl,cl
000008BE  803DFF            cmp byte [di],0xff
000008C1  7407              jz 0x8ca
000008C3  83C704            add di,0x4
000008C6  FEC1              inc cl
000008C8  EBF4              jmp 0x8be
000008CA  80F920            cmp cl,0x20
000008CD  7201              jc 0x8d0
000008CF  C3                ret
000008D0  2EFF161A01        call word near [cs:0x11a]
000008D5  2403              and al,0x3
000008D7  3C03              cmp al,0x3
000008D9  74F5              jz 0x8d0
000008DB  FEC8              dec al
000008DD  02063852          add al,[0x5238]
000008E1  3CFF              cmp al,0xff
000008E3  7502              jnz 0x8e7
000008E5  B004              mov al,0x4
000008E7  3C1B              cmp al,0x1b
000008E9  7202              jc 0x8ed
000008EB  B01A              mov al,0x1a
000008ED  AA                stosb
000008EE  2EFF161A01        call word near [cs:0x11a]
000008F3  2403              and al,0x3
000008F5  3C03              cmp al,0x3
000008F7  74F5              jz 0x8ee
000008F9  FEC8              dec al
000008FB  02063952          add al,[0x5239]
000008FF  3CFF              cmp al,0xff
00000901  7502              jnz 0x905
00000903  32C0              xor al,al
00000905  AA                stosb
00000906  B003              mov al,0x3
00000908  AA                stosb
00000909  2EFF161A01        call word near [cs:0x11a]
0000090E  2407              and al,0x7
00000910  BB1539            mov bx,0x3915
00000913  D7                xlatb
00000914  AA                stosb
00000915  B0FF              mov al,0xff
00000917  AA                stosb
00000918  C3                ret
00000919  EE                out dx,al
0000091A  44                inc sp
0000091B  55                push bp
0000091C  66CC              o32 int3
0000091E  DDEE              fucomp st6
00000920  CC                int3
00000921  0E                push cs
00000922  07                pop es
00000923  BFA0ED            mov di,0xeda0
00000926  8BF7              mov si,di
00000928  803CFF            cmp byte [si],0xff
0000092B  7504              jnz 0x931
0000092D  C605FF            mov byte [di],0xff
00000930  C3                ret
00000931  8A4401            mov al,[si+0x1]
00000934  B11C              mov cl,0x1c
00000936  F6E1              mul cl
00000938  8A0C              mov cl,[si]
0000093A  32ED              xor ch,ch
0000093C  03C1              add ax,cx
0000093E  57                push di
0000093F  0500E9            add ax,0xe900
00000942  8BF8              mov di,ax
00000944  B0FE              mov al,0xfe
00000946  AA                stosb
00000947  AA                stosb
00000948  83C71A            add di,0x1a
0000094B  AA                stosb
0000094C  AA                stosb
0000094D  5F                pop di
0000094E  8A6401            mov ah,[si+0x1]
00000951  32C0              xor al,al
00000953  8BD8              mov bx,ax
00000955  03C0              add ax,ax
00000957  D1EB              shr bx,0x0
00000959  03C3              add ax,bx
0000095B  D1E8              shr ax,0x0
0000095D  8A0C              mov cl,[si]
0000095F  32ED              xor ch,ch
00000961  03C9              add cx,cx
00000963  03C9              add cx,cx
00000965  03C1              add ax,cx
00000967  05F841            add ax,0x41f8
0000096A  56                push si
0000096B  57                push di
0000096C  06                push es
0000096D  50                push ax
0000096E  8A4403            mov al,[si+0x3]
00000971  8AE0              mov ah,al
00000973  A33B52            mov [0x523b],ax
00000976  8A5C02            mov bl,[si+0x2]
00000979  80E303            and bl,0x3
0000097C  02DB              add bl,bl
0000097E  32FF              xor bh,bh
00000980  8BB7E839          mov si,[bx+0x39e8]
00000984  5F                pop di
00000985  B800B8            mov ax,0xb800
00000988  8EC0              mov es,ax
0000098A  B91000            mov cx,0x10
0000098D  AD                lodsw
0000098E  86E0              xchg ah,al
00000990  E84008            call 0x11d3
00000993  F7D5              not bp
00000995  26212D            and [es:di],bp
00000998  260915            or [es:di],dx
0000099B  E83508            call 0x11d3
0000099E  F7D5              not bp
000009A0  26216D02          and [es:di+0x2],bp
000009A4  26095502          or [es:di+0x2],dx
000009A8  AD                lodsw
000009A9  86E0              xchg ah,al
000009AB  E82508            call 0x11d3
000009AE  F7D5              not bp
000009B0  26216D04          and [es:di+0x4],bp
000009B4  26095504          or [es:di+0x4],dx
000009B8  E81808            call 0x11d3
000009BB  F7D5              not bp
000009BD  26216D06          and [es:di+0x6],bp
000009C1  26095506          or [es:di+0x6],dx
000009C5  81C70020          add di,0x2000
000009C9  81FF0080          cmp di,0x8000
000009CD  7204              jc 0x9d3
000009CF  81C7A080          add di,0x80a0
000009D3  E2B8              loop 0x98d
000009D5  07                pop es
000009D6  5F                pop di
000009D7  5E                pop si
000009D8  FE4C02            dec byte [si+0x2]
000009DB  807C02FF          cmp byte [si+0x2],0xff
000009DF  7405              jz 0x9e6
000009E1  A5                movsw
000009E2  A5                movsw
000009E3  83EE04            sub si,0x4
000009E6  83C604            add si,0x4
000009E9  E93CFF            jmp 0x928
000009EC  B03A              mov al,0x3a
000009EE  703A              jo 0xa2a
000009F0  303A              xor [bp+si],bh
000009F2  F03900            lock cmp [bx+si],ax
000009F5  0000              add [bx+si],al
000009F7  0000              add [bx+si],al
000009F9  0000              add [bx+si],al
000009FB  0000              add [bx+si],al
000009FD  0000              add [bx+si],al
000009FF  0000              add [bx+si],al
00000A01  0000              add [bx+si],al
00000A03  0000              add [bx+si],al
00000A05  0F                db 0x0f
00000A06  F00000            lock add [bx+si],al
00000A09  3F                aas
00000A0A  FC                cld
00000A0B  0000              add [bx+si],al
00000A0D  FC                cld
00000A0E  3F                aas
00000A0F  0000              add [bx+si],al
00000A11  F0                lock
00000A12  0F0000            sldt word [bx+si]
00000A15  F0                lock
00000A16  0F0000            sldt word [bx+si]
00000A19  FC                cld
00000A1A  3F                aas
00000A1B  0000              add [bx+si],al
00000A1D  3F                aas
00000A1E  FC                cld
00000A1F  0000              add [bx+si],al
00000A21  0F                db 0x0f
00000A22  F00000            lock add [bx+si],al
00000A25  0000              add [bx+si],al
00000A27  0000              add [bx+si],al
00000A29  0000              add [bx+si],al
00000A2B  0000              add [bx+si],al
00000A2D  0000              add [bx+si],al
00000A2F  0000              add [bx+si],al
00000A31  0000              add [bx+si],al
00000A33  0000              add [bx+si],al
00000A35  0000              add [bx+si],al
00000A37  0000              add [bx+si],al
00000A39  0000              add [bx+si],al
00000A3B  0000              add [bx+si],al
00000A3D  0F                db 0x0f
00000A3E  F00000            lock add [bx+si],al
00000A41  3F                aas
00000A42  FC                cld
00000A43  0000              add [bx+si],al
00000A45  FF                db 0xff
00000A46  FF00              inc word [bx+si]
00000A48  00FC              add ah,bh
00000A4A  3F                aas
00000A4B  0003              add [bp+di],al
00000A4D  F00FC003          lock xadd [bp+di],al
00000A51  C003C0            rol byte [bp+di],byte 0xc0
00000A54  03C0              add ax,ax
00000A56  03C0              add ax,ax
00000A58  03F0              add si,ax
00000A5A  0FC000            xadd [bx+si],al
00000A5D  FC                cld
00000A5E  3F                aas
00000A5F  0000              add [bx+si],al
00000A61  FF                db 0xff
00000A62  FF00              inc word [bx+si]
00000A64  003F              add [bx],bh
00000A66  FC                cld
00000A67  0000              add [bx+si],al
00000A69  0F                db 0x0f
00000A6A  F00000            lock add [bx+si],al
00000A6D  0000              add [bx+si],al
00000A6F  0000              add [bx+si],al
00000A71  0000              add [bx+si],al
00000A73  0000              add [bx+si],al
00000A75  0F                db 0x0f
00000A76  F00000            lock add [bx+si],al
00000A79  FF                db 0xff
00000A7A  FF00              inc word [bx+si]
00000A7C  03FF              add di,di
00000A7E  FFC0              inc ax
00000A80  0FFFFF            ud0 di,di
00000A83  F0                lock
00000A84  3F                aas
00000A85  F0                lock
00000A86  0FFC3F            paddb mm7,[bx]
00000A89  C003FC            rol byte [bp+di],byte 0xfc
00000A8C  FF00              inc word [bx+si]
00000A8E  00FF              add bh,bh
00000A90  FF00              inc word [bx+si]
00000A92  00FF              add bh,bh
00000A94  FF00              inc word [bx+si]
00000A96  00FF              add bh,bh
00000A98  FF00              inc word [bx+si]
00000A9A  00FF              add bh,bh
00000A9C  3F                aas
00000A9D  C003FC            rol byte [bp+di],byte 0xfc
00000AA0  3F                aas
00000AA1  F0                lock
00000AA2  0FFC0F            paddb mm1,[bx]
00000AA5  FF                db 0xff
00000AA6  FFF0              push ax
00000AA8  03FF              add di,di
00000AAA  FFC0              inc ax
00000AAC  00FF              add bh,bh
00000AAE  FF00              inc word [bx+si]
00000AB0  000F              add [bx],cl
00000AB2  F00000            lock add [bx+si],al
00000AB5  3F                aas
00000AB6  FC                cld
00000AB7  0003              add [bp+di],al
00000AB9  FF                db 0xff
00000ABA  FFC0              inc ax
00000ABC  0FC003            xadd [bp+di],al
00000ABF  F0                lock
00000AC0  3F                aas
00000AC1  0000              add [bx+si],al
00000AC3  FC                cld
00000AC4  3C00              cmp al,0x0
00000AC6  003C              add [si],bh
00000AC8  FC                cld
00000AC9  0000              add [bx+si],al
00000ACB  3F                aas
00000ACC  F00000            lock add [bx+si],al
00000ACF  0F                db 0x0f
00000AD0  F00000            lock add [bx+si],al
00000AD3  0F                db 0x0f
00000AD4  F00000            lock add [bx+si],al
00000AD7  0F                db 0x0f
00000AD8  F00000            lock add [bx+si],al
00000ADB  0FFC00            paddb mm0,[bx+si]
00000ADE  003F              add [bx],bh
00000AE0  3C00              cmp al,0x0
00000AE2  003C              add [si],bh
00000AE4  3F                aas
00000AE5  0000              add [bx+si],al
00000AE7  FC                cld
00000AE8  0FC003            xadd [bp+di],al
00000AEB  F0                lock
00000AEC  03FF              add di,di
00000AEE  FFC0              inc ax
00000AF0  003F              add [bx],bh
00000AF2  FC                cld
00000AF3  00BF5952          add [bx+0x5259],bh
00000AF7  0E                push cs
00000AF8  07                pop es
00000AF9  33C0              xor ax,ax
00000AFB  AB                stosw
00000AFC  AB                stosw
00000AFD  AB                stosw
00000AFE  AB                stosw
00000AFF  AA                stosb
00000B00  BF4552            mov di,0x5245
00000B03  B90800            mov cx,0x8
00000B06  F3AB              rep stosw
00000B08  EB3C              jmp 0xb46
00000B0A  E80E04            call 0xf1b
00000B0D  BF4552            mov di,0x5245
00000B10  8A1635FF          mov dl,[0xff35]
00000B14  FECA              dec dl
00000B16  B90400            mov cx,0x4
00000B19  51                push cx
00000B1A  80E23F            and dl,0x3f
00000B1D  B024              mov al,0x24
00000B1F  F6E2              mul dl
00000B21  8BD8              mov bx,ax
00000B23  81C300E0          add bx,0xe000
00000B27  A08300            mov al,[0x83]
00000B2A  0403              add al,0x3
00000B2C  32E4              xor ah,ah
00000B2E  03D8              add bx,ax
00000B30  B90400            mov cx,0x4
00000B33  8A07              mov al,[bx]
00000B35  0AC0              or al,al
00000B37  7802              js 0xb3b
00000B39  32C0              xor al,al
00000B3B  8805              mov [di],al
00000B3D  43                inc bx
00000B3E  47                inc di
00000B3F  E2F2              loop 0xb33
00000B41  FEC2              inc dl
00000B43  59                pop cx
00000B44  E2D3              loop 0xb19
00000B46  A08400            mov al,[0x84]
00000B49  32E4              xor ah,ah
00000B4B  B94001            mov cx,0x140
00000B4E  F7E1              mul cx
00000B50  8A0E8300          mov cl,[0x83]
00000B54  32ED              xor ch,ch
00000B56  03C9              add cx,cx
00000B58  03C9              add cx,cx
00000B5A  03C1              add ax,cx
00000B5C  05F841            add ax,0x41f8
00000B5F  A33352            mov [0x5233],ax
00000B62  C606385200        mov byte [0x5238],0x0
00000B67  BE5952            mov si,0x5259
00000B6A  BF4552            mov di,0x5245
00000B6D  B90300            mov cx,0x3
00000B70  51                push cx
00000B71  B90300            mov cx,0x3
00000B74  51                push cx
00000B75  B8D33B            mov ax,0x3bd3
00000B78  50                push ax
00000B79  8A05              mov al,[di]
00000B7B  0A4501            or al,[di+0x1]
00000B7E  0A4504            or al,[di+0x4]
00000B81  0A4505            or al,[di+0x5]
00000B84  7503              jnz 0xb89
00000B86  E9FA02            jmp 0xe83
00000B89  F605FF            test byte [di],0xff
00000B8C  740F              jz 0xb9d
00000B8E  8A05              mov al,[di]
00000B90  56                push si
00000B91  E8BEFC            call 0x852
00000B94  46                inc si
00000B95  46                inc si
00000B96  46                inc si
00000B97  8A04              mov al,[si]
00000B99  5E                pop si
00000B9A  E91E03            jmp 0xebb
00000B9D  F64501FF          test byte [di+0x1],0xff
00000BA1  740F              jz 0xbb2
00000BA3  8A4501            mov al,[di+0x1]
00000BA6  56                push si
00000BA7  E8A8FC            call 0x852
00000BAA  46                inc si
00000BAB  46                inc si
00000BAC  8A04              mov al,[si]
00000BAE  5E                pop si
00000BAF  E90903            jmp 0xebb
00000BB2  F64504FF          test byte [di+0x4],0xff
00000BB6  740E              jz 0xbc6
00000BB8  8A4504            mov al,[di+0x4]
00000BBB  56                push si
00000BBC  E893FC            call 0x852
00000BBF  46                inc si
00000BC0  8A04              mov al,[si]
00000BC2  5E                pop si
00000BC3  E9F502            jmp 0xebb
00000BC6  8A4505            mov al,[di+0x5]
00000BC9  56                push si
00000BCA  E885FC            call 0x852
00000BCD  8A0C              mov cl,[si]
00000BCF  5E                pop si
00000BD0  8804              mov [si],al
00000BD2  8AC1              mov al,cl
00000BD4  E9E402            jmp 0xebb
00000BD7  FE063852          inc byte [0x5238]
00000BDB  47                inc di
00000BDC  46                inc si
00000BDD  59                pop cx
00000BDE  E294              loop 0xb74
00000BE0  59                pop cx
00000BE1  47                inc di
00000BE2  E28C              loop 0xb70
00000BE4  8A1E36FF          mov bl,[0xff36]
00000BE8  80E303            and bl,0x3
00000BEB  32FF              xor bh,bh
00000BED  03DB              add bx,bx
00000BEF  2E8B87D251        mov ax,[cs:bx+0x51d2]
00000BF4  2EA32F52          mov [cs:0x522f],ax
00000BF8  2E8E062CFF        mov es,word [cs:0xff2c]
00000BFD  A0E800            mov al,[0xe8]
00000C00  0A0639FF          or al,[0xff39]
00000C04  0A063AFF          or al,[0xff3a]
00000C08  7403              jz 0xc0d
00000C0A  E9C200            jmp 0xccf
00000C0D  B1FF              mov cl,0xff
00000C0F  BE1761            mov si,0x6117
00000C12  F606C20001        test byte [0xc2],0x1
00000C17  7405              jz 0xc1e
00000C19  32C9              xor cl,cl
00000C1B  BEB961            mov si,0x61b9
00000C1E  F60640FFFF        test byte [0xff40],0xff
00000C23  7442              jz 0xc67
00000C25  FEC1              inc cl
00000C27  751A              jnz 0xc43
00000C29  A03FFF            mov al,[0xff3f]
00000C2C  D0E8              shr al,0x0
00000C2E  B109              mov cl,0x9
00000C30  F6E1              mul cl
00000C32  50                push ax
00000C33  E83B02            call 0xe71
00000C36  B124              mov cl,0x24
00000C38  F6E1              mul cl
00000C3A  5E                pop si
00000C3B  03F0              add si,ax
00000C3D  81C6C762          add si,0x62c7
00000C41  EB6D              jmp 0xcb0
00000C43  A03FFF            mov al,[0xff3f]
00000C46  D0E8              shr al,0x0
00000C48  B109              mov cl,0x9
00000C4A  F6E1              mul cl
00000C4C  052400            add ax,0x24
00000C4F  8A1641FF          mov dl,[0xff41]
00000C53  FECA              dec dl
00000C55  7505              jnz 0xc5c
00000C57  052400            add ax,0x24
00000C5A  EB07              jmp 0xc63
00000C5C  FECA              dec dl
00000C5E  7503              jnz 0xc63
00000C60  B86300            mov ax,0x63
00000C63  03F0              add si,ax
00000C65  EB49              jmp 0xcb0
00000C67  E80702            call 0xe71
00000C6A  0AC0              or al,al
00000C6C  7424              jz 0xc92
00000C6E  FEC8              dec al
00000C70  8AC8              mov cl,al
00000C72  F606C20001        test byte [0xc2],0x1
00000C77  7519              jnz 0xc92
00000C79  B86C00            mov ax,0x6c
00000C7C  8A1638FF          mov dl,[0xff38]
00000C80  80E209            and dl,0x9
00000C83  32F6              xor dh,dh
00000C85  03C2              add ax,dx
00000C87  0AC9              or cl,cl
00000C89  7403              jz 0xc8e
00000C8B  051B00            add ax,0x1b
00000C8E  03F0              add si,ax
00000C90  EB1E              jmp 0xcb0
00000C92  F60638FFFF        test byte [0xff38],0xff
00000C97  7536              jnz 0xccf
00000C99  A0E700            mov al,[0xe7]
00000C9C  3C80              cmp al,0x80
00000C9E  742F              jz 0xccf
00000CA0  0402              add al,0x2
00000CA2  2403              and al,0x3
00000CA4  A801              test al,0x1
00000CA6  7527              jnz 0xccf
00000CA8  B109              mov cl,0x9
00000CAA  F6E1              mul cl
00000CAC  03F0              add si,ax
00000CAE  EB14              jmp 0xcc4
00000CB0  F60638FFFF        test byte [0xff38],0xff
00000CB5  740D              jz 0xcc4
00000CB7  B90600            mov cx,0x6
00000CBA  C606385203        mov byte [0x5238],0x3
00000CBF  E86901            call 0xe2b
00000CC2  EB0B              jmp 0xccf
00000CC4  B90900            mov cx,0x9
00000CC7  C606385200        mov byte [0x5238],0x0
00000CCC  E85C01            call 0xe2b
00000CCF  BE0E61            mov si,0x610e
00000CD2  F6063AFFFF        test byte [0xff3a],0xff
00000CD7  7568              jnz 0xd41
00000CD9  BEEA60            mov si,0x60ea
00000CDC  F60639FFFF        test byte [0xff39],0xff
00000CE1  7553              jnz 0xd36
00000CE3  BE7560            mov si,0x6075
00000CE6  F606C20001        test byte [0xc2],0x1
00000CEB  7503              jnz 0xcf0
00000CED  BE0060            mov si,0x6000
00000CF0  F606E800FF        test byte [0xe8],0xff
00000CF5  7405              jz 0xcfc
00000CF7  83C65A            add si,0x5a
00000CFA  EB3A              jmp 0xd36
00000CFC  B82D00            mov ax,0x2d
00000CFF  F60638FFFF        test byte [0xff38],0xff
00000D04  7539              jnz 0xd3f
00000D06  B83F00            mov ax,0x3f
00000D09  F6063DFF80        test byte [0xff3d],0x80
00000D0E  752F              jnz 0xd3f
00000D10  8A0E42FF          mov cl,[0xff42]
00000D14  B84800            mov ax,0x48
00000D17  FEC9              dec cl
00000D19  7424              jz 0xd3f
00000D1B  B85100            mov ax,0x51
00000D1E  FEC9              dec cl
00000D20  741D              jz 0xd3f
00000D22  B83600            mov ax,0x36
00000D25  803E3DFF7F        cmp byte [0xff3d],0x7f
00000D2A  7413              jz 0xd3f
00000D2C  B82400            mov ax,0x24
00000D2F  803EE70080        cmp byte [0xe7],0x80
00000D34  7409              jz 0xd3f
00000D36  A0E700            mov al,[0xe7]
00000D39  2403              and al,0x3
00000D3B  B109              mov cl,0x9
00000D3D  F6E1              mul cl
00000D3F  03F0              add si,ax
00000D41  B90900            mov cx,0x9
00000D44  C606385200        mov byte [0x5238],0x0
00000D49  E8DF00            call 0xe2b
00000D4C  F606E800FF        test byte [0xe8],0xff
00000D51  7401              jz 0xd54
00000D53  C3                ret
00000D54  B1FF              mov cl,0xff
00000D56  BEB961            mov si,0x61b9
00000D59  F606C20001        test byte [0xc2],0x1
00000D5E  7505              jnz 0xd65
00000D60  32C9              xor cl,cl
00000D62  BE1761            mov si,0x6117
00000D65  A039FF            mov al,[0xff39]
00000D68  0A063AFF          or al,[0xff3a]
00000D6C  7417              jz 0xd85
00000D6E  E80001            call 0xe71
00000D71  0AC0              or al,al
00000D73  7501              jnz 0xd76
00000D75  C3                ret
00000D76  FEC8              dec al
00000D78  D0E8              shr al,0x0
00000D7A  1AC0              sbb al,al
00000D7C  241B              and al,0x1b
00000D7E  047E              add al,0x7e
00000D80  32E4              xor ah,ah
00000D82  E98900            jmp 0xe0e
00000D85  F60640FFFF        test byte [0xff40],0xff
00000D8A  7442              jz 0xdce
00000D8C  FEC1              inc cl
00000D8E  751A              jnz 0xdaa
00000D90  A03FFF            mov al,[0xff3f]
00000D93  D0E8              shr al,0x0
00000D95  B109              mov cl,0x9
00000D97  F6E1              mul cl
00000D99  50                push ax
00000D9A  E8D400            call 0xe71
00000D9D  B124              mov cl,0x24
00000D9F  F6E1              mul cl
00000DA1  5E                pop si
00000DA2  03F0              add si,ax
00000DA4  81C65B62          add si,0x625b
00000DA8  EB66              jmp 0xe10
00000DAA  A03FFF            mov al,[0xff3f]
00000DAD  D0E8              shr al,0x0
00000DAF  B109              mov cl,0x9
00000DB1  F6E1              mul cl
00000DB3  052400            add ax,0x24
00000DB6  8A1641FF          mov dl,[0xff41]
00000DBA  FECA              dec dl
00000DBC  7505              jnz 0xdc3
00000DBE  052400            add ax,0x24
00000DC1  EB07              jmp 0xdca
00000DC3  FECA              dec dl
00000DC5  7503              jnz 0xdca
00000DC7  B86300            mov ax,0x63
00000DCA  03F0              add si,ax
00000DCC  EB42              jmp 0xe10
00000DCE  F606C20001        test byte [0xc2],0x1
00000DD3  741F              jz 0xdf4
00000DD5  E89900            call 0xe71
00000DD8  0AC0              or al,al
00000DDA  7418              jz 0xdf4
00000DDC  FEC8              dec al
00000DDE  8AC8              mov cl,al
00000DE0  A038FF            mov al,[0xff38]
00000DE3  2409              and al,0x9
00000DE5  046C              add al,0x6c
00000DE7  32E4              xor ah,ah
00000DE9  0AC9              or cl,cl
00000DEB  7403              jz 0xdf0
00000DED  051B00            add ax,0x1b
00000DF0  03F0              add si,ax
00000DF2  EB1C              jmp 0xe10
00000DF4  B81B00            mov ax,0x1b
00000DF7  F60638FFFF        test byte [0xff38],0xff
00000DFC  7510              jnz 0xe0e
00000DFE  8A0EE700          mov cl,[0xe7]
00000E02  80F980            cmp cl,0x80
00000E05  7407              jz 0xe0e
00000E07  80E103            and cl,0x3
00000E0A  B009              mov al,0x9
00000E0C  F6E1              mul cl
00000E0E  03F0              add si,ax
00000E10  F60638FFFF        test byte [0xff38],0xff
00000E15  740A              jz 0xe21
00000E17  B90600            mov cx,0x6
00000E1A  C606385203        mov byte [0x5238],0x3
00000E1F  EB0A              jmp 0xe2b
00000E21  B90900            mov cx,0x9
00000E24  C606385200        mov byte [0x5238],0x0
00000E29  EB00              jmp 0xe2b
00000E2B  51                push cx
00000E2C  268A04            mov al,[es:si]
00000E2F  0AC0              or al,al
00000E31  7435              jz 0xe68
00000E33  06                push es
00000E34  1E                push ds
00000E35  56                push si
00000E36  57                push di
00000E37  B520              mov ch,0x20
00000E39  F6E5              mul ch
00000E3B  8BF0              mov si,ax
00000E3D  81C63363          add si,0x6333
00000E41  D1E8              shr ax,0x0
00000E43  D1E8              shr ax,0x0
00000E45  8BE8              mov bp,ax
00000E47  81C500D0          add bp,0xd000
00000E4B  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000E50  8BFA              mov di,dx
00000E52  0E                push cs
00000E53  07                pop es
00000E54  2EA03852          mov al,[cs:0x5238]
00000E58  B120              mov cl,0x20
00000E5A  F6E1              mul cl
00000E5C  056255            add ax,0x5562
00000E5F  8BF8              mov di,ax
00000E61  E8CBF8            call 0x72f
00000E64  5F                pop di
00000E65  5E                pop si
00000E66  1F                pop ds
00000E67  07                pop es
00000E68  46                inc si
00000E69  FE063852          inc byte [0x5238]
00000E6D  59                pop cx
00000E6E  E2BB              loop 0xe2b
00000E70  C3                ret
00000E71  A09300            mov al,[0x93]
00000E74  0AC0              or al,al
00000E76  7501              jnz 0xe79
00000E78  C3                ret
00000E79  3C04              cmp al,0x4
00000E7B  B001              mov al,0x1
00000E7D  7301              jnc 0xe80
00000E7F  C3                ret
00000E80  B002              mov al,0x2
00000E82  C3                ret
00000E83  8A04              mov al,[si]
00000E85  1E                push ds
00000E86  56                push si
00000E87  57                push di
00000E88  50                push ax
00000E89  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000E8E  0E                push cs
00000E8F  07                pop es
00000E90  2EA03852          mov al,[cs:0x5238]
00000E94  B120              mov cl,0x20
00000E96  F6E1              mul cl
00000E98  056255            add ax,0x5562
00000E9B  8BF8              mov di,ax
00000E9D  58                pop ax
00000E9E  0AC0              or al,al
00000EA0  7412              jz 0xeb4
00000EA2  FEC8              dec al
00000EA4  B120              mov cl,0x20
00000EA6  F6E1              mul cl
00000EA8  053080            add ax,0x8030
00000EAB  8BF0              mov si,ax
00000EAD  E88DF9            call 0x83d
00000EB0  5F                pop di
00000EB1  5E                pop si
00000EB2  1F                pop ds
00000EB3  C3                ret
00000EB4  E88CF9            call 0x843
00000EB7  5F                pop di
00000EB8  5E                pop si
00000EB9  1F                pop ds
00000EBA  C3                ret
00000EBB  1E                push ds
00000EBC  56                push si
00000EBD  57                push di
00000EBE  8AC8              mov cl,al
00000EC0  8A04              mov al,[si]
00000EC2  0AC0              or al,al
00000EC4  7903              jns 0xec9
00000EC6  E882F9            call 0x84b
00000EC9  50                push ax
00000ECA  8A1E3A52          mov bl,[0x523a]
00000ECE  32FF              xor bh,bh
00000ED0  03DB              add bx,bx
00000ED2  2E8B97D251        mov dx,[cs:bx+0x51d2]
00000ED7  2E89162F52        mov [cs:0x522f],dx
00000EDC  8AC1              mov al,cl
00000EDE  B520              mov ch,0x20
00000EE0  F6E5              mul ch
00000EE2  8BF0              mov si,ax
00000EE4  81C60040          add si,0x4000
00000EE8  D1E8              shr ax,0x0
00000EEA  D1E8              shr ax,0x0
00000EEC  8BE8              mov bp,ax
00000EEE  81C500A0          add bp,0xa000
00000EF2  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000EF7  0E                push cs
00000EF8  07                pop es
00000EF9  2EA03852          mov al,[cs:0x5238]
00000EFD  B120              mov cl,0x20
00000EFF  F6E1              mul cl
00000F01  056255            add ax,0x5562
00000F04  8BF8              mov di,ax
00000F06  58                pop ax
00000F07  0AC0              or al,al
00000F09  7409              jz 0xf14
00000F0B  8AC8              mov cl,al
00000F0D  E809F8            call 0x719
00000F10  5F                pop di
00000F11  5E                pop si
00000F12  1F                pop ds
00000F13  C3                ret
00000F14  E846F8            call 0x75d
00000F17  5F                pop di
00000F18  5E                pop si
00000F19  1F                pop ds
00000F1A  C3                ret
00000F1B  8A0E8400          mov cl,[0x84]
00000F1F  B024              mov al,0x24
00000F21  F6E1              mul cl
00000F23  8A0E8300          mov cl,[0x83]
00000F27  80C104            add cl,0x4
00000F2A  32ED              xor ch,ch
00000F2C  03C1              add ax,cx
00000F2E  030631FF          add ax,[0xff31]
00000F32  8BF0              mov si,ax
00000F34  E8BA07            call 0x16f1
00000F37  BF5952            mov di,0x5259
00000F3A  0E                push cs
00000F3B  07                pop es
00000F3C  B90300            mov cx,0x3
00000F3F  A5                movsw
00000F40  A4                movsb
00000F41  83C621            add si,0x21
00000F44  E8AA07            call 0x16f1
00000F47  E2F6              loop 0xf3f
00000F49  C3                ret
00000F4A  A03752            mov al,[0x5237]
00000F4D  F6D8              neg al
00000F4F  0412              add al,0x12
00000F51  8AC8              mov cl,al
00000F53  F60643FFFF        test byte [0xff43],0xff
00000F58  750D              jnz 0xf67
00000F5A  A08400            mov al,[0x84]
00000F5D  2C02              sub al,0x2
00000F5F  3AC1              cmp al,cl
00000F61  7503              jnz 0xf66
00000F63  E81803            call 0x127e
00000F66  C3                ret
00000F67  A08400            mov al,[0x84]
00000F6A  2C05              sub al,0x5
00000F6C  3AC8              cmp cl,al
00000F6E  7301              jnc 0xf71
00000F70  C3                ret
00000F71  7506              jnz 0xf79
00000F73  E80001            call 0x1076
00000F76  E90503            jmp 0x127e
00000F79  040A              add al,0xa
00000F7B  3AC1              cmp al,cl
00000F7D  7401              jz 0xf80
00000F7F  C3                ret
00000F80  E9AA01            jmp 0x112d
00000F83  F60643FFFF        test byte [0xff43],0xff
00000F88  7501              jnz 0xf8b
00000F8A  C3                ret
00000F8B  06                push es
00000F8C  56                push si
00000F8D  57                push di
00000F8E  53                push bx
00000F8F  2E8E062CFF        mov es,word [cs:0xff2c]
00000F94  FE0646FF          inc byte [0xff46]
00000F98  A045FF            mov al,[0xff45]
00000F9B  0AC0              or al,al
00000F9D  745C              jz 0xffb
00000F9F  FEC8              dec al
00000FA1  742D              jz 0xfd0
00000FA3  803E46FF05        cmp byte [0xff46],0x5
00000FA8  7203              jc 0xfad
00000FAA  E9BA00            jmp 0x1067
00000FAD  32C9              xor cl,cl
00000FAF  BE6EB1            mov si,0xb16e
00000FB2  C706415201FF      mov word [0x5241],0xff01
00000FB8  BA3C01            mov dx,0x13c
00000FBB  F606C20001        test byte [0xc2],0x1
00000FC0  7579              jnz 0x103b
00000FC2  BEBEB0            mov si,0xb0be
00000FC5  C70641520100      mov word [0x5241],0x1
00000FCB  BA4001            mov dx,0x140
00000FCE  EB6B              jmp 0x103b
00000FD0  803E46FF05        cmp byte [0xff46],0x5
00000FD5  7203              jc 0xfda
00000FD7  E98D00            jmp 0x1067
00000FDA  8A1E46FF          mov bl,[0xff46]
00000FDE  FECB              dec bl
00000FE0  32FF              xor bh,bh
00000FE2  8ACB              mov cl,bl
00000FE4  03DB              add bx,bx
00000FE6  BF9EB1            mov di,0xb19e
00000FE9  BE2EB1            mov si,0xb12e
00000FEC  F606C20001        test byte [0xc2],0x1
00000FF1  752E              jnz 0x1021
00000FF3  BF8AB1            mov di,0xb18a
00000FF6  BE7EB0            mov si,0xb07e
00000FF9  EB26              jmp 0x1021
00000FFB  803E46FF07        cmp byte [0xff46],0x7
00001000  7365              jnc 0x1067
00001002  8A1E46FF          mov bl,[0xff46]
00001006  FECB              dec bl
00001008  32FF              xor bh,bh
0000100A  8ACB              mov cl,bl
0000100C  03DB              add bx,bx
0000100E  BF92B1            mov di,0xb192
00001011  BECEB0            mov si,0xb0ce
00001014  F606C20001        test byte [0xc2],0x1
00001019  7506              jnz 0x1021
0000101B  BF7EB1            mov di,0xb17e
0000101E  BE1EB0            mov si,0xb01e
00001021  268B19            mov bx,[es:bx+di]
00001024  891E4152          mov [0x5241],bx
00001028  8AC3              mov al,bl
0000102A  98                cbw
0000102B  BA4001            mov dx,0x140
0000102E  F7EA              imul dx
00001030  8BD0              mov dx,ax
00001032  8AC7              mov al,bh
00001034  98                cbw
00001035  03C0              add ax,ax
00001037  03C0              add ax,ax
00001039  03D0              add dx,ax
0000103B  8B3E3352          mov di,[0x5233]
0000103F  03FA              add di,dx
00001041  F60638FFFF        test byte [0xff38],0xff
00001046  7404              jz 0x104c
00001048  81C74001          add di,0x140
0000104C  893E3D52          mov [0x523d],di
00001050  32ED              xor ch,ch
00001052  03C9              add cx,cx
00001054  03C9              add cx,cx
00001056  03C9              add cx,cx
00001058  03C9              add cx,cx
0000105A  03F1              add si,cx
0000105C  89363F52          mov [0x523f],si
00001060  5B                pop bx
00001061  5F                pop di
00001062  5E                pop si
00001063  07                pop es
00001064  E9C600            jmp 0x112d
00001067  C60643FF00        mov byte [0xff43],0x0
0000106C  C60646FF00        mov byte [0xff46],0x0
00001071  5B                pop bx
00001072  5F                pop di
00001073  5E                pop si
00001074  07                pop es
00001075  C3                ret
00001076  F60644FFFF        test byte [0xff44],0xff
0000107B  7501              jnz 0x107e
0000107D  C3                ret
0000107E  06                push es
0000107F  57                push di
00001080  56                push si
00001081  53                push bx
00001082  E83600            call 0x10bb
00001085  5B                pop bx
00001086  5E                pop si
00001087  5F                pop di
00001088  07                pop es
00001089  C60644FF00        mov byte [0xff44],0x0
0000108E  C3                ret
0000108F  1E                push ds
00001090  0E                push cs
00001091  07                pop es
00001092  2E8B363D52        mov si,[cs:0x523d]
00001097  B800B8            mov ax,0xb800
0000109A  8ED8              mov ds,ax
0000109C  BF6253            mov di,0x5362
0000109F  B92000            mov cx,0x20
000010A2  51                push cx
000010A3  B90800            mov cx,0x8
000010A6  F3A5              rep movsw
000010A8  81C6F01F          add si,0x1ff0
000010AC  81FE0080          cmp si,0x8000
000010B0  7204              jc 0x10b6
000010B2  81C6A080          add si,0x80a0
000010B6  59                pop cx
000010B7  E2E9              loop 0x10a2
000010B9  1F                pop ds
000010BA  C3                ret
000010BB  2E8B3E3D52        mov di,[cs:0x523d]
000010C0  B800B8            mov ax,0xb800
000010C3  8EC0              mov es,ax
000010C5  BE6253            mov si,0x5362
000010C8  B92000            mov cx,0x20
000010CB  51                push cx
000010CC  B90800            mov cx,0x8
000010CF  F3A5              rep movsw
000010D1  81C7F01F          add di,0x1ff0
000010D5  81FF0080          cmp di,0x8000
000010D9  7204              jc 0x10df
000010DB  81C7A080          add di,0x80a0
000010DF  59                pop cx
000010E0  E2E9              loop 0x10cb
000010E2  C3                ret
000010E3  A08400            mov al,[0x84]
000010E6  02064152          add al,[0x5241]
000010EA  243F              and al,0x3f
000010EC  B124              mov cl,0x24
000010EE  F6E1              mul cl
000010F0  8A0E8300          mov cl,[0x83]
000010F4  020E4252          add cl,[0x5242]
000010F8  80C104            add cl,0x4
000010FB  32ED              xor ch,ch
000010FD  03C1              add ax,cx
000010FF  8BF0              mov si,ax
00001101  033631FF          add si,[0xff31]
00001105  E8E905            call 0x16f1
00001108  B90400            mov cx,0x4
0000110B  51                push cx
0000110C  B90400            mov cx,0x4
0000110F  51                push cx
00001110  8A1C              mov bl,[si]
00001112  46                inc si
00001113  80E37F            and bl,0x7f
00001116  32FF              xor bh,bh
00001118  03DB              add bx,bx
0000111A  C78762520000      mov word [bx+0x5262],0x0
00001120  59                pop cx
00001121  E2EC              loop 0x110f
00001123  83C620            add si,0x20
00001126  E8C805            call 0x16f1
00001129  59                pop cx
0000112A  E2DF              loop 0x110b
0000112C  C3                ret
0000112D  F60643FFFF        test byte [0xff43],0xff
00001132  7501              jnz 0x1135
00001134  C3                ret
00001135  C60644FFFF        mov byte [0xff44],0xff
0000113A  06                push es
0000113B  1E                push ds
0000113C  57                push di
0000113D  56                push si
0000113E  53                push bx
0000113F  E8A1FF            call 0x10e3
00001142  E84AFF            call 0x108f
00001145  33DB              xor bx,bx
00001147  2E8A1E9200        mov bl,[cs:0x92]
0000114C  FECB              dec bl
0000114E  03DB              add bx,bx
00001150  2E8B876442        mov ax,[cs:bx+0x4264]
00001155  2EA33B52          mov [cs:0x523b],ax
00001159  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000115E  B800B8            mov ax,0xb800
00001161  8EC0              mov es,ax
00001163  2E8B3E3D52        mov di,[cs:0x523d]
00001168  2E8B363F52        mov si,[cs:0x523f]
0000116D  B90400            mov cx,0x4
00001170  51                push cx
00001171  57                push di
00001172  B90400            mov cx,0x4
00001175  51                push cx
00001176  AC                lodsb
00001177  3CFF              cmp al,0xff
00001179  7506              jnz 0x1181
0000117B  81C74001          add di,0x140
0000117F  EB42              jmp 0x11c3
00001181  56                push si
00001182  32E4              xor ah,ah
00001184  03C0              add ax,ax
00001186  03C0              add ax,ax
00001188  03C0              add ax,ax
0000118A  03C0              add ax,ax
0000118C  8BF0              mov si,ax
0000118E  033600B0          add si,[0xb000]
00001192  B90800            mov cx,0x8
00001195  51                push cx
00001196  AD                lodsw
00001197  86E0              xchg ah,al
00001199  E83700            call 0x11d3
0000119C  F7D5              not bp
0000119E  26212D            and [es:di],bp
000011A1  260915            or [es:di],dx
000011A4  E82C00            call 0x11d3
000011A7  F7D5              not bp
000011A9  26216D02          and [es:di+0x2],bp
000011AD  26095502          or [es:di+0x2],dx
000011B1  81C70020          add di,0x2000
000011B5  81FF0080          cmp di,0x8000
000011B9  7204              jc 0x11bf
000011BB  81C7A080          add di,0x80a0
000011BF  59                pop cx
000011C0  E2D3              loop 0x1195
000011C2  5E                pop si
000011C3  59                pop cx
000011C4  E2AF              loop 0x1175
000011C6  5F                pop di
000011C7  83C704            add di,0x4
000011CA  59                pop cx
000011CB  E2A3              loop 0x1170
000011CD  5B                pop bx
000011CE  5E                pop si
000011CF  5F                pop di
000011D0  1F                pop ds
000011D1  07                pop es
000011D2  C3                ret
000011D3  33ED              xor bp,bp
000011D5  33D2              xor dx,dx
000011D7  33DB              xor bx,bx
000011D9  03C0              add ax,ax
000011DB  12DB              adc bl,bl
000011DD  03C0              add ax,ax
000011DF  12DB              adc bl,bl
000011E1  7418              jz 0x11fb
000011E3  81CDF000          or bp,0xf0
000011E7  2E8A3E3C52        mov bh,[cs:0x523c]
000011EC  80FB03            cmp bl,0x3
000011EF  7405              jz 0x11f6
000011F1  2E8A3E3B52        mov bh,[cs:0x523b]
000011F6  80E7F0            and bh,0xf0
000011F9  8AD7              mov dl,bh
000011FB  33DB              xor bx,bx
000011FD  03C0              add ax,ax
000011FF  12DB              adc bl,bl
00001201  03C0              add ax,ax
00001203  12DB              adc bl,bl
00001205  7417              jz 0x121e
00001207  83CD0F            or bp,0xf
0000120A  2E8A3E3C52        mov bh,[cs:0x523c]
0000120F  80FB03            cmp bl,0x3
00001212  7405              jz 0x1219
00001214  2E8A3E3B52        mov bh,[cs:0x523b]
00001219  80E70F            and bh,0xf
0000121C  0AD7              or dl,bh
0000121E  33DB              xor bx,bx
00001220  03C0              add ax,ax
00001222  12DB              adc bl,bl
00001224  03C0              add ax,ax
00001226  12DB              adc bl,bl
00001228  7418              jz 0x1242
0000122A  81CD00F0          or bp,0xf000
0000122E  2E8A3E3C52        mov bh,[cs:0x523c]
00001233  80FB03            cmp bl,0x3
00001236  7405              jz 0x123d
00001238  2E8A3E3B52        mov bh,[cs:0x523b]
0000123D  80E7F0            and bh,0xf0
00001240  8AF7              mov dh,bh
00001242  33DB              xor bx,bx
00001244  03C0              add ax,ax
00001246  12DB              adc bl,bl
00001248  03C0              add ax,ax
0000124A  12DB              adc bl,bl
0000124C  7501              jnz 0x124f
0000124E  C3                ret
0000124F  81CD000F          or bp,0xf00
00001253  2E8A3E3C52        mov bh,[cs:0x523c]
00001258  80FB03            cmp bl,0x3
0000125B  7405              jz 0x1262
0000125D  2E8A3E3B52        mov bh,[cs:0x523b]
00001262  80E70F            and bh,0xf
00001265  0AF7              or dh,bh
00001267  C3                ret
00001268  77FF              ja 0x1269
0000126A  33BB22AA          xor di,[bp+di-0x55de]
0000126E  77FF              ja 0x126f
00001270  33BB88EE          xor di,[bp+di-0x1178]
00001274  02FF              add bh,bh
00001276  E83F0F            call 0x21b8
00001279  A33352            mov [0x5233],ax
0000127C  EB0D              jmp 0x128b
0000127E  F60637FFFF        test byte [0xff37],0xff
00001283  7401              jz 0x1286
00001285  C3                ret
00001286  C60637FFFF        mov byte [0xff37],0xff
0000128B  06                push es
0000128C  1E                push ds
0000128D  56                push si
0000128E  57                push di
0000128F  53                push bx
00001290  B800B8            mov ax,0xb800
00001293  8EC0              mov es,ax
00001295  BE6255            mov si,0x5562
00001298  2E8B3E3352        mov di,[cs:0x5233]
0000129D  B90300            mov cx,0x3
000012A0  51                push cx
000012A1  B90300            mov cx,0x3
000012A4  51                push cx
000012A5  57                push di
000012A6  E821F5            call 0x7ca
000012A9  5F                pop di
000012AA  83C704            add di,0x4
000012AD  59                pop cx
000012AE  E2F4              loop 0x12a4
000012B0  81C73401          add di,0x134
000012B4  59                pop cx
000012B5  E2E9              loop 0x12a0
000012B7  5B                pop bx
000012B8  5F                pop di
000012B9  5E                pop si
000012BA  1F                pop ds
000012BB  07                pop es
000012BC  C3                ret
000012BD  1E                push ds
000012BE  56                push si
000012BF  FEC8              dec al
000012C1  B120              mov cl,0x20
000012C3  F6E1              mul cl
000012C5  053080            add ax,0x8030
000012C8  8BF0              mov si,ax
000012CA  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000012CF  B800B8            mov ax,0xb800
000012D2  8EC0              mov es,ax
000012D4  B90800            mov cx,0x8
000012D7  51                push cx
000012D8  AD                lodsw
000012D9  0AC0              or al,al
000012DB  7403              jz 0x12e0
000012DD  268805            mov [es:di],al
000012E0  0AE4              or ah,ah
000012E2  7404              jz 0x12e8
000012E4  26886501          mov [es:di+0x1],ah
000012E8  AD                lodsw
000012E9  0AC0              or al,al
000012EB  7404              jz 0x12f1
000012ED  26884502          mov [es:di+0x2],al
000012F1  0AE4              or ah,ah
000012F3  7404              jz 0x12f9
000012F5  26886503          mov [es:di+0x3],ah
000012F9  81C70020          add di,0x2000
000012FD  81FF0080          cmp di,0x8000
00001301  7204              jc 0x1307
00001303  81C7A080          add di,0x80a0
00001307  59                pop cx
00001308  E2CD              loop 0x12d7
0000130A  5E                pop si
0000130B  1F                pop ds
0000130C  C3                ret
0000130D  C60644FF00        mov byte [0xff44],0x0
00001312  B800B8            mov ax,0xb800
00001315  8EC0              mov es,ax
00001317  C606435208        mov byte [0x5243],0x8
0000131C  C7063152F841      mov word [0x5231],0x41f8
00001322  C6061AFF00        mov byte [0xff1a],0x0
00001327  8B3631FF          mov si,[0xff31]
0000132B  BF00E9            mov di,0xe900
0000132E  B91200            mov cx,0x12
00001331  51                push cx
00001332  83C604            add si,0x4
00001335  33DB              xor bx,bx
00001337  B91C00            mov cx,0x1c
0000133A  51                push cx
0000133B  AC                lodsb
0000133C  E82300            call 0x1362
0000133F  47                inc di
00001340  FEC3              inc bl
00001342  59                pop cx
00001343  E2F5              loop 0x133a
00001345  83C604            add si,0x4
00001348  E8A603            call 0x16f1
0000134B  810631524001      add word [0x5231],0x140
00001351  59                pop cx
00001352  E2DD              loop 0x1331
00001354  803E1AFF10        cmp byte [0xff1a],0x10
00001359  72F9              jc 0x1354
0000135B  FE0E4352          dec byte [0x5243]
0000135F  75BB              jnz 0x131c
00001361  C3                ret
00001362  803DFF            cmp byte [di],0xff
00001365  7501              jnz 0x1368
00001367  C3                ret
00001368  803DFC            cmp byte [di],0xfc
0000136B  7501              jnz 0x136e
0000136D  C3                ret
0000136E  1E                push ds
0000136F  57                push di
00001370  56                push si
00001371  53                push bx
00001372  50                push ax
00001373  8A264352          mov ah,[0x5243]
00001377  FECC              dec ah
00001379  D0EC              shr ah,0x0
0000137B  D0EC              shr ah,0x0
0000137D  D0EC              shr ah,0x0
0000137F  1BC0              sbb ax,ax
00001381  35F0F0            xor ax,0xf0f0
00001384  2EA34152          mov [cs:0x5241],ax
00001388  03DB              add bx,bx
0000138A  03DB              add bx,bx
0000138C  031E3152          add bx,[0x5231]
00001390  8BFB              mov di,bx
00001392  58                pop ax
00001393  A8FF              test al,0xff
00001395  7456              jz 0x13ed
00001397  FEC8              dec al
00001399  B120              mov cl,0x20
0000139B  F6E1              mul cl
0000139D  053080            add ax,0x8030
000013A0  8BF0              mov si,ax
000013A2  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000013A7  56                push si
000013A8  57                push di
000013A9  2EA04352          mov al,[cs:0x5243]
000013AD  2403              and al,0x3
000013AF  F6D8              neg al
000013B1  0403              add al,0x3
000013B3  E86C00            call 0x1422
000013B6  E81700            call 0x13d0
000013B9  5F                pop di
000013BA  5E                pop si
000013BB  2EA04352          mov al,[cs:0x5243]
000013BF  E86000            call 0x1422
000013C2  83C702            add di,0x2
000013C5  83C602            add si,0x2
000013C8  E80500            call 0x13d0
000013CB  5B                pop bx
000013CC  5E                pop si
000013CD  5F                pop di
000013CE  1F                pop ds
000013CF  C3                ret
000013D0  B90200            mov cx,0x2
000013D3  2E8B1E4152        mov bx,[cs:0x5241]
000013D8  AD                lodsw
000013D9  23C3              and ax,bx
000013DB  F7D3              not bx
000013DD  26211D            and [es:di],bx
000013E0  260905            or [es:di],ax
000013E3  81C7A000          add di,0xa0
000013E7  83C60E            add si,0xe
000013EA  E2E7              loop 0x13d3
000013EC  C3                ret
000013ED  57                push di
000013EE  2EA04352          mov al,[cs:0x5243]
000013F2  2403              and al,0x3
000013F4  F6D8              neg al
000013F6  0403              add al,0x3
000013F8  E82700            call 0x1422
000013FB  E81300            call 0x1411
000013FE  5F                pop di
000013FF  2EA04352          mov al,[cs:0x5243]
00001403  E81C00            call 0x1422
00001406  83C702            add di,0x2
00001409  E80500            call 0x1411
0000140C  5B                pop bx
0000140D  5E                pop si
0000140E  5F                pop di
0000140F  1F                pop ds
00001410  C3                ret
00001411  2EA14152          mov ax,[cs:0x5241]
00001415  F7D0              not ax
00001417  262105            and [es:di],ax
0000141A  81C7A000          add di,0xa0
0000141E  262105            and [es:di],ax
00001421  C3                ret
00001422  2403              and al,0x3
00001424  32E4              xor ah,ah
00001426  50                push ax
00001427  03C0              add ax,ax
00001429  03C0              add ax,ax
0000142B  03F0              add si,ax
0000142D  58                pop ax
0000142E  0BC0              or ax,ax
00001430  7501              jnz 0x1433
00001432  C3                ret
00001433  81C70020          add di,0x2000
00001437  81FF0080          cmp di,0x8000
0000143B  7204              jc 0x1441
0000143D  81C7A080          add di,0x80a0
00001441  48                dec ax
00001442  75EF              jnz 0x1433
00001444  C3                ret
00001445  A08300            mov al,[0x83]
00001448  02C0              add al,al
0000144A  02C0              add al,al
0000144C  02C0              add al,al
0000144E  8A268400          mov ah,[0x84]
00001452  02E4              add ah,ah
00001454  02E4              add ah,ah
00001456  02E4              add ah,ah
00001458  A22F52            mov [0x522f],al
0000145B  88263052          mov [0x5230],ah
0000145F  E80602            call 0x1668
00001462  C6064352EE        mov byte [0x5243],0xee
00001467  E80B00            call 0x1475
0000146A  C606435200        mov byte [0x5243],0x0
0000146F  E80300            call 0x1475
00001472  E9F301            jmp 0x1668
00001475  A02F52            mov al,[0x522f]
00001478  FEC8              dec al
0000147A  8AD8              mov bl,al
0000147C  0419              add al,0x19
0000147E  8AD0              mov dl,al
00001480  A03052            mov al,[0x5230]
00001483  FEC8              dec al
00001485  8AF8              mov bh,al
00001487  0419              add al,0x19
00001489  8AF0              mov dh,al
0000148B  E82F00            call 0x14bd
0000148E  A02F52            mov al,[0x522f]
00001491  2C05              sub al,0x5
00001493  8AD8              mov bl,al
00001495  0421              add al,0x21
00001497  8AD0              mov dl,al
00001499  A03052            mov al,[0x5230]
0000149C  2C05              sub al,0x5
0000149E  8AF8              mov bh,al
000014A0  0421              add al,0x21
000014A2  8AF0              mov dh,al
000014A4  E81600            call 0x14bd
000014A7  A02F52            mov al,[0x522f]
000014AA  2C09              sub al,0x9
000014AC  8AD8              mov bl,al
000014AE  0429              add al,0x29
000014B0  8AD0              mov dl,al
000014B2  A03052            mov al,[0x5230]
000014B5  2C09              sub al,0x9
000014B7  8AF8              mov bh,al
000014B9  0429              add al,0x29
000014BB  8AF0              mov dh,al
000014BD  B90900            mov cx,0x9
000014C0  51                push cx
000014C1  52                push dx
000014C2  53                push bx
000014C3  E82900            call 0x14ef
000014C6  5B                pop bx
000014C7  5A                pop dx
000014C8  80EB0C            sub bl,0xc
000014CB  7302              jnc 0x14cf
000014CD  32DB              xor bl,bl
000014CF  80EF0C            sub bh,0xc
000014D2  7302              jnc 0x14d6
000014D4  32FF              xor bh,bh
000014D6  80C20C            add dl,0xc
000014D9  7302              jnc 0x14dd
000014DB  B2FF              mov dl,0xff
000014DD  80C60C            add dh,0xc
000014E0  7302              jnc 0x14e4
000014E2  B6FF              mov dh,0xff
000014E4  52                push dx
000014E5  53                push bx
000014E6  E84C01            call 0x1635
000014E9  5B                pop bx
000014EA  5A                pop dx
000014EB  59                pop cx
000014EC  E2D2              loop 0x14c0
000014EE  C3                ret
000014EF  B800B8            mov ax,0xb800
000014F2  8EC0              mov es,ax
000014F4  52                push dx
000014F5  53                push bx
000014F6  8AF7              mov dh,bh
000014F8  E87500            call 0x1570
000014FB  5B                pop bx
000014FC  5A                pop dx
000014FD  52                push dx
000014FE  53                push bx
000014FF  8AFE              mov bh,dh
00001501  E86C00            call 0x1570
00001504  5B                pop bx
00001505  5A                pop dx
00001506  52                push dx
00001507  53                push bx
00001508  8AD3              mov dl,bl
0000150A  E80400            call 0x1511
0000150D  5B                pop bx
0000150E  5A                pop dx
0000150F  8ADA              mov bl,dl
00001511  3AF7              cmp dh,bh
00001513  7302              jnc 0x1517
00001515  87D3              xchg dx,bx
00001517  0ADB              or bl,bl
00001519  7501              jnz 0x151c
0000151B  C3                ret
0000151C  80FBDF            cmp bl,0xdf
0000151F  7201              jc 0x1522
00001521  C3                ret
00001522  0AFF              or bh,bh
00001524  7502              jnz 0x1528
00001526  B701              mov bh,0x1
00001528  80FE8F            cmp dh,0x8f
0000152B  7202              jc 0x152f
0000152D  B68E              mov dh,0x8e
0000152F  8AC6              mov al,dh
00001531  2AC7              sub al,bh
00001533  FEC0              inc al
00001535  50                push ax
00001536  8AC7              mov al,bh
00001538  E8DA00            call 0x1615
0000153B  8AC3              mov al,bl
0000153D  D0E8              shr al,0x0
0000153F  32E4              xor ah,ah
00001541  03F8              add di,ax
00001543  59                pop cx
00001544  32ED              xor ch,ch
00001546  80E301            and bl,0x1
00001549  7404              jz 0x154f
0000154B  B40F              mov ah,0xf
0000154D  EB02              jmp 0x1551
0000154F  B4F0              mov ah,0xf0
00001551  8AC4              mov al,ah
00001553  F6D0              not al
00001555  22264352          and ah,[0x5243]
00001559  262005            and [es:di],al
0000155C  260825            or [es:di],ah
0000155F  81C70020          add di,0x2000
00001563  81FF0080          cmp di,0x8000
00001567  7204              jc 0x156d
00001569  81C7A080          add di,0x80a0
0000156D  E2EA              loop 0x1559
0000156F  C3                ret
00001570  3AD3              cmp dl,bl
00001572  7302              jnc 0x1576
00001574  87D3              xchg dx,bx
00001576  0AFF              or bh,bh
00001578  7501              jnz 0x157b
0000157A  C3                ret
0000157B  80FF8F            cmp bh,0x8f
0000157E  7201              jc 0x1581
00001580  C3                ret
00001581  0ADB              or bl,bl
00001583  7502              jnz 0x1587
00001585  B301              mov bl,0x1
00001587  80FADF            cmp dl,0xdf
0000158A  7202              jc 0x158e
0000158C  B2DE              mov dl,0xde
0000158E  8AC7              mov al,bh
00001590  E88200            call 0x1615
00001593  8AC3              mov al,bl
00001595  D0E8              shr al,0x0
00001597  32E4              xor ah,ah
00001599  03F8              add di,ax
0000159B  8AE2              mov ah,dl
0000159D  D0EC              shr ah,0x0
0000159F  2AE0              sub ah,al
000015A1  8ACC              mov cl,ah
000015A3  32ED              xor ch,ch
000015A5  80E301            and bl,0x1
000015A8  7404              jz 0x15ae
000015AA  B00F              mov al,0xf
000015AC  EB02              jmp 0x15b0
000015AE  B0FF              mov al,0xff
000015B0  80E201            and dl,0x1
000015B3  7404              jz 0x15b9
000015B5  B4FF              mov ah,0xff
000015B7  EB02              jmp 0x15bb
000015B9  B4F0              mov ah,0xf0
000015BB  E347              jcxz 0x1604
000015BD  49                dec cx
000015BE  E326              jcxz 0x15e6
000015C0  8AF0              mov dh,al
000015C2  F6D6              not dh
000015C4  22064352          and al,[0x5243]
000015C8  262035            and [es:di],dh
000015CB  260805            or [es:di],al
000015CE  47                inc di
000015CF  B0FF              mov al,0xff
000015D1  22064352          and al,[0x5243]
000015D5  F3AA              rep stosb
000015D7  8AF4              mov dh,ah
000015D9  F6D6              not dh
000015DB  22264352          and ah,[0x5243]
000015DF  262035            and [es:di],dh
000015E2  260825            or [es:di],ah
000015E5  C3                ret
000015E6  8AF0              mov dh,al
000015E8  F6D6              not dh
000015EA  22064352          and al,[0x5243]
000015EE  262035            and [es:di],dh
000015F1  260805            or [es:di],al
000015F4  47                inc di
000015F5  8AF4              mov dh,ah
000015F7  F6D6              not dh
000015F9  22264352          and ah,[0x5243]
000015FD  262035            and [es:di],dh
00001600  260825            or [es:di],ah
00001603  C3                ret
00001604  22C4              and al,ah
00001606  8AF0              mov dh,al
00001608  F6D6              not dh
0000160A  22064352          and al,[0x5243]
0000160E  262035            and [es:di],dh
00001611  260805            or [es:di],al
00001614  C3                ret
00001615  53                push bx
00001616  040E              add al,0xe
00001618  8AF8              mov bh,al
0000161A  D0CF              ror bh,0x0
0000161C  D0CF              ror bh,0x0
0000161E  D0CF              ror bh,0x0
00001620  81E30060          and bx,0x6000
00001624  8BFB              mov di,bx
00001626  D0E8              shr al,0x0
00001628  D0E8              shr al,0x0
0000162A  B3A0              mov bl,0xa0
0000162C  F6E3              mul bl
0000162E  051800            add ax,0x18
00001631  03F8              add di,ax
00001633  5B                pop bx
00001634  C3                ret
00001635  8A0E33FF          mov cl,[0xff33]
00001639  D0E9              shr cl,0x0
0000163B  FEC1              inc cl
0000163D  B001              mov al,0x1
0000163F  F6E1              mul cl
00001641  50                push ax
00001642  2EFF161001        call word near [cs:0x110]
00001647  2EFF161201        call word near [cs:0x112]
0000164C  2EFF161401        call word near [cs:0x114]
00001651  2EFF161601        call word near [cs:0x116]
00001656  2EFF161801        call word near [cs:0x118]
0000165B  58                pop ax
0000165C  38061AFF          cmp [0xff1a],al
00001660  72DF              jc 0x1641
00001662  C6061AFF00        mov byte [0xff1a],0x0
00001667  C3                ret
00001668  B800B8            mov ax,0xb800
0000166B  8EC0              mov es,ax
0000166D  BFF841            mov di,0x41f8
00001670  B90800            mov cx,0x8
00001673  51                push cx
00001674  57                push di
00001675  B91200            mov cx,0x12
00001678  51                push cx
00001679  57                push di
0000167A  B93800            mov cx,0x38
0000167D  B84444            mov ax,0x4444
00001680  263105            xor [es:di],ax
00001683  47                inc di
00001684  47                inc di
00001685  E2F9              loop 0x1680
00001687  5F                pop di
00001688  81C74001          add di,0x140
0000168C  59                pop cx
0000168D  E2E9              loop 0x1678
0000168F  5F                pop di
00001690  81C70020          add di,0x2000
00001694  81FF0080          cmp di,0x8000
00001698  7204              jc 0x169e
0000169A  81C7A080          add di,0x80a0
0000169E  59                pop cx
0000169F  E2D2              loop 0x1673
000016A1  C3                ret
000016A2  243F              and al,0x3f
000016A4  8BD8              mov bx,ax
000016A6  02DB              add bl,bl
000016A8  02DB              add bl,bl
000016AA  02DB              add bl,bl
000016AC  80C30E            add bl,0xe
000016AF  80EF04            sub bh,0x4
000016B2  02FF              add bh,bh
000016B4  02FF              add bh,bh
000016B6  80C718            add bh,0x18
000016B9  E8FC0A            call 0x21b8
000016BC  8BF8              mov di,ax
000016BE  C3                ret
000016BF  8A1E9D00          mov bl,[0x9d]
000016C3  0ADB              or bl,bl
000016C5  7421              jz 0x16e8
000016C7  80FB07            cmp bl,0x7
000016CA  741C              jz 0x16e8
000016CC  FECB              dec bl
000016CE  32FF              xor bh,bh
000016D0  03DB              add bx,bx
000016D2  2E8E062CFF        mov es,word [cs:0xff2c]
000016D7  8CC8              mov ax,cs
000016D9  050020            add ax,0x2000
000016DC  8ED8              mov ds,ax
000016DE  8B37              mov si,[bx]
000016E0  BFF08C            mov di,0x8cf0
000016E3  B98004            mov cx,0x480
000016E6  F3A4              rep movsb
000016E8  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000016ED  BEF08C            mov si,0x8cf0
000016F0  C3                ret
000016F1  81FE00E9          cmp si,0xe900
000016F5  7301              jnc 0x16f8
000016F7  C3                ret
000016F8  81EE0009          sub si,0x900
000016FC  C3                ret
000016FD  81FE00E0          cmp si,0xe000
00001701  7201              jc 0x1704
00001703  C3                ret
00001704  81C60009          add si,0x900
00001708  C3                ret
00001709  56                push si
0000170A  1E                push ds
0000170B  2EC7063B5244CC    mov word [cs:0x523b],0xcc44
00001712  BE7147            mov si,0x4771
00001715  BF5806            mov di,0x658
00001718  B800B8            mov ax,0xb800
0000171B  8EC0              mov es,ax
0000171D  B90500            mov cx,0x5
00001720  51                push cx
00001721  B91C00            mov cx,0x1c
00001724  51                push cx
00001725  AC                lodsb
00001726  1E                push ds
00001727  56                push si
00001728  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000172D  32E4              xor ah,ah
0000172F  03C0              add ax,ax
00001731  03C0              add ax,ax
00001733  03C0              add ax,ax
00001735  03C0              add ax,ax
00001737  050040            add ax,0x4000
0000173A  8BF0              mov si,ax
0000173C  57                push di
0000173D  B90800            mov cx,0x8
00001740  51                push cx
00001741  AD                lodsw
00001742  86E0              xchg ah,al
00001744  E88CFA            call 0x11d3
00001747  268915            mov [es:di],dx
0000174A  E886FA            call 0x11d3
0000174D  26895502          mov [es:di+0x2],dx
00001751  81C70020          add di,0x2000
00001755  81FF0080          cmp di,0x8000
00001759  7204              jc 0x175f
0000175B  81C7A080          add di,0x80a0
0000175F  59                pop cx
00001760  E2DE              loop 0x1740
00001762  5F                pop di
00001763  83C704            add di,0x4
00001766  5E                pop si
00001767  1F                pop ds
00001768  59                pop cx
00001769  E2B9              loop 0x1724
0000176B  81C7D000          add di,0xd0
0000176F  59                pop cx
00001770  E2AE              loop 0x1720
00001772  1F                pop ds
00001773  5E                pop si
00001774  C3                ret
00001775  0001              add [bx+di],al
00001777  0204              add al,[si]
00001779  07                pop es
0000177A  090D              or [di],cx
0000177C  1004              adc [si],al
0000177E  15171C            adc ax,0x1c17
00001781  1E                push ds
00001782  0407              add al,0x7
00001784  0922              or [bp+si],sp
00001786  0225              add ah,[di]
00001788  0802              or [bp+si],al
0000178A  2802              sub [bp+si],al
0000178C  2D3136            sub ax,0x3631
0000178F  3B4000            cmp ax,[bx+si+0x0]
00001792  0103              add [bp+di],ax
00001794  06                push es
00001795  080A              or [bp+si],cl
00001797  0E                push cs
00001798  11060818          adc [0x1808],ax
0000179C  0E                push cs
0000179D  1E                push ds
0000179E  0408              add al,0x8
000017A0  0A23              or ah,[bp+di]
000017A2  2426              and al,0x26
000017A4  0827              or [bx],ah
000017A6  292A              sub [bp+si],bp
000017A8  0432              add al,0x32
000017AA  37                aaa
000017AB  3C06              cmp al,0x6
000017AD  0001              add [bx+di],al
000017AF  0205              add al,[di]
000017B1  0802              or [bp+si],al
000017B3  0E                push cs
000017B4  12060819          adc al,[0x1908]
000017B8  0E                push cs
000017B9  1E                push ds
000017BA  0408              add al,0x8
000017BC  0223              add ah,[bp+di]
000017BE  2426              and al,0x26
000017C0  0825              or [di],ah
000017C2  2902              sub [bp+si],ax
000017C4  2E3338            xor di,[cs:bx+si]
000017C7  3D0600            cmp ax,0x6
000017CA  0103              add [bp+di],ax
000017CC  06                push es
000017CD  080B              or [bp+di],cl
000017CF  0E                push cs
000017D0  1306081A          adc ax,[0x1a08]
000017D4  0E                push cs
000017D5  1F                pop ds
000017D6  0408              add al,0x8
000017D8  0B23              or sp,[bp+di]
000017DA  2426              and al,0x26
000017DC  0827              or [bx],ah
000017DE  292B              sub [bp+di],bp
000017E0  2F                das
000017E1  3439              xor al,0x39
000017E3  3E06              ds push es
000017E5  0001              add [bx+di],al
000017E7  0204              add al,[si]
000017E9  080C              or [si],cl
000017EB  0F1404            unpcklps xmm0,oword [si]
000017EE  16                push ss
000017EF  1B1D              sbb bx,[di]
000017F1  2021              and [bx+di],ah
000017F3  080C              or [si],cl
000017F5  2324              and sp,[si]
000017F7  260802            or [es:bp+si],al
000017FA  282C              sub [si],ch
000017FC  3035              xor [di],dh
000017FE  3A3F              cmp bh,[bx]
00001800  06                push es
00001801  A24352            mov [0x5243],al
00001804  BE5549            mov si,0x4955
00001807  C7063152F841      mov word [0x5231],0x41f8
0000180D  B91200            mov cx,0x12
00001810  51                push cx
00001811  B91C00            mov cx,0x1c
00001814  51                push cx
00001815  AC                lodsb
00001816  56                push si
00001817  E81300            call 0x182d
0000181A  5E                pop si
0000181B  8306315204        add word [0x5231],0x4
00001820  59                pop cx
00001821  E2F1              loop 0x1814
00001823  81063152D000      add word [0x5231],0xd0
00001829  59                pop cx
0000182A  E2E4              loop 0x1810
0000182C  C3                ret
0000182D  1E                push ds
0000182E  B120              mov cl,0x20
00001830  F6E1              mul cl
00001832  050080            add ax,0x8000
00001835  8BF0              mov si,ax
00001837  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000183C  B800B8            mov ax,0xb800
0000183F  8EC0              mov es,ax
00001841  2E8B3E3152        mov di,[cs:0x5231]
00001846  B90800            mov cx,0x8
00001849  51                push cx
0000184A  AD                lodsw
0000184B  E81900            call 0x1867
0000184E  AB                stosw
0000184F  AD                lodsw
00001850  E81400            call 0x1867
00001853  AB                stosw
00001854  81C7FC1F          add di,0x1ffc
00001858  81FF0080          cmp di,0x8000
0000185C  7204              jc 0x1862
0000185E  81C7A080          add di,0x80a0
00001862  59                pop cx
00001863  E2E4              loop 0x1849
00001865  1F                pop ds
00001866  C3                ret
00001867  0BC0              or ax,ax
00001869  7501              jnz 0x186c
0000186B  C3                ret
0000186C  B90400            mov cx,0x4
0000186F  51                push cx
00001870  03C0              add ax,ax
00001872  12C9              adc cl,cl
00001874  03C0              add ax,ax
00001876  12C9              adc cl,cl
00001878  03C0              add ax,ax
0000187A  12C9              adc cl,cl
0000187C  03C0              add ax,ax
0000187E  12C9              adc cl,cl
00001880  80E10F            and cl,0xf
00001883  2E8A1E4352        mov bl,[cs:0x5243]
00001888  32FF              xor bh,bh
0000188A  03DB              add bx,bx
0000188C  2EFF979D48        call word near [cs:bx+0x489d]
00001891  03D2              add dx,dx
00001893  03D2              add dx,dx
00001895  03D2              add dx,dx
00001897  03D2              add dx,dx
00001899  0AD1              or dl,cl
0000189B  59                pop cx
0000189C  E2D1              loop 0x186f
0000189E  8BC2              mov ax,dx
000018A0  C3                ret
000018A1  A7                cmpsw
000018A2  48                dec ax
000018A3  D048DF            ror byte [bx+si-0x21],0x0
000018A6  48                dec ax
000018A7  FC                cld
000018A8  48                dec ax
000018A9  27                daa
000018AA  49                dec cx
000018AB  B502              mov ch,0x2
000018AD  80F906            cmp cl,0x6
000018B0  7503              jnz 0x18b5
000018B2  E9A100            jmp 0x1956
000018B5  B50A              mov ch,0xa
000018B7  80F90E            cmp cl,0xe
000018BA  7503              jnz 0x18bf
000018BC  E99700            jmp 0x1956
000018BF  B505              mov ch,0x5
000018C1  80F901            cmp cl,0x1
000018C4  7503              jnz 0x18c9
000018C6  E98D00            jmp 0x1956
000018C9  B50D              mov ch,0xd
000018CB  80F909            cmp cl,0x9
000018CE  7503              jnz 0x18d3
000018D0  E98300            jmp 0x1956
000018D3  C3                ret
000018D4  B504              mov ch,0x4
000018D6  80F903            cmp cl,0x3
000018D9  747B              jz 0x1956
000018DB  B50C              mov ch,0xc
000018DD  80F90B            cmp cl,0xb
000018E0  7474              jz 0x1956
000018E2  C3                ret
000018E3  B501              mov ch,0x1
000018E5  80F903            cmp cl,0x3
000018E8  746C              jz 0x1956
000018EA  B509              mov ch,0x9
000018EC  80F90B            cmp cl,0xb
000018EF  7465              jz 0x1956
000018F1  B503              mov ch,0x3
000018F3  80F905            cmp cl,0x5
000018F6  745E              jz 0x1956
000018F8  B50B              mov ch,0xb
000018FA  80F90D            cmp cl,0xd
000018FD  7457              jz 0x1956
000018FF  C3                ret
00001900  B502              mov ch,0x2
00001902  80F903            cmp cl,0x3
00001905  744F              jz 0x1956
00001907  B50A              mov ch,0xa
00001909  80F90B            cmp cl,0xb
0000190C  7448              jz 0x1956
0000190E  B501              mov ch,0x1
00001910  80F905            cmp cl,0x5
00001913  7441              jz 0x1956
00001915  B509              mov ch,0x9
00001917  80F90D            cmp cl,0xd
0000191A  743A              jz 0x1956
0000191C  B505              mov ch,0x5
0000191E  80F906            cmp cl,0x6
00001921  7433              jz 0x1956
00001923  B50D              mov ch,0xd
00001925  80F90E            cmp cl,0xe
00001928  742C              jz 0x1956
0000192A  C3                ret
0000192B  B501              mov ch,0x1
0000192D  80F905            cmp cl,0x5
00001930  7424              jz 0x1956
00001932  B509              mov ch,0x9
00001934  80F90D            cmp cl,0xd
00001937  741D              jz 0x1956
00001939  B505              mov ch,0x5
0000193B  80F903            cmp cl,0x3
0000193E  7416              jz 0x1956
00001940  B50D              mov ch,0xd
00001942  80F90B            cmp cl,0xb
00001945  740F              jz 0x1956
00001947  B503              mov ch,0x3
00001949  80F906            cmp cl,0x6
0000194C  7408              jz 0x1956
0000194E  B50B              mov ch,0xb
00001950  80F90E            cmp cl,0xe
00001953  7401              jz 0x1956
00001955  C3                ret
00001956  8ACD              mov cl,ch
00001958  C3                ret
00001959  07                pop es
0000195A  0809              or [bx+di],cl
0000195C  0A07              or al,[bx]
0000195E  080B              or [bp+di],cl
00001960  0C07              or al,0x7
00001962  0809              or [bx+di],cl
00001964  0A19              or bl,[bx+di]
00001966  3D6127            cmp ax,0x2761
00001969  1D1E1D            sbb ax,0x1d1e
0000196C  1E                push ds
0000196D  1F                pop ds
0000196E  201F              and [bx],bl
00001970  201D              and [di],bl
00001972  1E                push ds
00001973  1F                pop ds
00001974  200D              and [di],cl
00001976  0E                push cs
00001977  0F100F            movups xmm1,oword [bx]
0000197A  100D              adc [di],cl
0000197C  0E                push cs
0000197D  0F1017            movups xmm2,oword [bx]
00001980  183E5C62          sbb [0x625c],bh
00001984  262A25            sub ah,[es:di]
00001987  2122              and [bp+si],sp
00001989  2122              and [bp+si],sp
0000198B  2324              and sp,[si]
0000198D  2122              and [bp+si],sp
0000198F  2122              and [bp+si],sp
00001991  090A              or [bp+si],cx
00001993  07                pop es
00001994  0807              or [bx],al
00001996  0809              or [bx+di],cl
00001998  0A07              or al,[bx]
0000199A  0819              or [bx+di],bl
0000199C  54                push sp
0000199D  59                pop cx
0000199E  5D                pop bp
0000199F  6332              arpl [bp+si],si
000019A1  2F                das
000019A2  2E1F              cs pop ds
000019A4  201F              and [bx],bl
000019A6  201D              and [di],bl
000019A8  1E                push ds
000019A9  1F                pop ds
000019AA  201F              and [bx],bl
000019AC  200F              and [bx],cl
000019AE  1011              adc [bx+di],dl
000019B0  120F              adc cl,[bx]
000019B2  100D              adc [di],cl
000019B4  0E                push cs
000019B5  17                pop ss
000019B6  185055            sbb [bx+si+0x55],dl
000019B9  5A                pop dx
000019BA  5E                pop si
000019BB  64662830          o32 sub [fs:bx+si],dh
000019BF  2324              and sp,[si]
000019C1  2122              and [bp+si],sp
000019C3  2324              and sp,[si]
000019C5  2122              and [bp+si],sp
000019C7  2324              and sp,[si]
000019C9  07                pop es
000019CA  080A              or [bp+si],cl
000019CC  0C07              or al,0x7
000019CE  0809              or [bx+di],cl
000019D0  0A1A              or bl,[bp+si]
000019D2  3451              xor al,0x51
000019D4  56                push si
000019D5  5B                pop bx
000019D6  5F                pop di
000019D7  65672F            gs a32 das
000019DA  2D1D1E            sub ax,0x1e1d
000019DD  1F                pop ds
000019DE  201D              and [di],bl
000019E0  1E                push ds
000019E1  1F                pop ds
000019E2  201D              and [di],bl
000019E4  1E                push ds
000019E5  0F100D            movups xmm1,oword [di]
000019E8  0E                push cs
000019E9  0D0E17            or ax,0x170e
000019EC  18494D            sbb [bx+di+0x4d],cl
000019EF  52                push dx
000019F0  57                push di
000019F1  006069            add [bx+si+0x69],ah
000019F4  686A6B            push word 0x6b6a
000019F7  28262122          sub [0x2221],ah
000019FB  2B262122          sub sp,[0x2221]
000019FF  2122              and [bp+si],sp
00001A01  07                pop es
00001A02  0809              or [bx+di],cl
00001A04  0A09              or cl,[bx+di]
00001A06  0A1B              or bl,[bp+di]
00001A08  46                inc si
00001A09  4A                dec dx
00001A0A  4E                dec si
00001A0B  53                push bx
00001A0C  58                pop ax
00001A0D  0000              add [bx+si],al
00001A0F  0000              add [bx+si],al
00001A11  696C312D1F        imul bp,[si+0x31],0x1f2d
00001A16  202C              and [si],ch
00001A18  2D1F20            sub ax,0x201f
00001A1B  1F                pop ds
00001A1C  2013              and [bp+di],dl
00001A1E  1413              adc al,0x13
00001A20  1417              adc al,0x17
00001A22  184347            sbb [bp+di+0x47],al
00001A25  4B                dec bx
00001A26  4F                dec di
00001A27  0000              add [bx+si],al
00001A29  0000              add [bx+si],al
00001A2B  0000              add [bx+si],al
00001A2D  006D6E            add [di+0x6e],ch
00001A30  6F                outsw
00001A31  29262122          sub [0x2221],sp
00001A35  2A25              sub ah,[di]
00001A37  2122              and [bp+si],sp
00001A39  151615            adc ax,0x1516
00001A3C  16                push ss
00001A3D  1C35              sbb al,0x35
00001A3F  44                inc sp
00001A40  48                dec ax
00001A41  4C                dec sp
00001A42  0000              add [bx+si],al
00001A44  0000              add [bx+si],al
00001A46  0000              add [bx+si],al
00001A48  0000              add [bx+si],al
00001A4A  006971            add [bx+di+0x71],ch
00001A4D  7374              jnc 0x1ac3
00001A4F  1F                pop ds
00001A50  202C              and [si],ch
00001A52  27                daa
00001A53  1F                pop ds
00001A54  2017              and [bx],dl
00001A56  1838              sbb [bx+si],bh
00001A58  3A3F              cmp bh,[bx]
00001A5A  42                inc dx
00001A5B  45                inc bp
00001A5C  0000              add [bx+si],al
00001A5E  0000              add [bx+si],al
00001A60  0000              add [bx+si],al
00001A62  0000              add [bx+si],al
00001A64  0000              add [bx+si],al
00001A66  0000              add [bx+si],al
00001A68  6D                insw
00001A69  7577              jnz 0x1ae2
00001A6B  796F              jns 0x1adc
00001A6D  2B262926          sub sp,[0x2629]
00001A71  1A34              sbb dh,[si]
00001A73  393B              cmp [bp+di],di
00001A75  40                inc ax
00001A76  41                inc cx
00001A77  0000              add [bx+si],al
00001A79  0000              add [bx+si],al
00001A7B  0000              add [bx+si],al
00001A7D  0000              add [bx+si],al
00001A7F  0000              add [bx+si],al
00001A81  0000              add [bx+si],al
00001A83  0000              add [bx+si],al
00001A85  7678              jna 0x1aff
00001A87  7A7B              jpe 0x1b04
00001A89  3132              xor [bp+si],si
00001A8B  2F                das
00001A8C  2D3336            sub ax,0x3633
00001A8F  37                aaa
00001A90  3C00              cmp al,0x0
00001A92  0000              add [bx+si],al
00001A94  0000              add [bx+si],al
00001A96  0000              add [bx+si],al
00001A98  0000              add [bx+si],al
00001A9A  0000              add [bx+si],al
00001A9C  0000              add [bx+si],al
00001A9E  0000              add [bx+si],al
00001AA0  0000              add [bx+si],al
00001AA2  0000              add [bx+si],al
00001AA4  6D                insw
00001AA5  7170              jno 0x1b17
00001AA7  7270              jc 0x1b19
00001AA9  0000              add [bx+si],al
00001AAB  0000              add [bx+si],al
00001AAD  0000              add [bx+si],al
00001AAF  0000              add [bx+si],al
00001AB1  0000              add [bx+si],al
00001AB3  0000              add [bx+si],al
00001AB5  0000              add [bx+si],al
00001AB7  0000              add [bx+si],al
00001AB9  0000              add [bx+si],al
00001ABB  0000              add [bx+si],al
00001ABD  0000              add [bx+si],al
00001ABF  0000              add [bx+si],al
00001AC1  0000              add [bx+si],al
00001AC3  0000              add [bx+si],al
00001AC5  0000              add [bx+si],al
00001AC7  0000              add [bx+si],al
00001AC9  0000              add [bx+si],al
00001ACB  0000              add [bx+si],al
00001ACD  0000              add [bx+si],al
00001ACF  0000              add [bx+si],al
00001AD1  0000              add [bx+si],al
00001AD3  0000              add [bx+si],al
00001AD5  0000              add [bx+si],al
00001AD7  0000              add [bx+si],al
00001AD9  0000              add [bx+si],al
00001ADB  0000              add [bx+si],al
00001ADD  0000              add [bx+si],al
00001ADF  0000              add [bx+si],al
00001AE1  0000              add [bx+si],al
00001AE3  0000              add [bx+si],al
00001AE5  0000              add [bx+si],al
00001AE7  0000              add [bx+si],al
00001AE9  0000              add [bx+si],al
00001AEB  0000              add [bx+si],al
00001AED  0000              add [bx+si],al
00001AEF  0000              add [bx+si],al
00001AF1  0000              add [bx+si],al
00001AF3  0000              add [bx+si],al
00001AF5  0000              add [bx+si],al
00001AF7  0000              add [bx+si],al
00001AF9  0000              add [bx+si],al
00001AFB  0000              add [bx+si],al
00001AFD  0102              add [bp+si],ax
00001AFF  0102              add [bp+si],ax
00001B01  0102              add [bp+si],ax
00001B03  0102              add [bp+si],ax
00001B05  0102              add [bp+si],ax
00001B07  0102              add [bp+si],ax
00001B09  0102              add [bp+si],ax
00001B0B  0102              add [bp+si],ax
00001B0D  0102              add [bp+si],ax
00001B0F  0102              add [bp+si],ax
00001B11  0102              add [bp+si],ax
00001B13  0102              add [bp+si],ax
00001B15  0102              add [bp+si],ax
00001B17  0102              add [bp+si],ax
00001B19  0304              add ax,[si]
00001B1B  0304              add ax,[si]
00001B1D  0304              add ax,[si]
00001B1F  0304              add ax,[si]
00001B21  0304              add ax,[si]
00001B23  0304              add ax,[si]
00001B25  0304              add ax,[si]
00001B27  0304              add ax,[si]
00001B29  0304              add ax,[si]
00001B2B  0304              add ax,[si]
00001B2D  0304              add ax,[si]
00001B2F  0304              add ax,[si]
00001B31  0304              add ax,[si]
00001B33  0304              add ax,[si]
00001B35  050605            add ax,0x506
00001B38  06                push es
00001B39  050605            add ax,0x506
00001B3C  06                push es
00001B3D  050605            add ax,0x506
00001B40  06                push es
00001B41  050605            add ax,0x506
00001B44  06                push es
00001B45  050605            add ax,0x506
00001B48  06                push es
00001B49  050606            add ax,0x606
00001B4C  050506            add ax,0x605
00001B4F  05061E            add ax,0x1e06
00001B52  50                push ax
00001B53  02FF              add bh,bh
00001B55  E86006            call 0x21b8
00001B58  8BF8              mov di,ax
00001B5A  2EC7062F52DE51    mov word [cs:0x522f],0x51de
00001B61  58                pop ax
00001B62  B120              mov cl,0x20
00001B64  F6E1              mul cl
00001B66  050060            add ax,0x6000
00001B69  8BF0              mov si,ax
00001B6B  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001B70  B800B8            mov ax,0xb800
00001B73  8EC0              mov es,ax
00001B75  B90800            mov cx,0x8
00001B78  AD                lodsw
00001B79  E8F1EB            call 0x76d
00001B7C  AB                stosw
00001B7D  AD                lodsw
00001B7E  E8ECEB            call 0x76d
00001B81  AB                stosw
00001B82  81C7FC1F          add di,0x1ffc
00001B86  81FF0080          cmp di,0x8000
00001B8A  7204              jc 0x1b90
00001B8C  81C7A080          add di,0x80a0
00001B90  E2E6              loop 0x1b78
00001B92  1F                pop ds
00001B93  C3                ret
00001B94  1E                push ds
00001B95  2EC7063B5277FF    mov word [cs:0x523b],0xff77
00001B9C  8A1E9200          mov bl,[0x92]
00001BA0  FECB              dec bl
00001BA2  32FF              xor bh,bh
00001BA4  03DB              add bx,bx
00001BA6  8BB7FB4B          mov si,[bx+0x4bfb]
00001BAA  BF684D            mov di,0x4d68
00001BAD  B800B8            mov ax,0xb800
00001BB0  8EC0              mov es,ax
00001BB2  B91800            mov cx,0x18
00001BB5  AD                lodsw
00001BB6  86E0              xchg ah,al
00001BB8  E818F6            call 0x11d3
00001BBB  F7D5              not bp
00001BBD  26212D            and [es:di],bp
00001BC0  260915            or [es:di],dx
00001BC3  E80DF6            call 0x11d3
00001BC6  F7D5              not bp
00001BC8  26216D02          and [es:di+0x2],bp
00001BCC  26095502          or [es:di+0x2],dx
00001BD0  AD                lodsw
00001BD1  86E0              xchg ah,al
00001BD3  E8FDF5            call 0x11d3
00001BD6  F7D5              not bp
00001BD8  26216D04          and [es:di+0x4],bp
00001BDC  26095504          or [es:di+0x4],dx
00001BE0  E8F0F5            call 0x11d3
00001BE3  F7D5              not bp
00001BE5  26216D06          and [es:di+0x6],bp
00001BE9  26095506          or [es:di+0x6],dx
00001BED  81C70020          add di,0x2000
00001BF1  81FF0080          cmp di,0x8000
00001BF5  7204              jc 0x1bfb
00001BF7  81C7A080          add di,0x80a0
00001BFB  E2B8              loop 0x1bb5
00001BFD  1F                pop ds
00001BFE  C3                ret
00001BFF  07                pop es
00001C00  4C                dec sp
00001C01  07                pop es
00001C02  4C                dec sp
00001C03  07                pop es
00001C04  4C                dec sp
00001C05  674C              a32 dec sp
00001C07  674C              a32 dec sp
00001C09  C7                db 0xc7
00001C0A  4C                dec sp
00001C0B  0000              add [bx+si],al
00001C0D  0000              add [bx+si],al
00001C0F  0000              add [bx+si],al
00001C11  0000              add [bx+si],al
00001C13  0000              add [bx+si],al
00001C15  0000              add [bx+si],al
00001C17  0000              add [bx+si],al
00001C19  0000              add [bx+si],al
00001C1B  0000              add [bx+si],al
00001C1D  0000              add [bx+si],al
00001C1F  0000              add [bx+si],al
00001C21  0000              add [bx+si],al
00001C23  0000              add [bx+si],al
00001C25  0000              add [bx+si],al
00001C27  0000              add [bx+si],al
00001C29  0000              add [bx+si],al
00001C2B  0000              add [bx+si],al
00001C2D  0000              add [bx+si],al
00001C2F  0000              add [bx+si],al
00001C31  0000              add [bx+si],al
00001C33  0000              add [bx+si],al
00001C35  0000              add [bx+si],al
00001C37  0002              add [bp+si],al
00001C39  0000              add [bx+si],al
00001C3B  00060000          add [0x0],al
00001C3F  00060000          add [0x0],al
00001C43  000E0000          add [0x0],cl
00001C47  000E0000          add [0x0],cl
00001C4B  000C              add [si],cl
00001C4D  0000              add [bx+si],al
00001C4F  000E0000          add [0x0],cl
00001C53  001C              add [si],bl
00001C55  0000              add [bx+si],al
00001C57  000C              add [si],cl
00001C59  0000              add [bx+si],al
00001C5B  001C              add [si],bl
00001C5D  0000              add [bx+si],al
00001C5F  001C              add [si],bl
00001C61  0000              add [bx+si],al
00001C63  001C              add [si],bl
00001C65  0000              add [bx+si],al
00001C67  001C              add [si],bl
00001C69  0000              add [bx+si],al
00001C6B  0000              add [bx+si],al
00001C6D  0000              add [bx+si],al
00001C6F  0000              add [bx+si],al
00001C71  0000              add [bx+si],al
00001C73  0000              add [bx+si],al
00001C75  0000              add [bx+si],al
00001C77  0000              add [bx+si],al
00001C79  800000            add byte [bx+si],0x0
00001C7C  01800000          add [bx+si+0x0],ax
00001C80  03800000          add ax,[bx+si+0x0]
00001C84  0300              add ax,[bx+si]
00001C86  0000              add [bx+si],al
00001C88  07                pop es
00001C89  800000            add byte [bx+si],0x0
00001C8C  07                pop es
00001C8D  0000              add [bx+si],al
00001C8F  0007              add [bx],al
00001C91  0000              add [bx+si],al
00001C93  000F              add [bx],cl
00001C95  0000              add [bx+si],al
00001C97  000E0000          add [0x0],cl
00001C9B  000F              add [bx],cl
00001C9D  0000              add [bx+si],al
00001C9F  001E0000          add [0x0],bl
00001CA3  000E0000          add [0x0],cl
00001CA7  001F              add [bx],bl
00001CA9  0000              add [bx+si],al
00001CAB  001E0000          add [0x0],bl
00001CAF  001F              add [bx],bl
00001CB1  0000              add [bx+si],al
00001CB3  001E0000          add [0x0],bl
00001CB7  001E0000          add [0x0],bl
00001CBB  001E0000          add [0x0],bl
00001CBF  001E0000          add [0x0],bl
00001CC3  001C              add [si],bl
00001CC5  0000              add [bx+si],al
00001CC7  003F              add [bx],bh
00001CC9  0000              add [bx+si],al
00001CCB  0000              add [bx+si],al
00001CCD  0000              add [bx+si],al
00001CCF  0000              add [bx+si],al
00001CD1  0000              add [bx+si],al
00001CD3  0000              add [bx+si],al
00001CD5  40                inc ax
00001CD6  0000              add [bx+si],al
00001CD8  00C0              add al,al
00001CDA  0000              add [bx+si],al
00001CDC  01C0              add ax,ax
00001CDE  0000              add [bx+si],al
00001CE0  03800000          add ax,[bx+si+0x0]
00001CE4  03800000          add ax,[bx+si+0x0]
00001CE8  07                pop es
00001CE9  800000            add byte [bx+si],0x0
00001CEC  07                pop es
00001CED  0000              add [bx+si],al
00001CEF  0007              add [bx],al
00001CF1  0000              add [bx+si],al
00001CF3  000F              add [bx],cl
00001CF5  0000              add [bx+si],al
00001CF7  000F              add [bx],cl
00001CF9  0000              add [bx+si],al
00001CFB  000E0000          add [0x0],cl
00001CFF  001F              add [bx],bl
00001D01  0000              add [bx+si],al
00001D03  000E0000          add [0x0],cl
00001D07  001F              add [bx],bl
00001D09  0000              add [bx+si],al
00001D0B  001E0000          add [0x0],bl
00001D0F  001F              add [bx],bl
00001D11  0000              add [bx+si],al
00001D13  001E0000          add [0x0],bl
00001D17  001F              add [bx],bl
00001D19  0000              add [bx+si],al
00001D1B  001F              add [bx],bl
00001D1D  0000              add [bx+si],al
00001D1F  001E0000          add [0x0],bl
00001D23  031C              add bx,[si]
00001D25  C00000            rol byte [bx+si],byte 0x0
00001D28  FF00              inc word [bx+si]
00001D2A  002EC706          add [0x6c7],ch
00001D2E  3B5277            cmp dx,[bp+si+0x77]
00001D31  FF1E0AC0          call word far [0xc00a]
00001D35  7810              js 0x1d47
00001D37  2403              and al,0x3
00001D39  B240              mov dl,0x40
00001D3B  F6E2              mul dl
00001D3D  05E84D            add ax,0x4de8
00001D40  8BF0              mov si,ax
00001D42  BD0100            mov bp,0x1
00001D45  EB0E              jmp 0x1d55
00001D47  2401              and al,0x1
00001D49  8AE0              mov ah,al
00001D4B  32C0              xor al,al
00001D4D  05E84E            add ax,0x4ee8
00001D50  8BF0              mov si,ax
00001D52  BD0400            mov bp,0x4
00001D55  8AC3              mov al,bl
00001D57  2401              and al,0x1
00001D59  02C0              add al,al
00001D5B  02C0              add al,al
00001D5D  A24452            mov [0x5244],al
00001D60  D1EB              shr bx,0x0
00001D62  8AFB              mov bh,bl
00001D64  8AD9              mov bl,cl
00001D66  E84F04            call 0x21b8
00001D69  8BF8              mov di,ax
00001D6B  B800B8            mov ax,0xb800
00001D6E  8EC0              mov es,ax
00001D70  8BCD              mov cx,bp
00001D72  51                push cx
00001D73  57                push di
00001D74  B91000            mov cx,0x10
00001D77  51                push cx
00001D78  57                push di
00001D79  B90200            mov cx,0x2
00001D7C  51                push cx
00001D7D  AD                lodsw
00001D7E  86E0              xchg ah,al
00001D80  E850F4            call 0x11d3
00001D83  50                push ax
00001D84  E82500            call 0x1dac
00001D87  58                pop ax
00001D88  E848F4            call 0x11d3
00001D8B  E81E00            call 0x1dac
00001D8E  59                pop cx
00001D8F  E2EB              loop 0x1d7c
00001D91  5F                pop di
00001D92  81C70020          add di,0x2000
00001D96  81FF0080          cmp di,0x8000
00001D9A  7204              jc 0x1da0
00001D9C  81C7A080          add di,0x80a0
00001DA0  59                pop cx
00001DA1  E2D4              loop 0x1d77
00001DA3  5F                pop di
00001DA4  83C708            add di,0x8
00001DA7  59                pop cx
00001DA8  E2C8              loop 0x1d72
00001DAA  1F                pop ds
00001DAB  C3                ret
00001DAC  52                push dx
00001DAD  2E8A0E4452        mov cl,[cs:0x5244]
00001DB2  8BC5              mov ax,bp
00001DB4  8AF8              mov bh,al
00001DB6  32DB              xor bl,bl
00001DB8  32C0              xor al,al
00001DBA  D3EB              shr bx,cl
00001DBC  D3E8              shr ax,cl
00001DBE  0ADC              or bl,ah
00001DC0  8AE0              mov ah,al
00001DC2  F7D3              not bx
00001DC4  F6D4              not ah
00001DC6  26203D            and [es:di],bh
00001DC9  26205D01          and [es:di+0x1],bl
00001DCD  26206502          and [es:di+0x2],ah
00001DD1  58                pop ax
00001DD2  8AF8              mov bh,al
00001DD4  32DB              xor bl,bl
00001DD6  32C0              xor al,al
00001DD8  D3EB              shr bx,cl
00001DDA  D3E8              shr ax,cl
00001DDC  0ADC              or bl,ah
00001DDE  8AE0              mov ah,al
00001DE0  26083D            or [es:di],bh
00001DE3  47                inc di
00001DE4  26081D            or [es:di],bl
00001DE7  47                inc di
00001DE8  260825            or [es:di],ah
00001DEB  C3                ret
00001DEC  0000              add [bx+si],al
00001DEE  0000              add [bx+si],al
00001DF0  0000              add [bx+si],al
00001DF2  0000              add [bx+si],al
00001DF4  0000              add [bx+si],al
00001DF6  0000              add [bx+si],al
00001DF8  0000              add [bx+si],al
00001DFA  0000              add [bx+si],al
00001DFC  0000              add [bx+si],al
00001DFE  0000              add [bx+si],al
00001E00  0000              add [bx+si],al
00001E02  1000              adc [bx+si],al
00001E04  0010              add [bx+si],dl
00001E06  60                pusha
00001E07  0000              add [bx+si],al
00001E09  07                pop es
00001E0A  C00000            rol byte [bx+si],byte 0x0
00001E0D  07                pop es
00001E0E  C00000            rol byte [bx+si],byte 0x0
00001E11  07                pop es
00001E12  C00000            rol byte [bx+si],byte 0x0
00001E15  0C10              or al,0x10
00001E17  0000              add [bx+si],al
00001E19  1000              adc [bx+si],al
00001E1B  0000              add [bx+si],al
00001E1D  0000              add [bx+si],al
00001E1F  0000              add [bx+si],al
00001E21  0000              add [bx+si],al
00001E23  0000              add [bx+si],al
00001E25  0000              add [bx+si],al
00001E27  0000              add [bx+si],al
00001E29  0000              add [bx+si],al
00001E2B  0000              add [bx+si],al
00001E2D  0000              add [bx+si],al
00001E2F  0000              add [bx+si],al
00001E31  0000              add [bx+si],al
00001E33  0000              add [bx+si],al
00001E35  0100              add [bx+si],ax
00001E37  0000              add [bx+si],al
00001E39  0100              add [bx+si],ax
00001E3B  0000              add [bx+si],al
00001E3D  40                inc ax
00001E3E  0400              add al,0x0
00001E40  0001              add [bx+di],al
00001E42  0000              add [bx+si],al
00001E44  0009              add [bx+di],cl
00001E46  2000              and [bx+si],al
00001E48  0003              add [bp+di],al
00001E4A  800004            add byte [bx+si],0x4
00001E4D  57                push di
00001E4E  D480              aam byte 0x80
00001E50  0003              add [bp+di],al
00001E52  800000            add byte [bx+si],0x0
00001E55  0920              or [bx+si],sp
00001E57  0000              add [bx+si],al
00001E59  0100              add [bx+si],ax
00001E5B  0000              add [bx+si],al
00001E5D  40                inc ax
00001E5E  0400              add al,0x0
00001E60  0001              add [bx+di],al
00001E62  0000              add [bx+si],al
00001E64  0001              add [bx+di],al
00001E66  0000              add [bx+si],al
00001E68  0000              add [bx+si],al
00001E6A  0000              add [bx+si],al
00001E6C  0001              add [bx+di],al
00001E6E  0000              add [bx+si],al
00001E70  0001              add [bx+di],al
00001E72  0000              add [bx+si],al
00001E74  0001              add [bx+di],al
00001E76  0000              add [bx+si],al
00001E78  0002              add [bp+si],al
00001E7A  800000            add byte [bx+si],0x0
00001E7D  8380000023        add word [bx+si+0x0],0x23
00001E82  8800              mov [bx+si],al
00001E84  000D              add [di],cl
00001E86  B000              mov al,0x0
00001E88  000B              add [bp+di],cl
00001E8A  E80096            call 0xb48d
00001E8D  FF                db 0xff
00001E8E  FF                db 0xff
00001E8F  B90017            mov cx,0x1700
00001E92  E80000            call 0x1e95
00001E95  0B5800            or bx,[bx+si+0x0]
00001E98  0023              add [bp+di],ah
00001E9A  82                db 0x82
00001E9B  0000              add [bx+si],al
00001E9D  02808002          add al,[bx+si+0x280]
00001EA1  0100              add [bx+si],ax
00001EA3  0000              add [bx+si],al
00001EA5  0100              add [bx+si],ax
00001EA7  0000              add [bx+si],al
00001EA9  0100              add [bx+si],ax
00001EAB  0000              add [bx+si],al
00001EAD  0000              add [bx+si],al
00001EAF  0000              add [bx+si],al
00001EB1  0000              add [bx+si],al
00001EB3  1010              adc [bx+si],dl
00001EB5  0000              add [bx+si],al
00001EB7  0004              add [si],al
00001EB9  0000              add [bx+si],al
00001EBB  800080            add byte [bx+si],0x80
00001EBE  0300              add ax,[bx+si]
00001EC0  00710C            add [bx+di+0xc],dh
00001EC3  0000              add [bx+si],al
00001EC5  3D3800            cmp ax,0x38
00001EC8  0007              add [bx],al
00001ECA  F00000            lock add [bx+si],al
00001ECD  97                xchg ax,di
00001ECE  E500              in ax,byte 0x0
00001ED0  000F              add [bx],cl
00001ED2  F00000            lock add [bx+si],al
00001ED5  1F                pop ds
00001ED6  3800              cmp [bx+si],al
00001ED8  0039              add [bx+di],bh
00001EDA  0E                push cs
00001EDB  0000              add [bx+si],al
00001EDD  E101              loope 0x1ee0
00001EDF  800100            add byte [bx+di],0x0
00001EE2  004004            add [bx+si+0x4],al
00001EE5  0000              add [bx+si],al
00001EE7  0810              or [bx+si],dl
00001EE9  0000              add [bx+si],al
00001EEB  0000              add [bx+si],al
00001EED  0000              add [bx+si],al
00001EEF  0000              add [bx+si],al
00001EF1  0000              add [bx+si],al
00001EF3  0000              add [bx+si],al
00001EF5  0000              add [bx+si],al
00001EF7  0000              add [bx+si],al
00001EF9  0000              add [bx+si],al
00001EFB  0000              add [bx+si],al
00001EFD  0000              add [bx+si],al
00001EFF  0000              add [bx+si],al
00001F01  0000              add [bx+si],al
00001F03  0000              add [bx+si],al
00001F05  0000              add [bx+si],al
00001F07  0000              add [bx+si],al
00001F09  0000              add [bx+si],al
00001F0B  00924AAA          add [bp+si-0x55b6],dl
00001F0F  EB00              jmp 0x1f11
00001F11  0000              add [bx+si],al
00001F13  0000              add [bx+si],al
00001F15  0000              add [bx+si],al
00001F17  0000              add [bx+si],al
00001F19  0000              add [bx+si],al
00001F1B  0000              add [bx+si],al
00001F1D  0000              add [bx+si],al
00001F1F  0000              add [bx+si],al
00001F21  0000              add [bx+si],al
00001F23  0000              add [bx+si],al
00001F25  0000              add [bx+si],al
00001F27  0000              add [bx+si],al
00001F29  0000              add [bx+si],al
00001F2B  0000              add [bx+si],al
00001F2D  0000              add [bx+si],al
00001F2F  0000              add [bx+si],al
00001F31  0000              add [bx+si],al
00001F33  0100              add [bx+si],ax
00001F35  0000              add [bx+si],al
00001F37  0100              add [bx+si],ax
00001F39  0001              add [bx+di],al
00001F3B  0100              add [bx+si],ax
00001F3D  0000              add [bx+si],al
00001F3F  82                db 0x82
00001F40  0000              add [bx+si],al
00001F42  00AB0000          add [bp+di+0x0],ch
00001F46  015D04            add [di+0x4],bx
00001F49  24AE              and al,0xae
00001F4B  EF                out dx,ax
00001F4C  FF                db 0xff
00001F4D  FF                db 0xff
00001F4E  FF                db 0xff
00001F4F  FF04              inc word [si]
00001F51  24AB              and al,0xab
00001F53  EF                out dx,ax
00001F54  0000              add [bx+si],al
00001F56  015D00            add [di+0x0],bx
00001F59  0000              add [bx+si],al
00001F5B  2200              and al,[bx+si]
00001F5D  0000              add [bx+si],al
00001F5F  81000000          add word [bx+si],0x0
00001F63  0100              add [bx+si],ax
00001F65  0000              add [bx+si],al
00001F67  0100              add [bx+si],ax
00001F69  0000              add [bx+si],al
00001F6B  0000              add [bx+si],al
00001F6D  0000              add [bx+si],al
00001F6F  0000              add [bx+si],al
00001F71  0000              add [bx+si],al
00001F73  0000              add [bx+si],al
00001F75  0000              add [bx+si],al
00001F77  0000              add [bx+si],al
00001F79  0000              add [bx+si],al
00001F7B  00810000          add [bx+di+0x0],al
00001F7F  00C4              add ah,al
00001F81  0000              add [bx+si],al
00001F83  00BC0000          add [si+0x0],bh
00001F87  00EE              add dh,ch
00001F89  EA2420FFFF        jmp word 0xffff:word 0x2024
00001F8E  FF                db 0xff
00001F8F  FF                db 0xff
00001F90  FB                sti
00001F91  AA                stosb
00001F92  2420              and al,0x20
00001F94  FD                std
00001F95  40                inc ax
00001F96  0000              add [bx+si],al
00001F98  E600              out byte 0x0,al
00001F9A  0000              add [bx+si],al
00001F9C  40                inc ax
00001F9D  800000            add byte [bx+si],0x0
00001FA0  0020              add [bx+si],ah
00001FA2  0000              add [bx+si],al
00001FA4  0000              add [bx+si],al
00001FA6  0000              add [bx+si],al
00001FA8  0000              add [bx+si],al
00001FAA  0000              add [bx+si],al
00001FAC  0000              add [bx+si],al
00001FAE  0000              add [bx+si],al
00001FB0  0000              add [bx+si],al
00001FB2  0000              add [bx+si],al
00001FB4  0000              add [bx+si],al
00001FB6  0000              add [bx+si],al
00001FB8  0000              add [bx+si],al
00001FBA  0000              add [bx+si],al
00001FBC  0000              add [bx+si],al
00001FBE  0000              add [bx+si],al
00001FC0  0000              add [bx+si],al
00001FC2  0000              add [bx+si],al
00001FC4  0000              add [bx+si],al
00001FC6  0000              add [bx+si],al
00001FC8  0000              add [bx+si],al
00001FCA  0000              add [bx+si],al
00001FCC  D7                xlatb
00001FCD  55                push bp
00001FCE  52                push dx
00001FCF  49                dec cx
00001FD0  0000              add [bx+si],al
00001FD2  0000              add [bx+si],al
00001FD4  0000              add [bx+si],al
00001FD6  0000              add [bx+si],al
00001FD8  0000              add [bx+si],al
00001FDA  0000              add [bx+si],al
00001FDC  0000              add [bx+si],al
00001FDE  0000              add [bx+si],al
00001FE0  0000              add [bx+si],al
00001FE2  0000              add [bx+si],al
00001FE4  0000              add [bx+si],al
00001FE6  0000              add [bx+si],al
00001FE8  0000              add [bx+si],al
00001FEA  0000              add [bx+si],al
00001FEC  0000              add [bx+si],al
00001FEE  0000              add [bx+si],al
00001FF0  0000              add [bx+si],al
00001FF2  0000              add [bx+si],al
00001FF4  0000              add [bx+si],al
00001FF6  0000              add [bx+si],al
00001FF8  0000              add [bx+si],al
00001FFA  0000              add [bx+si],al
00001FFC  0000              add [bx+si],al
00001FFE  0000              add [bx+si],al
00002000  0000              add [bx+si],al
00002002  0000              add [bx+si],al
00002004  0000              add [bx+si],al
00002006  0000              add [bx+si],al
00002008  0000              add [bx+si],al
0000200A  0000              add [bx+si],al
0000200C  A7                cmpsw
0000200D  54                push sp
0000200E  90                nop
0000200F  0400              add al,0x0
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
00002035  0010              add [bx+si],dl
00002037  0000              add [bx+si],al
00002039  0004              add [si],al
0000203B  0000              add [bx+si],al
0000203D  0000              add [bx+si],al
0000203F  800000            add byte [bx+si],0x0
00002042  007100            add [bx+di+0x0],dh
00002045  0000              add [bx+si],al
00002047  3D0000            cmp ax,0x0
0000204A  0007              add [bx],al
0000204C  1004              adc [si],al
0000204E  00970000          add [bx+0x0],dl
00002052  000F              add [bx],cl
00002054  0000              add [bx+si],al
00002056  001F              add [bx],bl
00002058  0000              add [bx+si],al
0000205A  0039              add [bx+di],bh
0000205C  0000              add [bx+si],al
0000205E  00E1              add cl,ah
00002060  0000              add [bx+si],al
00002062  0100              add [bx+si],ax
00002064  0000              add [bx+si],al
00002066  0400              add al,0x0
00002068  0000              add [bx+si],al
0000206A  1000              adc [bx+si],al
0000206C  0000              add [bx+si],al
0000206E  0000              add [bx+si],al
00002070  0010              add [bx+si],dl
00002072  0000              add [bx+si],al
00002074  0000              add [bx+si],al
00002076  0000              add [bx+si],al
00002078  00800000          add [bx+si+0x0],al
0000207C  0300              add ax,[bx+si]
0000207E  0000              add [bx+si],al
00002080  0C00              or al,0x0
00002082  0000              add [bx+si],al
00002084  3800              cmp [bx+si],al
00002086  0000              add [bx+si],al
00002088  F00000            lock add [bx+si],al
0000208B  00E5              add ch,ah
0000208D  0200              add al,[bx+si]
0000208F  10F0              adc al,dh
00002091  0000              add [bx+si],al
00002093  003C              add [si],bh
00002095  0000              add [bx+si],al
00002097  0007              add [bx],al
00002099  0000              add [bx+si],al
0000209B  0000              add [bx+si],al
0000209D  C00000            rol byte [bx+si],byte 0x0
000020A0  0020              add [bx+si],ah
000020A2  0000              add [bx+si],al
000020A4  0004              add [si],al
000020A6  0000              add [bx+si],al
000020A8  0000              add [bx+si],al
000020AA  0000              add [bx+si],al
000020AC  0000              add [bx+si],al
000020AE  0000              add [bx+si],al
000020B0  0000              add [bx+si],al
000020B2  0000              add [bx+si],al
000020B4  0000              add [bx+si],al
000020B6  0000              add [bx+si],al
000020B8  0000              add [bx+si],al
000020BA  0000              add [bx+si],al
000020BC  0000              add [bx+si],al
000020BE  0000              add [bx+si],al
000020C0  0000              add [bx+si],al
000020C2  0000              add [bx+si],al
000020C4  0000              add [bx+si],al
000020C6  0000              add [bx+si],al
000020C8  0000              add [bx+si],al
000020CA  0000              add [bx+si],al
000020CC  2009              and [bx+di],cl
000020CE  2AE5              sub ah,ch
000020D0  0000              add [bx+si],al
000020D2  0000              add [bx+si],al
000020D4  0000              add [bx+si],al
000020D6  0000              add [bx+si],al
000020D8  0000              add [bx+si],al
000020DA  0000              add [bx+si],al
000020DC  0000              add [bx+si],al
000020DE  0000              add [bx+si],al
000020E0  0000              add [bx+si],al
000020E2  0000              add [bx+si],al
000020E4  0000              add [bx+si],al
000020E6  0000              add [bx+si],al
000020E8  0000              add [bx+si],al
000020EA  0000              add [bx+si],al
000020EC  51                push cx
000020ED  1E                push ds
000020EE  56                push si
000020EF  8CC8              mov ax,cs
000020F1  050030            add ax,0x3000
000020F4  8EC0              mov es,ax
000020F6  B82000            mov ax,0x20
000020F9  F7E1              mul cx
000020FB  8BC8              mov cx,ax
000020FD  BF0000            mov di,0x0
00002100  F3A4              rep movsb
00002102  5F                pop di
00002103  07                pop es
00002104  59                pop cx
00002105  8CC8              mov ax,cs
00002107  050030            add ax,0x3000
0000210A  8ED8              mov ds,ax
0000210C  BE0000            mov si,0x0
0000210F  51                push cx
00002110  B90800            mov cx,0x8
00002113  51                push cx
00002114  AD                lodsw
00002115  86E0              xchg ah,al
00002117  8BD0              mov dx,ax
00002119  AD                lodsw
0000211A  86E0              xchg ah,al
0000211C  8BC8              mov cx,ax
0000211E  2E89163152        mov [cs:0x5231],dx
00002123  2E890E3552        mov [cs:0x5235],cx
00002128  0BC2              or ax,dx
0000212A  8BD8              mov bx,ax
0000212C  D1EB              shr bx,0x0
0000212E  0BC3              or ax,bx
00002130  03DB              add bx,bx
00002132  03DB              add bx,bx
00002134  0BC3              or ax,bx
00002136  F7D0              not ax
00002138  2EA33B52          mov [cs:0x523b],ax
0000213C  E81C00            call 0x215b
0000213F  8BC2              mov ax,dx
00002141  86E0              xchg ah,al
00002143  AB                stosw
00002144  E81400            call 0x215b
00002147  8BC2              mov ax,dx
00002149  86E0              xchg ah,al
0000214B  AB                stosw
0000214C  E82E00            call 0x217d
0000214F  26885600          mov [es:bp+0x0],dl
00002153  45                inc bp
00002154  59                pop cx
00002155  E2BC              loop 0x2113
00002157  59                pop cx
00002158  E2B5              loop 0x210f
0000215A  C3                ret
0000215B  B90400            mov cx,0x4
0000215E  2ED1063552        rol word [cs:0x5235],0x0
00002163  13D2              adc dx,dx
00002165  2ED1063152        rol word [cs:0x5231],0x0
0000216A  13D2              adc dx,dx
0000216C  2ED1063552        rol word [cs:0x5235],0x0
00002171  13D2              adc dx,dx
00002173  2ED1063152        rol word [cs:0x5231],0x0
00002178  13D2              adc dx,dx
0000217A  E2E2              loop 0x215e
0000217C  C3                ret
0000217D  B90800            mov cx,0x8
00002180  32C0              xor al,al
00002182  2ED1063B52        rol word [cs:0x523b],0x0
00002187  12C0              adc al,al
00002189  2ED1063B52        rol word [cs:0x523b],0x0
0000218E  12C0              adc al,al
00002190  3C03              cmp al,0x3
00002192  7402              jz 0x2196
00002194  32C0              xor al,al
00002196  2401              and al,0x1
00002198  02D2              add dl,dl
0000219A  0AD0              or dl,al
0000219C  E2E2              loop 0x2180
0000219E  C3                ret
0000219F  B90400            mov cx,0x4
000021A2  02D2              add dl,dl
000021A4  1AF6              sbb dh,dh
000021A6  80E60F            and dh,0xf
000021A9  03C0              add ax,ax
000021AB  03C0              add ax,ax
000021AD  03C0              add ax,ax
000021AF  03C0              add ax,ax
000021B1  0AC6              or al,dh
000021B3  E2ED              loop 0x21a2
000021B5  86E0              xchg ah,al
000021B7  C3                ret
000021B8  8AF3              mov dh,bl
000021BA  D0CE              ror dh,0x0
000021BC  D0CE              ror dh,0x0
000021BE  D0CE              ror dh,0x0
000021C0  81E20060          and dx,0x6000
000021C4  B8A000            mov ax,0xa0
000021C7  D0EB              shr bl,0x0
000021C9  D0EB              shr bl,0x0
000021CB  F6E3              mul bl
000021CD  03C2              add ax,dx
000021CF  8ADF              mov bl,bh
000021D1  32FF              xor bh,bh
000021D3  03C3              add ax,bx
000021D5  C3                ret
000021D6  DE51EE            ficom word [bx+di-0x12]
000021D9  51                push cx
000021DA  FE                db 0xfe
000021DB  51                push cx
000021DC  0E                push cs
000021DD  52                push dx
000021DE  1E                push ds
000021DF  52                push dx
000021E0  0E                push cs
000021E1  52                push dx
000021E2  0007              add [bx],al
000021E4  0402              add al,0x2
000021E6  07                pop es
000021E7  0F                db 0x0f
000021E8  0C0E              or al,0xe
000021EA  040C              add al,0xc
000021EC  0C0E              or al,0xe
000021EE  020E0E0A          add cl,[0xa0e]
000021F2  0004              add [si],al
000021F4  0308              add cx,[bx+si]
000021F6  040C              add al,0xc
000021F8  07                pop es
000021F9  06                push es
000021FA  0307              add ax,[bx]
000021FC  0B0A              or cx,[bp+si]
000021FE  08060A0E          or [0xe0a],al
00002202  0007              add [bx],al
00002204  0301              add ax,[bx+di]
00002206  07                pop es
00002207  0F0B              ud2
00002209  0903              or [bp+di],ax
0000220B  0B0B              or cx,[bp+di]
0000220D  0901              or [bx+di],ax
0000220F  0909              or [bx+di],cx
00002211  0900              or [bx+si],ax
00002213  0108              add [bx+si],cx
00002215  050109            add ax,0x901
00002218  07                pop es
00002219  050807            add ax,0x708
0000221C  0E                push cs
0000221D  0C05              or al,0x5
0000221F  050C0D            add ax,0xd0c
00002222  0008              add [bx+si],cl
00002224  0105              add [di],ax
00002226  080E070C          or [0xc07],cl
0000222A  0107              add [bx],ax
0000222C  0905              or [di],ax
0000222E  050C05            add ax,0x50c
00002231  0DC300            or ax,0xc3
00002234  0000              add [bx+si],al
00002236  0000              add [bx+si],al
00002238  0000              add [bx+si],al
0000223A  0000              add [bx+si],al
0000223C  0000              add [bx+si],al
0000223E  0000              add [bx+si],al
00002240  0000              add [bx+si],al
00002242  0000              add [bx+si],al
00002244  0000              add [bx+si],al
00002246  0000              add [bx+si],al
00002248  0000              add [bx+si],al
0000224A  0000              add [bx+si],al
0000224C  0000              add [bx+si],al
0000224E  0000              add [bx+si],al
00002250  0000              add [bx+si],al
00002252  0000              add [bx+si],al
00002254  0000              add [bx+si],al
00002256  0000              add [bx+si],al
00002258  0000              add [bx+si],al
0000225A  0000              add [bx+si],al
0000225C  0000              add [bx+si],al
0000225E  0000              add [bx+si],al
00002260  0000              add [bx+si],al
00002262  0000              add [bx+si],al
00002264  0000              add [bx+si],al
00002266  0000              add [bx+si],al
00002268  0000              add [bx+si],al
0000226A  0000              add [bx+si],al
0000226C  0000              add [bx+si],al
0000226E  0000              add [bx+si],al
00002270  0000              add [bx+si],al
00002272  0000              add [bx+si],al
00002274  0000              add [bx+si],al
00002276  0000              add [bx+si],al
00002278  0000              add [bx+si],al
0000227A  0000              add [bx+si],al
0000227C  0000              add [bx+si],al
0000227E  0000              add [bx+si],al
00002280  0000              add [bx+si],al
00002282  0000              add [bx+si],al
00002284  0000              add [bx+si],al
00002286  0000              add [bx+si],al
00002288  0000              add [bx+si],al
0000228A  0000              add [bx+si],al
0000228C  0000              add [bx+si],al
0000228E  0000              add [bx+si],al
00002290  0000              add [bx+si],al
00002292  0000              add [bx+si],al
00002294  0000              add [bx+si],al
00002296  0000              add [bx+si],al
00002298  0000              add [bx+si],al
0000229A  0000              add [bx+si],al
0000229C  0000              add [bx+si],al
0000229E  0000              add [bx+si],al
000022A0  0000              add [bx+si],al
000022A2  0000              add [bx+si],al
000022A4  0000              add [bx+si],al
000022A6  0000              add [bx+si],al
000022A8  0000              add [bx+si],al
000022AA  0000              add [bx+si],al
000022AC  0000              add [bx+si],al
000022AE  0000              add [bx+si],al
000022B0  0000              add [bx+si],al
000022B2  0000              add [bx+si],al
000022B4  0000              add [bx+si],al
000022B6  0000              add [bx+si],al
000022B8  0000              add [bx+si],al
000022BA  0000              add [bx+si],al
000022BC  0000              add [bx+si],al
000022BE  0000              add [bx+si],al
000022C0  0000              add [bx+si],al
000022C2  0000              add [bx+si],al
000022C4  0000              add [bx+si],al
000022C6  0000              add [bx+si],al
000022C8  0000              add [bx+si],al
000022CA  0000              add [bx+si],al
000022CC  0000              add [bx+si],al
000022CE  0000              add [bx+si],al
000022D0  0000              add [bx+si],al
000022D2  0000              add [bx+si],al
000022D4  0000              add [bx+si],al
000022D6  0000              add [bx+si],al
000022D8  0000              add [bx+si],al
000022DA  0000              add [bx+si],al
000022DC  0000              add [bx+si],al
000022DE  0000              add [bx+si],al
000022E0  0000              add [bx+si],al
000022E2  0000              add [bx+si],al
000022E4  0000              add [bx+si],al
000022E6  0000              add [bx+si],al
000022E8  0000              add [bx+si],al
000022EA  0000              add [bx+si],al
000022EC  0000              add [bx+si],al
000022EE  0000              add [bx+si],al
000022F0  0000              add [bx+si],al
000022F2  0000              add [bx+si],al
000022F4  0000              add [bx+si],al
000022F6  0000              add [bx+si],al
000022F8  0000              add [bx+si],al
000022FA  0000              add [bx+si],al
000022FC  0000              add [bx+si],al
000022FE  0000              add [bx+si],al
00002300  0000              add [bx+si],al
00002302  0000              add [bx+si],al
00002304  0000              add [bx+si],al
00002306  0000              add [bx+si],al
00002308  0000              add [bx+si],al
0000230A  0000              add [bx+si],al
0000230C  0000              add [bx+si],al
0000230E  0000              add [bx+si],al
00002310  0000              add [bx+si],al
00002312  0000              add [bx+si],al
00002314  0000              add [bx+si],al
00002316  0000              add [bx+si],al
00002318  0000              add [bx+si],al
0000231A  0000              add [bx+si],al
0000231C  0000              add [bx+si],al
0000231E  0000              add [bx+si],al
00002320  0000              add [bx+si],al
00002322  0000              add [bx+si],al
00002324  0000              add [bx+si],al
00002326  0000              add [bx+si],al
00002328  0000              add [bx+si],al
0000232A  0000              add [bx+si],al
0000232C  0000              add [bx+si],al
0000232E  0000              add [bx+si],al
00002330  0000              add [bx+si],al
00002332  0000              add [bx+si],al
00002334  0000              add [bx+si],al
00002336  0000              add [bx+si],al
00002338  0000              add [bx+si],al
0000233A  0000              add [bx+si],al
0000233C  0000              add [bx+si],al
0000233E  0000              add [bx+si],al
00002340  0000              add [bx+si],al
00002342  0000              add [bx+si],al
00002344  0000              add [bx+si],al
00002346  0000              add [bx+si],al
00002348  0000              add [bx+si],al
0000234A  0000              add [bx+si],al
0000234C  0000              add [bx+si],al
0000234E  0000              add [bx+si],al
00002350  0000              add [bx+si],al
00002352  0000              add [bx+si],al
00002354  0000              add [bx+si],al
00002356  0000              add [bx+si],al
00002358  0000              add [bx+si],al
0000235A  0000              add [bx+si],al
0000235C  0000              add [bx+si],al
0000235E  0000              add [bx+si],al
00002360  0000              add [bx+si],al
00002362  0000              add [bx+si],al
00002364  0000              add [bx+si],al
00002366  0000              add [bx+si],al
00002368  0000              add [bx+si],al
0000236A  0000              add [bx+si],al
0000236C  0000              add [bx+si],al
0000236E  0000              add [bx+si],al
00002370  0000              add [bx+si],al
00002372  0000              add [bx+si],al
00002374  0000              add [bx+si],al
00002376  0000              add [bx+si],al
00002378  0000              add [bx+si],al
0000237A  0000              add [bx+si],al
0000237C  0000              add [bx+si],al
0000237E  0000              add [bx+si],al
00002380  0000              add [bx+si],al
00002382  0000              add [bx+si],al
00002384  0000              add [bx+si],al
00002386  0000              add [bx+si],al
00002388  0000              add [bx+si],al
0000238A  0000              add [bx+si],al
0000238C  0000              add [bx+si],al
0000238E  0000              add [bx+si],al
00002390  0000              add [bx+si],al
00002392  0000              add [bx+si],al
00002394  0000              add [bx+si],al
00002396  0000              add [bx+si],al
00002398  0000              add [bx+si],al
0000239A  0000              add [bx+si],al
0000239C  0000              add [bx+si],al
0000239E  0000              add [bx+si],al
000023A0  0000              add [bx+si],al
000023A2  0000              add [bx+si],al
000023A4  0000              add [bx+si],al
000023A6  0000              add [bx+si],al
000023A8  0000              add [bx+si],al
000023AA  0000              add [bx+si],al
000023AC  0000              add [bx+si],al
000023AE  0000              add [bx+si],al
000023B0  0000              add [bx+si],al
000023B2  0000              add [bx+si],al
000023B4  0000              add [bx+si],al
000023B6  0000              add [bx+si],al
000023B8  0000              add [bx+si],al
000023BA  0000              add [bx+si],al
000023BC  0000              add [bx+si],al
000023BE  0000              add [bx+si],al
000023C0  0000              add [bx+si],al
000023C2  0000              add [bx+si],al
000023C4  0000              add [bx+si],al
000023C6  0000              add [bx+si],al
000023C8  0000              add [bx+si],al
000023CA  0000              add [bx+si],al
000023CC  0000              add [bx+si],al
000023CE  0000              add [bx+si],al
000023D0  0000              add [bx+si],al
000023D2  0000              add [bx+si],al
000023D4  0000              add [bx+si],al
000023D6  0000              add [bx+si],al
000023D8  0000              add [bx+si],al
000023DA  0000              add [bx+si],al
000023DC  0000              add [bx+si],al
000023DE  0000              add [bx+si],al
000023E0  0000              add [bx+si],al
000023E2  0000              add [bx+si],al
000023E4  0000              add [bx+si],al
000023E6  0000              add [bx+si],al
000023E8  0000              add [bx+si],al
000023EA  0000              add [bx+si],al
000023EC  0000              add [bx+si],al
000023EE  0000              add [bx+si],al
000023F0  0000              add [bx+si],al
000023F2  0000              add [bx+si],al
000023F4  0000              add [bx+si],al
000023F6  0000              add [bx+si],al
000023F8  0000              add [bx+si],al
000023FA  0000              add [bx+si],al
000023FC  0000              add [bx+si],al
000023FE  0000              add [bx+si],al
00002400  0000              add [bx+si],al
00002402  0000              add [bx+si],al
00002404  0000              add [bx+si],al
00002406  0000              add [bx+si],al
00002408  0000              add [bx+si],al
0000240A  0000              add [bx+si],al
0000240C  0000              add [bx+si],al
0000240E  0000              add [bx+si],al
00002410  0000              add [bx+si],al
00002412  0000              add [bx+si],al
00002414  0000              add [bx+si],al
00002416  0000              add [bx+si],al
00002418  0000              add [bx+si],al
0000241A  0000              add [bx+si],al
0000241C  0000              add [bx+si],al
0000241E  0000              add [bx+si],al
00002420  0000              add [bx+si],al
00002422  0000              add [bx+si],al
00002424  0000              add [bx+si],al
00002426  0000              add [bx+si],al
00002428  0000              add [bx+si],al
0000242A  0000              add [bx+si],al
0000242C  0000              add [bx+si],al
0000242E  0000              add [bx+si],al
00002430  0000              add [bx+si],al
00002432  0000              add [bx+si],al
00002434  0000              add [bx+si],al
00002436  0000              add [bx+si],al
00002438  0000              add [bx+si],al
0000243A  0000              add [bx+si],al
0000243C  0000              add [bx+si],al
0000243E  0000              add [bx+si],al
00002440  0000              add [bx+si],al
00002442  0000              add [bx+si],al
00002444  0000              add [bx+si],al
00002446  0000              add [bx+si],al
00002448  0000              add [bx+si],al
0000244A  0000              add [bx+si],al
0000244C  0000              add [bx+si],al
0000244E  0000              add [bx+si],al
00002450  0000              add [bx+si],al
00002452  0000              add [bx+si],al
00002454  0000              add [bx+si],al
00002456  0000              add [bx+si],al
00002458  0000              add [bx+si],al
0000245A  0000              add [bx+si],al
0000245C  0000              add [bx+si],al
0000245E  0000              add [bx+si],al
00002460  0000              add [bx+si],al
00002462  0000              add [bx+si],al
00002464  0000              add [bx+si],al
00002466  0000              add [bx+si],al
00002468  0000              add [bx+si],al
0000246A  0000              add [bx+si],al
0000246C  0000              add [bx+si],al
0000246E  0000              add [bx+si],al
00002470  0000              add [bx+si],al
00002472  0000              add [bx+si],al
00002474  0000              add [bx+si],al
00002476  0000              add [bx+si],al
00002478  0000              add [bx+si],al
0000247A  0000              add [bx+si],al
0000247C  0000              add [bx+si],al
0000247E  0000              add [bx+si],al
00002480  0000              add [bx+si],al
00002482  0000              add [bx+si],al
00002484  0000              add [bx+si],al
00002486  0000              add [bx+si],al
00002488  0000              add [bx+si],al
0000248A  0000              add [bx+si],al
0000248C  0000              add [bx+si],al
0000248E  0000              add [bx+si],al
00002490  0000              add [bx+si],al
00002492  0000              add [bx+si],al
00002494  0000              add [bx+si],al
00002496  0000              add [bx+si],al
00002498  0000              add [bx+si],al
0000249A  0000              add [bx+si],al
0000249C  0000              add [bx+si],al
0000249E  0000              add [bx+si],al
000024A0  0000              add [bx+si],al
000024A2  0000              add [bx+si],al
000024A4  0000              add [bx+si],al
000024A6  0000              add [bx+si],al
000024A8  0000              add [bx+si],al
000024AA  0000              add [bx+si],al
000024AC  0000              add [bx+si],al
000024AE  0000              add [bx+si],al
000024B0  0000              add [bx+si],al
000024B2  0000              add [bx+si],al
000024B4  0000              add [bx+si],al
000024B6  0000              add [bx+si],al
000024B8  0000              add [bx+si],al
000024BA  0000              add [bx+si],al
000024BC  0000              add [bx+si],al
000024BE  0000              add [bx+si],al
000024C0  0000              add [bx+si],al
000024C2  0000              add [bx+si],al
000024C4  0000              add [bx+si],al
000024C6  0000              add [bx+si],al
000024C8  0000              add [bx+si],al
000024CA  0000              add [bx+si],al
000024CC  0000              add [bx+si],al
000024CE  0000              add [bx+si],al
000024D0  0000              add [bx+si],al
000024D2  0000              add [bx+si],al
000024D4  0000              add [bx+si],al
000024D6  0000              add [bx+si],al
000024D8  0000              add [bx+si],al
000024DA  0000              add [bx+si],al
000024DC  0000              add [bx+si],al
000024DE  0000              add [bx+si],al
000024E0  0000              add [bx+si],al
000024E2  0000              add [bx+si],al
000024E4  0000              add [bx+si],al
000024E6  0000              add [bx+si],al
000024E8  0000              add [bx+si],al
000024EA  0000              add [bx+si],al
000024EC  0000              add [bx+si],al
000024EE  0000              add [bx+si],al
000024F0  0000              add [bx+si],al
000024F2  0000              add [bx+si],al
000024F4  0000              add [bx+si],al
000024F6  0000              add [bx+si],al
000024F8  0000              add [bx+si],al
000024FA  0000              add [bx+si],al
000024FC  0000              add [bx+si],al
000024FE  0000              add [bx+si],al
00002500  0000              add [bx+si],al
00002502  0000              add [bx+si],al
00002504  0000              add [bx+si],al
00002506  0000              add [bx+si],al
00002508  0000              add [bx+si],al
0000250A  0000              add [bx+si],al
0000250C  0000              add [bx+si],al
0000250E  0000              add [bx+si],al
00002510  0000              add [bx+si],al
00002512  0000              add [bx+si],al
00002514  0000              add [bx+si],al
00002516  0000              add [bx+si],al
00002518  0000              add [bx+si],al
0000251A  0000              add [bx+si],al
0000251C  0000              add [bx+si],al
0000251E  0000              add [bx+si],al
00002520  0000              add [bx+si],al
00002522  0000              add [bx+si],al
00002524  0000              add [bx+si],al
00002526  0000              add [bx+si],al
00002528  0000              add [bx+si],al
0000252A  0000              add [bx+si],al
0000252C  0000              add [bx+si],al
0000252E  0000              add [bx+si],al
00002530  0000              add [bx+si],al
00002532  0000              add [bx+si],al
00002534  0000              add [bx+si],al
00002536  0000              add [bx+si],al
00002538  0000              add [bx+si],al
0000253A  0000              add [bx+si],al
0000253C  0000              add [bx+si],al
0000253E  0000              add [bx+si],al
00002540  0000              add [bx+si],al
00002542  0000              add [bx+si],al
00002544  0000              add [bx+si],al
00002546  0000              add [bx+si],al
00002548  0000              add [bx+si],al
0000254A  0000              add [bx+si],al
0000254C  0000              add [bx+si],al
0000254E  0000              add [bx+si],al
00002550  0000              add [bx+si],al
00002552  0000              add [bx+si],al
00002554  0000              add [bx+si],al
00002556  0000              add [bx+si],al
00002558  0000              add [bx+si],al
0000255A  0000              add [bx+si],al
0000255C  0000              add [bx+si],al
0000255E  0000              add [bx+si],al
00002560  0000              add [bx+si],al
00002562  0000              add [bx+si],al
00002564  0000              add [bx+si],al
00002566  0000              add [bx+si],al
00002568  0000              add [bx+si],al
0000256A  0000              add [bx+si],al
0000256C  0000              add [bx+si],al
0000256E  0000              add [bx+si],al
00002570  0000              add [bx+si],al
00002572  0000              add [bx+si],al
00002574  0000              add [bx+si],al
00002576  0000              add [bx+si],al
00002578  0000              add [bx+si],al
0000257A  0000              add [bx+si],al
0000257C  0000              add [bx+si],al
0000257E  0000              add [bx+si],al
00002580  0000              add [bx+si],al
00002582  0000              add [bx+si],al
00002584  0000              add [bx+si],al
00002586  0000              add [bx+si],al
00002588  0000              add [bx+si],al
0000258A  0000              add [bx+si],al
0000258C  0000              add [bx+si],al
0000258E  0000              add [bx+si],al
00002590  0000              add [bx+si],al
00002592  0000              add [bx+si],al
00002594  0000              add [bx+si],al
00002596  0000              add [bx+si],al
00002598  0000              add [bx+si],al
0000259A  0000              add [bx+si],al
0000259C  0000              add [bx+si],al
0000259E  0000              add [bx+si],al
000025A0  0000              add [bx+si],al
000025A2  0000              add [bx+si],al
000025A4  0000              add [bx+si],al
000025A6  0000              add [bx+si],al
000025A8  0000              add [bx+si],al
000025AA  0000              add [bx+si],al
000025AC  0000              add [bx+si],al
000025AE  0000              add [bx+si],al
000025B0  0000              add [bx+si],al
000025B2  0000              add [bx+si],al
000025B4  0000              add [bx+si],al
000025B6  0000              add [bx+si],al
000025B8  0000              add [bx+si],al
000025BA  0000              add [bx+si],al
000025BC  0000              add [bx+si],al
000025BE  0000              add [bx+si],al
000025C0  0000              add [bx+si],al
000025C2  0000              add [bx+si],al
000025C4  0000              add [bx+si],al
000025C6  0000              add [bx+si],al
000025C8  0000              add [bx+si],al
000025CA  0000              add [bx+si],al
000025CC  0000              add [bx+si],al
000025CE  0000              add [bx+si],al
000025D0  0000              add [bx+si],al
000025D2  0000              add [bx+si],al
000025D4  0000              add [bx+si],al
000025D6  0000              add [bx+si],al
000025D8  0000              add [bx+si],al
000025DA  0000              add [bx+si],al
000025DC  0000              add [bx+si],al
000025DE  0000              add [bx+si],al
000025E0  0000              add [bx+si],al
000025E2  0000              add [bx+si],al
000025E4  0000              add [bx+si],al
000025E6  0000              add [bx+si],al
000025E8  0000              add [bx+si],al
000025EA  0000              add [bx+si],al
000025EC  0000              add [bx+si],al
000025EE  0000              add [bx+si],al
000025F0  0000              add [bx+si],al
000025F2  0000              add [bx+si],al
000025F4  0000              add [bx+si],al
000025F6  0000              add [bx+si],al
000025F8  0000              add [bx+si],al
000025FA  0000              add [bx+si],al
000025FC  0000              add [bx+si],al
000025FE  0000              add [bx+si],al
00002600  0000              add [bx+si],al
00002602  0000              add [bx+si],al
00002604  0000              add [bx+si],al
00002606  0000              add [bx+si],al
00002608  0000              add [bx+si],al
0000260A  0000              add [bx+si],al
0000260C  0000              add [bx+si],al
0000260E  0000              add [bx+si],al
00002610  0000              add [bx+si],al
00002612  0000              add [bx+si],al
00002614  0000              add [bx+si],al
00002616  0000              add [bx+si],al
00002618  0000              add [bx+si],al
0000261A  0000              add [bx+si],al
0000261C  0000              add [bx+si],al
0000261E  0000              add [bx+si],al
00002620  0000              add [bx+si],al
00002622  0000              add [bx+si],al
00002624  0000              add [bx+si],al
00002626  0000              add [bx+si],al
00002628  0000              add [bx+si],al
0000262A  0000              add [bx+si],al
0000262C  0000              add [bx+si],al
0000262E  0000              add [bx+si],al
00002630  0000              add [bx+si],al
00002632  0000              add [bx+si],al
00002634  0000              add [bx+si],al
00002636  0000              add [bx+si],al
00002638  0000              add [bx+si],al
0000263A  0000              add [bx+si],al
0000263C  0000              add [bx+si],al
0000263E  0000              add [bx+si],al
00002640  0000              add [bx+si],al
00002642  0000              add [bx+si],al
00002644  0000              add [bx+si],al
00002646  0000              add [bx+si],al
00002648  0000              add [bx+si],al
0000264A  0000              add [bx+si],al
0000264C  0000              add [bx+si],al
0000264E  0000              add [bx+si],al
00002650  0000              add [bx+si],al
00002652  0000              add [bx+si],al
00002654  0000              add [bx+si],al
00002656  0000              add [bx+si],al
00002658  0000              add [bx+si],al
0000265A  0000              add [bx+si],al
0000265C  0000              add [bx+si],al
0000265E  0000              add [bx+si],al
00002660  0000              add [bx+si],al
00002662  0000              add [bx+si],al
00002664  0000              add [bx+si],al
00002666  0000              add [bx+si],al
00002668  0000              add [bx+si],al
0000266A  0000              add [bx+si],al
0000266C  0000              add [bx+si],al
0000266E  0000              add [bx+si],al
00002670  0000              add [bx+si],al
00002672  0000              add [bx+si],al
00002674  0000              add [bx+si],al
00002676  0000              add [bx+si],al
00002678  0000              add [bx+si],al
0000267A  0000              add [bx+si],al
0000267C  0000              add [bx+si],al
0000267E  0000              add [bx+si],al
00002680  0000              add [bx+si],al
00002682  0000              add [bx+si],al
00002684  0000              add [bx+si],al
00002686  0000              add [bx+si],al
00002688  0000              add [bx+si],al
0000268A  0000              add [bx+si],al
0000268C  0000              add [bx+si],al
0000268E  0000              add [bx+si],al
00002690  0000              add [bx+si],al
00002692  0000              add [bx+si],al
00002694  0000              add [bx+si],al
00002696  0000              add [bx+si],al
00002698  0000              add [bx+si],al
0000269A  0000              add [bx+si],al
0000269C  0000              add [bx+si],al
0000269E  0000              add [bx+si],al
000026A0  0000              add [bx+si],al
000026A2  0000              add [bx+si],al
000026A4  0000              add [bx+si],al
