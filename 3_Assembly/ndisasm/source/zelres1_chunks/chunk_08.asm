00000000  D411              aam byte 0x11
00000002  0000              add [bx+si],al
00000004  F5                cmc
00000005  3A28              cmp ch,[bx+si]
00000007  305730            xor [bx+0x30],dl
0000000A  7736              ja 0x42
0000000C  D436              aam byte 0x36
0000000E  053760            add ax,0x6037
00000011  37                aaa
00000012  4F                dec di
00000013  33B63521          xor si,[bp+0x2135]
00000017  367C35            ss jl 0x4f
0000001A  8F                db 0x8f
0000001B  37                aaa
0000001C  D837              fdiv dword [bx]
0000001E  6238              bound di,[bx+si]
00000020  2338              and di,[bx+si]
00000022  233A              and di,[bp+si]
00000024  883A              mov [bp+si],bh
00000026  0239              add bh,[bx+di]
00000028  B23B              mov dl,0x3b
0000002A  2F                das
0000002B  3B1EBE3C          cmp bx,[0x3cbe]
0000002F  0CBF              or al,0xbf
00000031  00A00E07          add [bx+si+0x70e],ah
00000035  B800B8            mov ax,0xb800
00000038  8ED8              mov ds,ax
0000003A  B91C00            mov cx,0x1c
0000003D  51                push cx
0000003E  56                push si
0000003F  B91800            mov cx,0x18
00000042  A5                movsw
00000043  81C6FE1F          add si,0x1ffe
00000047  81FE0040          cmp si,0x4000
0000004B  7204              jc 0x51
0000004D  81C650C0          add si,0xc050
00000051  E2EF              loop 0x42
00000053  5E                pop si
00000054  59                pop cx
00000055  46                inc si
00000056  46                inc si
00000057  E2E4              loop 0x3d
00000059  1F                pop ds
0000005A  C3                ret
0000005B  0E                push cs
0000005C  07                pop es
0000005D  BFD43F            mov di,0x3fd4
00000060  33C0              xor ax,ax
00000062  B90001            mov cx,0x100
00000065  F3AB              rep stosw
00000067  8B362AFF          mov si,[0xff2a]
0000006B  807C1DFD          cmp byte [si+0x1d],0xfd
0000006F  7503              jnz 0x74
00000071  E8C603            call 0x43a
00000074  C7066D3D3C0C      mov word [0x3d6d],0xc3c
0000007A  8B362AFF          mov si,[0xff2a]
0000007E  83C620            add si,0x20
00000081  0E                push cs
00000082  07                pop es
00000083  BF00E0            mov di,0xe000
00000086  C6066F3D00        mov byte [0x3d6f],0x0
0000008B  E85100            call 0xdf
0000008E  32DB              xor bl,bl
00000090  A6                cmpsb
00000091  7403              jz 0x96
00000093  E8E401            call 0x27a
00000096  FEC3              inc bl
00000098  A6                cmpsb
00000099  7403              jz 0x9e
0000009B  E8DC01            call 0x27a
0000009E  FEC3              inc bl
000000A0  A6                cmpsb
000000A1  7403              jz 0xa6
000000A3  E8D401            call 0x27a
000000A6  FEC3              inc bl
000000A8  A6                cmpsb
000000A9  7403              jz 0xae
000000AB  E87600            call 0x124
000000AE  FEC3              inc bl
000000B0  A6                cmpsb
000000B1  7403              jz 0xb6
000000B3  E86E00            call 0x124
000000B6  FEC3              inc bl
000000B8  A6                cmpsb
000000B9  7403              jz 0xbe
000000BB  E85D00            call 0x11b
000000BE  FEC3              inc bl
000000C0  A6                cmpsb
000000C1  7403              jz 0xc6
000000C3  E85E00            call 0x124
000000C6  FEC3              inc bl
000000C8  A6                cmpsb
000000C9  7403              jz 0xce
000000CB  E85600            call 0x124
000000CE  83066D3D02        add word [0x3d6d],0x2
000000D3  FE066F3D          inc byte [0x3d6f]
000000D7  803E6F3D1C        cmp byte [0x3d6f],0x1c
000000DC  75AD              jnz 0x8b
000000DE  C3                ret
000000DF  803E6F3D1B        cmp byte [0x3d6f],0x1b
000000E4  7501              jnz 0xe7
000000E6  C3                ret
000000E7  A08300            mov al,[0x83]
000000EA  38066F3D          cmp [0x3d6f],al
000000EE  7401              jz 0xf1
000000F0  C3                ret
000000F1  57                push di
000000F2  06                push es
000000F3  56                push si
000000F4  A08300            mov al,[0x83]
000000F7  02C0              add al,al
000000F9  32E4              xor ah,ah
000000FB  8BF8              mov di,ax
000000FD  81C77C12          add di,0x127c
00000101  B800B8            mov ax,0xb800
00000104  8EC0              mov es,ax
00000106  BE143F            mov si,0x3f14
00000109  B90200            mov cx,0x2
0000010C  51                push cx
0000010D  57                push di
0000010E  E8CF03            call 0x4e0
00000111  5F                pop di
00000112  47                inc di
00000113  47                inc di
00000114  59                pop cx
00000115  E2F5              loop 0x10c
00000117  5E                pop si
00000118  07                pop es
00000119  5F                pop di
0000011A  C3                ret
0000011B  807CFFFD          cmp byte [si-0x1],0xfd
0000011F  7503              jnz 0x124
00000121  E95502            jmp 0x379
00000124  8A45FF            mov al,[di-0x1]
00000127  C645FFFE          mov byte [di-0x1],0xfe
0000012B  FEC0              inc al
0000012D  7501              jnz 0x130
0000012F  C3                ret
00000130  4F                dec di
00000131  4E                dec si
00000132  8A14              mov dl,[si]
00000134  A4                movsb
00000135  06                push es
00000136  1E                push ds
00000137  57                push di
00000138  56                push si
00000139  53                push bx
0000013A  52                push dx
0000013B  32FF              xor bh,bh
0000013D  03DB              add bx,bx
0000013F  03DB              add bx,bx
00000141  B85000            mov ax,0x50
00000144  F7E3              mul bx
00000146  03066D3D          add ax,[0x3d6d]
0000014A  8BF8              mov di,ax
0000014C  5A                pop dx
0000014D  8ADA              mov bl,dl
0000014F  32FF              xor bh,bh
00000151  03DB              add bx,bx
00000153  F787D43FFFFF      test word [bx+0x3fd4],0xffff
00000159  7542              jnz 0x19d
0000015B  89BFD43F          mov [bx+0x3fd4],di
0000015F  B81000            mov ax,0x10
00000162  F6E2              mul dl
00000164  8BF0              mov si,ax
00000166  81C60081          add si,0x8100
0000016A  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000016F  B800B8            mov ax,0xb800
00000172  8EC0              mov es,ax
00000174  B90400            mov cx,0x4
00000177  A5                movsw
00000178  81C7FE1F          add di,0x1ffe
0000017C  81FF0040          cmp di,0x4000
00000180  7204              jc 0x186
00000182  81C750C0          add di,0xc050
00000186  A5                movsw
00000187  81C7FE1F          add di,0x1ffe
0000018B  81FF0040          cmp di,0x4000
0000018F  7204              jc 0x195
00000191  81C750C0          add di,0xc050
00000195  E2E0              loop 0x177
00000197  5B                pop bx
00000198  5E                pop si
00000199  5F                pop di
0000019A  1F                pop ds
0000019B  07                pop es
0000019C  C3                ret
0000019D  8BB7D43F          mov si,[bx+0x3fd4]
000001A1  B800B8            mov ax,0xb800
000001A4  8EC0              mov es,ax
000001A6  8ED8              mov ds,ax
000001A8  A5                movsw
000001A9  81C7FE1F          add di,0x1ffe
000001AD  81FF0040          cmp di,0x4000
000001B1  7204              jc 0x1b7
000001B3  81C750C0          add di,0xc050
000001B7  81C6FE1F          add si,0x1ffe
000001BB  81FE0040          cmp si,0x4000
000001BF  7204              jc 0x1c5
000001C1  81C650C0          add si,0xc050
000001C5  A5                movsw
000001C6  81C7FE1F          add di,0x1ffe
000001CA  81FF0040          cmp di,0x4000
000001CE  7204              jc 0x1d4
000001D0  81C750C0          add di,0xc050
000001D4  81C6FE1F          add si,0x1ffe
000001D8  81FE0040          cmp si,0x4000
000001DC  7204              jc 0x1e2
000001DE  81C650C0          add si,0xc050
000001E2  A5                movsw
000001E3  81C7FE1F          add di,0x1ffe
000001E7  81FF0040          cmp di,0x4000
000001EB  7204              jc 0x1f1
000001ED  81C750C0          add di,0xc050
000001F1  81C6FE1F          add si,0x1ffe
000001F5  81FE0040          cmp si,0x4000
000001F9  7204              jc 0x1ff
000001FB  81C650C0          add si,0xc050
000001FF  A5                movsw
00000200  81C7FE1F          add di,0x1ffe
00000204  81FF0040          cmp di,0x4000
00000208  7204              jc 0x20e
0000020A  81C750C0          add di,0xc050
0000020E  81C6FE1F          add si,0x1ffe
00000212  81FE0040          cmp si,0x4000
00000216  7204              jc 0x21c
00000218  81C650C0          add si,0xc050
0000021C  A5                movsw
0000021D  81C7FE1F          add di,0x1ffe
00000221  81FF0040          cmp di,0x4000
00000225  7204              jc 0x22b
00000227  81C750C0          add di,0xc050
0000022B  81C6FE1F          add si,0x1ffe
0000022F  81FE0040          cmp si,0x4000
00000233  7204              jc 0x239
00000235  81C650C0          add si,0xc050
00000239  A5                movsw
0000023A  81C7FE1F          add di,0x1ffe
0000023E  81FF0040          cmp di,0x4000
00000242  7204              jc 0x248
00000244  81C750C0          add di,0xc050
00000248  81C6FE1F          add si,0x1ffe
0000024C  81FE0040          cmp si,0x4000
00000250  7204              jc 0x256
00000252  81C650C0          add si,0xc050
00000256  A5                movsw
00000257  81C7FE1F          add di,0x1ffe
0000025B  81FF0040          cmp di,0x4000
0000025F  7204              jc 0x265
00000261  81C750C0          add di,0xc050
00000265  81C6FE1F          add si,0x1ffe
00000269  81FE0040          cmp si,0x4000
0000026D  7204              jc 0x273
0000026F  81C650C0          add si,0xc050
00000273  A5                movsw
00000274  5B                pop bx
00000275  5E                pop si
00000276  5F                pop di
00000277  1F                pop ds
00000278  07                pop es
00000279  C3                ret
0000027A  8A45FF            mov al,[di-0x1]
0000027D  C645FFFE          mov byte [di-0x1],0xfe
00000281  FEC0              inc al
00000283  7501              jnz 0x286
00000285  C3                ret
00000286  53                push bx
00000287  06                push es
00000288  8A54FF            mov dl,[si-0x1]
0000028B  8ADA              mov bl,dl
0000028D  32FF              xor bh,bh
0000028F  2E8E062CFF        mov es,word [cs:0xff2c]
00000294  26031E0080        add bx,[es:0x8000]
00000299  268A37            mov dh,[es:bx]
0000029C  07                pop es
0000029D  5B                pop bx
0000029E  0AF6              or dh,dh
000002A0  7503              jnz 0x2a5
000002A2  E97FFE            jmp 0x124
000002A5  4F                dec di
000002A6  4E                dec si
000002A7  A4                movsb
000002A8  06                push es
000002A9  1E                push ds
000002AA  57                push di
000002AB  56                push si
000002AC  53                push bx
000002AD  52                push dx
000002AE  32FF              xor bh,bh
000002B0  03DB              add bx,bx
000002B2  03DB              add bx,bx
000002B4  B85000            mov ax,0x50
000002B7  F7E3              mul bx
000002B9  03066D3D          add ax,[0x3d6d]
000002BD  8BF8              mov di,ax
000002BF  5A                pop dx
000002C0  B81000            mov ax,0x10
000002C3  F6E2              mul dl
000002C5  8BF0              mov si,ax
000002C7  8BE8              mov bp,ax
000002C9  81C60081          add si,0x8100
000002CD  81C500D0          add bp,0xd000
000002D1  B83000            mov ax,0x30
000002D4  F6266F3D          mul byte [0x3d6f]
000002D8  03DB              add bx,bx
000002DA  03DB              add bx,bx
000002DC  03D8              add bx,ax
000002DE  81C300A0          add bx,0xa000
000002E2  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000002E7  B800B8            mov ax,0xb800
000002EA  8EC0              mov es,ax
000002EC  B90800            mov cx,0x8
000002EF  2E8B07            mov ax,[cs:bx]
000002F2  43                inc bx
000002F3  43                inc bx
000002F4  3E234600          and ax,[ds:bp+0x0]
000002F8  45                inc bp
000002F9  45                inc bp
000002FA  0B04              or ax,[si]
000002FC  46                inc si
000002FD  46                inc si
000002FE  AB                stosw
000002FF  81C7FE1F          add di,0x1ffe
00000303  81FF0040          cmp di,0x4000
00000307  7204              jc 0x30d
00000309  81C750C0          add di,0xc050
0000030D  E2E0              loop 0x2ef
0000030F  5B                pop bx
00000310  5E                pop si
00000311  5F                pop di
00000312  1F                pop ds
00000313  07                pop es
00000314  8A65FF            mov ah,[di-0x1]
00000317  0AE4              or ah,ah
00000319  7501              jnz 0x31c
0000031B  C3                ret
0000031C  80FC19            cmp ah,0x19
0000031F  7201              jc 0x322
00000321  C3                ret
00000322  57                push di
00000323  06                push es
00000324  2E8E062CFF        mov es,word [cs:0xff2c]
00000329  268B3E0480        mov di,[es:0x8004]
0000032E  268A0D            mov cl,[es:di]
00000331  0AC9              or cl,cl
00000333  741B              jz 0x350
00000335  47                inc di
00000336  268A05            mov al,[es:di]
00000339  3CFF              cmp al,0xff
0000033B  7413              jz 0x350
0000033D  3AE0              cmp ah,al
0000033F  7509              jnz 0x34a
00000341  268A4501          mov al,[es:di+0x1]
00000345  8844FF            mov [si-0x1],al
00000348  EB06              jmp 0x350
0000034A  47                inc di
0000034B  47                inc di
0000034C  FEC9              dec cl
0000034E  75E6              jnz 0x336
00000350  07                pop es
00000351  5F                pop di
00000352  C3                ret
00000353  BF143F            mov di,0x3f14
00000356  B90600            mov cx,0x6
00000359  0E                push cs
0000035A  07                pop es
0000035B  51                push cx
0000035C  AC                lodsb
0000035D  1E                push ds
0000035E  56                push si
0000035F  B110              mov cl,0x10
00000361  F6E1              mul cl
00000363  8BF0              mov si,ax
00000365  81C60081          add si,0x8100
00000369  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000036E  B90800            mov cx,0x8
00000371  F3A5              rep movsw
00000373  5E                pop si
00000374  1F                pop ds
00000375  59                pop cx
00000376  E2E3              loop 0x35b
00000378  C3                ret
00000379  1E                push ds
0000037A  56                push si
0000037B  06                push es
0000037C  57                push di
0000037D  BF713D            mov di,0x3d71
00000380  A5                movsw
00000381  83C605            add si,0x5
00000384  A5                movsw
00000385  A4                movsb
00000386  2E8A166F3D        mov dl,[cs:0x3d6f]
0000038B  80C204            add dl,0x4
0000038E  32F6              xor dh,dh
00000390  2E03168000        add dx,[cs:0x80]
00000395  8916763D          mov [0x3d76],dx
00000399  E81D01            call 0x4b9
0000039C  26A2703D          mov [es:0x3d70],al
000003A0  26803E733DFD      cmp byte [es:0x3d73],0xfd
000003A6  7508              jnz 0x3b0
000003A8  42                inc dx
000003A9  E80D01            call 0x4b9
000003AC  26A2733D          mov [es:0x3d73],al
000003B0  BE703D            mov si,0x3d70
000003B3  BF743F            mov di,0x3f74
000003B6  E89DFF            call 0x356
000003B9  2E8B360FC0        mov si,[cs:0xc00f]
000003BE  E8E501            call 0x5a6
000003C1  0ADB              or bl,bl
000003C3  7412              jz 0x3d7
000003C5  56                push si
000003C6  53                push bx
000003C7  E8B601            call 0x580
000003CA  5B                pop bx
000003CB  2E8E062CFF        mov es,word [cs:0xff2c]
000003D0  BE703D            mov si,0x3d70
000003D3  E88801            call 0x55e
000003D6  5E                pop si
000003D7  83C608            add si,0x8
000003DA  833CFF            cmp word [si],0xffffffffffffffff
000003DD  75DF              jnz 0x3be
000003DF  5F                pop di
000003E0  07                pop es
000003E1  268A6DFF          mov ch,[es:di-0x1]
000003E5  268A4D07          mov cl,[es:di+0x7]
000003E9  06                push es
000003EA  57                push di
000003EB  51                push cx
000003EC  2E8B3E6D3D        mov di,[cs:0x3d6d]
000003F1  81C74006          add di,0x640
000003F5  57                push di
000003F6  BE743F            mov si,0x3f74
000003F9  B800B8            mov ax,0xb800
000003FC  8EC0              mov es,ax
000003FE  FEC5              inc ch
00000400  7403              jz 0x405
00000402  E8DB00            call 0x4e0
00000405  5F                pop di
00000406  59                pop cx
00000407  2E803E6F3D1B      cmp byte [cs:0x3d6f],0x1b
0000040D  740C              jz 0x41b
0000040F  BEA43F            mov si,0x3fa4
00000412  47                inc di
00000413  47                inc di
00000414  FEC1              inc cl
00000416  7403              jz 0x41b
00000418  E8C500            call 0x4e0
0000041B  5F                pop di
0000041C  07                pop es
0000041D  B0FF              mov al,0xff
0000041F  26C645FFFE        mov byte [es:di-0x1],0xfe
00000424  268805            mov [es:di],al
00000427  26884501          mov [es:di+0x1],al
0000042B  26884507          mov [es:di+0x7],al
0000042F  26884508          mov [es:di+0x8],al
00000433  26884509          mov [es:di+0x9],al
00000437  5E                pop si
00000438  1F                pop ds
00000439  C3                ret
0000043A  06                push es
0000043B  1E                push ds
0000043C  8B362AFF          mov si,[0xff2a]
00000440  83C625            add si,0x25
00000443  BF703D            mov di,0x3d70
00000446  A5                movsw
00000447  A4                movsb
00000448  8B168000          mov dx,[0x80]
0000044C  83C203            add dx,0x3
0000044F  8916763D          mov [0x3d76],dx
00000453  803E703DFD        cmp byte [0x3d70],0xfd
00000458  7507              jnz 0x461
0000045A  42                inc dx
0000045B  E85B00            call 0x4b9
0000045E  A2703D            mov [0x3d70],al
00000461  BE703D            mov si,0x3d70
00000464  BF743F            mov di,0x3f74
00000467  B90300            mov cx,0x3
0000046A  E8ECFE            call 0x359
0000046D  2E8B360FC0        mov si,[cs:0xc00f]
00000472  E83101            call 0x5a6
00000475  0ADB              or bl,bl
00000477  741F              jz 0x498
00000479  56                push si
0000047A  FECB              dec bl
0000047C  B003              mov al,0x3
0000047E  F6E3              mul bl
00000480  50                push ax
00000481  E8FC00            call 0x580
00000484  58                pop ax
00000485  03F8              add di,ax
00000487  8BEF              mov bp,di
00000489  2E8E062CFF        mov es,word [cs:0xff2c]
0000048E  BE703D            mov si,0x3d70
00000491  BF743F            mov di,0x3f74
00000494  E84F01            call 0x5e6
00000497  5E                pop si
00000498  83C608            add si,0x8
0000049B  833CFF            cmp word [si],0xffffffffffffffff
0000049E  75D2              jnz 0x472
000004A0  BF7C12            mov di,0x127c
000004A3  BE743F            mov si,0x3f74
000004A6  B800B8            mov ax,0xb800
000004A9  8EC0              mov es,ax
000004AB  E83200            call 0x4e0
000004AE  1F                pop ds
000004AF  07                pop es
000004B0  BF05E0            mov di,0xe005
000004B3  B0FF              mov al,0xff
000004B5  AA                stosb
000004B6  AA                stosb
000004B7  AA                stosb
000004B8  C3                ret
000004B9  E81600            call 0x4d2
000004BC  8A4403            mov al,[si+0x3]
000004BF  3CFD              cmp al,0xfd
000004C1  7401              jz 0x4c4
000004C3  C3                ret
000004C4  83C608            add si,0x8
000004C7  E80C00            call 0x4d6
000004CA  8A4403            mov al,[si+0x3]
000004CD  3CFD              cmp al,0xfd
000004CF  74F3              jz 0x4c4
000004D1  C3                ret
000004D2  8B360FC0          mov si,[0xc00f]
000004D6  3B14              cmp dx,[si]
000004D8  7501              jnz 0x4db
000004DA  C3                ret
000004DB  83C608            add si,0x8
000004DE  EBF6              jmp 0x4d6
000004E0  B90300            mov cx,0x3
000004E3  A5                movsw
000004E4  81C7FE1F          add di,0x1ffe
000004E8  81FF0040          cmp di,0x4000
000004EC  7204              jc 0x4f2
000004EE  81C750C0          add di,0xc050
000004F2  A5                movsw
000004F3  81C7FE1F          add di,0x1ffe
000004F7  81FF0040          cmp di,0x4000
000004FB  7204              jc 0x501
000004FD  81C750C0          add di,0xc050
00000501  A5                movsw
00000502  81C7FE1F          add di,0x1ffe
00000506  81FF0040          cmp di,0x4000
0000050A  7204              jc 0x510
0000050C  81C750C0          add di,0xc050
00000510  A5                movsw
00000511  81C7FE1F          add di,0x1ffe
00000515  81FF0040          cmp di,0x4000
00000519  7204              jc 0x51f
0000051B  81C750C0          add di,0xc050
0000051F  A5                movsw
00000520  81C7FE1F          add di,0x1ffe
00000524  81FF0040          cmp di,0x4000
00000528  7204              jc 0x52e
0000052A  81C750C0          add di,0xc050
0000052E  A5                movsw
0000052F  81C7FE1F          add di,0x1ffe
00000533  81FF0040          cmp di,0x4000
00000537  7204              jc 0x53d
00000539  81C750C0          add di,0xc050
0000053D  A5                movsw
0000053E  81C7FE1F          add di,0x1ffe
00000542  81FF0040          cmp di,0x4000
00000546  7204              jc 0x54c
00000548  81C750C0          add di,0xc050
0000054C  A5                movsw
0000054D  81C7FE1F          add di,0x1ffe
00000551  81FF0040          cmp di,0x4000
00000555  7204              jc 0x55b
00000557  81C750C0          add di,0xc050
0000055B  E286              loop 0x4e3
0000055D  C3                ret
0000055E  8BEF              mov bp,di
00000560  FECB              dec bl
00000562  32FF              xor bh,bh
00000564  03DB              add bx,bx
00000566  2EFF976835        call word near [cs:bx+0x3568]
0000056B  C3                ret
0000056C  7435              jz 0x5a3
0000056E  6C                insb
0000056F  35BF74            xor ax,0x74bf
00000572  3F                aas
00000573  E87000            call 0x5e6
00000576  EB6E              jmp 0x5e6
00000578  83C603            add si,0x3
0000057B  BFA43F            mov di,0x3fa4
0000057E  EB66              jmp 0x5e6
00000580  8A4402            mov al,[si+0x2]
00000583  8AE8              mov ch,al
00000585  247F              and al,0x7f
00000587  B130              mov cl,0x30
00000589  F6E1              mul cl
0000058B  050040            add ax,0x4000
0000058E  8BF8              mov di,ax
00000590  32D2              xor dl,dl
00000592  0AED              or ch,ch
00000594  7802              js 0x598
00000596  B204              mov dl,0x4
00000598  8A4404            mov al,[si+0x4]
0000059B  2403              and al,0x3
0000059D  02C2              add al,dl
0000059F  B106              mov cl,0x6
000005A1  F6E1              mul cl
000005A3  03F8              add di,ax
000005A5  C3                ret
000005A6  B90200            mov cx,0x2
000005A9  8B16763D          mov dx,[0x3d76]
000005AD  8AD9              mov bl,cl
000005AF  3914              cmp [si],dx
000005B1  7501              jnz 0x5b4
000005B3  C3                ret
000005B4  42                inc dx
000005B5  E2F6              loop 0x5ad
000005B7  8AD9              mov bl,cl
000005B9  C3                ret
000005BA  8BEF              mov bp,di
000005BC  FECB              dec bl
000005BE  32FF              xor bh,bh
000005C0  03DB              add bx,bx
000005C2  2EFF97C435        call word near [cs:bx+0x35c4]
000005C7  C3                ret
000005C8  DA35              fidiv dword [di]
000005CA  D2                db 0xd2
000005CB  35CA35            xor ax,0x35ca
000005CE  83C503            add bp,0x3
000005D1  BF143F            mov di,0x3f14
000005D4  EB10              jmp 0x5e6
000005D6  BF143F            mov di,0x3f14
000005D9  E80A00            call 0x5e6
000005DC  EB08              jmp 0x5e6
000005DE  BF443F            mov di,0x3f44
000005E1  83C603            add si,0x3
000005E4  EB00              jmp 0x5e6
000005E6  B90300            mov cx,0x3
000005E9  51                push cx
000005EA  C604FF            mov byte [si],0xff
000005ED  46                inc si
000005EE  1E                push ds
000005EF  56                push si
000005F0  268A4600          mov al,[es:bp+0x0]
000005F4  45                inc bp
000005F5  06                push es
000005F6  55                push bp
000005F7  FEC8              dec al
000005F9  B110              mov cl,0x10
000005FB  F6E1              mul cl
000005FD  8BF0              mov si,ax
000005FF  81C60041          add si,0x4100
00000603  050070            add ax,0x7000
00000606  2EA3803D          mov [cs:0x3d80],ax
0000060A  8CC8              mov ax,cs
0000060C  050020            add ax,0x2000
0000060F  2EA3823D          mov [cs:0x3d82],ax
00000613  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000618  0E                push cs
00000619  07                pop es
0000061A  E83C00            call 0x659
0000061D  5D                pop bp
0000061E  07                pop es
0000061F  5E                pop si
00000620  1F                pop ds
00000621  59                pop cx
00000622  E2C5              loop 0x5e9
00000624  C3                ret
00000625  0E                push cs
00000626  07                pop es
00000627  BF143F            mov di,0x3f14
0000062A  B90600            mov cx,0x6
0000062D  51                push cx
0000062E  AC                lodsb
0000062F  1E                push ds
00000630  56                push si
00000631  B110              mov cl,0x10
00000633  F6E1              mul cl
00000635  8BF0              mov si,ax
00000637  81C60060          add si,0x6000
0000063B  050080            add ax,0x8000
0000063E  2EA3803D          mov [cs:0x3d80],ax
00000642  8CC8              mov ax,cs
00000644  050020            add ax,0x2000
00000647  2EA3823D          mov [cs:0x3d82],ax
0000064B  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000650  E80600            call 0x659
00000653  5E                pop si
00000654  1F                pop ds
00000655  59                pop cx
00000656  E2D5              loop 0x62d
00000658  C3                ret
00000659  1E                push ds
0000065A  56                push si
0000065B  57                push di
0000065C  2EC536803D        lds si,word [cs:0x3d80]
00000661  B90800            mov cx,0x8
00000664  AD                lodsw
00000665  262105            and [es:di],ax
00000668  47                inc di
00000669  47                inc di
0000066A  E2F8              loop 0x664
0000066C  5F                pop di
0000066D  5E                pop si
0000066E  1F                pop ds
0000066F  B90800            mov cx,0x8
00000672  AD                lodsw
00000673  260905            or [es:di],ax
00000676  47                inc di
00000677  47                inc di
00000678  E2F8              loop 0x672
0000067A  C3                ret
0000067B  1E                push ds
0000067C  B800B8            mov ax,0xb800
0000067F  8EC0              mov es,ax
00000681  8ED8              mov ds,ax
00000683  FD                std
00000684  BE7316            mov si,0x1673
00000687  B008              mov al,0x8
00000689  56                push si
0000068A  8BFE              mov di,si
0000068C  4E                dec si
0000068D  4E                dec si
0000068E  B93600            mov cx,0x36
00000691  F3A4              rep movsb
00000693  83C61E            add si,0x1e
00000696  A4                movsb
00000697  A4                movsb
00000698  5E                pop si
00000699  81C60020          add si,0x2000
0000069D  81FE0040          cmp si,0x4000
000006A1  7204              jc 0x6a7
000006A3  81C650C0          add si,0xc050
000006A7  FEC8              dec al
000006A9  75DE              jnz 0x689
000006AB  BEB317            mov si,0x17b3
000006AE  B008              mov al,0x8
000006B0  56                push si
000006B1  8BFE              mov di,si
000006B3  83EE04            sub si,0x4
000006B6  B93400            mov cx,0x34
000006B9  F3A4              rep movsb
000006BB  83C620            add si,0x20
000006BE  A4                movsb
000006BF  A4                movsb
000006C0  A4                movsb
000006C1  A4                movsb
000006C2  5E                pop si
000006C3  81C60020          add si,0x2000
000006C7  81FE0040          cmp si,0x4000
000006CB  7204              jc 0x6d1
000006CD  81C650C0          add si,0xc050
000006D1  FEC8              dec al
000006D3  75DB              jnz 0x6b0
000006D5  1F                pop ds
000006D6  FC                cld
000006D7  C3                ret
000006D8  1E                push ds
000006D9  B800B8            mov ax,0xb800
000006DC  8EC0              mov es,ax
000006DE  8ED8              mov ds,ax
000006E0  FD                std
000006E1  BE7302            mov si,0x273
000006E4  B010              mov al,0x10
000006E6  56                push si
000006E7  8BFE              mov di,si
000006E9  4E                dec si
000006EA  B93700            mov cx,0x37
000006ED  F3A4              rep movsb
000006EF  83C61D            add si,0x1d
000006F2  A4                movsb
000006F3  5E                pop si
000006F4  81C60020          add si,0x2000
000006F8  81FE0040          cmp si,0x4000
000006FC  7204              jc 0x702
000006FE  81C650C0          add si,0xc050
00000702  FEC8              dec al
00000704  75E0              jnz 0x6e6
00000706  1F                pop ds
00000707  FC                cld
00000708  C3                ret
00000709  1E                push ds
0000070A  B800B8            mov ax,0xb800
0000070D  8EC0              mov es,ax
0000070F  8ED8              mov ds,ax
00000711  BE3C16            mov si,0x163c
00000714  B008              mov al,0x8
00000716  56                push si
00000717  8BFE              mov di,si
00000719  46                inc si
0000071A  46                inc si
0000071B  B93600            mov cx,0x36
0000071E  F3A4              rep movsb
00000720  83EE1E            sub si,0x1e
00000723  A4                movsb
00000724  A4                movsb
00000725  5E                pop si
00000726  81C60020          add si,0x2000
0000072A  81FE0040          cmp si,0x4000
0000072E  7204              jc 0x734
00000730  81C650C0          add si,0xc050
00000734  FEC8              dec al
00000736  75DE              jnz 0x716
00000738  BE7C17            mov si,0x177c
0000073B  B008              mov al,0x8
0000073D  56                push si
0000073E  8BFE              mov di,si
00000740  83C604            add si,0x4
00000743  B93400            mov cx,0x34
00000746  F3A4              rep movsb
00000748  83EE20            sub si,0x20
0000074B  A4                movsb
0000074C  A4                movsb
0000074D  A4                movsb
0000074E  A4                movsb
0000074F  5E                pop si
00000750  81C60020          add si,0x2000
00000754  81FE0040          cmp si,0x4000
00000758  7204              jc 0x75e
0000075A  81C650C0          add si,0xc050
0000075E  FEC8              dec al
00000760  75DB              jnz 0x73d
00000762  1F                pop ds
00000763  C3                ret
00000764  1E                push ds
00000765  B800B8            mov ax,0xb800
00000768  8EC0              mov es,ax
0000076A  8ED8              mov ds,ax
0000076C  BE3C02            mov si,0x23c
0000076F  B010              mov al,0x10
00000771  56                push si
00000772  8BFE              mov di,si
00000774  46                inc si
00000775  B93700            mov cx,0x37
00000778  F3A4              rep movsb
0000077A  83EE1D            sub si,0x1d
0000077D  A4                movsb
0000077E  5E                pop si
0000077F  81C60020          add si,0x2000
00000783  81FE0040          cmp si,0x4000
00000787  7204              jc 0x78d
00000789  81C650C0          add si,0xc050
0000078D  FEC8              dec al
0000078F  75E0              jnz 0x771
00000791  1F                pop ds
00000792  C3                ret
00000793  1E                push ds
00000794  56                push si
00000795  32E4              xor ah,ah
00000797  03C0              add ax,ax
00000799  03C0              add ax,ax
0000079B  03C0              add ax,ax
0000079D  03C0              add ax,ax
0000079F  8BF0              mov si,ax
000007A1  81C60080          add si,0x8000
000007A5  D0EB              shr bl,0x0
000007A7  1BFF              sbb di,di
000007A9  81E70020          and di,0x2000
000007AD  B050              mov al,0x50
000007AF  F6E3              mul bl
000007B1  03F8              add di,ax
000007B3  8ADF              mov bl,bh
000007B5  32FF              xor bh,bh
000007B7  03DB              add bx,bx
000007B9  03FB              add di,bx
000007BB  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000007C0  B800B8            mov ax,0xb800
000007C3  8EC0              mov es,ax
000007C5  B90800            mov cx,0x8
000007C8  A5                movsw
000007C9  81C7FE1F          add di,0x1ffe
000007CD  81FF0040          cmp di,0x4000
000007D1  7204              jc 0x7d7
000007D3  81C750C0          add di,0xc050
000007D7  E2EF              loop 0x7c8
000007D9  5E                pop si
000007DA  1F                pop ds
000007DB  C3                ret
000007DC  1E                push ds
000007DD  56                push si
000007DE  57                push di
000007DF  0E                push cs
000007E0  1F                pop ds
000007E1  D0EB              shr bl,0x0
000007E3  1BFF              sbb di,di
000007E5  81E70020          and di,0x2000
000007E9  B050              mov al,0x50
000007EB  F6E3              mul bl
000007ED  03F8              add di,ax
000007EF  8ADF              mov bl,bh
000007F1  32FF              xor bh,bh
000007F3  03FB              add di,bx
000007F5  B800B8            mov ax,0xb800
000007F8  8EC0              mov es,ax
000007FA  BE1138            mov si,0x3811
000007FD  B90900            mov cx,0x9
00000800  A5                movsw
00000801  81C7FE1F          add di,0x1ffe
00000805  81FF0040          cmp di,0x4000
00000809  7204              jc 0x80f
0000080B  81C750C0          add di,0xc050
0000080F  E2EF              loop 0x800
00000811  5F                pop di
00000812  5E                pop si
00000813  1F                pop ds
00000814  C3                ret
00000815  0000              add [bx+si],al
00000817  2800              sub [bx+si],al
00000819  2A00              sub al,[bx+si]
0000081B  2A802AA0          sub al,[bx+si-0x5fd6]
0000081F  2A802A00          sub al,[bx+si+0x2a]
00000823  2800              sub [bx+si],al
00000825  0000              add [bx+si],al
00000827  D0EB              shr bl,0x0
00000829  1BFF              sbb di,di
0000082B  81E70020          and di,0x2000
0000082F  B050              mov al,0x50
00000831  F6E3              mul bl
00000833  03F8              add di,ax
00000835  8ADF              mov bl,bh
00000837  32FF              xor bh,bh
00000839  03FB              add di,bx
0000083B  BE843D            mov si,0x3d84
0000083E  B800B8            mov ax,0xb800
00000841  8EC0              mov es,ax
00000843  B90900            mov cx,0x9
00000846  51                push cx
00000847  57                push di
00000848  56                push si
00000849  8B0E6AFF          mov cx,[0xff6a]
0000084D  F3A4              rep movsb
0000084F  5E                pop si
00000850  83C628            add si,0x28
00000853  5F                pop di
00000854  81C70020          add di,0x2000
00000858  81FF0040          cmp di,0x4000
0000085C  7204              jc 0x862
0000085E  81C750C0          add di,0xc050
00000862  59                pop cx
00000863  E2E1              loop 0x846
00000865  C3                ret
00000866  56                push si
00000867  57                push di
00000868  57                push di
00000869  32E4              xor ah,ah
0000086B  50                push ax
0000086C  0E                push cs
0000086D  07                pop es
0000086E  BF843D            mov di,0x3d84
00000871  33C0              xor ax,ax
00000873  B9C800            mov cx,0xc8
00000876  F3AB              rep stosw
00000878  58                pop ax
00000879  50                push ax
0000087A  03C0              add ax,ax
0000087C  03F0              add si,ax
0000087E  8B34              mov si,[si]
00000880  E81C00            call 0x89f
00000883  58                pop ax
00000884  5F                pop di
00000885  F60657FFFF        test byte [0xff57],0xff
0000088A  7410              jz 0x89c
0000088C  8BD8              mov bx,ax
0000088E  03C0              add ax,ax
00000890  03C3              add ax,bx
00000892  03F8              add di,ax
00000894  8A15              mov dl,[di]
00000896  8B4501            mov ax,[di+0x1]
00000899  E89000            call 0x92c
0000089C  5F                pop di
0000089D  5E                pop si
0000089E  C3                ret
0000089F  0E                push cs
000008A0  07                pop es
000008A1  BFAC3D            mov di,0x3dac
000008A4  32DB              xor bl,bl
000008A6  AC                lodsb
000008A7  0AC0              or al,al
000008A9  7501              jnz 0x8ac
000008AB  C3                ret
000008AC  53                push bx
000008AD  1E                push ds
000008AE  56                push si
000008AF  80E303            and bl,0x3
000008B2  E80700            call 0x8bc
000008B5  5E                pop si
000008B6  1F                pop ds
000008B7  5B                pop bx
000008B8  FEC3              inc bl
000008BA  EBEA              jmp 0x8a6
000008BC  2C20              sub al,0x20
000008BE  32E4              xor ah,ah
000008C0  D1E0              shl ax,0x0
000008C2  D1E0              shl ax,0x0
000008C4  D1E0              shl ax,0x0
000008C6  8BF0              mov si,ax
000008C8  0E                push cs
000008C9  1F                pop ds
000008CA  033604F5          add si,[0xf504]
000008CE  02DB              add bl,bl
000008D0  8ACB              mov cl,bl
000008D2  57                push di
000008D3  B308              mov bl,0x8
000008D5  53                push bx
000008D6  AC                lodsb
000008D7  B204              mov dl,0x4
000008D9  03C0              add ax,ax
000008DB  02E4              add ah,ah
000008DD  FECA              dec dl
000008DF  75F8              jnz 0x8d9
000008E1  8AC4              mov al,ah
000008E3  D0EC              shr ah,0x0
000008E5  0AC4              or al,ah
000008E7  32DB              xor bl,bl
000008E9  8AF8              mov bh,al
000008EB  D3EB              shr bx,cl
000008ED  26083D            or [es:di],bh
000008F0  26085D01          or [es:di+0x1],bl
000008F4  83C728            add di,0x28
000008F7  5B                pop bx
000008F8  FECB              dec bl
000008FA  75D9              jnz 0x8d5
000008FC  5F                pop di
000008FD  47                inc di
000008FE  80F906            cmp cl,0x6
00000901  7401              jz 0x904
00000903  C3                ret
00000904  47                inc di
00000905  C3                ret
00000906  52                push dx
00000907  50                push ax
00000908  0E                push cs
00000909  07                pop es
0000090A  BF843D            mov di,0x3d84
0000090D  33C0              xor ax,ax
0000090F  B9C800            mov cx,0xc8
00000912  F3AB              rep stosw
00000914  58                pop ax
00000915  5A                pop dx
00000916  E88600            call 0x99f
00000919  BFAC3D            mov di,0x3dac
0000091C  BEB339            mov si,0x39b3
0000091F  B90700            mov cx,0x7
00000922  B301              mov bl,0x1
00000924  C7066AFF0B00      mov word [0xff6a],0xb
0000092A  EB14              jmp 0x940
0000092C  E87000            call 0x99f
0000092F  0E                push cs
00000930  07                pop es
00000931  BFAC3D            mov di,0x3dac
00000934  033E68FF          add di,[0xff68]
00000938  BEB439            mov si,0x39b4
0000093B  B90600            mov cx,0x6
0000093E  B301              mov bl,0x1
00000940  51                push cx
00000941  53                push bx
00000942  57                push di
00000943  AC                lodsb
00000944  56                push si
00000945  E81100            call 0x959
00000948  5E                pop si
00000949  5F                pop di
0000094A  5B                pop bx
0000094B  8AC3              mov al,bl
0000094D  47                inc di
0000094E  250100            and ax,0x1
00000951  03F8              add di,ax
00000953  FEC3              inc bl
00000955  59                pop cx
00000956  E2E8              loop 0x940
00000958  C3                ret
00000959  FEC0              inc al
0000095B  7501              jnz 0x95e
0000095D  C3                ret
0000095E  FEC8              dec al
00000960  32E4              xor ah,ah
00000962  03C0              add ax,ax
00000964  03C0              add ax,ax
00000966  03C0              add ax,ax
00000968  2E030602F5        add ax,[cs:0xf502]
0000096D  8BF0              mov si,ax
0000096F  B90700            mov cx,0x7
00000972  AC                lodsb
00000973  B408              mov ah,0x8
00000975  02C0              add al,al
00000977  13D2              adc dx,dx
00000979  03D2              add dx,dx
0000097B  FECC              dec ah
0000097D  75F6              jnz 0x975
0000097F  8BC2              mov ax,dx
00000981  D1EA              shr dx,0x0
00000983  0BC2              or ax,dx
00000985  F6C301            test bl,0x1
00000988  7508              jnz 0x992
0000098A  03C0              add ax,ax
0000098C  03C0              add ax,ax
0000098E  03C0              add ax,ax
00000990  03C0              add ax,ax
00000992  260825            or [es:di],ah
00000995  26084501          or [es:di+0x1],al
00000999  83C728            add di,0x28
0000099C  E2D4              loop 0x972
0000099E  C3                ret
0000099F  BFB339            mov di,0x39b3
000009A2  E81900            call 0x9be
000009A5  B90600            mov cx,0x6
000009A8  2EF605FF          test byte [cs:di],0xff
000009AC  7401              jz 0x9af
000009AE  C3                ret
000009AF  2EC605FF          mov byte [cs:di],0xff
000009B3  47                inc di
000009B4  E2F2              loop 0x9a8
000009B6  C3                ret
000009B7  0000              add [bx+si],al
000009B9  0000              add [bx+si],al
000009BB  0000              add [bx+si],al
000009BD  00B10FBB          add [bx+di-0x44f1],dh
000009C1  40                inc ax
000009C2  42                inc dx
000009C3  E83E00            call 0xa04
000009C6  2E8835            mov [cs:di],dh
000009C9  B101              mov cl,0x1
000009CB  BBA086            mov bx,0x86a0
000009CE  E83300            call 0xa04
000009D1  2E887501          mov [cs:di+0x1],dh
000009D5  32C9              xor cl,cl
000009D7  BB1027            mov bx,0x2710
000009DA  E82700            call 0xa04
000009DD  2E887502          mov [cs:di+0x2],dh
000009E1  BBE803            mov bx,0x3e8
000009E4  E83600            call 0xa1d
000009E7  2E887503          mov [cs:di+0x3],dh
000009EB  BB6400            mov bx,0x64
000009EE  E82C00            call 0xa1d
000009F1  2E887504          mov [cs:di+0x4],dh
000009F5  BB0A00            mov bx,0xa
000009F8  E82200            call 0xa1d
000009FB  2E887505          mov [cs:di+0x5],dh
000009FF  2E884506          mov [cs:di+0x6],al
00000A03  C3                ret
00000A04  32F6              xor dh,dh
00000A06  2AD1              sub dl,cl
00000A08  7210              jc 0xa1a
00000A0A  2BC3              sub ax,bx
00000A0C  7306              jnc 0xa14
00000A0E  0AD2              or dl,dl
00000A10  7406              jz 0xa18
00000A12  FECA              dec dl
00000A14  FEC6              inc dh
00000A16  EBEE              jmp 0xa06
00000A18  03C3              add ax,bx
00000A1A  02D1              add dl,cl
00000A1C  C3                ret
00000A1D  32F6              xor dh,dh
00000A1F  F7F3              div bx
00000A21  92                xchg ax,dx
00000A22  8AF2              mov dh,dl
00000A24  32D2              xor dl,dl
00000A26  C3                ret
00000A27  1E                push ds
00000A28  50                push ax
00000A29  02D9              add bl,cl
00000A2B  FECB              dec bl
00000A2D  D0EB              shr bl,0x0
00000A2F  1BFF              sbb di,di
00000A31  81E70020          and di,0x2000
00000A35  B050              mov al,0x50
00000A37  F6E3              mul bl
00000A39  03F8              add di,ax
00000A3B  8ADF              mov bl,bh
00000A3D  32FF              xor bh,bh
00000A3F  03FB              add di,bx
00000A41  8BF7              mov si,di
00000A43  81EE0020          sub si,0x2000
00000A47  7304              jnc 0xa4d
00000A49  81C6B03F          add si,0x3fb0
00000A4D  B800B8            mov ax,0xb800
00000A50  8EC0              mov es,ax
00000A52  8ED8              mov ds,ax
00000A54  8ADD              mov bl,ch
00000A56  32FF              xor bh,bh
00000A58  32ED              xor ch,ch
00000A5A  51                push cx
00000A5B  57                push di
00000A5C  56                push si
00000A5D  8BCB              mov cx,bx
00000A5F  F3A4              rep movsb
00000A61  5E                pop si
00000A62  5F                pop di
00000A63  81EE0020          sub si,0x2000
00000A67  7304              jnc 0xa6d
00000A69  81C6B03F          add si,0x3fb0
00000A6D  81EF0020          sub di,0x2000
00000A71  7304              jnc 0xa77
00000A73  81C7B03F          add di,0x3fb0
00000A77  59                pop cx
00000A78  E2E0              loop 0xa5a
00000A7A  58                pop ax
00000A7B  B228              mov dl,0x28
00000A7D  F6E2              mul dl
00000A7F  05843D            add ax,0x3d84
00000A82  8BF0              mov si,ax
00000A84  0E                push cs
00000A85  1F                pop ds
00000A86  8BCB              mov cx,bx
00000A88  F3A4              rep movsb
00000A8A  1F                pop ds
00000A8B  C3                ret
00000A8C  1E                push ds
00000A8D  50                push ax
00000A8E  D0EB              shr bl,0x0
00000A90  1BFF              sbb di,di
00000A92  81E70020          and di,0x2000
00000A96  B050              mov al,0x50
00000A98  F6E3              mul bl
00000A9A  03F8              add di,ax
00000A9C  8ADF              mov bl,bh
00000A9E  32FF              xor bh,bh
00000AA0  03FB              add di,bx
00000AA2  8BF7              mov si,di
00000AA4  81C60020          add si,0x2000
00000AA8  81FE0040          cmp si,0x4000
00000AAC  7204              jc 0xab2
00000AAE  81C650C0          add si,0xc050
00000AB2  B800B8            mov ax,0xb800
00000AB5  8EC0              mov es,ax
00000AB7  8ED8              mov ds,ax
00000AB9  8ADD              mov bl,ch
00000ABB  32FF              xor bh,bh
00000ABD  32ED              xor ch,ch
00000ABF  51                push cx
00000AC0  57                push di
00000AC1  56                push si
00000AC2  8BCB              mov cx,bx
00000AC4  F3A4              rep movsb
00000AC6  5E                pop si
00000AC7  5F                pop di
00000AC8  81C60020          add si,0x2000
00000ACC  81FE0040          cmp si,0x4000
00000AD0  7204              jc 0xad6
00000AD2  81C650C0          add si,0xc050
00000AD6  81C70020          add di,0x2000
00000ADA  81FF0040          cmp di,0x4000
00000ADE  7204              jc 0xae4
00000AE0  81C750C0          add di,0xc050
00000AE4  59                pop cx
00000AE5  E2D8              loop 0xabf
00000AE7  58                pop ax
00000AE8  B228              mov dl,0x28
00000AEA  F6E2              mul dl
00000AEC  05843D            add ax,0x3d84
00000AEF  8BF0              mov si,ax
00000AF1  0E                push cs
00000AF2  1F                pop ds
00000AF3  8BCB              mov cx,bx
00000AF5  F3A4              rep movsb
00000AF7  1F                pop ds
00000AF8  C3                ret
00000AF9  B800B8            mov ax,0xb800
00000AFC  8EC0              mov es,ax
00000AFE  BF3C02            mov di,0x23c
00000B01  B90800            mov cx,0x8
00000B04  51                push cx
00000B05  57                push di
00000B06  B91200            mov cx,0x12
00000B09  51                push cx
00000B0A  57                push di
00000B0B  B8FFFF            mov ax,0xffff
00000B0E  B91C00            mov cx,0x1c
00000B11  263105            xor [es:di],ax
00000B14  47                inc di
00000B15  47                inc di
00000B16  E2F9              loop 0xb11
00000B18  5F                pop di
00000B19  81C74001          add di,0x140
00000B1D  59                pop cx
00000B1E  E2E9              loop 0xb09
00000B20  5F                pop di
00000B21  81C70020          add di,0x2000
00000B25  81FF0040          cmp di,0x4000
00000B29  7204              jc 0xb2f
00000B2B  81C750C0          add di,0xc050
00000B2F  59                pop cx
00000B30  E2D2              loop 0xb04
00000B32  C3                ret
00000B33  2E893E803D        mov [cs:0x3d80],di
00000B38  2E8C06823D        mov word [cs:0x3d82],es
00000B3D  51                push cx
00000B3E  1E                push ds
00000B3F  56                push si
00000B40  8CC8              mov ax,cs
00000B42  050030            add ax,0x3000
00000B45  8EC0              mov es,ax
00000B47  B83000            mov ax,0x30
00000B4A  F7E1              mul cx
00000B4C  8BC8              mov cx,ax
00000B4E  BF0000            mov di,0x0
00000B51  F3A4              rep movsb
00000B53  5F                pop di
00000B54  07                pop es
00000B55  59                pop cx
00000B56  8CC8              mov ax,cs
00000B58  050030            add ax,0x3000
00000B5B  8ED8              mov ds,ax
00000B5D  BE0000            mov si,0x0
00000B60  51                push cx
00000B61  B90800            mov cx,0x8
00000B64  51                push cx
00000B65  AD                lodsw
00000B66  8BD0              mov dx,ax
00000B68  AD                lodsw
00000B69  8BC8              mov cx,ax
00000B6B  AD                lodsw
00000B6C  8BD8              mov bx,ax
00000B6E  8BE8              mov bp,ax
00000B70  0BC1              or ax,cx
00000B72  0BC2              or ax,dx
00000B74  23E9              and bp,cx
00000B76  23EA              and bp,dx
00000B78  F7D5              not bp
00000B7A  23D5              and dx,bp
00000B7C  23CD              and cx,bp
00000B7E  23DD              and bx,bp
00000B80  2E8916783D        mov [cs:0x3d78],dx
00000B85  2E890E7A3D        mov [cs:0x3d7a],cx
00000B8A  2E891E7C3D        mov [cs:0x3d7c],bx
00000B8F  F7D0              not ax
00000B91  2EA37E3D          mov [cs:0x3d7e],ax
00000B95  E83C01            call 0xcd4
00000B98  8BC2              mov ax,dx
00000B9A  AB                stosw
00000B9B  06                push es
00000B9C  57                push di
00000B9D  2EC43E803D        les di,word [cs:0x3d80]
00000BA2  E8AA01            call 0xd4f
00000BA5  8BC2              mov ax,dx
00000BA7  AB                stosw
00000BA8  2E893E803D        mov [cs:0x3d80],di
00000BAD  5F                pop di
00000BAE  07                pop es
00000BAF  59                pop cx
00000BB0  E2B2              loop 0xb64
00000BB2  59                pop cx
00000BB3  E2AB              loop 0xb60
00000BB5  C3                ret
00000BB6  1E                push ds
00000BB7  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000BBC  BE0081            mov si,0x8100
00000BBF  8CC8              mov ax,cs
00000BC1  050030            add ax,0x3000
00000BC4  8EC0              mov es,ax
00000BC6  B9E02E            mov cx,0x2ee0
00000BC9  BF0000            mov di,0x0
00000BCC  F3A4              rep movsb
00000BCE  2E8E062CFF        mov es,word [cs:0xff2c]
00000BD3  8CC8              mov ax,cs
00000BD5  050030            add ax,0x3000
00000BD8  8ED8              mov ds,ax
00000BDA  BE0000            mov si,0x0
00000BDD  BF0081            mov di,0x8100
00000BE0  268B1E0080        mov bx,[es:0x8000]
00000BE5  BD00D0            mov bp,0xd000
00000BE8  B9FA00            mov cx,0xfa
00000BEB  51                push cx
00000BEC  268A07            mov al,[es:bx]
00000BEF  3C05              cmp al,0x5
00000BF1  7202              jc 0xbf5
00000BF3  32C0              xor al,al
00000BF5  53                push bx
00000BF6  33DB              xor bx,bx
00000BF8  8AD8              mov bl,al
00000BFA  03DB              add bx,bx
00000BFC  2EFF97043C        call word near [cs:bx+0x3c04]
00000C01  5B                pop bx
00000C02  43                inc bx
00000C03  59                pop cx
00000C04  E2E5              loop 0xbeb
00000C06  1F                pop ds
00000C07  C3                ret
00000C08  0E                push cs
00000C09  3C33              cmp al,0x33
00000C0B  3C60              cmp al,0x60
00000C0D  3C8D              cmp al,0x8d
00000C0F  3CBA              cmp al,0xba
00000C11  3CB9              cmp al,0xb9
00000C13  0800              or [bx+si],al
00000C15  51                push cx
00000C16  AD                lodsw
00000C17  2EA3783D          mov [cs:0x3d78],ax
00000C1B  AD                lodsw
00000C1C  2EA37A3D          mov [cs:0x3d7a],ax
00000C20  AD                lodsw
00000C21  2EA37C3D          mov [cs:0x3d7c],ax
00000C25  E8AC00            call 0xcd4
00000C28  8BC2              mov ax,dx
00000C2A  AB                stosw
00000C2B  26C746000000      mov word [es:bp+0x0],0x0
00000C31  45                inc bp
00000C32  45                inc bp
00000C33  59                pop cx
00000C34  E2DF              loop 0xc15
00000C36  C3                ret
00000C37  B90800            mov cx,0x8
00000C3A  51                push cx
00000C3B  AD                lodsw
00000C3C  2EA3783D          mov [cs:0x3d78],ax
00000C40  AD                lodsw
00000C41  2EA37A3D          mov [cs:0x3d7a],ax
00000C45  2EC7067C3D0000    mov word [cs:0x3d7c],0x0
00000C4C  AD                lodsw
00000C4D  2EA37E3D          mov [cs:0x3d7e],ax
00000C51  E88000            call 0xcd4
00000C54  8BC2              mov ax,dx
00000C56  AB                stosw
00000C57  E8F500            call 0xd4f
00000C5A  26895600          mov [es:bp+0x0],dx
00000C5E  45                inc bp
00000C5F  45                inc bp
00000C60  59                pop cx
00000C61  E2D7              loop 0xc3a
00000C63  C3                ret
00000C64  B90800            mov cx,0x8
00000C67  51                push cx
00000C68  AD                lodsw
00000C69  2EA3783D          mov [cs:0x3d78],ax
00000C6D  AD                lodsw
00000C6E  2EA37E3D          mov [cs:0x3d7e],ax
00000C72  2EC7067A3D0000    mov word [cs:0x3d7a],0x0
00000C79  AD                lodsw
00000C7A  2EA37C3D          mov [cs:0x3d7c],ax
00000C7E  E85300            call 0xcd4
00000C81  8BC2              mov ax,dx
00000C83  AB                stosw
00000C84  E8C800            call 0xd4f
00000C87  26895600          mov [es:bp+0x0],dx
00000C8B  45                inc bp
00000C8C  45                inc bp
00000C8D  59                pop cx
00000C8E  E2D7              loop 0xc67
00000C90  C3                ret
00000C91  B90800            mov cx,0x8
00000C94  51                push cx
00000C95  AD                lodsw
00000C96  2EA37E3D          mov [cs:0x3d7e],ax
00000C9A  2EC706783D0000    mov word [cs:0x3d78],0x0
00000CA1  AD                lodsw
00000CA2  2EA37A3D          mov [cs:0x3d7a],ax
00000CA6  AD                lodsw
00000CA7  2EA37C3D          mov [cs:0x3d7c],ax
00000CAB  E82600            call 0xcd4
00000CAE  8BC2              mov ax,dx
00000CB0  AB                stosw
00000CB1  E89B00            call 0xd4f
00000CB4  26895600          mov [es:bp+0x0],dx
00000CB8  45                inc bp
00000CB9  45                inc bp
00000CBA  59                pop cx
00000CBB  E2D7              loop 0xc94
00000CBD  C3                ret
00000CBE  B90800            mov cx,0x8
00000CC1  51                push cx
00000CC2  83C606            add si,0x6
00000CC5  33C0              xor ax,ax
00000CC7  AB                stosw
00000CC8  26C74600FFFF      mov word [es:bp+0x0],0xffff
00000CCE  45                inc bp
00000CCF  45                inc bp
00000CD0  59                pop cx
00000CD1  E2EE              loop 0xcc1
00000CD3  C3                ret
00000CD4  B90800            mov cx,0x8
00000CD7  33DB              xor bx,bx
00000CD9  2ED1067C3D        rol word [cs:0x3d7c],0x0
00000CDE  13DB              adc bx,bx
00000CE0  2ED1067A3D        rol word [cs:0x3d7a],0x0
00000CE5  13DB              adc bx,bx
00000CE7  2ED106783D        rol word [cs:0x3d78],0x0
00000CEC  13DB              adc bx,bx
00000CEE  2ED1067C3D        rol word [cs:0x3d7c],0x0
00000CF3  13DB              adc bx,bx
00000CF5  2ED1067A3D        rol word [cs:0x3d7a],0x0
00000CFA  13DB              adc bx,bx
00000CFC  2ED106783D        rol word [cs:0x3d78],0x0
00000D01  13DB              adc bx,bx
00000D03  03D2              add dx,dx
00000D05  03D2              add dx,dx
00000D07  2E0A970B3D        or dl,[cs:bx+0x3d0b]
00000D0C  E2C9              loop 0xcd7
00000D0E  C3                ret
00000D0F  0001              add [bx+di],al
00000D11  0001              add [bx+di],al
00000D13  0100              add [bx+si],ax
00000D15  0302              add ax,[bp+si]
00000D17  0103              add [bp+di],ax
00000D19  0203              add al,[bp+di]
00000D1B  0103              add [bp+di],ax
00000D1D  0302              add ax,[bp+si]
00000D1F  0202              add al,[bp+si]
00000D21  0201              add al,[bx+di]
00000D23  0102              add [bp+si],ax
00000D25  0202              add al,[bp+si]
00000D27  0103              add [bp+di],ax
00000D29  0103              add [bp+di],ax
00000D2B  0101              add [bx+di],ax
00000D2D  0202              add al,[bp+si]
00000D2F  0101              add [bx+di],ax
00000D31  0101              add [bx+di],ax
00000D33  0101              add [bx+di],ax
00000D35  0302              add ax,[bp+si]
00000D37  0003              add [bp+di],al
00000D39  0201              add al,[bx+di]
00000D3B  0101              add [bx+di],ax
00000D3D  0302              add ax,[bp+si]
00000D3F  0303              add ax,[bp+di]
00000D41  0202              add al,[bp+si]
00000D43  0303              add ax,[bp+di]
00000D45  0302              add ax,[bp+si]
00000D47  0102              add [bp+si],ax
00000D49  0202              add al,[bp+si]
00000D4B  0202              add al,[bp+si]
00000D4D  0202              add al,[bp+si]
00000D4F  B90800            mov cx,0x8
00000D52  32C0              xor al,al
00000D54  2ED1067E3D        rol word [cs:0x3d7e],0x0
00000D59  12C0              adc al,al
00000D5B  2ED1067E3D        rol word [cs:0x3d7e],0x0
00000D60  12C0              adc al,al
00000D62  3C03              cmp al,0x3
00000D64  7402              jz 0xd68
00000D66  32C0              xor al,al
00000D68  03D2              add dx,dx
00000D6A  03D2              add dx,dx
00000D6C  0AD0              or dl,al
00000D6E  E2E2              loop 0xd52
00000D70  C3                ret
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
00000F4F  0000              add [bx+si],al
00000F51  0000              add [bx+si],al
00000F53  0000              add [bx+si],al
00000F55  0000              add [bx+si],al
00000F57  0000              add [bx+si],al
00000F59  0000              add [bx+si],al
00000F5B  0000              add [bx+si],al
00000F5D  0000              add [bx+si],al
00000F5F  0000              add [bx+si],al
00000F61  0000              add [bx+si],al
00000F63  0000              add [bx+si],al
00000F65  0000              add [bx+si],al
00000F67  0000              add [bx+si],al
00000F69  0000              add [bx+si],al
00000F6B  0000              add [bx+si],al
00000F6D  0000              add [bx+si],al
00000F6F  0000              add [bx+si],al
00000F71  0000              add [bx+si],al
00000F73  0000              add [bx+si],al
00000F75  0000              add [bx+si],al
00000F77  0000              add [bx+si],al
00000F79  0000              add [bx+si],al
00000F7B  0000              add [bx+si],al
00000F7D  0000              add [bx+si],al
00000F7F  0000              add [bx+si],al
00000F81  0000              add [bx+si],al
00000F83  0000              add [bx+si],al
00000F85  0000              add [bx+si],al
00000F87  0000              add [bx+si],al
00000F89  0000              add [bx+si],al
00000F8B  0000              add [bx+si],al
00000F8D  0000              add [bx+si],al
00000F8F  0000              add [bx+si],al
00000F91  0000              add [bx+si],al
00000F93  0000              add [bx+si],al
00000F95  0000              add [bx+si],al
00000F97  0000              add [bx+si],al
00000F99  0000              add [bx+si],al
00000F9B  0000              add [bx+si],al
00000F9D  0000              add [bx+si],al
00000F9F  0000              add [bx+si],al
00000FA1  0000              add [bx+si],al
00000FA3  0000              add [bx+si],al
00000FA5  0000              add [bx+si],al
00000FA7  0000              add [bx+si],al
00000FA9  0000              add [bx+si],al
00000FAB  0000              add [bx+si],al
00000FAD  0000              add [bx+si],al
00000FAF  0000              add [bx+si],al
00000FB1  0000              add [bx+si],al
00000FB3  0000              add [bx+si],al
00000FB5  0000              add [bx+si],al
00000FB7  0000              add [bx+si],al
00000FB9  0000              add [bx+si],al
00000FBB  0000              add [bx+si],al
00000FBD  0000              add [bx+si],al
00000FBF  0000              add [bx+si],al
00000FC1  0000              add [bx+si],al
00000FC3  0000              add [bx+si],al
00000FC5  0000              add [bx+si],al
00000FC7  0000              add [bx+si],al
00000FC9  0000              add [bx+si],al
00000FCB  0000              add [bx+si],al
00000FCD  0000              add [bx+si],al
00000FCF  0000              add [bx+si],al
00000FD1  0000              add [bx+si],al
00000FD3  0000              add [bx+si],al
00000FD5  0000              add [bx+si],al
00000FD7  0000              add [bx+si],al
00000FD9  0000              add [bx+si],al
00000FDB  0000              add [bx+si],al
00000FDD  0000              add [bx+si],al
00000FDF  0000              add [bx+si],al
00000FE1  0000              add [bx+si],al
00000FE3  0000              add [bx+si],al
00000FE5  0000              add [bx+si],al
00000FE7  0000              add [bx+si],al
00000FE9  0000              add [bx+si],al
00000FEB  0000              add [bx+si],al
00000FED  0000              add [bx+si],al
00000FEF  0000              add [bx+si],al
00000FF1  0000              add [bx+si],al
00000FF3  0000              add [bx+si],al
00000FF5  0000              add [bx+si],al
00000FF7  0000              add [bx+si],al
00000FF9  0000              add [bx+si],al
00000FFB  0000              add [bx+si],al
00000FFD  0000              add [bx+si],al
00000FFF  0000              add [bx+si],al
00001001  0000              add [bx+si],al
00001003  0000              add [bx+si],al
00001005  0000              add [bx+si],al
00001007  0000              add [bx+si],al
00001009  0000              add [bx+si],al
0000100B  0000              add [bx+si],al
0000100D  0000              add [bx+si],al
0000100F  0000              add [bx+si],al
00001011  0000              add [bx+si],al
00001013  0000              add [bx+si],al
00001015  0000              add [bx+si],al
00001017  0000              add [bx+si],al
00001019  0000              add [bx+si],al
0000101B  0000              add [bx+si],al
0000101D  0000              add [bx+si],al
0000101F  0000              add [bx+si],al
00001021  0000              add [bx+si],al
00001023  0000              add [bx+si],al
00001025  0000              add [bx+si],al
00001027  0000              add [bx+si],al
00001029  0000              add [bx+si],al
0000102B  0000              add [bx+si],al
0000102D  0000              add [bx+si],al
0000102F  0000              add [bx+si],al
00001031  0000              add [bx+si],al
00001033  0000              add [bx+si],al
00001035  0000              add [bx+si],al
00001037  0000              add [bx+si],al
00001039  0000              add [bx+si],al
0000103B  0000              add [bx+si],al
0000103D  0000              add [bx+si],al
0000103F  0000              add [bx+si],al
00001041  0000              add [bx+si],al
00001043  0000              add [bx+si],al
00001045  0000              add [bx+si],al
00001047  0000              add [bx+si],al
00001049  0000              add [bx+si],al
0000104B  0000              add [bx+si],al
0000104D  0000              add [bx+si],al
0000104F  0000              add [bx+si],al
00001051  0000              add [bx+si],al
00001053  0000              add [bx+si],al
00001055  0000              add [bx+si],al
00001057  0000              add [bx+si],al
00001059  0000              add [bx+si],al
0000105B  0000              add [bx+si],al
0000105D  0000              add [bx+si],al
0000105F  0000              add [bx+si],al
00001061  0000              add [bx+si],al
00001063  0000              add [bx+si],al
00001065  0000              add [bx+si],al
00001067  0000              add [bx+si],al
00001069  0000              add [bx+si],al
0000106B  0000              add [bx+si],al
0000106D  0000              add [bx+si],al
0000106F  0000              add [bx+si],al
00001071  0000              add [bx+si],al
00001073  0000              add [bx+si],al
00001075  0000              add [bx+si],al
00001077  0000              add [bx+si],al
00001079  0000              add [bx+si],al
0000107B  0000              add [bx+si],al
0000107D  0000              add [bx+si],al
0000107F  0000              add [bx+si],al
00001081  0000              add [bx+si],al
00001083  0000              add [bx+si],al
00001085  0000              add [bx+si],al
00001087  0000              add [bx+si],al
00001089  0000              add [bx+si],al
0000108B  0000              add [bx+si],al
0000108D  0000              add [bx+si],al
0000108F  0000              add [bx+si],al
00001091  0000              add [bx+si],al
00001093  0000              add [bx+si],al
00001095  0000              add [bx+si],al
00001097  0000              add [bx+si],al
00001099  0000              add [bx+si],al
0000109B  0000              add [bx+si],al
0000109D  0000              add [bx+si],al
0000109F  0000              add [bx+si],al
000010A1  0000              add [bx+si],al
000010A3  0000              add [bx+si],al
000010A5  0000              add [bx+si],al
000010A7  0000              add [bx+si],al
000010A9  0000              add [bx+si],al
000010AB  0000              add [bx+si],al
000010AD  0000              add [bx+si],al
000010AF  0000              add [bx+si],al
000010B1  0000              add [bx+si],al
000010B3  0000              add [bx+si],al
000010B5  0000              add [bx+si],al
000010B7  0000              add [bx+si],al
000010B9  0000              add [bx+si],al
000010BB  0000              add [bx+si],al
000010BD  0000              add [bx+si],al
000010BF  0000              add [bx+si],al
000010C1  0000              add [bx+si],al
000010C3  0000              add [bx+si],al
000010C5  0000              add [bx+si],al
000010C7  0000              add [bx+si],al
000010C9  0000              add [bx+si],al
000010CB  0000              add [bx+si],al
000010CD  0000              add [bx+si],al
000010CF  0000              add [bx+si],al
000010D1  0000              add [bx+si],al
000010D3  0000              add [bx+si],al
000010D5  0000              add [bx+si],al
000010D7  0000              add [bx+si],al
000010D9  0000              add [bx+si],al
000010DB  0000              add [bx+si],al
000010DD  0000              add [bx+si],al
000010DF  0000              add [bx+si],al
000010E1  0000              add [bx+si],al
000010E3  0000              add [bx+si],al
000010E5  0000              add [bx+si],al
000010E7  0000              add [bx+si],al
000010E9  0000              add [bx+si],al
000010EB  0000              add [bx+si],al
000010ED  0000              add [bx+si],al
000010EF  0000              add [bx+si],al
000010F1  0000              add [bx+si],al
000010F3  0000              add [bx+si],al
000010F5  0000              add [bx+si],al
000010F7  0000              add [bx+si],al
000010F9  0000              add [bx+si],al
000010FB  0000              add [bx+si],al
000010FD  0000              add [bx+si],al
000010FF  0000              add [bx+si],al
00001101  0000              add [bx+si],al
00001103  0000              add [bx+si],al
00001105  0000              add [bx+si],al
00001107  0000              add [bx+si],al
00001109  0000              add [bx+si],al
0000110B  0000              add [bx+si],al
0000110D  0000              add [bx+si],al
0000110F  0000              add [bx+si],al
00001111  0000              add [bx+si],al
00001113  0000              add [bx+si],al
00001115  0000              add [bx+si],al
00001117  0000              add [bx+si],al
00001119  0000              add [bx+si],al
0000111B  0000              add [bx+si],al
0000111D  0000              add [bx+si],al
0000111F  0000              add [bx+si],al
00001121  0000              add [bx+si],al
00001123  0000              add [bx+si],al
00001125  0000              add [bx+si],al
00001127  0000              add [bx+si],al
00001129  0000              add [bx+si],al
0000112B  0000              add [bx+si],al
0000112D  0000              add [bx+si],al
0000112F  0000              add [bx+si],al
00001131  0000              add [bx+si],al
00001133  0000              add [bx+si],al
00001135  0000              add [bx+si],al
00001137  0000              add [bx+si],al
00001139  0000              add [bx+si],al
0000113B  0000              add [bx+si],al
0000113D  0000              add [bx+si],al
0000113F  0000              add [bx+si],al
00001141  0000              add [bx+si],al
00001143  0000              add [bx+si],al
00001145  0000              add [bx+si],al
00001147  0000              add [bx+si],al
00001149  0000              add [bx+si],al
0000114B  0000              add [bx+si],al
0000114D  0000              add [bx+si],al
0000114F  0000              add [bx+si],al
00001151  0000              add [bx+si],al
00001153  0000              add [bx+si],al
00001155  0000              add [bx+si],al
00001157  0000              add [bx+si],al
00001159  0000              add [bx+si],al
0000115B  0000              add [bx+si],al
0000115D  0000              add [bx+si],al
0000115F  0000              add [bx+si],al
00001161  0000              add [bx+si],al
00001163  0000              add [bx+si],al
00001165  0000              add [bx+si],al
00001167  0000              add [bx+si],al
00001169  0000              add [bx+si],al
0000116B  0000              add [bx+si],al
0000116D  0000              add [bx+si],al
0000116F  0000              add [bx+si],al
00001171  0000              add [bx+si],al
00001173  0000              add [bx+si],al
00001175  0000              add [bx+si],al
00001177  0000              add [bx+si],al
00001179  0000              add [bx+si],al
0000117B  0000              add [bx+si],al
0000117D  0000              add [bx+si],al
0000117F  0000              add [bx+si],al
00001181  0000              add [bx+si],al
00001183  0000              add [bx+si],al
00001185  0000              add [bx+si],al
00001187  0000              add [bx+si],al
00001189  0000              add [bx+si],al
0000118B  0000              add [bx+si],al
0000118D  0000              add [bx+si],al
0000118F  0000              add [bx+si],al
00001191  0000              add [bx+si],al
00001193  0000              add [bx+si],al
00001195  0000              add [bx+si],al
00001197  0000              add [bx+si],al
00001199  0000              add [bx+si],al
0000119B  0000              add [bx+si],al
0000119D  0000              add [bx+si],al
0000119F  0000              add [bx+si],al
000011A1  0000              add [bx+si],al
000011A3  0000              add [bx+si],al
000011A5  0000              add [bx+si],al
000011A7  0000              add [bx+si],al
000011A9  0000              add [bx+si],al
000011AB  0000              add [bx+si],al
000011AD  0000              add [bx+si],al
000011AF  0000              add [bx+si],al
000011B1  0000              add [bx+si],al
000011B3  0000              add [bx+si],al
000011B5  0000              add [bx+si],al
000011B7  0000              add [bx+si],al
000011B9  0000              add [bx+si],al
000011BB  0000              add [bx+si],al
000011BD  0000              add [bx+si],al
000011BF  0000              add [bx+si],al
000011C1  0000              add [bx+si],al
000011C3  0000              add [bx+si],al
000011C5  0000              add [bx+si],al
000011C7  0000              add [bx+si],al
000011C9  0000              add [bx+si],al
000011CB  0000              add [bx+si],al
000011CD  0000              add [bx+si],al
000011CF  0000              add [bx+si],al
000011D1  0000              add [bx+si],al
000011D3  0000              add [bx+si],al
000011D5  0000              add [bx+si],al
000011D7  00                db 0x00
