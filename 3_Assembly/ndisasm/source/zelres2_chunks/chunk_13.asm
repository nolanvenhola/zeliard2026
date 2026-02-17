00000000  380D              cmp [di],cl
00000002  0000              add [bx+si],al
00000004  04A0              add al,0xa0
00000006  28A78E06          sub [bx+0x68e],ah
0000000A  2CFF              sub al,0xff
0000000C  BF0080            mov di,0x8000
0000000F  BEE3A8            mov si,0xa8e3
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
00000035  C6061EAD00        mov byte [0xad1e],0x0
0000003A  2EFF160220        call word near [cs:0x2002]
0000003F  2EFF161220        call word near [cs:0x2012]
00000044  BEEEA8            mov si,0xa8ee
00000047  2EFF161020        call word near [cs:0x2010]
0000004C  E85806            call 0x6a7
0000004F  BB600D            mov bx,0xd60
00000052  B93736            mov cx,0x3637
00000055  B0FF              mov al,0xff
00000057  2EFF160020        call word near [cs:0x2000]
0000005C  C60621ADFF        mov byte [0xad21],0xff
00000061  C7061FAD73A7      mov word [0xad1f],0xa773
00000067  C7064CFF89A9      mov word [0xff4c],0xa989
0000006D  2EFF160460        call word near [cs:0x6004]
00000072  B90500            mov cx,0x5
00000075  51                push cx
00000076  C6061AFF00        mov byte [0xff1a],0x0
0000007B  C7064CFF8BA9      mov word [0xff4c],0xa98b
00000081  2EFF160460        call word near [cs:0x6004]
00000086  E8A306            call 0x72c
00000089  803E1AFF3F        cmp byte [0xff1a],0x3f
0000008E  72F6              jc 0x86
00000090  59                pop cx
00000091  E2E2              loop 0x75
00000093  C60621AD00        mov byte [0xad21],0x0
00000098  C7064CFF8DA9      mov word [0xff4c],0xa98d
0000009E  2EFF160460        call word near [cs:0x6004]
000000A3  3CFF              cmp al,0xff
000000A5  7405              jz 0xac
000000A7  E80700            call 0xb1
000000AA  EBF2              jmp 0x9e
000000AC  2EFF264020        jmp word near [cs:0x2040]
000000B1  8AD8              mov bl,al
000000B3  32FF              xor bh,bh
000000B5  03DB              add bx,bx
000000B7  2EFFA7B8A0        jmp word near [cs:bx-0x5f48]
000000BC  C0A0D2A0F3        shl byte [bx+si-0x5f2e],byte 0xf3
000000C1  A5                movsw
000000C2  19A6C606          sbb [bp+0x6c6],sp
000000C6  1AFF              sbb bh,bh
000000C8  00803E1A          add [bx+si+0x1a3e],al
000000CC  FF                db 0xff
000000CD  3C72              cmp al,0x72
000000CF  F9                stc
000000D0  BE2FA8            mov si,0xa82f
000000D3  E94107            jmp 0x817
000000D6  E84A05            call 0x623
000000D9  BB1D28            mov bx,0x281d
000000DC  B9371A            mov cx,0x1a37
000000DF  B0FF              mov al,0xff
000000E1  2EFF160020        call word near [cs:0x2000]
000000E6  C70654FF2028      mov word [0xff54],0x2820
000000EC  C60652FF05        mov byte [0xff52],0x5
000000F1  C60653FF05        mov byte [0xff53],0x5
000000F6  B90500            mov cx,0x5
000000F9  BE0CA9            mov si,0xa90c
000000FC  2EFF160E60        call word near [cs:0x600e]
00000101  C60656FF00        mov byte [0xff56],0x0
00000106  8A1E1EAD          mov bl,[0xad1e]
0000010A  2EFF161060        call word near [cs:0x6010]
0000010F  7302              jnc 0x113
00000111  32DB              xor bl,bl
00000113  881E1EAD          mov [0xad1e],bl
00000117  32FF              xor bh,bh
00000119  03DB              add bx,bx
0000011B  FFA71BA1          jmp word near [bx-0x5ee5]
0000011F  25A14B            and ax,0x4ba1
00000122  A13BA2            mov ax,[0xa23b]
00000125  D0A395A5          shl byte [bp+di-0x5a6b],0x0
00000129  E8F704            call 0x623
0000012C  C7064CFFD4AC      mov word [0xff4c],0xacd4
00000132  F60624ADFF        test byte [0xad24],0xff
00000137  7401              jz 0x13a
00000139  C3                ret
0000013A  C7064CFF9DAC      mov word [0xff4c],0xac9d
00000140  F60623ADFF        test byte [0xad23],0xff
00000145  7401              jz 0x148
00000147  C3                ret
00000148  C7064CFF5AAC      mov word [0xff4c],0xac5a
0000014E  C3                ret
0000014F  E8D104            call 0x623
00000152  C60621AD00        mov byte [0xad21],0x0
00000157  BEBBA8            mov si,0xa8bb
0000015A  E8F805            call 0x755
0000015D  F7068B00FFFF      test word [0x8b],0xffff
00000163  C7064CFFB2A9      mov word [0xff4c],0xa9b2
00000169  7501              jnz 0x16c
0000016B  C3                ret
0000016C  8A1E06C0          mov bl,[0xc006]
00000170  32FF              xor bh,bh
00000172  FECB              dec bl
00000174  03DB              add bx,bx
00000176  8A87FAA8          mov al,[bx-0x5706]
0000017A  A225AD            mov [0xad25],al
0000017D  8A87FBA8          mov al,[bx-0x5705]
00000181  A226AD            mov [0xad26],al
00000184  C7064CFFD9A9      mov word [0xff4c],0xa9d9
0000018A  2EFF160460        call word near [cs:0x6004]
0000018F  A025AD            mov al,[0xad25]
00000192  0430              add al,0x30
00000194  A227AD            mov [0xad27],al
00000197  C7064CFF27AD      mov word [0xff4c],0xad27
0000019D  2EFF160460        call word near [cs:0x6004]
000001A2  C7064CFFF1A9      mov word [0xff4c],0xa9f1
000001A8  2EFF160460        call word near [cs:0x6004]
000001AD  A026AD            mov al,[0xad26]
000001B0  0430              add al,0x30
000001B2  A227AD            mov [0xad27],al
000001B5  C7064CFF27AD      mov word [0xff4c],0xad27
000001BB  2EFF160460        call word near [cs:0x6004]
000001C0  C7064CFFFDA9      mov word [0xff4c],0xa9fd
000001C6  2EFF160460        call word near [cs:0x6004]
000001CB  BB2B2F            mov bx,0x2f2b
000001CE  B9190C            mov cx,0xc19
000001D1  B0FF              mov al,0xff
000001D3  2EFF160020        call word near [cs:0x2000]
000001D8  C70654FF2E30      mov word [0xff54],0x302e
000001DE  2EFF160860        call word near [cs:0x6008]
000001E3  C7064CFF48AA      mov word [0xff4c],0xaa48
000001E9  7301              jnc 0x1ec
000001EB  C3                ret
000001EC  A18B00            mov ax,[0x8b]
000001EF  8A1625AD          mov dl,[0xad25]
000001F3  32F6              xor dh,dh
000001F5  2BC2              sub ax,dx
000001F7  C7064CFF1DAA      mov word [0xff4c],0xaa1d
000001FD  7301              jnc 0x200
000001FF  C3                ret
00000200  52                push dx
00000201  E81F04            call 0x623
00000204  5A                pop dx
00000205  C60623ADFF        mov byte [0xad23],0xff
0000020A  C7064CFF82AA      mov word [0xff4c],0xaa82
00000210  33C9              xor cx,cx
00000212  A18B00            mov ax,[0x8b]
00000215  2BC2              sub ax,dx
00000217  7301              jnc 0x21a
00000219  C3                ret
0000021A  51                push cx
0000021B  A38B00            mov [0x8b],ax
0000021E  52                push dx
0000021F  32D2              xor dl,dl
00000221  A026AD            mov al,[0xad26]
00000224  32E4              xor ah,ah
00000226  2EFF160C60        call word near [cs:0x600c]
0000022B  2EFF161620        call word near [cs:0x2016]
00000230  2EFF161420        call word near [cs:0x2014]
00000235  5A                pop dx
00000236  59                pop cx
00000237  41                inc cx
00000238  83E107            and cx,0x7
0000023B  75D5              jnz 0x212
0000023D  EBD1              jmp 0x210
0000023F  E8E103            call 0x623
00000242  C60621AD00        mov byte [0xad21],0x0
00000247  BEBBA8            mov si,0xa8bb
0000024A  E80805            call 0x755
0000024D  C7064CFFA1AA      mov word [0xff4c],0xaaa1
00000253  A18600            mov ax,[0x86]
00000256  8A168500          mov dl,[0x85]
0000025A  0AD0              or dl,al
0000025C  0AD4              or dl,ah
0000025E  7501              jnz 0x261
00000260  C3                ret
00000261  C7064CFFCAAA      mov word [0xff4c],0xaaca
00000267  2EFF160460        call word near [cs:0x6004]
0000026C  BB1D2C            mov bx,0x2c1d
0000026F  B93712            mov cx,0x1237
00000272  B0FF              mov al,0xff
00000274  2EFF160020        call word near [cs:0x2000]
00000279  C70654FF202A      mov word [0xff54],0x2a20
0000027F  C60652FF04        mov byte [0xff52],0x4
00000284  C60653FF04        mov byte [0xff53],0x4
00000289  C60657FF00        mov byte [0xff57],0x0
0000028E  B90400            mov cx,0x4
00000291  BE51A9            mov si,0xa951
00000294  2EFF160E60        call word near [cs:0x600e]
00000299  C60629AD00        mov byte [0xad29],0x0
0000029E  C7062AAD0000      mov word [0xad2a],0x0
000002A4  8A168500          mov dl,[0x85]
000002A8  A18600            mov ax,[0x86]
000002AB  88162CAD          mov [0xad2c],dl
000002AF  A32DAD            mov [0xad2d],ax
000002B2  8A1629AD          mov dl,[0xad29]
000002B6  A12AAD            mov ax,[0xad2a]
000002B9  52                push dx
000002BA  50                push ax
000002BB  2EFF160A60        call word near [cs:0x600a]
000002C0  2EFF162230        call word near [cs:0x3022]
000002C5  BB2E31            mov bx,0x312e
000002C8  2EFF161C30        call word near [cs:0x301c]
000002CD  58                pop ax
000002CE  5A                pop dx
000002CF  2EFF162230        call word near [cs:0x3022]
000002D4  BB4831            mov bx,0x3148
000002D7  2EFF161C30        call word near [cs:0x301c]
000002DC  CD61              int byte 0x61
000002DE  E84F03            call 0x630
000002E1  F6C401            test ah,0x1
000002E4  7539              jnz 0x31f
000002E6  C7064CFF48AA      mov word [0xff4c],0xaa48
000002EC  F6C402            test ah,0x2
000002EF  7401              jz 0x2f2
000002F1  C3                ret
000002F2  0AC0              or al,al
000002F4  7507              jnz 0x2fd
000002F6  C6062FAD23        mov byte [0xad2f],0x23
000002FB  EBB5              jmp 0x2b2
000002FD  C6061AFF00        mov byte [0xff1a],0x0
00000302  CD61              int byte 0x61
00000304  0AC0              or al,al
00000306  74AA              jz 0x2b2
00000308  A02FAD            mov al,[0xad2f]
0000030B  38061AFF          cmp [0xff1a],al
0000030F  72F1              jc 0x302
00000311  802E2FAD01        sub byte [0xad2f],0x1
00000316  739A              jnc 0x2b2
00000318  C6062FAD01        mov byte [0xad2f],0x1
0000031D  EB93              jmp 0x2b2
0000031F  C7064CFF48AA      mov word [0xff4c],0xaa48
00000325  A12AAD            mov ax,[0xad2a]
00000328  8A1629AD          mov dl,[0xad29]
0000032C  8ACA              mov cl,dl
0000032E  0AC8              or cl,al
00000330  0ACC              or cl,ah
00000332  7501              jnz 0x335
00000334  C3                ret
00000335  0AD2              or dl,dl
00000337  7505              jnz 0x33e
00000339  3DE803            cmp ax,0x3e8
0000033C  720B              jc 0x349
0000033E  C60621ADFF        mov byte [0xad21],0xff
00000343  C7061FADC3A7      mov word [0xad1f],0xa7c3
00000349  01068900          add [0x89],ax
0000034D  10168800          adc [0x88],dl
00000351  8A1629AD          mov dl,[0xad29]
00000355  A12AAD            mov ax,[0xad2a]
00000358  2EFF160A60        call word near [cs:0x600a]
0000035D  88168500          mov [0x85],dl
00000361  A38600            mov [0x86],ax
00000364  2EFF161620        call word near [cs:0x2016]
00000369  C60623ADFF        mov byte [0xad23],0xff
0000036E  F60621ADFF        test byte [0xad21],0xff
00000373  7558              jnz 0x3cd
00000375  C7064CFFF7AB      mov word [0xff4c],0xabf7
0000037B  8A168800          mov dl,[0x88]
0000037F  A18900            mov ax,[0x89]
00000382  0AD4              or dl,ah
00000384  0AD0              or dl,al
00000386  7501              jnz 0x389
00000388  C3                ret
00000389  C7064CFF35AC      mov word [0xff4c],0xac35
0000038F  84068800          test [0x88],al
00000393  7508              jnz 0x39d
00000395  833E890001        cmp word [0x89],0x1
0000039A  7501              jnz 0x39d
0000039C  C3                ret
0000039D  C7064CFFF4AA      mov word [0xff4c],0xaaf4
000003A3  2EFF160460        call word near [cs:0x6004]
000003A8  8A168800          mov dl,[0x88]
000003AC  A18900            mov ax,[0x89]
000003AF  BF30AD            mov di,0xad30
000003B2  2EFF160660        call word near [cs:0x6006]
000003B7  8B364CFF          mov si,[0xff4c]
000003BB  56                push si
000003BC  C7064CFF30AD      mov word [0xff4c],0xad30
000003C2  2EFF160460        call word near [cs:0x6004]
000003C7  5E                pop si
000003C8  89364CFF          mov [0xff4c],si
000003CC  C3                ret
000003CD  C7064CFF10AB      mov word [0xff4c],0xab10
000003D3  C3                ret
000003D4  E84C02            call 0x623
000003D7  C60621AD00        mov byte [0xad21],0x0
000003DC  BEBBA8            mov si,0xa8bb
000003DF  E87303            call 0x755
000003E2  C7064CFF32AB      mov word [0xff4c],0xab32
000003E8  A18900            mov ax,[0x89]
000003EB  8A168800          mov dl,[0x88]
000003EF  0AD0              or dl,al
000003F1  0AD4              or dl,ah
000003F3  7501              jnz 0x3f6
000003F5  C3                ret
000003F6  C7064CFF80AB      mov word [0xff4c],0xab80
000003FC  2EFF160460        call word near [cs:0x6004]
00000401  BB1D2C            mov bx,0x2c1d
00000404  B93712            mov cx,0x1237
00000407  B0FF              mov al,0xff
00000409  2EFF160020        call word near [cs:0x2000]
0000040E  C70654FF202A      mov word [0xff54],0x2a20
00000414  C60652FF04        mov byte [0xff52],0x4
00000419  C60653FF04        mov byte [0xff53],0x4
0000041E  C60657FF00        mov byte [0xff57],0x0
00000423  B90400            mov cx,0x4
00000426  BE6DA9            mov si,0xa96d
00000429  2EFF160E60        call word near [cs:0x600e]
0000042E  C60629AD00        mov byte [0xad29],0x0
00000433  C7062AAD0000      mov word [0xad2a],0x0
00000439  8A168800          mov dl,[0x88]
0000043D  A18900            mov ax,[0x89]
00000440  88162CAD          mov [0xad2c],dl
00000444  A32DAD            mov [0xad2d],ax
00000447  8A1629AD          mov dl,[0xad29]
0000044B  A12AAD            mov ax,[0xad2a]
0000044E  52                push dx
0000044F  50                push ax
00000450  8A0E8800          mov cl,[0x88]
00000454  8B1E8900          mov bx,[0x89]
00000458  2BD8              sub bx,ax
0000045A  1ACA              sbb cl,dl
0000045C  93                xchg ax,bx
0000045D  86D1              xchg dl,cl
0000045F  2EFF162230        call word near [cs:0x3022]
00000464  BB2E31            mov bx,0x312e
00000467  2EFF161C30        call word near [cs:0x301c]
0000046C  58                pop ax
0000046D  5A                pop dx
0000046E  2EFF162230        call word near [cs:0x3022]
00000473  BB4831            mov bx,0x3148
00000476  2EFF161C30        call word near [cs:0x301c]
0000047B  CD61              int byte 0x61
0000047D  E8B001            call 0x630
00000480  F6C401            test ah,0x1
00000483  7539              jnz 0x4be
00000485  C7064CFF48AA      mov word [0xff4c],0xaa48
0000048B  F6C402            test ah,0x2
0000048E  7401              jz 0x491
00000490  C3                ret
00000491  0AC0              or al,al
00000493  7507              jnz 0x49c
00000495  C6062FAD23        mov byte [0xad2f],0x23
0000049A  EBAB              jmp 0x447
0000049C  C6061AFF00        mov byte [0xff1a],0x0
000004A1  CD61              int byte 0x61
000004A3  0AC0              or al,al
000004A5  74A0              jz 0x447
000004A7  A02FAD            mov al,[0xad2f]
000004AA  38061AFF          cmp [0xff1a],al
000004AE  72F1              jc 0x4a1
000004B0  802E2FAD01        sub byte [0xad2f],0x1
000004B5  7390              jnc 0x447
000004B7  C6062FAD01        mov byte [0xad2f],0x1
000004BC  EB89              jmp 0x447
000004BE  C7064CFF48AA      mov word [0xff4c],0xaa48
000004C4  A12AAD            mov ax,[0xad2a]
000004C7  8A1629AD          mov dl,[0xad29]
000004CB  8ACA              mov cl,dl
000004CD  0AC8              or cl,al
000004CF  0ACC              or cl,ah
000004D1  7501              jnz 0x4d4
000004D3  C3                ret
000004D4  C60623ADFF        mov byte [0xad23],0xff
000004D9  C7064CFFC1AB      mov word [0xff4c],0xabc1
000004DF  8A1629AD          mov dl,[0xad29]
000004E3  A12AAD            mov ax,[0xad2a]
000004E6  0AD2              or dl,dl
000004E8  7505              jnz 0x4ef
000004EA  3D0100            cmp ax,0x1
000004ED  742F              jz 0x51e
000004EF  C7064CFFA4AB      mov word [0xff4c],0xaba4
000004F5  2EFF160460        call word near [cs:0x6004]
000004FA  8A1629AD          mov dl,[0xad29]
000004FE  A12AAD            mov ax,[0xad2a]
00000501  BF30AD            mov di,0xad30
00000504  2EFF160660        call word near [cs:0x6006]
00000509  8B364CFF          mov si,[0xff4c]
0000050D  56                push si
0000050E  C7064CFF30AD      mov word [0xff4c],0xad30
00000514  2EFF160460        call word near [cs:0x6004]
00000519  5E                pop si
0000051A  89364CFF          mov [0xff4c],si
0000051E  2EFF160460        call word near [cs:0x6004]
00000523  8A168800          mov dl,[0x88]
00000527  A18900            mov ax,[0x89]
0000052A  2B062AAD          sub ax,[0xad2a]
0000052E  1A1629AD          sbb dl,[0xad29]
00000532  88168800          mov [0x88],dl
00000536  A38900            mov [0x89],ax
00000539  C7064CFFDEAB      mov word [0xff4c],0xabde
0000053F  0AD4              or dl,ah
00000541  0AD0              or dl,al
00000543  7443              jz 0x588
00000545  C7064CFF35AC      mov word [0xff4c],0xac35
0000054B  84068800          test [0x88],al
0000054F  7508              jnz 0x559
00000551  833E890001        cmp word [0x89],0x1
00000556  7501              jnz 0x559
00000558  C3                ret
00000559  C7064CFFF4AA      mov word [0xff4c],0xaaf4
0000055F  2EFF160460        call word near [cs:0x6004]
00000564  8A168800          mov dl,[0x88]
00000568  A18900            mov ax,[0x89]
0000056B  BF30AD            mov di,0xad30
0000056E  2EFF160660        call word near [cs:0x6006]
00000573  8B364CFF          mov si,[0xff4c]
00000577  56                push si
00000578  C7064CFF30AD      mov word [0xff4c],0xad30
0000057E  2EFF160460        call word near [cs:0x6004]
00000583  5E                pop si
00000584  89364CFF          mov [0xff4c],si
00000588  8A1629AD          mov dl,[0xad29]
0000058C  A12AAD            mov ax,[0xad2a]
0000058F  2EFF160C60        call word near [cs:0x600c]
00000594  2EFF261620        jmp word near [cs:0x2016]
00000599  E88700            call 0x623
0000059C  C7064CFFF7AB      mov word [0xff4c],0xabf7
000005A2  A08800            mov al,[0x88]
000005A5  32E4              xor ah,ah
000005A7  0B068900          or ax,[0x89]
000005AB  7501              jnz 0x5ae
000005AD  C3                ret
000005AE  C60623ADFF        mov byte [0xad23],0xff
000005B3  C7064CFF35AC      mov word [0xff4c],0xac35
000005B9  84068800          test [0x88],al
000005BD  7508              jnz 0x5c7
000005BF  833E890001        cmp word [0x89],0x1
000005C4  7501              jnz 0x5c7
000005C6  C3                ret
000005C7  C7064CFF10AC      mov word [0xff4c],0xac10
000005CD  2EFF160460        call word near [cs:0x6004]
000005D2  8A168800          mov dl,[0x88]
000005D6  A18900            mov ax,[0x89]
000005D9  BF30AD            mov di,0xad30
000005DC  2EFF160660        call word near [cs:0x6006]
000005E1  8B364CFF          mov si,[0xff4c]
000005E5  56                push si
000005E6  C7064CFF30AD      mov word [0xff4c],0xad30
000005EC  2EFF160460        call word near [cs:0x6004]
000005F1  5E                pop si
000005F2  89364CFF          mov [0xff4c],si
000005F6  C3                ret
000005F7  C60621AD00        mov byte [0xad21],0x0
000005FC  BE39A8            mov si,0xa839
000005FF  E81502            call 0x817
00000602  C60621ADFF        mov byte [0xad21],0xff
00000607  C7061FAD73A7      mov word [0xad1f],0xa773
0000060D  C6061AFF00        mov byte [0xff1a],0x0
00000612  E81701            call 0x72c
00000615  803E1AFF64        cmp byte [0xff1a],0x64
0000061A  72F6              jc 0x612
0000061C  C3                ret
0000061D  C60624ADFF        mov byte [0xad24],0xff
00000622  C3                ret
00000623  BB1727            mov bx,0x2717
00000626  B9411C            mov cx,0x1c41
00000629  32C0              xor al,al
0000062B  2EFF260020        jmp word near [cs:0x2000]
00000630  8A1629AD          mov dl,[0xad29]
00000634  8B1E2AAD          mov bx,[0xad2a]
00000638  A808              test al,0x8
0000063A  740E              jz 0x64a
0000063C  83EB0A            sub bx,0xa
0000063F  80DA00            sbb dl,0x0
00000642  735A              jnc 0x69e
00000644  33DB              xor bx,bx
00000646  32D2              xor dl,dl
00000648  EB54              jmp 0x69e
0000064A  A804              test al,0x4
0000064C  741E              jz 0x66c
0000064E  83C30A            add bx,0xa
00000651  80D200            adc dl,0x0
00000654  8BCB              mov cx,bx
00000656  2B0E2DAD          sub cx,[0xad2d]
0000065A  8ACA              mov cl,dl
0000065C  1A0E2CAD          sbb cl,[0xad2c]
00000660  723C              jc 0x69e
00000662  8A162CAD          mov dl,[0xad2c]
00000666  8B1E2DAD          mov bx,[0xad2d]
0000066A  EB32              jmp 0x69e
0000066C  A802              test al,0x2
0000066E  740E              jz 0x67e
00000670  83EB01            sub bx,0x1
00000673  80DA00            sbb dl,0x0
00000676  7326              jnc 0x69e
00000678  33DB              xor bx,bx
0000067A  32D2              xor dl,dl
0000067C  EB20              jmp 0x69e
0000067E  A801              test al,0x1
00000680  741C              jz 0x69e
00000682  83C301            add bx,0x1
00000685  80D200            adc dl,0x0
00000688  8BCB              mov cx,bx
0000068A  2B0E2DAD          sub cx,[0xad2d]
0000068E  8ACA              mov cl,dl
00000690  1A0E2CAD          sbb cl,[0xad2c]
00000694  7208              jc 0x69e
00000696  8A162CAD          mov dl,[0xad2c]
0000069A  8B1E2DAD          mov bx,[0xad2d]
0000069E  881629AD          mov [0xad29],dl
000006A2  891E2AAD          mov [0xad2a],bx
000006A6  C3                ret
000006A7  BEC8A6            mov si,0xa6c8
000006AA  BB1707            mov bx,0x717
000006AD  B90800            mov cx,0x8
000006B0  51                push cx
000006B1  B90C00            mov cx,0xc
000006B4  51                push cx
000006B5  53                push bx
000006B6  AC                lodsb
000006B7  2EFF161630        call word near [cs:0x3016]
000006BC  5B                pop bx
000006BD  FEC7              inc bh
000006BF  59                pop cx
000006C0  E2F2              loop 0x6b4
000006C2  80EF0C            sub bh,0xc
000006C5  80C308            add bl,0x8
000006C8  59                pop cx
000006C9  E2E5              loop 0x6b0
000006CB  C3                ret
000006CC  6C                insb
000006CD  6D                insw
000006CE  6E                outsb
000006CF  6F                outsw
000006D0  7071              jo 0x743
000006D2  7273              jc 0x747
000006D4  7475              jz 0x74b
000006D6  7677              jna 0x74f
000006D8  7879              js 0x753
000006DA  0001              add [bx+di],al
000006DC  0203              add al,[bp+di]
000006DE  0405              add al,0x5
000006E0  06                push es
000006E1  07                pop es
000006E2  7A7B              jpe 0x75f
000006E4  7C7D              jl 0x763
000006E6  0809              or [bx+di],cl
000006E8  0A0B              or cl,[bp+di]
000006EA  0C0D              or al,0xd
000006EC  0E                push cs
000006ED  0F7E7F80          movd dword [bx-0x80],mm7
000006F1  81101112          adc word [bx+si],0x1211
000006F5  1314              adc dx,[si]
000006F7  151617            adc ax,0x1716
000006FA  82                db 0x82
000006FB  8384851819        add word [si+0x1885],0x19
00000700  1A1B              sbb bl,[bp+di]
00000702  1C1D              sbb al,0x1d
00000704  1E                push ds
00000705  1F                pop ds
00000706  86878889          xchg al,[bx-0x7678]
0000070A  2021              and [bx+di],ah
0000070C  2223              and ah,[bp+di]
0000070E  2425              and al,0x25
00000710  2627              es daa
00000712  8A8B8C8D          mov cl,[bp+di-0x7274]
00000716  8E8F9091          mov cs,word [bx-0x6e70]
0000071A  92                xchg ax,dx
0000071B  93                xchg ax,bx
0000071C  94                xchg ax,sp
0000071D  95                xchg ax,bp
0000071E  96                xchg ax,si
0000071F  97                xchg ax,di
00000720  98                cbw
00000721  99                cwd
00000722  9A9B9C9D9E        call word 0x9e9d:word 0x9c9b
00000727  9F                lahf
00000728  A0A1A2            mov al,[0xa2a1]
0000072B  A3F606            mov [0x6f6],ax
0000072E  21ADFF75          and [di+0x75ff],bp
00000732  01C3              add bx,ax
00000734  833E50FF1E        cmp word [0xff50],0x1e
00000739  7301              jnc 0x73c
0000073B  C3                ret
0000073C  C70650FF0000      mov word [0xff50],0x0
00000742  FE0622AD          inc byte [0xad22]
00000746  A022AD            mov al,[0xad22]
00000749  2401              and al,0x1
0000074B  B128              mov cl,0x28
0000074D  F6E1              mul cl
0000074F  8BF0              mov si,ax
00000751  03361FAD          add si,[0xad1f]
00000755  BB1F09            mov bx,0x91f
00000758  B90500            mov cx,0x5
0000075B  51                push cx
0000075C  B90800            mov cx,0x8
0000075F  51                push cx
00000760  53                push bx
00000761  AC                lodsb
00000762  2EFF161630        call word near [cs:0x3016]
00000767  5B                pop bx
00000768  FEC7              inc bh
0000076A  59                pop cx
0000076B  E2F2              loop 0x75f
0000076D  80EF08            sub bh,0x8
00000770  80C308            add bl,0x8
00000773  59                pop cx
00000774  E2E5              loop 0x75b
00000776  C3                ret
00000777  0001              add [bx+di],al
00000779  0203              add al,[bp+di]
0000077B  0405              add al,0x5
0000077D  06                push es
0000077E  07                pop es
0000077F  0809              or [bx+di],cl
00000781  0A0B              or cl,[bp+di]
00000783  0C0D              or al,0xd
00000785  0E                push cs
00000786  0F1011            movups xmm2,oword [bx+di]
00000789  1213              adc dl,[bp+di]
0000078B  1415              adc al,0x15
0000078D  16                push ss
0000078E  17                pop ss
0000078F  1819              sbb [bx+di],bl
00000791  1A1B              sbb bl,[bp+di]
00000793  1C1D              sbb al,0x1d
00000795  1E                push ds
00000796  1F                pop ds
00000797  2021              and [bx+di],ah
00000799  2223              and ah,[bp+di]
0000079B  2425              and al,0x25
0000079D  2627              es daa
0000079F  0001              add [bx+di],al
000007A1  0203              add al,[bp+di]
000007A3  0405              add al,0x5
000007A5  06                push es
000007A6  07                pop es
000007A7  0809              or [bx+di],cl
000007A9  0A0B              or cl,[bp+di]
000007AB  0C0D              or al,0xd
000007AD  0E                push cs
000007AE  0F2829            movaps xmm5,oword [bx+di]
000007B1  1213              adc dl,[bp+di]
000007B3  1415              adc al,0x15
000007B5  16                push ss
000007B6  17                pop ss
000007B7  2A2B              sub ch,[bp+di]
000007B9  2C1B              sub al,0x1b
000007BB  1C1D              sbb al,0x1d
000007BD  1E                push ds
000007BE  1F                pop ds
000007BF  202D              and [di],ch
000007C1  2E2324            and sp,[cs:si]
000007C4  252627            and ax,0x2726
000007C7  0001              add [bx+di],al
000007C9  0203              add al,[bp+di]
000007CB  0405              add al,0x5
000007CD  06                push es
000007CE  07                pop es
000007CF  0809              or [bx+di],cl
000007D1  41                inc cx
000007D2  42                inc dx
000007D3  43                inc bx
000007D4  44                inc sp
000007D5  45                inc bp
000007D6  0F1011            movups xmm2,oword [bx+di]
000007D9  46                inc si
000007DA  4D                dec bp
000007DB  4E                dec si
000007DC  49                dec cx
000007DD  4A                dec dx
000007DE  3918              cmp [bx+si],bx
000007E0  191A              sbb [bp+si],bx
000007E2  4F                dec di
000007E3  50                push ax
000007E4  51                push cx
000007E5  4C                dec sp
000007E6  3D2021            cmp ax,0x2120
000007E9  225253            and dl,[bp+si+0x53]
000007EC  3E3F              ds aas
000007EE  40                inc ax
000007EF  0001              add [bx+di],al
000007F1  54                push sp
000007F2  55                push bp
000007F3  56                push si
000007F4  050607            add ax,0x706
000007F7  0809              or [bx+di],cl
000007F9  57                push di
000007FA  58                pop ax
000007FB  59                pop cx
000007FC  5A                pop dx
000007FD  5B                pop bx
000007FE  0F105C5D          movups xmm3,oword [si+0x5d]
00000802  5E                pop si
00000803  5F                pop di
00000804  60                pusha
00000805  61                popa
00000806  17                pop ss
00000807  1819              sbb [bx+di],bl
00000809  626364            bound sp,[bp+di+0x64]
0000080C  6566672021        o32 and [gs:ecx],ah
00000811  226869            and ch,[bx+si+0x69]
00000814  3E6A6B            ds push word 0x6b
00000817  C6061AFF00        mov byte [0xff1a],0x0
0000081C  AD                lodsw
0000081D  3DFFFF            cmp ax,0xffff
00000820  7501              jnz 0x823
00000822  C3                ret
00000823  56                push si
00000824  8BF0              mov si,ax
00000826  E82CFF            call 0x755
00000829  803E1AFF28        cmp byte [0xff1a],0x28
0000082E  72F9              jc 0x829
00000830  5E                pop si
00000831  EBE4              jmp 0x817
00000833  43                inc bx
00000834  A86B              test al,0x6b
00000836  A893              test al,0x93
00000838  A8BB              test al,0xbb
0000083A  A8FF              test al,0xff
0000083C  FF                db 0xff
0000083D  BBA893            mov bx,0x93a8
00000840  A86B              test al,0x6b
00000842  A843              test al,0x43
00000844  A8FF              test al,0xff
00000846  FF00              inc word [bx+si]
00000848  0102              add [bp+si],ax
0000084A  0304              add ax,[si]
0000084C  050607            add ax,0x706
0000084F  0809              or [bx+di],cl
00000851  0A0B              or cl,[bp+di]
00000853  0C0D              or al,0xd
00000855  0E                push cs
00000856  0F1011            movups xmm2,oword [bx+di]
00000859  1213              adc dl,[bp+di]
0000085B  1415              adc al,0x15
0000085D  16                push ss
0000085E  17                pop ss
0000085F  1819              sbb [bx+di],bl
00000861  1A2F              sbb ch,[bx]
00000863  301D              xor [di],bl
00000865  1E                push ds
00000866  1F                pop ds
00000867  2021              and [bx+di],ah
00000869  2223              and ah,[bp+di]
0000086B  2425              and al,0x25
0000086D  2627              es daa
0000086F  0001              add [bx+di],al
00000871  0203              add al,[bp+di]
00000873  0405              add al,0x5
00000875  06                push es
00000876  07                pop es
00000877  0809              or [bx+di],cl
00000879  0A0B              or cl,[bp+di]
0000087B  0C0D              or al,0xd
0000087D  0E                push cs
0000087E  0F1011            movups xmm2,oword [bx+di]
00000881  1213              adc dl,[bp+di]
00000883  1415              adc al,0x15
00000885  16                push ss
00000886  17                pop ss
00000887  1819              sbb [bx+di],bl
00000889  1A2F              sbb ch,[bx]
0000088B  301D              xor [di],bl
0000088D  1E                push ds
0000088E  1F                pop ds
0000088F  2021              and [bx+di],ah
00000891  2223              and ah,[bp+di]
00000893  3132              xor [bp+si],si
00000895  3327              xor sp,[bx]
00000897  0001              add [bx+di],al
00000899  0203              add al,[bp+di]
0000089B  0405              add al,0x5
0000089D  06                push es
0000089E  07                pop es
0000089F  0809              or [bx+di],cl
000008A1  0A0B              or cl,[bp+di]
000008A3  3435              xor al,0x35
000008A5  0E                push cs
000008A6  0F1011            movups xmm2,oword [bx+di]
000008A9  1213              adc dl,[bp+di]
000008AB  3637              ss aaa
000008AD  3839              cmp [bx+di],bh
000008AF  1819              sbb [bx+di],bl
000008B1  1A2F              sbb ch,[bx]
000008B3  3A3B              cmp bh,[bp+di]
000008B5  3C3D              cmp al,0x3d
000008B7  2021              and [bx+di],ah
000008B9  2223              and ah,[bp+di]
000008BB  243E              and al,0x3e
000008BD  3F                aas
000008BE  40                inc ax
000008BF  0001              add [bx+di],al
000008C1  0203              add al,[bp+di]
000008C3  0405              add al,0x5
000008C5  06                push es
000008C6  07                pop es
000008C7  0809              or [bx+di],cl
000008C9  41                inc cx
000008CA  42                inc dx
000008CB  43                inc bx
000008CC  44                inc sp
000008CD  45                inc bp
000008CE  0F1011            movups xmm2,oword [bx+di]
000008D1  46                inc si
000008D2  47                inc di
000008D3  48                dec ax
000008D4  49                dec cx
000008D5  4A                dec dx
000008D6  3918              cmp [bx+si],bx
000008D8  191A              sbb [bp+si],bx
000008DA  2F                das
000008DB  304B4C            xor [bp+di+0x4c],cl
000008DE  3D2021            cmp ax,0x2120
000008E1  2223              and ah,[bp+di]
000008E3  243E              and al,0x3e
000008E5  3F                aas
000008E6  40                inc ax
000008E7  01164241          add [0x4142],dx
000008EB  4E                dec si
000008EC  4B                dec bx
000008ED  2E47              cs inc di
000008EF  52                push dx
000008F0  50                push ax
000008F1  0018              add [bx+si],bl
000008F3  AF                scasw
000008F4  0208              add cl,[bx+si]
000008F6  54                push sp
000008F7  686520            push word 0x2065
000008FA  42                inc dx
000008FB  61                popa
000008FC  6E                outsb
000008FD  6B0106            imul ax,[bx+di],0x6
00000900  01060108          add [0x801],ax
00000904  0104              add [si],ax
00000906  0102              add [bp+si],ax
00000908  0104              add [si],ax
0000090A  0402              add al,0x2
0000090C  01060108          add [0x801],ax
00000910  47                inc di
00000911  6F                outsw
00000912  206F75            and [bx+0x75],ch
00000915  7473              jz 0x98a
00000917  6964650045        imul sp,[si+0x65],0x4500
0000091C  7863              js 0x981
0000091E  68616E            push word 0x6e61
00000921  676520616C        and [gs:ecx+0x6c],ah
00000926  6D                insw
00000927  61                popa
00000928  7300              jnc 0x92a
0000092A  44                inc sp
0000092B  65706F            gs jo 0x99d
0000092E  7369              jnc 0x999
00000930  7420              jz 0x952
00000932  6D                insw
00000933  6F                outsw
00000934  6E                outsb
00000935  657900            gs jns 0x938
00000938  57                push di
00000939  6974686472        imul si,[si+0x68],0x7264
0000093E  61                popa
0000093F  7720              ja 0x961
00000941  6D                insw
00000942  6F                outsw
00000943  6E                outsb
00000944  657900            gs jns 0x947
00000947  43                inc bx
00000948  686563            push word 0x6365
0000094B  6B2062            imul sp,[bx+si],0x62
0000094E  61                popa
0000094F  6C                insb
00000950  61                popa
00000951  6E                outsb
00000952  636500            arpl [di+0x0],sp
00000955  47                inc di
00000956  4F                dec di
00000957  4C                dec sp
00000958  44                inc sp
00000959  204341            and [bp+di+0x41],al
0000095C  52                push dx
0000095D  52                push dx
0000095E  49                dec cx
0000095F  45                inc bp
00000960  44                inc sp
00000961  0000              add [bx+si],al
00000963  0020              add [bx+si],ah
00000965  44                inc sp
00000966  45                inc bp
00000967  50                push ax
00000968  4F                dec di
00000969  53                push bx
0000096A  49                dec cx
0000096B  54                push sp
0000096C  20414D            and [bx+di+0x4d],al
0000096F  54                push sp
00000970  00474F            add [bx+0x4f],al
00000973  4C                dec sp
00000974  44                inc sp
00000975  20494E            and [bx+di+0x4e],cl
00000978  204241            and [bp+si+0x41],al
0000097B  4E                dec si
0000097C  4B                dec bx
0000097D  0000              add [bx+si],al
0000097F  005749            add [bx+0x49],dl
00000982  54                push sp
00000983  48                dec ax
00000984  44                inc sp
00000985  52                push dx
00000986  41                inc cx
00000987  57                push di
00000988  20414D            and [bx+di+0x4d],al
0000098B  54                push sp
0000098C  000C              add [si],cl
0000098E  FF2EFF4F          jmp word far [0x4fff]
00000992  682C20            push word 0x202c
00000995  657863            gs js 0x9fb
00000998  7573              jnz 0xa0d
0000099A  65206D65          and [gs:di+0x65],ch
0000099E  2E20FF            cs and bh,bh
000009A1  004361            add [bp+di+0x61],al
000009A4  6E                outsb
000009A5  204920            and [bx+di+0x20],cl
000009A8  68656C            push word 0x6c65
000009AB  7020              jo 0x9cd
000009AD  796F              jns 0xa1e
000009AF  753F              jnz 0x9f0
000009B1  2F                das
000009B2  FF01              inc word [bx+di]
000009B4  FF                db 0xff
000009B5  FF0C              dec word [si]
000009B7  53                push bx
000009B8  69722C2079        imul si,[bp+si+0x2c],0x7920
000009BD  6F                outsw
000009BE  7520              jnz 0x9e0
000009C0  61                popa
000009C1  7265              jc 0xa28
000009C3  6E                outsb
000009C4  5C                pop sp
000009C5  7420              jz 0x9e7
000009C7  636172            arpl [bx+di+0x72],sp
000009CA  7279              jc 0xa45
000009CC  696E672061        imul bp,[bp+0x67],0x6120
000009D1  6E                outsb
000009D2  7920              jns 0x9f4
000009D4  61                popa
000009D5  6C                insb
000009D6  6D                insw
000009D7  61                popa
000009D8  732E              jnc 0xa08
000009DA  20FF              and bh,bh
000009DC  010C              add [si],cx
000009DE  4F                dec di
000009DF  7572              jnz 0xa53
000009E1  206578            and [di+0x78],ah
000009E4  636861            arpl [bx+si+0x61],bp
000009E7  6E                outsb
000009E8  6765207261        and [gs:edx+0x61],dh
000009ED  7465              jz 0xa54
000009EF  206973            and [bx+di+0x73],ch
000009F2  20FF              and bh,bh
000009F4  0026616C          add [0x6c61],ah
000009F8  6D                insw
000009F9  61                popa
000009FA  7320              jnc 0xa1c
000009FC  746F              jz 0xa6d
000009FE  20FF              and bh,bh
00000A00  0026676F          add [0x6f67],ah
00000A04  6C                insb
00000A05  64732E            fs jnc 0xa36
00000A08  2F                das
00000A09  57                push di
00000A0A  696C6C2074        imul bp,[si+0x6c],0x7420
00000A0F  686174            push word 0x7461
00000A12  206265            and [bp+si+0x65],ah
00000A15  20616C            and [bx+di+0x6c],ah
00000A18  6C                insb
00000A19  207269            and [bp+si+0x69],dh
00000A1C  6768743F          a32 push word 0x3f74
00000A20  FF0C              dec word [si]
00000A22  49                dec cx
00000A23  5C                pop sp
00000A24  6D                insw
00000A25  20736F            and [bp+di+0x6f],dh
00000A28  7272              jc 0xa9c
00000A2A  792C              jns 0xa58
00000A2C  20796F            and [bx+di+0x6f],bh
00000A2F  7520              jnz 0xa51
00000A31  646F              fs outsw
00000A33  206E6F            and [bp+0x6f],ch
00000A36  7420              jz 0xa58
00000A38  686176            push word 0x7661
00000A3B  6520656E          and [gs:di+0x6e],ah
00000A3F  6F                outsw
00000A40  7567              jnz 0xaa9
00000A42  682061            push word 0x6120
00000A45  6C                insb
00000A46  6D                insw
00000A47  61                popa
00000A48  732E              jnc 0xa78
00000A4A  FF01              inc word [bx+di]
00000A4C  0C49              or al,0x49
00000A4E  20646F            and [si+0x6f],ah
00000A51  6E                outsb
00000A52  5C                pop sp
00000A53  7420              jz 0xa75
00000A55  756E              jnz 0xac5
00000A57  64657273          gs jc 0xace
00000A5B  7461              jz 0xabe
00000A5D  6E                outsb
00000A5E  642E20506C        and [cs:bx+si+0x6c],dl
00000A63  6561              gs popa
00000A65  7365              jnc 0xacc
00000A67  207374            and [bp+di+0x74],dh
00000A6A  61                popa
00000A6B  7465              jz 0xad2
00000A6D  20796F            and [bx+di+0x6f],bh
00000A70  7572              jnz 0xae4
00000A72  206275            and [bp+si+0x75],ah
00000A75  7369              jnc 0xae0
00000A77  6E                outsb
00000A78  657373            gs jnc 0xaee
00000A7B  20636C            and [bp+di+0x6c],ah
00000A7E  6561              gs popa
00000A80  726C              jc 0xaee
00000A82  792E              jns 0xab2
00000A84  FF01              inc word [bx+di]
00000A86  0C57              or al,0x57
00000A88  696C6C2074        imul bp,[si+0x6c],0x7420
00000A8D  686572            push word 0x7265
00000A90  65206265          and [gs:bp+si+0x65],ah
00000A94  20616E            and [bx+di+0x6e],ah
00000A97  7974              jns 0xb0d
00000A99  68696E            push word 0x6e69
00000A9C  6720656C          and [ebp+0x6c],ah
00000AA0  7365              jnc 0xb07
00000AA2  3F                aas
00000AA3  FF01              inc word [bx+di]
00000AA5  0C59              or al,0x59
00000AA7  6F                outsw
00000AA8  7520              jnz 0xaca
00000AAA  61                popa
00000AAB  7265              jc 0xb12
00000AAD  6E                outsb
00000AAE  5C                pop sp
00000AAF  7420              jz 0xad1
00000AB1  636172            arpl [bx+di+0x72],sp
00000AB4  7279              jc 0xb2f
00000AB6  696E672061        imul bp,[bp+0x67],0x6120
00000ABB  6E                outsb
00000ABC  7920              jns 0xade
00000ABE  676F              a32 outsw
00000AC0  6C                insb
00000AC1  642C20            fs sub al,0x20
00000AC4  61                popa
00000AC5  7265              jc 0xb2c
00000AC7  20796F            and [bx+di+0x6f],bh
00000ACA  753F              jnz 0xb0b
00000ACC  FF01              inc word [bx+di]
00000ACE  0C48              or al,0x48
00000AD0  6F                outsw
00000AD1  7720              ja 0xaf3
00000AD3  6D                insw
00000AD4  7563              jnz 0xb39
00000AD6  682067            push word 0x6720
00000AD9  6F                outsw
00000ADA  6C                insb
00000ADB  6420776F          and [fs:bx+0x6f],dh
00000ADF  756C              jnz 0xb4d
00000AE1  6420796F          and [fs:bx+di+0x6f],bh
00000AE5  7520              jnz 0xb07
00000AE7  6C                insb
00000AE8  696B652074        imul bp,[bp+di+0x65],0x7420
00000AED  6F                outsw
00000AEE  206465            and [si+0x65],ah
00000AF1  706F              jo 0xb62
00000AF3  7369              jnc 0xb5e
00000AF5  743F              jz 0xb36
00000AF7  FF0D              dec word [di]
00000AF9  59                pop cx
00000AFA  6F                outsw
00000AFB  7572              jnz 0xb6f
00000AFD  206261            and [bp+si+0x61],ah
00000B00  6C                insb
00000B01  61                popa
00000B02  6E                outsb
00000B03  636520            arpl [di+0x20],sp
00000B06  697320FF00        imul si,[bp+di+0x20],0xff
00000B0B  26676F            es a32 outsw
00000B0E  6C                insb
00000B0F  64732E            fs jnc 0xb40
00000B12  FF01              inc word [bx+di]
00000B14  0C54              or al,0x54
00000B16  68616E            push word 0x6e61
00000B19  6B2079            imul sp,[bx+si],0x79
00000B1C  6F                outsw
00000B1D  752E              jnz 0xb4d
00000B1F  20506C            and [bx+si+0x6c],dl
00000B22  6561              gs popa
00000B24  7365              jnc 0xb8b
00000B26  20636F            and [bp+di+0x6f],ah
00000B29  6D                insw
00000B2A  65206167          and [gs:bx+di+0x67],ah
00000B2E  61                popa
00000B2F  696E2EFF03        imul bp,[bp+0x2e],0x3ff
00000B34  FF01              inc word [bx+di]
00000B36  0C49              or al,0x49
00000B38  5C                pop sp
00000B39  6D                insw
00000B3A  206166            and [bx+di+0x66],ah
00000B3D  7261              jc 0xba0
00000B3F  6964207765        imul sp,[si+0x20],0x6577
00000B44  206861            and [bx+si+0x61],ch
00000B47  7665              jna 0xbae
00000B49  206120            and [bx+di+0x20],ah
00000B4C  7072              jo 0xbc0
00000B4E  6F                outsw
00000B4F  626C65            bound bp,[si+0x65]
00000B52  6D                insw
00000B53  206865            and [bx+si+0x65],ch
00000B56  7265              jc 0xbbd
00000B58  2E20596F          and [cs:bx+di+0x6f],bl
00000B5C  7520              jnz 0xb7e
00000B5E  646F              fs outsw
00000B60  6E                outsb
00000B61  5C                pop sp
00000B62  7420              jz 0xb84
00000B64  686176            push word 0x7661
00000B67  6520616E          and [gs:bx+di+0x6e],ah
00000B6B  7920              jns 0xb8d
00000B6D  676F              a32 outsw
00000B6F  6C                insb
00000B70  6420696E          and [fs:bx+di+0x6e],ch
00000B74  20796F            and [bx+di+0x6f],bh
00000B77  7572              jnz 0xbeb
00000B79  206163            and [bx+di+0x63],ah
00000B7C  636F75            arpl [bx+0x75],bp
00000B7F  6E                outsb
00000B80  742E              jz 0xbb0
00000B82  FF01              inc word [bx+di]
00000B84  0C48              or al,0x48
00000B86  6F                outsw
00000B87  7720              ja 0xba9
00000B89  6D                insw
00000B8A  7563              jnz 0xbef
00000B8C  682064            push word 0x6420
00000B8F  6F                outsw
00000B90  20796F            and [bx+di+0x6f],bh
00000B93  7520              jnz 0xbb5
00000B95  7769              ja 0xc00
00000B97  7368              jnc 0xc01
00000B99  20746F            and [si+0x6f],dh
00000B9C  207769            and [bx+0x69],dh
00000B9F  7468              jz 0xc09
00000BA1  647261            fs jc 0xc05
00000BA4  773F              ja 0xbe5
00000BA6  2F                das
00000BA7  FF4865            dec word [bx+si+0x65]
00000BAA  7265              jc 0xc11
00000BAC  20796F            and [bx+di+0x6f],bh
00000BAF  7520              jnz 0xbd1
00000BB1  61                popa
00000BB2  7265              jc 0xc19
00000BB4  2C20              sub al,0x20
00000BB6  7369              jnc 0xc21
00000BB8  722E              jc 0xbe8
00000BBA  20FF              and bh,bh
00000BBC  0026676F          add [0x6f67],ah
00000BC0  6C                insb
00000BC1  64732E            fs jnc 0xbf2
00000BC4  FF4865            dec word [bx+si+0x65]
00000BC7  7265              jc 0xc2e
00000BC9  20796F            and [bx+di+0x6f],bh
00000BCC  7520              jnz 0xbee
00000BCE  61                popa
00000BCF  7265              jc 0xc36
00000BD1  2C20              sub al,0x20
00000BD3  7369              jnc 0xc3e
00000BD5  722E              jc 0xc05
00000BD7  204F6E            and [bx+0x6e],cl
00000BDA  6520676F          and [gs:bx+0x6f],ah
00000BDE  6C                insb
00000BDF  642EFF0D          dec word [cs:di]
00000BE3  59                pop cx
00000BE4  6F                outsw
00000BE5  7572              jnz 0xc59
00000BE7  206163            and [bx+di+0x63],ah
00000BEA  636F75            arpl [bx+0x75],bp
00000BED  6E                outsb
00000BEE  7420              jz 0xc10
00000BF0  697320656D        imul si,[bp+di+0x20],0x6d65
00000BF5  7074              jo 0xc6b
00000BF7  792E              jns 0xc27
00000BF9  FF01              inc word [bx+di]
00000BFB  0C59              or al,0x59
00000BFD  6F                outsw
00000BFE  7572              jnz 0xc72
00000C00  206163            and [bx+di+0x63],ah
00000C03  636F75            arpl [bx+0x75],bp
00000C06  6E                outsb
00000C07  7420              jz 0xc29
00000C09  697320656D        imul si,[bp+di+0x20],0x6d65
00000C0E  7074              jo 0xc84
00000C10  792E              jns 0xc40
00000C12  FF01              inc word [bx+di]
00000C14  0C59              or al,0x59
00000C16  6F                outsw
00000C17  7520              jnz 0xc39
00000C19  686176            push word 0x7661
00000C1C  6520FF            gs and bh,bh
00000C1F  0026676F          add [0x6f67],ah
00000C23  6C                insb
00000C24  647320            fs jnc 0xc47
00000C27  696E20796F        imul bp,[bp+0x20],0x6f79
00000C2C  7572              jnz 0xca0
00000C2E  206163            and [bx+di+0x63],ah
00000C31  636F75            arpl [bx+0x75],bp
00000C34  6E                outsb
00000C35  742E              jz 0xc65
00000C37  FF01              inc word [bx+di]
00000C39  0C59              or al,0x59
00000C3B  6F                outsw
00000C3C  7520              jnz 0xc5e
00000C3E  686176            push word 0x7661
00000C41  65206F6E          and [gs:bx+0x6e],ch
00000C45  6520676F          and [gs:bx+0x6f],ah
00000C49  6C                insb
00000C4A  6420696E          and [fs:bx+di+0x6e],ch
00000C4E  20796F            and [bx+di+0x6f],bh
00000C51  7572              jnz 0xcc5
00000C53  206163            and [bx+di+0x63],ah
00000C56  636F75            arpl [bx+0x75],bp
00000C59  6E                outsb
00000C5A  742E              jz 0xc8a
00000C5C  FF01              inc word [bx+di]
00000C5E  0C55              or al,0x55
00000C60  6E                outsb
00000C61  6C                insb
00000C62  657373            gs jnc 0xcd8
00000C65  20796F            and [bx+di+0x6f],bh
00000C68  7520              jnz 0xc8a
00000C6A  686176            push word 0x7661
00000C6D  65206275          and [gs:bp+si+0x75],ah
00000C71  7369              jnc 0xcdc
00000C73  6E                outsb
00000C74  657373            gs jnc 0xcea
00000C77  2C20              sub al,0x20
00000C79  646F              fs outsw
00000C7B  6E                outsb
00000C7C  5C                pop sp
00000C7D  7420              jz 0xc9f
00000C7F  636F6D            arpl [bx+0x6d],bp
00000C82  6520696E          and [gs:bx+di+0x6e],ch
00000C86  206865            and [bx+si+0x65],ch
00000C89  7265              jc 0xcf0
00000C8B  2E20495C          and [cs:bx+di+0x5c],cl
00000C8F  6D                insw
00000C90  206120            and [bx+di+0x20],ah
00000C93  627573            bound si,[di+0x73]
00000C96  7920              jns 0xcb8
00000C98  6D                insw
00000C99  61                popa
00000C9A  6E                outsb
00000C9B  2EFF02            inc word [cs:bp+si]
00000C9E  11FF              adc di,di
00000CA0  FF0C              dec word [si]
00000CA2  4E                dec si
00000CA3  657874            gs js 0xd1a
00000CA6  207469            and [si+0x69],dh
00000CA9  6D                insw
00000CAA  6520706C          and [gs:bx+si+0x6c],dh
00000CAE  6561              gs popa
00000CB0  7365              jnc 0xd17
00000CB2  206465            and [si+0x65],ah
00000CB5  706F              jo 0xd26
00000CB7  7369              jnc 0xd22
00000CB9  7420              jz 0xcdb
00000CBB  61                popa
00000CBC  206C61            and [si+0x61],ch
00000CBF  7267              jc 0xd28
00000CC1  65207375          and [gs:bp+di+0x75],dh
00000CC5  6D                insw
00000CC6  20696E            and [bx+di+0x6e],ch
00000CC9  207361            and [bp+di+0x61],dh
00000CCC  7669              jna 0xd37
00000CCE  6E                outsb
00000CCF  67732E            a32 jnc 0xd00
00000CD2  20FF              and bh,bh
00000CD4  0211              add dl,[bx+di]
00000CD6  FF                db 0xff
00000CD7  FF0C              dec word [si]
00000CD9  54                push sp
00000CDA  68616E            push word 0x6e61
00000CDD  6B2079            imul sp,[bx+si],0x79
00000CE0  6F                outsw
00000CE1  752E              jnz 0xd11
00000CE3  20436F            and [bp+di+0x6f],al
00000CE6  6D                insw
00000CE7  65206167          and [gs:bx+di+0x67],ah
00000CEB  61                popa
00000CEC  696E20746F        imul bp,[bp+0x20],0x6f74
00000CF1  206D61            and [di+0x61],ch
00000CF4  6B652061          imul sp,[di+0x20],0x61
00000CF8  206465            and [si+0x65],ah
00000CFB  706F              jo 0xd6c
00000CFD  7369              jnc 0xd68
00000CFF  7420              jz 0xd21
00000D01  666F              outsd
00000D03  7220              jc 0xd25
00000D05  61                popa
00000D06  206C61            and [si+0x61],ch
00000D09  7267              jc 0xd72
00000D0B  65207375          and [gs:bp+di+0x75],dh
00000D0F  6D                insw
00000D10  20696E            and [bx+di+0x6e],ch
00000D13  207361            and [bp+di+0x61],dh
00000D16  7669              jna 0xd81
00000D18  6E                outsb
00000D19  67732E            a32 jnc 0xd4a
00000D1C  20FF              and bh,bh
00000D1E  0211              add dl,[bx+di]
00000D20  FF                db 0xff
00000D21  FF00              inc word [bx+si]
00000D23  0000              add [bx+si],al
00000D25  0000              add [bx+si],al
00000D27  0000              add [bx+si],al
00000D29  0000              add [bx+si],al
00000D2B  30FF              xor bh,bh
00000D2D  0000              add [bx+si],al
00000D2F  0000              add [bx+si],al
00000D31  0000              add [bx+si],al
00000D33  0000              add [bx+si],al
00000D35  0000              add [bx+si],al
00000D37  0000              add [bx+si],al
00000D39  0000              add [bx+si],al
00000D3B  00                db 0x00
