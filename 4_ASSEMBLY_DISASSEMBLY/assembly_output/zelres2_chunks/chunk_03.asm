00000000  3F                aas
00000001  2300              and ax,[bx+si]
00000003  002C              add [si],ch
00000005  309B3AFB          xor [bp+di-0x4c6],bl
00000009  3F                aas
0000000A  0A3F              or bh,[bx]
0000000C  81417E45AC        add word [bx+di+0x7e],0xac45
00000011  40                inc ax
00000012  6C                insb
00000013  32D5              xor dl,ch
00000015  38CD              cmp ch,cl
00000017  41                inc cx
00000018  43                inc bx
00000019  41                inc cx
0000001A  853A              test [bp+si],di
0000001C  FC                cld
0000001D  42                inc dx
0000001E  99                cwd
0000001F  45                inc bp
00000020  E345              jcxz 0x67
00000022  ED                in ax,dx
00000023  46                inc si
00000024  2941B6            sub [bx+di-0x4a],ax
00000027  49                dec cx
00000028  054A66            add ax,0x664a
0000002B  4B                dec bx
0000002C  F5                cmc
0000002D  4E                dec si
0000002E  BA4F0E            mov dx,0xe4f
00000031  07                pop es
00000032  BF9F50            mov di,0x509f
00000035  33C0              xor ax,ax
00000037  B98000            mov cx,0x80
0000003A  F3AB              rep stosw
0000003C  FE068050          inc byte [0x5080]
00000040  C7066D503C02      mov word [0x506d],0x23c
00000046  8B3631FF          mov si,[0xff31]
0000004A  83EE21            sub si,0x21
0000004D  E88B15            call 0x15db
00000050  33DB              xor bx,bx
00000052  F60480            test byte [si],0x80
00000055  7403              jz 0x5a
00000057  E8C803            call 0x422
0000005A  46                inc si
0000005B  B90600            mov cx,0x6
0000005E  51                push cx
0000005F  F60480            test byte [si],0x80
00000062  7403              jz 0x67
00000064  E8F803            call 0x45f
00000067  46                inc si
00000068  43                inc bx
00000069  F60480            test byte [si],0x80
0000006C  7403              jz 0x71
0000006E  E8EE03            call 0x45f
00000071  46                inc si
00000072  43                inc bx
00000073  F60480            test byte [si],0x80
00000076  7403              jz 0x7b
00000078  E8E403            call 0x45f
0000007B  46                inc si
0000007C  43                inc bx
0000007D  F60480            test byte [si],0x80
00000080  7403              jz 0x85
00000082  E8DA03            call 0x45f
00000085  46                inc si
00000086  43                inc bx
00000087  59                pop cx
00000088  E2D4              loop 0x5e
0000008A  F60480            test byte [si],0x80
0000008D  7403              jz 0x92
0000008F  E8CD03            call 0x45f
00000092  46                inc si
00000093  43                inc bx
00000094  F60480            test byte [si],0x80
00000097  7403              jz 0x9c
00000099  E8C303            call 0x45f
0000009C  46                inc si
0000009D  43                inc bx
0000009E  F60480            test byte [si],0x80
000000A1  7403              jz 0xa6
000000A3  E8B903            call 0x45f
000000A6  46                inc si
000000A7  F60480            test byte [si],0x80
000000AA  7403              jz 0xaf
000000AC  E8F403            call 0x4a3
000000AF  8B3631FF          mov si,[0xff31]
000000B3  BF00E9            mov di,0xe900
000000B6  C606735012        mov byte [0x5073],0x12
000000BB  E8170E            call 0xed5
000000BE  33DB              xor bx,bx
000000C0  83C603            add si,0x3
000000C3  AC                lodsb
000000C4  0AC0              or al,al
000000C6  7903              jns 0xcb
000000C8  E81004            call 0x4db
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
00000109  E9C704            jmp 0x5d3
0000010C  263A45FF          cmp al,[es:di-0x1]
00000110  7403              jz 0x115
00000112  E81300            call 0x128
00000115  83C604            add si,0x4
00000118  E8B414            call 0x15cf
0000011B  81066D504001      add word [0x506d],0x140
00000121  FE0E7350          dec byte [0x5073]
00000125  7594              jnz 0xbb
00000127  C3                ret
00000128  8A44FF            mov al,[si-0x1]
0000012B  0AC0              or al,al
0000012D  7903              jns 0x132
0000012F  E92A04            jmp 0x55c
00000132  26807DFFFC        cmp byte [es:di-0x1],0xfc
00000137  7507              jnz 0x140
00000139  26C645FFFF        mov byte [es:di-0x1],0xff
0000013E  EB1A              jmp 0x15a
00000140  26FE45FF          inc byte [es:di-0x1]
00000144  26C645FFFE        mov byte [es:di-0x1],0xfe
00000149  740F              jz 0x15a
0000014B  268845FF          mov [es:di-0x1],al
0000014F  8BD3              mov dx,bx
00000151  03D2              add dx,dx
00000153  03166D50          add dx,[0x506d]
00000157  E81601            call 0x270
0000015A  A012C0            mov al,[0xc012]
0000015D  2C05              sub al,0x5
0000015F  7301              jnc 0x162
00000161  C3                ret
00000162  3C04              cmp al,0x4
00000164  7201              jc 0x167
00000166  C3                ret
00000167  53                push bx
00000168  8AD8              mov bl,al
0000016A  32FF              xor bh,bh
0000016C  03DB              add bx,bx
0000016E  FF977031          call word near [bx+0x3170]
00000172  5B                pop bx
00000173  C3                ret
00000174  7831              js 0x1a7
00000176  98                cbw
00000177  31CE              xor si,cx
00000179  314C32            xor [si+0x32],cx
0000017C  8A44FF            mov al,[si-0x1]
0000017F  2C1B              sub al,0x1b
00000181  3C02              cmp al,0x2
00000183  7201              jc 0x186
00000185  C3                ret
00000186  C645FFFE          mov byte [di-0x1],0xfe
0000018A  F606805001        test byte [0x5080],0x1
0000018F  7501              jnz 0x192
00000191  C3                ret
00000192  FEC0              inc al
00000194  2401              and al,0x1
00000196  041B              add al,0x1b
00000198  8844FF            mov [si-0x1],al
0000019B  C3                ret
0000019C  8A44FF            mov al,[si-0x1]
0000019F  2C1D              sub al,0x1d
000001A1  3C06              cmp al,0x6
000001A3  7201              jc 0x1a6
000001A5  C3                ret
000001A6  C645FFFE          mov byte [di-0x1],0xfe
000001AA  3C04              cmp al,0x4
000001AC  731A              jnc 0x1c8
000001AE  0AC0              or al,al
000001B0  750C              jnz 0x1be
000001B2  50                push ax
000001B3  2EFF161A01        call word near [cs:0x11a]
000001B8  2403              and al,0x3
000001BA  58                pop ax
000001BB  7401              jz 0x1be
000001BD  C3                ret
000001BE  FEC0              inc al
000001C0  2403              and al,0x3
000001C2  041D              add al,0x1d
000001C4  8844FF            mov [si-0x1],al
000001C7  C3                ret
000001C8  FEC0              inc al
000001CA  2401              and al,0x1
000001CC  0421              add al,0x21
000001CE  8844FF            mov [si-0x1],al
000001D1  C3                ret
000001D2  8A44FF            mov al,[si-0x1]
000001D5  2C2C              sub al,0x2c
000001D7  3C02              cmp al,0x2
000001D9  7316              jnc 0x1f1
000001DB  C645FFFE          mov byte [di-0x1],0xfe
000001DF  F606805001        test byte [0x5080],0x1
000001E4  7501              jnz 0x1e7
000001E6  C3                ret
000001E7  FEC0              inc al
000001E9  2401              and al,0x1
000001EB  042C              add al,0x2c
000001ED  8844FF            mov [si-0x1],al
000001F0  C3                ret
000001F1  8A44FF            mov al,[si-0x1]
000001F4  3C3E              cmp al,0x3e
000001F6  7201              jc 0x1f9
000001F8  C3                ret
000001F9  B333              mov bl,0x33
000001FB  3C0E              cmp al,0xe
000001FD  7441              jz 0x240
000001FF  B336              mov bl,0x36
00000201  3C0D              cmp al,0xd
00000203  743B              jz 0x240
00000205  B339              mov bl,0x39
00000207  3C0F              cmp al,0xf
00000209  7435              jz 0x240
0000020B  B33C              mov bl,0x3c
0000020D  3C0C              cmp al,0xc
0000020F  742F              jz 0x240
00000211  B33D              mov bl,0x3d
00000213  3C10              cmp al,0x10
00000215  7429              jz 0x240
00000217  2C33              sub al,0x33
00000219  7301              jnc 0x21c
0000021B  C3                ret
0000021C  B30E              mov bl,0xe
0000021E  3C02              cmp al,0x2
00000220  741E              jz 0x240
00000222  B30D              mov bl,0xd
00000224  3C05              cmp al,0x5
00000226  7418              jz 0x240
00000228  B30F              mov bl,0xf
0000022A  3C08              cmp al,0x8
0000022C  7412              jz 0x240
0000022E  B30C              mov bl,0xc
00000230  3C09              cmp al,0x9
00000232  740C              jz 0x240
00000234  B310              mov bl,0x10
00000236  3C0A              cmp al,0xa
00000238  7406              jz 0x240
0000023A  FEC0              inc al
0000023C  0433              add al,0x33
0000023E  8AD8              mov bl,al
00000240  C645FFFE          mov byte [di-0x1],0xfe
00000244  F606805001        test byte [0x5080],0x1
00000249  7501              jnz 0x24c
0000024B  C3                ret
0000024C  885CFF            mov [si-0x1],bl
0000024F  C3                ret
00000250  8A44FF            mov al,[si-0x1]
00000253  2C25              sub al,0x25
00000255  3C04              cmp al,0x4
00000257  7201              jc 0x25a
00000259  C3                ret
0000025A  C645FFFE          mov byte [di-0x1],0xfe
0000025E  F606805001        test byte [0x5080],0x1
00000263  7501              jnz 0x266
00000265  C3                ret
00000266  FEC0              inc al
00000268  2403              and al,0x3
0000026A  0425              add al,0x25
0000026C  8844FF            mov [si-0x1],al
0000026F  C3                ret
00000270  06                push es
00000271  1E                push ds
00000272  57                push di
00000273  56                push si
00000274  53                push bx
00000275  8BFA              mov di,dx
00000277  0AC0              or al,al
00000279  7503              jnz 0x27e
0000027B  E92D01            jmp 0x3ab
0000027E  8AD8              mov bl,al
00000280  32FF              xor bh,bh
00000282  03DB              add bx,bx
00000284  F7879F50FFFF      test word [bx+0x509f],0xffff
0000028A  7542              jnz 0x2ce
0000028C  FEC8              dec al
0000028E  89BF9F50          mov [bx+0x509f],di
00000292  B110              mov cl,0x10
00000294  F6E1              mul cl
00000296  053080            add ax,0x8030
00000299  8BF0              mov si,ax
0000029B  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000002A0  B800B8            mov ax,0xb800
000002A3  8EC0              mov es,ax
000002A5  B90400            mov cx,0x4
000002A8  A5                movsw
000002A9  81C7FE1F          add di,0x1ffe
000002AD  81FF0040          cmp di,0x4000
000002B1  7204              jc 0x2b7
000002B3  81C750C0          add di,0xc050
000002B7  A5                movsw
000002B8  81C7FE1F          add di,0x1ffe
000002BC  81FF0040          cmp di,0x4000
000002C0  7204              jc 0x2c6
000002C2  81C750C0          add di,0xc050
000002C6  E2E0              loop 0x2a8
000002C8  5B                pop bx
000002C9  5E                pop si
000002CA  5F                pop di
000002CB  1F                pop ds
000002CC  07                pop es
000002CD  C3                ret
000002CE  8BB79F50          mov si,[bx+0x509f]
000002D2  B800B8            mov ax,0xb800
000002D5  8EC0              mov es,ax
000002D7  8ED8              mov ds,ax
000002D9  A5                movsw
000002DA  81C7FE1F          add di,0x1ffe
000002DE  81FF0040          cmp di,0x4000
000002E2  7204              jc 0x2e8
000002E4  81C750C0          add di,0xc050
000002E8  81C6FE1F          add si,0x1ffe
000002EC  81FE0040          cmp si,0x4000
000002F0  7204              jc 0x2f6
000002F2  81C650C0          add si,0xc050
000002F6  A5                movsw
000002F7  81C7FE1F          add di,0x1ffe
000002FB  81FF0040          cmp di,0x4000
000002FF  7204              jc 0x305
00000301  81C750C0          add di,0xc050
00000305  81C6FE1F          add si,0x1ffe
00000309  81FE0040          cmp si,0x4000
0000030D  7204              jc 0x313
0000030F  81C650C0          add si,0xc050
00000313  A5                movsw
00000314  81C7FE1F          add di,0x1ffe
00000318  81FF0040          cmp di,0x4000
0000031C  7204              jc 0x322
0000031E  81C750C0          add di,0xc050
00000322  81C6FE1F          add si,0x1ffe
00000326  81FE0040          cmp si,0x4000
0000032A  7204              jc 0x330
0000032C  81C650C0          add si,0xc050
00000330  A5                movsw
00000331  81C7FE1F          add di,0x1ffe
00000335  81FF0040          cmp di,0x4000
00000339  7204              jc 0x33f
0000033B  81C750C0          add di,0xc050
0000033F  81C6FE1F          add si,0x1ffe
00000343  81FE0040          cmp si,0x4000
00000347  7204              jc 0x34d
00000349  81C650C0          add si,0xc050
0000034D  A5                movsw
0000034E  81C7FE1F          add di,0x1ffe
00000352  81FF0040          cmp di,0x4000
00000356  7204              jc 0x35c
00000358  81C750C0          add di,0xc050
0000035C  81C6FE1F          add si,0x1ffe
00000360  81FE0040          cmp si,0x4000
00000364  7204              jc 0x36a
00000366  81C650C0          add si,0xc050
0000036A  A5                movsw
0000036B  81C7FE1F          add di,0x1ffe
0000036F  81FF0040          cmp di,0x4000
00000373  7204              jc 0x379
00000375  81C750C0          add di,0xc050
00000379  81C6FE1F          add si,0x1ffe
0000037D  81FE0040          cmp si,0x4000
00000381  7204              jc 0x387
00000383  81C650C0          add si,0xc050
00000387  A5                movsw
00000388  81C7FE1F          add di,0x1ffe
0000038C  81FF0040          cmp di,0x4000
00000390  7204              jc 0x396
00000392  81C750C0          add di,0xc050
00000396  81C6FE1F          add si,0x1ffe
0000039A  81FE0040          cmp si,0x4000
0000039E  7204              jc 0x3a4
000003A0  81C650C0          add si,0xc050
000003A4  A5                movsw
000003A5  5B                pop bx
000003A6  5E                pop si
000003A7  5F                pop di
000003A8  1F                pop ds
000003A9  07                pop es
000003AA  C3                ret
000003AB  B800B8            mov ax,0xb800
000003AE  8EC0              mov es,ax
000003B0  33C0              xor ax,ax
000003B2  AB                stosw
000003B3  81C7FE1F          add di,0x1ffe
000003B7  81FF0040          cmp di,0x4000
000003BB  7204              jc 0x3c1
000003BD  81C750C0          add di,0xc050
000003C1  AB                stosw
000003C2  81C7FE1F          add di,0x1ffe
000003C6  81FF0040          cmp di,0x4000
000003CA  7204              jc 0x3d0
000003CC  81C750C0          add di,0xc050
000003D0  AB                stosw
000003D1  81C7FE1F          add di,0x1ffe
000003D5  81FF0040          cmp di,0x4000
000003D9  7204              jc 0x3df
000003DB  81C750C0          add di,0xc050
000003DF  AB                stosw
000003E0  81C7FE1F          add di,0x1ffe
000003E4  81FF0040          cmp di,0x4000
000003E8  7204              jc 0x3ee
000003EA  81C750C0          add di,0xc050
000003EE  AB                stosw
000003EF  81C7FE1F          add di,0x1ffe
000003F3  81FF0040          cmp di,0x4000
000003F7  7204              jc 0x3fd
000003F9  81C750C0          add di,0xc050
000003FD  AB                stosw
000003FE  81C7FE1F          add di,0x1ffe
00000402  81FF0040          cmp di,0x4000
00000406  7204              jc 0x40c
00000408  81C750C0          add di,0xc050
0000040C  AB                stosw
0000040D  81C7FE1F          add di,0x1ffe
00000411  81FF0040          cmp di,0x4000
00000415  7204              jc 0x41b
00000417  81C750C0          add di,0xc050
0000041B  AB                stosw
0000041C  5B                pop bx
0000041D  5E                pop si
0000041E  5F                pop di
0000041F  1F                pop ds
00000420  07                pop es
00000421  C3                ret
00000422  803E00E9FF        cmp byte [0xe900],0xff
00000427  7501              jnz 0x42a
00000429  C3                ret
0000042A  803E00E9FC        cmp byte [0xe900],0xfc
0000042F  7501              jnz 0x432
00000431  C3                ret
00000432  56                push si
00000433  53                push bx
00000434  C60600E9FF        mov byte [0xe900],0xff
00000439  8A0C              mov cl,[si]
0000043B  83C625            add si,0x25
0000043E  E88E11            call 0x15cf
00000441  8A04              mov al,[si]
00000443  0AC0              or al,al
00000445  7903              jns 0x44a
00000447  E8BD03            call 0x807
0000044A  50                push ax
0000044B  8AC1              mov al,cl
0000044D  E8BE03            call 0x80e
00000450  83C603            add si,0x3
00000453  58                pop ax
00000454  8A24              mov ah,[si]
00000456  BA3C02            mov dx,0x23c
00000459  E82802            call 0x684
0000045C  5B                pop bx
0000045D  5E                pop si
0000045E  C3                ret
0000045F  56                push si
00000460  53                push bx
00000461  8BCB              mov cx,bx
00000463  8BFB              mov di,bx
00000465  81C700E9          add di,0xe900
00000469  BB9250            mov bx,0x5092
0000046C  B0FF              mov al,0xff
0000046E  8605              xchg al,[di]
00000470  8807              mov [bx],al
00000472  C6470100          mov byte [bx+0x1],0x0
00000476  C64501FF          mov byte [di+0x1],0xff
0000047A  8BD1              mov dx,cx
0000047C  03D2              add dx,dx
0000047E  81C23C02          add dx,0x23c
00000482  8A0C              mov cl,[si]
00000484  83C624            add si,0x24
00000487  E84511            call 0x15cf
0000048A  BB9650            mov bx,0x5096
0000048D  AD                lodsw
0000048E  8907              mov [bx],ax
00000490  8AC1              mov al,cl
00000492  E87903            call 0x80e
00000495  46                inc si
00000496  46                inc si
00000497  BF9650            mov di,0x5096
0000049A  BD9250            mov bp,0x5092
0000049D  E8B701            call 0x657
000004A0  5B                pop bx
000004A1  5E                pop si
000004A2  C3                ret
000004A3  803E1BE9FF        cmp byte [0xe91b],0xff
000004A8  7501              jnz 0x4ab
000004AA  C3                ret
000004AB  803E1BE9FC        cmp byte [0xe91b],0xfc
000004B0  7501              jnz 0x4b3
000004B2  C3                ret
000004B3  C6061BE9FF        mov byte [0xe91b],0xff
000004B8  8A0C              mov cl,[si]
000004BA  83C624            add si,0x24
000004BD  E80F11            call 0x15cf
000004C0  8A04              mov al,[si]
000004C2  0AC0              or al,al
000004C4  7903              jns 0x4c9
000004C6  E83E03            call 0x807
000004C9  50                push ax
000004CA  8AC1              mov al,cl
000004CC  E83F03            call 0x80e
000004CF  83C602            add si,0x2
000004D2  58                pop ax
000004D3  8A24              mov ah,[si]
000004D5  BA7202            mov dx,0x272
000004D8  E9A901            jmp 0x684
000004DB  56                push si
000004DC  57                push di
000004DD  53                push bx
000004DE  53                push bx
000004DF  BB9250            mov bx,0x5092
000004E2  B0FF              mov al,0xff
000004E4  8605              xchg al,[di]
000004E6  8807              mov [bx],al
000004E8  B0FF              mov al,0xff
000004EA  86451C            xchg al,[di+0x1c]
000004ED  884701            mov [bx+0x1],al
000004F0  8A4CFF            mov cl,[si-0x1]
000004F3  8A14              mov dl,[si]
000004F5  83C624            add si,0x24
000004F8  E8D410            call 0x15cf
000004FB  8A34              mov dh,[si]
000004FD  8AC1              mov al,cl
000004FF  E80C03            call 0x80e
00000502  46                inc si
00000503  8BDA              mov bx,dx
00000505  5A                pop dx
00000506  03D2              add dx,dx
00000508  03166D50          add dx,[0x506d]
0000050C  803E9250FF        cmp byte [0x5092],0xff
00000511  741B              jz 0x52e
00000513  803E9250FC        cmp byte [0x5092],0xfc
00000518  7414              jz 0x52e
0000051A  8A24              mov ah,[si]
0000051C  8AC3              mov al,bl
0000051E  53                push bx
0000051F  56                push si
00000520  52                push dx
00000521  0AC0              or al,al
00000523  7903              jns 0x528
00000525  E8DF02            call 0x807
00000528  E85901            call 0x684
0000052B  5A                pop dx
0000052C  5E                pop si
0000052D  5B                pop bx
0000052E  81C24001          add dx,0x140
00000532  803E735001        cmp byte [0x5073],0x1
00000537  741F              jz 0x558
00000539  803E9350FF        cmp byte [0x5093],0xff
0000053E  7418              jz 0x558
00000540  803E9350FC        cmp byte [0x5093],0xfc
00000545  7411              jz 0x558
00000547  46                inc si
00000548  46                inc si
00000549  AC                lodsb
0000054A  8AE0              mov ah,al
0000054C  8AC7              mov al,bh
0000054E  0AC0              or al,al
00000550  7903              jns 0x555
00000552  E8B202            call 0x807
00000555  E82C01            call 0x684
00000558  5B                pop bx
00000559  5F                pop di
0000055A  5E                pop si
0000055B  C3                ret
0000055C  56                push si
0000055D  57                push di
0000055E  53                push bx
0000055F  53                push bx
00000560  BB9250            mov bx,0x5092
00000563  B8FEFF            mov ax,0xfffe
00000566  8745FF            xchg ax,[di-0x1]
00000569  8907              mov [bx],ax
0000056B  B8FFFF            mov ax,0xffff
0000056E  87451B            xchg ax,[di+0x1b]
00000571  894702            mov [bx+0x2],ax
00000574  8A4CFF            mov cl,[si-0x1]
00000577  BB9650            mov bx,0x5096
0000057A  8A04              mov al,[si]
0000057C  884701            mov [bx+0x1],al
0000057F  83C624            add si,0x24
00000582  E84A10            call 0x15cf
00000585  8B44FF            mov ax,[si-0x1]
00000588  894702            mov [bx+0x2],ax
0000058B  5A                pop dx
0000058C  88167450          mov [0x5074],dl
00000590  A07350            mov al,[0x5073]
00000593  F6D8              neg al
00000595  0412              add al,0x12
00000597  A27550            mov [0x5075],al
0000059A  03D2              add dx,dx
0000059C  03166D50          add dx,[0x506d]
000005A0  8AC1              mov al,cl
000005A2  E86902            call 0x80e
000005A5  BF9650            mov di,0x5096
000005A8  8805              mov [di],al
000005AA  BD9250            mov bp,0x5092
000005AD  E8A700            call 0x657
000005B0  803E735001        cmp byte [0x5073],0x1
000005B5  7418              jz 0x5cf
000005B7  81C23C01          add dx,0x13c
000005BB  E89900            call 0x657
000005BE  F60634FFFF        test byte [0xff34],0xff
000005C3  740A              jz 0x5cf
000005C5  F6062FFFFF        test byte [0xff2f],0xff
000005CA  7403              jz 0x5cf
000005CC  E89002            call 0x85f
000005CF  5B                pop bx
000005D0  5F                pop di
000005D1  5E                pop si
000005D2  C3                ret
000005D3  56                push si
000005D4  57                push di
000005D5  53                push bx
000005D6  53                push bx
000005D7  BB9250            mov bx,0x5092
000005DA  B0FE              mov al,0xfe
000005DC  8645FF            xchg al,[di-0x1]
000005DF  8807              mov [bx],al
000005E1  B0FF              mov al,0xff
000005E3  86451B            xchg al,[di+0x1b]
000005E6  884701            mov [bx+0x1],al
000005E9  8A4CFF            mov cl,[si-0x1]
000005EC  83C624            add si,0x24
000005EF  E8DD0F            call 0x15cf
000005F2  8A54FF            mov dl,[si-0x1]
000005F5  8AC1              mov al,cl
000005F7  E81402            call 0x80e
000005FA  8AD8              mov bl,al
000005FC  8AFA              mov bh,dl
000005FE  5A                pop dx
000005FF  03D2              add dx,dx
00000601  03166D50          add dx,[0x506d]
00000605  803E9250FF        cmp byte [0x5092],0xff
0000060A  741B              jz 0x627
0000060C  803E9250FC        cmp byte [0x5092],0xfc
00000611  7414              jz 0x627
00000613  8A24              mov ah,[si]
00000615  8AC3              mov al,bl
00000617  53                push bx
00000618  56                push si
00000619  52                push dx
0000061A  0AC0              or al,al
0000061C  7903              jns 0x621
0000061E  E8E601            call 0x807
00000621  E86000            call 0x684
00000624  5A                pop dx
00000625  5E                pop si
00000626  5B                pop bx
00000627  81C24001          add dx,0x140
0000062B  803E735001        cmp byte [0x5073],0x1
00000630  741F              jz 0x651
00000632  803E9350FF        cmp byte [0x5093],0xff
00000637  7418              jz 0x651
00000639  803E9350FC        cmp byte [0x5093],0xfc
0000063E  7411              jz 0x651
00000640  46                inc si
00000641  46                inc si
00000642  AC                lodsb
00000643  8AE0              mov ah,al
00000645  8AC7              mov al,bh
00000647  0AC0              or al,al
00000649  7903              jns 0x64e
0000064B  E8B901            call 0x807
0000064E  E83300            call 0x684
00000651  5B                pop bx
00000652  5F                pop di
00000653  5E                pop si
00000654  E9BEFA            jmp 0x115
00000657  E80000            call 0x65a
0000065A  3E807E00FF        cmp byte [ds:bp+0x0],0xff
0000065F  741D              jz 0x67e
00000661  3E807E00FC        cmp byte [ds:bp+0x0],0xfc
00000666  7416              jz 0x67e
00000668  8A24              mov ah,[si]
0000066A  8A05              mov al,[di]
0000066C  0AC0              or al,al
0000066E  7903              jns 0x673
00000670  E89401            call 0x807
00000673  55                push bp
00000674  56                push si
00000675  57                push di
00000676  52                push dx
00000677  E80A00            call 0x684
0000067A  5A                pop dx
0000067B  5F                pop di
0000067C  5E                pop si
0000067D  5D                pop bp
0000067E  46                inc si
0000067F  47                inc di
00000680  45                inc bp
00000681  42                inc dx
00000682  42                inc dx
00000683  C3                ret
00000684  06                push es
00000685  1E                push ds
00000686  8A1E7650          mov bl,[0x5076]
0000068A  0AC0              or al,al
0000068C  7405              jz 0x693
0000068E  7803              js 0x693
00000690  80CB80            or bl,0x80
00000693  8AC8              mov cl,al
00000695  8AC4              mov al,ah
00000697  B510              mov ch,0x10
00000699  F6E5              mul ch
0000069B  8BF0              mov si,ax
0000069D  81C60040          add si,0x4000
000006A1  8BE8              mov bp,ax
000006A3  81C500A0          add bp,0xa000
000006A7  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000006AC  8BFA              mov di,dx
000006AE  0E                push cs
000006AF  07                pop es
000006B0  8AEB              mov ch,bl
000006B2  80E37F            and bl,0x7f
000006B5  32FF              xor bh,bh
000006B7  03DB              add bx,bx
000006B9  2E8B870F50        mov ax,[cs:bx+0x500f]
000006BE  2EA36B50          mov [cs:0x506b],ax
000006C2  8AC1              mov al,cl
000006C4  0AED              or ch,ch
000006C6  7818              js 0x6e0
000006C8  57                push di
000006C9  BF2F53            mov di,0x532f
000006CC  E85700            call 0x726
000006CF  5F                pop di
000006D0  BE2F53            mov si,0x532f
000006D3  0E                push cs
000006D4  1F                pop ds
000006D5  B800B8            mov ax,0xb800
000006D8  8EC0              mov es,ax
000006DA  E8B100            call 0x78e
000006DD  1F                pop ds
000006DE  07                pop es
000006DF  C3                ret
000006E0  57                push di
000006E1  BF2F53            mov di,0x532f
000006E4  E81100            call 0x6f8
000006E7  5F                pop di
000006E8  BE2F53            mov si,0x532f
000006EB  0E                push cs
000006EC  1F                pop ds
000006ED  B800B8            mov ax,0xb800
000006F0  8EC0              mov es,ax
000006F2  E89900            call 0x78e
000006F5  1F                pop ds
000006F6  07                pop es
000006F7  C3                ret
000006F8  55                push bp
000006F9  56                push si
000006FA  57                push di
000006FB  FEC9              dec cl
000006FD  B010              mov al,0x10
000006FF  F6E1              mul cl
00000701  053080            add ax,0x8030
00000704  8BF0              mov si,ax
00000706  E8F000            call 0x7f9
00000709  5F                pop di
0000070A  5E                pop si
0000070B  5D                pop bp
0000070C  EB00              jmp 0x70e
0000070E  B90800            mov cx,0x8
00000711  3E8B4600          mov ax,[ds:bp+0x0]
00000715  262105            and [es:di],ax
00000718  AD                lodsw
00000719  E81500            call 0x731
0000071C  260905            or [es:di],ax
0000071F  45                inc bp
00000720  45                inc bp
00000721  47                inc di
00000722  47                inc di
00000723  E2EC              loop 0x711
00000725  C3                ret
00000726  B90800            mov cx,0x8
00000729  AD                lodsw
0000072A  E80400            call 0x731
0000072D  AB                stosw
0000072E  E2F9              loop 0x729
00000730  C3                ret
00000731  8BD8              mov bx,ax
00000733  D0EF              shr bh,0x0
00000735  D0EF              shr bh,0x0
00000737  D0EF              shr bh,0x0
00000739  D0EF              shr bh,0x0
0000073B  8ADF              mov bl,bh
0000073D  32FF              xor bh,bh
0000073F  2E031E6B50        add bx,[cs:0x506b]
00000744  2E8A37            mov dh,[cs:bx]
00000747  02F6              add dh,dh
00000749  02F6              add dh,dh
0000074B  02F6              add dh,dh
0000074D  02F6              add dh,dh
0000074F  8BD8              mov bx,ax
00000751  80E70F            and bh,0xf
00000754  8ADF              mov bl,bh
00000756  32FF              xor bh,bh
00000758  2E031E6B50        add bx,[cs:0x506b]
0000075D  2E0A37            or dh,[cs:bx]
00000760  8BD8              mov bx,ax
00000762  D0EB              shr bl,0x0
00000764  D0EB              shr bl,0x0
00000766  D0EB              shr bl,0x0
00000768  D0EB              shr bl,0x0
0000076A  32FF              xor bh,bh
0000076C  2E031E6B50        add bx,[cs:0x506b]
00000771  2E8A17            mov dl,[cs:bx]
00000774  02D2              add dl,dl
00000776  02D2              add dl,dl
00000778  02D2              add dl,dl
0000077A  02D2              add dl,dl
0000077C  8BD8              mov bx,ax
0000077E  80E30F            and bl,0xf
00000781  32FF              xor bh,bh
00000783  2E031E6B50        add bx,[cs:0x506b]
00000788  2E0A17            or dl,[cs:bx]
0000078B  8BC2              mov ax,dx
0000078D  C3                ret
0000078E  A5                movsw
0000078F  81C7FE1F          add di,0x1ffe
00000793  81FF0040          cmp di,0x4000
00000797  7204              jc 0x79d
00000799  81C750C0          add di,0xc050
0000079D  A5                movsw
0000079E  81C7FE1F          add di,0x1ffe
000007A2  81FF0040          cmp di,0x4000
000007A6  7204              jc 0x7ac
000007A8  81C750C0          add di,0xc050
000007AC  A5                movsw
000007AD  81C7FE1F          add di,0x1ffe
000007B1  81FF0040          cmp di,0x4000
000007B5  7204              jc 0x7bb
000007B7  81C750C0          add di,0xc050
000007BB  A5                movsw
000007BC  81C7FE1F          add di,0x1ffe
000007C0  81FF0040          cmp di,0x4000
000007C4  7204              jc 0x7ca
000007C6  81C750C0          add di,0xc050
000007CA  A5                movsw
000007CB  81C7FE1F          add di,0x1ffe
000007CF  81FF0040          cmp di,0x4000
000007D3  7204              jc 0x7d9
000007D5  81C750C0          add di,0xc050
000007D9  A5                movsw
000007DA  81C7FE1F          add di,0x1ffe
000007DE  81FF0040          cmp di,0x4000
000007E2  7204              jc 0x7e8
000007E4  81C750C0          add di,0xc050
000007E8  A5                movsw
000007E9  81C7FE1F          add di,0x1ffe
000007ED  81FF0040          cmp di,0x4000
000007F1  7204              jc 0x7f7
000007F3  81C750C0          add di,0xc050
000007F7  A5                movsw
000007F8  C3                ret
000007F9  B90800            mov cx,0x8
000007FC  F3A5              rep movsw
000007FE  C3                ret
000007FF  33C0              xor ax,ax
00000801  B90800            mov cx,0x8
00000804  F3AB              rep stosw
00000806  C3                ret
00000807  247F              and al,0x7f
00000809  BB20ED            mov bx,0xed20
0000080C  D7                xlatb
0000080D  C3                ret
0000080E  247F              and al,0x7f
00000810  8AD8              mov bl,al
00000812  32FF              xor bh,bh
00000814  8A8F20ED          mov cl,[bx-0x12e0]
00000818  B510              mov ch,0x10
0000081A  F6E5              mul ch
0000081C  030610C0          add ax,[0xc010]
00000820  8BE8              mov bp,ax
00000822  3E8A4606          mov al,[ds:bp+0x6]
00000826  240F              and al,0xf
00000828  B505              mov ch,0x5
0000082A  F6E5              mul ch
0000082C  BE70A0            mov si,0xa070
0000082F  3EF6460580        test byte [ds:bp+0x5],0x80
00000834  7503              jnz 0x839
00000836  BE30A0            mov si,0xa030
00000839  3E8A5E04          mov bl,[ds:bp+0x4]
0000083D  80E31F            and bl,0x1f
00000840  02DB              add bl,bl
00000842  32FF              xor bh,bh
00000844  0300              add ax,[bx+si]
00000846  8BF0              mov si,ax
00000848  AC                lodsb
00000849  F60634FFFF        test byte [0xff34],0xff
0000084E  7509              jnz 0x859
00000850  3EF6460520        test byte [ds:bp+0x5],0x20
00000855  7402              jz 0x859
00000857  0403              add al,0x3
00000859  A27650            mov [0x5076],al
0000085C  8AC1              mov al,cl
0000085E  C3                ret
0000085F  803E755010        cmp byte [0x5075],0x10
00000864  7201              jc 0x867
00000866  C3                ret
00000867  0E                push cs
00000868  07                pop es
00000869  2EFF161A01        call word near [cs:0x11a]
0000086E  240F              and al,0xf
00000870  3C0E              cmp al,0xe
00000872  7301              jnc 0x875
00000874  C3                ret
00000875  BFA0ED            mov di,0xeda0
00000878  32C9              xor cl,cl
0000087A  803DFF            cmp byte [di],0xff
0000087D  7407              jz 0x886
0000087F  83C704            add di,0x4
00000882  FEC1              inc cl
00000884  EBF4              jmp 0x87a
00000886  80F920            cmp cl,0x20
00000889  7201              jc 0x88c
0000088B  C3                ret
0000088C  2EFF161A01        call word near [cs:0x11a]
00000891  2403              and al,0x3
00000893  3C03              cmp al,0x3
00000895  74F5              jz 0x88c
00000897  FEC8              dec al
00000899  02067450          add al,[0x5074]
0000089D  3CFF              cmp al,0xff
0000089F  7502              jnz 0x8a3
000008A1  B004              mov al,0x4
000008A3  3C1B              cmp al,0x1b
000008A5  7202              jc 0x8a9
000008A7  B01A              mov al,0x1a
000008A9  AA                stosb
000008AA  2EFF161A01        call word near [cs:0x11a]
000008AF  2403              and al,0x3
000008B1  3C03              cmp al,0x3
000008B3  74F5              jz 0x8aa
000008B5  FEC8              dec al
000008B7  02067550          add al,[0x5075]
000008BB  3CFF              cmp al,0xff
000008BD  7502              jnz 0x8c1
000008BF  32C0              xor al,al
000008C1  AA                stosb
000008C2  B003              mov al,0x3
000008C4  AA                stosb
000008C5  2EFF161A01        call word near [cs:0x11a]
000008CA  2403              and al,0x3
000008CC  BBD138            mov bx,0x38d1
000008CF  D7                xlatb
000008D0  AA                stosb
000008D1  B0FF              mov al,0xff
000008D3  AA                stosb
000008D4  C3                ret
000008D5  55                push bp
000008D6  AA                stosb
000008D7  FFAA0E07          jmp word far [bp+si+0x70e]
000008DB  BFA0ED            mov di,0xeda0
000008DE  8BF7              mov si,di
000008E0  803CFF            cmp byte [si],0xff
000008E3  7504              jnz 0x8e9
000008E5  C605FF            mov byte [di],0xff
000008E8  C3                ret
000008E9  8A4401            mov al,[si+0x1]
000008EC  B11C              mov cl,0x1c
000008EE  F6E1              mul cl
000008F0  8A0C              mov cl,[si]
000008F2  32ED              xor ch,ch
000008F4  03C1              add ax,cx
000008F6  57                push di
000008F7  0500E9            add ax,0xe900
000008FA  8BF8              mov di,ax
000008FC  B0FE              mov al,0xfe
000008FE  AA                stosb
000008FF  AA                stosb
00000900  83C71A            add di,0x1a
00000903  AA                stosb
00000904  AA                stosb
00000905  5F                pop di
00000906  8A6401            mov ah,[si+0x1]
00000909  32C0              xor al,al
0000090B  8BD8              mov bx,ax
0000090D  03C0              add ax,ax
0000090F  D1EB              shr bx,0x0
00000911  03C3              add ax,bx
00000913  D1E8              shr ax,0x0
00000915  8A0C              mov cl,[si]
00000917  32ED              xor ch,ch
00000919  03C9              add cx,cx
0000091B  03C1              add ax,cx
0000091D  053C02            add ax,0x23c
00000920  56                push si
00000921  57                push di
00000922  06                push es
00000923  50                push ax
00000924  8A4403            mov al,[si+0x3]
00000927  A27750            mov [0x5077],al
0000092A  8A5C02            mov bl,[si+0x2]
0000092D  80E303            and bl,0x3
00000930  02DB              add bl,bl
00000932  32FF              xor bh,bh
00000934  8BB77D39          mov si,[bx+0x397d]
00000938  5F                pop di
00000939  B800B8            mov ax,0xb800
0000093C  8EC0              mov es,ax
0000093E  B91000            mov cx,0x10
00000941  AD                lodsw
00000942  22067750          and al,[0x5077]
00000946  22267750          and ah,[0x5077]
0000094A  260905            or [es:di],ax
0000094D  AD                lodsw
0000094E  22067750          and al,[0x5077]
00000952  22267750          and ah,[0x5077]
00000956  26094502          or [es:di+0x2],ax
0000095A  81C70020          add di,0x2000
0000095E  81FF0040          cmp di,0x4000
00000962  7204              jc 0x968
00000964  81C750C0          add di,0xc050
00000968  E2D7              loop 0x941
0000096A  07                pop es
0000096B  5F                pop di
0000096C  5E                pop si
0000096D  FE4C02            dec byte [si+0x2]
00000970  807C02FF          cmp byte [si+0x2],0xff
00000974  7405              jz 0x97b
00000976  A5                movsw
00000977  A5                movsw
00000978  83EE04            sub si,0x4
0000097B  83C604            add si,0x4
0000097E  E95FFF            jmp 0x8e0
00000981  45                inc bp
00000982  3A05              cmp al,[di]
00000984  3AC5              cmp al,ch
00000986  39853900          cmp [di+0x39],ax
0000098A  0000              add [bx+si],al
0000098C  0000              add [bx+si],al
0000098E  0000              add [bx+si],al
00000990  0000              add [bx+si],al
00000992  0000              add [bx+si],al
00000994  0000              add [bx+si],al
00000996  0000              add [bx+si],al
00000998  0000              add [bx+si],al
0000099A  0F                db 0x0f
0000099B  F00000            lock add [bx+si],al
0000099E  3F                aas
0000099F  FC                cld
000009A0  0000              add [bx+si],al
000009A2  FC                cld
000009A3  3F                aas
000009A4  0000              add [bx+si],al
000009A6  F0                lock
000009A7  0F0000            sldt word [bx+si]
000009AA  F0                lock
000009AB  0F0000            sldt word [bx+si]
000009AE  FC                cld
000009AF  3F                aas
000009B0  0000              add [bx+si],al
000009B2  3F                aas
000009B3  FC                cld
000009B4  0000              add [bx+si],al
000009B6  0F                db 0x0f
000009B7  F00000            lock add [bx+si],al
000009BA  0000              add [bx+si],al
000009BC  0000              add [bx+si],al
000009BE  0000              add [bx+si],al
000009C0  0000              add [bx+si],al
000009C2  0000              add [bx+si],al
000009C4  0000              add [bx+si],al
000009C6  0000              add [bx+si],al
000009C8  0000              add [bx+si],al
000009CA  0000              add [bx+si],al
000009CC  0000              add [bx+si],al
000009CE  0000              add [bx+si],al
000009D0  0000              add [bx+si],al
000009D2  0F                db 0x0f
000009D3  F00000            lock add [bx+si],al
000009D6  3F                aas
000009D7  FC                cld
000009D8  0000              add [bx+si],al
000009DA  FF                db 0xff
000009DB  FF00              inc word [bx+si]
000009DD  00FC              add ah,bh
000009DF  3F                aas
000009E0  0003              add [bp+di],al
000009E2  F00FC003          lock xadd [bp+di],al
000009E6  C003C0            rol byte [bp+di],byte 0xc0
000009E9  03C0              add ax,ax
000009EB  03C0              add ax,ax
000009ED  03F0              add si,ax
000009EF  0FC000            xadd [bx+si],al
000009F2  FC                cld
000009F3  3F                aas
000009F4  0000              add [bx+si],al
000009F6  FF                db 0xff
000009F7  FF00              inc word [bx+si]
000009F9  003F              add [bx],bh
000009FB  FC                cld
000009FC  0000              add [bx+si],al
000009FE  0F                db 0x0f
000009FF  F00000            lock add [bx+si],al
00000A02  0000              add [bx+si],al
00000A04  0000              add [bx+si],al
00000A06  0000              add [bx+si],al
00000A08  0000              add [bx+si],al
00000A0A  0F                db 0x0f
00000A0B  F00000            lock add [bx+si],al
00000A0E  FF                db 0xff
00000A0F  FF00              inc word [bx+si]
00000A11  03FF              add di,di
00000A13  FFC0              inc ax
00000A15  0FFFFF            ud0 di,di
00000A18  F0                lock
00000A19  3F                aas
00000A1A  F0                lock
00000A1B  0FFC3F            paddb mm7,[bx]
00000A1E  C003FC            rol byte [bp+di],byte 0xfc
00000A21  FF00              inc word [bx+si]
00000A23  00FF              add bh,bh
00000A25  FF00              inc word [bx+si]
00000A27  00FF              add bh,bh
00000A29  FF00              inc word [bx+si]
00000A2B  00FF              add bh,bh
00000A2D  FF00              inc word [bx+si]
00000A2F  00FF              add bh,bh
00000A31  3F                aas
00000A32  C003FC            rol byte [bp+di],byte 0xfc
00000A35  3F                aas
00000A36  F0                lock
00000A37  0FFC0F            paddb mm1,[bx]
00000A3A  FF                db 0xff
00000A3B  FFF0              push ax
00000A3D  03FF              add di,di
00000A3F  FFC0              inc ax
00000A41  00FF              add bh,bh
00000A43  FF00              inc word [bx+si]
00000A45  000F              add [bx],cl
00000A47  F00000            lock add [bx+si],al
00000A4A  3F                aas
00000A4B  FC                cld
00000A4C  0003              add [bp+di],al
00000A4E  FF                db 0xff
00000A4F  FFC0              inc ax
00000A51  0FC003            xadd [bp+di],al
00000A54  F0                lock
00000A55  3F                aas
00000A56  0000              add [bx+si],al
00000A58  FC                cld
00000A59  3C00              cmp al,0x0
00000A5B  003C              add [si],bh
00000A5D  FC                cld
00000A5E  0000              add [bx+si],al
00000A60  3F                aas
00000A61  F00000            lock add [bx+si],al
00000A64  0F                db 0x0f
00000A65  F00000            lock add [bx+si],al
00000A68  0F                db 0x0f
00000A69  F00000            lock add [bx+si],al
00000A6C  0F                db 0x0f
00000A6D  F00000            lock add [bx+si],al
00000A70  0FFC00            paddb mm0,[bx+si]
00000A73  003F              add [bx],bh
00000A75  3C00              cmp al,0x0
00000A77  003C              add [si],bh
00000A79  3F                aas
00000A7A  0000              add [bx+si],al
00000A7C  FC                cld
00000A7D  0FC003            xadd [bp+di],al
00000A80  F0                lock
00000A81  03FF              add di,di
00000A83  FFC0              inc ax
00000A85  003F              add [bx],bh
00000A87  FC                cld
00000A88  00BF9650          add [bx+0x5096],bh
00000A8C  0E                push cs
00000A8D  07                pop es
00000A8E  33C0              xor ax,ax
00000A90  AB                stosw
00000A91  AB                stosw
00000A92  AB                stosw
00000A93  AB                stosw
00000A94  AA                stosb
00000A95  BF8250            mov di,0x5082
00000A98  B90800            mov cx,0x8
00000A9B  F3AB              rep stosw
00000A9D  EB3C              jmp 0xadb
00000A9F  E80404            call 0xea6
00000AA2  BF8250            mov di,0x5082
00000AA5  8A1635FF          mov dl,[0xff35]
00000AA9  FECA              dec dl
00000AAB  B90400            mov cx,0x4
00000AAE  51                push cx
00000AAF  80E23F            and dl,0x3f
00000AB2  B024              mov al,0x24
00000AB4  F6E2              mul dl
00000AB6  8BD8              mov bx,ax
00000AB8  81C300E0          add bx,0xe000
00000ABC  A08300            mov al,[0x83]
00000ABF  0403              add al,0x3
00000AC1  32E4              xor ah,ah
00000AC3  03D8              add bx,ax
00000AC5  B90400            mov cx,0x4
00000AC8  8A07              mov al,[bx]
00000ACA  0AC0              or al,al
00000ACC  7802              js 0xad0
00000ACE  32C0              xor al,al
00000AD0  8805              mov [di],al
00000AD2  43                inc bx
00000AD3  47                inc di
00000AD4  E2F2              loop 0xac8
00000AD6  FEC2              inc dl
00000AD8  59                pop cx
00000AD9  E2D3              loop 0xaae
00000ADB  A08400            mov al,[0x84]
00000ADE  32E4              xor ah,ah
00000AE0  B94001            mov cx,0x140
00000AE3  F7E1              mul cx
00000AE5  8A0E8300          mov cl,[0x83]
00000AE9  32ED              xor ch,ch
00000AEB  03C9              add cx,cx
00000AED  03C1              add ax,cx
00000AEF  053C02            add ax,0x23c
00000AF2  A36F50            mov [0x506f],ax
00000AF5  C606745000        mov byte [0x5074],0x0
00000AFA  BE9650            mov si,0x5096
00000AFD  BF8250            mov di,0x5082
00000B00  B90300            mov cx,0x3
00000B03  51                push cx
00000B04  B90300            mov cx,0x3
00000B07  51                push cx
00000B08  B8663B            mov ax,0x3b66
00000B0B  50                push ax
00000B0C  8A05              mov al,[di]
00000B0E  0A4501            or al,[di+0x1]
00000B11  0A4504            or al,[di+0x4]
00000B14  0A4505            or al,[di+0x5]
00000B17  7503              jnz 0xb1c
00000B19  E9F602            jmp 0xe12
00000B1C  F605FF            test byte [di],0xff
00000B1F  740F              jz 0xb30
00000B21  8A05              mov al,[di]
00000B23  56                push si
00000B24  E8E7FC            call 0x80e
00000B27  46                inc si
00000B28  46                inc si
00000B29  46                inc si
00000B2A  8A04              mov al,[si]
00000B2C  5E                pop si
00000B2D  E91A03            jmp 0xe4a
00000B30  F64501FF          test byte [di+0x1],0xff
00000B34  740F              jz 0xb45
00000B36  8A4501            mov al,[di+0x1]
00000B39  56                push si
00000B3A  E8D1FC            call 0x80e
00000B3D  46                inc si
00000B3E  46                inc si
00000B3F  8A04              mov al,[si]
00000B41  5E                pop si
00000B42  E90503            jmp 0xe4a
00000B45  F64504FF          test byte [di+0x4],0xff
00000B49  740E              jz 0xb59
00000B4B  8A4504            mov al,[di+0x4]
00000B4E  56                push si
00000B4F  E8BCFC            call 0x80e
00000B52  46                inc si
00000B53  8A04              mov al,[si]
00000B55  5E                pop si
00000B56  E9F102            jmp 0xe4a
00000B59  8A4505            mov al,[di+0x5]
00000B5C  56                push si
00000B5D  E8AEFC            call 0x80e
00000B60  8A0C              mov cl,[si]
00000B62  5E                pop si
00000B63  8804              mov [si],al
00000B65  8AC1              mov al,cl
00000B67  E9E002            jmp 0xe4a
00000B6A  FE067450          inc byte [0x5074]
00000B6E  47                inc di
00000B6F  46                inc si
00000B70  59                pop cx
00000B71  E294              loop 0xb07
00000B73  59                pop cx
00000B74  47                inc di
00000B75  E28C              loop 0xb03
00000B77  8A1E36FF          mov bl,[0xff36]
00000B7B  80E303            and bl,0x3
00000B7E  32FF              xor bh,bh
00000B80  03DB              add bx,bx
00000B82  2E8B870F50        mov ax,[cs:bx+0x500f]
00000B87  2EA36B50          mov [cs:0x506b],ax
00000B8B  2E8E062CFF        mov es,word [cs:0xff2c]
00000B90  A0E800            mov al,[0xe8]
00000B93  0A0639FF          or al,[0xff39]
00000B97  0A063AFF          or al,[0xff3a]
00000B9B  7403              jz 0xba0
00000B9D  E9C200            jmp 0xc62
00000BA0  B1FF              mov cl,0xff
00000BA2  BE1761            mov si,0x6117
00000BA5  F606C20001        test byte [0xc2],0x1
00000BAA  7405              jz 0xbb1
00000BAC  32C9              xor cl,cl
00000BAE  BEB961            mov si,0x61b9
00000BB1  F60640FFFF        test byte [0xff40],0xff
00000BB6  7442              jz 0xbfa
00000BB8  FEC1              inc cl
00000BBA  751A              jnz 0xbd6
00000BBC  A03FFF            mov al,[0xff3f]
00000BBF  D0E8              shr al,0x0
00000BC1  B109              mov cl,0x9
00000BC3  F6E1              mul cl
00000BC5  50                push ax
00000BC6  E83702            call 0xe00
00000BC9  B124              mov cl,0x24
00000BCB  F6E1              mul cl
00000BCD  5E                pop si
00000BCE  03F0              add si,ax
00000BD0  81C6C762          add si,0x62c7
00000BD4  EB6D              jmp 0xc43
00000BD6  A03FFF            mov al,[0xff3f]
00000BD9  D0E8              shr al,0x0
00000BDB  B109              mov cl,0x9
00000BDD  F6E1              mul cl
00000BDF  052400            add ax,0x24
00000BE2  8A1641FF          mov dl,[0xff41]
00000BE6  FECA              dec dl
00000BE8  7505              jnz 0xbef
00000BEA  052400            add ax,0x24
00000BED  EB07              jmp 0xbf6
00000BEF  FECA              dec dl
00000BF1  7503              jnz 0xbf6
00000BF3  B86300            mov ax,0x63
00000BF6  03F0              add si,ax
00000BF8  EB49              jmp 0xc43
00000BFA  E80302            call 0xe00
00000BFD  0AC0              or al,al
00000BFF  7424              jz 0xc25
00000C01  FEC8              dec al
00000C03  8AC8              mov cl,al
00000C05  F606C20001        test byte [0xc2],0x1
00000C0A  7519              jnz 0xc25
00000C0C  B86C00            mov ax,0x6c
00000C0F  8A1638FF          mov dl,[0xff38]
00000C13  80E209            and dl,0x9
00000C16  32F6              xor dh,dh
00000C18  03C2              add ax,dx
00000C1A  0AC9              or cl,cl
00000C1C  7403              jz 0xc21
00000C1E  051B00            add ax,0x1b
00000C21  03F0              add si,ax
00000C23  EB1E              jmp 0xc43
00000C25  F60638FFFF        test byte [0xff38],0xff
00000C2A  7536              jnz 0xc62
00000C2C  A0E700            mov al,[0xe7]
00000C2F  3C80              cmp al,0x80
00000C31  742F              jz 0xc62
00000C33  0402              add al,0x2
00000C35  2403              and al,0x3
00000C37  A801              test al,0x1
00000C39  7527              jnz 0xc62
00000C3B  B109              mov cl,0x9
00000C3D  F6E1              mul cl
00000C3F  03F0              add si,ax
00000C41  EB14              jmp 0xc57
00000C43  F60638FFFF        test byte [0xff38],0xff
00000C48  740D              jz 0xc57
00000C4A  B90600            mov cx,0x6
00000C4D  C606745003        mov byte [0x5074],0x3
00000C52  E86901            call 0xdbe
00000C55  EB0B              jmp 0xc62
00000C57  B90900            mov cx,0x9
00000C5A  C606745000        mov byte [0x5074],0x0
00000C5F  E85C01            call 0xdbe
00000C62  BE0E61            mov si,0x610e
00000C65  F6063AFFFF        test byte [0xff3a],0xff
00000C6A  7568              jnz 0xcd4
00000C6C  BEEA60            mov si,0x60ea
00000C6F  F60639FFFF        test byte [0xff39],0xff
00000C74  7553              jnz 0xcc9
00000C76  BE7560            mov si,0x6075
00000C79  F606C20001        test byte [0xc2],0x1
00000C7E  7503              jnz 0xc83
00000C80  BE0060            mov si,0x6000
00000C83  F606E800FF        test byte [0xe8],0xff
00000C88  7405              jz 0xc8f
00000C8A  83C65A            add si,0x5a
00000C8D  EB3A              jmp 0xcc9
00000C8F  B82D00            mov ax,0x2d
00000C92  F60638FFFF        test byte [0xff38],0xff
00000C97  7539              jnz 0xcd2
00000C99  B83F00            mov ax,0x3f
00000C9C  F6063DFF80        test byte [0xff3d],0x80
00000CA1  752F              jnz 0xcd2
00000CA3  8A0E42FF          mov cl,[0xff42]
00000CA7  B84800            mov ax,0x48
00000CAA  FEC9              dec cl
00000CAC  7424              jz 0xcd2
00000CAE  B85100            mov ax,0x51
00000CB1  FEC9              dec cl
00000CB3  741D              jz 0xcd2
00000CB5  B83600            mov ax,0x36
00000CB8  803E3DFF7F        cmp byte [0xff3d],0x7f
00000CBD  7413              jz 0xcd2
00000CBF  B82400            mov ax,0x24
00000CC2  803EE70080        cmp byte [0xe7],0x80
00000CC7  7409              jz 0xcd2
00000CC9  A0E700            mov al,[0xe7]
00000CCC  2403              and al,0x3
00000CCE  B109              mov cl,0x9
00000CD0  F6E1              mul cl
00000CD2  03F0              add si,ax
00000CD4  B90900            mov cx,0x9
00000CD7  C606745000        mov byte [0x5074],0x0
00000CDC  E8DF00            call 0xdbe
00000CDF  F606E800FF        test byte [0xe8],0xff
00000CE4  7401              jz 0xce7
00000CE6  C3                ret
00000CE7  B1FF              mov cl,0xff
00000CE9  BEB961            mov si,0x61b9
00000CEC  F606C20001        test byte [0xc2],0x1
00000CF1  7505              jnz 0xcf8
00000CF3  32C9              xor cl,cl
00000CF5  BE1761            mov si,0x6117
00000CF8  A039FF            mov al,[0xff39]
00000CFB  0A063AFF          or al,[0xff3a]
00000CFF  7417              jz 0xd18
00000D01  E8FC00            call 0xe00
00000D04  0AC0              or al,al
00000D06  7501              jnz 0xd09
00000D08  C3                ret
00000D09  FEC8              dec al
00000D0B  D0E8              shr al,0x0
00000D0D  1AC0              sbb al,al
00000D0F  241B              and al,0x1b
00000D11  047E              add al,0x7e
00000D13  32E4              xor ah,ah
00000D15  E98900            jmp 0xda1
00000D18  F60640FFFF        test byte [0xff40],0xff
00000D1D  7442              jz 0xd61
00000D1F  FEC1              inc cl
00000D21  751A              jnz 0xd3d
00000D23  A03FFF            mov al,[0xff3f]
00000D26  D0E8              shr al,0x0
00000D28  B109              mov cl,0x9
00000D2A  F6E1              mul cl
00000D2C  50                push ax
00000D2D  E8D000            call 0xe00
00000D30  B124              mov cl,0x24
00000D32  F6E1              mul cl
00000D34  5E                pop si
00000D35  03F0              add si,ax
00000D37  81C65B62          add si,0x625b
00000D3B  EB66              jmp 0xda3
00000D3D  A03FFF            mov al,[0xff3f]
00000D40  D0E8              shr al,0x0
00000D42  B109              mov cl,0x9
00000D44  F6E1              mul cl
00000D46  052400            add ax,0x24
00000D49  8A1641FF          mov dl,[0xff41]
00000D4D  FECA              dec dl
00000D4F  7505              jnz 0xd56
00000D51  052400            add ax,0x24
00000D54  EB07              jmp 0xd5d
00000D56  FECA              dec dl
00000D58  7503              jnz 0xd5d
00000D5A  B86300            mov ax,0x63
00000D5D  03F0              add si,ax
00000D5F  EB42              jmp 0xda3
00000D61  F606C20001        test byte [0xc2],0x1
00000D66  741F              jz 0xd87
00000D68  E89500            call 0xe00
00000D6B  0AC0              or al,al
00000D6D  7418              jz 0xd87
00000D6F  FEC8              dec al
00000D71  8AC8              mov cl,al
00000D73  A038FF            mov al,[0xff38]
00000D76  2409              and al,0x9
00000D78  046C              add al,0x6c
00000D7A  32E4              xor ah,ah
00000D7C  0AC9              or cl,cl
00000D7E  7403              jz 0xd83
00000D80  051B00            add ax,0x1b
00000D83  03F0              add si,ax
00000D85  EB1C              jmp 0xda3
00000D87  B81B00            mov ax,0x1b
00000D8A  F60638FFFF        test byte [0xff38],0xff
00000D8F  7510              jnz 0xda1
00000D91  8A0EE700          mov cl,[0xe7]
00000D95  80F980            cmp cl,0x80
00000D98  7407              jz 0xda1
00000D9A  80E103            and cl,0x3
00000D9D  B009              mov al,0x9
00000D9F  F6E1              mul cl
00000DA1  03F0              add si,ax
00000DA3  F60638FFFF        test byte [0xff38],0xff
00000DA8  740A              jz 0xdb4
00000DAA  B90600            mov cx,0x6
00000DAD  C606745003        mov byte [0x5074],0x3
00000DB2  EB0A              jmp 0xdbe
00000DB4  B90900            mov cx,0x9
00000DB7  C606745000        mov byte [0x5074],0x0
00000DBC  EB00              jmp 0xdbe
00000DBE  51                push cx
00000DBF  268A04            mov al,[es:si]
00000DC2  0AC0              or al,al
00000DC4  7431              jz 0xdf7
00000DC6  06                push es
00000DC7  1E                push ds
00000DC8  56                push si
00000DC9  57                push di
00000DCA  B510              mov ch,0x10
00000DCC  F6E5              mul ch
00000DCE  8BF0              mov si,ax
00000DD0  81C63363          add si,0x6333
00000DD4  8BE8              mov bp,ax
00000DD6  81C500D0          add bp,0xd000
00000DDA  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000DDF  8BFA              mov di,dx
00000DE1  0E                push cs
00000DE2  07                pop es
00000DE3  2EA07450          mov al,[cs:0x5074]
00000DE7  B110              mov cl,0x10
00000DE9  F6E1              mul cl
00000DEB  059F52            add ax,0x529f
00000DEE  8BF8              mov di,ax
00000DF0  E81BF9            call 0x70e
00000DF3  5F                pop di
00000DF4  5E                pop si
00000DF5  1F                pop ds
00000DF6  07                pop es
00000DF7  46                inc si
00000DF8  FE067450          inc byte [0x5074]
00000DFC  59                pop cx
00000DFD  E2BF              loop 0xdbe
00000DFF  C3                ret
00000E00  A09300            mov al,[0x93]
00000E03  0AC0              or al,al
00000E05  7501              jnz 0xe08
00000E07  C3                ret
00000E08  3C04              cmp al,0x4
00000E0A  B001              mov al,0x1
00000E0C  7301              jnc 0xe0f
00000E0E  C3                ret
00000E0F  B002              mov al,0x2
00000E11  C3                ret
00000E12  8A04              mov al,[si]
00000E14  1E                push ds
00000E15  56                push si
00000E16  57                push di
00000E17  50                push ax
00000E18  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000E1D  0E                push cs
00000E1E  07                pop es
00000E1F  2EA07450          mov al,[cs:0x5074]
00000E23  B110              mov cl,0x10
00000E25  F6E1              mul cl
00000E27  059F52            add ax,0x529f
00000E2A  8BF8              mov di,ax
00000E2C  58                pop ax
00000E2D  0AC0              or al,al
00000E2F  7412              jz 0xe43
00000E31  FEC8              dec al
00000E33  B110              mov cl,0x10
00000E35  F6E1              mul cl
00000E37  053080            add ax,0x8030
00000E3A  8BF0              mov si,ax
00000E3C  E8BAF9            call 0x7f9
00000E3F  5F                pop di
00000E40  5E                pop si
00000E41  1F                pop ds
00000E42  C3                ret
00000E43  E8B9F9            call 0x7ff
00000E46  5F                pop di
00000E47  5E                pop si
00000E48  1F                pop ds
00000E49  C3                ret
00000E4A  1E                push ds
00000E4B  56                push si
00000E4C  57                push di
00000E4D  8AC8              mov cl,al
00000E4F  8A04              mov al,[si]
00000E51  0AC0              or al,al
00000E53  7903              jns 0xe58
00000E55  E8AFF9            call 0x807
00000E58  50                push ax
00000E59  8A1E7650          mov bl,[0x5076]
00000E5D  32FF              xor bh,bh
00000E5F  03DB              add bx,bx
00000E61  2E8B970F50        mov dx,[cs:bx+0x500f]
00000E66  2E89166B50        mov [cs:0x506b],dx
00000E6B  8AC1              mov al,cl
00000E6D  B510              mov ch,0x10
00000E6F  F6E5              mul ch
00000E71  8BF0              mov si,ax
00000E73  81C60040          add si,0x4000
00000E77  8BE8              mov bp,ax
00000E79  81C500A0          add bp,0xa000
00000E7D  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000E82  0E                push cs
00000E83  07                pop es
00000E84  2EA07450          mov al,[cs:0x5074]
00000E88  B110              mov cl,0x10
00000E8A  F6E1              mul cl
00000E8C  059F52            add ax,0x529f
00000E8F  8BF8              mov di,ax
00000E91  58                pop ax
00000E92  0AC0              or al,al
00000E94  7409              jz 0xe9f
00000E96  8AC8              mov cl,al
00000E98  E85DF8            call 0x6f8
00000E9B  5F                pop di
00000E9C  5E                pop si
00000E9D  1F                pop ds
00000E9E  C3                ret
00000E9F  E884F8            call 0x726
00000EA2  5F                pop di
00000EA3  5E                pop si
00000EA4  1F                pop ds
00000EA5  C3                ret
00000EA6  8A0E8400          mov cl,[0x84]
00000EAA  B024              mov al,0x24
00000EAC  F6E1              mul cl
00000EAE  8A0E8300          mov cl,[0x83]
00000EB2  80C104            add cl,0x4
00000EB5  32ED              xor ch,ch
00000EB7  03C1              add ax,cx
00000EB9  030631FF          add ax,[0xff31]
00000EBD  8BF0              mov si,ax
00000EBF  E80D07            call 0x15cf
00000EC2  BF9650            mov di,0x5096
00000EC5  0E                push cs
00000EC6  07                pop es
00000EC7  B90300            mov cx,0x3
00000ECA  A5                movsw
00000ECB  A4                movsb
00000ECC  83C621            add si,0x21
00000ECF  E8FD06            call 0x15cf
00000ED2  E2F6              loop 0xeca
00000ED4  C3                ret
00000ED5  A07350            mov al,[0x5073]
00000ED8  F6D8              neg al
00000EDA  0412              add al,0x12
00000EDC  8AC8              mov cl,al
00000EDE  F60643FFFF        test byte [0xff43],0xff
00000EE3  750D              jnz 0xef2
00000EE5  A08400            mov al,[0x84]
00000EE8  2C02              sub al,0x2
00000EEA  3AC1              cmp al,cl
00000EEC  7503              jnz 0xef1
00000EEE  E85602            call 0x1147
00000EF1  C3                ret
00000EF2  A08400            mov al,[0x84]
00000EF5  2C05              sub al,0x5
00000EF7  3AC8              cmp cl,al
00000EF9  7301              jnc 0xefc
00000EFB  C3                ret
00000EFC  7506              jnz 0xf04
00000EFE  E8FE00            call 0xfff
00000F01  E94302            jmp 0x1147
00000F04  040A              add al,0xa
00000F06  3AC1              cmp al,cl
00000F08  7401              jz 0xf0b
00000F0A  C3                ret
00000F0B  E9A201            jmp 0x10b0
00000F0E  F60643FFFF        test byte [0xff43],0xff
00000F13  7501              jnz 0xf16
00000F15  C3                ret
00000F16  06                push es
00000F17  56                push si
00000F18  57                push di
00000F19  53                push bx
00000F1A  2E8E062CFF        mov es,word [cs:0xff2c]
00000F1F  FE0646FF          inc byte [0xff46]
00000F23  A045FF            mov al,[0xff45]
00000F26  0AC0              or al,al
00000F28  745C              jz 0xf86
00000F2A  FEC8              dec al
00000F2C  742D              jz 0xf5b
00000F2E  803E46FF05        cmp byte [0xff46],0x5
00000F33  7203              jc 0xf38
00000F35  E9B800            jmp 0xff0
00000F38  32C9              xor cl,cl
00000F3A  BE6EB1            mov si,0xb16e
00000F3D  C7067C5001FF      mov word [0x507c],0xff01
00000F43  BA3E01            mov dx,0x13e
00000F46  F606C20001        test byte [0xc2],0x1
00000F4B  7577              jnz 0xfc4
00000F4D  BEBEB0            mov si,0xb0be
00000F50  C7067C500100      mov word [0x507c],0x1
00000F56  BA4001            mov dx,0x140
00000F59  EB69              jmp 0xfc4
00000F5B  803E46FF05        cmp byte [0xff46],0x5
00000F60  7203              jc 0xf65
00000F62  E98B00            jmp 0xff0
00000F65  8A1E46FF          mov bl,[0xff46]
00000F69  FECB              dec bl
00000F6B  32FF              xor bh,bh
00000F6D  8ACB              mov cl,bl
00000F6F  03DB              add bx,bx
00000F71  BF9EB1            mov di,0xb19e
00000F74  BE2EB1            mov si,0xb12e
00000F77  F606C20001        test byte [0xc2],0x1
00000F7C  752E              jnz 0xfac
00000F7E  BF8AB1            mov di,0xb18a
00000F81  BE7EB0            mov si,0xb07e
00000F84  EB26              jmp 0xfac
00000F86  803E46FF07        cmp byte [0xff46],0x7
00000F8B  7363              jnc 0xff0
00000F8D  8A1E46FF          mov bl,[0xff46]
00000F91  FECB              dec bl
00000F93  32FF              xor bh,bh
00000F95  8ACB              mov cl,bl
00000F97  03DB              add bx,bx
00000F99  BF92B1            mov di,0xb192
00000F9C  BECEB0            mov si,0xb0ce
00000F9F  F606C20001        test byte [0xc2],0x1
00000FA4  7506              jnz 0xfac
00000FA6  BF7EB1            mov di,0xb17e
00000FA9  BE1EB0            mov si,0xb01e
00000FAC  268B19            mov bx,[es:bx+di]
00000FAF  891E7C50          mov [0x507c],bx
00000FB3  8AC3              mov al,bl
00000FB5  98                cbw
00000FB6  BA4001            mov dx,0x140
00000FB9  F7EA              imul dx
00000FBB  8BD0              mov dx,ax
00000FBD  8AC7              mov al,bh
00000FBF  98                cbw
00000FC0  03C0              add ax,ax
00000FC2  03D0              add dx,ax
00000FC4  8B3E6F50          mov di,[0x506f]
00000FC8  03FA              add di,dx
00000FCA  F60638FFFF        test byte [0xff38],0xff
00000FCF  7404              jz 0xfd5
00000FD1  81C74001          add di,0x140
00000FD5  893E7850          mov [0x5078],di
00000FD9  32ED              xor ch,ch
00000FDB  03C9              add cx,cx
00000FDD  03C9              add cx,cx
00000FDF  03C9              add cx,cx
00000FE1  03C9              add cx,cx
00000FE3  03F1              add si,cx
00000FE5  89367A50          mov [0x507a],si
00000FE9  5B                pop bx
00000FEA  5F                pop di
00000FEB  5E                pop si
00000FEC  07                pop es
00000FED  E9C000            jmp 0x10b0
00000FF0  C60643FF00        mov byte [0xff43],0x0
00000FF5  C60646FF00        mov byte [0xff46],0x0
00000FFA  5B                pop bx
00000FFB  5F                pop di
00000FFC  5E                pop si
00000FFD  07                pop es
00000FFE  C3                ret
00000FFF  F60644FFFF        test byte [0xff44],0xff
00001004  7501              jnz 0x1007
00001006  C3                ret
00001007  06                push es
00001008  57                push di
00001009  56                push si
0000100A  53                push bx
0000100B  E83300            call 0x1041
0000100E  5B                pop bx
0000100F  5E                pop si
00001010  5F                pop di
00001011  07                pop es
00001012  C60644FF00        mov byte [0xff44],0x0
00001017  C3                ret
00001018  1E                push ds
00001019  0E                push cs
0000101A  07                pop es
0000101B  2E8B367850        mov si,[cs:0x5078]
00001020  B800B8            mov ax,0xb800
00001023  8ED8              mov ds,ax
00001025  BF9F51            mov di,0x519f
00001028  B92000            mov cx,0x20
0000102B  A5                movsw
0000102C  A5                movsw
0000102D  A5                movsw
0000102E  A5                movsw
0000102F  81C6F81F          add si,0x1ff8
00001033  81FE0040          cmp si,0x4000
00001037  7204              jc 0x103d
00001039  81C650C0          add si,0xc050
0000103D  E2EC              loop 0x102b
0000103F  1F                pop ds
00001040  C3                ret
00001041  2E8B3E7850        mov di,[cs:0x5078]
00001046  B800B8            mov ax,0xb800
00001049  8EC0              mov es,ax
0000104B  BE9F51            mov si,0x519f
0000104E  B92000            mov cx,0x20
00001051  A5                movsw
00001052  A5                movsw
00001053  A5                movsw
00001054  A5                movsw
00001055  81C7F81F          add di,0x1ff8
00001059  81FF0040          cmp di,0x4000
0000105D  7204              jc 0x1063
0000105F  81C750C0          add di,0xc050
00001063  E2EC              loop 0x1051
00001065  C3                ret
00001066  A08400            mov al,[0x84]
00001069  02067C50          add al,[0x507c]
0000106D  243F              and al,0x3f
0000106F  B124              mov cl,0x24
00001071  F6E1              mul cl
00001073  8A0E8300          mov cl,[0x83]
00001077  020E7D50          add cl,[0x507d]
0000107B  80C104            add cl,0x4
0000107E  32ED              xor ch,ch
00001080  03C1              add ax,cx
00001082  8BF0              mov si,ax
00001084  033631FF          add si,[0xff31]
00001088  E84405            call 0x15cf
0000108B  B90400            mov cx,0x4
0000108E  51                push cx
0000108F  B90400            mov cx,0x4
00001092  51                push cx
00001093  8A1C              mov bl,[si]
00001095  46                inc si
00001096  80E37F            and bl,0x7f
00001099  32FF              xor bh,bh
0000109B  03DB              add bx,bx
0000109D  C7879F500000      mov word [bx+0x509f],0x0
000010A3  59                pop cx
000010A4  E2EC              loop 0x1092
000010A6  83C620            add si,0x20
000010A9  E82305            call 0x15cf
000010AC  59                pop cx
000010AD  E2DF              loop 0x108e
000010AF  C3                ret
000010B0  F60643FFFF        test byte [0xff43],0xff
000010B5  7501              jnz 0x10b8
000010B7  C3                ret
000010B8  C60644FFFF        mov byte [0xff44],0xff
000010BD  06                push es
000010BE  1E                push ds
000010BF  57                push di
000010C0  56                push si
000010C1  53                push bx
000010C2  E8A1FF            call 0x1066
000010C5  E850FF            call 0x1018
000010C8  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000010CD  B800B8            mov ax,0xb800
000010D0  8EC0              mov es,ax
000010D2  2E8B3E7850        mov di,[cs:0x5078]
000010D7  2E8B367A50        mov si,[cs:0x507a]
000010DC  B90400            mov cx,0x4
000010DF  51                push cx
000010E0  57                push di
000010E1  B90400            mov cx,0x4
000010E4  51                push cx
000010E5  AC                lodsb
000010E6  3CFF              cmp al,0xff
000010E8  7506              jnz 0x10f0
000010EA  81C74001          add di,0x140
000010EE  EB2E              jmp 0x111e
000010F0  56                push si
000010F1  32E4              xor ah,ah
000010F3  03C0              add ax,ax
000010F5  03C0              add ax,ax
000010F7  03C0              add ax,ax
000010F9  03C0              add ax,ax
000010FB  8BF0              mov si,ax
000010FD  033600B0          add si,[0xb000]
00001101  B90800            mov cx,0x8
00001104  51                push cx
00001105  AD                lodsw
00001106  E8CA05            call 0x16d3
00001109  260905            or [es:di],ax
0000110C  81C70020          add di,0x2000
00001110  81FF0040          cmp di,0x4000
00001114  7204              jc 0x111a
00001116  81C750C0          add di,0xc050
0000111A  59                pop cx
0000111B  E2E7              loop 0x1104
0000111D  5E                pop si
0000111E  59                pop cx
0000111F  E2C3              loop 0x10e4
00001121  5F                pop di
00001122  47                inc di
00001123  47                inc di
00001124  59                pop cx
00001125  E2B8              loop 0x10df
00001127  5B                pop bx
00001128  5E                pop si
00001129  5F                pop di
0000112A  1F                pop ds
0000112B  07                pop es
0000112C  C3                ret
0000112D  D0EB              shr bl,0x0
0000112F  1BFF              sbb di,di
00001131  81E70020          and di,0x2000
00001135  B050              mov al,0x50
00001137  F6E3              mul bl
00001139  8ADF              mov bl,bh
0000113B  32FF              xor bh,bh
0000113D  03C3              add ax,bx
0000113F  03F8              add di,ax
00001141  893E6F50          mov [0x506f],di
00001145  EB0D              jmp 0x1154
00001147  F60637FFFF        test byte [0xff37],0xff
0000114C  7401              jz 0x114f
0000114E  C3                ret
0000114F  C60637FFFF        mov byte [0xff37],0xff
00001154  06                push es
00001155  1E                push ds
00001156  56                push si
00001157  57                push di
00001158  53                push bx
00001159  B800B8            mov ax,0xb800
0000115C  8EC0              mov es,ax
0000115E  BE9F52            mov si,0x529f
00001161  2E8B3E6F50        mov di,[cs:0x506f]
00001166  B90300            mov cx,0x3
00001169  51                push cx
0000116A  B90300            mov cx,0x3
0000116D  51                push cx
0000116E  57                push di
0000116F  E81CF6            call 0x78e
00001172  5F                pop di
00001173  47                inc di
00001174  47                inc di
00001175  59                pop cx
00001176  E2F5              loop 0x116d
00001178  81C73A01          add di,0x13a
0000117C  59                pop cx
0000117D  E2EA              loop 0x1169
0000117F  5B                pop bx
00001180  5F                pop di
00001181  5E                pop si
00001182  1F                pop ds
00001183  07                pop es
00001184  C3                ret
00001185  1E                push ds
00001186  56                push si
00001187  FEC8              dec al
00001189  B110              mov cl,0x10
0000118B  F6E1              mul cl
0000118D  053080            add ax,0x8030
00001190  8BF0              mov si,ax
00001192  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001197  B800B8            mov ax,0xb800
0000119A  8EC0              mov es,ax
0000119C  B90800            mov cx,0x8
0000119F  51                push cx
000011A0  AD                lodsw
000011A1  8BD8              mov bx,ax
000011A3  BA0300            mov dx,0x3
000011A6  B90800            mov cx,0x8
000011A9  85DA              test dx,bx
000011AB  7402              jz 0x11af
000011AD  0BDA              or bx,dx
000011AF  03D2              add dx,dx
000011B1  03D2              add dx,dx
000011B3  E2F4              loop 0x11a9
000011B5  F7D3              not bx
000011B7  26211D            and [es:di],bx
000011BA  260905            or [es:di],ax
000011BD  81C70020          add di,0x2000
000011C1  81FF0040          cmp di,0x4000
000011C5  7204              jc 0x11cb
000011C7  81C750C0          add di,0xc050
000011CB  59                pop cx
000011CC  E2D1              loop 0x119f
000011CE  5E                pop si
000011CF  1F                pop ds
000011D0  C3                ret
000011D1  C60644FF00        mov byte [0xff44],0x0
000011D6  B800B8            mov ax,0xb800
000011D9  8EC0              mov es,ax
000011DB  C606805008        mov byte [0x5080],0x8
000011E0  C7066D503C02      mov word [0x506d],0x23c
000011E6  C6061AFF00        mov byte [0xff1a],0x0
000011EB  8B3631FF          mov si,[0xff31]
000011EF  BF00E9            mov di,0xe900
000011F2  B91200            mov cx,0x12
000011F5  51                push cx
000011F6  83C604            add si,0x4
000011F9  33DB              xor bx,bx
000011FB  B91C00            mov cx,0x1c
000011FE  51                push cx
000011FF  AC                lodsb
00001200  E82300            call 0x1226
00001203  47                inc di
00001204  FEC3              inc bl
00001206  59                pop cx
00001207  E2F5              loop 0x11fe
00001209  83C604            add si,0x4
0000120C  E8C003            call 0x15cf
0000120F  81066D504001      add word [0x506d],0x140
00001215  59                pop cx
00001216  E2DD              loop 0x11f5
00001218  803E1AFF10        cmp byte [0xff1a],0x10
0000121D  72F9              jc 0x1218
0000121F  FE0E8050          dec byte [0x5080]
00001223  75BB              jnz 0x11e0
00001225  C3                ret
00001226  803DFF            cmp byte [di],0xff
00001229  7501              jnz 0x122c
0000122B  C3                ret
0000122C  803DFC            cmp byte [di],0xfc
0000122F  7501              jnz 0x1232
00001231  C3                ret
00001232  1E                push ds
00001233  57                push di
00001234  56                push si
00001235  53                push bx
00001236  50                push ax
00001237  8A268050          mov ah,[0x5080]
0000123B  FECC              dec ah
0000123D  D0EC              shr ah,0x0
0000123F  D0EC              shr ah,0x0
00001241  D0EC              shr ah,0x0
00001243  1AE4              sbb ah,ah
00001245  80F4CC            xor ah,0xcc
00001248  2E88268150        mov [cs:0x5081],ah
0000124D  03DB              add bx,bx
0000124F  031E6D50          add bx,[0x506d]
00001253  8BFB              mov di,bx
00001255  58                pop ax
00001256  A8FF              test al,0xff
00001258  7452              jz 0x12ac
0000125A  FEC8              dec al
0000125C  B110              mov cl,0x10
0000125E  F6E1              mul cl
00001260  053080            add ax,0x8030
00001263  8BF0              mov si,ax
00001265  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000126A  56                push si
0000126B  57                push di
0000126C  2EA08050          mov al,[cs:0x5080]
00001270  2403              and al,0x3
00001272  F6D8              neg al
00001274  0403              add al,0x3
00001276  E86600            call 0x12df
00001279  E81300            call 0x128f
0000127C  5F                pop di
0000127D  5E                pop si
0000127E  2EA08050          mov al,[cs:0x5080]
00001282  E85A00            call 0x12df
00001285  47                inc di
00001286  46                inc si
00001287  E80500            call 0x128f
0000128A  5B                pop bx
0000128B  5E                pop si
0000128C  5F                pop di
0000128D  1F                pop ds
0000128E  C3                ret
0000128F  B90200            mov cx,0x2
00001292  2E8A1E8150        mov bl,[cs:0x5081]
00001297  AC                lodsb
00001298  22C3              and al,bl
0000129A  F6D3              not bl
0000129C  26201D            and [es:di],bl
0000129F  260805            or [es:di],al
000012A2  81C7A000          add di,0xa0
000012A6  83C607            add si,0x7
000012A9  E2E7              loop 0x1292
000012AB  C3                ret
000012AC  57                push di
000012AD  2EA08050          mov al,[cs:0x5080]
000012B1  2403              and al,0x3
000012B3  F6D8              neg al
000012B5  0403              add al,0x3
000012B7  E82500            call 0x12df
000012BA  E81100            call 0x12ce
000012BD  5F                pop di
000012BE  2EA08050          mov al,[cs:0x5080]
000012C2  E81A00            call 0x12df
000012C5  47                inc di
000012C6  E80500            call 0x12ce
000012C9  5B                pop bx
000012CA  5E                pop si
000012CB  5F                pop di
000012CC  1F                pop ds
000012CD  C3                ret
000012CE  2EA08150          mov al,[cs:0x5081]
000012D2  F6D0              not al
000012D4  262005            and [es:di],al
000012D7  81C7A000          add di,0xa0
000012DB  262005            and [es:di],al
000012DE  C3                ret
000012DF  2403              and al,0x3
000012E1  32E4              xor ah,ah
000012E3  50                push ax
000012E4  03C0              add ax,ax
000012E6  03F0              add si,ax
000012E8  58                pop ax
000012E9  0BC0              or ax,ax
000012EB  7501              jnz 0x12ee
000012ED  C3                ret
000012EE  81C70020          add di,0x2000
000012F2  81FF0040          cmp di,0x4000
000012F6  7204              jc 0x12fc
000012F8  81C750C0          add di,0xc050
000012FC  48                dec ax
000012FD  75EF              jnz 0x12ee
000012FF  C3                ret
00001300  A08300            mov al,[0x83]
00001303  02C0              add al,al
00001305  02C0              add al,al
00001307  02C0              add al,al
00001309  8A268400          mov ah,[0x84]
0000130D  02E4              add ah,ah
0000130F  02E4              add ah,ah
00001311  02E4              add ah,ah
00001313  A26B50            mov [0x506b],al
00001316  88266C50          mov [0x506c],ah
0000131A  E82B02            call 0x1548
0000131D  C6068050AA        mov byte [0x5080],0xaa
00001322  E80B00            call 0x1330
00001325  C606805000        mov byte [0x5080],0x0
0000132A  E80300            call 0x1330
0000132D  E91802            jmp 0x1548
00001330  A06B50            mov al,[0x506b]
00001333  FEC8              dec al
00001335  8AD8              mov bl,al
00001337  0419              add al,0x19
00001339  8AD0              mov dl,al
0000133B  A06C50            mov al,[0x506c]
0000133E  FEC8              dec al
00001340  8AF8              mov bh,al
00001342  0419              add al,0x19
00001344  8AF0              mov dh,al
00001346  E82F00            call 0x1378
00001349  A06B50            mov al,[0x506b]
0000134C  2C05              sub al,0x5
0000134E  8AD8              mov bl,al
00001350  0421              add al,0x21
00001352  8AD0              mov dl,al
00001354  A06C50            mov al,[0x506c]
00001357  2C05              sub al,0x5
00001359  8AF8              mov bh,al
0000135B  0421              add al,0x21
0000135D  8AF0              mov dh,al
0000135F  E81600            call 0x1378
00001362  A06B50            mov al,[0x506b]
00001365  2C09              sub al,0x9
00001367  8AD8              mov bl,al
00001369  0429              add al,0x29
0000136B  8AD0              mov dl,al
0000136D  A06C50            mov al,[0x506c]
00001370  2C09              sub al,0x9
00001372  8AF8              mov bh,al
00001374  0429              add al,0x29
00001376  8AF0              mov dh,al
00001378  B90900            mov cx,0x9
0000137B  51                push cx
0000137C  52                push dx
0000137D  53                push bx
0000137E  E82900            call 0x13aa
00001381  5B                pop bx
00001382  5A                pop dx
00001383  80EB0C            sub bl,0xc
00001386  7302              jnc 0x138a
00001388  32DB              xor bl,bl
0000138A  80EF0C            sub bh,0xc
0000138D  7302              jnc 0x1391
0000138F  32FF              xor bh,bh
00001391  80C20C            add dl,0xc
00001394  7302              jnc 0x1398
00001396  B2FF              mov dl,0xff
00001398  80C60C            add dh,0xc
0000139B  7302              jnc 0x139f
0000139D  B6FF              mov dh,0xff
0000139F  52                push dx
000013A0  53                push bx
000013A1  E87101            call 0x1515
000013A4  5B                pop bx
000013A5  5A                pop dx
000013A6  59                pop cx
000013A7  E2D2              loop 0x137b
000013A9  C3                ret
000013AA  B800B8            mov ax,0xb800
000013AD  8EC0              mov es,ax
000013AF  52                push dx
000013B0  53                push bx
000013B1  8AF7              mov dh,bh
000013B3  E88600            call 0x143c
000013B6  5B                pop bx
000013B7  5A                pop dx
000013B8  52                push dx
000013B9  53                push bx
000013BA  8AFE              mov bh,dh
000013BC  E87D00            call 0x143c
000013BF  5B                pop bx
000013C0  5A                pop dx
000013C1  52                push dx
000013C2  53                push bx
000013C3  8AD3              mov dl,bl
000013C5  E80400            call 0x13cc
000013C8  5B                pop bx
000013C9  5A                pop dx
000013CA  8ADA              mov bl,dl
000013CC  3AF7              cmp dh,bh
000013CE  7302              jnc 0x13d2
000013D0  87D3              xchg dx,bx
000013D2  0ADB              or bl,bl
000013D4  7501              jnz 0x13d7
000013D6  C3                ret
000013D7  80FBDF            cmp bl,0xdf
000013DA  7201              jc 0x13dd
000013DC  C3                ret
000013DD  0AFF              or bh,bh
000013DF  7502              jnz 0x13e3
000013E1  B701              mov bh,0x1
000013E3  80FE8F            cmp dh,0x8f
000013E6  7202              jc 0x13ea
000013E8  B68E              mov dh,0x8e
000013EA  8AC6              mov al,dh
000013EC  2AC7              sub al,bh
000013EE  FEC0              inc al
000013F0  50                push ax
000013F1  8AC7              mov al,bh
000013F3  E80D01            call 0x1503
000013F6  8AC3              mov al,bl
000013F8  D0E8              shr al,0x0
000013FA  D0E8              shr al,0x0
000013FC  32E4              xor ah,ah
000013FE  03F8              add di,ax
00001400  59                pop cx
00001401  32ED              xor ch,ch
00001403  80E303            and bl,0x3
00001406  7413              jz 0x141b
00001408  80FB02            cmp bl,0x2
0000140B  720A              jc 0x1417
0000140D  7404              jz 0x1413
0000140F  B403              mov ah,0x3
00001411  EB0A              jmp 0x141d
00001413  B40C              mov ah,0xc
00001415  EB06              jmp 0x141d
00001417  B430              mov ah,0x30
00001419  EB02              jmp 0x141d
0000141B  B4C0              mov ah,0xc0
0000141D  8AC4              mov al,ah
0000141F  F6D0              not al
00001421  22268050          and ah,[0x5080]
00001425  262005            and [es:di],al
00001428  260825            or [es:di],ah
0000142B  81C70020          add di,0x2000
0000142F  81FF0040          cmp di,0x4000
00001433  7204              jc 0x1439
00001435  81C750C0          add di,0xc050
00001439  E2EA              loop 0x1425
0000143B  C3                ret
0000143C  3AD3              cmp dl,bl
0000143E  7302              jnc 0x1442
00001440  87D3              xchg dx,bx
00001442  0AFF              or bh,bh
00001444  7501              jnz 0x1447
00001446  C3                ret
00001447  80FF8F            cmp bh,0x8f
0000144A  7201              jc 0x144d
0000144C  C3                ret
0000144D  0ADB              or bl,bl
0000144F  7502              jnz 0x1453
00001451  B301              mov bl,0x1
00001453  80FADF            cmp dl,0xdf
00001456  7202              jc 0x145a
00001458  B2DE              mov dl,0xde
0000145A  8AC7              mov al,bh
0000145C  E8A400            call 0x1503
0000145F  8AC3              mov al,bl
00001461  D0E8              shr al,0x0
00001463  D0E8              shr al,0x0
00001465  32E4              xor ah,ah
00001467  03F8              add di,ax
00001469  8AE2              mov ah,dl
0000146B  D0EC              shr ah,0x0
0000146D  D0EC              shr ah,0x0
0000146F  2AE0              sub ah,al
00001471  8ACC              mov cl,ah
00001473  32ED              xor ch,ch
00001475  80E303            and bl,0x3
00001478  7413              jz 0x148d
0000147A  80FB02            cmp bl,0x2
0000147D  720A              jc 0x1489
0000147F  7404              jz 0x1485
00001481  B003              mov al,0x3
00001483  EB0A              jmp 0x148f
00001485  B00F              mov al,0xf
00001487  EB06              jmp 0x148f
00001489  B03F              mov al,0x3f
0000148B  EB02              jmp 0x148f
0000148D  B0FF              mov al,0xff
0000148F  80E203            and dl,0x3
00001492  7413              jz 0x14a7
00001494  80FA02            cmp dl,0x2
00001497  720A              jc 0x14a3
00001499  7404              jz 0x149f
0000149B  B4FF              mov ah,0xff
0000149D  EB0A              jmp 0x14a9
0000149F  B4FC              mov ah,0xfc
000014A1  EB06              jmp 0x14a9
000014A3  B4F0              mov ah,0xf0
000014A5  EB02              jmp 0x14a9
000014A7  B4C0              mov ah,0xc0
000014A9  E347              jcxz 0x14f2
000014AB  49                dec cx
000014AC  E326              jcxz 0x14d4
000014AE  8AF0              mov dh,al
000014B0  F6D6              not dh
000014B2  22068050          and al,[0x5080]
000014B6  262035            and [es:di],dh
000014B9  260805            or [es:di],al
000014BC  47                inc di
000014BD  B0FF              mov al,0xff
000014BF  22068050          and al,[0x5080]
000014C3  F3AA              rep stosb
000014C5  8AF4              mov dh,ah
000014C7  F6D6              not dh
000014C9  22268050          and ah,[0x5080]
000014CD  262035            and [es:di],dh
000014D0  260825            or [es:di],ah
000014D3  C3                ret
000014D4  8AF0              mov dh,al
000014D6  F6D6              not dh
000014D8  22068050          and al,[0x5080]
000014DC  262035            and [es:di],dh
000014DF  260805            or [es:di],al
000014E2  47                inc di
000014E3  8AF4              mov dh,ah
000014E5  F6D6              not dh
000014E7  22268050          and ah,[0x5080]
000014EB  262035            and [es:di],dh
000014EE  260825            or [es:di],ah
000014F1  C3                ret
000014F2  22C4              and al,ah
000014F4  8AF0              mov dh,al
000014F6  F6D6              not dh
000014F8  22068050          and al,[0x5080]
000014FC  262035            and [es:di],dh
000014FF  260805            or [es:di],al
00001502  C3                ret
00001503  D0E8              shr al,0x0
00001505  1BFF              sbb di,di
00001507  81E70020          and di,0x2000
0000150B  B450              mov ah,0x50
0000150D  F6E4              mul ah
0000150F  053C02            add ax,0x23c
00001512  03F8              add di,ax
00001514  C3                ret
00001515  8A0E33FF          mov cl,[0xff33]
00001519  D0E9              shr cl,0x0
0000151B  FEC1              inc cl
0000151D  B001              mov al,0x1
0000151F  F6E1              mul cl
00001521  50                push ax
00001522  2EFF161001        call word near [cs:0x110]
00001527  2EFF161201        call word near [cs:0x112]
0000152C  2EFF161401        call word near [cs:0x114]
00001531  2EFF161601        call word near [cs:0x116]
00001536  2EFF161801        call word near [cs:0x118]
0000153B  58                pop ax
0000153C  38061AFF          cmp [0xff1a],al
00001540  72DF              jc 0x1521
00001542  C6061AFF00        mov byte [0xff1a],0x0
00001547  C3                ret
00001548  B800B8            mov ax,0xb800
0000154B  8EC0              mov es,ax
0000154D  BF3C02            mov di,0x23c
00001550  B90800            mov cx,0x8
00001553  51                push cx
00001554  57                push di
00001555  B91200            mov cx,0x12
00001558  51                push cx
00001559  57                push di
0000155A  B8FFFF            mov ax,0xffff
0000155D  B91C00            mov cx,0x1c
00001560  263105            xor [es:di],ax
00001563  47                inc di
00001564  47                inc di
00001565  E2F9              loop 0x1560
00001567  5F                pop di
00001568  81C74001          add di,0x140
0000156C  59                pop cx
0000156D  E2E9              loop 0x1558
0000156F  5F                pop di
00001570  81C70020          add di,0x2000
00001574  81FF0040          cmp di,0x4000
00001578  7204              jc 0x157e
0000157A  81C750C0          add di,0xc050
0000157E  59                pop cx
0000157F  E2D2              loop 0x1553
00001581  C3                ret
00001582  243F              and al,0x3f
00001584  8ADC              mov bl,ah
00001586  32E4              xor ah,ah
00001588  BA4001            mov dx,0x140
0000158B  F7E2              mul dx
0000158D  80EB04            sub bl,0x4
00001590  32FF              xor bh,bh
00001592  03DB              add bx,bx
00001594  03C3              add ax,bx
00001596  8BF8              mov di,ax
00001598  81C73C02          add di,0x23c
0000159C  C3                ret
0000159D  8A1E9D00          mov bl,[0x9d]
000015A1  0ADB              or bl,bl
000015A3  7421              jz 0x15c6
000015A5  80FB07            cmp bl,0x7
000015A8  741C              jz 0x15c6
000015AA  FECB              dec bl
000015AC  32FF              xor bh,bh
000015AE  03DB              add bx,bx
000015B0  2E8E062CFF        mov es,word [cs:0xff2c]
000015B5  8CC8              mov ax,cs
000015B7  050020            add ax,0x2000
000015BA  8ED8              mov ds,ax
000015BC  8B37              mov si,[bx]
000015BE  BF9086            mov di,0x8690
000015C1  B98004            mov cx,0x480
000015C4  F3A4              rep movsb
000015C6  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000015CB  BE9086            mov si,0x8690
000015CE  C3                ret
000015CF  81FE00E9          cmp si,0xe900
000015D3  7301              jnc 0x15d6
000015D5  C3                ret
000015D6  81EE0009          sub si,0x900
000015DA  C3                ret
000015DB  81FE00E0          cmp si,0xe000
000015DF  7201              jc 0x15e2
000015E1  C3                ret
000015E2  81C60009          add si,0x900
000015E6  C3                ret
000015E7  56                push si
000015E8  1E                push ds
000015E9  BE4346            mov si,0x4643
000015EC  BF4C06            mov di,0x64c
000015EF  B800B8            mov ax,0xb800
000015F2  8EC0              mov es,ax
000015F4  B90500            mov cx,0x5
000015F7  51                push cx
000015F8  B91C00            mov cx,0x1c
000015FB  51                push cx
000015FC  AC                lodsb
000015FD  1E                push ds
000015FE  56                push si
000015FF  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001604  32E4              xor ah,ah
00001606  03C0              add ax,ax
00001608  03C0              add ax,ax
0000160A  03C0              add ax,ax
0000160C  03C0              add ax,ax
0000160E  050040            add ax,0x4000
00001611  8BF0              mov si,ax
00001613  57                push di
00001614  B90800            mov cx,0x8
00001617  51                push cx
00001618  AD                lodsw
00001619  F7D0              not ax
0000161B  E8B500            call 0x16d3
0000161E  F7D0              not ax
00001620  25AAAA            and ax,0xaaaa
00001623  AB                stosw
00001624  81C7FE1F          add di,0x1ffe
00001628  81FF0040          cmp di,0x4000
0000162C  7204              jc 0x1632
0000162E  81C750C0          add di,0xc050
00001632  59                pop cx
00001633  E2E2              loop 0x1617
00001635  5F                pop di
00001636  47                inc di
00001637  47                inc di
00001638  5E                pop si
00001639  1F                pop ds
0000163A  59                pop cx
0000163B  E2BE              loop 0x15fb
0000163D  81C70801          add di,0x108
00001641  59                pop cx
00001642  E2B3              loop 0x15f7
00001644  1F                pop ds
00001645  5E                pop si
00001646  C3                ret
00001647  0001              add [bx+di],al
00001649  0204              add al,[si]
0000164B  07                pop es
0000164C  090D              or [di],cx
0000164E  1004              adc [si],al
00001650  15171C            adc ax,0x1c17
00001653  1E                push ds
00001654  0407              add al,0x7
00001656  0922              or [bp+si],sp
00001658  0225              add ah,[di]
0000165A  0802              or [bp+si],al
0000165C  2802              sub [bp+si],al
0000165E  2D3136            sub ax,0x3631
00001661  3B4000            cmp ax,[bx+si+0x0]
00001664  0103              add [bp+di],ax
00001666  06                push es
00001667  080A              or [bp+si],cl
00001669  0E                push cs
0000166A  11060818          adc [0x1808],ax
0000166E  0E                push cs
0000166F  1E                push ds
00001670  0408              add al,0x8
00001672  0A23              or ah,[bp+di]
00001674  2426              and al,0x26
00001676  0827              or [bx],ah
00001678  292A              sub [bp+si],bp
0000167A  0432              add al,0x32
0000167C  37                aaa
0000167D  3C06              cmp al,0x6
0000167F  0001              add [bx+di],al
00001681  0205              add al,[di]
00001683  0802              or [bp+si],al
00001685  0E                push cs
00001686  12060819          adc al,[0x1908]
0000168A  0E                push cs
0000168B  1E                push ds
0000168C  0408              add al,0x8
0000168E  0223              add ah,[bp+di]
00001690  2426              and al,0x26
00001692  0825              or [di],ah
00001694  2902              sub [bp+si],ax
00001696  2E3338            xor di,[cs:bx+si]
00001699  3D0600            cmp ax,0x6
0000169C  0103              add [bp+di],ax
0000169E  06                push es
0000169F  080B              or [bp+di],cl
000016A1  0E                push cs
000016A2  1306081A          adc ax,[0x1a08]
000016A6  0E                push cs
000016A7  1F                pop ds
000016A8  0408              add al,0x8
000016AA  0B23              or sp,[bp+di]
000016AC  2426              and al,0x26
000016AE  0827              or [bx],ah
000016B0  292B              sub [bp+di],bp
000016B2  2F                das
000016B3  3439              xor al,0x39
000016B5  3E06              ds push es
000016B7  0001              add [bx+di],al
000016B9  0204              add al,[si]
000016BB  080C              or [si],cl
000016BD  0F1404            unpcklps xmm0,oword [si]
000016C0  16                push ss
000016C1  1B1D              sbb bx,[di]
000016C3  2021              and [bx+di],ah
000016C5  080C              or [si],cl
000016C7  2324              and sp,[si]
000016C9  260802            or [es:bp+si],al
000016CC  282C              sub [si],ch
000016CE  3035              xor [di],dh
000016D0  3A3F              cmp bh,[bx]
000016D2  06                push es
000016D3  8BD0              mov dx,ax
000016D5  33C0              xor ax,ax
000016D7  B90800            mov cx,0x8
000016DA  32DB              xor bl,bl
000016DC  03D2              add dx,dx
000016DE  12DB              adc bl,bl
000016E0  03D2              add dx,dx
000016E2  12DB              adc bl,bl
000016E4  7402              jz 0x16e8
000016E6  B303              mov bl,0x3
000016E8  03C0              add ax,ax
000016EA  03C0              add ax,ax
000016EC  0AC3              or al,bl
000016EE  E2EA              loop 0x16da
000016F0  C3                ret
000016F1  A28050            mov [0x5080],al
000016F4  BEBE47            mov si,0x47be
000016F7  C7066D503C02      mov word [0x506d],0x23c
000016FD  B91200            mov cx,0x12
00001700  51                push cx
00001701  B91C00            mov cx,0x1c
00001704  51                push cx
00001705  AC                lodsb
00001706  56                push si
00001707  E81300            call 0x171d
0000170A  5E                pop si
0000170B  83066D5002        add word [0x506d],0x2
00001710  59                pop cx
00001711  E2F1              loop 0x1704
00001713  81066D500801      add word [0x506d],0x108
00001719  59                pop cx
0000171A  E2E4              loop 0x1700
0000171C  C3                ret
0000171D  1E                push ds
0000171E  B110              mov cl,0x10
00001720  F6E1              mul cl
00001722  050080            add ax,0x8000
00001725  8BF0              mov si,ax
00001727  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000172C  B800B8            mov ax,0xb800
0000172F  8EC0              mov es,ax
00001731  2E8B3E6D50        mov di,[cs:0x506d]
00001736  B90800            mov cx,0x8
00001739  51                push cx
0000173A  AD                lodsw
0000173B  E81400            call 0x1752
0000173E  AB                stosw
0000173F  81C7FE1F          add di,0x1ffe
00001743  81FF0040          cmp di,0x4000
00001747  7204              jc 0x174d
00001749  81C750C0          add di,0xc050
0000174D  59                pop cx
0000174E  E2E9              loop 0x1739
00001750  1F                pop ds
00001751  C3                ret
00001752  B90800            mov cx,0x8
00001755  51                push cx
00001756  03C0              add ax,ax
00001758  12C9              adc cl,cl
0000175A  03C0              add ax,ax
0000175C  12C9              adc cl,cl
0000175E  80E103            and cl,0x3
00001761  2E8A1E8050        mov bl,[cs:0x5080]
00001766  32FF              xor bh,bh
00001768  03DB              add bx,bx
0000176A  2EFF977747        call word near [cs:bx+0x4777]
0000176F  03D2              add dx,dx
00001771  03D2              add dx,dx
00001773  0AD1              or dl,cl
00001775  59                pop cx
00001776  E2DD              loop 0x1755
00001778  8BC2              mov ax,dx
0000177A  C3                ret
0000177B  8147824793        add word [bx-0x7e],0x9347
00001780  47                inc di
00001781  A4                movsb
00001782  47                inc di
00001783  B547              mov ch,0x47
00001785  C3                ret
00001786  80F901            cmp cl,0x1
00001789  7503              jnz 0x178e
0000178B  B102              mov cl,0x2
0000178D  C3                ret
0000178E  80F902            cmp cl,0x2
00001791  7401              jz 0x1794
00001793  C3                ret
00001794  B101              mov cl,0x1
00001796  C3                ret
00001797  80F901            cmp cl,0x1
0000179A  7503              jnz 0x179f
0000179C  B100              mov cl,0x0
0000179E  C3                ret
0000179F  80F902            cmp cl,0x2
000017A2  7401              jz 0x17a5
000017A4  C3                ret
000017A5  B101              mov cl,0x1
000017A7  C3                ret
000017A8  80F902            cmp cl,0x2
000017AB  7503              jnz 0x17b0
000017AD  B103              mov cl,0x3
000017AF  C3                ret
000017B0  80F903            cmp cl,0x3
000017B3  7401              jz 0x17b6
000017B5  C3                ret
000017B6  B102              mov cl,0x2
000017B8  C3                ret
000017B9  80F901            cmp cl,0x1
000017BC  7401              jz 0x17bf
000017BE  C3                ret
000017BF  B103              mov cl,0x3
000017C1  C3                ret
000017C2  07                pop es
000017C3  0809              or [bx+di],cl
000017C5  0A07              or al,[bx]
000017C7  080B              or [bp+di],cl
000017C9  0C07              or al,0x7
000017CB  0809              or [bx+di],cl
000017CD  0A19              or bl,[bx+di]
000017CF  3D6127            cmp ax,0x2761
000017D2  1D1E1D            sbb ax,0x1d1e
000017D5  1E                push ds
000017D6  1F                pop ds
000017D7  201F              and [bx],bl
000017D9  201D              and [di],bl
000017DB  1E                push ds
000017DC  1F                pop ds
000017DD  200D              and [di],cl
000017DF  0E                push cs
000017E0  0F100F            movups xmm1,oword [bx]
000017E3  100D              adc [di],cl
000017E5  0E                push cs
000017E6  0F1017            movups xmm2,oword [bx]
000017E9  183E5C62          sbb [0x625c],bh
000017ED  262A25            sub ah,[es:di]
000017F0  2122              and [bp+si],sp
000017F2  2122              and [bp+si],sp
000017F4  2324              and sp,[si]
000017F6  2122              and [bp+si],sp
000017F8  2122              and [bp+si],sp
000017FA  090A              or [bp+si],cx
000017FC  07                pop es
000017FD  0807              or [bx],al
000017FF  0809              or [bx+di],cl
00001801  0A07              or al,[bx]
00001803  0819              or [bx+di],bl
00001805  54                push sp
00001806  59                pop cx
00001807  5D                pop bp
00001808  6332              arpl [bp+si],si
0000180A  2F                das
0000180B  2E1F              cs pop ds
0000180D  201F              and [bx],bl
0000180F  201D              and [di],bl
00001811  1E                push ds
00001812  1F                pop ds
00001813  201F              and [bx],bl
00001815  200F              and [bx],cl
00001817  1011              adc [bx+di],dl
00001819  120F              adc cl,[bx]
0000181B  100D              adc [di],cl
0000181D  0E                push cs
0000181E  17                pop ss
0000181F  185055            sbb [bx+si+0x55],dl
00001822  5A                pop dx
00001823  5E                pop si
00001824  64662830          o32 sub [fs:bx+si],dh
00001828  2324              and sp,[si]
0000182A  2122              and [bp+si],sp
0000182C  2324              and sp,[si]
0000182E  2122              and [bp+si],sp
00001830  2324              and sp,[si]
00001832  07                pop es
00001833  080A              or [bp+si],cl
00001835  0C07              or al,0x7
00001837  0809              or [bx+di],cl
00001839  0A1A              or bl,[bp+si]
0000183B  3451              xor al,0x51
0000183D  56                push si
0000183E  5B                pop bx
0000183F  5F                pop di
00001840  65672F            gs a32 das
00001843  2D1D1E            sub ax,0x1e1d
00001846  1F                pop ds
00001847  201D              and [di],bl
00001849  1E                push ds
0000184A  1F                pop ds
0000184B  201D              and [di],bl
0000184D  1E                push ds
0000184E  0F100D            movups xmm1,oword [di]
00001851  0E                push cs
00001852  0D0E17            or ax,0x170e
00001855  18494D            sbb [bx+di+0x4d],cl
00001858  52                push dx
00001859  57                push di
0000185A  006069            add [bx+si+0x69],ah
0000185D  686A6B            push word 0x6b6a
00001860  28262122          sub [0x2221],ah
00001864  2B262122          sub sp,[0x2221]
00001868  2122              and [bp+si],sp
0000186A  07                pop es
0000186B  0809              or [bx+di],cl
0000186D  0A09              or cl,[bx+di]
0000186F  0A1B              or bl,[bp+di]
00001871  46                inc si
00001872  4A                dec dx
00001873  4E                dec si
00001874  53                push bx
00001875  58                pop ax
00001876  0000              add [bx+si],al
00001878  0000              add [bx+si],al
0000187A  696C312D1F        imul bp,[si+0x31],0x1f2d
0000187F  202C              and [si],ch
00001881  2D1F20            sub ax,0x201f
00001884  1F                pop ds
00001885  2013              and [bp+di],dl
00001887  1413              adc al,0x13
00001889  1417              adc al,0x17
0000188B  184347            sbb [bp+di+0x47],al
0000188E  4B                dec bx
0000188F  4F                dec di
00001890  0000              add [bx+si],al
00001892  0000              add [bx+si],al
00001894  0000              add [bx+si],al
00001896  006D6E            add [di+0x6e],ch
00001899  6F                outsw
0000189A  29262122          sub [0x2221],sp
0000189E  2A25              sub ah,[di]
000018A0  2122              and [bp+si],sp
000018A2  151615            adc ax,0x1516
000018A5  16                push ss
000018A6  1C35              sbb al,0x35
000018A8  44                inc sp
000018A9  48                dec ax
000018AA  4C                dec sp
000018AB  0000              add [bx+si],al
000018AD  0000              add [bx+si],al
000018AF  0000              add [bx+si],al
000018B1  0000              add [bx+si],al
000018B3  006971            add [bx+di+0x71],ch
000018B6  7374              jnc 0x192c
000018B8  1F                pop ds
000018B9  202C              and [si],ch
000018BB  27                daa
000018BC  1F                pop ds
000018BD  2017              and [bx],dl
000018BF  1838              sbb [bx+si],bh
000018C1  3A3F              cmp bh,[bx]
000018C3  42                inc dx
000018C4  45                inc bp
000018C5  0000              add [bx+si],al
000018C7  0000              add [bx+si],al
000018C9  0000              add [bx+si],al
000018CB  0000              add [bx+si],al
000018CD  0000              add [bx+si],al
000018CF  0000              add [bx+si],al
000018D1  6D                insw
000018D2  7577              jnz 0x194b
000018D4  796F              jns 0x1945
000018D6  2B262926          sub sp,[0x2629]
000018DA  1A34              sbb dh,[si]
000018DC  393B              cmp [bp+di],di
000018DE  40                inc ax
000018DF  41                inc cx
000018E0  0000              add [bx+si],al
000018E2  0000              add [bx+si],al
000018E4  0000              add [bx+si],al
000018E6  0000              add [bx+si],al
000018E8  0000              add [bx+si],al
000018EA  0000              add [bx+si],al
000018EC  0000              add [bx+si],al
000018EE  7678              jna 0x1968
000018F0  7A7B              jpe 0x196d
000018F2  3132              xor [bp+si],si
000018F4  2F                das
000018F5  2D3336            sub ax,0x3633
000018F8  37                aaa
000018F9  3C00              cmp al,0x0
000018FB  0000              add [bx+si],al
000018FD  0000              add [bx+si],al
000018FF  0000              add [bx+si],al
00001901  0000              add [bx+si],al
00001903  0000              add [bx+si],al
00001905  0000              add [bx+si],al
00001907  0000              add [bx+si],al
00001909  0000              add [bx+si],al
0000190B  0000              add [bx+si],al
0000190D  6D                insw
0000190E  7170              jno 0x1980
00001910  7270              jc 0x1982
00001912  0000              add [bx+si],al
00001914  0000              add [bx+si],al
00001916  0000              add [bx+si],al
00001918  0000              add [bx+si],al
0000191A  0000              add [bx+si],al
0000191C  0000              add [bx+si],al
0000191E  0000              add [bx+si],al
00001920  0000              add [bx+si],al
00001922  0000              add [bx+si],al
00001924  0000              add [bx+si],al
00001926  0000              add [bx+si],al
00001928  0000              add [bx+si],al
0000192A  0000              add [bx+si],al
0000192C  0000              add [bx+si],al
0000192E  0000              add [bx+si],al
00001930  0000              add [bx+si],al
00001932  0000              add [bx+si],al
00001934  0000              add [bx+si],al
00001936  0000              add [bx+si],al
00001938  0000              add [bx+si],al
0000193A  0000              add [bx+si],al
0000193C  0000              add [bx+si],al
0000193E  0000              add [bx+si],al
00001940  0000              add [bx+si],al
00001942  0000              add [bx+si],al
00001944  0000              add [bx+si],al
00001946  0000              add [bx+si],al
00001948  0000              add [bx+si],al
0000194A  0000              add [bx+si],al
0000194C  0000              add [bx+si],al
0000194E  0000              add [bx+si],al
00001950  0000              add [bx+si],al
00001952  0000              add [bx+si],al
00001954  0000              add [bx+si],al
00001956  0000              add [bx+si],al
00001958  0000              add [bx+si],al
0000195A  0000              add [bx+si],al
0000195C  0000              add [bx+si],al
0000195E  0000              add [bx+si],al
00001960  0000              add [bx+si],al
00001962  0000              add [bx+si],al
00001964  0000              add [bx+si],al
00001966  0102              add [bp+si],ax
00001968  0102              add [bp+si],ax
0000196A  0102              add [bp+si],ax
0000196C  0102              add [bp+si],ax
0000196E  0102              add [bp+si],ax
00001970  0102              add [bp+si],ax
00001972  0102              add [bp+si],ax
00001974  0102              add [bp+si],ax
00001976  0102              add [bp+si],ax
00001978  0102              add [bp+si],ax
0000197A  0102              add [bp+si],ax
0000197C  0102              add [bp+si],ax
0000197E  0102              add [bp+si],ax
00001980  0102              add [bp+si],ax
00001982  0304              add ax,[si]
00001984  0304              add ax,[si]
00001986  0304              add ax,[si]
00001988  0304              add ax,[si]
0000198A  0304              add ax,[si]
0000198C  0304              add ax,[si]
0000198E  0304              add ax,[si]
00001990  0304              add ax,[si]
00001992  0304              add ax,[si]
00001994  0304              add ax,[si]
00001996  0304              add ax,[si]
00001998  0304              add ax,[si]
0000199A  0304              add ax,[si]
0000199C  0304              add ax,[si]
0000199E  050605            add ax,0x506
000019A1  06                push es
000019A2  050605            add ax,0x506
000019A5  06                push es
000019A6  050605            add ax,0x506
000019A9  06                push es
000019AA  050605            add ax,0x506
000019AD  06                push es
000019AE  050605            add ax,0x506
000019B1  06                push es
000019B2  050606            add ax,0x606
000019B5  050506            add ax,0x605
000019B8  05061E            add ax,0x1e06
000019BB  50                push ax
000019BC  D0EB              shr bl,0x0
000019BE  1BFF              sbb di,di
000019C0  81E70020          and di,0x2000
000019C4  B050              mov al,0x50
000019C6  F6E3              mul bl
000019C8  8ADF              mov bl,bh
000019CA  32FF              xor bh,bh
000019CC  03C3              add ax,bx
000019CE  03F8              add di,ax
000019D0  58                pop ax
000019D1  B110              mov cl,0x10
000019D3  F6E1              mul cl
000019D5  050060            add ax,0x6000
000019D8  8BF0              mov si,ax
000019DA  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000019DF  B800B8            mov ax,0xb800
000019E2  8EC0              mov es,ax
000019E4  B90400            mov cx,0x4
000019E7  A5                movsw
000019E8  81C7FE1F          add di,0x1ffe
000019EC  81FF0040          cmp di,0x4000
000019F0  7204              jc 0x19f6
000019F2  81C750C0          add di,0xc050
000019F6  A5                movsw
000019F7  81C7FE1F          add di,0x1ffe
000019FB  81FF0040          cmp di,0x4000
000019FF  7204              jc 0x1a05
00001A01  81C750C0          add di,0xc050
00001A05  E2E0              loop 0x19e7
00001A07  1F                pop ds
00001A08  C3                ret
00001A09  1E                push ds
00001A0A  8A1E9200          mov bl,[0x92]
00001A0E  FECB              dec bl
00001A10  32FF              xor bh,bh
00001A12  03DB              add bx,bx
00001A14  8BB73A4A          mov si,[bx+0x4a3a]
00001A18  BF940D            mov di,0xd94
00001A1B  B800B8            mov ax,0xb800
00001A1E  8EC0              mov es,ax
00001A20  B91800            mov cx,0x18
00001A23  AD                lodsw
00001A24  260905            or [es:di],ax
00001A27  AD                lodsw
00001A28  26094502          or [es:di+0x2],ax
00001A2C  81C70020          add di,0x2000
00001A30  81FF0040          cmp di,0x4000
00001A34  7204              jc 0x1a3a
00001A36  81C750C0          add di,0xc050
00001A3A  E2E7              loop 0x1a23
00001A3C  1F                pop ds
00001A3D  C3                ret
00001A3E  46                inc si
00001A3F  4A                dec dx
00001A40  46                inc si
00001A41  4A                dec dx
00001A42  46                inc si
00001A43  4A                dec dx
00001A44  A6                cmpsb
00001A45  4A                dec dx
00001A46  A6                cmpsb
00001A47  4A                dec dx
00001A48  06                push es
00001A49  4B                dec bx
00001A4A  0000              add [bx+si],al
00001A4C  0000              add [bx+si],al
00001A4E  0000              add [bx+si],al
00001A50  0000              add [bx+si],al
00001A52  0000              add [bx+si],al
00001A54  0000              add [bx+si],al
00001A56  0000              add [bx+si],al
00001A58  0000              add [bx+si],al
00001A5A  0000              add [bx+si],al
00001A5C  0000              add [bx+si],al
00001A5E  0000              add [bx+si],al
00001A60  0000              add [bx+si],al
00001A62  0000              add [bx+si],al
00001A64  0000              add [bx+si],al
00001A66  0000              add [bx+si],al
00001A68  0000              add [bx+si],al
00001A6A  0000              add [bx+si],al
00001A6C  0000              add [bx+si],al
00001A6E  0000              add [bx+si],al
00001A70  0000              add [bx+si],al
00001A72  0000              add [bx+si],al
00001A74  0000              add [bx+si],al
00001A76  0003              add [bp+di],al
00001A78  0000              add [bx+si],al
00001A7A  000C              add [si],cl
00001A7C  0000              add [bx+si],al
00001A7E  000C              add [si],cl
00001A80  0000              add [bx+si],al
00001A82  003C              add [si],bh
00001A84  0000              add [bx+si],al
00001A86  003C              add [si],bh
00001A88  0000              add [bx+si],al
00001A8A  003C              add [si],bh
00001A8C  0000              add [bx+si],al
00001A8E  003C              add [si],bh
00001A90  0000              add [bx+si],al
00001A92  003C              add [si],bh
00001A94  0000              add [bx+si],al
00001A96  000C              add [si],cl
00001A98  0000              add [bx+si],al
00001A9A  003C              add [si],bh
00001A9C  0000              add [bx+si],al
00001A9E  003C              add [si],bh
00001AA0  0000              add [bx+si],al
00001AA2  003C              add [si],bh
00001AA4  0000              add [bx+si],al
00001AA6  003C              add [si],bh
00001AA8  0000              add [bx+si],al
00001AAA  0000              add [bx+si],al
00001AAC  0000              add [bx+si],al
00001AAE  0000              add [bx+si],al
00001AB0  0C00              or al,0x0
00001AB2  0000              add [bx+si],al
00001AB4  3C00              cmp al,0x0
00001AB6  0000              add [bx+si],al
00001AB8  F00000            lock add [bx+si],al
00001ABB  00F0              add al,dh
00001ABD  0000              add [bx+si],al
00001ABF  00F0              add al,dh
00001AC1  0000              add [bx+si],al
00001AC3  03F0              add si,ax
00001AC5  0000              add [bx+si],al
00001AC7  03C0              add ax,ax
00001AC9  0000              add [bx+si],al
00001ACB  03C0              add ax,ax
00001ACD  0000              add [bx+si],al
00001ACF  03C0              add ax,ax
00001AD1  0000              add [bx+si],al
00001AD3  0FC000            xadd [bx+si],al
00001AD6  000F              add [bx],cl
00001AD8  0000              add [bx+si],al
00001ADA  000F              add [bx],cl
00001ADC  0000              add [bx+si],al
00001ADE  000F              add [bx],cl
00001AE0  0000              add [bx+si],al
00001AE2  000F              add [bx],cl
00001AE4  0000              add [bx+si],al
00001AE6  000F              add [bx],cl
00001AE8  0000              add [bx+si],al
00001AEA  000F              add [bx],cl
00001AEC  0000              add [bx+si],al
00001AEE  000F              add [bx],cl
00001AF0  0000              add [bx+si],al
00001AF2  000F              add [bx],cl
00001AF4  0000              add [bx+si],al
00001AF6  000F              add [bx],cl
00001AF8  0000              add [bx+si],al
00001AFA  000F              add [bx],cl
00001AFC  0000              add [bx+si],al
00001AFE  000F              add [bx],cl
00001B00  0000              add [bx+si],al
00001B02  000F              add [bx],cl
00001B04  0000              add [bx+si],al
00001B06  003F              add [bx],bh
00001B08  0000              add [bx+si],al
00001B0A  0000              add [bx+si],al
00001B0C  0000              add [bx+si],al
00001B0E  0000              add [bx+si],al
00001B10  0000              add [bx+si],al
00001B12  0000              add [bx+si],al
00001B14  C00000            rol byte [bx+si],byte 0x0
00001B17  00C0              add al,al
00001B19  0000              add [bx+si],al
00001B1B  00C0              add al,al
00001B1D  0000              add [bx+si],al
00001B1F  03C0              add ax,ax
00001B21  0000              add [bx+si],al
00001B23  03C0              add ax,ax
00001B25  0000              add [bx+si],al
00001B27  0FC000            xadd [bx+si],al
00001B2A  000F              add [bx],cl
00001B2C  0000              add [bx+si],al
00001B2E  000F              add [bx],cl
00001B30  0000              add [bx+si],al
00001B32  000F              add [bx],cl
00001B34  0000              add [bx+si],al
00001B36  000F              add [bx],cl
00001B38  0000              add [bx+si],al
00001B3A  000F              add [bx],cl
00001B3C  0000              add [bx+si],al
00001B3E  000F              add [bx],cl
00001B40  0000              add [bx+si],al
00001B42  000F              add [bx],cl
00001B44  0000              add [bx+si],al
00001B46  003F              add [bx],bh
00001B48  0000              add [bx+si],al
00001B4A  003F              add [bx],bh
00001B4C  0000              add [bx+si],al
00001B4E  003F              add [bx],bh
00001B50  0000              add [bx+si],al
00001B52  003F              add [bx],bh
00001B54  0000              add [bx+si],al
00001B56  003F              add [bx],bh
00001B58  0000              add [bx+si],al
00001B5A  003F              add [bx],bh
00001B5C  0000              add [bx+si],al
00001B5E  003C              add [si],bh
00001B60  0000              add [bx+si],al
00001B62  033C              add di,[si]
00001B64  C00000            rol byte [bx+si],byte 0x0
00001B67  FF00              inc word [bx+si]
00001B69  001E0AC0          add [0xc00a],bl
00001B6D  7810              js 0x1b7f
00001B6F  2403              and al,0x3
00001B71  B240              mov dl,0x40
00001B73  F6E2              mul dl
00001B75  05F54B            add ax,0x4bf5
00001B78  8BF0              mov si,ax
00001B7A  BD0100            mov bp,0x1
00001B7D  EB0E              jmp 0x1b8d
00001B7F  2401              and al,0x1
00001B81  8AE0              mov ah,al
00001B83  32C0              xor al,al
00001B85  05F54C            add ax,0x4cf5
00001B88  8BF0              mov si,ax
00001B8A  BD0400            mov bp,0x4
00001B8D  8AC3              mov al,bl
00001B8F  2403              and al,0x3
00001B91  02C0              add al,al
00001B93  A28150            mov [0x5081],al
00001B96  D1EB              shr bx,0x0
00001B98  D1EB              shr bx,0x0
00001B9A  D0E9              shr cl,0x0
00001B9C  1BFF              sbb di,di
00001B9E  81E70020          and di,0x2000
00001BA2  B050              mov al,0x50
00001BA4  F6E1              mul cl
00001BA6  03C3              add ax,bx
00001BA8  03F8              add di,ax
00001BAA  B800B8            mov ax,0xb800
00001BAD  8EC0              mov es,ax
00001BAF  8BCD              mov cx,bp
00001BB1  51                push cx
00001BB2  57                push di
00001BB3  B91000            mov cx,0x10
00001BB6  51                push cx
00001BB7  57                push di
00001BB8  B90200            mov cx,0x2
00001BBB  51                push cx
00001BBC  AD                lodsw
00001BBD  8AF8              mov bh,al
00001BBF  32DB              xor bl,bl
00001BC1  2E8A0E8150        mov cl,[cs:0x5081]
00001BC6  D3EB              shr bx,cl
00001BC8  32C0              xor al,al
00001BCA  D3E8              shr ax,cl
00001BCC  0ADC              or bl,ah
00001BCE  8AE0              mov ah,al
00001BD0  26083D            or [es:di],bh
00001BD3  47                inc di
00001BD4  26081D            or [es:di],bl
00001BD7  47                inc di
00001BD8  260825            or [es:di],ah
00001BDB  59                pop cx
00001BDC  E2DD              loop 0x1bbb
00001BDE  5F                pop di
00001BDF  81C70020          add di,0x2000
00001BE3  81FF0040          cmp di,0x4000
00001BE7  7204              jc 0x1bed
00001BE9  81C750C0          add di,0xc050
00001BED  59                pop cx
00001BEE  E2C6              loop 0x1bb6
00001BF0  5F                pop di
00001BF1  83C704            add di,0x4
00001BF4  59                pop cx
00001BF5  E2BA              loop 0x1bb1
00001BF7  1F                pop ds
00001BF8  C3                ret
00001BF9  0000              add [bx+si],al
00001BFB  0000              add [bx+si],al
00001BFD  0000              add [bx+si],al
00001BFF  0000              add [bx+si],al
00001C01  0000              add [bx+si],al
00001C03  0000              add [bx+si],al
00001C05  0000              add [bx+si],al
00001C07  0000              add [bx+si],al
00001C09  0000              add [bx+si],al
00001C0B  0000              add [bx+si],al
00001C0D  0000              add [bx+si],al
00001C0F  3000              xor [bx+si],al
00001C11  0030              add [bx+si],dh
00001C13  F00000            lock add [bx+si],al
00001C16  0FC000            xadd [bx+si],al
00001C19  000F              add [bx],cl
00001C1B  C00000            rol byte [bx+si],byte 0x0
00001C1E  0FC000            xadd [bx+si],al
00001C21  000C              add [si],cl
00001C23  3000              xor [bx+si],al
00001C25  0030              add [bx+si],dh
00001C27  0000              add [bx+si],al
00001C29  0000              add [bx+si],al
00001C2B  0000              add [bx+si],al
00001C2D  0000              add [bx+si],al
00001C2F  0000              add [bx+si],al
00001C31  0000              add [bx+si],al
00001C33  0000              add [bx+si],al
00001C35  0000              add [bx+si],al
00001C37  0000              add [bx+si],al
00001C39  0000              add [bx+si],al
00001C3B  0000              add [bx+si],al
00001C3D  0000              add [bx+si],al
00001C3F  0000              add [bx+si],al
00001C41  0003              add [bp+di],al
00001C43  0000              add [bx+si],al
00001C45  0003              add [bp+di],al
00001C47  0000              add [bx+si],al
00001C49  00C0              add al,al
00001C4B  0C00              or al,0x0
00001C4D  0003              add [bp+di],al
00001C4F  0000              add [bx+si],al
00001C51  001B              add [bp+di],bl
00001C53  3000              xor [bx+si],al
00001C55  0003              add [bp+di],al
00001C57  C0000C            rol byte [bx+si],byte 0xc
00001C5A  FF                db 0xff
00001C5B  FC                cld
00001C5C  C00003            rol byte [bx+si],byte 0x3
00001C5F  C00000            rol byte [bx+si],byte 0x0
00001C62  3330              xor si,[bx+si]
00001C64  0000              add [bx+si],al
00001C66  0300              add ax,[bx+si]
00001C68  0000              add [bx+si],al
00001C6A  C00C00            ror byte [si],byte 0x0
00001C6D  0003              add [bp+di],al
00001C6F  0000              add [bx+si],al
00001C71  0003              add [bp+di],al
00001C73  0000              add [bx+si],al
00001C75  0000              add [bx+si],al
00001C77  0000              add [bx+si],al
00001C79  0003              add [bp+di],al
00001C7B  0000              add [bx+si],al
00001C7D  0003              add [bp+di],al
00001C7F  0000              add [bx+si],al
00001C81  0003              add [bp+di],al
00001C83  0000              add [bx+si],al
00001C85  000C              add [si],cl
00001C87  C00000            rol byte [bx+si],byte 0x0
00001C8A  03C0              add ax,ax
00001C8C  0000              add [bx+si],al
00001C8E  33CC              xor cx,sp
00001C90  0000              add [bx+si],al
00001C92  0CC0              or al,0xc0
00001C94  0000              add [bx+si],al
00001C96  33CC              xor cx,sp
00001C98  00CF              add bh,cl
00001C9A  FF                db 0xff
00001C9B  FFF3              push bx
00001C9D  0033              add [bp+di],dh
00001C9F  CC                int3
00001CA0  0000              add [bx+si],al
00001CA2  0F30              wrmsr
00001CA4  0000              add [bx+si],al
00001CA6  330C              xor cx,[si]
00001CA8  0000              add [bx+si],al
00001CAA  0CC0              or al,0xc0
00001CAC  0000              add [bx+si],al
00001CAE  0300              add ax,[bx+si]
00001CB0  0000              add [bx+si],al
00001CB2  0300              add ax,[bx+si]
00001CB4  0000              add [bx+si],al
00001CB6  0300              add ax,[bx+si]
00001CB8  0000              add [bx+si],al
00001CBA  0000              add [bx+si],al
00001CBC  0000              add [bx+si],al
00001CBE  0000              add [bx+si],al
00001CC0  3030              xor [bx+si],dh
00001CC2  0000              add [bx+si],al
00001CC4  000C              add [si],cl
00001CC6  0000              add [bx+si],al
00001CC8  C000C0            rol byte [bx+si],byte 0xc0
00001CCB  0300              add ax,[bx+si]
00001CCD  00F3              add bl,dh
00001CCF  0C00              or al,0x0
00001CD1  003F              add [bx],bh
00001CD3  3C00              cmp al,0x0
00001CD5  000F              add [bx],cl
00001CD7  F00000            lock add [bx+si],al
00001CDA  3F                aas
00001CDB  F30000            rep add [bx+si],al
00001CDE  0F                db 0x0f
00001CDF  F00000            lock add [bx+si],al
00001CE2  0F                db 0x0f
00001CE3  3C00              cmp al,0x0
00001CE5  0033              add [bp+di],dh
00001CE7  0C00              or al,0x0
00001CE9  00C3              add bl,al
00001CEB  03C0              add ax,ax
00001CED  0300              add ax,[bx+si]
00001CEF  0030              add [bx+si],dh
00001CF1  0C00              or al,0x0
00001CF3  000C              add [si],cl
00001CF5  3000              xor [bx+si],al
00001CF7  0000              add [bx+si],al
00001CF9  0000              add [bx+si],al
00001CFB  0000              add [bx+si],al
00001CFD  0000              add [bx+si],al
00001CFF  0000              add [bx+si],al
00001D01  0000              add [bx+si],al
00001D03  0000              add [bx+si],al
00001D05  0000              add [bx+si],al
00001D07  0000              add [bx+si],al
00001D09  0000              add [bx+si],al
00001D0B  0000              add [bx+si],al
00001D0D  0000              add [bx+si],al
00001D0F  0000              add [bx+si],al
00001D11  0000              add [bx+si],al
00001D13  0000              add [bx+si],al
00001D15  0000              add [bx+si],al
00001D17  0000              add [bx+si],al
00001D19  CF                iret
00001D1A  FF                db 0xff
00001D1B  FF                db 0xff
00001D1C  FF00              inc word [bx+si]
00001D1E  0000              add [bx+si],al
00001D20  0000              add [bx+si],al
00001D22  0000              add [bx+si],al
00001D24  0000              add [bx+si],al
00001D26  0000              add [bx+si],al
00001D28  0000              add [bx+si],al
00001D2A  0000              add [bx+si],al
00001D2C  0000              add [bx+si],al
00001D2E  0000              add [bx+si],al
00001D30  0000              add [bx+si],al
00001D32  0000              add [bx+si],al
00001D34  0000              add [bx+si],al
00001D36  0000              add [bx+si],al
00001D38  0000              add [bx+si],al
00001D3A  0000              add [bx+si],al
00001D3C  0000              add [bx+si],al
00001D3E  0000              add [bx+si],al
00001D40  0300              add ax,[bx+si]
00001D42  0000              add [bx+si],al
00001D44  0300              add ax,[bx+si]
00001D46  0003              add [bp+di],al
00001D48  0300              add ax,[bx+si]
00001D4A  0000              add [bx+si],al
00001D4C  C3                ret
00001D4D  0000              add [bx+si],al
00001D4F  00FF              add bh,bh
00001D51  0000              add [bx+si],al
00001D53  03FF              add di,di
00001D55  0CCC              or al,0xcc
00001D57  FF                db 0xff
00001D58  FF                db 0xff
00001D59  FF                db 0xff
00001D5A  FF                db 0xff
00001D5B  FF                db 0xff
00001D5C  FF0C              dec word [si]
00001D5E  CC                int3
00001D5F  FF                db 0xff
00001D60  FF00              inc word [bx+si]
00001D62  0003              add [bp+di],al
00001D64  FF00              inc word [bx+si]
00001D66  0000              add [bx+si],al
00001D68  C3                ret
00001D69  0000              add [bx+si],al
00001D6B  00C3              add bl,al
00001D6D  0000              add [bx+si],al
00001D6F  0003              add [bp+di],al
00001D71  0000              add [bx+si],al
00001D73  0003              add [bp+di],al
00001D75  0000              add [bx+si],al
00001D77  0000              add [bx+si],al
00001D79  0000              add [bx+si],al
00001D7B  0000              add [bx+si],al
00001D7D  0000              add [bx+si],al
00001D7F  0000              add [bx+si],al
00001D81  0000              add [bx+si],al
00001D83  0000              add [bx+si],al
00001D85  0000              add [bx+si],al
00001D87  0000              add [bx+si],al
00001D89  C3                ret
00001D8A  0000              add [bx+si],al
00001D8C  00CC              add ah,cl
00001D8E  0000              add [bx+si],al
00001D90  00FC              add ah,bh
00001D92  0000              add [bx+si],al
00001D94  00FF              add bh,bh
00001D96  FF                db 0xff
00001D97  FC                cld
00001D98  30FF              xor bh,bh
00001D9A  FF                db 0xff
00001D9B  FF                db 0xff
00001D9C  FF                db 0xff
00001D9D  FF                db 0xff
00001D9E  FF                db 0xff
00001D9F  3C30              cmp al,0x30
00001DA1  FFC0              inc ax
00001DA3  0000              add [bx+si],al
00001DA5  FF00              inc word [bx+si]
00001DA7  0000              add [bx+si],al
00001DA9  C0C000            rol al,byte 0x0
00001DAC  0000              add [bx+si],al
00001DAE  3000              xor [bx+si],al
00001DB0  0000              add [bx+si],al
00001DB2  0000              add [bx+si],al
00001DB4  0000              add [bx+si],al
00001DB6  0000              add [bx+si],al
00001DB8  0000              add [bx+si],al
00001DBA  0000              add [bx+si],al
00001DBC  0000              add [bx+si],al
00001DBE  0000              add [bx+si],al
00001DC0  0000              add [bx+si],al
00001DC2  0000              add [bx+si],al
00001DC4  0000              add [bx+si],al
00001DC6  0000              add [bx+si],al
00001DC8  0000              add [bx+si],al
00001DCA  0000              add [bx+si],al
00001DCC  0000              add [bx+si],al
00001DCE  0000              add [bx+si],al
00001DD0  0000              add [bx+si],al
00001DD2  0000              add [bx+si],al
00001DD4  0000              add [bx+si],al
00001DD6  0000              add [bx+si],al
00001DD8  00FF              add bh,bh
00001DDA  FF                db 0xff
00001DDB  FFCF              dec di
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
00001E01  0000              add [bx+si],al
00001E03  0000              add [bx+si],al
00001E05  0000              add [bx+si],al
00001E07  0000              add [bx+si],al
00001E09  0000              add [bx+si],al
00001E0B  0000              add [bx+si],al
00001E0D  0000              add [bx+si],al
00001E0F  0000              add [bx+si],al
00001E11  0000              add [bx+si],al
00001E13  0000              add [bx+si],al
00001E15  0000              add [bx+si],al
00001E17  0000              add [bx+si],al
00001E19  CF                iret
00001E1A  CC                int3
00001E1B  CC                int3
00001E1C  0C00              or al,0x0
00001E1E  0000              add [bx+si],al
00001E20  0000              add [bx+si],al
00001E22  0000              add [bx+si],al
00001E24  0000              add [bx+si],al
00001E26  0000              add [bx+si],al
00001E28  0000              add [bx+si],al
00001E2A  0000              add [bx+si],al
00001E2C  0000              add [bx+si],al
00001E2E  0000              add [bx+si],al
00001E30  0000              add [bx+si],al
00001E32  0000              add [bx+si],al
00001E34  0000              add [bx+si],al
00001E36  0000              add [bx+si],al
00001E38  0000              add [bx+si],al
00001E3A  0000              add [bx+si],al
00001E3C  0000              add [bx+si],al
00001E3E  0000              add [bx+si],al
00001E40  0000              add [bx+si],al
00001E42  0030              add [bx+si],dh
00001E44  0000              add [bx+si],al
00001E46  000C              add [si],cl
00001E48  0000              add [bx+si],al
00001E4A  0000              add [bx+si],al
00001E4C  800000            add byte [bx+si],0x0
00001E4F  00F3              add bl,dh
00001E51  0000              add [bx+si],al
00001E53  003F              add [bx],bh
00001E55  0000              add [bx+si],al
00001E57  000F              add [bx],cl
00001E59  300C              xor [si],cl
00001E5B  00FF              add bh,bh
00001E5D  0000              add [bx+si],al
00001E5F  000F              add [bx],cl
00001E61  0000              add [bx+si],al
00001E63  003F              add [bx],bh
00001E65  0000              add [bx+si],al
00001E67  0033              add [bp+di],dh
00001E69  0000              add [bx+si],al
00001E6B  00C3              add bl,al
00001E6D  0000              add [bx+si],al
00001E6F  0300              add ax,[bx+si]
00001E71  0000              add [bx+si],al
00001E73  0C00              or al,0x0
00001E75  0000              add [bx+si],al
00001E77  3000              xor [bx+si],al
00001E79  0000              add [bx+si],al
00001E7B  0000              add [bx+si],al
00001E7D  0030              add [bx+si],dh
00001E7F  0000              add [bx+si],al
00001E81  0000              add [bx+si],al
00001E83  0000              add [bx+si],al
00001E85  00C0              add al,al
00001E87  0000              add [bx+si],al
00001E89  0300              add ax,[bx+si]
00001E8B  0000              add [bx+si],al
00001E8D  0C00              or al,0x0
00001E8F  0000              add [bx+si],al
00001E91  3000              xor [bx+si],al
00001E93  0000              add [bx+si],al
00001E95  F00000            lock add [bx+si],al
00001E98  00F3              add bl,dh
00001E9A  0300              add ax,[bx+si]
00001E9C  30F0              xor al,dh
00001E9E  0000              add [bx+si],al
00001EA0  003C              add [si],bh
00001EA2  0000              add [bx+si],al
00001EA4  000F              add [bx],cl
00001EA6  0000              add [bx+si],al
00001EA8  0000              add [bx+si],al
00001EAA  C00000            rol byte [bx+si],byte 0x0
00001EAD  0030              add [bx+si],dh
00001EAF  0000              add [bx+si],al
00001EB1  000C              add [si],cl
00001EB3  0000              add [bx+si],al
00001EB5  0000              add [bx+si],al
00001EB7  0000              add [bx+si],al
00001EB9  0000              add [bx+si],al
00001EBB  0000              add [bx+si],al
00001EBD  0000              add [bx+si],al
00001EBF  0000              add [bx+si],al
00001EC1  0000              add [bx+si],al
00001EC3  0000              add [bx+si],al
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
00001ED9  60                pusha
00001EDA  0F                db 0x0f
00001EDB  3F                aas
00001EDC  F30000            rep add [bx+si],al
00001EDF  0000              add [bx+si],al
00001EE1  0000              add [bx+si],al
00001EE3  0000              add [bx+si],al
00001EE5  0000              add [bx+si],al
00001EE7  0000              add [bx+si],al
00001EE9  0000              add [bx+si],al
00001EEB  0000              add [bx+si],al
00001EED  0000              add [bx+si],al
00001EEF  0000              add [bx+si],al
00001EF1  0000              add [bx+si],al
00001EF3  0000              add [bx+si],al
00001EF5  0000              add [bx+si],al
00001EF7  0000              add [bx+si],al
00001EF9  51                push cx
00001EFA  1E                push ds
00001EFB  56                push si
00001EFC  8CC8              mov ax,cs
00001EFE  050030            add ax,0x3000
00001F01  8EC0              mov es,ax
00001F03  B82000            mov ax,0x20
00001F06  F7E1              mul cx
00001F08  8BC8              mov cx,ax
00001F0A  BF0000            mov di,0x0
00001F0D  F3A4              rep movsb
00001F0F  5F                pop di
00001F10  07                pop es
00001F11  59                pop cx
00001F12  8CC8              mov ax,cs
00001F14  050030            add ax,0x3000
00001F17  8ED8              mov ds,ax
00001F19  BE0000            mov si,0x0
00001F1C  51                push cx
00001F1D  B90800            mov cx,0x8
00001F20  51                push cx
00001F21  AD                lodsw
00001F22  8BD0              mov dx,ax
00001F24  AD                lodsw
00001F25  8BC8              mov cx,ax
00001F27  2E89166D50        mov [cs:0x506d],dx
00001F2C  2E890E7150        mov [cs:0x5071],cx
00001F31  0BC2              or ax,dx
00001F33  86C4              xchg al,ah
00001F35  8BD8              mov bx,ax
00001F37  D1EB              shr bx,0x0
00001F39  0BC3              or ax,bx
00001F3B  03DB              add bx,bx
00001F3D  03DB              add bx,bx
00001F3F  0BC3              or ax,bx
00001F41  86C4              xchg al,ah
00001F43  F7D0              not ax
00001F45  2EA37E50          mov [cs:0x507e],ax
00001F49  E81300            call 0x1f5f
00001F4C  8BC2              mov ax,dx
00001F4E  AB                stosw
00001F4F  E84A00            call 0x1f9c
00001F52  26895600          mov [es:bp+0x0],dx
00001F56  45                inc bp
00001F57  45                inc bp
00001F58  59                pop cx
00001F59  E2C5              loop 0x1f20
00001F5B  59                pop cx
00001F5C  E2BE              loop 0x1f1c
00001F5E  C3                ret
00001F5F  B90800            mov cx,0x8
00001F62  33DB              xor bx,bx
00001F64  2ED1067150        rol word [cs:0x5071],0x0
00001F69  13DB              adc bx,bx
00001F6B  2ED1066D50        rol word [cs:0x506d],0x0
00001F70  13DB              adc bx,bx
00001F72  2ED1067150        rol word [cs:0x5071],0x0
00001F77  13DB              adc bx,bx
00001F79  2ED1066D50        rol word [cs:0x506d],0x0
00001F7E  13DB              adc bx,bx
00001F80  03D2              add dx,dx
00001F82  03D2              add dx,dx
00001F84  2E0A97884F        or dl,[cs:bx+0x4f88]
00001F89  E2D7              loop 0x1f62
00001F8B  C3                ret
00001F8C  0001              add [bx+di],al
00001F8E  0201              add al,[bx+di]
00001F90  0103              add [bp+di],ax
00001F92  0301              add ax,[bx+di]
00001F94  0203              add al,[bp+di]
00001F96  0202              add al,[bp+si]
00001F98  0101              add [bx+di],ax
00001F9A  0203              add al,[bp+di]
00001F9C  B90800            mov cx,0x8
00001F9F  32C0              xor al,al
00001FA1  2ED1067E50        rol word [cs:0x507e],0x0
00001FA6  12C0              adc al,al
00001FA8  2ED1067E50        rol word [cs:0x507e],0x0
00001FAD  12C0              adc al,al
00001FAF  3C03              cmp al,0x3
00001FB1  7402              jz 0x1fb5
00001FB3  32C0              xor al,al
00001FB5  03D2              add dx,dx
00001FB7  03D2              add dx,dx
00001FB9  0AD0              or dl,al
00001FBB  E2E2              loop 0x1f9f
00001FBD  C3                ret
00001FBE  1E                push ds
00001FBF  0E                push cs
00001FC0  1F                pop ds
00001FC1  BECF4F            mov si,0x4fcf
00001FC4  2E8E062CFF        mov es,word [cs:0xff2c]
00001FC9  BF4086            mov di,0x8640
00001FCC  B92000            mov cx,0x20
00001FCF  F3A5              rep movsw
00001FD1  1F                pop ds
00001FD2  C3                ret
00001FD3  3F                aas
00001FD4  F0                lock
00001FD5  0C0C              or al,0xc
00001FD7  0C0C              or al,0xc
00001FD9  0C0C              or al,0xc
00001FDB  0F                db 0x0f
00001FDC  F0                lock
00001FDD  0CC0              or al,0xc0
00001FDF  0C30              or al,0x30
00001FE1  0C0C              or al,0xc
00001FE3  3F                aas
00001FE4  F0                lock
00001FE5  0C0C              or al,0xc
00001FE7  0C0C              or al,0xc
00001FE9  0F                db 0x0f
00001FEA  F0                lock
00001FEB  0C0C              or al,0xc
00001FED  0C0C              or al,0xc
00001FEF  0C0C              or al,0xc
00001FF1  3F                aas
00001FF2  F0                lock
00001FF3  0F                db 0x0f
00001FF4  F0300C            lock xor [si],cl
00001FF7  300C              xor [si],cl
00001FF9  3000              xor [bx+si],al
00001FFB  33FC              xor di,sp
00001FFD  300C              xor [si],cl
00001FFF  300C              xor [si],cl
00002001  0F                db 0x0f
00002002  F0300C            lock xor [si],cl
00002005  300C              xor [si],cl
00002007  3C3C              cmp al,0x3c
00002009  3C3C              cmp al,0x3c
0000200B  33CC              xor cx,sp
0000200D  33CC              xor cx,sp
0000200F  300C              xor [si],cl
00002011  300C              xor [si],cl
00002013  1B502B            sbb dx,[bx+si+0x2b]
00002016  50                push ax
00002017  3B504B            cmp dx,[bx+si+0x4b]
0000201A  50                push ax
0000201B  5B                pop bx
0000201C  50                push ax
0000201D  4B                dec bx
0000201E  50                push ax
0000201F  0001              add [bx+di],al
00002021  0203              add al,[bp+di]
00002023  0405              add al,0x5
00002025  06                push es
00002026  07                pop es
00002027  0809              or [bx+di],cl
00002029  0A0B              or cl,[bp+di]
0000202B  0C0D              or al,0xd
0000202D  0E                push cs
0000202E  0F0002            sldt word [bp+si]
00002031  0103              add [bp+di],ax
00002033  080A              or [bp+si],cl
00002035  090B              or [bp+di],cx
00002037  0406              add al,0x6
00002039  05070C            add ax,0xc07
0000203C  0E                push cs
0000203D  0D0F00            or ax,0xf
00002040  0001              add [bx+di],al
00002042  0300              add ax,[bx+si]
00002044  0001              add [bx+di],al
00002046  0304              add ax,[si]
00002048  0405              add al,0x5
0000204A  07                pop es
0000204B  0C0C              or al,0xc
0000204D  0D0F00            or ax,0xf
00002050  0203              add al,[bp+di]
00002052  0108              add [bx+si],cx
00002054  0A0B              or cl,[bp+di]
00002056  090C              or [si],cx
00002058  0E                push cs
00002059  0F0D04            prefetch [si]
0000205C  06                push es
0000205D  07                pop es
0000205E  050003            add ax,0x300
00002061  0002              add [bp+si],al
00002063  0C0F              or al,0xf
00002065  0C0E              or al,0xe
00002067  0003              add [bp+di],al
00002069  0002              add [bp+si],al
0000206B  080B              or [bp+di],cl
0000206D  080A              or [bp+si],cl
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
