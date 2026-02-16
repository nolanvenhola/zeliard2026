00000000  1311              adc dx,[bx+di]
00000002  0000              add [bx+si],al
00000004  0C3A              or al,0x3a
00000006  2830              sub [bx+si],dh
00000008  57                push di
00000009  308935F4          xor [bx+di-0xbcb],cl
0000000D  352C36            xor ax,0x362c
00000010  95                xchg ax,bp
00000011  36B332            ss mov bl,0x32
00000014  C8343335          enter word 0x3334,byte 0x35
00000018  8E34              mov segr6,word [si]
0000001A  CB                retf
0000001B  360937            or [ss:bx],si
0000001E  833749            xor word [bx],0x49
00000021  37                aaa
00000022  44                inc sp
00000023  39A63923          cmp [bp+0x2339],sp
00000027  38CB              cmp bl,cl
00000029  3A483A            cmp cl,[bx+si+0x3a]
0000002C  1E                push ds
0000002D  BE5F2C            mov si,0x2c5f
00000030  BF00A0            mov di,0xa000
00000033  0E                push cs
00000034  07                pop es
00000035  B800B0            mov ax,0xb000
00000038  8ED8              mov ds,ax
0000003A  B91C00            mov cx,0x1c
0000003D  51                push cx
0000003E  56                push si
0000003F  B91800            mov cx,0x18
00000042  A5                movsw
00000043  81C6FE1F          add si,0x1ffe
00000047  81FE0060          cmp si,0x6000
0000004B  7204              jc 0x51
0000004D  81C65AA0          add si,0xa05a
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
0000005D  BF133F            mov di,0x3f13
00000060  33C0              xor ax,ax
00000062  B90001            mov cx,0x100
00000065  F3AB              rep stosw
00000067  8B362AFF          mov si,[0xff2a]
0000006B  807C1DFD          cmp byte [si+0x1d],0xfd
0000006F  7503              jnz 0x74
00000071  E83D03            call 0x3b1
00000074  C706AC3C5F2C      mov word [0x3cac],0x2c5f
0000007A  8B362AFF          mov si,[0xff2a]
0000007E  83C620            add si,0x20
00000081  0E                push cs
00000082  07                pop es
00000083  BF00E0            mov di,0xe000
00000086  C606AE3C00        mov byte [0x3cae],0x0
0000008B  E85100            call 0xdf
0000008E  32DB              xor bl,bl
00000090  A6                cmpsb
00000091  7403              jz 0x96
00000093  E83A01            call 0x1d0
00000096  FEC3              inc bl
00000098  A6                cmpsb
00000099  7403              jz 0x9e
0000009B  E83201            call 0x1d0
0000009E  FEC3              inc bl
000000A0  A6                cmpsb
000000A1  7403              jz 0xa6
000000A3  E82A01            call 0x1d0
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
000000CE  8306AC3C02        add word [0x3cac],0x2
000000D3  FE06AE3C          inc byte [0x3cae]
000000D7  803EAE3C1C        cmp byte [0x3cae],0x1c
000000DC  75AD              jnz 0x8b
000000DE  C3                ret
000000DF  803EAE3C1B        cmp byte [0x3cae],0x1b
000000E4  7501              jnz 0xe7
000000E6  C3                ret
000000E7  A08300            mov al,[0x83]
000000EA  3806AE3C          cmp [0x3cae],al
000000EE  7401              jz 0xf1
000000F0  C3                ret
000000F1  57                push di
000000F2  06                push es
000000F3  56                push si
000000F4  A08300            mov al,[0x83]
000000F7  02C0              add al,al
000000F9  32E4              xor ah,ah
000000FB  8BF8              mov di,ax
000000FD  81C7F150          add di,0x50f1
00000101  B800B0            mov ax,0xb000
00000104  8EC0              mov es,ax
00000106  BE533E            mov si,0x3e53
00000109  B90200            mov cx,0x2
0000010C  51                push cx
0000010D  57                push di
0000010E  E84603            call 0x457
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
00000121  E9BC01            jmp 0x2e0
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
0000013A  8B3EAC3C          mov di,[0x3cac]
0000013E  0ADB              or bl,bl
00000140  7412              jz 0x154
00000142  81C7B440          add di,0x40b4
00000146  81FF0060          cmp di,0x6000
0000014A  7204              jc 0x150
0000014C  81C75AA0          add di,0xa05a
00000150  FECB              dec bl
00000152  75EE              jnz 0x142
00000154  8ADA              mov bl,dl
00000156  32FF              xor bh,bh
00000158  03DB              add bx,bx
0000015A  F787133FFFFF      test word [bx+0x3f13],0xffff
00000160  7537              jnz 0x199
00000162  89BF133F          mov [bx+0x3f13],di
00000166  B81000            mov ax,0x10
00000169  F6E2              mul dl
0000016B  8BF0              mov si,ax
0000016D  81C60081          add si,0x8100
00000171  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000176  B800B0            mov ax,0xb000
00000179  8EC0              mov es,ax
0000017B  B90800            mov cx,0x8
0000017E  A5                movsw
0000017F  81C7FE1F          add di,0x1ffe
00000183  81FF0060          cmp di,0x6000
00000187  7208              jc 0x191
00000189  8B44FE            mov ax,[si-0x2]
0000018C  AB                stosw
0000018D  81C758A0          add di,0xa058
00000191  E2EB              loop 0x17e
00000193  5B                pop bx
00000194  5E                pop si
00000195  5F                pop di
00000196  1F                pop ds
00000197  07                pop es
00000198  C3                ret
00000199  8BB7133F          mov si,[bx+0x3f13]
0000019D  B800B0            mov ax,0xb000
000001A0  8EC0              mov es,ax
000001A2  8ED8              mov ds,ax
000001A4  B90800            mov cx,0x8
000001A7  A5                movsw
000001A8  81C7FE1F          add di,0x1ffe
000001AC  81FF0060          cmp di,0x6000
000001B0  7208              jc 0x1ba
000001B2  8B44FE            mov ax,[si-0x2]
000001B5  AB                stosw
000001B6  81C758A0          add di,0xa058
000001BA  81C6FE1F          add si,0x1ffe
000001BE  81FE0060          cmp si,0x6000
000001C2  7204              jc 0x1c8
000001C4  81C65AA0          add si,0xa05a
000001C8  E2DD              loop 0x1a7
000001CA  5B                pop bx
000001CB  5E                pop si
000001CC  5F                pop di
000001CD  1F                pop ds
000001CE  07                pop es
000001CF  C3                ret
000001D0  8A45FF            mov al,[di-0x1]
000001D3  C645FFFE          mov byte [di-0x1],0xfe
000001D7  FEC0              inc al
000001D9  7501              jnz 0x1dc
000001DB  C3                ret
000001DC  53                push bx
000001DD  06                push es
000001DE  8A54FF            mov dl,[si-0x1]
000001E1  8ADA              mov bl,dl
000001E3  32FF              xor bh,bh
000001E5  2E8E062CFF        mov es,word [cs:0xff2c]
000001EA  26031E0080        add bx,[es:0x8000]
000001EF  268A37            mov dh,[es:bx]
000001F2  07                pop es
000001F3  5B                pop bx
000001F4  0AF6              or dh,dh
000001F6  7503              jnz 0x1fb
000001F8  E929FF            jmp 0x124
000001FB  4F                dec di
000001FC  4E                dec si
000001FD  A4                movsb
000001FE  06                push es
000001FF  1E                push ds
00000200  57                push di
00000201  56                push si
00000202  53                push bx
00000203  8B3EAC3C          mov di,[0x3cac]
00000207  0ADB              or bl,bl
00000209  7414              jz 0x21f
0000020B  53                push bx
0000020C  81C7B440          add di,0x40b4
00000210  81FF0060          cmp di,0x6000
00000214  7204              jc 0x21a
00000216  81C75AA0          add di,0xa05a
0000021A  FECB              dec bl
0000021C  75EE              jnz 0x20c
0000021E  5B                pop bx
0000021F  B81000            mov ax,0x10
00000222  F6E2              mul dl
00000224  8BF0              mov si,ax
00000226  8BE8              mov bp,ax
00000228  81C60081          add si,0x8100
0000022C  81C500D0          add bp,0xd000
00000230  B83000            mov ax,0x30
00000233  F626AE3C          mul byte [0x3cae]
00000237  03DB              add bx,bx
00000239  03DB              add bx,bx
0000023B  03DB              add bx,bx
0000023D  03DB              add bx,bx
0000023F  03D8              add bx,ax
00000241  81C300A0          add bx,0xa000
00000245  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000024A  B800B0            mov ax,0xb000
0000024D  8EC0              mov es,ax
0000024F  B90800            mov cx,0x8
00000252  2E8B07            mov ax,[cs:bx]
00000255  43                inc bx
00000256  43                inc bx
00000257  3E234600          and ax,[ds:bp+0x0]
0000025B  45                inc bp
0000025C  45                inc bp
0000025D  0B04              or ax,[si]
0000025F  46                inc si
00000260  46                inc si
00000261  AB                stosw
00000262  81C7FE1F          add di,0x1ffe
00000266  81FF0060          cmp di,0x6000
0000026A  7205              jc 0x271
0000026C  AB                stosw
0000026D  81C758A0          add di,0xa058
00000271  E2DF              loop 0x252
00000273  5B                pop bx
00000274  5E                pop si
00000275  5F                pop di
00000276  1F                pop ds
00000277  07                pop es
00000278  8A65FF            mov ah,[di-0x1]
0000027B  0AE4              or ah,ah
0000027D  7501              jnz 0x280
0000027F  C3                ret
00000280  80FC19            cmp ah,0x19
00000283  7201              jc 0x286
00000285  C3                ret
00000286  57                push di
00000287  06                push es
00000288  2E8E062CFF        mov es,word [cs:0xff2c]
0000028D  268B3E0480        mov di,[es:0x8004]
00000292  268A0D            mov cl,[es:di]
00000295  0AC9              or cl,cl
00000297  741B              jz 0x2b4
00000299  47                inc di
0000029A  268A05            mov al,[es:di]
0000029D  3CFF              cmp al,0xff
0000029F  7413              jz 0x2b4
000002A1  3AE0              cmp ah,al
000002A3  7509              jnz 0x2ae
000002A5  268A4501          mov al,[es:di+0x1]
000002A9  8844FF            mov [si-0x1],al
000002AC  EB06              jmp 0x2b4
000002AE  47                inc di
000002AF  47                inc di
000002B0  FEC9              dec cl
000002B2  75E6              jnz 0x29a
000002B4  07                pop es
000002B5  5F                pop di
000002B6  C3                ret
000002B7  BF533E            mov di,0x3e53
000002BA  B90600            mov cx,0x6
000002BD  0E                push cs
000002BE  07                pop es
000002BF  51                push cx
000002C0  AC                lodsb
000002C1  1E                push ds
000002C2  56                push si
000002C3  B110              mov cl,0x10
000002C5  F6E1              mul cl
000002C7  8BF0              mov si,ax
000002C9  81C60081          add si,0x8100
000002CD  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000002D2  A5                movsw
000002D3  A5                movsw
000002D4  A5                movsw
000002D5  A5                movsw
000002D6  A5                movsw
000002D7  A5                movsw
000002D8  A5                movsw
000002D9  A5                movsw
000002DA  5E                pop si
000002DB  1F                pop ds
000002DC  59                pop cx
000002DD  E2E0              loop 0x2bf
000002DF  C3                ret
000002E0  1E                push ds
000002E1  56                push si
000002E2  06                push es
000002E3  57                push di
000002E4  BFB03C            mov di,0x3cb0
000002E7  A5                movsw
000002E8  83C605            add si,0x5
000002EB  A5                movsw
000002EC  A4                movsb
000002ED  2E8A16AE3C        mov dl,[cs:0x3cae]
000002F2  80C204            add dl,0x4
000002F5  32F6              xor dh,dh
000002F7  2E03168000        add dx,[cs:0x80]
000002FC  8916B53C          mov [0x3cb5],dx
00000300  E82D01            call 0x430
00000303  26A2AF3C          mov [es:0x3caf],al
00000307  26803EB23CFD      cmp byte [es:0x3cb2],0xfd
0000030D  7508              jnz 0x317
0000030F  42                inc dx
00000310  E81D01            call 0x430
00000313  26A2B23C          mov [es:0x3cb2],al
00000317  BEAF3C            mov si,0x3caf
0000031A  BFB33E            mov di,0x3eb3
0000031D  E89AFF            call 0x2ba
00000320  2E8B360FC0        mov si,[cs:0xc00f]
00000325  E89001            call 0x4b8
00000328  0ADB              or bl,bl
0000032A  7412              jz 0x33e
0000032C  56                push si
0000032D  53                push bx
0000032E  E86101            call 0x492
00000331  5B                pop bx
00000332  2E8E062CFF        mov es,word [cs:0xff2c]
00000337  BEAF3C            mov si,0x3caf
0000033A  E83301            call 0x470
0000033D  5E                pop si
0000033E  83C608            add si,0x8
00000341  833CFF            cmp word [si],0xffffffffffffffff
00000344  75DF              jnz 0x325
00000346  5F                pop di
00000347  07                pop es
00000348  268A6DFF          mov ch,[es:di-0x1]
0000034C  268A4D07          mov cl,[es:di+0x7]
00000350  06                push es
00000351  57                push di
00000352  51                push cx
00000353  2E8B3EAC3C        mov di,[cs:0x3cac]
00000358  B305              mov bl,0x5
0000035A  81C7B440          add di,0x40b4
0000035E  81FF0060          cmp di,0x6000
00000362  7204              jc 0x368
00000364  81C75AA0          add di,0xa05a
00000368  FECB              dec bl
0000036A  75EE              jnz 0x35a
0000036C  57                push di
0000036D  BEB33E            mov si,0x3eb3
00000370  B800B0            mov ax,0xb000
00000373  8EC0              mov es,ax
00000375  FEC5              inc ch
00000377  7403              jz 0x37c
00000379  E8DB00            call 0x457
0000037C  5F                pop di
0000037D  59                pop cx
0000037E  2E803EAE3C1B      cmp byte [cs:0x3cae],0x1b
00000384  740C              jz 0x392
00000386  BEE33E            mov si,0x3ee3
00000389  47                inc di
0000038A  47                inc di
0000038B  FEC1              inc cl
0000038D  7403              jz 0x392
0000038F  E8C500            call 0x457
00000392  5F                pop di
00000393  07                pop es
00000394  B0FF              mov al,0xff
00000396  26C645FFFE        mov byte [es:di-0x1],0xfe
0000039B  268805            mov [es:di],al
0000039E  26884501          mov [es:di+0x1],al
000003A2  26884507          mov [es:di+0x7],al
000003A6  26884508          mov [es:di+0x8],al
000003AA  26884509          mov [es:di+0x9],al
000003AE  5E                pop si
000003AF  1F                pop ds
000003B0  C3                ret
000003B1  06                push es
000003B2  1E                push ds
000003B3  8B362AFF          mov si,[0xff2a]
000003B7  83C625            add si,0x25
000003BA  BFAF3C            mov di,0x3caf
000003BD  A5                movsw
000003BE  A4                movsb
000003BF  8B168000          mov dx,[0x80]
000003C3  83C203            add dx,0x3
000003C6  8916B53C          mov [0x3cb5],dx
000003CA  803EAF3CFD        cmp byte [0x3caf],0xfd
000003CF  7507              jnz 0x3d8
000003D1  42                inc dx
000003D2  E85B00            call 0x430
000003D5  A2AF3C            mov [0x3caf],al
000003D8  BEAF3C            mov si,0x3caf
000003DB  BFB33E            mov di,0x3eb3
000003DE  B90300            mov cx,0x3
000003E1  E8D9FE            call 0x2bd
000003E4  2E8B360FC0        mov si,[cs:0xc00f]
000003E9  E8CC00            call 0x4b8
000003EC  0ADB              or bl,bl
000003EE  741F              jz 0x40f
000003F0  56                push si
000003F1  FECB              dec bl
000003F3  B003              mov al,0x3
000003F5  F6E3              mul bl
000003F7  50                push ax
000003F8  E89700            call 0x492
000003FB  58                pop ax
000003FC  03F8              add di,ax
000003FE  8BEF              mov bp,di
00000400  2E8E062CFF        mov es,word [cs:0xff2c]
00000405  BEAF3C            mov si,0x3caf
00000408  BFB33E            mov di,0x3eb3
0000040B  E8EA00            call 0x4f8
0000040E  5E                pop si
0000040F  83C608            add si,0x8
00000412  833CFF            cmp word [si],0xffffffffffffffff
00000415  75D2              jnz 0x3e9
00000417  BFF150            mov di,0x50f1
0000041A  BEB33E            mov si,0x3eb3
0000041D  B800B0            mov ax,0xb000
00000420  8EC0              mov es,ax
00000422  E83200            call 0x457
00000425  1F                pop ds
00000426  07                pop es
00000427  BF05E0            mov di,0xe005
0000042A  B0FF              mov al,0xff
0000042C  AA                stosb
0000042D  AA                stosb
0000042E  AA                stosb
0000042F  C3                ret
00000430  E81600            call 0x449
00000433  8A4403            mov al,[si+0x3]
00000436  3CFD              cmp al,0xfd
00000438  7401              jz 0x43b
0000043A  C3                ret
0000043B  83C608            add si,0x8
0000043E  E80C00            call 0x44d
00000441  8A4403            mov al,[si+0x3]
00000444  3CFD              cmp al,0xfd
00000446  74F3              jz 0x43b
00000448  C3                ret
00000449  8B360FC0          mov si,[0xc00f]
0000044D  3B14              cmp dx,[si]
0000044F  7501              jnz 0x452
00000451  C3                ret
00000452  83C608            add si,0x8
00000455  EBF6              jmp 0x44d
00000457  B91800            mov cx,0x18
0000045A  A5                movsw
0000045B  81C7FE1F          add di,0x1ffe
0000045F  81FF0060          cmp di,0x6000
00000463  7208              jc 0x46d
00000465  8B44FE            mov ax,[si-0x2]
00000468  AB                stosw
00000469  81C758A0          add di,0xa058
0000046D  E2EB              loop 0x45a
0000046F  C3                ret
00000470  8BEF              mov bp,di
00000472  FECB              dec bl
00000474  32FF              xor bh,bh
00000476  03DB              add bx,bx
00000478  2EFF977A34        call word near [cs:bx+0x347a]
0000047D  C3                ret
0000047E  8634              xchg dh,[si]
00000480  7E34              jng 0x4b6
00000482  BFB33E            mov di,0x3eb3
00000485  E87000            call 0x4f8
00000488  EB6E              jmp 0x4f8
0000048A  83C603            add si,0x3
0000048D  BFE33E            mov di,0x3ee3
00000490  EB66              jmp 0x4f8
00000492  8A4402            mov al,[si+0x2]
00000495  8AE8              mov ch,al
00000497  247F              and al,0x7f
00000499  B130              mov cl,0x30
0000049B  F6E1              mul cl
0000049D  050040            add ax,0x4000
000004A0  8BF8              mov di,ax
000004A2  32D2              xor dl,dl
000004A4  0AED              or ch,ch
000004A6  7802              js 0x4aa
000004A8  B204              mov dl,0x4
000004AA  8A4404            mov al,[si+0x4]
000004AD  2403              and al,0x3
000004AF  02C2              add al,dl
000004B1  B106              mov cl,0x6
000004B3  F6E1              mul cl
000004B5  03F8              add di,ax
000004B7  C3                ret
000004B8  B90200            mov cx,0x2
000004BB  8B16B53C          mov dx,[0x3cb5]
000004BF  8AD9              mov bl,cl
000004C1  3914              cmp [si],dx
000004C3  7501              jnz 0x4c6
000004C5  C3                ret
000004C6  42                inc dx
000004C7  E2F6              loop 0x4bf
000004C9  8AD9              mov bl,cl
000004CB  C3                ret
000004CC  8BEF              mov bp,di
000004CE  FECB              dec bl
000004D0  32FF              xor bh,bh
000004D2  03DB              add bx,bx
000004D4  2EFF97D634        call word near [cs:bx+0x34d6]
000004D9  C3                ret
000004DA  EC                in al,dx
000004DB  34E4              xor al,0xe4
000004DD  34DC              xor al,0xdc
000004DF  3483              xor al,0x83
000004E1  C503              lds ax,word [bp+di]
000004E3  BF533E            mov di,0x3e53
000004E6  EB10              jmp 0x4f8
000004E8  BF533E            mov di,0x3e53
000004EB  E80A00            call 0x4f8
000004EE  EB08              jmp 0x4f8
000004F0  BF833E            mov di,0x3e83
000004F3  83C603            add si,0x3
000004F6  EB00              jmp 0x4f8
000004F8  B90300            mov cx,0x3
000004FB  51                push cx
000004FC  C604FF            mov byte [si],0xff
000004FF  46                inc si
00000500  1E                push ds
00000501  56                push si
00000502  268A4600          mov al,[es:bp+0x0]
00000506  45                inc bp
00000507  06                push es
00000508  55                push bp
00000509  FEC8              dec al
0000050B  B110              mov cl,0x10
0000050D  F6E1              mul cl
0000050F  8BF0              mov si,ax
00000511  81C60041          add si,0x4100
00000515  050070            add ax,0x7000
00000518  2EA3BF3C          mov [cs:0x3cbf],ax
0000051C  8CC8              mov ax,cs
0000051E  050020            add ax,0x2000
00000521  2EA3C13C          mov [cs:0x3cc1],ax
00000525  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000052A  0E                push cs
0000052B  07                pop es
0000052C  E83C00            call 0x56b
0000052F  5D                pop bp
00000530  07                pop es
00000531  5E                pop si
00000532  1F                pop ds
00000533  59                pop cx
00000534  E2C5              loop 0x4fb
00000536  C3                ret
00000537  0E                push cs
00000538  07                pop es
00000539  BF533E            mov di,0x3e53
0000053C  B90600            mov cx,0x6
0000053F  51                push cx
00000540  AC                lodsb
00000541  1E                push ds
00000542  56                push si
00000543  B110              mov cl,0x10
00000545  F6E1              mul cl
00000547  8BF0              mov si,ax
00000549  81C60060          add si,0x6000
0000054D  050080            add ax,0x8000
00000550  2EA3BF3C          mov [cs:0x3cbf],ax
00000554  8CC8              mov ax,cs
00000556  050020            add ax,0x2000
00000559  2EA3C13C          mov [cs:0x3cc1],ax
0000055D  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000562  E80600            call 0x56b
00000565  5E                pop si
00000566  1F                pop ds
00000567  59                pop cx
00000568  E2D5              loop 0x53f
0000056A  C3                ret
0000056B  1E                push ds
0000056C  56                push si
0000056D  57                push di
0000056E  2EC536BF3C        lds si,word [cs:0x3cbf]
00000573  B90800            mov cx,0x8
00000576  AD                lodsw
00000577  262105            and [es:di],ax
0000057A  47                inc di
0000057B  47                inc di
0000057C  E2F8              loop 0x576
0000057E  5F                pop di
0000057F  5E                pop si
00000580  1F                pop ds
00000581  B90800            mov cx,0x8
00000584  AD                lodsw
00000585  260905            or [es:di],ax
00000588  47                inc di
00000589  47                inc di
0000058A  E2F8              loop 0x584
0000058C  C3                ret
0000058D  1E                push ds
0000058E  B800B0            mov ax,0xb000
00000591  8EC0              mov es,ax
00000593  8ED8              mov ds,ax
00000595  FD                std
00000596  BEF853            mov si,0x53f8
00000599  B008              mov al,0x8
0000059B  E83500            call 0x5d3
0000059E  81C60020          add si,0x2000
000005A2  81FE0060          cmp si,0x6000
000005A6  7207              jc 0x5af
000005A8  E82800            call 0x5d3
000005AB  81C65AA0          add si,0xa05a
000005AF  FEC8              dec al
000005B1  75E8              jnz 0x59b
000005B3  BE0635            mov si,0x3506
000005B6  B008              mov al,0x8
000005B8  E82900            call 0x5e4
000005BB  81C60020          add si,0x2000
000005BF  81FE0060          cmp si,0x6000
000005C3  7207              jc 0x5cc
000005C5  E81C00            call 0x5e4
000005C8  81C65AA0          add si,0xa05a
000005CC  FEC8              dec al
000005CE  75E8              jnz 0x5b8
000005D0  1F                pop ds
000005D1  FC                cld
000005D2  C3                ret
000005D3  56                push si
000005D4  8BFE              mov di,si
000005D6  4E                dec si
000005D7  4E                dec si
000005D8  B93600            mov cx,0x36
000005DB  F3A4              rep movsb
000005DD  83C61E            add si,0x1e
000005E0  A4                movsb
000005E1  A4                movsb
000005E2  5E                pop si
000005E3  C3                ret
000005E4  56                push si
000005E5  8BFE              mov di,si
000005E7  83EE04            sub si,0x4
000005EA  B93400            mov cx,0x34
000005ED  F3A4              rep movsb
000005EF  83C620            add si,0x20
000005F2  A4                movsb
000005F3  A4                movsb
000005F4  A4                movsb
000005F5  A4                movsb
000005F6  5E                pop si
000005F7  C3                ret
000005F8  1E                push ds
000005F9  B800B0            mov ax,0xb000
000005FC  8EC0              mov es,ax
000005FE  8ED8              mov ds,ax
00000600  FD                std
00000601  BE3405            mov si,0x534
00000604  B010              mov al,0x10
00000606  E81800            call 0x621
00000609  81C60020          add si,0x2000
0000060D  81FE0060          cmp si,0x6000
00000611  7207              jc 0x61a
00000613  E80B00            call 0x621
00000616  81C65AA0          add si,0xa05a
0000061A  FEC8              dec al
0000061C  75E8              jnz 0x606
0000061E  1F                pop ds
0000061F  FC                cld
00000620  C3                ret
00000621  56                push si
00000622  8BFE              mov di,si
00000624  4E                dec si
00000625  B93700            mov cx,0x37
00000628  F3A4              rep movsb
0000062A  83C61D            add si,0x1d
0000062D  A4                movsb
0000062E  5E                pop si
0000062F  C3                ret
00000630  1E                push ds
00000631  B800B0            mov ax,0xb000
00000634  8EC0              mov es,ax
00000636  8ED8              mov ds,ax
00000638  BEC153            mov si,0x53c1
0000063B  B008              mov al,0x8
0000063D  E83400            call 0x674
00000640  81C60020          add si,0x2000
00000644  81FE0060          cmp si,0x6000
00000648  7207              jc 0x651
0000064A  E82700            call 0x674
0000064D  81C65AA0          add si,0xa05a
00000651  FEC8              dec al
00000653  75E8              jnz 0x63d
00000655  BECF34            mov si,0x34cf
00000658  B008              mov al,0x8
0000065A  E82800            call 0x685
0000065D  81C60020          add si,0x2000
00000661  81FE0060          cmp si,0x6000
00000665  7207              jc 0x66e
00000667  E81B00            call 0x685
0000066A  81C65AA0          add si,0xa05a
0000066E  FEC8              dec al
00000670  75E8              jnz 0x65a
00000672  1F                pop ds
00000673  C3                ret
00000674  56                push si
00000675  8BFE              mov di,si
00000677  46                inc si
00000678  46                inc si
00000679  B93600            mov cx,0x36
0000067C  F3A4              rep movsb
0000067E  83EE1E            sub si,0x1e
00000681  A4                movsb
00000682  A4                movsb
00000683  5E                pop si
00000684  C3                ret
00000685  56                push si
00000686  8BFE              mov di,si
00000688  83C604            add si,0x4
0000068B  B93400            mov cx,0x34
0000068E  F3A4              rep movsb
00000690  83EE20            sub si,0x20
00000693  A4                movsb
00000694  A4                movsb
00000695  A4                movsb
00000696  A4                movsb
00000697  5E                pop si
00000698  C3                ret
00000699  1E                push ds
0000069A  B800B0            mov ax,0xb000
0000069D  8EC0              mov es,ax
0000069F  8ED8              mov ds,ax
000006A1  BEFD04            mov si,0x4fd
000006A4  B010              mov al,0x10
000006A6  E81700            call 0x6c0
000006A9  81C60020          add si,0x2000
000006AD  81FE0060          cmp si,0x6000
000006B1  7207              jc 0x6ba
000006B3  E80A00            call 0x6c0
000006B6  81C65AA0          add si,0xa05a
000006BA  FEC8              dec al
000006BC  75E8              jnz 0x6a6
000006BE  1F                pop ds
000006BF  C3                ret
000006C0  56                push si
000006C1  8BFE              mov di,si
000006C3  46                inc si
000006C4  B93700            mov cx,0x37
000006C7  F3A4              rep movsb
000006C9  83EE1D            sub si,0x1d
000006CC  A4                movsb
000006CD  5E                pop si
000006CE  C3                ret
000006CF  1E                push ds
000006D0  56                push si
000006D1  32E4              xor ah,ah
000006D3  03C0              add ax,ax
000006D5  03C0              add ax,ax
000006D7  03C0              add ax,ax
000006D9  03C0              add ax,ax
000006DB  8BF0              mov si,ax
000006DD  81C60080          add si,0x8000
000006E1  02FF              add bh,bh
000006E3  E8A405            call 0xc8a
000006E6  8BF8              mov di,ax
000006E8  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000006ED  B800B0            mov ax,0xb000
000006F0  8EC0              mov es,ax
000006F2  B90800            mov cx,0x8
000006F5  A5                movsw
000006F6  81C7FE1F          add di,0x1ffe
000006FA  81FF0060          cmp di,0x6000
000006FE  7208              jc 0x708
00000700  8B44FE            mov ax,[si-0x2]
00000703  AB                stosw
00000704  81C758A0          add di,0xa058
00000708  E2EB              loop 0x6f5
0000070A  5E                pop si
0000070B  1F                pop ds
0000070C  C3                ret
0000070D  1E                push ds
0000070E  56                push si
0000070F  57                push di
00000710  0E                push cs
00000711  1F                pop ds
00000712  E87505            call 0xc8a
00000715  8BF8              mov di,ax
00000717  B800B0            mov ax,0xb000
0000071A  8EC0              mov es,ax
0000071C  BE3737            mov si,0x3737
0000071F  B90900            mov cx,0x9
00000722  A5                movsw
00000723  81C7FE1F          add di,0x1ffe
00000727  81FF0060          cmp di,0x6000
0000072B  7208              jc 0x735
0000072D  8B44FE            mov ax,[si-0x2]
00000730  AB                stosw
00000731  81C758A0          add di,0xa058
00000735  E2EB              loop 0x722
00000737  5F                pop di
00000738  5E                pop si
00000739  1F                pop ds
0000073A  C3                ret
0000073B  0000              add [bx+si],al
0000073D  2800              sub [bx+si],al
0000073F  2A00              sub al,[bx+si]
00000741  2A802AA0          sub al,[bx+si-0x5fd6]
00000745  2A802A00          sub al,[bx+si+0x2a]
00000749  2800              sub [bx+si],al
0000074B  0000              add [bx+si],al
0000074D  E83A05            call 0xc8a
00000750  8BF8              mov di,ax
00000752  BEC33C            mov si,0x3cc3
00000755  B800B0            mov ax,0xb000
00000758  8EC0              mov es,ax
0000075A  B90900            mov cx,0x9
0000075D  51                push cx
0000075E  57                push di
0000075F  56                push si
00000760  8B0E6AFF          mov cx,[0xff6a]
00000764  F3A4              rep movsb
00000766  5E                pop si
00000767  5F                pop di
00000768  81C70020          add di,0x2000
0000076C  81FF0060          cmp di,0x6000
00000770  720E              jc 0x780
00000772  56                push si
00000773  57                push di
00000774  8B0E6AFF          mov cx,[0xff6a]
00000778  F3A4              rep movsb
0000077A  5F                pop di
0000077B  5E                pop si
0000077C  81C75AA0          add di,0xa05a
00000780  83C628            add si,0x28
00000783  59                pop cx
00000784  E2D7              loop 0x75d
00000786  C3                ret
00000787  56                push si
00000788  57                push di
00000789  57                push di
0000078A  32E4              xor ah,ah
0000078C  50                push ax
0000078D  0E                push cs
0000078E  07                pop es
0000078F  BFC33C            mov di,0x3cc3
00000792  33C0              xor ax,ax
00000794  B9C800            mov cx,0xc8
00000797  F3AB              rep stosw
00000799  58                pop ax
0000079A  50                push ax
0000079B  03C0              add ax,ax
0000079D  03F0              add si,ax
0000079F  8B34              mov si,[si]
000007A1  E81C00            call 0x7c0
000007A4  58                pop ax
000007A5  5F                pop di
000007A6  F60657FFFF        test byte [0xff57],0xff
000007AB  7410              jz 0x7bd
000007AD  8BD8              mov bx,ax
000007AF  03C0              add ax,ax
000007B1  03C3              add ax,bx
000007B3  03F8              add di,ax
000007B5  8A15              mov dl,[di]
000007B7  8B4501            mov ax,[di+0x1]
000007BA  E89000            call 0x84d
000007BD  5F                pop di
000007BE  5E                pop si
000007BF  C3                ret
000007C0  0E                push cs
000007C1  07                pop es
000007C2  BFEB3C            mov di,0x3ceb
000007C5  32DB              xor bl,bl
000007C7  AC                lodsb
000007C8  0AC0              or al,al
000007CA  7501              jnz 0x7cd
000007CC  C3                ret
000007CD  53                push bx
000007CE  1E                push ds
000007CF  56                push si
000007D0  80E303            and bl,0x3
000007D3  E80700            call 0x7dd
000007D6  5E                pop si
000007D7  1F                pop ds
000007D8  5B                pop bx
000007D9  FEC3              inc bl
000007DB  EBEA              jmp 0x7c7
000007DD  2C20              sub al,0x20
000007DF  32E4              xor ah,ah
000007E1  D1E0              shl ax,0x0
000007E3  D1E0              shl ax,0x0
000007E5  D1E0              shl ax,0x0
000007E7  8BF0              mov si,ax
000007E9  0E                push cs
000007EA  1F                pop ds
000007EB  033604F5          add si,[0xf504]
000007EF  02DB              add bl,bl
000007F1  8ACB              mov cl,bl
000007F3  57                push di
000007F4  B308              mov bl,0x8
000007F6  53                push bx
000007F7  AC                lodsb
000007F8  B204              mov dl,0x4
000007FA  03C0              add ax,ax
000007FC  02E4              add ah,ah
000007FE  FECA              dec dl
00000800  75F8              jnz 0x7fa
00000802  8AC4              mov al,ah
00000804  D0EC              shr ah,0x0
00000806  0AC4              or al,ah
00000808  32DB              xor bl,bl
0000080A  8AF8              mov bh,al
0000080C  D3EB              shr bx,cl
0000080E  26083D            or [es:di],bh
00000811  26085D01          or [es:di+0x1],bl
00000815  83C728            add di,0x28
00000818  5B                pop bx
00000819  FECB              dec bl
0000081B  75D9              jnz 0x7f6
0000081D  5F                pop di
0000081E  47                inc di
0000081F  80F906            cmp cl,0x6
00000822  7401              jz 0x825
00000824  C3                ret
00000825  47                inc di
00000826  C3                ret
00000827  52                push dx
00000828  50                push ax
00000829  0E                push cs
0000082A  07                pop es
0000082B  BFC33C            mov di,0x3cc3
0000082E  33C0              xor ax,ax
00000830  B9C800            mov cx,0xc8
00000833  F3AB              rep stosw
00000835  58                pop ax
00000836  5A                pop dx
00000837  E88600            call 0x8c0
0000083A  BFEB3C            mov di,0x3ceb
0000083D  BED438            mov si,0x38d4
00000840  B90700            mov cx,0x7
00000843  B301              mov bl,0x1
00000845  C7066AFF0B00      mov word [0xff6a],0xb
0000084B  EB14              jmp 0x861
0000084D  E87000            call 0x8c0
00000850  0E                push cs
00000851  07                pop es
00000852  BFEB3C            mov di,0x3ceb
00000855  033E68FF          add di,[0xff68]
00000859  BED538            mov si,0x38d5
0000085C  B90600            mov cx,0x6
0000085F  B301              mov bl,0x1
00000861  51                push cx
00000862  53                push bx
00000863  57                push di
00000864  AC                lodsb
00000865  56                push si
00000866  E81100            call 0x87a
00000869  5E                pop si
0000086A  5F                pop di
0000086B  5B                pop bx
0000086C  8AC3              mov al,bl
0000086E  47                inc di
0000086F  250100            and ax,0x1
00000872  03F8              add di,ax
00000874  FEC3              inc bl
00000876  59                pop cx
00000877  E2E8              loop 0x861
00000879  C3                ret
0000087A  FEC0              inc al
0000087C  7501              jnz 0x87f
0000087E  C3                ret
0000087F  FEC8              dec al
00000881  32E4              xor ah,ah
00000883  03C0              add ax,ax
00000885  03C0              add ax,ax
00000887  03C0              add ax,ax
00000889  2E030602F5        add ax,[cs:0xf502]
0000088E  8BF0              mov si,ax
00000890  B90700            mov cx,0x7
00000893  AC                lodsb
00000894  B408              mov ah,0x8
00000896  02C0              add al,al
00000898  13D2              adc dx,dx
0000089A  03D2              add dx,dx
0000089C  FECC              dec ah
0000089E  75F6              jnz 0x896
000008A0  8BC2              mov ax,dx
000008A2  D1EA              shr dx,0x0
000008A4  0BC2              or ax,dx
000008A6  F6C301            test bl,0x1
000008A9  7508              jnz 0x8b3
000008AB  03C0              add ax,ax
000008AD  03C0              add ax,ax
000008AF  03C0              add ax,ax
000008B1  03C0              add ax,ax
000008B3  260825            or [es:di],ah
000008B6  26084501          or [es:di+0x1],al
000008BA  83C728            add di,0x28
000008BD  E2D4              loop 0x893
000008BF  C3                ret
000008C0  BFD438            mov di,0x38d4
000008C3  E81900            call 0x8df
000008C6  B90600            mov cx,0x6
000008C9  2EF605FF          test byte [cs:di],0xff
000008CD  7401              jz 0x8d0
000008CF  C3                ret
000008D0  2EC605FF          mov byte [cs:di],0xff
000008D4  47                inc di
000008D5  E2F2              loop 0x8c9
000008D7  C3                ret
000008D8  0000              add [bx+si],al
000008DA  0000              add [bx+si],al
000008DC  0000              add [bx+si],al
000008DE  00B10FBB          add [bx+di-0x44f1],dh
000008E2  40                inc ax
000008E3  42                inc dx
000008E4  E83E00            call 0x925
000008E7  2E8835            mov [cs:di],dh
000008EA  B101              mov cl,0x1
000008EC  BBA086            mov bx,0x86a0
000008EF  E83300            call 0x925
000008F2  2E887501          mov [cs:di+0x1],dh
000008F6  32C9              xor cl,cl
000008F8  BB1027            mov bx,0x2710
000008FB  E82700            call 0x925
000008FE  2E887502          mov [cs:di+0x2],dh
00000902  BBE803            mov bx,0x3e8
00000905  E83600            call 0x93e
00000908  2E887503          mov [cs:di+0x3],dh
0000090C  BB6400            mov bx,0x64
0000090F  E82C00            call 0x93e
00000912  2E887504          mov [cs:di+0x4],dh
00000916  BB0A00            mov bx,0xa
00000919  E82200            call 0x93e
0000091C  2E887505          mov [cs:di+0x5],dh
00000920  2E884506          mov [cs:di+0x6],al
00000924  C3                ret
00000925  32F6              xor dh,dh
00000927  2AD1              sub dl,cl
00000929  7210              jc 0x93b
0000092B  2BC3              sub ax,bx
0000092D  7306              jnc 0x935
0000092F  0AD2              or dl,dl
00000931  7406              jz 0x939
00000933  FECA              dec dl
00000935  FEC6              inc dh
00000937  EBEE              jmp 0x927
00000939  03C3              add ax,bx
0000093B  02D1              add dl,cl
0000093D  C3                ret
0000093E  32F6              xor dh,dh
00000940  F7F3              div bx
00000942  92                xchg ax,dx
00000943  8AF2              mov dh,dl
00000945  32D2              xor dl,dl
00000947  C3                ret
00000948  1E                push ds
00000949  50                push ax
0000094A  02D9              add bl,cl
0000094C  FECB              dec bl
0000094E  E83903            call 0xc8a
00000951  8BF8              mov di,ax
00000953  8BF7              mov si,di
00000955  81EE0020          sub si,0x2000
00000959  7304              jnc 0x95f
0000095B  81C6A65F          add si,0x5fa6
0000095F  B800B0            mov ax,0xb000
00000962  8EC0              mov es,ax
00000964  8ED8              mov ds,ax
00000966  8ADD              mov bl,ch
00000968  32FF              xor bh,bh
0000096A  32ED              xor ch,ch
0000096C  51                push cx
0000096D  57                push di
0000096E  56                push si
0000096F  8BCB              mov cx,bx
00000971  F3A4              rep movsb
00000973  5E                pop si
00000974  5F                pop di
00000975  81EF0020          sub di,0x2000
00000979  7310              jnc 0x98b
0000097B  57                push di
0000097C  56                push si
0000097D  81C7A67F          add di,0x7fa6
00000981  8BCB              mov cx,bx
00000983  F3A4              rep movsb
00000985  5E                pop si
00000986  5F                pop di
00000987  81C7A65F          add di,0x5fa6
0000098B  81EE0020          sub si,0x2000
0000098F  7304              jnc 0x995
00000991  81C6A65F          add si,0x5fa6
00000995  59                pop cx
00000996  E2D4              loop 0x96c
00000998  58                pop ax
00000999  B228              mov dl,0x28
0000099B  F6E2              mul dl
0000099D  05C33C            add ax,0x3cc3
000009A0  8BF0              mov si,ax
000009A2  0E                push cs
000009A3  1F                pop ds
000009A4  8BCB              mov cx,bx
000009A6  F3A4              rep movsb
000009A8  1F                pop ds
000009A9  C3                ret
000009AA  1E                push ds
000009AB  50                push ax
000009AC  E8DB02            call 0xc8a
000009AF  8BF8              mov di,ax
000009B1  8BF7              mov si,di
000009B3  81C60020          add si,0x2000
000009B7  81FE0060          cmp si,0x6000
000009BB  7204              jc 0x9c1
000009BD  81C65AA0          add si,0xa05a
000009C1  B800B0            mov ax,0xb000
000009C4  8EC0              mov es,ax
000009C6  8ED8              mov ds,ax
000009C8  8ADD              mov bl,ch
000009CA  32FF              xor bh,bh
000009CC  32ED              xor ch,ch
000009CE  51                push cx
000009CF  57                push di
000009D0  56                push si
000009D1  8BCB              mov cx,bx
000009D3  F3A4              rep movsb
000009D5  5E                pop si
000009D6  5F                pop di
000009D7  81C70020          add di,0x2000
000009DB  81FF0060          cmp di,0x6000
000009DF  720C              jc 0x9ed
000009E1  57                push di
000009E2  56                push si
000009E3  8BCB              mov cx,bx
000009E5  F3A4              rep movsb
000009E7  5E                pop si
000009E8  5F                pop di
000009E9  81C75AA0          add di,0xa05a
000009ED  81C60020          add si,0x2000
000009F1  81FE0060          cmp si,0x6000
000009F5  7204              jc 0x9fb
000009F7  81C65AA0          add si,0xa05a
000009FB  59                pop cx
000009FC  E2D0              loop 0x9ce
000009FE  58                pop ax
000009FF  B228              mov dl,0x28
00000A01  F6E2              mul dl
00000A03  05C33C            add ax,0x3cc3
00000A06  8BF0              mov si,ax
00000A08  0E                push cs
00000A09  1F                pop ds
00000A0A  8BCB              mov cx,bx
00000A0C  F3A4              rep movsb
00000A0E  1F                pop ds
00000A0F  C3                ret
00000A10  B800B0            mov ax,0xb000
00000A13  8EC0              mov es,ax
00000A15  BFFD04            mov di,0x4fd
00000A18  B99000            mov cx,0x90
00000A1B  51                push cx
00000A1C  57                push di
00000A1D  B8FFFF            mov ax,0xffff
00000A20  B91C00            mov cx,0x1c
00000A23  263105            xor [es:di],ax
00000A26  47                inc di
00000A27  47                inc di
00000A28  E2F9              loop 0xa23
00000A2A  5F                pop di
00000A2B  81C70020          add di,0x2000
00000A2F  81FF0060          cmp di,0x6000
00000A33  7213              jc 0xa48
00000A35  57                push di
00000A36  B8FFFF            mov ax,0xffff
00000A39  B91C00            mov cx,0x1c
00000A3C  263105            xor [es:di],ax
00000A3F  47                inc di
00000A40  47                inc di
00000A41  E2F9              loop 0xa3c
00000A43  5F                pop di
00000A44  81C75AA0          add di,0xa05a
00000A48  59                pop cx
00000A49  E2D0              loop 0xa1b
00000A4B  C3                ret
00000A4C  2E893EBF3C        mov [cs:0x3cbf],di
00000A51  2E8C06C13C        mov word [cs:0x3cc1],es
00000A56  51                push cx
00000A57  1E                push ds
00000A58  56                push si
00000A59  8CC8              mov ax,cs
00000A5B  050030            add ax,0x3000
00000A5E  8EC0              mov es,ax
00000A60  B83000            mov ax,0x30
00000A63  F7E1              mul cx
00000A65  8BC8              mov cx,ax
00000A67  BF0000            mov di,0x0
00000A6A  F3A4              rep movsb
00000A6C  5F                pop di
00000A6D  07                pop es
00000A6E  59                pop cx
00000A6F  8CC8              mov ax,cs
00000A71  050030            add ax,0x3000
00000A74  8ED8              mov ds,ax
00000A76  BE0000            mov si,0x0
00000A79  51                push cx
00000A7A  B90800            mov cx,0x8
00000A7D  51                push cx
00000A7E  AD                lodsw
00000A7F  8BD0              mov dx,ax
00000A81  AD                lodsw
00000A82  8BC8              mov cx,ax
00000A84  AD                lodsw
00000A85  8BD8              mov bx,ax
00000A87  8BE8              mov bp,ax
00000A89  0BC1              or ax,cx
00000A8B  0BC2              or ax,dx
00000A8D  23E9              and bp,cx
00000A8F  23EA              and bp,dx
00000A91  F7D5              not bp
00000A93  23D5              and dx,bp
00000A95  23CD              and cx,bp
00000A97  23DD              and bx,bp
00000A99  2E8916B73C        mov [cs:0x3cb7],dx
00000A9E  2E890EB93C        mov [cs:0x3cb9],cx
00000AA3  2E891EBB3C        mov [cs:0x3cbb],bx
00000AA8  F7D0              not ax
00000AAA  2EA3BD3C          mov [cs:0x3cbd],ax
00000AAE  E83C01            call 0xbed
00000AB1  8BC2              mov ax,dx
00000AB3  AB                stosw
00000AB4  06                push es
00000AB5  57                push di
00000AB6  2EC43EBF3C        les di,word [cs:0x3cbf]
00000ABB  E8AA01            call 0xc68
00000ABE  8BC2              mov ax,dx
00000AC0  AB                stosw
00000AC1  2E893EBF3C        mov [cs:0x3cbf],di
00000AC6  5F                pop di
00000AC7  07                pop es
00000AC8  59                pop cx
00000AC9  E2B2              loop 0xa7d
00000ACB  59                pop cx
00000ACC  E2AB              loop 0xa79
00000ACE  C3                ret
00000ACF  1E                push ds
00000AD0  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000AD5  BE0081            mov si,0x8100
00000AD8  8CC8              mov ax,cs
00000ADA  050030            add ax,0x3000
00000ADD  8EC0              mov es,ax
00000ADF  B9E02E            mov cx,0x2ee0
00000AE2  BF0000            mov di,0x0
00000AE5  F3A4              rep movsb
00000AE7  2E8E062CFF        mov es,word [cs:0xff2c]
00000AEC  8CC8              mov ax,cs
00000AEE  050030            add ax,0x3000
00000AF1  8ED8              mov ds,ax
00000AF3  BE0000            mov si,0x0
00000AF6  BF0081            mov di,0x8100
00000AF9  268B1E0080        mov bx,[es:0x8000]
00000AFE  BD00D0            mov bp,0xd000
00000B01  B9FA00            mov cx,0xfa
00000B04  51                push cx
00000B05  268A07            mov al,[es:bx]
00000B08  3C05              cmp al,0x5
00000B0A  7202              jc 0xb0e
00000B0C  32C0              xor al,al
00000B0E  53                push bx
00000B0F  33DB              xor bx,bx
00000B11  8AD8              mov bl,al
00000B13  03DB              add bx,bx
00000B15  2EFF971D3B        call word near [cs:bx+0x3b1d]
00000B1A  5B                pop bx
00000B1B  43                inc bx
00000B1C  59                pop cx
00000B1D  E2E5              loop 0xb04
00000B1F  1F                pop ds
00000B20  C3                ret
00000B21  27                daa
00000B22  3B4C3B            cmp cx,[si+0x3b]
00000B25  793B              jns 0xb62
00000B27  A6                cmpsb
00000B28  3BD3              cmp dx,bx
00000B2A  3BB90800          cmp di,[bx+di+0x8]
00000B2E  51                push cx
00000B2F  AD                lodsw
00000B30  2EA3B73C          mov [cs:0x3cb7],ax
00000B34  AD                lodsw
00000B35  2EA3B93C          mov [cs:0x3cb9],ax
00000B39  AD                lodsw
00000B3A  2EA3BB3C          mov [cs:0x3cbb],ax
00000B3E  E8AC00            call 0xbed
00000B41  8BC2              mov ax,dx
00000B43  AB                stosw
00000B44  26C746000000      mov word [es:bp+0x0],0x0
00000B4A  45                inc bp
00000B4B  45                inc bp
00000B4C  59                pop cx
00000B4D  E2DF              loop 0xb2e
00000B4F  C3                ret
00000B50  B90800            mov cx,0x8
00000B53  51                push cx
00000B54  AD                lodsw
00000B55  2EA3B73C          mov [cs:0x3cb7],ax
00000B59  AD                lodsw
00000B5A  2EA3B93C          mov [cs:0x3cb9],ax
00000B5E  2EC706BB3C0000    mov word [cs:0x3cbb],0x0
00000B65  AD                lodsw
00000B66  2EA3BD3C          mov [cs:0x3cbd],ax
00000B6A  E88000            call 0xbed
00000B6D  8BC2              mov ax,dx
00000B6F  AB                stosw
00000B70  E8F500            call 0xc68
00000B73  26895600          mov [es:bp+0x0],dx
00000B77  45                inc bp
00000B78  45                inc bp
00000B79  59                pop cx
00000B7A  E2D7              loop 0xb53
00000B7C  C3                ret
00000B7D  B90800            mov cx,0x8
00000B80  51                push cx
00000B81  AD                lodsw
00000B82  2EA3B73C          mov [cs:0x3cb7],ax
00000B86  AD                lodsw
00000B87  2EA3BD3C          mov [cs:0x3cbd],ax
00000B8B  2EC706B93C0000    mov word [cs:0x3cb9],0x0
00000B92  AD                lodsw
00000B93  2EA3BB3C          mov [cs:0x3cbb],ax
00000B97  E85300            call 0xbed
00000B9A  8BC2              mov ax,dx
00000B9C  AB                stosw
00000B9D  E8C800            call 0xc68
00000BA0  26895600          mov [es:bp+0x0],dx
00000BA4  45                inc bp
00000BA5  45                inc bp
00000BA6  59                pop cx
00000BA7  E2D7              loop 0xb80
00000BA9  C3                ret
00000BAA  B90800            mov cx,0x8
00000BAD  51                push cx
00000BAE  AD                lodsw
00000BAF  2EA3BD3C          mov [cs:0x3cbd],ax
00000BB3  2EC706B73C0000    mov word [cs:0x3cb7],0x0
00000BBA  AD                lodsw
00000BBB  2EA3B93C          mov [cs:0x3cb9],ax
00000BBF  AD                lodsw
00000BC0  2EA3BB3C          mov [cs:0x3cbb],ax
00000BC4  E82600            call 0xbed
00000BC7  8BC2              mov ax,dx
00000BC9  AB                stosw
00000BCA  E89B00            call 0xc68
00000BCD  26895600          mov [es:bp+0x0],dx
00000BD1  45                inc bp
00000BD2  45                inc bp
00000BD3  59                pop cx
00000BD4  E2D7              loop 0xbad
00000BD6  C3                ret
00000BD7  B90800            mov cx,0x8
00000BDA  51                push cx
00000BDB  83C606            add si,0x6
00000BDE  33C0              xor ax,ax
00000BE0  AB                stosw
00000BE1  26C74600FFFF      mov word [es:bp+0x0],0xffff
00000BE7  45                inc bp
00000BE8  45                inc bp
00000BE9  59                pop cx
00000BEA  E2EE              loop 0xbda
00000BEC  C3                ret
00000BED  B90800            mov cx,0x8
00000BF0  33DB              xor bx,bx
00000BF2  2ED106BB3C        rol word [cs:0x3cbb],0x0
00000BF7  13DB              adc bx,bx
00000BF9  2ED106B93C        rol word [cs:0x3cb9],0x0
00000BFE  13DB              adc bx,bx
00000C00  2ED106B73C        rol word [cs:0x3cb7],0x0
00000C05  13DB              adc bx,bx
00000C07  2ED106BB3C        rol word [cs:0x3cbb],0x0
00000C0C  13DB              adc bx,bx
00000C0E  2ED106B93C        rol word [cs:0x3cb9],0x0
00000C13  13DB              adc bx,bx
00000C15  2ED106B73C        rol word [cs:0x3cb7],0x0
00000C1A  13DB              adc bx,bx
00000C1C  03D2              add dx,dx
00000C1E  03D2              add dx,dx
00000C20  2E0A97243C        or dl,[cs:bx+0x3c24]
00000C25  E2C9              loop 0xbf0
00000C27  C3                ret
00000C28  0001              add [bx+di],al
00000C2A  0001              add [bx+di],al
00000C2C  0100              add [bx+si],ax
00000C2E  0302              add ax,[bp+si]
00000C30  0103              add [bp+di],ax
00000C32  0203              add al,[bp+di]
00000C34  0103              add [bp+di],ax
00000C36  0302              add ax,[bp+si]
00000C38  0202              add al,[bp+si]
00000C3A  0201              add al,[bx+di]
00000C3C  0102              add [bp+si],ax
00000C3E  0202              add al,[bp+si]
00000C40  0103              add [bp+di],ax
00000C42  0103              add [bp+di],ax
00000C44  0101              add [bx+di],ax
00000C46  0202              add al,[bp+si]
00000C48  0101              add [bx+di],ax
00000C4A  0101              add [bx+di],ax
00000C4C  0101              add [bx+di],ax
00000C4E  0302              add ax,[bp+si]
00000C50  0003              add [bp+di],al
00000C52  0201              add al,[bx+di]
00000C54  0101              add [bx+di],ax
00000C56  0302              add ax,[bp+si]
00000C58  0303              add ax,[bp+di]
00000C5A  0202              add al,[bp+si]
00000C5C  0303              add ax,[bp+di]
00000C5E  0302              add ax,[bp+si]
00000C60  0102              add [bp+si],ax
00000C62  0202              add al,[bp+si]
00000C64  0202              add al,[bp+si]
00000C66  0202              add al,[bp+si]
00000C68  B90800            mov cx,0x8
00000C6B  32C0              xor al,al
00000C6D  2ED106BD3C        rol word [cs:0x3cbd],0x0
00000C72  12C0              adc al,al
00000C74  2ED106BD3C        rol word [cs:0x3cbd],0x0
00000C79  12C0              adc al,al
00000C7B  3C03              cmp al,0x3
00000C7D  7402              jz 0xc81
00000C7F  32C0              xor al,al
00000C81  03D2              add dx,dx
00000C83  03D2              add dx,dx
00000C85  0AD0              or dl,al
00000C87  E2E2              loop 0xc6b
00000C89  C3                ret
00000C8A  33C0              xor ax,ax
00000C8C  8AC3              mov al,bl
00000C8E  051C00            add ax,0x1c
00000C91  B303              mov bl,0x3
00000C93  F6F3              div bl
00000C95  8ADC              mov bl,ah
00000C97  D0CB              ror bl,0x0
00000C99  D0CB              ror bl,0x0
00000C9B  D0CB              ror bl,0x0
00000C9D  80E360            and bl,0x60
00000CA0  B45A              mov ah,0x5a
00000CA2  F6E4              mul ah
00000CA4  02E3              add ah,bl
00000CA6  80C705            add bh,0x5
00000CA9  8ADF              mov bl,bh
00000CAB  32FF              xor bh,bh
00000CAD  03C3              add ax,bx
00000CAF  C3                ret
00000CB0  0000              add [bx+si],al
00000CB2  0000              add [bx+si],al
00000CB4  0000              add [bx+si],al
00000CB6  0000              add [bx+si],al
00000CB8  0000              add [bx+si],al
00000CBA  0000              add [bx+si],al
00000CBC  0000              add [bx+si],al
00000CBE  0000              add [bx+si],al
00000CC0  0000              add [bx+si],al
00000CC2  0000              add [bx+si],al
00000CC4  0000              add [bx+si],al
00000CC6  0000              add [bx+si],al
00000CC8  0000              add [bx+si],al
00000CCA  0000              add [bx+si],al
00000CCC  0000              add [bx+si],al
00000CCE  0000              add [bx+si],al
00000CD0  0000              add [bx+si],al
00000CD2  0000              add [bx+si],al
00000CD4  0000              add [bx+si],al
00000CD6  0000              add [bx+si],al
00000CD8  0000              add [bx+si],al
00000CDA  0000              add [bx+si],al
00000CDC  0000              add [bx+si],al
00000CDE  0000              add [bx+si],al
00000CE0  0000              add [bx+si],al
00000CE2  0000              add [bx+si],al
00000CE4  0000              add [bx+si],al
00000CE6  0000              add [bx+si],al
00000CE8  0000              add [bx+si],al
00000CEA  0000              add [bx+si],al
00000CEC  0000              add [bx+si],al
00000CEE  0000              add [bx+si],al
00000CF0  0000              add [bx+si],al
00000CF2  0000              add [bx+si],al
00000CF4  0000              add [bx+si],al
00000CF6  0000              add [bx+si],al
00000CF8  0000              add [bx+si],al
00000CFA  0000              add [bx+si],al
00000CFC  0000              add [bx+si],al
00000CFE  0000              add [bx+si],al
00000D00  0000              add [bx+si],al
00000D02  0000              add [bx+si],al
00000D04  0000              add [bx+si],al
00000D06  0000              add [bx+si],al
00000D08  0000              add [bx+si],al
00000D0A  0000              add [bx+si],al
00000D0C  0000              add [bx+si],al
00000D0E  0000              add [bx+si],al
00000D10  0000              add [bx+si],al
00000D12  0000              add [bx+si],al
00000D14  0000              add [bx+si],al
00000D16  0000              add [bx+si],al
00000D18  0000              add [bx+si],al
00000D1A  0000              add [bx+si],al
00000D1C  0000              add [bx+si],al
00000D1E  0000              add [bx+si],al
00000D20  0000              add [bx+si],al
00000D22  0000              add [bx+si],al
00000D24  0000              add [bx+si],al
00000D26  0000              add [bx+si],al
00000D28  0000              add [bx+si],al
00000D2A  0000              add [bx+si],al
00000D2C  0000              add [bx+si],al
00000D2E  0000              add [bx+si],al
00000D30  0000              add [bx+si],al
00000D32  0000              add [bx+si],al
00000D34  0000              add [bx+si],al
00000D36  0000              add [bx+si],al
00000D38  0000              add [bx+si],al
00000D3A  0000              add [bx+si],al
00000D3C  0000              add [bx+si],al
00000D3E  0000              add [bx+si],al
00000D40  0000              add [bx+si],al
00000D42  0000              add [bx+si],al
00000D44  0000              add [bx+si],al
00000D46  0000              add [bx+si],al
00000D48  0000              add [bx+si],al
00000D4A  0000              add [bx+si],al
00000D4C  0000              add [bx+si],al
00000D4E  0000              add [bx+si],al
00000D50  0000              add [bx+si],al
00000D52  0000              add [bx+si],al
00000D54  0000              add [bx+si],al
00000D56  0000              add [bx+si],al
00000D58  0000              add [bx+si],al
00000D5A  0000              add [bx+si],al
00000D5C  0000              add [bx+si],al
00000D5E  0000              add [bx+si],al
00000D60  0000              add [bx+si],al
00000D62  0000              add [bx+si],al
00000D64  0000              add [bx+si],al
00000D66  0000              add [bx+si],al
00000D68  0000              add [bx+si],al
00000D6A  0000              add [bx+si],al
00000D6C  0000              add [bx+si],al
00000D6E  0000              add [bx+si],al
00000D70  0000              add [bx+si],al
00000D72  0000              add [bx+si],al
00000D74  0000              add [bx+si],al
00000D76  0000              add [bx+si],al
00000D78  0000              add [bx+si],al
00000D7A  0000              add [bx+si],al
00000D7C  0000              add [bx+si],al
00000D7E  0000              add [bx+si],al
00000D80  0000              add [bx+si],al
00000D82  0000              add [bx+si],al
00000D84  0000              add [bx+si],al
00000D86  0000              add [bx+si],al
00000D88  0000              add [bx+si],al
00000D8A  0000              add [bx+si],al
00000D8C  0000              add [bx+si],al
00000D8E  0000              add [bx+si],al
00000D90  0000              add [bx+si],al
00000D92  0000              add [bx+si],al
00000D94  0000              add [bx+si],al
00000D96  0000              add [bx+si],al
00000D98  0000              add [bx+si],al
00000D9A  0000              add [bx+si],al
00000D9C  0000              add [bx+si],al
00000D9E  0000              add [bx+si],al
00000DA0  0000              add [bx+si],al
00000DA2  0000              add [bx+si],al
00000DA4  0000              add [bx+si],al
00000DA6  0000              add [bx+si],al
00000DA8  0000              add [bx+si],al
00000DAA  0000              add [bx+si],al
00000DAC  0000              add [bx+si],al
00000DAE  0000              add [bx+si],al
00000DB0  0000              add [bx+si],al
00000DB2  0000              add [bx+si],al
00000DB4  0000              add [bx+si],al
00000DB6  0000              add [bx+si],al
00000DB8  0000              add [bx+si],al
00000DBA  0000              add [bx+si],al
00000DBC  0000              add [bx+si],al
00000DBE  0000              add [bx+si],al
00000DC0  0000              add [bx+si],al
00000DC2  0000              add [bx+si],al
00000DC4  0000              add [bx+si],al
00000DC6  0000              add [bx+si],al
00000DC8  0000              add [bx+si],al
00000DCA  0000              add [bx+si],al
00000DCC  0000              add [bx+si],al
00000DCE  0000              add [bx+si],al
00000DD0  0000              add [bx+si],al
00000DD2  0000              add [bx+si],al
00000DD4  0000              add [bx+si],al
00000DD6  0000              add [bx+si],al
00000DD8  0000              add [bx+si],al
00000DDA  0000              add [bx+si],al
00000DDC  0000              add [bx+si],al
00000DDE  0000              add [bx+si],al
00000DE0  0000              add [bx+si],al
00000DE2  0000              add [bx+si],al
00000DE4  0000              add [bx+si],al
00000DE6  0000              add [bx+si],al
00000DE8  0000              add [bx+si],al
00000DEA  0000              add [bx+si],al
00000DEC  0000              add [bx+si],al
00000DEE  0000              add [bx+si],al
00000DF0  0000              add [bx+si],al
00000DF2  0000              add [bx+si],al
00000DF4  0000              add [bx+si],al
00000DF6  0000              add [bx+si],al
00000DF8  0000              add [bx+si],al
00000DFA  0000              add [bx+si],al
00000DFC  0000              add [bx+si],al
00000DFE  0000              add [bx+si],al
00000E00  0000              add [bx+si],al
00000E02  0000              add [bx+si],al
00000E04  0000              add [bx+si],al
00000E06  0000              add [bx+si],al
00000E08  0000              add [bx+si],al
00000E0A  0000              add [bx+si],al
00000E0C  0000              add [bx+si],al
00000E0E  0000              add [bx+si],al
00000E10  0000              add [bx+si],al
00000E12  0000              add [bx+si],al
00000E14  0000              add [bx+si],al
00000E16  0000              add [bx+si],al
00000E18  0000              add [bx+si],al
00000E1A  0000              add [bx+si],al
00000E1C  0000              add [bx+si],al
00000E1E  0000              add [bx+si],al
00000E20  0000              add [bx+si],al
00000E22  0000              add [bx+si],al
00000E24  0000              add [bx+si],al
00000E26  0000              add [bx+si],al
00000E28  0000              add [bx+si],al
00000E2A  0000              add [bx+si],al
00000E2C  0000              add [bx+si],al
00000E2E  0000              add [bx+si],al
00000E30  0000              add [bx+si],al
00000E32  0000              add [bx+si],al
00000E34  0000              add [bx+si],al
00000E36  0000              add [bx+si],al
00000E38  0000              add [bx+si],al
00000E3A  0000              add [bx+si],al
00000E3C  0000              add [bx+si],al
00000E3E  0000              add [bx+si],al
00000E40  0000              add [bx+si],al
00000E42  0000              add [bx+si],al
00000E44  0000              add [bx+si],al
00000E46  0000              add [bx+si],al
00000E48  0000              add [bx+si],al
00000E4A  0000              add [bx+si],al
00000E4C  0000              add [bx+si],al
00000E4E  0000              add [bx+si],al
00000E50  0000              add [bx+si],al
00000E52  0000              add [bx+si],al
00000E54  0000              add [bx+si],al
00000E56  0000              add [bx+si],al
00000E58  0000              add [bx+si],al
00000E5A  0000              add [bx+si],al
00000E5C  0000              add [bx+si],al
00000E5E  0000              add [bx+si],al
00000E60  0000              add [bx+si],al
00000E62  0000              add [bx+si],al
00000E64  0000              add [bx+si],al
00000E66  0000              add [bx+si],al
00000E68  0000              add [bx+si],al
00000E6A  0000              add [bx+si],al
00000E6C  0000              add [bx+si],al
00000E6E  0000              add [bx+si],al
00000E70  0000              add [bx+si],al
00000E72  0000              add [bx+si],al
00000E74  0000              add [bx+si],al
00000E76  0000              add [bx+si],al
00000E78  0000              add [bx+si],al
00000E7A  0000              add [bx+si],al
00000E7C  0000              add [bx+si],al
00000E7E  0000              add [bx+si],al
00000E80  0000              add [bx+si],al
00000E82  0000              add [bx+si],al
00000E84  0000              add [bx+si],al
00000E86  0000              add [bx+si],al
00000E88  0000              add [bx+si],al
00000E8A  0000              add [bx+si],al
00000E8C  0000              add [bx+si],al
00000E8E  0000              add [bx+si],al
00000E90  0000              add [bx+si],al
00000E92  0000              add [bx+si],al
00000E94  0000              add [bx+si],al
00000E96  0000              add [bx+si],al
00000E98  0000              add [bx+si],al
00000E9A  0000              add [bx+si],al
00000E9C  0000              add [bx+si],al
00000E9E  0000              add [bx+si],al
00000EA0  0000              add [bx+si],al
00000EA2  0000              add [bx+si],al
00000EA4  0000              add [bx+si],al
00000EA6  0000              add [bx+si],al
00000EA8  0000              add [bx+si],al
00000EAA  0000              add [bx+si],al
00000EAC  0000              add [bx+si],al
00000EAE  0000              add [bx+si],al
00000EB0  0000              add [bx+si],al
00000EB2  0000              add [bx+si],al
00000EB4  0000              add [bx+si],al
00000EB6  0000              add [bx+si],al
00000EB8  0000              add [bx+si],al
00000EBA  0000              add [bx+si],al
00000EBC  0000              add [bx+si],al
00000EBE  0000              add [bx+si],al
00000EC0  0000              add [bx+si],al
00000EC2  0000              add [bx+si],al
00000EC4  0000              add [bx+si],al
00000EC6  0000              add [bx+si],al
00000EC8  0000              add [bx+si],al
00000ECA  0000              add [bx+si],al
00000ECC  0000              add [bx+si],al
00000ECE  0000              add [bx+si],al
00000ED0  0000              add [bx+si],al
00000ED2  0000              add [bx+si],al
00000ED4  0000              add [bx+si],al
00000ED6  0000              add [bx+si],al
00000ED8  0000              add [bx+si],al
00000EDA  0000              add [bx+si],al
00000EDC  0000              add [bx+si],al
00000EDE  0000              add [bx+si],al
00000EE0  0000              add [bx+si],al
00000EE2  0000              add [bx+si],al
00000EE4  0000              add [bx+si],al
00000EE6  0000              add [bx+si],al
00000EE8  0000              add [bx+si],al
00000EEA  0000              add [bx+si],al
00000EEC  0000              add [bx+si],al
00000EEE  0000              add [bx+si],al
00000EF0  0000              add [bx+si],al
00000EF2  0000              add [bx+si],al
00000EF4  0000              add [bx+si],al
00000EF6  0000              add [bx+si],al
00000EF8  0000              add [bx+si],al
00000EFA  0000              add [bx+si],al
00000EFC  0000              add [bx+si],al
00000EFE  0000              add [bx+si],al
00000F00  0000              add [bx+si],al
00000F02  0000              add [bx+si],al
00000F04  0000              add [bx+si],al
00000F06  0000              add [bx+si],al
00000F08  0000              add [bx+si],al
00000F0A  0000              add [bx+si],al
00000F0C  0000              add [bx+si],al
00000F0E  0000              add [bx+si],al
00000F10  0000              add [bx+si],al
00000F12  0000              add [bx+si],al
00000F14  0000              add [bx+si],al
00000F16  0000              add [bx+si],al
00000F18  0000              add [bx+si],al
00000F1A  0000              add [bx+si],al
00000F1C  0000              add [bx+si],al
00000F1E  0000              add [bx+si],al
00000F20  0000              add [bx+si],al
00000F22  0000              add [bx+si],al
00000F24  0000              add [bx+si],al
00000F26  0000              add [bx+si],al
00000F28  0000              add [bx+si],al
00000F2A  0000              add [bx+si],al
00000F2C  0000              add [bx+si],al
00000F2E  0000              add [bx+si],al
00000F30  0000              add [bx+si],al
00000F32  0000              add [bx+si],al
00000F34  0000              add [bx+si],al
00000F36  0000              add [bx+si],al
00000F38  0000              add [bx+si],al
00000F3A  0000              add [bx+si],al
00000F3C  0000              add [bx+si],al
00000F3E  0000              add [bx+si],al
00000F40  0000              add [bx+si],al
00000F42  0000              add [bx+si],al
00000F44  0000              add [bx+si],al
00000F46  0000              add [bx+si],al
00000F48  0000              add [bx+si],al
00000F4A  0000              add [bx+si],al
00000F4C  0000              add [bx+si],al
00000F4E  0000              add [bx+si],al
00000F50  0000              add [bx+si],al
00000F52  0000              add [bx+si],al
00000F54  0000              add [bx+si],al
00000F56  0000              add [bx+si],al
00000F58  0000              add [bx+si],al
00000F5A  0000              add [bx+si],al
00000F5C  0000              add [bx+si],al
00000F5E  0000              add [bx+si],al
00000F60  0000              add [bx+si],al
00000F62  0000              add [bx+si],al
00000F64  0000              add [bx+si],al
00000F66  0000              add [bx+si],al
00000F68  0000              add [bx+si],al
00000F6A  0000              add [bx+si],al
00000F6C  0000              add [bx+si],al
00000F6E  0000              add [bx+si],al
00000F70  0000              add [bx+si],al
00000F72  0000              add [bx+si],al
00000F74  0000              add [bx+si],al
00000F76  0000              add [bx+si],al
00000F78  0000              add [bx+si],al
00000F7A  0000              add [bx+si],al
00000F7C  0000              add [bx+si],al
00000F7E  0000              add [bx+si],al
00000F80  0000              add [bx+si],al
00000F82  0000              add [bx+si],al
00000F84  0000              add [bx+si],al
00000F86  0000              add [bx+si],al
00000F88  0000              add [bx+si],al
00000F8A  0000              add [bx+si],al
00000F8C  0000              add [bx+si],al
00000F8E  0000              add [bx+si],al
00000F90  0000              add [bx+si],al
00000F92  0000              add [bx+si],al
00000F94  0000              add [bx+si],al
00000F96  0000              add [bx+si],al
00000F98  0000              add [bx+si],al
00000F9A  0000              add [bx+si],al
00000F9C  0000              add [bx+si],al
00000F9E  0000              add [bx+si],al
00000FA0  0000              add [bx+si],al
00000FA2  0000              add [bx+si],al
00000FA4  0000              add [bx+si],al
00000FA6  0000              add [bx+si],al
00000FA8  0000              add [bx+si],al
00000FAA  0000              add [bx+si],al
00000FAC  0000              add [bx+si],al
00000FAE  0000              add [bx+si],al
00000FB0  0000              add [bx+si],al
00000FB2  0000              add [bx+si],al
00000FB4  0000              add [bx+si],al
00000FB6  0000              add [bx+si],al
00000FB8  0000              add [bx+si],al
00000FBA  0000              add [bx+si],al
00000FBC  0000              add [bx+si],al
00000FBE  0000              add [bx+si],al
00000FC0  0000              add [bx+si],al
00000FC2  0000              add [bx+si],al
00000FC4  0000              add [bx+si],al
00000FC6  0000              add [bx+si],al
00000FC8  0000              add [bx+si],al
00000FCA  0000              add [bx+si],al
00000FCC  0000              add [bx+si],al
00000FCE  0000              add [bx+si],al
00000FD0  0000              add [bx+si],al
00000FD2  0000              add [bx+si],al
00000FD4  0000              add [bx+si],al
00000FD6  0000              add [bx+si],al
00000FD8  0000              add [bx+si],al
00000FDA  0000              add [bx+si],al
00000FDC  0000              add [bx+si],al
00000FDE  0000              add [bx+si],al
00000FE0  0000              add [bx+si],al
00000FE2  0000              add [bx+si],al
00000FE4  0000              add [bx+si],al
00000FE6  0000              add [bx+si],al
00000FE8  0000              add [bx+si],al
00000FEA  0000              add [bx+si],al
00000FEC  0000              add [bx+si],al
00000FEE  0000              add [bx+si],al
00000FF0  0000              add [bx+si],al
00000FF2  0000              add [bx+si],al
00000FF4  0000              add [bx+si],al
00000FF6  0000              add [bx+si],al
00000FF8  0000              add [bx+si],al
00000FFA  0000              add [bx+si],al
00000FFC  0000              add [bx+si],al
00000FFE  0000              add [bx+si],al
00001000  0000              add [bx+si],al
00001002  0000              add [bx+si],al
00001004  0000              add [bx+si],al
00001006  0000              add [bx+si],al
00001008  0000              add [bx+si],al
0000100A  0000              add [bx+si],al
0000100C  0000              add [bx+si],al
0000100E  0000              add [bx+si],al
00001010  0000              add [bx+si],al
00001012  0000              add [bx+si],al
00001014  0000              add [bx+si],al
00001016  0000              add [bx+si],al
00001018  0000              add [bx+si],al
0000101A  0000              add [bx+si],al
0000101C  0000              add [bx+si],al
0000101E  0000              add [bx+si],al
00001020  0000              add [bx+si],al
00001022  0000              add [bx+si],al
00001024  0000              add [bx+si],al
00001026  0000              add [bx+si],al
00001028  0000              add [bx+si],al
0000102A  0000              add [bx+si],al
0000102C  0000              add [bx+si],al
0000102E  0000              add [bx+si],al
00001030  0000              add [bx+si],al
00001032  0000              add [bx+si],al
00001034  0000              add [bx+si],al
00001036  0000              add [bx+si],al
00001038  0000              add [bx+si],al
0000103A  0000              add [bx+si],al
0000103C  0000              add [bx+si],al
0000103E  0000              add [bx+si],al
00001040  0000              add [bx+si],al
00001042  0000              add [bx+si],al
00001044  0000              add [bx+si],al
00001046  0000              add [bx+si],al
00001048  0000              add [bx+si],al
0000104A  0000              add [bx+si],al
0000104C  0000              add [bx+si],al
0000104E  0000              add [bx+si],al
00001050  0000              add [bx+si],al
00001052  0000              add [bx+si],al
00001054  0000              add [bx+si],al
00001056  0000              add [bx+si],al
00001058  0000              add [bx+si],al
0000105A  0000              add [bx+si],al
0000105C  0000              add [bx+si],al
0000105E  0000              add [bx+si],al
00001060  0000              add [bx+si],al
00001062  0000              add [bx+si],al
00001064  0000              add [bx+si],al
00001066  0000              add [bx+si],al
00001068  0000              add [bx+si],al
0000106A  0000              add [bx+si],al
0000106C  0000              add [bx+si],al
0000106E  0000              add [bx+si],al
00001070  0000              add [bx+si],al
00001072  0000              add [bx+si],al
00001074  0000              add [bx+si],al
00001076  0000              add [bx+si],al
00001078  0000              add [bx+si],al
0000107A  0000              add [bx+si],al
0000107C  0000              add [bx+si],al
0000107E  0000              add [bx+si],al
00001080  0000              add [bx+si],al
00001082  0000              add [bx+si],al
00001084  0000              add [bx+si],al
00001086  0000              add [bx+si],al
00001088  0000              add [bx+si],al
0000108A  0000              add [bx+si],al
0000108C  0000              add [bx+si],al
0000108E  0000              add [bx+si],al
00001090  0000              add [bx+si],al
00001092  0000              add [bx+si],al
00001094  0000              add [bx+si],al
00001096  0000              add [bx+si],al
00001098  0000              add [bx+si],al
0000109A  0000              add [bx+si],al
0000109C  0000              add [bx+si],al
0000109E  0000              add [bx+si],al
000010A0  0000              add [bx+si],al
000010A2  0000              add [bx+si],al
000010A4  0000              add [bx+si],al
000010A6  0000              add [bx+si],al
000010A8  0000              add [bx+si],al
000010AA  0000              add [bx+si],al
000010AC  0000              add [bx+si],al
000010AE  0000              add [bx+si],al
000010B0  0000              add [bx+si],al
000010B2  0000              add [bx+si],al
000010B4  0000              add [bx+si],al
000010B6  0000              add [bx+si],al
000010B8  0000              add [bx+si],al
000010BA  0000              add [bx+si],al
000010BC  0000              add [bx+si],al
000010BE  0000              add [bx+si],al
000010C0  0000              add [bx+si],al
000010C2  0000              add [bx+si],al
000010C4  0000              add [bx+si],al
000010C6  0000              add [bx+si],al
000010C8  0000              add [bx+si],al
000010CA  0000              add [bx+si],al
000010CC  0000              add [bx+si],al
000010CE  0000              add [bx+si],al
000010D0  0000              add [bx+si],al
000010D2  0000              add [bx+si],al
000010D4  0000              add [bx+si],al
000010D6  0000              add [bx+si],al
000010D8  0000              add [bx+si],al
000010DA  0000              add [bx+si],al
000010DC  0000              add [bx+si],al
000010DE  0000              add [bx+si],al
000010E0  0000              add [bx+si],al
000010E2  0000              add [bx+si],al
000010E4  0000              add [bx+si],al
000010E6  0000              add [bx+si],al
000010E8  0000              add [bx+si],al
000010EA  0000              add [bx+si],al
000010EC  0000              add [bx+si],al
000010EE  0000              add [bx+si],al
000010F0  0000              add [bx+si],al
000010F2  0000              add [bx+si],al
000010F4  0000              add [bx+si],al
000010F6  0000              add [bx+si],al
000010F8  0000              add [bx+si],al
000010FA  0000              add [bx+si],al
000010FC  0000              add [bx+si],al
000010FE  0000              add [bx+si],al
00001100  0000              add [bx+si],al
00001102  0000              add [bx+si],al
00001104  0000              add [bx+si],al
00001106  0000              add [bx+si],al
00001108  0000              add [bx+si],al
0000110A  0000              add [bx+si],al
0000110C  0000              add [bx+si],al
0000110E  0000              add [bx+si],al
00001110  0000              add [bx+si],al
00001112  0000              add [bx+si],al
00001114  0000              add [bx+si],al
00001116  00                db 0x00
