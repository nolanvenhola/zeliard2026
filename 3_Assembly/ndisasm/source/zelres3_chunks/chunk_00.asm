00000000  A805              test al,0x5
00000002  0000              add [bx+si],al
00000004  02A0BE84          add ah,[bx+si-0x7b42]
00000008  A5                movsw
00000009  2E8E062CFF        mov es,word [cs:0xff2c]
0000000E  BF0030            mov di,0x3000
00000011  B005              mov al,0x5
00000013  2EFF160C01        call word near [cs:0x10c]
00000018  2E8E062CFF        mov es,word [cs:0xff2c]
0000001D  BE8FA5            mov si,0xa58f
00000020  BF0060            mov di,0x6000
00000023  B002              mov al,0x2
00000025  2EFF160C01        call word near [cs:0x10c]
0000002A  1E                push ds
0000002B  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000030  BE0060            mov si,0x6000
00000033  BD00D0            mov bp,0xd000
00000036  B90001            mov cx,0x100
00000039  2EFF162830        call word near [cs:0x3028]
0000003E  1F                pop ds
0000003F  FE06A000          inc byte [0xa0]
00000043  B000              mov al,0x0
00000045  803EA00009        cmp byte [0xa0],0x9
0000004A  7207              jc 0x53
0000004C  C606A00009        mov byte [0xa0],0x9
00000051  B001              mov al,0x1
00000053  A2A4A5            mov [0xa5a4],al
00000056  BB5225            mov bx,0x2552
00000059  2EFF163E20        call word near [cs:0x203e]
0000005E  8026C200FE        and byte [0xc2],0xfe
00000063  BB6E0C            mov bx,0xc6e
00000066  B90D00            mov cx,0xd
00000069  F7C10100          test cx,0x1
0000006D  7505              jnz 0x74
0000006F  C60675FF1A        mov byte [0xff75],0x1a
00000074  51                push cx
00000075  53                push bx
00000076  FE06E700          inc byte [0xe7]
0000007A  8026E70003        and byte [0xe7],0x3
0000007F  E88903            call 0x40b
00000082  E80E04            call 0x493
00000085  5B                pop bx
00000086  80FF24            cmp bh,0x24
00000089  740F              jz 0x9a
0000008B  53                push bx
0000008C  B91802            mov cx,0x218
0000008F  32C0              xor al,al
00000091  2EFF160020        call word near [cs:0x2000]
00000096  5B                pop bx
00000097  80C702            add bh,0x2
0000009A  59                pop cx
0000009B  E2CC              loop 0x69
0000009D  C606E70004        mov byte [0xe7],0x4
000000A2  BB6E24            mov bx,0x246e
000000A5  E86303            call 0x40b
000000A8  B90500            mov cx,0x5
000000AB  51                push cx
000000AC  E8E403            call 0x493
000000AF  59                pop cx
000000B0  E2F9              loop 0xab
000000B2  C606E70005        mov byte [0xe7],0x5
000000B7  BB6E24            mov bx,0x246e
000000BA  E84E03            call 0x40b
000000BD  E8D303            call 0x493
000000C0  E8D003            call 0x493
000000C3  FE06E700          inc byte [0xe7]
000000C7  803EE70009        cmp byte [0xe7],0x9
000000CC  72E9              jc 0xb7
000000CE  BB6E24            mov bx,0x246e
000000D1  E83703            call 0x40b
000000D4  2EFF162430        call word near [cs:0x3024]
000000D9  32FF              xor bh,bh
000000DB  8A1EA000          mov bl,[0xa0]
000000DF  4B                dec bx
000000E0  8A8769A5          mov al,[bx-0x5a97]
000000E4  A29AA5            mov [0xa59a],al
000000E7  C6069BA502        mov byte [0xa59b],0x2
000000EC  E8B803            call 0x4a7
000000EF  8A269CA5          mov ah,[0xa59c]
000000F3  D0EC              shr ah,0x0
000000F5  D0EC              shr ah,0x0
000000F7  D0EC              shr ah,0x0
000000F9  A09DA5            mov al,[0xa59d]
000000FC  B91003            mov cx,0x310
000000FF  33FF              xor di,di
00000101  2EFF162620        call word near [cs:0x2026]
00000106  C606A5A500        mov byte [0xa5a5],0x0
0000010B  A0A5A5            mov al,[0xa5a5]
0000010E  8A1E9CA5          mov bl,[0xa59c]
00000112  32FF              xor bh,bh
00000114  8A0E9DA5          mov cl,[0xa59d]
00000118  2EFF162630        call word near [cs:0x3026]
0000011D  E87303            call 0x493
00000120  8A269CA5          mov ah,[0xa59c]
00000124  D0EC              shr ah,0x0
00000126  D0EC              shr ah,0x0
00000128  D0EC              shr ah,0x0
0000012A  A09DA5            mov al,[0xa59d]
0000012D  B91003            mov cx,0x310
00000130  33FF              xor di,di
00000132  2EFF162820        call word near [cs:0x2028]
00000137  FE06A5A5          inc byte [0xa5a5]
0000013B  803EA5A502        cmp byte [0xa5a5],0x2
00000140  72C9              jc 0x10b
00000142  8A269CA5          mov ah,[0xa59c]
00000146  D0EC              shr ah,0x0
00000148  D0EC              shr ah,0x0
0000014A  D0EC              shr ah,0x0
0000014C  80EC06            sub ah,0x6
0000014F  A09DA5            mov al,[0xa59d]
00000152  B91011            mov cx,0x1110
00000155  33FF              xor di,di
00000157  2EFF162620        call word near [cs:0x2026]
0000015C  C60675FF1B        mov byte [0xff75],0x1b
00000161  C606A5A500        mov byte [0xa5a5],0x0
00000166  A0A5A5            mov al,[0xa5a5]
00000169  0C80              or al,0x80
0000016B  8A1E9CA5          mov bl,[0xa59c]
0000016F  32FF              xor bh,bh
00000171  83EB18            sub bx,0x18
00000174  8A0E9DA5          mov cl,[0xa59d]
00000178  2EFF162630        call word near [cs:0x3026]
0000017D  E81303            call 0x493
00000180  E81003            call 0x493
00000183  8A269CA5          mov ah,[0xa59c]
00000187  D0EC              shr ah,0x0
00000189  D0EC              shr ah,0x0
0000018B  D0EC              shr ah,0x0
0000018D  80EC06            sub ah,0x6
00000190  A09DA5            mov al,[0xa59d]
00000193  B91011            mov cx,0x1110
00000196  33FF              xor di,di
00000198  2EFF162820        call word near [cs:0x2028]
0000019D  FE06A5A5          inc byte [0xa5a5]
000001A1  803EA5A502        cmp byte [0xa5a5],0x2
000001A6  72BE              jc 0x166
000001A8  BB5225            mov bx,0x2552
000001AB  B91004            mov cx,0x410
000001AE  32C0              xor al,al
000001B0  2EFF160020        call word near [cs:0x2000]
000001B5  2EFF162430        call word near [cs:0x3024]
000001BA  8A269CA5          mov ah,[0xa59c]
000001BE  D0EC              shr ah,0x0
000001C0  D0EC              shr ah,0x0
000001C2  D0EC              shr ah,0x0
000001C4  A09DA5            mov al,[0xa59d]
000001C7  B91003            mov cx,0x310
000001CA  33FF              xor di,di
000001CC  2EFF162620        call word near [cs:0x2026]
000001D1  C606A5A500        mov byte [0xa5a5],0x0
000001D6  A0A5A5            mov al,[0xa5a5]
000001D9  8A1E9CA5          mov bl,[0xa59c]
000001DD  32FF              xor bh,bh
000001DF  8A0E9DA5          mov cl,[0xa59d]
000001E3  2EFF162630        call word near [cs:0x3026]
000001E8  E8A802            call 0x493
000001EB  8A269CA5          mov ah,[0xa59c]
000001EF  D0EC              shr ah,0x0
000001F1  D0EC              shr ah,0x0
000001F3  D0EC              shr ah,0x0
000001F5  A09DA5            mov al,[0xa59d]
000001F8  B91003            mov cx,0x310
000001FB  33FF              xor di,di
000001FD  2EFF162820        call word near [cs:0x2028]
00000202  FE06A5A5          inc byte [0xa5a5]
00000206  803EA5A504        cmp byte [0xa5a5],0x4
0000020B  72C9              jc 0x1d6
0000020D  C606A7A5C8        mov byte [0xa5a7],0xc8
00000212  FE06A6A5          inc byte [0xa5a6]
00000216  F606A6A501        test byte [0xa5a6],0x1
0000021B  7519              jnz 0x236
0000021D  FE06A5A5          inc byte [0xa5a5]
00000221  FE06A7A5          inc byte [0xa5a7]
00000225  803EA7A503        cmp byte [0xa5a7],0x3
0000022A  720A              jc 0x236
0000022C  C606A7A500        mov byte [0xa5a7],0x0
00000231  C60675FF1C        mov byte [0xff75],0x1c
00000236  8A269CA5          mov ah,[0xa59c]
0000023A  D0EC              shr ah,0x0
0000023C  D0EC              shr ah,0x0
0000023E  D0EC              shr ah,0x0
00000240  A09DA5            mov al,[0xa59d]
00000243  B91003            mov cx,0x310
00000246  33FF              xor di,di
00000248  2EFF162820        call word near [cs:0x2028]
0000024D  E8BE02            call 0x50e
00000250  9C                pushf
00000251  8A269CA5          mov ah,[0xa59c]
00000255  D0EC              shr ah,0x0
00000257  D0EC              shr ah,0x0
00000259  D0EC              shr ah,0x0
0000025B  A09DA5            mov al,[0xa59d]
0000025E  B91003            mov cx,0x310
00000261  33FF              xor di,di
00000263  2EFF162620        call word near [cs:0x2026]
00000268  A0A5A5            mov al,[0xa5a5]
0000026B  2401              and al,0x1
0000026D  0402              add al,0x2
0000026F  8A1E9CA5          mov bl,[0xa59c]
00000273  32FF              xor bh,bh
00000275  8A0E9DA5          mov cl,[0xa59d]
00000279  2EFF162630        call word near [cs:0x3026]
0000027E  E81202            call 0x493
00000281  9D                popf
00000282  738E              jnc 0x212
00000284  8A269CA5          mov ah,[0xa59c]
00000288  D0EC              shr ah,0x0
0000028A  D0EC              shr ah,0x0
0000028C  D0EC              shr ah,0x0
0000028E  A09DA5            mov al,[0xa59d]
00000291  B91003            mov cx,0x310
00000294  33FF              xor di,di
00000296  2EFF162820        call word near [cs:0x2028]
0000029B  8A269CA5          mov ah,[0xa59c]
0000029F  D0EC              shr ah,0x0
000002A1  D0EC              shr ah,0x0
000002A3  D0EC              shr ah,0x0
000002A5  80EC06            sub ah,0x6
000002A8  A09DA5            mov al,[0xa59d]
000002AB  B91011            mov cx,0x1110
000002AE  33FF              xor di,di
000002B0  2EFF162620        call word near [cs:0x2026]
000002B5  C60675FF1B        mov byte [0xff75],0x1b
000002BA  C606A5A500        mov byte [0xa5a5],0x0
000002BF  A0A5A5            mov al,[0xa5a5]
000002C2  0C80              or al,0x80
000002C4  8A1E9CA5          mov bl,[0xa59c]
000002C8  32FF              xor bh,bh
000002CA  83EB18            sub bx,0x18
000002CD  8A0E9DA5          mov cl,[0xa59d]
000002D1  2EFF162630        call word near [cs:0x3026]
000002D6  E8BA01            call 0x493
000002D9  E8B701            call 0x493
000002DC  8A269CA5          mov ah,[0xa59c]
000002E0  D0EC              shr ah,0x0
000002E2  D0EC              shr ah,0x0
000002E4  D0EC              shr ah,0x0
000002E6  80EC06            sub ah,0x6
000002E9  A09DA5            mov al,[0xa59d]
000002EC  B91011            mov cx,0x1110
000002EF  33FF              xor di,di
000002F1  2EFF162820        call word near [cs:0x2028]
000002F6  FE06A5A5          inc byte [0xa5a5]
000002FA  803EA5A502        cmp byte [0xa5a5],0x2
000002FF  72BE              jc 0x2bf
00000301  A0A4A5            mov al,[0xa5a4]
00000304  8A1EA000          mov bl,[0xa0]
00000308  FECB              dec bl
0000030A  32FF              xor bh,bh
0000030C  03DB              add bx,bx
0000030E  8B9F72A5          mov bx,[bx-0x5a8e]
00000312  2EFF163E20        call word near [cs:0x203e]
00000317  8A269CA5          mov ah,[0xa59c]
0000031B  D0EC              shr ah,0x0
0000031D  D0EC              shr ah,0x0
0000031F  D0EC              shr ah,0x0
00000321  A09DA5            mov al,[0xa59d]
00000324  B91003            mov cx,0x310
00000327  33FF              xor di,di
00000329  2EFF162620        call word near [cs:0x2026]
0000032E  C606A5A504        mov byte [0xa5a5],0x4
00000333  A0A5A5            mov al,[0xa5a5]
00000336  FEC8              dec al
00000338  8A1E9CA5          mov bl,[0xa59c]
0000033C  32FF              xor bh,bh
0000033E  8A0E9DA5          mov cl,[0xa59d]
00000342  2EFF162630        call word near [cs:0x3026]
00000347  E84901            call 0x493
0000034A  8A269CA5          mov ah,[0xa59c]
0000034E  D0EC              shr ah,0x0
00000350  D0EC              shr ah,0x0
00000352  D0EC              shr ah,0x0
00000354  A09DA5            mov al,[0xa59d]
00000357  B91003            mov cx,0x310
0000035A  33FF              xor di,di
0000035C  2EFF162820        call word near [cs:0x2028]
00000361  FE0EA5A5          dec byte [0xa5a5]
00000365  75CC              jnz 0x333
00000367  1E                push ds
00000368  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000036D  BE0030            mov si,0x3000
00000370  33C0              xor ax,ax
00000372  CD60              int byte 0x60
00000374  1F                pop ds
00000375  F60626FFFF        test byte [0xff26],0xff
0000037A  74F9              jz 0x375
0000037C  B80100            mov ax,0x1
0000037F  CD60              int byte 0x60
00000381  BB5624            mov bx,0x2456
00000384  B91806            mov cx,0x618
00000387  32C0              xor al,al
00000389  2EFF160020        call word near [cs:0x2000]
0000038E  C606E70008        mov byte [0xe7],0x8
00000393  BB6E24            mov bx,0x246e
00000396  E87200            call 0x40b
00000399  E8F700            call 0x493
0000039C  E8F400            call 0x493
0000039F  FE0EE700          dec byte [0xe7]
000003A3  803EE70005        cmp byte [0xe7],0x5
000003A8  73E9              jnc 0x393
000003AA  BB6E24            mov bx,0x246e
000003AD  E85B00            call 0x40b
000003B0  B90500            mov cx,0x5
000003B3  51                push cx
000003B4  E8DC00            call 0x493
000003B7  59                pop cx
000003B8  E2F9              loop 0x3b3
000003BA  BB6E24            mov bx,0x246e
000003BD  B91802            mov cx,0x218
000003C0  32C0              xor al,al
000003C2  2EFF160020        call word near [cs:0x2000]
000003C7  BB6E26            mov bx,0x266e
000003CA  B90D00            mov cx,0xd
000003CD  F7C10100          test cx,0x1
000003D1  7505              jnz 0x3d8
000003D3  C60675FF1A        mov byte [0xff75],0x1a
000003D8  51                push cx
000003D9  53                push bx
000003DA  FE06E700          inc byte [0xe7]
000003DE  8026E70003        and byte [0xe7],0x3
000003E3  E82500            call 0x40b
000003E6  E8AA00            call 0x493
000003E9  5B                pop bx
000003EA  80FF3E            cmp bh,0x3e
000003ED  740F              jz 0x3fe
000003EF  53                push bx
000003F0  B91802            mov cx,0x218
000003F3  32C0              xor al,al
000003F5  2EFF160020        call word near [cs:0x2000]
000003FA  5B                pop bx
000003FB  80C702            add bh,0x2
000003FE  59                pop cx
000003FF  E2CC              loop 0x3cd
00000401  B91806            mov cx,0x618
00000404  32C0              xor al,al
00000406  2EFF260020        jmp word near [cs:0x2000]
0000040B  A0E700            mov al,[0xe7]
0000040E  B109              mov cl,0x9
00000410  F6E1              mul cl
00000412  0535A4            add ax,0xa435
00000415  8BF0              mov si,ax
00000417  B90300            mov cx,0x3
0000041A  51                push cx
0000041B  B90300            mov cx,0x3
0000041E  51                push cx
0000041F  AC                lodsb
00000420  56                push si
00000421  53                push bx
00000422  2EFF162230        call word near [cs:0x3022]
00000427  5B                pop bx
00000428  5E                pop si
00000429  80C308            add bl,0x8
0000042C  59                pop cx
0000042D  E2EF              loop 0x41e
0000042F  80EB18            sub bl,0x18
00000432  80C702            add bh,0x2
00000435  59                pop cx
00000436  E2E2              loop 0x41a
00000438  C3                ret
00000439  0002              add [bp+si],al
0000043B  0401              add al,0x1
0000043D  0305              add ax,[di]
0000043F  0000              add [bx+si],al
00000441  06                push es
00000442  07                pop es
00000443  090B              or [bp+di],cx
00000445  080A              or [bp+si],cl
00000447  0C00              or al,0x0
00000449  0000              add [bx+si],al
0000044B  0002              add [bp+si],al
0000044D  0E                push cs
0000044E  010D              add [di],cx
00000450  0F0000            sldt word [bx+si]
00000453  1007              adc [bx],al
00000455  0911              or [bx+di],dx
00000457  080A              or [bp+si],cl
00000459  1200              adc al,[bx+si]
0000045B  0000              add [bx+si],al
0000045D  0014              add [si],dl
0000045F  16                push ss
00000460  1315              adc dx,[di]
00000462  17                pop ss
00000463  0000              add [bx+si],al
00000465  1819              sbb [bx+di],bl
00000467  001C              add [si],bl
00000469  1A1B              sbb bl,[bp+di]
0000046B  1D0000            sbb ax,0x0
0000046E  1E                push ds
0000046F  1F                pop ds
00000470  0023              add [bp+di],ah
00000472  2021              and [bx+di],ah
00000474  2400              and al,0x0
00000476  2225              and ah,[di]
00000478  1F                pop ds
00000479  0023              add [bp+di],ah
0000047B  20262800          and [0x28],ah
0000047F  27                daa
00000480  291F              sub [bx],bx
00000482  0023              add [bp+di],ah
00000484  2A2C              sub ch,[si]
00000486  282B              sub [bp+di],ch
00000488  2D292E            sub ax,0x2e29
0000048B  3123              xor [bp+di],sp
0000048D  2F                das
0000048E  3234              xor dh,[si]
00000490  3033              xor [bp+di],dh
00000492  358A0E            xor ax,0xe8a
00000495  33FF              xor di,di
00000497  B004              mov al,0x4
00000499  F6E1              mul cl
0000049B  38061AFF          cmp [0xff1a],al
0000049F  72FA              jc 0x49b
000004A1  C6061AFF00        mov byte [0xff1a],0x0
000004A6  C3                ret
000004A7  C6069CA594        mov byte [0xa59c],0x94
000004AC  C6069DA550        mov byte [0xa59d],0x50
000004B1  32C9              xor cl,cl
000004B3  A09AA5            mov al,[0xa59a]
000004B6  2A069CA5          sub al,[0xa59c]
000004BA  740A              jz 0x4c6
000004BC  7306              jnc 0x4c4
000004BE  F6D8              neg al
000004C0  FEC9              dec cl
000004C2  EB02              jmp 0x4c6
000004C4  FEC1              inc cl
000004C6  A2A0A5            mov [0xa5a0],al
000004C9  880E9EA5          mov [0xa59e],cl
000004CD  32C9              xor cl,cl
000004CF  A09BA5            mov al,[0xa59b]
000004D2  2A069DA5          sub al,[0xa59d]
000004D6  740A              jz 0x4e2
000004D8  7306              jnc 0x4e0
000004DA  F6D8              neg al
000004DC  FEC9              dec cl
000004DE  EB02              jmp 0x4e2
000004E0  FEC1              inc cl
000004E2  A2A1A5            mov [0xa5a1],al
000004E5  880E9FA5          mov [0xa59f],cl
000004E9  A0A0A5            mov al,[0xa5a0]
000004EC  D0E8              shr al,0x0
000004EE  A2A3A5            mov [0xa5a3],al
000004F1  C606A2A500        mov byte [0xa5a2],0x0
000004F6  A0A0A5            mov al,[0xa5a0]
000004F9  3A06A1A5          cmp al,[0xa5a1]
000004FD  7201              jc 0x500
000004FF  C3                ret
00000500  A0A1A5            mov al,[0xa5a1]
00000503  D0E8              shr al,0x0
00000505  A2A3A5            mov [0xa5a3],al
00000508  C606A2A5FF        mov byte [0xa5a2],0xff
0000050D  C3                ret
0000050E  F606A2A5FF        test byte [0xa5a2],0xff
00000513  752C              jnz 0x541
00000515  A0A3A5            mov al,[0xa5a3]
00000518  2A06A1A5          sub al,[0xa5a1]
0000051C  730C              jnc 0x52a
0000051E  0206A0A5          add al,[0xa5a0]
00000522  8A269FA5          mov ah,[0xa59f]
00000526  00269DA5          add [0xa59d],ah
0000052A  A2A3A5            mov [0xa5a3],al
0000052D  A09EA5            mov al,[0xa59e]
00000530  00069CA5          add [0xa59c],al
00000534  A09AA5            mov al,[0xa59a]
00000537  3A069CA5          cmp al,[0xa59c]
0000053B  F9                stc
0000053C  7501              jnz 0x53f
0000053E  C3                ret
0000053F  F8                clc
00000540  C3                ret
00000541  A0A3A5            mov al,[0xa5a3]
00000544  2A06A0A5          sub al,[0xa5a0]
00000548  730C              jnc 0x556
0000054A  0206A1A5          add al,[0xa5a1]
0000054E  8A269EA5          mov ah,[0xa59e]
00000552  00269CA5          add [0xa59c],ah
00000556  A2A3A5            mov [0xa5a3],al
00000559  A09FA5            mov al,[0xa59f]
0000055C  00069DA5          add [0xa59d],al
00000560  A09BA5            mov al,[0xa59b]
00000563  3A069DA5          cmp al,[0xa59d]
00000567  F9                stc
00000568  7501              jnz 0x56b
0000056A  C3                ret
0000056B  F8                clc
0000056C  C3                ret
0000056D  3CF4              cmp al,0xf4
0000056F  54                push sp
00000570  DC6CC4            fsubr qword [si-0x3c]
00000573  84AC9800          test [si+0x98],ch
00000577  0F                db 0x0f
00000578  003D              add [di],bh
0000057A  0015              add [di],dl
0000057C  0037              add [bx],dh
0000057E  001B              add [bp+di],bl
00000580  0031              add [bx+di],dh
00000582  0021              add [bx+di],ah
00000584  002B              add [bp+di],ch
00000586  0026025F          add [0x5f02],ah
0000058A  4D                dec bp
0000058B  46                inc si
0000058C  41                inc cx
0000058D  4E                dec si
0000058E  2E4D              cs dec bp
00000590  53                push bx
00000591  44                inc sp
00000592  0002              add [bp+si],al
00000594  3644              ss inc sp
00000596  4D                dec bp
00000597  41                inc cx
00000598  4E                dec si
00000599  2E47              cs inc di
0000059B  52                push dx
0000059C  50                push ax
0000059D  0000              add [bx+si],al
0000059F  0000              add [bx+si],al
000005A1  0000              add [bx+si],al
000005A3  0000              add [bx+si],al
000005A5  0000              add [bx+si],al
000005A7  0000              add [bx+si],al
000005A9  0000              add [bx+si],al
000005AB  00                db 0x00
