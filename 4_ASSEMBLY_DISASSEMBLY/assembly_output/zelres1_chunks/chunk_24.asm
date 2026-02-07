00000000  DD10              fst qword [bx+si]
00000002  0000              add [bx+si],al
00000004  0007              add [bx],al
00000006  DD1A              fstp qword [bp+si]
00000008  0481              add al,0x81
0000000A  F380001F          rep add byte [bx+si],0x1f
0000000E  3800              cmp [bx+si],al
00000010  01F7              add di,si
00000012  80001F            add byte [bx+si],0x1f
00000015  7800              js 0x17
00000017  01F7              add di,si
00000019  80001F            add byte [bx+si],0x1f
0000001C  E80001            call 0x11f
0000001F  FF80000F          inc word [bx+si+0xf00]
00000023  FC                cld
00000024  0000              add [bx+si],al
00000026  FFC0              inc ax
00000028  000F              add [bx],cl
0000002A  FC                cld
0000002B  0000              add [bx+si],al
0000002D  EBC0              jmp 0xffef
0000002F  000EFC00          add [0xfc],cl
00000033  00E7              add bh,ah
00000035  C0000A            rol byte [bx+si],byte 0xa
00000038  DC00              fadd qword [bx+si]
0000003A  00ABC000          add [bp+di+0xc0],ch
0000003E  083C              or [si],bh
00000040  0000              add [bx+si],al
00000042  C7                db 0xc7
00000043  E000              loopne 0x45
00000045  0C7E              or al,0x7e
00000047  0000              add [bx+si],al
00000049  EF                out dx,ax
0000004A  E000              loopne 0x4c
0000004C  0FBF00            movsx ax,word [bx+si]
0000004F  00FD              add ch,bh
00000051  F0000F            lock add [bx],cl
00000054  DF8001D5          fild word [bx+si-0x2aff]
00000058  7800              js 0x5a
0000005A  1F                pop ds
0000005B  37                aaa
0000005C  8001FB            add byte [bx+di],0xfb
0000005F  7C00              jl 0x61
00000061  3F                aas
00000062  F7C003FF          test ax,0xff03
00000066  7A00              jpe 0x68
00000068  7FFF              jg 0x69
0000006A  881B              mov [bp+di],bl
0000006C  F3F8              rep clc
0000006E  813F7F88          cmp word [bx],0x887f
00000072  13E7              adc sp,di
00000074  F8                clc
00000075  813F3F88          cmp word [bx],0x883f
00000079  13E3              adc sp,bx
0000007B  F8                clc
0000007C  817C3F8825        cmp word [si+0x3f],0x2588
00000081  C1F882            sar ax,byte 0x82
00000084  58                pop ax
00000085  1F                pop ds
00000086  8827              mov [bx],ah
00000088  E1F8              loope 0x82
0000008A  82                db 0x82
0000008B  7C1F              jl 0xac
0000008D  0827              or [bx],ah
0000008F  C0                db 0xc0
00000090  F0                lock
00000091  86780F            xchg bh,[bx+si+0xf]
00000094  084780            or [bx-0x80],al
00000097  F0                lock
00000098  84710F            test [bx+di+0xf],dh
0000009B  0C47              or al,0x47
0000009D  F0                lock
0000009E  F0                lock
0000009F  44                inc sp
000000A0  621F              bound bx,[bx]
000000A2  0447              add al,0x47
000000A4  D1                db 0xd1
000000A5  F0                lock
000000A6  44                inc sp
000000A7  47                inc di
000000A8  0E                push cs
000000A9  0447              add al,0x47
000000AB  E1E0              loope 0x8d
000000AD  44                inc sp
000000AE  42                inc dx
000000AF  0E                push cs
000000B0  04CF              add al,0xcf
000000B2  C1E04C            shl ax,byte 0x4c
000000B5  841E04CF          test [0xcf04],bl
000000B9  81E04D08          and ax,0x84d
000000BD  1E                push ds
000000BE  049F              add al,0x9f
000000C0  01E0              add ax,sp
000000C2  49                dec cx
000000C3  205C04            and [si+0x4],bl
000000C6  9F                lahf
000000C7  0DC049            or ax,0x49c0
000000CA  26FC              es cld
000000CC  049E              add al,0x9e
000000CE  6F                outsw
000000CF  C04926FC          ror byte [bx+di+0x26],byte 0xfc
000000D3  049E              add al,0x9e
000000D5  EF                out dx,ax
000000D6  C048CE7C          ror byte [bx+si-0x32],byte 0x7c
000000DA  0484              add al,0x84
000000DC  47                inc di
000000DD  C04804FC          ror byte [bx+si+0x4],byte 0xfc
000000E1  0480              add al,0x80
000000E3  0FC04801          xadd [bx+si+0x1],cl
000000E7  DC04              fadd qword [si]
000000E9  801B80            sbb byte [bp+di],0x80
000000EC  48                dec ax
000000ED  01B80480          add [bx+si-0x7ffc],di
000000F1  1900              sbb [bx+si],ax
000000F3  48                dec ax
000000F4  01900480          add [bx+si-0x7ffc],dx
000000F8  2E00480E          add [cs:bx+si+0xe],cl
000000FC  800480            add byte [si],0x80
000000FF  E80048            call 0x4902
00000102  07                pop es
00000103  800480            add byte [si],0x80
00000106  3800              cmp [bx+si],al
00000108  48                dec ax
00000109  0300              add ax,[bx+si]
0000010B  0481              add al,0x81
0000010D  F8                clc
0000010E  004803            add [bx+si+0x3],cl
00000111  800480            add byte [si],0x80
00000114  7C00              jl 0x116
00000116  48                dec ax
00000117  1F                pop ds
00000118  C00C80            ror byte [si],byte 0x80
0000011B  7C00              jl 0x11d
0000011D  8807              mov [bx],al
0000011F  C008C0            ror byte [bx+si],byte 0xc0
00000122  FC                cld
00000123  00840FC0          add [si-0x3ff1],al
00000127  084178            or [bx+di+0x78],al
0000012A  00840780          add [si-0x7ff9],al
0000012E  084078            or [bx+si+0x78],al
00000131  004406            add [si+0x6],al
00000134  0004              add [si],al
00000136  2EC00042          rol byte [cs:bx+si],byte 0x42
0000013A  F9                stc
0000013B  0004              add [si],al
0000013D  3E1000            adc [ds:bx+si],al
00000140  23F1              and si,cx
00000142  80027E            add byte [bp+si],0x7e
00000145  3000              xor [bx+si],al
00000147  27                daa
00000148  3100              xor [bx+si],ax
0000014A  027B10            add bh,[bp+di+0x10]
0000014D  0027              add [bx],ah
0000014F  91                xchg ax,cx
00000150  800379            add byte [bp+di],0x79
00000153  98                cbw
00000154  00161D00          add [0x1d],dl
00000158  0161D8            add [bx+di-0x28],sp
0000015B  00161D80          add [0x801d],dl
0000015F  0160D8            add [bx+si-0x28],sp
00000162  40                inc ax
00000163  16                push ss
00000164  0C8C              or al,0x8c
00000166  0101              add [bx+di],ax
00000168  3D8000            cmp ax,0x80
0000016B  13980001          adc bx,[bx+si+0x100]
0000016F  2180001A          and [bx+si+0x1a00],ax
00000173  1800              sbb [bx+si],al
00000175  01A08000          add [bx+si+0x80],sp
00000179  1A08              sbb cl,[bx+si]
0000017B  0001              add [bx+di],al
0000017D  A18000            mov ax,[0x80]
00000180  0A0C              or cl,[si]
00000182  0000              add [bx+si],al
00000184  A1C000            mov ax,[0xc0]
00000187  0A1C              or bl,[si]
00000189  0000              add [bx+si],al
0000018B  D1C0              rol ax,0x0
0000018D  000F              add [bx],cl
0000018F  3C00              cmp al,0x0
00000191  00FB              add bl,bh
00000193  C0000F            rol byte [bx+si],byte 0xf
00000196  BC0000            mov sp,0x0
00000199  FFC0              inc ax
0000019B  000F              add [bx],cl
0000019D  FC                cld
0000019E  0000              add [bx+si],al
000001A0  FF                db 0xff
000001A1  E000              loopne 0x1a3
000001A3  0FFE00            paddd mm0,[bx+si]
000001A6  00EF              add bh,ch
000001A8  E000              loopne 0x1aa
000001AA  0FFF00            ud0 ax,[bx+si]
000001AD  00FF              add bh,bh
000001AF  F0000F            lock add [bx],cl
000001B2  FF8001F7          inc word [bx+si-0x8ff]
000001B6  F8                clc
000001B7  001F              add [bx],bl
000001B9  FE8001FB          inc byte [bx+si-0x4ff]
000001BD  EC                in al,dx
000001BE  003F              add [bx],bh
000001C0  3EC003FB          rol byte [ds:bp+di],byte 0xfb
000001C4  CE                into
000001C5  007FFC            add [bx-0x4],bh
000001C8  E81EFB            call 0xfce9
000001CB  4D                dec bp
000001CC  81AF74F81EF7      sub word [bx-0x78c],0xf71e
000001D2  4A                dec dx
000001D3  81EF76F8          sub di,0xf876
000001D7  1E                push ds
000001D8  D26D81            shr byte [di-0x7f],cl
000001DB  EF                out dx,ax
000001DC  26F8              es clc
000001DE  3CE2              cmp al,0xe2
000001E0  EB83              jmp 0x165
000001E2  CDBE              int byte 0xbe
000001E4  B83DDB            mov ax,0xdb3d
000001E7  FA                cli
000001E8  83FBBF            cmp bx,0xffffffffffffffbf
000001EB  C83F61FC          enter word 0x613f,byte 0xfc
000001EF  86D6              xchg dl,dh
000001F1  1F                pop ds
000001F2  C87F89BC          enter word 0x897f,byte 0xbc
000001F6  86F1              xchg dh,cl
000001F8  9B8C5F1D          wait mov word [bx+0x1d],ds
000001FC  B8C5E1            mov ax,0xe1c5
000001FF  BB8C5E            mov bx,0x5e8c
00000202  3BB8C5E7          cmp di,[bx+si-0x183b]
00000206  FB                sti
00000207  845C1F            test [si+0x1f],bl
0000020A  F4                hlt
0000020B  45                inc bp
0000020C  C3                ret
0000020D  FF                db 0xff
0000020E  E4F8              in al,byte 0xf8
00000210  3F                aas
00000211  FC                cld
00000212  4F                dec di
00000213  87FF              xchg di,di
00000215  F4                hlt
00000216  F8                clc
00000217  7FFF              jg 0x218
00000219  4F                dec di
0000021A  0DFFE4            or ax,0xe4ff
0000021D  F0                lock
0000021E  DF                db 0xdf
0000021F  FE4F1F            dec byte [bx+0x1f]
00000222  FFC4              inc sp
00000224  F1                int1
00000225  9F                lahf
00000226  FC                cld
00000227  4F                dec di
00000228  39F7              cmp di,si
0000022A  A4                movsb
0000022B  F3BF7A4F          rep mov di,0x4f7a
0000022F  3BF7              cmp si,di
00000231  A4                movsb
00000232  F3BF724F          rep mov di,0x4f72
00000236  3BF7              cmp si,di
00000238  64F3BF7B4F        fs rep mov di,0x4f7b
0000023D  7BF6              jpo 0x235
0000023F  7CF7              jl 0x238
00000241  B757              mov bh,0x57
00000243  CF                iret
00000244  7BF6              jpo 0x23c
00000246  3CF7              cmp al,0xf7
00000248  B967CF            mov cx,0xcf67
0000024B  FF9C44F7          call word far [si-0x8bc]
0000024F  F9                stc
00000250  C44DBE            les cx,word [di-0x42]
00000253  98                cbw
00000254  84DB              test bl,bl
00000256  EA884D3EE8        jmp word 0xe83e:word 0x4d88
0000025B  84D3              test bl,dl
0000025D  EC                in al,dx
0000025E  D04D3E            ror byte [di+0x3e],0x0
00000261  CD04              int byte 0x4
00000263  DF                db 0xdf
00000264  FC                cld
00000265  50                push ax
00000266  4C                dec sp
00000267  F346              rep inc si
00000269  04CB              add al,0xcb
0000026B  0DE04C            or ax,0x4ce0
0000026E  A07E04            mov al,[0x47e]
00000271  EA4740CEB0        jmp word 0xb0ce:word 0x4047
00000276  760C              jna 0x284
00000278  EA07408EE4        jmp word 0xe48e:word 0x4007
0000027D  7608              jna 0x287
0000027F  F5                cmc
00000280  C7                db 0xc7
00000281  60                pusha
00000282  87D8              xchg bx,ax
00000284  66087706          o32 or [bx+0x6],dh
00000288  60                pusha
00000289  87F4              xchg si,sp
0000028B  6208              bound cx,[bx+si]
0000028D  7F46              jg 0x2d5
0000028F  61                popa
00000290  45                inc bp
00000291  8CA21429          mov word [bp+si+0x2914],fs
00000295  A261C2            mov [0xc261],al
00000298  9F                lahf
00000299  A21C29            mov [0x291c],al
0000029C  FE                db 0xfe
0000029D  61                popa
0000029E  A29FA6            mov [0xa69f],al
000002A1  1A28              sbb ch,[bx+si]
000002A3  FE                db 0xfe
000002A4  63A7C7E6          arpl [bx-0x1939],sp
000002A8  7E7C              jng 0x326
000002AA  7E6F              jng 0x31b
000002AC  E7C7              out byte 0xc7,ax
000002AE  E7EF              out byte 0xef,ax
000002B0  7C7E              jl 0x330
000002B2  7EF7              jng 0x2ab
000002B4  C3                ret
000002B5  E60F              out byte 0xf,al
000002B7  7E7E              jng 0x337
000002B9  61                popa
000002BA  F7E7              mul di
000002BC  E61F              out byte 0x1f,al
000002BE  7E5E              jng 0x31e
000002C0  E2F7              loop 0x2b9
000002C2  E5CE              in ax,byte 0xce
000002C4  2F                das
000002C5  803D80            cmp byte [di],0x80
000002C8  0003              add [bp+di],al
000002CA  98                cbw
000002CB  0000              add [bx+si],al
000002CD  29800002          sub [bx+si+0x200],ax
000002D1  1800              sbb [bx+si],al
000002D3  0020              add [bx+si],ah
000002D5  0000              add [bx+si],al
000002D7  02DD              add bl,ch
000002D9  0000              add [bx+si],al
000002DB  21800002          and [bx+si+0x200],ax
000002DF  0800              or [bx+si],al
000002E1  0021              add [bx+di],ah
000002E3  800002            add byte [bx+si],0x2
000002E6  1800              sbb [bx+si],al
000002E8  005180            add [bx+di-0x80],dl
000002EB  0007              add [bx],al
000002ED  3C00              cmp al,0x0
000002EF  00FB              add bl,bh
000002F1  800007            add byte [bx+si],0x7
000002F4  BC0000            mov sp,0x0
000002F7  FF80000F          inc word [bx+si+0xf00]
000002FB  FC                cld
000002FC  0000              add [bx+si],al
000002FE  FFC0              inc ax
00000300  000F              add [bx],cl
00000302  FE00              inc byte [bx+si]
00000304  00EF              add bh,ch
00000306  E000              loopne 0x308
00000308  0FBE00            movsx ax,byte [bx+si]
0000030B  00FF              add bh,bh
0000030D  F0000F            lock add [bx],cl
00000310  FF00              inc word [bx+si]
00000312  00D7              add bh,dl
00000314  F8                clc
00000315  001F              add [bx],bl
00000317  3F                aas
00000318  8001FF            add byte [bx+di],0xff
0000031B  F8                clc
0000031C  001F              add [bx],bl
0000031E  FF8003FF          inc word [bx+si-0xfd]
00000322  7800              js 0x324
00000324  3F                aas
00000325  F78003FB7800      test word [bx+si-0x4fd],0x78
0000032B  3F                aas
0000032C  7780              ja 0x2ae
0000032E  03FF              add di,di
00000330  7800              js 0x332
00000332  3F                aas
00000333  F78003FE7800      test word [bx+si-0x1fd],0x78
00000339  7FE7              jg 0x322
0000033B  8005EE            add byte [di],0xee
0000033E  F8                clc
0000033F  005DFF            add [di-0x1],bl
00000342  8007FF            add byte [bx],0xff
00000345  F8                clc
00000346  007FFF            add [bx-0x1],bh
00000349  0007              add [bx],al
0000034B  7FF0              jg 0x33d
0000034D  007EFF            add [bp-0x1],bh
00000350  0007              add [bx],al
00000352  8F                db 0x8f
00000353  B000              mov al,0x0
00000355  71FB              jno 0x352
00000357  0007              add [bx],al
00000359  1F                pop ds
0000035A  B000              mov al,0x0
0000035C  63FB              arpl bx,di
0000035E  00067FF0          add [0xf07f],al
00000362  0067FE            add [bx-0x2],ah
00000365  0004              add [si],al
00000367  3F                aas
00000368  E000              loopne 0x36a
0000036A  43                inc bx
0000036B  FE00              inc byte [bx+si]
0000036D  087FE0            or [bx-0x20],bh
00000370  0087FE00          add [bx+0xfe],al
00000374  08FB              or bl,bh
00000376  E001              loopne 0x379
00000378  0DFE00            or ax,0xfe
0000037B  12DF              adc bl,bh
0000037D  E001              loopne 0x380
0000037F  3F                aas
00000380  FC                cld
00000381  0013              add [bp+di],dl
00000383  9F                lahf
00000384  C00139            rol byte [bx+di],byte 0x39
00000387  F4                hlt
00000388  0013              add [bp+di],dl
0000038A  BF4001            mov di,0x140
0000038D  3BF4              cmp si,sp
0000038F  001B              add [bp+di],bl
00000391  BF4001            mov di,0x140
00000394  FB                sti
00000395  F4                hlt
00000396  0013              add [bp+di],dl
00000398  BB4001            mov bx,0x140
0000039B  3BF4              cmp si,sp
0000039D  0015              add [di],dl
0000039F  BF4001            mov di,0x140
000003A2  5B                pop bx
000003A3  FC                cld
000003A4  0015              add [di],dl
000003A6  F9                stc
000003A7  C000DF            rol byte [bx+si],byte 0xdf
000003AA  9C                pushf
000003AB  0001              add [bx+di],al
000003AD  F9                stc
000003AE  80001F            add byte [bx+si],0x1f
000003B1  90                nop
000003B2  0001              add [bx+di],al
000003B4  EE                out dx,al
000003B5  0000              add [bx+si],al
000003B7  1E                push ds
000003B8  C00001            rol byte [bx+si],byte 0x1
000003BB  EC                in al,dx
000003BC  0000              add [bx+si],al
000003BE  1F                pop ds
000003BF  800001            add byte [bx+si],0x1
000003C2  F8                clc
000003C3  0000              add [bx+si],al
000003C5  1300              adc ax,[bx+si]
000003C7  0001              add [bx+di],al
000003C9  0800              or [bx+si],al
000003CB  00264000          add [0x40],ah
000003CF  004400            add [si+0x0],al
000003D2  0030              add [bx+si],dh
000003D4  40                inc ax
000003D5  0002              add [bp+si],al
000003D7  640000            add [fs:bx+si],al
000003DA  2440              and al,0x40
000003DC  0007              add [bx],al
000003DE  C400              les ax,word [bx+si]
000003E0  007840            add [bx+si+0x40],bh
000003E3  0007              add [bx],al
000003E5  6C                insb
000003E6  0000              add [bx+si],al
000003E8  F4                hlt
000003E9  C0000F            rol byte [bx+si],byte 0xf
000003EC  4C                dec sp
000003ED  0001              add [bx+di],al
000003EF  EE                out dx,al
000003F0  800029            add byte [bx+si],0x29
000003F3  E000              loopne 0x3f5
000003F5  039C0000          add bx,[si+0x0]
000003F9  39C0              cmp ax,ax
000003FB  0002              add [bp+si],al
000003FD  9C                pushf
000003FE  0000              add [bx+si],al
00000400  68E000            push word 0xe0
00000403  07                pop es
00000404  CE                into
00000405  0000              add [bx+si],al
00000407  7C60              jl 0x469
00000409  0007              add [bx],al
0000040B  C700007C          mov word [bx+si],0x7c00
0000040F  7000              jo 0x411
00000411  07                pop es
00000412  C3                ret
00000413  0000              add [bx+si],al
00000415  7E70              jng 0x487
00000417  0005              add [di],al
00000419  E700              out byte 0x0,ax
0000041B  007E50            add [bp+0x50],bh
0000041E  40                inc ax
0000041F  07                pop es
00000420  EF                out dx,ax
00000421  8C00              mov word [bx+si],es
00000423  C003C7            rol byte [bp+di],byte 0xc7
00000426  202B              and [bp+di],ch
00000428  9AAAB86003        call word 0x360:word 0xb8aa
0000042D  C78056482AB0      mov word [bx+si+0x4856],0xb02a
00000433  60                pusha
00000434  03C3              add ax,bx
00000436  C05C9A0A          rcr byte [si-0x66],byte 0xa
0000043A  AA                stosb
0000043B  B86001            mov ax,0x160
0000043E  E1E0              loope 0x420
00000440  5C                pop sp
00000441  48                dec ax
00000442  2AAAB030          sub ch,[bp+si+0x30b0]
00000446  01E0              add ax,sp
00000448  F0                lock
00000449  B89AAA            mov ax,0xaa9a
0000044C  AA                stosb
0000044D  C0                db 0xc0
0000044E  3001              xor [bx+di],al
00000450  E078              loopne 0x4ca
00000452  B84802            mov ax,0x248
00000455  EE                out dx,al
00000456  AB                stosw
00000457  0C01              or al,0x1
00000459  E06C              loopne 0x4c7
0000045B  B89AAB            mov ax,0xab9a
0000045E  92                xchg ax,dx
0000045F  AD                lodsw
00000460  40                inc ax
00000461  53                push bx
00000462  F0                lock
00000463  96                xchg ax,si
00000464  B84AAE            mov ax,0xae4a
00000467  BAA680            mov dx,0x80a6
0000046A  2380F108          and ax,[bx+si+0x8f1]
0000046E  789A              js 0x40a
00000470  91                xchg ax,cx
00000471  2AA95040          sub ch,[bx+di+0x4050]
00000475  806E0128          sub byte [bp+0x1],0x28
00000479  05086A            add ax,0x6a08
0000047C  C08082C038        rol byte [bx+si-0x3f7e],byte 0x38
00000481  AA                stosb
00000482  80400401          add byte [bx+si+0x4],0x1
00000486  01601D            add [bx+si+0x1d],sp
00000489  1472              adc al,0x72
0000048B  20820802          and [bp+si+0x208],al
0000048F  03700C            add si,[bx+si+0xc]
00000492  0ACC              or cl,ah
00000494  40                inc ax
00000495  1015              adc [di],dl
00000497  0130              add [bx+si],si
00000499  06                push es
0000049A  D208              ror byte [bx+si],cl
0000049C  0222              add ah,[bp+si]
0000049E  82                db 0x82
0000049F  48                dec ax
000004A0  06                push es
000004A1  44                inc sp
000004A2  0501A4            add ax,0xa401
000004A5  41                inc cx
000004A6  180612B8          sbb [0xb812],al
000004AA  2A8C048A          sub cl,[si-0x75fc]
000004AE  01AAA415          add [bp+si+0x15a4],bp
000004B2  40                inc ax
000004B3  C00F60            ror byte [bx],byte 0x60
000004B6  1DD3EC            sbb ax,0xecd3
000004B9  2208              and cl,[bx+si]
000004BB  B01E              mov al,0x1e
000004BD  14C0              adc al,0xc0
000004BF  12C7              adc al,bh
000004C1  8384111016        add word [si+0x1011],0x16
000004C6  1402              adc al,0x2
000004C8  DBEA              fucomi st2
000004CA  C001DC            rol byte [bx+di],byte 0xdc
000004CD  08880230          or [bx+si+0x3002],cl
000004D1  1478              adc al,0x78
000004D3  C3                ret
000004D4  E98240            jmp 0x4559
000004D7  E40B              in al,byte 0xb
000004D9  44                inc sp
000004DA  0233              add dh,[bp+di]
000004DC  69EA20B8          imul bp,dx,0xb820
000004E0  A804              test al,0x4
000004E2  CC                int3
000004E3  050201            add ax,0x102
000004E6  0330              add si,[bx+si]
000004E8  037EC0            add di,[bp-0x40]
000004EB  1B0A              sbb cx,[bp+si]
000004ED  F0                lock
000004EE  0389557C          add cx,[bx+di+0x7c55]
000004F2  1B4F1C            sbb cx,[bx+0x1c]
000004F5  0140A1            add [bx+si-0x5f],ax
000004F8  B002              mov al,0x2
000004FA  01554E            add [di+0x4e],dx
000004FD  D222              shl byte [bp+si],cl
000004FF  E80390            call 0x9505
00000502  225198            and dl,[bx+di-0x68]
00000505  025555            add dl,[di+0x55]
00000508  58                pop ax
00000509  60                pusha
0000050A  03E8              add bp,ax
0000050C  5A                pop dx
0000050D  7418              jz 0x527
0000050F  61                popa
00000510  D056A3            rcl byte [bp-0x5d],0x0
00000513  5C                pop sp
00000514  0485              add al,0x85
00000516  55                push bp
00000517  48                dec ax
00000518  06                push es
00000519  C1215E            shl word [bx+di],byte 0x5e
0000051C  3018              xor [bx+si],bl
0000051E  FC                cld
0000051F  0C1F              or al,0x1f
00000521  8C24              mov word [si],fs
00000523  A6                cmpsb
00000524  155558            adc ax,0x5855
00000527  0318              add bx,[bx+si]
00000529  07                pop es
0000052A  45                inc bp
0000052B  4B                dec bx
0000052C  0C1A              or al,0x1a
0000052E  B006              mov al,0x6
00000530  56                push si
00000531  1824              sbb [si],ah
00000533  06                push es
00000534  CC                int3
00000535  055560            add ax,0x6055
00000538  C00180            rol byte [bx+di],byte 0x80
0000053B  0915              or [di],dx
0000053D  7604              jna 0x543
0000053F  04C0              add al,0xc0
00000541  CB                retf
00000542  EC                in al,dx
00000543  1A4C15            sbb cl,[si+0x15]
00000546  55                push bp
00000547  7030              jo 0x579
00000549  06                push es
0000054A  1205              adc al,[di]
0000054C  6616              o32 push ss
0000054E  07                pop es
0000054F  C0240F            shl byte [si],byte 0xf
00000552  E86B98            call 0x9dc0
00000555  055560            add ax,0x6055
00000558  180C              sbb [si],cl
0000055A  48                dec ax
0000055B  157304            adc ax,0x473
0000055E  08069EE1          or [0xe19e],al
00000562  AB                stosw
00000563  1801              sbb [bx+di],al
00000565  55                push bp
00000566  700C              jo 0x574
00000568  0CC0              or al,0xc0
0000056A  55                push bp
0000056B  4B                dec bx
0000056C  0310              add dx,[bx+si]
0000056E  40                inc ax
0000056F  87A3A931          xchg sp,[bp+di+0x31a9]
00000573  B055              mov al,0x55
00000575  60                pusha
00000576  0C30              or al,0x30
00000578  CA1559            retf word 0x5915
0000057B  9A701101AE        call word 0xae01:word 0x1170
00000580  66B955200CC0      mov ecx,0xc00c2055
00000586  0180555C          add [bx+si+0x5c55],ax
0000058A  1105              adc [di],ax
0000058C  06                push es
0000058D  B8D9EC            mov ax,0xecd9
00000590  55                push bp
00000591  60                pusha
00000592  0C03              or al,0x3
00000594  0315              add dx,[di]
00000596  7088              jo 0x520
00000598  04B1              add al,0xb1
0000059A  BF8F55            mov di,0x558f
0000059D  801806            sbb byte [bx+si],0x6
000005A0  0355C5            add dx,[di-0x3b]
000005A3  2EC3              cs ret
000005A5  7D5F              jnl 0x606
000005A7  55                push bp
000005A8  C01818            rcr byte [bx+si],byte 0x18
000005AB  06                push es
000005AC  015727            add [bx+0x27],dx
000005AF  095655            or [bp+0x55],dx
000005B2  03E0              add sp,ax
000005B4  BCD080            mov sp,0x80d0
000005B7  0C60              or al,0x60
000005B9  0480              add al,0x80
000005BB  48                dec ax
000005BC  40                inc ax
000005BD  010A              add [bp+si],cx
000005BF  08BFED99          or [bx-0x6613],bh
000005C3  0CC0              or al,0xc0
000005C5  05C173            add ax,0x73c1
000005C8  55                push bp
000005C9  48                dec ax
000005CA  0AD5              or dl,ch
000005CC  57                push di
000005CD  82                db 0x82
000005CE  06                push es
000005CF  01800C05          add [bx+si+0x50c],ax
000005D3  C404              les ax,word [si]
000005D5  1F                pop ds
000005D6  D574              aad byte 0x74
000005D8  44                inc sp
000005D9  0303              add ax,[bp+di]
000005DB  0C01              or al,0x1
000005DD  A5                movsw
000005DE  52                push dx
000005DF  2E156488          cs adc ax,0x8864
000005E3  03060C56          add ax,[0x560c]
000005E7  40                inc ax
000005E8  0135              add [di],si
000005EA  52                push dx
000005EB  3910              cmp [bx+si],dx
000005ED  01800C0C          add [bx+si+0xc0c],ax
000005F1  AD                lodsw
000005F2  D5DD              aad byte 0xdd
000005F4  55                push bp
000005F5  006025            add [bx+si+0x25],ah
000005F8  50                push ax
000005F9  2220              and ah,[bx+si]
000005FB  C0180D            rcr byte [bx+si],byte 0xd
000005FE  2440              and al,0x40
00000600  017520            add [di+0x20],si
00000603  44                inc sp
00000604  40                inc ax
00000605  C0                db 0xc0
00000606  300F              xor [bx],cl
00000608  0D5555            or ax,0x5555
0000060B  58                pop ax
0000060C  2802              sub [bp+si],al
0000060E  F5                cmc
0000060F  0208              add cl,[bx+si]
00000611  80606001          and byte [bx+si+0x60],0x1
00000615  0404              add al,0x4
00000617  40                inc ax
00000618  358411            xor ax,0x1184
0000061B  30C0              xor al,al
0000061D  09DD              or bp,bx
0000061F  55                push bp
00000620  015602            add [bp+0x2],dx
00000623  F5                cmc
00000624  2022              and [bp+si],ah
00000626  30C0              xor al,al
00000628  40                inc ax
00000629  40                inc ax
0000062A  324044            xor al,[bx+si+0x44]
0000062D  1801              sbb [bx+di],al
0000062F  8007DD            add byte [bx],0xdd
00000632  55                push bp
00000633  015802            add [bx+si+0x2],bx
00000636  F08088180180      lock or byte [bx+si+0x118],0x80
0000063C  104005            adc [bx+si+0x5],al
0000063F  35C110            xor ax,0x10c1
00000642  0C01              or al,0x1
00000644  8095DD5500        adc byte [di+0x55dd],0x0
00000649  56                push si
0000064A  02F5              add dh,ch
0000064C  7220              jc 0x66e
0000064E  0C01              or al,0x1
00000650  800110            add byte [bx+di],0x10
00000653  059561            add ax,0x6195
00000656  40                inc ax
00000657  0C03              or al,0x3
00000659  07                pop es
0000065A  55                push bp
0000065B  55                push bp
0000065C  57                push di
0000065D  50                push ax
0000065E  0AD5              or dl,ch
00000660  22800603          and al,[bx+si+0x306]
00000664  0401              add al,0x1
00000666  A045D5            mov al,[0xd545]
00000669  6506              gs push es
0000066B  06                push es
0000066C  035555            add dx,[di+0x55]
0000066F  54                push sp
00000670  800440            add byte [si],0x40
00000673  82                db 0x82
00000674  D520              aad byte 0x20
00000676  06                push es
00000677  0C04              or al,0x4
00000679  01781E            add [bx+si+0x1e],di
0000067C  080A              or [bp+si],cl
0000067E  81075560          add word [bx],0x6055
00000682  0318              add bx,[bx+si]
00000684  07                pop es
00000685  55                push bp
00000686  55                push bp
00000687  52                push dx
00000688  FA                cli
00000689  6304              arpl [si],ax
0000068B  1406              adc al,0x6
0000068D  0A5520            or dl,[di+0x20]
00000690  0318              add bx,[bx+si]
00000692  0104              add [si],ax
00000694  C44602            les ax,word [bp+0x2]
00000697  2809              sub [bx+di],cl
00000699  135560            adc dx,[di+0x60]
0000069C  0318              add bx,[bx+si]
0000069E  01D5              add bp,dx
000006A0  54                push sp
000006A1  2001              and [bx+di],al
000006A3  8006014412        add byte [0x4401],0x12
000006A8  0F5520            andnps xmm4,oword [bx+si]
000006AB  0318              add bx,[bx+si]
000006AD  1001              adc [bx+di],al
000006AF  015830            add [bx+si+0x30],bx
000006B2  080C              or [si],cl
000006B4  195560            sbb [di+0x60],dx
000006B7  0318              add bx,[bx+si]
000006B9  50                push ax
000006BA  1B04              sbb ax,[si]
000006BC  122D              adc ch,[di]
000006BE  55                push bp
000006BF  2003              and [bp+di],al
000006C1  181E01B0          sbb [0xb001],bl
000006C5  045D              add al,0x5d
000006C7  55                push bp
000006C8  C00330            rol byte [bp+di],byte 0x30
000006CB  47                inc di
000006CC  A240AD            mov [0xad40],al
000006CF  55                push bp
000006D0  8006300202        add byte [0x230],0x2
000006D5  91                xchg ax,cx
000006D6  9D                popf
000006D7  54                push sp
000006D8  800630101B        add byte [0x1030],0x1b
000006DD  2217              and dl,[bx]
000006DF  57                push di
000006E0  06                push es
000006E1  3020              xor [bx+si],ah
000006E3  1E                push ds
000006E4  0113              add [bp+di],dx
000006E6  C8063040          enter word 0x3006,byte 0x40
000006EA  3C29              cmp al,0x29
000006EC  06                push es
000006ED  30800A16          xor [bx+si+0x160a],al
000006F1  06                push es
000006F2  3001              xor [bx+di],al
000006F4  4F                dec di
000006F5  1004              adc [si],al
000006F7  0C30              or al,0x30
000006F9  0D8002            or ax,0x280
000006FC  2A0C              sub cl,[si]
000006FE  3001              xor [bx+di],al
00000700  98                cbw
00000701  01F4              add sp,si
00000703  0C30              or al,0x30
00000705  1C80              sbb al,0x80
00000707  84C0              test al,al
00000709  0C30              or al,0x30
0000070B  96                xchg ax,si
0000070C  13801818          adc ax,[bx+si+0x1818]
00000710  D520              aad byte 0x20
00000712  DD18              fstp qword [bx+si]
00000714  00DD              add ch,bl
00000716  55                push bp
00000717  014830            add [bx+si+0x30],cx
0000071A  18D5              sbb ch,dl
0000071C  55                push bp
0000071D  57                push di
0000071E  60                pusha
0000071F  0C03              or al,0x3
00000721  55                push bp
00000722  55                push bp
00000723  54                push sp
00000724  80C00C            add al,0xc
00000727  0C55              or al,0x55
00000729  54                push sp
0000072A  DD5500            fst qword [di+0x0]
0000072D  2001              and [bx+di],al
0000072F  800601D555        add byte [0xd501],0x55
00000734  55                push bp
00000735  60                pusha
00000736  0303              add ax,[bp+di]
00000738  02DD              add bl,ch
0000073A  55                push bp
0000073B  007006            add [bx+si+0x6],dh
0000073E  018001D5          add [bx+si-0x2aff],ax
00000742  DD5500            fst qword [di+0x0]
00000745  60                pusha
00000746  0CC0              or al,0xc0
00000748  D5DD              aad byte 0xdd
0000074A  55                push bp
0000074B  01800C60          add [bx+si+0x600c],ax
0000074F  4E                dec si
00000750  01D5              add bp,dx
00000752  55                push bp
00000753  56                push si
00000754  06                push es
00000755  3002              xor [bp+si],al
00000757  55                push bp
00000758  55                push bp
00000759  52                push dx
0000075A  0318              add bx,[bx+si]
0000075C  1D5555            sbb ax,0x5555
0000075F  C0C006            rol al,byte 0x6
00000762  D520              aad byte 0x20
00000764  3018              xor [bx+si],bl
00000766  01B1B01C          add [bx+di+0x1cb0],si
0000076A  800C30            or byte [si],0x30
0000076D  03366F01          add si,[0x16f]
00000771  E082              loopne 0x6f5
00000773  036005            add sp,[bx+si+0x5]
00000776  0128              add [bx+si],bp
00000778  D941C0            fld dword [bx+di-0x40]
0000077B  EBC7              jmp 0x744
0000077D  801B8B            sbb byte [bp+di],0x8b
00000780  60                pusha
00000781  08806001          or [bx+si+0x160],al
00000785  FB                sti
00000786  6D                insw
00000787  800A78            or byte [bp+si],0x78
0000078A  014030            add [bx+si+0x30],ax
0000078D  03DF              add bx,di
0000078F  43                inc bx
00000790  3E80880C03CE      or byte [ds:bx+si+0x30c],0xce
00000796  41                inc cx
00000797  2003              and [bp+di],al
00000799  60                pusha
0000079A  1106078C          adc [0x8c07],ax
0000079E  65C078A880        sar byte [gs:bx+si-0x58],byte 0x80
000007A3  01800786          add [bx+si-0x79f9],ax
000007A7  3D401E            cmp ax,0x1e40
000007AA  3301              xor ax,[bx+di]
000007AC  40                inc ax
000007AD  C00786            rol byte [bx],byte 0x86
000007B0  06                push es
000007B1  C6C00A            mov al,0xa
000007B4  3007              xor [bx],al
000007B6  8C1EA360          mov word [0x60a3],ds
000007BA  0440              add al,0x40
000007BC  1807              sbb [bx],al
000007BE  8C06C1B0          mov word [0xb0c1],es
000007C2  0220              add ah,[bx+si]
000007C4  0C03              or al,0x3
000007C6  D8F1              fdiv st1
000007C8  3801              cmp [bx+di],al
000007CA  1014              adc [si],dl
000007CC  06                push es
000007CD  03D8              add bx,ax
000007CF  A0CC28            mov al,[0x28cc]
000007D2  0202              add al,[bp+si]
000007D4  0303              add ax,[bp+di]
000007D6  3303              xor ax,[bp+di]
000007D8  6440              fs inc ax
000007DA  02E0              add ah,al
000007DC  033601E0          add si,[0xe001]
000007E0  02E0              add ah,al
000007E2  036302            add sp,[bp+di+0x2]
000007E5  E001              loopne 0x7e8
000007E7  806602B0          and byte [bp+0x2],0xb0
000007EB  01806330          add [bx+si+0x3063],ax
000007EF  0180660C          add [bx+si+0xc66],ax
000007F3  01806305          add [bx+si+0x563],ax
000007F7  53                push bx
000007F8  C0662380          shl byte [bp+0x23],byte 0x80
000007FC  C0630A40          shl byte [bp+di+0xa],byte 0x40
00000800  80603614          and byte [bx+si+0x36],0x14
00000804  82                db 0x82
00000805  C0                db 0xc0
00000806  300A              xor [bp+si],cl
00000808  1479              adc al,0x79
0000080A  016018            add [bx+si+0x18],sp
0000080D  A4                movsb
0000080E  2328              and bp,[bx+si]
00000810  01E2              add dx,sp
00000812  03700D            add si,[bx+si+0xd]
00000815  12418E            adc al,[bx+di-0x72]
00000818  40                inc ax
00000819  07                pop es
0000081A  95                xchg ax,bp
0000081B  0130              add [bx+si],si
0000081D  06                push es
0000081E  3E40              ds inc ax
00000820  D4A0              aam byte 0xa0
00000822  3622824804        and al,[ss:bp+si+0x448]
00000827  D84248            fadd dword [bp+si+0x48]
0000082A  800925            or byte [bx+di],0x25
0000082D  A4                movsb
0000082E  41                inc cx
0000082F  1807              sbb [bx],al
00000831  52                push dx
00000832  B095              mov al,0x95
00000834  1E                push ds
00000835  2252BB            and dl,[bp+si-0x45]
00000838  EA8C047231        jmp word 0x3172:word 0x48c
0000083D  7D7B              jnl 0x8ba
0000083F  31AAA695          xor [bp+si-0x6a5a],bp
00000843  40                inc ax
00000844  C00F60            ror byte [bx],byte 0x60
00000847  7311              jnc 0x85a
00000849  40                inc ax
0000084A  1DD3ED            sbb ax,0xedd3
0000084D  6208              bound cx,[bx+si]
0000084F  B01E              mov al,0x1e
00000851  14C0              adc al,0xc0
00000853  12EF              adc ch,bh
00000855  FB                sti
00000856  855110            test [bx+di+0x10],dx
00000859  16                push ss
0000085A  1402              adc al,0x2
0000085C  DBEA              fucomi st2
0000085E  C0                db 0xc0
0000085F  36EADE888802      ss jmp word 0x288:word 0x88de
00000865  3014              xor [si],dl
00000867  78C3              js 0x82c
00000869  E9824C            jmp 0x54ee
0000086C  54                push sp
0000086D  640B4402          or ax,[fs:si+0x2]
00000871  3369FE            xor bp,[bx+di-0x2]
00000874  3BB8A805          cmp di,[bx+si+0x5a8]
00000878  94                xchg ax,sp
00000879  0C05              or al,0x5
0000087B  0201              add al,[bx+di]
0000087D  0330              add si,[bx+si]
0000087F  037EC0            add di,[bp-0x40]
00000882  06                push es
00000883  DB0A              fisttp dword [bp+si]
00000885  C0                db 0xc0
00000886  33C0              xor ax,ax
00000888  0388017C          add cx,[bx+si+0x7c01]
0000088C  1B1F              sbb bx,[bx]
0000088E  16                push ss
0000088F  0438              add al,0x38
00000891  A078C0            mov al,[0xc078]
00000894  3660              ss pusha
00000896  0204              add al,[si]
00000898  4E                dec si
00000899  D222              shl byte [bp+si],cl
0000089B  F0                lock
0000089C  C9                leave
0000089D  88F0              mov al,dh
0000089F  029B3002          add bl,[bp+di+0x230]
000008A3  40                inc ax
000008A4  186003            sbb [bx+si+0x3],ah
000008A7  E80A78            call 0x80b4
000008AA  D84B1B            fmul dword [bp+di+0x1b]
000008AD  5F                pop di
000008AE  3004              xor [si],al
000008B0  801CE6            sbb byte [si],0xe6
000008B3  C1201E            shl word [bx+si],byte 0x1e
000008B6  3D98F6            cmp ax,0xf698
000008B9  308825E0          xor [bx+si-0x1fdb],cl
000008BD  06                push es
000008BE  1B060318          sbb ax,[0x1803]
000008C2  F7401B0C18        test word [bx+si+0x1b],0x180c
000008C7  0E                push cs
000008C8  7C04              jl 0x8ce
000008CA  1025              adc [di],ah
000008CC  40                inc ax
000008CD  0C34              or al,0x34
000008CF  8003C0            add byte [bp+di],0xc0
000008D2  01800C69          add [bx+si+0x690c],ax
000008D6  360404            ss add al,0x4
000008D9  381C              cmp [si],bl
000008DB  CB                retf
000008DC  EC                in al,dx
000008DD  0C32              or al,0x32
000008DF  40                inc ax
000008E0  027006            add dh,[bx+si+0x6]
000008E3  60                pusha
000008E4  D2                db 0xd2
000008E5  3616              ss push ss
000008E7  07                pop es
000008E8  FC                cld
000008E9  240F              and al,0xf
000008EB  E81834            call 0x3d06
000008EE  2002              and [bp+si],al
000008F0  40                inc ax
000008F1  B80C60            mov ax,0x600c
000008F4  01C8              add ax,cx
000008F6  3304              xor ax,[si]
000008F8  0806C69E          or [0x9ec6],al
000008FC  E018              loopne 0x916
000008FE  32700C            xor dh,[bx+si+0xc]
00000901  0C30              or al,0x30
00000903  03C0              add ax,ax
00000905  1B03              sbb ax,[bp+di]
00000907  300F              xor [bx],cl
00000909  0C87              or al,0x87
0000090B  A031B0            mov al,[0xb031]
0000090E  6404C0            fs add al,0xc0
00000911  180C              sbb [si],cl
00000913  37                aaa
00000914  B0A9              mov al,0xa9
00000916  CA199B            retf word 0x9b19
00000919  C6                db 0xc6
0000091A  D166B8            shl word [bp-0x48],0x0
0000091D  622C              bound bp,[si]
0000091F  030C              add cx,[si]
00000921  D8DA              fcomp st2
00000923  AF                scasw
00000924  800C18            or byte [si],0x18
00000927  30C0              xor al,al
00000929  1DD9EC            sbb ax,0xecd9
0000092C  642003            and [fs:bp+di],al
0000092F  18CC              sbb ah,cl
00000931  037E66            add di,[bp+0x66]
00000934  AF                scasw
00000935  30C3              xor bl,al
00000937  300C              xor [si],cl
00000939  01BECEC9          add [bp-0x3632],di
0000093D  0813              or [bp+di],dl
0000093F  7806              js 0x947
00000941  CF                iret
00000942  34A7              xor al,0xa7
00000944  C6                db 0xc6
00000945  0C01              or al,0x1
00000947  800628037D        add byte [0x328],0x7d
0000094C  5F                pop di
0000094D  D210              rcl byte [bx+si],cl
0000094F  0218              add bl,[bx+si]
00000951  1B07              sbb ax,[bx]
00000953  9BBE0333          wait mov si,0x3303
00000957  0C03              or al,0x3
00000959  C00350            rol byte [bp+di],byte 0x50
0000095C  09F5              or bp,si
0000095E  5D                pop bp
0000095F  81A4804C6603      and word [si+0x4c80],0x366
00000965  CDB4              int byte 0xb4
00000967  8018C0            sbb byte [bx+si],0xc0
0000096A  0301              add ax,[bx+di]
0000096C  800180            add byte [bx+di],0x80
0000096F  1CEA              sbb al,0xea
00000971  BDC1C1            mov bp,0xc1c1
00000974  642CD8            fs sub al,0xd8
00000977  033655C0          add si,[0xc055]
0000097B  3301              xor ax,[bx+di]
0000097D  83C01E            add ax,0x1e
00000980  D557              aad byte 0x57
00000982  C3                ret
00000983  83881601B0        or word [bx+si+0x116],0xffffffffffffffb0
00000988  DB0C              fisttp dword [si]
0000098A  CC                int3
0000098B  1830              sbb [bx+si],dh
0000098D  60                pusha
0000098E  1F                pop ds
0000098F  802EC71610        sub byte [0x16c7],0x10
00000994  0B03              or ax,[bp+di]
00000996  C002E8            rol byte [bp+si],byte 0xe8
00000999  8C01              mov word [bx+di],es
0000099B  B006              mov al,0x6
0000099D  60                pusha
0000099E  303A              xor [bp+si],bh
000009A0  07                pop es
000009A1  9A38800707        call word 0x707:word 0x8038
000009A6  80950C5660        adc byte [di+0x560c],0x60
000009AB  036018            add sp,[bx+si+0x18]
000009AE  300F              xor [bx],cl
000009B0  3471              xor al,0x71
000009B2  03800F02          add ax,[bx+si+0x20f]
000009B6  B88CAD            mov ax,0xad8c
000009B9  800502            add byte [di],0x2
000009BC  800D70            or byte [di],0x70
000009BF  1E                push ds
000009C0  68E204            push word 0x4e2
000009C3  C01E0ABC4D        rcr byte [0xbc0a],byte 0x4d
000009C8  2661              es popa
000009CA  801427            adc byte [si],0x27
000009CD  F0                lock
000009CE  3CD1              cmp al,0xd1
000009D0  C402              les ax,word [bp+si]
000009D2  C03C02            sar byte [si],byte 0x2
000009D5  B00F              mov al,0xf
000009D7  186037            sbb [bx+si+0x37],ah
000009DA  8A5F1A            mov bl,[bx+0x1a]
000009DD  E079              loopne 0xa58
000009DF  A38801            mov [0x188],ax
000009E2  60                pusha
000009E3  780A              js 0x9ef
000009E5  B80180            mov ax,0x8001
000009E8  0C06              or al,0x6
000009EA  0F14502A          unpcklps xmm2,oword [bx+si+0x2a]
000009EE  9AE0F34704        call word 0x447:word 0xf3e0
000009F3  B0F0              mov al,0xf0
000009F5  2A478C            sub al,[bx-0x74]
000009F8  6C                insb
000009F9  28AA168E          sub [bp+si-0x71ea],ch
000009FD  E001              loopne 0xa00
000009FF  E68E              out byte 0x8e,al
00000A01  61                popa
00000A02  70F0              jo 0x9f4
00000A04  AC                lodsb
00000A05  CC                int3
00000A06  60                pusha
00000A07  0348A3            add cx,[bx+si-0x5d]
00000A0A  C515              lds dx,word [di]
00000A0C  4E                dec si
00000A0D  E003              loopne 0xa12
00000A0F  CD1C              int byte 0x1c
00000A11  06                push es
00000A12  60                pusha
00000A13  40                inc ax
00000A14  3801              cmp [bx+di],al
00000A16  E031              loopne 0xa49
00000A18  EC                in al,dx
00000A19  C6                db 0xc6
00000A1A  61                popa
00000A1B  250F05            and ax,0x50f
00000A1E  294EE0            sub [bp-0x20],cx
00000A21  07                pop es
00000A22  9A38360808        call word 0x808:word 0x3638
00000A27  01DF              add di,bx
00000A29  CC                int3
00000A2A  6318              arpl [bx+si],bx
00000A2C  0C21              or al,0x21
00000A2E  28665F            sub [bp+0x5f],ah
00000A31  F1                int1
00000A32  5F                pop di
00000A33  E007              loopne 0xa3c
00000A35  B458              mov ah,0x58
00000A37  F0                lock
00000A38  40                inc ax
00000A39  2020              and [bx+si],ah
00000A3B  2C01              sub al,0x1
00000A3D  9D                popf
00000A3E  D58C              aad byte 0x8c
00000A40  C064214C          shl byte [si+0x21],byte 0x4c
00000A44  1BFA              sbb di,dx
00000A46  63DF              arpl di,bx
00000A48  E00F              loopne 0xa59
00000A4A  68B3C2            push word 0xc2b3
00000A4D  0130              add [bx+si],si
00000A4F  801C01            sbb byte [si],0x1
00000A52  B2BC              mov dl,0xbc
00000A54  1B01              sbb ax,[bx+di]
00000A56  A16F7F            mov ax,[0x7f6f]
00000A59  99                cwd
00000A5A  E7BF              out byte 0xbf,ax
00000A5C  C00FD1            ror byte [bx],byte 0xd1
00000A5F  3F                aas
00000A60  1023              adc [bp+di],ah
00000A62  042C              add al,0x2c
00000A64  037E50            add di,[bp+0x50]
00000A67  6C                insb
00000A68  0D08FD            or ax,0xfd08
00000A6B  F4                hlt
00000A6C  C3                ret
00000A6D  CF                iret
00000A6E  7BC0              jpo 0xa30
00000A70  0F                db 0x0f
00000A71  CA5C21            retf word 0x215c
00000A74  3020              xor [bx+si],ah
00000A76  16                push ss
00000A77  02BDE0D8          add bh,[di-0x2720]
00000A7B  0C08              or al,0x8
00000A7D  40                inc ax
00000A7E  017350            add [bp+di+0x50],si
00000A81  25ECA7            and ax,0xa7ec
00000A84  801F94            sbb byte [bx],0x94
00000A87  3109              xor [bx+di],cx
00000A89  810E07D781B0      or word [0xd707],0xb081
00000A8F  C402              les ax,word [bp+si]
00000A91  4E                dec si
00000A92  7860              js 0xaf4
00000A94  66C7801D22624C08  mov dword [bx+si+0x221d],0x16084c62
         -16
