00000000  4C                dec sp
00000001  0F0000            sldt word [bx+si]
00000004  663B28            cmp ebp,[bx+si]
00000007  305C30            xor [si+0x30],bl
0000000A  2637              es aaa
0000000C  7F37              jg 0x45
0000000E  B737              mov bh,0x37
00000010  0E                push cs
00000011  38B6330C          cmp [bp+0xc33],dh
00000015  366936D2354438    imul si,[ss:0x35d2],0x3844
0000001C  8C38              mov word [bx+si],segr7
0000001E  FE                db 0xfe
0000001F  38CB              cmp bl,cl
00000021  38A13A09          cmp [bx+di+0x93a],ah
00000025  3B8E39B0          cmp cx,[bp-0x4fc7]
00000029  3BB03B1E          cmp si,[bx+si+0x1e3b]
0000002D  BE6C18            mov si,0x186c
00000030  BF00A0            mov di,0xa000
00000033  0E                push cs
00000034  07                pop es
00000035  B800A0            mov ax,0xa000
00000038  8ED8              mov ds,ax
0000003A  BACE03            mov dx,0x3ce
0000003D  B004              mov al,0x4
0000003F  EE                out dx,al
00000040  42                inc dx
00000041  B91C00            mov cx,0x1c
00000044  51                push cx
00000045  56                push si
00000046  B91800            mov cx,0x18
00000049  B000              mov al,0x0
0000004B  EE                out dx,al
0000004C  A5                movsw
0000004D  4E                dec si
0000004E  4E                dec si
0000004F  B002              mov al,0x2
00000051  EE                out dx,al
00000052  A5                movsw
00000053  83C64E            add si,0x4e
00000056  E2F1              loop 0x49
00000058  5E                pop si
00000059  59                pop cx
0000005A  46                inc si
0000005B  46                inc si
0000005C  E2E6              loop 0x44
0000005E  1F                pop ds
0000005F  C3                ret
00000060  0E                push cs
00000061  07                pop es
00000062  BF4C3D            mov di,0x3d4c
00000065  33C0              xor ax,ax
00000067  B90001            mov cx,0x100
0000006A  F3AB              rep stosw
0000006C  8B362AFF          mov si,[0xff2a]
00000070  807C1DFD          cmp byte [si+0x1d],0xfd
00000074  7503              jnz 0x79
00000076  E85804            call 0x4d1
00000079  C706B13B6C18      mov word [0x3bb1],0x186c
0000007F  8B362AFF          mov si,[0xff2a]
00000083  83C620            add si,0x20
00000086  0E                push cs
00000087  07                pop es
00000088  BF00E0            mov di,0xe000
0000008B  C606B33B00        mov byte [0x3bb3],0x0
00000090  E85100            call 0xe4
00000093  32DB              xor bl,bl
00000095  A6                cmpsb
00000096  7403              jz 0x9b
00000098  E88101            call 0x21c
0000009B  FEC3              inc bl
0000009D  A6                cmpsb
0000009E  7403              jz 0xa3
000000A0  E87901            call 0x21c
000000A3  FEC3              inc bl
000000A5  A6                cmpsb
000000A6  7403              jz 0xab
000000A8  E87101            call 0x21c
000000AB  FEC3              inc bl
000000AD  A6                cmpsb
000000AE  7403              jz 0xb3
000000B0  E88C00            call 0x13f
000000B3  FEC3              inc bl
000000B5  A6                cmpsb
000000B6  7403              jz 0xbb
000000B8  E88400            call 0x13f
000000BB  FEC3              inc bl
000000BD  A6                cmpsb
000000BE  7403              jz 0xc3
000000C0  E87300            call 0x136
000000C3  FEC3              inc bl
000000C5  A6                cmpsb
000000C6  7403              jz 0xcb
000000C8  E87400            call 0x13f
000000CB  FEC3              inc bl
000000CD  A6                cmpsb
000000CE  7403              jz 0xd3
000000D0  E86C00            call 0x13f
000000D3  8306B13B02        add word [0x3bb1],0x2
000000D8  FE06B33B          inc byte [0x3bb3]
000000DC  803EB33B1C        cmp byte [0x3bb3],0x1c
000000E1  75AD              jnz 0x90
000000E3  C3                ret
000000E4  803EB33B1B        cmp byte [0x3bb3],0x1b
000000E9  7501              jnz 0xec
000000EB  C3                ret
000000EC  A08300            mov al,[0x83]
000000EF  3806B33B          cmp [0x3bb3],al
000000F3  7401              jz 0xf6
000000F5  C3                ret
000000F6  57                push di
000000F7  06                push es
000000F8  56                push si
000000F9  1E                push ds
000000FA  A08300            mov al,[0x83]
000000FD  02C0              add al,al
000000FF  32E4              xor ah,ah
00000101  8BF8              mov di,ax
00000103  81C7EC24          add di,0x24ec
00000107  B800A0            mov ax,0xa000
0000010A  8EC0              mov es,ax
0000010C  8ED8              mov ds,ax
0000010E  BE803E            mov si,0x3e80
00000111  BAC403            mov dx,0x3c4
00000114  B80207            mov ax,0x702
00000117  EF                out dx,ax
00000118  BACE03            mov dx,0x3ce
0000011B  B80501            mov ax,0x105
0000011E  EF                out dx,ax
0000011F  B90200            mov cx,0x2
00000122  51                push cx
00000123  E86504            call 0x58b
00000126  81C782F8          add di,0xf882
0000012A  59                pop cx
0000012B  E2F5              loop 0x122
0000012D  B80500            mov ax,0x5
00000130  EF                out dx,ax
00000131  1F                pop ds
00000132  5E                pop si
00000133  07                pop es
00000134  5F                pop di
00000135  C3                ret
00000136  807CFFFD          cmp byte [si-0x1],0xfd
0000013A  7503              jnz 0x13f
0000013C  E9BD02            jmp 0x3fc
0000013F  8A45FF            mov al,[di-0x1]
00000142  C645FFFE          mov byte [di-0x1],0xfe
00000146  FEC0              inc al
00000148  7501              jnz 0x14b
0000014A  C3                ret
0000014B  4F                dec di
0000014C  4E                dec si
0000014D  8A14              mov dl,[si]
0000014F  A4                movsb
00000150  06                push es
00000151  1E                push ds
00000152  57                push di
00000153  56                push si
00000154  53                push bx
00000155  B85000            mov ax,0x50
00000158  F6E3              mul bl
0000015A  D1E0              shl ax,0x0
0000015C  D1E0              shl ax,0x0
0000015E  D1E0              shl ax,0x0
00000160  0306B13B          add ax,[0x3bb1]
00000164  8BF8              mov di,ax
00000166  8ADA              mov bl,dl
00000168  32FF              xor bh,bh
0000016A  03DB              add bx,bx
0000016C  F7874C3DFFFF      test word [bx+0x3d4c],0xffff
00000172  7556              jnz 0x1ca
00000174  89BF4C3D          mov [bx+0x3d4c],di
00000178  B83000            mov ax,0x30
0000017B  F6E2              mul dl
0000017D  8BF0              mov si,ax
0000017F  81C60081          add si,0x8100
00000183  BAC403            mov dx,0x3c4
00000186  B002              mov al,0x2
00000188  EE                out dx,al
00000189  42                inc dx
0000018A  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000018F  B800A0            mov ax,0xa000
00000192  8EC0              mov es,ax
00000194  BB4E00            mov bx,0x4e
00000197  B90400            mov cx,0x4
0000019A  B001              mov al,0x1
0000019C  EE                out dx,al
0000019D  A5                movsw
0000019E  B002              mov al,0x2
000001A0  EE                out dx,al
000001A1  AD                lodsw
000001A2  268945FE          mov [es:di-0x2],ax
000001A6  4F                dec di
000001A7  4F                dec di
000001A8  B004              mov al,0x4
000001AA  EE                out dx,al
000001AB  A5                movsw
000001AC  03FB              add di,bx
000001AE  B001              mov al,0x1
000001B0  EE                out dx,al
000001B1  A5                movsw
000001B2  B002              mov al,0x2
000001B4  EE                out dx,al
000001B5  AD                lodsw
000001B6  268945FE          mov [es:di-0x2],ax
000001BA  4F                dec di
000001BB  4F                dec di
000001BC  B004              mov al,0x4
000001BE  EE                out dx,al
000001BF  A5                movsw
000001C0  03FB              add di,bx
000001C2  E2D6              loop 0x19a
000001C4  5B                pop bx
000001C5  5E                pop si
000001C6  5F                pop di
000001C7  1F                pop ds
000001C8  07                pop es
000001C9  C3                ret
000001CA  8BB74C3D          mov si,[bx+0x3d4c]
000001CE  BAC403            mov dx,0x3c4
000001D1  B80207            mov ax,0x702
000001D4  EF                out dx,ax
000001D5  BACE03            mov dx,0x3ce
000001D8  B80501            mov ax,0x105
000001DB  EF                out dx,ax
000001DC  B800A0            mov ax,0xa000
000001DF  8EC0              mov es,ax
000001E1  8ED8              mov ds,ax
000001E3  BB4E00            mov bx,0x4e
000001E6  A4                movsb
000001E7  A4                movsb
000001E8  03FB              add di,bx
000001EA  03F3              add si,bx
000001EC  A4                movsb
000001ED  A4                movsb
000001EE  03FB              add di,bx
000001F0  03F3              add si,bx
000001F2  A4                movsb
000001F3  A4                movsb
000001F4  03FB              add di,bx
000001F6  03F3              add si,bx
000001F8  A4                movsb
000001F9  A4                movsb
000001FA  03FB              add di,bx
000001FC  03F3              add si,bx
000001FE  A4                movsb
000001FF  A4                movsb
00000200  03FB              add di,bx
00000202  03F3              add si,bx
00000204  A4                movsb
00000205  A4                movsb
00000206  03FB              add di,bx
00000208  03F3              add si,bx
0000020A  A4                movsb
0000020B  A4                movsb
0000020C  03FB              add di,bx
0000020E  03F3              add si,bx
00000210  A4                movsb
00000211  A4                movsb
00000212  B80500            mov ax,0x5
00000215  EF                out dx,ax
00000216  5B                pop bx
00000217  5E                pop si
00000218  5F                pop di
00000219  1F                pop ds
0000021A  07                pop es
0000021B  C3                ret
0000021C  8A45FF            mov al,[di-0x1]
0000021F  C645FFFE          mov byte [di-0x1],0xfe
00000223  FEC0              inc al
00000225  7501              jnz 0x228
00000227  C3                ret
00000228  53                push bx
00000229  06                push es
0000022A  8A54FF            mov dl,[si-0x1]
0000022D  8ADA              mov bl,dl
0000022F  32FF              xor bh,bh
00000231  2E8E062CFF        mov es,word [cs:0xff2c]
00000236  26031E0080        add bx,[es:0x8000]
0000023B  268A37            mov dh,[es:bx]
0000023E  07                pop es
0000023F  5B                pop bx
00000240  0AF6              or dh,dh
00000242  7503              jnz 0x247
00000244  E9F8FE            jmp 0x13f
00000247  4F                dec di
00000248  4E                dec si
00000249  A4                movsb
0000024A  06                push es
0000024B  1E                push ds
0000024C  57                push di
0000024D  56                push si
0000024E  53                push bx
0000024F  32E4              xor ah,ah
00000251  8AC6              mov al,dh
00000253  FEC8              dec al
00000255  2403              and al,0x3
00000257  02C0              add al,al
00000259  8BF8              mov di,ax
0000025B  8B85EB32          mov ax,[di+0x32eb]
0000025F  50                push ax
00000260  B85000            mov ax,0x50
00000263  F6E3              mul bl
00000265  D1E0              shl ax,0x0
00000267  D1E0              shl ax,0x0
00000269  D1E0              shl ax,0x0
0000026B  0306B13B          add ax,[0x3bb1]
0000026F  8BF8              mov di,ax
00000271  B83000            mov ax,0x30
00000274  F6E2              mul dl
00000276  8BF0              mov si,ax
00000278  81C60081          add si,0x8100
0000027C  B86000            mov ax,0x60
0000027F  F626B33B          mul byte [0x3bb3]
00000283  D0E3              shl bl,0x0
00000285  D0E3              shl bl,0x0
00000287  D0E3              shl bl,0x0
00000289  D0E3              shl bl,0x0
0000028B  D0E3              shl bl,0x0
0000028D  32FF              xor bh,bh
0000028F  03D8              add bx,ax
00000291  81C300A0          add bx,0xa000
00000295  8BEB              mov bp,bx
00000297  BAC403            mov dx,0x3c4
0000029A  B002              mov al,0x2
0000029C  EE                out dx,al
0000029D  42                inc dx
0000029E  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000002A3  B800A0            mov ax,0xa000
000002A6  8EC0              mov es,ax
000002A8  58                pop ax
000002A9  FF                db 0xff
000002AA  D05B5E            rcr byte [bp+di+0x5e],0x0
000002AD  5F                pop di
000002AE  1F                pop ds
000002AF  07                pop es
000002B0  8A65FF            mov ah,[di-0x1]
000002B3  0AE4              or ah,ah
000002B5  7501              jnz 0x2b8
000002B7  C3                ret
000002B8  80FC19            cmp ah,0x19
000002BB  7201              jc 0x2be
000002BD  C3                ret
000002BE  57                push di
000002BF  06                push es
000002C0  2E8E062CFF        mov es,word [cs:0xff2c]
000002C5  268B3E0480        mov di,[es:0x8004]
000002CA  268A0D            mov cl,[es:di]
000002CD  0AC9              or cl,cl
000002CF  741B              jz 0x2ec
000002D1  47                inc di
000002D2  268A05            mov al,[es:di]
000002D5  3CFF              cmp al,0xff
000002D7  7413              jz 0x2ec
000002D9  3AE0              cmp ah,al
000002DB  7509              jnz 0x2e6
000002DD  268A4501          mov al,[es:di+0x1]
000002E1  8844FF            mov [si-0x1],al
000002E4  EB06              jmp 0x2ec
000002E6  47                inc di
000002E7  47                inc di
000002E8  FEC9              dec cl
000002EA  75E6              jnz 0x2d2
000002EC  07                pop es
000002ED  5F                pop di
000002EE  C3                ret
000002EF  F33227            rep xor ah,[bx]
000002F2  336233            xor sp,[bp+si+0x33]
000002F5  94                xchg ax,sp
000002F6  33B90800          xor di,[bx+di+0x8]
000002FA  51                push cx
000002FB  B002              mov al,0x2
000002FD  EE                out dx,al
000002FE  AD                lodsw
000002FF  8BD8              mov bx,ax
00000301  A5                movsw
00000302  B004              mov al,0x4
00000304  EE                out dx,al
00000305  AD                lodsw
00000306  8BC8              mov cx,ax
00000308  2E8B4602          mov ax,[cs:bp+0x2]
0000030C  23C1              and ax,cx
0000030E  268945FE          mov [es:di-0x2],ax
00000312  B001              mov al,0x1
00000314  EE                out dx,al
00000315  2E8B4600          mov ax,[cs:bp+0x0]
00000319  23C1              and ax,cx
0000031B  0BC3              or ax,bx
0000031D  268945FE          mov [es:di-0x2],ax
00000321  83C74E            add di,0x4e
00000324  83C504            add bp,0x4
00000327  59                pop cx
00000328  E2D0              loop 0x2fa
0000032A  C3                ret
0000032B  B90800            mov cx,0x8
0000032E  51                push cx
0000032F  AD                lodsw
00000330  8BD8              mov bx,ax
00000332  AD                lodsw
00000333  8BC8              mov cx,ax
00000335  B001              mov al,0x1
00000337  EE                out dx,al
00000338  2E8B4600          mov ax,[cs:bp+0x0]
0000033C  23C1              and ax,cx
0000033E  0BC3              or ax,bx
00000340  AB                stosw
00000341  B004              mov al,0x4
00000343  EE                out dx,al
00000344  AD                lodsw
00000345  8BD8              mov bx,ax
00000347  2E8B4602          mov ax,[cs:bp+0x2]
0000034B  23C1              and ax,cx
0000034D  0BC3              or ax,bx
0000034F  268945FE          mov [es:di-0x2],ax
00000353  B002              mov al,0x2
00000355  EE                out dx,al
00000356  26C745FE0000      mov word [es:di-0x2],0x0
0000035C  83C74E            add di,0x4e
0000035F  83C504            add bp,0x4
00000362  59                pop cx
00000363  E2C9              loop 0x32e
00000365  C3                ret
00000366  B90800            mov cx,0x8
00000369  51                push cx
0000036A  AD                lodsw
0000036B  8BD8              mov bx,ax
0000036D  B002              mov al,0x2
0000036F  EE                out dx,al
00000370  A5                movsw
00000371  B001              mov al,0x1
00000373  EE                out dx,al
00000374  2E8B4600          mov ax,[cs:bp+0x0]
00000378  23C3              and ax,bx
0000037A  268945FE          mov [es:di-0x2],ax
0000037E  B004              mov al,0x4
00000380  EE                out dx,al
00000381  AD                lodsw
00000382  2E8B4E02          mov cx,[cs:bp+0x2]
00000386  23CB              and cx,bx
00000388  0BC8              or cx,ax
0000038A  26894DFE          mov [es:di-0x2],cx
0000038E  83C74E            add di,0x4e
00000391  83C504            add bp,0x4
00000394  59                pop cx
00000395  E2D2              loop 0x369
00000397  C3                ret
00000398  1E                push ds
00000399  0E                push cs
0000039A  1F                pop ds
0000039B  8BF5              mov si,bp
0000039D  B90800            mov cx,0x8
000003A0  B001              mov al,0x1
000003A2  EE                out dx,al
000003A3  A5                movsw
000003A4  B002              mov al,0x2
000003A6  EE                out dx,al
000003A7  26C745FE0000      mov word [es:di-0x2],0x0
000003AD  4F                dec di
000003AE  4F                dec di
000003AF  B004              mov al,0x4
000003B1  EE                out dx,al
000003B2  A5                movsw
000003B3  83C74E            add di,0x4e
000003B6  E2E8              loop 0x3a0
000003B8  1F                pop ds
000003B9  C3                ret
000003BA  BF803E            mov di,0x3e80
000003BD  B90600            mov cx,0x6
000003C0  B800A0            mov ax,0xa000
000003C3  8EC0              mov es,ax
000003C5  51                push cx
000003C6  AC                lodsb
000003C7  1E                push ds
000003C8  56                push si
000003C9  B130              mov cl,0x30
000003CB  F6E1              mul cl
000003CD  8BF0              mov si,ax
000003CF  81C60081          add si,0x8100
000003D3  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000003D8  BAC403            mov dx,0x3c4
000003DB  B002              mov al,0x2
000003DD  EE                out dx,al
000003DE  42                inc dx
000003DF  B90800            mov cx,0x8
000003E2  B001              mov al,0x1
000003E4  EE                out dx,al
000003E5  A5                movsw
000003E6  B002              mov al,0x2
000003E8  EE                out dx,al
000003E9  AD                lodsw
000003EA  268945FE          mov [es:di-0x2],ax
000003EE  4F                dec di
000003EF  4F                dec di
000003F0  B004              mov al,0x4
000003F2  EE                out dx,al
000003F3  A5                movsw
000003F4  E2EC              loop 0x3e2
000003F6  5E                pop si
000003F7  1F                pop ds
000003F8  59                pop cx
000003F9  E2CA              loop 0x3c5
000003FB  C3                ret
000003FC  1E                push ds
000003FD  56                push si
000003FE  06                push es
000003FF  57                push di
00000400  BFB53B            mov di,0x3bb5
00000403  A5                movsw
00000404  83C605            add si,0x5
00000407  A5                movsw
00000408  A4                movsb
00000409  2E8A16B33B        mov dl,[cs:0x3bb3]
0000040E  80C204            add dl,0x4
00000411  32F6              xor dh,dh
00000413  2E03168000        add dx,[cs:0x80]
00000418  8916BA3B          mov [0x3bba],dx
0000041C  E84501            call 0x564
0000041F  26A2B43B          mov [es:0x3bb4],al
00000423  26803EB73BFD      cmp byte [es:0x3bb7],0xfd
00000429  7508              jnz 0x433
0000042B  42                inc dx
0000042C  E83501            call 0x564
0000042F  26A2B73B          mov [es:0x3bb7],al
00000433  BEB43B            mov si,0x3bb4
00000436  BFE03E            mov di,0x3ee0
00000439  E881FF            call 0x3bd
0000043C  2E8B360FC0        mov si,[cs:0xc00f]
00000441  E8B801            call 0x5fc
00000444  0ADB              or bl,bl
00000446  7412              jz 0x45a
00000448  56                push si
00000449  53                push bx
0000044A  E88901            call 0x5d6
0000044D  5B                pop bx
0000044E  2E8E062CFF        mov es,word [cs:0xff2c]
00000453  BEB43B            mov si,0x3bb4
00000456  E85B01            call 0x5b4
00000459  5E                pop si
0000045A  83C608            add si,0x8
0000045D  833CFF            cmp word [si],0xffffffffffffffff
00000460  75DF              jnz 0x441
00000462  5F                pop di
00000463  07                pop es
00000464  268A6DFF          mov ch,[es:di-0x1]
00000468  268A4D07          mov cl,[es:di+0x7]
0000046C  06                push es
0000046D  57                push di
0000046E  51                push cx
0000046F  2E8B3EB13B        mov di,[cs:0x3bb1]
00000474  81C7800C          add di,0xc80
00000478  57                push di
00000479  BEE03E            mov si,0x3ee0
0000047C  B800A0            mov ax,0xa000
0000047F  8EC0              mov es,ax
00000481  8ED8              mov ds,ax
00000483  BAC403            mov dx,0x3c4
00000486  B80207            mov ax,0x702
00000489  EF                out dx,ax
0000048A  BACE03            mov dx,0x3ce
0000048D  B80501            mov ax,0x105
00000490  EF                out dx,ax
00000491  FEC5              inc ch
00000493  7403              jz 0x498
00000495  E8F300            call 0x58b
00000498  5F                pop di
00000499  59                pop cx
0000049A  2E803EB33B1B      cmp byte [cs:0x3bb3],0x1b
000004A0  740C              jz 0x4ae
000004A2  BE103F            mov si,0x3f10
000004A5  47                inc di
000004A6  47                inc di
000004A7  FEC1              inc cl
000004A9  7403              jz 0x4ae
000004AB  E8DD00            call 0x58b
000004AE  B80500            mov ax,0x5
000004B1  EF                out dx,ax
000004B2  5F                pop di
000004B3  07                pop es
000004B4  B0FF              mov al,0xff
000004B6  26C645FFFE        mov byte [es:di-0x1],0xfe
000004BB  268805            mov [es:di],al
000004BE  26884501          mov [es:di+0x1],al
000004C2  26884507          mov [es:di+0x7],al
000004C6  26884508          mov [es:di+0x8],al
000004CA  26884509          mov [es:di+0x9],al
000004CE  5E                pop si
000004CF  1F                pop ds
000004D0  C3                ret
000004D1  06                push es
000004D2  1E                push ds
000004D3  8B362AFF          mov si,[0xff2a]
000004D7  83C625            add si,0x25
000004DA  BFB43B            mov di,0x3bb4
000004DD  A5                movsw
000004DE  A4                movsb
000004DF  8B168000          mov dx,[0x80]
000004E3  83C203            add dx,0x3
000004E6  8916BA3B          mov [0x3bba],dx
000004EA  803EB43BFD        cmp byte [0x3bb4],0xfd
000004EF  7507              jnz 0x4f8
000004F1  42                inc dx
000004F2  E86F00            call 0x564
000004F5  A2B43B            mov [0x3bb4],al
000004F8  BEB43B            mov si,0x3bb4
000004FB  BFE03E            mov di,0x3ee0
000004FE  B90300            mov cx,0x3
00000501  E8BCFE            call 0x3c0
00000504  2E8B360FC0        mov si,[cs:0xc00f]
00000509  E8F000            call 0x5fc
0000050C  0ADB              or bl,bl
0000050E  741F              jz 0x52f
00000510  56                push si
00000511  FECB              dec bl
00000513  B003              mov al,0x3
00000515  F6E3              mul bl
00000517  50                push ax
00000518  E8BB00            call 0x5d6
0000051B  58                pop ax
0000051C  03F8              add di,ax
0000051E  8BEF              mov bp,di
00000520  2E8E062CFF        mov es,word [cs:0xff2c]
00000525  BEB43B            mov si,0x3bb4
00000528  BFE03E            mov di,0x3ee0
0000052B  E80E01            call 0x63c
0000052E  5E                pop si
0000052F  83C608            add si,0x8
00000532  833CFF            cmp word [si],0xffffffffffffffff
00000535  75D2              jnz 0x509
00000537  BFEC24            mov di,0x24ec
0000053A  BEE03E            mov si,0x3ee0
0000053D  B800A0            mov ax,0xa000
00000540  8EC0              mov es,ax
00000542  8ED8              mov ds,ax
00000544  BAC403            mov dx,0x3c4
00000547  B80207            mov ax,0x702
0000054A  EF                out dx,ax
0000054B  BACE03            mov dx,0x3ce
0000054E  B80501            mov ax,0x105
00000551  EF                out dx,ax
00000552  E83600            call 0x58b
00000555  B80500            mov ax,0x5
00000558  EF                out dx,ax
00000559  1F                pop ds
0000055A  07                pop es
0000055B  BF05E0            mov di,0xe005
0000055E  B0FF              mov al,0xff
00000560  AA                stosb
00000561  AA                stosb
00000562  AA                stosb
00000563  C3                ret
00000564  E81600            call 0x57d
00000567  8A4403            mov al,[si+0x3]
0000056A  3CFD              cmp al,0xfd
0000056C  7401              jz 0x56f
0000056E  C3                ret
0000056F  83C608            add si,0x8
00000572  E80C00            call 0x581
00000575  8A4403            mov al,[si+0x3]
00000578  3CFD              cmp al,0xfd
0000057A  74F3              jz 0x56f
0000057C  C3                ret
0000057D  8B360FC0          mov si,[0xc00f]
00000581  3B14              cmp dx,[si]
00000583  7501              jnz 0x586
00000585  C3                ret
00000586  83C608            add si,0x8
00000589  EBF6              jmp 0x581
0000058B  BB4E00            mov bx,0x4e
0000058E  B90300            mov cx,0x3
00000591  A4                movsb
00000592  A4                movsb
00000593  03FB              add di,bx
00000595  A4                movsb
00000596  A4                movsb
00000597  03FB              add di,bx
00000599  A4                movsb
0000059A  A4                movsb
0000059B  03FB              add di,bx
0000059D  A4                movsb
0000059E  A4                movsb
0000059F  03FB              add di,bx
000005A1  A4                movsb
000005A2  A4                movsb
000005A3  03FB              add di,bx
000005A5  A4                movsb
000005A6  A4                movsb
000005A7  03FB              add di,bx
000005A9  A4                movsb
000005AA  A4                movsb
000005AB  03FB              add di,bx
000005AD  A4                movsb
000005AE  A4                movsb
000005AF  03FB              add di,bx
000005B1  E2DE              loop 0x591
000005B3  C3                ret
000005B4  8BEF              mov bp,di
000005B6  FECB              dec bl
000005B8  32FF              xor bh,bh
000005BA  03DB              add bx,bx
000005BC  2EFF97BE35        call word near [cs:bx+0x35be]
000005C1  C3                ret
000005C2  CA35C2            retf word 0xc235
000005C5  35BFE0            xor ax,0xe0bf
000005C8  3EE87000          ds call 0x63c
000005CC  EB6E              jmp 0x63c
000005CE  83C603            add si,0x3
000005D1  BF103F            mov di,0x3f10
000005D4  EB66              jmp 0x63c
000005D6  8A4402            mov al,[si+0x2]
000005D9  8AE8              mov ch,al
000005DB  247F              and al,0x7f
000005DD  B130              mov cl,0x30
000005DF  F6E1              mul cl
000005E1  050040            add ax,0x4000
000005E4  8BF8              mov di,ax
000005E6  32D2              xor dl,dl
000005E8  0AED              or ch,ch
000005EA  7802              js 0x5ee
000005EC  B204              mov dl,0x4
000005EE  8A4404            mov al,[si+0x4]
000005F1  2403              and al,0x3
000005F3  02C2              add al,dl
000005F5  B106              mov cl,0x6
000005F7  F6E1              mul cl
000005F9  03F8              add di,ax
000005FB  C3                ret
000005FC  B90200            mov cx,0x2
000005FF  8B16BA3B          mov dx,[0x3bba]
00000603  8AD9              mov bl,cl
00000605  3914              cmp [si],dx
00000607  7501              jnz 0x60a
00000609  C3                ret
0000060A  42                inc dx
0000060B  E2F6              loop 0x603
0000060D  8AD9              mov bl,cl
0000060F  C3                ret
00000610  8BEF              mov bp,di
00000612  FECB              dec bl
00000614  32FF              xor bh,bh
00000616  03DB              add bx,bx
00000618  2EFF971A36        call word near [cs:bx+0x361a]
0000061D  C3                ret
0000061E  30362836          xor [0x3628],dh
00000622  203683C5          and [0xc583],dh
00000626  03BF803E          add di,[bx+0x3e80]
0000062A  EB10              jmp 0x63c
0000062C  BF803E            mov di,0x3e80
0000062F  E80A00            call 0x63c
00000632  EB08              jmp 0x63c
00000634  BFB03E            mov di,0x3eb0
00000637  83C603            add si,0x3
0000063A  EB00              jmp 0x63c
0000063C  B90300            mov cx,0x3
0000063F  51                push cx
00000640  C604FF            mov byte [si],0xff
00000643  46                inc si
00000644  1E                push ds
00000645  56                push si
00000646  268A4600          mov al,[es:bp+0x0]
0000064A  45                inc bp
0000064B  06                push es
0000064C  55                push bp
0000064D  FEC8              dec al
0000064F  B130              mov cl,0x30
00000651  F6E1              mul cl
00000653  050041            add ax,0x4100
00000656  8BF0              mov si,ax
00000658  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000065D  B800A0            mov ax,0xa000
00000660  8EC0              mov es,ax
00000662  E82E00            call 0x693
00000665  5D                pop bp
00000666  07                pop es
00000667  5E                pop si
00000668  1F                pop ds
00000669  59                pop cx
0000066A  E2D3              loop 0x63f
0000066C  C3                ret
0000066D  BF803E            mov di,0x3e80
00000670  B90600            mov cx,0x6
00000673  51                push cx
00000674  AC                lodsb
00000675  1E                push ds
00000676  56                push si
00000677  B130              mov cl,0x30
00000679  F6E1              mul cl
0000067B  050060            add ax,0x6000
0000067E  8BF0              mov si,ax
00000680  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000685  B800A0            mov ax,0xa000
00000688  8EC0              mov es,ax
0000068A  E80600            call 0x693
0000068D  5E                pop si
0000068E  1F                pop ds
0000068F  59                pop cx
00000690  E2E1              loop 0x673
00000692  C3                ret
00000693  BAC403            mov dx,0x3c4
00000696  B80207            mov ax,0x702
00000699  EF                out dx,ax
0000069A  BACE03            mov dx,0x3ce
0000069D  B80502            mov ax,0x205
000006A0  EF                out dx,ax
000006A1  B90800            mov cx,0x8
000006A4  51                push cx
000006A5  B80300            mov ax,0x3
000006A8  EF                out dx,ax
000006A9  B008              mov al,0x8
000006AB  EE                out dx,al
000006AC  42                inc dx
000006AD  AD                lodsw
000006AE  8BC8              mov cx,ax
000006B0  AD                lodsw
000006B1  8BD8              mov bx,ax
000006B3  AD                lodsw
000006B4  8BE8              mov bp,ax
000006B6  0BC3              or ax,bx
000006B8  0BC1              or ax,cx
000006BA  EE                out dx,al
000006BB  32C0              xor al,al
000006BD  268605            xchg al,[es:di]
000006C0  8AC4              mov al,ah
000006C2  EE                out dx,al
000006C3  32C0              xor al,al
000006C5  26864501          xchg al,[es:di+0x1]
000006C9  8BC5              mov ax,bp
000006CB  23C3              and ax,bx
000006CD  23C1              and ax,cx
000006CF  91                xchg ax,cx
000006D0  50                push ax
000006D1  4A                dec dx
000006D2  B80310            mov ax,0x1003
000006D5  EF                out dx,ax
000006D6  B008              mov al,0x8
000006D8  EE                out dx,al
000006D9  42                inc dx
000006DA  58                pop ax
000006DB  32C1              xor al,cl
000006DD  EE                out dx,al
000006DE  B001              mov al,0x1
000006E0  268605            xchg al,[es:di]
000006E3  32E5              xor ah,ch
000006E5  8AC4              mov al,ah
000006E7  EE                out dx,al
000006E8  B001              mov al,0x1
000006EA  26864501          xchg al,[es:di+0x1]
000006EE  8BC3              mov ax,bx
000006F0  32C1              xor al,cl
000006F2  EE                out dx,al
000006F3  B002              mov al,0x2
000006F5  268605            xchg al,[es:di]
000006F8  32E5              xor ah,ch
000006FA  8AC4              mov al,ah
000006FC  EE                out dx,al
000006FD  B002              mov al,0x2
000006FF  26864501          xchg al,[es:di+0x1]
00000703  8BC5              mov ax,bp
00000705  32C1              xor al,cl
00000707  EE                out dx,al
00000708  B004              mov al,0x4
0000070A  268605            xchg al,[es:di]
0000070D  32E5              xor ah,ch
0000070F  8AC4              mov al,ah
00000711  EE                out dx,al
00000712  B004              mov al,0x4
00000714  26864501          xchg al,[es:di+0x1]
00000718  4A                dec dx
00000719  47                inc di
0000071A  47                inc di
0000071B  59                pop cx
0000071C  E286              loop 0x6a4
0000071E  B80300            mov ax,0x3
00000721  EF                out dx,ax
00000722  B005              mov al,0x5
00000724  EF                out dx,ax
00000725  B808FF            mov ax,0xff08
00000728  EF                out dx,ax
00000729  C3                ret
0000072A  1E                push ds
0000072B  BAC403            mov dx,0x3c4
0000072E  B80207            mov ax,0x702
00000731  EF                out dx,ax
00000732  BACE03            mov dx,0x3ce
00000735  B80501            mov ax,0x105
00000738  EF                out dx,ax
00000739  B800A0            mov ax,0xa000
0000073C  8EC0              mov es,ax
0000073E  8ED8              mov ds,ax
00000740  FD                std
00000741  BEA32C            mov si,0x2ca3
00000744  B008              mov al,0x8
00000746  56                push si
00000747  8BFE              mov di,si
00000749  4E                dec si
0000074A  4E                dec si
0000074B  B93600            mov cx,0x36
0000074E  F3A4              rep movsb
00000750  83C61E            add si,0x1e
00000753  A4                movsb
00000754  A4                movsb
00000755  5E                pop si
00000756  83C650            add si,0x50
00000759  FEC8              dec al
0000075B  75E9              jnz 0x746
0000075D  BE232F            mov si,0x2f23
00000760  B008              mov al,0x8
00000762  56                push si
00000763  8BFE              mov di,si
00000765  83EE04            sub si,0x4
00000768  B93400            mov cx,0x34
0000076B  F3A4              rep movsb
0000076D  83C620            add si,0x20
00000770  A4                movsb
00000771  A4                movsb
00000772  A4                movsb
00000773  A4                movsb
00000774  5E                pop si
00000775  83C650            add si,0x50
00000778  FEC8              dec al
0000077A  75E6              jnz 0x762
0000077C  B80500            mov ax,0x5
0000077F  EF                out dx,ax
00000780  1F                pop ds
00000781  FC                cld
00000782  C3                ret
00000783  1E                push ds
00000784  BAC403            mov dx,0x3c4
00000787  B80207            mov ax,0x702
0000078A  EF                out dx,ax
0000078B  BACE03            mov dx,0x3ce
0000078E  B80501            mov ax,0x105
00000791  EF                out dx,ax
00000792  B800A0            mov ax,0xa000
00000795  8EC0              mov es,ax
00000797  8ED8              mov ds,ax
00000799  FD                std
0000079A  BEA304            mov si,0x4a3
0000079D  B010              mov al,0x10
0000079F  56                push si
000007A0  8BFE              mov di,si
000007A2  4E                dec si
000007A3  B93700            mov cx,0x37
000007A6  F3A4              rep movsb
000007A8  83C61D            add si,0x1d
000007AB  A4                movsb
000007AC  5E                pop si
000007AD  83C650            add si,0x50
000007B0  FEC8              dec al
000007B2  75EB              jnz 0x79f
000007B4  B80500            mov ax,0x5
000007B7  EF                out dx,ax
000007B8  1F                pop ds
000007B9  FC                cld
000007BA  C3                ret
000007BB  1E                push ds
000007BC  BAC403            mov dx,0x3c4
000007BF  B80207            mov ax,0x702
000007C2  EF                out dx,ax
000007C3  BACE03            mov dx,0x3ce
000007C6  B80501            mov ax,0x105
000007C9  EF                out dx,ax
000007CA  B800A0            mov ax,0xa000
000007CD  8EC0              mov es,ax
000007CF  8ED8              mov ds,ax
000007D1  BE6C2C            mov si,0x2c6c
000007D4  B008              mov al,0x8
000007D6  56                push si
000007D7  8BFE              mov di,si
000007D9  46                inc si
000007DA  46                inc si
000007DB  B93600            mov cx,0x36
000007DE  F3A4              rep movsb
000007E0  83EE1E            sub si,0x1e
000007E3  A4                movsb
000007E4  A4                movsb
000007E5  5E                pop si
000007E6  83C650            add si,0x50
000007E9  FEC8              dec al
000007EB  75E9              jnz 0x7d6
000007ED  BEEC2E            mov si,0x2eec
000007F0  B008              mov al,0x8
000007F2  56                push si
000007F3  8BFE              mov di,si
000007F5  83C604            add si,0x4
000007F8  B93400            mov cx,0x34
000007FB  F3A4              rep movsb
000007FD  83EE20            sub si,0x20
00000800  A4                movsb
00000801  A4                movsb
00000802  A4                movsb
00000803  A4                movsb
00000804  5E                pop si
00000805  83C650            add si,0x50
00000808  FEC8              dec al
0000080A  75E6              jnz 0x7f2
0000080C  B80500            mov ax,0x5
0000080F  EF                out dx,ax
00000810  1F                pop ds
00000811  C3                ret
00000812  1E                push ds
00000813  BAC403            mov dx,0x3c4
00000816  B80207            mov ax,0x702
00000819  EF                out dx,ax
0000081A  BACE03            mov dx,0x3ce
0000081D  B80501            mov ax,0x105
00000820  EF                out dx,ax
00000821  B800A0            mov ax,0xa000
00000824  8EC0              mov es,ax
00000826  8ED8              mov ds,ax
00000828  BE6C04            mov si,0x46c
0000082B  B010              mov al,0x10
0000082D  56                push si
0000082E  8BFE              mov di,si
00000830  46                inc si
00000831  B93700            mov cx,0x37
00000834  F3A4              rep movsb
00000836  83EE1D            sub si,0x1d
00000839  A4                movsb
0000083A  5E                pop si
0000083B  83C650            add si,0x50
0000083E  FEC8              dec al
00000840  75EB              jnz 0x82d
00000842  B80500            mov ax,0x5
00000845  EF                out dx,ax
00000846  1F                pop ds
00000847  C3                ret
00000848  1E                push ds
00000849  56                push si
0000084A  B230              mov dl,0x30
0000084C  F6E2              mul dl
0000084E  8BF0              mov si,ax
00000850  81C60080          add si,0x8000
00000854  B050              mov al,0x50
00000856  F6E3              mul bl
00000858  8ADF              mov bl,bh
0000085A  32FF              xor bh,bh
0000085C  03DB              add bx,bx
0000085E  03C3              add ax,bx
00000860  8BF8              mov di,ax
00000862  BAC403            mov dx,0x3c4
00000865  B002              mov al,0x2
00000867  EE                out dx,al
00000868  42                inc dx
00000869  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000086E  B800A0            mov ax,0xa000
00000871  8EC0              mov es,ax
00000873  B90800            mov cx,0x8
00000876  B001              mov al,0x1
00000878  EE                out dx,al
00000879  A5                movsw
0000087A  B002              mov al,0x2
0000087C  EE                out dx,al
0000087D  AD                lodsw
0000087E  268945FE          mov [es:di-0x2],ax
00000882  4F                dec di
00000883  4F                dec di
00000884  B004              mov al,0x4
00000886  EE                out dx,al
00000887  A5                movsw
00000888  83C74E            add di,0x4e
0000088B  E2E9              loop 0x876
0000088D  5E                pop si
0000088E  1F                pop ds
0000088F  C3                ret
00000890  1E                push ds
00000891  56                push si
00000892  57                push di
00000893  0E                push cs
00000894  1F                pop ds
00000895  B050              mov al,0x50
00000897  F6E3              mul bl
00000899  8ADF              mov bl,bh
0000089B  32FF              xor bh,bh
0000089D  03C3              add ax,bx
0000089F  8BF8              mov di,ax
000008A1  BAC403            mov dx,0x3c4
000008A4  B80202            mov ax,0x202
000008A7  EF                out dx,ax
000008A8  B800A0            mov ax,0xa000
000008AB  8EC0              mov es,ax
000008AD  BEB938            mov si,0x38b9
000008B0  B90900            mov cx,0x9
000008B3  A5                movsw
000008B4  83C74E            add di,0x4e
000008B7  E2FA              loop 0x8b3
000008B9  5F                pop di
000008BA  5E                pop si
000008BB  1F                pop ds
000008BC  C3                ret
000008BD  0000              add [bx+si],al
000008BF  7000              jo 0x8c1
000008C1  7E00              jng 0x8c3
000008C3  7FC0              jg 0x885
000008C5  7FF8              jg 0x8bf
000008C7  7FC0              jg 0x889
000008C9  7E00              jng 0x8cb
000008CB  7000              jo 0x8cd
000008CD  0000              add [bx+si],al
000008CF  B050              mov al,0x50
000008D1  F6E3              mul bl
000008D3  8BF8              mov di,ax
000008D5  8ADF              mov bl,bh
000008D7  32FF              xor bh,bh
000008D9  03FB              add di,bx
000008DB  BEBC3B            mov si,0x3bbc
000008DE  B800A0            mov ax,0xa000
000008E1  8EC0              mov es,ax
000008E3  BAC403            mov dx,0x3c4
000008E6  B80201            mov ax,0x102
000008E9  EF                out dx,ax
000008EA  B90900            mov cx,0x9
000008ED  51                push cx
000008EE  57                push di
000008EF  56                push si
000008F0  8B0E6AFF          mov cx,[0xff6a]
000008F4  F3A4              rep movsb
000008F6  5E                pop si
000008F7  83C628            add si,0x28
000008FA  5F                pop di
000008FB  83C750            add di,0x50
000008FE  59                pop cx
000008FF  E2EC              loop 0x8ed
00000901  C3                ret
00000902  56                push si
00000903  57                push di
00000904  57                push di
00000905  32E4              xor ah,ah
00000907  50                push ax
00000908  0E                push cs
00000909  07                pop es
0000090A  BFBC3B            mov di,0x3bbc
0000090D  33C0              xor ax,ax
0000090F  B9C800            mov cx,0xc8
00000912  F3AB              rep stosw
00000914  58                pop ax
00000915  50                push ax
00000916  03C0              add ax,ax
00000918  03F0              add si,ax
0000091A  8B34              mov si,[si]
0000091C  E81C00            call 0x93b
0000091F  58                pop ax
00000920  5F                pop di
00000921  F60657FFFF        test byte [0xff57],0xff
00000926  7410              jz 0x938
00000928  8BD8              mov bx,ax
0000092A  03C0              add ax,ax
0000092C  03C3              add ax,bx
0000092E  03F8              add di,ax
00000930  8A15              mov dl,[di]
00000932  8B4501            mov ax,[di+0x1]
00000935  E88000            call 0x9b8
00000938  5F                pop di
00000939  5E                pop si
0000093A  C3                ret
0000093B  0E                push cs
0000093C  07                pop es
0000093D  BFE43B            mov di,0x3be4
00000940  32DB              xor bl,bl
00000942  AC                lodsb
00000943  0AC0              or al,al
00000945  7501              jnz 0x948
00000947  C3                ret
00000948  53                push bx
00000949  1E                push ds
0000094A  56                push si
0000094B  80E303            and bl,0x3
0000094E  E80700            call 0x958
00000951  5E                pop si
00000952  1F                pop ds
00000953  5B                pop bx
00000954  FEC3              inc bl
00000956  EBEA              jmp 0x942
00000958  2C20              sub al,0x20
0000095A  32E4              xor ah,ah
0000095C  D1E0              shl ax,0x0
0000095E  D1E0              shl ax,0x0
00000960  D1E0              shl ax,0x0
00000962  8BF0              mov si,ax
00000964  0E                push cs
00000965  1F                pop ds
00000966  033604F5          add si,[0xf504]
0000096A  02DB              add bl,bl
0000096C  8ACB              mov cl,bl
0000096E  57                push di
0000096F  B308              mov bl,0x8
00000971  53                push bx
00000972  AC                lodsb
00000973  32DB              xor bl,bl
00000975  8AF8              mov bh,al
00000977  D3EB              shr bx,cl
00000979  26083D            or [es:di],bh
0000097C  26085D01          or [es:di+0x1],bl
00000980  83C728            add di,0x28
00000983  5B                pop bx
00000984  FECB              dec bl
00000986  75E9              jnz 0x971
00000988  5F                pop di
00000989  47                inc di
0000098A  80F906            cmp cl,0x6
0000098D  7401              jz 0x990
0000098F  C3                ret
00000990  47                inc di
00000991  C3                ret
00000992  52                push dx
00000993  50                push ax
00000994  0E                push cs
00000995  07                pop es
00000996  BFBC3B            mov di,0x3bbc
00000999  33C0              xor ax,ax
0000099B  B9C800            mov cx,0xc8
0000099E  F3AB              rep stosw
000009A0  58                pop ax
000009A1  5A                pop dx
000009A2  E87800            call 0xa1d
000009A5  BFE43B            mov di,0x3be4
000009A8  BE313A            mov si,0x3a31
000009AB  B90700            mov cx,0x7
000009AE  B301              mov bl,0x1
000009B0  C7066AFF0B00      mov word [0xff6a],0xb
000009B6  EB14              jmp 0x9cc
000009B8  E86200            call 0xa1d
000009BB  0E                push cs
000009BC  07                pop es
000009BD  BFE43B            mov di,0x3be4
000009C0  033E68FF          add di,[0xff68]
000009C4  BE323A            mov si,0x3a32
000009C7  B90600            mov cx,0x6
000009CA  B301              mov bl,0x1
000009CC  51                push cx
000009CD  53                push bx
000009CE  57                push di
000009CF  AC                lodsb
000009D0  56                push si
000009D1  E81100            call 0x9e5
000009D4  5E                pop si
000009D5  5F                pop di
000009D6  5B                pop bx
000009D7  8AC3              mov al,bl
000009D9  47                inc di
000009DA  250100            and ax,0x1
000009DD  03F8              add di,ax
000009DF  FEC3              inc bl
000009E1  59                pop cx
000009E2  E2E8              loop 0x9cc
000009E4  C3                ret
000009E5  FEC0              inc al
000009E7  7501              jnz 0x9ea
000009E9  C3                ret
000009EA  FEC8              dec al
000009EC  32E4              xor ah,ah
000009EE  D1E0              shl ax,0x0
000009F0  D1E0              shl ax,0x0
000009F2  D1E0              shl ax,0x0
000009F4  D1E0              shl ax,0x0
000009F6  2E030602F5        add ax,[cs:0xf502]
000009FB  8BF0              mov si,ax
000009FD  B90700            mov cx,0x7
00000A00  AD                lodsw
00000A01  86E0              xchg ah,al
00000A03  F6C301            test bl,0x1
00000A06  7508              jnz 0xa10
00000A08  D1E0              shl ax,0x0
00000A0A  D1E0              shl ax,0x0
00000A0C  D1E0              shl ax,0x0
00000A0E  D1E0              shl ax,0x0
00000A10  260825            or [es:di],ah
00000A13  26084501          or [es:di+0x1],al
00000A17  83C728            add di,0x28
00000A1A  E2E4              loop 0xa00
00000A1C  C3                ret
00000A1D  BF313A            mov di,0x3a31
00000A20  E81900            call 0xa3c
00000A23  B90600            mov cx,0x6
00000A26  2EF605FF          test byte [cs:di],0xff
00000A2A  7401              jz 0xa2d
00000A2C  C3                ret
00000A2D  2EC605FF          mov byte [cs:di],0xff
00000A31  47                inc di
00000A32  E2F2              loop 0xa26
00000A34  C3                ret
00000A35  0000              add [bx+si],al
00000A37  0000              add [bx+si],al
00000A39  0000              add [bx+si],al
00000A3B  00B10FBB          add [bx+di-0x44f1],dh
00000A3F  40                inc ax
00000A40  42                inc dx
00000A41  E83E00            call 0xa82
00000A44  2E8835            mov [cs:di],dh
00000A47  B101              mov cl,0x1
00000A49  BBA086            mov bx,0x86a0
00000A4C  E83300            call 0xa82
00000A4F  2E887501          mov [cs:di+0x1],dh
00000A53  32C9              xor cl,cl
00000A55  BB1027            mov bx,0x2710
00000A58  E82700            call 0xa82
00000A5B  2E887502          mov [cs:di+0x2],dh
00000A5F  BBE803            mov bx,0x3e8
00000A62  E83600            call 0xa9b
00000A65  2E887503          mov [cs:di+0x3],dh
00000A69  BB6400            mov bx,0x64
00000A6C  E82C00            call 0xa9b
00000A6F  2E887504          mov [cs:di+0x4],dh
00000A73  BB0A00            mov bx,0xa
00000A76  E82200            call 0xa9b
00000A79  2E887505          mov [cs:di+0x5],dh
00000A7D  2E884506          mov [cs:di+0x6],al
00000A81  C3                ret
00000A82  32F6              xor dh,dh
00000A84  2AD1              sub dl,cl
00000A86  7210              jc 0xa98
00000A88  2BC3              sub ax,bx
00000A8A  7306              jnc 0xa92
00000A8C  0AD2              or dl,dl
00000A8E  7406              jz 0xa96
00000A90  FECA              dec dl
00000A92  FEC6              inc dh
00000A94  EBEE              jmp 0xa84
00000A96  03C3              add ax,bx
00000A98  02D1              add dl,cl
00000A9A  C3                ret
00000A9B  32F6              xor dh,dh
00000A9D  F7F3              div bx
00000A9F  92                xchg ax,dx
00000AA0  8AF2              mov dh,dl
00000AA2  32D2              xor dl,dl
00000AA4  C3                ret
00000AA5  1E                push ds
00000AA6  50                push ax
00000AA7  B050              mov al,0x50
00000AA9  F6E3              mul bl
00000AAB  8ADF              mov bl,bh
00000AAD  32FF              xor bh,bh
00000AAF  03C3              add ax,bx
00000AB1  8BF8              mov di,ax
00000AB3  8BF7              mov si,di
00000AB5  83EE50            sub si,0x50
00000AB8  B050              mov al,0x50
00000ABA  F6E1              mul cl
00000ABC  2D5000            sub ax,0x50
00000ABF  03F0              add si,ax
00000AC1  03F8              add di,ax
00000AC3  B800A0            mov ax,0xa000
00000AC6  8EC0              mov es,ax
00000AC8  8ED8              mov ds,ax
00000ACA  BAC403            mov dx,0x3c4
00000ACD  B80207            mov ax,0x702
00000AD0  EF                out dx,ax
00000AD1  BACE03            mov dx,0x3ce
00000AD4  B80501            mov ax,0x105
00000AD7  EF                out dx,ax
00000AD8  8ADD              mov bl,ch
00000ADA  32FF              xor bh,bh
00000ADC  32ED              xor ch,ch
00000ADE  51                push cx
00000ADF  57                push di
00000AE0  56                push si
00000AE1  8BCB              mov cx,bx
00000AE3  F3A4              rep movsb
00000AE5  5E                pop si
00000AE6  5F                pop di
00000AE7  83EE50            sub si,0x50
00000AEA  83EF50            sub di,0x50
00000AED  59                pop cx
00000AEE  E2EE              loop 0xade
00000AF0  B80500            mov ax,0x5
00000AF3  EF                out dx,ax
00000AF4  58                pop ax
00000AF5  B228              mov dl,0x28
00000AF7  F6E2              mul dl
00000AF9  05BC3B            add ax,0x3bbc
00000AFC  8BF0              mov si,ax
00000AFE  0E                push cs
00000AFF  1F                pop ds
00000B00  BAC403            mov dx,0x3c4
00000B03  B80201            mov ax,0x102
00000B06  EF                out dx,ax
00000B07  8BCB              mov cx,bx
00000B09  F3A4              rep movsb
00000B0B  1F                pop ds
00000B0C  C3                ret
00000B0D  1E                push ds
00000B0E  50                push ax
00000B0F  B050              mov al,0x50
00000B11  F6E3              mul bl
00000B13  8ADF              mov bl,bh
00000B15  32FF              xor bh,bh
00000B17  03C3              add ax,bx
00000B19  8BF8              mov di,ax
00000B1B  8BF7              mov si,di
00000B1D  83C650            add si,0x50
00000B20  B800A0            mov ax,0xa000
00000B23  8EC0              mov es,ax
00000B25  8ED8              mov ds,ax
00000B27  BAC403            mov dx,0x3c4
00000B2A  B80207            mov ax,0x702
00000B2D  EF                out dx,ax
00000B2E  BACE03            mov dx,0x3ce
00000B31  B80501            mov ax,0x105
00000B34  EF                out dx,ax
00000B35  8ADD              mov bl,ch
00000B37  32FF              xor bh,bh
00000B39  32ED              xor ch,ch
00000B3B  51                push cx
00000B3C  57                push di
00000B3D  56                push si
00000B3E  8BCB              mov cx,bx
00000B40  F3A4              rep movsb
00000B42  5E                pop si
00000B43  5F                pop di
00000B44  83C650            add si,0x50
00000B47  83C750            add di,0x50
00000B4A  59                pop cx
00000B4B  E2EE              loop 0xb3b
00000B4D  B80500            mov ax,0x5
00000B50  EF                out dx,ax
00000B51  58                pop ax
00000B52  B228              mov dl,0x28
00000B54  F6E2              mul dl
00000B56  05BC3B            add ax,0x3bbc
00000B59  8BF0              mov si,ax
00000B5B  0E                push cs
00000B5C  1F                pop ds
00000B5D  BAC403            mov dx,0x3c4
00000B60  B80201            mov ax,0x102
00000B63  EF                out dx,ax
00000B64  8BCB              mov cx,bx
00000B66  F3A4              rep movsb
00000B68  1F                pop ds
00000B69  C3                ret
00000B6A  B800A0            mov ax,0xa000
00000B6D  8EC0              mov es,ax
00000B6F  BAC403            mov dx,0x3c4
00000B72  B80207            mov ax,0x702
00000B75  EF                out dx,ax
00000B76  BACE03            mov dx,0x3ce
00000B79  B80318            mov ax,0x1803
00000B7C  EF                out dx,ax
00000B7D  B80502            mov ax,0x205
00000B80  EF                out dx,ax
00000B81  BF6C04            mov di,0x46c
00000B84  B90800            mov cx,0x8
00000B87  51                push cx
00000B88  57                push di
00000B89  B91200            mov cx,0x12
00000B8C  51                push cx
00000B8D  57                push di
00000B8E  B93800            mov cx,0x38
00000B91  B006              mov al,0x6
00000B93  268605            xchg al,[es:di]
00000B96  47                inc di
00000B97  E2F8              loop 0xb91
00000B99  5F                pop di
00000B9A  81C78002          add di,0x280
00000B9E  59                pop cx
00000B9F  E2EB              loop 0xb8c
00000BA1  5F                pop di
00000BA2  83C750            add di,0x50
00000BA5  59                pop cx
00000BA6  E2DF              loop 0xb87
00000BA8  BACE03            mov dx,0x3ce
00000BAB  B80300            mov ax,0x3
00000BAE  EF                out dx,ax
00000BAF  B80500            mov ax,0x5
00000BB2  EF                out dx,ax
00000BB3  C3                ret
00000BB4  C3                ret
00000BB5  0000              add [bx+si],al
00000BB7  0000              add [bx+si],al
00000BB9  0000              add [bx+si],al
00000BBB  0000              add [bx+si],al
00000BBD  0000              add [bx+si],al
00000BBF  0000              add [bx+si],al
00000BC1  0000              add [bx+si],al
00000BC3  0000              add [bx+si],al
00000BC5  0000              add [bx+si],al
00000BC7  0000              add [bx+si],al
00000BC9  0000              add [bx+si],al
00000BCB  0000              add [bx+si],al
00000BCD  0000              add [bx+si],al
00000BCF  0000              add [bx+si],al
00000BD1  0000              add [bx+si],al
00000BD3  0000              add [bx+si],al
00000BD5  0000              add [bx+si],al
00000BD7  0000              add [bx+si],al
00000BD9  0000              add [bx+si],al
00000BDB  0000              add [bx+si],al
00000BDD  0000              add [bx+si],al
00000BDF  0000              add [bx+si],al
00000BE1  0000              add [bx+si],al
00000BE3  0000              add [bx+si],al
00000BE5  0000              add [bx+si],al
00000BE7  0000              add [bx+si],al
00000BE9  0000              add [bx+si],al
00000BEB  0000              add [bx+si],al
00000BED  0000              add [bx+si],al
00000BEF  0000              add [bx+si],al
00000BF1  0000              add [bx+si],al
00000BF3  0000              add [bx+si],al
00000BF5  0000              add [bx+si],al
00000BF7  0000              add [bx+si],al
00000BF9  0000              add [bx+si],al
00000BFB  0000              add [bx+si],al
00000BFD  0000              add [bx+si],al
00000BFF  0000              add [bx+si],al
00000C01  0000              add [bx+si],al
00000C03  0000              add [bx+si],al
00000C05  0000              add [bx+si],al
00000C07  0000              add [bx+si],al
00000C09  0000              add [bx+si],al
00000C0B  0000              add [bx+si],al
00000C0D  0000              add [bx+si],al
00000C0F  0000              add [bx+si],al
00000C11  0000              add [bx+si],al
00000C13  0000              add [bx+si],al
00000C15  0000              add [bx+si],al
00000C17  0000              add [bx+si],al
00000C19  0000              add [bx+si],al
00000C1B  0000              add [bx+si],al
00000C1D  0000              add [bx+si],al
00000C1F  0000              add [bx+si],al
00000C21  0000              add [bx+si],al
00000C23  0000              add [bx+si],al
00000C25  0000              add [bx+si],al
00000C27  0000              add [bx+si],al
00000C29  0000              add [bx+si],al
00000C2B  0000              add [bx+si],al
00000C2D  0000              add [bx+si],al
00000C2F  0000              add [bx+si],al
00000C31  0000              add [bx+si],al
00000C33  0000              add [bx+si],al
00000C35  0000              add [bx+si],al
00000C37  0000              add [bx+si],al
00000C39  0000              add [bx+si],al
00000C3B  0000              add [bx+si],al
00000C3D  0000              add [bx+si],al
00000C3F  0000              add [bx+si],al
00000C41  0000              add [bx+si],al
00000C43  0000              add [bx+si],al
00000C45  0000              add [bx+si],al
00000C47  0000              add [bx+si],al
00000C49  0000              add [bx+si],al
00000C4B  0000              add [bx+si],al
00000C4D  0000              add [bx+si],al
00000C4F  0000              add [bx+si],al
00000C51  0000              add [bx+si],al
00000C53  0000              add [bx+si],al
00000C55  0000              add [bx+si],al
00000C57  0000              add [bx+si],al
00000C59  0000              add [bx+si],al
00000C5B  0000              add [bx+si],al
00000C5D  0000              add [bx+si],al
00000C5F  0000              add [bx+si],al
00000C61  0000              add [bx+si],al
00000C63  0000              add [bx+si],al
00000C65  0000              add [bx+si],al
00000C67  0000              add [bx+si],al
00000C69  0000              add [bx+si],al
00000C6B  0000              add [bx+si],al
00000C6D  0000              add [bx+si],al
00000C6F  0000              add [bx+si],al
00000C71  0000              add [bx+si],al
00000C73  0000              add [bx+si],al
00000C75  0000              add [bx+si],al
00000C77  0000              add [bx+si],al
00000C79  0000              add [bx+si],al
00000C7B  0000              add [bx+si],al
00000C7D  0000              add [bx+si],al
00000C7F  0000              add [bx+si],al
00000C81  0000              add [bx+si],al
00000C83  0000              add [bx+si],al
00000C85  0000              add [bx+si],al
00000C87  0000              add [bx+si],al
00000C89  0000              add [bx+si],al
00000C8B  0000              add [bx+si],al
00000C8D  0000              add [bx+si],al
00000C8F  0000              add [bx+si],al
00000C91  0000              add [bx+si],al
00000C93  0000              add [bx+si],al
00000C95  0000              add [bx+si],al
00000C97  0000              add [bx+si],al
00000C99  0000              add [bx+si],al
00000C9B  0000              add [bx+si],al
00000C9D  0000              add [bx+si],al
00000C9F  0000              add [bx+si],al
00000CA1  0000              add [bx+si],al
00000CA3  0000              add [bx+si],al
00000CA5  0000              add [bx+si],al
00000CA7  0000              add [bx+si],al
00000CA9  0000              add [bx+si],al
00000CAB  0000              add [bx+si],al
00000CAD  0000              add [bx+si],al
00000CAF  0000              add [bx+si],al
00000CB1  0000              add [bx+si],al
00000CB3  0000              add [bx+si],al
00000CB5  0000              add [bx+si],al
00000CB7  0000              add [bx+si],al
00000CB9  0000              add [bx+si],al
00000CBB  0000              add [bx+si],al
00000CBD  0000              add [bx+si],al
00000CBF  0000              add [bx+si],al
00000CC1  0000              add [bx+si],al
00000CC3  0000              add [bx+si],al
00000CC5  0000              add [bx+si],al
00000CC7  0000              add [bx+si],al
00000CC9  0000              add [bx+si],al
00000CCB  0000              add [bx+si],al
00000CCD  0000              add [bx+si],al
00000CCF  0000              add [bx+si],al
00000CD1  0000              add [bx+si],al
00000CD3  0000              add [bx+si],al
00000CD5  0000              add [bx+si],al
00000CD7  0000              add [bx+si],al
00000CD9  0000              add [bx+si],al
00000CDB  0000              add [bx+si],al
00000CDD  0000              add [bx+si],al
00000CDF  0000              add [bx+si],al
00000CE1  0000              add [bx+si],al
00000CE3  0000              add [bx+si],al
00000CE5  0000              add [bx+si],al
00000CE7  0000              add [bx+si],al
00000CE9  0000              add [bx+si],al
00000CEB  0000              add [bx+si],al
00000CED  0000              add [bx+si],al
00000CEF  0000              add [bx+si],al
00000CF1  0000              add [bx+si],al
00000CF3  0000              add [bx+si],al
00000CF5  0000              add [bx+si],al
00000CF7  0000              add [bx+si],al
00000CF9  0000              add [bx+si],al
00000CFB  0000              add [bx+si],al
00000CFD  0000              add [bx+si],al
00000CFF  0000              add [bx+si],al
00000D01  0000              add [bx+si],al
00000D03  0000              add [bx+si],al
00000D05  0000              add [bx+si],al
00000D07  0000              add [bx+si],al
00000D09  0000              add [bx+si],al
00000D0B  0000              add [bx+si],al
00000D0D  0000              add [bx+si],al
00000D0F  0000              add [bx+si],al
00000D11  0000              add [bx+si],al
00000D13  0000              add [bx+si],al
00000D15  0000              add [bx+si],al
00000D17  0000              add [bx+si],al
00000D19  0000              add [bx+si],al
00000D1B  0000              add [bx+si],al
00000D1D  0000              add [bx+si],al
00000D1F  0000              add [bx+si],al
00000D21  0000              add [bx+si],al
00000D23  0000              add [bx+si],al
00000D25  0000              add [bx+si],al
00000D27  0000              add [bx+si],al
00000D29  0000              add [bx+si],al
00000D2B  0000              add [bx+si],al
00000D2D  0000              add [bx+si],al
00000D2F  0000              add [bx+si],al
00000D31  0000              add [bx+si],al
00000D33  0000              add [bx+si],al
00000D35  0000              add [bx+si],al
00000D37  0000              add [bx+si],al
00000D39  0000              add [bx+si],al
00000D3B  0000              add [bx+si],al
00000D3D  0000              add [bx+si],al
00000D3F  0000              add [bx+si],al
00000D41  0000              add [bx+si],al
00000D43  0000              add [bx+si],al
00000D45  0000              add [bx+si],al
00000D47  0000              add [bx+si],al
00000D49  0000              add [bx+si],al
00000D4B  0000              add [bx+si],al
00000D4D  0000              add [bx+si],al
00000D4F  0000              add [bx+si],al
00000D51  0000              add [bx+si],al
00000D53  0000              add [bx+si],al
00000D55  0000              add [bx+si],al
00000D57  0000              add [bx+si],al
00000D59  0000              add [bx+si],al
00000D5B  0000              add [bx+si],al
00000D5D  0000              add [bx+si],al
00000D5F  0000              add [bx+si],al
00000D61  0000              add [bx+si],al
00000D63  0000              add [bx+si],al
00000D65  0000              add [bx+si],al
00000D67  0000              add [bx+si],al
00000D69  0000              add [bx+si],al
00000D6B  0000              add [bx+si],al
00000D6D  0000              add [bx+si],al
00000D6F  0000              add [bx+si],al
00000D71  0000              add [bx+si],al
00000D73  0000              add [bx+si],al
00000D75  0000              add [bx+si],al
00000D77  0000              add [bx+si],al
00000D79  0000              add [bx+si],al
00000D7B  0000              add [bx+si],al
00000D7D  0000              add [bx+si],al
00000D7F  0000              add [bx+si],al
00000D81  0000              add [bx+si],al
00000D83  0000              add [bx+si],al
00000D85  0000              add [bx+si],al
00000D87  0000              add [bx+si],al
00000D89  0000              add [bx+si],al
00000D8B  0000              add [bx+si],al
00000D8D  0000              add [bx+si],al
00000D8F  0000              add [bx+si],al
00000D91  0000              add [bx+si],al
00000D93  0000              add [bx+si],al
00000D95  0000              add [bx+si],al
00000D97  0000              add [bx+si],al
00000D99  0000              add [bx+si],al
00000D9B  0000              add [bx+si],al
00000D9D  0000              add [bx+si],al
00000D9F  0000              add [bx+si],al
00000DA1  0000              add [bx+si],al
00000DA3  0000              add [bx+si],al
00000DA5  0000              add [bx+si],al
00000DA7  0000              add [bx+si],al
00000DA9  0000              add [bx+si],al
00000DAB  0000              add [bx+si],al
00000DAD  0000              add [bx+si],al
00000DAF  0000              add [bx+si],al
00000DB1  0000              add [bx+si],al
00000DB3  0000              add [bx+si],al
00000DB5  0000              add [bx+si],al
00000DB7  0000              add [bx+si],al
00000DB9  0000              add [bx+si],al
00000DBB  0000              add [bx+si],al
00000DBD  0000              add [bx+si],al
00000DBF  0000              add [bx+si],al
00000DC1  0000              add [bx+si],al
00000DC3  0000              add [bx+si],al
00000DC5  0000              add [bx+si],al
00000DC7  0000              add [bx+si],al
00000DC9  0000              add [bx+si],al
00000DCB  0000              add [bx+si],al
00000DCD  0000              add [bx+si],al
00000DCF  0000              add [bx+si],al
00000DD1  0000              add [bx+si],al
00000DD3  0000              add [bx+si],al
00000DD5  0000              add [bx+si],al
00000DD7  0000              add [bx+si],al
00000DD9  0000              add [bx+si],al
00000DDB  0000              add [bx+si],al
00000DDD  0000              add [bx+si],al
00000DDF  0000              add [bx+si],al
00000DE1  0000              add [bx+si],al
00000DE3  0000              add [bx+si],al
00000DE5  0000              add [bx+si],al
00000DE7  0000              add [bx+si],al
00000DE9  0000              add [bx+si],al
00000DEB  0000              add [bx+si],al
00000DED  0000              add [bx+si],al
00000DEF  0000              add [bx+si],al
00000DF1  0000              add [bx+si],al
00000DF3  0000              add [bx+si],al
00000DF5  0000              add [bx+si],al
00000DF7  0000              add [bx+si],al
00000DF9  0000              add [bx+si],al
00000DFB  0000              add [bx+si],al
00000DFD  0000              add [bx+si],al
00000DFF  0000              add [bx+si],al
00000E01  0000              add [bx+si],al
00000E03  0000              add [bx+si],al
00000E05  0000              add [bx+si],al
00000E07  0000              add [bx+si],al
00000E09  0000              add [bx+si],al
00000E0B  0000              add [bx+si],al
00000E0D  0000              add [bx+si],al
00000E0F  0000              add [bx+si],al
00000E11  0000              add [bx+si],al
00000E13  0000              add [bx+si],al
00000E15  0000              add [bx+si],al
00000E17  0000              add [bx+si],al
00000E19  0000              add [bx+si],al
00000E1B  0000              add [bx+si],al
00000E1D  0000              add [bx+si],al
00000E1F  0000              add [bx+si],al
00000E21  0000              add [bx+si],al
00000E23  0000              add [bx+si],al
00000E25  0000              add [bx+si],al
00000E27  0000              add [bx+si],al
00000E29  0000              add [bx+si],al
00000E2B  0000              add [bx+si],al
00000E2D  0000              add [bx+si],al
00000E2F  0000              add [bx+si],al
00000E31  0000              add [bx+si],al
00000E33  0000              add [bx+si],al
00000E35  0000              add [bx+si],al
00000E37  0000              add [bx+si],al
00000E39  0000              add [bx+si],al
00000E3B  0000              add [bx+si],al
00000E3D  0000              add [bx+si],al
00000E3F  0000              add [bx+si],al
00000E41  0000              add [bx+si],al
00000E43  0000              add [bx+si],al
00000E45  0000              add [bx+si],al
00000E47  0000              add [bx+si],al
00000E49  0000              add [bx+si],al
00000E4B  0000              add [bx+si],al
00000E4D  0000              add [bx+si],al
00000E4F  0000              add [bx+si],al
00000E51  0000              add [bx+si],al
00000E53  0000              add [bx+si],al
00000E55  0000              add [bx+si],al
00000E57  0000              add [bx+si],al
00000E59  0000              add [bx+si],al
00000E5B  0000              add [bx+si],al
00000E5D  0000              add [bx+si],al
00000E5F  0000              add [bx+si],al
00000E61  0000              add [bx+si],al
00000E63  0000              add [bx+si],al
00000E65  0000              add [bx+si],al
00000E67  0000              add [bx+si],al
00000E69  0000              add [bx+si],al
00000E6B  0000              add [bx+si],al
00000E6D  0000              add [bx+si],al
00000E6F  0000              add [bx+si],al
00000E71  0000              add [bx+si],al
00000E73  0000              add [bx+si],al
00000E75  0000              add [bx+si],al
00000E77  0000              add [bx+si],al
00000E79  0000              add [bx+si],al
00000E7B  0000              add [bx+si],al
00000E7D  0000              add [bx+si],al
00000E7F  0000              add [bx+si],al
00000E81  0000              add [bx+si],al
00000E83  0000              add [bx+si],al
00000E85  0000              add [bx+si],al
00000E87  0000              add [bx+si],al
00000E89  0000              add [bx+si],al
00000E8B  0000              add [bx+si],al
00000E8D  0000              add [bx+si],al
00000E8F  0000              add [bx+si],al
00000E91  0000              add [bx+si],al
00000E93  0000              add [bx+si],al
00000E95  0000              add [bx+si],al
00000E97  0000              add [bx+si],al
00000E99  0000              add [bx+si],al
00000E9B  0000              add [bx+si],al
00000E9D  0000              add [bx+si],al
00000E9F  0000              add [bx+si],al
00000EA1  0000              add [bx+si],al
00000EA3  0000              add [bx+si],al
00000EA5  0000              add [bx+si],al
00000EA7  0000              add [bx+si],al
00000EA9  0000              add [bx+si],al
00000EAB  0000              add [bx+si],al
00000EAD  0000              add [bx+si],al
00000EAF  0000              add [bx+si],al
00000EB1  0000              add [bx+si],al
00000EB3  0000              add [bx+si],al
00000EB5  0000              add [bx+si],al
00000EB7  0000              add [bx+si],al
00000EB9  0000              add [bx+si],al
00000EBB  0000              add [bx+si],al
00000EBD  0000              add [bx+si],al
00000EBF  0000              add [bx+si],al
00000EC1  0000              add [bx+si],al
00000EC3  0000              add [bx+si],al
00000EC5  0000              add [bx+si],al
00000EC7  0000              add [bx+si],al
00000EC9  0000              add [bx+si],al
00000ECB  0000              add [bx+si],al
00000ECD  0000              add [bx+si],al
00000ECF  0000              add [bx+si],al
00000ED1  0000              add [bx+si],al
00000ED3  0000              add [bx+si],al
00000ED5  0000              add [bx+si],al
00000ED7  0000              add [bx+si],al
00000ED9  0000              add [bx+si],al
00000EDB  0000              add [bx+si],al
00000EDD  0000              add [bx+si],al
00000EDF  0000              add [bx+si],al
00000EE1  0000              add [bx+si],al
00000EE3  0000              add [bx+si],al
00000EE5  0000              add [bx+si],al
00000EE7  0000              add [bx+si],al
00000EE9  0000              add [bx+si],al
00000EEB  0000              add [bx+si],al
00000EED  0000              add [bx+si],al
00000EEF  0000              add [bx+si],al
00000EF1  0000              add [bx+si],al
00000EF3  0000              add [bx+si],al
00000EF5  0000              add [bx+si],al
00000EF7  0000              add [bx+si],al
00000EF9  0000              add [bx+si],al
00000EFB  0000              add [bx+si],al
00000EFD  0000              add [bx+si],al
00000EFF  0000              add [bx+si],al
00000F01  0000              add [bx+si],al
00000F03  0000              add [bx+si],al
00000F05  0000              add [bx+si],al
00000F07  0000              add [bx+si],al
00000F09  0000              add [bx+si],al
00000F0B  0000              add [bx+si],al
00000F0D  0000              add [bx+si],al
00000F0F  0000              add [bx+si],al
00000F11  0000              add [bx+si],al
00000F13  0000              add [bx+si],al
00000F15  0000              add [bx+si],al
00000F17  0000              add [bx+si],al
00000F19  0000              add [bx+si],al
00000F1B  0000              add [bx+si],al
00000F1D  0000              add [bx+si],al
00000F1F  0000              add [bx+si],al
00000F21  0000              add [bx+si],al
00000F23  0000              add [bx+si],al
00000F25  0000              add [bx+si],al
00000F27  0000              add [bx+si],al
00000F29  0000              add [bx+si],al
00000F2B  0000              add [bx+si],al
00000F2D  0000              add [bx+si],al
00000F2F  0000              add [bx+si],al
00000F31  0000              add [bx+si],al
00000F33  0000              add [bx+si],al
00000F35  0000              add [bx+si],al
00000F37  0000              add [bx+si],al
00000F39  0000              add [bx+si],al
00000F3B  0000              add [bx+si],al
00000F3D  0000              add [bx+si],al
00000F3F  0000              add [bx+si],al
00000F41  0000              add [bx+si],al
00000F43  0000              add [bx+si],al
00000F45  0000              add [bx+si],al
00000F47  0000              add [bx+si],al
00000F49  0000              add [bx+si],al
00000F4B  0000              add [bx+si],al
00000F4D  0000              add [bx+si],al
00000F4F  00                db 0x00
