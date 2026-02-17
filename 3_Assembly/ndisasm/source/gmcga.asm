00000000  46                inc si
00000001  20F0              and al,dh
00000003  2087215D          and [bx+0x5d21],al
00000007  22972267          and dl,[bx+0x6722]
0000000B  22A1222E          and ah,[bx+di+0x2e22]
0000000F  233C              and di,[si]
00000011  233A              and di,[bp+si]
00000013  2444              and al,0x44
00000015  2461              and al,0x61
00000017  2481              and al,0x81
00000019  24AA              and al,0xaa
0000001B  242C              and al,0x2c
0000001D  26                es
0000001E  DB                db 0xdb
0000001F  26F5              es cmc
00000021  264B              es dec bx
00000023  29F5              sub bp,si
00000025  29562A            sub [bp+0x2a],dx
00000028  9C                pushf
00000029  2AE4              sub ah,ah
0000002B  2A2F              sub ch,[bx]
0000002D  2B972B58          sub dx,[bx+0x582b]
00000031  25EF24            and ax,0x24ef
00000034  0F                db 0x0f
00000035  27                daa
00000036  3027              xor [bx],ah
00000038  4A                dec dx
00000039  2311              and dx,[bx+di]
0000003B  2829              sub [bx+di],ch
0000003D  2819              sub [bx+di],bl
0000003F  2C24              sub al,0x24
00000041  21662D            and [bp+0x2d],sp
00000044  99                cwd
00000045  2D50D0            sub ax,0xd050
00000048  EB1B              jmp 0x65
0000004A  FF81E700          inc word [bx+di+0xe7]
0000004E  20B050F6          and [bx+si-0x9b0],dh
00000052  E303              jcxz 0x57
00000054  F8                clc
00000055  8ADF              mov bl,bh
00000057  32FF              xor bh,bh
00000059  03FB              add di,bx
0000005B  58                pop ax
0000005C  0AC0              or al,al
0000005E  746A              jz 0xca
00000060  57                push di
00000061  80E904            sub cl,0x4
00000064  83C750            add di,0x50
00000067  E86000            call 0xca
0000006A  5F                pop di
0000006B  B80FF0            mov ax,0xf00f
0000006E  E83300            call 0xa4
00000071  B83FFC            mov ax,0xfc3f
00000074  E82D00            call 0xa4
00000077  51                push cx
00000078  53                push bx
00000079  8ADD              mov bl,ch
0000007B  FECB              dec bl
0000007D  32FF              xor bh,bh
0000007F  32ED              xor ch,ch
00000081  26C605F0          mov byte [es:di],0xf0
00000085  26C6010F          mov byte [es:bx+di],0xf
00000089  81C70020          add di,0x2000
0000008D  81FF0040          cmp di,0x4000
00000091  7204              jc 0x97
00000093  81C750C0          add di,0xc050
00000097  E2E8              loop 0x81
00000099  5B                pop bx
0000009A  59                pop cx
0000009B  B83FFC            mov ax,0xfc3f
0000009E  E80300            call 0xa4
000000A1  B80FF0            mov ax,0xf00f
000000A4  57                push di
000000A5  260805            or [es:di],al
000000A8  47                inc di
000000A9  8AFD              mov bh,ch
000000AB  80EF02            sub bh,0x2
000000AE  26800DFF          or byte [es:di],0xff
000000B2  47                inc di
000000B3  FECF              dec bh
000000B5  75F7              jnz 0xae
000000B7  260825            or [es:di],ah
000000BA  5F                pop di
000000BB  81C70020          add di,0x2000
000000BF  81FF0040          cmp di,0x4000
000000C3  7204              jc 0xc9
000000C5  81C750C0          add di,0xc050
000000C9  C3                ret
000000CA  B800B8            mov ax,0xb800
000000CD  8EC0              mov es,ax
000000CF  8AE1              mov ah,cl
000000D1  57                push di
000000D2  51                push cx
000000D3  8ACD              mov cl,ch
000000D5  32ED              xor ch,ch
000000D7  32C0              xor al,al
000000D9  F3AA              rep stosb
000000DB  59                pop cx
000000DC  5F                pop di
000000DD  81C70020          add di,0x2000
000000E1  81FF0040          cmp di,0x4000
000000E5  7204              jc 0xeb
000000E7  81C750C0          add di,0xc050
000000EB  FECC              dec ah
000000ED  75E2              jnz 0xd1
000000EF  C3                ret
000000F0  B800B8            mov ax,0xb800
000000F3  8EC0              mov es,ax
000000F5  BF3C02            mov di,0x23c
000000F8  B90800            mov cx,0x8
000000FB  51                push cx
000000FC  57                push di
000000FD  B91200            mov cx,0x12
00000100  51                push cx
00000101  57                push di
00000102  B93800            mov cx,0x38
00000105  32C0              xor al,al
00000107  F3AA              rep stosb
00000109  5F                pop di
0000010A  81C74001          add di,0x140
0000010E  59                pop cx
0000010F  E2EF              loop 0x100
00000111  5F                pop di
00000112  81C70020          add di,0x2000
00000116  81FF0040          cmp di,0x4000
0000011A  7204              jc 0x120
0000011C  81C750C0          add di,0xc050
00000120  59                pop cx
00000121  E2D8              loop 0xfb
00000123  C3                ret
00000124  B800B8            mov ax,0xb800
00000127  8EC0              mov es,ax
00000129  BE7F21            mov si,0x217f
0000012C  B90800            mov cx,0x8
0000012F  51                push cx
00000130  BF3C02            mov di,0x23c
00000133  AC                lodsb
00000134  57                push di
00000135  B94800            mov cx,0x48
00000138  51                push cx
00000139  B93800            mov cx,0x38
0000013C  262005            and [es:di],al
0000013F  47                inc di
00000140  E2FA              loop 0x13c
00000142  D0C0              rol al,0x0
00000144  D0C0              rol al,0x0
00000146  D0C0              rol al,0x0
00000148  59                pop cx
00000149  83C718            add di,0x18
0000014C  E2EA              loop 0x138
0000014E  5F                pop di
0000014F  81C70020          add di,0x2000
00000153  81FF0040          cmp di,0x4000
00000157  7204              jc 0x15d
00000159  81C750C0          add di,0xc050
0000015D  B94800            mov cx,0x48
00000160  51                push cx
00000161  B93800            mov cx,0x38
00000164  262005            and [es:di],al
00000167  47                inc di
00000168  E2FA              loop 0x164
0000016A  D0C0              rol al,0x0
0000016C  D0C0              rol al,0x0
0000016E  D0C0              rol al,0x0
00000170  59                pop cx
00000171  83C718            add di,0x18
00000174  E2EA              loop 0x160
00000176  B9803E            mov cx,0x3e80
00000179  E2FE              loop 0x179
0000017B  59                pop cx
0000017C  E2B1              loop 0x12f
0000017E  C3                ret
0000017F  FE                db 0xfe
00000180  EE                out dx,al
00000181  EAAAA88880        jmp word 0x8088:word 0xa8aa
00000186  002EA25C          add [0x5ca2],ch
0000018A  22B800B8          and bh,[bx+si-0x4800]
0000018E  8EC0              mov es,ax
00000190  D0EB              shr bl,0x0
00000192  1BFF              sbb di,di
00000194  B85000            mov ax,0x50
00000197  F6E3              mul bl
00000199  03F8              add di,ax
0000019B  8AD7              mov dl,bh
0000019D  80E703            and bh,0x3
000001A0  D0EA              shr dl,0x0
000001A2  D0EA              shr dl,0x0
000001A4  32F6              xor dh,dh
000001A6  03FA              add di,dx
000001A8  81C7BC18          add di,0x18bc
000001AC  8ACF              mov cl,bh
000001AE  02C9              add cl,cl
000001B0  B83FFF            mov ax,0xff3f
000001B3  D2EC              shr ah,cl
000001B5  D2E8              shr al,cl
000001B7  F6DF              neg bh
000001B9  80C703            add bh,0x3
000001BC  2AEF              sub ch,bh
000001BE  51                push cx
000001BF  E82C00            call 0x1ee
000001C2  59                pop cx
000001C3  47                inc di
000001C4  8ACD              mov cl,ch
000001C6  D0E9              shr cl,0x0
000001C8  D0E9              shr cl,0x0
000001CA  F6C1FF            test cl,0xff
000001CD  740D              jz 0x1dc
000001CF  51                push cx
000001D0  B8FFFF            mov ax,0xffff
000001D3  E81800            call 0x1ee
000001D6  59                pop cx
000001D7  47                inc di
000001D8  FEC9              dec cl
000001DA  75F3              jnz 0x1cf
000001DC  80E503            and ch,0x3
000001DF  7501              jnz 0x1e2
000001E1  C3                ret
000001E2  8ACD              mov cl,ch
000001E4  D0E1              shl cl,0x0
000001E6  B4FF              mov ah,0xff
000001E8  D2EC              shr ah,cl
000001EA  F6D4              not ah
000001EC  8AC4              mov al,ah
000001EE  2EF6065C22FF      test byte [cs:0x225c],0xff
000001F4  7521              jnz 0x217
000001F6  57                push di
000001F7  F6D4              not ah
000001F9  B90900            mov cx,0x9
000001FC  262025            and [es:di],ah
000001FF  81C70020          add di,0x2000
00000203  81FF0040          cmp di,0x4000
00000207  7204              jc 0x20d
00000209  81C750C0          add di,0xc050
0000020D  E2ED              loop 0x1fc
0000020F  262025            and [es:di],ah
00000212  260805            or [es:di],al
00000215  5F                pop di
00000216  C3                ret
00000217  2E803E5C2280      cmp byte [cs:0x225c],0x80
0000021D  7422              jz 0x241
0000021F  57                push di
00000220  8AE0              mov ah,al
00000222  F6D4              not ah
00000224  2455              and al,0x55
00000226  B90A00            mov cx,0xa
00000229  262025            and [es:di],ah
0000022C  260805            or [es:di],al
0000022F  81C70020          add di,0x2000
00000233  81FF0040          cmp di,0x4000
00000237  7204              jc 0x23d
00000239  81C750C0          add di,0xc050
0000023D  E2EA              loop 0x229
0000023F  5F                pop di
00000240  C3                ret
00000241  57                push di
00000242  F6D0              not al
00000244  B90A00            mov cx,0xa
00000247  262005            and [es:di],al
0000024A  81C70020          add di,0x2000
0000024E  81FF0040          cmp di,0x4000
00000252  7204              jc 0x258
00000254  81C750C0          add di,0xc050
00000258  E2ED              loop 0x247
0000025A  5F                pop di
0000025B  C3                ret
0000025C  00BF6539          add [bx+0x3965],bh
00000260  2E8B1EB200        mov bx,[cs:0xb2]
00000265  EB05              jmp 0x26c
00000267  BF453B            mov di,0x3b45
0000026A  EB00              jmp 0x26c
0000026C  B800B8            mov ax,0xb800
0000026F  8EC0              mov es,ax
00000271  E87E00            call 0x2f2
00000274  50                push ax
00000275  0ADB              or bl,bl
00000277  7410              jz 0x289
00000279  57                push di
0000027A  B706              mov bh,0x6
0000027C  B0AA              mov al,0xaa
0000027E  B455              mov ah,0x55
00000280  E89200            call 0x315
00000283  FECB              dec bl
00000285  5F                pop di
00000286  47                inc di
00000287  EBEC              jmp 0x275
00000289  58                pop ax
0000028A  0AC0              or al,al
0000028C  7501              jnz 0x28f
0000028E  C3                ret
0000028F  24AA              and al,0xaa
00000291  B455              mov ah,0x55
00000293  B706              mov bh,0x6
00000295  EB7E              jmp 0x315
00000297  BF6539            mov di,0x3965
0000029A  2E8B1E9000        mov bx,[cs:0x90]
0000029F  EB05              jmp 0x2a6
000002A1  BF453B            mov di,0x3b45
000002A4  EB00              jmp 0x2a6
000002A6  B800B8            mov ax,0xb800
000002A9  8EC0              mov es,ax
000002AB  E84400            call 0x2f2
000002AE  50                push ax
000002AF  53                push bx
000002B0  0ADB              or bl,bl
000002B2  7410              jz 0x2c4
000002B4  57                push di
000002B5  B705              mov bh,0x5
000002B7  B055              mov al,0x55
000002B9  B4AA              mov ah,0xaa
000002BB  E85700            call 0x315
000002BE  FECB              dec bl
000002C0  5F                pop di
000002C1  47                inc di
000002C2  EBEC              jmp 0x2b0
000002C4  5B                pop bx
000002C5  58                pop ax
000002C6  0AC0              or al,al
000002C8  740E              jz 0x2d8
000002CA  57                push di
000002CB  B705              mov bh,0x5
000002CD  2455              and al,0x55
000002CF  B4AA              mov ah,0xaa
000002D1  E84100            call 0x315
000002D4  5F                pop di
000002D5  47                inc di
000002D6  FEC3              inc bl
000002D8  B719              mov bh,0x19
000002DA  2AFB              sub bh,bl
000002DC  7501              jnz 0x2df
000002DE  C3                ret
000002DF  8ADF              mov bl,bh
000002E1  57                push di
000002E2  B705              mov bh,0x5
000002E4  32C0              xor al,al
000002E6  B4AA              mov ah,0xaa
000002E8  E82A00            call 0x315
000002EB  5F                pop di
000002EC  47                inc di
000002ED  FECB              dec bl
000002EF  75F0              jnz 0x2e1
000002F1  C3                ret
000002F2  B82003            mov ax,0x320
000002F5  2BC3              sub ax,bx
000002F7  7216              jc 0x30f
000002F9  D1EB              shr bx,0x0
000002FB  D1EB              shr bx,0x0
000002FD  8ACB              mov cl,bl
000002FF  D1EB              shr bx,0x0
00000301  D1EB              shr bx,0x0
00000303  D1EB              shr bx,0x0
00000305  80E106            and cl,0x6
00000308  B0FF              mov al,0xff
0000030A  D2E8              shr al,cl
0000030C  F6D0              not al
0000030E  C3                ret
0000030F  BB1900            mov bx,0x19
00000312  32C0              xor al,al
00000314  C3                ret
00000315  262025            and [es:di],ah
00000318  260805            or [es:di],al
0000031B  81C70020          add di,0x2000
0000031F  81FF0040          cmp di,0x4000
00000323  7204              jc 0x329
00000325  81C750C0          add di,0xc050
00000329  FECF              dec bh
0000032B  75E8              jnz 0x315
0000032D  C3                ret
0000032E  2EC606E12D55      mov byte [cs:0x2de1],0x55
00000334  2EC606E22DAA      mov byte [cs:0x2de2],0xaa
0000033A  EB4D              jmp 0x389
0000033C  2EC606E12DFF      mov byte [cs:0x2de1],0xff
00000342  2EC606E22D00      mov byte [cs:0x2de2],0x0
00000348  EB3F              jmp 0x389
0000034A  2EC606E12DFF      mov byte [cs:0x2de1],0xff
00000350  2EC606E22D00      mov byte [cs:0x2de2],0x0
00000356  32F6              xor dh,dh
00000358  8AD7              mov dl,bh
0000035A  D0EB              shr bl,0x0
0000035C  1BFF              sbb di,di
0000035E  81E70020          and di,0x2000
00000362  03FA              add di,dx
00000364  8AC3              mov al,bl
00000366  B250              mov dl,0x50
00000368  F6E2              mul dl
0000036A  03F8              add di,ax
0000036C  8AD9              mov bl,cl
0000036E  B800B8            mov ax,0xb800
00000371  8EC0              mov es,ax
00000373  AC                lodsb
00000374  0AC0              or al,al
00000376  7501              jnz 0x379
00000378  C3                ret
00000379  53                push bx
0000037A  1E                push ds
0000037B  56                push si
0000037C  80E303            and bl,0x3
0000037F  E83E00            call 0x3c0
00000382  5E                pop si
00000383  1F                pop ds
00000384  5B                pop bx
00000385  FEC3              inc bl
00000387  EBEA              jmp 0x373
00000389  AC                lodsb
0000038A  32F6              xor dh,dh
0000038C  8AD0              mov dl,al
0000038E  AC                lodsb
0000038F  D0E8              shr al,0x0
00000391  1BFF              sbb di,di
00000393  81E70020          and di,0x2000
00000397  03FA              add di,dx
00000399  B150              mov cl,0x50
0000039B  F6E1              mul cl
0000039D  03F8              add di,ax
0000039F  AC                lodsb
000003A0  8AD8              mov bl,al
000003A2  AC                lodsb
000003A3  32ED              xor ch,ch
000003A5  8AC8              mov cl,al
000003A7  B800B8            mov ax,0xb800
000003AA  8EC0              mov es,ax
000003AC  51                push cx
000003AD  AC                lodsb
000003AE  53                push bx
000003AF  1E                push ds
000003B0  56                push si
000003B1  80E303            and bl,0x3
000003B4  E80900            call 0x3c0
000003B7  5E                pop si
000003B8  1F                pop ds
000003B9  5B                pop bx
000003BA  FEC3              inc bl
000003BC  59                pop cx
000003BD  E2ED              loop 0x3ac
000003BF  C3                ret
000003C0  2C20              sub al,0x20
000003C2  32E4              xor ah,ah
000003C4  D1E0              shl ax,0x0
000003C6  D1E0              shl ax,0x0
000003C8  D1E0              shl ax,0x0
000003CA  8BF0              mov si,ax
000003CC  033604F5          add si,[0xf504]
000003D0  02DB              add bl,bl
000003D2  8ACB              mov cl,bl
000003D4  57                push di
000003D5  B308              mov bl,0x8
000003D7  53                push bx
000003D8  AC                lodsb
000003D9  B204              mov dl,0x4
000003DB  03C0              add ax,ax
000003DD  02E4              add ah,ah
000003DF  FECA              dec dl
000003E1  75F8              jnz 0x3db
000003E3  8AC4              mov al,ah
000003E5  D0EC              shr ah,0x0
000003E7  0AC4              or al,ah
000003E9  32DB              xor bl,bl
000003EB  8AF8              mov bh,al
000003ED  D3EB              shr bx,cl
000003EF  53                push bx
000003F0  D1EB              shr bx,0x0
000003F2  D1EB              shr bx,0x0
000003F4  86FB              xchg bh,bl
000003F6  F7D3              not bx
000003F8  26211D            and [es:di],bx
000003FB  F7D3              not bx
000003FD  223EE22D          and bh,[0x2de2]
00000401  221EE22D          and bl,[0x2de2]
00000405  26091D            or [es:di],bx
00000408  5B                pop bx
00000409  86FB              xchg bh,bl
0000040B  F7D3              not bx
0000040D  26211D            and [es:di],bx
00000410  F7D3              not bx
00000412  223EE12D          and bh,[0x2de1]
00000416  221EE12D          and bl,[0x2de1]
0000041A  26091D            or [es:di],bx
0000041D  81C70020          add di,0x2000
00000421  81FF0040          cmp di,0x4000
00000425  7204              jc 0x42b
00000427  81C750C0          add di,0xc050
0000042B  5B                pop bx
0000042C  FECB              dec bl
0000042E  75A7              jnz 0x3d7
00000430  5F                pop di
00000431  47                inc di
00000432  80F906            cmp cl,0x6
00000435  7401              jz 0x438
00000437  C3                ret
00000438  47                inc di
00000439  C3                ret
0000043A  BB1002            mov bx,0x210
0000043D  32C0              xor al,al
0000043F  B588              mov ch,0x88
00000441  E943FD            jmp 0x187
00000444  1E                push ds
00000445  2EA18B00          mov ax,[cs:0x8b]
00000449  33D2              xor dx,dx
0000044B  E88200            call 0x4d0
0000044E  0E                push cs
0000044F  1F                pop ds
00000450  BFEA24            mov di,0x24ea
00000453  B90501            mov cx,0x105
00000456  B8BB26            mov ax,0x26bb
00000459  BB01FF            mov bx,0xff01
0000045C  E8F900            call 0x558
0000045F  1F                pop ds
00000460  C3                ret
00000461  1E                push ds
00000462  2EA18600          mov ax,[cs:0x86]
00000466  2E8A168500        mov dl,[cs:0x85]
0000046B  E86200            call 0x4d0
0000046E  0E                push cs
0000046F  1F                pop ds
00000470  BFE924            mov di,0x24e9
00000473  B90601            mov cx,0x106
00000476  B8BB13            mov ax,0x13bb
00000479  BB01FF            mov bx,0xff01
0000047C  E8D900            call 0x558
0000047F  1F                pop ds
00000480  C3                ret
00000481  1E                push ds
00000482  33DB              xor bx,bx
00000484  2E8A1E9D00        mov bl,[cs:0x9d]
00000489  FECB              dec bl
0000048B  2E8A87AB00        mov al,[cs:bx+0xab]
00000490  32E4              xor ah,ah
00000492  33D2              xor dx,dx
00000494  E83900            call 0x4d0
00000497  0E                push cs
00000498  1F                pop ds
00000499  BFEC24            mov di,0x24ec
0000049C  B90301            mov cx,0x103
0000049F  B8BB37            mov ax,0x37bb
000004A2  BB01FF            mov bx,0xff01
000004A5  E8B000            call 0x558
000004A8  1F                pop ds
000004A9  C3                ret
000004AA  2EF6069300FF      test byte [cs:0x93],0xff
000004B0  7501              jnz 0x4b3
000004B2  C3                ret
000004B3  1E                push ds
000004B4  2EA19400          mov ax,[cs:0x94]
000004B8  33D2              xor dx,dx
000004BA  E81300            call 0x4d0
000004BD  0E                push cs
000004BE  1F                pop ds
000004BF  BFEC24            mov di,0x24ec
000004C2  B90301            mov cx,0x103
000004C5  B8BB3E            mov ax,0x3ebb
000004C8  BB01FF            mov bx,0xff01
000004CB  E88A00            call 0x558
000004CE  1F                pop ds
000004CF  C3                ret
000004D0  BFE824            mov di,0x24e8
000004D3  E81900            call 0x4ef
000004D6  B90600            mov cx,0x6
000004D9  2EF605FF          test byte [cs:di],0xff
000004DD  7401              jz 0x4e0
000004DF  C3                ret
000004E0  2EC605FF          mov byte [cs:di],0xff
000004E4  47                inc di
000004E5  E2F2              loop 0x4d9
000004E7  C3                ret
000004E8  0000              add [bx+si],al
000004EA  0000              add [bx+si],al
000004EC  0000              add [bx+si],al
000004EE  00B10FBB          add [bx+di-0x44f1],dh
000004F2  40                inc ax
000004F3  42                inc dx
000004F4  E83E00            call 0x535
000004F7  2E8835            mov [cs:di],dh
000004FA  B101              mov cl,0x1
000004FC  BBA086            mov bx,0x86a0
000004FF  E83300            call 0x535
00000502  2E887501          mov [cs:di+0x1],dh
00000506  32C9              xor cl,cl
00000508  BB1027            mov bx,0x2710
0000050B  E82700            call 0x535
0000050E  2E887502          mov [cs:di+0x2],dh
00000512  BBE803            mov bx,0x3e8
00000515  E83600            call 0x54e
00000518  2E887503          mov [cs:di+0x3],dh
0000051C  BB6400            mov bx,0x64
0000051F  E82C00            call 0x54e
00000522  2E887504          mov [cs:di+0x4],dh
00000526  BB0A00            mov bx,0xa
00000529  E82200            call 0x54e
0000052C  2E887505          mov [cs:di+0x5],dh
00000530  2E884506          mov [cs:di+0x6],al
00000534  C3                ret
00000535  32F6              xor dh,dh
00000537  2AD1              sub dl,cl
00000539  7210              jc 0x54b
0000053B  2BC3              sub ax,bx
0000053D  7306              jnc 0x545
0000053F  0AD2              or dl,dl
00000541  7406              jz 0x549
00000543  FECA              dec dl
00000545  FEC6              inc dh
00000547  EBEE              jmp 0x537
00000549  03C3              add ax,bx
0000054B  02D1              add dl,cl
0000054D  C3                ret
0000054E  32F6              xor dh,dh
00000550  F7F3              div bx
00000552  92                xchg ax,dx
00000553  8AF2              mov dh,dl
00000555  32D2              xor dl,dl
00000557  C3                ret
00000558  883EE22D          mov [0x2de2],bh
0000055C  32FF              xor bh,bh
0000055E  8A979A25          mov dl,[bx+0x259a]
00000562  8816E12D          mov [0x2de1],dl
00000566  D0E8              shr al,0x0
00000568  1BDB              sbb bx,bx
0000056A  81E30020          and bx,0x2000
0000056E  02DC              add bl,ah
00000570  B450              mov ah,0x50
00000572  F6E4              mul ah
00000574  03D8              add bx,ax
00000576  B800B8            mov ax,0xb800
00000579  8EC0              mov es,ax
0000057B  8A05              mov al,[di]
0000057D  47                inc di
0000057E  53                push bx
0000057F  51                push cx
00000580  57                push di
00000581  1E                push ds
00000582  8BFB              mov di,bx
00000584  E81B00            call 0x5a2
00000587  1F                pop ds
00000588  5F                pop di
00000589  59                pop cx
0000058A  5B                pop bx
0000058B  8AC5              mov al,ch
0000058D  250100            and ax,0x1
00000590  03D8              add bx,ax
00000592  43                inc bx
00000593  FEC5              inc ch
00000595  FEC9              dec cl
00000597  75E2              jnz 0x57b
00000599  C3                ret
0000059A  00FF              add bh,bh
0000059C  AA                stosb
0000059D  FF5500            call word near [di+0x0]
000005A0  FFAABB0F          jmp word far [bp+si+0xfbb]
000005A4  00F6              add dh,dh
000005A6  C501              lds ax,word [bx+di]
000005A8  7403              jz 0x5ad
000005AA  BB00F0            mov bx,0xf000
000005AD  F606E22DFF        test byte [0x2de2],0xff
000005B2  741C              jz 0x5d0
000005B4  57                push di
000005B5  51                push cx
000005B6  86FB              xchg bh,bl
000005B8  B90700            mov cx,0x7
000005BB  26211D            and [es:di],bx
000005BE  81C70020          add di,0x2000
000005C2  81FF0040          cmp di,0x4000
000005C6  7204              jc 0x5cc
000005C8  81C750C0          add di,0xc050
000005CC  E2ED              loop 0x5bb
000005CE  59                pop cx
000005CF  5F                pop di
000005D0  FEC0              inc al
000005D2  7501              jnz 0x5d5
000005D4  C3                ret
000005D5  FEC8              dec al
000005D7  32E4              xor ah,ah
000005D9  03C0              add ax,ax
000005DB  03C0              add ax,ax
000005DD  03C0              add ax,ax
000005DF  2E030602F5        add ax,[cs:0xf502]
000005E4  8BF0              mov si,ax
000005E6  0E                push cs
000005E7  1F                pop ds
000005E8  B107              mov cl,0x7
000005EA  AC                lodsb
000005EB  B408              mov ah,0x8
000005ED  02C0              add al,al
000005EF  13D2              adc dx,dx
000005F1  03D2              add dx,dx
000005F3  FECC              dec ah
000005F5  75F6              jnz 0x5ed
000005F7  8BC2              mov ax,dx
000005F9  D1EA              shr dx,0x0
000005FB  0BC2              or ax,dx
000005FD  F6C501            test ch,0x1
00000600  7508              jnz 0x60a
00000602  03C0              add ax,ax
00000604  03C0              add ax,ax
00000606  03C0              add ax,ax
00000608  03C0              add ax,ax
0000060A  86E0              xchg ah,al
0000060C  2E2226E12D        and ah,[cs:0x2de1]
00000611  2E2206E12D        and al,[cs:0x2de1]
00000616  260905            or [es:di],ax
00000619  81C70020          add di,0x2000
0000061D  81FF0040          cmp di,0x4000
00000621  7204              jc 0x627
00000623  81C750C0          add di,0xc050
00000627  FEC9              dec cl
00000629  75BF              jnz 0x5ea
0000062B  C3                ret
0000062C  1E                push ds
0000062D  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000632  FEC8              dec al
00000634  32E4              xor ah,ah
00000636  B90E01            mov cx,0x10e
00000639  F7E1              mul cx
0000063B  030600E2          add ax,[0xe200]
0000063F  8BF0              mov si,ax
00000641  D0EB              shr bl,0x0
00000643  1BED              sbb bp,bp
00000645  81E50020          and bp,0x2000
00000649  B050              mov al,0x50
0000064B  F6E3              mul bl
0000064D  03E8              add bp,ax
0000064F  8ADF              mov bl,bh
00000651  32FF              xor bh,bh
00000653  03DB              add bx,bx
00000655  03EB              add bp,bx
00000657  B800B8            mov ax,0xb800
0000065A  8EC0              mov es,ax
0000065C  B91200            mov cx,0x12
0000065F  51                push cx
00000660  8B04              mov ax,[si]
00000662  86E0              xchg ah,al
00000664  2EA3E72D          mov [cs:0x2de7],ax
00000668  8B4408            mov ax,[si+0x8]
0000066B  2EA3E92D          mov [cs:0x2de9],ax
0000066F  8B440A            mov ax,[si+0xa]
00000672  86E0              xchg ah,al
00000674  2EA3EB2D          mov [cs:0x2deb],ax
00000678  E85502            call 0x8d0
0000067B  26887600          mov [es:bp+0x0],dh
0000067F  26885601          mov [es:bp+0x1],dl
00000683  8B4402            mov ax,[si+0x2]
00000686  86E0              xchg ah,al
00000688  2EA3E72D          mov [cs:0x2de7],ax
0000068C  8B4406            mov ax,[si+0x6]
0000068F  2EA3E92D          mov [cs:0x2de9],ax
00000693  8B440C            mov ax,[si+0xc]
00000696  86E0              xchg ah,al
00000698  2EA3EB2D          mov [cs:0x2deb],ax
0000069C  E83102            call 0x8d0
0000069F  26887602          mov [es:bp+0x2],dh
000006A3  26885603          mov [es:bp+0x3],dl
000006A7  32C0              xor al,al
000006A9  8A6404            mov ah,[si+0x4]
000006AC  2EA3E72D          mov [cs:0x2de7],ax
000006B0  8A6405            mov ah,[si+0x5]
000006B3  2EA3E92D          mov [cs:0x2de9],ax
000006B7  8A640E            mov ah,[si+0xe]
000006BA  2EA3EB2D          mov [cs:0x2deb],ax
000006BE  E80F02            call 0x8d0
000006C1  26887604          mov [es:bp+0x4],dh
000006C5  83C60F            add si,0xf
000006C8  81C50020          add bp,0x2000
000006CC  81FD0040          cmp bp,0x4000
000006D0  7204              jc 0x6d6
000006D2  81C550C0          add bp,0xc050
000006D6  59                pop cx
000006D7  E286              loop 0x65f
000006D9  1F                pop ds
000006DA  C3                ret
000006DB  1E                push ds
000006DC  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000006E1  FEC8              dec al
000006E3  32E4              xor ah,ah
000006E5  B9C000            mov cx,0xc0
000006E8  F7E1              mul cx
000006EA  030606E2          add ax,[0xe206]
000006EE  8BF0              mov si,ax
000006F0  E84E01            call 0x841
000006F3  1F                pop ds
000006F4  C3                ret
000006F5  1E                push ds
000006F6  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000006FB  FEC8              dec al
000006FD  32E4              xor ah,ah
000006FF  B9C000            mov cx,0xc0
00000702  F7E1              mul cx
00000704  030602E2          add ax,[0xe202]
00000708  8BF0              mov si,ax
0000070A  E83401            call 0x841
0000070D  1F                pop ds
0000070E  C3                ret
0000070F  1E                push ds
00000710  BE5127            mov si,0x2751
00000713  0AC0              or al,al
00000715  7414              jz 0x72b
00000717  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000071C  FEC8              dec al
0000071E  32E4              xor ah,ah
00000720  B9C000            mov cx,0xc0
00000723  F7E1              mul cx
00000725  03060CE2          add ax,[0xe20c]
00000729  8BF0              mov si,ax
0000072B  E81301            call 0x841
0000072E  1F                pop ds
0000072F  C3                ret
00000730  1E                push ds
00000731  BE5127            mov si,0x2751
00000734  0AC0              or al,al
00000736  7414              jz 0x74c
00000738  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000073D  FEC8              dec al
0000073F  32E4              xor ah,ah
00000741  B9C000            mov cx,0xc0
00000744  F7E1              mul cx
00000746  03060AE2          add ax,[0xe20a]
0000074A  8BF0              mov si,ax
0000074C  E8F200            call 0x841
0000074F  1F                pop ds
00000750  C3                ret
00000751  0000              add [bx+si],al
00000753  0000              add [bx+si],al
00000755  FC                cld
00000756  FF                db 0xff
00000757  FF                db 0xff
00000758  3F                aas
00000759  2AAAAAA8          sub ch,[bp+si-0x5756]
0000075D  0000              add [bx+si],al
0000075F  0000              add [bx+si],al
00000761  0300              add ax,[bx+si]
00000763  00C0              add al,al
00000765  800000            add byte [bx+si],0x0
00000768  020E38F8          add cl,[0xf838]
0000076C  0003              add [bp+di],al
0000076E  0000              add [bx+si],al
00000770  C082080802        rol byte [bp+si+0x808],byte 0x2
00000775  0FBB8E0003        btc [bp+0x300],cx
0000077A  0000              add [bx+si],al
0000077C  C080888202        rol byte [bx+si-0x7d78],byte 0x2
00000781  0FFB8E0003        psubq mm1,[bp+0x300]
00000786  0000              add [bx+si],al
00000788  C080088202        rol byte [bx+si-0x7df8],byte 0x2
0000078D  0E                push cs
0000078E  FB                sti
0000078F  8E00              mov es,word [bx+si]
00000791  0300              add ax,[bx+si]
00000793  00C0              add al,al
00000795  82                db 0x82
00000796  0882020E          or [bp+si+0xe02],al
0000079A  38F8              cmp al,bh
0000079C  0003              add [bp+di],al
0000079E  0000              add [bx+si],al
000007A0  C082080802        rol byte [bp+si+0x808],byte 0x2
000007A5  0000              add [bx+si],al
000007A7  0000              add [bx+si],al
000007A9  0300              add ax,[bx+si]
000007AB  00C0              add al,al
000007AD  800000            add byte [bx+si],0x0
000007B0  0200              add al,[bx+si]
000007B2  0000              add [bx+si],al
000007B4  0003              add [bp+di],al
000007B6  0000              add [bx+si],al
000007B8  C080000002        rol byte [bx+si+0x0],byte 0x2
000007BD  0E                push cs
000007BE  38FB              cmp bl,bh
000007C0  F8                clc
000007C1  0300              add ax,[bx+si]
000007C3  00C0              add al,al
000007C5  82                db 0x82
000007C6  0808              or [bx+si],cl
000007C8  0A0E3B83          or cl,[0x833b]
000007CC  800300            add byte [bp+di],0x0
000007CF  00C0              add al,al
000007D1  82                db 0x82
000007D2  0880820E          or [bx+si+0xe82],al
000007D6  38E3              cmp bl,ah
000007D8  C00300            rol byte [bp+di],byte 0x0
000007DB  00C0              add al,al
000007DD  82                db 0x82
000007DE  0820              or [bx+si],ah
000007E0  020E383B          add cl,[0x3b38]
000007E4  800300            add byte [bp+di],0x0
000007E7  00C0              add al,al
000007E9  82                db 0x82
000007EA  0808              or [bx+si],cl
000007EC  82                db 0x82
000007ED  03E3              add sp,bx
000007EF  E3F8              jcxz 0x7e9
000007F1  0300              add ax,[bx+si]
000007F3  00C0              add al,al
000007F5  802020            and byte [bx+si],0x20
000007F8  0A00              or al,[bx+si]
000007FA  0000              add [bx+si],al
000007FC  0003              add [bp+di],al
000007FE  0000              add [bx+si],al
00000800  C080000002        rol byte [bx+si+0x0],byte 0x2
00000805  0000              add [bx+si],al
00000807  0000              add [bx+si],al
00000809  FC                cld
0000080A  FF                db 0xff
0000080B  FF                db 0xff
0000080C  3F                aas
0000080D  2AAAAAA8          sub ch,[bp+si-0x5756]
00000811  1E                push ds
00000812  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000817  32E4              xor ah,ah
00000819  B9C000            mov cx,0xc0
0000081C  F7E1              mul cx
0000081E  030608E2          add ax,[0xe208]
00000822  8BF0              mov si,ax
00000824  E81A00            call 0x841
00000827  1F                pop ds
00000828  C3                ret
00000829  1E                push ds
0000082A  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000082F  32E4              xor ah,ah
00000831  B9C000            mov cx,0xc0
00000834  F7E1              mul cx
00000836  030604E2          add ax,[0xe204]
0000083A  8BF0              mov si,ax
0000083C  E80200            call 0x841
0000083F  1F                pop ds
00000840  C3                ret
00000841  D0EB              shr bl,0x0
00000843  1BED              sbb bp,bp
00000845  81E50020          and bp,0x2000
00000849  B050              mov al,0x50
0000084B  F6E3              mul bl
0000084D  03E8              add bp,ax
0000084F  8ADF              mov bl,bh
00000851  32FF              xor bh,bh
00000853  03EB              add bp,bx
00000855  B800B8            mov ax,0xb800
00000858  8EC0              mov es,ax
0000085A  B91000            mov cx,0x10
0000085D  51                push cx
0000085E  8B04              mov ax,[si]
00000860  86E0              xchg ah,al
00000862  2EA3E72D          mov [cs:0x2de7],ax
00000866  8B4406            mov ax,[si+0x6]
00000869  2EA3E92D          mov [cs:0x2de9],ax
0000086D  8B4408            mov ax,[si+0x8]
00000870  86E0              xchg ah,al
00000872  2EA3EB2D          mov [cs:0x2deb],ax
00000876  E85700            call 0x8d0
00000879  8BC2              mov ax,dx
0000087B  8B5402            mov dx,[si+0x2]
0000087E  86F2              xchg dh,dl
00000880  2E8916E72D        mov [cs:0x2de7],dx
00000885  8B5404            mov dx,[si+0x4]
00000888  2E8916E92D        mov [cs:0x2de9],dx
0000088D  8B540A            mov dx,[si+0xa]
00000890  86F2              xchg dh,dl
00000892  2E8916EB2D        mov [cs:0x2deb],dx
00000897  E83600            call 0x8d0
0000089A  32DB              xor bl,bl
0000089C  B90400            mov cx,0x4
0000089F  D1E8              shr ax,0x0
000008A1  D1DA              rcr dx,0x0
000008A3  D0DB              rcr bl,0x0
000008A5  E2F8              loop 0x89f
000008A7  26886600          mov [es:bp+0x0],ah
000008AB  26884601          mov [es:bp+0x1],al
000008AF  26887602          mov [es:bp+0x2],dh
000008B3  26885603          mov [es:bp+0x3],dl
000008B7  26885E04          mov [es:bp+0x4],bl
000008BB  83C60C            add si,0xc
000008BE  81C50020          add bp,0x2000
000008C2  81FD0040          cmp bp,0x4000
000008C6  7204              jc 0x8cc
000008C8  81C550C0          add bp,0xc050
000008CC  59                pop cx
000008CD  E28E              loop 0x85d
000008CF  C3                ret
000008D0  B90800            mov cx,0x8
000008D3  33DB              xor bx,bx
000008D5  2ED106EB2D        rol word [cs:0x2deb],0x0
000008DA  13DB              adc bx,bx
000008DC  2ED106E92D        rol word [cs:0x2de9],0x0
000008E1  13DB              adc bx,bx
000008E3  2ED106E72D        rol word [cs:0x2de7],0x0
000008E8  13DB              adc bx,bx
000008EA  2ED106EB2D        rol word [cs:0x2deb],0x0
000008EF  13DB              adc bx,bx
000008F1  2ED106E92D        rol word [cs:0x2de9],0x0
000008F6  13DB              adc bx,bx
000008F8  2ED106E72D        rol word [cs:0x2de7],0x0
000008FD  13DB              adc bx,bx
000008FF  03D2              add dx,dx
00000901  03D2              add dx,dx
00000903  2E0A970B29        or dl,[cs:bx+0x290b]
00000908  E2C9              loop 0x8d3
0000090A  C3                ret
0000090B  0001              add [bx+di],al
0000090D  0201              add al,[bx+di]
0000090F  0100              add [bx+si],ax
00000911  0302              add ax,[bp+si]
00000913  0103              add [bp+di],ax
00000915  0303              add ax,[bp+di]
00000917  0103              add [bp+di],ax
00000919  0302              add ax,[bp+si]
0000091B  0203              add al,[bp+di]
0000091D  0201              add al,[bx+di]
0000091F  0102              add [bp+si],ax
00000921  0202              add al,[bp+si]
00000923  0103              add [bp+di],ax
00000925  0103              add [bp+di],ax
00000927  0101              add [bx+di],ax
00000929  0202              add al,[bp+si]
0000092B  0101              add [bx+di],ax
0000092D  0101              add [bx+di],ax
0000092F  0101              add [bx+di],ax
00000931  0302              add ax,[bp+si]
00000933  0003              add [bp+di],al
00000935  0201              add al,[bx+di]
00000937  0101              add [bx+di],ax
00000939  0302              add ax,[bp+si]
0000093B  0303              add ax,[bp+di]
0000093D  0202              add al,[bp+si]
0000093F  0303              add ax,[bp+di]
00000941  0302              add ax,[bp+si]
00000943  0102              add [bp+si],ax
00000945  0202              add al,[bp+si]
00000947  0202              add al,[bp+si]
00000949  0202              add al,[bp+si]
0000094B  1E                push ds
0000094C  0E                push cs
0000094D  1F                pop ds
0000094E  53                push bx
0000094F  33DB              xor bx,bx
00000951  8ADC              mov bl,ah
00000953  8AA79A25          mov ah,[bx+0x259a]
00000957  8826E12D          mov [0x2de1],ah
0000095B  5B                pop bx
0000095C  32E4              xor ah,ah
0000095E  2C20              sub al,0x20
00000960  03C0              add ax,ax
00000962  03C0              add ax,ax
00000964  03C0              add ax,ax
00000966  030600F5          add ax,[0xf500]
0000096A  50                push ax
0000096B  8AC3              mov al,bl
0000096D  2403              and al,0x3
0000096F  02C0              add al,al
00000971  A2E22D            mov [0x2de2],al
00000974  D1EB              shr bx,0x0
00000976  D1EB              shr bx,0x0
00000978  D0E9              shr cl,0x0
0000097A  1BFF              sbb di,di
0000097C  81E70020          and di,0x2000
00000980  B050              mov al,0x50
00000982  F6E1              mul cl
00000984  03C3              add ax,bx
00000986  03F8              add di,ax
00000988  5E                pop si
00000989  B800B8            mov ax,0xb800
0000098C  8EC0              mov es,ax
0000098E  B90800            mov cx,0x8
00000991  51                push cx
00000992  AC                lodsb
00000993  E84D00            call 0x9e3
00000996  2E8A0EE22D        mov cl,[cs:0x2de2]
0000099B  8AE2              mov ah,dl
0000099D  32D2              xor dl,dl
0000099F  8AC2              mov al,dl
000009A1  D3EA              shr dx,cl
000009A3  D3E8              shr ax,cl
000009A5  0AD4              or dl,ah
000009A7  8AE8              mov ch,al
000009A9  86F2              xchg dh,dl
000009AB  8BDA              mov bx,dx
000009AD  8ACD              mov cl,ch
000009AF  F7D3              not bx
000009B1  F6D1              not cl
000009B3  26211D            and [es:di],bx
000009B6  26204D02          and [es:di+0x2],cl
000009BA  2E2216E12D        and dl,[cs:0x2de1]
000009BF  2E2236E12D        and dh,[cs:0x2de1]
000009C4  2E222EE12D        and ch,[cs:0x2de1]
000009C9  260915            or [es:di],dx
000009CC  26086D02          or [es:di+0x2],ch
000009D0  59                pop cx
000009D1  81C70020          add di,0x2000
000009D5  81FF0040          cmp di,0x4000
000009D9  7204              jc 0x9df
000009DB  81C750C0          add di,0xc050
000009DF  E2B0              loop 0x991
000009E1  1F                pop ds
000009E2  C3                ret
000009E3  B90800            mov cx,0x8
000009E6  02C0              add al,al
000009E8  13DB              adc bx,bx
000009EA  03DB              add bx,bx
000009EC  E2F8              loop 0x9e6
000009EE  8BD3              mov dx,bx
000009F0  D1EA              shr dx,0x0
000009F2  0BD3              or dx,bx
000009F4  C3                ret
000009F5  1E                push ds
000009F6  D0EB              shr bl,0x0
000009F8  1BFF              sbb di,di
000009FA  81E70020          and di,0x2000
000009FE  B85000            mov ax,0x50
00000A01  F6E3              mul bl
00000A03  8ADF              mov bl,bh
00000A05  32FF              xor bh,bh
00000A07  03DB              add bx,bx
00000A09  03C3              add ax,bx
00000A0B  03F8              add di,ax
00000A0D  8BF7              mov si,di
00000A0F  81C60020          add si,0x2000
00000A13  81FE0040          cmp si,0x4000
00000A17  7204              jc 0xa1d
00000A19  81C650C0          add si,0xc050
00000A1D  B800B8            mov ax,0xb800
00000A20  8EC0              mov es,ax
00000A22  8ED8              mov ds,ax
00000A24  8ADD              mov bl,ch
00000A26  32FF              xor bh,bh
00000A28  03DB              add bx,bx
00000A2A  32ED              xor ch,ch
00000A2C  51                push cx
00000A2D  57                push di
00000A2E  56                push si
00000A2F  8BCB              mov cx,bx
00000A31  F3A4              rep movsb
00000A33  5E                pop si
00000A34  5F                pop di
00000A35  81C70020          add di,0x2000
00000A39  81FF0040          cmp di,0x4000
00000A3D  7204              jc 0xa43
00000A3F  81C750C0          add di,0xc050
00000A43  81C60020          add si,0x2000
00000A47  81FE0040          cmp si,0x4000
00000A4B  7204              jc 0xa51
00000A4D  81C650C0          add si,0xc050
00000A51  59                pop cx
00000A52  E2D8              loop 0xa2c
00000A54  1F                pop ds
00000A55  C3                ret
00000A56  1E                push ds
00000A57  83C700            add di,0x0
00000A5A  D0E8              shr al,0x0
00000A5C  1BF6              sbb si,si
00000A5E  81E60020          and si,0x2000
00000A62  8ADC              mov bl,ah
00000A64  B750              mov bh,0x50
00000A66  F6E7              mul bh
00000A68  03F0              add si,ax
00000A6A  32FF              xor bh,bh
00000A6C  03DB              add bx,bx
00000A6E  03F3              add si,bx
00000A70  8CC8              mov ax,cs
00000A72  050030            add ax,0x3000
00000A75  8EC0              mov es,ax
00000A77  B800B8            mov ax,0xb800
00000A7A  8ED8              mov ds,ax
00000A7C  8ADD              mov bl,ch
00000A7E  32FF              xor bh,bh
00000A80  8AEF              mov ch,bh
00000A82  51                push cx
00000A83  56                push si
00000A84  8BCB              mov cx,bx
00000A86  F3A5              rep movsw
00000A88  5E                pop si
00000A89  81C60020          add si,0x2000
00000A8D  81FE0040          cmp si,0x4000
00000A91  7204              jc 0xa97
00000A93  81C650C0          add si,0xc050
00000A97  59                pop cx
00000A98  E2E8              loop 0xa82
00000A9A  1F                pop ds
00000A9B  C3                ret
00000A9C  1E                push ds
00000A9D  8BF7              mov si,di
00000A9F  83C600            add si,0x0
00000AA2  D0E8              shr al,0x0
00000AA4  1BFF              sbb di,di
00000AA6  81E70020          and di,0x2000
00000AAA  8ADC              mov bl,ah
00000AAC  B750              mov bh,0x50
00000AAE  F6E7              mul bh
00000AB0  03F8              add di,ax
00000AB2  32FF              xor bh,bh
00000AB4  03DB              add bx,bx
00000AB6  03FB              add di,bx
00000AB8  8CC8              mov ax,cs
00000ABA  050030            add ax,0x3000
00000ABD  8ED8              mov ds,ax
00000ABF  B800B8            mov ax,0xb800
00000AC2  8EC0              mov es,ax
00000AC4  8ADD              mov bl,ch
00000AC6  32FF              xor bh,bh
00000AC8  8AEF              mov ch,bh
00000ACA  51                push cx
00000ACB  57                push di
00000ACC  8BCB              mov cx,bx
00000ACE  F3A5              rep movsw
00000AD0  5F                pop di
00000AD1  81C70020          add di,0x2000
00000AD5  81FF0040          cmp di,0x4000
00000AD9  7204              jc 0xadf
00000ADB  81C750C0          add di,0xc050
00000ADF  59                pop cx
00000AE0  E2E8              loop 0xaca
00000AE2  1F                pop ds
00000AE3  C3                ret
00000AE4  2E891EE42D        mov [cs:0x2de4],bx
00000AE9  2E880EE62D        mov [cs:0x2de6],cl
00000AEE  2EC606E32D01      mov byte [cs:0x2de3],0x1
00000AF4  AC                lodsb
00000AF5  3CFF              cmp al,0xff
00000AF7  7501              jnz 0xafa
00000AF9  C3                ret
00000AFA  3C0D              cmp al,0xd
00000AFC  7417              jz 0xb15
00000AFE  0AC0              or al,al
00000B00  7825              js 0xb27
00000B02  51                push cx
00000B03  53                push bx
00000B04  56                push si
00000B05  2E8A26E32D        mov ah,[cs:0x2de3]
00000B0A  E83EFE            call 0x94b
00000B0D  5E                pop si
00000B0E  5B                pop bx
00000B0F  59                pop cx
00000B10  83C308            add bx,0x8
00000B13  EBDF              jmp 0xaf4
00000B15  2E8006E62D08      add byte [cs:0x2de6],0x8
00000B1B  2E8A0EE62D        mov cl,[cs:0x2de6]
00000B20  2E8B1EE42D        mov bx,[cs:0x2de4]
00000B25  EBCD              jmp 0xaf4
00000B27  2407              and al,0x7
00000B29  2EA2E32D          mov [cs:0x2de3],al
00000B2D  EBC5              jmp 0xaf4
00000B2F  1E                push ds
00000B30  D0EB              shr bl,0x0
00000B32  1BF6              sbb si,si
00000B34  81E60020          and si,0x2000
00000B38  B85000            mov ax,0x50
00000B3B  F6E3              mul bl
00000B3D  8ADF              mov bl,bh
00000B3F  32FF              xor bh,bh
00000B41  03DB              add bx,bx
00000B43  03C3              add ax,bx
00000B45  03F0              add si,ax
00000B47  D0EA              shr dl,0x0
00000B49  1BFF              sbb di,di
00000B4B  81E70020          and di,0x2000
00000B4F  B85000            mov ax,0x50
00000B52  F6E2              mul dl
00000B54  8AD6              mov dl,dh
00000B56  32F6              xor dh,dh
00000B58  03D2              add dx,dx
00000B5A  03C2              add ax,dx
00000B5C  03F8              add di,ax
00000B5E  B800B8            mov ax,0xb800
00000B61  8EC0              mov es,ax
00000B63  8ED8              mov ds,ax
00000B65  8ADD              mov bl,ch
00000B67  32FF              xor bh,bh
00000B69  03DB              add bx,bx
00000B6B  32ED              xor ch,ch
00000B6D  51                push cx
00000B6E  57                push di
00000B6F  56                push si
00000B70  8BCB              mov cx,bx
00000B72  F3A4              rep movsb
00000B74  5E                pop si
00000B75  5F                pop di
00000B76  81C70020          add di,0x2000
00000B7A  81FF0040          cmp di,0x4000
00000B7E  7204              jc 0xb84
00000B80  81C750C0          add di,0xc050
00000B84  81C60020          add si,0x2000
00000B88  81FE0040          cmp si,0x4000
00000B8C  7204              jc 0xb92
00000B8E  81C650C0          add si,0xc050
00000B92  59                pop cx
00000B93  E2D8              loop 0xb6d
00000B95  1F                pop ds
00000B96  C3                ret
00000B97  53                push bx
00000B98  33DB              xor bx,bx
00000B9A  8AD8              mov bl,al
00000B9C  8A87112C          mov al,[bx+0x2c11]
00000BA0  A2E12D            mov [0x2de1],al
00000BA3  5B                pop bx
00000BA4  D0EB              shr bl,0x0
00000BA6  1BFF              sbb di,di
00000BA8  81E70020          and di,0x2000
00000BAC  B050              mov al,0x50
00000BAE  F6E3              mul bl
00000BB0  03F8              add di,ax
00000BB2  8ADF              mov bl,bh
00000BB4  32FF              xor bh,bh
00000BB6  03FB              add di,bx
00000BB8  B800B8            mov ax,0xb800
00000BBB  8EC0              mov es,ax
00000BBD  E83100            call 0xbf1
00000BC0  B91000            mov cx,0x10
00000BC3  A0E12D            mov al,[0x2de1]
00000BC6  24F0              and al,0xf0
00000BC8  2680250F          and byte [es:di],0xf
00000BCC  260805            or [es:di],al
00000BCF  A0E12D            mov al,[0x2de1]
00000BD2  240F              and al,0xf
00000BD4  26806504F0        and byte [es:di+0x4],0xf0
00000BD9  26084504          or [es:di+0x4],al
00000BDD  81C70020          add di,0x2000
00000BE1  81FF0040          cmp di,0x4000
00000BE5  7204              jc 0xbeb
00000BE7  81C750C0          add di,0xc050
00000BEB  E2D6              loop 0xbc3
00000BED  E80100            call 0xbf1
00000BF0  C3                ret
00000BF1  B90200            mov cx,0x2
00000BF4  51                push cx
00000BF5  57                push di
00000BF6  A0E12D            mov al,[0x2de1]
00000BF9  B90500            mov cx,0x5
00000BFC  F3AA              rep stosb
00000BFE  5F                pop di
00000BFF  81C70020          add di,0x2000
00000C03  81FF0040          cmp di,0x4000
00000C07  7204              jc 0xc0d
00000C09  81C750C0          add di,0xc050
00000C0D  59                pop cx
00000C0E  E2E4              loop 0xbf4
00000C10  C3                ret
00000C11  00FF              add bh,bh
00000C13  AA                stosb
00000C14  FF55FF            call word near [di-0x1]
00000C17  FFAA1E56          jmp word far [bp+si+0x561e]
00000C1B  0E                push cs
00000C1C  1F                pop ds
00000C1D  32E4              xor ah,ah
00000C1F  03C0              add ax,ax
00000C21  03C0              add ax,ax
00000C23  8BF0              mov si,ax
00000C25  D0EB              shr bl,0x0
00000C27  1BFF              sbb di,di
00000C29  81E70020          and di,0x2000
00000C2D  B050              mov al,0x50
00000C2F  F6E3              mul bl
00000C31  03F8              add di,ax
00000C33  8ADF              mov bl,bh
00000C35  32FF              xor bh,bh
00000C37  03FB              add di,bx
00000C39  B800B8            mov ax,0xb800
00000C3C  8EC0              mov es,ax
00000C3E  8B9C8E2C          mov bx,[si+0x2c8e]
00000C42  8BB4902C          mov si,[si+0x2c90]
00000C46  B90D00            mov cx,0xd
00000C49  51                push cx
00000C4A  8A07              mov al,[bx]
00000C4C  262005            and [es:di],al
00000C4F  8A4701            mov al,[bx+0x1]
00000C52  26204501          and [es:di+0x1],al
00000C56  8A4702            mov al,[bx+0x2]
00000C59  26204502          and [es:di+0x2],al
00000C5D  8A4703            mov al,[bx+0x3]
00000C60  26204503          and [es:di+0x3],al
00000C64  AC                lodsb
00000C65  260805            or [es:di],al
00000C68  AC                lodsb
00000C69  26084501          or [es:di+0x1],al
00000C6D  AC                lodsb
00000C6E  26084502          or [es:di+0x2],al
00000C72  AC                lodsb
00000C73  26084503          or [es:di+0x3],al
00000C77  83C304            add bx,0x4
00000C7A  81C70020          add di,0x2000
00000C7E  81FF0040          cmp di,0x4000
00000C82  7204              jc 0xc88
00000C84  81C750C0          add di,0xc050
00000C88  59                pop cx
00000C89  E2BE              loop 0xc49
00000C8B  5E                pop si
00000C8C  1F                pop ds
00000C8D  C3                ret
00000C8E  96                xchg ax,si
00000C8F  2CFE              sub al,0xfe
00000C91  2CCA              sub al,0xca
00000C93  2C32              sub al,0x32
00000C95  2DFFF0            sub ax,0xf0ff
00000C98  0CFF              or al,0xff
00000C9A  FFC0              inc ax
00000C9C  00FF              add bh,bh
00000C9E  FF00              inc word [bx+si]
00000CA0  00FF              add bh,bh
00000CA2  FF00              inc word [bx+si]
00000CA4  00FF              add bh,bh
00000CA6  FF00              inc word [bx+si]
00000CA8  00FF              add bh,bh
00000CAA  FF00              inc word [bx+si]
00000CAC  00FF              add bh,bh
00000CAE  FF00              inc word [bx+si]
00000CB0  00FF              add bh,bh
00000CB2  FFC0              inc ax
00000CB4  00FF              add bh,bh
00000CB6  FFC0              inc ax
00000CB8  00FF              add bh,bh
00000CBA  FFC0              inc ax
00000CBC  00FF              add bh,bh
00000CBE  FFCC              dec sp
00000CC0  0CFF              or al,0xff
00000CC2  FF                db 0xff
00000CC3  FF                db 0xff
00000CC4  FF                db 0xff
00000CC5  FF                db 0xff
00000CC6  FF                db 0xff
00000CC7  FF                db 0xff
00000CC8  FF                db 0xff
00000CC9  FF                db 0xff
00000CCA  FF00              inc word [bx+si]
00000CCC  00FF              add bh,bh
00000CCE  FC                cld
00000CCF  0000              add [bx+si],al
00000CD1  3F                aas
00000CD2  F00000            lock add [bx+si],al
00000CD5  0F                db 0x0f
00000CD6  F00000            lock add [bx+si],al
00000CD9  0FC000            xadd [bx+si],al
00000CDC  0003              add [bp+di],al
00000CDE  C00000            rol byte [bx+si],byte 0x0
00000CE1  03C0              add ax,ax
00000CE3  0000              add [bx+si],al
00000CE5  03C0              add ax,ax
00000CE7  0000              add [bx+si],al
00000CE9  03F0              add si,ax
00000CEB  0000              add [bx+si],al
00000CED  0F                db 0x0f
00000CEE  F00000            lock add [bx+si],al
00000CF1  0FFC00            paddb mm0,[bx+si]
00000CF4  003F              add [bx],bh
00000CF6  FF00              inc word [bx+si]
00000CF8  00FF              add bh,bh
00000CFA  FFC0              inc ax
00000CFC  03FF              add di,di
00000CFE  0000              add [bx+si],al
00000D00  0000              add [bx+si],al
00000D02  000A              add [bp+si],cl
00000D04  A00000            mov al,[0x0]
00000D07  3BF8              cmp di,ax
00000D09  0000              add [bx+si],al
00000D0B  2F                das
00000D0C  D6                salc
00000D0D  0000              add [bx+si],al
00000D0F  E7D6              out byte 0xd6,ax
00000D11  0000              add [bx+si],al
00000D13  E556              in ax,byte 0x56
00000D15  0000              add [bx+si],al
00000D17  A5                movsw
00000D18  56                push si
00000D19  0000              add [bx+si],al
00000D1B  255600            and ax,0x56
00000D1E  0029              add [bx+di],ch
00000D20  58                pop ax
00000D21  0000              add [bx+si],al
00000D23  0AA00000          or ah,[bx+si+0x0]
00000D27  0000              add [bx+si],al
00000D29  0000              add [bx+si],al
00000D2B  0000              add [bx+si],al
00000D2D  0000              add [bx+si],al
00000D2F  0000              add [bx+si],al
00000D31  0000              add [bx+si],al
00000D33  3F                aas
00000D34  D400              aam byte 0x0
00000D36  00F0              add al,dh
00000D38  050003            add ax,0x300
00000D3B  CF                iret
00000D3C  C1400F3F          rol word [bx+si+0xf],byte 0x3f
00000D40  0C50              or al,0x50
00000D42  0FFC03            paddb mm0,[bp+di]
00000D45  50                push ax
00000D46  0CF0              or al,0xf0
00000D48  A0100C            mov al,[0xc10]
00000D4B  C2AA90            ret word 0x90aa
00000D4E  0DEAAA            or ax,0xaaea
00000D51  D00D              ror byte [di],0x0
00000D53  BAAAF0            mov dx,0xf0aa
00000D56  016BAB            add [bp+di-0x55],bp
00000D59  C00058            rol byte [bx+si],byte 0x58
00000D5C  AF                scasw
00000D5D  0000              add [bx+si],al
00000D5F  1D5400            sbb ax,0x54
00000D62  0000              add [bx+si],al
00000D64  0000              add [bx+si],al
00000D66  B800B8            mov ax,0xb800
00000D69  8EC0              mov es,ax
00000D6B  33FF              xor di,di
00000D6D  B90800            mov cx,0x8
00000D70  51                push cx
00000D71  57                push di
00000D72  B91900            mov cx,0x19
00000D75  51                push cx
00000D76  57                push di
00000D77  B92800            mov cx,0x28
00000D7A  33C0              xor ax,ax
00000D7C  F3AB              rep stosw
00000D7E  5F                pop di
00000D7F  81C74001          add di,0x140
00000D83  59                pop cx
00000D84  E2EF              loop 0xd75
00000D86  5F                pop di
00000D87  81C70020          add di,0x2000
00000D8B  81FF0040          cmp di,0x4000
00000D8F  7204              jc 0xd95
00000D91  81C750C0          add di,0xc050
00000D95  59                pop cx
00000D96  E2D8              loop 0xd70
00000D98  C3                ret
00000D99  51                push cx
00000D9A  1E                push ds
00000D9B  56                push si
00000D9C  8CC8              mov ax,cs
00000D9E  050030            add ax,0x3000
00000DA1  8EC0              mov es,ax
00000DA3  B83000            mov ax,0x30
00000DA6  F7E1              mul cx
00000DA8  8BC8              mov cx,ax
00000DAA  BF0000            mov di,0x0
00000DAD  F3A4              rep movsb
00000DAF  5F                pop di
00000DB0  07                pop es
00000DB1  59                pop cx
00000DB2  8CC8              mov ax,cs
00000DB4  050030            add ax,0x3000
00000DB7  8ED8              mov ds,ax
00000DB9  BE0000            mov si,0x0
00000DBC  51                push cx
00000DBD  E80400            call 0xdc4
00000DC0  59                pop cx
00000DC1  E2F9              loop 0xdbc
00000DC3  C3                ret
00000DC4  B90800            mov cx,0x8
00000DC7  51                push cx
00000DC8  AD                lodsw
00000DC9  2EA3E72D          mov [cs:0x2de7],ax
00000DCD  AD                lodsw
00000DCE  2EA3E92D          mov [cs:0x2de9],ax
00000DD2  AD                lodsw
00000DD3  2EA3EB2D          mov [cs:0x2deb],ax
00000DD7  E8F6FA            call 0x8d0
00000DDA  8BC2              mov ax,dx
00000DDC  AB                stosw
00000DDD  59                pop cx
00000DDE  E2E7              loop 0xdc7
00000DE0  C3                ret
00000DE1  0000              add [bx+si],al
00000DE3  0000              add [bx+si],al
00000DE5  0000              add [bx+si],al
00000DE7  0000              add [bx+si],al
00000DE9  0000              add [bx+si],al
00000DEB  0000              add [bx+si],al
