00000000  A20700            mov [0x7],al
00000003  0004              add [si],al
00000005  A002A3            mov al,[0xa302]
00000008  8E062CFF          mov es,word [0xff2c]
0000000C  BF0080            mov di,0x8000
0000000F  BE0FA4            mov si,0xa40f
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
00000035  2EFF160220        call word near [cs:0x2002]
0000003A  2EFF161220        call word near [cs:0x2012]
0000003F  BE1AA4            mov si,0xa41a
00000042  2EFF161020        call word near [cs:0x2010]
00000047  E8CE00            call 0x118
0000004A  BB600D            mov bx,0xd60
0000004D  B93736            mov cx,0x3637
00000050  B0FF              mov al,0xff
00000052  2EFF160020        call word near [cs:0x2000]
00000057  E89203            call 0x3ec
0000005A  89364CFF          mov [0xff4c],si
0000005E  2EFF160460        call word near [cs:0x6004]
00000063  3CFF              cmp al,0xff
00000065  7405              jz 0x6c
00000067  E80700            call 0x71
0000006A  EBF2              jmp 0x5e
0000006C  2EFF264020        jmp word near [cs:0x2040]
00000071  8AD8              mov bl,al
00000073  32FF              xor bh,bh
00000075  03DB              add bx,bx
00000077  2EFFA778A0        jmp word near [cs:bx-0x5f88]
0000007C  E4A0              in al,byte 0xa0
0000007E  9AA0D4A092        call word 0x92a0:word 0xd4a0
00000083  A084A0            mov al,[0xa084]
00000086  8AA0C606          mov ah,[bx+si+0x6c6]
0000008A  9D                popf
0000008B  A7                cmpsw
0000008C  FFC3              inc bx
0000008E  32C0              xor al,al
00000090  A29DA7            mov [0xa79d],al
00000093  E91403            jmp 0x3aa
00000096  B0FF              mov al,0xff
00000098  A2A0A7            mov [0xa7a0],al
0000009B  E90C03            jmp 0x3aa
0000009E  B90A00            mov cx,0xa
000000A1  51                push cx
000000A2  A18600            mov ax,[0x86]
000000A5  8A168500          mov dl,[0x85]
000000A9  056400            add ax,0x64
000000AC  80D200            adc dl,0x0
000000AF  A38600            mov [0x86],ax
000000B2  88168500          mov [0x85],dl
000000B6  2EFF161620        call word near [cs:0x2016]
000000BB  C60675FF13        mov byte [0xff75],0x13
000000C0  C6061AFF00        mov byte [0xff1a],0x0
000000C5  E83E02            call 0x306
000000C8  803E1AFF0F        cmp byte [0xff1a],0xf
000000CD  72F6              jc 0xc5
000000CF  59                pop cx
000000D0  E2CF              loop 0xa1
000000D2  C6060500FF        mov byte [0x5],0xff
000000D7  C3                ret
000000D8  C6061AFF00        mov byte [0xff1a],0x0
000000DD  E82602            call 0x306
000000E0  803E1AFF96        cmp byte [0xff1a],0x96
000000E5  72F6              jc 0xdd
000000E7  C3                ret
000000E8  BEF8A0            mov si,0xa0f8
000000EB  B90C00            mov cx,0xc
000000EE  51                push cx
000000EF  AC                lodsb
000000F0  56                push si
000000F1  E85200            call 0x146
000000F4  E81100            call 0x108
000000F7  5E                pop si
000000F8  59                pop cx
000000F9  E2F3              loop 0xee
000000FB  C3                ret
000000FC  0000              add [bx+si],al
000000FE  0102              add [bp+si],ax
00000100  0201              add al,[bx+di]
00000102  0003              add [bp+di],al
00000104  0404              add al,0x4
00000106  0506C6            add ax,0xc606
00000109  06                push es
0000010A  1AFF              sbb bh,bh
0000010C  00E8              add al,ch
0000010E  F60180            test byte [bx+di],0x80
00000111  3E1AFF            ds sbb bh,bh
00000114  1972F6            sbb [bp+si-0xa],si
00000117  C3                ret
00000118  BE6EA1            mov si,0xa16e
0000011B  BB170E            mov bx,0xe17
0000011E  B90800            mov cx,0x8
00000121  51                push cx
00000122  B90C00            mov cx,0xc
00000125  51                push cx
00000126  53                push bx
00000127  AC                lodsb
00000128  2EFF161630        call word near [cs:0x3016]
0000012D  5B                pop bx
0000012E  FEC7              inc bh
00000130  59                pop cx
00000131  E2F2              loop 0x125
00000133  80EF0C            sub bh,0xc
00000136  80C308            add bl,0x8
00000139  59                pop cx
0000013A  E2E5              loop 0x121
0000013C  F6064900FF        test byte [0x49],0xff
00000141  7501              jnz 0x144
00000143  C3                ret
00000144  B006              mov al,0x6
00000146  8AD8              mov bl,al
00000148  32FF              xor bh,bh
0000014A  03DB              add bx,bx
0000014C  8BB7CEA1          mov si,[bx-0x5e32]
00000150  BB1711            mov bx,0x1117
00000153  B90700            mov cx,0x7
00000156  51                push cx
00000157  B90600            mov cx,0x6
0000015A  51                push cx
0000015B  53                push bx
0000015C  AC                lodsb
0000015D  2EFF161630        call word near [cs:0x3016]
00000162  5B                pop bx
00000163  FEC7              inc bh
00000165  59                pop cx
00000166  E2F2              loop 0x15a
00000168  80EF06            sub bh,0x6
0000016B  80C308            add bl,0x8
0000016E  59                pop cx
0000016F  E2E5              loop 0x156
00000171  C3                ret
00000172  0001              add [bx+di],al
00000174  0203              add al,[bp+di]
00000176  3E3F              ds aas
00000178  40                inc ax
00000179  41                inc cx
0000017A  1819              sbb [bx+di],bl
0000017C  1A1B              sbb bl,[bp+di]
0000017E  0405              add al,0x5
00000180  06                push es
00000181  07                pop es
00000182  42                inc dx
00000183  43                inc bx
00000184  44                inc sp
00000185  45                inc bp
00000186  1C1D              sbb al,0x1d
00000188  1E                push ds
00000189  1F                pop ds
0000018A  0809              or [bx+di],cl
0000018C  0A4647            or al,[bp+0x47]
0000018F  48                dec ax
00000190  49                dec cx
00000191  4A                dec dx
00000192  4B                dec bx
00000193  2021              and [bx+di],ah
00000195  220B              and cl,[bp+di]
00000197  0C0D              or al,0xd
00000199  4C                dec sp
0000019A  4D                dec bp
0000019B  4E                dec si
0000019C  4F                dec di
0000019D  50                push ax
0000019E  51                push cx
0000019F  2324              and sp,[si]
000001A1  250E0F            and ax,0xf0e
000001A4  105253            adc [bp+si+0x53],dl
000001A7  54                push sp
000001A8  55                push bp
000001A9  56                push si
000001AA  57                push di
000001AB  2627              es daa
000001AD  2811              sub [bx+di],dl
000001AF  1213              adc dl,[bp+di]
000001B1  58                pop ax
000001B2  59                pop cx
000001B3  5A                pop dx
000001B4  5B                pop bx
000001B5  5C                pop sp
000001B6  292A              sub [bp+si],bp
000001B8  2B2C              sub bp,[si]
000001BA  1415              adc al,0x15
000001BC  16                push ss
000001BD  17                pop ss
000001BE  5D                pop bp
000001BF  5E                pop si
000001C0  5F                pop di
000001C1  2D2E2F            sub ax,0x2f2e
000001C4  3031              xor [bx+di],dh
000001C6  3233              xor dh,[bp+di]
000001C8  3435              xor al,0x35
000001CA  3637              ss aaa
000001CC  3839              cmp [bx+di],bh
000001CE  3A3B              cmp bh,[bp+di]
000001D0  3C3D              cmp al,0x3d
000001D2  DCA106A2          fsub qword [bx+di-0x5dfa]
000001D6  30A25AA2          xor [bp+si-0x5da6],ah
000001DA  84A2AEA2          test [bp+si-0x5d52],ah
000001DE  D8A2033E          fsub dword [bp+si+0x3e03]
000001E2  3F                aas
000001E3  40                inc ax
000001E4  41                inc cx
000001E5  1807              sbb [bx],al
000001E7  42                inc dx
000001E8  43                inc bx
000001E9  44                inc sp
000001EA  45                inc bp
000001EB  1C46              sbb al,0x46
000001ED  47                inc di
000001EE  48                dec ax
000001EF  49                dec cx
000001F0  4A                dec dx
000001F1  4B                dec bx
000001F2  4C                dec sp
000001F3  4D                dec bp
000001F4  4E                dec si
000001F5  4F                dec di
000001F6  50                push ax
000001F7  51                push cx
000001F8  52                push dx
000001F9  53                push bx
000001FA  54                push sp
000001FB  55                push bp
000001FC  56                push si
000001FD  57                push di
000001FE  58                pop ax
000001FF  59                pop cx
00000200  5A                pop dx
00000201  5B                pop bx
00000202  5C                pop sp
00000203  2917              sub [bx],dx
00000205  5D                pop bp
00000206  5E                pop si
00000207  5F                pop di
00000208  2D2E03            sub ax,0x32e
0000020B  3E3F              ds aas
0000020D  40                inc ax
0000020E  41                inc cx
0000020F  1807              sbb [bx],al
00000211  42                inc dx
00000212  43                inc bx
00000213  44                inc sp
00000214  45                inc bp
00000215  1C46              sbb al,0x46
00000217  47                inc di
00000218  48                dec ax
00000219  49                dec cx
0000021A  4A                dec dx
0000021B  4B                dec bx
0000021C  4C                dec sp
0000021D  4D                dec bp
0000021E  4E                dec si
0000021F  4F                dec di
00000220  50                push ax
00000221  51                push cx
00000222  52                push dx
00000223  60                pusha
00000224  61                popa
00000225  625657            bound dx,[bp+0x57]
00000228  58                pop ax
00000229  59                pop cx
0000022A  5A                pop dx
0000022B  5B                pop bx
0000022C  5C                pop sp
0000022D  2917              sub [bx],dx
0000022F  5D                pop bp
00000230  5E                pop si
00000231  5F                pop di
00000232  2D2E03            sub ax,0x32e
00000235  3E3F              ds aas
00000237  40                inc ax
00000238  41                inc cx
00000239  1807              sbb [bx],al
0000023B  42                inc dx
0000023C  43                inc bx
0000023D  44                inc sp
0000023E  45                inc bp
0000023F  1C46              sbb al,0x46
00000241  47                inc di
00000242  48                dec ax
00000243  49                dec cx
00000244  4A                dec dx
00000245  4B                dec bx
00000246  4C                dec sp
00000247  4D                dec bp
00000248  4E                dec si
00000249  4F                dec di
0000024A  50                push ax
0000024B  51                push cx
0000024C  52                push dx
0000024D  636465            arpl [si+0x65],sp
00000250  56                push si
00000251  57                push di
00000252  58                pop ax
00000253  59                pop cx
00000254  5A                pop dx
00000255  5B                pop bx
00000256  5C                pop sp
00000257  2917              sub [bx],dx
00000259  5D                pop bp
0000025A  5E                pop si
0000025B  5F                pop di
0000025C  2D2E03            sub ax,0x32e
0000025F  6667686918076A    a32 push dword 0x6a071869
00000266  6B6C6D1C          imul bp,[si+0x6d],0x1c
0000026A  6E                outsb
0000026B  6F                outsw
0000026C  7071              jo 0x2df
0000026E  7273              jc 0x2e3
00000270  7475              jz 0x2e7
00000272  7677              jna 0x2eb
00000274  7879              js 0x2ef
00000276  7A7B              jpe 0x2f3
00000278  7C7D              jl 0x2f7
0000027A  7E7F              jng 0x2fb
0000027C  8081828384        add byte [bx+di-0x7c7e],0x84
00000281  2917              sub [bx],dx
00000283  8586872D          test [bp+0x2d87],ax
00000287  2E0388898A        add cx,[cs:bx+si-0x7577]
0000028C  8B18              mov bx,[bx+si]
0000028E  07                pop es
0000028F  8C8D8E8F          mov word [di-0x7072],cs
00000293  1C90              sbb al,0x90
00000295  91                xchg ax,cx
00000296  92                xchg ax,dx
00000297  93                xchg ax,bx
00000298  94                xchg ax,sp
00000299  95                xchg ax,bp
0000029A  96                xchg ax,si
0000029B  AD                lodsw
0000029C  AB                stosw
0000029D  AE                scasb
0000029E  9A9B9C9D9E        call word 0x9e9d:word 0x9c9b
000002A3  9F                lahf
000002A4  A0A1A2            mov al,[0xa2a1]
000002A7  A3A4A5            mov [0xa5a4],ax
000002AA  A6                cmpsb
000002AB  2917              sub [bx],dx
000002AD  A7                cmpsw
000002AE  A8A9              test al,0xa9
000002B0  2D2E03            sub ax,0x32e
000002B3  88898A8B          mov [bx+di-0x7476],cl
000002B7  1807              sbb [bx],al
000002B9  8C8D8E8F          mov word [di-0x7072],cs
000002BD  1C90              sbb al,0x90
000002BF  91                xchg ax,cx
000002C0  92                xchg ax,dx
000002C1  93                xchg ax,bx
000002C2  94                xchg ax,sp
000002C3  95                xchg ax,bp
000002C4  96                xchg ax,si
000002C5  AA                stosb
000002C6  AB                stosw
000002C7  AC                lodsb
000002C8  9A9B9C9D9E        call word 0x9e9d:word 0x9c9b
000002CD  9F                lahf
000002CE  A0A1A2            mov al,[0xa2a1]
000002D1  A3A4A5            mov [0xa5a4],ax
000002D4  A6                cmpsb
000002D5  2917              sub [bx],dx
000002D7  A7                cmpsw
000002D8  A8A9              test al,0xa9
000002DA  2D2E03            sub ax,0x32e
000002DD  88898A8B          mov [bx+di-0x7476],cl
000002E1  1807              sbb [bx],al
000002E3  8C8D8E8F          mov word [di-0x7072],cs
000002E7  1C90              sbb al,0x90
000002E9  91                xchg ax,cx
000002EA  92                xchg ax,dx
000002EB  93                xchg ax,bx
000002EC  94                xchg ax,sp
000002ED  95                xchg ax,bp
000002EE  96                xchg ax,si
000002EF  97                xchg ax,di
000002F0  98                cbw
000002F1  99                cwd
000002F2  9A9B9C9D9E        call word 0x9e9d:word 0x9c9b
000002F7  9F                lahf
000002F8  A0A1A2            mov al,[0xa2a1]
000002FB  A3A4A5            mov [0xa5a4],ax
000002FE  A6                cmpsb
000002FF  2917              sub [bx],dx
00000301  A7                cmpsw
00000302  A8A9              test al,0xa9
00000304  2D2E83            sub ax,0x832e
00000307  3E50              ds push ax
00000309  FF04              inc word [si]
0000030B  7301              jnc 0x30e
0000030D  C3                ret
0000030E  C70650FF0000      mov word [0xff50],0x0
00000314  E80200            call 0x319
00000317  EB71              jmp 0x38a
00000319  F606A0A7FF        test byte [0xa7a0],0xff
0000031E  7501              jnz 0x321
00000320  C3                ret
00000321  FE06A1A7          inc byte [0xa7a1]
00000325  803EA1A71A        cmp byte [0xa7a1],0x1a
0000032A  7210              jc 0x33c
0000032C  2EFF161A01        call word near [cs:0x11a]
00000331  0AC0              or al,al
00000333  7401              jz 0x336
00000335  C3                ret
00000336  C606A1A7FF        mov byte [0xa7a1],0xff
0000033B  C3                ret
0000033C  BB60A3            mov bx,0xa360
0000033F  A0A1A7            mov al,[0xa7a1]
00000342  D7                xlatb
00000343  32E4              xor ah,ah
00000345  03C0              add ax,ax
00000347  03C0              add ax,ax
00000349  8BF0              mov si,ax
0000034B  81C67AA3          add si,0xa37a
0000034F  BB2F11            mov bx,0x112f
00000352  B90400            mov cx,0x4
00000355  51                push cx
00000356  53                push bx
00000357  AC                lodsb
00000358  2EFF161630        call word near [cs:0x3016]
0000035D  5B                pop bx
0000035E  FEC7              inc bh
00000360  59                pop cx
00000361  E2F2              loop 0x355
00000363  C3                ret
00000364  0000              add [bx+si],al
00000366  0000              add [bx+si],al
00000368  0000              add [bx+si],al
0000036A  0101              add [bx+di],ax
0000036C  0101              add [bx+di],ax
0000036E  0102              add [bp+si],ax
00000370  0202              add al,[bp+si]
00000372  0202              add al,[bp+si]
00000374  0101              add [bx+di],ax
00000376  0101              add [bx+di],ax
00000378  0100              add [bx+si],ax
0000037A  0000              add [bx+si],al
0000037C  0000              add [bx+si],al
0000037E  96                xchg ax,si
0000037F  97                xchg ax,di
00000380  98                cbw
00000381  99                cwd
00000382  96                xchg ax,si
00000383  AA                stosb
00000384  AB                stosw
00000385  AC                lodsb
00000386  96                xchg ax,si
00000387  AD                lodsw
00000388  AB                stosw
00000389  AE                scasb
0000038A  F6069DA7FF        test byte [0xa79d],0xff
0000038F  7501              jnz 0x392
00000391  C3                ret
00000392  FE069EA7          inc byte [0xa79e]
00000396  803E9EA706        cmp byte [0xa79e],0x6
0000039B  7301              jnc 0x39e
0000039D  C3                ret
0000039E  C6069EA700        mov byte [0xa79e],0x0
000003A3  FE069FA7          inc byte [0xa79f]
000003A7  A09FA7            mov al,[0xa79f]
000003AA  2401              and al,0x1
000003AC  B10A              mov cl,0xa
000003AE  F6E1              mul cl
000003B0  8BF0              mov si,ax
000003B2  81C6D4A3          add si,0xa3d4
000003B6  BB3F11            mov bx,0x113f
000003B9  B90200            mov cx,0x2
000003BC  51                push cx
000003BD  B90500            mov cx,0x5
000003C0  51                push cx
000003C1  53                push bx
000003C2  AC                lodsb
000003C3  2EFF161630        call word near [cs:0x3016]
000003C8  5B                pop bx
000003C9  FEC7              inc bh
000003CB  59                pop cx
000003CC  E2F2              loop 0x3c0
000003CE  80EF05            sub bh,0x5
000003D1  80C308            add bl,0x8
000003D4  59                pop cx
000003D5  E2E5              loop 0x3bc
000003D7  C3                ret
000003D8  A2A3A4            mov [0xa4a3],al
000003DB  A5                movsw
000003DC  A6                cmpsb
000003DD  17                pop ss
000003DE  A7                cmpsw
000003DF  A8A9              test al,0xa9
000003E1  2DAFB0            sub ax,0xb0af
000003E4  B1B2              mov cl,0xb2
000003E6  B317              mov bl,0x17
000003E8  B4B5              mov ah,0xb5
000003EA  B62D              mov dh,0x2d
000003EC  BE2FA4            mov si,0xa42f
000003EF  A00500            mov al,[0x5]
000003F2  0A060600          or al,[0x6]
000003F6  7501              jnz 0x3f9
000003F8  C3                ret
000003F9  BE3CA5            mov si,0xa53c
000003FC  F6060600FF        test byte [0x6],0xff
00000401  7501              jnz 0x404
00000403  C3                ret
00000404  BED2A5            mov si,0xa5d2
00000407  F6064900FF        test byte [0x49],0xff
0000040C  7501              jnz 0x40f
0000040E  C3                ret
0000040F  BEC1A6            mov si,0xa6c1
00000412  C3                ret
00000413  0113              add [bp+di],dx
00000415  4B                dec bx
00000416  49                dec cx
00000417  4E                dec si
00000418  47                inc di
00000419  2E47              cs inc di
0000041B  52                push dx
0000041C  50                push ax
0000041D  0013              add [bp+di],dl
0000041F  AF                scasw
00000420  0011              add [bx+di],dl
00000422  4B                dec bx
00000423  696E67206F        imul bp,[bp+0x67],0x6f20
00000428  66204665          o32 and [bp+0x65],al
0000042C  6C                insb
0000042D  697368696B        imul si,[bp+di+0x68],0x6b69
00000432  61                popa
00000433  0CFF              or al,0xff
00000435  00FF              add bh,bh
00000437  03FF              add di,di
00000439  0442              add al,0x42
0000043B  7261              jc 0x49e
0000043D  7665              jna 0x4a4
0000043F  204475            and [si+0x75],al
00000442  6B652047          imul sp,[di+0x20],0x47
00000446  61                popa
00000447  726C              jc 0x4b5
00000449  61                popa
0000044A  6E                outsb
0000044B  642C20            fs sub al,0x20
0000044E  FF05              inc word [di]
00000450  FF02              inc word [bp+si]
00000452  FF04              inc word [si]
00000454  796F              jns 0x4c5
00000456  755C              jnz 0x4b4
00000458  6C                insb
00000459  6C                insb
0000045A  206E65            and [bp+0x65],ch
0000045D  6564206D6F        and [fs:di+0x6f],ch
00000462  6E                outsb
00000463  657920            gs jns 0x486
00000466  666F              outsd
00000468  7220              jc 0x48a
0000046A  796F              jns 0x4db
0000046C  7572              jnz 0x4e0
0000046E  206A6F            and [bp+si+0x6f],ch
00000471  7572              jnz 0x4e5
00000473  6E                outsb
00000474  65792E            gs jns 0x4a5
00000477  2F                das
00000478  49                dec cx
00000479  26686572          es push word 0x7265
0000047D  65627920          bound di,[gs:bx+di+0x20]
00000481  626573            bound sp,[di+0x73]
00000484  746F              jz 0x4f5
00000486  7720              ja 0x4a8
00000488  7570              jnz 0x4fa
0000048A  6F                outsw
0000048B  6E                outsb
0000048C  20796F            and [bx+di+0x6f],bh
0000048F  7520              jnz 0x4b1
00000491  3130              xor [bx+si],si
00000493  3030              xor [bx+si],dh
00000495  2647              es inc di
00000497  6F                outsw
00000498  6C                insb
00000499  64732E            fs jnc 0x4ca
0000049C  FF05              inc word [di]
0000049E  FF02              inc word [bp+si]
000004A0  FF01              inc word [bx+di]
000004A2  0DFF04            or ax,0x4ff
000004A5  47                inc di
000004A6  6F                outsw
000004A7  20746F            and [si+0x6f],dh
000004AA  20746F            and [si+0x6f],dh
000004AD  776E              ja 0x51d
000004AF  20616E            and [bx+di+0x6e],ah
000004B2  64206F75          and [fs:bx+0x75],ch
000004B6  7466              jz 0x51e
000004B8  697420796F        imul si,[si+0x20],0x6f79
000004BD  7572              jnz 0x531
000004BF  7365              jnc 0x526
000004C1  6C                insb
000004C2  662C20            o32 sub al,0x20
000004C5  7468              jz 0x52f
000004C7  656E              gs outsb
000004C9  206D61            and [di+0x61],ch
000004CC  6B652068          imul sp,[di+0x20],0x68
000004D0  61                popa
000004D1  7374              jnc 0x547
000004D3  6520746F          and [gs:si+0x6f],dh
000004D7  207468            and [si+0x68],dh
000004DA  65206C61          and [gs:si+0x61],ch
000004DE  627972            bound di,[bx+di+0x72]
000004E1  696E746820        imul bp,[bp+0x74],0x2068
000004E6  746F              jz 0x557
000004E8  206465            and [si+0x65],ah
000004EB  666561            gs popad
000004EE  7420              jz 0x510
000004F0  7468              jz 0x55a
000004F2  6520666F          and [gs:bp+0x6f],ah
000004F6  7263              jc 0x55b
000004F8  657320            gs jnc 0x51b
000004FB  6F                outsw
000004FC  66204A61          o32 and [bp+si+0x61],cl
00000500  7368              jnc 0x56a
00000502  69696E2E20        imul bp,[bx+di+0x6e],0x202e
00000507  4D                dec bp
00000508  7920              jns 0x52a
0000050A  6B696E67          imul bp,[bx+di+0x6e],0x67
0000050E  646F              fs outsw
00000510  6D                insw
00000511  20616E            and [bx+di+0x6e],ah
00000514  64207468          and [fs:si+0x68],dh
00000518  65206C69          and [gs:si+0x69],ch
0000051C  6665206F66        o32 and [gs:bx+0x66],ch
00000521  206D79            and [di+0x79],ch
00000524  206461            and [si+0x61],ah
00000527  7567              jnz 0x590
00000529  687465            push word 0x6574
0000052C  7220              jc 0x54e
0000052E  61                popa
0000052F  7265              jc 0x596
00000531  206174            and [bx+di+0x74],ah
00000534  207374            and [bp+di+0x74],dh
00000537  61                popa
00000538  6B652EFF          imul sp,[di+0x2e],0xffffffffffffffff
0000053C  0511FF            add ax,0xff11
0000053F  FF0C              dec word [si]
00000541  FF00              inc word [bx+si]
00000543  FF03              inc word [bp+di]
00000545  FF04              inc word [si]
00000547  42                inc dx
00000548  7261              jc 0x5ab
0000054A  7665              jna 0x5b1
0000054C  204475            and [si+0x75],al
0000054F  6B652C20          imul sp,[di+0x2c],0x20
00000553  64696420796F      imul sp,[fs:si+0x20],0x6f79
00000559  7520              jnz 0x57b
0000055B  666F              outsd
0000055D  7267              jc 0x5c6
0000055F  657420            gs jz 0x582
00000562  736F              jnc 0x5d3
00000564  6D                insw
00000565  657468            gs jz 0x5d0
00000568  696E673FFF        imul bp,[bp+0x67],0xff3f
0000056D  05FF02            add ax,0x2ff
00000570  0DFF04            or ax,0x4ff
00000573  54                push sp
00000574  686520            push word 0x2065
00000577  656E              gs outsb
00000579  7472              jz 0x5ed
0000057B  61                popa
0000057C  6E                outsb
0000057D  636520            arpl [di+0x20],sp
00000580  746F              jz 0x5f1
00000582  207468            and [si+0x68],dh
00000585  65206C61          and [gs:si+0x61],ch
00000589  627972            bound di,[bx+di+0x72]
0000058C  696E746820        imul bp,[bp+0x74],0x2068
00000591  6973206174        imul si,[bp+di+0x20],0x7461
00000596  207468            and [si+0x68],dh
00000599  65206564          and [gs:di+0x64],ah
0000059D  6765206F66        and [gs:edi+0x66],ch
000005A2  20746F            and [si+0x6f],dh
000005A5  776E              ja 0x615
000005A7  2EFF05            inc word [cs:di]
000005AA  0DFF04            or ax,0x4ff
000005AD  50                push ax
000005AE  6C                insb
000005AF  6561              gs popa
000005B1  7365              jnc 0x618
000005B3  206875            and [bx+si+0x75],ch
000005B6  7272              jc 0x62a
000005B8  792C              jns 0x5e6
000005BA  206265            and [bp+si+0x65],ah
000005BD  666F              outsd
000005BF  7265              jc 0x626
000005C1  206974            and [bx+di+0x74],ch
000005C4  5C                pop sp
000005C5  7320              jnc 0x5e7
000005C7  746F              jz 0x638
000005C9  6F                outsw
000005CA  206C61            and [si+0x61],ch
000005CD  7465              jz 0x634
000005CF  2120              and [bx+si],sp
000005D1  FF05              inc word [di]
000005D3  11FF              adc di,di
000005D5  FF0C              dec word [si]
000005D7  FF00              inc word [bx+si]
000005D9  FF03              inc word [bp+di]
000005DB  FF04              inc word [si]
000005DD  44                inc sp
000005DE  756B              jnz 0x64b
000005E0  65204761          and [gs:bx+0x61],al
000005E4  726C              jc 0x652
000005E6  61                popa
000005E7  6E                outsb
000005E8  642C20            fs sub al,0x20
000005EB  FF05              inc word [di]
000005ED  FF02              inc word [bp+si]
000005EF  FF04              inc word [si]
000005F1  49                dec cx
000005F2  20616D            and [bx+di+0x6d],ah
000005F5  20696E            and [bx+di+0x6e],ch
000005F8  206465            and [si+0x65],ah
000005FB  627420            bound si,[si+0x20]
000005FE  746F              jz 0x66f
00000600  20796F            and [bx+di+0x6f],bh
00000603  7520              jnz 0x625
00000605  666F              outsd
00000607  7220              jc 0x629
00000609  796F              jns 0x67a
0000060B  7572              jnz 0x67f
0000060D  206566            and [di+0x66],ah
00000610  666F              outsd
00000612  7274              jc 0x688
00000614  732E              jnc 0x644
00000616  20FF              and bh,bh
00000618  05FF02            add ax,0x2ff
0000061B  FF04              inc word [si]
0000061D  48                dec ax
0000061E  61                popa
0000061F  7665              jna 0x686
00000621  20796F            and [bx+di+0x6f],bh
00000624  7520              jnz 0x646
00000626  6E                outsb
00000627  6F                outsw
00000628  7420              jz 0x64a
0000062A  7965              jns 0x691
0000062C  7420              jz 0x64e
0000062E  7375              jnc 0x6a5
00000630  636365            arpl [bp+di+0x65],sp
00000633  6564656420696E    and [fs:bx+di+0x6e],ch
0000063A  207661            and [bp+0x61],dh
0000063D  6E                outsb
0000063E  7175              jno 0x6b5
00000640  697368696E        imul si,[bp+di+0x68],0x6e69
00000645  67204A61          and [edx+0x61],cl
00000649  7368              jnc 0x6b3
0000064B  69696E3F20        imul bp,[bx+di+0x6e],0x203f
00000650  FF05              inc word [di]
00000652  FF02              inc word [bp+si]
00000654  0DFF04            or ax,0x4ff
00000657  49                dec cx
00000658  207072            and [bx+si+0x72],dh
0000065B  61                popa
0000065C  7920              jns 0x67e
0000065E  7468              jz 0x6c8
00000660  61                popa
00000661  7420              jz 0x683
00000663  7468              jz 0x6cd
00000665  65207370          and [gs:bp+di+0x70],dh
00000669  6972697473        imul si,[bp+si+0x69],0x7374
0000066E  207769            and [bx+0x69],dh
00000671  6C                insb
00000672  6C                insb
00000673  206775            and [bx+0x75],ah
00000676  6964652079        imul sp,[si+0x65],0x7920
0000067B  6F                outsw
0000067C  752E              jnz 0x6ac
0000067E  20506C            and [bx+si+0x6c],dl
00000681  6561              gs popa
00000683  7365              jnc 0x6ea
00000685  20646F            and [si+0x6f],ah
00000688  6E                outsb
00000689  5C                pop sp
0000068A  7420              jz 0x6ac
0000068C  676976652075      imul si,[esi+0x65],0x7520
00000692  702C              jo 0x6c0
00000694  207468            and [si+0x68],dh
00000697  65207065          and [gs:bx+si+0x65],dh
0000069B  6F                outsw
0000069C  706C              jo 0x70a
0000069E  65206F66          and [gs:bx+0x66],ch
000006A2  205A65            and [bp+si+0x65],bl
000006A5  6C                insb
000006A6  6961726420        imul sp,[bx+di+0x72],0x2064
000006AB  61                popa
000006AC  7265              jc 0x713
000006AE  206465            and [si+0x65],ah
000006B1  7065              jo 0x718
000006B3  6E                outsb
000006B4  64696E67206F      imul bp,[fs:bp+0x67],0x6f20
000006BA  6E                outsb
000006BB  20796F            and [bx+di+0x6f],bh
000006BE  7521              jnz 0x6e1
000006C0  FF05              inc word [di]
000006C2  11FF              adc di,di
000006C4  FF0C              dec word [si]
000006C6  FF03              inc word [bp+di]
000006C8  FF04              inc word [si]
000006CA  44                inc sp
000006CB  756B              jnz 0x738
000006CD  65204761          and [gs:bx+0x61],al
000006D1  726C              jc 0x73f
000006D3  61                popa
000006D4  6E                outsb
000006D5  642C20            fs sub al,0x20
000006D8  FF05              inc word [di]
000006DA  FF02              inc word [bp+si]
000006DC  FF04              inc word [si]
000006DE  796F              jns 0x74f
000006E0  7520              jnz 0x702
000006E2  61                popa
000006E3  7265              jc 0x74a
000006E5  206120            and [bx+di+0x20],ah
000006E8  627261            bound si,[bp+si+0x61]
000006EB  7665              jna 0x752
000006ED  206D61            and [di+0x61],ch
000006F0  6E                outsb
000006F1  2E20596F          and [cs:bx+di+0x6f],bl
000006F5  7520              jnz 0x717
000006F7  686176            push word 0x7661
000006FA  6520636F          and [gs:bp+di+0x6f],ah
000006FE  6E                outsb
000006FF  7175              jno 0x776
00000701  657265            gs jc 0x769
00000704  64204A61          and [fs:bp+si+0x61],cl
00000708  7368              jnc 0x772
0000070A  69696E2061        imul bp,[bx+di+0x6e],0x6120
0000070F  6E                outsb
00000710  64207265          and [fs:bp+si+0x65],dh
00000714  7475              jz 0x78b
00000716  726E              jc 0x786
00000718  6564207468        and [fs:si+0x68],dh
0000071D  65206E69          and [gs:bp+0x69],ch
00000721  6E                outsb
00000722  65205465          and [gs:si+0x65],dl
00000726  61                popa
00000727  7273              jc 0x79c
00000729  206F66            and [bx+0x66],ch
0000072C  204573            and [di+0x73],al
0000072F  6D                insw
00000730  657361            gs jnc 0x794
00000733  6E                outsb
00000734  7469              jz 0x79f
00000736  2E20FF            cs and bh,bh
00000739  05FF02            add ax,0x2ff
0000073C  0DFF04            or ax,0x4ff
0000073F  4E                dec si
00000740  6F                outsw
00000741  7720              ja 0x763
00000743  676F              a32 outsw
00000745  207175            and [bx+di+0x75],dh
00000748  69636B6C79        imul sp,[bp+di+0x6b],0x796c
0000074D  20746F            and [si+0x6f],dh
00000750  207468            and [si+0x68],dh
00000753  65206368          and [gs:bp+di+0x68],ah
00000757  61                popa
00000758  6D                insw
00000759  626572            bound sp,[di+0x72]
0000075C  206F66            and [bx+0x66],ch
0000075F  205072            and [bx+si+0x72],dl
00000762  696E636573        imul bp,[bp+0x63],0x7365
00000767  7320              jnc 0x789
00000769  46                inc si
0000076A  656C              gs insb
0000076C  696369612E        imul sp,[bp+di+0x69],0x2e61
00000771  205468            and [si+0x68],dl
00000774  6526637279        arpl [es:bp+si+0x79],si
00000779  7374              jnc 0x7ef
0000077B  61                popa
0000077C  6C                insb
0000077D  7320              jnc 0x79f
0000077F  7769              ja 0x7ea
00000781  6C                insb
00000782  6C                insb
00000783  206272            and [bp+si+0x72],ah
00000786  696E672068        imul bp,[bp+0x67],0x6820
0000078B  657220            gs jc 0x7ae
0000078E  626163            bound sp,[bx+di+0x63]
00000791  6B2074            imul sp,[bx+si],0x74
00000794  6F                outsw
00000795  206C69            and [si+0x69],ch
00000798  66652E20FF        cs o32 and bh,bh
0000079D  0511FF            add ax,0xff11
000007A0  FF00              inc word [bx+si]
000007A2  0000              add [bx+si],al
000007A4  0000              add [bx+si],al
