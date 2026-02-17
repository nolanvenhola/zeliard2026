00000000  46                inc si
00000001  20062195          and [0x9521],al
00000005  2127              and [bx],sp
00000007  225622            and dl,[bp+0x22]
0000000A  3122              xor [bp+si],sp
0000000C  60                pusha
0000000D  22BF22CD          and bh,[bx-0x32de]
00000011  2285238F          and al,[di-0x70dd]
00000015  23AC23CC          and bp,[si-0x33dd]
00000019  23F5              and si,bp
0000001B  234C25            and cx,[si+0x25]
0000001E  E225              loop 0x45
00000020  FC                cld
00000021  25E927            and ax,0x27e9
00000024  57                push di
00000025  289A28D9          sub [bp+si-0x26d8],bl
00000029  281A              sub [bp+si],bl
0000002B  296F29            sub [bx+0x29],bp
0000002E  C3                ret
0000002F  29A3243A          sub [bp+di+0x3a24],sp
00000033  2416              and al,0x16
00000035  2637              es aaa
00000037  26                es
00000038  DB                db 0xdb
00000039  2218              and bl,[bx+si]
0000003B  27                daa
0000003C  3027              xor [bx],ah
0000003E  1C2A              sbb al,0x2a
00000040  3021              xor [bx+di],ah
00000042  012C              add [si],bp
00000044  2A2C              sub ch,[si]
00000046  50                push ax
00000047  33C0              xor ax,ax
00000049  8AC7              mov al,bh
0000004B  8AFC              mov bh,ah
0000004D  50                push ax
0000004E  B84001            mov ax,0x140
00000051  F7E3              mul bx
00000053  5F                pop di
00000054  03FF              add di,di
00000056  03FF              add di,di
00000058  03F8              add di,ax
0000005A  58                pop ax
0000005B  0AC0              or al,al
0000005D  7503              jnz 0x62
0000005F  E98600            jmp 0xe8
00000062  BA0909            mov dx,0x909
00000065  2EF60677FFFF      test byte [cs:0xff77],0xff
0000006B  7403              jz 0x70
0000006D  BAFFFF            mov dx,0xffff
00000070  57                push di
00000071  80E904            sub cl,0x4
00000074  81C78002          add di,0x280
00000078  E86D00            call 0xe8
0000007B  5F                pop di
0000007C  33C0              xor ax,ax
0000007E  33DB              xor bx,bx
00000080  E83300            call 0xb6
00000083  B800FF            mov ax,0xff00
00000086  BBFF00            mov bx,0xff
00000089  E82A00            call 0xb6
0000008C  51                push cx
0000008D  53                push bx
0000008E  8ADD              mov bl,ch
00000090  FECB              dec bl
00000092  03DB              add bx,bx
00000094  03DB              add bx,bx
00000096  32FF              xor bh,bh
00000098  32ED              xor ch,ch
0000009A  268915            mov [es:di],dx
0000009D  26895102          mov [es:bx+di+0x2],dx
000000A1  81C74001          add di,0x140
000000A5  E2F3              loop 0x9a
000000A7  5B                pop bx
000000A8  59                pop cx
000000A9  B800FF            mov ax,0xff00
000000AC  BBFF00            mov bx,0xff
000000AF  E80400            call 0xb6
000000B2  33C0              xor ax,ax
000000B4  33DB              xor bx,bx
000000B6  57                push di
000000B7  51                push cx
000000B8  F7D0              not ax
000000BA  262105            and [es:di],ax
000000BD  F7D0              not ax
000000BF  23C2              and ax,dx
000000C1  260905            or [es:di],ax
000000C4  47                inc di
000000C5  47                inc di
000000C6  8ACD              mov cl,ch
000000C8  32ED              xor ch,ch
000000CA  03C9              add cx,cx
000000CC  03C9              add cx,cx
000000CE  83E904            sub cx,0x4
000000D1  8AC2              mov al,dl
000000D3  F3AA              rep stosb
000000D5  F7D3              not bx
000000D7  26211D            and [es:di],bx
000000DA  F7D3              not bx
000000DC  23DA              and bx,dx
000000DE  26091D            or [es:di],bx
000000E1  59                pop cx
000000E2  5F                pop di
000000E3  81C74001          add di,0x140
000000E7  C3                ret
000000E8  B800A0            mov ax,0xa000
000000EB  8EC0              mov es,ax
000000ED  51                push cx
000000EE  33C0              xor ax,ax
000000F0  57                push di
000000F1  51                push cx
000000F2  8ACD              mov cl,ch
000000F4  32ED              xor ch,ch
000000F6  03C9              add cx,cx
000000F8  F3AB              rep stosw
000000FA  59                pop cx
000000FB  5F                pop di
000000FC  81C74001          add di,0x140
00000100  FEC9              dec cl
00000102  75EC              jnz 0xf0
00000104  59                pop cx
00000105  C3                ret
00000106  B800A0            mov ax,0xa000
00000109  8EC0              mov es,ax
0000010B  BFB011            mov di,0x11b0
0000010E  B90800            mov cx,0x8
00000111  51                push cx
00000112  57                push di
00000113  B91200            mov cx,0x12
00000116  51                push cx
00000117  57                push di
00000118  B9E000            mov cx,0xe0
0000011B  32C0              xor al,al
0000011D  F3AA              rep stosb
0000011F  5F                pop di
00000120  81C7000A          add di,0xa00
00000124  59                pop cx
00000125  E2EF              loop 0x116
00000127  5F                pop di
00000128  81C74001          add di,0x140
0000012C  59                pop cx
0000012D  E2E2              loop 0x111
0000012F  C3                ret
00000130  B800A0            mov ax,0xa000
00000133  8EC0              mov es,ax
00000135  BE8D21            mov si,0x218d
00000138  B90800            mov cx,0x8
0000013B  51                push cx
0000013C  BFB011            mov di,0x11b0
0000013F  AC                lodsb
00000140  57                push di
00000141  B94800            mov cx,0x48
00000144  51                push cx
00000145  B9E000            mov cx,0xe0
00000148  D0C0              rol al,0x0
0000014A  7304              jnc 0x150
0000014C  26C60500          mov byte [es:di],0x0
00000150  47                inc di
00000151  E2F5              loop 0x148
00000153  D0C8              ror al,0x0
00000155  D0C8              ror al,0x0
00000157  D0C8              ror al,0x0
00000159  59                pop cx
0000015A  81C7A001          add di,0x1a0
0000015E  E2E4              loop 0x144
00000160  5F                pop di
00000161  81C74001          add di,0x140
00000165  B94800            mov cx,0x48
00000168  51                push cx
00000169  B9E000            mov cx,0xe0
0000016C  D0C8              ror al,0x0
0000016E  7304              jnc 0x174
00000170  26C60500          mov byte [es:di],0x0
00000174  47                inc di
00000175  E2F5              loop 0x16c
00000177  D0C0              rol al,0x0
00000179  D0C0              rol al,0x0
0000017B  D0C0              rol al,0x0
0000017D  59                pop cx
0000017E  81C7A001          add di,0x1a0
00000182  E2E4              loop 0x168
00000184  B9401F            mov cx,0x1f40
00000187  E2FE              loop 0x187
00000189  59                pop cx
0000018A  E2AF              loop 0x13b
0000018C  C3                ret
0000018D  0103              add [bp+di],ax
0000018F  07                pop es
00000190  0F                db 0x0f
00000191  1F                pop ds
00000192  3F                aas
00000193  7FFF              jg 0x194
00000195  2EA22622          mov [cs:0x2226],al
00000199  B800A0            mov ax,0xa000
0000019C  8EC0              mov es,ax
0000019E  33C0              xor ax,ax
000001A0  8AC7              mov al,bh
000001A2  8AFC              mov bh,ah
000001A4  50                push ax
000001A5  81C39E00          add bx,0x9e
000001A9  B84001            mov ax,0x140
000001AC  F7E3              mul bx
000001AE  5B                pop bx
000001AF  03C3              add ax,bx
000001B1  053000            add ax,0x30
000001B4  8BF8              mov di,ax
000001B6  51                push cx
000001B7  33C0              xor ax,ax
000001B9  E81200            call 0x1ce
000001BC  59                pop cx
000001BD  47                inc di
000001BE  8ACD              mov cl,ch
000001C0  51                push cx
000001C1  B8FFFF            mov ax,0xffff
000001C4  E80700            call 0x1ce
000001C7  59                pop cx
000001C8  47                inc di
000001C9  FEC9              dec cl
000001CB  75F3              jnz 0x1c0
000001CD  C3                ret
000001CE  2EF6062622FF      test byte [cs:0x2226],0xff
000001D4  751F              jnz 0x1f5
000001D6  57                push di
000001D7  80E405            and ah,0x5
000001DA  242D              and al,0x2d
000001DC  26C60500          mov byte [es:di],0x0
000001E0  81C74001          add di,0x140
000001E4  B90800            mov cx,0x8
000001E7  268825            mov [es:di],ah
000001EA  81C74001          add di,0x140
000001EE  E2F7              loop 0x1e7
000001F0  268805            mov [es:di],al
000001F3  5F                pop di
000001F4  C3                ret
000001F5  2E803E262280      cmp byte [cs:0x2226],0x80
000001FB  7418              jz 0x215
000001FD  57                push di
000001FE  8AE0              mov ah,al
00000200  F6D4              not ah
00000202  2401              and al,0x1
00000204  B90A00            mov cx,0xa
00000207  262025            and [es:di],ah
0000020A  260805            or [es:di],al
0000020D  81C74001          add di,0x140
00000211  E2F4              loop 0x207
00000213  5F                pop di
00000214  C3                ret
00000215  57                push di
00000216  F6D0              not al
00000218  B90A00            mov cx,0xa
0000021B  262005            and [es:di],al
0000021E  81C74001          add di,0x140
00000222  E2F7              loop 0x21b
00000224  5F                pop di
00000225  C3                ret
00000226  00BF14CC          add [bx-0x33ec],bh
0000022A  2E8B1EB200        mov bx,[cs:0xb2]
0000022F  EB05              jmp 0x236
00000231  BF14DB            mov di,0xdb14
00000234  EB00              jmp 0x236
00000236  B800A0            mov ax,0xa000
00000239  8EC0              mov es,ax
0000023B  E86000            call 0x29e
0000023E  8BCB              mov cx,bx
00000240  0BC9              or cx,cx
00000242  7501              jnz 0x245
00000244  C3                ret
00000245  51                push cx
00000246  57                push di
00000247  B706              mov bh,0x6
00000249  B012              mov al,0x12
0000024B  B42D              mov ah,0x2d
0000024D  E86000            call 0x2b0
00000250  5F                pop di
00000251  47                inc di
00000252  59                pop cx
00000253  E2F0              loop 0x245
00000255  C3                ret
00000256  BF14CC            mov di,0xcc14
00000259  2E8B1E9000        mov bx,[cs:0x90]
0000025E  EB05              jmp 0x265
00000260  BF14DB            mov di,0xdb14
00000263  EB00              jmp 0x265
00000265  B800A0            mov ax,0xa000
00000268  8EC0              mov es,ax
0000026A  E83100            call 0x29e
0000026D  53                push bx
0000026E  8BCB              mov cx,bx
00000270  0BC9              or cx,cx
00000272  7410              jz 0x284
00000274  51                push cx
00000275  57                push di
00000276  B705              mov bh,0x5
00000278  B009              mov al,0x9
0000027A  B412              mov ah,0x12
0000027C  E83100            call 0x2b0
0000027F  5F                pop di
00000280  47                inc di
00000281  59                pop cx
00000282  E2F0              loop 0x274
00000284  5B                pop bx
00000285  B96400            mov cx,0x64
00000288  2BCB              sub cx,bx
0000028A  7501              jnz 0x28d
0000028C  C3                ret
0000028D  51                push cx
0000028E  57                push di
0000028F  B705              mov bh,0x5
00000291  32C0              xor al,al
00000293  B412              mov ah,0x12
00000295  E81800            call 0x2b0
00000298  5F                pop di
00000299  47                inc di
0000029A  59                pop cx
0000029B  E2F0              loop 0x28d
0000029D  C3                ret
0000029E  B82003            mov ax,0x320
000002A1  2BC3              sub ax,bx
000002A3  7207              jc 0x2ac
000002A5  D1EB              shr bx,0x0
000002A7  D1EB              shr bx,0x0
000002A9  D1EB              shr bx,0x0
000002AB  C3                ret
000002AC  BB6400            mov bx,0x64
000002AF  C3                ret
000002B0  262025            and [es:di],ah
000002B3  260805            or [es:di],al
000002B6  81C74001          add di,0x140
000002BA  FECF              dec bh
000002BC  75F2              jnz 0x2b0
000002BE  C3                ret
000002BF  2EC606BD2C1B      mov byte [cs:0x2cbd],0x1b
000002C5  2EC606BE2C12      mov byte [cs:0x2cbe],0x12
000002CB  EB45              jmp 0x312
000002CD  2EC606BD2C09      mov byte [cs:0x2cbd],0x9
000002D3  2EC606BE2C2D      mov byte [cs:0x2cbe],0x2d
000002D9  EB37              jmp 0x312
000002DB  2EC606BD2C09      mov byte [cs:0x2cbd],0x9
000002E1  2EC606BE2C00      mov byte [cs:0x2cbe],0x0
000002E7  33C0              xor ax,ax
000002E9  8AC7              mov al,bh
000002EB  8AFC              mov bh,ah
000002ED  50                push ax
000002EE  B84001            mov ax,0x140
000002F1  F7E3              mul bx
000002F3  5F                pop di
000002F4  03FF              add di,di
000002F6  03FF              add di,di
000002F8  03F8              add di,ax
000002FA  32ED              xor ch,ch
000002FC  03F9              add di,cx
000002FE  B800A0            mov ax,0xa000
00000301  8EC0              mov es,ax
00000303  AC                lodsb
00000304  0AC0              or al,al
00000306  7501              jnz 0x309
00000308  C3                ret
00000309  1E                push ds
0000030A  56                push si
0000030B  E83700            call 0x345
0000030E  5E                pop si
0000030F  1F                pop ds
00000310  EBF1              jmp 0x303
00000312  AC                lodsb
00000313  8AD0              mov dl,al
00000315  32F6              xor dh,dh
00000317  52                push dx
00000318  AC                lodsb
00000319  32E4              xor ah,ah
0000031B  BB4001            mov bx,0x140
0000031E  F7E3              mul bx
00000320  5F                pop di
00000321  03FF              add di,di
00000323  03FF              add di,di
00000325  03F8              add di,ax
00000327  AC                lodsb
00000328  32E4              xor ah,ah
0000032A  8AD8              mov bl,al
0000032C  03F8              add di,ax
0000032E  AC                lodsb
0000032F  32ED              xor ch,ch
00000331  8AC8              mov cl,al
00000333  B800A0            mov ax,0xa000
00000336  8EC0              mov es,ax
00000338  51                push cx
00000339  AC                lodsb
0000033A  1E                push ds
0000033B  56                push si
0000033C  E80600            call 0x345
0000033F  5E                pop si
00000340  1F                pop ds
00000341  59                pop cx
00000342  E2F4              loop 0x338
00000344  C3                ret
00000345  2C20              sub al,0x20
00000347  32E4              xor ah,ah
00000349  D1E0              shl ax,0x0
0000034B  D1E0              shl ax,0x0
0000034D  D1E0              shl ax,0x0
0000034F  8BF0              mov si,ax
00000351  033604F5          add si,[0xf504]
00000355  57                push di
00000356  B308              mov bl,0x8
00000358  53                push bx
00000359  AC                lodsb
0000035A  57                push di
0000035B  8AF0              mov dh,al
0000035D  B204              mov dl,0x4
0000035F  02F6              add dh,dh
00000361  730E              jnc 0x371
00000363  A0BE2C            mov al,[0x2cbe]
00000366  26884501          mov [es:di+0x1],al
0000036A  8A26BD2C          mov ah,[0x2cbd]
0000036E  268825            mov [es:di],ah
00000371  47                inc di
00000372  FECA              dec dl
00000374  75E9              jnz 0x35f
00000376  5F                pop di
00000377  81C74001          add di,0x140
0000037B  5B                pop bx
0000037C  FECB              dec bl
0000037E  75D8              jnz 0x358
00000380  5F                pop di
00000381  83C705            add di,0x5
00000384  C3                ret
00000385  BB1002            mov bx,0x210
00000388  32C0              xor al,al
0000038A  B588              mov ch,0x88
0000038C  E906FE            jmp 0x195
0000038F  1E                push ds
00000390  2EA18B00          mov ax,[cs:0x8b]
00000394  33D2              xor dx,dx
00000396  E88200            call 0x41b
00000399  0E                push cs
0000039A  1F                pop ds
0000039B  BF3524            mov di,0x2435
0000039E  B90501            mov cx,0x105
000003A1  B8BB26            mov ax,0x26bb
000003A4  BB01FF            mov bx,0xff01
000003A7  E8F900            call 0x4a3
000003AA  1F                pop ds
000003AB  C3                ret
000003AC  1E                push ds
000003AD  2EA18600          mov ax,[cs:0x86]
000003B1  2E8A168500        mov dl,[cs:0x85]
000003B6  E86200            call 0x41b
000003B9  0E                push cs
000003BA  1F                pop ds
000003BB  BF3424            mov di,0x2434
000003BE  B90601            mov cx,0x106
000003C1  B8BB13            mov ax,0x13bb
000003C4  BB01FF            mov bx,0xff01
000003C7  E8D900            call 0x4a3
000003CA  1F                pop ds
000003CB  C3                ret
000003CC  1E                push ds
000003CD  33DB              xor bx,bx
000003CF  2E8A1E9D00        mov bl,[cs:0x9d]
000003D4  FECB              dec bl
000003D6  2E8A87AB00        mov al,[cs:bx+0xab]
000003DB  32E4              xor ah,ah
000003DD  33D2              xor dx,dx
000003DF  E83900            call 0x41b
000003E2  0E                push cs
000003E3  1F                pop ds
000003E4  BF3724            mov di,0x2437
000003E7  B90301            mov cx,0x103
000003EA  B8BB37            mov ax,0x37bb
000003ED  BB01FF            mov bx,0xff01
000003F0  E8B000            call 0x4a3
000003F3  1F                pop ds
000003F4  C3                ret
000003F5  2EF6069300FF      test byte [cs:0x93],0xff
000003FB  7501              jnz 0x3fe
000003FD  C3                ret
000003FE  1E                push ds
000003FF  2EA19400          mov ax,[cs:0x94]
00000403  33D2              xor dx,dx
00000405  E81300            call 0x41b
00000408  0E                push cs
00000409  1F                pop ds
0000040A  BF3724            mov di,0x2437
0000040D  B90301            mov cx,0x103
00000410  B8BB3E            mov ax,0x3ebb
00000413  BB01FF            mov bx,0xff01
00000416  E88A00            call 0x4a3
00000419  1F                pop ds
0000041A  C3                ret
0000041B  BF3324            mov di,0x2433
0000041E  E81900            call 0x43a
00000421  B90600            mov cx,0x6
00000424  2EF605FF          test byte [cs:di],0xff
00000428  7401              jz 0x42b
0000042A  C3                ret
0000042B  2EC605FF          mov byte [cs:di],0xff
0000042F  47                inc di
00000430  E2F2              loop 0x424
00000432  C3                ret
00000433  0000              add [bx+si],al
00000435  0000              add [bx+si],al
00000437  0000              add [bx+si],al
00000439  00B10FBB          add [bx+di-0x44f1],dh
0000043D  40                inc ax
0000043E  42                inc dx
0000043F  E83E00            call 0x480
00000442  2E8835            mov [cs:di],dh
00000445  B101              mov cl,0x1
00000447  BBA086            mov bx,0x86a0
0000044A  E83300            call 0x480
0000044D  2E887501          mov [cs:di+0x1],dh
00000451  32C9              xor cl,cl
00000453  BB1027            mov bx,0x2710
00000456  E82700            call 0x480
00000459  2E887502          mov [cs:di+0x2],dh
0000045D  BBE803            mov bx,0x3e8
00000460  E83600            call 0x499
00000463  2E887503          mov [cs:di+0x3],dh
00000467  BB6400            mov bx,0x64
0000046A  E82C00            call 0x499
0000046D  2E887504          mov [cs:di+0x4],dh
00000471  BB0A00            mov bx,0xa
00000474  E82200            call 0x499
00000477  2E887505          mov [cs:di+0x5],dh
0000047B  2E884506          mov [cs:di+0x6],al
0000047F  C3                ret
00000480  32F6              xor dh,dh
00000482  2AD1              sub dl,cl
00000484  7210              jc 0x496
00000486  2BC3              sub ax,bx
00000488  7306              jnc 0x490
0000048A  0AD2              or dl,dl
0000048C  7406              jz 0x494
0000048E  FECA              dec dl
00000490  FEC6              inc dh
00000492  EBEE              jmp 0x482
00000494  03C3              add ax,bx
00000496  02D1              add dl,cl
00000498  C3                ret
00000499  32F6              xor dh,dh
0000049B  F7F3              div bx
0000049D  92                xchg ax,dx
0000049E  8AF2              mov dh,dl
000004A0  32D2              xor dl,dl
000004A2  C3                ret
000004A3  883EBE2C          mov [0x2cbe],bh
000004A7  32FF              xor bh,bh
000004A9  8A97EA24          mov dl,[bx+0x24ea]
000004AD  8816BD2C          mov [0x2cbd],dl
000004B1  33DB              xor bx,bx
000004B3  8ADC              mov bl,ah
000004B5  8AE7              mov ah,bh
000004B7  53                push bx
000004B8  BB4001            mov bx,0x140
000004BB  F7E3              mul bx
000004BD  5B                pop bx
000004BE  03DB              add bx,bx
000004C0  03DB              add bx,bx
000004C2  03D8              add bx,ax
000004C4  D0ED              shr ch,0x0
000004C6  1BC0              sbb ax,ax
000004C8  250200            and ax,0x2
000004CB  03D8              add bx,ax
000004CD  B800A0            mov ax,0xa000
000004D0  8EC0              mov es,ax
000004D2  8A05              mov al,[di]
000004D4  47                inc di
000004D5  53                push bx
000004D6  51                push cx
000004D7  57                push di
000004D8  1E                push ds
000004D9  8BFB              mov di,bx
000004DB  E81400            call 0x4f2
000004DE  1F                pop ds
000004DF  5F                pop di
000004E0  59                pop cx
000004E1  5B                pop bx
000004E2  83C306            add bx,0x6
000004E5  FEC9              dec cl
000004E7  75E9              jnz 0x4d2
000004E9  C3                ret
000004EA  0009              add [bx+di],cl
000004EC  121B              adc bl,[bp+di]
000004EE  242D              and al,0x2d
000004F0  363F              ss aas
000004F2  F606BE2CFF        test byte [0x2cbe],0xff
000004F7  7419              jz 0x512
000004F9  50                push ax
000004FA  57                push di
000004FB  B80505            mov ax,0x505
000004FE  B90700            mov cx,0x7
00000501  51                push cx
00000502  57                push di
00000503  B90300            mov cx,0x3
00000506  F3AB              rep stosw
00000508  5F                pop di
00000509  81C74001          add di,0x140
0000050D  59                pop cx
0000050E  E2F1              loop 0x501
00000510  5F                pop di
00000511  58                pop ax
00000512  FEC0              inc al
00000514  7501              jnz 0x517
00000516  C3                ret
00000517  FEC8              dec al
00000519  32E4              xor ah,ah
0000051B  03C0              add ax,ax
0000051D  03C0              add ax,ax
0000051F  03C0              add ax,ax
00000521  2E030602F5        add ax,[cs:0xf502]
00000526  8BF0              mov si,ax
00000528  0E                push cs
00000529  1F                pop ds
0000052A  B90700            mov cx,0x7
0000052D  AC                lodsb
0000052E  02C0              add al,al
00000530  02C0              add al,al
00000532  B406              mov ah,0x6
00000534  02C0              add al,al
00000536  7308              jnc 0x540
00000538  2E8A1EBD2C        mov bl,[cs:0x2cbd]
0000053D  26881D            mov [es:di],bl
00000540  47                inc di
00000541  FECC              dec ah
00000543  75EF              jnz 0x534
00000545  81C73A01          add di,0x13a
00000549  E2E2              loop 0x52d
0000054B  C3                ret
0000054C  1E                push ds
0000054D  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000552  FEC8              dec al
00000554  32E4              xor ah,ah
00000556  B90E01            mov cx,0x10e
00000559  F7E1              mul cx
0000055B  030600E2          add ax,[0xe200]
0000055F  8BF0              mov si,ax
00000561  33C0              xor ax,ax
00000563  8AC7              mov al,bh
00000565  8AFC              mov bh,ah
00000567  50                push ax
00000568  B84001            mov ax,0x140
0000056B  F7E3              mul bx
0000056D  5D                pop bp
0000056E  03ED              add bp,bp
00000570  03ED              add bp,bp
00000572  03ED              add bp,bp
00000574  03E8              add bp,ax
00000576  B800A0            mov ax,0xa000
00000579  8EC0              mov es,ax
0000057B  B91200            mov cx,0x12
0000057E  51                push cx
0000057F  8B04              mov ax,[si]
00000581  86E0              xchg ah,al
00000583  2EA3C32C          mov [cs:0x2cc3],ax
00000587  8B4408            mov ax,[si+0x8]
0000058A  2EA3C52C          mov [cs:0x2cc5],ax
0000058E  8B440A            mov ax,[si+0xa]
00000591  86E0              xchg ah,al
00000593  2EA3C72C          mov [cs:0x2cc7],ax
00000597  E81802            call 0x7b2
0000059A  E81502            call 0x7b2
0000059D  8B4402            mov ax,[si+0x2]
000005A0  86E0              xchg ah,al
000005A2  2EA3C32C          mov [cs:0x2cc3],ax
000005A6  8B4406            mov ax,[si+0x6]
000005A9  2EA3C52C          mov [cs:0x2cc5],ax
000005AD  8B440C            mov ax,[si+0xc]
000005B0  86E0              xchg ah,al
000005B2  2EA3C72C          mov [cs:0x2cc7],ax
000005B6  E8F901            call 0x7b2
000005B9  E8F601            call 0x7b2
000005BC  32C0              xor al,al
000005BE  8A6404            mov ah,[si+0x4]
000005C1  2EA3C32C          mov [cs:0x2cc3],ax
000005C5  8A6405            mov ah,[si+0x5]
000005C8  2EA3C52C          mov [cs:0x2cc5],ax
000005CC  8A640E            mov ah,[si+0xe]
000005CF  2EA3C72C          mov [cs:0x2cc7],ax
000005D3  E8DC01            call 0x7b2
000005D6  83C60F            add si,0xf
000005D9  81C52C01          add bp,0x12c
000005DD  59                pop cx
000005DE  E29E              loop 0x57e
000005E0  1F                pop ds
000005E1  C3                ret
000005E2  1E                push ds
000005E3  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000005E8  FEC8              dec al
000005EA  32E4              xor ah,ah
000005EC  B9C000            mov cx,0xc0
000005EF  F7E1              mul cx
000005F1  030606E2          add ax,[0xe206]
000005F5  8BF0              mov si,ax
000005F7  E84E01            call 0x748
000005FA  1F                pop ds
000005FB  C3                ret
000005FC  1E                push ds
000005FD  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000602  FEC8              dec al
00000604  32E4              xor ah,ah
00000606  B9C000            mov cx,0xc0
00000609  F7E1              mul cx
0000060B  030602E2          add ax,[0xe202]
0000060F  8BF0              mov si,ax
00000611  E83401            call 0x748
00000614  1F                pop ds
00000615  C3                ret
00000616  1E                push ds
00000617  BE5826            mov si,0x2658
0000061A  0AC0              or al,al
0000061C  7414              jz 0x632
0000061E  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000623  FEC8              dec al
00000625  32E4              xor ah,ah
00000627  B9C000            mov cx,0xc0
0000062A  F7E1              mul cx
0000062C  03060CE2          add ax,[0xe20c]
00000630  8BF0              mov si,ax
00000632  E81301            call 0x748
00000635  1F                pop ds
00000636  C3                ret
00000637  1E                push ds
00000638  BE5826            mov si,0x2658
0000063B  0AC0              or al,al
0000063D  7414              jz 0x653
0000063F  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000644  FEC8              dec al
00000646  32E4              xor ah,ah
00000648  B9C000            mov cx,0xc0
0000064B  F7E1              mul cx
0000064D  03060AE2          add ax,[0xe20a]
00000651  8BF0              mov si,ax
00000653  E8F200            call 0x748
00000656  1F                pop ds
00000657  C3                ret
00000658  0000              add [bx+si],al
0000065A  0000              add [bx+si],al
0000065C  FC                cld
0000065D  FF                db 0xff
0000065E  FF                db 0xff
0000065F  3F                aas
00000660  2AAAAAA8          sub ch,[bp+si-0x5756]
00000664  0000              add [bx+si],al
00000666  0000              add [bx+si],al
00000668  0300              add ax,[bx+si]
0000066A  00C0              add al,al
0000066C  800000            add byte [bx+si],0x0
0000066F  020E38F8          add cl,[0xf838]
00000673  0003              add [bp+di],al
00000675  0000              add [bx+si],al
00000677  C082080802        rol byte [bp+si+0x808],byte 0x2
0000067C  0FBB8E0003        btc [bp+0x300],cx
00000681  0000              add [bx+si],al
00000683  C080888202        rol byte [bx+si-0x7d78],byte 0x2
00000688  0FFB8E0003        psubq mm1,[bp+0x300]
0000068D  0000              add [bx+si],al
0000068F  C080088202        rol byte [bx+si-0x7df8],byte 0x2
00000694  0E                push cs
00000695  FB                sti
00000696  8E00              mov es,word [bx+si]
00000698  0300              add ax,[bx+si]
0000069A  00C0              add al,al
0000069C  82                db 0x82
0000069D  0882020E          or [bp+si+0xe02],al
000006A1  38F8              cmp al,bh
000006A3  0003              add [bp+di],al
000006A5  0000              add [bx+si],al
000006A7  C082080802        rol byte [bp+si+0x808],byte 0x2
000006AC  0000              add [bx+si],al
000006AE  0000              add [bx+si],al
000006B0  0300              add ax,[bx+si]
000006B2  00C0              add al,al
000006B4  800000            add byte [bx+si],0x0
000006B7  0200              add al,[bx+si]
000006B9  0000              add [bx+si],al
000006BB  0003              add [bp+di],al
000006BD  0000              add [bx+si],al
000006BF  C080000002        rol byte [bx+si+0x0],byte 0x2
000006C4  0E                push cs
000006C5  38FB              cmp bl,bh
000006C7  F8                clc
000006C8  0300              add ax,[bx+si]
000006CA  00C0              add al,al
000006CC  82                db 0x82
000006CD  0808              or [bx+si],cl
000006CF  0A0E3B83          or cl,[0x833b]
000006D3  800300            add byte [bp+di],0x0
000006D6  00C0              add al,al
000006D8  82                db 0x82
000006D9  0880820E          or [bx+si+0xe82],al
000006DD  38E3              cmp bl,ah
000006DF  C00300            rol byte [bp+di],byte 0x0
000006E2  00C0              add al,al
000006E4  82                db 0x82
000006E5  0820              or [bx+si],ah
000006E7  020E383B          add cl,[0x3b38]
000006EB  800300            add byte [bp+di],0x0
000006EE  00C0              add al,al
000006F0  82                db 0x82
000006F1  0808              or [bx+si],cl
000006F3  82                db 0x82
000006F4  03E3              add sp,bx
000006F6  E3F8              jcxz 0x6f0
000006F8  0300              add ax,[bx+si]
000006FA  00C0              add al,al
000006FC  802020            and byte [bx+si],0x20
000006FF  0A00              or al,[bx+si]
00000701  0000              add [bx+si],al
00000703  0003              add [bp+di],al
00000705  0000              add [bx+si],al
00000707  C080000002        rol byte [bx+si+0x0],byte 0x2
0000070C  0000              add [bx+si],al
0000070E  0000              add [bx+si],al
00000710  FC                cld
00000711  FF                db 0xff
00000712  FF                db 0xff
00000713  3F                aas
00000714  2AAAAAA8          sub ch,[bp+si-0x5756]
00000718  1E                push ds
00000719  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000071E  32E4              xor ah,ah
00000720  B9C000            mov cx,0xc0
00000723  F7E1              mul cx
00000725  030608E2          add ax,[0xe208]
00000729  8BF0              mov si,ax
0000072B  E81A00            call 0x748
0000072E  1F                pop ds
0000072F  C3                ret
00000730  1E                push ds
00000731  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000736  32E4              xor ah,ah
00000738  B9C000            mov cx,0xc0
0000073B  F7E1              mul cx
0000073D  030604E2          add ax,[0xe204]
00000741  8BF0              mov si,ax
00000743  E80200            call 0x748
00000746  1F                pop ds
00000747  C3                ret
00000748  33C0              xor ax,ax
0000074A  8AC7              mov al,bh
0000074C  8AFC              mov bh,ah
0000074E  50                push ax
0000074F  B84001            mov ax,0x140
00000752  F7E3              mul bx
00000754  5D                pop bp
00000755  03ED              add bp,bp
00000757  03ED              add bp,bp
00000759  83C502            add bp,0x2
0000075C  03E8              add bp,ax
0000075E  B800A0            mov ax,0xa000
00000761  8EC0              mov es,ax
00000763  B91000            mov cx,0x10
00000766  51                push cx
00000767  8B04              mov ax,[si]
00000769  86E0              xchg ah,al
0000076B  2EA3C32C          mov [cs:0x2cc3],ax
0000076F  8B4406            mov ax,[si+0x6]
00000772  2EA3C52C          mov [cs:0x2cc5],ax
00000776  8B4408            mov ax,[si+0x8]
00000779  86E0              xchg ah,al
0000077B  2EA3C72C          mov [cs:0x2cc7],ax
0000077F  E83000            call 0x7b2
00000782  E82D00            call 0x7b2
00000785  8B5402            mov dx,[si+0x2]
00000788  86F2              xchg dh,dl
0000078A  2E8916C32C        mov [cs:0x2cc3],dx
0000078F  8B5404            mov dx,[si+0x4]
00000792  2E8916C52C        mov [cs:0x2cc5],dx
00000797  8B540A            mov dx,[si+0xa]
0000079A  86F2              xchg dh,dl
0000079C  2E8916C72C        mov [cs:0x2cc7],dx
000007A1  E80E00            call 0x7b2
000007A4  E80B00            call 0x7b2
000007A7  83C60C            add si,0xc
000007AA  81C53001          add bp,0x130
000007AE  59                pop cx
000007AF  E2B5              loop 0x766
000007B1  C3                ret
000007B2  B90400            mov cx,0x4
000007B5  33C0              xor ax,ax
000007B7  2ED106C72C        rol word [cs:0x2cc7],0x0
000007BC  13C0              adc ax,ax
000007BE  2ED106C52C        rol word [cs:0x2cc5],0x0
000007C3  13C0              adc ax,ax
000007C5  2ED106C32C        rol word [cs:0x2cc3],0x0
000007CA  13C0              adc ax,ax
000007CC  2ED106C72C        rol word [cs:0x2cc7],0x0
000007D1  13C0              adc ax,ax
000007D3  2ED106C52C        rol word [cs:0x2cc5],0x0
000007D8  13C0              adc ax,ax
000007DA  2ED106C32C        rol word [cs:0x2cc3],0x0
000007DF  13C0              adc ax,ax
000007E1  26884600          mov [es:bp+0x0],al
000007E5  45                inc bp
000007E6  E2CD              loop 0x7b5
000007E8  C3                ret
000007E9  1E                push ds
000007EA  0E                push cs
000007EB  1F                pop ds
000007EC  53                push bx
000007ED  33DB              xor bx,bx
000007EF  8ADC              mov bl,ah
000007F1  8AA7EA24          mov ah,[bx+0x24ea]
000007F5  2EF60677FFFF      test byte [cs:0xff77],0xff
000007FB  740C              jz 0x809
000007FD  8AE3              mov ah,bl
000007FF  02E4              add ah,ah
00000801  02E4              add ah,ah
00000803  02E4              add ah,ah
00000805  02E4              add ah,ah
00000807  0AE3              or ah,bl
00000809  8826BD2C          mov [0x2cbd],ah
0000080D  5B                pop bx
0000080E  32E4              xor ah,ah
00000810  2C20              sub al,0x20
00000812  03C0              add ax,ax
00000814  03C0              add ax,ax
00000816  03C0              add ax,ax
00000818  030600F5          add ax,[0xf500]
0000081C  50                push ax
0000081D  8AC3              mov al,bl
0000081F  2403              and al,0x3
00000821  02C0              add al,al
00000823  A2BE2C            mov [0x2cbe],al
00000826  B84001            mov ax,0x140
00000829  32ED              xor ch,ch
0000082B  F7E1              mul cx
0000082D  03C3              add ax,bx
0000082F  8BF8              mov di,ax
00000831  5E                pop si
00000832  B800A0            mov ax,0xa000
00000835  8EC0              mov es,ax
00000837  B90800            mov cx,0x8
0000083A  51                push cx
0000083B  AC                lodsb
0000083C  B90800            mov cx,0x8
0000083F  02C0              add al,al
00000841  7308              jnc 0x84b
00000843  2E8A16BD2C        mov dl,[cs:0x2cbd]
00000848  268815            mov [es:di],dl
0000084B  47                inc di
0000084C  E2F1              loop 0x83f
0000084E  59                pop cx
0000084F  81C73801          add di,0x138
00000853  E2E5              loop 0x83a
00000855  1F                pop ds
00000856  C3                ret
00000857  1E                push ds
00000858  33C0              xor ax,ax
0000085A  8AC7              mov al,bh
0000085C  8AFC              mov bh,ah
0000085E  50                push ax
0000085F  B84001            mov ax,0x140
00000862  F7E3              mul bx
00000864  5F                pop di
00000865  03FF              add di,di
00000867  03FF              add di,di
00000869  03FF              add di,di
0000086B  03F8              add di,ax
0000086D  8BF7              mov si,di
0000086F  81C64001          add si,0x140
00000873  B800A0            mov ax,0xa000
00000876  8EC0              mov es,ax
00000878  8ED8              mov ds,ax
0000087A  8ADD              mov bl,ch
0000087C  32FF              xor bh,bh
0000087E  03DB              add bx,bx
00000880  03DB              add bx,bx
00000882  32ED              xor ch,ch
00000884  51                push cx
00000885  57                push di
00000886  56                push si
00000887  8BCB              mov cx,bx
00000889  F3A5              rep movsw
0000088B  5E                pop si
0000088C  5F                pop di
0000088D  81C74001          add di,0x140
00000891  81C64001          add si,0x140
00000895  59                pop cx
00000896  E2EC              loop 0x884
00000898  1F                pop ds
00000899  C3                ret
0000089A  1E                push ds
0000089B  83C700            add di,0x0
0000089E  33DB              xor bx,bx
000008A0  8ADC              mov bl,ah
000008A2  8AE7              mov ah,bh
000008A4  53                push bx
000008A5  BB4001            mov bx,0x140
000008A8  F7E3              mul bx
000008AA  5E                pop si
000008AB  03F6              add si,si
000008AD  03F6              add si,si
000008AF  03F6              add si,si
000008B1  03F0              add si,ax
000008B3  8CC8              mov ax,cs
000008B5  050030            add ax,0x3000
000008B8  8EC0              mov es,ax
000008BA  B800A0            mov ax,0xa000
000008BD  8ED8              mov ds,ax
000008BF  8ADD              mov bl,ch
000008C1  32FF              xor bh,bh
000008C3  8AEF              mov ch,bh
000008C5  03DB              add bx,bx
000008C7  03DB              add bx,bx
000008C9  51                push cx
000008CA  56                push si
000008CB  8BCB              mov cx,bx
000008CD  F3A5              rep movsw
000008CF  5E                pop si
000008D0  81C64001          add si,0x140
000008D4  59                pop cx
000008D5  E2F2              loop 0x8c9
000008D7  1F                pop ds
000008D8  C3                ret
000008D9  1E                push ds
000008DA  8BF7              mov si,di
000008DC  83C600            add si,0x0
000008DF  33DB              xor bx,bx
000008E1  8ADC              mov bl,ah
000008E3  8AE7              mov ah,bh
000008E5  53                push bx
000008E6  BB4001            mov bx,0x140
000008E9  F7E3              mul bx
000008EB  5F                pop di
000008EC  03FF              add di,di
000008EE  03FF              add di,di
000008F0  03FF              add di,di
000008F2  03F8              add di,ax
000008F4  8CC8              mov ax,cs
000008F6  050030            add ax,0x3000
000008F9  8ED8              mov ds,ax
000008FB  B800A0            mov ax,0xa000
000008FE  8EC0              mov es,ax
00000900  8ADD              mov bl,ch
00000902  32FF              xor bh,bh
00000904  8AEF              mov ch,bh
00000906  03DB              add bx,bx
00000908  03DB              add bx,bx
0000090A  51                push cx
0000090B  57                push di
0000090C  8BCB              mov cx,bx
0000090E  F3A5              rep movsw
00000910  5F                pop di
00000911  81C74001          add di,0x140
00000915  59                pop cx
00000916  E2F2              loop 0x90a
00000918  1F                pop ds
00000919  C3                ret
0000091A  2E891EC02C        mov [cs:0x2cc0],bx
0000091F  2E880EC22C        mov [cs:0x2cc2],cl
00000924  B001              mov al,0x1
00000926  2EF60677FFFF      test byte [cs:0xff77],0xff
0000092C  7402              jz 0x930
0000092E  B007              mov al,0x7
00000930  2EA2BF2C          mov [cs:0x2cbf],al
00000934  AC                lodsb
00000935  3CFF              cmp al,0xff
00000937  7501              jnz 0x93a
00000939  C3                ret
0000093A  3C0D              cmp al,0xd
0000093C  7417              jz 0x955
0000093E  0AC0              or al,al
00000940  7825              js 0x967
00000942  51                push cx
00000943  53                push bx
00000944  56                push si
00000945  2E8A26BF2C        mov ah,[cs:0x2cbf]
0000094A  E89CFE            call 0x7e9
0000094D  5E                pop si
0000094E  5B                pop bx
0000094F  59                pop cx
00000950  83C308            add bx,0x8
00000953  EBDF              jmp 0x934
00000955  2E8006C22C08      add byte [cs:0x2cc2],0x8
0000095B  2E8A0EC22C        mov cl,[cs:0x2cc2]
00000960  2E8B1EC02C        mov bx,[cs:0x2cc0]
00000965  EBCD              jmp 0x934
00000967  2407              and al,0x7
00000969  2EA2BF2C          mov [cs:0x2cbf],al
0000096D  EBC5              jmp 0x934
0000096F  1E                push ds
00000970  52                push dx
00000971  33C0              xor ax,ax
00000973  8AC7              mov al,bh
00000975  8AFC              mov bh,ah
00000977  50                push ax
00000978  B84001            mov ax,0x140
0000097B  F7E3              mul bx
0000097D  5E                pop si
0000097E  03F6              add si,si
00000980  03F6              add si,si
00000982  03F6              add si,si
00000984  03F0              add si,ax
00000986  5B                pop bx
00000987  33C0              xor ax,ax
00000989  8AC7              mov al,bh
0000098B  8AFC              mov bh,ah
0000098D  50                push ax
0000098E  B84001            mov ax,0x140
00000991  F7E3              mul bx
00000993  5F                pop di
00000994  03FF              add di,di
00000996  03FF              add di,di
00000998  03FF              add di,di
0000099A  03F8              add di,ax
0000099C  B800A0            mov ax,0xa000
0000099F  8EC0              mov es,ax
000009A1  8ED8              mov ds,ax
000009A3  8ADD              mov bl,ch
000009A5  32FF              xor bh,bh
000009A7  03DB              add bx,bx
000009A9  03DB              add bx,bx
000009AB  32ED              xor ch,ch
000009AD  51                push cx
000009AE  57                push di
000009AF  56                push si
000009B0  8BCB              mov cx,bx
000009B2  F3A5              rep movsw
000009B4  5E                pop si
000009B5  5F                pop di
000009B6  81C74001          add di,0x140
000009BA  81C64001          add si,0x140
000009BE  59                pop cx
000009BF  E2EC              loop 0x9ad
000009C1  1F                pop ds
000009C2  C3                ret
000009C3  53                push bx
000009C4  33DB              xor bx,bx
000009C6  8AD8              mov bl,al
000009C8  8A87EA24          mov al,[bx+0x24ea]
000009CC  A2BD2C            mov [0x2cbd],al
000009CF  5B                pop bx
000009D0  33C0              xor ax,ax
000009D2  8AC7              mov al,bh
000009D4  8AFC              mov bh,ah
000009D6  50                push ax
000009D7  B84001            mov ax,0x140
000009DA  F7E3              mul bx
000009DC  5F                pop di
000009DD  03FF              add di,di
000009DF  03FF              add di,di
000009E1  03F8              add di,ax
000009E3  B800A0            mov ax,0xa000
000009E6  8EC0              mov es,ax
000009E8  E81B00            call 0xa06
000009EB  A0BD2C            mov al,[0x2cbd]
000009EE  B91000            mov cx,0x10
000009F1  268805            mov [es:di],al
000009F4  26884501          mov [es:di+0x1],al
000009F8  26884512          mov [es:di+0x12],al
000009FC  26884513          mov [es:di+0x13],al
00000A00  81C74001          add di,0x140
00000A04  E2EB              loop 0x9f1
00000A06  B90200            mov cx,0x2
00000A09  51                push cx
00000A0A  57                push di
00000A0B  A0BD2C            mov al,[0x2cbd]
00000A0E  B91400            mov cx,0x14
00000A11  F3AA              rep stosb
00000A13  5F                pop di
00000A14  81C74001          add di,0x140
00000A18  59                pop cx
00000A19  E2EE              loop 0xa09
00000A1B  C3                ret
00000A1C  1E                push ds
00000A1D  56                push si
00000A1E  0E                push cs
00000A1F  1F                pop ds
00000A20  32E4              xor ah,ah
00000A22  03C0              add ax,ax
00000A24  8BF0              mov si,ax
00000A26  33C0              xor ax,ax
00000A28  8AC7              mov al,bh
00000A2A  8AFC              mov bh,ah
00000A2C  50                push ax
00000A2D  B84001            mov ax,0x140
00000A30  F7E3              mul bx
00000A32  5F                pop di
00000A33  03FF              add di,di
00000A35  03FF              add di,di
00000A37  03F8              add di,ax
00000A39  B800A0            mov ax,0xa000
00000A3C  8EC0              mov es,ax
00000A3E  8BB45D2A          mov si,[si+0x2a5d]
00000A42  B90D00            mov cx,0xd
00000A45  51                push cx
00000A46  B91000            mov cx,0x10
00000A49  AC                lodsb
00000A4A  3C80              cmp al,0x80
00000A4C  7402              jz 0xa50
00000A4E  AA                stosb
00000A4F  4F                dec di
00000A50  47                inc di
00000A51  E2F6              loop 0xa49
00000A53  59                pop cx
00000A54  81C73001          add di,0x130
00000A58  E2EB              loop 0xa45
00000A5A  5E                pop si
00000A5B  1F                pop ds
00000A5C  C3                ret
00000A5D  61                popa
00000A5E  2A31              sub dh,[bx+di]
00000A60  2B808080          sub ax,[bx+si-0x7f80]
00000A64  8080800000        add byte [bx+si+0x80],0x0
00000A69  0000              add [bx+si],al
00000A6B  800080            add byte [bx+si],0x80
00000A6E  8080808080        add byte [bx+si-0x7f80],0x80
00000A73  8080000011        add byte [bx+si+0x0],0x11
00000A78  1111              adc [bx+di],dx
00000A7A  1200              adc al,[bx+si]
00000A7C  00808080          add [bx+si-0x7f80],al
00000A80  8080808080        add byte [bx+si-0x7f80],0x80
00000A85  0011              add [bx+di],dl
00000A87  1109              adc [bx+di],cx
00000A89  0901              or [bx+di],ax
00000A8B  1200              adc al,[bx+si]
00000A8D  8080808080        add byte [bx+si-0x7f80],0x80
00000A92  8080800011        add byte [bx+si+0x80],0x11
00000A97  0909              or [bx+di],cx
00000A99  0928              or [bx+si],bp
00000A9B  2A10              sub dl,[bx+si]
00000A9D  8080808080        add byte [bx+si-0x7f80],0x80
00000AA2  8080801115        add byte [bx+si+0x1180],0x15
00000AA7  0109              add [bx+di],cx
00000AA9  0D0505            or ax,0x505
00000AAC  1200              adc al,[bx+si]
00000AAE  8080808080        add byte [bx+si-0x7f80],0x80
00000AB3  8080111028        add byte [bx+si+0x1011],0x28
00000AB8  282D              sub [di],ch
00000ABA  2828              sub [bx+si],ch
00000ABC  1200              adc al,[bx+si]
00000ABE  8080808080        add byte [bx+si-0x7f80],0x80
00000AC3  8080121505        add byte [bx+si+0x1512],0x5
00000AC8  050505            add ax,0x505
00000ACB  051200            add ax,0x12
00000ACE  8080808080        add byte [bx+si-0x7f80],0x80
00000AD3  8080001205        add byte [bx+si+0x1200],0x5
00000AD8  2D2D05            sub ax,0x52d
00000ADB  150280            adc ax,0x8002
00000ADE  8080808080        add byte [bx+si-0x7f80],0x80
00000AE3  8080000202        add byte [bx+si+0x200],0x2
00000AE8  2D2D05            sub ax,0x52d
00000AEB  1200              adc al,[bx+si]
00000AED  8080808080        add byte [bx+si-0x7f80],0x80
00000AF2  8080800000        add byte [bx+si+0x80],0x0
00000AF7  0212              add dl,[bp+si]
00000AF9  1212              adc dl,[bp+si]
00000AFB  0000              add [bx+si],al
00000AFD  8080808080        add byte [bx+si-0x7f80],0x80
00000B02  8080800000        add byte [bx+si+0x80],0x0
00000B07  800000            add byte [bx+si],0x0
00000B0A  00800080          add [bx+si-0x8000],al
00000B0E  8080808080        add byte [bx+si-0x7f80],0x80
00000B13  8080808080        add byte [bx+si-0x7f80],0x80
00000B18  8080808080        add byte [bx+si-0x7f80],0x80
00000B1D  8080808080        add byte [bx+si-0x7f80],0x80
00000B22  8080808080        add byte [bx+si-0x7f80],0x80
00000B27  8080808080        add byte [bx+si-0x7f80],0x80
00000B2C  8080808080        add byte [bx+si-0x7f80],0x80
00000B31  8080808000        add byte [bx+si-0x7f80],0x0
00000B36  0109              add [bx+di],cx
00000B38  0909              or [bx+di],cx
00000B3A  1B03              sbb ax,[bp+di]
00000B3C  00808080          add [bx+si-0x7f80],al
00000B40  8080808000        add byte [bx+si-0x7f80],0x0
00000B45  0909              or [bx+di],cx
00000B47  0000              add [bx+si],al
00000B49  0000              add [bx+si],al
00000B4B  031B              add bx,[bp+di]
00000B4D  00808080          add [bx+si-0x7f80],al
00000B51  8080000901        add byte [bx+si+0x900],0x1
00000B56  0001              add [bx+di],al
00000B58  0901              or [bx+di],ax
00000B5A  0000              add [bx+si],al
00000B5C  0303              add ax,[bp+di]
00000B5E  00808080          add [bx+si-0x7f80],al
00000B62  800109            add byte [bx+di],0x9
00000B65  0009              add [bx+di],cl
00000B67  0901              or [bx+di],ax
00000B69  0000              add [bx+si],al
00000B6B  0100              add [bx+si],ax
00000B6D  0303              add ax,[bp+di]
00000B6F  8080800009        add byte [bx+si+0x80],0x9
00000B74  0101              add [bx+di],ax
00000B76  0909              or [bx+di],cx
00000B78  0000              add [bx+si],al
00000B7A  0000              add [bx+si],al
00000B7C  0103              add [bp+di],ax
00000B7E  0300              add ax,[bx+si]
00000B80  8080000900        add byte [bx+si+0x900],0x0
00000B85  0901              or [bx+di],ax
00000B87  0000              add [bx+si],al
00000B89  0202              add al,[bp+si]
00000B8B  0000              add [bx+si],al
00000B8D  000B              add [bp+di],cl
00000B8F  00808000          add [bx+si+0x80],al
00000B93  0900              or [bx+si],ax
00000B95  0100              add [bx+si],ax
00000B97  0002              add [bp+si],al
00000B99  0202              add al,[bp+si]
00000B9B  0202              add al,[bp+si]
00000B9D  020B              add cl,[bp+di]
00000B9F  00808000          add [bx+si+0x80],al
00000BA3  0903              or [bp+di],ax
00000BA5  0102              add [bp+si],ax
00000BA7  0202              add al,[bp+si]
00000BA9  1212              adc dl,[bp+si]
00000BAB  1202              adc al,[bp+si]
00000BAD  010B              add [bp+di],cx
00000BAF  00808080          add [bx+si-0x7f80],al
00000BB3  011B              add [bp+di],bx
00000BB5  0201              add al,[bx+di]
00000BB7  0212              add dl,[bp+si]
00000BB9  1212              adc dl,[bp+si]
00000BBB  1202              adc al,[bp+si]
00000BBD  0901              or [bx+di],ax
00000BBF  8080808000        add byte [bx+si-0x7f80],0x0
00000BC4  0B03              or ax,[bp+di]
00000BC6  020A              add cl,[bp+si]
00000BC8  0112              add [bp+si],dx
00000BCA  1212              adc dl,[bp+si]
00000BCC  0109              add [bx+di],cx
00000BCE  00808080          add [bx+si-0x7f80],al
00000BD2  8080001B03        add byte [bx+si+0x1b00],0x3
00000BD7  0200              add al,[bx+si]
00000BD9  0202              add al,[bp+si]
00000BDB  0109              add [bx+di],cx
00000BDD  00808080          add [bx+si-0x7f80],al
00000BE1  8080808000        add byte [bx+si-0x7f80],0x0
00000BE6  0301              add ax,[bx+di]
00000BE8  0303              add ax,[bp+di]
00000BEA  0103              add [bp+di],ax
00000BEC  00808080          add [bx+si-0x7f80],al
00000BF0  8080808080        add byte [bx+si-0x7f80],0x80
00000BF5  800000            add byte [bx+si],0x0
00000BF8  0000              add [bx+si],al
00000BFA  0000              add [bx+si],al
00000BFC  8080808080        add byte [bx+si-0x7f80],0x80
00000C01  B800A0            mov ax,0xa000
00000C04  8EC0              mov es,ax
00000C06  33FF              xor di,di
00000C08  B90800            mov cx,0x8
00000C0B  51                push cx
00000C0C  57                push di
00000C0D  B91900            mov cx,0x19
00000C10  51                push cx
00000C11  57                push di
00000C12  B9A000            mov cx,0xa0
00000C15  33C0              xor ax,ax
00000C17  F3AB              rep stosw
00000C19  5F                pop di
00000C1A  81C7000A          add di,0xa00
00000C1E  59                pop cx
00000C1F  E2EF              loop 0xc10
00000C21  5F                pop di
00000C22  81C74001          add di,0x140
00000C26  59                pop cx
00000C27  E2E2              loop 0xc0b
00000C29  C3                ret
00000C2A  51                push cx
00000C2B  1E                push ds
00000C2C  56                push si
00000C2D  8CC8              mov ax,cs
00000C2F  050030            add ax,0x3000
00000C32  8EC0              mov es,ax
00000C34  B83000            mov ax,0x30
00000C37  F7E1              mul cx
00000C39  8BC8              mov cx,ax
00000C3B  BF0000            mov di,0x0
00000C3E  F3A4              rep movsb
00000C40  5F                pop di
00000C41  07                pop es
00000C42  59                pop cx
00000C43  8CC8              mov ax,cs
00000C45  050030            add ax,0x3000
00000C48  8ED8              mov ds,ax
00000C4A  BE0000            mov si,0x0
00000C4D  51                push cx
00000C4E  E80400            call 0xc55
00000C51  59                pop cx
00000C52  E2F9              loop 0xc4d
00000C54  C3                ret
00000C55  B90800            mov cx,0x8
00000C58  51                push cx
00000C59  AD                lodsw
00000C5A  86E0              xchg ah,al
00000C5C  2EA3C32C          mov [cs:0x2cc3],ax
00000C60  AD                lodsw
00000C61  86E0              xchg ah,al
00000C63  2EA3C52C          mov [cs:0x2cc5],ax
00000C67  AD                lodsw
00000C68  86E0              xchg ah,al
00000C6A  2EA3C72C          mov [cs:0x2cc7],ax
00000C6E  E80400            call 0xc75
00000C71  59                pop cx
00000C72  E2E4              loop 0xc58
00000C74  C3                ret
00000C75  B90200            mov cx,0x2
00000C78  E82C00            call 0xca7
00000C7B  E82900            call 0xca7
00000C7E  E82600            call 0xca7
00000C81  E82300            call 0xca7
00000C84  E82000            call 0xca7
00000C87  2ED106C72C        rol word [cs:0x2cc7],0x0
00000C8C  13C0              adc ax,ax
00000C8E  AB                stosw
00000C8F  2ED106C52C        rol word [cs:0x2cc5],0x0
00000C94  13C0              adc ax,ax
00000C96  2ED106C32C        rol word [cs:0x2cc3],0x0
00000C9B  13C0              adc ax,ax
00000C9D  E80700            call 0xca7
00000CA0  E80400            call 0xca7
00000CA3  AA                stosb
00000CA4  E2D2              loop 0xc78
00000CA6  C3                ret
00000CA7  2ED106C72C        rol word [cs:0x2cc7],0x0
00000CAC  13C0              adc ax,ax
00000CAE  2ED106C52C        rol word [cs:0x2cc5],0x0
00000CB3  13C0              adc ax,ax
00000CB5  2ED106C32C        rol word [cs:0x2cc3],0x0
00000CBA  13C0              adc ax,ax
00000CBC  C3                ret
00000CBD  0000              add [bx+si],al
00000CBF  0000              add [bx+si],al
00000CC1  0000              add [bx+si],al
00000CC3  0000              add [bx+si],al
00000CC5  0000              add [bx+si],al
00000CC7  0000              add [bx+si],al
