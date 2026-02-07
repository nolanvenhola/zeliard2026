00000000  E603              out byte 0x3,al
00000002  0000              add [bx+si],al
00000004  04A0              add al,0xa0
00000006  D7                xlatb
00000007  A18E06            mov ax,[0x68e]
0000000A  2CFF              sub al,0xff
0000000C  BF0080            mov di,0x8000
0000000F  BE99A2            mov si,0xa299
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
0000003F  BEA6A2            mov si,0xa2a6
00000042  2EFF161020        call word near [cs:0x2010]
00000047  E80C01            call 0x156
0000004A  BB600D            mov bx,0xd60
0000004D  B93736            mov cx,0x3637
00000050  B0FF              mov al,0xff
00000052  2EFF160020        call word near [cs:0x2000]
00000057  E83202            call 0x28c
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
0000007C  E5A0              in ax,byte 0xa0
0000007E  82                db 0x82
0000007F  A089A0            mov al,[0xa089]
00000082  99                cwd
00000083  A0CBA0            mov al,[0xa0cb]
00000086  C7064CFF6AA3      mov word [0xff4c],0xa36a
0000008C  C3                ret
0000008D  C6061AFF00        mov byte [0xff1a],0x0
00000092  E84601            call 0x1db
00000095  803E1AFFFA        cmp byte [0xff1a],0xfa
0000009A  72F6              jc 0x92
0000009C  C3                ret
0000009D  A19000            mov ax,[0x90]
000000A0  050800            add ax,0x8
000000A3  3B06B200          cmp ax,[0xb2]
000000A7  7319              jnc 0xc2
000000A9  A39000            mov [0x90],ax
000000AC  2EFF160820        call word near [cs:0x2008]
000000B1  C6061AFF00        mov byte [0xff1a],0x0
000000B6  E82201            call 0x1db
000000B9  803E1AFF14        cmp byte [0xff1a],0x14
000000BE  72F6              jc 0xb6
000000C0  EBDB              jmp 0x9d
000000C2  A1B200            mov ax,[0xb2]
000000C5  A39000            mov [0x90],ax
000000C8  2EFF160820        call word near [cs:0x2008]
000000CD  EB00              jmp 0xcf
000000CF  0E                push cs
000000D0  07                pop es
000000D1  BEB400            mov si,0xb4
000000D4  BFAB00            mov di,0xab
000000D7  B90700            mov cx,0x7
000000DA  F3A4              rep movsb
000000DC  F6069D00FF        test byte [0x9d],0xff
000000E1  7405              jz 0xe8
000000E3  2EFF161820        call word near [cs:0x2018]
000000E8  C3                ret
000000E9  C606E4A300        mov byte [0xa3e4],0x0
000000EE  C6061AFF00        mov byte [0xff1a],0x0
000000F3  803EE4A305        cmp byte [0xa3e4],0x5
000000F8  7201              jc 0xfb
000000FA  C3                ret
000000FB  A0E4A3            mov al,[0xa3e4]
000000FE  B106              mov cl,0x6
00000100  F6E1              mul cl
00000102  0534A1            add ax,0xa134
00000105  8BF0              mov si,ax
00000107  BB3F16            mov bx,0x163f
0000010A  B90300            mov cx,0x3
0000010D  51                push cx
0000010E  B90200            mov cx,0x2
00000111  51                push cx
00000112  53                push bx
00000113  AC                lodsb
00000114  2EFF161630        call word near [cs:0x3016]
00000119  5B                pop bx
0000011A  FEC7              inc bh
0000011C  59                pop cx
0000011D  E2F2              loop 0x111
0000011F  80EF02            sub bh,0x2
00000122  80C308            add bl,0x8
00000125  59                pop cx
00000126  E2E5              loop 0x10d
00000128  E8B000            call 0x1db
0000012B  803E1AFF20        cmp byte [0xff1a],0x20
00000130  72F6              jc 0x128
00000132  FE06E4A3          inc byte [0xa3e4]
00000136  EBB6              jmp 0xee
00000138  41                inc cx
00000139  42                inc dx
0000013A  4D                dec bp
0000013B  4E                dec si
0000013C  57                push di
0000013D  58                pop ax
0000013E  41                inc cx
0000013F  42                inc dx
00000140  6B6C6D6E          imul bp,[si+0x6d],0x6e
00000144  41                inc cx
00000145  42                inc dx
00000146  6F                outsw
00000147  7071              jo 0x1ba
00000149  7273              jc 0x1be
0000014B  42                inc dx
0000014C  7475              jz 0x1c3
0000014E  7677              jna 0x1c7
00000150  7879              js 0x1cb
00000152  7A7B              jpe 0x1cf
00000154  7C77              jl 0x1cd
00000156  BE77A1            mov si,0xa177
00000159  BB170E            mov bx,0xe17
0000015C  B90800            mov cx,0x8
0000015F  51                push cx
00000160  B90C00            mov cx,0xc
00000163  51                push cx
00000164  53                push bx
00000165  AC                lodsb
00000166  2EFF161630        call word near [cs:0x3016]
0000016B  5B                pop bx
0000016C  FEC7              inc bh
0000016E  59                pop cx
0000016F  E2F2              loop 0x163
00000171  80EF0C            sub bh,0xc
00000174  80C308            add bl,0x8
00000177  59                pop cx
00000178  E2E5              loop 0x15f
0000017A  C3                ret
0000017B  0001              add [bx+di],al
0000017D  0203              add al,[bp+di]
0000017F  0405              add al,0x5
00000181  06                push es
00000182  07                pop es
00000183  0809              or [bx+di],cl
00000185  0A0B              or cl,[bp+di]
00000187  0C0D              or al,0xd
00000189  0E                push cs
0000018A  0F1011            movups xmm2,oword [bx+di]
0000018D  1210              adc dl,[bx+si]
0000018F  1314              adc dx,[si]
00000191  151617            adc ax,0x1716
00000194  1819              sbb [bx+di],bl
00000196  1A1B              sbb bl,[bp+di]
00000198  1C1D              sbb al,0x1d
0000019A  1E                push ds
0000019B  1F                pop ds
0000019C  2021              and [bx+di],ah
0000019E  2223              and ah,[bp+di]
000001A0  2425              and al,0x25
000001A2  262627            es daa
000001A5  2826292A          sub [0x2a29],ah
000001A9  2B2C              sub bp,[si]
000001AB  2D2E2F            sub ax,0x2f2e
000001AE  3031              xor [bx+di],dh
000001B0  3233              xor dh,[bp+di]
000001B2  3435              xor al,0x35
000001B4  3637              ss aaa
000001B6  3839              cmp [bx+di],bh
000001B8  3A3B              cmp bh,[bp+di]
000001BA  3C3D              cmp al,0x3d
000001BC  3E3F              ds aas
000001BE  40                inc ax
000001BF  41                inc cx
000001C0  42                inc dx
000001C1  43                inc bx
000001C2  44                inc sp
000001C3  45                inc bp
000001C4  46                inc si
000001C5  47                inc di
000001C6  48                dec ax
000001C7  49                dec cx
000001C8  4A                dec dx
000001C9  4B                dec bx
000001CA  4C                dec sp
000001CB  4D                dec bp
000001CC  4E                dec si
000001CD  4F                dec di
000001CE  50                push ax
000001CF  51                push cx
000001D0  52                push dx
000001D1  53                push bx
000001D2  54                push sp
000001D3  53                push bx
000001D4  55                push bp
000001D5  56                push si
000001D6  53                push bx
000001D7  57                push di
000001D8  58                pop ax
000001D9  59                pop cx
000001DA  5A                pop dx
000001DB  833E50FF20        cmp word [0xff50],0x20
000001E0  7301              jnc 0x1e3
000001E2  C3                ret
000001E3  C70650FF0000      mov word [0xff50],0x0
000001E9  FE06E5A3          inc byte [0xa3e5]
000001ED  803EE5A303        cmp byte [0xa3e5],0x3
000001F2  7505              jnz 0x1f9
000001F4  C606E5A300        mov byte [0xa3e5],0x0
000001F9  E80200            call 0x1fe
000001FC  EB4C              jmp 0x24a
000001FE  8A1EE5A3          mov bl,[0xa3e5]
00000202  32FF              xor bh,bh
00000204  03DB              add bx,bx
00000206  8BC3              mov ax,bx
00000208  03DB              add bx,bx
0000020A  03D8              add bx,ax
0000020C  8BF3              mov si,bx
0000020E  81C634A2          add si,0xa234
00000212  BB3710            mov bx,0x1037
00000215  B90200            mov cx,0x2
00000218  51                push cx
00000219  B90300            mov cx,0x3
0000021C  51                push cx
0000021D  53                push bx
0000021E  AC                lodsb
0000021F  3CFF              cmp al,0xff
00000221  7405              jz 0x228
00000223  2EFF161630        call word near [cs:0x3016]
00000228  5B                pop bx
00000229  FEC7              inc bh
0000022B  59                pop cx
0000022C  E2EE              loop 0x21c
0000022E  80EF03            sub bh,0x3
00000231  80C308            add bl,0x8
00000234  59                pop cx
00000235  E2E1              loop 0x218
00000237  C3                ret
00000238  FF30              push word [bx+si]
0000023A  313B              xor [bp+di],di
0000023C  3C3D              cmp al,0x3d
0000023E  FF5B5C            call word far [bp+di+0x5c]
00000241  5D                pop bp
00000242  5E                pop si
00000243  5F                pop di
00000244  FF6061            jmp word near [bx+si+0x61]
00000247  626364            bound sp,[bp+di+0x64]
0000024A  8A1EE5A3          mov bl,[0xa3e5]
0000024E  32FF              xor bh,bh
00000250  03DB              add bx,bx
00000252  03DB              add bx,bx
00000254  8BF3              mov si,bx
00000256  81C67CA2          add si,0xa27c
0000025A  BB3715            mov bx,0x1537
0000025D  B90200            mov cx,0x2
00000260  51                push cx
00000261  B90200            mov cx,0x2
00000264  51                push cx
00000265  53                push bx
00000266  AC                lodsb
00000267  3CFF              cmp al,0xff
00000269  7405              jz 0x270
0000026B  2EFF161630        call word near [cs:0x3016]
00000270  5B                pop bx
00000271  FEC7              inc bh
00000273  59                pop cx
00000274  E2EE              loop 0x264
00000276  80EF02            sub bh,0x2
00000279  80C308            add bl,0x8
0000027C  59                pop cx
0000027D  E2E1              loop 0x260
0000027F  C3                ret
00000280  3435              xor al,0x35
00000282  40                inc ax
00000283  FF6566            jmp word near [di+0x66]
00000286  67FF6869          jmp word far [eax+0x69]
0000028A  6AFF              push word 0xffffffffffffffff
0000028C  A19000            mov ax,[0x90]
0000028F  3B06B200          cmp ax,[0xb2]
00000293  BEB4A2            mov si,0xa2b4
00000296  7501              jnz 0x299
00000298  C3                ret
00000299  BEF2A2            mov si,0xa2f2
0000029C  C3                ret
0000029D  0117              add [bx],dx
0000029F  43                inc bx
000002A0  48                dec ax
000002A1  55                push bp
000002A2  52                push dx
000002A3  43                inc bx
000002A4  48                dec ax
000002A5  2E47              cs inc di
000002A7  52                push dx
000002A8  50                push ax
000002A9  0017              add [bx],dl
000002AB  AF                scasw
000002AC  020A              add cl,[bp+si]
000002AE  54                push sp
000002AF  686520            push word 0x2065
000002B2  43                inc bx
000002B3  687572            push word 0x7275
000002B6  63680C            arpl [bx+si+0xc],bp
000002B9  42                inc dx
000002BA  7261              jc 0x31d
000002BC  7665              jna 0x323
000002BE  204B6E            and [bp+di+0x6e],cl
000002C1  696768742C        imul sp,[bx+0x68],0x2c74
000002C6  207768            and [bx+0x68],dh
000002C9  656E              gs outsb
000002CB  657665            gs jna 0x333
000002CE  7220              jc 0x2f0
000002D0  796F              jns 0x341
000002D2  755C              jnz 0x330
000002D4  7265              jc 0x33b
000002D6  207469            and [si+0x69],dh
000002D9  7265              jc 0x340
000002DB  6420636F          and [fs:bp+di+0x6f],ah
000002DF  6D                insw
000002E0  6520746F          and [gs:si+0x6f],dh
000002E4  207468            and [si+0x68],dh
000002E7  6973206368        imul si,[bp+di+0x20],0x6863
000002EC  7572              jnz 0x360
000002EE  63682E            arpl [bx+si+0x2e],bp
000002F1  2F                das
000002F2  FF04              inc word [si]
000002F4  FF01              inc word [bx+di]
000002F6  0C42              or al,0x42
000002F8  7261              jc 0x35b
000002FA  7665              jna 0x361
000002FC  204B6E            and [bp+di+0x6e],cl
000002FF  696768742C        imul sp,[bx+0x68],0x2c74
00000304  207768            and [bx+0x68],dh
00000307  656E              gs outsb
00000309  657665            gs jna 0x371
0000030C  7220              jc 0x32e
0000030E  796F              jns 0x37f
00000310  755C              jnz 0x36e
00000312  7265              jc 0x379
00000314  207765            and [bx+0x65],dh
00000317  61                popa
00000318  7279              jc 0x393
0000031A  2C20              sub al,0x20
0000031C  636F6D            arpl [bx+0x6d],bp
0000031F  65206865          and [gs:bx+si+0x65],ch
00000323  7265              jc 0x38a
00000325  20746F            and [si+0x6f],dh
00000328  207265            and [bp+si+0x65],dh
0000032B  7374              jnc 0x3a1
0000032D  2E20FF            cs and bh,bh
00000330  02FF              add bh,bh
00000332  025468            add dl,[si+0x68]
00000335  6520486F          and [gs:bx+si+0x6f],cl
00000339  6C                insb
0000033A  7920              jns 0x35c
0000033C  53                push bx
0000033D  7069              jo 0x3a8
0000033F  7269              jc 0x3aa
00000341  7420              jz 0x363
00000343  7769              ja 0x3ae
00000345  6C                insb
00000346  6C                insb
00000347  206865            and [bx+si+0x65],ch
0000034A  6C                insb
0000034B  7020              jo 0x36d
0000034D  796F              jns 0x3be
0000034F  7520              jnz 0x371
00000351  746F              jz 0x3c2
00000353  207265            and [bp+si+0x65],dh
00000356  6761              a32 popa
00000358  696E20796F        imul bp,[bp+0x20],0x6f79
0000035D  7572              jnz 0x3d1
0000035F  207374            and [bp+di+0x74],dh
00000362  7265              jc 0x3c9
00000364  6E                outsb
00000365  677468            a32 jz 0x3d0
00000368  2EFF03            inc word [cs:bp+di]
0000036B  0DFF01            or ax,0x1ff
0000036E  42                inc dx
0000036F  7261              jc 0x3d2
00000371  7665              jna 0x3d8
00000373  204B6E            and [bp+di+0x6e],cl
00000376  696768742C        imul sp,[bx+0x68],0x2c74
0000037B  20796F            and [bx+di+0x6f],bh
0000037E  7520              jnz 0x3a0
00000380  6C                insb
00000381  6F                outsw
00000382  6F                outsw
00000383  6B2066            imul sp,[bx+si],0x66
00000386  61                popa
00000387  7469              jz 0x3f2
00000389  677565            a32 jnz 0x3f1
0000038C  64206672          and [fs:bp+0x72],ah
00000390  6F                outsw
00000391  6D                insw
00000392  206261            and [bp+si+0x61],ah
00000395  7474              jz 0x40b
00000397  6C                insb
00000398  652E205768        and [cs:bx+0x68],dl
0000039D  7920              jns 0x3bf
0000039F  6E                outsb
000003A0  6F                outsw
000003A1  7420              jz 0x3c3
000003A3  7265              jc 0x40a
000003A5  7374              jnc 0x41b
000003A7  206177            and [bx+di+0x77],ah
000003AA  68696C            push word 0x6c69
000003AD  6520616E          and [gs:bx+di+0x6e],ah
000003B1  64206C65          and [fs:si+0x65],ch
000003B5  7420              jz 0x3d7
000003B7  7468              jz 0x421
000003B9  65205370          and [gs:bp+di+0x70],dl
000003BD  6972697420        imul si,[bp+si+0x69],0x2074
000003C2  686561            push word 0x6165
000003C5  6C                insb
000003C6  20796F            and [bx+di+0x6f],bh
000003C9  752E              jnz 0x3f9
000003CB  20FF              and bh,bh
000003CD  022F              add ch,[bx]
000003CF  4D                dec bp
000003D0  61                popa
000003D1  7920              jns 0x3f3
000003D3  47                inc di
000003D4  6F                outsw
000003D5  6420676F          and [fs:bx+0x6f],ah
000003D9  207769            and [bx+0x69],dh
000003DC  7468              jz 0x446
000003DE  20796F            and [bx+di+0x6f],bh
000003E1  752E              jnz 0x411
000003E3  FF00              inc word [bx+si]
000003E5  11FF              adc di,di
000003E7  FF00              inc word [bx+si]
000003E9  00                db 0x00
