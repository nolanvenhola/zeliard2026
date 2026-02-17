00000000  1005              adc [di],al
00000002  0000              add [bx+si],al
00000004  04A0              add al,0xa0
00000006  2F                das
00000007  A28E06            mov [0x68e],al
0000000A  2CFF              sub al,0xff
0000000C  BF0080            mov di,0x8000
0000000F  BEE1A2            mov si,0xa2e1
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
0000003F  BEEBA2            mov si,0xa2eb
00000042  2EFF161020        call word near [cs:0x2010]
00000047  E81900            call 0x63
0000004A  C7064CFFF6A2      mov word [0xff4c],0xa2f6
00000050  2EFF160460        call word near [cs:0x6004]
00000055  3CFF              cmp al,0xff
00000057  7405              jz 0x5e
00000059  E81D00            call 0x79
0000005C  EBF2              jmp 0x50
0000005E  2EFF264020        jmp word near [cs:0x2040]
00000063  E84801            call 0x1ae
00000066  BB600D            mov bx,0xd60
00000069  B93736            mov cx,0x3637
0000006C  B0FF              mov al,0xff
0000006E  2EFF160020        call word near [cs:0x2000]
00000073  C60605A5FF        mov byte [0xa505],0xff
00000078  C3                ret
00000079  8AD8              mov bl,al
0000007B  32FF              xor bh,bh
0000007D  03DB              add bx,bx
0000007F  2EFFA780A0        jmp word near [cs:bx-0x5f80]
00000084  8AA0BEA0          mov ah,[bx+si-0x5f42]
00000088  14A1              adc al,0xa1
0000008A  2AA15FA1          sub ah,[bx+di-0x5ea1]
0000008E  8A1E06C0          mov bl,[0xc006]
00000092  FECB              dec bl
00000094  32FF              xor bh,bh
00000096  03DB              add bx,bx
00000098  8B97D1A2          mov dx,[bx-0x5d2f]
0000009C  891606A5          mov [0xa506],dx
000000A0  8BC2              mov ax,dx
000000A2  32D2              xor dl,dl
000000A4  BF08A5            mov di,0xa508
000000A7  2EFF160660        call word near [cs:0x6006]
000000AC  8B364CFF          mov si,[0xff4c]
000000B0  56                push si
000000B1  C7064CFF08A5      mov word [0xff4c],0xa508
000000B7  2EFF160460        call word near [cs:0x6004]
000000BC  5E                pop si
000000BD  89364CFF          mov [0xff4c],si
000000C1  C3                ret
000000C2  BB2B2F            mov bx,0x2f2b
000000C5  B9190C            mov cx,0xc19
000000C8  B0FF              mov al,0xff
000000CA  2EFF160020        call word near [cs:0x2000]
000000CF  C70654FF2E30      mov word [0xff54],0x302e
000000D5  2EFF160860        call word near [cs:0x6008]
000000DA  9C                pushf
000000DB  BB2B2F            mov bx,0x2f2b
000000DE  B9190C            mov cx,0xc19
000000E1  32C0              xor al,al
000000E3  2EFF160020        call word near [cs:0x2000]
000000E8  9D                popf
000000E9  C7064CFFBDA3      mov word [0xff4c],0xa3bd
000000EF  7301              jnc 0xf2
000000F1  C3                ret
000000F2  A106A5            mov ax,[0xa506]
000000F5  32D2              xor dl,dl
000000F7  2EFF160A60        call word near [cs:0x600a]
000000FC  C7064CFF1AA4      mov word [0xff4c],0xa41a
00000102  7301              jnc 0x105
00000104  C3                ret
00000105  88168500          mov [0x85],dl
00000109  A38600            mov [0x86],ax
0000010C  2EFF161620        call word near [cs:0x2016]
00000111  C7064CFF83A4      mov word [0xff4c],0xa483
00000117  C3                ret
00000118  C60605A500        mov byte [0xa505],0x0
0000011D  32C0              xor al,al
0000011F  50                push ax
00000120  E86000            call 0x183
00000123  E84D00            call 0x173
00000126  58                pop ax
00000127  FEC0              inc al
00000129  3C04              cmp al,0x4
0000012B  75F2              jnz 0x11f
0000012D  C3                ret
0000012E  E83200            call 0x163
00000131  2EFF164020        call word near [cs:0x2040]
00000136  E82A00            call 0x163
00000139  E82700            call 0x163
0000013C  A1B200            mov ax,[0xb2]
0000013F  A39000            mov [0x90],ax
00000142  2EFF160820        call word near [cs:0x2008]
00000147  0E                push cs
00000148  07                pop es
00000149  BEB400            mov si,0xb4
0000014C  BFAB00            mov di,0xab
0000014F  B90700            mov cx,0x7
00000152  F3A4              rep movsb
00000154  F6069D00FF        test byte [0x9d],0xff
00000159  7405              jz 0x160
0000015B  2EFF161820        call word near [cs:0x2018]
00000160  E900FF            jmp 0x63
00000163  C6061AFF00        mov byte [0xff1a],0x0
00000168  E8C800            call 0x233
0000016B  803E1AFF96        cmp byte [0xff1a],0x96
00000170  72F6              jc 0x168
00000172  C3                ret
00000173  C6061AFF00        mov byte [0xff1a],0x0
00000178  E8B800            call 0x233
0000017B  803E1AFF32        cmp byte [0xff1a],0x32
00000180  72F6              jc 0x178
00000182  C3                ret
00000183  B114              mov cl,0x14
00000185  F6E1              mul cl
00000187  0581A2            add ax,0xa281
0000018A  8BF0              mov si,ax
0000018C  BB2708            mov bx,0x827
0000018F  B90400            mov cx,0x4
00000192  51                push cx
00000193  B90500            mov cx,0x5
00000196  51                push cx
00000197  53                push bx
00000198  AC                lodsb
00000199  2EFF161630        call word near [cs:0x3016]
0000019E  5B                pop bx
0000019F  FEC7              inc bh
000001A1  59                pop cx
000001A2  E2F2              loop 0x196
000001A4  80EF05            sub bh,0x5
000001A7  80C308            add bl,0x8
000001AA  59                pop cx
000001AB  E2E5              loop 0x192
000001AD  C3                ret
000001AE  BECFA1            mov si,0xa1cf
000001B1  BB1707            mov bx,0x717
000001B4  B90800            mov cx,0x8
000001B7  51                push cx
000001B8  B90C00            mov cx,0xc
000001BB  51                push cx
000001BC  53                push bx
000001BD  AC                lodsb
000001BE  2EFF161630        call word near [cs:0x3016]
000001C3  5B                pop bx
000001C4  FEC7              inc bh
000001C6  59                pop cx
000001C7  E2F2              loop 0x1bb
000001C9  80EF0C            sub bh,0xc
000001CC  80C308            add bl,0x8
000001CF  59                pop cx
000001D0  E2E5              loop 0x1b7
000001D2  C3                ret
000001D3  0001              add [bx+di],al
000001D5  0203              add al,[bp+di]
000001D7  0405              add al,0x5
000001D9  06                push es
000001DA  07                pop es
000001DB  0809              or [bx+di],cl
000001DD  0A0B              or cl,[bp+di]
000001DF  0C0D              or al,0xd
000001E1  0E                push cs
000001E2  0F1011            movups xmm2,oword [bx+di]
000001E5  1213              adc dl,[bp+di]
000001E7  1415              adc al,0x15
000001E9  16                push ss
000001EA  17                pop ss
000001EB  1819              sbb [bx+di],bl
000001ED  1A1B              sbb bl,[bp+di]
000001EF  101C              adc [si],bl
000001F1  1D1E1F            sbb ax,0x1f1e
000001F4  2021              and [bx+di],ah
000001F6  2223              and ah,[bp+di]
000001F8  2425              and al,0x25
000001FA  261027            adc [es:bx],ah
000001FD  2829              sub [bx+di],ch
000001FF  2A2B              sub ch,[bp+di]
00000201  2C2D              sub al,0x2d
00000203  2E2F              cs das
00000205  3031              xor [bx+di],dh
00000207  3233              xor dh,[bp+di]
00000209  3435              xor al,0x35
0000020B  3637              ss aaa
0000020D  3839              cmp [bx+di],bh
0000020F  3A3B              cmp bh,[bp+di]
00000211  3C3D              cmp al,0x3d
00000213  3E3F              ds aas
00000215  40                inc ax
00000216  41                inc cx
00000217  42                inc dx
00000218  43                inc bx
00000219  44                inc sp
0000021A  45                inc bp
0000021B  46                inc si
0000021C  47                inc di
0000021D  48                dec ax
0000021E  49                dec cx
0000021F  4A                dec dx
00000220  4B                dec bx
00000221  4C                dec sp
00000222  4D                dec bp
00000223  4E                dec si
00000224  4F                dec di
00000225  50                push ax
00000226  51                push cx
00000227  52                push dx
00000228  53                push bx
00000229  54                push sp
0000022A  55                push bp
0000022B  56                push si
0000022C  57                push di
0000022D  58                pop ax
0000022E  59                pop cx
0000022F  5A                pop dx
00000230  5B                pop bx
00000231  5C                pop sp
00000232  5D                pop bp
00000233  F60605A5FF        test byte [0xa505],0xff
00000238  7501              jnz 0x23b
0000023A  C3                ret
0000023B  833E50FF28        cmp word [0xff50],0x28
00000240  7301              jnc 0x243
00000242  C3                ret
00000243  C70650FF0000      mov word [0xff50],0x0
00000249  2EFF161A01        call word near [cs:0x11a]
0000024E  2401              and al,0x1
00000250  02C0              add al,al
00000252  02C0              add al,al
00000254  32E4              xor ah,ah
00000256  0579A2            add ax,0xa279
00000259  8BF0              mov si,ax
0000025B  BB2708            mov bx,0x827
0000025E  B90200            mov cx,0x2
00000261  51                push cx
00000262  B90200            mov cx,0x2
00000265  51                push cx
00000266  53                push bx
00000267  AC                lodsb
00000268  2EFF161630        call word near [cs:0x3016]
0000026D  5B                pop bx
0000026E  FEC7              inc bh
00000270  59                pop cx
00000271  E2F2              loop 0x265
00000273  80EF02            sub bh,0x2
00000276  80C308            add bl,0x8
00000279  59                pop cx
0000027A  E2E5              loop 0x261
0000027C  C3                ret
0000027D  191A              sbb [bp+si],bx
0000027F  2425              and al,0x25
00000281  5E                pop si
00000282  5F                pop di
00000283  2460              and al,0x60
00000285  191A              sbb [bp+si],bx
00000287  1B10              sbb dx,[bx+si]
00000289  1C24              sbb al,0x24
0000028B  252610            and ax,0x1026
0000028E  27                daa
0000028F  2F                das
00000290  3031              xor [bx+di],dh
00000292  3233              xor dh,[bp+di]
00000294  3B3C              cmp di,[si]
00000296  3D3E3F            cmp ax,0x3f3e
00000299  191A              sbb [bp+si],bx
0000029B  1B10              sbb dx,[bx+si]
0000029D  1C24              sbb al,0x24
0000029F  252610            and ax,0x1026
000002A2  27                daa
000002A3  2F                das
000002A4  3031              xor [bx+di],dh
000002A6  3233              xor dh,[bp+di]
000002A8  3B3C              cmp di,[si]
000002AA  3D3E3F            cmp ax,0x3f3e
000002AD  191A              sbb [bp+si],bx
000002AF  1B10              sbb dx,[bx+si]
000002B1  1C24              sbb al,0x24
000002B3  61                popa
000002B4  6210              bound dx,[bx+si]
000002B6  27                daa
000002B7  2F                das
000002B8  636432            arpl [si+0x32],sp
000002BB  333B              xor di,[bp+di]
000002BD  65663E3F          ds o32 aas
000002C1  191A              sbb [bp+si],bx
000002C3  1B10              sbb dx,[bx+si]
000002C5  1C24              sbb al,0x24
000002C7  252667            and ax,0x6726
000002CA  682F69            push word 0x692f
000002CD  6A6B              push word 0x6b
000002CF  6C                insb
000002D0  3B6D6E            cmp bp,[di+0x6e]
000002D3  6F                outsw
000002D4  3F                aas
000002D5  0000              add [bx+si],al
000002D7  1E                push ds
000002D8  0032              add [bp+si],dh
000002DA  004600            add [bp+0x0],al
000002DD  64009600C8        add [fs:bp-0x3800],dl
000002E2  00900101          add [bx+si+0x101],dl
000002E6  19494E            sbb [bx+di+0x4e],cx
000002E9  4E                dec si
000002EA  2E47              cs inc di
000002EC  52                push dx
000002ED  50                push ax
000002EE  0019              add [bx+di],bl
000002F0  AF                scasw
000002F1  0007              add [bx],al
000002F3  54                push sp
000002F4  686520            push word 0x2065
000002F7  49                dec cx
000002F8  6E                outsb
000002F9  6E                outsb
000002FA  0C57              or al,0x57
000002FC  656C              gs insb
000002FE  636F6D            arpl [bx+0x6d],bp
00000301  652C20            gs sub al,0x20
00000304  7369              jnc 0x36f
00000306  7221              jc 0x329
00000308  2F                das
00000309  59                pop cx
0000030A  6F                outsw
0000030B  7520              jnz 0x32d
0000030D  6C                insb
0000030E  6F                outsw
0000030F  6F                outsw
00000310  6B206C            imul sp,[bx+si],0x6c
00000313  696B652079        imul bp,[bp+di+0x65],0x7920
00000318  6F                outsw
00000319  755C              jnz 0x377
0000031B  7665              jna 0x382
0000031D  20636F            and [bp+di+0x6f],ah
00000320  6D                insw
00000321  65206120          and [gs:bx+di+0x20],ah
00000325  6C                insb
00000326  6F                outsw
00000327  6E                outsb
00000328  67207761          and [edi+0x61],dh
0000032C  792E              jns 0x35c
0000032E  2F                das
0000032F  4F                dec di
00000330  6E                outsb
00000331  65206E69          and [gs:bp+0x69],ch
00000335  67687420          a32 push word 0x2074
00000339  6F                outsw
0000033A  66207265          o32 and [bp+si+0x65],dh
0000033E  7374              jnc 0x3b4
00000340  20696E            and [bx+di+0x6e],ch
00000343  206D79            and [di+0x79],ch
00000346  20696E            and [bx+di+0x6e],ch
00000349  6E                outsb
0000034A  206973            and [bx+di+0x73],ch
0000034D  20616C            and [bx+di+0x6c],ah
00000350  6C                insb
00000351  20796F            and [bx+di+0x6f],bh
00000354  7520              jnz 0x376
00000356  6E                outsb
00000357  65656420746F      and [fs:si+0x6f],dh
0000035D  207265            and [bp+si+0x65],dh
00000360  636F76            arpl [bx+0x76],bp
00000363  657220            gs jc 0x386
00000366  796F              jns 0x3d7
00000368  7572              jnz 0x3dc
0000036A  207374            and [bp+di+0x74],dh
0000036D  7265              jc 0x3d4
0000036F  6E                outsb
00000370  677468            a32 jz 0x3db
00000373  2E20596F          and [cs:bx+di+0x6f],bl
00000377  7520              jnz 0x399
00000379  63616E            arpl [bx+di+0x6e],sp
0000037C  206861            and [bx+si+0x61],ch
0000037F  7665              jna 0x3e6
00000381  207468            and [si+0x68],dh
00000384  65206265          and [gs:bp+si+0x65],ah
00000388  7374              jnc 0x3fe
0000038A  20726F            and [bp+si+0x6f],dh
0000038D  6F                outsw
0000038E  6D                insw
0000038F  20696E            and [bx+di+0x6e],ch
00000392  207468            and [si+0x68],dh
00000395  6520686F          and [gs:bx+si+0x6f],ch
00000399  7573              jnz 0x40e
0000039B  6520666F          and [gs:bp+0x6f],ah
0000039F  7220              jc 0x3c1
000003A1  6F                outsw
000003A2  6E                outsb
000003A3  6C                insb
000003A4  7920              jns 0x3c6
000003A6  FF00              inc word [bx+si]
000003A8  26676F            es a32 outsw
000003AB  6C                insb
000003AC  64732E            fs jnc 0x3dd
000003AF  205769            and [bx+0x69],dl
000003B2  6C                insb
000003B3  6C                insb
000003B4  20796F            and [bx+di+0x6f],bh
000003B7  7520              jnz 0x3d9
000003B9  7374              jnc 0x42f
000003BB  61                popa
000003BC  793F              jns 0x3fd
000003BE  20FF              and bh,bh
000003C0  010C              add [si],cx
000003C2  4F                dec di
000003C3  682C20            push word 0x202c
000003C6  49                dec cx
000003C7  5C                pop sp
000003C8  6D                insw
000003C9  20736F            and [bp+di+0x6f],dh
000003CC  7272              jc 0x440
000003CE  7920              jns 0x3f0
000003D0  746F              jz 0x441
000003D2  206865            and [bx+si+0x65],ch
000003D5  61                popa
000003D6  7220              jc 0x3f8
000003D8  7468              jz 0x442
000003DA  61                popa
000003DB  742E              jz 0x40b
000003DD  2F                das
000003DE  57                push di
000003DF  656C              gs insb
000003E1  6C                insb
000003E2  2C20              sub al,0x20
000003E4  696620796F        imul sp,[bp+0x20],0x6f79
000003E9  7520              jnz 0x40b
000003EB  7368              jnc 0x455
000003ED  6F                outsw
000003EE  756C              jnz 0x45c
000003F0  64206576          and [fs:di+0x76],ah
000003F4  657220            gs jc 0x417
000003F7  6E                outsb
000003F8  656564206120      and [fs:bx+di+0x20],ah
000003FE  706C              jo 0x46c
00000400  61                popa
00000401  636520            arpl [di+0x20],sp
00000404  746F              jz 0x475
00000406  207265            and [bp+si+0x65],dh
00000409  7374              jnc 0x47f
0000040B  2C20              sub al,0x20
0000040D  646F              fs outsw
0000040F  20636F            and [bp+di+0x6f],ah
00000412  6D                insw
00000413  65206261          and [gs:bp+si+0x61],ah
00000417  636B2E            arpl [bp+di+0x2e],bp
0000041A  2011              and [bx+di],dl
0000041C  FF                db 0xff
0000041D  FF0C              dec word [si]
0000041F  49                dec cx
00000420  5C                pop sp
00000421  6D                insw
00000422  20736F            and [bp+di+0x6f],dh
00000425  7272              jc 0x499
00000427  7920              jns 0x449
00000429  7369              jnc 0x494
0000042B  722C              jc 0x459
0000042D  206275            and [bp+si+0x75],ah
00000430  7420              jz 0x452
00000432  49                dec cx
00000433  206361            and [bp+di+0x61],ah
00000436  6E                outsb
00000437  5C                pop sp
00000438  7420              jz 0x45a
0000043A  61                popa
0000043B  63636F            arpl [bp+di+0x6f],sp
0000043E  6D                insw
0000043F  6D                insw
00000440  6F                outsw
00000441  6461              fs popa
00000443  7465              jz 0x4aa
00000445  20796F            and [bx+di+0x6f],bh
00000448  7520              jnz 0x46a
0000044A  7769              ja 0x4b5
0000044C  7468              jz 0x4b6
0000044E  6F                outsw
0000044F  7574              jnz 0x4c5
00000451  206675            and [bp+0x75],ah
00000454  6E                outsb
00000455  64732E            fs jnc 0x486
00000458  2F                das
00000459  FF04              inc word [si]
0000045B  50                push ax
0000045C  6C                insb
0000045D  6561              gs popa
0000045F  7365              jnc 0x4c6
00000461  20636F            and [bp+di+0x6f],ah
00000464  6D                insw
00000465  65206261          and [gs:bp+si+0x61],ah
00000469  636B20            arpl [bp+di+0x20],bp
0000046C  7768              ja 0x4d6
0000046E  656E              gs outsb
00000470  20796F            and [bx+di+0x6f],bh
00000473  7520              jnz 0x495
00000475  63616E            arpl [bx+di+0x6e],sp
00000478  206166            and [bx+di+0x66],ah
0000047B  666F              outsd
0000047D  7264              jc 0x4e3
0000047F  206974            and [bx+di+0x74],ch
00000482  2E2011            and [cs:bx+di],dl
00000485  FF                db 0xff
00000486  FF0C              dec word [si]
00000488  54                push sp
00000489  68616E            push word 0x6e61
0000048C  6B2079            imul sp,[bx+si],0x79
0000048F  6F                outsw
00000490  752C              jnz 0x4be
00000492  207369            and [bp+di+0x69],dh
00000495  722E              jc 0x4c5
00000497  20456E            and [di+0x6e],al
0000049A  6A6F              push word 0x6f
0000049C  7920              jns 0x4be
0000049E  796F              jns 0x50f
000004A0  7572              jnz 0x514
000004A2  207374            and [bp+di+0x74],dh
000004A5  61                popa
000004A6  792E              jns 0x4d6
000004A8  20FF              and bh,bh
000004AA  02FF              add bh,bh
000004AC  04FF              add al,0xff
000004AE  030C              add cx,[si]
000004B0  FF04              inc word [si]
000004B2  49                dec cx
000004B3  207472            and [si+0x72],dh
000004B6  7573              jnz 0x52b
000004B8  7420              jz 0x4da
000004BA  796F              jns 0x52b
000004BC  7520              jnz 0x4de
000004BE  686164            push word 0x6461
000004C1  206120            and [bx+di+0x20],ah
000004C4  676F              a32 outsw
000004C6  6F                outsw
000004C7  64206E69          and [fs:bp+0x69],ch
000004CB  6768745C          a32 push word 0x5c74
000004CF  7320              jnc 0x4f1
000004D1  736C              jnc 0x53f
000004D3  6565702E          gs jo 0x505
000004D7  205765            and [bx+0x65],dl
000004DA  5C                pop sp
000004DB  6C                insb
000004DC  6C                insb
000004DD  206265            and [bp+si+0x65],ah
000004E0  206C6F            and [si+0x6f],ch
000004E3  6F                outsw
000004E4  6B696E67          imul bp,[bx+di+0x6e],0x67
000004E8  20666F            and [bp+0x6f],ah
000004EB  7277              jc 0x564
000004ED  61                popa
000004EE  7264              jc 0x554
000004F0  20746F            and [si+0x6f],dh
000004F3  207365            and [bp+di+0x65],dh
000004F6  65696E672079      imul bp,[gs:bp+0x67],0x7920
000004FC  6F                outsw
000004FD  7520              jnz 0x51f
000004FF  61                popa
00000500  6761              a32 popa
00000502  696E2E2F11        imul bp,[bp+0x2e],0x112f
00000507  FF                db 0xff
00000508  FF00              inc word [bx+si]
0000050A  0000              add [bx+si],al
0000050C  0000              add [bx+si],al
0000050E  0000              add [bx+si],al
00000510  0000              add [bx+si],al
00000512  0000              add [bx+si],al
