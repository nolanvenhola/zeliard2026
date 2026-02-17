00000000  B622              mov dh,0x22
00000002  0000              add [bx+si],al
00000004  2C30              sub al,0x30
00000006  6239              bound di,[bx+di]
00000008  153FD3            adc ax,0xd33f
0000000B  3DAC40            cmp ax,0x40ac
0000000E  E444              in al,byte 0x44
00000010  D53F              aad byte 0x3f
00000012  7A32              jpe 0x46
00000014  A6                cmpsb
00000015  37                aaa
00000016  FE4064            inc byte [bx+si+0x64]
00000019  40                inc ax
0000001A  4C                dec sp
0000001B  395F42            cmp [bx+0x42],bx
0000001E  FE4448            inc byte [si+0x48]
00000021  45                inc bp
00000022  37                aaa
00000023  46                inc si
00000024  5C                pop sp
00000025  40                inc ax
00000026  0F494449          cmovns ax,[si+0x49]
0000002A  AE                scasb
0000002B  4A                dec dx
0000002C  6C                insb
0000002D  4E                dec si
0000002E  314F0E            xor [bx+0xe],cx
00000031  07                pop es
00000032  BF1650            mov di,0x5016
00000035  33C0              xor ax,ax
00000037  B98000            mov cx,0x80
0000003A  F3AB              rep stosw
0000003C  FE06F74F          inc byte [0x4ff7]
00000040  C706E44FFD04      mov word [0x4fe4],0x4fd
00000046  8B3631FF          mov si,[0xff31]
0000004A  83EE21            sub si,0x21
0000004D  E8F014            call 0x1540
00000050  33DB              xor bx,bx
00000052  F60480            test byte [si],0x80
00000055  7403              jz 0x5a
00000057  E8CD02            call 0x327
0000005A  46                inc si
0000005B  B90600            mov cx,0x6
0000005E  51                push cx
0000005F  F60480            test byte [si],0x80
00000062  7403              jz 0x67
00000064  E8FD02            call 0x364
00000067  46                inc si
00000068  43                inc bx
00000069  F60480            test byte [si],0x80
0000006C  7403              jz 0x71
0000006E  E8F302            call 0x364
00000071  46                inc si
00000072  43                inc bx
00000073  F60480            test byte [si],0x80
00000076  7403              jz 0x7b
00000078  E8E902            call 0x364
0000007B  46                inc si
0000007C  43                inc bx
0000007D  F60480            test byte [si],0x80
00000080  7403              jz 0x85
00000082  E8DF02            call 0x364
00000085  46                inc si
00000086  43                inc bx
00000087  59                pop cx
00000088  E2D4              loop 0x5e
0000008A  F60480            test byte [si],0x80
0000008D  7403              jz 0x92
0000008F  E8D202            call 0x364
00000092  46                inc si
00000093  43                inc bx
00000094  F60480            test byte [si],0x80
00000097  7403              jz 0x9c
00000099  E8C802            call 0x364
0000009C  46                inc si
0000009D  43                inc bx
0000009E  F60480            test byte [si],0x80
000000A1  7403              jz 0xa6
000000A3  E8BE02            call 0x364
000000A6  46                inc si
000000A7  F60480            test byte [si],0x80
000000AA  7403              jz 0xaf
000000AC  E8F902            call 0x3a8
000000AF  8B3631FF          mov si,[0xff31]
000000B3  BF00E9            mov di,0xe900
000000B6  C606EA4F12        mov byte [0x4fea],0x12
000000BB  E8E00C            call 0xd9e
000000BE  33DB              xor bx,bx
000000C0  83C603            add si,0x3
000000C3  AC                lodsb
000000C4  0AC0              or al,al
000000C6  7903              jns 0xcb
000000C8  E81503            call 0x3e0
000000CB  B90600            mov cx,0x6
000000CE  51                push cx
000000CF  A6                cmpsb
000000D0  7403              jz 0xd5
000000D2  E86100            call 0x136
000000D5  43                inc bx
000000D6  A6                cmpsb
000000D7  7403              jz 0xdc
000000D9  E85A00            call 0x136
000000DC  43                inc bx
000000DD  A6                cmpsb
000000DE  7403              jz 0xe3
000000E0  E85300            call 0x136
000000E3  43                inc bx
000000E4  A6                cmpsb
000000E5  7403              jz 0xea
000000E7  E84C00            call 0x136
000000EA  43                inc bx
000000EB  59                pop cx
000000EC  E2E0              loop 0xce
000000EE  A6                cmpsb
000000EF  7403              jz 0xf4
000000F1  E84200            call 0x136
000000F4  43                inc bx
000000F5  A6                cmpsb
000000F6  7403              jz 0xfb
000000F8  E83B00            call 0x136
000000FB  43                inc bx
000000FC  A6                cmpsb
000000FD  7403              jz 0x102
000000FF  E83400            call 0x136
00000102  43                inc bx
00000103  AC                lodsb
00000104  47                inc di
00000105  0AC0              or al,al
00000107  7903              jns 0x10c
00000109  E9E003            jmp 0x4ec
0000010C  263A45FF          cmp al,[es:di-0x1]
00000110  7403              jz 0x115
00000112  E82100            call 0x136
00000115  83C604            add si,0x4
00000118  E81914            call 0x1534
0000011B  8106E44FB440      add word [0x4fe4],0x40b4
00000121  813EE44F0060      cmp word [0x4fe4],0x6000
00000127  7206              jc 0x12f
00000129  8106E44F5AA0      add word [0x4fe4],0xa05a
0000012F  FE0EEA4F          dec byte [0x4fea]
00000133  7586              jnz 0xbb
00000135  C3                ret
00000136  8A44FF            mov al,[si-0x1]
00000139  0AC0              or al,al
0000013B  7903              jns 0x140
0000013D  E92B03            jmp 0x46b
00000140  26807DFFFC        cmp byte [es:di-0x1],0xfc
00000145  7507              jnz 0x14e
00000147  26C645FFFF        mov byte [es:di-0x1],0xff
0000014C  EB1A              jmp 0x168
0000014E  26FE45FF          inc byte [es:di-0x1]
00000152  26C645FFFE        mov byte [es:di-0x1],0xfe
00000157  740F              jz 0x168
00000159  268845FF          mov [es:di-0x1],al
0000015D  8BD3              mov dx,bx
0000015F  03D2              add dx,dx
00000161  0316E44F          add dx,[0x4fe4]
00000165  E81601            call 0x27e
00000168  A012C0            mov al,[0xc012]
0000016B  2C05              sub al,0x5
0000016D  7301              jnc 0x170
0000016F  C3                ret
00000170  3C04              cmp al,0x4
00000172  7201              jc 0x175
00000174  C3                ret
00000175  53                push bx
00000176  8AD8              mov bl,al
00000178  32FF              xor bh,bh
0000017A  03DB              add bx,bx
0000017C  FF977E31          call word near [bx+0x317e]
00000180  5B                pop bx
00000181  C3                ret
00000182  8631              xchg dh,[bx+di]
00000184  A6                cmpsb
00000185  31DC              xor sp,bx
00000187  315A32            xor [bp+si+0x32],bx
0000018A  8A44FF            mov al,[si-0x1]
0000018D  2C1B              sub al,0x1b
0000018F  3C02              cmp al,0x2
00000191  7201              jc 0x194
00000193  C3                ret
00000194  C645FFFE          mov byte [di-0x1],0xfe
00000198  F606F74F01        test byte [0x4ff7],0x1
0000019D  7501              jnz 0x1a0
0000019F  C3                ret
000001A0  FEC0              inc al
000001A2  2401              and al,0x1
000001A4  041B              add al,0x1b
000001A6  8844FF            mov [si-0x1],al
000001A9  C3                ret
000001AA  8A44FF            mov al,[si-0x1]
000001AD  2C1D              sub al,0x1d
000001AF  3C06              cmp al,0x6
000001B1  7201              jc 0x1b4
000001B3  C3                ret
000001B4  C645FFFE          mov byte [di-0x1],0xfe
000001B8  3C04              cmp al,0x4
000001BA  731A              jnc 0x1d6
000001BC  0AC0              or al,al
000001BE  750C              jnz 0x1cc
000001C0  50                push ax
000001C1  2EFF161A01        call word near [cs:0x11a]
000001C6  2403              and al,0x3
000001C8  58                pop ax
000001C9  7401              jz 0x1cc
000001CB  C3                ret
000001CC  FEC0              inc al
000001CE  2403              and al,0x3
000001D0  041D              add al,0x1d
000001D2  8844FF            mov [si-0x1],al
000001D5  C3                ret
000001D6  FEC0              inc al
000001D8  2401              and al,0x1
000001DA  0421              add al,0x21
000001DC  8844FF            mov [si-0x1],al
000001DF  C3                ret
000001E0  8A44FF            mov al,[si-0x1]
000001E3  2C2C              sub al,0x2c
000001E5  3C02              cmp al,0x2
000001E7  7316              jnc 0x1ff
000001E9  C645FFFE          mov byte [di-0x1],0xfe
000001ED  F606F74F01        test byte [0x4ff7],0x1
000001F2  7501              jnz 0x1f5
000001F4  C3                ret
000001F5  FEC0              inc al
000001F7  2401              and al,0x1
000001F9  042C              add al,0x2c
000001FB  8844FF            mov [si-0x1],al
000001FE  C3                ret
000001FF  8A44FF            mov al,[si-0x1]
00000202  3C3E              cmp al,0x3e
00000204  7201              jc 0x207
00000206  C3                ret
00000207  B333              mov bl,0x33
00000209  3C0E              cmp al,0xe
0000020B  7441              jz 0x24e
0000020D  B336              mov bl,0x36
0000020F  3C0D              cmp al,0xd
00000211  743B              jz 0x24e
00000213  B339              mov bl,0x39
00000215  3C0F              cmp al,0xf
00000217  7435              jz 0x24e
00000219  B33C              mov bl,0x3c
0000021B  3C0C              cmp al,0xc
0000021D  742F              jz 0x24e
0000021F  B33D              mov bl,0x3d
00000221  3C10              cmp al,0x10
00000223  7429              jz 0x24e
00000225  2C33              sub al,0x33
00000227  7301              jnc 0x22a
00000229  C3                ret
0000022A  B30E              mov bl,0xe
0000022C  3C02              cmp al,0x2
0000022E  741E              jz 0x24e
00000230  B30D              mov bl,0xd
00000232  3C05              cmp al,0x5
00000234  7418              jz 0x24e
00000236  B30F              mov bl,0xf
00000238  3C08              cmp al,0x8
0000023A  7412              jz 0x24e
0000023C  B30C              mov bl,0xc
0000023E  3C09              cmp al,0x9
00000240  740C              jz 0x24e
00000242  B310              mov bl,0x10
00000244  3C0A              cmp al,0xa
00000246  7406              jz 0x24e
00000248  FEC0              inc al
0000024A  0433              add al,0x33
0000024C  8AD8              mov bl,al
0000024E  C645FFFE          mov byte [di-0x1],0xfe
00000252  F606F74F01        test byte [0x4ff7],0x1
00000257  7501              jnz 0x25a
00000259  C3                ret
0000025A  885CFF            mov [si-0x1],bl
0000025D  C3                ret
0000025E  8A44FF            mov al,[si-0x1]
00000261  2C25              sub al,0x25
00000263  3C04              cmp al,0x4
00000265  7201              jc 0x268
00000267  C3                ret
00000268  C645FFFE          mov byte [di-0x1],0xfe
0000026C  F606F74F01        test byte [0x4ff7],0x1
00000271  7501              jnz 0x274
00000273  C3                ret
00000274  FEC0              inc al
00000276  2403              and al,0x3
00000278  0425              add al,0x25
0000027A  8844FF            mov [si-0x1],al
0000027D  C3                ret
0000027E  06                push es
0000027F  1E                push ds
00000280  57                push di
00000281  56                push si
00000282  53                push bx
00000283  8BFA              mov di,dx
00000285  0AC0              or al,al
00000287  747C              jz 0x305
00000289  8AD8              mov bl,al
0000028B  32FF              xor bh,bh
0000028D  03DB              add bx,bx
0000028F  F7871650FFFF      test word [bx+0x5016],0xffff
00000295  7537              jnz 0x2ce
00000297  FEC8              dec al
00000299  89BF1650          mov [bx+0x5016],di
0000029D  B110              mov cl,0x10
0000029F  F6E1              mul cl
000002A1  053080            add ax,0x8030
000002A4  8BF0              mov si,ax
000002A6  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000002AB  B800B0            mov ax,0xb000
000002AE  8EC0              mov es,ax
000002B0  B90800            mov cx,0x8
000002B3  A5                movsw
000002B4  81C7FE1F          add di,0x1ffe
000002B8  81FF0060          cmp di,0x6000
000002BC  7208              jc 0x2c6
000002BE  8B44FE            mov ax,[si-0x2]
000002C1  AB                stosw
000002C2  81C758A0          add di,0xa058
000002C6  E2EB              loop 0x2b3
000002C8  5B                pop bx
000002C9  5E                pop si
000002CA  5F                pop di
000002CB  1F                pop ds
000002CC  07                pop es
000002CD  C3                ret
000002CE  8BB71650          mov si,[bx+0x5016]
000002D2  B800B0            mov ax,0xb000
000002D5  8EC0              mov es,ax
000002D7  8ED8              mov ds,ax
000002D9  B90800            mov cx,0x8
000002DC  A5                movsw
000002DD  81C7FE1F          add di,0x1ffe
000002E1  81FF0060          cmp di,0x6000
000002E5  7208              jc 0x2ef
000002E7  8B44FE            mov ax,[si-0x2]
000002EA  AB                stosw
000002EB  81C758A0          add di,0xa058
000002EF  81C6FE1F          add si,0x1ffe
000002F3  81FE0060          cmp si,0x6000
000002F7  7204              jc 0x2fd
000002F9  81C65AA0          add si,0xa05a
000002FD  E2DD              loop 0x2dc
000002FF  5B                pop bx
00000300  5E                pop si
00000301  5F                pop di
00000302  1F                pop ds
00000303  07                pop es
00000304  C3                ret
00000305  B800B0            mov ax,0xb000
00000308  8EC0              mov es,ax
0000030A  33C0              xor ax,ax
0000030C  B90800            mov cx,0x8
0000030F  AB                stosw
00000310  81C7FE1F          add di,0x1ffe
00000314  81FF0060          cmp di,0x6000
00000318  7205              jc 0x31f
0000031A  AB                stosw
0000031B  81C758A0          add di,0xa058
0000031F  E2EE              loop 0x30f
00000321  5B                pop bx
00000322  5E                pop si
00000323  5F                pop di
00000324  1F                pop ds
00000325  07                pop es
00000326  C3                ret
00000327  803E00E9FF        cmp byte [0xe900],0xff
0000032C  7501              jnz 0x32f
0000032E  C3                ret
0000032F  803E00E9FC        cmp byte [0xe900],0xfc
00000334  7501              jnz 0x337
00000336  C3                ret
00000337  56                push si
00000338  53                push bx
00000339  C60600E9FF        mov byte [0xe900],0xff
0000033E  8A0C              mov cl,[si]
00000340  83C625            add si,0x25
00000343  E8EE11            call 0x1534
00000346  8A04              mov al,[si]
00000348  0AC0              or al,al
0000034A  7903              jns 0x34f
0000034C  E88903            call 0x6d8
0000034F  50                push ax
00000350  8AC1              mov al,cl
00000352  E88A03            call 0x6df
00000355  83C603            add si,0x3
00000358  58                pop ax
00000359  8A24              mov ah,[si]
0000035B  BAFD04            mov dx,0x4fd
0000035E  E84602            call 0x5a7
00000361  5B                pop bx
00000362  5E                pop si
00000363  C3                ret
00000364  56                push si
00000365  53                push bx
00000366  8BCB              mov cx,bx
00000368  8BFB              mov di,bx
0000036A  81C700E9          add di,0xe900
0000036E  BB0950            mov bx,0x5009
00000371  B0FF              mov al,0xff
00000373  8605              xchg al,[di]
00000375  8807              mov [bx],al
00000377  C6470100          mov byte [bx+0x1],0x0
0000037B  C64501FF          mov byte [di+0x1],0xff
0000037F  8BD1              mov dx,cx
00000381  03D2              add dx,dx
00000383  81C2FD04          add dx,0x4fd
00000387  8A0C              mov cl,[si]
00000389  83C624            add si,0x24
0000038C  E8A511            call 0x1534
0000038F  BB0D50            mov bx,0x500d
00000392  AD                lodsw
00000393  8907              mov [bx],ax
00000395  8AC1              mov al,cl
00000397  E84503            call 0x6df
0000039A  46                inc si
0000039B  46                inc si
0000039C  BF0D50            mov di,0x500d
0000039F  BD0950            mov bp,0x5009
000003A2  E8D501            call 0x57a
000003A5  5B                pop bx
000003A6  5E                pop si
000003A7  C3                ret
000003A8  803E1BE9FF        cmp byte [0xe91b],0xff
000003AD  7501              jnz 0x3b0
000003AF  C3                ret
000003B0  803E1BE9FC        cmp byte [0xe91b],0xfc
000003B5  7501              jnz 0x3b8
000003B7  C3                ret
000003B8  C6061BE9FF        mov byte [0xe91b],0xff
000003BD  8A0C              mov cl,[si]
000003BF  83C624            add si,0x24
000003C2  E86F11            call 0x1534
000003C5  8A04              mov al,[si]
000003C7  0AC0              or al,al
000003C9  7903              jns 0x3ce
000003CB  E80A03            call 0x6d8
000003CE  50                push ax
000003CF  8AC1              mov al,cl
000003D1  E80B03            call 0x6df
000003D4  83C602            add si,0x2
000003D7  58                pop ax
000003D8  8A24              mov ah,[si]
000003DA  BA3305            mov dx,0x533
000003DD  E9C701            jmp 0x5a7
000003E0  56                push si
000003E1  57                push di
000003E2  53                push bx
000003E3  53                push bx
000003E4  BB0950            mov bx,0x5009
000003E7  B0FF              mov al,0xff
000003E9  8605              xchg al,[di]
000003EB  8807              mov [bx],al
000003ED  B0FF              mov al,0xff
000003EF  86451C            xchg al,[di+0x1c]
000003F2  884701            mov [bx+0x1],al
000003F5  8A4CFF            mov cl,[si-0x1]
000003F8  8A14              mov dl,[si]
000003FA  83C624            add si,0x24
000003FD  E83411            call 0x1534
00000400  8A34              mov dh,[si]
00000402  8AC1              mov al,cl
00000404  E8D802            call 0x6df
00000407  46                inc si
00000408  8BDA              mov bx,dx
0000040A  5A                pop dx
0000040B  03D2              add dx,dx
0000040D  0316E44F          add dx,[0x4fe4]
00000411  803E0950FF        cmp byte [0x5009],0xff
00000416  741B              jz 0x433
00000418  803E0950FC        cmp byte [0x5009],0xfc
0000041D  7414              jz 0x433
0000041F  8A24              mov ah,[si]
00000421  8AC3              mov al,bl
00000423  53                push bx
00000424  56                push si
00000425  52                push dx
00000426  0AC0              or al,al
00000428  7903              jns 0x42d
0000042A  E8AB02            call 0x6d8
0000042D  E87701            call 0x5a7
00000430  5A                pop dx
00000431  5E                pop si
00000432  5B                pop bx
00000433  81C2B440          add dx,0x40b4
00000437  81FA0060          cmp dx,0x6000
0000043B  7204              jc 0x441
0000043D  81C25AA0          add dx,0xa05a
00000441  803EEA4F01        cmp byte [0x4fea],0x1
00000446  741F              jz 0x467
00000448  803E0A50FF        cmp byte [0x500a],0xff
0000044D  7418              jz 0x467
0000044F  803E0A50FC        cmp byte [0x500a],0xfc
00000454  7411              jz 0x467
00000456  46                inc si
00000457  46                inc si
00000458  AC                lodsb
00000459  8AE0              mov ah,al
0000045B  8AC7              mov al,bh
0000045D  0AC0              or al,al
0000045F  7903              jns 0x464
00000461  E87402            call 0x6d8
00000464  E84001            call 0x5a7
00000467  5B                pop bx
00000468  5F                pop di
00000469  5E                pop si
0000046A  C3                ret
0000046B  56                push si
0000046C  57                push di
0000046D  53                push bx
0000046E  53                push bx
0000046F  BB0950            mov bx,0x5009
00000472  B8FEFF            mov ax,0xfffe
00000475  8745FF            xchg ax,[di-0x1]
00000478  8907              mov [bx],ax
0000047A  B8FFFF            mov ax,0xffff
0000047D  87451B            xchg ax,[di+0x1b]
00000480  894702            mov [bx+0x2],ax
00000483  8A4CFF            mov cl,[si-0x1]
00000486  BB0D50            mov bx,0x500d
00000489  8A04              mov al,[si]
0000048B  884701            mov [bx+0x1],al
0000048E  83C624            add si,0x24
00000491  E8A010            call 0x1534
00000494  8B44FF            mov ax,[si-0x1]
00000497  894702            mov [bx+0x2],ax
0000049A  5A                pop dx
0000049B  8816EB4F          mov [0x4feb],dl
0000049F  A0EA4F            mov al,[0x4fea]
000004A2  F6D8              neg al
000004A4  0412              add al,0x12
000004A6  A2EC4F            mov [0x4fec],al
000004A9  03D2              add dx,dx
000004AB  0316E44F          add dx,[0x4fe4]
000004AF  8AC1              mov al,cl
000004B1  E82B02            call 0x6df
000004B4  BF0D50            mov di,0x500d
000004B7  8805              mov [di],al
000004B9  BD0950            mov bp,0x5009
000004BC  E8BB00            call 0x57a
000004BF  803EEA4F01        cmp byte [0x4fea],0x1
000004C4  7422              jz 0x4e8
000004C6  81C2B040          add dx,0x40b0
000004CA  81FA0060          cmp dx,0x6000
000004CE  7204              jc 0x4d4
000004D0  81C25AA0          add dx,0xa05a
000004D4  E8A300            call 0x57a
000004D7  F60634FFFF        test byte [0xff34],0xff
000004DC  740A              jz 0x4e8
000004DE  F6062FFFFF        test byte [0xff2f],0xff
000004E3  7403              jz 0x4e8
000004E5  E84802            call 0x730
000004E8  5B                pop bx
000004E9  5F                pop di
000004EA  5E                pop si
000004EB  C3                ret
000004EC  56                push si
000004ED  57                push di
000004EE  53                push bx
000004EF  53                push bx
000004F0  BB0950            mov bx,0x5009
000004F3  B0FE              mov al,0xfe
000004F5  8645FF            xchg al,[di-0x1]
000004F8  8807              mov [bx],al
000004FA  B0FF              mov al,0xff
000004FC  86451B            xchg al,[di+0x1b]
000004FF  884701            mov [bx+0x1],al
00000502  8A4CFF            mov cl,[si-0x1]
00000505  83C624            add si,0x24
00000508  E82910            call 0x1534
0000050B  8A54FF            mov dl,[si-0x1]
0000050E  8AC1              mov al,cl
00000510  E8CC01            call 0x6df
00000513  8AD8              mov bl,al
00000515  8AFA              mov bh,dl
00000517  5A                pop dx
00000518  03D2              add dx,dx
0000051A  0316E44F          add dx,[0x4fe4]
0000051E  803E0950FF        cmp byte [0x5009],0xff
00000523  741B              jz 0x540
00000525  803E0950FC        cmp byte [0x5009],0xfc
0000052A  7414              jz 0x540
0000052C  8A24              mov ah,[si]
0000052E  8AC3              mov al,bl
00000530  53                push bx
00000531  56                push si
00000532  52                push dx
00000533  0AC0              or al,al
00000535  7903              jns 0x53a
00000537  E89E01            call 0x6d8
0000053A  E86A00            call 0x5a7
0000053D  5A                pop dx
0000053E  5E                pop si
0000053F  5B                pop bx
00000540  81C2B440          add dx,0x40b4
00000544  81FA0060          cmp dx,0x6000
00000548  7204              jc 0x54e
0000054A  81C25AA0          add dx,0xa05a
0000054E  803EEA4F01        cmp byte [0x4fea],0x1
00000553  741F              jz 0x574
00000555  803E0A50FF        cmp byte [0x500a],0xff
0000055A  7418              jz 0x574
0000055C  803E0A50FC        cmp byte [0x500a],0xfc
00000561  7411              jz 0x574
00000563  46                inc si
00000564  46                inc si
00000565  AC                lodsb
00000566  8AE0              mov ah,al
00000568  8AC7              mov al,bh
0000056A  0AC0              or al,al
0000056C  7903              jns 0x571
0000056E  E86701            call 0x6d8
00000571  E83300            call 0x5a7
00000574  5B                pop bx
00000575  5F                pop di
00000576  5E                pop si
00000577  E99BFB            jmp 0x115
0000057A  E80000            call 0x57d
0000057D  3E807E00FF        cmp byte [ds:bp+0x0],0xff
00000582  741D              jz 0x5a1
00000584  3E807E00FC        cmp byte [ds:bp+0x0],0xfc
00000589  7416              jz 0x5a1
0000058B  8A24              mov ah,[si]
0000058D  8A05              mov al,[di]
0000058F  0AC0              or al,al
00000591  7903              jns 0x596
00000593  E84201            call 0x6d8
00000596  55                push bp
00000597  56                push si
00000598  57                push di
00000599  52                push dx
0000059A  E80A00            call 0x5a7
0000059D  5A                pop dx
0000059E  5F                pop di
0000059F  5E                pop si
000005A0  5D                pop bp
000005A1  46                inc si
000005A2  47                inc di
000005A3  45                inc bp
000005A4  42                inc dx
000005A5  42                inc dx
000005A6  C3                ret
000005A7  06                push es
000005A8  1E                push ds
000005A9  8A1EED4F          mov bl,[0x4fed]
000005AD  0AC0              or al,al
000005AF  7405              jz 0x5b6
000005B1  7803              js 0x5b6
000005B3  80CB80            or bl,0x80
000005B6  8AC8              mov cl,al
000005B8  8AC4              mov al,ah
000005BA  B510              mov ch,0x10
000005BC  F6E5              mul ch
000005BE  8BF0              mov si,ax
000005C0  81C60040          add si,0x4000
000005C4  8BE8              mov bp,ax
000005C6  81C500A0          add bp,0xa000
000005CA  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000005CF  8BFA              mov di,dx
000005D1  0E                push cs
000005D2  07                pop es
000005D3  8AEB              mov ch,bl
000005D5  80E37F            and bl,0x7f
000005D8  32FF              xor bh,bh
000005DA  03DB              add bx,bx
000005DC  2E8B87864F        mov ax,[cs:bx+0x4f86]
000005E1  2EA3E24F          mov [cs:0x4fe2],ax
000005E5  8AC1              mov al,cl
000005E7  0AED              or ch,ch
000005E9  7818              js 0x603
000005EB  57                push di
000005EC  BFA652            mov di,0x52a6
000005EF  E85700            call 0x649
000005F2  5F                pop di
000005F3  BEA652            mov si,0x52a6
000005F6  0E                push cs
000005F7  1F                pop ds
000005F8  B800B0            mov ax,0xb000
000005FB  8EC0              mov es,ax
000005FD  E8B100            call 0x6b1
00000600  1F                pop ds
00000601  07                pop es
00000602  C3                ret
00000603  57                push di
00000604  BFA652            mov di,0x52a6
00000607  E81100            call 0x61b
0000060A  5F                pop di
0000060B  BEA652            mov si,0x52a6
0000060E  0E                push cs
0000060F  1F                pop ds
00000610  B800B0            mov ax,0xb000
00000613  8EC0              mov es,ax
00000615  E89900            call 0x6b1
00000618  1F                pop ds
00000619  07                pop es
0000061A  C3                ret
0000061B  55                push bp
0000061C  56                push si
0000061D  57                push di
0000061E  FEC9              dec cl
00000620  B010              mov al,0x10
00000622  F6E1              mul cl
00000624  053080            add ax,0x8030
00000627  8BF0              mov si,ax
00000629  E89E00            call 0x6ca
0000062C  5F                pop di
0000062D  5E                pop si
0000062E  5D                pop bp
0000062F  EB00              jmp 0x631
00000631  B90800            mov cx,0x8
00000634  3E8B4600          mov ax,[ds:bp+0x0]
00000638  262105            and [es:di],ax
0000063B  AD                lodsw
0000063C  E81500            call 0x654
0000063F  260905            or [es:di],ax
00000642  45                inc bp
00000643  45                inc bp
00000644  47                inc di
00000645  47                inc di
00000646  E2EC              loop 0x634
00000648  C3                ret
00000649  B90800            mov cx,0x8
0000064C  AD                lodsw
0000064D  E80400            call 0x654
00000650  AB                stosw
00000651  E2F9              loop 0x64c
00000653  C3                ret
00000654  8BD8              mov bx,ax
00000656  D0EF              shr bh,0x0
00000658  D0EF              shr bh,0x0
0000065A  D0EF              shr bh,0x0
0000065C  D0EF              shr bh,0x0
0000065E  8ADF              mov bl,bh
00000660  32FF              xor bh,bh
00000662  2E031EE24F        add bx,[cs:0x4fe2]
00000667  2E8A37            mov dh,[cs:bx]
0000066A  02F6              add dh,dh
0000066C  02F6              add dh,dh
0000066E  02F6              add dh,dh
00000670  02F6              add dh,dh
00000672  8BD8              mov bx,ax
00000674  80E70F            and bh,0xf
00000677  8ADF              mov bl,bh
00000679  32FF              xor bh,bh
0000067B  2E031EE24F        add bx,[cs:0x4fe2]
00000680  2E0A37            or dh,[cs:bx]
00000683  8BD8              mov bx,ax
00000685  D0EB              shr bl,0x0
00000687  D0EB              shr bl,0x0
00000689  D0EB              shr bl,0x0
0000068B  D0EB              shr bl,0x0
0000068D  32FF              xor bh,bh
0000068F  2E031EE24F        add bx,[cs:0x4fe2]
00000694  2E8A17            mov dl,[cs:bx]
00000697  02D2              add dl,dl
00000699  02D2              add dl,dl
0000069B  02D2              add dl,dl
0000069D  02D2              add dl,dl
0000069F  8BD8              mov bx,ax
000006A1  80E30F            and bl,0xf
000006A4  32FF              xor bh,bh
000006A6  2E031EE24F        add bx,[cs:0x4fe2]
000006AB  2E0A17            or dl,[cs:bx]
000006AE  8BC2              mov ax,dx
000006B0  C3                ret
000006B1  B90800            mov cx,0x8
000006B4  A5                movsw
000006B5  81C7FE1F          add di,0x1ffe
000006B9  81FF0060          cmp di,0x6000
000006BD  7208              jc 0x6c7
000006BF  8B44FE            mov ax,[si-0x2]
000006C2  AB                stosw
000006C3  81C758A0          add di,0xa058
000006C7  E2EB              loop 0x6b4
000006C9  C3                ret
000006CA  B90800            mov cx,0x8
000006CD  F3A5              rep movsw
000006CF  C3                ret
000006D0  33C0              xor ax,ax
000006D2  B90800            mov cx,0x8
000006D5  F3AB              rep stosw
000006D7  C3                ret
000006D8  247F              and al,0x7f
000006DA  BB20ED            mov bx,0xed20
000006DD  D7                xlatb
000006DE  C3                ret
000006DF  247F              and al,0x7f
000006E1  8AD8              mov bl,al
000006E3  32FF              xor bh,bh
000006E5  8A8F20ED          mov cl,[bx-0x12e0]
000006E9  B510              mov ch,0x10
000006EB  F6E5              mul ch
000006ED  030610C0          add ax,[0xc010]
000006F1  8BE8              mov bp,ax
000006F3  3E8A4606          mov al,[ds:bp+0x6]
000006F7  240F              and al,0xf
000006F9  B505              mov ch,0x5
000006FB  F6E5              mul ch
000006FD  BE70A0            mov si,0xa070
00000700  3EF6460580        test byte [ds:bp+0x5],0x80
00000705  7503              jnz 0x70a
00000707  BE30A0            mov si,0xa030
0000070A  3E8A5E04          mov bl,[ds:bp+0x4]
0000070E  80E31F            and bl,0x1f
00000711  02DB              add bl,bl
00000713  32FF              xor bh,bh
00000715  0300              add ax,[bx+si]
00000717  8BF0              mov si,ax
00000719  AC                lodsb
0000071A  F60634FFFF        test byte [0xff34],0xff
0000071F  7509              jnz 0x72a
00000721  3EF6460520        test byte [ds:bp+0x5],0x20
00000726  7402              jz 0x72a
00000728  0403              add al,0x3
0000072A  A2ED4F            mov [0x4fed],al
0000072D  8AC1              mov al,cl
0000072F  C3                ret
00000730  803EEC4F10        cmp byte [0x4fec],0x10
00000735  7201              jc 0x738
00000737  C3                ret
00000738  0E                push cs
00000739  07                pop es
0000073A  2EFF161A01        call word near [cs:0x11a]
0000073F  240F              and al,0xf
00000741  3C0E              cmp al,0xe
00000743  7301              jnc 0x746
00000745  C3                ret
00000746  BFA0ED            mov di,0xeda0
00000749  32C9              xor cl,cl
0000074B  803DFF            cmp byte [di],0xff
0000074E  7407              jz 0x757
00000750  83C704            add di,0x4
00000753  FEC1              inc cl
00000755  EBF4              jmp 0x74b
00000757  80F920            cmp cl,0x20
0000075A  7201              jc 0x75d
0000075C  C3                ret
0000075D  2EFF161A01        call word near [cs:0x11a]
00000762  2403              and al,0x3
00000764  3C03              cmp al,0x3
00000766  74F5              jz 0x75d
00000768  FEC8              dec al
0000076A  0206EB4F          add al,[0x4feb]
0000076E  3CFF              cmp al,0xff
00000770  7502              jnz 0x774
00000772  B004              mov al,0x4
00000774  3C1B              cmp al,0x1b
00000776  7202              jc 0x77a
00000778  B01A              mov al,0x1a
0000077A  AA                stosb
0000077B  2EFF161A01        call word near [cs:0x11a]
00000780  2403              and al,0x3
00000782  3C03              cmp al,0x3
00000784  74F5              jz 0x77b
00000786  FEC8              dec al
00000788  0206EC4F          add al,[0x4fec]
0000078C  3CFF              cmp al,0xff
0000078E  7502              jnz 0x792
00000790  32C0              xor al,al
00000792  AA                stosb
00000793  B003              mov al,0x3
00000795  AA                stosb
00000796  2EFF161A01        call word near [cs:0x11a]
0000079B  2403              and al,0x3
0000079D  BBA237            mov bx,0x37a2
000007A0  D7                xlatb
000007A1  AA                stosb
000007A2  B0FF              mov al,0xff
000007A4  AA                stosb
000007A5  C3                ret
000007A6  55                push bp
000007A7  AA                stosb
000007A8  FFAA0E07          jmp word far [bp+si+0x70e]
000007AC  BFA0ED            mov di,0xeda0
000007AF  8BF7              mov si,di
000007B1  803CFF            cmp byte [si],0xff
000007B4  7504              jnz 0x7ba
000007B6  C605FF            mov byte [di],0xff
000007B9  C3                ret
000007BA  8A4401            mov al,[si+0x1]
000007BD  B11C              mov cl,0x1c
000007BF  F6E1              mul cl
000007C1  8A0C              mov cl,[si]
000007C3  32ED              xor ch,ch
000007C5  03C1              add ax,cx
000007C7  57                push di
000007C8  0500E9            add ax,0xe900
000007CB  8BF8              mov di,ax
000007CD  B0FE              mov al,0xfe
000007CF  AA                stosb
000007D0  AA                stosb
000007D1  83C71A            add di,0x1a
000007D4  AA                stosb
000007D5  AA                stosb
000007D6  5F                pop di
000007D7  8A04              mov al,[si]
000007D9  32E4              xor ah,ah
000007DB  03C0              add ax,ax
000007DD  05FD04            add ax,0x4fd
000007E0  33C9              xor cx,cx
000007E2  8A4C01            mov cl,[si+0x1]
000007E5  E30D              jcxz 0x7f4
000007E7  05B440            add ax,0x40b4
000007EA  3D0060            cmp ax,0x6000
000007ED  7203              jc 0x7f2
000007EF  055AA0            add ax,0xa05a
000007F2  E2F3              loop 0x7e7
000007F4  56                push si
000007F5  57                push di
000007F6  06                push es
000007F7  50                push ax
000007F8  8A5C02            mov bl,[si+0x2]
000007FB  80E303            and bl,0x3
000007FE  02DB              add bl,bl
00000800  32FF              xor bh,bh
00000802  8BB74438          mov si,[bx+0x3844]
00000806  5F                pop di
00000807  B800B0            mov ax,0xb000
0000080A  8EC0              mov es,ax
0000080C  B91000            mov cx,0x10
0000080F  AD                lodsw
00000810  8BD8              mov bx,ax
00000812  AD                lodsw
00000813  26091D            or [es:di],bx
00000816  26094502          or [es:di+0x2],ax
0000081A  81C70020          add di,0x2000
0000081E  81FF0060          cmp di,0x6000
00000822  720B              jc 0x82f
00000824  26091D            or [es:di],bx
00000827  26094502          or [es:di+0x2],ax
0000082B  81C75AA0          add di,0xa05a
0000082F  E2DE              loop 0x80f
00000831  07                pop es
00000832  5F                pop di
00000833  5E                pop si
00000834  FE4C02            dec byte [si+0x2]
00000837  807C02FF          cmp byte [si+0x2],0xff
0000083B  7405              jz 0x842
0000083D  A5                movsw
0000083E  A5                movsw
0000083F  83EE04            sub si,0x4
00000842  83C604            add si,0x4
00000845  E969FF            jmp 0x7b1
00000848  0C39              or al,0x39
0000084A  CC                int3
0000084B  388C384C          cmp [si+0x4c38],cl
0000084F  3800              cmp [bx+si],al
00000851  0000              add [bx+si],al
00000853  0000              add [bx+si],al
00000855  0000              add [bx+si],al
00000857  0000              add [bx+si],al
00000859  0000              add [bx+si],al
0000085B  0000              add [bx+si],al
0000085D  0000              add [bx+si],al
0000085F  0000              add [bx+si],al
00000861  0BD0              or dx,ax
00000863  0000              add [bx+si],al
00000865  5F                pop di
00000866  FA                cli
00000867  0000              add [bx+si],al
00000869  7FFE              jg 0x869
0000086B  0000              add [bx+si],al
0000086D  FF                db 0xff
0000086E  FF00              inc word [bx+si]
00000870  00FF              add bh,bh
00000872  FF00              inc word [bx+si]
00000874  007FFE            add [bx-0x2],bh
00000877  0000              add [bx+si],al
00000879  5F                pop di
0000087A  FA                cli
0000087B  0000              add [bx+si],al
0000087D  0BD0              or dx,ax
0000087F  0000              add [bx+si],al
00000881  0000              add [bx+si],al
00000883  0000              add [bx+si],al
00000885  0000              add [bx+si],al
00000887  0000              add [bx+si],al
00000889  0000              add [bx+si],al
0000088B  0000              add [bx+si],al
0000088D  0000              add [bx+si],al
0000088F  0000              add [bx+si],al
00000891  0000              add [bx+si],al
00000893  0000              add [bx+si],al
00000895  0000              add [bx+si],al
00000897  0000              add [bx+si],al
00000899  2F                das
0000089A  F4                hlt
0000089B  0000              add [bx+si],al
0000089D  FF                db 0xff
0000089E  FF00              inc word [bx+si]
000008A0  03FF              add di,di
000008A2  FFC0              inc ax
000008A4  07                pop es
000008A5  FF                db 0xff
000008A6  FF                db 0xff
000008A7  E00F              loopne 0x8b8
000008A9  FA                cli
000008AA  5F                pop di
000008AB  F0                lock
000008AC  0F                db 0x0f
000008AD  F0                lock
000008AE  0F                db 0x0f
000008AF  F0                lock
000008B0  0F                db 0x0f
000008B1  F0                lock
000008B2  0F                db 0x0f
000008B3  F0                lock
000008B4  0FFA5FF0          psubd mm3,[bx-0x10]
000008B8  07                pop es
000008B9  FF                db 0xff
000008BA  FF                db 0xff
000008BB  E003              loopne 0x8c0
000008BD  FF                db 0xff
000008BE  FFC0              inc ax
000008C0  00FF              add bh,bh
000008C2  FF00              inc word [bx+si]
000008C4  002F              add [bx],ch
000008C6  F4                hlt
000008C7  0000              add [bx+si],al
000008C9  0000              add [bx+si],al
000008CB  0000              add [bx+si],al
000008CD  0000              add [bx+si],al
000008CF  0000              add [bx+si],al
000008D1  2F                das
000008D2  F4                hlt
000008D3  0001              add [bx+di],al
000008D5  7FFE              jg 0x8d5
000008D7  8007FF            add byte [bx],0xff
000008DA  FF                db 0xff
000008DB  E00F              loopne 0x8ec
000008DD  FF                db 0xff
000008DE  FFF0              push ax
000008E0  3F                aas
000008E1  F4                hlt
000008E2  2F                das
000008E3  FC                cld
000008E4  7FA0              jg 0x886
000008E6  05FE7F            add ax,0x7ffe
000008E9  8001FE            add byte [bx+di],0xfe
000008EC  FF00              inc word [bx+si]
000008EE  00FF              add bh,bh
000008F0  FF00              inc word [bx+si]
000008F2  00FF              add bh,bh
000008F4  7F80              jg 0x876
000008F6  01FE              add si,di
000008F8  7FA0              jg 0x89a
000008FA  05FE3F            add ax,0x3ffe
000008FD  F4                hlt
000008FE  2F                das
000008FF  FC                cld
00000900  0FFFFF            ud0 di,di
00000903  F0                lock
00000904  07                pop es
00000905  FF                db 0xff
00000906  FF                db 0xff
00000907  E001              loopne 0x90a
00000909  7FFE              jg 0x909
0000090B  80002F            add byte [bx+si],0x2f
0000090E  F4                hlt
0000090F  0000              add [bx+si],al
00000911  2F                das
00000912  F4                hlt
00000913  0001              add [bx+di],al
00000915  7FFE              jg 0x915
00000917  8007D0            add byte [bx],0xd0
0000091A  0BE0              or sp,ax
0000091C  0F0000            sldt word [bx+si]
0000091F  F0                lock
00000920  3C00              cmp al,0x0
00000922  003C              add [si],bh
00000924  7800              js 0x926
00000926  001E7000          add [0x70],bl
0000092A  000EF000          add [0xf0],cl
0000092E  000F              add [bx],cl
00000930  F00000            lock add [bx+si],al
00000933  0F700000          pshufw mm0,[bx+si],0x0
00000937  0E                push cs
00000938  7800              js 0x93a
0000093A  001E3C00          add [0x3c],bl
0000093E  003C              add [si],bh
00000940  0F0000            sldt word [bx+si]
00000943  F0                lock
00000944  07                pop es
00000945  D00B              ror byte [bp+di],0x0
00000947  E001              loopne 0x94a
00000949  7FFE              jg 0x949
0000094B  80002F            add byte [bx+si],0x2f
0000094E  F4                hlt
0000094F  00BF0D50          add [bx+0x500d],bh
00000953  0E                push cs
00000954  07                pop es
00000955  33C0              xor ax,ax
00000957  AB                stosw
00000958  AB                stosw
00000959  AB                stosw
0000095A  AB                stosw
0000095B  AA                stosb
0000095C  BFF94F            mov di,0x4ff9
0000095F  B90800            mov cx,0x8
00000962  F3AB              rep stosw
00000964  EB3C              jmp 0x9a2
00000966  E80604            call 0xd6f
00000969  BFF94F            mov di,0x4ff9
0000096C  8A1635FF          mov dl,[0xff35]
00000970  FECA              dec dl
00000972  B90400            mov cx,0x4
00000975  51                push cx
00000976  80E23F            and dl,0x3f
00000979  B024              mov al,0x24
0000097B  F6E2              mul dl
0000097D  8BD8              mov bx,ax
0000097F  81C300E0          add bx,0xe000
00000983  A08300            mov al,[0x83]
00000986  0403              add al,0x3
00000988  32E4              xor ah,ah
0000098A  03D8              add bx,ax
0000098C  B90400            mov cx,0x4
0000098F  8A07              mov al,[bx]
00000991  0AC0              or al,al
00000993  7802              js 0x997
00000995  32C0              xor al,al
00000997  8805              mov [di],al
00000999  43                inc bx
0000099A  47                inc di
0000099B  E2F2              loop 0x98f
0000099D  FEC2              inc dl
0000099F  59                pop cx
000009A0  E2D3              loop 0x975
000009A2  8A1E8400          mov bl,[0x84]
000009A6  02DB              add bl,bl
000009A8  02DB              add bl,bl
000009AA  02DB              add bl,bl
000009AC  80C30E            add bl,0xe
000009AF  8A3E8300          mov bh,[0x83]
000009B3  80C706            add bh,0x6
000009B6  02FF              add bh,bh
000009B8  E88F14            call 0x1e4a
000009BB  A3E64F            mov [0x4fe6],ax
000009BE  C606EB4F00        mov byte [0x4feb],0x0
000009C3  BE0D50            mov si,0x500d
000009C6  BFF94F            mov di,0x4ff9
000009C9  B90300            mov cx,0x3
000009CC  51                push cx
000009CD  B90300            mov cx,0x3
000009D0  51                push cx
000009D1  B82F3A            mov ax,0x3a2f
000009D4  50                push ax
000009D5  8A05              mov al,[di]
000009D7  0A4501            or al,[di+0x1]
000009DA  0A4504            or al,[di+0x4]
000009DD  0A4505            or al,[di+0x5]
000009E0  7503              jnz 0x9e5
000009E2  E9F602            jmp 0xcdb
000009E5  F605FF            test byte [di],0xff
000009E8  740F              jz 0x9f9
000009EA  8A05              mov al,[di]
000009EC  56                push si
000009ED  E8EFFC            call 0x6df
000009F0  46                inc si
000009F1  46                inc si
000009F2  46                inc si
000009F3  8A04              mov al,[si]
000009F5  5E                pop si
000009F6  E91A03            jmp 0xd13
000009F9  F64501FF          test byte [di+0x1],0xff
000009FD  740F              jz 0xa0e
000009FF  8A4501            mov al,[di+0x1]
00000A02  56                push si
00000A03  E8D9FC            call 0x6df
00000A06  46                inc si
00000A07  46                inc si
00000A08  8A04              mov al,[si]
00000A0A  5E                pop si
00000A0B  E90503            jmp 0xd13
00000A0E  F64504FF          test byte [di+0x4],0xff
00000A12  740E              jz 0xa22
00000A14  8A4504            mov al,[di+0x4]
00000A17  56                push si
00000A18  E8C4FC            call 0x6df
00000A1B  46                inc si
00000A1C  8A04              mov al,[si]
00000A1E  5E                pop si
00000A1F  E9F102            jmp 0xd13
00000A22  8A4505            mov al,[di+0x5]
00000A25  56                push si
00000A26  E8B6FC            call 0x6df
00000A29  8A0C              mov cl,[si]
00000A2B  5E                pop si
00000A2C  8804              mov [si],al
00000A2E  8AC1              mov al,cl
00000A30  E9E002            jmp 0xd13
00000A33  FE06EB4F          inc byte [0x4feb]
00000A37  47                inc di
00000A38  46                inc si
00000A39  59                pop cx
00000A3A  E294              loop 0x9d0
00000A3C  59                pop cx
00000A3D  47                inc di
00000A3E  E28C              loop 0x9cc
00000A40  8A1E36FF          mov bl,[0xff36]
00000A44  80E303            and bl,0x3
00000A47  32FF              xor bh,bh
00000A49  03DB              add bx,bx
00000A4B  2E8B87864F        mov ax,[cs:bx+0x4f86]
00000A50  2EA3E24F          mov [cs:0x4fe2],ax
00000A54  2E8E062CFF        mov es,word [cs:0xff2c]
00000A59  A0E800            mov al,[0xe8]
00000A5C  0A0639FF          or al,[0xff39]
00000A60  0A063AFF          or al,[0xff3a]
00000A64  7403              jz 0xa69
00000A66  E9C200            jmp 0xb2b
00000A69  B1FF              mov cl,0xff
00000A6B  BE1761            mov si,0x6117
00000A6E  F606C20001        test byte [0xc2],0x1
00000A73  7405              jz 0xa7a
00000A75  32C9              xor cl,cl
00000A77  BEB961            mov si,0x61b9
00000A7A  F60640FFFF        test byte [0xff40],0xff
00000A7F  7442              jz 0xac3
00000A81  FEC1              inc cl
00000A83  751A              jnz 0xa9f
00000A85  A03FFF            mov al,[0xff3f]
00000A88  D0E8              shr al,0x0
00000A8A  B109              mov cl,0x9
00000A8C  F6E1              mul cl
00000A8E  50                push ax
00000A8F  E83702            call 0xcc9
00000A92  B124              mov cl,0x24
00000A94  F6E1              mul cl
00000A96  5E                pop si
00000A97  03F0              add si,ax
00000A99  81C6C762          add si,0x62c7
00000A9D  EB6D              jmp 0xb0c
00000A9F  A03FFF            mov al,[0xff3f]
00000AA2  D0E8              shr al,0x0
00000AA4  B109              mov cl,0x9
00000AA6  F6E1              mul cl
00000AA8  052400            add ax,0x24
00000AAB  8A1641FF          mov dl,[0xff41]
00000AAF  FECA              dec dl
00000AB1  7505              jnz 0xab8
00000AB3  052400            add ax,0x24
00000AB6  EB07              jmp 0xabf
00000AB8  FECA              dec dl
00000ABA  7503              jnz 0xabf
00000ABC  B86300            mov ax,0x63
00000ABF  03F0              add si,ax
00000AC1  EB49              jmp 0xb0c
00000AC3  E80302            call 0xcc9
00000AC6  0AC0              or al,al
00000AC8  7424              jz 0xaee
00000ACA  FEC8              dec al
00000ACC  8AC8              mov cl,al
00000ACE  F606C20001        test byte [0xc2],0x1
00000AD3  7519              jnz 0xaee
00000AD5  B86C00            mov ax,0x6c
00000AD8  8A1638FF          mov dl,[0xff38]
00000ADC  80E209            and dl,0x9
00000ADF  32F6              xor dh,dh
00000AE1  03C2              add ax,dx
00000AE3  0AC9              or cl,cl
00000AE5  7403              jz 0xaea
00000AE7  051B00            add ax,0x1b
00000AEA  03F0              add si,ax
00000AEC  EB1E              jmp 0xb0c
00000AEE  F60638FFFF        test byte [0xff38],0xff
00000AF3  7536              jnz 0xb2b
00000AF5  A0E700            mov al,[0xe7]
00000AF8  3C80              cmp al,0x80
00000AFA  742F              jz 0xb2b
00000AFC  0402              add al,0x2
00000AFE  2403              and al,0x3
00000B00  A801              test al,0x1
00000B02  7527              jnz 0xb2b
00000B04  B109              mov cl,0x9
00000B06  F6E1              mul cl
00000B08  03F0              add si,ax
00000B0A  EB14              jmp 0xb20
00000B0C  F60638FFFF        test byte [0xff38],0xff
00000B11  740D              jz 0xb20
00000B13  B90600            mov cx,0x6
00000B16  C606EB4F03        mov byte [0x4feb],0x3
00000B1B  E86901            call 0xc87
00000B1E  EB0B              jmp 0xb2b
00000B20  B90900            mov cx,0x9
00000B23  C606EB4F00        mov byte [0x4feb],0x0
00000B28  E85C01            call 0xc87
00000B2B  BE0E61            mov si,0x610e
00000B2E  F6063AFFFF        test byte [0xff3a],0xff
00000B33  7568              jnz 0xb9d
00000B35  BEEA60            mov si,0x60ea
00000B38  F60639FFFF        test byte [0xff39],0xff
00000B3D  7553              jnz 0xb92
00000B3F  BE7560            mov si,0x6075
00000B42  F606C20001        test byte [0xc2],0x1
00000B47  7503              jnz 0xb4c
00000B49  BE0060            mov si,0x6000
00000B4C  F606E800FF        test byte [0xe8],0xff
00000B51  7405              jz 0xb58
00000B53  83C65A            add si,0x5a
00000B56  EB3A              jmp 0xb92
00000B58  B82D00            mov ax,0x2d
00000B5B  F60638FFFF        test byte [0xff38],0xff
00000B60  7539              jnz 0xb9b
00000B62  B83F00            mov ax,0x3f
00000B65  F6063DFF80        test byte [0xff3d],0x80
00000B6A  752F              jnz 0xb9b
00000B6C  8A0E42FF          mov cl,[0xff42]
00000B70  B84800            mov ax,0x48
00000B73  FEC9              dec cl
00000B75  7424              jz 0xb9b
00000B77  B85100            mov ax,0x51
00000B7A  FEC9              dec cl
00000B7C  741D              jz 0xb9b
00000B7E  B83600            mov ax,0x36
00000B81  803E3DFF7F        cmp byte [0xff3d],0x7f
00000B86  7413              jz 0xb9b
00000B88  B82400            mov ax,0x24
00000B8B  803EE70080        cmp byte [0xe7],0x80
00000B90  7409              jz 0xb9b
00000B92  A0E700            mov al,[0xe7]
00000B95  2403              and al,0x3
00000B97  B109              mov cl,0x9
00000B99  F6E1              mul cl
00000B9B  03F0              add si,ax
00000B9D  B90900            mov cx,0x9
00000BA0  C606EB4F00        mov byte [0x4feb],0x0
00000BA5  E8DF00            call 0xc87
00000BA8  F606E800FF        test byte [0xe8],0xff
00000BAD  7401              jz 0xbb0
00000BAF  C3                ret
00000BB0  B1FF              mov cl,0xff
00000BB2  BEB961            mov si,0x61b9
00000BB5  F606C20001        test byte [0xc2],0x1
00000BBA  7505              jnz 0xbc1
00000BBC  32C9              xor cl,cl
00000BBE  BE1761            mov si,0x6117
00000BC1  A039FF            mov al,[0xff39]
00000BC4  0A063AFF          or al,[0xff3a]
00000BC8  7417              jz 0xbe1
00000BCA  E8FC00            call 0xcc9
00000BCD  0AC0              or al,al
00000BCF  7501              jnz 0xbd2
00000BD1  C3                ret
00000BD2  FEC8              dec al
00000BD4  D0E8              shr al,0x0
00000BD6  1AC0              sbb al,al
00000BD8  241B              and al,0x1b
00000BDA  047E              add al,0x7e
00000BDC  32E4              xor ah,ah
00000BDE  E98900            jmp 0xc6a
00000BE1  F60640FFFF        test byte [0xff40],0xff
00000BE6  7442              jz 0xc2a
00000BE8  FEC1              inc cl
00000BEA  751A              jnz 0xc06
00000BEC  A03FFF            mov al,[0xff3f]
00000BEF  D0E8              shr al,0x0
00000BF1  B109              mov cl,0x9
00000BF3  F6E1              mul cl
00000BF5  50                push ax
00000BF6  E8D000            call 0xcc9
00000BF9  B124              mov cl,0x24
00000BFB  F6E1              mul cl
00000BFD  5E                pop si
00000BFE  03F0              add si,ax
00000C00  81C65B62          add si,0x625b
00000C04  EB66              jmp 0xc6c
00000C06  A03FFF            mov al,[0xff3f]
00000C09  D0E8              shr al,0x0
00000C0B  B109              mov cl,0x9
00000C0D  F6E1              mul cl
00000C0F  052400            add ax,0x24
00000C12  8A1641FF          mov dl,[0xff41]
00000C16  FECA              dec dl
00000C18  7505              jnz 0xc1f
00000C1A  052400            add ax,0x24
00000C1D  EB07              jmp 0xc26
00000C1F  FECA              dec dl
00000C21  7503              jnz 0xc26
00000C23  B86300            mov ax,0x63
00000C26  03F0              add si,ax
00000C28  EB42              jmp 0xc6c
00000C2A  F606C20001        test byte [0xc2],0x1
00000C2F  741F              jz 0xc50
00000C31  E89500            call 0xcc9
00000C34  0AC0              or al,al
00000C36  7418              jz 0xc50
00000C38  FEC8              dec al
00000C3A  8AC8              mov cl,al
00000C3C  A038FF            mov al,[0xff38]
00000C3F  2409              and al,0x9
00000C41  046C              add al,0x6c
00000C43  32E4              xor ah,ah
00000C45  0AC9              or cl,cl
00000C47  7403              jz 0xc4c
00000C49  051B00            add ax,0x1b
00000C4C  03F0              add si,ax
00000C4E  EB1C              jmp 0xc6c
00000C50  B81B00            mov ax,0x1b
00000C53  F60638FFFF        test byte [0xff38],0xff
00000C58  7510              jnz 0xc6a
00000C5A  8A0EE700          mov cl,[0xe7]
00000C5E  80F980            cmp cl,0x80
00000C61  7407              jz 0xc6a
00000C63  80E103            and cl,0x3
00000C66  B009              mov al,0x9
00000C68  F6E1              mul cl
00000C6A  03F0              add si,ax
00000C6C  F60638FFFF        test byte [0xff38],0xff
00000C71  740A              jz 0xc7d
00000C73  B90600            mov cx,0x6
00000C76  C606EB4F03        mov byte [0x4feb],0x3
00000C7B  EB0A              jmp 0xc87
00000C7D  B90900            mov cx,0x9
00000C80  C606EB4F00        mov byte [0x4feb],0x0
00000C85  EB00              jmp 0xc87
00000C87  51                push cx
00000C88  268A04            mov al,[es:si]
00000C8B  0AC0              or al,al
00000C8D  7431              jz 0xcc0
00000C8F  06                push es
00000C90  1E                push ds
00000C91  56                push si
00000C92  57                push di
00000C93  B510              mov ch,0x10
00000C95  F6E5              mul ch
00000C97  8BF0              mov si,ax
00000C99  81C63363          add si,0x6333
00000C9D  8BE8              mov bp,ax
00000C9F  81C500D0          add bp,0xd000
00000CA3  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000CA8  8BFA              mov di,dx
00000CAA  0E                push cs
00000CAB  07                pop es
00000CAC  2EA0EB4F          mov al,[cs:0x4feb]
00000CB0  B110              mov cl,0x10
00000CB2  F6E1              mul cl
00000CB4  051652            add ax,0x5216
00000CB7  8BF8              mov di,ax
00000CB9  E875F9            call 0x631
00000CBC  5F                pop di
00000CBD  5E                pop si
00000CBE  1F                pop ds
00000CBF  07                pop es
00000CC0  46                inc si
00000CC1  FE06EB4F          inc byte [0x4feb]
00000CC5  59                pop cx
00000CC6  E2BF              loop 0xc87
00000CC8  C3                ret
00000CC9  A09300            mov al,[0x93]
00000CCC  0AC0              or al,al
00000CCE  7501              jnz 0xcd1
00000CD0  C3                ret
00000CD1  3C04              cmp al,0x4
00000CD3  B001              mov al,0x1
00000CD5  7301              jnc 0xcd8
00000CD7  C3                ret
00000CD8  B002              mov al,0x2
00000CDA  C3                ret
00000CDB  8A04              mov al,[si]
00000CDD  1E                push ds
00000CDE  56                push si
00000CDF  57                push di
00000CE0  50                push ax
00000CE1  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000CE6  0E                push cs
00000CE7  07                pop es
00000CE8  2EA0EB4F          mov al,[cs:0x4feb]
00000CEC  B110              mov cl,0x10
00000CEE  F6E1              mul cl
00000CF0  051652            add ax,0x5216
00000CF3  8BF8              mov di,ax
00000CF5  58                pop ax
00000CF6  0AC0              or al,al
00000CF8  7412              jz 0xd0c
00000CFA  FEC8              dec al
00000CFC  B110              mov cl,0x10
00000CFE  F6E1              mul cl
00000D00  053080            add ax,0x8030
00000D03  8BF0              mov si,ax
00000D05  E8C2F9            call 0x6ca
00000D08  5F                pop di
00000D09  5E                pop si
00000D0A  1F                pop ds
00000D0B  C3                ret
00000D0C  E8C1F9            call 0x6d0
00000D0F  5F                pop di
00000D10  5E                pop si
00000D11  1F                pop ds
00000D12  C3                ret
00000D13  1E                push ds
00000D14  56                push si
00000D15  57                push di
00000D16  8AC8              mov cl,al
00000D18  8A04              mov al,[si]
00000D1A  0AC0              or al,al
00000D1C  7903              jns 0xd21
00000D1E  E8B7F9            call 0x6d8
00000D21  50                push ax
00000D22  8A1EED4F          mov bl,[0x4fed]
00000D26  32FF              xor bh,bh
00000D28  03DB              add bx,bx
00000D2A  2E8B97864F        mov dx,[cs:bx+0x4f86]
00000D2F  2E8916E24F        mov [cs:0x4fe2],dx
00000D34  8AC1              mov al,cl
00000D36  B510              mov ch,0x10
00000D38  F6E5              mul ch
00000D3A  8BF0              mov si,ax
00000D3C  81C60040          add si,0x4000
00000D40  8BE8              mov bp,ax
00000D42  81C500A0          add bp,0xa000
00000D46  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000D4B  0E                push cs
00000D4C  07                pop es
00000D4D  2EA0EB4F          mov al,[cs:0x4feb]
00000D51  B110              mov cl,0x10
00000D53  F6E1              mul cl
00000D55  051652            add ax,0x5216
00000D58  8BF8              mov di,ax
00000D5A  58                pop ax
00000D5B  0AC0              or al,al
00000D5D  7409              jz 0xd68
00000D5F  8AC8              mov cl,al
00000D61  E8B7F8            call 0x61b
00000D64  5F                pop di
00000D65  5E                pop si
00000D66  1F                pop ds
00000D67  C3                ret
00000D68  E8DEF8            call 0x649
00000D6B  5F                pop di
00000D6C  5E                pop si
00000D6D  1F                pop ds
00000D6E  C3                ret
00000D6F  8A0E8400          mov cl,[0x84]
00000D73  B024              mov al,0x24
00000D75  F6E1              mul cl
00000D77  8A0E8300          mov cl,[0x83]
00000D7B  80C104            add cl,0x4
00000D7E  32ED              xor ch,ch
00000D80  03C1              add ax,cx
00000D82  030631FF          add ax,[0xff31]
00000D86  8BF0              mov si,ax
00000D88  E8A907            call 0x1534
00000D8B  BF0D50            mov di,0x500d
00000D8E  0E                push cs
00000D8F  07                pop es
00000D90  B90300            mov cx,0x3
00000D93  A5                movsw
00000D94  A4                movsb
00000D95  83C621            add si,0x21
00000D98  E89907            call 0x1534
00000D9B  E2F6              loop 0xd93
00000D9D  C3                ret
00000D9E  A0EA4F            mov al,[0x4fea]
00000DA1  F6D8              neg al
00000DA3  0412              add al,0x12
00000DA5  8AC8              mov cl,al
00000DA7  F60643FFFF        test byte [0xff43],0xff
00000DAC  750D              jnz 0xdbb
00000DAE  A08400            mov al,[0x84]
00000DB1  2C02              sub al,0x2
00000DB3  3AC1              cmp al,cl
00000DB5  7503              jnz 0xdba
00000DB7  E8AE02            call 0x1068
00000DBA  C3                ret
00000DBB  A08400            mov al,[0x84]
00000DBE  2C05              sub al,0x5
00000DC0  3AC8              cmp cl,al
00000DC2  7301              jnc 0xdc5
00000DC4  C3                ret
00000DC5  7506              jnz 0xdcd
00000DC7  E84F01            call 0xf19
00000DCA  E99B02            jmp 0x1068
00000DCD  040A              add al,0xa
00000DCF  3AC1              cmp al,cl
00000DD1  7401              jz 0xdd4
00000DD3  C3                ret
00000DD4  E90202            jmp 0xfd9
00000DD7  F60643FFFF        test byte [0xff43],0xff
00000DDC  7501              jnz 0xddf
00000DDE  C3                ret
00000DDF  06                push es
00000DE0  56                push si
00000DE1  57                push di
00000DE2  53                push bx
00000DE3  2E8E062CFF        mov es,word [cs:0xff2c]
00000DE8  FE0646FF          inc byte [0xff46]
00000DEC  A045FF            mov al,[0xff45]
00000DEF  0AC0              or al,al
00000DF1  747E              jz 0xe71
00000DF3  FEC8              dec al
00000DF5  744F              jz 0xe46
00000DF7  803E46FF05        cmp byte [0xff46],0x5
00000DFC  7203              jc 0xe01
00000DFE  E90901            jmp 0xf0a
00000E01  32C9              xor cl,cl
00000E03  BE6EB1            mov si,0xb16e
00000E06  C706F34F01FF      mov word [0x4ff3],0xff01
00000E0C  8B3EE64F          mov di,[0x4fe6]
00000E10  81C7B240          add di,0x40b2
00000E14  81FF0060          cmp di,0x6000
00000E18  7204              jc 0xe1e
00000E1A  81C75AA0          add di,0xa05a
00000E1E  F606C20001        test byte [0xc2],0x1
00000E23  7403              jz 0xe28
00000E25  E9B200            jmp 0xeda
00000E28  BEBEB0            mov si,0xb0be
00000E2B  C706F34F0100      mov word [0x4ff3],0x1
00000E31  8B3EE64F          mov di,[0x4fe6]
00000E35  81C7B440          add di,0x40b4
00000E39  81FF0060          cmp di,0x6000
00000E3D  7204              jc 0xe43
00000E3F  81C75AA0          add di,0xa05a
00000E43  E99400            jmp 0xeda
00000E46  803E46FF05        cmp byte [0xff46],0x5
00000E4B  7203              jc 0xe50
00000E4D  E9BA00            jmp 0xf0a
00000E50  8A1E46FF          mov bl,[0xff46]
00000E54  FECB              dec bl
00000E56  32FF              xor bh,bh
00000E58  8ACB              mov cl,bl
00000E5A  03DB              add bx,bx
00000E5C  BF9EB1            mov di,0xb19e
00000E5F  BE2EB1            mov si,0xb12e
00000E62  F606C20001        test byte [0xc2],0x1
00000E67  7531              jnz 0xe9a
00000E69  BF8AB1            mov di,0xb18a
00000E6C  BE7EB0            mov si,0xb07e
00000E6F  EB29              jmp 0xe9a
00000E71  803E46FF07        cmp byte [0xff46],0x7
00000E76  7203              jc 0xe7b
00000E78  E98F00            jmp 0xf0a
00000E7B  8A1E46FF          mov bl,[0xff46]
00000E7F  FECB              dec bl
00000E81  32FF              xor bh,bh
00000E83  8ACB              mov cl,bl
00000E85  03DB              add bx,bx
00000E87  BF92B1            mov di,0xb192
00000E8A  BECEB0            mov si,0xb0ce
00000E8D  F606C20001        test byte [0xc2],0x1
00000E92  7506              jnz 0xe9a
00000E94  BF7EB1            mov di,0xb17e
00000E97  BE1EB0            mov si,0xb01e
00000E9A  268B19            mov bx,[es:bx+di]
00000E9D  8B3EE64F          mov di,[0x4fe6]
00000EA1  891EF34F          mov [0x4ff3],bx
00000EA5  8AC7              mov al,bh
00000EA7  98                cbw
00000EA8  03C0              add ax,ax
00000EAA  03F8              add di,ax
00000EAC  0ADB              or bl,bl
00000EAE  7818              js 0xec8
00000EB0  0ADB              or bl,bl
00000EB2  7426              jz 0xeda
00000EB4  81C7B440          add di,0x40b4
00000EB8  81FF0060          cmp di,0x6000
00000EBC  7204              jc 0xec2
00000EBE  81C75AA0          add di,0xa05a
00000EC2  FECB              dec bl
00000EC4  75EE              jnz 0xeb4
00000EC6  EB12              jmp 0xeda
00000EC8  F6DB              neg bl
00000ECA  740E              jz 0xeda
00000ECC  81EFB440          sub di,0x40b4
00000ED0  7304              jnc 0xed6
00000ED2  81C7A65F          add di,0x5fa6
00000ED6  FECB              dec bl
00000ED8  75F2              jnz 0xecc
00000EDA  F60638FFFF        test byte [0xff38],0xff
00000EDF  740E              jz 0xeef
00000EE1  81C7B440          add di,0x40b4
00000EE5  81FF0060          cmp di,0x6000
00000EE9  7204              jc 0xeef
00000EEB  81C75AA0          add di,0xa05a
00000EEF  893EEF4F          mov [0x4fef],di
00000EF3  32ED              xor ch,ch
00000EF5  03C9              add cx,cx
00000EF7  03C9              add cx,cx
00000EF9  03C9              add cx,cx
00000EFB  03C9              add cx,cx
00000EFD  03F1              add si,cx
00000EFF  8936F14F          mov [0x4ff1],si
00000F03  5B                pop bx
00000F04  5F                pop di
00000F05  5E                pop si
00000F06  07                pop es
00000F07  E9CF00            jmp 0xfd9
00000F0A  C60643FF00        mov byte [0xff43],0x0
00000F0F  C60646FF00        mov byte [0xff46],0x0
00000F14  5B                pop bx
00000F15  5F                pop di
00000F16  5E                pop si
00000F17  07                pop es
00000F18  C3                ret
00000F19  F60644FFFF        test byte [0xff44],0xff
00000F1E  7501              jnz 0xf21
00000F20  C3                ret
00000F21  06                push es
00000F22  57                push di
00000F23  56                push si
00000F24  53                push bx
00000F25  E83300            call 0xf5b
00000F28  5B                pop bx
00000F29  5E                pop si
00000F2A  5F                pop di
00000F2B  07                pop es
00000F2C  C60644FF00        mov byte [0xff44],0x0
00000F31  C3                ret
00000F32  1E                push ds
00000F33  0E                push cs
00000F34  07                pop es
00000F35  2E8B36EF4F        mov si,[cs:0x4fef]
00000F3A  B800B0            mov ax,0xb000
00000F3D  8ED8              mov ds,ax
00000F3F  BF1651            mov di,0x5116
00000F42  B92000            mov cx,0x20
00000F45  A5                movsw
00000F46  A5                movsw
00000F47  A5                movsw
00000F48  A5                movsw
00000F49  81C6F81F          add si,0x1ff8
00000F4D  81FE0060          cmp si,0x6000
00000F51  7204              jc 0xf57
00000F53  81C65AA0          add si,0xa05a
00000F57  E2EC              loop 0xf45
00000F59  1F                pop ds
00000F5A  C3                ret
00000F5B  1E                push ds
00000F5C  0E                push cs
00000F5D  1F                pop ds
00000F5E  2E8B3EEF4F        mov di,[cs:0x4fef]
00000F63  B800B0            mov ax,0xb000
00000F66  8EC0              mov es,ax
00000F68  BE1651            mov si,0x5116
00000F6B  B92000            mov cx,0x20
00000F6E  56                push si
00000F6F  A5                movsw
00000F70  A5                movsw
00000F71  A5                movsw
00000F72  A5                movsw
00000F73  5E                pop si
00000F74  81C7F81F          add di,0x1ff8
00000F78  81FF0060          cmp di,0x6000
00000F7C  720A              jc 0xf88
00000F7E  56                push si
00000F7F  A5                movsw
00000F80  A5                movsw
00000F81  A5                movsw
00000F82  A5                movsw
00000F83  5E                pop si
00000F84  81C752A0          add di,0xa052
00000F88  83C608            add si,0x8
00000F8B  E2E1              loop 0xf6e
00000F8D  1F                pop ds
00000F8E  C3                ret
00000F8F  A08400            mov al,[0x84]
00000F92  0206F34F          add al,[0x4ff3]
00000F96  243F              and al,0x3f
00000F98  B124              mov cl,0x24
00000F9A  F6E1              mul cl
00000F9C  8A0E8300          mov cl,[0x83]
00000FA0  020EF44F          add cl,[0x4ff4]
00000FA4  80C104            add cl,0x4
00000FA7  32ED              xor ch,ch
00000FA9  03C1              add ax,cx
00000FAB  8BF0              mov si,ax
00000FAD  033631FF          add si,[0xff31]
00000FB1  E88005            call 0x1534
00000FB4  B90400            mov cx,0x4
00000FB7  51                push cx
00000FB8  B90400            mov cx,0x4
00000FBB  51                push cx
00000FBC  8A1C              mov bl,[si]
00000FBE  46                inc si
00000FBF  80E37F            and bl,0x7f
00000FC2  32FF              xor bh,bh
00000FC4  03DB              add bx,bx
00000FC6  C78716500000      mov word [bx+0x5016],0x0
00000FCC  59                pop cx
00000FCD  E2EC              loop 0xfbb
00000FCF  83C620            add si,0x20
00000FD2  E85F05            call 0x1534
00000FD5  59                pop cx
00000FD6  E2DF              loop 0xfb7
00000FD8  C3                ret
00000FD9  F60643FFFF        test byte [0xff43],0xff
00000FDE  7501              jnz 0xfe1
00000FE0  C3                ret
00000FE1  C60644FFFF        mov byte [0xff44],0xff
00000FE6  06                push es
00000FE7  1E                push ds
00000FE8  57                push di
00000FE9  56                push si
00000FEA  53                push bx
00000FEB  E8A1FF            call 0xf8f
00000FEE  E841FF            call 0xf32
00000FF1  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000FF6  B800B0            mov ax,0xb000
00000FF9  8EC0              mov es,ax
00000FFB  2E8B3EEF4F        mov di,[cs:0x4fef]
00001000  2E8B36F14F        mov si,[cs:0x4ff1]
00001005  B90400            mov cx,0x4
00001008  51                push cx
00001009  57                push di
0000100A  B90400            mov cx,0x4
0000100D  51                push cx
0000100E  AC                lodsb
0000100F  3CFF              cmp al,0xff
00001011  7510              jnz 0x1023
00001013  81C7B440          add di,0x40b4
00001017  81FF0060          cmp di,0x6000
0000101B  7204              jc 0x1021
0000101D  81C75AA0          add di,0xa05a
00001021  EB2E              jmp 0x1051
00001023  56                push si
00001024  32E4              xor ah,ah
00001026  03C0              add ax,ax
00001028  03C0              add ax,ax
0000102A  03C0              add ax,ax
0000102C  03C0              add ax,ax
0000102E  8BF0              mov si,ax
00001030  033600B0          add si,[0xb000]
00001034  B90800            mov cx,0x8
00001037  51                push cx
00001038  AD                lodsw
00001039  260905            or [es:di],ax
0000103C  81C70020          add di,0x2000
00001040  81FF0060          cmp di,0x6000
00001044  7207              jc 0x104d
00001046  260905            or [es:di],ax
00001049  81C75AA0          add di,0xa05a
0000104D  59                pop cx
0000104E  E2E7              loop 0x1037
00001050  5E                pop si
00001051  59                pop cx
00001052  E2B9              loop 0x100d
00001054  5F                pop di
00001055  47                inc di
00001056  47                inc di
00001057  59                pop cx
00001058  E2AE              loop 0x1008
0000105A  5B                pop bx
0000105B  5E                pop si
0000105C  5F                pop di
0000105D  1F                pop ds
0000105E  07                pop es
0000105F  C3                ret
00001060  E8E70D            call 0x1e4a
00001063  A3E64F            mov [0x4fe6],ax
00001066  EB0D              jmp 0x1075
00001068  F60637FFFF        test byte [0xff37],0xff
0000106D  7401              jz 0x1070
0000106F  C3                ret
00001070  C60637FFFF        mov byte [0xff37],0xff
00001075  06                push es
00001076  1E                push ds
00001077  56                push si
00001078  57                push di
00001079  53                push bx
0000107A  B800B0            mov ax,0xb000
0000107D  8EC0              mov es,ax
0000107F  BE1652            mov si,0x5216
00001082  2E8B3EE64F        mov di,[cs:0x4fe6]
00001087  B90300            mov cx,0x3
0000108A  51                push cx
0000108B  B90300            mov cx,0x3
0000108E  51                push cx
0000108F  57                push di
00001090  E81EF6            call 0x6b1
00001093  5F                pop di
00001094  47                inc di
00001095  47                inc di
00001096  59                pop cx
00001097  E2F5              loop 0x108e
00001099  81C7AE40          add di,0x40ae
0000109D  81FF0060          cmp di,0x6000
000010A1  7204              jc 0x10a7
000010A3  81C75AA0          add di,0xa05a
000010A7  59                pop cx
000010A8  E2E0              loop 0x108a
000010AA  5B                pop bx
000010AB  5F                pop di
000010AC  5E                pop si
000010AD  1F                pop ds
000010AE  07                pop es
000010AF  C3                ret
000010B0  1E                push ds
000010B1  56                push si
000010B2  FEC8              dec al
000010B4  B110              mov cl,0x10
000010B6  F6E1              mul cl
000010B8  053080            add ax,0x8030
000010BB  8BF0              mov si,ax
000010BD  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000010C2  B800B0            mov ax,0xb000
000010C5  8EC0              mov es,ax
000010C7  B90800            mov cx,0x8
000010CA  51                push cx
000010CB  AD                lodsw
000010CC  8BD8              mov bx,ax
000010CE  BA0300            mov dx,0x3
000010D1  B90800            mov cx,0x8
000010D4  85DA              test dx,bx
000010D6  7402              jz 0x10da
000010D8  0BDA              or bx,dx
000010DA  03D2              add dx,dx
000010DC  03D2              add dx,dx
000010DE  E2F4              loop 0x10d4
000010E0  F7D3              not bx
000010E2  26211D            and [es:di],bx
000010E5  260905            or [es:di],ax
000010E8  81C70020          add di,0x2000
000010EC  81FF0060          cmp di,0x6000
000010F0  720A              jc 0x10fc
000010F2  26211D            and [es:di],bx
000010F5  260905            or [es:di],ax
000010F8  81C75AA0          add di,0xa05a
000010FC  59                pop cx
000010FD  E2CB              loop 0x10ca
000010FF  5E                pop si
00001100  1F                pop ds
00001101  C3                ret
00001102  C60644FF00        mov byte [0xff44],0x0
00001107  B800B0            mov ax,0xb000
0000110A  8EC0              mov es,ax
0000110C  C606F74F08        mov byte [0x4ff7],0x8
00001111  C706E44F0E0C      mov word [0x4fe4],0xc0e
00001117  C6061AFF00        mov byte [0xff1a],0x0
0000111C  8B3631FF          mov si,[0xff31]
00001120  BF00E9            mov di,0xe900
00001123  B91200            mov cx,0x12
00001126  51                push cx
00001127  83C604            add si,0x4
0000112A  33DB              xor bx,bx
0000112C  B91C00            mov cx,0x1c
0000112F  51                push cx
00001130  AC                lodsb
00001131  E82200            call 0x1156
00001134  47                inc di
00001135  FEC3              inc bl
00001137  59                pop cx
00001138  E2F5              loop 0x112f
0000113A  83C604            add si,0x4
0000113D  E8F403            call 0x1534
00001140  8306E44F08        add word [0x4fe4],0x8
00001145  59                pop cx
00001146  E2DE              loop 0x1126
00001148  803E1AFF10        cmp byte [0xff1a],0x10
0000114D  72F9              jc 0x1148
0000114F  FE0EF74F          dec byte [0x4ff7]
00001153  75BC              jnz 0x1111
00001155  C3                ret
00001156  803DFF            cmp byte [di],0xff
00001159  7501              jnz 0x115c
0000115B  C3                ret
0000115C  803DFC            cmp byte [di],0xfc
0000115F  7501              jnz 0x1162
00001161  C3                ret
00001162  1E                push ds
00001163  57                push di
00001164  56                push si
00001165  53                push bx
00001166  50                push ax
00001167  8A26F74F          mov ah,[0x4ff7]
0000116B  FECC              dec ah
0000116D  D0EC              shr ah,0x0
0000116F  D0EC              shr ah,0x0
00001171  D0EC              shr ah,0x0
00001173  1AE4              sbb ah,ah
00001175  80F4CC            xor ah,0xcc
00001178  2E8826F84F        mov [cs:0x4ff8],ah
0000117D  03DB              add bx,bx
0000117F  86FB              xchg bh,bl
00001181  031EE44F          add bx,[0x4fe4]
00001185  8BFB              mov di,bx
00001187  58                pop ax
00001188  A8FF              test al,0xff
0000118A  746D              jz 0x11f9
0000118C  FEC8              dec al
0000118E  B110              mov cl,0x10
00001190  F6E1              mul cl
00001192  053080            add ax,0x8030
00001195  8BF0              mov si,ax
00001197  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000119C  56                push si
0000119D  57                push di
0000119E  2EA0F74F          mov al,[cs:0x4ff7]
000011A2  2403              and al,0x3
000011A4  F6D8              neg al
000011A6  0403              add al,0x3
000011A8  E8AD00            call 0x1258
000011AB  E81600            call 0x11c4
000011AE  5F                pop di
000011AF  5E                pop si
000011B0  2EA0F74F          mov al,[cs:0x4ff7]
000011B4  E8A100            call 0x1258
000011B7  81C70001          add di,0x100
000011BB  46                inc si
000011BC  E80500            call 0x11c4
000011BF  5B                pop bx
000011C0  5E                pop si
000011C1  5F                pop di
000011C2  1F                pop ds
000011C3  C3                ret
000011C4  B90200            mov cx,0x2
000011C7  57                push di
000011C8  8BDF              mov bx,di
000011CA  E87D0C            call 0x1e4a
000011CD  8BF8              mov di,ax
000011CF  2E8A1EF84F        mov bl,[cs:0x4ff8]
000011D4  AC                lodsb
000011D5  22C3              and al,bl
000011D7  F6D3              not bl
000011D9  26201D            and [es:di],bl
000011DC  260805            or [es:di],al
000011DF  81FF0040          cmp di,0x4000
000011E3  720A              jc 0x11ef
000011E5  81C70020          add di,0x2000
000011E9  26201D            and [es:di],bl
000011EC  260805            or [es:di],al
000011EF  5F                pop di
000011F0  83C704            add di,0x4
000011F3  83C607            add si,0x7
000011F6  E2CF              loop 0x11c7
000011F8  C3                ret
000011F9  57                push di
000011FA  2EA0F74F          mov al,[cs:0x4ff7]
000011FE  2403              and al,0x3
00001200  F6D8              neg al
00001202  0403              add al,0x3
00001204  E85100            call 0x1258
00001207  E81400            call 0x121e
0000120A  5F                pop di
0000120B  2EA0F74F          mov al,[cs:0x4ff7]
0000120F  E84600            call 0x1258
00001212  81C70001          add di,0x100
00001216  E80500            call 0x121e
00001219  5B                pop bx
0000121A  5E                pop si
0000121B  5F                pop di
0000121C  1F                pop ds
0000121D  C3                ret
0000121E  57                push di
0000121F  8BDF              mov bx,di
00001221  E8260C            call 0x1e4a
00001224  8BF8              mov di,ax
00001226  2EA0F84F          mov al,[cs:0x4ff8]
0000122A  F6D0              not al
0000122C  262005            and [es:di],al
0000122F  81FF0040          cmp di,0x4000
00001233  7207              jc 0x123c
00001235  81C70020          add di,0x2000
00001239  262005            and [es:di],al
0000123C  5B                pop bx
0000123D  50                push ax
0000123E  83C304            add bx,0x4
00001241  E8060C            call 0x1e4a
00001244  8BF8              mov di,ax
00001246  58                pop ax
00001247  262005            and [es:di],al
0000124A  81FF0040          cmp di,0x4000
0000124E  7207              jc 0x1257
00001250  81C70020          add di,0x2000
00001254  262005            and [es:di],al
00001257  C3                ret
00001258  2403              and al,0x3
0000125A  32E4              xor ah,ah
0000125C  03F8              add di,ax
0000125E  03C0              add ax,ax
00001260  03F0              add si,ax
00001262  C3                ret
00001263  A08300            mov al,[0x83]
00001266  02C0              add al,al
00001268  02C0              add al,al
0000126A  02C0              add al,al
0000126C  8A268400          mov ah,[0x84]
00001270  02E4              add ah,ah
00001272  02E4              add ah,ah
00001274  02E4              add ah,ah
00001276  A2E24F            mov [0x4fe2],al
00001279  8826E34F          mov [0x4fe3],ah
0000127D  E82C02            call 0x14ac
00001280  C606F74FAA        mov byte [0x4ff7],0xaa
00001285  E80B00            call 0x1293
00001288  C606F74F00        mov byte [0x4ff7],0x0
0000128D  E80300            call 0x1293
00001290  E91902            jmp 0x14ac
00001293  A0E24F            mov al,[0x4fe2]
00001296  FEC8              dec al
00001298  8AD8              mov bl,al
0000129A  0419              add al,0x19
0000129C  8AD0              mov dl,al
0000129E  A0E34F            mov al,[0x4fe3]
000012A1  FEC8              dec al
000012A3  8AF8              mov bh,al
000012A5  0419              add al,0x19
000012A7  8AF0              mov dh,al
000012A9  E82F00            call 0x12db
000012AC  A0E24F            mov al,[0x4fe2]
000012AF  2C05              sub al,0x5
000012B1  8AD8              mov bl,al
000012B3  0421              add al,0x21
000012B5  8AD0              mov dl,al
000012B7  A0E34F            mov al,[0x4fe3]
000012BA  2C05              sub al,0x5
000012BC  8AF8              mov bh,al
000012BE  0421              add al,0x21
000012C0  8AF0              mov dh,al
000012C2  E81600            call 0x12db
000012C5  A0E24F            mov al,[0x4fe2]
000012C8  2C09              sub al,0x9
000012CA  8AD8              mov bl,al
000012CC  0429              add al,0x29
000012CE  8AD0              mov dl,al
000012D0  A0E34F            mov al,[0x4fe3]
000012D3  2C09              sub al,0x9
000012D5  8AF8              mov bh,al
000012D7  0429              add al,0x29
000012D9  8AF0              mov dh,al
000012DB  B90900            mov cx,0x9
000012DE  51                push cx
000012DF  52                push dx
000012E0  53                push bx
000012E1  E82900            call 0x130d
000012E4  5B                pop bx
000012E5  5A                pop dx
000012E6  80EB0C            sub bl,0xc
000012E9  7302              jnc 0x12ed
000012EB  32DB              xor bl,bl
000012ED  80EF0C            sub bh,0xc
000012F0  7302              jnc 0x12f4
000012F2  32FF              xor bh,bh
000012F4  80C20C            add dl,0xc
000012F7  7302              jnc 0x12fb
000012F9  B2FF              mov dl,0xff
000012FB  80C60C            add dh,0xc
000012FE  7302              jnc 0x1302
00001300  B6FF              mov dh,0xff
00001302  52                push dx
00001303  53                push bx
00001304  E87201            call 0x1479
00001307  5B                pop bx
00001308  5A                pop dx
00001309  59                pop cx
0000130A  E2D2              loop 0x12de
0000130C  C3                ret
0000130D  B800B0            mov ax,0xb000
00001310  8EC0              mov es,ax
00001312  52                push dx
00001313  53                push bx
00001314  8AF7              mov dh,bh
00001316  E88C00            call 0x13a5
00001319  5B                pop bx
0000131A  5A                pop dx
0000131B  52                push dx
0000131C  53                push bx
0000131D  8AFE              mov bh,dh
0000131F  E88300            call 0x13a5
00001322  5B                pop bx
00001323  5A                pop dx
00001324  52                push dx
00001325  53                push bx
00001326  8AD3              mov dl,bl
00001328  E80400            call 0x132f
0000132B  5B                pop bx
0000132C  5A                pop dx
0000132D  8ADA              mov bl,dl
0000132F  3AF7              cmp dh,bh
00001331  7302              jnc 0x1335
00001333  87D3              xchg dx,bx
00001335  0ADB              or bl,bl
00001337  7501              jnz 0x133a
00001339  C3                ret
0000133A  80FBDF            cmp bl,0xdf
0000133D  7201              jc 0x1340
0000133F  C3                ret
00001340  0AFF              or bh,bh
00001342  7502              jnz 0x1346
00001344  B701              mov bh,0x1
00001346  80FE8F            cmp dh,0x8f
00001349  7202              jc 0x134d
0000134B  B68E              mov dh,0x8e
0000134D  8AC6              mov al,dh
0000134F  2AC7              sub al,bh
00001351  FEC0              inc al
00001353  50                push ax
00001354  8AC7              mov al,bh
00001356  E81301            call 0x146c
00001359  8AC3              mov al,bl
0000135B  D0E8              shr al,0x0
0000135D  D0E8              shr al,0x0
0000135F  32E4              xor ah,ah
00001361  03F8              add di,ax
00001363  59                pop cx
00001364  32ED              xor ch,ch
00001366  80E303            and bl,0x3
00001369  7413              jz 0x137e
0000136B  80FB02            cmp bl,0x2
0000136E  720A              jc 0x137a
00001370  7404              jz 0x1376
00001372  B403              mov ah,0x3
00001374  EB0A              jmp 0x1380
00001376  B40C              mov ah,0xc
00001378  EB06              jmp 0x1380
0000137A  B430              mov ah,0x30
0000137C  EB02              jmp 0x1380
0000137E  B4C0              mov ah,0xc0
00001380  8AC4              mov al,ah
00001382  F6D0              not al
00001384  2226F74F          and ah,[0x4ff7]
00001388  262005            and [es:di],al
0000138B  260825            or [es:di],ah
0000138E  81C70020          add di,0x2000
00001392  81FF0060          cmp di,0x6000
00001396  720A              jc 0x13a2
00001398  262005            and [es:di],al
0000139B  260825            or [es:di],ah
0000139E  81C75AA0          add di,0xa05a
000013A2  E2E4              loop 0x1388
000013A4  C3                ret
000013A5  3AD3              cmp dl,bl
000013A7  7302              jnc 0x13ab
000013A9  87D3              xchg dx,bx
000013AB  0AFF              or bh,bh
000013AD  7501              jnz 0x13b0
000013AF  C3                ret
000013B0  80FF8F            cmp bh,0x8f
000013B3  7201              jc 0x13b6
000013B5  C3                ret
000013B6  0ADB              or bl,bl
000013B8  7502              jnz 0x13bc
000013BA  B301              mov bl,0x1
000013BC  80FADF            cmp dl,0xdf
000013BF  7202              jc 0x13c3
000013C1  B2DE              mov dl,0xde
000013C3  8AC7              mov al,bh
000013C5  E8A400            call 0x146c
000013C8  8AC3              mov al,bl
000013CA  D0E8              shr al,0x0
000013CC  D0E8              shr al,0x0
000013CE  32E4              xor ah,ah
000013D0  03F8              add di,ax
000013D2  8AE2              mov ah,dl
000013D4  D0EC              shr ah,0x0
000013D6  D0EC              shr ah,0x0
000013D8  2AE0              sub ah,al
000013DA  8ACC              mov cl,ah
000013DC  32ED              xor ch,ch
000013DE  80E303            and bl,0x3
000013E1  7413              jz 0x13f6
000013E3  80FB02            cmp bl,0x2
000013E6  720A              jc 0x13f2
000013E8  7404              jz 0x13ee
000013EA  B003              mov al,0x3
000013EC  EB0A              jmp 0x13f8
000013EE  B00F              mov al,0xf
000013F0  EB06              jmp 0x13f8
000013F2  B03F              mov al,0x3f
000013F4  EB02              jmp 0x13f8
000013F6  B0FF              mov al,0xff
000013F8  80E203            and dl,0x3
000013FB  7413              jz 0x1410
000013FD  80FA02            cmp dl,0x2
00001400  720A              jc 0x140c
00001402  7404              jz 0x1408
00001404  B4FF              mov ah,0xff
00001406  EB0A              jmp 0x1412
00001408  B4FC              mov ah,0xfc
0000140A  EB06              jmp 0x1412
0000140C  B4F0              mov ah,0xf0
0000140E  EB02              jmp 0x1412
00001410  B4C0              mov ah,0xc0
00001412  E347              jcxz 0x145b
00001414  49                dec cx
00001415  E326              jcxz 0x143d
00001417  8AF0              mov dh,al
00001419  F6D6              not dh
0000141B  2206F74F          and al,[0x4ff7]
0000141F  262035            and [es:di],dh
00001422  260805            or [es:di],al
00001425  47                inc di
00001426  B0FF              mov al,0xff
00001428  2206F74F          and al,[0x4ff7]
0000142C  F3AA              rep stosb
0000142E  8AF4              mov dh,ah
00001430  F6D6              not dh
00001432  2226F74F          and ah,[0x4ff7]
00001436  262035            and [es:di],dh
00001439  260825            or [es:di],ah
0000143C  C3                ret
0000143D  8AF0              mov dh,al
0000143F  F6D6              not dh
00001441  2206F74F          and al,[0x4ff7]
00001445  262035            and [es:di],dh
00001448  260805            or [es:di],al
0000144B  47                inc di
0000144C  8AF4              mov dh,ah
0000144E  F6D6              not dh
00001450  2226F74F          and ah,[0x4ff7]
00001454  262035            and [es:di],dh
00001457  260825            or [es:di],ah
0000145A  C3                ret
0000145B  22C4              and al,ah
0000145D  8AF0              mov dh,al
0000145F  F6D6              not dh
00001461  2206F74F          and al,[0x4ff7]
00001465  262035            and [es:di],dh
00001468  260805            or [es:di],al
0000146B  C3                ret
0000146C  53                push bx
0000146D  BB0E0C            mov bx,0xc0e
00001470  02D8              add bl,al
00001472  E8D509            call 0x1e4a
00001475  8BF8              mov di,ax
00001477  5B                pop bx
00001478  C3                ret
00001479  8A0E33FF          mov cl,[0xff33]
0000147D  D0E9              shr cl,0x0
0000147F  FEC1              inc cl
00001481  B001              mov al,0x1
00001483  F6E1              mul cl
00001485  50                push ax
00001486  2EFF161001        call word near [cs:0x110]
0000148B  2EFF161201        call word near [cs:0x112]
00001490  2EFF161401        call word near [cs:0x114]
00001495  2EFF161601        call word near [cs:0x116]
0000149A  2EFF161801        call word near [cs:0x118]
0000149F  58                pop ax
000014A0  38061AFF          cmp [0xff1a],al
000014A4  72DF              jc 0x1485
000014A6  C6061AFF00        mov byte [0xff1a],0x0
000014AB  C3                ret
000014AC  B800B0            mov ax,0xb000
000014AF  8EC0              mov es,ax
000014B1  BFFD04            mov di,0x4fd
000014B4  B99000            mov cx,0x90
000014B7  51                push cx
000014B8  57                push di
000014B9  B8FFFF            mov ax,0xffff
000014BC  B91C00            mov cx,0x1c
000014BF  263105            xor [es:di],ax
000014C2  47                inc di
000014C3  47                inc di
000014C4  E2F9              loop 0x14bf
000014C6  5F                pop di
000014C7  81C70020          add di,0x2000
000014CB  81FF0060          cmp di,0x6000
000014CF  7213              jc 0x14e4
000014D1  57                push di
000014D2  B8FFFF            mov ax,0xffff
000014D5  B91C00            mov cx,0x1c
000014D8  263105            xor [es:di],ax
000014DB  47                inc di
000014DC  47                inc di
000014DD  E2F9              loop 0x14d8
000014DF  5F                pop di
000014E0  81C75AA0          add di,0xa05a
000014E4  59                pop cx
000014E5  E2D0              loop 0x14b7
000014E7  C3                ret
000014E8  243F              and al,0x3f
000014EA  02C0              add al,al
000014EC  02C0              add al,al
000014EE  02C0              add al,al
000014F0  040E              add al,0xe
000014F2  80EC04            sub ah,0x4
000014F5  02E4              add ah,ah
000014F7  80C40C            add ah,0xc
000014FA  8BD8              mov bx,ax
000014FC  E84B09            call 0x1e4a
000014FF  8BF8              mov di,ax
00001501  C3                ret
00001502  8A1E9D00          mov bl,[0x9d]
00001506  0ADB              or bl,bl
00001508  7421              jz 0x152b
0000150A  80FB07            cmp bl,0x7
0000150D  741C              jz 0x152b
0000150F  FECB              dec bl
00001511  32FF              xor bh,bh
00001513  03DB              add bx,bx
00001515  2E8E062CFF        mov es,word [cs:0xff2c]
0000151A  8CC8              mov ax,cs
0000151C  050020            add ax,0x2000
0000151F  8ED8              mov ds,ax
00001521  8B37              mov si,[bx]
00001523  BF9086            mov di,0x8690
00001526  B98004            mov cx,0x480
00001529  F3A4              rep movsb
0000152B  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001530  BE9086            mov si,0x8690
00001533  C3                ret
00001534  81FE00E9          cmp si,0xe900
00001538  7301              jnc 0x153b
0000153A  C3                ret
0000153B  81EE0009          sub si,0x900
0000153F  C3                ret
00001540  81FE00E0          cmp si,0xe000
00001544  7201              jc 0x1547
00001546  C3                ret
00001547  81C60009          add si,0x900
0000154B  C3                ret
0000154C  56                push si
0000154D  1E                push ds
0000154E  BEAB45            mov si,0x45ab
00001551  BFCD47            mov di,0x47cd
00001554  B800B0            mov ax,0xb000
00001557  8EC0              mov es,ax
00001559  B90500            mov cx,0x5
0000155C  51                push cx
0000155D  B91C00            mov cx,0x1c
00001560  51                push cx
00001561  AC                lodsb
00001562  1E                push ds
00001563  56                push si
00001564  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001569  32E4              xor ah,ah
0000156B  03C0              add ax,ax
0000156D  03C0              add ax,ax
0000156F  03C0              add ax,ax
00001571  03C0              add ax,ax
00001573  050040            add ax,0x4000
00001576  8BF0              mov si,ax
00001578  57                push di
00001579  B90800            mov cx,0x8
0000157C  51                push cx
0000157D  A5                movsw
0000157E  81C7FE1F          add di,0x1ffe
00001582  81FF0060          cmp di,0x6000
00001586  7208              jc 0x1590
00001588  8B44FE            mov ax,[si-0x2]
0000158B  AB                stosw
0000158C  81C758A0          add di,0xa058
00001590  59                pop cx
00001591  E2E9              loop 0x157c
00001593  5F                pop di
00001594  47                inc di
00001595  47                inc di
00001596  5E                pop si
00001597  1F                pop ds
00001598  59                pop cx
00001599  E2C5              loop 0x1560
0000159B  81C77C40          add di,0x407c
0000159F  81FF0060          cmp di,0x6000
000015A3  7204              jc 0x15a9
000015A5  81C75AA0          add di,0xa05a
000015A9  59                pop cx
000015AA  E2B0              loop 0x155c
000015AC  1F                pop ds
000015AD  5E                pop si
000015AE  C3                ret
000015AF  0001              add [bx+di],al
000015B1  0204              add al,[si]
000015B3  07                pop es
000015B4  090D              or [di],cx
000015B6  1004              adc [si],al
000015B8  15171C            adc ax,0x1c17
000015BB  1E                push ds
000015BC  0407              add al,0x7
000015BE  0922              or [bp+si],sp
000015C0  0225              add ah,[di]
000015C2  0802              or [bp+si],al
000015C4  2802              sub [bp+si],al
000015C6  2D3136            sub ax,0x3631
000015C9  3B4000            cmp ax,[bx+si+0x0]
000015CC  0103              add [bp+di],ax
000015CE  06                push es
000015CF  080A              or [bp+si],cl
000015D1  0E                push cs
000015D2  11060818          adc [0x1808],ax
000015D6  0E                push cs
000015D7  1E                push ds
000015D8  0408              add al,0x8
000015DA  0A23              or ah,[bp+di]
000015DC  2426              and al,0x26
000015DE  0827              or [bx],ah
000015E0  292A              sub [bp+si],bp
000015E2  0432              add al,0x32
000015E4  37                aaa
000015E5  3C06              cmp al,0x6
000015E7  0001              add [bx+di],al
000015E9  0205              add al,[di]
000015EB  0802              or [bp+si],al
000015ED  0E                push cs
000015EE  12060819          adc al,[0x1908]
000015F2  0E                push cs
000015F3  1E                push ds
000015F4  0408              add al,0x8
000015F6  0223              add ah,[bp+di]
000015F8  2426              and al,0x26
000015FA  0825              or [di],ah
000015FC  2902              sub [bp+si],ax
000015FE  2E3338            xor di,[cs:bx+si]
00001601  3D0600            cmp ax,0x6
00001604  0103              add [bp+di],ax
00001606  06                push es
00001607  080B              or [bp+di],cl
00001609  0E                push cs
0000160A  1306081A          adc ax,[0x1a08]
0000160E  0E                push cs
0000160F  1F                pop ds
00001610  0408              add al,0x8
00001612  0B23              or sp,[bp+di]
00001614  2426              and al,0x26
00001616  0827              or [bx],ah
00001618  292B              sub [bp+di],bp
0000161A  2F                das
0000161B  3439              xor al,0x39
0000161D  3E06              ds push es
0000161F  0001              add [bx+di],al
00001621  0204              add al,[si]
00001623  080C              or [si],cl
00001625  0F1404            unpcklps xmm0,oword [si]
00001628  16                push ss
00001629  1B1D              sbb bx,[di]
0000162B  2021              and [bx+di],ah
0000162D  080C              or [si],cl
0000162F  2324              and sp,[si]
00001631  260802            or [es:bp+si],al
00001634  282C              sub [si],ch
00001636  3035              xor [di],dh
00001638  3A3F              cmp bh,[bx]
0000163A  06                push es
0000163B  A2F74F            mov [0x4ff7],al
0000163E  BE1747            mov si,0x4717
00001641  C706E44FFD04      mov word [0x4fe4],0x4fd
00001647  B91200            mov cx,0x12
0000164A  51                push cx
0000164B  B91C00            mov cx,0x1c
0000164E  51                push cx
0000164F  AC                lodsb
00001650  56                push si
00001651  E82100            call 0x1675
00001654  5E                pop si
00001655  8306E44F02        add word [0x4fe4],0x2
0000165A  59                pop cx
0000165B  E2F1              loop 0x164e
0000165D  8106E44F7C40      add word [0x4fe4],0x407c
00001663  813EE44F0060      cmp word [0x4fe4],0x6000
00001669  7206              jc 0x1671
0000166B  8106E44F5AA0      add word [0x4fe4],0xa05a
00001671  59                pop cx
00001672  E2D6              loop 0x164a
00001674  C3                ret
00001675  1E                push ds
00001676  B110              mov cl,0x10
00001678  F6E1              mul cl
0000167A  050080            add ax,0x8000
0000167D  8BF0              mov si,ax
0000167F  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001684  B800B0            mov ax,0xb000
00001687  8EC0              mov es,ax
00001689  2E8B3EE44F        mov di,[cs:0x4fe4]
0000168E  B90800            mov cx,0x8
00001691  51                push cx
00001692  AD                lodsw
00001693  E81500            call 0x16ab
00001696  AB                stosw
00001697  81C7FE1F          add di,0x1ffe
0000169B  81FF0060          cmp di,0x6000
0000169F  7205              jc 0x16a6
000016A1  AB                stosw
000016A2  81C758A0          add di,0xa058
000016A6  59                pop cx
000016A7  E2E8              loop 0x1691
000016A9  1F                pop ds
000016AA  C3                ret
000016AB  B90800            mov cx,0x8
000016AE  51                push cx
000016AF  03C0              add ax,ax
000016B1  12C9              adc cl,cl
000016B3  03C0              add ax,ax
000016B5  12C9              adc cl,cl
000016B7  80E103            and cl,0x3
000016BA  2E8A1EF74F        mov bl,[cs:0x4ff7]
000016BF  32FF              xor bh,bh
000016C1  03DB              add bx,bx
000016C3  2EFF97D046        call word near [cs:bx+0x46d0]
000016C8  03D2              add dx,dx
000016CA  03D2              add dx,dx
000016CC  0AD1              or dl,cl
000016CE  59                pop cx
000016CF  E2DD              loop 0x16ae
000016D1  8BC2              mov ax,dx
000016D3  C3                ret
000016D4  DA46DB            fiadd dword [bp-0x25]
000016D7  46                inc si
000016D8  EC                in al,dx
000016D9  46                inc si
000016DA  FD                std
000016DB  46                inc si
000016DC  0E                push cs
000016DD  47                inc di
000016DE  C3                ret
000016DF  80F901            cmp cl,0x1
000016E2  7503              jnz 0x16e7
000016E4  B102              mov cl,0x2
000016E6  C3                ret
000016E7  80F902            cmp cl,0x2
000016EA  7401              jz 0x16ed
000016EC  C3                ret
000016ED  B101              mov cl,0x1
000016EF  C3                ret
000016F0  80F901            cmp cl,0x1
000016F3  7503              jnz 0x16f8
000016F5  B100              mov cl,0x0
000016F7  C3                ret
000016F8  80F902            cmp cl,0x2
000016FB  7401              jz 0x16fe
000016FD  C3                ret
000016FE  B101              mov cl,0x1
00001700  C3                ret
00001701  80F902            cmp cl,0x2
00001704  7503              jnz 0x1709
00001706  B103              mov cl,0x3
00001708  C3                ret
00001709  80F903            cmp cl,0x3
0000170C  7401              jz 0x170f
0000170E  C3                ret
0000170F  B102              mov cl,0x2
00001711  C3                ret
00001712  80F901            cmp cl,0x1
00001715  7401              jz 0x1718
00001717  C3                ret
00001718  B103              mov cl,0x3
0000171A  C3                ret
0000171B  07                pop es
0000171C  0809              or [bx+di],cl
0000171E  0A07              or al,[bx]
00001720  080B              or [bp+di],cl
00001722  0C07              or al,0x7
00001724  0809              or [bx+di],cl
00001726  0A19              or bl,[bx+di]
00001728  3D6127            cmp ax,0x2761
0000172B  1D1E1D            sbb ax,0x1d1e
0000172E  1E                push ds
0000172F  1F                pop ds
00001730  201F              and [bx],bl
00001732  201D              and [di],bl
00001734  1E                push ds
00001735  1F                pop ds
00001736  200D              and [di],cl
00001738  0E                push cs
00001739  0F100F            movups xmm1,oword [bx]
0000173C  100D              adc [di],cl
0000173E  0E                push cs
0000173F  0F1017            movups xmm2,oword [bx]
00001742  183E5C62          sbb [0x625c],bh
00001746  262A25            sub ah,[es:di]
00001749  2122              and [bp+si],sp
0000174B  2122              and [bp+si],sp
0000174D  2324              and sp,[si]
0000174F  2122              and [bp+si],sp
00001751  2122              and [bp+si],sp
00001753  090A              or [bp+si],cx
00001755  07                pop es
00001756  0807              or [bx],al
00001758  0809              or [bx+di],cl
0000175A  0A07              or al,[bx]
0000175C  0819              or [bx+di],bl
0000175E  54                push sp
0000175F  59                pop cx
00001760  5D                pop bp
00001761  6332              arpl [bp+si],si
00001763  2F                das
00001764  2E1F              cs pop ds
00001766  201F              and [bx],bl
00001768  201D              and [di],bl
0000176A  1E                push ds
0000176B  1F                pop ds
0000176C  201F              and [bx],bl
0000176E  200F              and [bx],cl
00001770  1011              adc [bx+di],dl
00001772  120F              adc cl,[bx]
00001774  100D              adc [di],cl
00001776  0E                push cs
00001777  17                pop ss
00001778  185055            sbb [bx+si+0x55],dl
0000177B  5A                pop dx
0000177C  5E                pop si
0000177D  64662830          o32 sub [fs:bx+si],dh
00001781  2324              and sp,[si]
00001783  2122              and [bp+si],sp
00001785  2324              and sp,[si]
00001787  2122              and [bp+si],sp
00001789  2324              and sp,[si]
0000178B  07                pop es
0000178C  080A              or [bp+si],cl
0000178E  0C07              or al,0x7
00001790  0809              or [bx+di],cl
00001792  0A1A              or bl,[bp+si]
00001794  3451              xor al,0x51
00001796  56                push si
00001797  5B                pop bx
00001798  5F                pop di
00001799  65672F            gs a32 das
0000179C  2D1D1E            sub ax,0x1e1d
0000179F  1F                pop ds
000017A0  201D              and [di],bl
000017A2  1E                push ds
000017A3  1F                pop ds
000017A4  201D              and [di],bl
000017A6  1E                push ds
000017A7  0F100D            movups xmm1,oword [di]
000017AA  0E                push cs
000017AB  0D0E17            or ax,0x170e
000017AE  18494D            sbb [bx+di+0x4d],cl
000017B1  52                push dx
000017B2  57                push di
000017B3  006069            add [bx+si+0x69],ah
000017B6  686A6B            push word 0x6b6a
000017B9  28262122          sub [0x2221],ah
000017BD  2B262122          sub sp,[0x2221]
000017C1  2122              and [bp+si],sp
000017C3  07                pop es
000017C4  0809              or [bx+di],cl
000017C6  0A09              or cl,[bx+di]
000017C8  0A1B              or bl,[bp+di]
000017CA  46                inc si
000017CB  4A                dec dx
000017CC  4E                dec si
000017CD  53                push bx
000017CE  58                pop ax
000017CF  0000              add [bx+si],al
000017D1  0000              add [bx+si],al
000017D3  696C312D1F        imul bp,[si+0x31],0x1f2d
000017D8  202C              and [si],ch
000017DA  2D1F20            sub ax,0x201f
000017DD  1F                pop ds
000017DE  2013              and [bp+di],dl
000017E0  1413              adc al,0x13
000017E2  1417              adc al,0x17
000017E4  184347            sbb [bp+di+0x47],al
000017E7  4B                dec bx
000017E8  4F                dec di
000017E9  0000              add [bx+si],al
000017EB  0000              add [bx+si],al
000017ED  0000              add [bx+si],al
000017EF  006D6E            add [di+0x6e],ch
000017F2  6F                outsw
000017F3  29262122          sub [0x2221],sp
000017F7  2A25              sub ah,[di]
000017F9  2122              and [bp+si],sp
000017FB  151615            adc ax,0x1516
000017FE  16                push ss
000017FF  1C35              sbb al,0x35
00001801  44                inc sp
00001802  48                dec ax
00001803  4C                dec sp
00001804  0000              add [bx+si],al
00001806  0000              add [bx+si],al
00001808  0000              add [bx+si],al
0000180A  0000              add [bx+si],al
0000180C  006971            add [bx+di+0x71],ch
0000180F  7374              jnc 0x1885
00001811  1F                pop ds
00001812  202C              and [si],ch
00001814  27                daa
00001815  1F                pop ds
00001816  2017              and [bx],dl
00001818  1838              sbb [bx+si],bh
0000181A  3A3F              cmp bh,[bx]
0000181C  42                inc dx
0000181D  45                inc bp
0000181E  0000              add [bx+si],al
00001820  0000              add [bx+si],al
00001822  0000              add [bx+si],al
00001824  0000              add [bx+si],al
00001826  0000              add [bx+si],al
00001828  0000              add [bx+si],al
0000182A  6D                insw
0000182B  7577              jnz 0x18a4
0000182D  796F              jns 0x189e
0000182F  2B262926          sub sp,[0x2629]
00001833  1A34              sbb dh,[si]
00001835  393B              cmp [bp+di],di
00001837  40                inc ax
00001838  41                inc cx
00001839  0000              add [bx+si],al
0000183B  0000              add [bx+si],al
0000183D  0000              add [bx+si],al
0000183F  0000              add [bx+si],al
00001841  0000              add [bx+si],al
00001843  0000              add [bx+si],al
00001845  0000              add [bx+si],al
00001847  7678              jna 0x18c1
00001849  7A7B              jpe 0x18c6
0000184B  3132              xor [bp+si],si
0000184D  2F                das
0000184E  2D3336            sub ax,0x3633
00001851  37                aaa
00001852  3C00              cmp al,0x0
00001854  0000              add [bx+si],al
00001856  0000              add [bx+si],al
00001858  0000              add [bx+si],al
0000185A  0000              add [bx+si],al
0000185C  0000              add [bx+si],al
0000185E  0000              add [bx+si],al
00001860  0000              add [bx+si],al
00001862  0000              add [bx+si],al
00001864  0000              add [bx+si],al
00001866  6D                insw
00001867  7170              jno 0x18d9
00001869  7270              jc 0x18db
0000186B  0000              add [bx+si],al
0000186D  0000              add [bx+si],al
0000186F  0000              add [bx+si],al
00001871  0000              add [bx+si],al
00001873  0000              add [bx+si],al
00001875  0000              add [bx+si],al
00001877  0000              add [bx+si],al
00001879  0000              add [bx+si],al
0000187B  0000              add [bx+si],al
0000187D  0000              add [bx+si],al
0000187F  0000              add [bx+si],al
00001881  0000              add [bx+si],al
00001883  0000              add [bx+si],al
00001885  0000              add [bx+si],al
00001887  0000              add [bx+si],al
00001889  0000              add [bx+si],al
0000188B  0000              add [bx+si],al
0000188D  0000              add [bx+si],al
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
000018BF  0102              add [bp+si],ax
000018C1  0102              add [bp+si],ax
000018C3  0102              add [bp+si],ax
000018C5  0102              add [bp+si],ax
000018C7  0102              add [bp+si],ax
000018C9  0102              add [bp+si],ax
000018CB  0102              add [bp+si],ax
000018CD  0102              add [bp+si],ax
000018CF  0102              add [bp+si],ax
000018D1  0102              add [bp+si],ax
000018D3  0102              add [bp+si],ax
000018D5  0102              add [bp+si],ax
000018D7  0102              add [bp+si],ax
000018D9  0102              add [bp+si],ax
000018DB  0304              add ax,[si]
000018DD  0304              add ax,[si]
000018DF  0304              add ax,[si]
000018E1  0304              add ax,[si]
000018E3  0304              add ax,[si]
000018E5  0304              add ax,[si]
000018E7  0304              add ax,[si]
000018E9  0304              add ax,[si]
000018EB  0304              add ax,[si]
000018ED  0304              add ax,[si]
000018EF  0304              add ax,[si]
000018F1  0304              add ax,[si]
000018F3  0304              add ax,[si]
000018F5  0304              add ax,[si]
000018F7  050605            add ax,0x506
000018FA  06                push es
000018FB  050605            add ax,0x506
000018FE  06                push es
000018FF  050605            add ax,0x506
00001902  06                push es
00001903  050605            add ax,0x506
00001906  06                push es
00001907  050605            add ax,0x506
0000190A  06                push es
0000190B  050606            add ax,0x606
0000190E  050506            add ax,0x605
00001911  05061E            add ax,0x1e06
00001914  50                push ax
00001915  E83205            call 0x1e4a
00001918  8BF8              mov di,ax
0000191A  58                pop ax
0000191B  B110              mov cl,0x10
0000191D  F6E1              mul cl
0000191F  050060            add ax,0x6000
00001922  8BF0              mov si,ax
00001924  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001929  B800B0            mov ax,0xb000
0000192C  8EC0              mov es,ax
0000192E  B90800            mov cx,0x8
00001931  A5                movsw
00001932  81C7FE1F          add di,0x1ffe
00001936  81FF0060          cmp di,0x6000
0000193A  7208              jc 0x1944
0000193C  8B44FE            mov ax,[si-0x2]
0000193F  AB                stosw
00001940  81C758A0          add di,0xa058
00001944  E2EB              loop 0x1931
00001946  1F                pop ds
00001947  C3                ret
00001948  1E                push ds
00001949  8A1E9200          mov bl,[0x92]
0000194D  FECB              dec bl
0000194F  32FF              xor bh,bh
00001951  03DB              add bx,bx
00001953  8BB78249          mov si,[bx+0x4982]
00001957  BF850D            mov di,0xd85
0000195A  B800B0            mov ax,0xb000
0000195D  8EC0              mov es,ax
0000195F  B91800            mov cx,0x18
00001962  AD                lodsw
00001963  8BD8              mov bx,ax
00001965  AD                lodsw
00001966  26091D            or [es:di],bx
00001969  26094502          or [es:di+0x2],ax
0000196D  81C70020          add di,0x2000
00001971  81FF0060          cmp di,0x6000
00001975  720B              jc 0x1982
00001977  26091D            or [es:di],bx
0000197A  26094502          or [es:di+0x2],ax
0000197E  81C75AA0          add di,0xa05a
00001982  E2DE              loop 0x1962
00001984  1F                pop ds
00001985  C3                ret
00001986  8E498E            mov cs,word [bx+di-0x72]
00001989  49                dec cx
0000198A  8E49EE            mov cs,word [bx+di-0x12]
0000198D  49                dec cx
0000198E  EE                out dx,al
0000198F  49                dec cx
00001990  4E                dec si
00001991  4A                dec dx
00001992  0000              add [bx+si],al
00001994  0000              add [bx+si],al
00001996  0000              add [bx+si],al
00001998  0000              add [bx+si],al
0000199A  0000              add [bx+si],al
0000199C  0000              add [bx+si],al
0000199E  0000              add [bx+si],al
000019A0  0000              add [bx+si],al
000019A2  0000              add [bx+si],al
000019A4  0000              add [bx+si],al
000019A6  0000              add [bx+si],al
000019A8  0000              add [bx+si],al
000019AA  0000              add [bx+si],al
000019AC  0000              add [bx+si],al
000019AE  0000              add [bx+si],al
000019B0  0000              add [bx+si],al
000019B2  0000              add [bx+si],al
000019B4  0000              add [bx+si],al
000019B6  0000              add [bx+si],al
000019B8  0000              add [bx+si],al
000019BA  0000              add [bx+si],al
000019BC  0000              add [bx+si],al
000019BE  0002              add [bp+si],al
000019C0  0000              add [bx+si],al
000019C2  00060000          add [0x0],al
000019C6  00060000          add [0x0],al
000019CA  000E0000          add [0x0],cl
000019CE  000E0000          add [0x0],cl
000019D2  000C              add [si],cl
000019D4  0000              add [bx+si],al
000019D6  000E0000          add [0x0],cl
000019DA  001C              add [si],bl
000019DC  0000              add [bx+si],al
000019DE  000C              add [si],cl
000019E0  0000              add [bx+si],al
000019E2  001C              add [si],bl
000019E4  0000              add [bx+si],al
000019E6  001C              add [si],bl
000019E8  0000              add [bx+si],al
000019EA  001C              add [si],bl
000019EC  0000              add [bx+si],al
000019EE  001C              add [si],bl
000019F0  0000              add [bx+si],al
000019F2  0000              add [bx+si],al
000019F4  0000              add [bx+si],al
000019F6  0000              add [bx+si],al
000019F8  0000              add [bx+si],al
000019FA  0000              add [bx+si],al
000019FC  0000              add [bx+si],al
000019FE  0000              add [bx+si],al
00001A00  800000            add byte [bx+si],0x0
00001A03  01800000          add [bx+si+0x0],ax
00001A07  03800000          add ax,[bx+si+0x0]
00001A0B  0300              add ax,[bx+si]
00001A0D  0000              add [bx+si],al
00001A0F  07                pop es
00001A10  800000            add byte [bx+si],0x0
00001A13  07                pop es
00001A14  0000              add [bx+si],al
00001A16  0007              add [bx],al
00001A18  0000              add [bx+si],al
00001A1A  000F              add [bx],cl
00001A1C  0000              add [bx+si],al
00001A1E  000E0000          add [0x0],cl
00001A22  000F              add [bx],cl
00001A24  0000              add [bx+si],al
00001A26  001E0000          add [0x0],bl
00001A2A  000E0000          add [0x0],cl
00001A2E  001F              add [bx],bl
00001A30  0000              add [bx+si],al
00001A32  001E0000          add [0x0],bl
00001A36  001F              add [bx],bl
00001A38  0000              add [bx+si],al
00001A3A  001E0000          add [0x0],bl
00001A3E  001E0000          add [0x0],bl
00001A42  001E0000          add [0x0],bl
00001A46  001E0000          add [0x0],bl
00001A4A  001C              add [si],bl
00001A4C  0000              add [bx+si],al
00001A4E  003F              add [bx],bh
00001A50  0000              add [bx+si],al
00001A52  0000              add [bx+si],al
00001A54  0000              add [bx+si],al
00001A56  0000              add [bx+si],al
00001A58  0000              add [bx+si],al
00001A5A  0000              add [bx+si],al
00001A5C  40                inc ax
00001A5D  0000              add [bx+si],al
00001A5F  00C0              add al,al
00001A61  0000              add [bx+si],al
00001A63  01C0              add ax,ax
00001A65  0000              add [bx+si],al
00001A67  03800000          add ax,[bx+si+0x0]
00001A6B  03800000          add ax,[bx+si+0x0]
00001A6F  07                pop es
00001A70  800000            add byte [bx+si],0x0
00001A73  07                pop es
00001A74  0000              add [bx+si],al
00001A76  0007              add [bx],al
00001A78  0000              add [bx+si],al
00001A7A  000F              add [bx],cl
00001A7C  0000              add [bx+si],al
00001A7E  000F              add [bx],cl
00001A80  0000              add [bx+si],al
00001A82  000E0000          add [0x0],cl
00001A86  001F              add [bx],bl
00001A88  0000              add [bx+si],al
00001A8A  000E0000          add [0x0],cl
00001A8E  001F              add [bx],bl
00001A90  0000              add [bx+si],al
00001A92  001E0000          add [0x0],bl
00001A96  001F              add [bx],bl
00001A98  0000              add [bx+si],al
00001A9A  001E0000          add [0x0],bl
00001A9E  001F              add [bx],bl
00001AA0  0000              add [bx+si],al
00001AA2  001F              add [bx],bl
00001AA4  0000              add [bx+si],al
00001AA6  001E0000          add [0x0],bl
00001AAA  031C              add bx,[si]
00001AAC  C00000            rol byte [bx+si],byte 0x0
00001AAF  FF00              inc word [bx+si]
00001AB1  001E0AC0          add [0xc00a],bl
00001AB5  7810              js 0x1ac7
00001AB7  2403              and al,0x3
00001AB9  B240              mov dl,0x40
00001ABB  F6E2              mul dl
00001ABD  05464B            add ax,0x4b46
00001AC0  8BF0              mov si,ax
00001AC2  BD0100            mov bp,0x1
00001AC5  EB0E              jmp 0x1ad5
00001AC7  2401              and al,0x1
00001AC9  8AE0              mov ah,al
00001ACB  32C0              xor al,al
00001ACD  05464C            add ax,0x4c46
00001AD0  8BF0              mov si,ax
00001AD2  BD0400            mov bp,0x4
00001AD5  8AC3              mov al,bl
00001AD7  2403              and al,0x3
00001AD9  02C0              add al,al
00001ADB  A2F84F            mov [0x4ff8],al
00001ADE  D1EB              shr bx,0x0
00001AE0  D1EB              shr bx,0x0
00001AE2  8AFB              mov bh,bl
00001AE4  8AD9              mov bl,cl
00001AE6  E86103            call 0x1e4a
00001AE9  8BF8              mov di,ax
00001AEB  B800B0            mov ax,0xb000
00001AEE  8EC0              mov es,ax
00001AF0  8BCD              mov cx,bp
00001AF2  51                push cx
00001AF3  57                push di
00001AF4  B91000            mov cx,0x10
00001AF7  51                push cx
00001AF8  56                push si
00001AF9  57                push di
00001AFA  E82600            call 0x1b23
00001AFD  5F                pop di
00001AFE  5E                pop si
00001AFF  81C70020          add di,0x2000
00001B03  81FF0060          cmp di,0x6000
00001B07  720B              jc 0x1b14
00001B09  56                push si
00001B0A  57                push di
00001B0B  E81500            call 0x1b23
00001B0E  5F                pop di
00001B0F  5E                pop si
00001B10  81C75AA0          add di,0xa05a
00001B14  83C604            add si,0x4
00001B17  59                pop cx
00001B18  E2DD              loop 0x1af7
00001B1A  5F                pop di
00001B1B  83C704            add di,0x4
00001B1E  59                pop cx
00001B1F  E2D1              loop 0x1af2
00001B21  1F                pop ds
00001B22  C3                ret
00001B23  B90200            mov cx,0x2
00001B26  51                push cx
00001B27  AD                lodsw
00001B28  8AF8              mov bh,al
00001B2A  32DB              xor bl,bl
00001B2C  2E8A0EF84F        mov cl,[cs:0x4ff8]
00001B31  D3EB              shr bx,cl
00001B33  32C0              xor al,al
00001B35  D3E8              shr ax,cl
00001B37  0ADC              or bl,ah
00001B39  8AE0              mov ah,al
00001B3B  26083D            or [es:di],bh
00001B3E  47                inc di
00001B3F  26081D            or [es:di],bl
00001B42  47                inc di
00001B43  260825            or [es:di],ah
00001B46  59                pop cx
00001B47  E2DD              loop 0x1b26
00001B49  C3                ret
00001B4A  0000              add [bx+si],al
00001B4C  0000              add [bx+si],al
00001B4E  0000              add [bx+si],al
00001B50  0000              add [bx+si],al
00001B52  0000              add [bx+si],al
00001B54  0000              add [bx+si],al
00001B56  0000              add [bx+si],al
00001B58  0000              add [bx+si],al
00001B5A  0000              add [bx+si],al
00001B5C  0000              add [bx+si],al
00001B5E  0000              add [bx+si],al
00001B60  1000              adc [bx+si],al
00001B62  0010              add [bx+si],dl
00001B64  60                pusha
00001B65  0000              add [bx+si],al
00001B67  07                pop es
00001B68  C00000            rol byte [bx+si],byte 0x0
00001B6B  07                pop es
00001B6C  C00000            rol byte [bx+si],byte 0x0
00001B6F  07                pop es
00001B70  C00000            rol byte [bx+si],byte 0x0
00001B73  0C10              or al,0x10
00001B75  0000              add [bx+si],al
00001B77  1000              adc [bx+si],al
00001B79  0000              add [bx+si],al
00001B7B  0000              add [bx+si],al
00001B7D  0000              add [bx+si],al
00001B7F  0000              add [bx+si],al
00001B81  0000              add [bx+si],al
00001B83  0000              add [bx+si],al
00001B85  0000              add [bx+si],al
00001B87  0000              add [bx+si],al
00001B89  0000              add [bx+si],al
00001B8B  0000              add [bx+si],al
00001B8D  0000              add [bx+si],al
00001B8F  0000              add [bx+si],al
00001B91  0000              add [bx+si],al
00001B93  0100              add [bx+si],ax
00001B95  0000              add [bx+si],al
00001B97  0100              add [bx+si],ax
00001B99  0000              add [bx+si],al
00001B9B  40                inc ax
00001B9C  0400              add al,0x0
00001B9E  0001              add [bx+di],al
00001BA0  0000              add [bx+si],al
00001BA2  0009              add [bx+di],cl
00001BA4  2000              and [bx+si],al
00001BA6  0003              add [bp+di],al
00001BA8  800004            add byte [bx+si],0x4
00001BAB  57                push di
00001BAC  D480              aam byte 0x80
00001BAE  0003              add [bp+di],al
00001BB0  800000            add byte [bx+si],0x0
00001BB3  0920              or [bx+si],sp
00001BB5  0000              add [bx+si],al
00001BB7  0100              add [bx+si],ax
00001BB9  0000              add [bx+si],al
00001BBB  40                inc ax
00001BBC  0400              add al,0x0
00001BBE  0001              add [bx+di],al
00001BC0  0000              add [bx+si],al
00001BC2  0001              add [bx+di],al
00001BC4  0000              add [bx+si],al
00001BC6  0000              add [bx+si],al
00001BC8  0000              add [bx+si],al
00001BCA  0001              add [bx+di],al
00001BCC  0000              add [bx+si],al
00001BCE  0001              add [bx+di],al
00001BD0  0000              add [bx+si],al
00001BD2  0001              add [bx+di],al
00001BD4  0000              add [bx+si],al
00001BD6  0002              add [bp+si],al
00001BD8  800000            add byte [bx+si],0x0
00001BDB  8380000023        add word [bx+si+0x0],0x23
00001BE0  8800              mov [bx+si],al
00001BE2  000D              add [di],cl
00001BE4  B000              mov al,0x0
00001BE6  000B              add [bp+di],cl
00001BE8  E80096            call 0xb1eb
00001BEB  FF                db 0xff
00001BEC  FF                db 0xff
00001BED  B90017            mov cx,0x1700
00001BF0  E80000            call 0x1bf3
00001BF3  0B5800            or bx,[bx+si+0x0]
00001BF6  0023              add [bp+di],ah
00001BF8  82                db 0x82
00001BF9  0000              add [bx+si],al
00001BFB  02808002          add al,[bx+si+0x280]
00001BFF  0100              add [bx+si],ax
00001C01  0000              add [bx+si],al
00001C03  0100              add [bx+si],ax
00001C05  0000              add [bx+si],al
00001C07  0100              add [bx+si],ax
00001C09  0000              add [bx+si],al
00001C0B  0000              add [bx+si],al
00001C0D  0000              add [bx+si],al
00001C0F  0000              add [bx+si],al
00001C11  1010              adc [bx+si],dl
00001C13  0000              add [bx+si],al
00001C15  0004              add [si],al
00001C17  0000              add [bx+si],al
00001C19  800080            add byte [bx+si],0x80
00001C1C  0300              add ax,[bx+si]
00001C1E  00710C            add [bx+di+0xc],dh
00001C21  0000              add [bx+si],al
00001C23  3D3800            cmp ax,0x38
00001C26  0007              add [bx],al
00001C28  F00000            lock add [bx+si],al
00001C2B  97                xchg ax,di
00001C2C  E500              in ax,byte 0x0
00001C2E  000F              add [bx],cl
00001C30  F00000            lock add [bx+si],al
00001C33  1F                pop ds
00001C34  3800              cmp [bx+si],al
00001C36  0039              add [bx+di],bh
00001C38  0E                push cs
00001C39  0000              add [bx+si],al
00001C3B  E101              loope 0x1c3e
00001C3D  800100            add byte [bx+di],0x0
00001C40  004004            add [bx+si+0x4],al
00001C43  0000              add [bx+si],al
00001C45  0810              or [bx+si],dl
00001C47  0000              add [bx+si],al
00001C49  0000              add [bx+si],al
00001C4B  0000              add [bx+si],al
00001C4D  0000              add [bx+si],al
00001C4F  0000              add [bx+si],al
00001C51  0000              add [bx+si],al
00001C53  0000              add [bx+si],al
00001C55  0000              add [bx+si],al
00001C57  0000              add [bx+si],al
00001C59  0000              add [bx+si],al
00001C5B  0000              add [bx+si],al
00001C5D  0000              add [bx+si],al
00001C5F  0000              add [bx+si],al
00001C61  0000              add [bx+si],al
00001C63  0000              add [bx+si],al
00001C65  0000              add [bx+si],al
00001C67  0000              add [bx+si],al
00001C69  00924AAA          add [bp+si-0x55b6],dl
00001C6D  EB00              jmp 0x1c6f
00001C6F  0000              add [bx+si],al
00001C71  0000              add [bx+si],al
00001C73  0000              add [bx+si],al
00001C75  0000              add [bx+si],al
00001C77  0000              add [bx+si],al
00001C79  0000              add [bx+si],al
00001C7B  0000              add [bx+si],al
00001C7D  0000              add [bx+si],al
00001C7F  0000              add [bx+si],al
00001C81  0000              add [bx+si],al
00001C83  0000              add [bx+si],al
00001C85  0000              add [bx+si],al
00001C87  0000              add [bx+si],al
00001C89  0000              add [bx+si],al
00001C8B  0000              add [bx+si],al
00001C8D  0000              add [bx+si],al
00001C8F  0000              add [bx+si],al
00001C91  0100              add [bx+si],ax
00001C93  0000              add [bx+si],al
00001C95  0100              add [bx+si],ax
00001C97  0001              add [bx+di],al
00001C99  0100              add [bx+si],ax
00001C9B  0000              add [bx+si],al
00001C9D  82                db 0x82
00001C9E  0000              add [bx+si],al
00001CA0  00AB0000          add [bp+di+0x0],ch
00001CA4  015D04            add [di+0x4],bx
00001CA7  24AE              and al,0xae
00001CA9  EF                out dx,ax
00001CAA  FF                db 0xff
00001CAB  FF                db 0xff
00001CAC  FF                db 0xff
00001CAD  FF04              inc word [si]
00001CAF  24AB              and al,0xab
00001CB1  EF                out dx,ax
00001CB2  0000              add [bx+si],al
00001CB4  015D00            add [di+0x0],bx
00001CB7  0000              add [bx+si],al
00001CB9  2200              and al,[bx+si]
00001CBB  0000              add [bx+si],al
00001CBD  81000000          add word [bx+si],0x0
00001CC1  0100              add [bx+si],ax
00001CC3  0000              add [bx+si],al
00001CC5  0100              add [bx+si],ax
00001CC7  0000              add [bx+si],al
00001CC9  0000              add [bx+si],al
00001CCB  0000              add [bx+si],al
00001CCD  0000              add [bx+si],al
00001CCF  0000              add [bx+si],al
00001CD1  0000              add [bx+si],al
00001CD3  0000              add [bx+si],al
00001CD5  0000              add [bx+si],al
00001CD7  0000              add [bx+si],al
00001CD9  00810000          add [bx+di+0x0],al
00001CDD  00C4              add ah,al
00001CDF  0000              add [bx+si],al
00001CE1  00BC0000          add [si+0x0],bh
00001CE5  00EE              add dh,ch
00001CE7  EA2420FFFF        jmp word 0xffff:word 0x2024
00001CEC  FF                db 0xff
00001CED  FF                db 0xff
00001CEE  FB                sti
00001CEF  AA                stosb
00001CF0  2420              and al,0x20
00001CF2  FD                std
00001CF3  40                inc ax
00001CF4  0000              add [bx+si],al
00001CF6  E600              out byte 0x0,al
00001CF8  0000              add [bx+si],al
00001CFA  40                inc ax
00001CFB  800000            add byte [bx+si],0x0
00001CFE  0020              add [bx+si],ah
00001D00  0000              add [bx+si],al
00001D02  0000              add [bx+si],al
00001D04  0000              add [bx+si],al
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
00001D28  0000              add [bx+si],al
00001D2A  D7                xlatb
00001D2B  55                push bp
00001D2C  52                push dx
00001D2D  49                dec cx
00001D2E  0000              add [bx+si],al
00001D30  0000              add [bx+si],al
00001D32  0000              add [bx+si],al
00001D34  0000              add [bx+si],al
00001D36  0000              add [bx+si],al
00001D38  0000              add [bx+si],al
00001D3A  0000              add [bx+si],al
00001D3C  0000              add [bx+si],al
00001D3E  0000              add [bx+si],al
00001D40  0000              add [bx+si],al
00001D42  0000              add [bx+si],al
00001D44  0000              add [bx+si],al
00001D46  0000              add [bx+si],al
00001D48  0000              add [bx+si],al
00001D4A  0000              add [bx+si],al
00001D4C  0000              add [bx+si],al
00001D4E  0000              add [bx+si],al
00001D50  0000              add [bx+si],al
00001D52  0000              add [bx+si],al
00001D54  0000              add [bx+si],al
00001D56  0000              add [bx+si],al
00001D58  0000              add [bx+si],al
00001D5A  0000              add [bx+si],al
00001D5C  0000              add [bx+si],al
00001D5E  0000              add [bx+si],al
00001D60  0000              add [bx+si],al
00001D62  0000              add [bx+si],al
00001D64  0000              add [bx+si],al
00001D66  0000              add [bx+si],al
00001D68  0000              add [bx+si],al
00001D6A  A7                cmpsw
00001D6B  54                push sp
00001D6C  90                nop
00001D6D  0400              add al,0x0
00001D6F  0000              add [bx+si],al
00001D71  0000              add [bx+si],al
00001D73  0000              add [bx+si],al
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
00001D89  0000              add [bx+si],al
00001D8B  0000              add [bx+si],al
00001D8D  0000              add [bx+si],al
00001D8F  0000              add [bx+si],al
00001D91  0000              add [bx+si],al
00001D93  0010              add [bx+si],dl
00001D95  0000              add [bx+si],al
00001D97  0004              add [si],al
00001D99  0000              add [bx+si],al
00001D9B  0000              add [bx+si],al
00001D9D  800000            add byte [bx+si],0x0
00001DA0  007100            add [bx+di+0x0],dh
00001DA3  0000              add [bx+si],al
00001DA5  3D0000            cmp ax,0x0
00001DA8  0007              add [bx],al
00001DAA  1004              adc [si],al
00001DAC  00970000          add [bx+0x0],dl
00001DB0  000F              add [bx],cl
00001DB2  0000              add [bx+si],al
00001DB4  001F              add [bx],bl
00001DB6  0000              add [bx+si],al
00001DB8  0039              add [bx+di],bh
00001DBA  0000              add [bx+si],al
00001DBC  00E1              add cl,ah
00001DBE  0000              add [bx+si],al
00001DC0  0100              add [bx+si],ax
00001DC2  0000              add [bx+si],al
00001DC4  0400              add al,0x0
00001DC6  0000              add [bx+si],al
00001DC8  1000              adc [bx+si],al
00001DCA  0000              add [bx+si],al
00001DCC  0000              add [bx+si],al
00001DCE  0010              add [bx+si],dl
00001DD0  0000              add [bx+si],al
00001DD2  0000              add [bx+si],al
00001DD4  0000              add [bx+si],al
00001DD6  00800000          add [bx+si+0x0],al
00001DDA  0300              add ax,[bx+si]
00001DDC  0000              add [bx+si],al
00001DDE  0C00              or al,0x0
00001DE0  0000              add [bx+si],al
00001DE2  3800              cmp [bx+si],al
00001DE4  0000              add [bx+si],al
00001DE6  F00000            lock add [bx+si],al
00001DE9  00E5              add ch,ah
00001DEB  0200              add al,[bx+si]
00001DED  10F0              adc al,dh
00001DEF  0000              add [bx+si],al
00001DF1  003C              add [si],bh
00001DF3  0000              add [bx+si],al
00001DF5  0007              add [bx],al
00001DF7  0000              add [bx+si],al
00001DF9  0000              add [bx+si],al
00001DFB  C00000            rol byte [bx+si],byte 0x0
00001DFE  0020              add [bx+si],ah
00001E00  0000              add [bx+si],al
00001E02  0004              add [si],al
00001E04  0000              add [bx+si],al
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
00001E2A  2009              and [bx+di],cl
00001E2C  2AE5              sub ah,ch
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
00001E42  0000              add [bx+si],al
00001E44  0000              add [bx+si],al
00001E46  0000              add [bx+si],al
00001E48  0000              add [bx+si],al
00001E4A  33C0              xor ax,ax
00001E4C  8AC3              mov al,bl
00001E4E  051C00            add ax,0x1c
00001E51  B303              mov bl,0x3
00001E53  F6F3              div bl
00001E55  8ADC              mov bl,ah
00001E57  D0CB              ror bl,0x0
00001E59  D0CB              ror bl,0x0
00001E5B  D0CB              ror bl,0x0
00001E5D  80E360            and bl,0x60
00001E60  B45A              mov ah,0x5a
00001E62  F6E4              mul ah
00001E64  02E3              add ah,bl
00001E66  80C705            add bh,0x5
00001E69  8ADF              mov bl,bh
00001E6B  32FF              xor bh,bh
00001E6D  03C3              add ax,bx
00001E6F  C3                ret
00001E70  51                push cx
00001E71  1E                push ds
00001E72  56                push si
00001E73  8CC8              mov ax,cs
00001E75  050030            add ax,0x3000
00001E78  8EC0              mov es,ax
00001E7A  B82000            mov ax,0x20
00001E7D  F7E1              mul cx
00001E7F  8BC8              mov cx,ax
00001E81  BF0000            mov di,0x0
00001E84  F3A4              rep movsb
00001E86  5F                pop di
00001E87  07                pop es
00001E88  59                pop cx
00001E89  8CC8              mov ax,cs
00001E8B  050030            add ax,0x3000
00001E8E  8ED8              mov ds,ax
00001E90  BE0000            mov si,0x0
00001E93  51                push cx
00001E94  B90800            mov cx,0x8
00001E97  51                push cx
00001E98  AD                lodsw
00001E99  8BD0              mov dx,ax
00001E9B  AD                lodsw
00001E9C  8BC8              mov cx,ax
00001E9E  2E8916E44F        mov [cs:0x4fe4],dx
00001EA3  2E890EE84F        mov [cs:0x4fe8],cx
00001EA8  0BC2              or ax,dx
00001EAA  86C4              xchg al,ah
00001EAC  8BD8              mov bx,ax
00001EAE  D1EB              shr bx,0x0
00001EB0  0BC3              or ax,bx
00001EB2  03DB              add bx,bx
00001EB4  03DB              add bx,bx
00001EB6  0BC3              or ax,bx
00001EB8  86C4              xchg al,ah
00001EBA  F7D0              not ax
00001EBC  2EA3F54F          mov [cs:0x4ff5],ax
00001EC0  E81300            call 0x1ed6
00001EC3  8BC2              mov ax,dx
00001EC5  AB                stosw
00001EC6  E84A00            call 0x1f13
00001EC9  26895600          mov [es:bp+0x0],dx
00001ECD  45                inc bp
00001ECE  45                inc bp
00001ECF  59                pop cx
00001ED0  E2C5              loop 0x1e97
00001ED2  59                pop cx
00001ED3  E2BE              loop 0x1e93
00001ED5  C3                ret
00001ED6  B90800            mov cx,0x8
00001ED9  33DB              xor bx,bx
00001EDB  2ED106E84F        rol word [cs:0x4fe8],0x0
00001EE0  13DB              adc bx,bx
00001EE2  2ED106E44F        rol word [cs:0x4fe4],0x0
00001EE7  13DB              adc bx,bx
00001EE9  2ED106E84F        rol word [cs:0x4fe8],0x0
00001EEE  13DB              adc bx,bx
00001EF0  2ED106E44F        rol word [cs:0x4fe4],0x0
00001EF5  13DB              adc bx,bx
00001EF7  03D2              add dx,dx
00001EF9  03D2              add dx,dx
00001EFB  2E0A97FF4E        or dl,[cs:bx+0x4eff]
00001F00  E2D7              loop 0x1ed9
00001F02  C3                ret
00001F03  0001              add [bx+di],al
00001F05  0201              add al,[bx+di]
00001F07  0103              add [bp+di],ax
00001F09  0301              add ax,[bx+di]
00001F0B  0203              add al,[bp+di]
00001F0D  0202              add al,[bp+si]
00001F0F  0101              add [bx+di],ax
00001F11  0203              add al,[bp+di]
00001F13  B90800            mov cx,0x8
00001F16  32C0              xor al,al
00001F18  2ED106F54F        rol word [cs:0x4ff5],0x0
00001F1D  12C0              adc al,al
00001F1F  2ED106F54F        rol word [cs:0x4ff5],0x0
00001F24  12C0              adc al,al
00001F26  3C03              cmp al,0x3
00001F28  7402              jz 0x1f2c
00001F2A  32C0              xor al,al
00001F2C  03D2              add dx,dx
00001F2E  03D2              add dx,dx
00001F30  0AD0              or dl,al
00001F32  E2E2              loop 0x1f16
00001F34  C3                ret
00001F35  1E                push ds
00001F36  0E                push cs
00001F37  1F                pop ds
00001F38  BE464F            mov si,0x4f46
00001F3B  2E8E062CFF        mov es,word [cs:0xff2c]
00001F40  BF4086            mov di,0x8640
00001F43  B92000            mov cx,0x20
00001F46  F3A5              rep movsw
00001F48  1F                pop ds
00001F49  C3                ret
00001F4A  3F                aas
00001F4B  F0                lock
00001F4C  0C0C              or al,0xc
00001F4E  0C0C              or al,0xc
00001F50  0C0C              or al,0xc
00001F52  0F                db 0x0f
00001F53  F0                lock
00001F54  0CC0              or al,0xc0
00001F56  0C30              or al,0x30
00001F58  0C0C              or al,0xc
00001F5A  3F                aas
00001F5B  F0                lock
00001F5C  0C0C              or al,0xc
00001F5E  0C0C              or al,0xc
00001F60  0F                db 0x0f
00001F61  F0                lock
00001F62  0C0C              or al,0xc
00001F64  0C0C              or al,0xc
00001F66  0C0C              or al,0xc
00001F68  3F                aas
00001F69  F0                lock
00001F6A  0F                db 0x0f
00001F6B  F0300C            lock xor [si],cl
00001F6E  300C              xor [si],cl
00001F70  3000              xor [bx+si],al
00001F72  33FC              xor di,sp
00001F74  300C              xor [si],cl
00001F76  300C              xor [si],cl
00001F78  0F                db 0x0f
00001F79  F0300C            lock xor [si],cl
00001F7C  300C              xor [si],cl
00001F7E  3C3C              cmp al,0x3c
00001F80  3C3C              cmp al,0x3c
00001F82  33CC              xor cx,sp
00001F84  33CC              xor cx,sp
00001F86  300C              xor [si],cl
00001F88  300C              xor [si],cl
00001F8A  92                xchg ax,dx
00001F8B  4F                dec di
00001F8C  A24FB2            mov [0xb24f],al
00001F8F  4F                dec di
00001F90  C24FD2            ret word 0xd24f
00001F93  4F                dec di
00001F94  C24F00            ret word 0x4f
00001F97  0102              add [bp+si],ax
00001F99  0304              add ax,[si]
00001F9B  050607            add ax,0x706
00001F9E  0809              or [bx+di],cl
00001FA0  0A0B              or cl,[bp+di]
00001FA2  0C0D              or al,0xd
00001FA4  0E                push cs
00001FA5  0F0002            sldt word [bp+si]
00001FA8  0103              add [bp+di],ax
00001FAA  080A              or [bp+si],cl
00001FAC  090B              or [bp+di],cx
00001FAE  0406              add al,0x6
00001FB0  05070C            add ax,0xc07
00001FB3  0E                push cs
00001FB4  0D0F00            or ax,0xf
00001FB7  0001              add [bx+di],al
00001FB9  0300              add ax,[bx+si]
00001FBB  0001              add [bx+di],al
00001FBD  0304              add ax,[si]
00001FBF  0405              add al,0x5
00001FC1  07                pop es
00001FC2  0C0C              or al,0xc
00001FC4  0D0F00            or ax,0xf
00001FC7  0203              add al,[bp+di]
00001FC9  0108              add [bx+si],cx
00001FCB  0A0B              or cl,[bp+di]
00001FCD  090C              or [si],cx
00001FCF  0E                push cs
00001FD0  0F0D04            prefetch [si]
00001FD3  06                push es
00001FD4  07                pop es
00001FD5  050003            add ax,0x300
00001FD8  0002              add [bp+si],al
00001FDA  0C0F              or al,0xf
00001FDC  0C0E              or al,0xe
00001FDE  0003              add [bp+di],al
00001FE0  0002              add [bp+si],al
00001FE2  080B              or [bp+di],cl
00001FE4  080A              or [bp+si],cl
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
0000200C  0000              add [bx+si],al
0000200E  0000              add [bx+si],al
00002010  0000              add [bx+si],al
00002012  0000              add [bx+si],al
00002014  0000              add [bx+si],al
00002016  0000              add [bx+si],al
00002018  0000              add [bx+si],al
0000201A  0000              add [bx+si],al
0000201C  0000              add [bx+si],al
0000201E  0000              add [bx+si],al
00002020  0000              add [bx+si],al
00002022  0000              add [bx+si],al
00002024  0000              add [bx+si],al
00002026  0000              add [bx+si],al
00002028  0000              add [bx+si],al
0000202A  0000              add [bx+si],al
0000202C  0000              add [bx+si],al
0000202E  0000              add [bx+si],al
00002030  0000              add [bx+si],al
00002032  0000              add [bx+si],al
00002034  0000              add [bx+si],al
00002036  0000              add [bx+si],al
00002038  0000              add [bx+si],al
0000203A  0000              add [bx+si],al
0000203C  0000              add [bx+si],al
0000203E  0000              add [bx+si],al
00002040  0000              add [bx+si],al
00002042  0000              add [bx+si],al
00002044  0000              add [bx+si],al
00002046  0000              add [bx+si],al
00002048  0000              add [bx+si],al
0000204A  0000              add [bx+si],al
0000204C  0000              add [bx+si],al
0000204E  0000              add [bx+si],al
00002050  0000              add [bx+si],al
00002052  0000              add [bx+si],al
00002054  0000              add [bx+si],al
00002056  0000              add [bx+si],al
00002058  0000              add [bx+si],al
0000205A  0000              add [bx+si],al
0000205C  0000              add [bx+si],al
0000205E  0000              add [bx+si],al
00002060  0000              add [bx+si],al
00002062  0000              add [bx+si],al
00002064  0000              add [bx+si],al
00002066  0000              add [bx+si],al
00002068  0000              add [bx+si],al
0000206A  0000              add [bx+si],al
0000206C  0000              add [bx+si],al
0000206E  0000              add [bx+si],al
00002070  0000              add [bx+si],al
00002072  0000              add [bx+si],al
00002074  0000              add [bx+si],al
00002076  0000              add [bx+si],al
00002078  0000              add [bx+si],al
0000207A  0000              add [bx+si],al
0000207C  0000              add [bx+si],al
0000207E  0000              add [bx+si],al
00002080  0000              add [bx+si],al
00002082  0000              add [bx+si],al
00002084  0000              add [bx+si],al
00002086  0000              add [bx+si],al
00002088  0000              add [bx+si],al
0000208A  0000              add [bx+si],al
0000208C  0000              add [bx+si],al
0000208E  0000              add [bx+si],al
00002090  0000              add [bx+si],al
00002092  0000              add [bx+si],al
00002094  0000              add [bx+si],al
00002096  0000              add [bx+si],al
00002098  0000              add [bx+si],al
0000209A  0000              add [bx+si],al
0000209C  0000              add [bx+si],al
0000209E  0000              add [bx+si],al
000020A0  0000              add [bx+si],al
000020A2  0000              add [bx+si],al
000020A4  0000              add [bx+si],al
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
000020CC  0000              add [bx+si],al
000020CE  0000              add [bx+si],al
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
000020EC  0000              add [bx+si],al
000020EE  0000              add [bx+si],al
000020F0  0000              add [bx+si],al
000020F2  0000              add [bx+si],al
000020F4  0000              add [bx+si],al
000020F6  0000              add [bx+si],al
000020F8  0000              add [bx+si],al
000020FA  0000              add [bx+si],al
000020FC  0000              add [bx+si],al
000020FE  0000              add [bx+si],al
00002100  0000              add [bx+si],al
00002102  0000              add [bx+si],al
00002104  0000              add [bx+si],al
00002106  0000              add [bx+si],al
00002108  0000              add [bx+si],al
0000210A  0000              add [bx+si],al
0000210C  0000              add [bx+si],al
0000210E  0000              add [bx+si],al
00002110  0000              add [bx+si],al
00002112  0000              add [bx+si],al
00002114  0000              add [bx+si],al
00002116  0000              add [bx+si],al
00002118  0000              add [bx+si],al
0000211A  0000              add [bx+si],al
0000211C  0000              add [bx+si],al
0000211E  0000              add [bx+si],al
00002120  0000              add [bx+si],al
00002122  0000              add [bx+si],al
00002124  0000              add [bx+si],al
00002126  0000              add [bx+si],al
00002128  0000              add [bx+si],al
0000212A  0000              add [bx+si],al
0000212C  0000              add [bx+si],al
0000212E  0000              add [bx+si],al
00002130  0000              add [bx+si],al
00002132  0000              add [bx+si],al
00002134  0000              add [bx+si],al
00002136  0000              add [bx+si],al
00002138  0000              add [bx+si],al
0000213A  0000              add [bx+si],al
0000213C  0000              add [bx+si],al
0000213E  0000              add [bx+si],al
00002140  0000              add [bx+si],al
00002142  0000              add [bx+si],al
00002144  0000              add [bx+si],al
00002146  0000              add [bx+si],al
00002148  0000              add [bx+si],al
0000214A  0000              add [bx+si],al
0000214C  0000              add [bx+si],al
0000214E  0000              add [bx+si],al
00002150  0000              add [bx+si],al
00002152  0000              add [bx+si],al
00002154  0000              add [bx+si],al
00002156  0000              add [bx+si],al
00002158  0000              add [bx+si],al
0000215A  0000              add [bx+si],al
0000215C  0000              add [bx+si],al
0000215E  0000              add [bx+si],al
00002160  0000              add [bx+si],al
00002162  0000              add [bx+si],al
00002164  0000              add [bx+si],al
00002166  0000              add [bx+si],al
00002168  0000              add [bx+si],al
0000216A  0000              add [bx+si],al
0000216C  0000              add [bx+si],al
0000216E  0000              add [bx+si],al
00002170  0000              add [bx+si],al
00002172  0000              add [bx+si],al
00002174  0000              add [bx+si],al
00002176  0000              add [bx+si],al
00002178  0000              add [bx+si],al
0000217A  0000              add [bx+si],al
0000217C  0000              add [bx+si],al
0000217E  0000              add [bx+si],al
00002180  0000              add [bx+si],al
00002182  0000              add [bx+si],al
00002184  0000              add [bx+si],al
00002186  0000              add [bx+si],al
00002188  0000              add [bx+si],al
0000218A  0000              add [bx+si],al
0000218C  0000              add [bx+si],al
0000218E  0000              add [bx+si],al
00002190  0000              add [bx+si],al
00002192  0000              add [bx+si],al
00002194  0000              add [bx+si],al
00002196  0000              add [bx+si],al
00002198  0000              add [bx+si],al
0000219A  0000              add [bx+si],al
0000219C  0000              add [bx+si],al
0000219E  0000              add [bx+si],al
000021A0  0000              add [bx+si],al
000021A2  0000              add [bx+si],al
000021A4  0000              add [bx+si],al
000021A6  0000              add [bx+si],al
000021A8  0000              add [bx+si],al
000021AA  0000              add [bx+si],al
000021AC  0000              add [bx+si],al
000021AE  0000              add [bx+si],al
000021B0  0000              add [bx+si],al
000021B2  0000              add [bx+si],al
000021B4  0000              add [bx+si],al
000021B6  0000              add [bx+si],al
000021B8  0000              add [bx+si],al
000021BA  0000              add [bx+si],al
000021BC  0000              add [bx+si],al
000021BE  0000              add [bx+si],al
000021C0  0000              add [bx+si],al
000021C2  0000              add [bx+si],al
000021C4  0000              add [bx+si],al
000021C6  0000              add [bx+si],al
000021C8  0000              add [bx+si],al
000021CA  0000              add [bx+si],al
000021CC  0000              add [bx+si],al
000021CE  0000              add [bx+si],al
000021D0  0000              add [bx+si],al
000021D2  0000              add [bx+si],al
000021D4  0000              add [bx+si],al
000021D6  0000              add [bx+si],al
000021D8  0000              add [bx+si],al
000021DA  0000              add [bx+si],al
000021DC  0000              add [bx+si],al
000021DE  0000              add [bx+si],al
000021E0  0000              add [bx+si],al
000021E2  0000              add [bx+si],al
000021E4  0000              add [bx+si],al
000021E6  0000              add [bx+si],al
000021E8  0000              add [bx+si],al
000021EA  0000              add [bx+si],al
000021EC  0000              add [bx+si],al
000021EE  0000              add [bx+si],al
000021F0  0000              add [bx+si],al
000021F2  0000              add [bx+si],al
000021F4  0000              add [bx+si],al
000021F6  0000              add [bx+si],al
000021F8  0000              add [bx+si],al
000021FA  0000              add [bx+si],al
000021FC  0000              add [bx+si],al
000021FE  0000              add [bx+si],al
00002200  0000              add [bx+si],al
00002202  0000              add [bx+si],al
00002204  0000              add [bx+si],al
00002206  0000              add [bx+si],al
00002208  0000              add [bx+si],al
0000220A  0000              add [bx+si],al
0000220C  0000              add [bx+si],al
0000220E  0000              add [bx+si],al
00002210  0000              add [bx+si],al
00002212  0000              add [bx+si],al
00002214  0000              add [bx+si],al
00002216  0000              add [bx+si],al
00002218  0000              add [bx+si],al
0000221A  0000              add [bx+si],al
0000221C  0000              add [bx+si],al
0000221E  0000              add [bx+si],al
00002220  0000              add [bx+si],al
00002222  0000              add [bx+si],al
00002224  0000              add [bx+si],al
00002226  0000              add [bx+si],al
00002228  0000              add [bx+si],al
0000222A  0000              add [bx+si],al
0000222C  0000              add [bx+si],al
0000222E  0000              add [bx+si],al
00002230  0000              add [bx+si],al
00002232  0000              add [bx+si],al
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
