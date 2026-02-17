00000000  2E3F              cs aas
00000002  0000              add [bx+si],al
00000004  42                inc dx
00000005  60                pusha
00000006  DC7923            fdivr qword [bx+di+0x23]
00000009  97                xchg ax,di
0000000A  3F                aas
0000000B  97                xchg ax,di
0000000C  E591              in ax,byte 0x91
0000000E  F6910A92          not byte [bx+di-0x6df6]
00000012  22923492          and dl,[bp+si-0x6dcc]
00000016  43                inc bx
00000017  92                xchg ax,dx
00000018  55                push bp
00000019  92                xchg ax,dx
0000001A  6C                insb
0000001B  92                xchg ax,dx
0000001C  B492              mov ah,0x92
0000001E  0A936293          or dl,[bp+di-0x6c9e]
00000022  9A93C5930C        call word 0xc93:word 0xc593
00000027  94                xchg ax,sp
00000028  52                push dx
00000029  94                xchg ax,sp
0000002A  9A946E6D82        call word 0x826d:word 0x6e94
0000002F  6D                insw
00000030  8E6DE1            mov gs,word [di-0x1f]
00000033  94                xchg ax,sp
00000034  A097D5            mov al,[0xd597]
00000037  96                xchg ax,si
00000038  B597              mov ch,0x97
0000003A  A19651            mov ax,[0x5196]
0000003D  98                cbw
0000003E  1186DB83          adc [bp-0x7c25],ax
00000042  C5985B97          lds bx,word [bx+si-0x68a5]
00000046  FA                cli
00000047  BC0020            mov sp,0x2000
0000004A  FB                sti
0000004B  0E                push cs
0000004C  1F                pop ds
0000004D  C606209F00        mov byte [0x9f20],0x0
00000052  C606219F00        mov byte [0x9f21],0x0
00000057  C606229F00        mov byte [0x9f22],0x0
0000005C  B8FFFF            mov ax,0xffff
0000005F  A280EB            mov [0xeb80],al
00000062  A2A0ED            mov [0xeda0],al
00000065  A315EB            mov [0xeb15],ax
00000068  C6062EFF00        mov byte [0xff2e],0x0
0000006D  C6062FFF00        mov byte [0xff2f],0x0
00000072  C60630FF00        mov byte [0xff30],0x0
00000077  C606019F00        mov byte [0x9f01],0x0
0000007C  F60634FFFF        test byte [0xff34],0xff
00000081  7503              jnz 0x86
00000083  E9F700            jmp 0x17d
00000086  E8D00B            call 0xc59
00000089  B80100            mov ax,0x1
0000008C  CD60              int byte 0x60
0000008E  C606029FFF        mov byte [0x9f02],0xff
00000093  A0C800            mov al,[0xc8]
00000096  B30B              mov bl,0xb
00000098  F6E3              mul bl
0000009A  05539E            add ax,0x9e53
0000009D  8BF0              mov si,ax
0000009F  2E8E062CFF        mov es,word [cs:0xff2c]
000000A4  BF0030            mov di,0x3000
000000A7  B005              mov al,0x5
000000A9  2EFF160C01        call word near [cs:0x10c]
000000AE  BEF19B            mov si,0x9bf1
000000B1  2E8E062CFF        mov es,word [cs:0xff2c]
000000B6  BF0040            mov di,0x4000
000000B9  B002              mov al,0x2
000000BB  2EFF160C01        call word near [cs:0x10c]
000000C0  2EFF161C30        call word near [cs:0x301c]
000000C5  C60637FF00        mov byte [0xff37],0x0
000000CA  2EFF161630        call word near [cs:0x3016]
000000CF  2EFF161430        call word near [cs:0x3014]
000000D4  E8A913            call 0x1480
000000D7  C606029F00        mov byte [0x9f02],0x0
000000DC  1E                push ds
000000DD  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000000E2  BE0030            mov si,0x3000
000000E5  33C0              xor ax,ax
000000E7  CD60              int byte 0x60
000000E9  1F                pop ds
000000EA  B90600            mov cx,0x6
000000ED  51                push cx
000000EE  C6061AFF00        mov byte [0xff1a],0x0
000000F3  803E1AFF41        cmp byte [0xff1a],0x41
000000F8  72F9              jc 0xf3
000000FA  BB280C            mov bx,0xc28
000000FD  B92838            mov cx,0x3828
00000100  32C0              xor al,al
00000102  2EFF160020        call word near [cs:0x2000]
00000107  C6061AFF00        mov byte [0xff1a],0x0
0000010C  803E1AFF41        cmp byte [0xff1a],0x41
00000111  72F9              jc 0x10c
00000113  2EFF161C30        call word near [cs:0x301c]
00000118  59                pop cx
00000119  E2D2              loop 0xed
0000011B  8B3600C0          mov si,[0xc000]
0000011F  83C605            add si,0x5
00000122  8A04              mov al,[si]
00000124  8844FF            mov [si-0x1],al
00000127  B30B              mov bl,0xb
00000129  F6E3              mul bl
0000012B  058D9D            add ax,0x9d8d
0000012E  8BF0              mov si,ax
00000130  2E8E062CFF        mov es,word [cs:0xff2c]
00000135  BF0040            mov di,0x4000
00000138  B002              mov al,0x2
0000013A  2EFF160C01        call word near [cs:0x10c]
0000013F  1E                push ds
00000140  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000145  BE0040            mov si,0x4000
00000148  BD00A0            mov bp,0xa000
0000014B  B90001            mov cx,0x100
0000014E  2EFF162830        call word near [cs:0x3028]
00000153  1F                pop ds
00000154  8B3602A0          mov si,[0xa002]
00000158  83C608            add si,0x8
0000015B  AC                lodsb
0000015C  A2019F            mov [0x9f01],al
0000015F  8B34              mov si,[si]
00000161  2EFF161020        call word near [cs:0x2010]
00000166  8B3602A0          mov si,[0xa002]
0000016A  83C603            add si,0x3
0000016D  8B1C              mov bx,[si]
0000016F  53                push bx
00000170  2EFF160A20        call word near [cs:0x200a]
00000175  5B                pop bx
00000176  2EFF160C20        call word near [cs:0x200c]
0000017B  EB16              jmp 0x193
0000017D  2EFF161220        call word near [cs:0x2012]
00000182  E8B20A            call 0xc37
00000185  8B360EC0          mov si,[0xc00e]
00000189  2EFF161020        call word near [cs:0x2010]
0000018E  2EFF161620        call word near [cs:0x2016]
00000193  2EFF160620        call word near [cs:0x2006]
00000198  2EFF160820        call word near [cs:0x2008]
0000019D  2EFF161420        call word near [cs:0x2014]
000001A2  F606E600FF        test byte [0xe6],0xff
000001A7  7503              jnz 0x1ac
000001A9  E99500            jmp 0x241
000001AC  C606269FFF        mov byte [0x9f26],0xff
000001B1  C70680002900      mov word [0x80],0x29
000001B7  C606830005        mov byte [0x83],0x5
000001BC  E8DD0A            call 0xc9c
000001BF  E8F511            call 0x13b7
000001C2  E8DA0D            call 0xf9f
000001C5  F606E600FF        test byte [0xe6],0xff
000001CA  75F6              jnz 0x1c2
000001CC  1E                push ds
000001CD  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000001D2  BE0030            mov si,0x3000
000001D5  33C0              xor ax,ax
000001D7  CD60              int byte 0x60
000001D9  1F                pop ds
000001DA  C606029F00        mov byte [0x9f02],0x0
000001DF  B41E              mov ah,0x1e
000001E1  B001              mov al,0x1
000001E3  2EFF160C01        call word near [cs:0x10c]
000001E8  C60634FFFF        mov byte [0xff34],0xff
000001ED  C606279FFF        mov byte [0x9f27],0xff
000001F2  8B3600C0          mov si,[0xc000]
000001F6  AC                lodsb
000001F7  E89D1C            call 0x1e97
000001FA  E8C21C            call 0x1ebf
000001FD  1E                push ds
000001FE  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000203  BE3080            mov si,0x8030
00000206  B96600            mov cx,0x66
00000209  2EFF164420        call word near [cs:0x2044]
0000020E  2EFF162A30        call word near [cs:0x302a]
00000213  1F                pop ds
00000214  1E                push ds
00000215  2EFF161A30        call word near [cs:0x301a]
0000021A  B91800            mov cx,0x18
0000021D  2EFF164420        call word near [cs:0x2044]
00000222  1F                pop ds
00000223  C7061A9F1800      mov word [0x9f1a],0x18
00000229  C6061C9F0D        mov byte [0x9f1c],0xd
0000022E  C60683000C        mov byte [0x83],0xc
00000233  C606009F0C        mov byte [0x9f00],0xc
00000238  E88A1B            call 0x1dc5
0000023B  E81B0A            call 0xc59
0000023E  E913FF            jmp 0x154
00000241  E8580A            call 0xc9c
00000244  F606279FFF        test byte [0x9f27],0xff
00000249  740D              jz 0x258
0000024B  E86911            call 0x13b7
0000024E  E84E0D            call 0xf9f
00000251  C606269F00        mov byte [0x9f26],0x0
00000256  EB12              jmp 0x26a
00000258  F60634FFFF        test byte [0xff34],0xff
0000025D  7405              jz 0x264
0000025F  2EFF161230        call word near [cs:0x3012]
00000264  E85011            call 0x13b7
00000267  E8F333            call 0x365d
0000026A  F6064900FF        test byte [0x49],0xff
0000026F  7403              jz 0x274
00000271  E98C36            jmp 0x3900
00000274  F606029FFF        test byte [0x9f02],0xff
00000279  7413              jz 0x28e
0000027B  C606029F00        mov byte [0x9f02],0x0
00000280  1E                push ds
00000281  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000286  BE0030            mov si,0x3000
00000289  33C0              xor ax,ax
0000028B  CD60              int byte 0x60
0000028D  1F                pop ds
0000028E  32C0              xor al,al
00000290  A21DFF            mov [0xff1d],al
00000293  A21EFF            mov [0xff1e],al
00000296  C6061AFF00        mov byte [0xff1a],0x0
0000029B  C606279F00        mov byte [0x9f27],0x0
000002A0  F60639FFFF        test byte [0xff39],0xff
000002A5  7538              jnz 0x2df
000002A7  E8950B            call 0xe3f
000002AA  E81202            call 0x4bf
000002AD  E8EF0C            call 0xf9f
000002B0  E80125            call 0x27b4
000002B3  E82801            call 0x3de
000002B6  E85D01            call 0x416
000002B9  FE060A9F          inc byte [0x9f0a]
000002BD  803E0A9F02        cmp byte [0x9f0a],0x2
000002C2  7505              jnz 0x2c9
000002C4  C60638FF00        mov byte [0xff38],0x0
000002C9  BA9C62            mov dx,0x629c
000002CC  52                push dx
000002CD  CD61              int byte 0x61
000002CF  A802              test al,0x2
000002D1  7405              jz 0x2d8
000002D3  8026C200FD        and byte [0xc2],0xfd
000002D8  E88306            call 0x95e
000002DB  E86900            call 0x347
000002DE  C3                ret
000002DF  C60638FF00        mov byte [0xff38],0x0
000002E4  C6063DFF00        mov byte [0xff3d],0x0
000002E9  C60642FF00        mov byte [0xff42],0x0
000002EE  C6063CFF00        mov byte [0xff3c],0x0
000002F3  2EFF160430        call word near [cs:0x3004]
000002F8  C60643FF00        mov byte [0xff43],0x0
000002FD  E89F0C            call 0xf9f
00000300  E81301            call 0x416
00000303  E84100            call 0x347
00000306  803E39FFFF        cmp byte [0xff39],0xff
0000030B  7514              jnz 0x321
0000030D  E8A50A            call 0xdb5
00000310  46                inc si
00000311  E8AD08            call 0xbc1
00000314  72C9              jc 0x2df
00000316  83C624            add si,0x24
00000319  E86A0A            call 0xd86
0000031C  E8A208            call 0xbc1
0000031F  72BE              jc 0x2df
00000321  8026C200FD        and byte [0xc2],0xfd
00000326  C60639FF00        mov byte [0xff39],0x0
0000032B  C6061DFF00        mov byte [0xff1d],0x0
00000330  C6061EFF00        mov byte [0xff1e],0x0
00000335  C606209F00        mov byte [0x9f20],0x0
0000033A  C606219F00        mov byte [0x9f21],0x0
0000033F  C606E7007F        mov byte [0xe7],0x7f
00000344  E959FF            jmp 0x2a0
00000347  C606229F00        mov byte [0x9f22],0x0
0000034C  CD61              int byte 0x61
0000034E  3C05              cmp al,0x5
00000350  7503              jnz 0x355
00000352  E9E302            jmp 0x638
00000355  3C09              cmp al,0x9
00000357  7503              jnz 0x35c
00000359  E96404            jmp 0x7c0
0000035C  3C01              cmp al,0x1
0000035E  7503              jnz 0x363
00000360  E9D801            jmp 0x53b
00000363  8AE0              mov ah,al
00000365  F60639FFFF        test byte [0xff39],0xff
0000036A  7531              jnz 0x39d
0000036C  F6063DFFFF        test byte [0xff3d],0xff
00000371  742A              jz 0x39d
00000373  F6060B9FFF        test byte [0x9f0b],0xff
00000378  7503              jnz 0x37d
0000037A  E94102            jmp 0x5be
0000037D  C6060B9F00        mov byte [0x9f0b],0x0
00000382  F606C20002        test byte [0xc2],0x2
00000387  7503              jnz 0x38c
00000389  E93202            jmp 0x5be
0000038C  BABA65            mov dx,0x65ba
0000038F  52                push dx
00000390  F606C20001        test byte [0xc2],0x1
00000395  7503              jnz 0x39a
00000397  E93004            jmp 0x7ca
0000039A  E9A502            jmp 0x642
0000039D  50                push ax
0000039E  A0C200            mov al,[0xc2]
000003A1  2401              and al,0x1
000003A3  3A06249F          cmp al,[0x9f24]
000003A7  A2249F            mov [0x9f24],al
000003AA  7403              jz 0x3af
000003AC  E85D01            call 0x50c
000003AF  58                pop ax
000003B0  8AC4              mov al,ah
000003B2  50                push ax
000003B3  3C02              cmp al,0x2
000003B5  7503              jnz 0x3ba
000003B7  E81307            call 0xacd
000003BA  58                pop ax
000003BB  240C              and al,0xc
000003BD  3C04              cmp al,0x4
000003BF  7503              jnz 0x3c4
000003C1  E97E02            jmp 0x642
000003C4  3C08              cmp al,0x8
000003C6  7503              jnz 0x3cb
000003C8  E9FF03            jmp 0x7ca
000003CB  E83E01            call 0x50c
000003CE  A039FF            mov al,[0xff39]
000003D1  0A0638FF          or al,[0xff38]
000003D5  7401              jz 0x3d8
000003D7  C3                ret
000003D8  C606E70080        mov byte [0xe7],0x80
000003DD  C3                ret
000003DE  F60638FFFF        test byte [0xff38],0xff
000003E3  7401              jz 0x3e6
000003E5  C3                ret
000003E6  F6063DFFFF        test byte [0xff3d],0xff
000003EB  7401              jz 0x3ee
000003ED  C3                ret
000003EE  E8C409            call 0xdb5
000003F1  8A04              mov al,[si]
000003F3  E8F309            call 0xde9
000003F6  7501              jnz 0x3f9
000003F8  C3                ret
000003F9  46                inc si
000003FA  46                inc si
000003FB  8A04              mov al,[si]
000003FD  E8E909            call 0xde9
00000400  7501              jnz 0x403
00000402  C3                ret
00000403  83C624            add si,0x24
00000406  E87D09            call 0xd86
00000409  8A04              mov al,[si]
0000040B  E8DB09            call 0xde9
0000040E  7403              jz 0x413
00000410  E9E902            jmp 0x6fc
00000413  E98E04            jmp 0x8a4
00000416  F606149FFF        test byte [0x9f14],0xff
0000041B  7501              jnz 0x41e
0000041D  C3                ret
0000041E  F606019FFF        test byte [0x9f01],0xff
00000423  751F              jnz 0x444
00000425  BE0E9F            mov si,0x9f0e
00000428  8A04              mov al,[si]
0000042A  0A4401            or al,[si+0x1]
0000042D  8A6402            mov ah,[si+0x2]
00000430  0A6403            or ah,[si+0x3]
00000433  84C4              test ah,al
00000435  7409              jz 0x440
00000437  F606C20001        test byte [0xc2],0x1
0000043C  7506              jnz 0x444
0000043E  EB27              jmp 0x467
00000440  0AC0              or al,al
00000442  7523              jnz 0x467
00000444  F60639FFFF        test byte [0xff39],0xff
00000449  7414              jz 0x45f
0000044B  8026C200FC        and byte [0xc2],0xfc
00000450  800EC20001        or byte [0xc2],0x1
00000455  C6063DFF7F        mov byte [0xff3d],0x7f
0000045A  C6061DFF00        mov byte [0xff1d],0x0
0000045F  E84702            call 0x6a9
00000462  E84402            call 0x6a9
00000465  EB1E              jmp 0x485
00000467  F60639FFFF        test byte [0xff39],0xff
0000046C  740F              jz 0x47d
0000046E  8026C200FC        and byte [0xc2],0xfc
00000473  C6063DFF7F        mov byte [0xff3d],0x7f
00000478  C6061DFF00        mov byte [0xff1d],0x0
0000047D  E8D003            call 0x850
00000480  E8CD03            call 0x850
00000483  EB00              jmp 0x485
00000485  F60639FFFF        test byte [0xff39],0xff
0000048A  740A              jz 0x496
0000048C  C60639FF80        mov byte [0xff39],0x80
00000491  C6063DFF00        mov byte [0xff3d],0x0
00000496  F606159FFF        test byte [0x9f15],0xff
0000049B  7401              jz 0x49e
0000049D  C3                ret
0000049E  F6063DFF80        test byte [0xff3d],0x80
000004A3  7401              jz 0x4a6
000004A5  C3                ret
000004A6  E8D106            call 0xb7a
000004A9  7301              jnc 0x4ac
000004AB  C3                ret
000004AC  F606099FFF        test byte [0x9f09],0xff
000004B1  7503              jnz 0x4b6
000004B3  E97C06            jmp 0xb32
000004B6  FE0E099F          dec byte [0x9f09]
000004BA  FE068400          inc byte [0x84]
000004BE  C3                ret
000004BF  E8DC08            call 0xd9e
000004C2  7401              jz 0x4c5
000004C4  C3                ret
000004C5  F6063DFFFF        test byte [0xff3d],0xff
000004CA  7401              jz 0x4cd
000004CC  C3                ret
000004CD  F606209FFF        test byte [0x9f20],0xff
000004D2  7501              jnz 0x4d5
000004D4  C3                ret
000004D5  FE0E209F          dec byte [0x9f20]
000004D9  E8D908            call 0xdb5
000004DC  83C66D            add si,0x6d
000004DF  E8A408            call 0xd86
000004E2  8A04              mov al,[si]
000004E4  3C40              cmp al,0x40
000004E6  720A              jc 0x4f2
000004E8  3C49              cmp al,0x49
000004EA  7306              jnc 0x4f2
000004EC  C606209F00        mov byte [0x9f20],0x0
000004F1  C3                ret
000004F2  A0229F            mov al,[0x9f22]
000004F5  F606239F01        test byte [0x9f23],0x1
000004FA  7408              jz 0x504
000004FC  3C01              cmp al,0x1
000004FE  7501              jnz 0x501
00000500  C3                ret
00000501  E94C03            jmp 0x850
00000504  3C02              cmp al,0x2
00000506  7501              jnz 0x509
00000508  C3                ret
00000509  E99D01            jmp 0x6a9
0000050C  E88F08            call 0xd9e
0000050F  7401              jz 0x512
00000511  C3                ret
00000512  F606209FFF        test byte [0x9f20],0xff
00000517  7401              jz 0x51a
00000519  C3                ret
0000051A  F60639FFFF        test byte [0xff39],0xff
0000051F  7401              jz 0x522
00000521  C3                ret
00000522  A0219F            mov al,[0x9f21]
00000525  D0E8              shr al,0x0
00000527  0AC0              or al,al
00000529  7501              jnz 0x52c
0000052B  C3                ret
0000052C  3C0A              cmp al,0xa
0000052E  7202              jc 0x532
00000530  B00A              mov al,0xa
00000532  A2209F            mov [0x9f20],al
00000535  C606219F00        mov byte [0x9f21],0x0
0000053A  C3                ret
0000053B  C606189F00        mov byte [0x9f18],0x0
00000540  E84415            call 0x1a87
00000543  E8321B            call 0x2078
00000546  E88000            call 0x5c9
00000549  FE06209F          inc byte [0x9f20]
0000054D  803E209F0A        cmp byte [0x9f20],0xa
00000552  7205              jc 0x559
00000554  C606209F0A        mov byte [0x9f20],0xa
00000559  F60639FFFF        test byte [0xff39],0xff
0000055E  7401              jz 0x561
00000560  C3                ret
00000561  C60638FF00        mov byte [0xff38],0x0
00000566  A0099F            mov al,[0x9f09]
00000569  3A060D9F          cmp al,[0x9f0d]
0000056D  734F              jnc 0x5be
0000056F  E84308            call 0xdb5
00000572  83EE23            sub si,0x23
00000575  E81A08            call 0xd92
00000578  8A04              mov al,[si]
0000057A  E86C08            call 0xde9
0000057D  752A              jnz 0x5a9
0000057F  C606E70000        mov byte [0xe7],0x0
00000584  8026C200FD        and byte [0xc2],0xfd
00000589  C6063DFFFF        mov byte [0xff3d],0xff
0000058E  A00D9F            mov al,[0x9f0d]
00000591  D0E8              shr al,0x0
00000593  A20C9F            mov [0x9f0c],al
00000596  FE06099F          inc byte [0x9f09]
0000059A  803E840007        cmp byte [0x84],0x7
0000059F  7303              jnc 0x5a4
000005A1  E98100            jmp 0x625
000005A4  FE0E8400          dec byte [0x84]
000005A8  C3                ret
000005A9  F606099FFF        test byte [0x9f09],0xff
000005AE  750E              jnz 0x5be
000005B0  F60639FFFF        test byte [0xff39],0xff
000005B5  7401              jz 0x5b8
000005B7  C3                ret
000005B8  C606E70080        mov byte [0xe7],0x80
000005BD  C3                ret
000005BE  C60642FF00        mov byte [0xff42],0x0
000005C3  C6063DFF7F        mov byte [0xff3d],0x7f
000005C8  C3                ret
000005C9  E8E907            call 0xdb5
000005CC  46                inc si
000005CD  E8F105            call 0xbc1
000005D0  7221              jc 0x5f3
000005D2  4E                dec si
000005D3  E8EB05            call 0xbc1
000005D6  7308              jnc 0x5e0
000005D8  F606C20001        test byte [0xc2],0x1
000005DD  7563              jnz 0x642
000005DF  C3                ret
000005E0  46                inc si
000005E1  46                inc si
000005E2  E8DC05            call 0xbc1
000005E5  7201              jc 0x5e8
000005E7  C3                ret
000005E8  F606C20001        test byte [0xc2],0x1
000005ED  7503              jnz 0x5f2
000005EF  E9D801            jmp 0x7ca
000005F2  C3                ret
000005F3  C60639FFFF        mov byte [0xff39],0xff
000005F8  C60638FF00        mov byte [0xff38],0x0
000005FD  E8B507            call 0xdb5
00000600  83EE23            sub si,0x23
00000603  E88C07            call 0xd92
00000606  FE0EE700          dec byte [0xe7]
0000060A  E8B405            call 0xbc1
0000060D  7206              jc 0x615
0000060F  800EE70001        or byte [0xe7],0x1
00000614  C3                ret
00000615  E80D00            call 0x625
00000618  E88409            call 0xf9f
0000061B  F606E70001        test byte [0xe7],0x1
00000620  7401              jz 0x623
00000622  C3                ret
00000623  EBD8              jmp 0x5fd
00000625  FE0E8200          dec byte [0x82]
00000629  8B3631FF          mov si,[0xff31]
0000062D  83EE24            sub si,0x24
00000630  E85F07            call 0xd92
00000633  893631FF          mov [0xff31],si
00000637  C3                ret
00000638  C6060B9FFF        mov byte [0x9f0b],0xff
0000063D  E809FF            call 0x549
00000640  EB00              jmp 0x642
00000642  C606189F00        mov byte [0x9f18],0x0
00000647  F606C20001        test byte [0xc2],0x1
0000064C  7503              jnz 0x651
0000064E  E9D701            jmp 0x828
00000651  F60638FFFF        test byte [0xff38],0xff
00000656  7401              jz 0x659
00000658  C3                ret
00000659  803E42FF01        cmp byte [0xff42],0x1
0000065E  7503              jnz 0x663
00000660  E9D801            jmp 0x83b
00000663  E84300            call 0x6a9
00000666  7303              jnc 0x66b
00000668  E9D001            jmp 0x83b
0000066B  C606229F02        mov byte [0x9f22],0x2
00000670  F60639FFFF        test byte [0xff39],0xff
00000675  7401              jz 0x678
00000677  C3                ret
00000678  E82307            call 0xd9e
0000067B  7510              jnz 0x68d
0000067D  F606209FFF        test byte [0x9f20],0xff
00000682  7509              jnz 0x68d
00000684  C606239F00        mov byte [0x9f23],0x0
00000689  FE06219F          inc byte [0x9f21]
0000068D  800EC20002        or byte [0xc2],0x2
00000692  F6063DFFFF        test byte [0xff3d],0xff
00000697  7401              jz 0x69a
00000699  C3                ret
0000069A  FE06E700          inc byte [0xe7]
0000069E  8026E7007F        and byte [0xe7],0x7f
000006A3  C606199F00        mov byte [0x9f19],0x0
000006A8  C3                ret
000006A9  E80907            call 0xdb5
000006AC  8BFE              mov di,si
000006AE  83EE24            sub si,0x24
000006B1  E8DE06            call 0xd92
000006B4  4E                dec si
000006B5  B90400            mov cx,0x4
000006B8  E81407            call 0xdcf
000006BB  02C0              add al,al
000006BD  7301              jnc 0x6c0
000006BF  C3                ret
000006C0  83C624            add si,0x24
000006C3  E8C006            call 0xd86
000006C6  E2F0              loop 0x6b8
000006C8  87FE              xchg di,si
000006CA  F60638FFFF        test byte [0xff38],0xff
000006CF  750F              jnz 0x6e0
000006D1  8A04              mov al,[si]
000006D3  E81307            call 0xde9
000006D6  F9                stc
000006D7  7401              jz 0x6da
000006D9  C3                ret
000006DA  E8CA00            call 0x7a7
000006DD  7301              jnc 0x6e0
000006DF  C3                ret
000006E0  B90200            mov cx,0x2
000006E3  83C624            add si,0x24
000006E6  E89D06            call 0xd86
000006E9  8A04              mov al,[si]
000006EB  E83107            call 0xe1f
000006EE  F9                stc
000006EF  7401              jz 0x6f2
000006F1  C3                ret
000006F2  51                push cx
000006F3  E8B100            call 0x7a7
000006F6  59                pop cx
000006F7  7301              jnc 0x6fa
000006F9  C3                ret
000006FA  E2E7              loop 0x6e3
000006FC  FF0E8000          dec word [0x80]
00000700  833E8000FF        cmp word [0x80],0xffffffffffffffff
00000705  750F              jnz 0x716
00000707  A102C0            mov ax,[0xc002]
0000070A  48                dec ax
0000070B  A38000            mov [0x80],ax
0000070E  8B3619C0          mov si,[0xc019]
00000712  8936039F          mov [0x9f03],si
00000716  0E                push cs
00000717  07                pop es
00000718  FD                std
00000719  BEFEE8            mov si,0xe8fe
0000071C  BFFFE8            mov di,0xe8ff
0000071F  B9FF08            mov cx,0x8ff
00000722  F3A4              rep movsb
00000724  FC                cld
00000725  8B36039F          mov si,[0x9f03]
00000729  4E                dec si
0000072A  BFDCE8            mov di,0xe8dc
0000072D  32D2              xor dl,dl
0000072F  E8D805            call 0xd0a
00000732  4E                dec si
00000733  02D7              add dl,bh
00000735  881D              mov [di],bl
00000737  83EF24            sub di,0x24
0000073A  FECF              dec bh
0000073C  75F7              jnz 0x735
0000073E  80FA40            cmp dl,0x40
00000741  72EC              jc 0x72f
00000743  46                inc si
00000744  8936039F          mov [0x9f03],si
00000748  8B3619C0          mov si,[0xc019]
0000074C  4E                dec si
0000074D  A18000            mov ax,[0x80]
00000750  052400            add ax,0x24
00000753  3B0602C0          cmp ax,[0xc002]
00000757  7411              jz 0x76a
00000759  8B36059F          mov si,[0x9f05]
0000075D  32F6              xor dh,dh
0000075F  E8A805            call 0xd0a
00000762  4E                dec si
00000763  02F7              add dh,bh
00000765  80FE40            cmp dh,0x40
00000768  72F5              jc 0x75f
0000076A  8936059F          mov [0x9f05],si
0000076E  E8E11E            call 0x2652
00000771  8B1E8000          mov bx,[0x80]
00000775  C6064AFF00        mov byte [0xff4a],0x0
0000077A  8B3610C0          mov si,[0xc010]
0000077E  8B04              mov ax,[si]
00000780  3DFFFF            cmp ax,0xffff
00000783  7501              jnz 0x786
00000785  C3                ret
00000786  80FCFF            cmp ah,0xff
00000789  7413              jz 0x79e
0000078B  3BC3              cmp ax,bx
0000078D  750F              jnz 0x79e
0000078F  32E4              xor ah,ah
00000791  8A4402            mov al,[si+0x2]
00000794  E8DB05            call 0xd72
00000797  A04AFF            mov al,[0xff4a]
0000079A  0C80              or al,0x80
0000079C  8805              mov [di],al
0000079E  FE064AFF          inc byte [0xff4a]
000007A2  83C610            add si,0x10
000007A5  EBD7              jmp 0x77e
000007A7  803E12C007        cmp byte [0xc012],0x7
000007AC  F8                clc
000007AD  7501              jnz 0x7b0
000007AF  C3                ret
000007B0  8A04              mov al,[si]
000007B2  56                push si
000007B3  E8440F            call 0x16fa
000007B6  5E                pop si
000007B7  80F902            cmp cl,0x2
000007BA  F9                stc
000007BB  7501              jnz 0x7be
000007BD  C3                ret
000007BE  F8                clc
000007BF  C3                ret
000007C0  C6060B9FFF        mov byte [0x9f0b],0xff
000007C5  E881FD            call 0x549
000007C8  EB00              jmp 0x7ca
000007CA  C606189F00        mov byte [0x9f18],0x0
000007CF  F606C20001        test byte [0xc2],0x1
000007D4  7552              jnz 0x828
000007D6  F60638FFFF        test byte [0xff38],0xff
000007DB  7401              jz 0x7de
000007DD  C3                ret
000007DE  803E42FF02        cmp byte [0xff42],0x2
000007E3  7456              jz 0x83b
000007E5  E86800            call 0x850
000007E8  7251              jc 0x83b
000007EA  C606229F01        mov byte [0x9f22],0x1
000007EF  F60639FFFF        test byte [0xff39],0xff
000007F4  7401              jz 0x7f7
000007F6  C3                ret
000007F7  E8A405            call 0xd9e
000007FA  7510              jnz 0x80c
000007FC  F606209FFF        test byte [0x9f20],0xff
00000801  7509              jnz 0x80c
00000803  C606239F01        mov byte [0x9f23],0x1
00000808  FE06219F          inc byte [0x9f21]
0000080C  800EC20002        or byte [0xc2],0x2
00000811  F6063DFFFF        test byte [0xff3d],0xff
00000816  7401              jz 0x819
00000818  C3                ret
00000819  FE06E700          inc byte [0xe7]
0000081D  8026E7007F        and byte [0xe7],0x7f
00000822  C606199F00        mov byte [0x9f19],0x0
00000827  C3                ret
00000828  8036C20001        xor byte [0xc2],0x1
0000082D  F60639FFFF        test byte [0xff39],0xff
00000832  7401              jz 0x835
00000834  C3                ret
00000835  C606E70080        mov byte [0xe7],0x80
0000083A  C3                ret
0000083B  8026C200FD        and byte [0xc2],0xfd
00000840  A039FF            mov al,[0xff39]
00000843  0A063DFF          or al,[0xff3d]
00000847  7401              jz 0x84a
00000849  C3                ret
0000084A  C606E70080        mov byte [0xe7],0x80
0000084F  C3                ret
00000850  E86205            call 0xdb5
00000853  46                inc si
00000854  46                inc si
00000855  8BFE              mov di,si
00000857  83EE24            sub si,0x24
0000085A  E83505            call 0xd92
0000085D  B90400            mov cx,0x4
00000860  E86C05            call 0xdcf
00000863  02C0              add al,al
00000865  7301              jnc 0x868
00000867  C3                ret
00000868  83C624            add si,0x24
0000086B  E81805            call 0xd86
0000086E  E2F0              loop 0x860
00000870  87FE              xchg di,si
00000872  F60638FFFF        test byte [0xff38],0xff
00000877  750F              jnz 0x888
00000879  8A04              mov al,[si]
0000087B  E86B05            call 0xde9
0000087E  F9                stc
0000087F  7401              jz 0x882
00000881  C3                ret
00000882  E8C100            call 0x946
00000885  7301              jnc 0x888
00000887  C3                ret
00000888  B90200            mov cx,0x2
0000088B  83C624            add si,0x24
0000088E  E8F504            call 0xd86
00000891  8A04              mov al,[si]
00000893  E88905            call 0xe1f
00000896  F9                stc
00000897  7401              jz 0x89a
00000899  C3                ret
0000089A  51                push cx
0000089B  E8A800            call 0x946
0000089E  59                pop cx
0000089F  7301              jnc 0x8a2
000008A1  C3                ret
000008A2  E2E7              loop 0x88b
000008A4  FF068000          inc word [0x80]
000008A8  A18000            mov ax,[0x80]
000008AB  052300            add ax,0x23
000008AE  3B0602C0          cmp ax,[0xc002]
000008B2  7506              jnz 0x8ba
000008B4  C706059F1AC0      mov word [0x9f05],0xc01a
000008BA  0E                push cs
000008BB  07                pop es
000008BC  BE01E0            mov si,0xe001
000008BF  BF00E0            mov di,0xe000
000008C2  B9FF08            mov cx,0x8ff
000008C5  F3A4              rep movsb
000008C7  8B36059F          mov si,[0x9f05]
000008CB  46                inc si
000008CC  BF23E0            mov di,0xe023
000008CF  E88904            call 0xd5b
000008D2  4E                dec si
000008D3  8936059F          mov [0x9f05],si
000008D7  A18000            mov ax,[0x80]
000008DA  3B0602C0          cmp ax,[0xc002]
000008DE  750B              jnz 0x8eb
000008E0  C70680000000      mov word [0x80],0x0
000008E6  BE1BC0            mov si,0xc01b
000008E9  EB11              jmp 0x8fc
000008EB  8B36039F          mov si,[0x9f03]
000008EF  32F6              xor dh,dh
000008F1  E8FD03            call 0xcf1
000008F4  46                inc si
000008F5  02F7              add dh,bh
000008F7  80FE40            cmp dh,0x40
000008FA  72F5              jc 0x8f1
000008FC  8936039F          mov [0x9f03],si
00000900  E83A1D            call 0x263d
00000903  C6064AFF00        mov byte [0xff4a],0x0
00000908  8B1E8000          mov bx,[0x80]
0000090C  83C323            add bx,0x23
0000090F  8BC3              mov ax,bx
00000911  2B0602C0          sub ax,[0xc002]
00000915  7202              jc 0x919
00000917  8BD8              mov bx,ax
00000919  8B3610C0          mov si,[0xc010]
0000091D  8B04              mov ax,[si]
0000091F  3DFFFF            cmp ax,0xffff
00000922  7501              jnz 0x925
00000924  C3                ret
00000925  80FCFF            cmp ah,0xff
00000928  7413              jz 0x93d
0000092A  3BC3              cmp ax,bx
0000092C  750F              jnz 0x93d
0000092E  B423              mov ah,0x23
00000930  8A4402            mov al,[si+0x2]
00000933  E83C04            call 0xd72
00000936  A04AFF            mov al,[0xff4a]
00000939  0C80              or al,0x80
0000093B  8805              mov [di],al
0000093D  FE064AFF          inc byte [0xff4a]
00000941  83C610            add si,0x10
00000944  EBD7              jmp 0x91d
00000946  803E12C007        cmp byte [0xc012],0x7
0000094B  F8                clc
0000094C  7501              jnz 0x94f
0000094E  C3                ret
0000094F  8A04              mov al,[si]
00000951  56                push si
00000952  E8A50D            call 0x16fa
00000955  5E                pop si
00000956  FEC9              dec cl
00000958  F9                stc
00000959  7501              jnz 0x95c
0000095B  C3                ret
0000095C  F8                clc
0000095D  C3                ret
0000095E  F606159FFF        test byte [0x9f15],0xff
00000963  7401              jz 0x966
00000965  C3                ret
00000966  F6063DFF80        test byte [0xff3d],0x80
0000096B  7401              jz 0x96e
0000096D  C3                ret
0000096E  E82118            call 0x2192
00000971  E8F700            call 0xa6b
00000974  E80302            call 0xb7a
00000977  7303              jnc 0x97c
00000979  E9C901            jmp 0xb45
0000097C  FE06089F          inc byte [0x9f08]
00000980  F606099FFF        test byte [0x9f09],0xff
00000985  740A              jz 0x991
00000987  9C                pushf
00000988  FE0E099F          dec byte [0x9f09]
0000098C  FE068400          inc byte [0x84]
00000990  9D                popf
00000991  58                pop ax
00000992  7503              jnz 0x997
00000994  E89B01            call 0xb32
00000997  F606C20002        test byte [0xc2],0x2
0000099C  7514              jnz 0x9b2
0000099E  E81404            call 0xdb5
000009A1  83C649            add si,0x49
000009A4  E8DF03            call 0xd86
000009A7  E81702            call 0xbc1
000009AA  7306              jnc 0x9b2
000009AC  C60639FFFF        mov byte [0xff39],0xff
000009B1  C3                ret
000009B2  C606E70080        mov byte [0xe7],0x80
000009B7  A03DFF            mov al,[0xff3d]
000009BA  C6063DFF7F        mov byte [0xff3d],0x7f
000009BF  F60642FFFF        test byte [0xff42],0xff
000009C4  7401              jz 0x9c7
000009C6  C3                ret
000009C7  F606E800FF        test byte [0xe8],0xff
000009CC  7401              jz 0x9cf
000009CE  C3                ret
000009CF  A8FF              test al,0xff
000009D1  7517              jnz 0x9ea
000009D3  B8E069            mov ax,0x69e0
000009D6  50                push ax
000009D7  F606C20001        test byte [0xc2],0x1
000009DC  7403              jz 0x9e1
000009DE  E961FC            jmp 0x642
000009E1  E9E6FD            jmp 0x7ca
000009E4  8026C200FD        and byte [0xc2],0xfd
000009E9  C3                ret
000009EA  CD61              int byte 0x61
000009EC  240C              and al,0xc
000009EE  3C04              cmp al,0x4
000009F0  7421              jz 0xa13
000009F2  3C08              cmp al,0x8
000009F4  7449              jz 0xa3f
000009F6  F606C20002        test byte [0xc2],0x2
000009FB  7509              jnz 0xa06
000009FD  3C04              cmp al,0x4
000009FF  744D              jz 0xa4e
00000A01  3C08              cmp al,0x8
00000A03  741D              jz 0xa22
00000A05  C3                ret
00000A06  F606C20001        test byte [0xc2],0x1
00000A0B  7403              jz 0xa10
00000A0D  E932FC            jmp 0x642
00000A10  E9B7FD            jmp 0x7ca
00000A13  F606C20001        test byte [0xc2],0x1
00000A18  75DC              jnz 0x9f6
00000A1A  8026C200FD        and byte [0xc2],0xfd
00000A1F  E806FE            call 0x828
00000A22  E89003            call 0xdb5
00000A25  83C66D            add si,0x6d
00000A28  E85B03            call 0xd86
00000A2B  8A04              mov al,[si]
00000A2D  E8B903            call 0xde9
00000A30  7401              jz 0xa33
00000A32  C3                ret
00000A33  46                inc si
00000A34  8A04              mov al,[si]
00000A36  E8B003            call 0xde9
00000A39  7501              jnz 0xa3c
00000A3B  C3                ret
00000A3C  E911FE            jmp 0x850
00000A3F  F606C20001        test byte [0xc2],0x1
00000A44  74B0              jz 0x9f6
00000A46  8026C200FD        and byte [0xc2],0xfd
00000A4B  E8DAFD            call 0x828
00000A4E  E86403            call 0xdb5
00000A51  83C66D            add si,0x6d
00000A54  E82F03            call 0xd86
00000A57  8A04              mov al,[si]
00000A59  E88D03            call 0xde9
00000A5C  7401              jz 0xa5f
00000A5E  C3                ret
00000A5F  4E                dec si
00000A60  8A04              mov al,[si]
00000A62  E88403            call 0xde9
00000A65  7501              jnz 0xa68
00000A67  C3                ret
00000A68  E93EFC            jmp 0x6a9
00000A6B  C60642FF00        mov byte [0xff42],0x0
00000A70  E84203            call 0xdb5
00000A73  83C649            add si,0x49
00000A76  E80D03            call 0xd86
00000A79  E84C01            call 0xbc8
00000A7C  7401              jz 0xa7f
00000A7E  C3                ret
00000A7F  8026C200FD        and byte [0xc2],0xfd
00000A84  881642FF          mov [0xff42],dl
00000A88  F6060C9FFF        test byte [0x9f0c],0xff
00000A8D  7525              jnz 0xab4
00000A8F  A0169F            mov al,[0x9f16]
00000A92  FE06169F          inc byte [0x9f16]
00000A96  2403              and al,0x3
00000A98  7401              jz 0xa9b
00000A9A  C3                ret
00000A9B  CD61              int byte 0x61
00000A9D  803E42FF01        cmp byte [0xff42],0x1
00000AA2  7408              jz 0xaac
00000AA4  A808              test al,0x8
00000AA6  7401              jz 0xaa9
00000AA8  C3                ret
00000AA9  E9FDFB            jmp 0x6a9
00000AAC  A804              test al,0x4
00000AAE  7401              jz 0xab1
00000AB0  C3                ret
00000AB1  E99CFD            jmp 0x850
00000AB4  A09E00            mov al,[0x9e]
00000AB7  3C03              cmp al,0x3
00000AB9  7501              jnz 0xabc
00000ABB  C3                ret
00000ABC  FE0E0C9F          dec byte [0x9f0c]
00000AC0  803E42FF01        cmp byte [0xff42],0x1
00000AC5  7503              jnz 0xaca
00000AC7  E986FD            jmp 0x850
00000ACA  E9DCFB            jmp 0x6a9
00000ACD  C606189F00        mov byte [0x9f18],0x0
00000AD2  F60642FFFF        test byte [0xff42],0xff
00000AD7  7401              jz 0xada
00000AD9  C3                ret
00000ADA  E80315            call 0x1fe0
00000ADD  E8D502            call 0xdb5
00000AE0  83C66D            add si,0x6d
00000AE3  E8A002            call 0xd86
00000AE6  E8D800            call 0xbc1
00000AE9  721D              jc 0xb08
00000AEB  F60639FFFF        test byte [0xff39],0xff
00000AF0  740B              jz 0xafd
00000AF2  C60639FF80        mov byte [0xff39],0x80
00000AF7  C6063DFF80        mov byte [0xff3d],0x80
00000AFC  C3                ret
00000AFD  C6060A9F00        mov byte [0x9f0a],0x0
00000B02  C60638FFFF        mov byte [0xff38],0xff
00000B07  C3                ret
00000B08  E8AA02            call 0xdb5
00000B0B  83C66D            add si,0x6d
00000B0E  E87502            call 0xd86
00000B11  FE06E700          inc byte [0xe7]
00000B15  8A04              mov al,[si]
00000B17  E8CF02            call 0xde9
00000B1A  7406              jz 0xb22
00000B1C  800EE70001        or byte [0xe7],0x1
00000B21  C3                ret
00000B22  E80D00            call 0xb32
00000B25  E87704            call 0xf9f
00000B28  F606E70001        test byte [0xe7],0x1
00000B2D  7401              jz 0xb30
00000B2F  C3                ret
00000B30  EBD6              jmp 0xb08
00000B32  FE068200          inc byte [0x82]
00000B36  8B3631FF          mov si,[0xff31]
00000B3A  83C624            add si,0x24
00000B3D  E84602            call 0xd86
00000B40  893631FF          mov [0xff31],si
00000B44  C3                ret
00000B45  A03DFF            mov al,[0xff3d]
00000B48  347F              xor al,0x7f
00000B4A  7401              jz 0xb4d
00000B4C  C3                ret
00000B4D  58                pop ax
00000B4E  8A16089F          mov dl,[0x9f08]
00000B52  C6063DFF00        mov byte [0xff3d],0x0
00000B57  C6060A9F00        mov byte [0x9f0a],0x0
00000B5C  C606089F00        mov byte [0x9f08],0x0
00000B61  C606E70080        mov byte [0xe7],0x80
00000B66  F60642FFFF        test byte [0xff42],0xff
00000B6B  7401              jz 0xb6e
00000B6D  C3                ret
00000B6E  80FA02            cmp dl,0x2
00000B71  7301              jnc 0xb74
00000B73  C3                ret
00000B74  C60638FFFF        mov byte [0xff38],0xff
00000B79  C3                ret
00000B7A  E83802            call 0xdb5
00000B7D  83C66D            add si,0x6d
00000B80  E80302            call 0xd86
00000B83  8BFE              mov di,si
00000B85  E84702            call 0xdcf
00000B88  02C0              add al,al
00000B8A  7301              jnc 0xb8d
00000B8C  C3                ret
00000B8D  4E                dec si
00000B8E  E83E02            call 0xdcf
00000B91  02C0              add al,al
00000B93  7301              jnc 0xb96
00000B95  C3                ret
00000B96  8BF7              mov si,di
00000B98  8A04              mov al,[si]
00000B9A  E88202            call 0xe1f
00000B9D  F9                stc
00000B9E  7401              jz 0xba1
00000BA0  C3                ret
00000BA1  803EE70080        cmp byte [0xe7],0x80
00000BA6  F8                clc
00000BA7  7501              jnz 0xbaa
00000BA9  C3                ret
00000BAA  4E                dec si
00000BAB  8A04              mov al,[si]
00000BAD  E86F02            call 0xe1f
00000BB0  F8                clc
00000BB1  7501              jnz 0xbb4
00000BB3  C3                ret
00000BB4  46                inc si
00000BB5  46                inc si
00000BB6  8A04              mov al,[si]
00000BB8  E86402            call 0xe1f
00000BBB  F9                stc
00000BBC  7401              jz 0xbbf
00000BBE  C3                ret
00000BBF  F8                clc
00000BC0  C3                ret
00000BC1  8A04              mov al,[si]
00000BC3  FEC8              dec al
00000BC5  3C02              cmp al,0x2
00000BC7  C3                ret
00000BC8  2E8E062CFF        mov es,word [cs:0xff2c]
00000BCD  8A04              mov al,[si]
00000BCF  BF1880            mov di,0x8018
00000BD2  B202              mov dl,0x2
00000BD4  B90400            mov cx,0x4
00000BD7  26F605FF          test byte [es:di],0xff
00000BDB  7409              jz 0xbe6
00000BDD  263A05            cmp al,[es:di]
00000BE0  7501              jnz 0xbe3
00000BE2  C3                ret
00000BE3  47                inc di
00000BE4  E2F1              loop 0xbd7
00000BE6  BF1C80            mov di,0x801c
00000BE9  B201              mov dl,0x1
00000BEB  B90400            mov cx,0x4
00000BEE  26F605FF          test byte [es:di],0xff
00000BF2  7409              jz 0xbfd
00000BF4  263A05            cmp al,[es:di]
00000BF7  7501              jnz 0xbfa
00000BF9  C3                ret
00000BFA  47                inc di
00000BFB  E2F1              loop 0xbee
00000BFD  0AD2              or dl,dl
00000BFF  C3                ret
00000C00  8B360CC0          mov si,[0xc00c]
00000C04  8B3C              mov di,[si]
00000C06  83FFFF            cmp di,0xffffffffffffffff
00000C09  7501              jnz 0xc0c
00000C0B  C3                ret
00000C0C  83C603            add si,0x3
00000C0F  8A44FF            mov al,[si-0x1]
00000C12  2205              and al,[di]
00000C14  750C              jnz 0xc22
00000C16  8B3C              mov di,[si]
00000C18  83FFFF            cmp di,0xffffffffffffffff
00000C1B  7416              jz 0xc33
00000C1D  83C604            add si,0x4
00000C20  EBF4              jmp 0xc16
00000C22  8B3C              mov di,[si]
00000C24  83FFFF            cmp di,0xffffffffffffffff
00000C27  740A              jz 0xc33
00000C29  8B4402            mov ax,[si+0x2]
00000C2C  8905              mov [di],ax
00000C2E  83C604            add si,0x4
00000C31  EBEF              jmp 0xc22
00000C33  46                inc si
00000C34  46                inc si
00000C35  EBCD              jmp 0xc04
00000C37  BE446C            mov si,0x6c44
00000C3A  2EFF160E20        call word near [cs:0x200e]
00000C3F  BE4C6C            mov si,0x6c4c
00000C42  2EFF160E20        call word near [cs:0x200e]
00000C47  C3                ret
00000C48  0DBB01            or ax,0x1bb
00000C4B  0447              add al,0x47
00000C4D  4F                dec di
00000C4E  4C                dec sp
00000C4F  44                inc sp
00000C50  0DAF01            or ax,0x1af
00000C53  05504C            add ax,0x4c50
00000C56  41                inc cx
00000C57  43                inc bx
00000C58  45                inc bp
00000C59  BB1002            mov bx,0x210
00000C5C  32C0              xor al,al
00000C5E  B521              mov ch,0x21
00000C60  2EFF160420        call word near [cs:0x2004]
00000C65  BB1023            mov bx,0x2310
00000C68  B080              mov al,0x80
00000C6A  B567              mov ch,0x67
00000C6C  2EFF160420        call word near [cs:0x2004]
00000C71  BBA90A            mov bx,0xaa9
00000C74  BAB50A            mov dx,0xab5
00000C77  B9030E            mov cx,0xe03
00000C7A  2EFF162C20        call word near [cs:0x202c]
00000C7F  BB1C02            mov bx,0x21c
00000C82  32C0              xor al,al
00000C84  B542              mov ch,0x42
00000C86  2EFF160420        call word near [cs:0x2004]
00000C8B  BE8F6C            mov si,0x6c8f
00000C8E  2EFF260E20        jmp word near [cs:0x200e]
00000C93  0DAF02            or ax,0x2af
00000C96  05454E            add ax,0x4e45
00000C99  45                inc bp
00000C9A  4D                dec bp
00000C9B  59                pop cx
00000C9C  BE1BC0            mov si,0xc01b
00000C9F  8B0E8000          mov cx,[0x80]
00000CA3  0BC9              or cx,cx
00000CA5  740F              jz 0xcb6
00000CA7  32F6              xor dh,dh
00000CA9  E84500            call 0xcf1
00000CAC  46                inc si
00000CAD  02F7              add dh,bh
00000CAF  80FE40            cmp dh,0x40
00000CB2  72F5              jc 0xca9
00000CB4  E2F1              loop 0xca7
00000CB6  8936039F          mov [0x9f03],si
00000CBA  BF00E0            mov di,0xe000
00000CBD  A18000            mov ax,[0x80]
00000CC0  B92400            mov cx,0x24
00000CC3  57                push di
00000CC4  E89400            call 0xd5b
00000CC7  5F                pop di
00000CC8  47                inc di
00000CC9  40                inc ax
00000CCA  3B0602C0          cmp ax,[0xc002]
00000CCE  7505              jnz 0xcd5
00000CD0  BE1BC0            mov si,0xc01b
00000CD3  33C0              xor ax,ax
00000CD5  E2EC              loop 0xcc3
00000CD7  0BC0              or ax,ax
00000CD9  7504              jnz 0xcdf
00000CDB  8B3619C0          mov si,[0xc019]
00000CDF  4E                dec si
00000CE0  8936059F          mov [0x9f05],si
00000CE4  A08200            mov al,[0x82]
00000CE7  32E4              xor ah,ah
00000CE9  E88600            call 0xd72
00000CEC  893E31FF          mov [0xff31],di
00000CF0  C3                ret
00000CF1  8A1C              mov bl,[si]
00000CF3  80E3C0            and bl,0xc0
00000CF6  D0C3              rol bl,0x0
00000CF8  D0C3              rol bl,0x0
00000CFA  32FF              xor bh,bh
00000CFC  03DB              add bx,bx
00000CFE  FFA7FE6C          jmp word near [bx+0x6cfe]
00000D02  1F                pop ds
00000D03  6D                insw
00000D04  2F                das
00000D05  6D                insw
00000D06  47                inc di
00000D07  6D                insw
00000D08  4F                dec di
00000D09  6D                insw
00000D0A  8A1C              mov bl,[si]
00000D0C  80E3C0            and bl,0xc0
00000D0F  D0C3              rol bl,0x0
00000D11  D0C3              rol bl,0x0
00000D13  32FF              xor bh,bh
00000D15  03DB              add bx,bx
00000D17  FFA7176D          jmp word near [bx+0x6d17]
00000D1B  27                daa
00000D1C  6D                insw
00000D1D  2F                das
00000D1E  6D                insw
00000D1F  47                inc di
00000D20  6D                insw
00000D21  4F                dec di
00000D22  6D                insw
00000D23  8A3C              mov bh,[si]
00000D25  FEC7              inc bh
00000D27  46                inc si
00000D28  8A1C              mov bl,[si]
00000D2A  C3                ret
00000D2B  8A1C              mov bl,[si]
00000D2D  4E                dec si
00000D2E  8A3C              mov bh,[si]
00000D30  FEC7              inc bh
00000D32  C3                ret
00000D33  8A1C              mov bl,[si]
00000D35  8AFB              mov bh,bl
00000D37  D0EF              shr bh,0x0
00000D39  D0EF              shr bh,0x0
00000D3B  D0EF              shr bh,0x0
00000D3D  D0EF              shr bh,0x0
00000D3F  80E703            and bh,0x3
00000D42  80C702            add bh,0x2
00000D45  80E30F            and bl,0xf
00000D48  FEC3              inc bl
00000D4A  C3                ret
00000D4B  8A3C              mov bh,[si]
00000D4D  80E73F            and bh,0x3f
00000D50  32DB              xor bl,bl
00000D52  C3                ret
00000D53  8A1C              mov bl,[si]
00000D55  80E33F            and bl,0x3f
00000D58  B701              mov bh,0x1
00000D5A  C3                ret
00000D5B  32D2              xor dl,dl
00000D5D  E891FF            call 0xcf1
00000D60  46                inc si
00000D61  02D7              add dl,bh
00000D63  881D              mov [di],bl
00000D65  83C724            add di,0x24
00000D68  FECF              dec bh
00000D6A  75F7              jnz 0xd63
00000D6C  80FA40            cmp dl,0x40
00000D6F  72EC              jc 0xd5d
00000D71  C3                ret
00000D72  53                push bx
00000D73  243F              and al,0x3f
00000D75  8ADC              mov bl,ah
00000D77  B724              mov bh,0x24
00000D79  F6E7              mul bh
00000D7B  32FF              xor bh,bh
00000D7D  03C3              add ax,bx
00000D7F  0500E0            add ax,0xe000
00000D82  8BF8              mov di,ax
00000D84  5B                pop bx
00000D85  C3                ret
00000D86  81FE00E9          cmp si,0xe900
00000D8A  7301              jnc 0xd8d
00000D8C  C3                ret
00000D8D  81EE0009          sub si,0x900
00000D91  C3                ret
00000D92  81FE00E0          cmp si,0xe000
00000D96  7201              jc 0xd99
00000D98  C3                ret
00000D99  81C60009          add si,0x900
00000D9D  C3                ret
00000D9E  803E12C004        cmp byte [0xc012],0x4
00000DA3  7401              jz 0xda6
00000DA5  C3                ret
00000DA6  803E9E0004        cmp byte [0x9e],0x4
00000DAB  7505              jnz 0xdb2
00000DAD  B0FF              mov al,0xff
00000DAF  0AC0              or al,al
00000DB1  C3                ret
00000DB2  32C0              xor al,al
00000DB4  C3                ret
00000DB5  A08400            mov al,[0x84]
00000DB8  B124              mov cl,0x24
00000DBA  F6E1              mul cl
00000DBC  8A0E8300          mov cl,[0x83]
00000DC0  80C104            add cl,0x4
00000DC3  32ED              xor ch,ch
00000DC5  03C1              add ax,cx
00000DC7  8BF0              mov si,ax
00000DC9  033631FF          add si,[0xff31]
00000DCD  EBB7              jmp 0xd86
00000DCF  8A04              mov al,[si]
00000DD1  A880              test al,0x80
00000DD3  F9                stc
00000DD4  7501              jnz 0xdd7
00000DD6  C3                ret
00000DD7  247F              and al,0x7f
00000DD9  B110              mov cl,0x10
00000DDB  F6E1              mul cl
00000DDD  8BD8              mov bx,ax
00000DDF  031E10C0          add bx,[0xc010]
00000DE3  8A4704            mov al,[bx+0x4]
00000DE6  0AC0              or al,al
00000DE8  C3                ret
00000DE9  3C40              cmp al,0x40
00000DEB  720A              jc 0xdf7
00000DED  3AC0              cmp al,al
00000DEF  C3                ret
00000DF0  3C49              cmp al,0x49
00000DF2  7203              jc 0xdf7
00000DF4  3AC0              cmp al,al
00000DF6  C3                ret
00000DF7  57                push di
00000DF8  51                push cx
00000DF9  2E8E062CFF        mov es,word [cs:0xff2c]
00000DFE  BF0080            mov di,0x8000
00000E01  B91800            mov cx,0x18
00000E04  F2AE              repne scasb
00000E06  59                pop cx
00000E07  5F                pop di
00000E08  7501              jnz 0xe0b
00000E0A  C3                ret
00000E0B  249F              and al,0x9f
00000E0D  3C90              cmp al,0x90
00000E0F  7409              jz 0xe1a
00000E11  3C91              cmp al,0x91
00000E13  7405              jz 0xe1a
00000E15  2480              and al,0x80
00000E17  3C80              cmp al,0x80
00000E19  C3                ret
00000E1A  B0FF              mov al,0xff
00000E1C  0AC0              or al,al
00000E1E  C3                ret
00000E1F  3C49              cmp al,0x49
00000E21  7203              jc 0xe26
00000E23  3AC0              cmp al,al
00000E25  C3                ret
00000E26  57                push di
00000E27  51                push cx
00000E28  2E8E062CFF        mov es,word [cs:0xff2c]
00000E2D  BF0080            mov di,0x8000
00000E30  B91800            mov cx,0x18
00000E33  F2AE              repne scasb
00000E35  59                pop cx
00000E36  5F                pop di
00000E37  7501              jnz 0xe3a
00000E39  C3                ret
00000E3A  2480              and al,0x80
00000E3C  3C80              cmp al,0x80
00000E3E  C3                ret
00000E3F  F6069200FF        test byte [0x92],0xff
00000E44  7501              jnz 0xe47
00000E46  C3                ret
00000E47  CD61              int byte 0x61
00000E49  F6C401            test ah,0x1
00000E4C  7432              jz 0xe80
00000E4E  F6063DFFFF        test byte [0xff3d],0xff
00000E53  742B              jz 0xe80
00000E55  F60642FFFF        test byte [0xff42],0xff
00000E5A  7524              jnz 0xe80
00000E5C  A802              test al,0x2
00000E5E  7420              jz 0xe80
00000E60  C60645FF02        mov byte [0xff45],0x2
00000E65  C60646FF02        mov byte [0xff46],0x2
00000E6A  F60647FFFF        test byte [0xff47],0xff
00000E6F  7403              jz 0xe74
00000E71  E98700            jmp 0xefb
00000E74  C60647FFFF        mov byte [0xff47],0xff
00000E79  C60675FF04        mov byte [0xff75],0x4
00000E7E  EB7B              jmp 0xefb
00000E80  C60647FF00        mov byte [0xff47],0x0
00000E85  F6061DFFFF        test byte [0xff1d],0xff
00000E8A  7501              jnz 0xe8d
00000E8C  C3                ret
00000E8D  F60643FFFF        test byte [0xff43],0xff
00000E92  7401              jz 0xe95
00000E94  C3                ret
00000E95  F6063CFFFF        test byte [0xff3c],0xff
00000E9A  7401              jz 0xe9d
00000E9C  C3                ret
00000E9D  F60634FFFF        test byte [0xff34],0xff
00000EA2  7536              jnz 0xeda
00000EA4  E80EFF            call 0xdb5
00000EA7  81EE9300          sub si,0x93
00000EAB  E8E4FE            call 0xd92
00000EAE  32D2              xor dl,dl
00000EB0  B90400            mov cx,0x4
00000EB3  51                push cx
00000EB4  B90800            mov cx,0x8
00000EB7  51                push cx
00000EB8  E814FF            call 0xdcf
00000EBB  720C              jc 0xec9
00000EBD  A860              test al,0x60
00000EBF  7508              jnz 0xec9
00000EC1  F6470710          test byte [bx+0x7],0x10
00000EC5  7502              jnz 0xec9
00000EC7  B2FF              mov dl,0xff
00000EC9  46                inc si
00000ECA  59                pop cx
00000ECB  E2EA              loop 0xeb7
00000ECD  83C61C            add si,0x1c
00000ED0  E8B3FE            call 0xd86
00000ED3  59                pop cx
00000ED4  E2DD              loop 0xeb3
00000ED6  0AD2              or dl,dl
00000ED8  7506              jnz 0xee0
00000EDA  CD61              int byte 0x61
00000EDC  A801              test al,0x1
00000EDE  740C              jz 0xeec
00000EE0  C60645FF01        mov byte [0xff45],0x1
00000EE5  C60646FF00        mov byte [0xff46],0x0
00000EEA  EB0A              jmp 0xef6
00000EEC  C60645FF00        mov byte [0xff45],0x0
00000EF1  C60646FF00        mov byte [0xff46],0x0
00000EF6  C60675FF03        mov byte [0xff75],0x3
00000EFB  C6061DFF00        mov byte [0xff1d],0x0
00000F00  C6061EFF00        mov byte [0xff1e],0x0
00000F05  C60643FFFF        mov byte [0xff43],0xff
00000F0A  C3                ret
00000F0B  F60643FFFF        test byte [0xff43],0xff
00000F10  7501              jnz 0xf13
00000F12  C3                ret
00000F13  F60634FFFF        test byte [0xff34],0xff
00000F18  7408              jz 0xf22
00000F1A  F6062EFFFF        test byte [0xff2e],0xff
00000F1F  7401              jz 0xf22
00000F21  C3                ret
00000F22  E890FE            call 0xdb5
00000F25  BB9000            mov bx,0x90
00000F28  F60638FFFF        test byte [0xff38],0xff
00000F2D  7403              jz 0xf32
00000F2F  BB6C00            mov bx,0x6c
00000F32  2BF3              sub si,bx
00000F34  E85BFE            call 0xd92
00000F37  8A1EC200          mov bl,[0xc2]
00000F3B  80E301            and bl,0x1
00000F3E  02DB              add bl,bl
00000F40  02DB              add bl,bl
00000F42  02DB              add bl,bl
00000F44  02DB              add bl,bl
00000F46  A045FF            mov al,[0xff45]
00000F49  B400              mov ah,0x0
00000F4B  0AC0              or al,al
00000F4D  740C              jz 0xf5b
00000F4F  B406              mov ah,0x6
00000F51  FEC8              dec al
00000F53  7406              jz 0xf5b
00000F55  8AC3              mov al,bl
00000F57  040A              add al,0xa
00000F59  EB07              jmp 0xf62
00000F5B  A046FF            mov al,[0xff46]
00000F5E  0AC3              or al,bl
00000F60  02C4              add al,ah
00000F62  24FE              and al,0xfe
00000F64  8AD8              mov bl,al
00000F66  32FF              xor bh,bh
00000F68  2E8E062CFF        mov es,word [cs:0xff2c]
00000F6D  268BBF02B0        mov di,[es:bx-0x4ffe]
00000F72  268A05            mov al,[es:di]
00000F75  47                inc di
00000F76  3CFF              cmp al,0xff
00000F78  7501              jnz 0xf7b
00000F7A  C3                ret
00000F7B  32E4              xor ah,ah
00000F7D  03F0              add si,ax
00000F7F  E804FE            call 0xd86
00000F82  E84AFE            call 0xdcf
00000F85  72EB              jc 0xf72
00000F87  A820              test al,0x20
00000F89  75E7              jnz 0xf72
00000F8B  F6470520          test byte [bx+0x5],0x20
00000F8F  75E1              jnz 0xf72
00000F91  804F0540          or byte [bx+0x5],0x40
00000F95  806705E0          and byte [bx+0x5],0xe0
00000F99  804F0501          or byte [bx+0x5],0x1
00000F9D  EBD3              jmp 0xf72
00000F9F  B002              mov al,0x2
00000FA1  803E9E0001        cmp byte [0x9e],0x1
00000FA6  7502              jnz 0xfaa
00000FA8  B004              mov al,0x4
00000FAA  A20D9F            mov [0x9f0d],al
00000FAD  E8ED06            call 0x169d
00000FB0  F6063DFFFF        test byte [0xff3d],0xff
00000FB5  7520              jnz 0xfd7
00000FB7  C606099F00        mov byte [0x9f09],0x0
00000FBC  A0009F            mov al,[0x9f00]
00000FBF  3A068400          cmp al,[0x84]
00000FC3  7412              jz 0xfd7
00000FC5  7209              jc 0xfd0
00000FC7  E85BF6            call 0x625
00000FCA  FE068400          inc byte [0x84]
00000FCE  EB07              jmp 0xfd7
00000FD0  E85FFB            call 0xb32
00000FD3  FE0E8400          dec byte [0x84]
00000FD7  F606E600FF        test byte [0xe6],0xff
00000FDC  7507              jnz 0xfe5
00000FDE  F60634FFFF        test byte [0xff34],0xff
00000FE3  7418              jz 0xffd
00000FE5  8B3602A0          mov si,[0xa002]
00000FE9  83C607            add si,0x7
00000FEC  8A04              mov al,[si]
00000FEE  38068300          cmp [0x83],al
00000FF2  7417              jz 0x100b
00000FF4  E859F8            call 0x850
00000FF7  FE0E8300          dec byte [0x83]
00000FFB  EB0E              jmp 0x100b
00000FFD  A08300            mov al,[0x83]
00001000  3C0C              cmp al,0xc
00001002  7407              jz 0x100b
00001004  E8A2F6            call 0x6a9
00001007  FE068300          inc byte [0x83]
0000100B  A08400            mov al,[0x84]
0000100E  02068200          add al,[0x82]
00001012  243F              and al,0x3f
00001014  A235FF            mov [0xff35],al
00001017  E83807            call 0x1752
0000101A  E89511            call 0x21b2
0000101D  E8950F            call 0x1fb5
00001020  E84411            call 0x2167
00001023  E8BB08            call 0x18e1
00001026  E8881A            call 0x2ab1
00001029  F60630FFFF        test byte [0xff30],0xff
0000102E  7503              jnz 0x1033
00001030  E8EA1C            call 0x2d1d
00001033  C60636FF00        mov byte [0xff36],0x0
00001038  C606149F00        mov byte [0x9f14],0x0
0000103D  E8E304            call 0x1523
00001040  2EFF160430        call word near [cs:0x3004]
00001045  E8DE13            call 0x2426
00001048  E8B516            call 0x2700
0000104B  2EFF160630        call word near [cs:0x3006]
00001050  E85104            call 0x14a4
00001053  803E12C007        cmp byte [0xc012],0x7
00001058  7528              jnz 0x1082
0000105A  803E9E0005        cmp byte [0x9e],0x5
0000105F  7421              jz 0x1082
00001061  FE06259F          inc byte [0x9f25]
00001065  F606259F3F        test byte [0x9f25],0x3f
0000106A  7516              jnz 0x1082
0000106C  C60636FFFF        mov byte [0xff36],0xff
00001071  C60675FF09        mov byte [0xff75],0x9
00001076  B80F00            mov ax,0xf
00001079  E80D06            call 0x1689
0000107C  BAB99B            mov dx,0x9bb9
0000107F  E86203            call 0x13e4
00001082  E88F01            call 0x1214
00001085  F606E800FF        test byte [0xe8],0xff
0000108A  7407              jz 0x1093
0000108C  C60636FF00        mov byte [0xff36],0x0
00001091  EB05              jmp 0x1098
00001093  C60637FF00        mov byte [0xff37],0x0
00001098  C60640FF00        mov byte [0xff40],0x0
0000109D  F60643FFFF        test byte [0xff43],0xff
000010A2  7413              jz 0x10b7
000010A4  C60640FFFF        mov byte [0xff40],0xff
000010A9  A045FF            mov al,[0xff45]
000010AC  A241FF            mov [0xff41],al
000010AF  A046FF            mov al,[0xff46]
000010B2  A23FFF            mov [0xff3f],al
000010B5  EB17              jmp 0x10ce
000010B7  F6063CFFFF        test byte [0xff3c],0xff
000010BC  7410              jz 0x10ce
000010BE  C60640FFFF        mov byte [0xff40],0xff
000010C3  A02B9F            mov al,[0x9f2b]
000010C6  A23FFF            mov [0xff3f],al
000010C9  C60641FF01        mov byte [0xff41],0x1
000010CE  F60637FFFF        test byte [0xff37],0xff
000010D3  7503              jnz 0x10d8
000010D5  E8A803            call 0x1480
000010D8  2EFF160230        call word near [cs:0x3002]
000010DD  F606E800FF        test byte [0xe8],0xff
000010E2  752F              jnz 0x1113
000010E4  A1C600            mov ax,[0xc6]
000010E7  0BC0              or ax,ax
000010E9  7428              jz 0x1113
000010EB  48                dec ax
000010EC  A3C600            mov [0xc6],ax
000010EF  8306900008        add word [0x90],0x8
000010F4  A1B200            mov ax,[0xb2]
000010F7  3B069000          cmp ax,[0x90]
000010FB  730C              jnc 0x1109
000010FD  A1B200            mov ax,[0xb2]
00001100  A39000            mov [0x90],ax
00001103  C706C6000000      mov word [0xc6],0x0
00001109  C60675FF13        mov byte [0xff75],0x13
0000110E  2EFF160820        call word near [cs:0x2008]
00001113  2EFF160030        call word near [cs:0x3000]
00001118  F6062FFFFF        test byte [0xff2f],0xff
0000111D  740A              jz 0x1129
0000111F  2EFF161030        call word near [cs:0x3010]
00001124  C60624FF0A        mov byte [0xff24],0xa
00001129  8A0E33FF          mov cl,[0xff33]
0000112D  B002              mov al,0x2
0000112F  F6E1              mul cl
00001131  38061AFF          cmp [0xff1a],al
00001135  72FA              jc 0x1131
00001137  E8C615            call 0x2700
0000113A  2EFF160430        call word near [cs:0x3004]
0000113F  E82812            call 0x236a
00001142  E83815            call 0x267d
00001145  E82A18            call 0x2972
00001148  E8C0FD            call 0xf0b
0000114B  2EFF160630        call word near [cs:0x3006]
00001150  8A0E33FF          mov cl,[0xff33]
00001154  B004              mov al,0x4
00001156  F6E1              mul cl
00001158  50                push ax
00001159  2EFF161001        call word near [cs:0x110]
0000115E  2EFF161201        call word near [cs:0x112]
00001163  2EFF161401        call word near [cs:0x114]
00001168  2EFF161601        call word near [cs:0x116]
0000116D  2EFF161801        call word near [cs:0x118]
00001172  2EFF161E01        call word near [cs:0x11e]
00001177  7303              jnc 0x117c
00001179  E85F07            call 0x18db
0000117C  58                pop ax
0000117D  38061AFF          cmp [0xff1a],al
00001181  72D5              jc 0x1158
00001183  C6061AFF00        mov byte [0xff1a],0x0
00001188  F606E800FF        test byte [0xe8],0xff
0000118D  7401              jz 0x1190
0000118F  C3                ret
00001190  F6067F00FF        test byte [0x7f],0xff
00001195  750B              jnz 0x11a2
00001197  F7069000FFFF      test word [0x90],0xffff
0000119D  7503              jnz 0x11a2
0000119F  E95E27            jmp 0x3900
000011A2  FE06189F          inc byte [0x9f18]
000011A6  803E189F10        cmp byte [0x9f18],0x10
000011AB  7219              jc 0x11c6
000011AD  C606189F00        mov byte [0x9f18],0x0
000011B2  A19000            mov ax,[0x90]
000011B5  3B06B200          cmp ax,[0xb2]
000011B9  730B              jnc 0x11c6
000011BB  050200            add ax,0x2
000011BE  A39000            mov [0x90],ax
000011C1  2EFF160820        call word near [cs:0x2008]
000011C6  F6061E9FFF        test byte [0x9f1e],0xff
000011CB  7403              jz 0x11d0
000011CD  E92501            jmp 0x12f5
000011D0  F60634FFFF        test byte [0xff34],0xff
000011D5  7427              jz 0x11fe
000011D7  F60630FFFF        test byte [0xff30],0xff
000011DC  7420              jz 0x11fe
000011DE  803EA0EDFF        cmp byte [0xeda0],0xff
000011E3  7519              jnz 0x11fe
000011E5  8B3602A0          mov si,[0xa002]
000011E9  83C605            add si,0x5
000011EC  AD                lodsw
000011ED  56                push si
000011EE  E82825            call 0x3719
000011F1  5E                pop si
000011F2  83C604            add si,0x4
000011F5  AD                lodsw
000011F6  E8871F            call 0x3180
000011F9  C6061E9FFF        mov byte [0x9f1e],0xff
000011FE  F6062EFFFF        test byte [0xff2e],0xff
00001203  7401              jz 0x1206
00001205  C3                ret
00001206  F70618FF0100      test word [0xff18],0x1
0000120C  756B              jnz 0x1279
0000120E  C606F59E00        mov byte [0x9ef5],0x0
00001213  C3                ret
00001214  F606F09EFF        test byte [0x9ef0],0xff
00001219  742B              jz 0x1246
0000121B  B0FC              mov al,0xfc
0000121D  FE06EE9E          inc byte [0x9eee]
00001221  F606EE9E1F        test byte [0x9eee],0x1f
00001226  7507              jnz 0x122f
00001228  B0FE              mov al,0xfe
0000122A  C606F09E00        mov byte [0x9ef0],0x0
0000122F  0E                push cs
00001230  07                pop es
00001231  BF21E9            mov di,0xe921
00001234  8A0EF19E          mov cl,[0x9ef1]
00001238  32ED              xor ch,ch
0000123A  51                push cx
0000123B  B91200            mov cx,0x12
0000123E  F3AA              rep stosb
00001240  83C70A            add di,0xa
00001243  59                pop cx
00001244  E2F4              loop 0x123a
00001246  F606EF9EFF        test byte [0x9eef],0xff
0000124B  7501              jnz 0x124e
0000124D  C3                ret
0000124E  B0FC              mov al,0xfc
00001250  FE06ED9E          inc byte [0x9eed]
00001254  8026ED9E1F        and byte [0x9eed],0x1f
00001259  7507              jnz 0x1262
0000125B  B0FE              mov al,0xfe
0000125D  C606EF9E00        mov byte [0x9eef],0x0
00001262  1E                push ds
00001263  07                pop es
00001264  BF39E9            mov di,0xe939
00001267  B90200            mov cx,0x2
0000126A  51                push cx
0000126B  57                push di
0000126C  B91A00            mov cx,0x1a
0000126F  F3AA              rep stosb
00001271  5F                pop di
00001272  83C71C            add di,0x1c
00001275  59                pop cx
00001276  E2F2              loop 0x126a
00001278  C3                ret
00001279  A0F59E            mov al,[0x9ef5]
0000127C  0A063CFF          or al,[0xff3c]
00001280  0A063EFF          or al,[0xff3e]
00001284  0A06269F          or al,[0x9f26]
00001288  7401              jz 0x128b
0000128A  C3                ret
0000128B  C60675FF0B        mov byte [0xff75],0xb
00001290  2EFF160220        call word near [cs:0x2002]
00001295  E84500            call 0x12dd
00001298  2EFF1600A0        call word near [cs:0xa000]
0000129D  E83D00            call 0x12dd
000012A0  803E4BFF08        cmp byte [0xff4b],0x8
000012A5  7503              jnz 0x12aa
000012A7  E93A27            jmp 0x39e4
000012AA  2EFF160220        call word near [cs:0x2002]
000012AF  1E                push ds
000012B0  2EFF161A30        call word near [cs:0x301a]
000012B5  B91800            mov cx,0x18
000012B8  2EFF164420        call word near [cs:0x2044]
000012BD  1F                pop ds
000012BE  C606F59EFF        mov byte [0x9ef5],0xff
000012C3  E8F100            call 0x13b7
000012C6  C6061DFF00        mov byte [0xff1d],0x0
000012CB  C6061EFF00        mov byte [0xff1e],0x0
000012D0  C606EF9E00        mov byte [0x9eef],0x0
000012D5  C606F09E00        mov byte [0x9ef0],0x0
000012DA  E9C2FC            jmp 0xf9f
000012DD  2E8E062CFF        mov es,word [cs:0xff2c]
000012E2  BF00C0            mov di,0xc000
000012E5  BE00A0            mov si,0xa000
000012E8  B90008            mov cx,0x800
000012EB  268B05            mov ax,[es:di]
000012EE  A5                movsw
000012EF  8944FE            mov [si-0x2],ax
000012F2  E2F7              loop 0x12eb
000012F4  C3                ret
000012F5  F606E800FF        test byte [0xe8],0xff
000012FA  7401              jz 0x12fd
000012FC  C3                ret
000012FD  8B3600C0          mov si,[0xc000]
00001301  83C606            add si,0x6
00001304  AC                lodsb
00001305  56                push si
00001306  A2FE9E            mov [0x9efe],al
00001309  B30B              mov bl,0xb
0000130B  F6E3              mul bl
0000130D  05BC9C            add ax,0x9cbc
00001310  8BF0              mov si,ax
00001312  0E                push cs
00001313  07                pop es
00001314  BF00A0            mov di,0xa000
00001317  B003              mov al,0x3
00001319  2EFF160C01        call word near [cs:0x10c]
0000131E  5E                pop si
0000131F  AC                lodsb
00001320  A2FF9E            mov [0x9eff],al
00001323  B30B              mov bl,0xb
00001325  F6E3              mul bl
00001327  058D9D            add ax,0x9d8d
0000132A  8BF0              mov si,ax
0000132C  2E8E062CFF        mov es,word [cs:0xff2c]
00001331  BF0040            mov di,0x4000
00001334  B002              mov al,0x2
00001336  2EFF160C01        call word near [cs:0x10c]
0000133B  1E                push ds
0000133C  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001341  BE0040            mov si,0x4000
00001344  BD00A0            mov bp,0xa000
00001347  B90001            mov cx,0x100
0000134A  2EFF162830        call word near [cs:0x3028]
0000134F  1F                pop ds
00001350  C60634FF00        mov byte [0xff34],0x0
00001355  8B3600C0          mov si,[0xc000]
00001359  83C608            add si,0x8
0000135C  AD                lodsw
0000135D  3DFFFF            cmp ax,0xffff
00001360  7407              jz 0x1369
00001362  8BD8              mov bx,ax
00001364  AD                lodsw
00001365  8907              mov [bx],ax
00001367  EBF3              jmp 0x135c
00001369  E849FA            call 0xdb5
0000136C  A18000            mov ax,[0x80]
0000136F  8A1E8300          mov bl,[0x83]
00001373  32FF              xor bh,bh
00001375  03C3              add ax,bx
00001377  F644FBFF          test byte [si-0x5],0xff
0000137B  7403              jz 0x1380
0000137D  050900            add ax,0x9
00001380  8BD8              mov bx,ax
00001382  2B1E02C0          sub bx,[0xc002]
00001386  7202              jc 0x138a
00001388  8BC3              mov ax,bx
0000138A  8B360AC0          mov si,[0xc00a]
0000138E  8904              mov [si],ax
00001390  E84E05            call 0x18e1
00001393  E87EFE            call 0x1214
00001396  E8E700            call 0x1480
00001399  2EFF161230        call word near [cs:0x3012]
0000139E  BB1C02            mov bx,0x21c
000013A1  32C0              xor al,al
000013A3  B542              mov ch,0x42
000013A5  2EFF160420        call word near [cs:0x2004]
000013AA  B80100            mov ax,0x1
000013AD  CD60              int byte 0x60
000013AF  C6061E9F00        mov byte [0x9f1e],0x0
000013B4  E98FEC            jmp 0x46
000013B7  0E                push cs
000013B8  07                pop es
000013B9  BF00E9            mov di,0xe900
000013BC  B91402            mov cx,0x214
000013BF  B0FD              mov al,0xfd
000013C1  F3AA              rep stosb
000013C3  C3                ret
000013C4  57                push di
000013C5  2E8E062CFF        mov es,word [cs:0xff2c]
000013CA  BF2080            mov di,0x8020
000013CD  B90400            mov cx,0x4
000013D0  268A25            mov ah,[es:di]
000013D3  47                inc di
000013D4  0AE4              or ah,ah
000013D6  7406              jz 0x13de
000013D8  3AE0              cmp ah,al
000013DA  7406              jz 0x13e2
000013DC  E2F2              loop 0x13d0
000013DE  B4FF              mov ah,0xff
000013E0  0AE4              or ah,ah
000013E2  5F                pop di
000013E3  C3                ret
000013E4  56                push si
000013E5  52                push dx
000013E6  BB1E0E            mov bx,0xe1e
000013E9  B91034            mov cx,0x3410
000013EC  B0FF              mov al,0xff
000013EE  2EFF160020        call word near [cs:0x2000]
000013F3  C606ED9E00        mov byte [0x9eed],0x0
000013F8  C606EF9EFF        mov byte [0x9eef],0xff
000013FD  C606EE9EFF        mov byte [0x9eee],0xff
00001402  5E                pop si
00001403  AD                lodsw
00001404  053A00            add ax,0x3a
00001407  8BD8              mov bx,ax
00001409  B122              mov cl,0x22
0000140B  2EFF162A20        call word near [cs:0x202a]
00001410  5E                pop si
00001411  C3                ret
00001412  AC                lodsb
00001413  0419              add al,0x19
00001415  8AC8              mov cl,al
00001417  51                push cx
00001418  AC                lodsb
00001419  56                push si
0000141A  0402              add al,0x2
0000141C  A2F19E            mov [0x9ef1],al
0000141F  B308              mov bl,0x8
00001421  F6E3              mul bl
00001423  BB1616            mov bx,0x1616
00001426  B524              mov ch,0x24
00001428  8AC8              mov cl,al
0000142A  B0FF              mov al,0xff
0000142C  2EFF160020        call word near [cs:0x2000]
00001431  5E                pop si
00001432  C606ED9E00        mov byte [0x9eed],0x0
00001437  C606EF9E00        mov byte [0x9eef],0x0
0000143C  C606EE9E00        mov byte [0x9eee],0x0
00001441  C606F09EFF        mov byte [0x9ef0],0xff
00001446  BB5800            mov bx,0x58
00001449  59                pop cx
0000144A  891EF29E          mov [0x9ef2],bx
0000144E  880EF49E          mov [0x9ef4],cl
00001452  AC                lodsb
00001453  32E4              xor ah,ah
00001455  03D8              add bx,ax
00001457  AC                lodsb
00001458  3CFF              cmp al,0xff
0000145A  7501              jnz 0x145d
0000145C  C3                ret
0000145D  3C2F              cmp al,0x2f
0000145F  7412              jz 0x1473
00001461  B401              mov ah,0x1
00001463  51                push cx
00001464  53                push bx
00001465  56                push si
00001466  2EFF162220        call word near [cs:0x2022]
0000146B  5E                pop si
0000146C  5B                pop bx
0000146D  59                pop cx
0000146E  83C308            add bx,0x8
00001471  EBE4              jmp 0x1457
00001473  8B1EF29E          mov bx,[0x9ef2]
00001477  8A0EF49E          mov cl,[0x9ef4]
0000147B  80C10C            add cl,0xc
0000147E  EBCA              jmp 0x144a
00001480  A08400            mov al,[0x84]
00001483  B11C              mov cl,0x1c
00001485  F6E1              mul cl
00001487  8A0E8300          mov cl,[0x83]
0000148B  32ED              xor ch,ch
0000148D  03C1              add ax,cx
0000148F  0500E9            add ax,0xe900
00001492  8BF8              mov di,ax
00001494  0E                push cs
00001495  07                pop es
00001496  B0FF              mov al,0xff
00001498  B90300            mov cx,0x3
0000149B  AA                stosb
0000149C  AA                stosb
0000149D  AA                stosb
0000149E  83C719            add di,0x19
000014A1  E2F8              loop 0x149b
000014A3  C3                ret
000014A4  803E9E0002        cmp byte [0x9e],0x2
000014A9  7501              jnz 0x14ac
000014AB  C3                ret
000014AC  C606179F00        mov byte [0x9f17],0x0
000014B1  E801F9            call 0xdb5
000014B4  B90300            mov cx,0x3
000014B7  F60638FFFF        test byte [0xff38],0xff
000014BC  7407              jz 0x14c5
000014BE  83C624            add si,0x24
000014C1  E8C2F8            call 0xd86
000014C4  49                dec cx
000014C5  51                push cx
000014C6  B90300            mov cx,0x3
000014C9  51                push cx
000014CA  8A04              mov al,[si]
000014CC  46                inc si
000014CD  E8F4FE            call 0x13c4
000014D0  7505              jnz 0x14d7
000014D2  C606179FFF        mov byte [0x9f17],0xff
000014D7  59                pop cx
000014D8  E2EF              loop 0x14c9
000014DA  83C621            add si,0x21
000014DD  E8A6F8            call 0xd86
000014E0  59                pop cx
000014E1  E2E2              loop 0x14c5
000014E3  F60639FFFF        test byte [0xff39],0xff
000014E8  750D              jnz 0x14f7
000014EA  46                inc si
000014EB  8A04              mov al,[si]
000014ED  E8D4FE            call 0x13c4
000014F0  7505              jnz 0x14f7
000014F2  C606179FFF        mov byte [0x9f17],0xff
000014F7  F606179FFF        test byte [0x9f17],0xff
000014FC  7501              jnz 0x14ff
000014FE  C3                ret
000014FF  C60636FFFF        mov byte [0xff36],0xff
00001504  C60675FF09        mov byte [0xff75],0x9
00001509  8A1E12C0          mov bl,[0xc012]
0000150D  FECB              dec bl
0000150F  32FF              xor bh,bh
00001511  8A871675          mov al,[bx+0x7516]
00001515  32E4              xor ah,ah
00001517  E96F01            jmp 0x1689
0000151A  0101              add [bx+di],ax
0000151C  0408              add al,0x8
0000151E  1414              adc al,0x14
00001520  1414              adc al,0x14
00001522  14F6              adc al,0xf6
00001524  06                push es
00001525  34FF              xor al,0xff
00001527  FF7408            push word [si+0x8]
0000152A  F6062EFFFF        test byte [0xff2e],0xff
0000152F  7401              jz 0x1532
00001531  C3                ret
00001532  C706129F0000      mov word [0x9f12],0x0
00001538  E87AF8            call 0xdb5
0000153B  4E                dec si
0000153C  BF0E9F            mov di,0x9f0e
0000153F  BB5176            mov bx,0x7651
00001542  F60638FFFF        test byte [0xff38],0xff
00001547  7509              jnz 0x1552
00001549  BB3E76            mov bx,0x763e
0000154C  83EE24            sub si,0x24
0000154F  E840F8            call 0xd92
00001552  53                push bx
00001553  57                push di
00001554  56                push si
00001555  FF                db 0xff
00001556  D31A              rcr word [bp+si],cl
00001558  C088057403        ror byte [bx+si+0x7405],byte 0x3
0000155D  E85E00            call 0x15be
00001560  5E                pop si
00001561  5F                pop di
00001562  5B                pop bx
00001563  46                inc si
00001564  47                inc di
00001565  53                push bx
00001566  57                push di
00001567  56                push si
00001568  FF                db 0xff
00001569  D3                db 0xd3
0000156A  7203              jc 0x156f
0000156C  E8F300            call 0x1662
0000156F  1AC0              sbb al,al
00001571  8805              mov [di],al
00001573  7403              jz 0x1578
00001575  E84600            call 0x15be
00001578  5E                pop si
00001579  5F                pop di
0000157A  5B                pop bx
0000157B  46                inc si
0000157C  47                inc di
0000157D  53                push bx
0000157E  57                push di
0000157F  56                push si
00001580  FF                db 0xff
00001581  D3                db 0xd3
00001582  7203              jc 0x1587
00001584  E8DB00            call 0x1662
00001587  1AC0              sbb al,al
00001589  8805              mov [di],al
0000158B  7403              jz 0x1590
0000158D  E84200            call 0x15d2
00001590  5E                pop si
00001591  5F                pop di
00001592  5B                pop bx
00001593  46                inc si
00001594  47                inc di
00001595  FF                db 0xff
00001596  D31A              rcr word [bp+si],cl
00001598  C088057403        ror byte [bx+si+0x7405],byte 0x3
0000159D  E83200            call 0x15d2
000015A0  BF0E9F            mov di,0x9f0e
000015A3  8A05              mov al,[di]
000015A5  0A4501            or al,[di+0x1]
000015A8  0A4502            or al,[di+0x2]
000015AB  0A4503            or al,[di+0x3]
000015AE  A2149F            mov [0x9f14],al
000015B1  A236FF            mov [0xff36],al
000015B4  0AC0              or al,al
000015B6  7405              jz 0x15bd
000015B8  2EFF161A20        call word near [cs:0x201a]
000015BD  C3                ret
000015BE  F606E800FF        test byte [0xe8],0xff
000015C3  7401              jz 0x15c6
000015C5  C3                ret
000015C6  A1129F            mov ax,[0x9f12]
000015C9  F606C20001        test byte [0xc2],0x1
000015CE  7445              jz 0x1615
000015D0  EB14              jmp 0x15e6
000015D2  F606E800FF        test byte [0xe8],0xff
000015D7  7401              jz 0x15da
000015D9  C3                ret
000015DA  A1129F            mov ax,[0x9f12]
000015DD  F606C20001        test byte [0xc2],0x1
000015E2  7531              jnz 0x1615
000015E4  EB00              jmp 0x15e6
000015E6  F6069300FF        test byte [0x93],0xff
000015EB  7428              jz 0x1615
000015ED  D1E8              shr ax,0x0
000015EF  8A0E9300          mov cl,[0x93]
000015F3  FEC1              inc cl
000015F5  D0E9              shr cl,0x0
000015F7  D3E8              shr ax,cl
000015F9  29069400          sub [0x94],ax
000015FD  7202              jc 0x1601
000015FF  750B              jnz 0x160c
00001601  50                push ax
00001602  E81900            call 0x161e
00001605  C70694000000      mov word [0x94],0x0
0000160B  58                pop ax
0000160C  E87A00            call 0x1689
0000160F  C60675FF08        mov byte [0xff75],0x8
00001614  C3                ret
00001615  E87100            call 0x1689
00001618  C60675FF09        mov byte [0xff75],0x9
0000161D  C3                ret
0000161E  C606930000        mov byte [0x93],0x0
00001623  BB1CC5            mov bx,0xc51c
00001626  B0FF              mov al,0xff
00001628  B518              mov ch,0x18
0000162A  2EFF160420        call word near [cs:0x2004]
0000162F  BBA33E            mov bx,0x3ea3
00001632  B91105            mov cx,0x511
00001635  32C0              xor al,al
00001637  2EFF160020        call word near [cs:0x2000]
0000163C  BAB49A            mov dx,0x9ab4
0000163F  E9A2FD            jmp 0x13e4
00001642  E88AF7            call 0xdcf
00001645  7208              jc 0x164f
00001647  A840              test al,0x40
00001649  7504              jnz 0x164f
0000164B  240F              and al,0xf
0000164D  EB2A              jmp 0x1679
0000164F  83C624            add si,0x24
00001652  E831F7            call 0xd86
00001655  E877F7            call 0xdcf
00001658  7208              jc 0x1662
0000165A  A840              test al,0x40
0000165C  7504              jnz 0x1662
0000165E  240F              and al,0xf
00001660  EB17              jmp 0x1679
00001662  83C624            add si,0x24
00001665  E81EF7            call 0xd86
00001668  E864F7            call 0xdcf
0000166B  F5                cmc
0000166C  7201              jc 0x166f
0000166E  C3                ret
0000166F  F8                clc
00001670  A840              test al,0x40
00001672  7401              jz 0x1675
00001674  C3                ret
00001675  240F              and al,0xf
00001677  EB00              jmp 0x1679
00001679  8AD8              mov bl,al
0000167B  32FF              xor bh,bh
0000167D  8A8710A0          mov al,[bx-0x5ff0]
00001681  32E4              xor ah,ah
00001683  0106129F          add [0x9f12],ax
00001687  F9                stc
00001688  C3                ret
00001689  29069000          sub [0x90],ax
0000168D  7306              jnc 0x1695
0000168F  C70690000000      mov word [0x90],0x0
00001695  56                push si
00001696  2EFF160820        call word near [cs:0x2008]
0000169B  5E                pop si
0000169C  C3                ret
0000169D  C606159F00        mov byte [0x9f15],0x0
000016A2  E810F7            call 0xdb5
000016A5  83C649            add si,0x49
000016A8  E8DBF6            call 0xd86
000016AB  B90300            mov cx,0x3
000016AE  51                push cx
000016AF  E80A00            call 0x16bc
000016B2  83EE24            sub si,0x24
000016B5  E8DAF6            call 0xd92
000016B8  59                pop cx
000016B9  E2F3              loop 0x16ae
000016BB  C3                ret
000016BC  8A04              mov al,[si]
000016BE  56                push si
000016BF  E83800            call 0x16fa
000016C2  5E                pop si
000016C3  7401              jz 0x16c6
000016C5  C3                ret
000016C6  58                pop ax
000016C7  58                pop ax
000016C8  8AD9              mov bl,cl
000016CA  32FF              xor bh,bh
000016CC  03DB              add bx,bx
000016CE  FFA7CE76          jmp word near [bx+0x76ce]
000016D2  D476              aam byte 0x76
000016D4  F0                lock
000016D5  76EA              jna 0x16c1
000016D7  76E8              jna 0x16c1
000016D9  4A                dec dx
000016DA  EF                out dx,ax
000016DB  E847EF            call 0x625
000016DE  C606159FFF        mov byte [0x9f15],0xff
000016E3  C6063DFF00        mov byte [0xff3d],0x0
000016E8  C606E70080        mov byte [0xe7],0x80
000016ED  C3                ret
000016EE  E85FF1            call 0x850
000016F1  E95CF1            jmp 0x850
000016F4  E8B2EF            call 0x6a9
000016F7  E9AFEF            jmp 0x6a9
000016FA  0AC0              or al,al
000016FC  744F              jz 0x174d
000016FE  2E8E062CFF        mov es,word [cs:0xff2c]
00001703  8AF8              mov bh,al
00001705  32C9              xor cl,cl
00001707  BE2480            mov si,0x8024
0000170A  B304              mov bl,0x4
0000170C  268A04            mov al,[es:si]
0000170F  46                inc si
00001710  0AC0              or al,al
00001712  7409              jz 0x171d
00001714  3AC7              cmp al,bh
00001716  7501              jnz 0x1719
00001718  C3                ret
00001719  FECB              dec bl
0000171B  75EF              jnz 0x170c
0000171D  FEC1              inc cl
0000171F  BE2880            mov si,0x8028
00001722  B304              mov bl,0x4
00001724  268A04            mov al,[es:si]
00001727  46                inc si
00001728  0AC0              or al,al
0000172A  7409              jz 0x1735
0000172C  3AC7              cmp al,bh
0000172E  7501              jnz 0x1731
00001730  C3                ret
00001731  FECB              dec bl
00001733  75EF              jnz 0x1724
00001735  FEC1              inc cl
00001737  BE2C80            mov si,0x802c
0000173A  B304              mov bl,0x4
0000173C  268A04            mov al,[es:si]
0000173F  46                inc si
00001740  0AC0              or al,al
00001742  7409              jz 0x174d
00001744  3AC7              cmp al,bh
00001746  7501              jnz 0x1749
00001748  C3                ret
00001749  FECB              dec bl
0000174B  75EF              jnz 0x173c
0000174D  B1FF              mov cl,0xff
0000174F  0AC9              or cl,cl
00001751  C3                ret
00001752  A113C0            mov ax,[0xc013]
00001755  3DFFFF            cmp ax,0xffff
00001758  746B              jz 0x17c5
0000175A  E8481F            call 0x36a5
0000175D  7266              jc 0x17c5
0000175F  A08300            mov al,[0x83]
00001762  0404              add al,0x4
00001764  8AE0              mov ah,al
00001766  2AC3              sub al,bl
00001768  7302              jnc 0x176c
0000176A  F6D8              neg al
0000176C  8AF8              mov bh,al
0000176E  2ADC              sub bl,ah
00001770  7302              jnc 0x1774
00001772  F6DB              neg bl
00001774  3ADF              cmp bl,bh
00001776  7202              jc 0x177a
00001778  8ADF              mov bl,bh
0000177A  881E2C9F          mov [0x9f2c],bl
0000177E  8A1E15C0          mov bl,[0xc015]
00001782  8A3E35FF          mov bh,[0xff35]
00001786  8AC7              mov al,bh
00001788  2AC3              sub al,bl
0000178A  243F              and al,0x3f
0000178C  2ADF              sub bl,bh
0000178E  80E33F            and bl,0x3f
00001791  3AD8              cmp bl,al
00001793  7202              jc 0x1797
00001795  8AD8              mov bl,al
00001797  881E2D9F          mov [0x9f2d],bl
0000179B  803E2C9F10        cmp byte [0x9f2c],0x10
000017A0  7323              jnc 0x17c5
000017A2  A02C9F            mov al,[0x9f2c]
000017A5  BBC777            mov bx,0x77c7
000017A8  D7                xlatb
000017A9  8AD0              mov dl,al
000017AB  803E2D9F10        cmp byte [0x9f2d],0x10
000017B0  7313              jnc 0x17c5
000017B2  A02D9F            mov al,[0x9f2d]
000017B5  BBC777            mov bx,0x77c7
000017B8  D7                xlatb
000017B9  02C2              add al,dl
000017BB  7208              jc 0x17c5
000017BD  BBD777            mov bx,0x77d7
000017C0  D7                xlatb
000017C1  A208FF            mov [0xff08],al
000017C4  C3                ret
000017C5  C60608FF00        mov byte [0xff08],0x0
000017CA  C3                ret
000017CB  0001              add [bx+di],al
000017CD  0409              add al,0x9
000017CF  1019              adc [bx+di],bl
000017D1  2431              and al,0x31
000017D3  40                inc ax
000017D4  51                push cx
000017D5  647990            fs jns 0x1768
000017D8  A9C4E1            test ax,0xe1c4
000017DB  0F                db 0x0f
000017DC  0F                db 0x0f
000017DD  0F                db 0x0f
000017DE  0F                db 0x0f
000017DF  0F                db 0x0f
000017E0  0F                db 0x0f
000017E1  0F                db 0x0f
000017E2  0F                db 0x0f
000017E3  0F                db 0x0f
000017E4  0F                db 0x0f
000017E5  0F                db 0x0f
000017E6  0F                db 0x0f
000017E7  0F                db 0x0f
000017E8  0F                db 0x0f
000017E9  0F                db 0x0f
000017EA  0F                db 0x0f
000017EB  0F0E              femms
000017ED  0E                push cs
000017EE  0E                push cs
000017EF  0E                push cs
000017F0  0E                push cs
000017F1  0E                push cs
000017F2  0E                push cs
000017F3  0E                push cs
000017F4  0E                push cs
000017F5  0E                push cs
000017F6  0E                push cs
000017F7  0E                push cs
000017F8  0E                push cs
000017F9  0E                push cs
000017FA  0E                push cs
000017FB  0E                push cs
000017FC  0E                push cs
000017FD  0E                push cs
000017FE  0E                push cs
000017FF  0E                push cs
00001800  0D0D0D            or ax,0xd0d
00001803  0D0D0D            or ax,0xd0d
00001806  0D0D0D            or ax,0xd0d
00001809  0D0D0D            or ax,0xd0d
0000180C  0D0D0D            or ax,0xd0d
0000180F  0D0D0D            or ax,0xd0d
00001812  0D0D0D            or ax,0xd0d
00001815  0D0D0D            or ax,0xd0d
00001818  0D0D0D            or ax,0xd0d
0000181B  0D0C0C            or ax,0xc0c
0000181E  0C0C              or al,0xc
00001820  0C0C              or al,0xc
00001822  0C0C              or al,0xc
00001824  0C0C              or al,0xc
00001826  0C0C              or al,0xc
00001828  0C0C              or al,0xc
0000182A  0C0C              or al,0xc
0000182C  0C0C              or al,0xc
0000182E  0C0C              or al,0xc
00001830  0C0C              or al,0xc
00001832  0C0C              or al,0xc
00001834  0C0C              or al,0xc
00001836  0C0C              or al,0xc
00001838  0C0C              or al,0xc
0000183A  0C0C              or al,0xc
0000183C  0C0C              or al,0xc
0000183E  0C0C              or al,0xc
00001840  0A0A              or cl,[bp+si]
00001842  0A0A              or cl,[bp+si]
00001844  0A0A              or cl,[bp+si]
00001846  0A0A              or cl,[bp+si]
00001848  0A0A              or cl,[bp+si]
0000184A  0A0A              or cl,[bp+si]
0000184C  0A0A              or cl,[bp+si]
0000184E  0A0A              or cl,[bp+si]
00001850  0A0A              or cl,[bp+si]
00001852  0A0A              or cl,[bp+si]
00001854  0A0A              or cl,[bp+si]
00001856  0A0A              or cl,[bp+si]
00001858  0A0A              or cl,[bp+si]
0000185A  0A0A              or cl,[bp+si]
0000185C  0A0A              or cl,[bp+si]
0000185E  0A0A              or cl,[bp+si]
00001860  0A0A              or cl,[bp+si]
00001862  0A0A              or cl,[bp+si]
00001864  0A0A              or cl,[bp+si]
00001866  0A0A              or cl,[bp+si]
00001868  0A0A              or cl,[bp+si]
0000186A  0A0A              or cl,[bp+si]
0000186C  0808              or [bx+si],cl
0000186E  0808              or [bx+si],cl
00001870  0808              or [bx+si],cl
00001872  0808              or [bx+si],cl
00001874  0808              or [bx+si],cl
00001876  0808              or [bx+si],cl
00001878  0808              or [bx+si],cl
0000187A  0808              or [bx+si],cl
0000187C  0808              or [bx+si],cl
0000187E  0808              or [bx+si],cl
00001880  0808              or [bx+si],cl
00001882  0808              or [bx+si],cl
00001884  0808              or [bx+si],cl
00001886  0808              or [bx+si],cl
00001888  0808              or [bx+si],cl
0000188A  0808              or [bx+si],cl
0000188C  0808              or [bx+si],cl
0000188E  0808              or [bx+si],cl
00001890  0808              or [bx+si],cl
00001892  0808              or [bx+si],cl
00001894  0808              or [bx+si],cl
00001896  0808              or [bx+si],cl
00001898  0808              or [bx+si],cl
0000189A  0808              or [bx+si],cl
0000189C  0808              or [bx+si],cl
0000189E  0808              or [bx+si],cl
000018A0  06                push es
000018A1  06                push es
000018A2  06                push es
000018A3  06                push es
000018A4  06                push es
000018A5  06                push es
000018A6  06                push es
000018A7  06                push es
000018A8  06                push es
000018A9  06                push es
000018AA  06                push es
000018AB  06                push es
000018AC  06                push es
000018AD  06                push es
000018AE  06                push es
000018AF  06                push es
000018B0  06                push es
000018B1  06                push es
000018B2  06                push es
000018B3  06                push es
000018B4  06                push es
000018B5  06                push es
000018B6  06                push es
000018B7  06                push es
000018B8  06                push es
000018B9  06                push es
000018BA  06                push es
000018BB  06                push es
000018BC  06                push es
000018BD  06                push es
000018BE  06                push es
000018BF  06                push es
000018C0  06                push es
000018C1  06                push es
000018C2  06                push es
000018C3  06                push es
000018C4  06                push es
000018C5  06                push es
000018C6  06                push es
000018C7  06                push es
000018C8  06                push es
000018C9  06                push es
000018CA  06                push es
000018CB  06                push es
000018CC  06                push es
000018CD  06                push es
000018CE  06                push es
000018CF  06                push es
000018D0  06                push es
000018D1  06                push es
000018D2  06                push es
000018D3  06                push es
000018D4  06                push es
000018D5  06                push es
000018D6  06                push es
000018D7  06                push es
000018D8  06                push es
000018D9  06                push es
000018DA  06                push es
000018DB  BB1C60            mov bx,0x601c
000018DE  E9A804            jmp 0x1d89
000018E1  8B2E0AC0          mov bp,[0xc00a]
000018E5  3E8B4600          mov ax,[ds:bp+0x0]
000018E9  3DFFFF            cmp ax,0xffff
000018EC  7501              jnz 0x18ef
000018EE  C3                ret
000018EF  E89300            call 0x1985
000018F2  7243              jc 0x1937
000018F4  3E8A4603          mov al,[ds:bp+0x3]
000018F8  2407              and al,0x7
000018FA  0461              add al,0x61
000018FC  A2B679            mov [0x79b6],al
000018FF  A2CA79            mov [0x79ca],al
00001902  3E8A4602          mov al,[ds:bp+0x2]
00001906  32E4              xor ah,ah
00001908  E867F4            call 0xd72
0000190B  80FB04            cmp bl,0x4
0000190E  722C              jc 0x193c
00001910  8BCB              mov cx,bx
00001912  80EB27            sub bl,0x27
00001915  F6DB              neg bl
00001917  FEC3              inc bl
00001919  8AC3              mov al,bl
0000191B  3C06              cmp al,0x6
0000191D  7202              jc 0x1921
0000191F  B005              mov al,0x5
00001921  80E904            sub cl,0x4
00001924  32ED              xor ch,ch
00001926  03F9              add di,cx
00001928  BEC879            mov si,0x79c8
0000192B  3EF6460380        test byte [ds:bp+0x3],0x80
00001930  7523              jnz 0x1955
00001932  BEB479            mov si,0x79b4
00001935  EB1E              jmp 0x1955
00001937  83C50C            add bp,0xc
0000193A  EBA9              jmp 0x18e5
0000193C  BEC879            mov si,0x79c8
0000193F  3EF6460380        test byte [ds:bp+0x3],0x80
00001944  7503              jnz 0x1949
00001946  BEB479            mov si,0x79b4
00001949  8AC3              mov al,bl
0000194B  FEC0              inc al
0000194D  B105              mov cl,0x5
0000194F  2AC8              sub cl,al
00001951  32ED              xor ch,ch
00001953  03F1              add si,cx
00001955  B90400            mov cx,0x4
00001958  51                push cx
00001959  50                push ax
0000195A  57                push di
0000195B  56                push si
0000195C  E81B00            call 0x197a
0000195F  47                inc di
00001960  46                inc si
00001961  FEC8              dec al
00001963  75F7              jnz 0x195c
00001965  5E                pop si
00001966  83C605            add si,0x5
00001969  87F7              xchg si,di
0000196B  5E                pop si
0000196C  83C624            add si,0x24
0000196F  E814F4            call 0xd86
00001972  87FE              xchg di,si
00001974  58                pop ax
00001975  59                pop cx
00001976  E2E0              loop 0x1958
00001978  EBBD              jmp 0x1937
0000197A  F60580            test byte [di],0x80
0000197D  7401              jz 0x1980
0000197F  C3                ret
00001980  8A14              mov dl,[si]
00001982  8815              mov [di],dl
00001984  C3                ret
00001985  050300            add ax,0x3
00001988  50                push ax
00001989  2B0602C0          sub ax,[0xc002]
0000198D  5B                pop bx
0000198E  7301              jnc 0x1991
00001990  93                xchg ax,bx
00001991  50                push ax
00001992  2B068000          sub ax,[0x80]
00001996  5B                pop bx
00001997  7207              jc 0x19a0
00001999  93                xchg ax,bx
0000199A  B82700            mov ax,0x27
0000199D  2BC3              sub ax,bx
0000199F  C3                ret
000019A0  B82700            mov ax,0x27
000019A3  2BC3              sub ax,bx
000019A5  7301              jnc 0x19a8
000019A7  C3                ret
000019A8  A102C0            mov ax,[0xc002]
000019AB  2B068000          sub ax,[0x80]
000019AF  03C3              add ax,bx
000019B1  93                xchg ax,bx
000019B2  B82700            mov ax,0x27
000019B5  2BC3              sub ax,bx
000019B7  C3                ret
000019B8  49                dec cx
000019B9  4A                dec dx
000019BA  61                popa
000019BB  4B                dec bx
000019BC  4C                dec sp
000019BD  4D                dec bp
000019BE  4F                dec di
000019BF  50                push ax
000019C0  51                push cx
000019C1  4E                dec si
000019C2  5F                pop di
000019C3  52                push dx
000019C4  53                push bx
000019C5  54                push sp
000019C6  60                pusha
000019C7  5F                pop di
000019C8  55                push bp
000019C9  56                push si
000019CA  57                push di
000019CB  60                pusha
000019CC  49                dec cx
000019CD  4A                dec dx
000019CE  61                popa
000019CF  4B                dec bx
000019D0  4C                dec sp
000019D1  4D                dec bp
000019D2  58                pop ax
000019D3  00594E            add [bx+di+0x4e],bl
000019D6  5F                pop di
000019D7  5A                pop dx
000019D8  005B60            add [bp+di+0x60],bl
000019DB  5F                pop di
000019DC  5C                pop sp
000019DD  5D                pop bp
000019DE  5E                pop si
000019DF  60                pusha
000019E0  FA                cli
000019E1  BC0020            mov sp,0x2000
000019E4  FB                sti
000019E5  8CC8              mov ax,cs
000019E7  8ED8              mov ds,ax
000019E9  8EC0              mov es,ax
000019EB  BFED9E            mov di,0x9eed
000019EE  B92E9F            mov cx,0x9f2e
000019F1  81E9ED9E          sub cx,0x9eed
000019F5  49                dec cx
000019F6  32C0              xor al,al
000019F8  F3AA              rep stosb
000019FA  F6D0              not al
000019FC  A2F59E            mov [0x9ef5],al
000019FF  A2FE9E            mov [0x9efe],al
00001A02  A2FF9E            mov [0x9eff],al
00001A05  E85704            call 0x1e5f
00001A08  B0FF              mov al,0xff
00001A0A  A260EB            mov [0xeb60],al
00001A0D  A267EB            mov [0xeb67],al
00001A10  A26EEB            mov [0xeb6e],al
00001A13  A275EB            mov [0xeb75],al
00001A16  C6063AFF00        mov byte [0xff3a],0x0
00001A1B  2E8E062CFF        mov es,word [cs:0xff2c]
00001A20  BEE69B            mov si,0x9be6
00001A23  BF0060            mov di,0x6000
00001A26  B002              mov al,0x2
00001A28  2EFF160C01        call word near [cs:0x10c]
00001A2D  1E                push ds
00001A2E  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001A33  BE3363            mov si,0x6333
00001A36  BD00D0            mov bp,0xd000
00001A39  B9E600            mov cx,0xe6
00001A3C  2EFF162830        call word near [cs:0x3028]
00001A41  1F                pop ds
00001A42  8B3600C0          mov si,[0xc000]
00001A46  AC                lodsb
00001A47  E84D04            call 0x1e97
00001A4A  2EFF160220        call word near [cs:0x2002]
00001A4F  BEFD9B            mov si,0x9bfd
00001A52  2E8E062CFF        mov es,word [cs:0xff2c]
00001A57  BF0080            mov di,0x8000
00001A5A  B002              mov al,0x2
00001A5C  2EFF160C01        call word near [cs:0x10c]
00001A61  1E                push ds
00001A62  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001A67  BE0080            mov si,0x8000
00001A6A  B98000            mov cx,0x80
00001A6D  2EFF164420        call word near [cs:0x2044]
00001A72  1F                pop ds
00001A73  32C0              xor al,al
00001A75  2EFF161E30        call word near [cs:0x301e]
00001A7A  A0C400            mov al,[0xc4]
00001A7D  0AC0              or al,al
00001A7F  7803              js 0x1a84
00001A81  E87CF1            call 0xc00
00001A84  E9EB01            jmp 0x1c72
00001A87  E82BF3            call 0xdb5
00001A8A  83EE25            sub si,0x25
00001A8D  E802F3            call 0xd92
00001A90  803C4A            cmp byte [si],0x4a
00001A93  7419              jz 0x1aae
00001A95  46                inc si
00001A96  803C4A            cmp byte [si],0x4a
00001A99  741F              jz 0x1aba
00001A9B  46                inc si
00001A9C  803C4A            cmp byte [si],0x4a
00001A9F  7401              jz 0x1aa2
00001AA1  C3                ret
00001AA2  F606C20001        test byte [0xc2],0x1
00001AA7  7401              jz 0x1aaa
00001AA9  C3                ret
00001AAA  58                pop ax
00001AAB  E9A2ED            jmp 0x850
00001AAE  F606C20001        test byte [0xc2],0x1
00001AB3  7501              jnz 0x1ab6
00001AB5  C3                ret
00001AB6  58                pop ax
00001AB7  E9EFEB            jmp 0x6a9
00001ABA  A18000            mov ax,[0x80]
00001ABD  8A1E8300          mov bl,[0x83]
00001AC1  80C304            add bl,0x4
00001AC4  32FF              xor bh,bh
00001AC6  03C3              add ax,bx
00001AC8  8B1E02C0          mov bx,[0xc002]
00001ACC  4B                dec bx
00001ACD  2BD8              sub bx,ax
00001ACF  7304              jnc 0x1ad5
00001AD1  F7D3              not bx
00001AD3  8BC3              mov ax,bx
00001AD5  8A1E8400          mov bl,[0x84]
00001AD9  FECB              dec bl
00001ADB  021E8200          add bl,[0x82]
00001ADF  80E33F            and bl,0x3f
00001AE2  8B360AC0          mov si,[0xc00a]
00001AE6  833CFF            cmp word [si],0xffffffffffffffff
00001AE9  7501              jnz 0x1aec
00001AEB  C3                ret
00001AEC  3B04              cmp ax,[si]
00001AEE  7505              jnz 0x1af5
00001AF0  3A5C02            cmp bl,[si+0x2]
00001AF3  7405              jz 0x1afa
00001AF5  83C60C            add si,0xc
00001AF8  EBEC              jmp 0x1ae6
00001AFA  58                pop ax
00001AFB  F6440380          test byte [si+0x3],0x80
00001AFF  7528              jnz 0x1b29
00001B01  E81503            call 0x1e19
00001B04  7201              jc 0x1b07
00001B06  C3                ret
00001B07  C606E70080        mov byte [0xe7],0x80
00001B0C  C606219F00        mov byte [0x9f21],0x0
00001B11  F606199FFF        test byte [0x9f19],0xff
00001B16  7401              jz 0x1b19
00001B18  C3                ret
00001B19  C606199FFF        mov byte [0x9f19],0xff
00001B1E  C60675FF16        mov byte [0xff75],0x16
00001B23  BAC59A            mov dx,0x9ac5
00001B26  E9BBF8            jmp 0x13e4
00001B29  8B5C09            mov bx,[si+0x9]
00001B2C  83FBFF            cmp bx,0xffffffffffffffff
00001B2F  7405              jz 0x1b36
00001B31  8A440B            mov al,[si+0xb]
00001B34  0807              or [bx],al
00001B36  56                push si
00001B37  E8A508            call 0x23df
00001B3A  E87AF8            call 0x13b7
00001B3D  2EFF160430        call word near [cs:0x3004]
00001B42  E81A03            call 0x1e5f
00001B45  E84BF5            call 0x1093
00001B48  8B3610C0          mov si,[0xc010]
00001B4C  C704FFFF          mov word [si],0xffff
00001B50  5E                pop si
00001B51  8A4403            mov al,[si+0x3]
00001B54  2407              and al,0x7
00001B56  50                push ax
00001B57  8B4405            mov ax,[si+0x5]
00001B5A  A31A9F            mov [0x9f1a],ax
00001B5D  8A4407            mov al,[si+0x7]
00001B60  A21C9F            mov [0x9f1c],al
00001B63  8A4403            mov al,[si+0x3]
00001B66  2440              and al,0x40
00001B68  A2C300            mov [0xc3],al
00001B6B  8A4408            mov al,[si+0x8]
00001B6E  A21D9F            mov [0x9f1d],al
00001B71  8A6404            mov ah,[si+0x4]
00001B74  807C07FF          cmp byte [si+0x7],0xff
00001B78  7503              jnz 0x1b7d
00001B7A  80CC80            or ah,0x80
00001B7D  8826C400          mov [0xc4],ah
00001B81  B001              mov al,0x1
00001B83  2EFF160C01        call word near [cs:0x10c]
00001B88  F606C40080        test byte [0xc4],0x80
00001B8D  7503              jnz 0x1b92
00001B8F  E86EF0            call 0xc00
00001B92  E83002            call 0x1dc5
00001B95  8B3600C0          mov si,[0xc000]
00001B99  AC                lodsb
00001B9A  A801              test al,0x1
00001B9C  7536              jnz 0x1bd4
00001B9E  BE089C            mov si,0x9c08
00001BA1  2E8E062CFF        mov es,word [cs:0xff2c]
00001BA6  BF0080            mov di,0x8000
00001BA9  B002              mov al,0x2
00001BAB  2EFF160C01        call word near [cs:0x10c]
00001BB0  1E                push ds
00001BB1  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001BB6  BE0080            mov si,0x8000
00001BB9  B98000            mov cx,0x80
00001BBC  2EFF164420        call word near [cs:0x2044]
00001BC1  1F                pop ds
00001BC2  58                pop ax
00001BC3  2EFF161E30        call word near [cs:0x301e]
00001BC8  C606F69EFF        mov byte [0x9ef6],0xff
00001BCD  C60624FF0A        mov byte [0xff24],0xa
00001BD2  EB32              jmp 0x1c06
00001BD4  BEFD9B            mov si,0x9bfd
00001BD7  2E8E062CFF        mov es,word [cs:0xff2c]
00001BDC  BF0080            mov di,0x8000
00001BDF  B002              mov al,0x2
00001BE1  2EFF160C01        call word near [cs:0x10c]
00001BE6  1E                push ds
00001BE7  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001BEC  BE0080            mov si,0x8000
00001BEF  B98000            mov cx,0x80
00001BF2  2EFF164420        call word near [cs:0x2044]
00001BF7  1F                pop ds
00001BF8  58                pop ax
00001BF9  2EFF161E30        call word near [cs:0x301e]
00001BFE  8B3600C0          mov si,[0xc000]
00001C02  AC                lodsb
00001C03  E89102            call 0x1e97
00001C06  C6063AFF00        mov byte [0xff3a],0x0
00001C0B  C606F59EFF        mov byte [0x9ef5],0xff
00001C10  C60680EBFF        mov byte [0xeb80],0xff
00001C15  F6061D9F80        test byte [0x9f1d],0x80
00001C1A  7456              jz 0x1c72
00001C1C  BE1E9C            mov si,0x9c1e
00001C1F  0E                push cs
00001C20  07                pop es
00001C21  BF00A0            mov di,0xa000
00001C24  B003              mov al,0x3
00001C26  2EFF160C01        call word near [cs:0x10c]
00001C2B  2EFF1600A0        call word near [cs:0xa000]
00001C30  C606FF9EFF        mov byte [0x9eff],0xff
00001C35  C606FE9EFF        mov byte [0x9efe],0xff
00001C3A  A0C800            mov al,[0xc8]
00001C3D  A2FA9E            mov [0x9efa],al
00001C40  C606029FFF        mov byte [0x9f02],0xff
00001C45  E87702            call 0x1ebf
00001C48  2E8E062CFF        mov es,word [cs:0xff2c]
00001C4D  BEE69B            mov si,0x9be6
00001C50  BF0060            mov di,0x6000
00001C53  B002              mov al,0x2
00001C55  2EFF160C01        call word near [cs:0x10c]
00001C5A  1E                push ds
00001C5B  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001C60  BE3363            mov si,0x6333
00001C63  BD00D0            mov bp,0xd000
00001C66  B9E600            mov cx,0xe6
00001C69  2EFF162830        call word near [cs:0x3028]
00001C6E  1F                pop ds
00001C6F  E98600            jmp 0x1cf8
00001C72  F606C300FF        test byte [0xc3],0xff
00001C77  753F              jnz 0x1cb8
00001C79  8026C200FE        and byte [0xc2],0xfe
00001C7E  BB6E0A            mov bx,0xa6e
00001C81  B91A00            mov cx,0x1a
00001C84  51                push cx
00001C85  53                push bx
00001C86  FE06E700          inc byte [0xe7]
00001C8A  2EFF161630        call word near [cs:0x3016]
00001C8F  5B                pop bx
00001C90  80C702            add bh,0x2
00001C93  53                push bx
00001C94  2EFF162030        call word near [cs:0x3020]
00001C99  E8EA02            call 0x1f86
00001C9C  5B                pop bx
00001C9D  53                push bx
00001C9E  B91802            mov cx,0x218
00001CA1  32C0              xor al,al
00001CA3  2EFF160020        call word near [cs:0x2000]
00001CA8  5B                pop bx
00001CA9  59                pop cx
00001CAA  E2D8              loop 0x1c84
00001CAC  B91806            mov cx,0x618
00001CAF  32C0              xor al,al
00001CB1  2EFF160020        call word near [cs:0x2000]
00001CB6  EB40              jmp 0x1cf8
00001CB8  800EC20001        or byte [0xc2],0x1
00001CBD  BB6E40            mov bx,0x406e
00001CC0  B91A00            mov cx,0x1a
00001CC3  51                push cx
00001CC4  53                push bx
00001CC5  FE06E700          inc byte [0xe7]
00001CC9  2EFF161630        call word near [cs:0x3016]
00001CCE  5B                pop bx
00001CCF  80EF02            sub bh,0x2
00001CD2  53                push bx
00001CD3  2EFF162030        call word near [cs:0x3020]
00001CD8  E8AB02            call 0x1f86
00001CDB  5B                pop bx
00001CDC  53                push bx
00001CDD  80C704            add bh,0x4
00001CE0  B91802            mov cx,0x218
00001CE3  32C0              xor al,al
00001CE5  2EFF160020        call word near [cs:0x2000]
00001CEA  5B                pop bx
00001CEB  59                pop cx
00001CEC  E2D5              loop 0x1cc3
00001CEE  B91806            mov cx,0x618
00001CF1  32C0              xor al,al
00001CF3  2EFF160020        call word near [cs:0x2000]
00001CF8  8B3600C0          mov si,[0xc000]
00001CFC  AC                lodsb
00001CFD  8AE0              mov ah,al
00001CFF  2401              and al,0x1
00001D01  7465              jz 0x1d68
00001D03  E8B901            call 0x1ebf
00001D06  8B3600C0          mov si,[0xc000]
00001D0A  AC                lodsb
00001D0B  8AE0              mov ah,al
00001D0D  02E4              add ah,ah
00001D0F  1ADB              sbb bl,bl
00001D11  881E34FF          mov [0xff34],bl
00001D15  02E4              add ah,ah
00001D17  1ADB              sbb bl,bl
00001D19  881EE600          mov [0xe6],bl
00001D1D  C6062EFF00        mov byte [0xff2e],0x0
00001D22  C6062FFF00        mov byte [0xff2f],0x0
00001D27  2EFF160220        call word near [cs:0x2002]
00001D2C  C60683000C        mov byte [0x83],0xc
00001D31  A016C0            mov al,[0xc016]
00001D34  A28400            mov [0x84],al
00001D37  A2009F            mov [0x9f00],al
00001D3A  C606E70080        mov byte [0xe7],0x80
00001D3F  1E                push ds
00001D40  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001D45  BE3080            mov si,0x8030
00001D48  B96600            mov cx,0x66
00001D4B  2EFF164420        call word near [cs:0x2044]
00001D50  2EFF162A30        call word near [cs:0x302a]
00001D55  1F                pop ds
00001D56  1E                push ds
00001D57  2EFF161A30        call word near [cs:0x301a]
00001D5C  B91800            mov cx,0x18
00001D5F  2EFF164420        call word near [cs:0x2044]
00001D64  1F                pop ds
00001D65  E9DEE2            jmp 0x46
00001D68  8B3600C0          mov si,[0xc000]
00001D6C  46                inc si
00001D6D  AC                lodsb
00001D6E  B30B              mov bl,0xb
00001D70  F6E3              mul bl
00001D72  052D9C            add ax,0x9c2d
00001D75  8BF0              mov si,ax
00001D77  2E8E062CFF        mov es,word [cs:0xff2c]
00001D7C  BF0040            mov di,0x4000
00001D7F  B002              mov al,0x2
00001D81  2EFF160C01        call word near [cs:0x10c]
00001D86  BB0060            mov bx,0x6000
00001D89  B80100            mov ax,0x1
00001D8C  CD60              int byte 0x60
00001D8E  53                push bx
00001D8F  E85300            call 0x1de5
00001D92  A38000            mov [0x80],ax
00001D95  881E8300          mov [0x83],bl
00001D99  8B3600C0          mov si,[0xc000]
00001D9D  AC                lodsb
00001D9E  D0E8              shr al,0x0
00001DA0  241F              and al,0x1f
00001DA2  A2C800            mov [0xc8],al
00001DA5  B30B              mov bl,0xb
00001DA7  F6E3              mul bl
00001DA9  05539E            add ax,0x9e53
00001DAC  8BF0              mov si,ax
00001DAE  2E8E062CFF        mov es,word [cs:0xff2c]
00001DB3  BF0030            mov di,0x3000
00001DB6  B005              mov al,0x5
00001DB8  2EFF160C01        call word near [cs:0x10c]
00001DBD  5B                pop bx
00001DBE  32C0              xor al,al
00001DC0  2EFF260C01        jmp word near [cs:0x10c]
00001DC5  A11A9F            mov ax,[0x9f1a]
00001DC8  05F0FF            add ax,0xfff0
00001DCB  0AE4              or ah,ah
00001DCD  7904              jns 0x1dd3
00001DCF  030602C0          add ax,[0xc002]
00001DD3  A38000            mov [0x80],ax
00001DD6  A01C9F            mov al,[0x9f1c]
00001DD9  FEC0              inc al
00001DDB  2A0616C0          sub al,[0xc016]
00001DDF  243F              and al,0x3f
00001DE1  A28200            mov [0x82],al
00001DE4  C3                ret
00001DE5  BB0D00            mov bx,0xd
00001DE8  A11A9F            mov ax,[0x9f1a]
00001DEB  8B0E02C0          mov cx,[0xc002]
00001DEF  2BCB              sub cx,bx
00001DF1  2BC8              sub cx,ax
00001DF3  7312              jnc 0x1e07
00001DF5  A102C0            mov ax,[0xc002]
00001DF8  05DCFF            add ax,0xffdc
00001DFB  8B0E1A9F          mov cx,[0x9f1a]
00001DFF  1BC8              sbb cx,ax
00001E01  8AD9              mov bl,cl
00001E03  80EB03            sub bl,0x3
00001E06  C3                ret
00001E07  05EFFF            add ax,0xffef
00001E0A  0AE4              or ah,ah
00001E0C  7501              jnz 0x1e0f
00001E0E  C3                ret
00001E0F  33C0              xor ax,ax
00001E11  8A1E1A9F          mov bl,[0x9f1a]
00001E15  80EB04            sub bl,0x4
00001E18  C3                ret
00001E19  8A5C08            mov bl,[si+0x8]
00001E1C  80E301            and bl,0x1
00001E1F  751F              jnz 0x1e40
00001E21  F6069800FF        test byte [0x98],0xff
00001E26  F9                stc
00001E27  7501              jnz 0x1e2a
00001E29  C3                ret
00001E2A  FE0E9800          dec byte [0x98]
00001E2E  C60675FF15        mov byte [0xff75],0x15
00001E33  804C0380          or byte [si+0x3],0x80
00001E37  8B5C09            mov bx,[si+0x9]
00001E3A  8A440B            mov al,[si+0xb]
00001E3D  0807              or [bx],al
00001E3F  C3                ret
00001E40  F6069900FF        test byte [0x99],0xff
00001E45  F9                stc
00001E46  7501              jnz 0x1e49
00001E48  C3                ret
00001E49  FE0E9900          dec byte [0x99]
00001E4D  C60675FF15        mov byte [0xff75],0x15
00001E52  804C0380          or byte [si+0x3],0x80
00001E56  8B5C09            mov bx,[si+0x9]
00001E59  8A440B            mov al,[si+0xb]
00001E5C  0807              or [bx],al
00001E5E  C3                ret
00001E5F  32C0              xor al,al
00001E61  A243FF            mov [0xff43],al
00001E64  A244FF            mov [0xff44],al
00001E67  A23CFF            mov [0xff3c],al
00001E6A  A23DFF            mov [0xff3d],al
00001E6D  A238FF            mov [0xff38],al
00001E70  A236FF            mov [0xff36],al
00001E73  A2EF9E            mov [0x9eef],al
00001E76  A23EFF            mov [0xff3e],al
00001E79  A24BFF            mov [0xff4b],al
00001E7C  A208FF            mov [0xff08],al
00001E7F  A2E700            mov [0xe7],al
00001E82  B8FFFF            mov ax,0xffff
00001E85  A280EB            mov [0xeb80],al
00001E88  A2A0ED            mov [0xeda0],al
00001E8B  A315EB            mov [0xeb15],ax
00001E8E  A23AFF            mov [0xff3a],al
00001E91  A2F59E            mov [0x9ef5],al
00001E94  E920F5            jmp 0x13b7
00001E97  0E                push cs
00001E98  07                pop es
00001E99  BFF69E            mov di,0x9ef6
00001E9C  B90400            mov cx,0x4
00001E9F  F3A4              rep movsb
00001EA1  D0E8              shr al,0x0
00001EA3  240F              and al,0xf
00001EA5  8AE0              mov ah,al
00001EA7  B0FF              mov al,0xff
00001EA9  3A26C800          cmp ah,[0xc8]
00001EAD  740B              jz 0x1eba
00001EAF  C60624FF0A        mov byte [0xff24],0xa
00001EB4  8826C800          mov [0xc8],ah
00001EB8  8AC4              mov al,ah
00001EBA  AA                stosb
00001EBB  B0FF              mov al,0xff
00001EBD  AA                stosb
00001EBE  C3                ret
00001EBF  2E8E062CFF        mov es,word [cs:0xff2c]
00001EC4  BE139C            mov si,0x9c13
00001EC7  BF008C            mov di,0x8c00
00001ECA  B002              mov al,0x2
00001ECC  2EFF160C01        call word near [cs:0x10c]
00001ED1  8A1EF79E          mov bl,[0x9ef7]
00001ED5  B00B              mov al,0xb
00001ED7  F6E3              mul bl
00001ED9  05439C            add ax,0x9c43
00001EDC  8BF0              mov si,ax
00001EDE  2E8E062CFF        mov es,word [cs:0xff2c]
00001EE3  BF0080            mov di,0x8000
00001EE6  B002              mov al,0x2
00001EE8  2EFF160C01        call word near [cs:0x10c]
00001EED  8A1EF89E          mov bl,[0x9ef8]
00001EF1  80FBFF            cmp bl,0xff
00001EF4  7501              jnz 0x1ef7
00001EF6  C3                ret
00001EF7  3A1EFE9E          cmp bl,[0x9efe]
00001EFB  7419              jz 0x1f16
00001EFD  881EFE9E          mov [0x9efe],bl
00001F01  B00B              mov al,0xb
00001F03  F6E3              mul bl
00001F05  05BC9C            add ax,0x9cbc
00001F08  8BF0              mov si,ax
00001F0A  0E                push cs
00001F0B  07                pop es
00001F0C  BF00A0            mov di,0xa000
00001F0F  B003              mov al,0x3
00001F11  2EFF160C01        call word near [cs:0x10c]
00001F16  8A1EF99E          mov bl,[0x9ef9]
00001F1A  80FBFF            cmp bl,0xff
00001F1D  7501              jnz 0x1f20
00001F1F  C3                ret
00001F20  3A1EFF9E          cmp bl,[0x9eff]
00001F24  7431              jz 0x1f57
00001F26  881EFF9E          mov [0x9eff],bl
00001F2A  B00B              mov al,0xb
00001F2C  F6E3              mul bl
00001F2E  058D9D            add ax,0x9d8d
00001F31  8BF0              mov si,ax
00001F33  2E8E062CFF        mov es,word [cs:0xff2c]
00001F38  BF0040            mov di,0x4000
00001F3B  B002              mov al,0x2
00001F3D  2EFF160C01        call word near [cs:0x10c]
00001F42  1E                push ds
00001F43  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001F48  BE0040            mov si,0x4000
00001F4B  BD00A0            mov bp,0xa000
00001F4E  B90001            mov cx,0x100
00001F51  2EFF162830        call word near [cs:0x3028]
00001F56  1F                pop ds
00001F57  8A1EFA9E          mov bl,[0x9efa]
00001F5B  80FBFF            cmp bl,0xff
00001F5E  7501              jnz 0x1f61
00001F60  C3                ret
00001F61  53                push bx
00001F62  B80100            mov ax,0x1
00001F65  CD60              int byte 0x60
00001F67  C606029FFF        mov byte [0x9f02],0xff
00001F6C  5B                pop bx
00001F6D  B00B              mov al,0xb
00001F6F  F6E3              mul bl
00001F71  05539E            add ax,0x9e53
00001F74  8BF0              mov si,ax
00001F76  2E8E062CFF        mov es,word [cs:0xff2c]
00001F7B  BF0030            mov di,0x3000
00001F7E  B005              mov al,0x5
00001F80  2EFF160C01        call word near [cs:0x10c]
00001F85  C3                ret
00001F86  8A0E33FF          mov cl,[0xff33]
00001F8A  B004              mov al,0x4
00001F8C  F6E1              mul cl
00001F8E  50                push ax
00001F8F  2EFF161001        call word near [cs:0x110]
00001F94  2EFF161201        call word near [cs:0x112]
00001F99  2EFF161401        call word near [cs:0x114]
00001F9E  2EFF161601        call word near [cs:0x116]
00001FA3  2EFF161801        call word near [cs:0x118]
00001FA8  58                pop ax
00001FA9  38061AFF          cmp [0xff1a],al
00001FAD  72DF              jc 0x1f8e
00001FAF  C6061AFF00        mov byte [0xff1a],0x0
00001FB4  C3                ret
00001FB5  8B3604C0          mov si,[0xc004]
00001FB9  8B04              mov ax,[si]
00001FBB  3DFFFF            cmp ax,0xffff
00001FBE  7501              jnz 0x1fc1
00001FC0  C3                ret
00001FC1  E83803            call 0x22fc
00001FC4  7215              jc 0x1fdb
00001FC6  8AE3              mov ah,bl
00001FC8  8A4402            mov al,[si+0x2]
00001FCB  E8A4ED            call 0xd72
00001FCE  B90300            mov cx,0x3
00001FD1  B240              mov dl,0x40
00001FD3  E88003            call 0x2356
00001FD6  47                inc di
00001FD7  FEC2              inc dl
00001FD9  E2F8              loop 0x1fd3
00001FDB  83C603            add si,0x3
00001FDE  EBD9              jmp 0x1fb9
00001FE0  F60639FFFF        test byte [0xff39],0xff
00001FE5  7401              jz 0x1fe8
00001FE7  C3                ret
00001FE8  E8CAED            call 0xdb5
00001FEB  83C66D            add si,0x6d
00001FEE  E895ED            call 0xd86
00001FF1  B240              mov dl,0x40
00001FF3  E85A01            call 0x2150
00001FF6  7401              jz 0x1ff9
00001FF8  C3                ret
00001FF9  8B3E04C0          mov di,[0xc004]
00001FFD  B240              mov dl,0x40
00001FFF  E82600            call 0x2028
00002002  7309              jnc 0x200d
00002004  58                pop ax
00002005  C606E70080        mov byte [0xe7],0x80
0000200A  E925EB            jmp 0xb32
0000200D  E8BFED            call 0xdcf
00002010  7301              jnc 0x2013
00002012  C3                ret
00002013  2460              and al,0x60
00002015  7401              jz 0x2018
00002017  C3                ret
00002018  F6470520          test byte [bx+0x5],0x20
0000201C  7401              jz 0x201f
0000201E  C3                ret
0000201F  804F0540          or byte [bx+0x5],0x40
00002023  806705E0          and byte [bx+0x5],0xe0
00002027  C3                ret
00002028  52                push dx
00002029  E8E100            call 0x210d
0000202C  5A                pop dx
0000202D  8BDE              mov bx,si
0000202F  83C623            add si,0x23
00002032  E851ED            call 0xd86
00002035  F60480            test byte [si],0x80
00002038  F8                clc
00002039  7401              jz 0x203c
0000203B  C3                ret
0000203C  B90300            mov cx,0x3
0000203F  46                inc si
00002040  F604FF            test byte [si],0xff
00002043  7401              jz 0x2046
00002045  C3                ret
00002046  E2F7              loop 0x203f
00002048  8BF3              mov si,bx
0000204A  83C624            add si,0x24
0000204D  E836ED            call 0xd86
00002050  57                push di
00002051  8BFE              mov di,si
00002053  B90300            mov cx,0x3
00002056  52                push dx
00002057  53                push bx
00002058  E8FB02            call 0x2356
0000205B  5B                pop bx
0000205C  87FB              xchg di,bx
0000205E  53                push bx
0000205F  32D2              xor dl,dl
00002061  E8F202            call 0x2356
00002064  5B                pop bx
00002065  87FB              xchg di,bx
00002067  47                inc di
00002068  43                inc bx
00002069  5A                pop dx
0000206A  FEC2              inc dl
0000206C  E2E8              loop 0x2056
0000206E  5F                pop di
0000206F  FE4502            inc byte [di+0x2]
00002072  8065023F          and byte [di+0x2],0x3f
00002076  F9                stc
00002077  C3                ret
00002078  F60639FFFF        test byte [0xff39],0xff
0000207D  7401              jz 0x2080
0000207F  C3                ret
00002080  E832ED            call 0xdb5
00002083  83EE23            sub si,0x23
00002086  E809ED            call 0xd92
00002089  8A04              mov al,[si]
0000208B  E85BED            call 0xde9
0000208E  7401              jz 0x2091
00002090  C3                ret
00002091  81C69000          add si,0x90
00002095  E8EEEC            call 0xd86
00002098  B240              mov dl,0x40
0000209A  E8B300            call 0x2150
0000209D  7401              jz 0x20a0
0000209F  C3                ret
000020A0  8B3E04C0          mov di,[0xc004]
000020A4  B240              mov dl,0x40
000020A6  52                push dx
000020A7  E86300            call 0x210d
000020AA  5A                pop dx
000020AB  8BC6              mov ax,si
000020AD  83EE24            sub si,0x24
000020B0  E8DFEC            call 0xd92
000020B3  8BDE              mov bx,si
000020B5  83EE24            sub si,0x24
000020B8  E8D7EC            call 0xd92
000020BB  B90300            mov cx,0x3
000020BE  F60480            test byte [si],0x80
000020C1  7401              jz 0x20c4
000020C3  C3                ret
000020C4  F607FF            test byte [bx],0xff
000020C7  7401              jz 0x20ca
000020C9  C3                ret
000020CA  46                inc si
000020CB  43                inc bx
000020CC  E2F0              loop 0x20be
000020CE  8BD8              mov bx,ax
000020D0  8BF3              mov si,bx
000020D2  83EE24            sub si,0x24
000020D5  E8BAEC            call 0xd92
000020D8  57                push di
000020D9  8BFE              mov di,si
000020DB  B90300            mov cx,0x3
000020DE  52                push dx
000020DF  53                push bx
000020E0  E87302            call 0x2356
000020E3  5B                pop bx
000020E4  87FB              xchg di,bx
000020E6  53                push bx
000020E7  32D2              xor dl,dl
000020E9  E86A02            call 0x2356
000020EC  5B                pop bx
000020ED  87FB              xchg di,bx
000020EF  47                inc di
000020F0  43                inc bx
000020F1  5A                pop dx
000020F2  FEC2              inc dl
000020F4  E2E8              loop 0x20de
000020F6  5F                pop di
000020F7  FE4D02            dec byte [di+0x2]
000020FA  8065023F          and byte [di+0x2],0x3f
000020FE  58                pop ax
000020FF  58                pop ax
00002100  C606E70080        mov byte [0xe7],0x80
00002105  C6063DFF00        mov byte [0xff3d],0x0
0000210A  E918E5            jmp 0x625
0000210D  A08300            mov al,[0x83]
00002110  0404              add al,0x4
00002112  02C6              add al,dh
00002114  32E4              xor ah,ah
00002116  03068000          add ax,[0x80]
0000211A  3B0602C0          cmp ax,[0xc002]
0000211E  7204              jc 0x2124
00002120  2B0602C0          sub ax,[0xc002]
00002124  8A0E8200          mov cl,[0x82]
00002128  020E8400          add cl,[0x84]
0000212C  80C103            add cl,0x3
0000212F  80E13F            and cl,0x3f
00002132  3B05              cmp ax,[di]
00002134  7505              jnz 0x213b
00002136  3A4D02            cmp cl,[di+0x2]
00002139  7405              jz 0x2140
0000213B  83C703            add di,0x3
0000213E  EBF2              jmp 0x2132
00002140  E8B901            call 0x22fc
00002143  8A4502            mov al,[di+0x2]
00002146  8AE3              mov ah,bl
00002148  57                push di
00002149  E826EC            call 0xd72
0000214C  8BF7              mov si,di
0000214E  5F                pop di
0000214F  C3                ret
00002150  B601              mov dh,0x1
00002152  3A14              cmp dl,[si]
00002154  7501              jnz 0x2157
00002156  C3                ret
00002157  FECE              dec dh
00002159  FEC2              inc dl
0000215B  3A14              cmp dl,[si]
0000215D  7501              jnz 0x2160
0000215F  C3                ret
00002160  FECE              dec dh
00002162  FEC2              inc dl
00002164  3A14              cmp dl,[si]
00002166  C3                ret
00002167  8B3606C0          mov si,[0xc006]
0000216B  8B04              mov ax,[si]
0000216D  3DFFFF            cmp ax,0xffff
00002170  7501              jnz 0x2173
00002172  C3                ret
00002173  E88601            call 0x22fc
00002176  7215              jc 0x218d
00002178  8AE3              mov ah,bl
0000217A  8A4402            mov al,[si+0x2]
0000217D  E8F2EB            call 0xd72
00002180  B90300            mov cx,0x3
00002183  B243              mov dl,0x43
00002185  E8CE01            call 0x2356
00002188  47                inc di
00002189  FEC2              inc dl
0000218B  E2F8              loop 0x2185
0000218D  83C603            add si,0x3
00002190  EBD9              jmp 0x216b
00002192  E820EC            call 0xdb5
00002195  83C66D            add si,0x6d
00002198  E8EBEB            call 0xd86
0000219B  B243              mov dl,0x43
0000219D  E8B0FF            call 0x2150
000021A0  7401              jz 0x21a3
000021A2  C3                ret
000021A3  8B3E06C0          mov di,[0xc006]
000021A7  B243              mov dl,0x43
000021A9  E87CFE            call 0x2028
000021AC  7201              jc 0x21af
000021AE  C3                ret
000021AF  E980E9            jmp 0xb32
000021B2  FE06079F          inc byte [0x9f07]
000021B6  8B3608C0          mov si,[0xc008]
000021BA  8B04              mov ax,[si]
000021BC  3DFFFF            cmp ax,0xffff
000021BF  7501              jnz 0x21c2
000021C1  C3                ret
000021C2  25FF3F            and ax,0x3fff
000021C5  E85B01            call 0x2323
000021C8  7244              jc 0x220e
000021CA  8ACB              mov cl,bl
000021CC  4B                dec bx
000021CD  4B                dec bx
000021CE  0AFF              or bh,bh
000021D0  790C              jns 0x21de
000021D2  FEC1              inc cl
000021D4  8A4402            mov al,[si+0x2]
000021D7  32E4              xor ah,ah
000021D9  E896EB            call 0xd72
000021DC  EB26              jmp 0x2204
000021DE  8BC3              mov ax,bx
000021E0  2D2200            sub ax,0x22
000021E3  7215              jc 0x21fa
000021E5  50                push ax
000021E6  8A4402            mov al,[si+0x2]
000021E9  B422              mov ah,0x22
000021EB  E884EB            call 0xd72
000021EE  58                pop ax
000021EF  03F8              add di,ax
000021F1  8AC8              mov cl,al
000021F3  F6D9              neg cl
000021F5  80C102            add cl,0x2
000021F8  EB0A              jmp 0x2204
000021FA  8AE3              mov ah,bl
000021FC  8A4402            mov al,[si+0x2]
000021FF  E870EB            call 0xd72
00002202  B103              mov cl,0x3
00002204  32ED              xor ch,ch
00002206  32D2              xor dl,dl
00002208  E84B01            call 0x2356
0000220B  47                inc di
0000220C  E2FA              loop 0x2208
0000220E  8B04              mov ax,[si]
00002210  8ADC              mov bl,ah
00002212  25FF3F            and ax,0x3fff
00002215  D0C3              rol bl,0x0
00002217  D0C3              rol bl,0x0
00002219  80E303            and bl,0x3
0000221C  740A              jz 0x2228
0000221E  FECB              dec bl
00002220  32FF              xor bh,bh
00002222  03DB              add bx,bx
00002224  FF974482          call word near [bx-0x7dbc]
00002228  E8D100            call 0x22fc
0000222B  7215              jc 0x2242
0000222D  8AE3              mov ah,bl
0000222F  8A4402            mov al,[si+0x2]
00002232  E83DEB            call 0xd72
00002235  B90300            mov cx,0x3
00002238  B246              mov dl,0x46
0000223A  E81901            call 0x2356
0000223D  47                inc di
0000223E  FEC2              inc dl
00002240  E2F8              loop 0x223a
00002242  83C607            add si,0x7
00002245  E972FF            jmp 0x21ba
00002248  4A                dec dx
00002249  82                db 0x82
0000224A  52                push dx
0000224B  82                db 0x82
0000224C  52                push dx
0000224D  82                db 0x82
0000224E  F606079F01        test byte [0x9f07],0x1
00002253  7501              jnz 0x2256
00002255  C3                ret
00002256  8A4C02            mov cl,[si+0x2]
00002259  806402BF          and byte [si+0x2],0xbf
0000225D  F6C140            test cl,0x40
00002260  7401              jz 0x2263
00002262  C3                ret
00002263  F6440280          test byte [si+0x2],0x80
00002267  751B              jnz 0x2284
00002269  40                inc ax
0000226A  8BD8              mov bx,ax
0000226C  2B0602C0          sub ax,[0xc002]
00002270  7401              jz 0x2273
00002272  93                xchg ax,bx
00002273  56                push si
00002274  50                push ax
00002275  E84000            call 0x22b8
00002278  7203              jc 0x227d
0000227A  E8D3E5            call 0x850
0000227D  58                pop ax
0000227E  5E                pop si
0000227F  8B5C05            mov bx,[si+0x5]
00002282  EB19              jmp 0x229d
00002284  48                dec ax
00002285  3DFFFF            cmp ax,0xffff
00002288  7504              jnz 0x228e
0000228A  A102C0            mov ax,[0xc002]
0000228D  48                dec ax
0000228E  56                push si
0000228F  50                push ax
00002290  E82500            call 0x22b8
00002293  7203              jc 0x2298
00002295  E811E4            call 0x6a9
00002298  58                pop ax
00002299  5E                pop si
0000229A  8B5C03            mov bx,[si+0x3]
0000229D  8A5401            mov dl,[si+0x1]
000022A0  80E2C0            and dl,0xc0
000022A3  0AD4              or dl,ah
000022A5  8804              mov [si],al
000022A7  885401            mov [si+0x1],dl
000022AA  2BD8              sub bx,ax
000022AC  7401              jz 0x22af
000022AE  C3                ret
000022AF  80740280          xor byte [si+0x2],0x80
000022B3  804C0240          or byte [si+0x2],0x40
000022B7  C3                ret
000022B8  8A163DFF          mov dl,[0xff3d]
000022BC  0A1639FF          or dl,[0xff39]
000022C0  F9                stc
000022C1  7401              jz 0x22c4
000022C3  C3                ret
000022C4  A08400            mov al,[0x84]
000022C7  02068200          add al,[0x82]
000022CB  0403              add al,0x3
000022CD  243F              and al,0x3f
000022CF  8A6402            mov ah,[si+0x2]
000022D2  80E43F            and ah,0x3f
000022D5  3AC4              cmp al,ah
000022D7  F9                stc
000022D8  7401              jz 0x22db
000022DA  C3                ret
000022DB  8B04              mov ax,[si]
000022DD  25FF3F            and ax,0x3fff
000022E0  E81900            call 0x22fc
000022E3  7301              jnc 0x22e6
000022E5  C3                ret
000022E6  8A168300          mov dl,[0x83]
000022EA  80C204            add dl,0x4
000022ED  B90300            mov cx,0x3
000022F0  3AD0              cmp dl,al
000022F2  F8                clc
000022F3  7501              jnz 0x22f6
000022F5  C3                ret
000022F6  FEC2              inc dl
000022F8  E2F6              loop 0x22f0
000022FA  F9                stc
000022FB  C3                ret
000022FC  8BD8              mov bx,ax
000022FE  2B068000          sub ax,[0x80]
00002302  7207              jc 0x230b
00002304  93                xchg ax,bx
00002305  B82100            mov ax,0x21
00002308  2BC3              sub ax,bx
0000230A  C3                ret
0000230B  B82100            mov ax,0x21
0000230E  2BC3              sub ax,bx
00002310  7301              jnc 0x2313
00002312  C3                ret
00002313  A102C0            mov ax,[0xc002]
00002316  2B068000          sub ax,[0x80]
0000231A  03C3              add ax,bx
0000231C  93                xchg ax,bx
0000231D  B82100            mov ax,0x21
00002320  2BC3              sub ax,bx
00002322  C3                ret
00002323  050200            add ax,0x2
00002326  8BD8              mov bx,ax
00002328  2B0602C0          sub ax,[0xc002]
0000232C  7301              jnc 0x232f
0000232E  93                xchg ax,bx
0000232F  8BD8              mov bx,ax
00002331  2B068000          sub ax,[0x80]
00002335  7207              jc 0x233e
00002337  93                xchg ax,bx
00002338  B82500            mov ax,0x25
0000233B  2BC3              sub ax,bx
0000233D  C3                ret
0000233E  B82500            mov ax,0x25
00002341  2BC3              sub ax,bx
00002343  7301              jnc 0x2346
00002345  C3                ret
00002346  A102C0            mov ax,[0xc002]
00002349  2B068000          sub ax,[0x80]
0000234D  03C3              add ax,bx
0000234F  93                xchg ax,bx
00002350  B82500            mov ax,0x25
00002353  2BC3              sub ax,bx
00002355  C3                ret
00002356  F60580            test byte [di],0x80
00002359  7503              jnz 0x235e
0000235B  8815              mov [di],dl
0000235D  C3                ret
0000235E  8A1D              mov bl,[di]
00002360  80E37F            and bl,0x7f
00002363  32FF              xor bh,bh
00002365  889720ED          mov [bx-0x12e0],dl
00002369  C3                ret
0000236A  BE80EB            mov si,0xeb80
0000236D  803CFF            cmp byte [si],0xff
00002370  7501              jnz 0x2373
00002372  C3                ret
00002373  56                push si
00002374  E88000            call 0x23f7
00002377  5E                pop si
00002378  8A04              mov al,[si]
0000237A  88440B            mov [si+0xb],al
0000237D  2C04              sub al,0x4
0000237F  3C1C              cmp al,0x1c
00002381  7353              jnc 0x23d6
00002383  8A4401            mov al,[si+0x1]
00002386  2A068200          sub al,[0x82]
0000238A  243F              and al,0x3f
0000238C  3C12              cmp al,0x12
0000238E  7346              jnc 0x23d6
00002390  88440C            mov [si+0xc],al
00002393  8A640B            mov ah,[si+0xb]
00002396  50                push ax
00002397  E8CD02            call 0x2667
0000239A  58                pop ax
0000239B  803DFF            cmp byte [di],0xff
0000239E  7431              jz 0x23d1
000023A0  803DFC            cmp byte [di],0xfc
000023A3  742C              jz 0x23d1
000023A5  2EFF160A30        call word near [cs:0x300a]
000023AA  81CF0080          or di,0x8000
000023AE  897C07            mov [si+0x7],di
000023B1  8A4402            mov al,[si+0x2]
000023B4  8AD8              mov bl,al
000023B6  D0C3              rol bl,0x0
000023B8  D0C3              rol bl,0x0
000023BA  83E303            and bx,0x3
000023BD  8A9FD783          mov bl,[bx-0x7c29]
000023C1  225C03            and bl,[si+0x3]
000023C4  02C3              add al,bl
000023C6  243F              and al,0x3f
000023C8  81E7FF7F          and di,0x7fff
000023CC  2EFF160830        call word near [cs:0x3008]
000023D1  83C60D            add si,0xd
000023D4  EB97              jmp 0x236d
000023D6  C60400            mov byte [si],0x0
000023D9  EBF6              jmp 0x23d1
000023DB  0001              add [bx+di],al
000023DD  0307              add ax,[bx]
000023DF  BE80EB            mov si,0xeb80
000023E2  803CFF            cmp byte [si],0xff
000023E5  740A              jz 0x23f1
000023E7  56                push si
000023E8  E80C00            call 0x23f7
000023EB  5E                pop si
000023EC  83C60D            add si,0xd
000023EF  EBF1              jmp 0x23e2
000023F1  C60680EBFF        mov byte [0xeb80],0xff
000023F6  C3                ret
000023F7  F744070080        test word [si+0x7],0x8000
000023FC  7501              jnz 0x23ff
000023FE  C3                ret
000023FF  816407FF7F        and word [si+0x7],0x7fff
00002404  8B5407            mov dx,[si+0x7]
00002407  8A440C            mov al,[si+0xc]
0000240A  8A640B            mov ah,[si+0xb]
0000240D  50                push ax
0000240E  E85602            call 0x2667
00002411  58                pop ax
00002412  803DFC            cmp byte [di],0xfc
00002415  7201              jc 0x2418
00002417  C3                ret
00002418  02068200          add al,[0x82]
0000241C  E853E9            call 0xd72
0000241F  8A05              mov al,[di]
00002421  2EFF260E30        jmp word near [cs:0x300e]
00002426  BE80EB            mov si,0xeb80
00002429  BF80EB            mov di,0xeb80
0000242C  0E                push cs
0000242D  07                pop es
0000242E  C6061F9F00        mov byte [0x9f1f],0x0
00002433  8A04              mov al,[si]
00002435  0AC0              or al,al
00002437  7507              jnz 0x2440
00002439  F744070080        test word [si+0x7],0x8000
0000243E  742E              jz 0x246e
00002440  FEC0              inc al
00002442  7504              jnz 0x2448
00002444  C605FF            mov byte [di],0xff
00002447  C3                ret
00002448  FE4403            inc byte [si+0x3]
0000244B  06                push es
0000244C  57                push di
0000244D  E82300            call 0x2473
00002450  5F                pop di
00002451  07                pop es
00002452  56                push si
00002453  B90D00            mov cx,0xd
00002456  F3A4              rep movsb
00002458  5E                pop si
00002459  F6440540          test byte [si+0x5],0x40
0000245D  750B              jnz 0x246a
0000245F  8A4403            mov al,[si+0x3]
00002462  3A4404            cmp al,[si+0x4]
00002465  7203              jc 0x246a
00002467  C60400            mov byte [si],0x0
0000246A  FE061F9F          inc byte [0x9f1f]
0000246E  83C60D            add si,0xd
00002471  EBC0              jmp 0x2433
00002473  E83301            call 0x25a9
00002476  F6440508          test byte [si+0x5],0x8
0000247A  7518              jnz 0x2494
0000247C  8A24              mov ah,[si]
0000247E  0AE4              or ah,ah
00002480  7501              jnz 0x2483
00002482  C3                ret
00002483  8A4401            mov al,[si+0x1]
00002486  E8E9E8            call 0xd72
00002489  8A05              mov al,[di]
0000248B  E862E9            call 0xdf0
0000248E  7404              jz 0x2494
00002490  C60400            mov byte [si],0x0
00002493  C3                ret
00002494  A08200            mov al,[0x82]
00002497  02068400          add al,[0x84]
0000249B  F60638FFFF        test byte [0xff38],0xff
000024A0  7507              jnz 0x24a9
000024A2  243F              and al,0x3f
000024A4  3A4401            cmp al,[si+0x1]
000024A7  740F              jz 0x24b8
000024A9  B90200            mov cx,0x2
000024AC  FEC0              inc al
000024AE  243F              and al,0x3f
000024B0  3A4401            cmp al,[si+0x1]
000024B3  7403              jz 0x24b8
000024B5  E2F5              loop 0x24ac
000024B7  C3                ret
000024B8  A08300            mov al,[0x83]
000024BB  0404              add al,0x4
000024BD  F606C20001        test byte [0xc2],0x1
000024C2  7402              jz 0x24c6
000024C4  FEC0              inc al
000024C6  3A04              cmp al,[si]
000024C8  7407              jz 0x24d1
000024CA  FEC0              inc al
000024CC  3A04              cmp al,[si]
000024CE  7401              jz 0x24d1
000024D0  C3                ret
000024D1  C60400            mov byte [si],0x0
000024D4  F6069300FF        test byte [0x93],0xff
000024D9  7437              jz 0x2512
000024DB  F60643FFFF        test byte [0xff43],0xff
000024E0  7530              jnz 0x2512
000024E2  F60639FFFF        test byte [0xff39],0xff
000024E7  7529              jnz 0x2512
000024E9  8A4405            mov al,[si+0x5]
000024EC  2407              and al,0x7
000024EE  3C02              cmp al,0x2
000024F0  7420              jz 0x2512
000024F2  3C06              cmp al,0x6
000024F4  741C              jz 0x2512
000024F6  0AC0              or al,al
000024F8  7411              jz 0x250b
000024FA  3C01              cmp al,0x1
000024FC  740D              jz 0x250b
000024FE  3C07              cmp al,0x7
00002500  7409              jz 0x250b
00002502  F606C20001        test byte [0xc2],0x1
00002507  7509              jnz 0x2512
00002509  EB48              jmp 0x2553
0000250B  F606C20001        test byte [0xc2],0x1
00002510  7541              jnz 0x2553
00002512  8A4406            mov al,[si+0x6]
00002515  32E4              xor ah,ah
00002517  E86FF1            call 0x1689
0000251A  C60675FF09        mov byte [0xff75],0x9
0000251F  B0FF              mov al,0xff
00002521  A2149F            mov [0x9f14],al
00002524  A236FF            mov [0xff36],al
00002527  BBFFFF            mov bx,0xffff
0000252A  B9FFFF            mov cx,0xffff
0000252D  8A4405            mov al,[si+0x5]
00002530  2407              and al,0x7
00002532  3C02              cmp al,0x2
00002534  7414              jz 0x254a
00002536  3C06              cmp al,0x6
00002538  7410              jz 0x254a
0000253A  33DB              xor bx,bx
0000253C  0AC0              or al,al
0000253E  740A              jz 0x254a
00002540  3C01              cmp al,0x1
00002542  7406              jz 0x254a
00002544  3C07              cmp al,0x7
00002546  7402              jz 0x254a
00002548  87CB              xchg cx,bx
0000254A  890E0E9F          mov [0x9f0e],cx
0000254E  891E109F          mov [0x9f10],bx
00002552  C3                ret
00002553  803E930004        cmp byte [0x93],0x4
00002558  7317              jnc 0x2571
0000255A  A08400            mov al,[0x84]
0000255D  02068200          add al,[0x82]
00002561  FEC0              inc al
00002563  F60638FFFF        test byte [0xff38],0xff
00002568  7402              jz 0x256c
0000256A  FEC0              inc al
0000256C  E80800            call 0x2577
0000256F  72A1              jc 0x2512
00002571  C60675FF0A        mov byte [0xff75],0xa
00002576  C3                ret
00002577  8A5C05            mov bl,[si+0x5]
0000257A  83E307            and bx,0x7
0000257D  03DB              add bx,bx
0000257F  243F              and al,0x3f
00002581  FFA78185          jmp word near [bx-0x7a7f]
00002585  91                xchg ax,cx
00002586  85998599          test [bx+di-0x667b],bx
0000258A  85998591          test [bx+di-0x6e7b],bx
0000258E  859F859F          test [bx-0x607b],bx
00002592  859F853A          test [bx+0x3a85],bx
00002596  44                inc sp
00002597  017501            add [di+0x1],si
0000259A  C3                ret
0000259B  F9                stc
0000259C  C3                ret
0000259D  FEC8              dec al
0000259F  243F              and al,0x3f
000025A1  EBF2              jmp 0x2595
000025A3  FEC0              inc al
000025A5  243F              and al,0x3f
000025A7  EBEC              jmp 0x2595
000025A9  F6440540          test byte [si+0x5],0x40
000025AD  7406              jz 0x25b5
000025AF  E84400            call 0x25f6
000025B2  7301              jnc 0x25b5
000025B4  C3                ret
000025B5  8A5C05            mov bl,[si+0x5]
000025B8  83E307            and bx,0x7
000025BB  03DB              add bx,bx
000025BD  FF97C285          call word near [bx-0x7a3e]
000025C1  8064013F          and byte [si+0x1],0x3f
000025C5  C3                ret
000025C6  D585              aad byte 0x85
000025C8  D285EE85          rol byte [di-0x7a12],cl
000025CC  DE85E185          fiadd word [di-0x7a1f]
000025D0  E485              in al,byte 0x85
000025D2  EA85D885FE        jmp word 0xfe85:word 0xd885
000025D7  4C                dec sp
000025D8  01FE              add si,di
000025DA  04C3              add al,0xc3
000025DC  FE4401            inc byte [si+0x1]
000025DF  FE04              inc byte [si]
000025E1  C3                ret
000025E2  FE4C01            dec byte [si+0x1]
000025E5  FE0C              dec byte [si]
000025E7  C3                ret
000025E8  FE4401            inc byte [si+0x1]
000025EB  FE0C              dec byte [si]
000025ED  C3                ret
000025EE  FE4401            inc byte [si+0x1]
000025F1  C3                ret
000025F2  FE4C01            dec byte [si+0x1]
000025F5  C3                ret
000025F6  8A5C03            mov bl,[si+0x3]
000025F9  32FF              xor bh,bh
000025FB  8B7C09            mov di,[si+0x9]
000025FE  8A01              mov al,[bx+di]
00002600  3CFF              cmp al,0xff
00002602  7507              jnz 0x260b
00002604  C684800000        mov byte [si+0x80],0x0
00002609  F9                stc
0000260A  C3                ret
0000260B  2407              and al,0x7
0000260D  806405F8          and byte [si+0x5],0xf8
00002611  084405            or [si+0x5],al
00002614  C3                ret
00002615  803E1F9F1F        cmp byte [0x9f1f],0x1f
0000261A  7201              jc 0x261d
0000261C  C3                ret
0000261D  56                push si
0000261E  0E                push cs
0000261F  07                pop es
00002620  8BF3              mov si,bx
00002622  BF80EB            mov di,0xeb80
00002625  803DFF            cmp byte [di],0xff
00002628  7405              jz 0x262f
0000262A  83C70D            add di,0xd
0000262D  EBF6              jmp 0x2625
0000262F  B90D00            mov cx,0xd
00002632  F3A4              rep movsb
00002634  B0FF              mov al,0xff
00002636  AA                stosb
00002637  FE061F9F          inc byte [0x9f1f]
0000263B  5E                pop si
0000263C  C3                ret
0000263D  BE80EB            mov si,0xeb80
00002640  8A04              mov al,[si]
00002642  3CFF              cmp al,0xff
00002644  7501              jnz 0x2647
00002646  C3                ret
00002647  0AC0              or al,al
00002649  7402              jz 0x264d
0000264B  FE0C              dec byte [si]
0000264D  83C60D            add si,0xd
00002650  EBEE              jmp 0x2640
00002652  BE80EB            mov si,0xeb80
00002655  8A04              mov al,[si]
00002657  3CFF              cmp al,0xff
00002659  7501              jnz 0x265c
0000265B  C3                ret
0000265C  0AC0              or al,al
0000265E  7402              jz 0x2662
00002660  FE04              inc byte [si]
00002662  83C60D            add si,0xd
00002665  EBEE              jmp 0x2655
00002667  243F              and al,0x3f
00002669  8ADC              mov bl,ah
0000266B  B71C              mov bh,0x1c
0000266D  F6E7              mul bh
0000266F  80EB04            sub bl,0x4
00002672  32FF              xor bh,bh
00002674  03C3              add ax,bx
00002676  8BF8              mov di,ax
00002678  81C700E9          add di,0xe900
0000267C  C3                ret
0000267D  BE60EB            mov si,0xeb60
00002680  B90400            mov cx,0x4
00002683  51                push cx
00002684  803CFF            cmp byte [si],0xff
00002687  7457              jz 0x26e0
00002689  E85B00            call 0x26e7
0000268C  F64402FF          test byte [si+0x2],0xff
00002690  7505              jnz 0x2697
00002692  C604FF            mov byte [si],0xff
00002695  EB49              jmp 0x26e0
00002697  8A1C              mov bl,[si]
00002699  80E30F            and bl,0xf
0000269C  32FF              xor bh,bh
0000269E  03DB              add bx,bx
000026A0  81C39087          add bx,0x8790
000026A4  8A268300          mov ah,[0x83]
000026A8  0227              add ah,[bx]
000026AA  886405            mov [si+0x5],ah
000026AD  A08400            mov al,[0x84]
000026B0  024701            add al,[bx+0x1]
000026B3  243F              and al,0x3f
000026B5  884406            mov [si+0x6],al
000026B8  50                push ax
000026B9  E8ABFF            call 0x2667
000026BC  58                pop ax
000026BD  803DFF            cmp byte [di],0xff
000026C0  741E              jz 0x26e0
000026C2  803DFC            cmp byte [di],0xfc
000026C5  7419              jz 0x26e0
000026C7  2EFF160A30        call word near [cs:0x300a]
000026CC  81CF0080          or di,0x8000
000026D0  897C03            mov [si+0x3],di
000026D3  B066              mov al,0x66
000026D5  81E7FF7F          and di,0x7fff
000026D9  56                push si
000026DA  2EFF160830        call word near [cs:0x3008]
000026DF  5E                pop si
000026E0  83C607            add si,0x7
000026E3  59                pop cx
000026E4  E29D              loop 0x2683
000026E6  C3                ret
000026E7  F744030080        test word [si+0x3],0x8000
000026EC  7501              jnz 0x26ef
000026EE  C3                ret
000026EF  816403FF7F        and word [si+0x3],0x7fff
000026F4  8B5403            mov dx,[si+0x3]
000026F7  8A6405            mov ah,[si+0x5]
000026FA  8A4406            mov al,[si+0x6]
000026FD  E90DFD            jmp 0x240d
00002700  BE60EB            mov si,0xeb60
00002703  B90400            mov cx,0x4
00002706  51                push cx
00002707  803CFF            cmp byte [si],0xff
0000270A  7432              jz 0x273e
0000270C  8A1C              mov bl,[si]
0000270E  025C01            add bl,[si+0x1]
00002711  80E30F            and bl,0xf
00002714  881C              mov [si],bl
00002716  32FF              xor bh,bh
00002718  03DB              add bx,bx
0000271A  81C39087          add bx,0x8790
0000271E  8A268300          mov ah,[0x83]
00002722  0227              add ah,[bx]
00002724  A08400            mov al,[0x84]
00002727  024701            add al,[bx+0x1]
0000272A  02068200          add al,[0x82]
0000272E  E841E6            call 0xd72
00002731  87F7              xchg si,di
00002733  83EE25            sub si,0x25
00002736  E859E6            call 0xd92
00002739  87F7              xchg si,di
0000273B  E80700            call 0x2745
0000273E  83C607            add si,0x7
00002741  59                pop cx
00002742  E2C2              loop 0x2706
00002744  C3                ret
00002745  F60634FFFF        test byte [0xff34],0xff
0000274A  7408              jz 0x2754
0000274C  F60630FFFF        test byte [0xff30],0xff
00002751  7401              jz 0x2754
00002753  C3                ret
00002754  E81200            call 0x2769
00002757  47                inc di
00002758  E80E00            call 0x2769
0000275B  87F7              xchg si,di
0000275D  83C623            add si,0x23
00002760  E823E6            call 0xd86
00002763  87F7              xchg si,di
00002765  E80100            call 0x2769
00002768  47                inc di
00002769  F64402FF          test byte [si+0x2],0xff
0000276D  7501              jnz 0x2770
0000276F  C3                ret
00002770  87F7              xchg si,di
00002772  E85AE6            call 0xdcf
00002775  87F7              xchg si,di
00002777  7301              jnc 0x277a
00002779  C3                ret
0000277A  F6470420          test byte [bx+0x4],0x20
0000277E  7401              jz 0x2781
00002780  C3                ret
00002781  F6470520          test byte [bx+0x5],0x20
00002785  7401              jz 0x2788
00002787  C3                ret
00002788  806705E0          and byte [bx+0x5],0xe0
0000278C  804F0549          or byte [bx+0x5],0x49
00002790  FE4C02            dec byte [si+0x2]
00002793  C3                ret
00002794  0201              add al,[bx+di]
00002796  0200              add al,[bx+si]
00002798  03FF              add di,di
0000279A  04FE              add al,0xfe
0000279C  05FE06            add ax,0x6fe
0000279F  FE07              inc byte [bx]
000027A1  FF08              dec word [bx+si]
000027A3  0008              add [bx+si],cl
000027A5  0108              add [bx+si],cx
000027A7  0207              add al,[bx]
000027A9  03060405          add ax,[0x504]
000027AD  0404              add al,0x4
000027AF  0403              add al,0x3
000027B1  0302              add ax,[bp+si]
000027B3  02F6              add dh,dh
000027B5  06                push es
000027B6  9D                popf
000027B7  00FF              add bh,bh
000027B9  7501              jnz 0x27bc
000027BB  C3                ret
000027BC  F6063CFFFF        test byte [0xff3c],0xff
000027C1  7532              jnz 0x27f5
000027C3  F6061EFFFF        test byte [0xff1e],0xff
000027C8  7501              jnz 0x27cb
000027CA  C3                ret
000027CB  C6061DFF00        mov byte [0xff1d],0x0
000027D0  C6061EFF00        mov byte [0xff1e],0x0
000027D5  F60643FFFF        test byte [0xff43],0xff
000027DA  7401              jz 0x27dd
000027DC  C3                ret
000027DD  F6063EFFFF        test byte [0xff3e],0xff
000027E2  7401              jz 0x27e5
000027E4  C3                ret
000027E5  C6062B9F00        mov byte [0x9f2b],0x0
000027EA  C6063CFFFF        mov byte [0xff3c],0xff
000027EF  C60675FF17        mov byte [0xff75],0x17
000027F4  C3                ret
000027F5  80062B9F02        add byte [0x9f2b],0x2
000027FA  803E2B9F04        cmp byte [0x9f2b],0x4
000027FF  740E              jz 0x280f
00002801  803E2B9F06        cmp byte [0x9f2b],0x6
00002806  7301              jnc 0x2809
00002808  C3                ret
00002809  C6063CFF00        mov byte [0xff3c],0x0
0000280E  C3                ret
0000280F  8A1E9D00          mov bl,[0x9d]
00002813  FECB              dec bl
00002815  32FF              xor bh,bh
00002817  F687AB00FF        test byte [bx+0xab],0xff
0000281C  7501              jnz 0x281f
0000281E  C3                ret
0000281F  FE8FAB00          dec byte [bx+0xab]
00002823  2EFF161820        call word near [cs:0x2018]
00002828  C60675FF18        mov byte [0xff75],0x18
0000282D  BE15EB            mov si,0xeb15
00002830  C6063EFFFF        mov byte [0xff3e],0xff
00002835  8A1E9D00          mov bl,[0x9d]
00002839  FECB              dec bl
0000283B  32FF              xor bh,bh
0000283D  03DB              add bx,bx
0000283F  FFA73F88          jmp word near [bx-0x77c1]
00002843  4D                dec bp
00002844  884D88            mov [di-0x78],cl
00002847  4D                dec bp
00002848  884D88            mov [di-0x78],cl
0000284B  A888              test al,0x88
0000284D  F8                clc
0000284E  8818              mov [bx+si],bl
00002850  89A0C200          mov [bx+si+0xc2],sp
00002854  F6D0              not al
00002856  2401              and al,0x1
00002858  884403            mov [si+0x3],al
0000285B  A038FF            mov al,[0xff38]
0000285E  2401              and al,0x1
00002860  02068400          add al,[0x84]
00002864  02068200          add al,[0x82]
00002868  243F              and al,0x3f
0000286A  884402            mov [si+0x2],al
0000286D  A08300            mov al,[0x83]
00002870  0404              add al,0x4
00002872  8A6403            mov ah,[si+0x3]
00002875  F6D4              not ah
00002877  80E401            and ah,0x1
0000287A  02C4              add al,ah
0000287C  32E4              xor ah,ah
0000287E  03068000          add ax,[0x80]
00002882  3B0602C0          cmp ax,[0xc002]
00002886  7204              jc 0x288c
00002888  2B0602C0          sub ax,[0xc002]
0000288C  8904              mov [si],ax
0000288E  C6440900          mov byte [si+0x9],0x0
00002892  C6440B00          mov byte [si+0xb],0x0
00002896  C6440D00          mov byte [si+0xd],0x0
0000289A  C6440F00          mov byte [si+0xf],0x0
0000289E  C6440400          mov byte [si+0x4],0x0
000028A2  C6440500          mov byte [si+0x5],0x0
000028A6  C74410FFFF        mov word [si+0x10],0xffff
000028AB  C3                ret
000028AC  B90400            mov cx,0x4
000028AF  51                push cx
000028B0  B006              mov al,0x6
000028B2  F6E1              mul cl
000028B4  050200            add ax,0x2
000028B7  03068000          add ax,[0x80]
000028BB  3B0602C0          cmp ax,[0xc002]
000028BF  7204              jc 0x28c5
000028C1  2B0602C0          sub ax,[0xc002]
000028C5  8904              mov [si],ax
000028C7  2EFF161A01        call word near [cs:0x11a]
000028CC  2403              and al,0x3
000028CE  8A268200          mov ah,[0x82]
000028D2  80EC03            sub ah,0x3
000028D5  2AE0              sub ah,al
000028D7  80E43F            and ah,0x3f
000028DA  886402            mov [si+0x2],ah
000028DD  C6440900          mov byte [si+0x9],0x0
000028E1  C6440B00          mov byte [si+0xb],0x0
000028E5  C6440D00          mov byte [si+0xd],0x0
000028E9  C6440F00          mov byte [si+0xf],0x0
000028ED  C6440400          mov byte [si+0x4],0x0
000028F1  C6440500          mov byte [si+0x5],0x0
000028F5  83C610            add si,0x10
000028F8  59                pop cx
000028F9  E2B4              loop 0x28af
000028FB  C3                ret
000028FC  56                push si
000028FD  B90300            mov cx,0x3
00002900  51                push cx
00002901  E84DFF            call 0x2851
00002904  83C610            add si,0x10
00002907  59                pop cx
00002908  E2F6              loop 0x2900
0000290A  5E                pop si
0000290B  806C0202          sub byte [si+0x2],0x2
0000290F  8064023F          and byte [si+0x2],0x3f
00002913  80441202          add byte [si+0x12],0x2
00002917  8064123F          and byte [si+0x12],0x3f
0000291B  C3                ret
0000291C  C606ED9EFF        mov byte [0x9eed],0xff
00002921  C606EE9EFF        mov byte [0x9eee],0xff
00002926  F60634FFFF        test byte [0xff34],0xff
0000292B  7407              jz 0x2934
0000292D  F6062EFFFF        test byte [0xff2e],0xff
00002932  7524              jnz 0x2958
00002934  8B3631FF          mov si,[0xff31]
00002938  83EE24            sub si,0x24
0000293B  E854E4            call 0xd92
0000293E  B91300            mov cx,0x13
00002941  51                push cx
00002942  B92400            mov cx,0x24
00002945  51                push cx
00002946  F60480            test byte [si],0x80
00002949  7403              jz 0x294e
0000294B  E80503            call 0x2c53
0000294E  46                inc si
0000294F  59                pop cx
00002950  E2F3              loop 0x2945
00002952  E831E4            call 0xd86
00002955  59                pop cx
00002956  E2E9              loop 0x2941
00002958  C6063EFF00        mov byte [0xff3e],0x0
0000295D  C60675FF19        mov byte [0xff75],0x19
00002962  2EFF161830        call word near [cs:0x3018]
00002967  C6061EFF00        mov byte [0xff1e],0x0
0000296C  E848EA            call 0x13b7
0000296F  E92DE6            jmp 0xf9f
00002972  BE15EB            mov si,0xeb15
00002975  B90400            mov cx,0x4
00002978  833CFF            cmp word [si],0xffffffffffffffff
0000297B  7501              jnz 0x297e
0000297D  C3                ret
0000297E  51                push cx
0000297F  E8B900            call 0x2a3b
00002982  807C01FF          cmp byte [si+0x1],0xff
00002986  7507              jnz 0x298f
00002988  C704FFFF          mov word [si],0xffff
0000298C  E9A000            jmp 0x2a2f
0000298F  8A5C05            mov bl,[si+0x5]
00002992  02DB              add bl,bl
00002994  02DB              add bl,bl
00002996  32FF              xor bh,bh
00002998  A09D00            mov al,[0x9d]
0000299B  FEC8              dec al
0000299D  02C0              add al,al
0000299F  32E4              xor ah,ah
000029A1  BF818C            mov di,0x8c81
000029A4  F64403FF          test byte [si+0x3],0xff
000029A8  7503              jnz 0x29ad
000029AA  BF8D8C            mov di,0x8c8d
000029AD  03F8              add di,ax
000029AF  8B3D              mov di,[di]
000029B1  03FB              add di,bx
000029B3  8B04              mov ax,[si]
000029B5  E8ED0C            call 0x36a5
000029B8  7275              jc 0x2a2f
000029BA  885C06            mov [si+0x6],bl
000029BD  8A4402            mov al,[si+0x2]
000029C0  2A068200          sub al,[0x82]
000029C4  243F              and al,0x3f
000029C6  884407            mov [si+0x7],al
000029C9  8AF8              mov bh,al
000029CB  86FB              xchg bh,bl
000029CD  56                push si
000029CE  83C608            add si,0x8
000029D1  BD798C            mov bp,0x8c79
000029D4  B90400            mov cx,0x4
000029D7  51                push cx
000029D8  53                push bx
000029D9  55                push bp
000029DA  3E027E00          add bh,[ds:bp+0x0]
000029DE  8AC7              mov al,bh
000029E0  2C04              sub al,0x4
000029E2  3C1C              cmp al,0x1c
000029E4  733E              jnc 0x2a24
000029E6  45                inc bp
000029E7  3E025E00          add bl,[ds:bp+0x0]
000029EB  80E33F            and bl,0x3f
000029EE  80FB12            cmp bl,0x12
000029F1  7331              jnc 0x2a24
000029F3  8A05              mov al,[di]
000029F5  57                push di
000029F6  50                push ax
000029F7  8BC3              mov ax,bx
000029F9  50                push ax
000029FA  E86AFC            call 0x2667
000029FD  58                pop ax
000029FE  803DFF            cmp byte [di],0xff
00002A01  741F              jz 0x2a22
00002A03  803DFC            cmp byte [di],0xfc
00002A06  741A              jz 0x2a22
00002A08  2EFF160A30        call word near [cs:0x300a]
00002A0D  81CF0080          or di,0x8000
00002A11  893C              mov [si],di
00002A13  81E7FF7F          and di,0x7fff
00002A17  58                pop ax
00002A18  56                push si
00002A19  2EFF160830        call word near [cs:0x3008]
00002A1E  5E                pop si
00002A1F  5F                pop di
00002A20  EB02              jmp 0x2a24
00002A22  58                pop ax
00002A23  5F                pop di
00002A24  5D                pop bp
00002A25  46                inc si
00002A26  46                inc si
00002A27  47                inc di
00002A28  45                inc bp
00002A29  45                inc bp
00002A2A  5B                pop bx
00002A2B  59                pop cx
00002A2C  E2A9              loop 0x29d7
00002A2E  5E                pop si
00002A2F  83C610            add si,0x10
00002A32  59                pop cx
00002A33  E202              loop 0x2a37
00002A35  EB03              jmp 0x2a3a
00002A37  E93EFF            jmp 0x2978
00002A3A  C3                ret
00002A3B  F744080080        test word [si+0x8],0x8000
00002A40  7413              jz 0x2a55
00002A42  816408FF7F        and word [si+0x8],0x7fff
00002A47  8B5408            mov dx,[si+0x8]
00002A4A  8A6406            mov ah,[si+0x6]
00002A4D  8A4407            mov al,[si+0x7]
00002A50  56                push si
00002A51  E8B9F9            call 0x240d
00002A54  5E                pop si
00002A55  F7440A0080        test word [si+0xa],0x8000
00002A5A  7415              jz 0x2a71
00002A5C  81640AFF7F        and word [si+0xa],0x7fff
00002A61  8B540A            mov dx,[si+0xa]
00002A64  8A6406            mov ah,[si+0x6]
00002A67  FEC4              inc ah
00002A69  8A4407            mov al,[si+0x7]
00002A6C  56                push si
00002A6D  E89DF9            call 0x240d
00002A70  5E                pop si
00002A71  F7440C0080        test word [si+0xc],0x8000
00002A76  7417              jz 0x2a8f
00002A78  81640CFF7F        and word [si+0xc],0x7fff
00002A7D  8B540C            mov dx,[si+0xc]
00002A80  8A6406            mov ah,[si+0x6]
00002A83  8A4407            mov al,[si+0x7]
00002A86  FEC0              inc al
00002A88  243F              and al,0x3f
00002A8A  56                push si
00002A8B  E87FF9            call 0x240d
00002A8E  5E                pop si
00002A8F  F7440E0080        test word [si+0xe],0x8000
00002A94  7501              jnz 0x2a97
00002A96  C3                ret
00002A97  81640EFF7F        and word [si+0xe],0x7fff
00002A9C  8B540E            mov dx,[si+0xe]
00002A9F  8A6406            mov ah,[si+0x6]
00002AA2  FEC4              inc ah
00002AA4  8A4407            mov al,[si+0x7]
00002AA7  FEC0              inc al
00002AA9  243F              and al,0x3f
00002AAB  56                push si
00002AAC  E85EF9            call 0x240d
00002AAF  5E                pop si
00002AB0  C3                ret
00002AB1  F6063EFFFF        test byte [0xff3e],0xff
00002AB6  7501              jnz 0x2ab9
00002AB8  C3                ret
00002AB9  BE15EB            mov si,0xeb15
00002ABC  8A1E9D00          mov bl,[0x9d]
00002AC0  FECB              dec bl
00002AC2  32FF              xor bh,bh
00002AC4  03DB              add bx,bx
00002AC6  FFA7C68A          jmp word near [bx-0x753a]
00002ACA  D48A              aam byte 0x8a
00002ACC  F7                db 0xf7
00002ACD  8A09              mov cl,[bx+di]
00002ACF  8BF7              mov si,di
00002AD1  8A648B            mov ah,[si-0x75]
00002AD4  838B9C8BF6        or word [bp+di-0x7464],0xfffffffffffffff6
00002AD9  44                inc sp
00002ADA  03807403          add ax,[bx+si+0x374]
00002ADE  E9D800            jmp 0x2bb9
00002AE1  FE4404            inc byte [si+0x4]
00002AE4  807C0405          cmp byte [si+0x4],0x5
00002AE8  7203              jc 0x2aed
00002AEA  E9CC00            jmp 0x2bb9
00002AED  E8D600            call 0x2bc6
00002AF0  E80801            call 0x2bfb
00002AF3  7301              jnc 0x2af6
00002AF5  C3                ret
00002AF6  804C0380          or byte [si+0x3],0x80
00002AFA  C3                ret
00002AFB  FE4404            inc byte [si+0x4]
00002AFE  807C040A          cmp byte [si+0x4],0xa
00002B02  7203              jc 0x2b07
00002B04  E9B200            jmp 0x2bb9
00002B07  E8BC00            call 0x2bc6
00002B0A  E9EE00            jmp 0x2bfb
00002B0D  FE4404            inc byte [si+0x4]
00002B10  807C040C          cmp byte [si+0x4],0xc
00002B14  7203              jc 0x2b19
00002B16  E9A000            jmp 0x2bb9
00002B19  807C0404          cmp byte [si+0x4],0x4
00002B1D  7305              jnc 0x2b24
00002B1F  E8B200            call 0x2bd4
00002B22  EB41              jmp 0x2b65
00002B24  80640503          and byte [si+0x5],0x3
00002B28  FE4405            inc byte [si+0x5]
00002B2B  807C0403          cmp byte [si+0x4],0x3
00002B2F  7434              jz 0x2b65
00002B31  8B04              mov ax,[si]
00002B33  E86F0B            call 0x36a5
00002B36  722D              jc 0x2b65
00002B38  80FB21            cmp bl,0x21
00002B3B  7328              jnc 0x2b65
00002B3D  8AE3              mov ah,bl
00002B3F  8A4402            mov al,[si+0x2]
00002B42  E82DE2            call 0xd72
00002B45  87F7              xchg si,di
00002B47  83C648            add si,0x48
00002B4A  E839E2            call 0xd86
00002B4D  87F7              xchg si,di
00002B4F  8A05              mov al,[di]
00002B51  E895E2            call 0xde9
00002B54  750F              jnz 0x2b65
00002B56  8A4501            mov al,[di+0x1]
00002B59  E88DE2            call 0xde9
00002B5C  7507              jnz 0x2b65
00002B5E  FE4402            inc byte [si+0x2]
00002B61  8064023F          and byte [si+0x2],0x3f
00002B65  E99300            jmp 0x2bfb
00002B68  FE4404            inc byte [si+0x4]
00002B6B  807C040C          cmp byte [si+0x4],0xc
00002B6F  7330              jnc 0x2ba1
00002B71  B90400            mov cx,0x4
00002B74  51                push cx
00002B75  80440202          add byte [si+0x2],0x2
00002B79  8064023F          and byte [si+0x2],0x3f
00002B7D  E87B00            call 0x2bfb
00002B80  83C610            add si,0x10
00002B83  59                pop cx
00002B84  E2EE              loop 0x2b74
00002B86  C3                ret
00002B87  FE4404            inc byte [si+0x4]
00002B8A  807C040A          cmp byte [si+0x4],0xa
00002B8E  7319              jnc 0x2ba9
00002B90  B90300            mov cx,0x3
00002B93  51                push cx
00002B94  E82F00            call 0x2bc6
00002B97  E86100            call 0x2bfb
00002B9A  83C610            add si,0x10
00002B9D  59                pop cx
00002B9E  E2F3              loop 0x2b93
00002BA0  C3                ret
00002BA1  C6443000          mov byte [si+0x30],0x0
00002BA5  C64431FF          mov byte [si+0x31],0xff
00002BA9  C6442000          mov byte [si+0x20],0x0
00002BAD  C64421FF          mov byte [si+0x21],0xff
00002BB1  C6441000          mov byte [si+0x10],0x0
00002BB5  C64411FF          mov byte [si+0x11],0xff
00002BB9  C60400            mov byte [si],0x0
00002BBC  C64401FF          mov byte [si+0x1],0xff
00002BC0  C6063EFF00        mov byte [0xff3e],0x0
00002BC5  C3                ret
00002BC6  8A4405            mov al,[si+0x5]
00002BC9  FEC0              inc al
00002BCB  3C03              cmp al,0x3
00002BCD  7202              jc 0x2bd1
00002BCF  32C0              xor al,al
00002BD1  884405            mov [si+0x5],al
00002BD4  8B04              mov ax,[si]
00002BD6  8A5C03            mov bl,[si+0x3]
00002BD9  83E301            and bx,0x1
00002BDC  03DB              add bx,bx
00002BDE  03DB              add bx,bx
00002BE0  4B                dec bx
00002BE1  4B                dec bx
00002BE2  03C3              add ax,bx
00002BE4  0BC0              or ax,ax
00002BE6  7906              jns 0x2bee
00002BE8  030602C0          add ax,[0xc002]
00002BEC  EB0A              jmp 0x2bf8
00002BEE  3B0602C0          cmp ax,[0xc002]
00002BF2  7204              jc 0x2bf8
00002BF4  2B0602C0          sub ax,[0xc002]
00002BF8  8904              mov [si],ax
00002BFA  C3                ret
00002BFB  F60634FFFF        test byte [0xff34],0xff
00002C00  7409              jz 0x2c0b
00002C02  F6062EFFFF        test byte [0xff2e],0xff
00002C07  F9                stc
00002C08  7401              jz 0x2c0b
00002C0A  C3                ret
00002C0B  8B04              mov ax,[si]
00002C0D  E8950A            call 0x36a5
00002C10  7301              jnc 0x2c13
00002C12  C3                ret
00002C13  8AE3              mov ah,bl
00002C15  80EB02            sub bl,0x2
00002C18  80FB20            cmp bl,0x20
00002C1B  F5                cmc
00002C1C  7301              jnc 0x2c1f
00002C1E  C3                ret
00002C1F  8A4402            mov al,[si+0x2]
00002C22  E84DE1            call 0xd72
00002C25  56                push si
00002C26  87FE              xchg di,si
00002C28  83EE25            sub si,0x25
00002C2B  E864E1            call 0xd92
00002C2E  C6062A9F00        mov byte [0x9f2a],0x0
00002C33  B90300            mov cx,0x3
00002C36  51                push cx
00002C37  B90300            mov cx,0x3
00002C3A  51                push cx
00002C3B  E81500            call 0x2c53
00002C3E  59                pop cx
00002C3F  46                inc si
00002C40  E2F8              loop 0x2c3a
00002C42  83C621            add si,0x21
00002C45  E83EE1            call 0xd86
00002C48  59                pop cx
00002C49  E2EB              loop 0x2c36
00002C4B  5E                pop si
00002C4C  A02A9F            mov al,[0x9f2a]
00002C4F  02C0              add al,al
00002C51  F5                cmc
00002C52  C3                ret
00002C53  E879E1            call 0xdcf
00002C56  7301              jnc 0x2c59
00002C58  C3                ret
00002C59  A820              test al,0x20
00002C5B  7401              jz 0x2c5e
00002C5D  C3                ret
00002C5E  F6470520          test byte [bx+0x5],0x20
00002C62  7401              jz 0x2c65
00002C64  C3                ret
00002C65  8A4705            mov al,[bx+0x5]
00002C68  0C40              or al,0x40
00002C6A  24E0              and al,0xe0
00002C6C  8A269D00          mov ah,[0x9d]
00002C70  FEC4              inc ah
00002C72  0AC4              or al,ah
00002C74  884705            mov [bx+0x5],al
00002C77  C6062A9FFF        mov byte [0x9f2a],0xff
00002C7C  C3                ret
00002C7D  0000              add [bx+si],al
00002C7F  0100              add [bx+si],ax
00002C81  0001              add [bx+di],al
00002C83  0101              add [bx+di],ax
00002C85  99                cwd
00002C86  8CA58CBD          mov word [di-0x4274],fs
00002C8A  8CE5              mov bp,fs
00002C8C  8CFD              mov bp,segr7
00002C8E  8C01              mov word [bx+di],es
00002C90  8D998CB1          lea bx,[bx+di-0x4e74]
00002C94  8CD1              mov cx,ss
00002C96  8CF1              mov cx,segr6
00002C98  8CFD              mov bp,segr7
00002C9A  8C0D              mov word [di],cs
00002C9C  8D6768            lea sp,[bx+0x68]
00002C9F  696A6B6C6D        imul bp,[bp+si+0x6b],0x6d6c
00002CA4  6E                outsb
00002CA5  6F                outsw
00002CA6  7071              jo 0x2d19
00002CA8  7267              jc 0x2d11
00002CAA  68696A            push word 0x6a69
00002CAD  6B6C6D6E          imul bp,[si+0x6d],0x6e
00002CB1  6F                outsw
00002CB2  7071              jo 0x2d25
00002CB4  7273              jc 0x2d29
00002CB6  7475              jz 0x2d2d
00002CB8  7677              jna 0x2d31
00002CBA  7879              js 0x2d35
00002CBC  7A7B              jpe 0x2d39
00002CBE  7C7D              jl 0x2d3d
00002CC0  7E67              jng 0x2d29
00002CC2  68696A            push word 0x6a69
00002CC5  6F                outsw
00002CC6  7071              jo 0x2d39
00002CC8  7273              jc 0x2d3d
00002CCA  7475              jz 0x2d41
00002CCC  7677              jna 0x2d45
00002CCE  7879              js 0x2d49
00002CD0  7A7B              jpe 0x2d4d
00002CD2  7C7D              jl 0x2d51
00002CD4  7E6B              jng 0x2d41
00002CD6  6C                insb
00002CD7  6D                insw
00002CD8  6E                outsb
00002CD9  6F                outsw
00002CDA  7071              jo 0x2d4d
00002CDC  7273              jc 0x2d51
00002CDE  7475              jz 0x2d55
00002CE0  7677              jna 0x2d59
00002CE2  7879              js 0x2d5d
00002CE4  7A7B              jpe 0x2d61
00002CE6  7C7D              jl 0x2d65
00002CE8  7E67              jng 0x2d51
00002CEA  68696A            push word 0x6a69
00002CED  6B6C6D6E          imul bp,[si+0x6d],0x6e
00002CF1  6F                outsw
00002CF2  7071              jo 0x2d65
00002CF4  7273              jc 0x2d69
00002CF6  7475              jz 0x2d6d
00002CF8  7677              jna 0x2d71
00002CFA  7879              js 0x2d75
00002CFC  7A7B              jpe 0x2d79
00002CFE  7C7D              jl 0x2d7d
00002D00  7E73              jng 0x2d75
00002D02  7475              jz 0x2d79
00002D04  7667              jna 0x2d6d
00002D06  68696A            push word 0x6a69
00002D09  6B6C6D6E          imul bp,[si+0x6d],0x6e
00002D0D  6F                outsw
00002D0E  7071              jo 0x2d81
00002D10  7273              jc 0x2d85
00002D12  7475              jz 0x2d89
00002D14  7677              jna 0x2d8d
00002D16  7879              js 0x2d91
00002D18  7A7B              jpe 0x2d95
00002D1A  7C7D              jl 0x2d99
00002D1C  7E8B              jng 0x2ca9
00002D1E  3610C0            ss adc al,al
00002D21  A034FF            mov al,[0xff34]
00002D24  0A06E600          or al,[0xe6]
00002D28  7405              jz 0x2d2f
00002D2A  2EFF2600A0        jmp word near [cs:0xa000]
00002D2F  C6064AFF00        mov byte [0xff4a],0x0
00002D34  8B04              mov ax,[si]
00002D36  3DFFFF            cmp ax,0xffff
00002D39  7501              jnz 0x2d3c
00002D3B  C3                ret
00002D3C  C64403FF          mov byte [si+0x3],0xff
00002D40  80FCFF            cmp ah,0xff
00002D43  744F              jz 0x2d94
00002D45  E85D09            call 0x36a5
00002D48  724A              jc 0x2d94
00002D4A  885C03            mov [si+0x3],bl
00002D4D  E86200            call 0x2db2
00002D50  807C01FF          cmp byte [si+0x1],0xff
00002D54  743E              jz 0x2d94
00002D56  8B4402            mov ax,[si+0x2]
00002D59  E816E0            call 0xd72
00002D5C  8A1E4AFF          mov bl,[0xff4a]
00002D60  32FF              xor bh,bh
00002D62  8AC3              mov al,bl
00002D64  0C80              or al,0x80
00002D66  8605              xchg al,[di]
00002D68  888720ED          mov [bx-0x12e0],al
00002D6C  F6440411          test byte [si+0x4],0x11
00002D70  7522              jnz 0x2d94
00002D72  F6440710          test byte [si+0x7],0x10
00002D76  741C              jz 0x2d94
00002D78  87F7              xchg si,di
00002D7A  83C648            add si,0x48
00002D7D  E806E0            call 0xd86
00002D80  87F7              xchg si,di
00002D82  8A1E4AFF          mov bl,[0xff4a]
00002D86  FEC3              inc bl
00002D88  32FF              xor bh,bh
00002D8A  8AC3              mov al,bl
00002D8C  0C80              or al,0x80
00002D8E  8605              xchg al,[di]
00002D90  888720ED          mov [bx-0x12e0],al
00002D94  F6440720          test byte [si+0x7],0x20
00002D98  750F              jnz 0x2da9
00002D9A  8A440F            mov al,[si+0xf]
00002D9D  FEC0              inc al
00002D9F  7403              jz 0x2da4
00002DA1  88440F            mov [si+0xf],al
00002DA4  7503              jnz 0x2da9
00002DA6  E85A07            call 0x3503
00002DA9  FE064AFF          inc byte [0xff4a]
00002DAD  83C610            add si,0x10
00002DB0  EB82              jmp 0x2d34
00002DB2  8B4402            mov ax,[si+0x2]
00002DB5  E8BADF            call 0xd72
00002DB8  8A4405            mov al,[si+0x5]
00002DBB  24DF              and al,0xdf
00002DBD  A840              test al,0x40
00002DBF  740A              jz 0x2dcb
00002DC1  F6440420          test byte [si+0x4],0x20
00002DC5  7502              jnz 0x2dc9
00002DC7  0C20              or al,0x20
00002DC9  24BF              and al,0xbf
00002DCB  884405            mov [si+0x5],al
00002DCE  A04AFF            mov al,[0xff4a]
00002DD1  BB20ED            mov bx,0xed20
00002DD4  D7                xlatb
00002DD5  8805              mov [di],al
00002DD7  F6440411          test byte [si+0x4],0x11
00002DDB  7518              jnz 0x2df5
00002DDD  F6440710          test byte [si+0x7],0x10
00002DE1  7412              jz 0x2df5
00002DE3  87F7              xchg si,di
00002DE5  83C648            add si,0x48
00002DE8  E89BDF            call 0xd86
00002DEB  87F7              xchg si,di
00002DED  A04AFF            mov al,[0xff4a]
00002DF0  FEC0              inc al
00002DF2  D7                xlatb
00002DF3  8805              mov [di],al
00002DF5  F6440418          test byte [si+0x4],0x18
00002DF9  7505              jnz 0x2e00
00002DFB  2EFF2600A0        jmp word near [cs:0xa000]
00002E00  EB00              jmp 0x2e02
00002E02  32FF              xor bh,bh
00002E04  8A5C04            mov bl,[si+0x4]
00002E07  80E31F            and bl,0x1f
00002E0A  80EB10            sub bl,0x10
00002E0D  7303              jnc 0x2e12
00002E0F  E9D802            jmp 0x30ea
00002E12  03DB              add bx,bx
00002E14  FFA7148E          jmp word near [bx-0x71ec]
00002E18  328E8D8E          xor cl,[bp-0x7173]
00002E1C  E98EF6            jmp 0x24ad
00002E1F  8EAB8FAB          mov gs,word [bp+di-0x5471]
00002E23  8F                db 0x8f
00002E24  E88FF8            call 0x26b6
00002E27  8F                db 0x8f
00002E28  08901C90          or [bx+si-0x6fe4],dl
00002E2C  9D                popf
00002E2D  90                nop
00002E2E  AB                stosw
00002E2F  8F                db 0x8f
00002E30  3C90              cmp al,0x90
00002E32  7F90              jg 0x2dc4
00002E34  90                nop
00002E35  90                nop
00002E36  F6440A01          test byte [si+0xa],0x1
00002E3A  751C              jnz 0x2e58
00002E3C  F6440520          test byte [si+0x5],0x20
00002E40  7501              jnz 0x2e43
00002E42  C3                ret
00002E43  C60675FF12        mov byte [0xff75],0x12
00002E48  80640590          and byte [si+0x5],0x90
00002E4C  8064047F          and byte [si+0x4],0x7f
00002E50  804C0460          or byte [si+0x4],0x60
00002E54  804C0A01          or byte [si+0xa],0x1
00002E58  80440680          add byte [si+0x6],0x80
00002E5C  7201              jc 0x2e5f
00002E5E  C3                ret
00002E5F  FE4406            inc byte [si+0x6]
00002E62  807C0604          cmp byte [si+0x6],0x4
00002E66  7301              jnc 0x2e69
00002E68  C3                ret
00002E69  C6440600          mov byte [si+0x6],0x0
00002E6D  8A4409            mov al,[si+0x9]
00002E70  0AC0              or al,al
00002E72  7503              jnz 0x2e77
00002E74  E9D902            jmp 0x3150
00002E77  A810              test al,0x10
00002E79  740A              jz 0x2e85
00002E7B  0C60              or al,0x60
00002E7D  804C0780          or byte [si+0x7],0x80
00002E81  C6440F00          mov byte [si+0xf],0x0
00002E85  884404            mov [si+0x4],al
00002E88  80640580          and byte [si+0x5],0x80
00002E8C  C6440900          mov byte [si+0x9],0x0
00002E90  C3                ret
00002E91  F6440A01          test byte [si+0xa],0x1
00002E95  7537              jnz 0x2ece
00002E97  8A6402            mov ah,[si+0x2]
00002E9A  80EC03            sub ah,0x3
00002E9D  80E43F            and ah,0x3f
00002EA0  3A2635FF          cmp ah,[0xff35]
00002EA4  7401              jz 0x2ea7
00002EA6  C3                ret
00002EA7  A08300            mov al,[0x83]
00002EAA  0403              add al,0x3
00002EAC  8A26C200          mov ah,[0xc2]
00002EB0  80E401            and ah,0x1
00002EB3  02E4              add ah,ah
00002EB5  02C4              add al,ah
00002EB7  B90200            mov cx,0x2
00002EBA  3A4403            cmp al,[si+0x3]
00002EBD  7405              jz 0x2ec4
00002EBF  FEC0              inc al
00002EC1  E2F7              loop 0x2eba
00002EC3  C3                ret
00002EC4  C60675FF12        mov byte [0xff75],0x12
00002EC9  804C0A01          or byte [si+0xa],0x1
00002ECD  C3                ret
00002ECE  8064047F          and byte [si+0x4],0x7f
00002ED2  E88403            call 0x3259
00002ED5  80440680          add byte [si+0x6],0x80
00002ED9  7201              jc 0x2edc
00002EDB  C3                ret
00002EDC  FE4406            inc byte [si+0x6]
00002EDF  807C0604          cmp byte [si+0x6],0x4
00002EE3  7301              jnc 0x2ee6
00002EE5  C3                ret
00002EE6  C6440600          mov byte [si+0x6],0x0
00002EEA  E96302            jmp 0x3150
00002EED  FE4406            inc byte [si+0x6]
00002EF0  807C0603          cmp byte [si+0x6],0x3
00002EF4  7401              jz 0x2ef7
00002EF6  C3                ret
00002EF7  E95602            jmp 0x3150
00002EFA  E89702            call 0x3194
00002EFD  7301              jnc 0x2f00
00002EFF  C3                ret
00002F00  C60675FF14        mov byte [0xff75],0x14
00002F05  F644060F          test byte [si+0x6],0xf
00002F09  7519              jnz 0x2f24
00002F0B  8A4409            mov al,[si+0x9]
00002F0E  A810              test al,0x10
00002F10  740A              jz 0x2f1c
00002F12  0C60              or al,0x60
00002F14  804C0780          or byte [si+0x7],0x80
00002F18  C6440F00          mov byte [si+0xf],0x0
00002F1C  884404            mov [si+0x4],al
00002F1F  C6440900          mov byte [si+0x9],0x0
00002F23  C3                ret
00002F24  E82902            call 0x3150
00002F27  8A5C06            mov bl,[si+0x6]
00002F2A  80E30F            and bl,0xf
00002F2D  FECB              dec bl
00002F2F  02DB              add bl,bl
00002F31  32FF              xor bh,bh
00002F33  FFA7338F          jmp word near [bx-0x70cd]
00002F37  41                inc cx
00002F38  8F                db 0x8f
00002F39  4D                dec bp
00002F3A  8F                db 0x8f
00002F3B  59                pop cx
00002F3C  8F                db 0x8f
00002F3D  5F                pop di
00002F3E  8F                db 0x8f
00002F3F  6B8F778F83        imul cx,[bx-0x7089],0xffffffffffffff83
00002F44  8F                db 0x8f
00002F45  BA1E9A            mov dx,0x9a1e
00002F48  E899E4            call 0x13e4
00002F4B  B83200            mov ax,0x32
00002F4E  E91E02            jmp 0x316f
00002F51  BA329A            mov dx,0x9a32
00002F54  E88DE4            call 0x13e4
00002F57  B86400            mov ax,0x64
00002F5A  E91202            jmp 0x316f
00002F5D  BADD9A            mov dx,0x9add
00002F60  E981E4            jmp 0x13e4
00002F63  BA479A            mov dx,0x9a47
00002F66  E87BE4            call 0x13e4
00002F69  B8F401            mov ax,0x1f4
00002F6C  E90002            jmp 0x316f
00002F6F  BA5C9A            mov dx,0x9a5c
00002F72  E86FE4            call 0x13e4
00002F75  B8E803            mov ax,0x3e8
00002F78  E9F401            jmp 0x316f
00002F7B  BA2C9B            mov dx,0x9b2c
00002F7E  E863E4            call 0x13e4
00002F81  C6069B00FF        mov byte [0x9b],0xff
00002F86  C3                ret
00002F87  BA9C9B            mov dx,0x9b9c
00002F8A  E857E4            call 0x13e4
00002F8D  56                push si
00002F8E  2EFF160430        call word near [cs:0x3004]
00002F93  C606920006        mov byte [0x92],0x6
00002F98  B006              mov al,0x6
00002F9A  BBAB18            mov bx,0x18ab
00002F9D  2EFF161C20        call word near [cs:0x201c]
00002FA2  8A269200          mov ah,[0x92]
00002FA6  B004              mov al,0x4
00002FA8  2EFF160C01        call word near [cs:0x10c]
00002FAD  5E                pop si
00002FAE  C3                ret
00002FAF  E8A702            call 0x3259
00002FB2  FE4406            inc byte [si+0x6]
00002FB5  80640603          and byte [si+0x6],0x3
00002FB9  E8D801            call 0x3194
00002FBC  7301              jnc 0x2fbf
00002FBE  C3                ret
00002FBF  C60675FF10        mov byte [0xff75],0x10
00002FC4  8A4404            mov al,[si+0x4]
00002FC7  240F              and al,0xf
00002FC9  3C04              cmp al,0x4
00002FCB  7509              jnz 0x2fd6
00002FCD  B80100            mov ax,0x1
00002FD0  E8AD01            call 0x3180
00002FD3  E97A01            jmp 0x3150
00002FD6  3C05              cmp al,0x5
00002FD8  7509              jnz 0x2fe3
00002FDA  B80A00            mov ax,0xa
00002FDD  E8A001            call 0x3180
00002FE0  E96D01            jmp 0x3150
00002FE3  B86400            mov ax,0x64
00002FE6  E89701            call 0x3180
00002FE9  E96401            jmp 0x3150
00002FEC  BA729A            mov dx,0x9a72
00002FEF  E8E500            call 0x30d7
00002FF2  7301              jnc 0x2ff5
00002FF4  C3                ret
00002FF5  FE069800          inc byte [0x98]
00002FF9  E95401            jmp 0x3150
00002FFC  BACB9B            mov dx,0x9bcb
00002FFF  E8D500            call 0x30d7
00003002  7301              jnc 0x3005
00003004  C3                ret
00003005  FE069900          inc byte [0x99]
00003009  E94401            jmp 0x3150
0000300C  E88501            call 0x3194
0000300F  7301              jnc 0x3012
00003011  C3                ret
00003012  BA839A            mov dx,0x9a83
00003015  E8CCE3            call 0x13e4
00003018  8006C6000A        add byte [0xc6],0xa
0000301D  E93001            jmp 0x3150
00003020  E83602            call 0x3259
00003023  E86E01            call 0x3194
00003026  7301              jnc 0x3029
00003028  C3                ret
00003029  BA999A            mov dx,0x9a99
0000302C  E8B5E3            call 0x13e4
0000302F  A1B200            mov ax,[0xb2]
00003032  D1E8              shr ax,0x0
00003034  D1E8              shr ax,0x0
00003036  D1E8              shr ax,0x0
00003038  40                inc ax
00003039  0106C600          add [0xc6],ax
0000303D  E91001            jmp 0x3150
00003040  C6440F00          mov byte [si+0xf],0x0
00003044  F6440901          test byte [si+0x9],0x1
00003048  752A              jnz 0x3074
0000304A  E84701            call 0x3194
0000304D  7301              jnc 0x3050
0000304F  C3                ret
00003050  C60675FF11        mov byte [0xff75],0x11
00003055  804C0780          or byte [si+0x7],0x80
00003059  804C0901          or byte [si+0x9],0x1
0000305D  C6440AEB          mov byte [si+0xa],0xeb
00003061  8A5C06            mov bl,[si+0x6]
00003064  02DB              add bl,bl
00003066  32FF              xor bh,bh
00003068  031E17C0          add bx,[0xc017]
0000306C  56                push si
0000306D  8B37              mov si,[bx]
0000306F  E8A0E3            call 0x1412
00003072  5E                pop si
00003073  C3                ret
00003074  F6440AFF          test byte [si+0xa],0xff
00003078  7404              jz 0x307e
0000307A  FE440A            inc byte [si+0xa]
0000307D  C3                ret
0000307E  806409FE          and byte [si+0x9],0xfe
00003082  C3                ret
00003083  BAF39A            mov dx,0x9af3
00003086  E84E00            call 0x30d7
00003089  7301              jnc 0x308c
0000308B  C3                ret
0000308C  C6069C00FF        mov byte [0x9c],0xff
00003091  E9BC00            jmp 0x3150
00003094  BA639B            mov dx,0x9b63
00003097  E83D00            call 0x30d7
0000309A  7301              jnc 0x309d
0000309C  C3                ret
0000309D  B001              mov al,0x1
0000309F  EB1B              jmp 0x30bc
000030A1  A012C0            mov al,[0xc012]
000030A4  2C04              sub al,0x4
000030A6  B103              mov cl,0x3
000030A8  F6E1              mul cl
000030AA  BFCA90            mov di,0x90ca
000030AD  03F8              add di,ax
000030AF  8A05              mov al,[di]
000030B1  8B5501            mov dx,[di+0x1]
000030B4  50                push ax
000030B5  E81F00            call 0x30d7
000030B8  58                pop ax
000030B9  7301              jnc 0x30bc
000030BB  C3                ret
000030BC  50                push ax
000030BD  BFA100            mov di,0xa1
000030C0  F605FF            test byte [di],0xff
000030C3  7403              jz 0x30c8
000030C5  47                inc di
000030C6  EBF8              jmp 0x30c0
000030C8  58                pop ax
000030C9  8805              mov [di],al
000030CB  E98200            jmp 0x3150
000030CE  040F              add al,0xf
000030D0  9B02479B          wait add al,[bx-0x65]
000030D4  037F9B            add di,[bx-0x65]
000030D7  52                push dx
000030D8  E87E01            call 0x3259
000030DB  E8B600            call 0x3194
000030DE  5A                pop dx
000030DF  7301              jnc 0x30e2
000030E1  C3                ret
000030E2  C60675FF11        mov byte [0xff75],0x11
000030E7  E9FAE2            jmp 0x13e4
000030EA  80440680          add byte [si+0x6],0x80
000030EE  7201              jc 0x30f1
000030F0  C3                ret
000030F1  FE4406            inc byte [si+0x6]
000030F4  807C0603          cmp byte [si+0x6],0x3
000030F8  7401              jz 0x30fb
000030FA  C3                ret
000030FB  C6440F00          mov byte [si+0xf],0x0
000030FF  F6440740          test byte [si+0x7],0x40
00003103  7415              jz 0x311a
00003105  806407BF          and byte [si+0x7],0xbf
00003109  8A440A            mov al,[si+0xa]
0000310C  B110              mov cl,0x10
0000310E  F6E1              mul cl
00003110  030610C0          add ax,[0xc010]
00003114  8BF8              mov di,ax
00003116  C6450200          mov byte [di+0x2],0x0
0000311A  F6440710          test byte [si+0x7],0x10
0000311E  7406              jz 0x3126
00003120  F6440401          test byte [si+0x4],0x1
00003124  742A              jz 0x3150
00003126  C6440600          mov byte [si+0x6],0x0
0000312A  C6440472          mov byte [si+0x4],0x72
0000312E  8A4407            mov al,[si+0x7]
00003131  240F              and al,0xf
00003133  7501              jnz 0x3136
00003135  C3                ret
00003136  3C01              cmp al,0x1
00003138  7416              jz 0x3150
0000313A  0C70              or al,0x70
0000313C  804C0780          or byte [si+0x7],0x80
00003140  C6440F04          mov byte [si+0xf],0x4
00003144  884404            mov [si+0x4],al
00003147  80640580          and byte [si+0x5],0x80
0000314B  806407F0          and byte [si+0x7],0xf0
0000314F  C3                ret
00003150  C70400FF          mov word [si],0xff00
00003154  F6440720          test byte [si+0x7],0x20
00003158  7501              jnz 0x315b
0000315A  C3                ret
0000315B  8B7C0B            mov di,[si+0xb]
0000315E  83FFFF            cmp di,0xffffffffffffffff
00003161  7501              jnz 0x3164
00003163  C3                ret
00003164  8A440D            mov al,[si+0xd]
00003167  0805              or [di],al
00003169  C7440BFFFF        mov word [si+0xb],0xffff
0000316E  C3                ret
0000316F  01068600          add [0x86],ax
00003173  8016850000        adc byte [0x85],0x0
00003178  56                push si
00003179  2EFF161620        call word near [cs:0x2016]
0000317E  5E                pop si
0000317F  C3                ret
00003180  01068B00          add [0x8b],ax
00003184  7306              jnc 0x318c
00003186  C7068B00FFFF      mov word [0x8b],0xffff
0000318C  56                push si
0000318D  2EFF161420        call word near [cs:0x2014]
00003192  5E                pop si
00003193  C3                ret
00003194  F606E800FF        test byte [0xe8],0xff
00003199  F9                stc
0000319A  7401              jz 0x319d
0000319C  C3                ret
0000319D  8A6402            mov ah,[si+0x2]
000031A0  80C402            add ah,0x2
000031A3  B90400            mov cx,0x4
000031A6  FECC              dec ah
000031A8  80E43F            and ah,0x3f
000031AB  3A2635FF          cmp ah,[0xff35]
000031AF  7408              jz 0x31b9
000031B1  E2F3              loop 0x31a6
000031B3  8064077F          and byte [si+0x7],0x7f
000031B7  F9                stc
000031B8  C3                ret
000031B9  A08300            mov al,[0x83]
000031BC  0404              add al,0x4
000031BE  8A6403            mov ah,[si+0x3]
000031C1  80EC03            sub ah,0x3
000031C4  B90400            mov cx,0x4
000031C7  FEC4              inc ah
000031C9  3AE0              cmp ah,al
000031CB  7408              jz 0x31d5
000031CD  E2F8              loop 0x31c7
000031CF  8064077F          and byte [si+0x7],0x7f
000031D3  F9                stc
000031D4  C3                ret
000031D5  F6440780          test byte [si+0x7],0x80
000031D9  F8                clc
000031DA  7501              jnz 0x31dd
000031DC  C3                ret
000031DD  FE440F            inc byte [si+0xf]
000031E0  F6440F07          test byte [si+0xf],0x7
000031E4  7501              jnz 0x31e7
000031E6  C3                ret
000031E7  F9                stc
000031E8  C3                ret
000031E9  807C0322          cmp byte [si+0x3],0x22
000031ED  F5                cmc
000031EE  7301              jnc 0x31f1
000031F0  C3                ret
000031F1  E8C400            call 0x32b8
000031F4  7301              jnc 0x31f7
000031F6  C3                ret
000031F7  E98900            jmp 0x3283
000031FA  807C0322          cmp byte [si+0x3],0x22
000031FE  F5                cmc
000031FF  7301              jnc 0x3202
00003201  C3                ret
00003202  E8C401            call 0x33c9
00003205  7301              jnc 0x3208
00003207  C3                ret
00003208  E87800            call 0x3283
0000320B  E9A200            jmp 0x32b0
0000320E  8A4403            mov al,[si+0x3]
00003211  0AC0              or al,al
00003213  F9                stc
00003214  7501              jnz 0x3217
00003216  C3                ret
00003217  3C23              cmp al,0x23
00003219  F9                stc
0000321A  7501              jnz 0x321d
0000321C  C3                ret
0000321D  E84601            call 0x3366
00003220  7301              jnc 0x3223
00003222  C3                ret
00003223  E98A00            jmp 0x32b0
00003226  807C0302          cmp byte [si+0x3],0x2
0000322A  7301              jnc 0x322d
0000322C  C3                ret
0000322D  E82602            call 0x3456
00003230  7301              jnc 0x3233
00003232  C3                ret
00003233  E86100            call 0x3297
00003236  EB78              jmp 0x32b0
00003238  807C0302          cmp byte [si+0x3],0x2
0000323C  7301              jnc 0x323f
0000323E  C3                ret
0000323F  E8CC00            call 0x330e
00003242  7301              jnc 0x3245
00003244  C3                ret
00003245  EB50              jmp 0x3297
00003247  807C0302          cmp byte [si+0x3],0x2
0000324B  7301              jnc 0x324e
0000324D  C3                ret
0000324E  E84D02            call 0x349e
00003251  7301              jnc 0x3254
00003253  C3                ret
00003254  E84000            call 0x3297
00003257  EB4F              jmp 0x32a8
00003259  8A4403            mov al,[si+0x3]
0000325C  0AC0              or al,al
0000325E  F9                stc
0000325F  7501              jnz 0x3262
00003261  C3                ret
00003262  3C23              cmp al,0x23
00003264  F9                stc
00003265  7501              jnz 0x3268
00003267  C3                ret
00003268  E83301            call 0x339e
0000326B  7301              jnc 0x326e
0000326D  C3                ret
0000326E  EB38              jmp 0x32a8
00003270  807C0322          cmp byte [si+0x3],0x22
00003274  F5                cmc
00003275  7301              jnc 0x3278
00003277  C3                ret
00003278  E89501            call 0x3410
0000327B  7301              jnc 0x327e
0000327D  C3                ret
0000327E  E80200            call 0x3283
00003281  EB25              jmp 0x32a8
00003283  8B04              mov ax,[si]
00003285  40                inc ax
00003286  8BD8              mov bx,ax
00003288  2B1E02C0          sub bx,[0xc002]
0000328C  7202              jc 0x3290
0000328E  8BC3              mov ax,bx
00003290  8904              mov [si],ax
00003292  FE4403            inc byte [si+0x3]
00003295  F8                clc
00003296  C3                ret
00003297  8B04              mov ax,[si]
00003299  0BC0              or ax,ax
0000329B  7503              jnz 0x32a0
0000329D  A102C0            mov ax,[0xc002]
000032A0  48                dec ax
000032A1  8904              mov [si],ax
000032A3  FE4C03            dec byte [si+0x3]
000032A6  F8                clc
000032A7  C3                ret
000032A8  FE4402            inc byte [si+0x2]
000032AB  8064023F          and byte [si+0x2],0x3f
000032AF  C3                ret
000032B0  FE4C02            dec byte [si+0x2]
000032B3  8064023F          and byte [si+0x2],0x3f
000032B7  C3                ret
000032B8  8B4402            mov ax,[si+0x2]
000032BB  E8B4DA            call 0xd72
000032BE  47                inc di
000032BF  47                inc di
000032C0  E82C00            call 0x32ef
000032C3  7301              jnc 0x32c6
000032C5  C3                ret
000032C6  87F7              xchg si,di
000032C8  83C624            add si,0x24
000032CB  E8B8DA            call 0xd86
000032CE  87F7              xchg si,di
000032D0  E81C00            call 0x32ef
000032D3  7301              jnc 0x32d6
000032D5  C3                ret
000032D6  87F7              xchg si,di
000032D8  8A04              mov al,[si]
000032DA  83EE24            sub si,0x24
000032DD  E8B2DA            call 0xd92
000032E0  0A04              or al,[si]
000032E2  83EE24            sub si,0x24
000032E5  E8AADA            call 0xd92
000032E8  0A04              or al,[si]
000032EA  87F7              xchg si,di
000032EC  02C0              add al,al
000032EE  C3                ret
000032EF  8A05              mov al,[di]
000032F1  E8F101            call 0x34e5
000032F4  F9                stc
000032F5  7401              jz 0x32f8
000032F7  C3                ret
000032F8  803E12C005        cmp byte [0xc012],0x5
000032FD  F8                clc
000032FE  7401              jz 0x3301
00003300  C3                ret
00003301  56                push si
00003302  E8F5E3            call 0x16fa
00003305  5E                pop si
00003306  FEC9              dec cl
00003308  F8                clc
00003309  7401              jz 0x330c
0000330B  C3                ret
0000330C  F9                stc
0000330D  C3                ret
0000330E  8B4402            mov ax,[si+0x2]
00003311  E85EDA            call 0xd72
00003314  4F                dec di
00003315  E82D00            call 0x3345
00003318  7301              jnc 0x331b
0000331A  C3                ret
0000331B  87F7              xchg si,di
0000331D  83C624            add si,0x24
00003320  E863DA            call 0xd86
00003323  87F7              xchg si,di
00003325  E81D00            call 0x3345
00003328  7301              jnc 0x332b
0000332A  C3                ret
0000332B  4F                dec di
0000332C  87F7              xchg si,di
0000332E  8A04              mov al,[si]
00003330  83EE24            sub si,0x24
00003333  E85CDA            call 0xd92
00003336  0A04              or al,[si]
00003338  83EE24            sub si,0x24
0000333B  E854DA            call 0xd92
0000333E  0A04              or al,[si]
00003340  87F7              xchg si,di
00003342  02C0              add al,al
00003344  C3                ret
00003345  8A05              mov al,[di]
00003347  E89B01            call 0x34e5
0000334A  F9                stc
0000334B  7401              jz 0x334e
0000334D  C3                ret
0000334E  803E12C005        cmp byte [0xc012],0x5
00003353  F8                clc
00003354  7401              jz 0x3357
00003356  C3                ret
00003357  56                push si
00003358  E89FE3            call 0x16fa
0000335B  5E                pop si
0000335C  FEC9              dec cl
0000335E  FEC9              dec cl
00003360  F8                clc
00003361  7401              jz 0x3364
00003363  C3                ret
00003364  F9                stc
00003365  C3                ret
00003366  8B4402            mov ax,[si+0x2]
00003369  E806DA            call 0xd72
0000336C  87F7              xchg si,di
0000336E  83EE24            sub si,0x24
00003371  E81EDA            call 0xd92
00003374  87F7              xchg si,di
00003376  8A05              mov al,[di]
00003378  E86A01            call 0x34e5
0000337B  F9                stc
0000337C  7401              jz 0x337f
0000337E  C3                ret
0000337F  8A4501            mov al,[di+0x1]
00003382  E86001            call 0x34e5
00003385  F9                stc
00003386  7401              jz 0x3389
00003388  C3                ret
00003389  87F7              xchg si,di
0000338B  83EE24            sub si,0x24
0000338E  E801DA            call 0xd92
00003391  87F7              xchg si,di
00003393  8A4501            mov al,[di+0x1]
00003396  0A05              or al,[di]
00003398  0A45FF            or al,[di-0x1]
0000339B  02C0              add al,al
0000339D  C3                ret
0000339E  8B4402            mov ax,[si+0x2]
000033A1  E8CED9            call 0xd72
000033A4  87F7              xchg si,di
000033A6  83C648            add si,0x48
000033A9  E8DAD9            call 0xd86
000033AC  87F7              xchg si,di
000033AE  8A05              mov al,[di]
000033B0  E83201            call 0x34e5
000033B3  F9                stc
000033B4  7401              jz 0x33b7
000033B6  C3                ret
000033B7  8A4501            mov al,[di+0x1]
000033BA  E82801            call 0x34e5
000033BD  F9                stc
000033BE  7401              jz 0x33c1
000033C0  C3                ret
000033C1  0A05              or al,[di]
000033C3  0A45FF            or al,[di-0x1]
000033C6  02C0              add al,al
000033C8  C3                ret
000033C9  8B4402            mov ax,[si+0x2]
000033CC  E8A3D9            call 0xd72
000033CF  47                inc di
000033D0  47                inc di
000033D1  8A05              mov al,[di]
000033D3  E80F01            call 0x34e5
000033D6  F9                stc
000033D7  7401              jz 0x33da
000033D9  C3                ret
000033DA  8AC8              mov cl,al
000033DC  87F7              xchg si,di
000033DE  83EE24            sub si,0x24
000033E1  E8AED9            call 0xd92
000033E4  87F7              xchg si,di
000033E6  8A05              mov al,[di]
000033E8  E8FA00            call 0x34e5
000033EB  F9                stc
000033EC  7401              jz 0x33ef
000033EE  C3                ret
000033EF  0AC8              or cl,al
000033F1  8A45FF            mov al,[di-0x1]
000033F4  E8EE00            call 0x34e5
000033F7  F9                stc
000033F8  7401              jz 0x33fb
000033FA  C3                ret
000033FB  87F7              xchg si,di
000033FD  83EE24            sub si,0x24
00003400  E88FD9            call 0xd92
00003403  87F7              xchg si,di
00003405  0A0D              or cl,[di]
00003407  0A4DFF            or cl,[di-0x1]
0000340A  0A4DFE            or cl,[di-0x2]
0000340D  02C9              add cl,cl
0000340F  C3                ret
00003410  8B4402            mov ax,[si+0x2]
00003413  E85CD9            call 0xd72
00003416  47                inc di
00003417  47                inc di
00003418  8A0D              mov cl,[di]
0000341A  87F7              xchg si,di
0000341C  83C624            add si,0x24
0000341F  E864D9            call 0xd86
00003422  87F7              xchg si,di
00003424  8A05              mov al,[di]
00003426  E8BC00            call 0x34e5
00003429  F9                stc
0000342A  7401              jz 0x342d
0000342C  C3                ret
0000342D  0AC8              or cl,al
0000342F  87F7              xchg si,di
00003431  83C624            add si,0x24
00003434  E84FD9            call 0xd86
00003437  87F7              xchg si,di
00003439  8A05              mov al,[di]
0000343B  E8A700            call 0x34e5
0000343E  F9                stc
0000343F  7401              jz 0x3442
00003441  C3                ret
00003442  0AC8              or cl,al
00003444  8A45FF            mov al,[di-0x1]
00003447  E89B00            call 0x34e5
0000344A  F9                stc
0000344B  7401              jz 0x344e
0000344D  C3                ret
0000344E  0AC8              or cl,al
00003450  0A4DFE            or cl,[di-0x2]
00003453  02C9              add cl,cl
00003455  C3                ret
00003456  8B4402            mov ax,[si+0x2]
00003459  E816D9            call 0xd72
0000345C  4F                dec di
0000345D  8A05              mov al,[di]
0000345F  E88300            call 0x34e5
00003462  F9                stc
00003463  7401              jz 0x3466
00003465  C3                ret
00003466  4F                dec di
00003467  8A0D              mov cl,[di]
00003469  87F7              xchg si,di
0000346B  83EE24            sub si,0x24
0000346E  E821D9            call 0xd92
00003471  87F7              xchg si,di
00003473  0A0D              or cl,[di]
00003475  8A4501            mov al,[di+0x1]
00003478  E86A00            call 0x34e5
0000347B  F9                stc
0000347C  7401              jz 0x347f
0000347E  C3                ret
0000347F  8A4502            mov al,[di+0x2]
00003482  E86000            call 0x34e5
00003485  F9                stc
00003486  7401              jz 0x3489
00003488  C3                ret
00003489  87F7              xchg si,di
0000348B  83EE24            sub si,0x24
0000348E  E801D9            call 0xd92
00003491  87F7              xchg si,di
00003493  0A4D02            or cl,[di+0x2]
00003496  0A4D01            or cl,[di+0x1]
00003499  0A0D              or cl,[di]
0000349B  02C9              add cl,cl
0000349D  C3                ret
0000349E  8B4402            mov ax,[si+0x2]
000034A1  E8CED8            call 0xd72
000034A4  4F                dec di
000034A5  4F                dec di
000034A6  8A0D              mov cl,[di]
000034A8  87F7              xchg si,di
000034AA  83C624            add si,0x24
000034AD  E8D6D8            call 0xd86
000034B0  87F7              xchg si,di
000034B2  0A0D              or cl,[di]
000034B4  47                inc di
000034B5  8A05              mov al,[di]
000034B7  E82B00            call 0x34e5
000034BA  F9                stc
000034BB  7401              jz 0x34be
000034BD  C3                ret
000034BE  87F7              xchg si,di
000034C0  83C624            add si,0x24
000034C3  E8C0D8            call 0xd86
000034C6  87F7              xchg si,di
000034C8  8A05              mov al,[di]
000034CA  E81800            call 0x34e5
000034CD  F9                stc
000034CE  7401              jz 0x34d1
000034D0  C3                ret
000034D1  0AC8              or cl,al
000034D3  8A4501            mov al,[di+0x1]
000034D6  E80C00            call 0x34e5
000034D9  F9                stc
000034DA  7401              jz 0x34dd
000034DC  C3                ret
000034DD  0AC8              or cl,al
000034DF  0A4DFF            or cl,[di-0x1]
000034E2  02C9              add cl,cl
000034E4  C3                ret
000034E5  3C49              cmp al,0x49
000034E7  7208              jc 0x34f1
000034E9  0AC0              or al,al
000034EB  7901              jns 0x34ee
000034ED  C3                ret
000034EE  3AC0              cmp al,al
000034F0  C3                ret
000034F1  57                push di
000034F2  51                push cx
000034F3  2E8E062CFF        mov es,word [cs:0xff2c]
000034F8  BF0080            mov di,0x8000
000034FB  B91800            mov cx,0x18
000034FE  F2AE              repne scasb
00003500  59                pop cx
00003501  5F                pop di
00003502  C3                ret
00003503  807C01FF          cmp byte [si+0x1],0xff
00003507  7401              jz 0x350a
00003509  C3                ret
0000350A  F6440710          test byte [si+0x7],0x10
0000350E  7407              jz 0x3517
00003510  807C11FF          cmp byte [si+0x11],0xff
00003514  7401              jz 0x3517
00003516  C3                ret
00003517  8B440B            mov ax,[si+0xb]
0000351A  3DFFFF            cmp ax,0xffff
0000351D  7501              jnz 0x3520
0000351F  C3                ret
00003520  E88201            call 0x36a5
00003523  7301              jnc 0x3526
00003525  C3                ret
00003526  0ADB              or bl,bl
00003528  7501              jnz 0x352b
0000352A  C3                ret
0000352B  80FB23            cmp bl,0x23
0000352E  7501              jnz 0x3531
00003530  C3                ret
00003531  A08200            mov al,[0x82]
00003534  2C02              sub al,0x2
00003536  243F              and al,0x3f
00003538  2A440D            sub al,[si+0xd]
0000353B  F6D8              neg al
0000353D  243F              and al,0x3f
0000353F  3C18              cmp al,0x18
00003541  730B              jnc 0x354e
00003543  80FB03            cmp bl,0x3
00003546  7206              jc 0x354e
00003548  80FB20            cmp bl,0x20
0000354B  7301              jnc 0x354e
0000354D  C3                ret
0000354E  F6440710          test byte [si+0x7],0x10
00003552  7566              jnz 0x35ba
00003554  885C03            mov [si+0x3],bl
00003557  8A440D            mov al,[si+0xd]
0000355A  8AE3              mov ah,bl
0000355C  E813D8            call 0xd72
0000355F  57                push di
00003560  87F7              xchg si,di
00003562  83EE25            sub si,0x25
00003565  E82AD8            call 0xd92
00003568  32C0              xor al,al
0000356A  B90300            mov cx,0x3
0000356D  0A04              or al,[si]
0000356F  0A4401            or al,[si+0x1]
00003572  0A4402            or al,[si+0x2]
00003575  83C624            add si,0x24
00003578  E80BD8            call 0xd86
0000357B  E2F0              loop 0x356d
0000357D  87F7              xchg si,di
0000357F  5F                pop di
00003580  0AC0              or al,al
00003582  7901              jns 0x3585
00003584  C3                ret
00003585  A04AFF            mov al,[0xff4a]
00003588  0C80              or al,0x80
0000358A  8805              mov [di],al
0000358C  8B440B            mov ax,[si+0xb]
0000358F  8904              mov [si],ax
00003591  8A440D            mov al,[si+0xd]
00003594  884402            mov [si+0x2],al
00003597  8A440E            mov al,[si+0xe]
0000359A  884404            mov [si+0x4],al
0000359D  C6440610          mov byte [si+0x6],0x10
000035A1  C6440500          mov byte [si+0x5],0x0
000035A5  C744090000        mov word [si+0x9],0x0
000035AA  C6440800          mov byte [si+0x8],0x0
000035AE  8A1E4AFF          mov bl,[0xff4a]
000035B2  32FF              xor bh,bh
000035B4  C68720ED00        mov byte [bx-0x12e0],0x0
000035B9  C3                ret
000035BA  F6440E01          test byte [si+0xe],0x1
000035BE  7401              jz 0x35c1
000035C0  C3                ret
000035C1  885C03            mov [si+0x3],bl
000035C4  885C13            mov [si+0x13],bl
000035C7  8A440D            mov al,[si+0xd]
000035CA  8AE3              mov ah,bl
000035CC  E8A3D7            call 0xd72
000035CF  57                push di
000035D0  87F7              xchg si,di
000035D2  83EE25            sub si,0x25
000035D5  E8BAD7            call 0xd92
000035D8  32C0              xor al,al
000035DA  B90500            mov cx,0x5
000035DD  0A04              or al,[si]
000035DF  0A4401            or al,[si+0x1]
000035E2  0A4402            or al,[si+0x2]
000035E5  83C624            add si,0x24
000035E8  E89BD7            call 0xd86
000035EB  E2F0              loop 0x35dd
000035ED  87F7              xchg si,di
000035EF  5F                pop di
000035F0  0AC0              or al,al
000035F2  7901              jns 0x35f5
000035F4  C3                ret
000035F5  A04AFF            mov al,[0xff4a]
000035F8  0C80              or al,0x80
000035FA  8805              mov [di],al
000035FC  87F7              xchg si,di
000035FE  83C648            add si,0x48
00003601  E882D7            call 0xd86
00003604  87F7              xchg si,di
00003606  FEC0              inc al
00003608  8805              mov [di],al
0000360A  8B440B            mov ax,[si+0xb]
0000360D  8904              mov [si],ax
0000360F  894410            mov [si+0x10],ax
00003612  8A440D            mov al,[si+0xd]
00003615  884402            mov [si+0x2],al
00003618  0402              add al,0x2
0000361A  243F              and al,0x3f
0000361C  884412            mov [si+0x12],al
0000361F  8A440E            mov al,[si+0xe]
00003622  884404            mov [si+0x4],al
00003625  FEC0              inc al
00003627  884414            mov [si+0x14],al
0000362A  C6440610          mov byte [si+0x6],0x10
0000362E  C6441610          mov byte [si+0x16],0x10
00003632  C6440500          mov byte [si+0x5],0x0
00003636  C6441500          mov byte [si+0x15],0x0
0000363A  C744090000        mov word [si+0x9],0x0
0000363F  C744190000        mov word [si+0x19],0x0
00003644  C6440800          mov byte [si+0x8],0x0
00003648  C6441800          mov byte [si+0x18],0x0
0000364C  806417F0          and byte [si+0x17],0xf0
00003650  8A1E4AFF          mov bl,[0xff4a]
00003654  32FF              xor bh,bh
00003656  C78720ED0000      mov word [bx-0x12e0],0x0
0000365C  C3                ret
0000365D  0E                push cs
0000365E  07                pop es
0000365F  BF20ED            mov di,0xed20
00003662  B98000            mov cx,0x80
00003665  32C0              xor al,al
00003667  F3AA              rep stosb
00003669  EB00              jmp 0x366b
0000366B  C6064AFF00        mov byte [0xff4a],0x0
00003670  8B3610C0          mov si,[0xc010]
00003674  8B04              mov ax,[si]
00003676  3DFFFF            cmp ax,0xffff
00003679  7501              jnz 0x367c
0000367B  C3                ret
0000367C  80FCFF            cmp ah,0xff
0000367F  741B              jz 0x369c
00003681  C64403FF          mov byte [si+0x3],0xff
00003685  E81D00            call 0x36a5
00003688  7212              jc 0x369c
0000368A  885C03            mov [si+0x3],bl
0000368D  8A4402            mov al,[si+0x2]
00003690  8AE3              mov ah,bl
00003692  E8DDD6            call 0xd72
00003695  A04AFF            mov al,[0xff4a]
00003698  0C80              or al,0x80
0000369A  8805              mov [di],al
0000369C  FE064AFF          inc byte [0xff4a]
000036A0  83C610            add si,0x10
000036A3  EBCF              jmp 0x3674
000036A5  8BD8              mov bx,ax
000036A7  2B068000          sub ax,[0x80]
000036AB  7311              jnc 0x36be
000036AD  B82300            mov ax,0x23
000036B0  2BC3              sub ax,bx
000036B2  7301              jnc 0x36b5
000036B4  C3                ret
000036B5  A102C0            mov ax,[0xc002]
000036B8  2B068000          sub ax,[0x80]
000036BC  03C3              add ax,bx
000036BE  93                xchg ax,bx
000036BF  B82300            mov ax,0x23
000036C2  2BC3              sub ax,bx
000036C4  C3                ret
000036C5  8A4404            mov al,[si+0x4]
000036C8  A810              test al,0x10
000036CA  750D              jnz 0x36d9
000036CC  240F              and al,0xf
000036CE  BB08A0            mov bx,0xa008
000036D1  D7                xlatb
000036D2  32E4              xor ah,ah
000036D4  E84200            call 0x3719
000036D7  EB00              jmp 0x36d9
000036D9  C6440600          mov byte [si+0x6],0x0
000036DD  804C0468          or byte [si+0x4],0x68
000036E1  80640580          and byte [si+0x5],0x80
000036E5  F6440710          test byte [si+0x7],0x10
000036E9  7416              jz 0x3701
000036EB  F6440401          test byte [si+0x4],0x1
000036EF  7510              jnz 0x3701
000036F1  C6440680          mov byte [si+0x6],0x80
000036F5  C6441600          mov byte [si+0x16],0x0
000036F9  804C1468          or byte [si+0x14],0x68
000036FD  80641580          and byte [si+0x15],0x80
00003701  8A4402            mov al,[si+0x2]
00003704  8A268200          mov ah,[0x82]
00003708  FECC              dec ah
0000370A  2AC4              sub al,ah
0000370C  243F              and al,0x3f
0000370E  3C13              cmp al,0x13
00003710  7201              jc 0x3713
00003712  C3                ret
00003713  C60675FF07        mov byte [0xff75],0x7
00003718  C3                ret
00003719  01068E00          add [0x8e],ax
0000371D  7201              jc 0x3720
0000371F  C3                ret
00003720  C7068E00FFFF      mov word [0x8e],0xffff
00003726  C3                ret
00003727  2407              and al,0x7
00003729  8AD8              mov bl,al
0000372B  32FF              xor bh,bh
0000372D  03DB              add bx,bx
0000372F  FFA72F97          jmp word near [bx-0x68d1]
00003733  E591              in ax,byte 0x91
00003735  F6910A92          not byte [bx+di-0x6df6]
00003739  22923492          and dl,[bp+si-0x6dcc]
0000373D  43                inc bx
0000373E  92                xchg ax,dx
0000373F  55                push bp
00003740  92                xchg ax,dx
00003741  6C                insb
00003742  92                xchg ax,dx
00003743  2407              and al,0x7
00003745  8AD8              mov bl,al
00003747  32FF              xor bh,bh
00003749  03DB              add bx,bx
0000374B  FFA74B97          jmp word near [bx-0x68b5]
0000374F  B492              mov ah,0x92
00003751  C5936293          lds dx,word [bp+di-0x6c9e]
00003755  52                push dx
00003756  94                xchg ax,sp
00003757  0A939A94          or dl,[bp+di-0x6b66]
0000375B  9A930C948B        call word 0x8b94:word 0xc93
00003760  44                inc sp
00003761  02E8              add ch,al
00003763  0DD687            or ax,0x87d6
00003766  FE83C624          inc byte [bp+di+0x24c6]
0000376A  E819D6            call 0xd86
0000376D  87FE              xchg di,si
0000376F  B90200            mov cx,0x2
00003772  51                push cx
00003773  56                push si
00003774  8A05              mov al,[di]
00003776  E881DF            call 0x16fa
00003779  8AD9              mov bl,cl
0000377B  5E                pop si
0000377C  59                pop cx
0000377D  7404              jz 0x3783
0000377F  47                inc di
00003780  E2F0              loop 0x3772
00003782  C3                ret
00003783  58                pop ax
00003784  32FF              xor bh,bh
00003786  03DB              add bx,bx
00003788  FFA78897          jmp word near [bx-0x6878]
0000378C  9A9794978E        call word 0x8e97:word 0x9497
00003791  97                xchg ax,di
00003792  E854FA            call 0x31e9
00003795  E951FA            jmp 0x31e9
00003798  E89DFA            call 0x3238
0000379B  E99AFA            jmp 0x3238
0000379E  E86DFA            call 0x320e
000037A1  E96AFA            jmp 0x320e
000037A4  8B4402            mov ax,[si+0x2]
000037A7  E8C8D5            call 0xd72
000037AA  87F7              xchg si,di
000037AC  83C648            add si,0x48
000037AF  E8D4D5            call 0xd86
000037B2  87F7              xchg si,di
000037B4  8A05              mov al,[di]
000037B6  E90BDC            jmp 0x13c4
000037B9  8A4405            mov al,[si+0x5]
000037BC  241F              and al,0x1f
000037BE  E89400            call 0x3855
000037C1  8A4408            mov al,[si+0x8]
000037C4  2AC4              sub al,ah
000037C6  7609              jna 0x37d1
000037C8  884408            mov [si+0x8],al
000037CB  C60675FF06        mov byte [0xff75],0x6
000037D0  C3                ret
000037D1  F6440401          test byte [si+0x4],0x1
000037D5  7506              jnz 0x37dd
000037D7  F6440710          test byte [si+0x7],0x10
000037DB  753C              jnz 0x3819
000037DD  F644070F          test byte [si+0x7],0xf
000037E1  7403              jz 0x37e6
000037E3  E9DFFE            jmp 0x36c5
000037E6  8B3E06A0          mov di,[0xa006]
000037EA  8A5C04            mov bl,[si+0x4]
000037ED  80E307            and bl,0x7
000037F0  32FF              xor bh,bh
000037F2  03DB              add bx,bx
000037F4  8B39              mov di,[bx+di]
000037F6  2EFF161A01        call word near [cs:0x11a]
000037FB  8AD8              mov bl,al
000037FD  83E303            and bx,0x3
00003800  803E45FF02        cmp byte [0xff45],0x2
00003805  7502              jnz 0x3809
00003807  33DB              xor bx,bx
00003809  8A01              mov al,[bx+di]
0000380B  8A6407            mov ah,[si+0x7]
0000380E  80E4F0            and ah,0xf0
00003811  0AC4              or al,ah
00003813  884407            mov [si+0x7],al
00003816  E9ACFE            jmp 0x36c5
00003819  F644170F          test byte [si+0x17],0xf
0000381D  7403              jz 0x3822
0000381F  E9A3FE            jmp 0x36c5
00003822  8B3E06A0          mov di,[0xa006]
00003826  8A5C04            mov bl,[si+0x4]
00003829  80E307            and bl,0x7
0000382C  32FF              xor bh,bh
0000382E  03DB              add bx,bx
00003830  8B39              mov di,[bx+di]
00003832  2EFF161A01        call word near [cs:0x11a]
00003837  8AD8              mov bl,al
00003839  83E303            and bx,0x3
0000383C  803E45FF02        cmp byte [0xff45],0x2
00003841  7502              jnz 0x3845
00003843  33DB              xor bx,bx
00003845  8A01              mov al,[bx+di]
00003847  8A6417            mov ah,[si+0x17]
0000384A  80E4F0            and ah,0xf0
0000384D  0AC4              or al,ah
0000384F  884417            mov [si+0x17],al
00003852  E970FE            jmp 0x36c5
00003855  8A268D00          mov ah,[0x8d]
00003859  D0EC              shr ah,0x0
0000385B  FEC4              inc ah
0000385D  0AC0              or al,al
0000385F  7501              jnz 0x3862
00003861  C3                ret
00003862  3C01              cmp al,0x1
00003864  7420              jz 0x3886
00003866  8A268D00          mov ah,[0x8d]
0000386A  FEC4              inc ah
0000386C  02E4              add ah,ah
0000386E  7204              jc 0x3874
00003870  02E4              add ah,ah
00003872  7302              jnc 0x3876
00003874  B4FF              mov ah,0xff
00003876  3C09              cmp al,0x9
00003878  7501              jnz 0x387b
0000387A  C3                ret
0000387B  2C02              sub al,0x2
0000387D  8AD8              mov bl,al
0000387F  32FF              xor bh,bh
00003881  8AA7BE98          mov ah,[bx-0x6742]
00003885  C3                ret
00003886  8A1E9200          mov bl,[0x92]
0000388A  FECB              dec bl
0000388C  32FF              xor bh,bh
0000388E  8A87B898          mov al,[bx-0x6748]
00003892  8A1E8D00          mov bl,[0x8d]
00003896  D0EB              shr bl,0x0
00003898  02C3              add al,bl
0000389A  720C              jc 0x38a8
0000389C  8A0EE400          mov cl,[0xe4]
000038A0  FEC1              inc cl
000038A2  F6E1              mul cl
000038A4  0AE4              or ah,ah
000038A6  7402              jz 0x38aa
000038A8  B0FF              mov al,0xff
000038AA  8AE0              mov ah,al
000038AC  803E45FF02        cmp byte [0xff45],0x2
000038B1  7401              jz 0x38b4
000038B3  C3                ret
000038B4  02E4              add ah,ah
000038B6  7201              jc 0x38b9
000038B8  C3                ret
000038B9  B4FF              mov ah,0xff
000038BB  C3                ret
000038BC  0102              add [bp+si],ax
000038BE  0408              add al,0x8
000038C0  207F02            and [bx+0x2],bh
000038C3  0408              add al,0x8
000038C5  1020              adc [bx+si],ah
000038C7  40                inc ax
000038C8  FF32              push word [bp+si]
000038CA  D28B3E10          ror byte [bp+di+0x103e],cl
000038CE  C0833DFFF9        rol byte [bp+di-0xc3],byte 0xf9
000038D3  7501              jnz 0x38d6
000038D5  C3                ret
000038D6  837D0BFF          cmp word [di+0xb],0xffffffffffffffff
000038DA  7515              jnz 0x38f1
000038DC  807D01FF          cmp byte [di+0x1],0xff
000038E0  7416              jz 0x38f8
000038E2  8B05              mov ax,[di]
000038E4  52                push dx
000038E5  E8BDFD            call 0x36a5
000038E8  5A                pop dx
000038E9  7306              jnc 0x38f1
000038EB  F6450410          test byte [di+0x4],0x10
000038EF  740D              jz 0x38fe
000038F1  FEC2              inc dl
000038F3  83C710            add di,0x10
000038F6  EBD7              jmp 0x38cf
000038F8  807D027F          cmp byte [di+0x2],0x7f
000038FC  74F3              jz 0x38f1
000038FE  F8                clc
000038FF  C3                ret
00003900  2EFF160430        call word near [cs:0x3004]
00003905  C60643FF00        mov byte [0xff43],0x0
0000390A  C6063DFF00        mov byte [0xff3d],0x0
0000390F  C60638FF00        mov byte [0xff38],0x0
00003914  C60636FF00        mov byte [0xff36],0x0
00003919  C606E800FF        mov byte [0xe8],0xff
0000391E  C606289F00        mov byte [0x9f28],0x0
00003923  C606299F00        mov byte [0x9f29],0x0
00003928  2EFF160820        call word near [cs:0x2008]
0000392D  C606E70000        mov byte [0xe7],0x0
00003932  C60639FF00        mov byte [0xff39],0x0
00003937  C60637FF00        mov byte [0xff37],0x0
0000393C  E860D6            call 0xf9f
0000393F  B82999            mov ax,0x9929
00003942  50                push ax
00003943  E818D0            call 0x95e
00003946  58                pop ax
00003947  C60637FF00        mov byte [0xff37],0x0
0000394C  E850D6            call 0xf9f
0000394F  C60637FF00        mov byte [0xff37],0x0
00003954  803EE70002        cmp byte [0xe7],0x2
00003959  741B              jz 0x3976
0000395B  FE06289F          inc byte [0x9f28]
0000395F  F606289F07        test byte [0x9f28],0x7
00003964  75E6              jnz 0x394c
00003966  A0E700            mov al,[0xe7]
00003969  FEC0              inc al
0000396B  2403              and al,0x3
0000396D  3C03              cmp al,0x3
0000396F  74DB              jz 0x394c
00003971  A2E700            mov [0xe7],al
00003974  EBD6              jmp 0x394c
00003976  FE06299F          inc byte [0x9f29]
0000397A  F606299F0F        test byte [0x9f29],0xf
0000397F  740E              jz 0x398f
00003981  F606299F01        test byte [0x9f29],0x1
00003986  74C4              jz 0x394c
00003988  C60637FFFF        mov byte [0xff37],0xff
0000398D  EBBD              jmp 0x394c
0000398F  C60624FF08        mov byte [0xff24],0x8
00003994  B91E00            mov cx,0x1e
00003997  51                push cx
00003998  E804D6            call 0xf9f
0000399B  59                pop cx
0000399C  8AC1              mov al,cl
0000399E  2401              and al,0x1
000039A0  FEC8              dec al
000039A2  A237FF            mov [0xff37],al
000039A5  E2F0              loop 0x3997
000039A7  B80100            mov ax,0x1
000039AA  CD60              int byte 0x60
000039AC  2EFF164020        call word near [cs:0x2040]
000039B1  F6064900FF        test byte [0x49],0xff
000039B6  7407              jz 0x39bf
000039B8  C606C50080        mov byte [0xc5],0x80
000039BD  EB1D              jmp 0x39dc
000039BF  A08D00            mov al,[0x8d]
000039C2  02C0              add al,al
000039C4  F6D8              neg al
000039C6  047F              add al,0x7f
000039C8  32E4              xor ah,ah
000039CA  E84CFD            call 0x3719
000039CD  C606850000        mov byte [0x85],0x0
000039D2  C70686000000      mov word [0x86],0x0
000039D8  D12E8B00          shr word [0x8b],0x0
000039DC  A1B200            mov ax,[0xb2]
000039DF  A39000            mov [0x90],ax
000039E2  EB00              jmp 0x39e4
000039E4  C60608FF00        mov byte [0xff08],0x0
000039E9  8A26C500          mov ah,[0xc5]
000039ED  8826C400          mov [0xc4],ah
000039F1  B001              mov al,0x1
000039F3  2EFF160C01        call word near [cs:0x10c]
000039F8  A113C0            mov ax,[0xc013]
000039FB  A31A9F            mov [0x9f1a],ax
000039FE  8B3600C0          mov si,[0xc000]
00003A02  46                inc si
00003A03  AC                lodsb
00003A04  B30B              mov bl,0xb
00003A06  F6E3              mul bl
00003A08  052D9C            add ax,0x9c2d
00003A0B  8BF0              mov si,ax
00003A0D  2E8E062CFF        mov es,word [cs:0xff2c]
00003A12  BF0040            mov di,0x4000
00003A15  B002              mov al,0x2
00003A17  2EFF160C01        call word near [cs:0x10c]
00003A1C  BB0260            mov bx,0x6002
00003A1F  E967E3            jmp 0x1d89
00003A22  2600596F          add [es:bx+di+0x6f],bl
00003A26  7520              jnz 0x3a48
00003A28  67657420          gs a32 jz 0x3a4c
00003A2C  353020            xor ax,0x2030
00003A2F  676F              a32 outsw
00003A31  6C                insb
00003A32  64732E            fs jnc 0x3a63
00003A35  FF22              jmp word near [bp+si]
00003A37  00596F            add [bx+di+0x6f],bl
00003A3A  7520              jnz 0x3a5c
00003A3C  67657420          gs a32 jz 0x3a60
00003A40  3130              xor [bx+si],si
00003A42  3020              xor [bx+si],ah
00003A44  676F              a32 outsw
00003A46  6C                insb
00003A47  64732E            fs jnc 0x3a78
00003A4A  FF22              jmp word near [bp+si]
00003A4C  00596F            add [bx+di+0x6f],bl
00003A4F  7520              jnz 0x3a71
00003A51  67657420          gs a32 jz 0x3a75
00003A55  353030            xor ax,0x3030
00003A58  20676F            and [bx+0x6f],ah
00003A5B  6C                insb
00003A5C  64732E            fs jnc 0x3a8d
00003A5F  FF1E0059          call word far [0x5900]
00003A63  6F                outsw
00003A64  7520              jnz 0x3a86
00003A66  67657420          gs a32 jz 0x3a8a
00003A6A  3130              xor [bx+si],si
00003A6C  3030              xor [bx+si],dh
00003A6E  20676F            and [bx+0x6f],ah
00003A71  6C                insb
00003A72  64732E            fs jnc 0x3aa3
00003A75  FF32              push word [bp+si]
00003A77  00596F            add [bx+di+0x6f],bl
00003A7A  7520              jnz 0x3a9c
00003A7C  67657420          gs a32 jz 0x3aa0
00003A80  61                popa
00003A81  204B65            and [bp+di+0x65],cl
00003A84  792E              jns 0x3ab4
00003A86  FF1C              call word far [si]
00003A88  00596F            add [bx+di+0x6f],bl
00003A8B  7520              jnz 0x3aad
00003A8D  686176            push word 0x7661
00003A90  65207265          and [gs:bp+si+0x65],dh
00003A94  636F76            arpl [bx+0x76],bp
00003A97  657265            gs jc 0x3aff
00003A9A  642EFF08          dec word [cs:bx+si]
00003A9E  00596F            add [bx+di+0x6f],bl
00003AA1  7520              jnz 0x3ac3
00003AA3  686176            push word 0x7661
00003AA6  65207265          and [gs:bp+si+0x65],dh
00003AAA  636F76            arpl [bx+0x76],bp
00003AAD  657265            gs jc 0x3b15
00003AB0  64206675          and [fs:bp+0x75],ah
00003AB4  6C                insb
00003AB5  6C                insb
00003AB6  2E                cs
00003AB7  FF                db 0xff
00003AB8  3C00              cmp al,0x0
00003ABA  53                push bx
00003ABB  686965            push word 0x6569
00003ABE  6C                insb
00003ABF  64206272          and [fs:bp+si+0x72],ah
00003AC3  6F                outsw
00003AC4  6B656E2E          imul sp,[di+0x6e],0x2e
00003AC8  FF14              call word near [si]
00003ACA  004361            add [bp+di+0x61],al
00003ACD  6E                outsb
00003ACE  5C                pop sp
00003ACF  7420              jz 0x3af1
00003AD1  6F                outsw
00003AD2  7065              jo 0x3b39
00003AD4  6E                outsb
00003AD5  207468            and [si+0x68],dh
00003AD8  697320646F        imul si,[bp+di+0x20],0x6f64
00003ADD  6F                outsw
00003ADE  722E              jc 0x3b0e
00003AE0  FF1C              call word far [si]
00003AE2  004E6F            add [bp+0x6f],cl
00003AE5  7468              jz 0x3b4f
00003AE7  696E672069        imul bp,[bp+0x67],0x6920
00003AEC  6E                outsb
00003AED  207468            and [si+0x68],dh
00003AF0  6520626F          and [gs:bp+si+0x6f],ah
00003AF4  782E              js 0x3b24
00003AF6  FF060059          inc word [0x5900]
00003AFA  6F                outsw
00003AFB  7520              jnz 0x3b1d
00003AFD  67657420          gs a32 jz 0x3b21
00003B01  7468              jz 0x3b6b
00003B03  65204865          and [gs:bx+si+0x65],cl
00003B07  726F              jc 0x3b78
00003B09  5C                pop sp
00003B0A  7320              jnc 0x3b2c
00003B0C  43                inc bx
00003B0D  7265              jc 0x3b74
00003B0F  7374              jnc 0x3b85
00003B11  2EFF00            inc word [cs:bx+si]
00003B14  00596F            add [bx+di+0x6f],bl
00003B17  7520              jnz 0x3b39
00003B19  67657420          gs a32 jz 0x3b3d
00003B1D  7468              jz 0x3b87
00003B1F  65205275          and [gs:bp+si+0x75],dl
00003B23  7A65              jpe 0x3b8a
00003B25  7269              jc 0x3b90
00003B27  61                popa
00003B28  207368            and [bp+di+0x68],dh
00003B2B  6F                outsw
00003B2C  65732E            gs jnc 0x3b5d
00003B2F  FF08              dec word [bx+si]
00003B31  00596F            add [bx+di+0x6f],bl
00003B34  7520              jnz 0x3b56
00003B36  67657420          gs a32 jz 0x3b5a
00003B3A  7468              jz 0x3ba4
00003B3C  6520476C          and [gs:bx+0x6c],al
00003B40  6F                outsw
00003B41  7279              jc 0x3bbc
00003B43  204372            and [bp+di+0x72],al
00003B46  657374            gs jnc 0x3bbd
00003B49  2EFF060059        inc word [cs:0x5900]
00003B4E  6F                outsw
00003B4F  7520              jnz 0x3b71
00003B51  67657420          gs a32 jz 0x3b75
00003B55  7468              jz 0x3bbf
00003B57  65205069          and [gs:bx+si+0x69],dl
00003B5B  7269              jc 0x3bc6
00003B5D  6B612073          imul sp,[bx+di+0x20],0x73
00003B61  686F65            push word 0x656f
00003B64  732E              jnc 0x3b94
00003B66  FF060059          inc word [0x5900]
00003B6A  6F                outsw
00003B6B  7520              jnz 0x3b8d
00003B6D  67657420          gs a32 jz 0x3b91
00003B71  7468              jz 0x3bdb
00003B73  65204665          and [gs:bp+0x65],al
00003B77  7275              jc 0x3bee
00003B79  7A61              jpe 0x3bdc
00003B7B  207368            and [bp+di+0x68],dh
00003B7E  6F                outsw
00003B7F  65732E            gs jnc 0x3bb0
00003B82  FF00              inc word [bx+si]
00003B84  00596F            add [bx+di+0x6f],bl
00003B87  7520              jnz 0x3ba9
00003B89  67657420          gs a32 jz 0x3bad
00003B8D  7468              jz 0x3bf7
00003B8F  65205369          and [gs:bp+di+0x69],dl
00003B93  6C                insb
00003B94  6B61726E          imul sp,[bx+di+0x72],0x6e
00003B98  207368            and [bp+di+0x68],dh
00003B9B  6F                outsw
00003B9C  65732E            gs jnc 0x3bcd
00003B9F  FF00              inc word [bx+si]
00003BA1  004765            add [bx+0x65],al
00003BA4  7420              jz 0x3bc6
00003BA6  7468              jz 0x3c10
00003BA8  6520456E          and [gs:di+0x6e],al
00003BAC  636861            arpl [bx+si+0x61],bp
00003BAF  6E                outsb
00003BB0  746D              jz 0x3c1f
00003BB2  656E              gs outsb
00003BB4  7420              jz 0x3bd6
00003BB6  7377              jnc 0x3c2f
00003BB8  6F                outsw
00003BB9  7264              jc 0x3c1f
00003BBB  2EFF30            push word [cs:bx+si]
00003BBE  004974            add [bx+di+0x74],cl
00003BC1  5C                pop sp
00003BC2  7320              jnc 0x3be4
00003BC4  746F              jz 0x3c35
00003BC6  6F                outsw
00003BC7  20686F            and [bx+si+0x6f],ch
00003BCA  7420              jz 0x3bec
00003BCC  2121              and [bx+di],sp
00003BCE  FF08              dec word [bx+si]
00003BD0  004765            add [bx+0x65],al
00003BD3  7420              jz 0x3bf5
00003BD5  7468              jz 0x3c3f
00003BD7  65206C69          and [gs:si+0x69],ch
00003BDB  6F                outsw
00003BDC  6E                outsb
00003BDD  5C                pop sp
00003BDE  7320              jnc 0x3c00
00003BE0  686561            push word 0x6165
00003BE3  64204B65          and [fs:bp+di+0x65],cl
00003BE7  792E              jns 0x3c17
00003BE9  FF02              inc word [bp+si]
00003BEB  3446              xor al,0x46
00003BED  4D                dec bp
00003BEE  41                inc cx
00003BEF  4E                dec si
00003BF0  2E47              cs inc di
00003BF2  52                push dx
00003BF3  50                push ax
00003BF4  0002              add [bp+si],al
00003BF6  38454E            cmp [di+0x4e],al
00003BF9  43                inc bx
00003BFA  4E                dec si
00003BFB  54                push sp
00003BFC  2E47              cs inc di
00003BFE  52                push dx
00003BFF  50                push ax
00003C00  0002              add [bp+si],al
00003C02  35524F            xor ax,0x4f52
00003C05  4B                dec bx
00003C06  41                inc cx
00003C07  2E47              cs inc di
00003C09  52                push dx
00003C0A  50                push ax
00003C0B  0001              add [bx+di],al
00003C0D  3A524F            cmp dl,[bp+si+0x4f]
00003C10  4B                dec bx
00003C11  41                inc cx
00003C12  2E47              cs inc di
00003C14  52                push dx
00003C15  50                push ax
00003C16  0002              add [bp+si],al
00003C18  37                aaa
00003C19  44                inc sp
00003C1A  43                inc bx
00003C1B  48                dec ax
00003C1C  52                push dx
00003C1D  2E47              cs inc di
00003C1F  52                push dx
00003C20  50                push ax
00003C21  0002              add [bp+si],al
00003C23  01524F            add [bp+si+0x4f],dx
00003C26  4B                dec bx
00003C27  41                inc cx
00003C28  44                inc sp
00003C29  45                inc bp
00003C2A  4D                dec bp
00003C2B  4F                dec di
00003C2C  2E42              cs inc dx
00003C2E  49                dec cx
00003C2F  4E                dec si
00003C30  0001              add [bx+di],al
00003C32  1E                push ds
00003C33  4D                dec bp
00003C34  4D                dec bp
00003C35  41                inc cx
00003C36  4E                dec si
00003C37  2E47              cs inc di
00003C39  52                push dx
00003C3A  50                push ax
00003C3B  0001              add [bx+di],al
00003C3D  1F                pop ds
00003C3E  43                inc bx
00003C3F  4D                dec bp
00003C40  41                inc cx
00003C41  4E                dec si
00003C42  2E47              cs inc di
00003C44  52                push dx
00003C45  50                push ax
00003C46  0002              add [bp+si],al
00003C48  4B                dec bx
00003C49  4D                dec bp
00003C4A  50                push ax
00003C4B  50                push ax
00003C4C  312E4752          xor [0x5247],bp
00003C50  50                push ax
00003C51  0002              add [bp+si],al
00003C53  4C                dec sp
00003C54  4D                dec bp
00003C55  50                push ax
00003C56  50                push ax
00003C57  322E4752          xor ch,[0x5247]
00003C5B  50                push ax
00003C5C  0002              add [bp+si],al
00003C5E  4D                dec bp
00003C5F  4D                dec bp
00003C60  50                push ax
00003C61  50                push ax
00003C62  332E4752          xor bp,[0x5247]
00003C66  50                push ax
00003C67  0002              add [bp+si],al
00003C69  4E                dec si
00003C6A  4D                dec bp
00003C6B  50                push ax
00003C6C  50                push ax
00003C6D  342E              xor al,0x2e
00003C6F  47                inc di
00003C70  52                push dx
00003C71  50                push ax
00003C72  0002              add [bp+si],al
00003C74  4F                dec di
00003C75  4D                dec bp
00003C76  50                push ax
00003C77  50                push ax
00003C78  352E47            xor ax,0x472e
00003C7B  52                push dx
00003C7C  50                push ax
00003C7D  0002              add [bp+si],al
00003C7F  50                push ax
00003C80  4D                dec bp
00003C81  50                push ax
00003C82  50                push ax
00003C83  362E47            cs inc di
00003C86  52                push dx
00003C87  50                push ax
00003C88  0002              add [bp+si],al
00003C8A  51                push cx
00003C8B  4D                dec bp
00003C8C  50                push ax
00003C8D  50                push ax
00003C8E  37                aaa
00003C8F  2E47              cs inc di
00003C91  52                push dx
00003C92  50                push ax
00003C93  0002              add [bp+si],al
00003C95  52                push dx
00003C96  4D                dec bp
00003C97  50                push ax
00003C98  50                push ax
00003C99  382E4752          cmp [0x5247],ch
00003C9D  50                push ax
00003C9E  0002              add [bp+si],al
00003CA0  53                push bx
00003CA1  4D                dec bp
00003CA2  50                push ax
00003CA3  50                push ax
00003CA4  392E4752          cmp [0x5247],bp
00003CA8  50                push ax
00003CA9  0002              add [bp+si],al
00003CAB  54                push sp
00003CAC  4D                dec bp
00003CAD  50                push ax
00003CAE  50                push ax
00003CAF  41                inc cx
00003CB0  2E47              cs inc di
00003CB2  52                push dx
00003CB3  50                push ax
00003CB4  0002              add [bp+si],al
00003CB6  55                push bp
00003CB7  4D                dec bp
00003CB8  50                push ax
00003CB9  50                push ax
00003CBA  42                inc dx
00003CBB  2E47              cs inc di
00003CBD  52                push dx
00003CBE  50                push ax
00003CBF  0002              add [bp+si],al
00003CC1  024541            add al,[di+0x41]
00003CC4  49                dec cx
00003CC5  312E4249          xor [0x4942],bp
00003CC9  4E                dec si
00003CCA  0002              add [bp+si],al
00003CCC  0A4352            or al,[bp+di+0x52]
00003CCF  41                inc cx
00003CD0  42                inc dx
00003CD1  2E42              cs inc dx
00003CD3  49                dec cx
00003CD4  4E                dec si
00003CD5  0002              add [bp+si],al
00003CD7  034541            add ax,[di+0x41]
00003CDA  49                dec cx
00003CDB  322E4249          xor ch,[0x4942]
00003CDF  4E                dec si
00003CE0  0002              add [bp+si],al
00003CE2  0B5441            or dx,[si+0x41]
00003CE5  4B                dec bx
00003CE6  4F                dec di
00003CE7  2E42              cs inc dx
00003CE9  49                dec cx
00003CEA  4E                dec si
00003CEB  0002              add [bp+si],al
00003CED  0445              add al,0x45
00003CEF  41                inc cx
00003CF0  49                dec cx
00003CF1  332E4249          xor bp,[0x4942]
00003CF5  4E                dec si
00003CF6  0002              add [bp+si],al
00003CF8  0C54              or al,0x54
00003CFA  4F                dec di
00003CFB  52                push dx
00003CFC  49                dec cx
00003CFD  2E42              cs inc dx
00003CFF  49                dec cx
00003D00  4E                dec si
00003D01  0002              add [bp+si],al
00003D03  054541            add ax,0x4145
00003D06  49                dec cx
00003D07  342E              xor al,0x2e
00003D09  42                inc dx
00003D0A  49                dec cx
00003D0B  4E                dec si
00003D0C  0002              add [bp+si],al
00003D0E  0D5A45            or ax,0x455a
00003D11  4C                dec sp
00003D12  41                inc cx
00003D13  2E42              cs inc dx
00003D15  49                dec cx
00003D16  4E                dec si
00003D17  0002              add [bp+si],al
00003D19  06                push es
00003D1A  45                inc bp
00003D1B  41                inc cx
00003D1C  49                dec cx
00003D1D  352E42            xor ax,0x422e
00003D20  49                dec cx
00003D21  4E                dec si
00003D22  0002              add [bp+si],al
00003D24  0E                push cs
00003D25  4D                dec bp
00003D26  45                inc bp
00003D27  44                inc sp
00003D28  41                inc cx
00003D29  2E42              cs inc dx
00003D2B  49                dec cx
00003D2C  4E                dec si
00003D2D  0002              add [bp+si],al
00003D2F  07                pop es
00003D30  45                inc bp
00003D31  41                inc cx
00003D32  49                dec cx
00003D33  362E42            cs inc dx
00003D36  49                dec cx
00003D37  4E                dec si
00003D38  0002              add [bp+si],al
00003D3A  0F4C4547          cmovl ax,[di+0x47]
00003D3E  41                inc cx
00003D3F  2E42              cs inc dx
00003D41  49                dec cx
00003D42  4E                dec si
00003D43  0002              add [bp+si],al
00003D45  084541            or [di+0x41],al
00003D48  49                dec cx
00003D49  37                aaa
00003D4A  2E42              cs inc dx
00003D4C  49                dec cx
00003D4D  4E                dec si
00003D4E  0002              add [bp+si],al
00003D50  114452            adc [si+0x52],ax
00003D53  47                inc di
00003D54  4E                dec si
00003D55  2E42              cs inc dx
00003D57  49                dec cx
00003D58  4E                dec si
00003D59  0002              add [bp+si],al
00003D5B  094541            or [di+0x41],ax
00003D5E  49                dec cx
00003D5F  382E4249          cmp [0x4942],ch
00003D63  4E                dec si
00003D64  0002              add [bp+si],al
00003D66  12414B            adc al,[bx+di+0x4b]
00003D69  4D                dec bp
00003D6A  41                inc cx
00003D6B  2E42              cs inc dx
00003D6D  49                dec cx
00003D6E  4E                dec si
00003D6F  0002              add [bp+si],al
00003D71  134D41            adc cx,[di+0x41]
00003D74  4F                dec di
00003D75  312E4249          xor [0x4942],bp
00003D79  4E                dec si
00003D7A  0002              add [bp+si],al
00003D7C  144D              adc al,0x4d
00003D7E  41                inc cx
00003D7F  4F                dec di
00003D80  322E4249          xor ch,[0x4942]
00003D84  4E                dec si
00003D85  0002              add [bp+si],al
00003D87  105A45            adc [bp+si+0x45],bl
00003D8A  4C                dec sp
00003D8B  322E4249          xor ch,[0x4942]
00003D8F  4E                dec si
00003D90  0002              add [bp+si],al
00003D92  39454E            cmp [di+0x4e],ax
00003D95  50                push ax
00003D96  312E4752          xor [0x5247],bp
00003D9A  50                push ax
00003D9B  0002              add [bp+si],al
00003D9D  41                inc cx
00003D9E  43                inc bx
00003D9F  52                push dx
00003DA0  41                inc cx
00003DA1  42                inc dx
00003DA2  2E47              cs inc di
00003DA4  52                push dx
00003DA5  50                push ax
00003DA6  0002              add [bp+si],al
00003DA8  3A454E            cmp al,[di+0x4e]
00003DAB  50                push ax
00003DAC  322E4752          xor ch,[0x5247]
00003DB0  50                push ax
00003DB1  0002              add [bp+si],al
00003DB3  42                inc dx
00003DB4  54                push sp
00003DB5  41                inc cx
00003DB6  4B                dec bx
00003DB7  4F                dec di
00003DB8  2E47              cs inc di
00003DBA  52                push dx
00003DBB  50                push ax
00003DBC  0002              add [bp+si],al
00003DBE  3B454E            cmp ax,[di+0x4e]
00003DC1  50                push ax
00003DC2  332E4752          xor bp,[0x5247]
00003DC6  50                push ax
00003DC7  0002              add [bp+si],al
00003DC9  43                inc bx
00003DCA  54                push sp
00003DCB  4F                dec di
00003DCC  52                push dx
00003DCD  49                dec cx
00003DCE  2E47              cs inc di
00003DD0  52                push dx
00003DD1  50                push ax
00003DD2  0002              add [bp+si],al
00003DD4  3C45              cmp al,0x45
00003DD6  4E                dec si
00003DD7  50                push ax
00003DD8  342E              xor al,0x2e
00003DDA  47                inc di
00003DDB  52                push dx
00003DDC  50                push ax
00003DDD  0002              add [bp+si],al
00003DDF  44                inc sp
00003DE0  5A                pop dx
00003DE1  45                inc bp
00003DE2  4C                dec sp
00003DE3  41                inc cx
00003DE4  2E47              cs inc di
00003DE6  52                push dx
00003DE7  50                push ax
00003DE8  0002              add [bp+si],al
00003DEA  3D454E            cmp ax,0x4e45
00003DED  50                push ax
00003DEE  352E47            xor ax,0x472e
00003DF1  52                push dx
00003DF2  50                push ax
00003DF3  0002              add [bp+si],al
00003DF5  45                inc bp
00003DF6  4D                dec bp
00003DF7  45                inc bp
00003DF8  44                inc sp
00003DF9  41                inc cx
00003DFA  2E47              cs inc di
00003DFC  52                push dx
00003DFD  50                push ax
00003DFE  0002              add [bp+si],al
00003E00  3E45              ds inc bp
00003E02  4E                dec si
00003E03  50                push ax
00003E04  362E47            cs inc di
00003E07  52                push dx
00003E08  50                push ax
00003E09  0002              add [bp+si],al
00003E0B  46                inc si
00003E0C  4C                dec sp
00003E0D  45                inc bp
00003E0E  47                inc di
00003E0F  41                inc cx
00003E10  2E47              cs inc di
00003E12  52                push dx
00003E13  50                push ax
00003E14  0002              add [bp+si],al
00003E16  3F                aas
00003E17  45                inc bp
00003E18  4E                dec si
00003E19  50                push ax
00003E1A  37                aaa
00003E1B  2E47              cs inc di
00003E1D  52                push dx
00003E1E  50                push ax
00003E1F  0002              add [bp+si],al
00003E21  47                inc di
00003E22  44                inc sp
00003E23  52                push dx
00003E24  47                inc di
00003E25  4E                dec si
00003E26  2E47              cs inc di
00003E28  52                push dx
00003E29  50                push ax
00003E2A  0002              add [bp+si],al
00003E2C  40                inc ax
00003E2D  45                inc bp
00003E2E  4E                dec si
00003E2F  50                push ax
00003E30  382E4752          cmp [0x5247],ch
00003E34  50                push ax
00003E35  0002              add [bp+si],al
00003E37  48                dec ax
00003E38  41                inc cx
00003E39  4B                dec bx
00003E3A  4D                dec bp
00003E3B  41                inc cx
00003E3C  2E47              cs inc di
00003E3E  52                push dx
00003E3F  50                push ax
00003E40  0002              add [bp+si],al
00003E42  49                dec cx
00003E43  4D                dec bp
00003E44  41                inc cx
00003E45  4F                dec di
00003E46  312E4752          xor [0x5247],bp
00003E4A  50                push ax
00003E4B  0002              add [bp+si],al
00003E4D  4A                dec dx
00003E4E  4D                dec bp
00003E4F  41                inc cx
00003E50  4F                dec di
00003E51  322E4752          xor ch,[0x5247]
00003E55  50                push ax
00003E56  0001              add [bx+di],al
00003E58  2F                das
00003E59  4D                dec bp
00003E5A  47                inc di
00003E5B  54                push sp
00003E5C  312E4D53          xor [0x534d],bp
00003E60  44                inc sp
00003E61  0001              add [bx+di],al
00003E63  315547            xor [di+0x47],dx
00003E66  4D                dec bp
00003E67  312E4D53          xor [0x534d],bp
00003E6B  44                inc sp
00003E6C  0001              add [bx+di],al
00003E6E  304D47            xor [di+0x47],cl
00003E71  54                push sp
00003E72  322E4D53          xor ch,[0x534d]
00003E76  44                inc sp
00003E77  0001              add [bx+di],al
00003E79  325547            xor dl,[di+0x47]
00003E7C  4D                dec bp
00003E7D  322E4D53          xor ch,[0x534d]
00003E81  44                inc sp
00003E82  0002              add [bp+si],al
00003E84  56                push si
00003E85  4D                dec bp
00003E86  55                push bp
00003E87  53                push bx
00003E88  312E4D53          xor [0x534d],bp
00003E8C  44                inc sp
00003E8D  0002              add [bp+si],al
00003E8F  57                push di
00003E90  4D                dec bp
00003E91  55                push bp
00003E92  53                push bx
00003E93  322E4D53          xor ch,[0x534d]
00003E97  44                inc sp
00003E98  0002              add [bp+si],al
00003E9A  58                pop ax
00003E9B  4D                dec bp
00003E9C  55                push bp
00003E9D  53                push bx
00003E9E  332E4D53          xor bp,[0x534d]
00003EA2  44                inc sp
00003EA3  0002              add [bp+si],al
00003EA5  59                pop cx
00003EA6  4D                dec bp
00003EA7  55                push bp
00003EA8  53                push bx
00003EA9  342E              xor al,0x2e
00003EAB  4D                dec bp
00003EAC  53                push bx
00003EAD  44                inc sp
00003EAE  0002              add [bp+si],al
00003EB0  5A                pop dx
00003EB1  4D                dec bp
00003EB2  55                push bp
00003EB3  53                push bx
00003EB4  352E4D            xor ax,0x4d2e
00003EB7  53                push bx
00003EB8  44                inc sp
00003EB9  0002              add [bp+si],al
00003EBB  5B                pop bx
00003EBC  4D                dec bp
00003EBD  55                push bp
00003EBE  53                push bx
00003EBF  362E4D            cs dec bp
00003EC2  53                push bx
00003EC3  44                inc sp
00003EC4  0002              add [bp+si],al
00003EC6  5C                pop sp
00003EC7  4D                dec bp
00003EC8  55                push bp
00003EC9  53                push bx
00003ECA  37                aaa
00003ECB  2E4D              cs dec bp
00003ECD  53                push bx
00003ECE  44                inc sp
00003ECF  0002              add [bp+si],al
00003ED1  5D                pop bp
00003ED2  4D                dec bp
00003ED3  55                push bp
00003ED4  53                push bx
00003ED5  382E4D53          cmp [0x534d],ch
00003ED9  44                inc sp
00003EDA  0002              add [bp+si],al
00003EDC  5E                pop si
00003EDD  4D                dec bp
00003EDE  42                inc dx
00003EDF  4F                dec di
00003EE0  53                push bx
00003EE1  2E4D              cs dec bp
00003EE3  53                push bx
00003EE4  44                inc sp
00003EE5  0002              add [bp+si],al
00003EE7  60                pusha
00003EE8  4D                dec bp
00003EE9  4D                dec bp
00003EEA  41                inc cx
00003EEB  4F                dec di
00003EEC  2E4D              cs dec bp
00003EEE  53                push bx
00003EEF  44                inc sp
00003EF0  0000              add [bx+si],al
00003EF2  0000              add [bx+si],al
00003EF4  0000              add [bx+si],al
00003EF6  0000              add [bx+si],al
00003EF8  00FF              add bh,bh
00003EFA  0000              add [bx+si],al
00003EFC  0000              add [bx+si],al
00003EFE  0000              add [bx+si],al
00003F00  0000              add [bx+si],al
00003F02  FF                db 0xff
00003F03  FF00              inc word [bx+si]
00003F05  0000              add [bx+si],al
00003F07  0000              add [bx+si],al
00003F09  0000              add [bx+si],al
00003F0B  0000              add [bx+si],al
00003F0D  0000              add [bx+si],al
00003F0F  0000              add [bx+si],al
00003F11  0200              add al,[bx+si]
00003F13  0000              add [bx+si],al
00003F15  0000              add [bx+si],al
00003F17  0000              add [bx+si],al
00003F19  0000              add [bx+si],al
00003F1B  0000              add [bx+si],al
00003F1D  0000              add [bx+si],al
00003F1F  0000              add [bx+si],al
00003F21  0000              add [bx+si],al
00003F23  0000              add [bx+si],al
00003F25  0000              add [bx+si],al
00003F27  0000              add [bx+si],al
00003F29  0000              add [bx+si],al
00003F2B  0000              add [bx+si],al
00003F2D  0000              add [bx+si],al
00003F2F  0000              add [bx+si],al
00003F31  00                db 0x00