00000A9D  0FAF03            imul ax,[bp+di]
00000AA0  60                pusha
00000AA1  01D8              add ax,bx
00000AA3  10C4              adc ah,al
00000AA5  BC1801            mov sp,0x118
00000AA8  8F                db 0x8f
00000AA9  1814              sbb [si],dl
00000AAB  C498400B          les bx,word [bx+si+0xb40]
00000AAF  1F                pop ds
00000AB0  7C03              jl 0xab5
00000AB2  60                pusha
00000AB3  037C20            add di,[si+0x20]
00000AB6  0124              add [si],sp
00000AB8  9E                sahf
00000AB9  1803              sbb [bp+di],al
00000ABB  0F1823            prefetchrst2 byte [bp+di]
00000ABE  8930              mov [bx+si],si
00000AC0  2007              and [bx],al
00000AC2  1E                push ds
00000AC3  7806              js 0xacb
00000AC5  C0067A4002        rol byte [0x407a],byte 0x2
00000ACA  F1                int1
00000ACB  CF                iret
00000ACC  1803              sbb [bp+di],al
00000ACE  1E                push ds
00000ACF  184712            sbb [bx+0x12],al
00000AD2  0304              add ax,[si]
00000AD4  0B1EF006          or bx,[0x6f0]
00000AD8  C01928            rcr byte [bx+di],byte 0x28
00000ADB  800532            add byte [di],0x32
00000ADE  B7B0              mov bh,0xb0
00000AE0  06                push es
00000AE1  1E                push ds
00000AE2  1829              sbb [bx+di],ch
00000AE4  A4                movsb
00000AE5  C2071F            ret word 0x1f07
00000AE8  E006              loopne 0xaf0
00000AEA  C0                db 0xc0
00000AEB  312E4015          xor [0x1540],bp
00000AEF  715B              jno 0xb4c
00000AF1  F0                lock
00000AF2  06                push es
00000AF3  3C18              cmp al,0x18
00000AF5  46                inc si
00000AF6  0880870B          or [bx+si+0xb87],al
00000AFA  1F                pop ds
00000AFB  E006              loopne 0xb03
00000AFD  C0610585          shl byte [bx+di+0x5],byte 0x85
00000B01  05905D            add ax,0x5d90
00000B04  20063C18          and [0x183c],al
00000B08  2910              sub [bx+si],dx
00000B0A  C08514071D        rol byte [di+0x714],byte 0x1d
00000B0F  C006600181        rol byte [0x160],byte 0x81
00000B14  06                push es
00000B15  45                inc bp
00000B16  1E                push ds
00000B17  9D                popf
00000B18  81B006781814      xor word [bx+si+0x7806],0x1418
00000B1E  0340A8            add ax,[bx+si-0x58]
00000B21  800B3F            or byte [bp+di],0x3f
00000B24  C006900301        rol byte [0x390],byte 0x1
00000B29  05853D            add ax,0x3d85
00000B2C  38A0C1F8          cmp [bx+si-0x73f],ah
00000B30  180C              sbb [si],cl
00000B32  0304              add ax,[si]
00000B34  104016            adc [bx+si+0x16],al
00000B37  3AC0              cmp al,al
00000B39  06                push es
00000B3A  48                dec ax
00000B3B  0C01              or al,0x1
00000B3D  07                pop es
00000B3E  0A7A70            or bh,[bp+si+0x70]
00000B41  02800198          add al,[bx+si-0x67ff]
00000B45  1803              sbb [bp+di],al
00000B47  0C88              or al,0x88
00000B49  200E3AC0          and [0xc03a],cl
00000B4D  06                push es
00000B4E  2418              and al,0x18
00000B50  0105              add [di],ax
00000B52  8AFE              mov bh,dh
00000B54  E005              loopne 0xb5b
00000B56  1E                push ds
00000B57  186020            sbb [bx+si+0x20],ah
00000B5A  234140            and ax,[bx+di+0x40]
00000B5D  16                push ss
00000B5E  3AC0              cmp al,al
00000B60  0310              add dx,[bx+si]
00000B62  8090040714        adc byte [bx+si+0x704],0x14
00000B67  51                push cx
00000B68  FD                std
00000B69  C00F07            ror byte [bx],byte 0x7
00000B6C  8063040E          and byte [bp+di+0x4],0xe
00000B70  38E0              cmp al,ah
00000B72  01882004          add [bx+si+0x420],cx
00000B76  07                pop es
00000B77  14A3              adc al,0xa3
00000B79  F1                int1
00000B7A  801E01E660        sbb byte [0xe601],0x60
00000B7F  201638E0          and [0xe038],dl
00000B83  C401              les ax,word [bx+di]
00000B85  042F              add al,0x2f
00000B87  29E6              sub si,sp
00000B89  B71E              mov bh,0x1e
00000B8B  06                push es
00000B8C  06                push es
00000B8D  010E39F0          add [0xf039],cx
00000B91  6208              bound cx,[bx+si]
00000B93  102F              adc [bx],ch
00000B95  30C7              xor bh,al
00000B97  6E                outsb
00000B98  140C              adc al,0xc
00000B9A  0C08              or al,0x8
00000B9C  1C39              sbb al,0x39
00000B9E  F01811            lock sbb [bx+di],dl
00000BA1  7E79              jng 0xc1c
00000BA3  94                xchg ax,sp
00000BA4  60                pusha
00000BA5  6C                insb
00000BA6  0C0C              or al,0xc
00000BA8  C3                ret
00000BA9  40                inc ax
00000BAA  2C39              sub al,0x39
00000BAC  780C              js 0xbba
00000BAE  40                inc ax
00000BAF  BCCC18            mov sp,0x18cc
00000BB2  C0798C0C          sar byte [bx+di-0x74],byte 0xc
00000BB6  C0021C            rol byte [bp+si],byte 0x1c
00000BB9  3EBC0645          ds mov sp,0x4506
00000BBD  F8                clc
00000BBE  FD                std
00000BBF  8186FCC001B0      add word [bp-0x3f04],0xb001
00000BC5  102C              adc [si],ch
00000BC7  3EBC0180          ds mov sp,0x8001
00000BCB  0113              add [bp+di],dx
00000BCD  F0F3180619FC      lock xrelease sbb [0xfc19],al
00000BD3  80782008          cmp byte [bx+si+0x20],0x8
00000BD7  1E                push ds
00000BD8  1E                push ds
00000BD9  C00507            rol byte [di],byte 0x7
00000BDC  D0C0              rol al,0x0
00000BDE  1830              sbb [bx+si],dh
00000BE0  3C01              cmp al,0x1
00000BE2  381E1E30          cmp [0x301e],bl
00000BE6  1B18              sbb bx,[bx+si]
00000BE8  06                push es
00000BE9  06                push es
00000BEA  0208              add cl,[bx+si]
00000BEC  1E                push ds
00000BED  08701E            or [bx+si+0x1e],dh
00000BF0  0F                db 0x0f
00000BF1  216F0D            and [bx+0xd],bp
00000BF4  801001            adc byte [bx+si],0x1
00000BF7  0F10E0            movups xmm4,xmm0
00000BFA  0F07              sysret
00000BFC  801070            adc byte [bx+si],0x70
00000BFF  0306C020          add ax,[0x20c0]
00000C03  2D01C0            sub ax,0xc001
00000C06  0F03C0            lsl ax,ax
00000C09  024A0C            add cl,[bp+si+0xc]
00000C0C  036040            add sp,[bx+si+0x40]
00000C0F  02800380          add al,[bx+si-0x7ffd]
00000C13  07                pop es
00000C14  80F001            xor al,0x1
00000C17  FE03              inc byte [bp+di]
00000C19  30800507          xor [bx+si+0x705],al
00000C1D  03C0              add ax,ax
00000C1F  D802              fadd dword [bp+si]
00000C21  058603            add ax,0x386
00000C24  0330              add si,[bx+si]
00000C26  40                inc ax
00000C27  02800E01          add al,[bx+si+0x10e]
00000C2B  E036              loopne 0xc63
00000C2D  0426              add al,0x26
00000C2F  01818003          add [bx+di+0x380],ax
00000C33  18800140          sbb [bx+si+0x4001],al
00000C37  1CF0              sbb al,0xf0
00000C39  AC                lodsb
00000C3A  40                inc ax
00000C3B  0418              add al,0x18
00000C3D  61                popa
00000C3E  800308            add byte [bp+di],0x8
00000C41  02802C78          add al,[bx+si+0x782c]
00000C45  2AE0              sub ah,al
00000C47  60                pusha
00000C48  06                push es
00000C49  60                pusha
00000C4A  06                push es
00000C4B  1001              adc [bx+di],al
00000C4D  40                inc ax
00000C4E  46                inc si
00000C4F  3CAA              cmp al,0xaa
00000C51  AA                stosb
00000C52  DBC0              fcmovnb st0
00000C54  1E                push ds
00000C55  06                push es
00000C56  030C              add cx,[si]
00000C58  08A08319          or [bx+si+0x1983],ah
00000C5C  AA                stosb
00000C5D  A4                movsb
00000C5E  67800606          add byte [esi],0x6
00000C62  D86010            fsub dword [bx+si+0x10]
00000C65  014001            add [bx+si+0x1],ax
00000C68  C0060C0F18        rol byte [0xf0c],byte 0x18
00000C6D  C00C08            ror byte [si],byte 0x8
00000C70  A00230            mov al,[0x3002]
00000C73  1B1E0198          sbb bx,[0x9801]
00000C77  1810              sbb [bx+si],dl
00000C79  014004            add [bx+si+0x4],ax
00000C7C  50                push ax
00000C7D  0C1E              or al,0x1e
00000C7F  1E                push ds
00000C80  0D80C0            or ax,0xc080
00000C83  1203              adc al,[bp+di]
00000C85  41                inc cx
00000C86  08A00940          or [bx+si+0x4009],ah
00000C8A  033C              add di,[si]
00000C8C  1E                push ds
00000C8D  3C60              cmp al,0x60
00000C8F  6C                insb
00000C90  8981A080          mov [bx+di-0x7f60],ax
00000C94  1001              adc [bx+di],al
00000C96  40                inc ax
00000C97  45                inc bp
00000C98  50                push ax
00000C99  C0441E18          rol byte [si+0x1e],byte 0x18
00000C9D  63C1              arpl cx,ax
00000C9F  93                xchg ax,bx
00000CA0  B1C1              mov cl,0xc1
00000CA2  0802              or [bp+si],al
00000CA4  80815460B4        add byte [bx+di+0x6054],0xb4
00000CA9  1E                push ds
00000CAA  01E0              add ax,sp
00000CAC  3932              cmp [bp+si],si
00000CAE  A08010            mov al,[0x1080]
00000CB1  014010            add [bx+si+0x10],ax
00000CB4  55                push bp
00000CB5  50                push ax
00000CB6  3001              xor [bx+di],al
00000CB8  55                push bp
00000CB9  41                inc cx
00000CBA  4F                dec di
00000CBB  28D8              sub al,bl
00000CBD  0D8310            or ax,0x1083
00000CC0  40                inc ax
00000CC1  0802              or [bp+si],al
00000CC3  800801            or byte [bx+si],0x1
00000CC6  55                push bp
00000CC7  54                push sp
00000CC8  154C01            adc ax,0x14c
00000CCB  41                inc cx
00000CCC  41                inc cx
00000CCD  4F                dec di
00000CCE  28360330          sub [0x3003],dh
00000CD2  E080              loopne 0xc54
00000CD4  1004              adc [si],al
00000CD6  40                inc ax
00000CD7  40                inc ax
00000CD8  055540            add ax,0x4055
00000CDB  1005              adc [di],al
00000CDD  56                push si
00000CDE  028AA0A7          add cl,[bp+si-0x5860]
00000CE2  94                xchg ax,sp
00000CE3  0CC1              or al,0xc1
00000CE5  2CD0              sub al,0xd0
00000CE7  40                inc ax
00000CE8  0808              or [bx+si],cl
00000CEA  802015            and byte [bx+si],0x15
00000CED  55                push bp
00000CEE  55                push bp
00000CEF  0415              add al,0x15
00000CF1  55                push bp
00000CF2  800280            add byte [bp+si],0x80
00000CF5  A0A3CA            mov al,[0xcaa3]
00000CF8  0318              add bx,[bx+si]
00000CFA  EB68              jmp 0xd64
00000CFC  2010              and [bx+si],dl
00000CFE  104111            adc [bx+di+0x11],al
00000D01  55                push bp
00000D02  55                push bp
00000D03  54                push sp
00000D04  0405              add al,0x5
00000D06  55                push bp
00000D07  C00285            rol byte [bp+si],byte 0x85
00000D0A  50                push ax
00000D0B  51                push cx
00000D0C  E5C3              in ax,byte 0xc3
00000D0E  2B10              sub dx,[bx+si]
00000D10  1008              adc [bx+si],cl
00000D12  2001              and [bx+di],al
00000D14  055555            add ax,0x5555
00000D17  7002              jo 0xd1b
00000D19  8A28              mov ch,[bx+si]
00000D1B  28F2              sub dl,dh
00000D1D  80501994          adc byte [bx+si+0x19],0x94
00000D21  680810            push word 0x1008
00000D24  40                inc ax
00000D25  0408              add al,0x8
00000D27  80455548          add byte [di+0x55],0x48
00000D2B  028A141E          add cl,[bp+si+0x1e14]
00000D2F  7940              jns 0xd71
00000D31  2803              sub [bp+di],al
00000D33  3034              xor [si],dh
00000D35  1020              adc [bx+si],ah
00000D37  800480            add byte [si],0x80
00000D3A  8115554C          adc word [di],0x4c55
00000D3E  01541E            add [si+0x1e],dx
00000D41  07                pop es
00000D42  9E                sahf
00000D43  A01ED8            mov al,[0xd81e]
00000D46  1A20              sbb ah,[bx+si]
00000D48  40                inc ax
00000D49  01361002          add [0x210],si
00000D4D  8155555601        adc word [di+0x55],0x156
00000D52  54                push sp
00000D53  0D81E5            or ax,0xe581
00000D56  50                push ax
00000D57  0F                db 0x0f
00000D58  36AD              ss lodsw
00000D5A  1223              adc ah,[bp+di]
00000D5C  06                push es
00000D5D  1020              adc [bx+si],ah
00000D5F  8415              test [di],dl
00000D61  55                push bp
00000D62  57                push di
00000D63  C0                db 0xc0
00000D64  3303              xor ax,[bp+di]
00000D66  36C00280          rol byte [ss:bp+si],byte 0x80
00000D6A  36036002          add sp,[ss:bx+si+0x2]
00000D6E  8063A002          and byte [bp+di-0x60],0x2
00000D72  80660280          and byte [bp+0x2],0x80
00000D76  636663            arpl [bp+0x63],sp
00000D79  055066            add ax,0x6650
00000D7C  22630A            and ah,[bp+di+0xa]
00000D7F  41                inc cx
00000D80  361482            ss adc al,0x82
00000D83  0A14              or dl,[si]
00000D85  7901              jns 0xd88
00000D87  A4                movsb
00000D88  40                inc ax
00000D89  2801              sub [bx+di],al
00000D8B  E203              loop 0xd90
00000D8D  40                inc ax
00000D8E  0112              add [bp+si],dx
00000D90  F8                clc
00000D91  0E                push cs
00000D92  40                inc ax
00000D93  07                pop es
00000D94  95                xchg ax,bp
00000D95  013E8014          add [0x1480],di
00000D99  A03622            mov al,[0x2236]
00000D9C  82                db 0x82
00000D9D  50                push ax
00000D9E  02D8              add bl,al
00000DA0  800880            or byte [bx+si],0x80
00000DA3  0925              or [di],sp
00000DA5  A4                movsb
00000DA6  41                inc cx
00000DA7  0152C0            add [bp+si-0x40],dx
00000DAA  151E22            adc ax,0x221e
00000DAD  52                push dx
00000DAE  B96A80            mov cx,0x806a
00000DB1  027220            add dh,[bp+si+0x20]
00000DB4  7D7B              jnl 0xe31
00000DB6  31AAA695          xor [bp+si-0x6a5a],bp
00000DBA  40                inc ax
00000DBB  036073            add sp,[bx+si+0x73]
00000DBE  11401D            adc [bx+si+0x1d],ax
00000DC1  D3ED              shr bp,cl
00000DC3  6208              bound cx,[bx+si]
00000DC5  800614C012        add byte [0xc014],0x12
00000DCA  C7                db 0xc7
00000DCB  D3855110          rol word [di+0x1051],cl
00000DCF  100C              adc [si],cl
00000DD1  02DB              add bl,bl
00000DD3  EAC0ABDE88        jmp word 0x88de:word 0xabc0
00000DD8  8802              mov [bp+si],al
00000DDA  0C78              or al,0x78
00000DDC  C3                ret
00000DDD  E98244            jmp 0x5262
00000DE0  54                push sp
00000DE1  E40B              in al,byte 0xb
00000DE3  44                inc sp
00000DE4  0230              add dh,[bx+si]
00000DE6  09EA              or dx,bp
00000DE8  20B8A804          and [bx+si+0x4a8],bh
00000DEC  8A4C05            mov cl,[si+0x5]
00000DEF  0201              add al,[bx+di]
00000DF1  037EC0            add di,[bp-0x40]
00000DF4  1B0A              sbb cx,[bp+si]
00000DF6  41                inc cx
00000DF7  F2800389          repne add byte [bp+di],0x89
00000DFB  55                push bp
00000DFC  7003              jo 0xe01
00000DFE  4F                dec di
00000DFF  1C01              sbb al,0x1
00000E01  6883B4            push word 0xb483
00000E04  40                inc ax
00000E05  0201              add al,[bx+di]
00000E07  55                push bp
00000E08  48                dec ax
00000E09  1222              adc ah,[bp+si]
00000E0B  F9                stc
00000E0C  0998B340          or [bx+si+0x40b3],bx
00000E10  059A20            add ax,0x209a
00000E13  025555            add dl,[di+0x55]
00000E16  58                pop ax
00000E17  E85A7C            call 0x8a74
00000E1A  98                cbw
00000E1B  49                dec cx
00000E1C  800473            add byte [si],0x73
00000E1F  5D                pop bp
00000E20  40                inc ax
00000E21  0485              add al,0x85
00000E23  55                push bp
00000E24  48                dec ax
00000E25  0121              add [bx+di],sp
00000E27  5E                pop si
00000E28  3518F6            xor ax,0xf618
00000E2B  300A              xor [bp+si],cl
00000E2D  CC                int3
00000E2E  2406              and al,0x6
00000E30  155558            adc ax,0x5855
00000E33  07                pop es
00000E34  45                inc bp
00000E35  4B                dec bx
00000E36  0C18              or al,0x18
00000E38  0C0C              or al,0xc
00000E3A  06                push es
00000E3B  1824              sbb [si],ah
00000E3D  0C05              or al,0x5
00000E3F  55                push bp
00000E40  60                pusha
00000E41  0915              or [di],dx
00000E43  7604              jna 0xe49
00000E45  0430              add al,0x30
00000E47  14CB              adc al,0xcb
00000E49  EC                in al,dx
00000E4A  0C15              or al,0x15
00000E4C  55                push bp
00000E4D  7012              jo 0xe61
00000E4F  056616            add ax,0x1666
00000E52  07                pop es
00000E53  D424              aam byte 0x24
00000E55  0FE818            psubsb mm3,[bx+si]
00000E58  055560            add ax,0x6055
00000E5B  48                dec ax
00000E5C  157304            adc ax,0x473
00000E5F  0807              or [bx],al
00000E61  55                push bp
00000E62  869EE018          xchg bl,[bp+0x18e0]
00000E66  015570            add [di+0x70],dx
00000E69  C0554B03          rcl byte [di+0x4b],byte 0x3
00000E6D  304B55            xor [bp+di+0x55],cl
00000E70  5C                pop sp
00000E71  87A031B0          xchg sp,[bx+si-0x4fcf]
00000E75  55                push bp
00000E76  60                pusha
00000E77  CA1559            retf word 0x5915
00000E7A  9B10861555        wait adc [bp+0x5515],al
00000E7F  91                xchg ax,cx
00000E80  66B955200180      mov ecx,0x80012055
00000E86  55                push bp
00000E87  5C                pop sp
00000E88  1920              sbb [bx+si],sp
00000E8A  C00555            rol byte [di],byte 0x55
00000E8D  4D                dec bp
00000E8E  D9EC              fldlg2
00000E90  55                push bp
00000E91  60                pusha
00000E92  0315              add dx,[di]
00000E94  70D2              jo 0xe68
00000E96  2401              and al,0x1
00000E98  55                push bp
00000E99  58                pop ax
00000E9A  01BECF55          add [bp+0x55cf],di
00000E9E  800355            add byte [bp+di],0x55
00000EA1  C7                db 0xc7
00000EA2  0801              or [bx+di],al
00000EA4  80555628          adc byte [di+0x56],0x28
00000EA8  037D5F            add di,[di+0x5f]
00000EAB  55                push bp
00000EAC  C006015733        rol byte [0x5701],byte 0x33
00000EB1  0C01              or al,0x1
00000EB3  02C1              add al,cl
00000EB5  55                push bp
00000EB6  57                push di
00000EB7  50                push ax
00000EB8  09F5              or bp,si
00000EBA  5C                pop sp
00000EBB  D0800480          rol byte [bx+si-0x7ffc],0x0
00000EBF  48                dec ax
00000EC0  C00102            rol byte [bx+di],byte 0x2
00000EC3  01805554          add [bx+si+0x5455],ax
00000EC7  801CEA            sbb byte [si],0xea
00000ECA  BD9905            mov bp,0x599
00000ECD  C1                db 0xc1
00000ECE  7309              jnc 0xed9
00000ED0  024001            add al,[bx+si+0x1]
00000ED3  55                push bp
00000ED4  55                push bp
00000ED5  801ED55782        sbb byte [0x57d5],0x82
00000EDA  0C05              or al,0x5
00000EDC  CC                int3
00000EDD  0408              add al,0x8
00000EDF  2405              and al,0x5
00000EE1  55                push bp
00000EE2  55                push bp
00000EE3  60                pusha
00000EE4  1F                pop ds
00000EE5  802E440C01        sub byte [0xc44],0x1
00000EEA  B006              mov al,0x6
00000EEC  61                popa
00000EED  55                push bp
00000EEE  55                push bp
00000EEF  703A              jo 0xf2b
00000EF1  06                push es
00000EF2  880C              mov [si],cl
00000EF4  56                push si
00000EF5  60                pusha
00000EF6  0362D5            add sp,[bp+si-0x2b]
00000EF9  55                push bp
00000EFA  48                dec ax
00000EFB  300D              xor [di],cl
00000EFD  100C              adc [si],cl
00000EFF  AD                lodsw
00000F00  802707            and byte [bx],0x7
00000F03  95                xchg ax,bp
00000F04  55                push bp
00000F05  58                pop ax
00000F06  301A              xor [bp+si],bl
00000F08  200D              and [di],cl
00000F0A  2620418F          and [es:bx+di-0x71],al
00000F0E  55                push bp
00000F0F  41                inc cx
00000F10  7570              jnz 0xf82
00000F12  6440              fs inc ax
00000F14  0F1804            prefetchnta byte [si]
00000F17  203D              and [di],bh
00000F19  9E                sahf
00000F1A  150A0A            adc ax,0xa0a
00000F1D  E002              loopne 0xf21
00000F1F  48                dec ax
00000F20  800180            add byte [bx+di],0x80
00000F23  0C06              or al,0x6
00000F25  4B                dec bx
00000F26  3C55              cmp al,0x55
00000F28  801060            adc byte [bx+si],0x60
00000F2B  0491              add al,0x91
00000F2D  0C02              or al,0x2
00000F2F  4C                dec sp
00000F30  79EB              jns 0xf1d
00000F32  028AE021          add cl,[bp+si+0x21e0]
00000F36  226042            and ah,[bx+si+0x42]
00000F39  49                dec cx
00000F3A  E36D              jcxz 0xfa9
00000F3C  154460            adc ax,0x6044
00000F3F  42                inc dx
00000F40  44                inc sp
00000F41  06                push es
00000F42  08412F            or [bx+di+0x2f],al
00000F45  0CD8              or al,0xd8
00000F47  A80A              test al,0xa
00000F49  E084              loopne 0xecf
00000F4B  8818              mov [bx+si],bl
00000F4D  48                dec ax
00000F4E  217863            and [bx+si+0x63],di
00000F51  60                pusha
00000F52  115560            adc [di+0x60],dx
00000F55  43                inc bx
00000F56  10C0              adc al,al
00000F58  024423            add al,[si+0x23]
00000F5B  CC                int3
00000F5C  1B22              sbb sp,[bp+si]
00000F5E  8AE0              mov ah,al
00000F60  262003            and [es:bp+di],al
00000F63  10A16F78          adc [bx+di+0x786f],ah
00000F67  051515            add ax,0x1515
00000F6A  C0494006          ror byte [bx+di+0x40],byte 0x6
00000F6E  0205              add al,[di]
00000F70  08FD              or ch,bh
00000F72  40                inc ax
00000F73  82                db 0x82
00000F74  2A2A              sub ch,[bp+si]
00000F76  C026800C01        shl byte [0xc80],byte 0x1
00000F7B  0808              or [bx+si],cl
00000F7D  40                inc ax
00000F7E  0170A4            add [bx+si-0x5c],si
00000F81  A4                movsb
00000F82  0405              add al,0x5
00000F84  804D1201          or byte [di+0x12],0x1
00000F88  8402              test [bp+si],al
00000F8A  4B                dec bx
00000F8B  CC                int3
00000F8C  60                pusha
00000F8D  0A838030          or al,[bp+di+0x3080]
00000F91  2403              and al,0x3
00000F93  0810              or [bx+si],dl
00000F95  C4                db 0xc4
00000F96  EC                in al,dx
00000F97  1801              sbb [bx+di],al
00000F99  07                pop es
00000F9A  48                dec ax
00000F9B  42                inc dx
00000F9C  06                push es
00000F9D  0420              add al,0x20
00000F9F  0184B618          add [si+0x18b6],ax
00000FA3  020B              add cl,[bp+di]
00000FA5  30810C02          xor [bx+di+0x20c],al
00000FA9  40                inc ax
00000FAA  03B1DB18          add si,[bx+di+0x18db]
00000FAE  01164840          add [0x4048],dx
00000FB2  803004            xor byte [bx+si],0x4
00000FB5  8005C2            add byte [di],0xc2
00000FB8  BDB002            mov bp,0x2b0
00000FBB  0E                push cs
00000FBC  30801001          xor [bx+si+0x110],al
00000FC0  2002              and [bp+si],al
00000FC2  45                inc bp
00000FC3  15215E            adc ax,0x5e21
00000FC6  A0041C            mov al,[0x1c04]
00000FC9  48                dec ax
00000FCA  40                inc ax
00000FCB  40                inc ax
00000FCC  01850590          add [di-0x6ffb],ax
00000FD0  5F                pop di
00000FD1  022C              add ch,[si]
00000FD3  3020              xor [bx+si],ah
00000FD5  80024F            add byte [bp+si],0x4f
00000FD8  1E                push ds
00000FD9  95                xchg ax,bp
00000FDA  01B00458          add [bx+si+0x5804],si
00000FDE  48                dec ax
00000FDF  1001              adc [bx+di],al
00000FE1  018F3D28          add [bx+0x283d],cx
00000FE5  40                inc ax
00000FE6  A0C0B8            mov al,[0xb8c0]
00000FE9  90                nop
00000FEA  0808              or [bx+si],cl
00000FEC  031EDA52          add bx,[0x52da]
00000FF0  02800198          add al,[bx+si-0x67ff]
00000FF4  0108              add [bx+si],cx
00000FF6  0410              add al,0x10
00000FF8  019E01BE          add [bp-0x41ff],bx
00000FFC  B005              mov al,0x5
00000FFE  1E                push ds
00000FFF  0210              add dl,[bx+si]
00001001  8080033653        add byte [bx+si+0x3603],0x53
00001006  7D60              jnl 0x1068
00001008  0F07              sysret
0000100A  90                nop
0000100B  2003              and [bp+di],al
0000100D  6C                insb
0000100E  A6                cmpsb
0000100F  F0                lock
00001010  C01E01C403        rcr byte [0xc401],byte 0x3
00001015  6D                insw
00001016  E6B5              out byte 0xb5,al
00001018  801E0603C0        sbb byte [0x306],0xc0
0000101D  45                inc bp
0000101E  6B1510            imul dx,[di],0x10
00001021  0C03              or al,0x3
00001023  CD94              int byte 0x94
00001025  42                inc dx
00001026  6E                outsb
00001027  0406              add al,0x6
00001029  C498817C          les bx,word [bx+si+0x7c81]
0000102D  8009E8            or byte [bx+di],0xe8
00001030  91                xchg ax,cx
00001031  8480D410          test [bx+si+0x10d4],al
00001035  51                push cx
00001036  084619            or [bp+0x19],al
00001039  A850              test al,0x50
0000103B  C0481812          ror byte [bx+si+0x18],byte 0x12
0000103F  0203              add al,[bp+di]
00001041  80480324          or byte [bx+si+0x3],0x24
00001045  0A0C              or cl,[si]
00001047  1202              adc al,[bp+si]
00001049  03802422          add ax,[bx+si+0x2224]
0000104D  0312              add dx,[bp+si]
0000104F  0128              add [bx+si],bp
00001051  0101              add [bx+di],ax
00001053  802402            and byte [si],0x2
00001056  40                inc ax
00001057  61                popa
00001058  80421206          add byte [bp+si+0x12],0x6
0000105C  6403800204        add ax,[fs:bx+si+0x402]
00001061  0A481C            or cl,[bx+si+0x1c]
00001064  0403              add al,0x3
00001066  0408              add al,0x8
00001068  44                inc sp
00001069  90                nop
0000106A  06                push es
0000106B  0458              add al,0x58
0000106D  80400809          add byte [bx+si+0x8],0x9
00001071  800108            add byte [bx+di],0x8
00001074  C0400801          rol byte [bx+si+0x8],byte 0x1
00001078  B303              mov bl,0x3
0000107A  1880102A          sbb [bx+si+0x2a10],al
0000107E  10630D            adc [bp+di+0xd],ah
00001081  A04054            mov al,[0x5440]
00001084  80663820          and byte [bp+0x38],0x20
00001088  6C                insb
00001089  AC                lodsb
0000108A  6318              arpl [bx+si],bx
0000108C  22C3              and al,bl
0000108E  014666            add [bp+0x66],ax
00001091  0930              or [bx+si],si
00001093  60                pusha
00001094  028D4173          add cl,[di+0x7341]
00001098  2801              sub [bx+di],al
0000109A  98                cbw
0000109B  2402              and al,0x2
0000109D  8D4173            lea ax,[bx+di+0x73]
000010A0  28360605          sub [0x506],dh
000010A4  06                push es
000010A5  A0B9BC            mov al,[0xbcb9]
000010A8  0CC1              or al,0xc1
000010AA  800506            add byte [di],0x6
000010AD  A0ACDE            mov al,[0xdeac]
000010B0  0318              add bx,[bx+si]
000010B2  C00503            rol byte [di],byte 0x3
000010B5  50                push ax
000010B6  56                push si
000010B7  6F                outsw
000010B8  C3                ret
000010B9  3005              xor [di],al
000010BB  01A82B3D          add [bx+si+0x3d2b],bp
000010BF  805018D8          adc byte [bx+si+0x18],0xd8
000010C3  05D41E            add ax,0x1ed4
000010C6  DEC0              faddp st0
000010C8  2803              sub [bp+di],al
000010CA  3602802E0D        add al,[ss:bx+si+0xd2e]
000010CF  E7E0              out byte 0xe0,ax
000010D1  1E                push ds
000010D2  CF                iret
000010D3  1402              adc al,0x2
000010D5  801583            adc byte [di],0x83
000010D8  7BF0              jpo 0x10ca
000010DA  050D80            add ax,0x800d
000010DD  33C0              xor ax,ax
000010DF  0202              add al,[bp+si]
