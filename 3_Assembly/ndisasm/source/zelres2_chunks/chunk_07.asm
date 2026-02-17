00000000  262900            sub [es:bx+si],ax
00000003  002EA299          add [0x99a2],ch
00000007  048C              add al,0x8c
00000009  C88ED88E          enter word 0xd88e,byte 0x8e
0000000D  C0FCE8            sar ah,byte 0xe8
00000010  95                xchg ax,bp
00000011  00BEAE04          add [bp+0x4ae],bh
00000015  BF2629            mov di,0x2926
00000018  E83D04            call 0x458
0000001B  BE3D07            mov si,0x73d
0000001E  BF8632            mov di,0x3286
00000021  E83404            call 0x458
00000024  BE2629            mov si,0x2926
00000027  BD6009            mov bp,0x960
0000002A  BB000C            mov bx,0xc00
0000002D  B90D38            mov cx,0x380d
00000030  E8A100            call 0xd4
00000033  C606970410        mov byte [0x497],0x10
00000038  BECD08            mov si,0x8cd
0000003B  BF2629            mov di,0x2926
0000003E  E81704            call 0x458
00000041  BEDB10            mov si,0x10db
00000044  BF8632            mov di,0x3286
00000047  E80E04            call 0x458
0000004A  BE2629            mov si,0x2926
0000004D  BD6009            mov bp,0x960
00000050  BB0000            mov bx,0x0
00000053  B9C80C            mov cx,0xcc8
00000056  E87B00            call 0xd4
00000059  BE6118            mov si,0x1861
0000005C  BF2629            mov di,0x2926
0000005F  E8F603            call 0x458
00000062  BE8820            mov si,0x2088
00000065  BF8632            mov di,0x3286
00000068  E8ED03            call 0x458
0000006B  BE2629            mov si,0x2926
0000006E  BD6009            mov bp,0x960
00000071  BB0044            mov bx,0x4400
00000074  B9C80C            mov cx,0xcc8
00000077  E85A00            call 0xd4
0000007A  C6069804FF        mov byte [0x498],0xff
0000007F  C606970450        mov byte [0x497],0x50
00000084  BE9927            mov si,0x2799
00000087  BF2629            mov di,0x2926
0000008A  E8CB03            call 0x458
0000008D  BF8632            mov di,0x3286
00000090  B9B004            mov cx,0x4b0
00000093  33C0              xor ax,ax
00000095  F3AB              rep stosw
00000097  BD6009            mov bp,0x960
0000009A  BB9E0C            mov bx,0xc9e
0000009D  B92A38            mov cx,0x382a
000000A0  E83100            call 0xd4
000000A3  E8AC02            call 0x352
000000A6  CB                retf
000000A7  F6069904FF        test byte [0x499],0xff
000000AC  7401              jz 0xaf
000000AE  C3                ret
000000AF  BACC03            mov dx,0x3cc
000000B2  32C0              xor al,al
000000B4  EE                out dx,al
000000B5  42                inc dx
000000B6  FEC0              inc al
000000B8  EE                out dx,al
000000B9  BACE03            mov dx,0x3ce
000000BC  B80000            mov ax,0x0
000000BF  EF                out dx,ax
000000C0  FEC0              inc al
000000C2  EF                out dx,ax
000000C3  B8020F            mov ax,0xf02
000000C6  EF                out dx,ax
000000C7  B80300            mov ax,0x3
000000CA  EF                out dx,ax
000000CB  B80500            mov ax,0x5
000000CE  EF                out dx,ax
000000CF  B808FF            mov ax,0xff08
000000D2  EF                out dx,ax
000000D3  C3                ret
000000D4  33C0              xor ax,ax
000000D6  A09904            mov al,[0x499]
000000D9  03C0              add ax,ax
000000DB  05DE00            add ax,0xde
000000DE  8BF8              mov di,ax
000000E0  FF25              jmp word near [di]
000000E2  EA00400140        jmp word 0x4001:word 0x4000
000000E7  01BA014B          add [bp+si+0x4b01],di
000000EB  02BE0206          add bh,[bp+0x602]
000000EF  B85000            mov ax,0x50
000000F2  F6E3              mul bl
000000F4  8ADF              mov bl,bh
000000F6  32FF              xor bh,bh
000000F8  03C3              add ax,bx
000000FA  8BF8              mov di,ax
000000FC  B800A0            mov ax,0xa000
000000FF  8EC0              mov es,ax
00000101  BAC403            mov dx,0x3c4
00000104  B002              mov al,0x2
00000106  EE                out dx,al
00000107  42                inc dx
00000108  8BD9              mov bx,cx
0000010A  57                push di
0000010B  51                push cx
0000010C  3E8A22            mov ah,[ds:bp+si]
0000010F  AC                lodsb
00000110  8ACC              mov cl,ah
00000112  0AC8              or cl,al
00000114  32C8              xor cl,al
00000116  8AE9              mov ch,cl
00000118  0AC5              or al,ch
0000011A  F6D5              not ch
0000011C  22E5              and ah,ch
0000011E  8AE8              mov ch,al
00000120  B001              mov al,0x1
00000122  EE                out dx,al
00000123  26882D            mov [es:di],ch
00000126  B002              mov al,0x2
00000128  EE                out dx,al
00000129  268825            mov [es:di],ah
0000012C  B004              mov al,0x4
0000012E  EE                out dx,al
0000012F  26880D            mov [es:di],cl
00000132  47                inc di
00000133  FECF              dec bh
00000135  75D5              jnz 0x10c
00000137  59                pop cx
00000138  5F                pop di
00000139  83C750            add di,0x50
0000013C  8AFD              mov bh,ch
0000013E  FECB              dec bl
00000140  75C8              jnz 0x10a
00000142  07                pop es
00000143  C3                ret
00000144  06                push es
00000145  B85000            mov ax,0x50
00000148  D0EB              shr bl,0x0
0000014A  1BD2              sbb dx,dx
0000014C  F6E3              mul bl
0000014E  81E20020          and dx,0x2000
00000152  03C2              add ax,dx
00000154  8ADF              mov bl,bh
00000156  32FF              xor bh,bh
00000158  03C3              add ax,bx
0000015A  8BF8              mov di,ax
0000015C  B800B8            mov ax,0xb800
0000015F  8EC0              mov es,ax
00000161  8BD9              mov bx,cx
00000163  57                push di
00000164  51                push cx
00000165  53                push bx
00000166  3E8A22            mov ah,[ds:bp+si]
00000169  AC                lodsb
0000016A  32D2              xor dl,dl
0000016C  B90400            mov cx,0x4
0000016F  02E4              add ah,ah
00000171  12DB              adc bl,bl
00000173  02C0              add al,al
00000175  12DB              adc bl,bl
00000177  02E4              add ah,ah
00000179  12DB              adc bl,bl
0000017B  02C0              add al,al
0000017D  12DB              adc bl,bl
0000017F  80E30F            and bl,0xf
00000182  32FF              xor bh,bh
00000184  02D2              add dl,dl
00000186  02D2              add dl,dl
00000188  0A97AA01          or dl,[bx+0x1aa]
0000018C  E2E1              loop 0x16f
0000018E  8AC2              mov al,dl
00000190  AA                stosb
00000191  5B                pop bx
00000192  FECF              dec bh
00000194  75CF              jnz 0x165
00000196  59                pop cx
00000197  5F                pop di
00000198  81C70020          add di,0x2000
0000019C  81FF0040          cmp di,0x4000
000001A0  7204              jc 0x1a6
000001A2  81C750C0          add di,0xc050
000001A6  8AFD              mov bh,ch
000001A8  FECB              dec bl
000001AA  75B7              jnz 0x163
000001AC  07                pop es
000001AD  C3                ret
000001AE  0003              add [bp+di],al
000001B0  0201              add al,[bx+di]
000001B2  0103              add [bp+di],ax
000001B4  0201              add al,[bx+di]
000001B6  0003              add [bp+di],al
000001B8  0201              add al,[bx+di]
000001BA  0103              add [bp+di],ax
000001BC  0201              add al,[bx+di]
000001BE  06                push es
000001BF  33C0              xor ax,ax
000001C1  8AC3              mov al,bl
000001C3  051C00            add ax,0x1c
000001C6  B203              mov dl,0x3
000001C8  F6F2              div dl
000001CA  8AF4              mov dh,ah
000001CC  D0CE              ror dh,0x0
000001CE  D0CE              ror dh,0x0
000001D0  D0CE              ror dh,0x0
000001D2  B45A              mov ah,0x5a
000001D4  F6E4              mul ah
000001D6  81E20060          and dx,0x6000
000001DA  03C2              add ax,dx
000001DC  80C705            add bh,0x5
000001DF  8ADF              mov bl,bh
000001E1  32FF              xor bh,bh
000001E3  03C3              add ax,bx
000001E5  8BF8              mov di,ax
000001E7  B800B0            mov ax,0xb000
000001EA  8EC0              mov es,ax
000001EC  8BD9              mov bx,cx
000001EE  57                push di
000001EF  51                push cx
000001F0  53                push bx
000001F1  3E8A22            mov ah,[ds:bp+si]
000001F4  AC                lodsb
000001F5  32D2              xor dl,dl
000001F7  B90400            mov cx,0x4
000001FA  02E4              add ah,ah
000001FC  12DB              adc bl,bl
000001FE  02C0              add al,al
00000200  12DB              adc bl,bl
00000202  02E4              add ah,ah
00000204  12DB              adc bl,bl
00000206  02C0              add al,al
00000208  12DB              adc bl,bl
0000020A  80E30F            and bl,0xf
0000020D  32FF              xor bh,bh
0000020F  02D2              add dl,dl
00000211  02D2              add dl,dl
00000213  0A97AA01          or dl,[bx+0x1aa]
00000217  E2E1              loop 0x1fa
00000219  8AC2              mov al,dl
0000021B  AA                stosb
0000021C  5B                pop bx
0000021D  FECF              dec bh
0000021F  75CF              jnz 0x1f0
00000221  59                pop cx
00000222  5F                pop di
00000223  81C70020          add di,0x2000
00000227  81FF0060          cmp di,0x6000
0000022B  721A              jc 0x247
0000022D  1E                push ds
0000022E  56                push si
0000022F  51                push cx
00000230  57                push di
00000231  06                push es
00000232  1F                pop ds
00000233  8BF7              mov si,di
00000235  81EE0020          sub si,0x2000
00000239  8ACD              mov cl,ch
0000023B  32ED              xor ch,ch
0000023D  F3A4              rep movsb
0000023F  5F                pop di
00000240  59                pop cx
00000241  5E                pop si
00000242  1F                pop ds
00000243  81C75AA0          add di,0xa05a
00000247  8AFD              mov bh,ch
00000249  FECB              dec bl
0000024B  75A1              jnz 0x1ee
0000024D  07                pop es
0000024E  C3                ret
0000024F  06                push es
00000250  33D2              xor dx,dx
00000252  8AD7              mov dl,bh
00000254  8AFE              mov bh,dh
00000256  52                push dx
00000257  B84001            mov ax,0x140
0000025A  F7E3              mul bx
0000025C  5A                pop dx
0000025D  03D2              add dx,dx
0000025F  03D2              add dx,dx
00000261  03C2              add ax,dx
00000263  8BF8              mov di,ax
00000265  B800A0            mov ax,0xa000
00000268  8EC0              mov es,ax
0000026A  8BD9              mov bx,cx
0000026C  57                push di
0000026D  51                push cx
0000026E  53                push bx
0000026F  3E8A32            mov dh,[ds:bp+si]
00000272  8A14              mov dl,[si]
00000274  E82100            call 0x298
00000277  AA                stosb
00000278  E81D00            call 0x298
0000027B  AA                stosb
0000027C  E81900            call 0x298
0000027F  AA                stosb
00000280  E81500            call 0x298
00000283  AA                stosb
00000284  46                inc si
00000285  5B                pop bx
00000286  FECF              dec bh
00000288  75E4              jnz 0x26e
0000028A  59                pop cx
0000028B  5F                pop di
0000028C  81C74001          add di,0x140
00000290  8AFD              mov bh,ch
00000292  FECB              dec bl
00000294  75D6              jnz 0x26c
00000296  07                pop es
00000297  C3                ret
00000298  02F6              add dh,dh
0000029A  12DB              adc bl,bl
0000029C  02D2              add dl,dl
0000029E  12DB              adc bl,bl
000002A0  02F6              add dh,dh
000002A2  12DB              adc bl,bl
000002A4  02D2              add dl,dl
000002A6  12DB              adc bl,bl
000002A8  80E30F            and bl,0xf
000002AB  32FF              xor bh,bh
000002AD  8A87AE02          mov al,[bx+0x2ae]
000002B1  C3                ret
000002B2  0001              add [bx+di],al
000002B4  050308            add ax,0x803
000002B7  090D              or [di],cx
000002B9  0B28              or bp,[bx+si]
000002BB  292D              sub [di],bp
000002BD  2B18              sub bx,[bx+si]
000002BF  191D              sbb [di],bx
000002C1  1B068AF3          sbb ax,[0xf38a]
000002C5  D0CE              ror dh,0x0
000002C7  D0CE              ror dh,0x0
000002C9  D0CE              ror dh,0x0
000002CB  81E20060          and dx,0x6000
000002CF  D0EB              shr bl,0x0
000002D1  D0EB              shr bl,0x0
000002D3  B8A000            mov ax,0xa0
000002D6  F6E3              mul bl
000002D8  03C2              add ax,dx
000002DA  8ADF              mov bl,bh
000002DC  32FF              xor bh,bh
000002DE  03DB              add bx,bx
000002E0  03C3              add ax,bx
000002E2  8BF8              mov di,ax
000002E4  B800B8            mov ax,0xb800
000002E7  8EC0              mov es,ax
000002E9  8BD9              mov bx,cx
000002EB  57                push di
000002EC  51                push cx
000002ED  53                push bx
000002EE  3E8A32            mov dh,[ds:bp+si]
000002F1  8A14              mov dl,[si]
000002F3  E82300            call 0x319
000002F6  AA                stosb
000002F7  E81F00            call 0x319
000002FA  AA                stosb
000002FB  46                inc si
000002FC  5B                pop bx
000002FD  FECF              dec bh
000002FF  75EC              jnz 0x2ed
00000301  59                pop cx
00000302  5F                pop di
00000303  81C70020          add di,0x2000
00000307  81FF0080          cmp di,0x8000
0000030B  7204              jc 0x311
0000030D  81C7A080          add di,0x80a0
00000311  8AFD              mov bh,ch
00000313  FECB              dec bl
00000315  75D4              jnz 0x2eb
00000317  07                pop es
00000318  C3                ret
00000319  32C0              xor al,al
0000031B  B90200            mov cx,0x2
0000031E  02F6              add dh,dh
00000320  12DB              adc bl,bl
00000322  02D2              add dl,dl
00000324  12DB              adc bl,bl
00000326  02F6              add dh,dh
00000328  12DB              adc bl,bl
0000032A  02D2              add dl,dl
0000032C  12DB              adc bl,bl
0000032E  80E30F            and bl,0xf
00000331  32FF              xor bh,bh
00000333  02C0              add al,al
00000335  02C0              add al,al
00000337  02C0              add al,al
00000339  02C0              add al,al
0000033B  0A873E03          or al,[bx+0x33e]
0000033F  E2DD              loop 0x31e
00000341  C3                ret
00000342  0007              add [bx],al
00000344  0102              add [bp+si],ax
00000346  07                pop es
00000347  0F030A            lsl cx,[bp+si]
0000034A  0103              add [bp+di],ax
0000034C  090B              or [bp+di],cx
0000034E  020A              add cl,[bp+si]
00000350  0B0E33C0          or cx,[0xc033]
00000354  A09904            mov al,[0x499]
00000357  03C0              add ax,ax
00000359  055C03            add ax,0x35c
0000035C  8BF8              mov di,ax
0000035E  FF25              jmp word near [di]
00000360  68038B            push word 0x8b03
00000363  038B038B          add cx,[bp+di-0x74fd]
00000367  038C03CF          add cx,[si-0x30fd]
0000036B  03B800A0          add di,[bx+si-0x6000]
0000036F  8EC0              mov es,ax
00000371  BAC403            mov dx,0x3c4
00000374  B80204            mov ax,0x402
00000377  EF                out dx,ax
00000378  BE9A04            mov si,0x49a
0000037B  BFB20E            mov di,0xeb2
0000037E  E80300            call 0x384
00000381  BFFC0E            mov di,0xefc
00000384  B90500            mov cx,0x5
00000387  A4                movsb
00000388  A4                movsb
00000389  83C74E            add di,0x4e
0000038C  E2F9              loop 0x387
0000038E  C3                ret
0000038F  C3                ret
00000390  B800A0            mov ax,0xa000
00000393  8EC0              mov es,ax
00000395  BE9A04            mov si,0x49a
00000398  BFC83A            mov di,0x3ac8
0000039B  E80300            call 0x3a1
0000039E  BFF03B            mov di,0x3bf0
000003A1  B90500            mov cx,0x5
000003A4  51                push cx
000003A5  57                push di
000003A6  AC                lodsb
000003A7  E80D00            call 0x3b7
000003AA  AC                lodsb
000003AB  E80900            call 0x3b7
000003AE  5F                pop di
000003AF  81C74001          add di,0x140
000003B3  59                pop cx
000003B4  E2EE              loop 0x3a4
000003B6  C3                ret
000003B7  B90400            mov cx,0x4
000003BA  32E4              xor ah,ah
000003BC  02C0              add al,al
000003BE  12E4              adc ah,ah
000003C0  02E4              add ah,ah
000003C2  02E4              add ah,ah
000003C4  02C0              add al,al
000003C6  12E4              adc ah,ah
000003C8  02E4              add ah,ah
000003CA  02E4              add ah,ah
000003CC  260825            or [es:di],ah
000003CF  47                inc di
000003D0  E2E8              loop 0x3ba
000003D2  C3                ret
000003D3  B800B8            mov ax,0xb800
000003D6  8EC0              mov es,ax
000003D8  BFE466            mov di,0x66e4
000003DB  B6FF              mov dh,0xff
000003DD  E80500            call 0x3e5
000003E0  BF7867            mov di,0x6778
000003E3  32F6              xor dh,dh
000003E5  B90500            mov cx,0x5
000003E8  51                push cx
000003E9  57                push di
000003EA  32D2              xor dl,dl
000003EC  B90400            mov cx,0x4
000003EF  268A05            mov al,[es:di]
000003F2  E81600            call 0x40b
000003F5  AA                stosb
000003F6  E2F7              loop 0x3ef
000003F8  5F                pop di
000003F9  81C70020          add di,0x2000
000003FD  81FF0080          cmp di,0x8000
00000401  7204              jc 0x407
00000403  81C7A080          add di,0x80a0
00000407  59                pop cx
00000408  E2DE              loop 0x3e8
0000040A  C3                ret
0000040B  F6C2FF            test dl,0xff
0000040E  7401              jz 0x411
00000410  C3                ret
00000411  8AE0              mov ah,al
00000413  8ADC              mov bl,ah
00000415  D0EB              shr bl,0x0
00000417  D0EB              shr bl,0x0
00000419  D0EB              shr bl,0x0
0000041B  D0EB              shr bl,0x0
0000041D  32FF              xor bh,bh
0000041F  8BF3              mov si,bx
00000421  2E8A874404        mov al,[cs:bx+0x444]
00000426  02C0              add al,al
00000428  02C0              add al,al
0000042A  02C0              add al,al
0000042C  02C0              add al,al
0000042E  8ADC              mov bl,ah
00000430  80E30F            and bl,0xf
00000433  2E0A874404        or al,[cs:bx+0x444]
00000438  0BF6              or si,si
0000043A  7401              jz 0x43d
0000043C  C3                ret
0000043D  F6C6FF            test dh,0xff
00000440  7501              jnz 0x443
00000442  C3                ret
00000443  8AC4              mov al,ah
00000445  B2FF              mov dl,0xff
00000447  C3                ret
00000448  0004              add [si],al
0000044A  050504            add ax,0x405
0000044D  050507            add ax,0x705
00000450  080C              or [si],cl
00000452  0D0D0C            or ax,0xc0d
00000455  0D0D0F            or ax,0xf0d
00000458  AC                lodsb
00000459  0AC0              or al,al
0000045B  7501              jnz 0x45e
0000045D  C3                ret
0000045E  8AE0              mov ah,al
00000460  80E4F0            and ah,0xf0
00000463  3A269704          cmp ah,[0x497]
00000467  7508              jnz 0x471
00000469  240F              and al,0xf
0000046B  8AE0              mov ah,al
0000046D  B0AA              mov al,0xaa
0000046F  EB23              jmp 0x494
00000471  80FC40            cmp ah,0x40
00000474  7508              jnz 0x47e
00000476  240F              and al,0xf
00000478  8AE0              mov ah,al
0000047A  32C0              xor al,al
0000047C  EB16              jmp 0x494
0000047E  F6069804FF        test byte [0x498],0xff
00000483  740D              jz 0x492
00000485  80FCD0            cmp ah,0xd0
00000488  7508              jnz 0x492
0000048A  240F              and al,0xf
0000048C  8AE0              mov ah,al
0000048E  B0FF              mov al,0xff
00000490  EB02              jmp 0x494
00000492  B401              mov ah,0x1
00000494  AA                stosb
00000495  FECC              dec ah
00000497  75FB              jnz 0x494
00000499  EBBD              jmp 0x458
0000049B  90                nop
0000049C  0000              add [bx+si],al
0000049E  2000              and [bx+si],al
000004A0  1200              adc al,[bx+si]
000004A2  AB                stosw
000004A3  00AF00A0          add [bx-0x6000],ch
000004A7  0000              add [bx+si],al
000004A9  2800              sub [bx+si],al
000004AB  2A02              sub al,[bp+si]
000004AD  AB                stosw
000004AE  02BF000F          add bh,[bx+0xf00]
000004B2  3A93FFFC          cmp dl,[bp+di-0x301]
000004B6  2A93FFFC          sub dl,[bp+di-0x301]
000004BA  2A93FFFC          sub dl,[bp+di-0x301]
000004BE  2A93FFFC          sub dl,[bp+di-0x301]
000004C2  2BAF8003          sub bp,[bx+0x380]
000004C6  E003              loopne 0x4cb
000004C8  EBFA              jmp 0x4c4
000004CA  FF                db 0xff
000004CB  FC                cld
000004CC  2A93FFFC          sub dl,[bp+di-0x301]
000004D0  2A93FFFC          sub dl,[bp+di-0x301]
000004D4  2A93FFFC          sub dl,[bp+di-0x301]
000004D8  2A92ACEA          sub dl,[bp+si-0x1554]
000004DC  43                inc bx
000004DD  EAA844EAA8        jmp word 0xa8ea:word 0x44a8
000004E2  44                inc sp
000004E3  EAA844EAA8        jmp word 0xa8ea:word 0x44a8
000004E8  42                inc dx
000004E9  B028              mov al,0x28
000004EB  0C0E              or al,0xe
000004ED  42                inc dx
000004EE  EAA844EAA8        jmp word 0xa8ea:word 0x44a8
000004F3  44                inc sp
000004F4  EAA844EAA8        jmp word 0xa8ea:word 0x44a8
000004F9  43                inc bx
000004FA  AB                stosw
000004FB  E8AFFA            call 0xffad
000004FE  EF                out dx,ax
000004FF  E8282B            call 0x302a
00000502  AF                scasw
00000503  FA                cli
00000504  FF                db 0xff
00000505  E8283E            call 0x4330
00000508  FA                cli
00000509  AE                scasb
0000050A  BBE828            mov bx,0x28e8
0000050D  2AAFFAFF          sub ch,[bx-0x6]
00000511  E8283A            call 0x3f3c
00000514  91                xchg ax,cx
00000515  EC                in al,dx
00000516  C0033B            rol byte [bp+di],byte 0x3b
00000519  91                xchg ax,cx
0000051A  AE                scasb
0000051B  E8282A            call 0x2f46
0000051E  AF                scasw
0000051F  FA                cli
00000520  91                xchg ax,cx
00000521  E8283A            call 0x3f4c
00000524  91                xchg ax,cx
00000525  FFAFE828          jmp word far [bx+0x28e8]
00000529  3F                aas
0000052A  AF                scasw
0000052B  FA                cli
0000052C  91                xchg ax,cx
0000052D  E8287B            call 0x8058
00000530  AF                scasw
00000531  FA                cli
00000532  2BA8BAAF          sub bp,[bx+si-0x5046]
00000536  FA                cli
00000537  E2B8              loop 0x4f1
00000539  3AFA              cmp bh,dl
0000053B  AF                scasw
0000053C  91                xchg ax,cx
0000053D  E2B8              loop 0x4f7
0000053F  3BABBBBA          cmp bp,[bp+di-0x4545]
00000543  E2B8              loop 0x4fd
00000545  3AFA              cmp bh,dl
00000547  AF                scasw
00000548  EAE2B82AEA        jmp word 0xea2a:word 0xb8e2
0000054D  EB05              jmp 0x554
0000054F  50                push ax
00000550  EBAB              jmp 0x4fd
00000552  91                xchg ax,cx
00000553  E2B8              loop 0x50d
00000555  3AFA              cmp bh,dl
00000557  AF                scasw
00000558  AF                scasw
00000559  E2B8              loop 0x513
0000055B  2F                das
0000055C  AF                scasw
0000055D  91                xchg ax,cx
0000055E  FA                cli
0000055F  E2B8              loop 0x519
00000561  2AFA              sub bh,dl
00000563  AF                scasw
00000564  AF                scasw
00000565  E2B8              loop 0x51f
00000567  2F                das
00000568  FA                cli
00000569  AE                scasb
0000056A  2AF8              sub bh,al
0000056C  EAEF91CAAC        jmp word 0xacca:word 0x91ef
00000571  2BAB91FA          sub bp,[bp+di-0x56f]
00000575  CAAC2A            retf word 0x2aac
00000578  FE                db 0xfe
00000579  AF                scasw
0000057A  AB                stosw
0000057B  CAAC2F            retf word 0x2fac
0000057E  AB                stosw
0000057F  91                xchg ax,cx
00000580  EBCA              jmp 0x54c
00000582  AC                lodsb
00000583  2ABEEA10          sub bh,[bp+0x10ea]
00000587  046B              add al,0x6b
00000589  BAEACA            mov dx,0xcaea
0000058C  AC                lodsb
0000058D  2F                das
0000058E  92                xchg ax,dx
0000058F  FA                cli
00000590  CAAC2A            retf word 0x2aac
00000593  FA                cli
00000594  AF                scasw
00000595  91                xchg ax,cx
00000596  CAAC2F            retf word 0x2fac
00000599  92                xchg ax,dx
0000059A  FA                cli
0000059B  CAAC2A            retf word 0x2aac
0000059E  FB                sti
0000059F  AB                stosw
000005A0  2F                das
000005A1  E8EAFA            call 0x8e
000005A4  91                xchg ax,cx
000005A5  C82C2A92          enter word 0x2a2c,byte 0x92
000005A9  AF                scasw
000005AA  C82C2A93          enter word 0x2a2c,byte 0x93
000005AE  C82C3A92          enter word 0x3a2c,byte 0x92
000005B2  AE                scasb
000005B3  C82C0AAB          enter word 0xa2c,byte 0xab
000005B7  EC                in al,dx
000005B8  1034              adc [si],dh
000005BA  3BEA              cmp bp,dx
000005BC  A0C82C            mov al,[0x2cc8]
000005BF  3ABA91AF          cmp bh,[bp+si-0x506f]
000005C3  C82C2AAF          enter word 0x2a2c,byte 0xaf
000005C7  FA                cli
000005C8  91                xchg ax,cx
000005C9  C82C3ABA          enter word 0x3a2c,byte 0xba
000005CD  91                xchg ax,cx
000005CE  AF                scasw
000005CF  C82C2AAF          enter word 0x2a2c,byte 0xaf
000005D3  AB                stosw
000005D4  2BA8EFAB          sub bp,[bx+si-0x5411]
000005D8  A0C8EC            mov al,[0xecc8]
000005DB  2BA00AEA          sub sp,[bx+si-0x15f6]
000005DF  C8EC0AEA          enter word 0xaec,byte 0xea
000005E3  AB                stosw
000005E4  A0C8EC            mov al,[0xecc8]
000005E7  2BA00AAE          sub sp,[bx+si-0x51f6]
000005EB  C8EC02A8          enter word 0x2ec,byte 0xa8
000005EF  EC                in al,dx
000005F0  11743B            adc [si+0x3b],si
000005F3  2A80C8EC          sub al,[bx+si-0x1338]
000005F7  2AE0              sub ah,al
000005F9  0A91C8EC          or dl,[bx+di-0x1338]
000005FD  0A91AEA0          or dl,[bx+di-0x5f52]
00000601  C8EC2BA0          enter word 0x2bec,byte 0xa0
00000605  0AEA              or ch,dl
00000607  C8EC0AEA          enter word 0xaec,byte 0xea
0000060B  FB                sti
0000060C  2AA8920A          sub ch,[bx+si+0xa92]
00000610  CAAC3A            retf word 0x3aac
00000613  0AA0ABCA          or ah,[bx+si-0x3555]
00000617  AC                lodsb
00000618  20928ACA          and [bp+si-0x3576],dl
0000061C  AC                lodsb
0000061D  2A0B              sub cl,[bp+di]
0000061F  A291CA            mov [0xca91],al
00000622  AC                lodsb
00000623  2A83EA17          sub al,[bp+di+0x17ea]
00000627  F4                hlt
00000628  6B82B8CAAC        imul ax,[bp+si-0x3548],0xffffffffffffffac
0000062D  2A0A              sub cl,[bp+si]
0000062F  A0AECA            mov al,[0xcaae]
00000632  AC                lodsb
00000633  20920ACA          and [bp+si-0x35f6],dl
00000637  AC                lodsb
00000638  2A0A              sub cl,[bp+si]
0000063A  A091CA            mov al,[0xca91]
0000063D  AC                lodsb
0000063E  20922AE8          and [bp+si-0x17d6],dl
00000642  CAA091            retf word 0x91a0
00000645  E2B8              loop 0x5ff
00000647  28910A0A          sub [bx+di+0xa0a],dl
0000064B  E2B8              loop 0x605
0000064D  0A0A              or cl,[bp+si]
0000064F  A091E2            mov al,[0xe291]
00000652  B820BA            mov ax,0xba20
00000655  0A0A              or cl,[bp+si]
00000657  E2B8              loop 0x611
00000659  202EEB05          and [0x5eb],ch
0000065D  50                push ax
0000065E  EBA8              jmp 0x608
00000660  0AE2              or ah,dl
00000662  B820A0            mov ax,0xa020
00000665  91                xchg ax,cx
00000666  0AE2              or ah,dl
00000668  B82A0A            mov ax,0xa2a
0000066B  A0A0E2            mov al,[0xe2a0]
0000066E  B820A0            mov ax,0xa020
00000671  91                xchg ax,cx
00000672  0AE2              or ah,dl
00000674  B82A0A            mov ax,0xa2a
00000677  A32BA8            mov [0xa82b],ax
0000067A  A00A41            mov al,[0x410a]
0000067D  EBE8              jmp 0x667
0000067F  0A4191            or al,[bx+di-0x6f]
00000682  A0EBE8            mov al,[0xe8eb]
00000685  2EA00A41          mov al,[cs:0x410a]
00000689  EBE8              jmp 0x673
0000068B  0A28              or ch,[bx+si]
0000068D  91                xchg ax,cx
0000068E  EAEBE80AEA        jmp word 0xea0a:word 0xe8eb
00000693  E080              loopne 0x615
00000695  032B              add bp,[bp+di]
00000697  91                xchg ax,cx
00000698  A0EBE8            mov al,[0xe8eb]
0000069B  2A9141A0          sub dl,[bx+di-0x5fbf]
0000069F  EBE8              jmp 0x689
000006A1  41                inc cx
000006A2  A00A91            mov al,[0x910a]
000006A5  EBE8              jmp 0x68f
000006A7  0AEE              or ch,dh
000006A9  41                inc cx
000006AA  A0EBE8            mov al,[0xe8eb]
000006AD  41                inc cx
000006AE  A00A2A            mov al,[0x2a0a]
000006B1  EAEEEFABEA        jmp word 0xeaab:word 0xefee
000006B6  A83E              test al,0x3e
000006B8  FF                db 0xff
000006B9  EE                out dx,al
000006BA  EBEA              jmp 0x6a6
000006BC  A83F              test al,0x3f
000006BE  EF                out dx,ax
000006BF  FA                cli
000006C0  BBEAA8            mov bx,0xa8ea
000006C3  3BFF              cmp di,di
000006C5  FF                db 0xff
000006C6  FF                db 0xff
000006C7  EAA83FFF80        jmp word 0x80ff:word 0x3fa8
000006CC  280C              sub [si],cl
000006CE  0AFA              or bh,dl
000006D0  BFEAA8            mov di,0xa8ea
000006D3  3F                aas
000006D4  EF                out dx,ax
000006D5  FF91EAA8          call word near [bx+di-0x5716]
000006D9  3BEF              cmp bp,di
000006DB  BBBFEA            mov bx,0xeabf
000006DE  A82E              test al,0x2e
000006E0  FB                sti
000006E1  FB                sti
000006E2  AF                scasw
000006E3  EAA86AFBBB        jmp word 0xbbfb:word 0x6aa8
000006E8  AB                stosw
000006E9  94                xchg ax,sp
000006EA  42                inc dx
000006EB  2A93422A          sub dl,[bp+di+0x2a42]
000006EF  93                xchg ax,bx
000006F0  42                inc dx
000006F1  2A93422A          sub dl,[bp+di+0x2a42]
000006F5  91                xchg ax,cx
000006F6  41                inc cx
000006F7  02E0              add ah,al
000006F9  0292422A          add dl,[bp+si+0x2a42]
000006FD  93                xchg ax,bx
000006FE  42                inc dx
000006FF  2A93422A          sub dl,[bp+di+0x2a42]
00000703  92                xchg ax,dx
00000704  EA422A93EE        jmp word 0xee93:word 0x2a42
00000709  AE                scasb
0000070A  EAAEBEFAFA        jmp word 0xfafa:word 0xbeae
0000070F  BEEEAF            mov si,0xafee
00000712  FA                cli
00000713  BEEEAF            mov si,0xafee
00000716  FA                cli
00000717  BEEEAF            mov si,0xafee
0000071A  FA                cli
0000071B  BEEEAF            mov si,0xafee
0000071E  FA                cli
0000071F  AE                scasb
00000720  EE                out dx,al
00000721  AF                scasw
00000722  FA                cli
00000723  BEBEAF            mov si,0xafbe
00000726  FA                cli
00000727  BBBEAB            mov bx,0xabbe
0000072A  FA                cli
0000072B  BBBEAB            mov bx,0xabbe
0000072E  FA                cli
0000072F  BBBEAF            mov bx,0xafbe
00000732  FA                cli
00000733  BBBEAF            mov bx,0xafbe
00000736  FA                cli
00000737  BBBEAF            mov bx,0xafbe
0000073A  FA                cli
0000073B  BB3AAB            mov bx,0xab3a
0000073E  BABA00            mov dx,0xba
00000741  80A8028042        sub byte [bx+si-0x7ffe],0x42
00000746  20802802          and [bx+si+0x228],al
0000074A  42                inc dx
0000074B  0208              add cl,[bx+si]
0000074D  20804328          and [bx+si+0x2843],al
00000751  0A28              or ch,[bx+si]
00000753  43                inc bx
00000754  8391A80AA8        adc word [bx+di+0xaa8],0xffffffffffffffa8
00000759  284302            sub [bp+di+0x2],al
0000075C  802A02            sub byte [bp+si],0x2
0000075F  42                inc dx
00000760  202A              and [bp+si],ch
00000762  0A08              or cl,[bx+si]
00000764  43                inc bx
00000765  080A              or [bp+si],cl
00000767  80420280          add byte [bp+si+0x2],0x80
0000076B  2A02              sub al,[bp+si]
0000076D  4F                dec di
0000076E  4B                dec bx
0000076F  0A8002A0          or al,[bx+si-0x5ffe]
00000773  4F                dec di
00000774  4B                dec bx
00000775  08A002E0          or [bx+si-0x1ffe],ah
00000779  42                inc dx
0000077A  0380440E          add ax,[bx+si+0xe44]
0000077E  0A2EB849          or ch,[0x49b8]
00000782  A802              test al,0x2
00000784  42                inc dx
00000785  88A00242          mov [bx+si+0x4202],ah
00000789  2A46A0            sub al,[bp-0x60]
0000078C  45                inc bp
0000078D  20440B            and [si+0xb],al
00000790  800A20            or byte [bp+si],0x20
00000793  20804A38          and [bx+si+0x384a],al
00000797  238B8045          and cx,[bp+di+0x4580]
0000079B  C0420A20          rol byte [bp+si+0xa],byte 0x20
0000079F  204220            and [bp+si+0x20],al
000007A2  83A842304B        sub word [bx+si+0x3042],0x4b
000007A7  084702            or [bx+0x2],al
000007AA  0830              or [bx+si],dh
000007AC  41                inc cx
000007AD  E008              loopne 0x7b7
000007AF  42                inc dx
000007B0  084508            or [di+0x8],al
000007B3  0E                push cs
000007B4  A02044            mov al,[0x4420]
000007B7  0223              add ah,[bp+di]
000007B9  48                dec ax
000007BA  38E2              cmp dl,ah
000007BC  42                inc dx
000007BD  204102            and [bx+di+0x2],al
000007C0  46                inc si
000007C1  024220            add al,[bp+si+0x20]
000007C4  45                inc bp
000007C5  200B              and [bp+di],cl
000007C7  41                inc cx
000007C8  0C20              or al,0x20
000007CA  0A4428            or al,[si+0x28]
000007CD  45                inc bp
000007CE  080A              or [bp+si],cl
000007D0  A02044            mov al,[0x4420]
000007D3  0202              add al,[bp+si]
000007D5  42                inc dx
000007D6  0220              add ah,[bx+si]
000007D8  45                inc bp
000007D9  80433A44          add byte [bp+di+0x3a],0x44
000007DD  024102            add al,[bx+di+0x2]
000007E0  44                inc sp
000007E1  3820              cmp [bx+si],ah
000007E3  45                inc bp
000007E4  A00828            mov al,[0x2808]
000007E7  41                inc cx
000007E8  03804220          add ax,[bx+si+0x2042]
000007EC  46                inc si
000007ED  0820              or [bx+si],ah
000007EF  80458C42          add byte [di-0x74],0x42
000007F3  02804808          add al,[bx+si+0x848]
000007F7  E041              loopne 0x83a
000007F9  22442E            and al,[si+0x2e]
000007FC  80420380          add byte [bp+si+0x3],0x80
00000800  41                inc cx
00000801  C04202C0          rol byte [bp+si+0x2],byte 0xc0
00000805  41                inc cx
00000806  2808              sub [bx+si],cl
00000808  800843            or byte [bx+si],0x43
0000080B  384602            cmp [bp+0x2],al
0000080E  41                inc cx
0000080F  80430B02          add byte [bp+di+0xb],0x2
00000813  08422A            or [bp+si+0x2a],al
00000816  034480            add ax,[si-0x80]
00000819  384220            cmp [bp+si+0x20],al
0000081C  42                inc dx
0000081D  0E                push cs
0000081E  44                inc sp
0000081F  024402            add al,[si+0x2]
00000822  41                inc cx
00000823  024320            add al,[bp+di+0x20]
00000826  0220              add ah,[bx+si]
00000828  08C2              or dl,al
0000082A  802842            sub byte [bx+si],0x42
0000082D  084602            or [bp+0x2],al
00000830  45                inc bp
00000831  B041              mov al,0x41
00000833  0A430E            or al,[bp+di+0xe]
00000836  44                inc sp
00000837  A00A42            mov al,[0x420a]
0000083A  20412A            and [bx+di+0x2a],al
0000083D  024820            add cl,[bx+si+0x20]
00000840  204428            and [si+0x28],al
00000843  02832020          add al,[bp+di+0x2020]
00000847  A00A43            mov al,[0x430a]
0000084A  08450E            or [di+0xe],al
0000084D  45                inc bp
0000084E  0A28              or ch,[bx+si]
00000850  41                inc cx
00000851  EA4202EA02        jmp word 0x2ea:word 0x242
00000856  42                inc dx
00000857  80A8A0422A        sub byte [bx+si+0x42a0],0x2a
0000085C  A04A02            mov al,[0x24a]
0000085F  EE                out dx,al
00000860  45                inc bp
00000861  A00A08            mov al,[0x80a]
00000864  41                inc cx
00000865  2E20A84202        and [cs:bx+si+0x242],ch
0000086A  41                inc cx
0000086B  2228              and ch,[bx+si]
0000086D  43                inc bx
0000086E  200A              and [bp+si],cl
00000870  884208            mov [bp+si+0x8],al
00000873  41                inc cx
00000874  0C45              or al,0x45
00000876  0A8002A0          or al,[bx+si-0x5ffe]
0000087A  0A804320          or al,[bx+si+0x2043]
0000087E  41                inc cx
0000087F  91                xchg ax,cx
00000880  42                inc dx
00000881  0820              or [bx+si],ah
00000883  8B80422E          mov ax,[bx+si+0x2e42]
00000887  080B              or [bp+di],cl
00000889  A0422A            mov al,[0x2a42]
0000088C  08B84108          or [bx+si+0x841],bh
00000890  0A20              or ah,[bx+si]
00000892  204202            and [bp+si+0x2],al
00000895  41                inc cx
00000896  0208              add cl,[bx+si]
00000898  43                inc bx
00000899  2002              and [bp+si],al
0000089B  43                inc bx
0000089C  084108            or [bx+di+0x8],al
0000089F  45                inc bp
000008A0  2AA80AA8          sub ch,[bx+si-0x57f6]
000008A4  0208              add cl,[bx+si]
000008A6  43                inc bx
000008A7  204128            and [bx+di+0x28],al
000008AA  43                inc bx
000008AB  2022              and [bp+si],ah
000008AD  43                inc bx
000008AE  084102            or [bx+di+0x2],al
000008B1  C0420808          rol byte [bp+si+0x8],byte 0x8
000008B5  A02020            mov al,[0x2020]
000008B8  0220              add ah,[bx+si]
000008BA  204A02            and [bp+si+0x2],cl
000008BD  43                inc bx
000008BE  084420            or [si+0x20],al
000008C1  47                inc di
000008C2  084108            or [bx+di+0x8],al
000008C5  43                inc bx
000008C6  084402            or [si+0x2],al
000008C9  47                inc di
000008CA  024108            add al,[bx+di+0x8]
000008CD  08800800          or [bx+si+0x8],al
000008D1  4D                dec bp
000008D2  A3EE33            mov [0x33ee],ax
000008D5  A838              test al,0x38
000008D7  E2A8              loop 0x881
000008D9  38FE              cmp dh,bh
000008DB  8E0A              mov cs,word [bp+si]
000008DD  03BE13AB          add di,[bp-0x54ed]
000008E1  110A              adc [bp+si],cx
000008E3  EE                out dx,al
000008E4  E8BB8A            call 0x93a2
000008E7  0E                push cs
000008E8  12A2A811          adc ah,[bp+si+0x11a8]
000008EC  A211E8            mov [0xe811],al
000008EF  E2AE              loop 0x89f
000008F1  A20AA8            mov [0xa80a],al
000008F4  1123              adc [bp+di],sp
000008F6  B8112E            mov ax,0x2e11
000008F9  8AA8A22A          mov ch,[bx+si+0x2aa2]
000008FD  A20EA2            mov [0xa20e],al
00000900  A2A3B8            mov [0xb8a3],al
00000903  AE                scasb
00000904  28AB22E2          sub [bp+di-0x1dde],ch
00000908  2A22              sub ah,[bp+si]
0000090A  0AA3A2A3          or ah,[bp+di-0x5c5e]
0000090E  AC                lodsb
0000090F  EAACCA8A8A        jmp word 0x8a8a:word 0xcaac
00000914  2AA203AB          sub ah,[bp+si-0x54fd]
00000918  A2A311            mov [0x11a3],al
0000091B  B211              mov dl,0x11
0000091D  CAEA8A            retf word 0x8aea
00000920  FA                cli
00000921  8A03              mov al,[bp+di]
00000923  E8A2A3            call 0xacc8
00000926  11A211CB          adc [bp+si-0x34ef],sp
0000092A  11A8A88A          adc [bx+si-0x7558],bp
0000092E  02AEEAA8          add ch,[bp-0x5716]
00000932  EBA3              jmp 0x8d7
00000934  A888              test al,0x88
00000936  11A8E88C          adc [bx+si-0x7318],bp
0000093A  02ABEBA8          add ch,[bp+di-0x5715]
0000093E  EE                out dx,al
0000093F  A3118B            mov [0x8b11],ax
00000942  11A8A88C          adc [bx+si-0x7358],bp
00000946  41                inc cx
00000947  EA2BA8EAA3        jmp word 0xa3ea:word 0xa82b
0000094C  11AB11A2          adc [bp+di-0x5def],bp
00000950  1132              adc [bp+si],si
00000952  41                inc cx
00000953  EA2AA8EEA3        jmp word 0xa3ee:word 0xa82a
00000958  11A8ABA2          adc [bx+si-0x5d55],bp
0000095C  A20A41            mov [0x410a],al
0000095F  113A              adc [bp+si],di
00000961  A8EA              test al,0xea
00000963  A0A2A8            mov al,[0xa8a2]
00000966  11A2A20B          adc [bp+si+0xba2],sp
0000096A  41                inc cx
0000096B  113A              adc [bp+si],di
0000096D  E8EAA3            call 0xad5a
00000970  11A8118B          adc [bx+si-0x74ef],bp
00000974  A33341            mov [0x4133],ax
00000977  3A3A              cmp bh,[bp+si]
00000979  A8EA              test al,0xea
0000097B  A311A8            mov [0xa811],ax
0000097E  118E88AF          adc [bp-0x5078],cx
00000982  41                inc cx
00000983  3A8EA8EA          cmp cl,[bp-0x1558]
00000987  831188            adc word [bx+di],0xffffffffffffff88
0000098A  118E8CAC          adc [bp-0x5374],cx
0000098E  41                inc cx
0000098F  2A8EACEA          sub cl,[bp-0x1554]
00000993  23A8A211          and bp,[bx+si+0x11a2]
00000997  020C              add cl,[si]
00000999  B341              mov bl,0x41
0000099B  2A8E88EA          sub cl,[bp-0x1578]
0000099F  801182            adc byte [bx+di],0x82
000009A2  A88F              test al,0x8f
000009A4  8CCB              mov bx,cs
000009A6  41                inc cx
000009A7  0E                push cs
000009A8  8EA0EA23          mov fs,word [bx+si+0x23ea]
000009AC  AB                stosw
000009AD  22A23A32          and ah,[bp+si+0x323a]
000009B1  CA410E            retf word 0xe41
000009B4  A288E8            mov [0xe888],al
000009B7  80A08EA888        and byte [bx+si-0x5772],0x88
000009BC  32B2410A          xor dh,[bp+si+0xa41]
000009C0  2E20EB            cs and bl,ch
000009C3  23A20223          and sp,[bp+si+0x2302]
000009C7  0A32              or dh,[bp+si]
000009C9  AC                lodsb
000009CA  41                inc cx
000009CB  088380E8          or [bp+di-0x1780],al
000009CF  03A80E8A          add bp,[bx+si-0x75f2]
000009D3  3032              xor [bp+si],dh
000009D5  AC                lodsb
000009D6  41                inc cx
000009D7  02ACFB3A          add ch,[si+0x3afb]
000009DB  A8EB              test al,0xeb
000009DD  A3EECF            mov [0xcfee],ax
000009E0  82                db 0x82
000009E1  B241              mov dl,0x41
000009E3  0A11              or dl,[bx+di]
000009E5  AE                scasb
000009E6  12BAA2BA          adc bh,[bp+si-0x455e]
000009EA  AB                stosw
000009EB  A0CB41            mov al,[0x41cb]
000009EE  3AA8BA2A          cmp ch,[bx+si+0x2aba]
000009F2  11A28AA8          adc [bp+si-0x5776],sp
000009F6  1188CB41          adc [bx+si+0x41cb],cx
000009FA  2AA2A811          sub ah,[bp+si+0x11a8]
000009FE  8B22              mov sp,[bp+si]
00000A00  8AA811A8          mov ch,[bx+si-0x57ef]
00000A04  3341E2            xor ax,[bx+di-0x1e]
00000A07  A2138A            mov [0x8a13],al
00000A0A  11A811A2          adc [bx+si-0x5def],bp
00000A0E  2F                das
00000A0F  41                inc cx
00000A10  8A8A12A8          mov cl,[bp+si-0x57ee]
00000A14  8A13              mov dl,[bp+di]
00000A16  A22F41            mov [0x412f],al
00000A19  13A22813          adc sp,[bp+si+0x1328]
00000A1D  20823341          and [bp+si+0x4133],al
00000A21  2A13              sub dl,[bp+di]
00000A23  A888              test al,0x88
00000A25  88888808          mov [bx+si+0x888],cl
00000A29  0B412A            or ax,[bx+di+0x2a]
00000A2C  2020              and [bx+si],ah
00000A2E  A2A222            mov [0x22a2],al
00000A31  2002              and [bp+si],al
00000A33  41                inc cx
00000A34  08CB              or bl,cl
00000A36  41                inc cx
00000A37  0A800846          or al,[bx+si+0x4608]
00000A3B  3211              xor dl,[bx+di]
00000A3D  41                inc cx
00000A3E  0211              add dl,[bx+di]
00000A40  BBFBA8            mov bx,0xa8fb
00000A43  AE                scasb
00000A44  FA                cli
00000A45  AB                stosw
00000A46  AB                stosw
00000A47  C2CB42            ret word 0x42cb
00000A4A  2A11              sub dl,[bx+di]
00000A4C  EB11              jmp 0xa5f
00000A4E  BA130B            mov dx,0xb13
00000A51  A34102            mov [0x241],ax
00000A54  A822              test al,0x22
00000A56  BA2ACE            mov dx,0xce2a
00000A59  A312A3            mov [0xa312],ax
00000A5C  A3410E            mov [0xe41],ax
00000A5F  A2BA11            mov [0x11ba],al
00000A62  2A82A211          sub al,[bp+si+0x11a2]
00000A66  A822              test al,0x22
00000A68  CB                retf
00000A69  41                inc cx
00000A6A  3A2A              cmp ch,[bp+si]
00000A6C  AB                stosw
00000A6D  12838E8A          adc al,[bp+di-0x7572]
00000A71  A2A2BB            mov [0xbba2],al
00000A74  41                inc cx
00000A75  28BAAB2A          sub [bp+si+0x2aab],bh
00000A79  88E8              mov al,ch
00000A7B  EA88A222CA        jmp word 0xca22:word 0xa288
00000A80  41                inc cx
00000A81  E2FA              loop 0xa7d
00000A83  A22E80            mov [0x802e],al
00000A86  EA0E881183        jmp word 0x8311:word 0x880e
00000A8B  A241E2            mov [0xe241],al
00000A8E  A22211            mov [0x1122],al
00000A91  8311A3            adc word [bx+di],0xffffffffffffffa3
00000A94  A811              test al,0x11
00000A96  23A341EA          and sp,[bp+di-0x15bf]
00000A9A  B8A2AC            mov ax,0xaca2
00000A9D  8311A3            adc word [bx+di],0xffffffffffffffa3
00000AA0  A811              test al,0x11
00000AA2  A2CB41            mov [0x41cb],al
00000AA5  0A22              or ah,[bp+si]
00000AA7  11A88311          adc [bx+si+0x1183],bp
00000AAB  E03A              loopne 0xae7
00000AAD  1122              adc [bp+si],sp
00000AAF  AB                stosw
00000AB0  41                inc cx
00000AB1  0312              add dx,[bp+si]
00000AB3  A8A3              test al,0xa3
00000AB5  11A38EEA          adc [bp+di-0x1572],sp
00000AB9  82                db 0x82
00000ABA  CB                retf
00000ABB  41                inc cx
00000ABC  22C2              and al,dl
00000ABE  11AB83AB          adc [bp+di-0x547d],bp
00000AC2  A3A0A2            mov [0xa2a0],ax
00000AC5  23A34108          and sp,[bp+di+0x841]
00000AC9  8B2A              mov bp,[bp+si]
00000ACB  11A3ABA3          adc [bp+di-0x5c55],sp
00000ACF  1283A342          adc al,[bp+di+0x42a3]
00000AD3  020A              add cl,[bp+si]
00000AD5  118311A2          adc [bp+di-0x5def],ax
00000AD9  118A22CB          adc [bp+si-0x34de],cx
00000ADD  41                inc cx
00000ADE  02A08E11          add ah,[bx+si+0x118e]
00000AE2  83118E            adc word [bx+di],0xffffffffffffff8e
00000AE5  1282EB41          adc al,[bp+si+0x41eb]
00000AE9  0E                push cs
00000AEA  D222              shl byte [bp+si],cl
00000AEC  118314A2          adc [bp+di-0x5dec],ax
00000AF0  CB                retf
00000AF1  41                inc cx
00000AF2  3AAB8B11          cmp ch,[bp+di+0x118b]
00000AF6  838A12A8A3        or word [bp+si-0x57ee],0xffffffffffffffa3
00000AFB  A241EA            mov [0xea41],al
00000AFE  AF                scasw
00000AFF  80EA23            sub dl,0x23
00000B02  BA2A12            mov dx,0x122a
00000B05  03A30311          add sp,[bp+di+0x1103]
00000B09  AF                scasw
00000B0A  E2A8              loop 0xab4
00000B0C  82                db 0x82
00000B0D  12A2A822          adc ah,[bp+si+0x22a8]
00000B11  CB                retf
00000B12  03ABFA8E          add bp,[bp+di-0x7106]
00000B16  A823              test al,0x23
00000B18  8A11              mov dl,[bx+di]
00000B1A  A28A22            mov [0x228a],al
00000B1D  AB                stosw
00000B1E  0E                push cs
00000B1F  AB                stosw
00000B20  A0FAA2            mov al,[0xa2fa]
00000B23  83BAAB1282        cmp word [bp+si+0x12ab],0xffffffffffffff82
00000B28  C80E11CF          enter word 0x110e,byte 0xcf
00000B2C  8AA20B11          mov ah,[bp+si+0x110b]
00000B30  2A2A              sub ch,[bp+si]
00000B32  1123              adc [bp+di],sp
00000B34  A20E11            mov [0x110e],al
00000B37  3A2A              cmp ch,[bp+si]
00000B39  11838A11          adc [bp+di+0x118a],ax
00000B3D  8A2A              mov ch,[bp+si]
00000B3F  83A30EA0E8        and word [bp+di-0x5ff2],0xffffffffffffffe8
00000B44  11A8A312          adc [bx+si+0x12a3],bp
00000B48  A21102            mov [0x211],al
00000B4B  CA3A83            retf word 0x833a
00000B4E  C811BA83          enter word 0xba11,byte 0x83
00000B52  8AA8A2A2          mov ch,[bx+si-0x5d5e]
00000B56  A2AB3A            mov [0x3aab],al
00000B59  A2822A            mov [0x2a82],al
00000B5C  88A2BAAB          mov [bp+si-0x5446],ah
00000B60  8A11              mov dl,[bx+di]
00000B62  22CB              and cl,bl
00000B64  3A822E3A          cmp al,[bp+si+0x3a2e]
00000B68  2A02              sub al,[bp+si]
00000B6A  118A12A3          adc [bp+si-0x5cee],cx
00000B6E  A33A20            mov [0x203a],ax
00000B71  112A              adc [bp+si],bp
00000B73  118311BA          adc [bp+di-0x45ef],ax
00000B77  1122              adc [bp+si],sp
00000B79  03A23A82          add sp,[bp+si-0x7dc6]
00000B7D  EE                out dx,al
00000B7E  EA8EA31482        jmp word 0x8214:word 0xa38e
00000B83  CB                retf
00000B84  3A20              cmp ah,[bx+si]
00000B86  EABA2A8013        jmp word 0x1380:word 0x2aba
00000B8B  2A22              sub ah,[bp+si]
00000B8D  AB                stosw
00000B8E  3880BA12          cmp [bx+si+0x12ba],al
00000B92  20BA1288          and [bp+si-0x77ee],bh
00000B96  22CB              and cl,bl
00000B98  3AC0              cmp al,al
00000B9A  3BBA1183          cmp di,[bp+si-0x7cef]
00000B9E  1388A3A2          adc cx,[bx+si-0x5d5d]
00000BA2  41                inc cx
00000BA3  083E1283          or [0x8312],bh
00000BA7  BA12A2            mov dx,0xa212
00000BAA  03A34122          add sp,[bp+di+0x2241]
00000BAE  3BAEEA23          cmp bp,[bp+0x23ea]
00000BB2  BAEAAE            mov dx,0xaeea
00000BB5  A822              test al,0x22
00000BB7  CB                retf
00000BB8  41                inc cx
00000BB9  C83E1280          enter word 0x123e,byte 0x80
00000BBD  138A22AB          adc cx,[bp+si-0x54de]
00000BC1  03A20BAE          add sp,[bp+si-0x51f5]
00000BC5  1120              adc [bx+si],sp
00000BC7  BA12A8            mov dx,0xa812
00000BCA  02C8              add cl,al
00000BCC  02A88E11          add ch,[bx+si+0x118e]
00000BD0  AE                scasb
00000BD1  83BA1323A2        cmp word [bp+si+0x2313],0xffffffffffffffa2
00000BD6  0ABA0EEA          or bh,[bp+si-0x15f2]
00000BDA  110B              adc [bp+di],cx
00000BDC  BAEA11            mov dx,0x11ea
00000BDF  2003              and [bp+di],al
00000BE1  A34111            mov [0x1141],ax
00000BE4  8A12              mov dl,[bp+si]
00000BE6  83BA128A02        cmp word [bp+si-0x75ee],0x2
00000BEB  CA410A            retf word 0xa41
00000BEE  0E                push cs
00000BEF  BA1120            mov dx,0x2011
00000BF2  13A002AB          adc sp,[bx+si-0x54fe]
00000BF6  41                inc cx
00000BF7  02BA11BA          add bh,[bp+si-0x45ef]
00000BFB  83BA128A22        cmp word [bp+si-0x75ee],0x22
00000C00  CB                retf
00000C01  03FA              add di,dx
00000C03  CB                retf
00000C04  1220              adc ah,[bx+si]
00000C06  BAABAB            mov dx,0xabab
00000C09  A823              test al,0x23
00000C0B  A30EEA            mov [0xea0e],ax
00000C0E  CE                into
00000C0F  124113            adc al,[bx+di+0x13]
00000C12  2203              and al,[bp+di]
00000C14  A20EBA            mov [0xba0e],al
00000C17  EE                out dx,al
00000C18  EA1183BEBA        jmp word 0xbabe:word 0x8311
00000C1D  118802CB          adc [bx+si-0x34fe],cx
00000C21  0311              add dx,[bx+di]
00000C23  EA11AE03BA        jmp word 0xba03:word 0xae11
00000C28  11BA2222          adc [bp+si+0x2222],di
00000C2C  AB                stosw
00000C2D  02EB              add ch,bl
00000C2F  2E11EA            cs adc dx,bp
00000C32  80BA128822        cmp byte [bp+si-0x77ee],0x22
00000C37  CB                retf
00000C38  41                inc cx
00000C39  AB                stosw
00000C3A  2A12              sub dl,[bp+si]
00000C3C  41                inc cx
00000C3D  BA1222            mov dx,0x2212
00000C40  22CB              and cl,bl
00000C42  41                inc cx
00000C43  EB3B              jmp 0xc80
00000C45  118003BA          adc [bx+si-0x45fd],ax
00000C49  1288A3A2          adc cl,[bx+si-0x5d5d]
00000C4D  41                inc cx
00000C4E  112EBA20          adc [0x20ba],bp
00000C52  03EA              add bp,dx
00000C54  12A203A3          adc ah,[bp+si-0x5cfd]
00000C58  41                inc cx
00000C59  EB3B              jmp 0xc96
00000C5B  A841              test al,0x41
00000C5D  0812              or [bp+si],dl
00000C5F  A0A822            mov al,[0x22a8]
00000C62  CB                retf
00000C63  41                inc cx
00000C64  AB                stosw
00000C65  2E204123          and [cs:bx+di+0x23],al
00000C69  EAA0FFF011        jmp word 0x11f0:word 0xffa0
00000C6E  AB                stosw
00000C6F  41                inc cx
00000C70  A888              test al,0x88
00000C72  800888            or byte [bx+si],0x88
00000C75  110F              adc [bx],cx
00000C77  FE                db 0xfe
00000C78  EE                out dx,al
00000C79  F2AB              repne stosw
00000C7B  02A02041          add ah,[bx+si+0x4120]
00000C7F  2223              and ah,[bp+di]
00000C81  A8FB              test al,0xfb
00000C83  FA                cli
00000C84  BBBB2A            mov bx,0x2abb
00000C87  0A02              or al,[bp+si]
00000C89  41                inc cx
00000C8A  08888BAB          or [bx+si-0x5475],cl
00000C8E  EE                out dx,al
00000C8F  EE                out dx,al
00000C90  EAAE8B0841        jmp word 0x4108:word 0x8bae
00000C95  2202              and al,[bp+si]
00000C97  2222              and ah,[bp+si]
00000C99  AF                scasw
00000C9A  BB11AE            mov bx,0xae11
00000C9D  AB                stosw
00000C9E  A24280            mov [0x8042],al
00000CA1  88888FEF          mov [bx+si-0x1071],cl
00000CA5  11EA              adc dx,bp
00000CA7  BA11A3            mov dx,0xa311
00000CAA  41                inc cx
00000CAB  0222              add ah,[bp+si]
00000CAD  2223              and ah,[bp+di]
00000CAF  FA                cli
00000CB0  8F                db 0x8f
00000CB1  13BAA342          adc di,[bp+si+0x42a3]
00000CB5  8888FF11          mov [bx+si+0x11ff],cl
00000CB9  8EEA              mov gs,dx
00000CBB  13834102          adc ax,[bp+di+0x241]
00000CBF  A23FBA            mov [0xba3f],al
00000CC2  118F13BA          adc [bx-0x45ed],cx
00000CC6  A34103            mov [0x341],ax
00000CC9  8F                db 0x8f
00000CCA  EABE8E8E13        jmp word 0x138e:word 0x8ebe
00000CCF  EAA241033A        jmp word 0x3a03:word 0x41a2
00000CD4  11AEA38F          adc [bp-0x705d],bp
00000CD8  1483              adc al,0x83
00000CDA  41                inc cx
00000CDB  03BA130E          add di,[bp+si+0xe13]
00000CDF  1482              adc al,0x82
00000CE1  41                inc cx
00000CE2  023A              add bh,[bp+si]
00000CE4  12A8CE14          adc ch,[bx+si+0x14ce]
00000CE8  23410E            and ax,[bx+di+0xe]
00000CEB  EA138E14A3        jmp word 0xa314:word 0x8e13
00000CF0  41                inc cx
00000CF1  3AE0              cmp ah,al
00000CF3  12A80E14          adc ch,[bx+si+0x140e]
00000CF7  A303FF            mov [0xff03],ax
00000CFA  AB                stosw
00000CFB  8E11              mov ss,word [bx+di]
00000CFD  802E14A20E        sub byte [0xa214],0xe
00000D02  12A0E802          adc ah,[bx+si+0x2e8]
00000D06  2EA31383          mov [cs:0x8313],ax
00000D0A  0E                push cs
00000D0B  11EA              adc dx,bp
00000D0D  BA8022            mov dx,0x2280
00000D10  82                db 0x82
00000D11  8B13              mov dx,[bp+di]
00000D13  A30E13            mov [0x130e],ax
00000D16  3BCA              cmp cx,dx
00000D18  2A8B1383          sub cl,[bp+di-0x7ced]
00000D1C  0E                push cs
00000D1D  12A8EABC          adc ch,[bx+si-0x4316]
00000D21  AE                scasb
00000D22  8E11              mov ss,word [bx+di]
00000D24  AE                scasb
00000D25  11A30E12          adc [bp+di+0x120e],sp
00000D29  A011AB            mov al,[0xab11]
00000D2C  EE                out dx,al
00000D2D  14A3              adc al,0xa3
00000D2F  0E                push cs
00000D30  11BA8E2A          adc [bp+si+0x2a8e],di
00000D34  118E14B3          adc [bp-0x4cec],cx
00000D38  41                inc cx
00000D39  11A83A8E          adc [bx+si-0x71c6],bp
00000D3D  118E12AB          adc [bp-0x54ee],cx
00000D41  11A20A2A          adc [bp+si+0x2a0a],sp
00000D45  11EE              adc si,bp
00000D47  8E11              mov ss,word [bx+di]
00000D49  82                db 0x82
00000D4A  BA13A3            mov dx,0xa313
00000D4D  0A2A              or ch,[bp+si]
00000D4F  12BA110E          adc bh,[bp+si+0xe11]
00000D53  14A3              adc al,0xa3
00000D55  028A1482          add cl,[bp+si-0x7dec]
00000D59  1482              adc al,0x82
00000D5B  0A8A11EA          or cl,[bp+si-0x15ef]
00000D5F  11A28E14          adc [bp+si+0x148e],sp
00000D63  82                db 0x82
00000D64  0AEA              or ch,dl
00000D66  BAAB11            mov dx,0x11ab
00000D69  080EAB13          or [0x13ab],cl
00000D6D  A30B13            mov [0x130b],ax
00000D70  A2802E            mov [0x2e80],al
00000D73  14A3              adc al,0xa3
00000D75  0E                push cs
00000D76  138002AE          adc ax,[bx+si-0x51fe]
00000D7A  132A              adc bp,[bp+si]
00000D7C  830E13412A        or word [0x4113],0x2a
00000D81  2E14A3            cs adc al,0xa3
00000D84  0E                push cs
00000D85  12A2ABC8          adc ah,[bp+si-0x3755]
00000D89  8E14              mov ss,word [si]
00000D8B  A20E11            mov [0x110e],al
00000D8E  EAAE11BE2A        jmp word 0x2abe:word 0x11ae
00000D93  1483              adc al,0x83
00000D95  0E                push cs
00000D96  14AB              adc al,0xab
00000D98  CE                into
00000D99  14A3              adc al,0xa3
00000D9B  0E                push cs
00000D9C  158E14            adc ax,0x148e
00000D9F  A30E15            mov [0x150e],ax
00000DA2  8A12              mov dl,[bp+si]
00000DA4  2A11              sub dl,[bx+di]
00000DA6  830E11BA13        or word [0xba11],0x13
00000DAB  0A12              or dl,[bp+si]
00000DAD  EA11830E14        jmp word 0x140e:word 0x8311
00000DB2  A88A              test al,0x8a
00000DB4  1483              adc al,0x83
00000DB6  0E                push cs
00000DB7  13A8118E          adc bp,[bx+si-0x71ef]
00000DBB  14A2              adc al,0xa2
00000DBD  41                inc cx
00000DBE  A0A22A            mov al,[0x2aa2]
00000DC1  2208              and cl,[bx+si]
00000DC3  0A14              or dl,[si]
00000DC5  83460E14          add word [bp+0xe],0x14
00000DC9  83410222          add word [bx+di+0x2],0x22
00000DCD  2202              and al,[bp+si]
00000DCF  41                inc cx
00000DD0  0E                push cs
00000DD1  13A20242          adc sp,[bp+si+0x4202]
00000DD5  88888841          mov [bx+si+0x4188],cl
00000DD9  0E                push cs
00000DDA  12A28882          adc ah,[bp+si-0x7d78]
00000DDE  42                inc dx
00000DDF  11A22220          adc [bp+si+0x2022],sp
00000DE3  0E                push cs
00000DE4  1322              adc sp,[bp+si]
00000DE6  0F4102            cmovno ax,[bp+si]
00000DE9  2AA88888          sub ch,[bx+si-0x7778]
00000DED  0C44              or al,0x44
00000DEF  0F4102            cmovno ax,[bp+si]
00000DF2  1322              adc sp,[bp+si]
00000DF4  03FF              add di,di
00000DF6  FE                db 0xfe
00000DF7  FB                sti
00000DF8  A80B              test al,0xb
00000DFA  41                inc cx
00000DFB  0213              add dl,[bp+di]
00000DFD  8803              mov [bp+di],al
00000DFF  13A20B41          adc sp,[bp+si+0x410b]
00000E03  3F                aas
00000E04  FFF3              push bx
00000E06  FF                db 0xff
00000E07  FFCE              dec si
00000E09  2A11              sub dl,[bx+di]
00000E0B  A880              test al,0x80
00000E0D  2341EA            and ax,[bx+di-0x16]
00000E10  118E128E          adc [bp-0x71ee],cx
00000E14  2A11              sub dl,[bx+di]
00000E16  82                db 0x82
00000E17  2023              and [bp+di],ah
00000E19  0312              add dx,[bp+si]
00000E1B  8EBA118F          mov segr7,word [bp+si-0x70ef]
00000E1F  44                inc sp
00000E20  830312            add word [bp+di],0x12
00000E23  8F                db 0x8f
00000E24  EA11BE1402        jmp word 0x214:word 0xbe11
00000E29  038A118E          add cx,[bp+si-0x71ef]
00000E2D  12EA              adc ch,dl
00000E2F  12AB1183          adc ch,[bp+di-0x7cef]
00000E33  0312              add dx,[bp+si]
00000E35  8E11              mov ss,word [bx+di]
00000E37  AB                stosw
00000E38  112A              adc [bp+si],bp
00000E3A  12BA8303          adc bh,[bp+si+0x383]
00000E3E  128E11AB          adc cl,[bp-0x54ef]
00000E42  A814              test al,0x14
00000E44  A30311            mov [0x1103],ax
00000E47  A38E11            mov [0x118e],ax
00000E4A  AE                scasb
00000E4B  A212EA            mov [0xea12],al
00000E4E  11A30311          adc [bp+di+0x1103],sp
00000E52  AE                scasb
00000E53  8E11              mov ss,word [bx+di]
00000E55  AE                scasb
00000E56  A3112A            mov [0x2a11],ax
00000E59  11A2A303          adc [bp+si+0x3a3],sp
00000E5D  128E11AE          adc cl,[bp-0x51ef]
00000E61  8311A8            adc word [bx+di],0xffffffffffffffa8
00000E64  12E3              adc ah,bl
00000E66  0312              add dx,[bp+si]
00000E68  8E11              mov ss,word [bx+di]
00000E6A  AE                scasb
00000E6B  A3A8EA            mov [0xeaa8],ax
00000E6E  3A0EA303          cmp cl,[0x3a3]
00000E72  128011AE          adc al,[bx+si-0x51ef]
00000E76  83A8EA3A0E        sub word [bx+si+0x3aea],0xe
00000E7B  A203A2            mov [0xa203],al
00000E7E  1182EAAC          adc [bp+si-0x5316],ax
00000E82  A328EA            mov [0xea28],ax
00000E85  3A8EA203          cmp cl,[bp+0x3a2]
00000E89  1282EAAE          adc al,[bp+si-0x5116]
00000E8D  8388CA3A8C        or word [bx+si+0x3aca],0xffffffffffffff8c
00000E92  A30312            mov [0x1203],ax
00000E95  82                db 0x82
00000E96  EAAC03A8E8        jmp word 0xe8a8:word 0x3ac
00000E9B  328E8303          xor cl,[bp+0x383]
00000E9F  128F112A          adc cl,[bx+0x2a11]
00000EA3  0B20              or sp,[bx+si]
00000EA5  CA3A0C            retf word 0xc3a
00000EA8  A20311            mov [0x1103],al
00000EAB  A38F11            mov [0x118f],ax
00000EAE  8AABA0E8          mov ch,[bp+di-0x1760]
00000EB2  3A0C              cmp cl,[si]
00000EB4  A30311            mov [0x1103],ax
00000EB7  8E8E118E          mov cs,word [bp-0x71ef]
00000EBB  8F                db 0x8f
00000EBC  28E8              sub al,ch
00000EBE  388E8303          cmp [bp+0x383],cl
00000EC2  A03A8E            mov al,[0x8e3a]
00000EC5  1130              adc [bx+si],si
00000EC7  0FA0              push fs
00000EC9  E23A              loop 0xf05
00000ECB  0E                push cs
00000ECC  23410C            and ax,[bx+di+0xc]
00000ECF  EA8EA8A38F        jmp word 0x8fa3:word 0xa88e
00000ED4  A0E832            mov al,[0x32e8]
00000ED7  0E                push cs
00000ED8  82                db 0x82
00000ED9  0311              add dx,[bx+di]
00000EDB  0E                push cs
00000EDC  8EA8CE8F          mov gs,word [bx+si-0x7032]
00000EE0  80E030            and al,0x30
00000EE3  8E03              mov es,word [bp+di]
00000EE5  0311              add dx,[bx+di]
00000EE7  A38EA3            mov [0xa38e],ax
00000EEA  110EC2B0          adc [0xb0c2],cx
00000EEE  8C2B              mov word [bp+di],gs
00000EF0  0B03              or ax,[bp+di]
00000EF2  120E128E          adc cl,[0x8e12]
00000EF6  128E11A2          adc cl,[bp-0x5def]
00000EFA  0312              add dx,[bp+si]
00000EFC  8E12              mov ss,word [bp+si]
00000EFE  0E                push cs
00000EFF  120E11A2          adc cl,[0xa211]
00000F03  0312              add dx,[bp+si]
00000F05  8E12              mov ss,word [bp+si]
00000F07  0E                push cs
00000F08  128E1183          adc cl,[bp-0x7cef]
00000F0C  0312              add dx,[bp+si]
00000F0E  0E                push cs
00000F0F  128E120E          adc cl,[bp+0xe12]
00000F13  11A30311          adc [bp+di+0x1103],sp
00000F17  A20E12            mov [0x120e],al
00000F1A  0E                push cs
00000F1B  120E1183          adc cl,[0x8311]
00000F1F  0312              add dx,[bp+si]
00000F21  8E11              mov ss,word [bx+di]
00000F23  A80E              test al,0xe
00000F25  128E1123          adc cl,[bp+0x2311]
00000F29  41                inc cx
00000F2A  8AA20E11          mov ah,[bp+si+0x110e]
00000F2E  8A0E1188          mov cl,[0x8811]
00000F32  0E                push cs
00000F33  A803              test al,0x3
00000F35  41                inc cx
00000F36  2208              and cl,[bx+si]
00000F38  0A82200E          or al,[bp+si+0xe20]
00000F3C  8820              mov [bx+si],ah
00000F3E  0E                push cs
00000F3F  82                db 0x82
00000F40  024B0A            add cl,[bp+di+0xa]
00000F43  41                inc cx
00000F44  0E                push cs
00000F45  17                pop ss
00000F46  A041A2            mov al,[0xa241]
00000F49  41                inc cx
00000F4A  FA                cli
00000F4B  1820              sbb [bx+si],ah
00000F4D  CA0319            retf word 0x1903
00000F50  883A              mov [bp+si],bh
00000F52  0E                push cs
00000F53  15A8A0            adc ax,0xa0a8
00000F56  A22220            mov [0x2022],al
00000F59  0E                push cs
00000F5A  0FFFEA            ud0 bp,dx
00000F5D  CB                retf
00000F5E  EBEE              jmp 0xf4e
00000F60  EE                out dx,al
00000F61  BABABE            mov dx,0xbeba
00000F64  11BE0E12          adc [bp+0x120e],di
00000F68  A311BA            mov [0xba11],ax
00000F6B  B8A811            mov ax,0x11a8
00000F6E  EA82A20E12        jmp word 0x120e:word 0xa282
00000F73  A31422            mov [0x2214],ax
00000F76  AE                scasb
00000F77  2A820E12          sub al,[bp+si+0x120e]
00000F7B  A812              test al,0x12
00000F7D  A388E2            mov [0xe288],ax
00000F80  113A              adc [bp+si],di
00000F82  A20E11            mov [0x110e],al
00000F85  A8A8              test al,0xa8
00000F87  EA110EA8EA        jmp word 0xeaa8:word 0xe11
00000F8C  A822              test al,0x22
00000F8E  82                db 0x82
00000F8F  0E                push cs
00000F90  12A8EAA8          adc ch,[bx+si-0x5716]
00000F94  E3A3              jcxz 0xf39
00000F96  1120              adc [bx+si],sp
00000F98  3AA20E13          cmp ah,[bp+si+0x130e]
00000F9C  0AA8E88E          or ch,[bx+si-0x7118]
00000FA0  A00A8A            mov al,[0x8a0a]
00000FA3  A20E13            mov [0x130e],al
00000FA6  A0E311            mov al,[0x11e3]
00000FA9  3A0EA311          cmp cl,[0x11a3]
00000FAD  A20E12            mov [0x120e],al
00000FB0  2A8E3311          sub cl,[bp+0x1133]
00000FB4  28EA              sub dl,ch
00000FB6  83A8020E12        sub word [bx+si+0xe02],0x12
00000FBB  382A              cmp [bp+si],ch
00000FBD  2211              and dl,[bx+di]
00000FBF  8311A2            adc word [bx+di],0xffffffffffffffa2
00000FC2  A38202            mov [0x282],ax
00000FC5  11AB838E          adc [bp+di-0x717d],bp
00000FC9  8A13              mov dl,[bp+di]
00000FCB  8EA28241          mov fs,word [bp+si+0x4182]
00000FCF  123A              adc bh,[bp+si]
00000FD1  A28A11            mov [0x118a],al
00000FD4  82                db 0x82
00000FD5  118E1122          adc [bp+0x2211],cx
00000FD9  0311              add dx,[bx+di]
00000FDB  AB                stosw
00000FDC  11A3A3A8          adc [bp+di-0x575d],sp
00000FE0  2811              sub [bx+di],dl
00000FE2  2311              and dx,[bx+di]
00000FE4  82                db 0x82
00000FE5  0213              add dl,[bp+di]
00000FE7  8CA3038B          mov word [bp+di-0x74fd],fs
00000FEB  A2A8EA            mov [0xeaa8],al
00000FEE  220E128A          and cl,[0x8a12]
00000FF2  2AA8EA8B          sub ch,[bx+si-0x7416]
00000FF6  AE                scasb
00000FF7  113A              adc [bp+si],di
00000FF9  82                db 0x82
00000FFA  0E                push cs
00000FFB  112A              adc [bp+si],bp
00000FFD  8A11              mov dl,[bx+di]
00000FFF  A211AE            mov [0xae11],al
00001002  123A              adc bh,[bp+si]
00001004  020EAC28          add cl,[0x28ac]
00001008  8A11              mov dl,[bx+di]
0000100A  A311AB            mov [0xab11],ax
0000100D  AE                scasb
0000100E  2A2A              sub ch,[bp+si]
00001010  82                db 0x82
00001011  0E                push cs
00001012  A8A8              test al,0xa8
00001014  8A13              mov dl,[bp+di]
00001016  AB                stosw
00001017  A22A8E            mov [0x8e2a],al
0000101A  2203              and al,[bp+di]
0000101C  A811              test al,0x11
0000101E  2A13              sub dl,[bp+di]
00001020  AE                scasb
00001021  A22A8E            mov [0x8e2a],al
00001024  82                db 0x82
00001025  0E                push cs
00001026  128A112A          adc cl,[bp+si+0x2a11]
0000102A  11BA112A          adc [bp+si+0x2a11],di
0000102E  3A02              cmp al,[bp+si]
00001030  0E                push cs
00001031  11A2122A          adc [bp+si+0x2a12],sp
00001035  AF                scasw
00001036  FA                cli
00001037  AE                scasb
00001038  2AA8820E          sub ch,[bx+si+0xe82]
0000103C  11AE2A11          adc [bp+0x112a],bp
00001040  2EBA128A          cs mov dx,0x8a12
00001044  A20203            mov [0x302],al
00001047  122A              adc ch,[bp+si]
00001049  AB                stosw
0000104A  FB                sti
0000104B  EA11AE8AA8        jmp word 0xa88a:word 0xae11
00001050  0203              add al,[bp+di]
00001052  A811              test al,0x11
00001054  8A13              mov dl,[bp+di]
00001056  82                db 0x82
00001057  8A0A              mov cl,[bp+si]
00001059  2202              and al,[bp+si]
0000105B  0E                push cs
0000105C  A82B              test al,0x2b
0000105E  8AAB8A8A          mov ch,[bp+di-0x7576]
00001062  88BA8A88          mov [bp+si-0x7776],bh
00001066  020EB8AB          add cl,[0xabb8]
0000106A  8AAE0AEE          mov ch,[bp-0x11f6]
0000106E  2AE2              sub ah,dl
00001070  0222              add ah,[bp+si]
00001072  020EA8BA          add cl,[0xbaa8]
00001076  82                db 0x82
00001077  A88B              test al,0x8b
00001079  A2A811            mov [0x11a8],al
0000107C  800802            or byte [bx+si],0x2
0000107F  0E                push cs
00001080  B811A2            mov ax,0xa211
00001083  3A03              cmp al,[bp+di]
00001085  88BAA220          mov [bp+si+0x20a2],bh
00001089  2202              and al,[bp+si]
0000108B  0E                push cs
0000108C  A8BA              test al,0xba
0000108E  82                db 0x82
0000108F  3A88A0CA          cmp cl,[bx+si-0x3560]
00001093  02884102          add cl,[bx+si+0x241]
00001097  0E                push cs
00001098  AC                lodsb
00001099  AB                stosw
0000109A  2811              sub [bx+di],dl
0000109C  0A28              or ch,[bx+si]
0000109E  E202              loop 0x10a2
000010A0  8822              mov [bp+si],ah
000010A2  020EA82B          add cl,[0x2ba8]
000010A6  88E8              mov al,ch
000010A8  82                db 0x82
000010A9  82                db 0x82
000010AA  CA8A20            retf word 0x208a
000010AD  80020E            add byte [bp+si],0xe
000010B0  B80A08            mov ax,0x80a
000010B3  EA088AA8A2        jmp word 0xa2a8:word 0x8a08
000010B8  2802              sub [bp+si],al
000010BA  020EEA08          add cl,[0x8ea]
000010BE  8EA8A308          mov gs,word [bx+si+0x8a3]
000010C2  82                db 0x82
000010C3  8808              mov [bx+si],cl
000010C5  80020E            add byte [bp+si],0xe
000010C8  11A22222          adc [bp+si+0x2222],sp
000010CC  0202              add al,[bp+si]
000010CE  2220              and ah,[bx+si]
000010D0  224102            and al,[bx+di+0x2]
000010D3  0E                push cs
000010D4  08880A82          or [bx+si-0x7df6],cl
000010D8  2002              and [bp+si],al
000010DA  0808              or [bx+si],cl
000010DC  42                inc dx
000010DD  0200              add al,[bx+si]
000010DF  1DABE2            sbb ax,0xe2ab
000010E2  BB11BA            mov bx,0xba11
000010E5  EAA2BAFEAE        jmp word 0xaefe:word 0xbaa2
000010EA  A0ABBE            mov al,[0xbeab]
000010ED  13AB1108          adc bp,[bp+di+0x811]
000010F1  EE                out dx,al
000010F2  E8BBA0            call 0xb1b0
000010F5  AC                lodsb
000010F6  12A2A811          adc ah,[bp+si+0x11a8]
000010FA  A2A8E8            mov [0xe8a8],al
000010FD  E02E              loopne 0x112d
000010FF  A011A8            mov al,[0xa811]
00001102  2A20              sub ah,[bx+si]
00001104  380A              cmp [bp+si],cl
00001106  0E                push cs
00001107  8AA8A00A          mov ch,[bx+si+0xaa0]
0000110B  A0A020            mov al,[0x20a0]
0000110E  224138            and al,[bx+di+0x38]
00001111  0E                push cs
00001112  0883A0E2          or [bp+di-0x1d60],al
00001116  2220              and ah,[bx+si]
00001118  A02022            mov al,[0x2220]
0000111B  200C              and [si],cl
0000111D  0A0C              or cl,[si]
0000111F  C28082            ret word 0x8280
00001122  28A0A880          sub [bx+si-0x7f58],ah
00001126  20A04130          and [bx+si+0x3041],ah
0000112A  08C0              or al,al
0000112C  41                inc cx
0000112D  82                db 0x82
0000112E  3080A8E0          xor [bx+si-0x1f58],al
00001132  20A04120          and [bx+si+0x2041],ah
00001136  41                inc cx
00001137  C00208            rol byte [bp+si],byte 0x8
0000113A  2080A80C          and [bx+si+0xca8],al
0000113E  2028              and [bx+si],ch
00001140  0320              add sp,[bx+si]
00001142  41                inc cx
00001143  800208            add byte [bp+si],0x8
00001146  C080A82803        rol byte [bx+si+0x28a8],byte 0x3
0000114B  080E8041          or [0x4180],cl
0000114F  802008            and byte [bx+si],0x8
00001152  88801122          mov [bx+si+0x2211],al
00001156  2308              and cx,[bx+si]
00001158  024120            add al,[bx+di+0x20]
0000115B  802202            and byte [bp+si],0x2
0000115E  2A4111            sub al,[bx+di+0x11]
00001161  0222              add ah,[bp+si]
00001163  42                inc dx
00001164  204203            and [bp+si+0x3],al
00001167  0202              add al,[bp+si]
00001169  41                inc cx
0000116A  1102              adc [bp+si],ax
0000116C  024220            add al,[bp+si+0x20]
0000116F  42                inc dx
00001170  024122            add al,[bx+di+0x22]
00001173  41                inc cx
00001174  114102            adc [bx+di+0x2],ax
00001177  41                inc cx
00001178  204120            and [bx+di+0x20],al
0000117B  2020              and [bx+si],ah
0000117D  43                inc bx
0000117E  11804380          adc [bx+si-0x7fbd],ax
00001182  41                inc cx
00001183  80420841          add byte [bp+si+0x8],0x41
00001187  11804420          adc [bx+si+0x2044],ax
0000118B  0808              or [bx+si],cl
0000118D  41                inc cx
0000118E  80411180          add byte [bx+di+0x11],0x80
00001192  42                inc dx
00001193  0820              or [bx+si],ah
00001195  41                inc cx
00001196  2020              and [bx+si],ah
00001198  024130            add al,[bx+di+0x30]
0000119B  11804208          adc [bx+si+0x842],ax
0000119F  42                inc dx
000011A0  802003            and byte [bx+si],0x3
000011A3  41                inc cx
000011A4  C811A043          enter word 0xa011,byte 0x43
000011A8  204120            and [bx+di+0x20],al
000011AB  41                inc cx
000011AC  024102            add al,[bx+di+0x2]
000011AF  11A04380          adc [bx+si-0x7fbd],sp
000011B3  41                inc cx
000011B4  800880            or byte [bx+si],0x80
000011B7  41                inc cx
000011B8  3011              xor [bx+di],dl
000011BA  A04203            mov al,[0x342]
000011BD  2002              and [bp+si],al
000011BF  41                inc cx
000011C0  230A              and cx,[bp+si]
000011C2  41                inc cx
000011C3  2011              and [bx+di],dl
000011C5  A04208            mov al,[0x842]
000011C8  41                inc cx
000011C9  28418A            sub [bx+di-0x76],al
000011CC  42                inc dx
000011CD  AC                lodsb
000011CE  11A8A038          adc [bx+si+0x38a0],bp
000011D2  3AA82BA0          cmp ch,[bx+si-0x5fd5]
000011D6  2E41              cs inc cx
000011D8  82                db 0x82
000011D9  8013AE            adc byte [bp+di],0xae
000011DC  12BAA2BA          adc bh,[bp+si-0x455e]
000011E0  A3A008            mov [0x8a0],ax
000011E3  11BAA8BA          adc [bp+si-0x4558],di
000011E7  2A11              sub dl,[bx+di]
000011E9  A08008            mov al,[0x880]
000011EC  41                inc cx
000011ED  884112            mov [bx+di+0x12],al
000011F0  A00802            mov al,[0x208]
000011F3  8B20              mov sp,[bx+si]
000011F5  800841            or byte [bx+si],0x41
000011F8  204111            and [bx+di+0x11],al
000011FB  E2A0              loop 0x119d
000011FD  42                inc dx
000011FE  0A808008          or al,[bx+si+0x880]
00001202  43                inc bx
00001203  11808042          adc [bx+si+0x4280],ax
00001207  08804108          or [bx+si+0x841],al
0000120B  42                inc dx
0000120C  2011              and [bx+di],dl
0000120E  41                inc cx
0000120F  80420842          add byte [bp+si+0x8],0x42
00001213  084311            or [bp+di+0x11],al
00001216  80460843          add byte [bp+0x8],0x43
0000121A  11804A11          adc [bx+si+0x114a],ax
0000121E  A04A11            mov al,[0x114a]
00001221  A842              test al,0x42
00001223  38A8AEFA          cmp [bx+si-0x552],ch
00001227  AB                stosw
00001228  A34108            mov [0x841],ax
0000122B  138AEB11          adc cx,[bp+si+0x11eb]
0000122F  BA1342            mov dx,0x4213
00001232  12A822B2          adc ch,[bx+si-0x4dde]
00001236  0AC2              or al,dl
00001238  A3112A            mov [0x2a11],ax
0000123B  42                inc dx
0000123C  11AEA032          adc [bp+0x32a0],bp
00001240  A20280            mov [0x8002],al
00001243  A211A8            mov [0xa811],al
00001246  41                inc cx
00001247  0811              or [bx+di],dl
00001249  BA202B            mov dx,0x2b20
0000124C  A00A80            mov al,[0x800a]
0000124F  8E8AA080          mov cs,word [bp+si-0x7f60]
00001253  B811A8            mov ax,0xa811
00001256  320B              xor cl,[bp+di]
00001258  2088C80A          and [bx+si+0xac8],cl
0000125C  8820              mov [bx+si],ah
0000125E  0208              add cl,[bx+si]
00001260  1120              adc [bx+si],sp
00001262  3AA24180          cmp ah,[bp+si-0x7fbf]
00001266  CA4188            retf word 0x8841
00001269  41                inc cx
0000126A  80411120          add byte [bx+di+0x11],0x20
0000126E  2222              and ah,[bp+si]
00001270  02808841          add al,[bx+si+0x4188]
00001274  0802              or [bp+si],al
00001276  42                inc dx
00001277  1102              adc [bp+si],ax
00001279  B8410C            mov ax,0xc41
0000127C  8080410802        add byte [bx+si+0x841],0x2
00001281  024111            add al,[bx+di+0x11]
00001284  82                db 0x82
00001285  224108            and al,[bx+di+0x8]
00001288  8080C04102        add byte [bx+si+0x41c0],0x2
0000128D  02801183          add al,[bx+si-0x7cef]
00001291  224108            and al,[bx+di+0x8]
00001294  8002A0            add byte [bp+si],0xa0
00001297  02E0              add ah,al
00001299  0208              add cl,[bx+si]
0000129B  11824280          adc [bp+si-0x7fbe],ax
0000129F  800380            add byte [bp+di],0x80
000012A2  41                inc cx
000012A3  A04211            mov al,[0x1142]
000012A6  A08842            mov al,[0x4288]
000012A9  800341            add byte [bp+di],0x41
000012AC  0AA84120          or ch,[bx+si+0x2041]
000012B0  11A80241          adc [bx+si+0x4102],bp
000012B4  80410241          add byte [bx+di+0x2],0x41
000012B8  0A884108          or cl,[bx+si+0x841]
000012BC  11A8A080          adc [bx+si-0x7f60],bp
000012C0  80428002          add byte [bp+si-0x80],0x2
000012C4  2041E0            and [bx+di-0x20],al
000012C7  11A23A20          adc [bp+si+0x203a],sp
000012CB  A28008            mov [0x880],al
000012CE  45                inc bp
000012CF  11B8FB88          adc [bx+si-0x7705],di
000012D3  02800A80          add al,[bx+si-0x7ff6]
000012D7  42                inc dx
000012D8  204111            and [bx+di+0x11],al
000012DB  E0EF              loopne 0x12cc
000012DD  800841            or byte [bx+si],0x41
000012E0  3A45A8            cmp al,[di-0x58]
000012E3  A0A002            mov al,[0x2a0]
000012E6  28412A            sub [bx+di+0x2a],al
000012E9  8820              mov [bx+si],ah
000012EB  41                inc cx
000012EC  2041A8            and [bx+di-0x58],al
000012EF  41                inc cx
000012F0  02822841          add al,[bp+si+0x4128]
000012F4  0A802041          or al,[bx+si+0x4120]
000012F8  2041A0            and [bx+di-0x60],al
000012FB  41                inc cx
000012FC  20FA              and dl,bh
000012FE  A0413A            mov al,[0x3a41]
00001301  0341A0            add ax,[bx+di-0x60]
00001304  42                inc dx
00001305  A2020F            mov [0xf02],al
00001308  80A0412802        and byte [bx+si+0x2841],0x2
0000130D  41                inc cx
0000130E  A02041            mov al,[0x4120]
00001311  AE                scasb
00001312  0A3A              or bh,[bp+si]
00001314  2028              and [bx+si],ch
00001316  41                inc cx
00001317  084180            or [bx+di-0x80],al
0000131A  43                inc bx
0000131B  AC                lodsb
0000131C  41                inc cx
0000131D  E82008            call 0x1b40
00001320  41                inc cx
00001321  0880A00A          or [bx+si+0xaa0],al
00001325  42                inc dx
00001326  8841C8            mov [bx+di-0x38],al
00001329  2008              and [bx+si],cl
0000132B  41                inc cx
0000132C  0A41A0            or al,[bx+di-0x60]
0000132F  43                inc bx
00001330  8822              mov [bp+si],ah
00001332  82                db 0x82
00001333  22884132          and cl,[bx+si+0x3241]
00001337  41                inc cx
00001338  800220            add byte [bp+si],0x20
0000133B  41                inc cx
0000133C  800202            add byte [bp+si],0x2
0000133F  41                inc cx
00001340  084122            or [bx+di+0x22],al
00001343  42                inc dx
00001344  2020              and [bx+si],ah
00001346  41                inc cx
00001347  B82002            mov ax,0x220
0000134A  43                inc bx
0000134B  02410A            add al,[bx+di+0xa]
0000134E  0242B8            add al,[bp+si-0x48]
00001351  42                inc dx
00001352  02804108          add al,[bx+si+0x841]
00001356  41                inc cx
00001357  0A4388            or al,[bp+di-0x78]
0000135A  204102            and [bx+di+0x2],al
0000135D  42                inc dx
0000135E  080A              or [bp+si],cl
00001360  024120            add al,[bx+di+0x20]
00001363  41                inc cx
00001364  80410244          add byte [bx+di+0x2],0x44
00001368  0A20              or ah,[bx+si]
0000136A  43                inc bx
0000136B  82                db 0x82
0000136C  42                inc dx
0000136D  0A28              or ch,[bx+si]
0000136F  42                inc dx
00001370  204480            and [si-0x80],al
00001373  42                inc dx
00001374  0228              add ch,[bx+si]
00001376  80412044          add byte [bx+di+0x20],0x44
0000137A  1102              adc [bp+si],ax
0000137C  43                inc bx
0000137D  20420C            and [bp+si+0xc],al
00001380  41                inc cx
00001381  204111            and [bx+di+0x11],al
00001384  42                inc dx
00001385  204202            and [bp+si+0x2],al
00001388  200A              and [bp+si],cl
0000138A  0242A8            add al,[bp+si-0x58]
0000138D  024120            add al,[bx+di+0x20]
00001390  41                inc cx
00001391  2002              and [bp+si],al
00001393  0A08              or cl,[bx+si]
00001395  284211            sub [bp+si+0x11],al
00001398  43                inc bx
00001399  024208            add al,[bp+si+0x8]
0000139C  41                inc cx
0000139D  0220              add ah,[bx+si]
0000139F  41                inc cx
000013A0  A830              test al,0x30
000013A2  42                inc dx
000013A3  0208              add cl,[bx+si]
000013A5  0245A0            add al,[di-0x60]
000013A8  A0410A            mov al,[0xa41]
000013AB  084102            or [bx+di+0x2],al
000013AE  42                inc dx
000013AF  084211            or [bp+si+0x11],al
000013B2  08410A            or [bx+di+0xa],al
000013B5  0A20              or ah,[bx+si]
000013B7  0208              add cl,[bx+si]
000013B9  A04311            mov al,[0x1143]
000013BC  A04208            mov al,[0x842]
000013BF  8042A002          add byte [bp+si-0x60],0x2
000013C3  2041A8            and [bx+di-0x58],al
000013C6  42                inc dx
000013C7  2002              and [bp+si],al
000013C9  204203            and [bp+si+0x3],al
000013CC  0820              or [bx+si],ah
000013CE  41                inc cx
000013CF  A0E242            mov al,[0x42e2]
000013D2  204402            and [si+0x2],al
000013D5  42                inc dx
000013D6  A08A42            mov al,[0x428a]
000013D9  20804102          and [bx+si+0x241],al
000013DD  41                inc cx
000013DE  0842A8            or [bp+si-0x58],al
000013E1  084108            or [bx+di+0x8],al
000013E4  44                inc sp
000013E5  3002              xor [bp+si],al
000013E7  2041A8            and [bx+di-0x58],al
000013EA  43                inc bx
000013EB  024220            add al,[bp+si+0x20]
000013EE  41                inc cx
000013EF  8820              mov [bx+si],ah
000013F1  41                inc cx
000013F2  114282            adc [bp+si-0x7e],ax
000013F5  024102            add al,[bx+di+0x2]
000013F8  42                inc dx
000013F9  0220              add ah,[bx+si]
000013FB  41                inc cx
000013FC  1108              adc [bx+si],cx
000013FE  41                inc cx
000013FF  204322            and [bp+di+0x22],al
00001402  44                inc sp
00001403  1102              adc [bp+si],ax
00001405  0202              add al,[bp+si]
00001407  43                inc bx
00001408  024411            add al,[si+0x11]
0000140B  42                inc dx
0000140C  284108            sub [bx+di+0x8],al
0000140F  0A08              or cl,[bx+si]
00001411  44                inc sp
00001412  1108              adc [bx+si],cx
00001414  41                inc cx
00001415  204120            and [bx+di+0x20],al
00001418  0A4511            or al,[di+0x11]
0000141B  28808041          sub [bx+si+0x4180],al
0000141F  084302            or [bp+di+0x2],al
00001422  42                inc dx
00001423  A8A0              test al,0xa0
00001425  204120            and [bx+di+0x20],al
00001428  2041F0            and [bx+di-0x10],al
0000142B  41                inc cx
0000142C  088841A2          or [bx+si-0x5dbf],cl
00001430  42                inc dx
00001431  0808              or [bx+si],cl
00001433  8823              mov [bp+di],ah
00001435  42                inc dx
00001436  0202              add al,[bp+si]
00001438  80A0412241        and byte [bx+si+0x2241],0x41
0000143D  2041AF            and [bx+di-0x51],al
00001440  42                inc dx
00001441  0E                push cs
00001442  41                inc cx
00001443  2011              and [bx+di],dl
00001445  A880              test al,0x80
00001447  41                inc cx
00001448  80410C41          add byte [bx+di+0xc],0x41
0000144C  0838              or [bx+si],bh
0000144E  2020              and [bx+si],ah
00001450  11A82022          adc [bx+si+0x2220],bp
00001454  03C2              add ax,dx
00001456  80420830          add byte [bp+si+0x8],0x30
0000145A  2011              and [bx+di],dl
0000145C  A841              test al,0x41
0000145E  08F3              or bl,dh
00001460  8080024120        add byte [bx+si+0x4102],0x20
00001465  088011A8          or [bx+si-0x57ef],al
00001469  80413080          add byte [bx+di+0x30],0x80
0000146D  41                inc cx
0000146E  0820              or [bx+si],ah
00001470  2038              and [bx+si],bh
00001472  2011              and [bx+di],dl
00001474  A842              test al,0x42
00001476  3C42              cmp al,0x42
00001478  2842E0            sub [bp+si-0x20],al
0000147B  41                inc cx
0000147C  11A84120          adc [bx+si+0x2041],bp
00001480  0C42              or al,0x42
00001482  204180            and [bx+di-0x80],al
00001485  A04111            mov al,[0x1141]
00001488  A808              test al,0x8
0000148A  280A              sub [bp+si],cl
0000148C  42                inc dx
0000148D  204180            and [bx+di-0x80],al
00001490  204111            and [bx+di+0x11],al
00001493  A841              test al,0x41
00001495  2002              and [bp+si],al
00001497  42                inc dx
00001498  0808              or [bx+si],cl
0000149A  0808              or [bx+si],cl
0000149C  41                inc cx
0000149D  11A042A0          adc [bx+si-0x5fbe],sp
000014A1  22804208          and al,[bx+si+0x842]
000014A5  42                inc dx
000014A6  11824328          adc [bp+si+0x2843],ax
000014AA  46                inc si
000014AB  A843              test al,0x43
000014AD  0A800280          or al,[bx+si-0x7ffe]
000014B1  41                inc cx
000014B2  82                db 0x82
000014B3  0241A0            add al,[bx+di-0x60]
000014B6  43                inc bx
000014B7  284122            sub [bx+di+0x22],al
000014BA  8044A044          add byte [si-0x60],0x44
000014BE  02804320          add al,[bx+si+0x2043]
000014C2  41                inc cx
000014C3  A02002            mov al,[0x220]
000014C6  42                inc dx
000014C7  0820              or [bx+si],ah
000014C9  42                inc dx
000014CA  208041A0          and [bx+si-0x5fbf],al
000014CE  41                inc cx
000014CF  204280            and [bp+si-0x80],al
000014D2  A24120            mov [0x2041],al
000014D5  0E                push cs
000014D6  8041A080          add byte [bx+di-0x60],0x80
000014DA  42                inc dx
000014DB  08A82042          or [bx+si+0x4220],ch
000014DF  0A42A0            or al,[bp+si-0x60]
000014E2  80432A41          add byte [bp+di+0x2a],0x41
000014E6  024122            add al,[bx+di+0x22]
000014E9  41                inc cx
000014EA  30A00280          xor [bx+si-0x7ffe],ah
000014EE  42                inc dx
000014EF  284303            sub [bp+di+0x3],al
000014F2  8020A0            and byte [bx+si],0xa0
000014F5  41                inc cx
000014F6  80420241          add byte [bp+si+0x2],0x41
000014FA  024280            add al,[bp+si-0x80]
000014FD  20A04408          and [bx+si+0x844],ah
00001501  42                inc dx
00001502  2008              and [bx+si],cl
00001504  0241A0            add al,[bx+di-0x60]
00001507  42                inc dx
00001508  20802882          and [bx+si-0x7dd8],al
0000150C  41                inc cx
0000150D  2008              and [bx+si],cl
0000150F  42                inc dx
00001510  A00242            mov al,[0x4202]
00001513  0802              or [bp+si],al
00001515  82                db 0x82
00001516  8044A041          add byte [si-0x60],0x41
0000151A  08804108          or [bx+si+0x841],al
0000151E  024202            add al,[bp+si+0x2]
00001521  41                inc cx
00001522  20A04108          and [bx+si+0x841],ah
00001526  2002              and [bp+si],al
00001528  804520A0          add byte [di+0x20],0xa0
0000152C  084108            or [bx+di+0x8],al
0000152F  800220            add byte [bp+si],0x20
00001532  41                inc cx
00001533  804280A0          add byte [bp+si-0x80],0xa0
00001537  44                inc sp
00001538  0820              or [bx+si],ah
0000153A  41                inc cx
0000153B  2042A0            and [bp+si-0x60],al
0000153E  AC                lodsb
0000153F  41                inc cx
00001540  80412808          add byte [bx+di+0x28],0x8
00001544  80428002          add byte [bp+si-0x80],0x2
00001548  80AC412041        sub byte [si+0x2041],0x41
0000154D  02822043          add al,[bp+si+0x4320]
00001551  0280A041          add al,[bx+si+0x41a0]
00001555  0242A8            add al,[bp+si-0x58]
00001558  42                inc dx
00001559  0842A0            or [bp+si-0x60],al
0000155C  AC                lodsb
0000155D  8042200A          add byte [bp+si+0x20],0xa
00001561  80432220          add byte [bp+di+0x22],0x20
00001565  A04302            mov al,[0x243]
00001568  08804480          or [bx+si-0x7fbc],al
0000156C  A08243            mov al,[0x4382]
0000156F  024302            add al,[bp+di+0x2]
00001572  41                inc cx
00001573  80A0084108        and byte [bx+si+0x4108],0x8
00001578  20888043          and [bx+si+0x4380],cl
0000157C  0280A041          add al,[bx+si+0x41a0]
00001580  0A02              or al,[bp+si]
00001582  8822              mov [bp+si],ah
00001584  80418008          add byte [bx+di-0x80],0x8
00001588  41                inc cx
00001589  20A84120          and [bx+si+0x2041],ch
0000158D  2A22              sub ah,[bp+si]
0000158F  084220            or [bp+si+0x20],al
00001592  0A4180            or al,[bx+di-0x80]
00001595  114720            adc [bx+0x20],ax
00001598  41                inc cx
00001599  028011A8          add al,[bx+si-0x57ef]
0000159D  0222              add ah,[bp+si]
0000159F  024711            add al,[bx+0x11]
000015A2  A842              test al,0x42
000015A4  084680            or [bp-0x80],al
000015A7  1208              adc cl,[bx+si]
000015A9  41                inc cx
000015AA  2020              and [bx+si],ah
000015AC  44                inc sp
000015AD  024111            add al,[bx+di+0x11]
000015B0  A841              test al,0x41
000015B2  8080884612        add byte [bx+si+0x4688],0x12
000015B7  43                inc bx
000015B8  024611            add al,[bp+0x11]
000015BB  A8A8              test al,0xa8
000015BD  8A11              mov dl,[bx+di]
000015BF  884508            mov [di+0x8],al
000015C2  11804920          adc [bx+si+0x2049],ax
000015C6  112A              adc [bp+si],bp
000015C8  02800AA8          add al,[bx+si-0x57f6]
000015CC  45                inc bp
000015CD  20A8A841          and [bx+si+0x41a8],ch
000015D1  8041A080          add byte [bx+di-0x60],0x80
000015D5  44                inc sp
000015D6  80A8800880        sub byte [bx+si+0x880],0x80
000015DB  2002              and [bp+si],al
000015DD  80412A28          add byte [bx+di+0x2a],0x28
000015E1  2A41A8            sub al,[bx+di-0x58]
000015E4  42                inc dx
000015E5  02880A42          add cl,[bx+si+0x420a]
000015E9  08410A            or [bx+di+0xa],al
000015EC  80A8418002        sub byte [bx+si-0x7fbf],0x2
000015F1  41                inc cx
000015F2  084402            or [si+0x2],al
000015F5  80A8418042        sub byte [bx+si-0x7fbf],0x42
000015FA  0845A0            or [di-0x60],al
000015FD  A880              test al,0x80
000015FF  42                inc dx
00001600  024220            add al,[bp+si+0x20]
00001603  43                inc bx
00001604  80A8A04202        sub byte [bx+si+0x42a0],0x2
00001609  44                inc sp
0000160A  224180            and al,[bx+di-0x80]
0000160D  A880              test al,0x80
0000160F  42                inc dx
00001610  2020              and [bx+si],ah
00001612  43                inc bx
00001613  A04120            mov al,[0x2041]
00001616  A843              test al,0x43
00001618  2020              and [bx+si],ah
0000161A  204420            and [si+0x20],al
0000161D  A843              test al,0x43
0000161F  024220            add al,[bp+si+0x20]
00001622  024220            add al,[bp+si+0x20]
00001625  A841              test al,0x41
00001627  0A4320            or al,[bp+di+0x20]
0000162A  41                inc cx
0000162B  0A08              or cl,[bx+si]
0000162D  41                inc cx
0000162E  20A8410A          and [bx+si+0xa41],ch
00001632  43                inc bx
00001633  80080A            or byte [bx+si],0xa
00001636  0A4120            or al,[bx+di+0x20]
00001639  A880              test al,0x80
0000163B  41                inc cx
0000163C  0208              add cl,[bx+si]
0000163E  42                inc dx
0000163F  084380            or [bp+di-0x80],al
00001642  A880              test al,0x80
00001644  42                inc dx
00001645  0846A0            or [bp-0x60],al
00001648  A808              test al,0x8
0000164A  44                inc sp
0000164B  284420            sub [si+0x20],al
0000164E  A845              test al,0x45
00001650  800842            or byte [bx+si],0x42
00001653  8041A842          add byte [bx+di-0x58],0x42
00001657  802042            and byte [bx+si],0x42
0000165A  2022              and [bp+si],ah
0000165C  42                inc dx
0000165D  2011              and [bx+di],dl
0000165F  42                inc dx
00001660  80432028          add byte [bp+di+0x20],0x28
00001664  024180            add al,[bx+di-0x80]
00001667  A843              test al,0x43
00001669  80458241          add byte [di-0x7e],0x41
0000166D  A846              test al,0x46
0000166F  02808020          add al,[bx+si+0x2080]
00001673  41                inc cx
00001674  A80A              test al,0xa
00001676  42                inc dx
00001677  08808080          or [bx+si-0x7f80],al
0000167B  8A828041          mov al,[bp+si+0x4180]
0000167F  A80A              test al,0xa
00001681  41                inc cx
00001682  0220              add ah,[bx+si]
00001684  80418002          add byte [bx+di-0x80],0x2
00001688  0202              add al,[bp+si]
0000168A  20A84108          and [bx+si+0x841],ch
0000168E  41                inc cx
0000168F  A02841            mov al,[0x4128]
00001692  024182            add al,[bx+di-0x7e]
00001695  2041A8            and [bx+di-0x58],al
00001698  084220            or [bp+si+0x20],al
0000169B  A08042            mov al,[0x4280]
0000169E  0208              add cl,[bx+si]
000016A0  20A80843          and [bx+si+0x4308],ch
000016A4  884108            mov [bx+di+0x8],al
000016A7  024108            add al,[bx+di+0x8]
000016AA  80A8440842        sub byte [bx+si+0x844],0x42
000016AF  8A802220          mov al,[bx+si+0x2022]
000016B3  1143A0            adc [bp+di-0x60],ax
000016B6  0A410A            or al,[bx+di+0xa]
000016B9  884128            mov [bx+di+0x28],al
000016BC  41                inc cx
000016BD  1180410A          adc [bx+si+0xa41],ax
000016C1  82                db 0x82
000016C2  204188            and [bx+di-0x78],al
000016C5  204182            and [bx+di-0x7e],al
000016C8  41                inc cx
000016C9  11A84908          adc [bx+si+0x849],bp
000016CD  11A2A828          adc [bp+si+0x28a8],sp
000016D1  282A              sub [bp+si],ch
000016D3  82                db 0x82
000016D4  12A041A0          adc ah,[bx+si-0x5fbf]
000016D8  110A              adc [bp+si],cx
000016DA  80420A41          add byte [bp+si+0xa],0x41
000016DE  0A20              or ah,[bx+si]
000016E0  A841              test al,0x41
000016E2  08A8A802          or [bx+si+0x2a8],ch
000016E6  02804380          add al,[bx+si-0x7fbd]
000016EA  42                inc dx
000016EB  08A08A80          or [bx+si-0x7f76],ah
000016EF  2A02              sub al,[bp+si]
000016F1  A2820A            mov [0xa82],al
000016F4  44                inc sp
000016F5  A0412A            mov al,[0x2a41]
000016F8  C82BE2EE          enter word 0xe22b,byte 0xee
000016FC  BABABE            mov dx,0xbeba
000016FF  1180A0A8          adc [bx+si-0x5760],ax
00001703  43                inc bx
00001704  3A3A              cmp bh,[bp+si]
00001706  12EA              adc ch,dl
00001708  8041A280          add byte [bx+di-0x5e],0x80
0000170C  42                inc dx
0000170D  0808              or [bx+si],cl
0000170F  42                inc dx
00001710  20AE8241          and [bp+0x4182],ch
00001714  A00280            mov al,[0x8002]
00001717  41                inc cx
00001718  A04320            mov al,[0x2043]
0000171B  0A02              or al,[bp+si]
0000171D  20A20280          and [bp+si-0x7ffe],ah
00001721  41                inc cx
00001722  20440A            and [si+0xa],al
00001725  42                inc dx
00001726  A24102            mov [0x241],al
00001729  42                inc dx
0000172A  204220            and [bp+si+0x20],al
0000172D  42                inc dx
0000172E  20A24520          and [bp+si+0x2045],ah
00001732  41                inc cx
00001733  2008              and [bx+si],cl
00001735  0820              or [bx+si],ah
00001737  A24520            mov [0x2045],al
0000173A  43                inc bx
0000173B  2841A0            sub [bx+di-0x60],al
0000173E  41                inc cx
0000173F  82                db 0x82
00001740  43                inc bx
00001741  800820            or byte [bx+si],0x20
00001744  43                inc bx
00001745  A04182            mov al,[0x8241]
00001748  41                inc cx
00001749  084180            or [bx+di-0x80],al
0000174C  41                inc cx
0000174D  82                db 0x82
0000174E  0242A8            add al,[bp+si-0x58]
00001751  41                inc cx
00001752  038042A0          add ax,[bx+si-0x5fbe]
00001756  08804311          or [bx+si+0x1143],al
0000175A  41                inc cx
0000175B  024282            add al,[bp+si-0x7e]
0000175E  A843              test al,0x43
00001760  8041A841          add byte [bx+di-0x58],0x41
00001764  234280            and ax,[bp+si-0x80]
00001767  A02080            mov al,[0x8020]
0000176A  43                inc bx
0000176B  A841              test al,0x41
0000176D  02458E            add al,[di-0x72]
00001770  084120            or [bx+di+0x20],al
00001773  A00202            mov al,[0x202]
00001776  80412042          add byte [bx+di+0x20],0x42
0000177A  0E                push cs
0000177B  800880            or byte [bx+si],0x80
0000177E  A00202            mov al,[0x202]
00001781  80428080          add byte [bp+si-0x80],0x80
00001785  02800841          add al,[bx+si+0x4108]
00001789  A00E02            mov al,[0x20e]
0000178C  8080418041        add byte [bx+si-0x7fbf],0x41
00001791  8E4280            mov es,word [bp+si-0x80]
00001794  A00802            mov al,[0x208]
00001797  80412020          add byte [bx+di+0x20],0x20
0000179B  41                inc cx
0000179C  8E4182            mov es,word [bx+di-0x7e]
0000179F  20A80802          and [bx+si+0x208],ch
000017A3  41                inc cx
000017A4  2220              and ah,[bx+si]
000017A6  42                inc dx
000017A7  0E                push cs
000017A8  41                inc cx
000017A9  0280A008          add al,[bx+si+0x8a0]
000017AD  02800241          add al,[bx+si+0x4102]
000017B1  80080A            or byte [bx+si],0xa
000017B4  41                inc cx
000017B5  0241A0            add al,[bx+di-0x60]
000017B8  41                inc cx
000017B9  0A800242          or al,[bx+si+0x4202]
000017BD  080EC008          or [0x8c0],cl
000017C1  80A0410E41        and byte [bx+si+0xe41],0x41
000017C6  82                db 0x82
000017C7  42                inc dx
000017C8  280A              sub [bp+si],cl
000017CA  800241            add byte [bp+si],0x41
000017CD  A808              test al,0x8
000017CF  0A410B            or al,[bx+di+0xb]
000017D2  43                inc bx
000017D3  0E                push cs
000017D4  802841            sub byte [bx+si],0x41
000017D7  A80A              test al,0xa
000017D9  02800A80          add al,[bx+si-0x7ff6]
000017DD  41                inc cx
000017DE  803A41            cmp byte [bp+si],0x41
000017E1  2241A0            and al,[bx+di-0x60]
000017E4  088B800B          or [bp+di+0xb80],cl
000017E8  82                db 0x82
000017E9  80883A8288        or byte [bx+si-0x7dc6],0x88
000017EE  41                inc cx
000017EF  A0380B            mov al,[0xb38]
000017F2  800E0AEE0A        or byte [0xee0a],0xa
000017F7  E202              loop 0x17fb
000017F9  2241A0            and al,[bx+di-0x60]
000017FC  283A              sub [bp+si],bh
000017FE  80A88BA2A8        sub byte [bx+si-0x5d75],0xa8
00001803  11800841          adc [bx+si+0x4108],ax
00001807  A03822            mov al,[0x2238]
0000180A  A03A03            mov al,[0x33a]
0000180D  88BAA220          mov [bp+si+0x20a2],bh
00001811  2241A2            and al,[bx+di-0x5e]
00001814  083A              or [bp+si],bh
00001816  80BA88A0CA        cmp byte [bp+si-0x5f78],0xca
0000181B  82                db 0x82
0000181C  8808              mov [bx+si],cl
0000181E  41                inc cx
0000181F  A20C2B            mov [0x2b0c],al
00001822  2A11              sub dl,[bx+di]
00001824  0A2A              or ch,[bp+si]
00001826  E222              loop 0x184a
00001828  8822              mov [bp+si],ah
0000182A  41                inc cx
0000182B  A208AB            mov [0xab08],al
0000182E  88E8              mov al,ch
00001830  82                db 0x82
00001831  A2CA8A            mov [0x8aca],al
00001834  208841A2          and [bx+si-0x5dbf],cl
00001838  3811              cmp [bx+di],dl
0000183A  08EA              or dl,ch
0000183C  0811              or [bx+di],dl
0000183E  A8A2              test al,0xa2
00001840  2802              sub [bp+si],al
00001842  41                inc cx
00001843  A0EA28            mov al,[0x28ea]
00001846  8EA8A3A8          mov gs,word [bx+si-0x575d]
0000184A  82                db 0x82
0000184B  88888041          mov [bx+si+0x4180],cl
0000184F  A211A2            mov [0xa211],al
00001852  2222              and ah,[bp+si]
00001854  02A22222          add ah,[bp+si+0x2222]
00001858  2242A2            and al,[bp+si-0x5e]
0000185B  08880A82          or [bx+si-0x7df6],cl
0000185F  2002              and [bp+si],al
00001861  0808              or [bx+si],cl
00001863  43                inc bx
00001864  004CA0            add [si-0x60],cl
00001867  43                inc bx
00001868  3AEB              cmp ch,bl
0000186A  EE                out dx,al
0000186B  A044A0            mov al,[0xa044]
0000186E  42                inc dx
0000186F  0313              add dx,[bp+di]
00001871  AE                scasb
00001872  44                inc sp
00001873  A041EA            mov al,[0xea41]
00001876  8EA88AEA          mov gs,word [bx+si-0x1576]
0000187A  A88F              test al,0x8f
0000187C  A842              test al,0x42
0000187E  A00E11            mov al,[0x110e]
00001881  3E2288A8A8        and cl,[ds:bx+si-0x5758]
00001886  3AA28041          cmp ah,[bp+si+0x4180]
0000188A  A03A28            mov al,[0x283a]
0000188D  3A8E8AA2          cmp cl,[bp-0x5d76]
00001891  113A              adc [bp+si],di
00001893  BA2041            mov dx,0x4120
00001896  A0EAA2            mov al,[0xa2ea]
00001899  3A22              cmp ah,[bp+si]
0000189B  11A2A828          adc [bp+si+0x28a8],sp
0000189F  AB                stosw
000018A0  8841A3            mov [bx+di-0x5d],al
000018A3  A228E8            mov [0xe828],al
000018A6  A311A8            mov [0xa811],ax
000018A9  EA088AB241        jmp word 0x41b2:word 0x8a08
000018AE  A31120            mov [0x2011],ax
000018B1  EAA8EAA3A8        jmp word 0xa8a3:word 0xeaa8
000018B6  8AABA241          mov ch,[bp+di+0x41a2]
000018BA  AE                scasb
000018BB  8A28              mov ch,[bx+si]
000018BD  EA28E80E11        jmp word 0x110e:word 0xe828
000018C2  0E                push cs
000018C3  1108              adc [bx+si],cx
000018C5  80AE2EA0EA        sub byte [bp-0x5fd2],0xea
000018CA  EA03A3A88E        jmp word 0x8ea8:word 0xa303
000018CF  11A080AC          adc [bx+si-0x5380],sp
000018D3  AE                scasb
000018D4  A8EA              test al,0xea
000018D6  11A8EA11          adc [bx+si+0x11ea],bp
000018DA  0E                push cs
000018DB  8A8880AC          mov cl,[bx+si-0x5380]
000018DF  AE                scasb
000018E0  A03A11            mov al,[0x113a]
000018E3  A8EA              test al,0xea
000018E5  A83A              test al,0x3a
000018E7  BAA880            mov dx,0x80a8
000018EA  A0BAA8            mov al,[0xa8ba]
000018ED  3A11              cmp dl,[bx+di]
000018EF  2311              and dx,[bx+di]
000018F1  A23A11            mov [0x113a],al
000018F4  82                db 0x82
000018F5  41                inc cx
000018F6  A3EA11            mov [0x11ea],ax
000018F9  3AAE83A8          cmp ch,[bp-0x577d]
000018FD  A83A              test al,0x3a
000018FF  1122              adc [bp+si],sp
00001901  41                inc cx
00001902  A311A8            mov [0xa811],ax
00001905  8EBA8EAB          mov segr7,word [bp+si-0x5472]
00001909  A0EA11            mov al,[0x11ea]
0000190C  82                db 0x82
0000190D  41                inc cx
0000190E  E2EA              loop 0x18fa
00001910  110E112A          adc [0x2a11],cx
00001914  11A8E811          adc [bx+si+0x11e8],bp
00001918  0841A0            or [bx+di-0x60],al
0000191B  EA118EA8AB        jmp word 0xaba8:word 0x8e11
00001920  1120              adc [bx+si],sp
00001922  EBA8              jmp 0x18cc
00001924  8841E2            mov [bx+di-0x1e],al
00001927  3A11              cmp dl,[bx+di]
00001929  2313              and dx,[bp+di]
0000192B  8311A2            adc word [bx+di],0xffffffffffffffa2
0000192E  2041E0            and [bx+di-0x20],al
00001931  BA1183            mov dx,0x8311
00001934  1323              adc sp,[bp+di]
00001936  11A82041          adc [bx+si+0x4120],bp
0000193A  E22E              loop 0x196a
0000193C  A22312            mov [0x1223],al
0000193F  8883A880          mov [bp+di-0x7f58],al
00001943  8041E08E          add byte [bx+di-0x20],0x8e
00001947  8880EAA2          mov [bx+si-0x5d16],al
0000194B  220EA220          and cl,[0x20a2]
0000194F  8041A223          add byte [bx+di-0x5e],0x23
00001953  42                inc dx
00001954  C880410C          enter word 0x4180,byte 0xc
00001958  2002              and [bp+si],al
0000195A  42                inc dx
0000195B  E0FE              loopne 0x195b
0000195D  BEF3FB            mov si,0xfbf3
00001960  EAEEEAEBFA        jmp word 0xfaeb:word 0xeaee
00001965  E841E2            call 0xfba9
00001968  FA                cli
00001969  11A313AE          adc [bp+di-0x51ed],sp
0000196D  128841A0          adc cl,[bx+si-0x5fbf]
00001971  EA118E11AB        jmp word 0xab11:word 0x8e11
00001976  1488              adc al,0x88
00001978  41                inc cx
00001979  A2EA11            mov [0x11ea],al
0000197C  8EA814EA          mov gs,word [bx+si-0x15ec]
00001980  A841              test al,0x41
00001982  A0EA11            mov al,[0x11ea]
00001985  3AAB128A          cmp ch,[bp+di-0x75ee]
00001989  128841E2          adc cl,[bx+si-0x1dbf]
0000198D  11A8EA13          adc [bx+si+0x13ea],bp
00001991  BA1208            mov dx,0x812
00001994  41                inc cx
00001995  E0EA              loopne 0x1981
00001997  A31688            mov [0x8816],ax
0000199A  8841E2            mov [bx+di-0x1e],al
0000199D  11A311A2          adc [bp+di-0x5def],sp
000019A1  8A28              mov ch,[bx+si]
000019A3  2222              and ah,[bp+si]
000019A5  2208              and cl,[bx+si]
000019A7  41                inc cx
000019A8  E211              loop 0x19bb
000019AA  03800845          add ax,[bx+si+0x4508]
000019AE  0841E2            or [bx+di-0x1e],al
000019B1  49                dec cx
000019B2  2041E0            and [bx+di-0x20],al
000019B5  88FA              mov dl,bh
000019B7  EAAEBAAEAF        jmp word 0xafae:word 0xbaae
000019BC  128041E2          adc al,[bx+si-0x1dbf]
000019C0  2311              and dx,[bx+di]
000019C2  A8BA              test al,0xba
000019C4  BA2241            mov dx,0x4122
000019C7  11A842E0          adc [bx+si-0x1fbe],bp
000019CB  8EAE8A11          mov gs,word [bp+0x118a]
000019CF  28802AA8          sub [bx+si-0x57d6],al
000019D3  118041E2          adc [bx+si-0x1dbf],ax
000019D7  3AA88211          cmp ch,[bx+si+0x1182]
000019DB  A202A8            mov [0xa802],al
000019DE  A811              test al,0x11
000019E0  3041A0            xor [bx+di-0x60],al
000019E3  11A20E11          adc [bp+si+0x110e],sp
000019E7  880A              mov [bp+si],cl
000019E9  12EA              adc ch,dl
000019EB  8C41E2            mov word [bx+di-0x1e],es
000019EE  E8A83A            call 0x5499
000019F1  1120              adc [bx+si],sp
000019F3  2A13              sub dl,[bp+di]
000019F5  0841E0            or [bx+di-0x20],al
000019F8  EE                out dx,al
000019F9  80EA11            sub dl,0x11
000019FC  8012BA            adc byte [bp+si],0xba
000019FF  118241E2          adc [bp+si-0x1dbf],ax
00001A03  EA88EAA880        jmp word 0x80a8:word 0xea88
00001A08  110A              adc [bp+si],cx
00001A0A  118A2241          adc [bp+si+0x4122],cx
00001A0E  A3A283            mov [0x83a2],ax
00001A11  11A202A8          adc [bp+si-0x57fe],sp
00001A15  BA11A8            mov dx,0xa811
00001A18  82                db 0x82
00001A19  41                inc cx
00001A1A  E38A              jcxz 0x19a6
00001A1C  8311A8            adc word [bx+di],0xffffffffffffffa8
00001A1F  0211              add dl,[bx+di]
00001A21  EA11220241        jmp word 0x4102:word 0x2211
00001A26  E38B              jcxz 0x19b3
00001A28  2311              and dx,[bx+di]
00001A2A  A00A12            mov al,[0x120a]
00001A2D  A888              test al,0x88
00001A2F  0241E3            add al,[bx+di-0x1d]
00001A32  8A831188          mov al,[bp+di-0x77ef]
00001A36  0A12              or dl,[bp+si]
00001A38  A24128            mov [0x2841],al
00001A3B  41                inc cx
00001A3C  A3EAA3            mov [0xa3ea],ax
00001A3F  11A00A12          adc [bx+si+0x120a],sp
00001A43  A83E              test al,0x3e
00001A45  8841A3            mov [bx+di-0x5d],al
00001A48  8A831188          mov al,[bp+di-0x77ef]
00001A4C  2AAB1183          sub ch,[bp+di-0x7cef]
00001A50  800841            or byte [bx+si],0x41
00001A53  E28A              loop 0x19df
00001A55  A0EAA0            mov al,[0xa0ea]
00001A58  2A11              sub dl,[bx+di]
00001A5A  2A0C              sub cl,[si]
00001A5C  2820              sub [bx+si],ah
00001A5E  41                inc cx
00001A5F  E28E              loop 0x19ef
00001A61  88EA              mov dl,ch
00001A63  888ABA2A          mov [bp+si+0x2aba],cl
00001A67  30EA              xor dl,ch
00001A69  2041E8            and [bx+di-0x18],al
00001A6C  CAA0EA            retf word 0xeaa0
00001A6F  A02CEA            mov al,[0xea2c]
00001A72  08C2              or dl,al
00001A74  AB                stosw
00001A75  2041E0            and [bx+di-0x20],al
00001A78  E2A8              loop 0x1a22
00001A7A  3AA88A11          cmp ch,[bx+si+0x118a]
00001A7E  0882BF20          or [bp+si+0x20bf],al
00001A82  41                inc cx
00001A83  E8A2A8            call 0xc328
00001A86  3E1122            adc [ds:bp+si],sp
00001A89  A00A33            mov al,[0x330a]
00001A8C  EF                out dx,ax
00001A8D  0841A0            or [bx+di-0x60],al
00001A90  83A80E1288        sub word [bx+si+0x120e],0xffffffffffffff88
00001A95  2A2A              sub ch,[bp+si]
00001A97  AE                scasb
00001A98  8841E8            mov [bx+di-0x18],al
00001A9B  3EEA0B2A2220      ds jmp word 0x2022:word 0x2a0b
00001AA1  2A8EA282          sub cl,[bp-0x7d5e]
00001AA5  41                inc cx
00001AA6  E238              loop 0x1ae0
00001AA8  A80A              test al,0xa
00001AAA  C8888011          enter word 0x8088,byte 0x11
00001AAE  A2A882            mov [0x82a8],al
00001AB1  41                inc cx
00001AB2  E0E2              loopne 0x1a96
00001AB4  BA0AB0            mov dx,0xb00a
00001AB7  2002              and [bp+si],al
00001AB9  11A8F220          adc [bx+si+0x20f2],bp
00001ABD  80A38A2A0A        and byte [bp+di+0x2a8a],0xa
00001AC2  AF                scasw
00001AC3  41                inc cx
00001AC4  0A11              or dl,[bx+di]
00001AC6  BA0888            mov dx,0x8808
00001AC9  80E38C            and bl,0x8c
00001ACC  388A83FA          cmp [bp+si-0x57d],cl
00001AD0  128AA222          adc cl,[bp+si+0x22a2]
00001AD4  20E2              and dl,ah
00001AD6  A3110A            mov [0xa11],ax
00001AD9  0E                push cs
00001ADA  0813              or [bp+di],dl
00001ADC  88C8              mov al,cl
00001ADE  20E2              and dl,ah
00001AE0  11882338          adc [bx+si+0x3823],cx
00001AE4  FA                cli
00001AE5  2AEA              sub ch,dl
00001AE7  11A0E208          adc [bx+si+0x8e2],sp
00001AEB  E0A2              loopne 0x1a8f
00001AED  2033              and [bp+di],dh
00001AEF  3308              xor cx,[bx+si]
00001AF1  2A12              sub dl,[bp+si]
00001AF3  88A880E2          mov [bx+si-0x1d80],ch
00001AF7  2003              and [bp+di],al
00001AF9  833B08            cmp word [bp+di],0x8
00001AFC  2AEA              sub ch,dl
00001AFE  1120              adc [bx+si],sp
00001B00  1141E8            adc [bx+di-0x18],ax
00001B03  8ECA              mov cs,dx
00001B05  80F2A0            xor dl,0xa0
00001B08  2A2A              sub ch,[bp+si]
00001B0A  1180E880          adc [bx+si-0x7f18],ax
00001B0E  E22A              loop 0x1b3a
00001B10  A223EC            mov [0xec23],al
00001B13  41                inc cx
00001B14  134188            adc ax,[bx+di-0x78]
00001B17  41                inc cx
00001B18  EAEBA3A32E        jmp word 0x2ea3:word 0xa3eb
00001B1D  A813              test al,0x13
00001B1F  808041EB80        add byte [bx+si-0x14bf],0x80
00001B24  A0E0A8            mov al,[0xa8e0]
00001B27  0213              add dl,[bp+di]
00001B29  82                db 0x82
00001B2A  42                inc dx
00001B2B  EE                out dx,al
00001B2C  82                db 0x82
00001B2D  A0A82E            mov al,[0x2ea8]
00001B30  A813              test al,0x13
00001B32  A28841            mov [0x4188],al
00001B35  EE                out dx,al
00001B36  0AA8A8BA          or ch,[bx+si-0x4558]
00001B3A  112A              adc [bp+si],bp
00001B3C  1282A041          adc al,[bp+si+0x41a0]
00001B40  EE                out dx,al
00001B41  82                db 0x82
00001B42  A0A83A            mov al,[0x3aa8]
00001B45  A82A              test al,0x2a
00001B47  2E110A            adc [cs:bp+si],cx
00001B4A  A841              test al,0x41
00001B4C  AC                lodsb
00001B4D  1188A0BA          adc [bx+si-0x4560],cx
00001B51  A02A82            mov al,[0x822a]
00001B54  118AA241          adc [bp+si+0x41a2],cx
00001B58  EB0A              jmp 0x1b64
00001B5A  41                inc cx
00001B5B  A83A              test al,0x3a
00001B5D  A811              test al,0x11
00001B5F  8A11              mov dl,[bx+di]
00001B61  0AA841EA          or ch,[bx+si-0x15bf]
00001B65  C003A0            rol byte [bp+di],byte 0xa0
00001B68  BAA02A            mov dx,0x2aa0
00001B6B  8AAE8AA0          mov ch,[bp-0x5f76]
00001B6F  41                inc cx
00001B70  EABEBAA83A        jmp word 0x3aa8:word 0xbabe
00001B75  A811              test al,0x11
00001B77  2AA20A80          sub ah,[bp+si-0x7ff6]
00001B7B  41                inc cx
00001B7C  AB                stosw
00001B7D  EA11A0BAA0        jmp word 0xa0ba:word 0xa011
00001B82  EE                out dx,al
00001B83  12828A80          adc al,[bp+si-0x7f76]
00001B87  EE                out dx,al
00001B88  A02A88            mov al,[0x882a]
00001B8B  3A88A211          cmp cl,[bx+si+0x11a2]
00001B8F  2AA2A820          sub ah,[bp+si+0x20a8]
00001B93  FA                cli
00001B94  8ACA              mov cl,dl
00001B96  A0BAA0            mov al,[0xa0ba]
00001B99  EA1282A220        jmp word 0x20a2:word 0x8212
00001B9E  BA2ABA            mov dx,0xba2a
00001BA1  803A88            cmp byte [bp+si],0x88
00001BA4  13A0A820          adc sp,[bx+si+0x20a8]
00001BA8  EA3AEA22BA        jmp word 0xba22:word 0xea3a
00001BAD  2011              and [bx+di],dl
00001BAF  A211A8            mov [0xa811],al
00001BB2  A080EA            mov al,[0xea80]
00001BB5  8F                db 0x8f
00001BB6  A882              test al,0x82
00001BB8  3A808A13          cmp al,[bx+si+0x138a]
00001BBC  2880EA11          sub [bx+si+0x11ea],al
00001BC0  A208B2            mov [0xb208],al
00001BC3  208812A2          and [bx+si-0x5dee],cl
00001BC7  2080B2A8          and [bx+si-0x574e],al
00001BCB  8802              mov [bp+si],al
00001BCD  280A              sub [bp+si],cl
00001BCF  3008              xor [bx+si],cl
00001BD1  118A8241          adc [bp+si+0x4182],cx
00001BD5  FC                cld
00001BD6  024108            add al,[bx+di+0x8]
00001BD9  128E8022          adc cl,[bp+0x2280]
00001BDD  A20241            mov [0x4102],al
00001BE0  E3C0              jcxz 0x1ba2
00001BE2  0322              add sp,[bp+si]
00001BE4  A211A0            mov [0xa011],al
00001BE7  3B4188            cmp ax,[bx+di-0x78]
00001BEA  82                db 0x82
00001BEB  41                inc cx
00001BEC  8888888A          mov [bx+si-0x7578],cl
00001BF0  118A8880          adc [bp+si-0x7f78],cx
00001BF4  E84108            call 0x2438
00001BF7  41                inc cx
00001BF8  E22F              loop 0x1c29
00001BFA  FF                db 0xff
00001BFB  FF0A              dec word [bp+si]
00001BFD  11A22203          adc [bp+si+0x322],sp
00001C01  A00841            mov al,[0x4108]
00001C04  C8FA12A0          enter word 0x12fa,byte 0xa0
00001C08  A22A88            mov [0x882a],al
00001C0B  800AA0            or byte [bp+si],0xa0
00001C0E  41                inc cx
00001C0F  E3AE              jcxz 0x1bbf
00001C11  2EBA2A2A          cs mov dx,0x2a2a
00001C15  11A22043          adc [bp+si+0x4320],sp
00001C19  CE                into
00001C1A  EA28A8A88A        jmp word 0x8aa8:word 0xa828
00001C1F  BFE888            mov di,0x88e8
00001C22  43                inc bx
00001C23  2AA8A8A8          sub ch,[bx+si-0x5758]
00001C27  110A              adc [bp+si],cx
00001C29  EABA2243BA        jmp word 0xba43:word 0x22ba
00001C2E  8AA8A811          mov ch,[bx+si+0x11a8]
00001C32  A31120            mov [0x2011],ax
00001C35  8843FA            mov [bp+di-0x6],al
00001C38  2AA81283          sub ch,[bx+si-0x7cee]
00001C3C  11822F03          adc [bp+si+0x32f],ax
00001C40  F0                lock
00001C41  41                inc cx
00001C42  FA                cli
00001C43  2AA812A3          sub ch,[bx+si-0x5cee]
00001C47  1123              adc [bp+di],sp
00001C49  BAA2A8            mov dx,0xa8a2
00001C4C  41                inc cx
00001C4D  FA                cli
00001C4E  2A11              sub dl,[bx+di]
00001C50  AE                scasb
00001C51  1103              adc [bp+di],ax
00001C53  A202EA            mov [0xea02],al
00001C56  88EA              mov dl,ch
00001C58  41                inc cx
00001C59  FA                cli
00001C5A  2C11              sub al,0x11
00001C5C  A2AE22            mov [0x22ae],al
00001C5F  280A              sub [bp+si],cl
00001C61  2AA08841          sub ah,[bx+si+0x4188]
00001C65  FA                cli
00001C66  1403              adc al,0x3
00001C68  80282A            sub byte [bx+si],0x2a
00001C6B  808A41FA11        or byte [bp+si-0x5bf],0x11
00001C70  A811              test al,0x11
00001C72  A8A2              test al,0xa2
00001C74  C080222020        rol byte [bx+si+0x2022],byte 0x20
00001C79  41                inc cx
00001C7A  BAAB11            mov dx,0x11ab
00001C7D  A21182            mov [0x8211],al
00001C80  B020              mov al,0x20
00001C82  B80242            mov ax,0x4202
00001C85  BAA811            mov dx,0x11a8
00001C88  E211              loop 0x1c9b
00001C8A  82                db 0x82
00001C8B  AC                lodsb
00001C8C  08A00842          or [bx+si+0x4208],ah
00001C90  BA11AB            mov dx,0xab11
00001C93  11A882AB          adc [bx+si-0x547e],bp
00001C97  C02222            shl byte [bp+si],byte 0x22
00001C9A  42                inc dx
00001C9B  BA128A            mov dx,0x8a12
00001C9E  A22011            mov [0x1120],al
00001CA1  BF44BA            mov di,0xba44
00001CA4  13A80212          adc bp,[bx+si+0x1202]
00001CA8  FF                db 0xff
00001CA9  FF                db 0xff
00001CAA  FFC0              inc ax
00001CAC  BA1182            mov dx,0x8211
00001CAF  2022              and [bp+si],ah
00001CB1  41                inc cx
00001CB2  11A21320          adc [bp+si+0x2013],sp
00001CB6  BA2043            mov dx,0x4320
00001CB9  022A              add ch,[bp+si]
00001CBB  8A2A              mov ch,[bp+si]
00001CBD  1220              adc ah,[bx+si]
00001CBF  BFFFBF            mov di,0xbfff
00001CC2  EBEE              jmp 0x1cb2
00001CC4  B88A8A            mov ax,0x8a8a
00001CC7  11A21120          adc [bp+si+0x2011],sp
00001CCB  EABABA11A8        jmp word 0xa811:word 0xbaba
00001CD0  E82ABA            call 0xd6fd
00001CD3  11A21120          adc [bp+si+0x2011],sp
00001CD7  EAAFEA8AA8        jmp word 0xa88a:word 0xeaaf
00001CDC  E08A              loopne 0x1c68
00001CDE  128A2820          adc cl,[bp+si+0x2028]
00001CE2  EA112A1183        jmp word 0x8311:word 0x2a11
00001CE7  882A              mov [bp+si],ch
00001CE9  128AEA20          adc cl,[bp+si+0x20ea]
00001CED  E28A              loop 0x1c79
00001CEF  2B11              sub dx,[bx+di]
00001CF1  3AA08A13          cmp ah,[bx+si+0x138a]
00001CF5  A820              test al,0x20
00001CF7  E02A              loopne 0x1d23
00001CF9  28A8EA88          sub [bx+si-0x7716],ch
00001CFD  2A8AA211          sub cl,[bp+si+0x11a2]
00001D01  A220E3            mov [0xe320],al
00001D04  112A              adc [bp+si],bp
00001D06  80EAA0            sub dl,0xa0
00001D09  8A8AAE11          mov cl,[bp+si+0x11ae]
00001D0D  A820              test al,0x20
00001D0F  EA112838EA        jmp word 0xea38:word 0x2811
00001D14  882A              mov [bp+si],ch
00001D16  2A12              sub dl,[bp+si]
00001D18  A220EA            mov [0xea20],al
00001D1B  A8A3              test al,0xa3
00001D1D  12A08A13          adc ah,[bx+si+0x138a]
00001D21  A820              test al,0x20
00001D23  EA14A814A2        jmp word 0xa214:word 0xa814
00001D28  20EA              and dl,ch
00001D2A  14A8              adc al,0xa8
00001D2C  14A8              adc al,0xa8
00001D2E  20C0              and al,al
00001D30  44                inc sp
00001D31  0214              add dl,[si]
00001D33  A220EA            mov [0xea20],al
00001D36  11AE12A2          adc [bp-0x5dee],bp
00001D3A  122A              adc ch,[bp+si]
00001D3C  11A820B2          adc [bx+si-0x4de0],bp
00001D40  BA2A2B            mov dx,0x2b2a
00001D43  8AA2122A          mov ah,[bp+si+0x2a12]
00001D47  8AA220B8          mov ah,[bp+si-0x47e0]
00001D4B  112A              adc [bp+si],bp
00001D4D  112A              adc [bp+si],bp
00001D4F  A21428            mov [0x2814],al
00001D52  20BCAE2A          and [si+0x2aae],bh
00001D56  2A11              sub dl,[bx+di]
00001D58  A214A2            mov [0xa214],al
00001D5B  20B8112A          and [bx+si+0x2a11],bh
00001D5F  EA11A2A811        jmp word 0x11a8:word 0xa211
00001D64  A8A2              test al,0xa2
00001D66  A820              test al,0x20
00001D68  FA                cli
00001D69  A813              test al,0x13
00001D6B  A2A211            mov [0x11a2],al
00001D6E  A811              test al,0x11
00001D70  A220BA            mov [0xba20],al
00001D73  A812              test al,0x12
00001D75  8AA2132A          mov ah,[bp+si+0x2a13]
00001D79  A820              test al,0x20
00001D7B  BAAB12            mov dx,0x12ab
00001D7E  BAA211            mov dx,0x11a2
00001D81  A2AE2A            mov [0x2aae],al
00001D84  2220              and ah,[bx+si]
00001D86  EA140211A2        jmp word 0xa211:word 0x214
00001D8B  AE                scasb
00001D8C  2A8820EA          sub cl,[bx+si-0x15e0]
00001D90  13A8A211          adc bp,[bx+si+0x11a2]
00001D94  E211              loop 0x1da7
00001D96  2A20              sub ah,[bx+si]
00001D98  2014              and [si],dl
00001D9A  A8B2              test al,0xb2
00001D9C  2A11              sub dl,[bx+di]
00001D9E  88888820          mov [bx+si+0x2088],cl
00001DA2  EA1382B28A        jmp word 0x8ab2:word 0x8213
00001DA7  A843              test al,0x43
00001DA9  20EA              and dl,ch
00001DAB  132B              adc bp,[bp+di]
00001DAD  C3                ret
00001DAE  1145FE            adc [di-0x2],ax
00001DB1  FB                sti
00001DB2  AF                scasw
00001DB3  A841              test al,0x41
00001DB5  02A00202          add ah,[bx+si+0x202]
00001DB9  43                inc bx
00001DBA  EA8A12A242        jmp word 0x42a2:word 0x128a
00001DBF  11A88842          adc [bx+si+0x4288],bp
00001DC3  8A11              mov dl,[bx+di]
00001DC5  2A11              sub dl,[bx+di]
00001DC7  880B              mov [bp+di],cl
00001DC9  FF                db 0xff
00001DCA  FF0F              dec word [bx]
00001DCC  FFC0              inc ax
00001DCE  41                inc cx
00001DCF  CAA882            retf word 0x82a8
00001DD2  2220              and ah,[bx+si]
00001DD4  138E11A8          adc cx,[bp-0x57ef]
00001DD8  41                inc cx
00001DD9  C28043            ret word 0x4380
00001DDC  2A11              sub dl,[bx+di]
00001DDE  A28E12            mov [0x128e],al
00001DE1  41                inc cx
00001DE2  80EA13            sub dl,0x13
00001DE5  82                db 0x82
00001DE6  11A80E12          adc [bx+si+0x120e],bp
00001DEA  41                inc cx
00001DEB  C3                ret
00001DEC  11EA              adc dx,bp
00001DEE  12A8128E          adc ch,[bx+si-0x71ee]
00001DF2  11A241C3          adc [bp+si-0x3cbf],sp
00001DF6  AE                scasb
00001DF7  12AB112A          adc ch,[bp+di+0x2a11]
00001DFB  118E1241          adc [bp+0x4112],cx
00001DFF  CE                into
00001E00  13A8EA2A          adc bp,[bx+si+0x2aea]
00001E04  118E1241          adc [bp+0x4112],cx
00001E08  CA11AB            retf word 0xab11
00001E0B  123A              adc bh,[bp+si]
00001E0D  8A11              mov dl,[bx+di]
00001E0F  8ECA              mov cs,dx
00001E11  1141FA            adc [bx+di-0x6],ax
00001E14  8A11              mov dl,[bx+di]
00001E16  A811              test al,0x11
00001E18  3A8A118E          cmp cl,[bp+si-0x71ef]
00001E1C  BA1141            mov dx,0x4111
00001E1F  FB                sti
00001E20  A2112A            mov [0x2a11],al
00001E23  1132              adc [bp+si],si
00001E25  8A11              mov dl,[bx+di]
00001E27  8E12              mov ss,word [bp+si]
00001E29  41                inc cx
00001E2A  FA                cli
00001E2B  8CA3A8EA          mov word [bp+di-0x1558],fs
00001E2F  3A8A118E          cmp cl,[bp+si-0x71ef]
00001E33  1241BA            adc al,[bx+di-0x46]
00001E36  8CA3A8EA          mov word [bp+di-0x1558],fs
00001E3A  328A110E          xor cl,[bp+si+0xe11]
00001E3E  1241BA            adc al,[bx+di-0x46]
00001E41  8EA3A8E8          mov fs,word [bp+di-0x1758]
00001E45  3A0A              cmp cl,[bp+si]
00001E47  AB                stosw
00001E48  8E11              mov ss,word [bx+di]
00001E4A  8A41FA            mov al,[bx+di-0x6]
00001E4D  0E                push cs
00001E4E  A3A0E2            mov [0xe2a0],ax
00001E51  0E                push cs
00001E52  8AAB8E12          mov ch,[bp+di+0x128e]
00001E56  41                inc cx
00001E57  F28E8328EA        repne mov es,word [bp+di-0x15d8]
00001E5C  41                inc cx
00001E5D  3AAB8F12          cmp ch,[bp+di+0x128f]
00001E61  41                inc cx
00001E62  BA0CA3            mov dx,0xa30c
00001E65  A0C820            mov al,[0x20c8]
00001E68  A811              test al,0x11
00001E6A  CE                into
00001E6B  EA1141FA0C        jmp word 0xcfa:word 0x4111
00001E70  A328CA            mov [0xca28],ax
00001E73  2AA211CE          sub ah,[bp+si-0x31ef]
00001E77  EA1141F28E        jmp word 0x8ef2:word 0x4111
00001E7C  2328              and bp,[bx+si]
00001E7E  E80EB2            call 0xd08f
00001E81  118EBA11          adc [bp+0x11ba],cx
00001E85  41                inc cx
00001E86  F8                clc
00001E87  8CA388CA          mov word [bp+di-0x3578],fs
00001E8B  0C0C              or al,0xc
00001E8D  118EBA11          adc [bp+0x11ba],cx
00001E91  41                inc cx
00001E92  B28C              mov dl,0x8c
00001E94  8328CA            sub word [bx+si],0xffffffffffffffca
00001E97  0E                push cs
00001E98  CA2A8E            retf word 0x8e2a
00001E9B  BA1141            mov dx,0x4111
00001E9E  F0                lock
00001E9F  0E                push cs
00001EA0  0308              add cx,[bx+si]
00001EA2  C20EB3            ret word 0xb30e
00001EA5  2A8EEA11          sub cl,[bp+0x11ea]
00001EA9  41                inc cx
00001EAA  FC                cld
00001EAB  2B0EC2B0          sub cx,[0xb0c2]
00001EAF  8C11              mov word [bx+di],ss
00001EB1  CA8F12            retf word 0x128f
00001EB4  41                inc cx
00001EB5  BA118E            mov dx,0x8e11
00001EB8  128E128C          adc cl,[bp-0x73ee]
00001EBC  1241BA            adc al,[bx+di-0x46]
00001EBF  118C128C          adc [si-0x73ee],cx
00001EC3  128E1241          adc cl,[bp+0x4112]
00001EC7  F2118E128C        repne adc [bp-0x73ee],cx
00001ECC  128E11A8          adc cl,[bp-0x57ef]
00001ED0  41                inc cx
00001ED1  FA                cli
00001ED2  118C128E          adc [si-0x71ee],cx
00001ED6  128C11A8          adc cl,[si-0x57ef]
00001EDA  41                inc cx
00001EDB  F2118C128C        repne adc [si-0x73ee],cx
00001EE0  128C8AA8          adc cl,[si-0x5776]
00001EE4  41                inc cx
00001EE5  F8                clc
00001EE6  118E128C          adc [bp-0x73ee],cx
00001EEA  2A11              sub dl,[bx+di]
00001EEC  8E11              mov ss,word [bx+di]
00001EEE  A241F0            mov [0xf041],al
00001EF1  2A8C2211          sub cl,[si+0x1122]
00001EF5  8CA2118C          mov word [bp+si-0x73ef],fs
00001EF9  82                db 0x82
00001EFA  2041F0            and [bx+di-0x10],al
00001EFD  82                db 0x82
00001EFE  8C08              mov word [bx+si],cs
00001F00  228C0882          and cl,[si-0x7df8]
00001F04  BC2042            mov sp,0x4220
00001F07  C8804AE2          enter word 0x4a80,byte 0xe2
00001F0B  3A17              cmp dl,[bx]
00001F0D  8042CBEA          add byte [bp+si-0x35],0xea
00001F11  17                pop ss
00001F12  A882              test al,0x82
00001F14  41                inc cx
00001F15  EE                out dx,al
00001F16  1920              sbb [bx+si],sp
00001F18  80BA15A282        cmp byte [bp+si-0x5deb],0x82
00001F1D  88888041          mov [bx+si+0x4180],cl
00001F21  FF                db 0xff
00001F22  FF                db 0xff
00001F23  EB3F              jmp 0x1f64
00001F25  FF                db 0xff
00001F26  BBBAEB            mov bx,0xebba
00001F29  EAFA1180FA        jmp word 0xfa80:word 0x11fa
00001F2E  11BA8F11          adc [bp+si+0x118f],di
00001F32  E8E2A2            call 0xc217
00001F35  AB                stosw
00001F36  1280BABA          adc al,[bx+si-0x4546]
00001F3A  A88A              test al,0x8a
00001F3C  11A2128A          adc [bp+si-0x75ee],sp
00001F40  B81141            mov ax,0x4111
00001F43  BA112A            mov dx,0x2a11
00001F46  A2E813            mov [0x13e8],al
00001F49  8A11              mov dl,[bx+di]
00001F4B  EA80FB8A12        jmp word 0x128a:word 0xfb80
00001F50  E214              loop 0x1f66
00001F52  A28A41            mov [0x418a],al
00001F55  FB                sti
00001F56  8A11              mov dl,[bx+di]
00001F58  A6                cmpsb
00001F59  A215EA            mov [0xea15],al
00001F5C  80FE8A            cmp dh,0x8a
00001F5F  11AFA215          adc [bx+0x15a2],bp
00001F63  2A80FA8A          sub al,[bx+si-0x7506]
00001F67  11AEE214          adc [bp+0x14e2],bp
00001F6B  AE                scasb
00001F6C  1180BE11          adc [bx+si+0x11be],ax
00001F70  A8AE              test al,0xae
00001F72  A214AE            mov [0xae14],al
00001F75  A041FA            mov al,[0xfa41]
00001F78  11A8E616          adc [bx+si+0x16e6],bp
00001F7C  8E41EA            mov es,word [bx+di-0x16]
00001F7F  11AE0E15          adc [bp+0x150e],bp
00001F83  BA8A41            mov dx,0x418a
00001F86  C211A8            ret word 0xa811
00001F89  EA153AA880        jmp word 0x80a8:word 0x3a15
00001F8E  CE                into
00001F8F  11AE110A          adc [bp+0xa11],bp
00001F93  13A88E11          adc bp,[bx+si+0x118e]
00001F97  41                inc cx
00001F98  CA12A8            retf word 0xa812
00001F9B  A211A0            mov [0xa011],al
00001F9E  AB                stosw
00001F9F  8AA3A880          mov ah,[bp+di-0x7f58]
00001FA3  BA1228            mov dx,0x2812
00001FA6  AE                scasb
00001FA7  110B              adc [bp+di],cx
00001FA9  11BAA8EA          adc [bp+si-0x1558],di
00001FAD  41                inc cx
00001FAE  BAA811            mov dx,0x11a8
00001FB1  2A3A              sub bh,[bp+si]
00001FB3  A8AB              test al,0xab
00001FB5  12A8E841          adc ch,[bx+si+0x41e8]
00001FB9  BAB0A2            mov dx,0xa2b0
00001FBC  2A11              sub dl,[bx+di]
00001FBE  A0AE11            mov al,[0x11ae]
00001FC1  B8A811            mov ax,0x11a8
00001FC4  41                inc cx
00001FC5  FA                cli
00001FC6  A2A22A            mov [0x2aa2],al
00001FC9  11A2AE11          adc [bp+si+0x11ae],sp
00001FCD  8811              mov [bx+di],dl
00001FCF  3880CEA2          cmp [bx+si-0x5d32],al
00001FD3  A812              test al,0x12
00001FD5  A8FA              test al,0xfa
00001FD7  1188113A          adc [bx+si+0x3a11],cx
00001FDB  41                inc cx
00001FDC  FA                cli
00001FDD  122A              adc ch,[bp+si]
00001FDF  112A              adc [bp+si],bp
00001FE1  12A8A8E8          adc ch,[bx+si-0x1758]
00001FE5  41                inc cx
00001FE6  BA118A            mov dx,0x8a11
00001FE9  122A              adc ch,[bp+si]
00001FEB  12B811A2          adc bh,[bx+si-0x5def]
00001FEF  41                inc cx
00001FF0  BA2AB8            mov dx,0xb82a
00001FF3  122A              adc ch,[bp+si]
00001FF5  132A              adc bp,[bp+si]
00001FF7  8841CA            mov [bx+di-0x36],al
00001FFA  2AA811AB          sub ch,[bx+si-0x54ef]
00001FFE  13BA2AA0          adc di,[bp+si-0x5fd6]
00002002  41                inc cx
00002003  CA2211            retf word 0x1122
00002006  2A13              sub dl,[bp+di]
00002008  82                db 0x82
00002009  2828              sub [bx+si],ch
0000200B  8841BA            mov [bx+di-0x46],al
0000200E  20AE2AAB          and [bp-0x54d6],ch
00002012  8A8A88EA          mov cl,[bp+si-0x1578]
00002016  2A20              sub ah,[bx+si]
00002018  41                inc cx
00002019  FA                cli
0000201A  E2AE              loop 0x1fca
0000201C  2AAE0AEE          sub ch,[bp-0x11f6]
00002020  2A880888          sub cl,[bx+si-0x77f8]
00002024  41                inc cx
00002025  FA                cli
00002026  22EA              and ch,dl
00002028  0AA88BA2          or ch,[bx+si-0x5d75]
0000202C  A811              test al,0x11
0000202E  41                inc cx
0000202F  2041FA            and [bx+di-0x6],al
00002032  E211              loop 0x2045
00002034  883A              mov [bp+si],bh
00002036  0388BA88          add cx,[bx+si-0x7746]
0000203A  808841FA22        or byte [bx+si-0x5bf],0x22
0000203F  EA083A88A0        jmp word 0xa088:word 0x3a08
00002044  CA0A20            retf word 0x200a
00002047  42                inc dx
00002048  BAB2AC            mov dx,0xacb2
0000204B  A0110A            mov al,[0xa11]
0000204E  28E2              sub dl,ah
00002050  0A20              or ah,[bx+si]
00002052  8841BA            mov [bx+di-0x46],al
00002055  A0AE20            mov al,[0x20ae]
00002058  E88282            call 0xa2dd
0000205B  CA2882            retf word 0x8228
0000205E  42                inc dx
0000205F  FA                cli
00002060  E028              loopne 0x208a
00002062  20EA              and dl,ch
00002064  088AA888          or [bp+si-0x7758],cl
00002068  A00841            mov al,[0x4108]
0000206B  BBA822            mov bx,0x22a8
0000206E  38A8A308          cmp [bx+si+0x8a3],ch
00002072  82                db 0x82
00002073  2022              and [bp+si],ah
00002075  42                inc dx
00002076  BA1188            mov dx,0x8811
00002079  8822              mov [bp+si],ah
0000207B  0202              add al,[bp+si]
0000207D  22808842          and al,[bx+si+0x4288]
00002081  F8                clc
00002082  2220              and ah,[bx+si]
00002084  28822002          sub [bp+si+0x220],al
00002088  0820              or [bx+si],ah
0000208A  43                inc bx
0000208B  001C              add [si],bl
0000208D  0A13              or dl,[bp+di]
0000208F  BAEBEE            mov dx,0xeeeb
00002092  150A12            adc ax,0x120a
00002095  AB                stosw
00002096  13AE140A          adc bp,[bp+0xa14]
0000209A  11EA              adc dx,bp
0000209C  AE                scasb
0000209D  A88A              test al,0x8a
0000209F  EAA8AF130A        jmp word 0xa13:word 0xafa8
000020A4  AE                scasb
000020A5  113E2088          adc [0x8820],di
000020A9  A841              test al,0x41
000020AB  3AA2120A          cmp ah,[bp+si+0xa12]
000020AF  BA283A            mov dx,0x3a28
000020B2  808020203A        add byte [bx+si+0x2020],0x3a
000020B7  BA2A11            mov dx,0x112a
000020BA  0AEA              or ch,dl
000020BC  A23A42            mov [0x423a],al
000020BF  2020              and [bx+si],ah
000020C1  28AB8A11          sub [bp+di+0x118a],ch
000020C5  08A208E8          or [bp+si-0x17f8],ah
000020C9  42                inc dx
000020CA  204108            and [bx+di+0x8],al
000020CD  82                db 0x82
000020CE  B211              mov dl,0x11
000020D0  08A241E0          or [bp+si-0x1fbf],ah
000020D4  44                inc sp
000020D5  8883A211          mov [bp+di+0x11a2],al
000020D9  41                inc cx
000020DA  82                db 0x82
000020DB  284602            sub [bp+0x2],al
000020DE  0811              or [bx+di],dl
000020E0  42                inc dx
000020E1  204580            and [di-0x80],al
000020E4  024111            add al,[bx+di+0x11]
000020E7  41                inc cx
000020E8  20884120          and [bx+si+0x2041],cl
000020EC  42                inc dx
000020ED  82                db 0x82
000020EE  42                inc dx
000020EF  0811              or [bx+di],dl
000020F1  41                inc cx
000020F2  204102            and [bx+di+0x2],al
000020F5  024288            add al,[bp+si-0x78]
000020F8  0802              or [bp+si],al
000020FA  0811              or [bx+di],dl
000020FC  08808841          or [bx+si+0x4188],al
00002100  0A4202            or al,[bp+si+0x2]
00002103  084102            or [bx+di+0x2],al
00002106  1108              adc [bx+si],cx
00002108  0282022E          add al,[bp+si+0x2e02]
0000210C  802008            and byte [bx+si],0x8
0000210F  08A02211          or [bx+si+0x1122],ah
00002113  084280            or [bp+si-0x80],al
00002116  3A804120          cmp al,[bx+si+0x2041]
0000211A  20A00211          and [bx+si+0x1102],ah
0000211E  41                inc cx
0000211F  0288412A          add cl,[bx+si+0x2a41]
00002123  42                inc dx
00002124  2820              sub [bx+si],ah
00002126  41                inc cx
00002127  0A11              or dl,[bx+di]
00002129  41                inc cx
0000212A  20804188          and [bx+si-0x77bf],al
0000212E  03802020          add ax,[bx+si+0x2020]
00002132  41                inc cx
00002133  8A11              mov dl,[bx+di]
00002135  41                inc cx
00002136  0820              or [bx+si],ah
00002138  2008              and [bx+si],cl
0000213A  02808080          add al,[bx+si-0x7f80]
0000213E  022A              add ch,[bp+si]
00002140  114188            adc [bx+di-0x78],ax
00002143  41                inc cx
00002144  80418002          add byte [bx+di-0x80],0x2
00002148  2088082A          and [bx+si+0x2a08],cl
0000214C  1102              adc [bp+si],ax
0000214E  2280200A          and al,[bx+si+0xa20]
00002152  41                inc cx
00002153  08804180          or [bx+si-0x7fbf],al
00002157  124182            adc al,[bx+di-0x7e]
0000215A  88804122          mov [bx+si+0x2241],al
0000215E  2202              and al,[bp+si]
00002160  A22012            mov [0x1220],al
00002163  0220              add ah,[bx+si]
00002165  43                inc bx
00002166  80422002          add byte [bp+si+0x20],0x2
0000216A  1241FE            adc al,[bx+di-0x2]
0000216D  BEF0FB            mov si,0xfbf0
00002170  EAEEEAEBFA        jmp word 0xfaeb:word 0xeaee
00002175  EA11020A11        jmp word 0x110a:word 0x211
0000217A  A0A011            mov al,[0x11a0]
0000217D  A02E41            mov al,[0x412e]
00002180  2A8A1141          sub cl,[bp+si+0x4111]
00002184  2A20              sub ah,[bx+si]
00002186  80800B8028        add byte [bx+si-0x7ff5],0x28
0000218B  41                inc cx
0000218C  0A0A              or cl,[bp+si]
0000218E  114120            adc [bx+di+0x20],ax
00002191  82                db 0x82
00002192  8080024108        add byte [bx+si+0x4102],0x8
00002197  41                inc cx
00002198  080A              or [bp+si],cl
0000219A  114282            adc [bp+si-0x7e],ax
0000219D  42                inc dx
0000219E  02440A            add al,[si+0xa]
000021A1  114502            adc [di+0x2],ax
000021A4  44                inc sp
000021A5  0A11              or dl,[bx+di]
000021A7  4A                dec dx
000021A8  0A11              or dl,[bx+di]
000021AA  4A                dec dx
000021AB  0A11              or dl,[bx+di]
000021AD  02490A            add cl,[bx+di+0xa]
000021B0  1102              adc [bp+si],ax
000021B2  49                dec cx
000021B3  2A11              sub dl,[bx+di]
000021B5  41                inc cx
000021B6  88FA              mov dl,bh
000021B8  EAAEBAAEAF        jmp word 0xafae:word 0xbaae
000021BD  1402              adc al,0x2
000021BF  0311              add dx,[bx+di]
000021C1  A83A              test al,0x3a
000021C3  BA2241            mov dx,0x4122
000021C6  A21341            mov [0x4113],al
000021C9  0E                push cs
000021CA  AE                scasb
000021CB  800A28            or byte [bp+si],0x28
000021CE  80410802          add byte [bx+di+0x8],0x2
000021D2  1202              adc al,[bp+si]
000021D4  3AA8410A          cmp ch,[bx+si+0xa41]
000021D8  43                inc bx
000021D9  08413A            or [bx+di+0x3a],al
000021DC  11412A            adc [bx+di+0x2a],ax
000021DF  A04102            mov al,[0x241]
000021E2  44                inc sp
000021E3  E00E              loopne 0x21f3
000021E5  1141E8            adc [bx+di-0x18],ax
000021E8  A843              test al,0x43
000021EA  024108            add al,[bx+di+0x8]
000021ED  A00A11            mov al,[0x110a]
000021F0  41                inc cx
000021F1  EC                in al,dx
000021F2  80418043          add byte [bx+di-0x80],0x43
000021F6  384211            cmp [bp+si+0x11],al
000021F9  41                inc cx
000021FA  EA80024711        jmp word 0x1147:word 0x280
000021FF  03A08048          add sp,[bx+si+0x4880]
00002203  1103              adc [bp+di],ax
00002205  8080458042        add byte [bx+si-0x7fbb],0x42
0000220A  1103              adc [bp+di],ax
0000220C  83410A42          add word [bx+di+0xa],0x42
00002210  204411            and [si+0x11],al
00002213  0382418A          add ax,[bp+si-0x75bf]
00002217  43                inc bx
00002218  084202            or [bp+si+0x2],al
0000221B  1103              adc [bp+di],ax
0000221D  C24180            ret word 0x8041
00002220  41                inc cx
00002221  024402            add al,[si+0x2]
00002224  1103              adc [bp+di],ax
00002226  44                inc sp
00002227  0A804302          or al,[bx+si+0x243]
0000222B  11430A            adc [bp+di+0xa],ax
0000222E  41                inc cx
0000222F  0202              add al,[bp+si]
00002231  42                inc dx
00002232  380A              cmp [bp+si],cl
00002234  114580            adc [di-0x80],ax
00002237  3A423A            cmp al,[bp+si+0x3a]
0000223A  0A11              or dl,[bx+di]
0000223C  45                inc bp
0000223D  2CE8              sub al,0xe8
0000223F  41                inc cx
00002240  03EF              add bp,di
00002242  0A11              or dl,[bx+di]
00002244  45                inc bp
00002245  0AA04102          or ah,[bx+si+0x241]
00002249  BF0A11            mov di,0x110a
0000224C  084108            or [bx+di+0x8],al
0000224F  41                inc cx
00002250  A0440F            mov al,[0xf44]
00002253  0211              add dl,[bx+di]
00002255  41                inc cx
00002256  80A8412045        sub byte [bx+si+0x2041],0x45
0000225B  0211              add dl,[bx+di]
0000225D  08412A            or [bx+di+0x2a],al
00002260  48                dec ax
00002261  1102              adc [bp+si],ax
00002263  41                inc cx
00002264  88440A            mov [si+0xa],al
00002267  43                inc bx
00002268  114102            adc [bx+di+0x2],ax
0000226B  8A482A            mov cl,[bx+si+0x2a]
0000226E  41                inc cx
0000226F  0A02              or al,[bp+si]
00002271  02472A            add al,[bx+0x2a]
00002274  43                inc bx
00002275  8A470A            mov al,[bx+0xa]
00002278  42                inc dx
00002279  0A08              or cl,[bx+si]
0000227B  42                inc dx
0000227C  0802              or [bp+si],al
0000227E  43                inc bx
0000227F  0A4208            or al,[bp+si+0x8]
00002282  2043E0            and [bp+di-0x20],al
00002285  084202            or [bp+si+0x2],al
00002288  47                inc di
00002289  A00842            mov al,[0x4208]
0000228C  82                db 0x82
0000228D  024902            add cl,[bx+di+0x2]
00002290  41                inc cx
00002291  08804408          or [bx+si+0x844],al
00002295  024228            add al,[bp+si+0x28]
00002298  800249            add byte [bp+si],0x49
0000229B  8802              mov [bp+si],al
0000229D  41                inc cx
0000229E  0843A8            or [bp+di-0x58],al
000022A1  41                inc cx
000022A2  802042            and byte [bx+si],0x42
000022A5  0A4780            or al,[bx-0x80]
000022A8  204211            and [bp+si+0x11],al
000022AB  41                inc cx
000022AC  82                db 0x82
000022AD  2042A8            and [bp+si-0x58],al
000022B0  45                inc bp
000022B1  11410A            adc [bx+di+0xa],ax
000022B4  28422A            sub [bp+si+0x2a],al
000022B7  43                inc bx
000022B8  024111            add al,[bx+di+0x11]
000022BB  42                inc dx
000022BC  204102            and [bx+di+0x2],al
000022BF  0802              or [bp+si],al
000022C1  42                inc dx
000022C2  08412A            or [bx+di+0x2a],al
000022C5  41                inc cx
000022C6  A08841            mov al,[0x4188]
000022C9  024102            add al,[bx+di+0x2]
000022CC  80410841          add byte [bx+di+0x8],0x41
000022D0  2A410A            sub al,[bx+di+0xa]
000022D3  43                inc bx
000022D4  88828041          mov [bp+si+0x4180],al
000022D8  08412A            or [bx+di+0x2a],al
000022DB  084480            or [si-0x80],al
000022DE  41                inc cx
000022DF  80410841          add byte [bx+di+0x8],0x41
000022E3  112A              adc [bp+si],bp
000022E5  80448042          add byte [si-0x80],0x42
000022E9  0802              or [bp+si],al
000022EB  1128              adc [bx+si],bp
000022ED  02804102          add al,[bx+si+0x241]
000022F1  42                inc dx
000022F2  02800202          add al,[bx+si+0x202]
000022F6  1120              adc [bx+si],sp
000022F8  2022              and [bp+si],ah
000022FA  800241            add byte [bp+si],0x41
000022FD  800241            add byte [bp+si],0x41
00002300  02410A            add al,[bx+di+0xa]
00002303  41                inc cx
00002304  800280            add byte [bp+si],0x80
00002307  0241C0            add al,[bx+di-0x40]
0000230A  42                inc dx
0000230B  02412A            add al,[bx+di+0x2a]
0000230E  020A              add cl,[bp+si]
00002310  80410241          add byte [bx+di+0x2],0x41
00002314  80442A41          add byte [si+0x2a],0x41
00002318  0A02              or al,[bp+si]
0000231A  2008              and [bx+si],cl
0000231C  20804411          and [bx+si+0x1144],al
00002320  42                inc dx
00002321  08800A80          or [bx+si-0x7ff6],al
00002325  80410241          add byte [bx+di+0x2],0x41
00002329  2011              and [bx+di],dl
0000232B  024102            add al,[bx+di+0x2]
0000232E  41                inc cx
0000232F  0220              add ah,[bx+si]
00002331  80410241          add byte [bx+di+0x2],0x41
00002335  2011              and [bx+di],dl
00002337  41                inc cx
00002338  A888              test al,0x88
0000233A  41                inc cx
0000233B  080A              or [bp+si],cl
0000233D  42                inc dx
0000233E  8A02              mov al,[bp+si]
00002340  82                db 0x82
00002341  114102            adc [bx+di+0x2],ax
00002344  42                inc dx
00002345  0211              add dl,[bx+di]
00002347  804122A2          add byte [bx+di+0x22],0xa2
0000234B  0211              add dl,[bx+di]
0000234D  46                inc si
0000234E  A04288            mov al,[0x8842]
00002351  82                db 0x82
00002352  1108              adc [bx+si],cx
00002354  88888AA0          mov [bx+si-0x5f76],cl
00002358  41                inc cx
00002359  0880420A          or [bx+si+0xa42],al
0000235D  1122              adc [bp+si],sp
0000235F  2CF0              sub al,0xf0
00002361  FC                cld
00002362  43                inc bx
00002363  2241A0            and al,[bx+di-0x60]
00002366  0A11              or dl,[bx+di]
00002368  080A              or [bp+si],cl
0000236A  12A04102          adc ah,[bx+si+0x241]
0000236E  41                inc cx
0000236F  802A12            sub byte [bp+si],0x12
00002372  23AE0EBA          and bp,[bp-0x45f2]
00002376  42                inc dx
00002377  024120            add al,[bx+di+0x20]
0000237A  2A12              sub dl,[bp+si]
0000237C  0E                push cs
0000237D  EA08284408        jmp word 0x844:word 0x2808
00002382  2A12              sub dl,[bp+si]
00002384  2AA80828          sub ch,[bx+si+0x2808]
00002388  44                inc sp
00002389  222A              and ch,[bp+si]
0000238B  128A8008          adc cl,[bp+si+0x880]
0000238F  284320            sub [bp+di+0x20],al
00002392  082A              or [bp+si],ch
00002394  120A              adc cl,[bp+si]
00002396  41                inc cx
00002397  084480            or [si-0x80],al
0000239A  41                inc cx
0000239B  0802              or [bp+si],al
0000239D  110A              adc [bp+si],cx
0000239F  41                inc cx
000023A0  084302            or [bp+di+0x2],al
000023A3  204311            and [bp+di+0x11],al
000023A6  0A4108            or al,[bx+di+0x8]
000023A9  41                inc cx
000023AA  024122            add al,[bx+di+0x22]
000023AD  43                inc bx
000023AE  022A              add ch,[bp+si]
000023B0  0A0C              or cl,[si]
000023B2  42                inc dx
000023B3  0E                push cs
000023B4  41                inc cx
000023B5  2802              sub [bp+si],al
000023B7  20A0082A          and [bx+si+0x2a08],ah
000023BB  0A430A            or al,[bp+di+0xa]
000023BE  42                inc dx
000023BF  280A              sub [bp+si],cl
000023C1  808A2A4208        or byte [bp+si+0x422a],0x8
000023C6  41                inc cx
000023C7  0802              or [bp+si],al
000023C9  42                inc dx
000023CA  2220              and ah,[bx+si]
000023CC  202A              and [bp+si],ch
000023CE  43                inc bx
000023CF  204102            and [bx+di+0x2],al
000023D2  802008            and byte [bx+si],0x8
000023D5  42                inc dx
000023D6  114120            adc [bx+di+0x20],ax
000023D9  41                inc cx
000023DA  E041              loopne 0x241d
000023DC  02A04302          add ah,[bx+si+0x243]
000023E0  114120            adc [bx+di+0x20],ax
000023E3  03A08002          add sp,[bx+si+0x280]
000023E7  A843              test al,0x43
000023E9  0211              add dl,[bx+di]
000023EB  41                inc cx
000023EC  2002              and [bp+si],al
000023EE  80421180          add byte [bp+si+0x11],0x80
000023F2  43                inc bx
000023F3  114502            adc [di+0x2],ax
000023F6  8A11              mov dl,[bx+di]
000023F8  43                inc bx
000023F9  2A4680            sub al,[bp-0x80]
000023FC  A2130A            mov [0xa13],al
000023FF  45                inc bp
00002400  0220              add ah,[bx+si]
00002402  82                db 0x82
00002403  2A8A110A          sub cl,[bp+si+0xa11]
00002407  03FF              add di,di
00002409  BFEBEE            mov di,0xeeeb
0000240C  B88080            mov ax,0x8080
0000240F  02A28A0A          add ah,[bp+si+0xa8a]
00002413  2AB2B211          sub dh,[bp+si+0x11b2]
00002417  A828              test al,0x28
00002419  204102            and [bx+di+0x2],al
0000241C  A0820A            mov al,[0xa82]
0000241F  2AAFEA8A          sub ch,[bx-0x7516]
00002423  A841              test al,0x41
00002425  80410280          add byte [bx+di+0x2],0x80
00002429  41                inc cx
0000242A  0A2A              or ch,[bp+si]
0000242C  114102            adc [bx+di+0x2],ax
0000242F  80438280          add byte [bp+di-0x7e],0x80
00002433  41                inc cx
00002434  0A22              or ah,[bp+si]
00002436  8A4102            mov al,[bx+di+0x2]
00002439  42                inc dx
0000243A  80418042          add byte [bx+di-0x80],0x42
0000243E  0A20              or ah,[bx+si]
00002440  0A4402            or al,[si+0x2]
00002443  80430A20          add byte [bp+di+0xa],0x20
00002447  0A4402            or al,[si+0x2]
0000244A  80410241          add byte [bx+di+0x2],0x41
0000244E  0A20              or ah,[bx+si]
00002450  0A4780            or al,[bx-0x80]
00002453  41                inc cx
00002454  0A4108            or al,[bx+di+0x8]
00002457  47                inc di
00002458  80410A4B          add byte [bx+di+0xa],0x4b
0000245C  0A4B0A            or cl,[bp+di+0xa]
0000245F  4B                dec bx
00002460  0A2A              or ch,[bp+si]
00002462  11AE12A0          adc [bp-0x5fee],bp
00002466  41                inc cx
00002467  0A430A            or al,[bp+di+0xa]
0000246A  02BA0A0B          add bh,[bp+si+0xb0a]
0000246E  82                db 0x82
0000246F  A0410A            mov al,[0xa41]
00002472  41                inc cx
00002473  80020A            add byte [bp+si],0xa
00002476  082A              or [bp+si],ch
00002478  41                inc cx
00002479  024120            add al,[bx+di+0x20]
0000247C  45                inc bp
0000247D  0A0C              or cl,[si]
0000247F  0E                push cs
00002480  43                inc bx
00002481  2008              and [bx+si],cl
00002483  43                inc bx
00002484  020A              add cl,[bp+si]
00002486  080A              or [bp+si],cl
00002488  43                inc bx
00002489  2028              and [bx+si],ch
0000248B  41                inc cx
0000248C  084128            or [bx+di+0x28],al
0000248F  0A08              or cl,[bx+si]
00002491  084420            or [si+0x20],al
00002494  41                inc cx
00002495  084122            or [bx+di+0x22],al
00002498  0A08              or cl,[bx+si]
0000249A  47                inc di
0000249B  0A4108            or al,[bx+di+0x8]
0000249E  0A08              or cl,[bx+si]
000024A0  46                inc si
000024A1  A00E41            mov al,[0x410e]
000024A4  020A              add cl,[bp+si]
000024A6  2046A0            and [bp-0x60],al
000024A9  0E                push cs
000024AA  41                inc cx
000024AB  880A              mov [bp+si],cl
000024AD  284102            sub [bx+di+0x2],al
000024B0  80410241          add byte [bx+di+0x2],0x41
000024B4  E00A              loopne 0x24c0
000024B6  0A20              or ah,[bx+si]
000024B8  0A28              or ch,[bx+si]
000024BA  0802              or [bp+si],al
000024BC  802802            sub byte [bx+si],0x2
000024BF  0211              add dl,[bx+di]
000024C1  8888880A          mov [bx+si+0xa88],cl
000024C5  28420A            sub [bp+si+0xa],al
000024C8  80028A            add byte [bp+si],0x8a
000024CB  A843              test al,0x43
000024CD  0A2A              or ch,[bp+si]
000024CF  801228            adc byte [bp+si],0x28
000024D2  0311              add dx,[bx+di]
000024D4  44                inc sp
000024D5  2A4502            sub al,[di+0x2]
000024D8  A00202            mov al,[0x202]
000024DB  41                inc cx
000024DC  2A11              sub dl,[bx+di]
000024DE  20410A            and [bx+di+0xa],al
000024E1  11A24211          adc [bp+si+0x1142],sp
000024E5  A888              test al,0x88
000024E7  2A11              sub dl,[bx+di]
000024E9  084388            or [bp+di-0x78],al
000024EC  45                inc bp
000024ED  0211              add dl,[bx+di]
000024EF  084202            or [bp+si+0x2],al
000024F2  20A02AA0          and [bx+si-0x5fd6],ah
000024F6  0280A811          add al,[bx+si+0x11a8]
000024FA  024402            add al,[si+0x2]
000024FD  0A4102            or al,[bx+di+0x2]
00002500  41                inc cx
00002501  2A2A              sub ch,[bp+si]
00002503  41                inc cx
00002504  E828A8            call 0xcd2f
00002507  41                inc cx
00002508  02800802          add al,[bx+si+0x208]
0000250C  2002              and [bp+si],al
0000250E  2A03              sub al,[bp+di]
00002510  A04120            mov al,[0x2041]
00002513  42                inc dx
00002514  A02280            mov al,[0x8022]
00002517  42                inc dx
00002518  2A03              sub al,[bp+di]
0000251A  80442041          add byte [si+0x20],0x41
0000251E  800241            add byte [bp+si],0x41
00002521  2A0E4520          sub cl,[0x2045]
00002525  42                inc dx
00002526  02412A            add al,[bx+di+0x2a]
00002529  024308            add al,[bp+di+0x8]
0000252C  42                inc dx
0000252D  8042022A          add byte [bp+si+0x2],0x2a
00002531  024188            add al,[bx+di-0x78]
00002534  44                inc sp
00002535  80420A2A          add byte [bp+si+0xa],0x2a
00002539  08410A            or [bx+di+0xa],al
0000253C  43                inc bx
0000253D  0808              or [bx+si],cl
0000253F  42                inc dx
00002540  022A              add ch,[bp+si]
00002542  084408            or [si+0x8],al
00002545  0808              or [bx+si],cl
00002547  43                inc bx
00002548  2A08              sub cl,[bx+si]
0000254A  42                inc dx
0000254B  800842            or byte [bx+si],0x42
0000254E  80432A08          add byte [bp+di+0x2a],0x8
00002552  41                inc cx
00002553  20A04108          and [bx+si+0x841],ah
00002557  43                inc bx
00002558  A0412A            mov al,[0x2a41]
0000255B  0841A0            or [bx+di-0x60],al
0000255E  A02002            mov al,[0x220]
00002561  43                inc bx
00002562  A0412A            mov al,[0x2a41]
00002565  024320            add al,[bp+di+0x20]
00002568  42                inc dx
00002569  20804102          and [bx+si+0x241],al
0000256D  2A0A              sub cl,[bp+si]
0000256F  46                inc si
00002570  204202            and [bp+si+0x2],al
00002573  2A08              sub cl,[bx+si]
00002575  44                inc sp
00002576  284420            sub [si+0x20],al
00002579  2A4102            sub al,[bx+di+0x2]
0000257C  42                inc dx
0000257D  2002              and [bp+si],al
0000257F  45                inc bp
00002580  2A08              sub cl,[bx+si]
00002582  42                inc dx
00002583  8808              mov [bx+si],cl
00002585  42                inc dx
00002586  0802              or [bp+si],al
00002588  42                inc dx
00002589  2A02              sub al,[bp+si]
0000258B  41                inc cx
0000258C  802808            sub byte [bx+si],0x8
0000258F  43                inc bx
00002590  024211            add al,[bp+si+0x11]
00002593  41                inc cx
00002594  024502            add al,[di+0x2]
00002597  43                inc bx
00002598  2A4108            sub al,[bx+di+0x8]
0000259B  0202              add al,[bp+si]
0000259D  80462A41          add byte [bp+0x2a],0x41
000025A1  0282A202          add al,[bp+si+0x2a2]
000025A5  0202              add al,[bp+si]
000025A7  2042A0            and [bp+si-0x60],al
000025AA  2A08              sub cl,[bx+si]
000025AC  8080800241        add byte [bx+si+0x280],0x41
000025B1  0208              add cl,[bx+si]
000025B3  8041A02A          add byte [bx+di-0x60],0x2a
000025B7  41                inc cx
000025B8  08824180          or [bp+si-0x7fbf],al
000025BC  41                inc cx
000025BD  280A              sub [bp+si],cl
000025BF  41                inc cx
000025C0  20412A            and [bx+di+0x2a],al
000025C3  0820              or [bx+si],ah
000025C5  8042020A          add byte [bp+si+0x2],0xa
000025C9  084220            or [bp+si+0x20],al
000025CC  2A02              sub al,[bp+si]
000025CE  204180            and [bx+di-0x80],al
000025D1  204122            and [bx+di+0x22],al
000025D4  43                inc bx
000025D5  202A              and [bp+si],ch
000025D7  088802A2          or [bx+si-0x5dfe],cl
000025DB  42                inc dx
000025DC  20442A            and [si+0x2a],al
000025DF  41                inc cx
000025E0  284122            sub [bx+di+0x22],al
000025E3  A041A0            mov al,[0xa041]
000025E6  0A432A            or al,[bp+di+0x2a]
000025E9  41                inc cx
000025EA  82                db 0x82
000025EB  41                inc cx
000025EC  0822              or [bp+si],ah
000025EE  41                inc cx
000025EF  08828042          or [bp+si+0x4280],al
000025F3  114B11            adc [bp+di+0x11],cx
000025F6  41                inc cx
000025F7  0AA0A0A0          or ah,[bx+si-0x5f60]
000025FB  110A              adc [bp+si],cx
000025FD  A811              test al,0x11
000025FF  800211            add byte [bp+si],0x11
00002602  41                inc cx
00002603  2A4328            sub al,[bp+di+0x28]
00002606  41                inc cx
00002607  2882A041          sub [bp+si+0x41a0],al
0000260B  1102              adc [bp+si],ax
0000260D  A0080A            mov al,[0xa08]
00002610  43                inc bx
00002611  02432A            add al,[bp+di+0x2a]
00002614  022A              add ch,[bp+si]
00002616  41                inc cx
00002617  110A              adc [bp+si],cx
00002619  8A08              mov cl,[bx+si]
0000261B  28430A            sub [bp+di+0xa],al
0000261E  033F              add di,[bx]
00002620  EB3F              jmp 0x2661
00002622  FF8BBAE8          dec word [bp+di-0x1746]
00002626  EAFA110A0A        jmp word 0xa0a:word 0x11fa
0000262B  11BA8F11          adc [bp+si+0x118f],di
0000262F  E8EAA8            call 0xcf1c
00002632  AB                stosw
00002633  11410A            adc [bx+di+0xa],ax
00002636  3ABAA80A          cmp bh,[bp+si+0xaa8]
0000263A  11A04282          adc [bx+si-0x7dbe],sp
0000263E  BA080A            mov dx,0xa08
00002641  0A11              or dl,[bx+di]
00002643  41                inc cx
00002644  02E8              add ch,al
00002646  42                inc dx
00002647  02802808          add al,[bx+si+0x828]
0000264B  8A3B              mov bh,[bp+di]
0000264D  804102E0          add byte [bx+di+0x2],0xe0
00002651  44                inc sp
00002652  28410A            sub [bx+di+0xa],al
00002655  3B800802          cmp ax,[bx+si+0x208]
00002659  A08042            mov al,[0x4280]
0000265C  80428A0E          add byte [bp+si-0x76],0xe
00002660  804103A0          add byte [bx+di+0x3],0xa0
00002664  41                inc cx
00002665  80418020          add byte [bx+di-0x80],0x20
00002669  208A3A80          and [bp+si-0x7fc6],cl
0000266D  41                inc cx
0000266E  02E0              add ah,al
00002670  41                inc cx
00002671  8043A00A          add byte [bp+di-0x60],0xa
00002675  3E                ds
00002676  82                db 0x82
00002677  0802              or [bp+si],al
00002679  A00241            mov al,[0x4102]
0000267C  2080420A          and [bx+si+0xa42],al
00002680  0A02              or al,[bp+si]
00002682  0841A0            or [bx+di-0x60],al
00002685  024208            add al,[bp+si+0x8]
00002688  08410A            or [bx+di+0xa],al
0000268B  28410E            sub [bx+di+0xe],al
0000268E  42                inc dx
0000268F  02802043          add al,[bx+si+0x4320]
00002693  0A4208            or al,[bp+si+0x8]
00002696  42                inc dx
00002697  82                db 0x82
00002698  A842              test al,0x42
0000269A  02410A            add al,[bx+di+0xa]
0000269D  42                inc dx
0000269E  8C4280            mov word [bp+si-0x80],es
000026A1  A02043            mov al,[0x4320]
000026A4  0A4208            or al,[bp+si+0x8]
000026A7  45                inc bp
000026A8  3820              cmp [bx+si],ah
000026AA  41                inc cx
000026AB  8A4108            mov al,[bx+di+0x8]
000026AE  0A4220            or al,[bp+si+0x20]
000026B1  42                inc dx
000026B2  3A4122            cmp al,[bx+di+0x22]
000026B5  0A4108            or al,[bx+di+0x8]
000026B8  0A4380            or al,[bp+di-0x80]
000026BB  800A41            or byte [bp+si],0x41
000026BE  200A              and [bp+si],cl
000026C0  41                inc cx
000026C1  380A              cmp [bp+si],cl
000026C3  41                inc cx
000026C4  80418041          add byte [bx+di-0x80],0x41
000026C8  384102            cmp [bx+di+0x2],al
000026CB  0A4120            or al,[bx+di+0x20]
000026CE  0A4220            or al,[bp+si+0x20]
000026D1  204138            and [bx+di+0x38],al
000026D4  0208              add cl,[bx+si]
000026D6  8A4120            mov al,[bx+di+0x20]
000026D9  084122            or [bx+di+0x22],al
000026DC  204238            and [bp+si+0x38],al
000026DF  41                inc cx
000026E0  0A0A              or cl,[bp+si]
000026E2  41                inc cx
000026E3  200A              and [bp+si],cl
000026E5  41                inc cx
000026E6  024180            add al,[bx+di-0x80]
000026E9  0828              or [bx+si],ch
000026EB  41                inc cx
000026EC  080A              or [bp+si],cl
000026EE  02412A            add al,[bx+di+0x2a]
000026F1  41                inc cx
000026F2  024208            add al,[bp+si+0x8]
000026F5  3B4122            cmp ax,[bx+di+0x22]
000026F8  0A02              or al,[bp+si]
000026FA  41                inc cx
000026FB  384182            cmp [bx+di-0x7e],al
000026FE  42                inc dx
000026FF  282A              sub [bp+si],ch
00002701  41                inc cx
00002702  080A              or [bp+si],cl
00002704  0A20              or ah,[bx+si]
00002706  28410B            sub [bx+di+0xb],al
00002709  43                inc bx
0000270A  3A41A0            cmp al,[bx+di-0x60]
0000270D  0A0A              or cl,[bp+si]
0000270F  280A              sub [bp+si],cl
00002711  41                inc cx
00002712  0A804180          or al,[bx+si-0x7fbf]
00002716  E84188            call 0xaf5a
00002719  0A0A              or cl,[bp+si]
0000271B  222E410B          and ch,[0xb41]
0000271F  82                db 0x82
00002720  8088EA0A20        or byte [bx+si+0xaea],0x20
00002725  0A0A              or cl,[bp+si]
00002727  E02E              loopne 0x2757
00002729  41                inc cx
0000272A  0E                push cs
0000272B  0AEE              or ch,dh
0000272D  0A880888          or cl,[bx+si-0x77f8]
00002731  0A0A              or cl,[bp+si]
00002733  20EA              and dl,ch
00002735  41                inc cx
00002736  A88B              test al,0x8b
00002738  A2A811            mov [0x11a8],al
0000273B  41                inc cx
0000273C  200A              and [bp+si],cl
0000273E  0AE0              or ah,al
00002740  8A823A03          mov al,[bp+si+0x33a]
00002744  88BA8880          mov [bp+si-0x7f78],bh
00002748  880A              mov [bp+si],cl
0000274A  0A20              or ah,[bx+si]
0000274C  EA02BA88A0        jmp word 0xa088:word 0xba02
00002751  CA0A20            retf word 0x200a
00002754  200A              and [bp+si],cl
00002756  0AB0AC12          or dh,[bx+si+0x12ac]
0000275A  0A2A              or ch,[bp+si]
0000275C  E28A              loop 0x26e8
0000275E  20880A0A          and [bx+si+0xa0a],cl
00002762  A2AE22            mov [0x22ae],al
00002765  E882A2            call 0xc9ea
00002768  CA2882            retf word 0x8228
0000276B  200A              and [bp+si],cl
0000276D  0AE2              or ah,dl
0000276F  A822              test al,0x22
00002771  EA0811A888        jmp word 0x88a8:word 0x1108
00002776  A0080A            mov al,[0xa08]
00002779  0BA8A23A          or bp,[bx+si+0x3aa2]
0000277D  A8A3              test al,0xa3
0000277F  A882              test al,0x82
00002781  2222              and ah,[bp+si]
00002783  41                inc cx
00002784  0A0A              or cl,[bp+si]
00002786  11888A22          adc [bx+si+0x228a],cx
0000278A  02A22288          add ah,[bp+si-0x77de]
0000278E  88410A            mov [bx+di+0xa],al
00002791  0822              or [bp+si],ah
00002793  202A              and [bp+si],ch
00002795  82                db 0x82
00002796  2002              and [bp+si],al
00002798  0820              or [bx+si],ah
0000279A  42                inc dx
0000279B  0A00              or al,[bx+si]
0000279D  DF                db 0xdf
0000279E  DF                db 0xdf
0000279F  DF                db 0xdf
000027A0  DB5F5F            fistp dword [bx+0x5f]
000027A3  5F                pop di
000027A4  5F                pop di
000027A5  5F                pop di
000027A6  5F                pop di
000027A7  5F                pop di
000027A8  5F                pop di
000027A9  5F                pop di
000027AA  5F                pop di
000027AB  54                push sp
000027AC  AF                scasw
000027AD  D5F2              aad byte 0xf2
000027AF  AF                scasw
000027B0  D5F2              aad byte 0xf2
000027B2  59                pop cx
000027B3  4F                dec di
000027B4  4A                dec dx
000027B5  0257AF            add dl,[bx-0x51]
000027B8  D5F2              aad byte 0xf2
000027BA  AF                scasw
000027BB  D5F2              aad byte 0xf2
000027BD  59                pop cx
000027BE  4F                dec di
000027BF  4A                dec dx
000027C0  0257AF            add dl,[bx-0x51]
000027C3  45                inc bp
000027C4  F2AF              repne scasw
000027C6  45                inc bp
000027C7  F259              repne pop cx
000027C9  4F                dec di
000027CA  4A                dec dx
000027CB  0257AF            add dl,[bx-0x51]
000027CE  45                inc bp
000027CF  F2AF              repne scasw
000027D1  45                inc bp
000027D2  F259              repne pop cx
000027D4  4F                dec di
000027D5  4A                dec dx
000027D6  0257AF            add dl,[bx-0x51]
000027D9  45                inc bp
000027DA  F2AF              repne scasw
000027DC  45                inc bp
000027DD  F259              repne pop cx
000027DF  4F                dec di
000027E0  4A                dec dx
000027E1  0257AF            add dl,[bx-0x51]
000027E4  45                inc bp
000027E5  F2AF              repne scasw
000027E7  45                inc bp
000027E8  F259              repne pop cx
000027EA  4F                dec di
000027EB  4A                dec dx
000027EC  0257AF            add dl,[bx-0x51]
000027EF  45                inc bp
000027F0  F2AF              repne scasw
000027F2  45                inc bp
000027F3  F259              repne pop cx
000027F5  4F                dec di
000027F6  4A                dec dx
000027F7  0257AF            add dl,[bx-0x51]
000027FA  45                inc bp
000027FB  F2AF              repne scasw
000027FD  45                inc bp
000027FE  F259              repne pop cx
00002800  C0453045          rol byte [di+0x30],byte 0x45
00002804  0C45              or al,0x45
00002806  0346C2            add ax,[bp-0x3e]
00002809  AF                scasw
0000280A  D5F2              aad byte 0xf2
0000280C  AF                scasw
0000280D  45                inc bp
0000280E  F2AF              repne scasw
00002810  45                inc bp
00002811  F259              repne pop cx
00002813  C0                db 0xc0
00002814  300C              xor [si],cl
00002816  0341C0            add ax,[bx+di-0x40]
00002819  300C              xor [si],cl
0000281B  0341C0            add ax,[bx+di-0x40]
0000281E  300C              xor [si],cl
00002820  0341C0            add ax,[bx+di-0x40]
00002823  300C              xor [si],cl
00002825  0341C0            add ax,[bx+di-0x40]
00002828  300C              xor [si],cl
0000282A  0341C2            add ax,[bx+di-0x3e]
0000282D  AF                scasw
0000282E  D5F2              aad byte 0xf2
00002830  AF                scasw
00002831  45                inc bp
00002832  F2AF              repne scasw
00002834  45                inc bp
00002835  F259              repne pop cx
00002837  DF                db 0xdf
00002838  DAC2              fcmovb st2
0000283A  AF                scasw
0000283B  45                inc bp
0000283C  F2AF              repne scasw
0000283E  45                inc bp
0000283F  F2AF              repne scasw
00002841  45                inc bp
00002842  F25F              repne pop di
00002844  5F                pop di
00002845  55                push bp
00002846  AF                scasw
00002847  45                inc bp
00002848  F2AF              repne scasw
0000284A  45                inc bp
0000284B  F2AF              repne scasw
0000284D  45                inc bp
0000284E  F25F              repne pop di
00002850  5F                pop di
00002851  55                push bp
00002852  AF                scasw
00002853  45                inc bp
00002854  F2AF              repne scasw
00002856  45                inc bp
00002857  F2AF              repne scasw
00002859  45                inc bp
0000285A  F25F              repne pop di
0000285C  5F                pop di
0000285D  55                push bp
0000285E  AF                scasw
0000285F  45                inc bp
00002860  F2AF              repne scasw
00002862  45                inc bp
00002863  F2AF              repne scasw
00002865  45                inc bp
00002866  F25F              repne pop di
00002868  5F                pop di
00002869  55                push bp
0000286A  AF                scasw
0000286B  45                inc bp
0000286C  F2AF              repne scasw
0000286E  45                inc bp
0000286F  F2AF              repne scasw
00002871  45                inc bp
00002872  F25F              repne pop di
00002874  5F                pop di
00002875  55                push bp
00002876  AF                scasw
00002877  45                inc bp
00002878  F2AF              repne scasw
0000287A  45                inc bp
0000287B  F2AF              repne scasw
0000287D  45                inc bp
0000287E  F25F              repne pop di
00002880  5F                pop di
00002881  55                push bp
00002882  AF                scasw
00002883  45                inc bp
00002884  F2AF              repne scasw
00002886  45                inc bp
00002887  F2AF              repne scasw
00002889  45                inc bp
0000288A  F25F              repne pop di
0000288C  5F                pop di
0000288D  55                push bp
0000288E  AF                scasw
0000288F  45                inc bp
00002890  F2AF              repne scasw
00002892  45                inc bp
00002893  F2AF              repne scasw
00002895  45                inc bp
00002896  F25F              repne pop di
00002898  5F                pop di
00002899  55                push bp
0000289A  AF                scasw
0000289B  45                inc bp
0000289C  F2AF              repne scasw
0000289E  45                inc bp
0000289F  F2AF              repne scasw
000028A1  45                inc bp
000028A2  F25F              repne pop di
000028A4  5F                pop di
000028A5  55                push bp
000028A6  AF                scasw
000028A7  45                inc bp
000028A8  F2AF              repne scasw
000028AA  45                inc bp
000028AB  F2AF              repne scasw
000028AD  45                inc bp
000028AE  F25F              repne pop di
000028B0  5F                pop di
000028B1  55                push bp
000028B2  AF                scasw
000028B3  45                inc bp
000028B4  F2AF              repne scasw
000028B6  D5F2              aad byte 0xf2
000028B8  AF                scasw
000028B9  D5F2              aad byte 0xf2
000028BB  5F                pop di
000028BC  5F                pop di
000028BD  55                push bp
000028BE  AF                scasw
000028BF  45                inc bp
000028C0  F2AF              repne scasw
000028C2  D5F2              aad byte 0xf2
000028C4  AF                scasw
000028C5  D5F2              aad byte 0xf2
000028C7  5F                pop di
000028C8  5F                pop di
000028C9  55                push bp
000028CA  AF                scasw
000028CB  45                inc bp
000028CC  F2A04502          repne mov al,[0x245]
000028D0  A04502            mov al,[0x245]
000028D3  5F                pop di
000028D4  5F                pop di
000028D5  55                push bp
000028D6  AF                scasw
000028D7  45                inc bp
000028D8  F25F              repne pop di
000028DA  5F                pop di
000028DB  5F                pop di
000028DC  54                push sp
000028DD  AF                scasw
000028DE  45                inc bp
000028DF  F25F              repne pop di
000028E1  5F                pop di
000028E2  5F                pop di
000028E3  54                push sp
000028E4  AF                scasw
000028E5  45                inc bp
000028E6  F25F              repne pop di
000028E8  5F                pop di
000028E9  5F                pop di
000028EA  54                push sp
000028EB  AF                scasw
000028EC  45                inc bp
000028ED  F25F              repne pop di
000028EF  5F                pop di
000028F0  5F                pop di
000028F1  54                push sp
000028F2  AF                scasw
000028F3  45                inc bp
000028F4  F25F              repne pop di
000028F6  5F                pop di
000028F7  5F                pop di
000028F8  54                push sp
000028F9  AF                scasw
000028FA  D5F2              aad byte 0xf2
000028FC  5F                pop di
000028FD  5F                pop di
000028FE  5F                pop di
000028FF  54                push sp
00002900  AF                scasw
00002901  D5F2              aad byte 0xf2
00002903  5F                pop di
00002904  5F                pop di
00002905  5F                pop di
00002906  54                push sp
00002907  A04502            mov al,[0x245]
0000290A  5F                pop di
0000290B  5F                pop di
0000290C  5F                pop di
0000290D  5F                pop di
0000290E  5F                pop di
0000290F  5F                pop di
00002910  5F                pop di
00002911  5F                pop di
00002912  5F                pop di
00002913  5F                pop di
00002914  5F                pop di
00002915  5F                pop di
00002916  5F                pop di
00002917  5F                pop di
00002918  5F                pop di
00002919  5F                pop di
0000291A  5F                pop di
0000291B  5F                pop di
0000291C  5F                pop di
0000291D  5F                pop di
0000291E  5F                pop di
0000291F  5F                pop di
00002920  5F                pop di
00002921  5F                pop di
00002922  5F                pop di
00002923  5F                pop di
00002924  5F                pop di
00002925  5F                pop di
00002926  5F                pop di
00002927  5F                pop di
00002928  5C                pop sp
00002929  00                db 0x00
