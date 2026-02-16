00000000  46                inc si
00000001  2013              and [bp+di],dl
00000003  21DE              and si,bx
00000005  21D6              and si,dx
00000007  2210              and dl,[bx+si]
00000009  23E0              and sp,ax
0000000B  221A              and bl,[bp+si]
0000000D  23AD23BB          and bp,[di-0x44dd]
00000011  23A924B3          and bp,[bx+di-0x4cdc]
00000015  24D0              and al,0xd0
00000017  24F0              and al,0xf0
00000019  2419              and al,0x19
0000001B  259826            and ax,0x2698
0000001E  5A                pop dx
0000001F  27                daa
00000020  7427              jz 0x49
00000022  D429              aam byte 0x29
00000024  A02AF9            mov al,[0xf92a]
00000027  2A32              sub dh,[bp+si]
00000029  2B7B2B            sub di,[bp+di+0x2b]
0000002C  C6                db 0xc6
0000002D  2B18              sub bx,[bx+si]
0000002F  2CC7              sub al,0xc7
00000031  255E25            and ax,0x255e
00000034  8E27              mov fs,word [bx]
00000036  AF                scasw
00000037  27                daa
00000038  C9                leave
00000039  239028A8          and dx,[bx+si-0x57d8]
0000003D  28AF2C43          sub [bx+0x432c],ch
00000041  2102              and [bp+si],ax
00000043  2E37              cs aaa
00000045  2E50              cs push ax
00000047  E8C70D            call 0xe11
0000004A  8BF8              mov di,ax
0000004C  58                pop ax
0000004D  0AC0              or al,al
0000004F  7503              jnz 0x54
00000051  E99200            jmp 0xe6
00000054  57                push di
00000055  80E904            sub cl,0x4
00000058  81C70040          add di,0x4000
0000005C  81FF0060          cmp di,0x6000
00000060  7204              jc 0x66
00000062  81C75AA0          add di,0xa05a
00000066  E87D00            call 0xe6
00000069  5F                pop di
0000006A  B80FF0            mov ax,0xf00f
0000006D  E83B00            call 0xab
00000070  B83FFC            mov ax,0xfc3f
00000073  E83500            call 0xab
00000076  51                push cx
00000077  53                push bx
00000078  8ADD              mov bl,ch
0000007A  FECB              dec bl
0000007C  32FF              xor bh,bh
0000007E  32ED              xor ch,ch
00000080  26C605F0          mov byte [es:di],0xf0
00000084  26C6010F          mov byte [es:bx+di],0xf
00000088  81C70020          add di,0x2000
0000008C  81FF0060          cmp di,0x6000
00000090  720C              jc 0x9e
00000092  26C605F0          mov byte [es:di],0xf0
00000096  26C6010F          mov byte [es:bx+di],0xf
0000009A  81C75AA0          add di,0xa05a
0000009E  E2E0              loop 0x80
000000A0  5B                pop bx
000000A1  59                pop cx
000000A2  B83FFC            mov ax,0xfc3f
000000A5  E80300            call 0xab
000000A8  B80FF0            mov ax,0xf00f
000000AB  57                push di
000000AC  260805            or [es:di],al
000000AF  47                inc di
000000B0  8AFD              mov bh,ch
000000B2  80EF02            sub bh,0x2
000000B5  26800DFF          or byte [es:di],0xff
000000B9  47                inc di
000000BA  FECF              dec bh
000000BC  75F7              jnz 0xb5
000000BE  260825            or [es:di],ah
000000C1  5F                pop di
000000C2  81C70020          add di,0x2000
000000C6  81FF0060          cmp di,0x6000
000000CA  7301              jnc 0xcd
000000CC  C3                ret
000000CD  57                push di
000000CE  1E                push ds
000000CF  51                push cx
000000D0  06                push es
000000D1  1F                pop ds
000000D2  8BF7              mov si,di
000000D4  81EE0020          sub si,0x2000
000000D8  8ACD              mov cl,ch
000000DA  32ED              xor ch,ch
000000DC  F3A4              rep movsb
000000DE  59                pop cx
000000DF  1F                pop ds
000000E0  5F                pop di
000000E1  81C75AA0          add di,0xa05a
000000E5  C3                ret
000000E6  B800B0            mov ax,0xb000
000000E9  8EC0              mov es,ax
000000EB  8AE1              mov ah,cl
000000ED  E81600            call 0x106
000000F0  81C70020          add di,0x2000
000000F4  81FF0060          cmp di,0x6000
000000F8  7207              jc 0x101
000000FA  E80900            call 0x106
000000FD  81C75AA0          add di,0xa05a
00000101  FECC              dec ah
00000103  75E8              jnz 0xed
00000105  C3                ret
00000106  57                push di
00000107  51                push cx
00000108  8ACD              mov cl,ch
0000010A  32ED              xor ch,ch
0000010C  32C0              xor al,al
0000010E  F3AA              rep stosb
00000110  59                pop cx
00000111  5F                pop di
00000112  C3                ret
00000113  B800B0            mov ax,0xb000
00000116  8EC0              mov es,ax
00000118  BFFD04            mov di,0x4fd
0000011B  B99000            mov cx,0x90
0000011E  51                push cx
0000011F  57                push di
00000120  B93800            mov cx,0x38
00000123  32C0              xor al,al
00000125  F3AA              rep stosb
00000127  5F                pop di
00000128  81C70020          add di,0x2000
0000012C  81FF0060          cmp di,0x6000
00000130  720D              jc 0x13f
00000132  57                push di
00000133  B93800            mov cx,0x38
00000136  32C0              xor al,al
00000138  F3AA              rep stosb
0000013A  5F                pop di
0000013B  81C75AA0          add di,0xa05a
0000013F  59                pop cx
00000140  E2DC              loop 0x11e
00000142  C3                ret
00000143  B800B0            mov ax,0xb000
00000146  8EC0              mov es,ax
00000148  BED621            mov si,0x21d6
0000014B  B90800            mov cx,0x8
0000014E  51                push cx
0000014F  BFFD04            mov di,0x4fd
00000152  AC                lodsb
00000153  57                push di
00000154  B94800            mov cx,0x48
00000157  51                push cx
00000158  E86F00            call 0x1ca
0000015B  81C70020          add di,0x2000
0000015F  81FF0060          cmp di,0x6000
00000163  7207              jc 0x16c
00000165  E86200            call 0x1ca
00000168  81C75AA0          add di,0xa05a
0000016C  81C70020          add di,0x2000
00000170  81FF0060          cmp di,0x6000
00000174  7204              jc 0x17a
00000176  81C75AA0          add di,0xa05a
0000017A  D0C0              rol al,0x0
0000017C  D0C0              rol al,0x0
0000017E  D0C0              rol al,0x0
00000180  59                pop cx
00000181  E2D4              loop 0x157
00000183  5F                pop di
00000184  81C70020          add di,0x2000
00000188  81FF0060          cmp di,0x6000
0000018C  7204              jc 0x192
0000018E  81C75AA0          add di,0xa05a
00000192  B94800            mov cx,0x48
00000195  51                push cx
00000196  E83100            call 0x1ca
00000199  81C70020          add di,0x2000
0000019D  81FF0060          cmp di,0x6000
000001A1  7207              jc 0x1aa
000001A3  E82400            call 0x1ca
000001A6  81C75AA0          add di,0xa05a
000001AA  81C70020          add di,0x2000
000001AE  81FF0060          cmp di,0x6000
000001B2  7204              jc 0x1b8
000001B4  81C75AA0          add di,0xa05a
000001B8  D0C0              rol al,0x0
000001BA  D0C0              rol al,0x0
000001BC  D0C0              rol al,0x0
000001BE  59                pop cx
000001BF  E2D4              loop 0x195
000001C1  B9803E            mov cx,0x3e80
000001C4  E2FE              loop 0x1c4
000001C6  59                pop cx
000001C7  E285              loop 0x14e
000001C9  C3                ret
000001CA  57                push di
000001CB  B93800            mov cx,0x38
000001CE  262005            and [es:di],al
000001D1  47                inc di
000001D2  E2FA              loop 0x1ce
000001D4  5F                pop di
000001D5  C3                ret
000001D6  FE                db 0xfe
000001D7  EE                out dx,al
000001D8  EAAAA88880        jmp word 0x8088:word 0xa8aa
000001DD  002EA2D5          add [0xd5a2],ch
000001E1  22B800B0          and bh,[bx+si-0x5000]
000001E5  8EC0              mov es,ax
000001E7  33C0              xor ax,ax
000001E9  8AC3              mov al,bl
000001EB  05BA00            add ax,0xba
000001EE  B203              mov dl,0x3
000001F0  F6F2              div dl
000001F2  8AF4              mov dh,ah
000001F4  D0CE              ror dh,0x0
000001F6  D0CE              ror dh,0x0
000001F8  D0CE              ror dh,0x0
000001FA  81E20060          and dx,0x6000
000001FE  B45A              mov ah,0x5a
00000200  F6E4              mul ah
00000202  03C2              add ax,dx
00000204  80C714            add bh,0x14
00000207  8AD7              mov dl,bh
00000209  80E703            and bh,0x3
0000020C  D0EA              shr dl,0x0
0000020E  D0EA              shr dl,0x0
00000210  32F6              xor dh,dh
00000212  03C2              add ax,dx
00000214  050C00            add ax,0xc
00000217  8BF8              mov di,ax
00000219  8ACF              mov cl,bh
0000021B  02C9              add cl,cl
0000021D  B83FFF            mov ax,0xff3f
00000220  D2EC              shr ah,cl
00000222  D2E8              shr al,cl
00000224  F6DF              neg bh
00000226  80C703            add bh,0x3
00000229  2AEF              sub ch,bh
0000022B  51                push cx
0000022C  E82C00            call 0x25b
0000022F  59                pop cx
00000230  47                inc di
00000231  8ACD              mov cl,ch
00000233  D0E9              shr cl,0x0
00000235  D0E9              shr cl,0x0
00000237  F6C1FF            test cl,0xff
0000023A  740D              jz 0x249
0000023C  51                push cx
0000023D  B8FFFF            mov ax,0xffff
00000240  E81800            call 0x25b
00000243  59                pop cx
00000244  47                inc di
00000245  FEC9              dec cl
00000247  75F3              jnz 0x23c
00000249  80E503            and ch,0x3
0000024C  7501              jnz 0x24f
0000024E  C3                ret
0000024F  8ACD              mov cl,ch
00000251  D0E1              shl cl,0x0
00000253  B4FF              mov ah,0xff
00000255  D2EC              shr ah,cl
00000257  F6D4              not ah
00000259  8AC4              mov al,ah
0000025B  2EF606D522FF      test byte [cs:0x22d5],0xff
00000261  7524              jnz 0x287
00000263  57                push di
00000264  F6D4              not ah
00000266  B90900            mov cx,0x9
00000269  262025            and [es:di],ah
0000026C  81C70020          add di,0x2000
00000270  81FF0060          cmp di,0x6000
00000274  7207              jc 0x27d
00000276  262025            and [es:di],ah
00000279  81C75AA0          add di,0xa05a
0000027D  E2EA              loop 0x269
0000027F  262025            and [es:di],ah
00000282  260805            or [es:di],al
00000285  5F                pop di
00000286  C3                ret
00000287  2E803ED52280      cmp byte [cs:0x22d5],0x80
0000028D  7428              jz 0x2b7
0000028F  57                push di
00000290  8AE0              mov ah,al
00000292  F6D4              not ah
00000294  2455              and al,0x55
00000296  B90A00            mov cx,0xa
00000299  262025            and [es:di],ah
0000029C  260805            or [es:di],al
0000029F  81C70020          add di,0x2000
000002A3  81FF0060          cmp di,0x6000
000002A7  720A              jc 0x2b3
000002A9  262025            and [es:di],ah
000002AC  260805            or [es:di],al
000002AF  81C75AA0          add di,0xa05a
000002B3  E2E4              loop 0x299
000002B5  5F                pop di
000002B6  C3                ret
000002B7  57                push di
000002B8  F6D0              not al
000002BA  B90A00            mov cx,0xa
000002BD  262005            and [es:di],al
000002C0  81C70020          add di,0x2000
000002C4  81FF0060          cmp di,0x6000
000002C8  7207              jc 0x2d1
000002CA  262005            and [es:di],al
000002CD  81C75AA0          add di,0xa05a
000002D1  E2EA              loop 0x2bd
000002D3  5F                pop di
000002D4  C3                ret
000002D5  00BF4056          add [bx+0x5640],bh
000002D9  2E8B1EB200        mov bx,[cs:0xb2]
000002DE  EB05              jmp 0x2e5
000002E0  BFA857            mov di,0x57a8
000002E3  EB00              jmp 0x2e5
000002E5  B800B0            mov ax,0xb000
000002E8  8EC0              mov es,ax
000002EA  E87E00            call 0x36b
000002ED  50                push ax
000002EE  0ADB              or bl,bl
000002F0  7410              jz 0x302
000002F2  57                push di
000002F3  B706              mov bh,0x6
000002F5  B0AA              mov al,0xaa
000002F7  B455              mov ah,0x55
000002F9  E89200            call 0x38e
000002FC  FECB              dec bl
000002FE  5F                pop di
000002FF  47                inc di
00000300  EBEC              jmp 0x2ee
00000302  58                pop ax
00000303  0AC0              or al,al
00000305  7501              jnz 0x308
00000307  C3                ret
00000308  24AA              and al,0xaa
0000030A  B455              mov ah,0x55
0000030C  B706              mov bh,0x6
0000030E  EB7E              jmp 0x38e
00000310  BF4056            mov di,0x5640
00000313  2E8B1E9000        mov bx,[cs:0x90]
00000318  EB05              jmp 0x31f
0000031A  BFA857            mov di,0x57a8
0000031D  EB00              jmp 0x31f
0000031F  B800B0            mov ax,0xb000
00000322  8EC0              mov es,ax
00000324  E84400            call 0x36b
00000327  50                push ax
00000328  53                push bx
00000329  0ADB              or bl,bl
0000032B  7410              jz 0x33d
0000032D  57                push di
0000032E  B705              mov bh,0x5
00000330  B055              mov al,0x55
00000332  B4AA              mov ah,0xaa
00000334  E85700            call 0x38e
00000337  FECB              dec bl
00000339  5F                pop di
0000033A  47                inc di
0000033B  EBEC              jmp 0x329
0000033D  5B                pop bx
0000033E  58                pop ax
0000033F  0AC0              or al,al
00000341  740E              jz 0x351
00000343  57                push di
00000344  B705              mov bh,0x5
00000346  2455              and al,0x55
00000348  B4AA              mov ah,0xaa
0000034A  E84100            call 0x38e
0000034D  5F                pop di
0000034E  47                inc di
0000034F  FEC3              inc bl
00000351  B719              mov bh,0x19
00000353  2AFB              sub bh,bl
00000355  7501              jnz 0x358
00000357  C3                ret
00000358  8ADF              mov bl,bh
0000035A  57                push di
0000035B  B705              mov bh,0x5
0000035D  32C0              xor al,al
0000035F  B4AA              mov ah,0xaa
00000361  E82A00            call 0x38e
00000364  5F                pop di
00000365  47                inc di
00000366  FECB              dec bl
00000368  75F0              jnz 0x35a
0000036A  C3                ret
0000036B  B82003            mov ax,0x320
0000036E  2BC3              sub ax,bx
00000370  7216              jc 0x388
00000372  D1EB              shr bx,0x0
00000374  D1EB              shr bx,0x0
00000376  8ACB              mov cl,bl
00000378  D1EB              shr bx,0x0
0000037A  D1EB              shr bx,0x0
0000037C  D1EB              shr bx,0x0
0000037E  80E107            and cl,0x7
00000381  B0FF              mov al,0xff
00000383  D2E8              shr al,cl
00000385  F6D0              not al
00000387  C3                ret
00000388  BB1900            mov bx,0x19
0000038B  32C0              xor al,al
0000038D  C3                ret
0000038E  262025            and [es:di],ah
00000391  260805            or [es:di],al
00000394  81C70020          add di,0x2000
00000398  81FF0060          cmp di,0x6000
0000039C  720A              jc 0x3a8
0000039E  262025            and [es:di],ah
000003A1  260805            or [es:di],al
000003A4  81C75AA0          add di,0xa05a
000003A8  FECF              dec bh
000003AA  75E2              jnz 0x38e
000003AC  C3                ret
000003AD  2EC6067F2E55      mov byte [cs:0x2e7f],0x55
000003B3  2EC606802EAA      mov byte [cs:0x2e80],0xaa
000003B9  EB3C              jmp 0x3f7
000003BB  2EC6067F2EFF      mov byte [cs:0x2e7f],0xff
000003C1  2EC606802E00      mov byte [cs:0x2e80],0x0
000003C7  EB2E              jmp 0x3f7
000003C9  2EC6067F2EFF      mov byte [cs:0x2e7f],0xff
000003CF  2EC606802E00      mov byte [cs:0x2e80],0x0
000003D5  E8390A            call 0xe11
000003D8  8BF8              mov di,ax
000003DA  8AD9              mov bl,cl
000003DC  B800B0            mov ax,0xb000
000003DF  8EC0              mov es,ax
000003E1  AC                lodsb
000003E2  0AC0              or al,al
000003E4  7501              jnz 0x3e7
000003E6  C3                ret
000003E7  53                push bx
000003E8  1E                push ds
000003E9  56                push si
000003EA  80E303            and bl,0x3
000003ED  E83300            call 0x423
000003F0  5E                pop si
000003F1  1F                pop ds
000003F2  5B                pop bx
000003F3  FEC3              inc bl
000003F5  EBEA              jmp 0x3e1
000003F7  AC                lodsb
000003F8  8AF8              mov bh,al
000003FA  AC                lodsb
000003FB  8AD8              mov bl,al
000003FD  E8110A            call 0xe11
00000400  8BF8              mov di,ax
00000402  AC                lodsb
00000403  8AD8              mov bl,al
00000405  AC                lodsb
00000406  32ED              xor ch,ch
00000408  8AC8              mov cl,al
0000040A  B800B0            mov ax,0xb000
0000040D  8EC0              mov es,ax
0000040F  51                push cx
00000410  AC                lodsb
00000411  53                push bx
00000412  1E                push ds
00000413  56                push si
00000414  80E303            and bl,0x3
00000417  E80900            call 0x423
0000041A  5E                pop si
0000041B  1F                pop ds
0000041C  5B                pop bx
0000041D  FEC3              inc bl
0000041F  59                pop cx
00000420  E2ED              loop 0x40f
00000422  C3                ret
00000423  2C20              sub al,0x20
00000425  32E4              xor ah,ah
00000427  D1E0              shl ax,0x0
00000429  D1E0              shl ax,0x0
0000042B  D1E0              shl ax,0x0
0000042D  8BF0              mov si,ax
0000042F  033604F5          add si,[0xf504]
00000433  02DB              add bl,bl
00000435  8ACB              mov cl,bl
00000437  57                push di
00000438  B308              mov bl,0x8
0000043A  53                push bx
0000043B  AC                lodsb
0000043C  B204              mov dl,0x4
0000043E  03C0              add ax,ax
00000440  02E4              add ah,ah
00000442  FECA              dec dl
00000444  75F8              jnz 0x43e
00000446  8AC4              mov al,ah
00000448  D0EC              shr ah,0x0
0000044A  0AC4              or al,ah
0000044C  32DB              xor bl,bl
0000044E  8AF8              mov bh,al
00000450  D3EB              shr bx,cl
00000452  53                push bx
00000453  D1EB              shr bx,0x0
00000455  D1EB              shr bx,0x0
00000457  86FB              xchg bh,bl
00000459  F7D3              not bx
0000045B  26211D            and [es:di],bx
0000045E  F7D3              not bx
00000460  223E802E          and bh,[0x2e80]
00000464  221E802E          and bl,[0x2e80]
00000468  26091D            or [es:di],bx
0000046B  5B                pop bx
0000046C  86FB              xchg bh,bl
0000046E  F7D3              not bx
00000470  26211D            and [es:di],bx
00000473  F7D3              not bx
00000475  223E7F2E          and bh,[0x2e7f]
00000479  221E7F2E          and bl,[0x2e7f]
0000047D  26091D            or [es:di],bx
00000480  81C70020          add di,0x2000
00000484  81FF0060          cmp di,0x6000
00000488  7210              jc 0x49a
0000048A  8BDF              mov bx,di
0000048C  81EB0020          sub bx,0x2000
00000490  268B07            mov ax,[es:bx]
00000493  268905            mov [es:di],ax
00000496  81C75AA0          add di,0xa05a
0000049A  5B                pop bx
0000049B  FECB              dec bl
0000049D  759B              jnz 0x43a
0000049F  5F                pop di
000004A0  47                inc di
000004A1  80F906            cmp cl,0x6
000004A4  7401              jz 0x4a7
000004A6  C3                ret
000004A7  47                inc di
000004A8  C3                ret
000004A9  BB1002            mov bx,0x210
000004AC  32C0              xor al,al
000004AE  B588              mov ch,0x88
000004B0  E92BFD            jmp 0x1de
000004B3  1E                push ds
000004B4  2EA18B00          mov ax,[cs:0x8b]
000004B8  33D2              xor dx,dx
000004BA  E88200            call 0x53f
000004BD  0E                push cs
000004BE  1F                pop ds
000004BF  BF5925            mov di,0x2559
000004C2  B90501            mov cx,0x105
000004C5  B8BB26            mov ax,0x26bb
000004C8  BB01FF            mov bx,0xff01
000004CB  E8F900            call 0x5c7
000004CE  1F                pop ds
000004CF  C3                ret
000004D0  1E                push ds
000004D1  2EA18600          mov ax,[cs:0x86]
000004D5  2E8A168500        mov dl,[cs:0x85]
000004DA  E86200            call 0x53f
000004DD  0E                push cs
000004DE  1F                pop ds
000004DF  BF5825            mov di,0x2558
000004E2  B90601            mov cx,0x106
000004E5  B8BB13            mov ax,0x13bb
000004E8  BB01FF            mov bx,0xff01
000004EB  E8D900            call 0x5c7
000004EE  1F                pop ds
000004EF  C3                ret
000004F0  1E                push ds
000004F1  33DB              xor bx,bx
000004F3  2E8A1E9D00        mov bl,[cs:0x9d]
000004F8  FECB              dec bl
000004FA  2E8A87AB00        mov al,[cs:bx+0xab]
000004FF  32E4              xor ah,ah
00000501  33D2              xor dx,dx
00000503  E83900            call 0x53f
00000506  0E                push cs
00000507  1F                pop ds
00000508  BF5B25            mov di,0x255b
0000050B  B90301            mov cx,0x103
0000050E  B8BB37            mov ax,0x37bb
00000511  BB01FF            mov bx,0xff01
00000514  E8B000            call 0x5c7
00000517  1F                pop ds
00000518  C3                ret
00000519  2EF6069300FF      test byte [cs:0x93],0xff
0000051F  7501              jnz 0x522
00000521  C3                ret
00000522  1E                push ds
00000523  2EA19400          mov ax,[cs:0x94]
00000527  33D2              xor dx,dx
00000529  E81300            call 0x53f
0000052C  0E                push cs
0000052D  1F                pop ds
0000052E  BF5B25            mov di,0x255b
00000531  B90301            mov cx,0x103
00000534  B8BB3E            mov ax,0x3ebb
00000537  BB01FF            mov bx,0xff01
0000053A  E88A00            call 0x5c7
0000053D  1F                pop ds
0000053E  C3                ret
0000053F  BF5725            mov di,0x2557
00000542  E81900            call 0x55e
00000545  B90600            mov cx,0x6
00000548  2EF605FF          test byte [cs:di],0xff
0000054C  7401              jz 0x54f
0000054E  C3                ret
0000054F  2EC605FF          mov byte [cs:di],0xff
00000553  47                inc di
00000554  E2F2              loop 0x548
00000556  C3                ret
00000557  0000              add [bx+si],al
00000559  0000              add [bx+si],al
0000055B  0000              add [bx+si],al
0000055D  00B10FBB          add [bx+di-0x44f1],dh
00000561  40                inc ax
00000562  42                inc dx
00000563  E83E00            call 0x5a4
00000566  2E8835            mov [cs:di],dh
00000569  B101              mov cl,0x1
0000056B  BBA086            mov bx,0x86a0
0000056E  E83300            call 0x5a4
00000571  2E887501          mov [cs:di+0x1],dh
00000575  32C9              xor cl,cl
00000577  BB1027            mov bx,0x2710
0000057A  E82700            call 0x5a4
0000057D  2E887502          mov [cs:di+0x2],dh
00000581  BBE803            mov bx,0x3e8
00000584  E83600            call 0x5bd
00000587  2E887503          mov [cs:di+0x3],dh
0000058B  BB6400            mov bx,0x64
0000058E  E82C00            call 0x5bd
00000591  2E887504          mov [cs:di+0x4],dh
00000595  BB0A00            mov bx,0xa
00000598  E82200            call 0x5bd
0000059B  2E887505          mov [cs:di+0x5],dh
0000059F  2E884506          mov [cs:di+0x6],al
000005A3  C3                ret
000005A4  32F6              xor dh,dh
000005A6  2AD1              sub dl,cl
000005A8  7210              jc 0x5ba
000005AA  2BC3              sub ax,bx
000005AC  7306              jnc 0x5b4
000005AE  0AD2              or dl,dl
000005B0  7406              jz 0x5b8
000005B2  FECA              dec dl
000005B4  FEC6              inc dh
000005B6  EBEE              jmp 0x5a6
000005B8  03C3              add ax,bx
000005BA  02D1              add dl,cl
000005BC  C3                ret
000005BD  32F6              xor dh,dh
000005BF  F7F3              div bx
000005C1  92                xchg ax,dx
000005C2  8AF2              mov dh,dl
000005C4  32D2              xor dl,dl
000005C6  C3                ret
000005C7  883E802E          mov [0x2e80],bh
000005CB  32FF              xor bh,bh
000005CD  8A970026          mov dl,[bx+0x2600]
000005D1  88167F2E          mov [0x2e7f],dl
000005D5  8BD8              mov bx,ax
000005D7  E83708            call 0xe11
000005DA  8BD8              mov bx,ax
000005DC  B800B0            mov ax,0xb000
000005DF  8EC0              mov es,ax
000005E1  8A05              mov al,[di]
000005E3  47                inc di
000005E4  53                push bx
000005E5  51                push cx
000005E6  57                push di
000005E7  1E                push ds
000005E8  8BFB              mov di,bx
000005EA  E81B00            call 0x608
000005ED  1F                pop ds
000005EE  5F                pop di
000005EF  59                pop cx
000005F0  5B                pop bx
000005F1  8AC5              mov al,ch
000005F3  250100            and ax,0x1
000005F6  03D8              add bx,ax
000005F8  43                inc bx
000005F9  FEC5              inc ch
000005FB  FEC9              dec cl
000005FD  75E2              jnz 0x5e1
000005FF  C3                ret
00000600  00FF              add bh,bh
00000602  AA                stosb
00000603  FF5500            call word near [di+0x0]
00000606  FFAABB0F          jmp word far [bp+si+0xfbb]
0000060A  00F6              add dh,dh
0000060C  C501              lds ax,word [bx+di]
0000060E  7403              jz 0x613
00000610  BB00F0            mov bx,0xf000
00000613  F606802EFF        test byte [0x2e80],0xff
00000618  741F              jz 0x639
0000061A  57                push di
0000061B  51                push cx
0000061C  86FB              xchg bh,bl
0000061E  B90700            mov cx,0x7
00000621  26211D            and [es:di],bx
00000624  81C70020          add di,0x2000
00000628  81FF0060          cmp di,0x6000
0000062C  7207              jc 0x635
0000062E  26211D            and [es:di],bx
00000631  81C75AA0          add di,0xa05a
00000635  E2EA              loop 0x621
00000637  59                pop cx
00000638  5F                pop di
00000639  FEC0              inc al
0000063B  7501              jnz 0x63e
0000063D  C3                ret
0000063E  FEC8              dec al
00000640  32E4              xor ah,ah
00000642  03C0              add ax,ax
00000644  03C0              add ax,ax
00000646  03C0              add ax,ax
00000648  2E030602F5        add ax,[cs:0xf502]
0000064D  8BF0              mov si,ax
0000064F  0E                push cs
00000650  1F                pop ds
00000651  B107              mov cl,0x7
00000653  AC                lodsb
00000654  B408              mov ah,0x8
00000656  02C0              add al,al
00000658  13D2              adc dx,dx
0000065A  03D2              add dx,dx
0000065C  FECC              dec ah
0000065E  75F6              jnz 0x656
00000660  8BC2              mov ax,dx
00000662  D1EA              shr dx,0x0
00000664  0BC2              or ax,dx
00000666  F6C501            test ch,0x1
00000669  7508              jnz 0x673
0000066B  03C0              add ax,ax
0000066D  03C0              add ax,ax
0000066F  03C0              add ax,ax
00000671  03C0              add ax,ax
00000673  86E0              xchg ah,al
00000675  2E22267F2E        and ah,[cs:0x2e7f]
0000067A  2E22067F2E        and al,[cs:0x2e7f]
0000067F  260905            or [es:di],ax
00000682  81C70020          add di,0x2000
00000686  81FF0060          cmp di,0x6000
0000068A  7207              jc 0x693
0000068C  260905            or [es:di],ax
0000068F  81C75AA0          add di,0xa05a
00000693  FEC9              dec cl
00000695  75BC              jnz 0x653
00000697  C3                ret
00000698  1E                push ds
00000699  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000069E  FEC8              dec al
000006A0  32E4              xor ah,ah
000006A2  B90E01            mov cx,0x10e
000006A5  F7E1              mul cx
000006A7  030600E2          add ax,[0xe200]
000006AB  8BF0              mov si,ax
000006AD  02FF              add bh,bh
000006AF  E85F07            call 0xe11
000006B2  8BE8              mov bp,ax
000006B4  B800B0            mov ax,0xb000
000006B7  8EC0              mov es,ax
000006B9  B91200            mov cx,0x12
000006BC  51                push cx
000006BD  8B04              mov ax,[si]
000006BF  86E0              xchg ah,al
000006C1  2EA3852E          mov [cs:0x2e85],ax
000006C5  8B4408            mov ax,[si+0x8]
000006C8  2EA3872E          mov [cs:0x2e87],ax
000006CC  8B440A            mov ax,[si+0xa]
000006CF  86E0              xchg ah,al
000006D1  2EA3892E          mov [cs:0x2e89],ax
000006D5  E88102            call 0x959
000006D8  26887600          mov [es:bp+0x0],dh
000006DC  26885601          mov [es:bp+0x1],dl
000006E0  8B4402            mov ax,[si+0x2]
000006E3  86E0              xchg ah,al
000006E5  2EA3852E          mov [cs:0x2e85],ax
000006E9  8B4406            mov ax,[si+0x6]
000006EC  2EA3872E          mov [cs:0x2e87],ax
000006F0  8B440C            mov ax,[si+0xc]
000006F3  86E0              xchg ah,al
000006F5  2EA3892E          mov [cs:0x2e89],ax
000006F9  E85D02            call 0x959
000006FC  26887602          mov [es:bp+0x2],dh
00000700  26885603          mov [es:bp+0x3],dl
00000704  32C0              xor al,al
00000706  8A6404            mov ah,[si+0x4]
00000709  2EA3852E          mov [cs:0x2e85],ax
0000070D  8A6405            mov ah,[si+0x5]
00000710  2EA3872E          mov [cs:0x2e87],ax
00000714  8A640E            mov ah,[si+0xe]
00000717  2EA3892E          mov [cs:0x2e89],ax
0000071B  E83B02            call 0x959
0000071E  26887604          mov [es:bp+0x4],dh
00000722  83C60F            add si,0xf
00000725  81C50020          add bp,0x2000
00000729  81FD0060          cmp bp,0x6000
0000072D  7221              jc 0x750
0000072F  8BFD              mov di,bp
00000731  81EF0020          sub di,0x2000
00000735  268B05            mov ax,[es:di]
00000738  26894600          mov [es:bp+0x0],ax
0000073C  268B4502          mov ax,[es:di+0x2]
00000740  26894602          mov [es:bp+0x2],ax
00000744  268A4504          mov al,[es:di+0x4]
00000748  26884604          mov [es:bp+0x4],al
0000074C  81C55AA0          add bp,0xa05a
00000750  59                pop cx
00000751  E202              loop 0x755
00000753  EB03              jmp 0x758
00000755  E964FF            jmp 0x6bc
00000758  1F                pop ds
00000759  C3                ret
0000075A  1E                push ds
0000075B  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000760  FEC8              dec al
00000762  32E4              xor ah,ah
00000764  B9C000            mov cx,0xc0
00000767  F7E1              mul cx
00000769  030606E2          add ax,[0xe206]
0000076D  8BF0              mov si,ax
0000076F  E84E01            call 0x8c0
00000772  1F                pop ds
00000773  C3                ret
00000774  1E                push ds
00000775  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000077A  FEC8              dec al
0000077C  32E4              xor ah,ah
0000077E  B9C000            mov cx,0xc0
00000781  F7E1              mul cx
00000783  030602E2          add ax,[0xe202]
00000787  8BF0              mov si,ax
00000789  E83401            call 0x8c0
0000078C  1F                pop ds
0000078D  C3                ret
0000078E  1E                push ds
0000078F  BED027            mov si,0x27d0
00000792  0AC0              or al,al
00000794  7414              jz 0x7aa
00000796  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000079B  FEC8              dec al
0000079D  32E4              xor ah,ah
0000079F  B9C000            mov cx,0xc0
000007A2  F7E1              mul cx
000007A4  03060CE2          add ax,[0xe20c]
000007A8  8BF0              mov si,ax
000007AA  E81301            call 0x8c0
000007AD  1F                pop ds
000007AE  C3                ret
000007AF  1E                push ds
000007B0  BED027            mov si,0x27d0
000007B3  0AC0              or al,al
000007B5  7414              jz 0x7cb
000007B7  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000007BC  FEC8              dec al
000007BE  32E4              xor ah,ah
000007C0  B9C000            mov cx,0xc0
000007C3  F7E1              mul cx
000007C5  03060AE2          add ax,[0xe20a]
000007C9  8BF0              mov si,ax
000007CB  E8F200            call 0x8c0
000007CE  1F                pop ds
000007CF  C3                ret
000007D0  0000              add [bx+si],al
000007D2  0000              add [bx+si],al
000007D4  FC                cld
000007D5  FF                db 0xff
000007D6  FF                db 0xff
000007D7  3F                aas
000007D8  2AAAAAA8          sub ch,[bp+si-0x5756]
000007DC  0000              add [bx+si],al
000007DE  0000              add [bx+si],al
000007E0  0300              add ax,[bx+si]
000007E2  00C0              add al,al
000007E4  800000            add byte [bx+si],0x0
000007E7  020E38F8          add cl,[0xf838]
000007EB  0003              add [bp+di],al
000007ED  0000              add [bx+si],al
000007EF  C082080802        rol byte [bp+si+0x808],byte 0x2
000007F4  0FBB8E0003        btc [bp+0x300],cx
000007F9  0000              add [bx+si],al
000007FB  C080888202        rol byte [bx+si-0x7d78],byte 0x2
00000800  0FFB8E0003        psubq mm1,[bp+0x300]
00000805  0000              add [bx+si],al
00000807  C080088202        rol byte [bx+si-0x7df8],byte 0x2
0000080C  0E                push cs
0000080D  FB                sti
0000080E  8E00              mov es,word [bx+si]
00000810  0300              add ax,[bx+si]
00000812  00C0              add al,al
00000814  82                db 0x82
00000815  0882020E          or [bp+si+0xe02],al
00000819  38F8              cmp al,bh
0000081B  0003              add [bp+di],al
0000081D  0000              add [bx+si],al
0000081F  C082080802        rol byte [bp+si+0x808],byte 0x2
00000824  0000              add [bx+si],al
00000826  0000              add [bx+si],al
00000828  0300              add ax,[bx+si]
0000082A  00C0              add al,al
0000082C  800000            add byte [bx+si],0x0
0000082F  0200              add al,[bx+si]
00000831  0000              add [bx+si],al
00000833  0003              add [bp+di],al
00000835  0000              add [bx+si],al
00000837  C080000002        rol byte [bx+si+0x0],byte 0x2
0000083C  0E                push cs
0000083D  38FB              cmp bl,bh
0000083F  F8                clc
00000840  0300              add ax,[bx+si]
00000842  00C0              add al,al
00000844  82                db 0x82
00000845  0808              or [bx+si],cl
00000847  0A0E3B83          or cl,[0x833b]
0000084B  800300            add byte [bp+di],0x0
0000084E  00C0              add al,al
00000850  82                db 0x82
00000851  0880820E          or [bx+si+0xe82],al
00000855  38E3              cmp bl,ah
00000857  C00300            rol byte [bp+di],byte 0x0
0000085A  00C0              add al,al
0000085C  82                db 0x82
0000085D  0820              or [bx+si],ah
0000085F  020E383B          add cl,[0x3b38]
00000863  800300            add byte [bp+di],0x0
00000866  00C0              add al,al
00000868  82                db 0x82
00000869  0808              or [bx+si],cl
0000086B  82                db 0x82
0000086C  03E3              add sp,bx
0000086E  E3F8              jcxz 0x868
00000870  0300              add ax,[bx+si]
00000872  00C0              add al,al
00000874  802020            and byte [bx+si],0x20
00000877  0A00              or al,[bx+si]
00000879  0000              add [bx+si],al
0000087B  0003              add [bp+di],al
0000087D  0000              add [bx+si],al
0000087F  C080000002        rol byte [bx+si+0x0],byte 0x2
00000884  0000              add [bx+si],al
00000886  0000              add [bx+si],al
00000888  FC                cld
00000889  FF                db 0xff
0000088A  FF                db 0xff
0000088B  3F                aas
0000088C  2AAAAAA8          sub ch,[bp+si-0x5756]
00000890  1E                push ds
00000891  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000896  32E4              xor ah,ah
00000898  B9C000            mov cx,0xc0
0000089B  F7E1              mul cx
0000089D  030608E2          add ax,[0xe208]
000008A1  8BF0              mov si,ax
000008A3  E81A00            call 0x8c0
000008A6  1F                pop ds
000008A7  C3                ret
000008A8  1E                push ds
000008A9  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000008AE  32E4              xor ah,ah
000008B0  B9C000            mov cx,0xc0
000008B3  F7E1              mul cx
000008B5  030604E2          add ax,[0xe204]
000008B9  8BF0              mov si,ax
000008BB  E80200            call 0x8c0
000008BE  1F                pop ds
000008BF  C3                ret
000008C0  E84E05            call 0xe11
000008C3  8BE8              mov bp,ax
000008C5  B800B0            mov ax,0xb000
000008C8  8EC0              mov es,ax
000008CA  B91000            mov cx,0x10
000008CD  51                push cx
000008CE  8B04              mov ax,[si]
000008D0  86E0              xchg ah,al
000008D2  2EA3852E          mov [cs:0x2e85],ax
000008D6  8B4406            mov ax,[si+0x6]
000008D9  2EA3872E          mov [cs:0x2e87],ax
000008DD  8B4408            mov ax,[si+0x8]
000008E0  86E0              xchg ah,al
000008E2  2EA3892E          mov [cs:0x2e89],ax
000008E6  E87000            call 0x959
000008E9  8BC2              mov ax,dx
000008EB  8B5402            mov dx,[si+0x2]
000008EE  86F2              xchg dh,dl
000008F0  2E8916852E        mov [cs:0x2e85],dx
000008F5  8B5404            mov dx,[si+0x4]
000008F8  2E8916872E        mov [cs:0x2e87],dx
000008FD  8B540A            mov dx,[si+0xa]
00000900  86F2              xchg dh,dl
00000902  2E8916892E        mov [cs:0x2e89],dx
00000907  E84F00            call 0x959
0000090A  32DB              xor bl,bl
0000090C  B90400            mov cx,0x4
0000090F  D1E8              shr ax,0x0
00000911  D1DA              rcr dx,0x0
00000913  D0DB              rcr bl,0x0
00000915  E2F8              loop 0x90f
00000917  26886600          mov [es:bp+0x0],ah
0000091B  26884601          mov [es:bp+0x1],al
0000091F  26887602          mov [es:bp+0x2],dh
00000923  26885603          mov [es:bp+0x3],dl
00000927  26885E04          mov [es:bp+0x4],bl
0000092B  83C60C            add si,0xc
0000092E  81C50020          add bp,0x2000
00000932  81FD0060          cmp bp,0x6000
00000936  7218              jc 0x950
00000938  26886600          mov [es:bp+0x0],ah
0000093C  26884601          mov [es:bp+0x1],al
00000940  26887602          mov [es:bp+0x2],dh
00000944  26885603          mov [es:bp+0x3],dl
00000948  26885E04          mov [es:bp+0x4],bl
0000094C  81C55AA0          add bp,0xa05a
00000950  59                pop cx
00000951  E202              loop 0x955
00000953  EB03              jmp 0x958
00000955  E975FF            jmp 0x8cd
00000958  C3                ret
00000959  B90800            mov cx,0x8
0000095C  33DB              xor bx,bx
0000095E  2ED106892E        rol word [cs:0x2e89],0x0
00000963  13DB              adc bx,bx
00000965  2ED106872E        rol word [cs:0x2e87],0x0
0000096A  13DB              adc bx,bx
0000096C  2ED106852E        rol word [cs:0x2e85],0x0
00000971  13DB              adc bx,bx
00000973  2ED106892E        rol word [cs:0x2e89],0x0
00000978  13DB              adc bx,bx
0000097A  2ED106872E        rol word [cs:0x2e87],0x0
0000097F  13DB              adc bx,bx
00000981  2ED106852E        rol word [cs:0x2e85],0x0
00000986  13DB              adc bx,bx
00000988  03D2              add dx,dx
0000098A  03D2              add dx,dx
0000098C  2E0A979429        or dl,[cs:bx+0x2994]
00000991  E2C9              loop 0x95c
00000993  C3                ret
00000994  0001              add [bx+di],al
00000996  0201              add al,[bx+di]
00000998  0100              add [bx+si],ax
0000099A  0302              add ax,[bp+si]
0000099C  0103              add [bp+di],ax
0000099E  0303              add ax,[bp+di]
000009A0  0103              add [bp+di],ax
000009A2  0302              add ax,[bp+si]
000009A4  0203              add al,[bp+di]
000009A6  0201              add al,[bx+di]
000009A8  0102              add [bp+si],ax
000009AA  0202              add al,[bp+si]
000009AC  0103              add [bp+di],ax
000009AE  0103              add [bp+di],ax
000009B0  0101              add [bx+di],ax
000009B2  0202              add al,[bp+si]
000009B4  0101              add [bx+di],ax
000009B6  0101              add [bx+di],ax
000009B8  0101              add [bx+di],ax
000009BA  0302              add ax,[bp+si]
000009BC  0003              add [bp+di],al
000009BE  0201              add al,[bx+di]
000009C0  0101              add [bx+di],ax
000009C2  0302              add ax,[bp+si]
000009C4  0303              add ax,[bp+di]
000009C6  0202              add al,[bp+si]
000009C8  0303              add ax,[bp+di]
000009CA  0302              add ax,[bp+si]
000009CC  0102              add [bp+si],ax
000009CE  0202              add al,[bp+si]
000009D0  0202              add al,[bp+si]
000009D2  0202              add al,[bp+si]
000009D4  1E                push ds
000009D5  0E                push cs
000009D6  1F                pop ds
000009D7  53                push bx
000009D8  33DB              xor bx,bx
000009DA  8ADC              mov bl,ah
000009DC  8AA70026          mov ah,[bx+0x2600]
000009E0  88267F2E          mov [0x2e7f],ah
000009E4  5B                pop bx
000009E5  32E4              xor ah,ah
000009E7  2C20              sub al,0x20
000009E9  03C0              add ax,ax
000009EB  03C0              add ax,ax
000009ED  03C0              add ax,ax
000009EF  030600F5          add ax,[0xf500]
000009F3  50                push ax
000009F4  83C314            add bx,0x14
000009F7  8AC3              mov al,bl
000009F9  2403              and al,0x3
000009FB  02C0              add al,al
000009FD  A2802E            mov [0x2e80],al
00000A00  D1EB              shr bx,0x0
00000A02  D1EB              shr bx,0x0
00000A04  32ED              xor ch,ch
00000A06  83C11C            add cx,0x1c
00000A09  8BC1              mov ax,cx
00000A0B  B203              mov dl,0x3
00000A0D  F6F2              div dl
00000A0F  8AF4              mov dh,ah
00000A11  D0CE              ror dh,0x0
00000A13  D0CE              ror dh,0x0
00000A15  D0CE              ror dh,0x0
00000A17  B45A              mov ah,0x5a
00000A19  F6E4              mul ah
00000A1B  81E20060          and dx,0x6000
00000A1F  03C2              add ax,dx
00000A21  03C3              add ax,bx
00000A23  8BF8              mov di,ax
00000A25  5E                pop si
00000A26  B800B0            mov ax,0xb000
00000A29  8EC0              mov es,ax
00000A2B  B90800            mov cx,0x8
00000A2E  51                push cx
00000A2F  AC                lodsb
00000A30  E85B00            call 0xa8e
00000A33  2E8A0E802E        mov cl,[cs:0x2e80]
00000A38  8AE2              mov ah,dl
00000A3A  32D2              xor dl,dl
00000A3C  8AC2              mov al,dl
00000A3E  D3EA              shr dx,cl
00000A40  D3E8              shr ax,cl
00000A42  0AD4              or dl,ah
00000A44  8AE8              mov ch,al
00000A46  86F2              xchg dh,dl
00000A48  8BDA              mov bx,dx
00000A4A  8ACD              mov cl,ch
00000A4C  F7D3              not bx
00000A4E  F6D1              not cl
00000A50  2E22167F2E        and dl,[cs:0x2e7f]
00000A55  2E22367F2E        and dh,[cs:0x2e7f]
00000A5A  2E222E7F2E        and ch,[cs:0x2e7f]
00000A5F  26211D            and [es:di],bx
00000A62  26204D02          and [es:di+0x2],cl
00000A66  260915            or [es:di],dx
00000A69  26086D02          or [es:di+0x2],ch
00000A6D  81C70020          add di,0x2000
00000A71  81FF0060          cmp di,0x6000
00000A75  7212              jc 0xa89
00000A77  26211D            and [es:di],bx
00000A7A  26204D02          and [es:di+0x2],cl
00000A7E  260915            or [es:di],dx
00000A81  26086D02          or [es:di+0x2],ch
00000A85  81C75AA0          add di,0xa05a
00000A89  59                pop cx
00000A8A  E2A2              loop 0xa2e
00000A8C  1F                pop ds
00000A8D  C3                ret
00000A8E  B90800            mov cx,0x8
00000A91  02C0              add al,al
00000A93  13DB              adc bx,bx
00000A95  03DB              add bx,bx
00000A97  E2F8              loop 0xa91
00000A99  8BD3              mov dx,bx
00000A9B  D1EA              shr dx,0x0
00000A9D  0BD3              or dx,bx
00000A9F  C3                ret
00000AA0  1E                push ds
00000AA1  02FF              add bh,bh
00000AA3  E86B03            call 0xe11
00000AA6  8BF8              mov di,ax
00000AA8  8BF7              mov si,di
00000AAA  81C60020          add si,0x2000
00000AAE  81FE0060          cmp si,0x6000
00000AB2  7204              jc 0xab8
00000AB4  81C65AA0          add si,0xa05a
00000AB8  B800B0            mov ax,0xb000
00000ABB  8EC0              mov es,ax
00000ABD  8ED8              mov ds,ax
00000ABF  8ADD              mov bl,ch
00000AC1  32FF              xor bh,bh
00000AC3  03DB              add bx,bx
00000AC5  32ED              xor ch,ch
00000AC7  51                push cx
00000AC8  57                push di
00000AC9  56                push si
00000ACA  8BCB              mov cx,bx
00000ACC  F3A4              rep movsb
00000ACE  5E                pop si
00000ACF  5F                pop di
00000AD0  81C70020          add di,0x2000
00000AD4  81FF0060          cmp di,0x6000
00000AD8  720C              jc 0xae6
00000ADA  57                push di
00000ADB  56                push si
00000ADC  8BCB              mov cx,bx
00000ADE  F3A4              rep movsb
00000AE0  5E                pop si
00000AE1  5F                pop di
00000AE2  81C75AA0          add di,0xa05a
00000AE6  81C60020          add si,0x2000
00000AEA  81FE0060          cmp si,0x6000
00000AEE  7204              jc 0xaf4
00000AF0  81C65AA0          add si,0xa05a
00000AF4  59                pop cx
00000AF5  E2D0              loop 0xac7
00000AF7  1F                pop ds
00000AF8  C3                ret
00000AF9  1E                push ds
00000AFA  83C700            add di,0x0
00000AFD  8BD8              mov bx,ax
00000AFF  02FF              add bh,bh
00000B01  E80D03            call 0xe11
00000B04  8BF0              mov si,ax
00000B06  8CC8              mov ax,cs
00000B08  050030            add ax,0x3000
00000B0B  8EC0              mov es,ax
00000B0D  B800B0            mov ax,0xb000
00000B10  8ED8              mov ds,ax
00000B12  8ADD              mov bl,ch
00000B14  32FF              xor bh,bh
00000B16  8AEF              mov ch,bh
00000B18  51                push cx
00000B19  56                push si
00000B1A  8BCB              mov cx,bx
00000B1C  F3A5              rep movsw
00000B1E  5E                pop si
00000B1F  81C60020          add si,0x2000
00000B23  81FE0060          cmp si,0x6000
00000B27  7204              jc 0xb2d
00000B29  81C65AA0          add si,0xa05a
00000B2D  59                pop cx
00000B2E  E2E8              loop 0xb18
00000B30  1F                pop ds
00000B31  C3                ret
00000B32  1E                push ds
00000B33  8BF7              mov si,di
00000B35  83C600            add si,0x0
00000B38  8BD8              mov bx,ax
00000B3A  02FF              add bh,bh
00000B3C  E8D202            call 0xe11
00000B3F  8BF8              mov di,ax
00000B41  8CC8              mov ax,cs
00000B43  050030            add ax,0x3000
00000B46  8ED8              mov ds,ax
00000B48  B800B0            mov ax,0xb000
00000B4B  8EC0              mov es,ax
00000B4D  8ADD              mov bl,ch
00000B4F  32FF              xor bh,bh
00000B51  8AEF              mov ch,bh
00000B53  51                push cx
00000B54  56                push si
00000B55  57                push di
00000B56  8BCB              mov cx,bx
00000B58  F3A5              rep movsw
00000B5A  5F                pop di
00000B5B  5E                pop si
00000B5C  81C70020          add di,0x2000
00000B60  81FF0060          cmp di,0x6000
00000B64  720C              jc 0xb72
00000B66  56                push si
00000B67  57                push di
00000B68  8BCB              mov cx,bx
00000B6A  F3A5              rep movsw
00000B6C  5F                pop di
00000B6D  5E                pop si
00000B6E  81C75AA0          add di,0xa05a
00000B72  03F3              add si,bx
00000B74  03F3              add si,bx
00000B76  59                pop cx
00000B77  E2DA              loop 0xb53
00000B79  1F                pop ds
00000B7A  C3                ret
00000B7B  2E891E822E        mov [cs:0x2e82],bx
00000B80  2E880E842E        mov [cs:0x2e84],cl
00000B85  2EC606812E01      mov byte [cs:0x2e81],0x1
00000B8B  AC                lodsb
00000B8C  3CFF              cmp al,0xff
00000B8E  7501              jnz 0xb91
00000B90  C3                ret
00000B91  3C0D              cmp al,0xd
00000B93  7417              jz 0xbac
00000B95  0AC0              or al,al
00000B97  7825              js 0xbbe
00000B99  51                push cx
00000B9A  53                push bx
00000B9B  56                push si
00000B9C  2E8A26812E        mov ah,[cs:0x2e81]
00000BA1  E830FE            call 0x9d4
00000BA4  5E                pop si
00000BA5  5B                pop bx
00000BA6  59                pop cx
00000BA7  83C308            add bx,0x8
00000BAA  EBDF              jmp 0xb8b
00000BAC  2E8006842E08      add byte [cs:0x2e84],0x8
00000BB2  2E8A0E842E        mov cl,[cs:0x2e84]
00000BB7  2E8B1E822E        mov bx,[cs:0x2e82]
00000BBC  EBCD              jmp 0xb8b
00000BBE  2407              and al,0x7
00000BC0  2EA2812E          mov [cs:0x2e81],al
00000BC4  EBC5              jmp 0xb8b
00000BC6  1E                push ds
00000BC7  02FF              add bh,bh
00000BC9  E84502            call 0xe11
00000BCC  8BF0              mov si,ax
00000BCE  8BDA              mov bx,dx
00000BD0  02FF              add bh,bh
00000BD2  E83C02            call 0xe11
00000BD5  8BF8              mov di,ax
00000BD7  B800B0            mov ax,0xb000
00000BDA  8EC0              mov es,ax
00000BDC  8ED8              mov ds,ax
00000BDE  8ADD              mov bl,ch
00000BE0  32FF              xor bh,bh
00000BE2  03DB              add bx,bx
00000BE4  32ED              xor ch,ch
00000BE6  51                push cx
00000BE7  57                push di
00000BE8  56                push si
00000BE9  8BCB              mov cx,bx
00000BEB  F3A4              rep movsb
00000BED  5E                pop si
00000BEE  5F                pop di
00000BEF  81C70020          add di,0x2000
00000BF3  81FF0060          cmp di,0x6000
00000BF7  720C              jc 0xc05
00000BF9  57                push di
00000BFA  56                push si
00000BFB  8BCB              mov cx,bx
00000BFD  F3A4              rep movsb
00000BFF  5E                pop si
00000C00  5F                pop di
00000C01  81C75AA0          add di,0xa05a
00000C05  81C60020          add si,0x2000
00000C09  81FE0060          cmp si,0x6000
00000C0D  7204              jc 0xc13
00000C0F  81C65AA0          add si,0xa05a
00000C13  59                pop cx
00000C14  E2D0              loop 0xbe6
00000C16  1F                pop ds
00000C17  C3                ret
00000C18  53                push bx
00000C19  33DB              xor bx,bx
00000C1B  8AD8              mov bl,al
00000C1D  8A87A72C          mov al,[bx+0x2ca7]
00000C21  A27F2E            mov [0x2e7f],al
00000C24  5B                pop bx
00000C25  E8E901            call 0xe11
00000C28  8BF8              mov di,ax
00000C2A  B800B0            mov ax,0xb000
00000C2D  8EC0              mov es,ax
00000C2F  E84B00            call 0xc7d
00000C32  B91000            mov cx,0x10
00000C35  A07F2E            mov al,[0x2e7f]
00000C38  24F0              and al,0xf0
00000C3A  2680250F          and byte [es:di],0xf
00000C3E  260805            or [es:di],al
00000C41  A07F2E            mov al,[0x2e7f]
00000C44  240F              and al,0xf
00000C46  26806504F0        and byte [es:di+0x4],0xf0
00000C4B  26084504          or [es:di+0x4],al
00000C4F  81C70020          add di,0x2000
00000C53  81FF0060          cmp di,0x6000
00000C57  721E              jc 0xc77
00000C59  A07F2E            mov al,[0x2e7f]
00000C5C  24F0              and al,0xf0
00000C5E  2680250F          and byte [es:di],0xf
00000C62  260805            or [es:di],al
00000C65  A07F2E            mov al,[0x2e7f]
00000C68  240F              and al,0xf
00000C6A  26806504F0        and byte [es:di+0x4],0xf0
00000C6F  26084504          or [es:di+0x4],al
00000C73  81C75AA0          add di,0xa05a
00000C77  E2BC              loop 0xc35
00000C79  E80100            call 0xc7d
00000C7C  C3                ret
00000C7D  B90200            mov cx,0x2
00000C80  51                push cx
00000C81  57                push di
00000C82  A07F2E            mov al,[0x2e7f]
00000C85  B90500            mov cx,0x5
00000C88  F3AA              rep stosb
00000C8A  5F                pop di
00000C8B  81C70020          add di,0x2000
00000C8F  81FF0060          cmp di,0x6000
00000C93  720E              jc 0xca3
00000C95  57                push di
00000C96  A07F2E            mov al,[0x2e7f]
00000C99  B90500            mov cx,0x5
00000C9C  F3AA              rep stosb
00000C9E  5F                pop di
00000C9F  81C75AA0          add di,0xa05a
00000CA3  59                pop cx
00000CA4  E2DA              loop 0xc80
00000CA6  C3                ret
00000CA7  00FF              add bh,bh
00000CA9  AA                stosb
00000CAA  FF55FF            call word near [di-0x1]
00000CAD  FFAA1E56          jmp word far [bp+si+0x561e]
00000CB1  0E                push cs
00000CB2  1F                pop ds
00000CB3  32E4              xor ah,ah
00000CB5  03C0              add ax,ax
00000CB7  03C0              add ax,ax
00000CB9  8BF0              mov si,ax
00000CBB  E85301            call 0xe11
00000CBE  8BF8              mov di,ax
00000CC0  B800B0            mov ax,0xb000
00000CC3  8EC0              mov es,ax
00000CC5  8B9C2A2D          mov bx,[si+0x2d2a]
00000CC9  8BB42C2D          mov si,[si+0x2d2c]
00000CCD  B90D00            mov cx,0xd
00000CD0  51                push cx
00000CD1  8A07              mov al,[bx]
00000CD3  262005            and [es:di],al
00000CD6  8A4701            mov al,[bx+0x1]
00000CD9  26204501          and [es:di+0x1],al
00000CDD  8A4702            mov al,[bx+0x2]
00000CE0  26204502          and [es:di+0x2],al
00000CE4  8A4703            mov al,[bx+0x3]
00000CE7  26204503          and [es:di+0x3],al
00000CEB  AC                lodsb
00000CEC  260805            or [es:di],al
00000CEF  AC                lodsb
00000CF0  26084501          or [es:di+0x1],al
00000CF4  AC                lodsb
00000CF5  26084502          or [es:di+0x2],al
00000CF9  AC                lodsb
00000CFA  26084503          or [es:di+0x3],al
00000CFE  83C304            add bx,0x4
00000D01  81C70020          add di,0x2000
00000D05  81FF0060          cmp di,0x6000
00000D09  7219              jc 0xd24
00000D0B  8BEF              mov bp,di
00000D0D  81ED0020          sub bp,0x2000
00000D11  268B4600          mov ax,[es:bp+0x0]
00000D15  268905            mov [es:di],ax
00000D18  268B4602          mov ax,[es:bp+0x2]
00000D1C  26894502          mov [es:di+0x2],ax
00000D20  81C75AA0          add di,0xa05a
00000D24  59                pop cx
00000D25  E2A9              loop 0xcd0
00000D27  5E                pop si
00000D28  1F                pop ds
00000D29  C3                ret
00000D2A  322D              xor ch,[di]
00000D2C  9A2D662DCE        call word 0xce2d:word 0x662d
00000D31  2DFFF0            sub ax,0xf0ff
00000D34  0CFF              or al,0xff
00000D36  FFC0              inc ax
00000D38  00FF              add bh,bh
00000D3A  FF00              inc word [bx+si]
00000D3C  00FF              add bh,bh
00000D3E  FF00              inc word [bx+si]
00000D40  00FF              add bh,bh
00000D42  FF00              inc word [bx+si]
00000D44  00FF              add bh,bh
00000D46  FF00              inc word [bx+si]
00000D48  00FF              add bh,bh
00000D4A  FF00              inc word [bx+si]
00000D4C  00FF              add bh,bh
00000D4E  FFC0              inc ax
00000D50  00FF              add bh,bh
00000D52  FFC0              inc ax
00000D54  00FF              add bh,bh
00000D56  FFC0              inc ax
00000D58  00FF              add bh,bh
00000D5A  FFCC              dec sp
00000D5C  0CFF              or al,0xff
00000D5E  FF                db 0xff
00000D5F  FF                db 0xff
00000D60  FF                db 0xff
00000D61  FF                db 0xff
00000D62  FF                db 0xff
00000D63  FF                db 0xff
00000D64  FF                db 0xff
00000D65  FF                db 0xff
00000D66  FF00              inc word [bx+si]
00000D68  00FF              add bh,bh
00000D6A  FC                cld
00000D6B  0000              add [bx+si],al
00000D6D  3F                aas
00000D6E  F00000            lock add [bx+si],al
00000D71  0F                db 0x0f
00000D72  F00000            lock add [bx+si],al
00000D75  0FC000            xadd [bx+si],al
00000D78  0003              add [bp+di],al
00000D7A  C00000            rol byte [bx+si],byte 0x0
00000D7D  03C0              add ax,ax
00000D7F  0000              add [bx+si],al
00000D81  03C0              add ax,ax
00000D83  0000              add [bx+si],al
00000D85  03F0              add si,ax
00000D87  0000              add [bx+si],al
00000D89  0F                db 0x0f
00000D8A  F00000            lock add [bx+si],al
00000D8D  0FFC00            paddb mm0,[bx+si]
00000D90  003F              add [bx],bh
00000D92  FF00              inc word [bx+si]
00000D94  00FF              add bh,bh
00000D96  FFC0              inc ax
00000D98  03FF              add di,di
00000D9A  0000              add [bx+si],al
00000D9C  0000              add [bx+si],al
00000D9E  000A              add [bp+si],cl
00000DA0  A00000            mov al,[0x0]
00000DA3  3BF8              cmp di,ax
00000DA5  0000              add [bx+si],al
00000DA7  2F                das
00000DA8  D6                salc
00000DA9  0000              add [bx+si],al
00000DAB  E7D6              out byte 0xd6,ax
00000DAD  0000              add [bx+si],al
00000DAF  E556              in ax,byte 0x56
00000DB1  0000              add [bx+si],al
00000DB3  A5                movsw
00000DB4  56                push si
00000DB5  0000              add [bx+si],al
00000DB7  255600            and ax,0x56
00000DBA  0029              add [bx+di],ch
00000DBC  58                pop ax
00000DBD  0000              add [bx+si],al
00000DBF  0AA00000          or ah,[bx+si+0x0]
00000DC3  0000              add [bx+si],al
00000DC5  0000              add [bx+si],al
00000DC7  0000              add [bx+si],al
00000DC9  0000              add [bx+si],al
00000DCB  0000              add [bx+si],al
00000DCD  0000              add [bx+si],al
00000DCF  3F                aas
00000DD0  D400              aam byte 0x0
00000DD2  00F0              add al,dh
00000DD4  050003            add ax,0x300
00000DD7  CF                iret
00000DD8  C1400F3F          rol word [bx+si+0xf],byte 0x3f
00000DDC  0C50              or al,0x50
00000DDE  0FFC03            paddb mm0,[bp+di]
00000DE1  50                push ax
00000DE2  0CF0              or al,0xf0
00000DE4  A0100C            mov al,[0xc10]
00000DE7  C2AA90            ret word 0x90aa
00000DEA  0DEAAA            or ax,0xaaea
00000DED  D00D              ror byte [di],0x0
00000DEF  BAAAF0            mov dx,0xf0aa
00000DF2  016BAB            add [bp+di-0x55],bp
00000DF5  C00058            rol byte [bx+si],byte 0x58
00000DF8  AF                scasw
00000DF9  0000              add [bx+si],al
00000DFB  1D5400            sbb ax,0x54
00000DFE  0000              add [bx+si],al
00000E00  0000              add [bx+si],al
00000E02  B800B0            mov ax,0xb000
00000E05  8EC0              mov es,ax
00000E07  33FF              xor di,di
00000E09  33C0              xor ax,ax
00000E0B  B90040            mov cx,0x4000
00000E0E  F3AB              rep stosw
00000E10  C3                ret
00000E11  33C0              xor ax,ax
00000E13  8AC3              mov al,bl
00000E15  051C00            add ax,0x1c
00000E18  B303              mov bl,0x3
00000E1A  F6F3              div bl
00000E1C  8ADC              mov bl,ah
00000E1E  D0CB              ror bl,0x0
00000E20  D0CB              ror bl,0x0
00000E22  D0CB              ror bl,0x0
00000E24  80E360            and bl,0x60
00000E27  B45A              mov ah,0x5a
00000E29  F6E4              mul ah
00000E2B  02E3              add ah,bl
00000E2D  80C705            add bh,0x5
00000E30  8ADF              mov bl,bh
00000E32  32FF              xor bh,bh
00000E34  03C3              add ax,bx
00000E36  C3                ret
00000E37  51                push cx
00000E38  1E                push ds
00000E39  56                push si
00000E3A  8CC8              mov ax,cs
00000E3C  050030            add ax,0x3000
00000E3F  8EC0              mov es,ax
00000E41  B83000            mov ax,0x30
00000E44  F7E1              mul cx
00000E46  8BC8              mov cx,ax
00000E48  BF0000            mov di,0x0
00000E4B  F3A4              rep movsb
00000E4D  5F                pop di
00000E4E  07                pop es
00000E4F  59                pop cx
00000E50  8CC8              mov ax,cs
00000E52  050030            add ax,0x3000
00000E55  8ED8              mov ds,ax
00000E57  BE0000            mov si,0x0
00000E5A  51                push cx
00000E5B  E80400            call 0xe62
00000E5E  59                pop cx
00000E5F  E2F9              loop 0xe5a
00000E61  C3                ret
00000E62  B90800            mov cx,0x8
00000E65  51                push cx
00000E66  AD                lodsw
00000E67  2EA3852E          mov [cs:0x2e85],ax
00000E6B  AD                lodsw
00000E6C  2EA3872E          mov [cs:0x2e87],ax
00000E70  AD                lodsw
00000E71  2EA3892E          mov [cs:0x2e89],ax
00000E75  E8E1FA            call 0x959
00000E78  8BC2              mov ax,dx
00000E7A  AB                stosw
00000E7B  59                pop cx
00000E7C  E2E7              loop 0xe65
00000E7E  C3                ret
00000E7F  0000              add [bx+si],al
00000E81  0000              add [bx+si],al
00000E83  0000              add [bx+si],al
00000E85  0000              add [bx+si],al
00000E87  0000              add [bx+si],al
00000E89  0000              add [bx+si],al
