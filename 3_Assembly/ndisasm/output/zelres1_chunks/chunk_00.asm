00000000  29360000          sub [0x0],si
00000004  0260FA            add ah,[bx+si-0x6]
00000007  BC0020            mov sp,0x2000
0000000A  FB                sti
0000000B  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00000011  2EC60629FF00      mov byte [cs:0xff29],0x0
00000017  0E                push cs
00000018  1F                pop ds
00000019  2EFF164220        call word near [cs:0x2042]
0000001E  0E                push cs
0000001F  1F                pop ds
00000020  0E                push cs
00000021  07                pop es
00000022  BE7E95            mov si,0x957e
00000025  BF00A0            mov di,0xa000
00000028  B002              mov al,0x2
0000002A  2EFF160C01        call word near [cs:0x10c]
0000002F  2E8E062CFF        mov es,word [cs:0xff2c]
00000034  BE00A0            mov si,0xa000
00000037  BF0040            mov di,0x4000
0000003A  E8A80D            call 0xde5
0000003D  B80400            mov ax,0x4
00000040  2EFF160830        call word near [cs:0x3008]
00000045  33DB              xor bx,bx
00000047  B196              mov cl,0x96
00000049  BEEA64            mov si,0x64ea
0000004C  2EFF162A20        call word near [cs:0x202a]
00000051  BB0F07            mov bx,0x70f
00000054  B97041            mov cx,0x4170
00000057  2E8E062CFF        mov es,word [cs:0xff2c]
0000005C  BF0040            mov di,0x4000
0000005F  2EFF161A30        call word near [cs:0x301a]
00000064  0E                push cs
00000065  07                pop es
00000066  BE3D95            mov si,0x953d
00000069  BF00A0            mov di,0xa000
0000006C  B002              mov al,0x2
0000006E  2EFF160C01        call word near [cs:0x10c]
00000073  BE4795            mov si,0x9547
00000076  BF00B8            mov di,0xb800
00000079  B002              mov al,0x2
0000007B  2EFF160C01        call word near [cs:0x10c]
00000080  2E8E062CFF        mov es,word [cs:0xff2c]
00000085  BE00A0            mov si,0xa000
00000088  BF0040            mov di,0x4000
0000008B  E8D40C            call 0xd62
0000008E  2EFF164220        call word near [cs:0x2042]
00000093  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00000099  2EC60629FF00      mov byte [cs:0xff29],0x0
0000009F  B80100            mov ax,0x1
000000A2  2EFF160830        call word near [cs:0x3008]
000000A7  B0FF              mov al,0xff
000000A9  BB2012            mov bx,0x1220
000000AC  B9682C            mov cx,0x2c68
000000AF  2E8E062CFF        mov es,word [cs:0xff2c]
000000B4  BF0040            mov di,0x4000
000000B7  2EFF160230        call word near [cs:0x3002]
000000BC  E89D02            call 0x35c
000000BF  B80200            mov ax,0x2
000000C2  2EFF160830        call word near [cs:0x3008]
000000C7  B0FF              mov al,0xff
000000C9  BB2012            mov bx,0x1220
000000CC  B9682C            mov cx,0x2c68
000000CF  2E8E062CFF        mov es,word [cs:0xff2c]
000000D4  BF0040            mov di,0x4000
000000D7  2EFF160430        call word near [cs:0x3004]
000000DC  2E8E062CFF        mov es,word [cs:0xff2c]
000000E1  BE00B8            mov si,0xb800
000000E4  BF0090            mov di,0x9000
000000E7  E8780C            call 0xd62
000000EA  BB4820            mov bx,0x2048
000000ED  B94010            mov cx,0x1040
000000F0  2E8E062CFF        mov es,word [cs:0xff2c]
000000F5  BFA075            mov di,0x75a0
000000F8  2EFF161030        call word near [cs:0x3010]
000000FD  2EC60675FF04      mov byte [cs:0xff75],0x4
00000103  BE6090            mov si,0x9060
00000106  2EFF161230        call word near [cs:0x3012]
0000010B  0E                push cs
0000010C  07                pop es
0000010D  BE5195            mov si,0x9551
00000110  BF00A0            mov di,0xa000
00000113  B002              mov al,0x2
00000115  2EFF160C01        call word near [cs:0x10c]
0000011A  2E8E062CFF        mov es,word [cs:0xff2c]
0000011F  BE00A0            mov si,0xa000
00000122  BFC097            mov di,0x97c0
00000125  E83A0C            call 0xd62
00000128  E8E80C            call 0xe13
0000012B  BB2012            mov bx,0x1220
0000012E  B9682C            mov cx,0x2c68
00000131  2EFF160630        call word near [cs:0x3006]
00000136  B80300            mov ax,0x3
00000139  2EFF160830        call word near [cs:0x3008]
0000013E  8CC8              mov ax,cs
00000140  050020            add ax,0x2000
00000143  8EC0              mov es,ax
00000145  B0FF              mov al,0xff
00000147  BB2017            mov bx,0x1720
0000014A  B97022            mov cx,0x2270
0000014D  BF0000            mov di,0x0
00000150  2EFF160430        call word near [cs:0x3004]
00000155  BE1E91            mov si,0x911e
00000158  C6061AFF00        mov byte [0xff1a],0x0
0000015D  AC                lodsb
0000015E  0AC0              or al,al
00000160  7413              jz 0x175
00000162  56                push si
00000163  FEC8              dec al
00000165  BB2017            mov bx,0x1720
00000168  2EFF161430        call word near [cs:0x3014]
0000016D  5E                pop si
0000016E  B014              mov al,0x14
00000170  E83C02            call 0x3af
00000173  EBE3              jmp 0x158
00000175  C6061AFF00        mov byte [0xff1a],0x0
0000017A  B0F0              mov al,0xf0
0000017C  E83002            call 0x3af
0000017F  BE9690            mov si,0x9096
00000182  E85001            call 0x2d5
00000185  C6061AFF00        mov byte [0xff1a],0x0
0000018A  B0F0              mov al,0xf0
0000018C  E82002            call 0x3af
0000018F  B002              mov al,0x2
00000191  BB2017            mov bx,0x1720
00000194  2EFF161430        call word near [cs:0x3014]
00000199  C6061AFF00        mov byte [0xff1a],0x0
0000019E  B00F              mov al,0xf
000001A0  E80C02            call 0x3af
000001A3  B003              mov al,0x3
000001A5  BB2017            mov bx,0x1720
000001A8  2EFF161430        call word near [cs:0x3014]
000001AD  C6061AFF00        mov byte [0xff1a],0x0
000001B2  B0F0              mov al,0xf0
000001B4  E8F801            call 0x3af
000001B7  32C0              xor al,al
000001B9  BB9400            mov bx,0x94
000001BC  B91E50            mov cx,0x501e
000001BF  2EFF160020        call word near [cs:0x2000]
000001C4  0E                push cs
000001C5  07                pop es
000001C6  BE6895            mov si,0x9568
000001C9  BF00A0            mov di,0xa000
000001CC  B002              mov al,0x2
000001CE  2EFF160C01        call word near [cs:0x10c]
000001D3  2E8E062CFF        mov es,word [cs:0xff2c]
000001D8  BE00A0            mov si,0xa000
000001DB  BF0040            mov di,0x4000
000001DE  E8040C            call 0xde5
000001E1  0E                push cs
000001E2  07                pop es
000001E3  BE7395            mov si,0x9573
000001E6  BF00A0            mov di,0xa000
000001E9  B002              mov al,0x2
000001EB  2EFF160C01        call word near [cs:0x10c]
000001F0  BE7E95            mov si,0x957e
000001F3  BF00B0            mov di,0xb000
000001F6  B002              mov al,0x2
000001F8  2EFF160C01        call word near [cs:0x10c]
000001FD  BE5D95            mov si,0x955d
00000200  2E8E062CFF        mov es,word [cs:0xff2c]
00000205  BF0030            mov di,0x3000
00000208  B005              mov al,0x5
0000020A  2EFF160C01        call word near [cs:0x10c]
0000020F  BB2017            mov bx,0x1720
00000212  B97022            mov cx,0x2270
00000215  2EFF160630        call word near [cs:0x3006]
0000021A  B80400            mov ax,0x4
0000021D  2EFF160830        call word near [cs:0x3008]
00000222  C6061AFF00        mov byte [0xff1a],0x0
00000227  1E                push ds
00000228  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000022D  BE0030            mov si,0x3000
00000230  33C0              xor ax,ax
00000232  CD60              int byte 0x60
00000234  1F                pop ds
00000235  2EFF161830        call word near [cs:0x3018]
0000023A  B0F0              mov al,0xf0
0000023C  E87001            call 0x3af
0000023F  32C0              xor al,al
00000241  BB480B            mov bx,0xb48
00000244  B98031            mov cx,0x3180
00000247  2E8E062CFF        mov es,word [cs:0xff2c]
0000024C  BF0040            mov di,0x4000
0000024F  2EFF160430        call word near [cs:0x3004]
00000254  C6061AFF00        mov byte [0xff1a],0x0
00000259  2E8E062CFF        mov es,word [cs:0xff2c]
0000025E  BE00B0            mov si,0xb000
00000261  BF0040            mov di,0x4000
00000264  E87E0B            call 0xde5
00000267  B0F0              mov al,0xf0
00000269  E84301            call 0x3af
0000026C  BB0F07            mov bx,0x70f
0000026F  B97041            mov cx,0x4170
00000272  2E8E062CFF        mov es,word [cs:0xff2c]
00000277  BF0040            mov di,0x4000
0000027A  2EFF161A30        call word near [cs:0x301a]
0000027F  C6061AFF00        mov byte [0xff1a],0x0
00000284  2E8E062CFF        mov es,word [cs:0xff2c]
00000289  BE00A0            mov si,0xa000
0000028C  BF0040            mov di,0x4000
0000028F  E8530B            call 0xde5
00000292  BE2B91            mov si,0x912b
00000295  2EFF161C30        call word near [cs:0x301c]
0000029A  B0F0              mov al,0xf0
0000029C  E81001            call 0x3af
0000029F  B8C700            mov ax,0xc7
000002A2  B96400            mov cx,0x64
000002A5  51                push cx
000002A6  C6061AFF00        mov byte [0xff1a],0x0
000002AB  50                push ax
000002AC  2EFF161E30        call word near [cs:0x301e]
000002B1  58                pop ax
000002B2  50                push ax
000002B3  8AC4              mov al,ah
000002B5  2EFF161E30        call word near [cs:0x301e]
000002BA  B050              mov al,0x50
000002BC  E8F000            call 0x3af
000002BF  58                pop ax
000002C0  80C402            add ah,0x2
000002C3  2C02              sub al,0x2
000002C5  59                pop cx
000002C6  E2DD              loop 0x2a5
000002C8  E80501            call 0x3d0
000002CB  F60626FFFF        test byte [0xff26],0xff
000002D0  74F6              jz 0x2c8
000002D2  E91401            jmp 0x3e9
000002D5  C6063F658A        mov byte [0x653f],0x8a
000002DA  C6061AFF00        mov byte [0xff1a],0x0
000002DF  AC                lodsb
000002E0  0AC0              or al,al
000002E2  7501              jnz 0x2e5
000002E4  C3                ret
000002E5  3C05              cmp al,0x5
000002E7  730E              jnc 0x2f7
000002E9  56                push si
000002EA  FEC8              dec al
000002EC  BB701F            mov bx,0x1f70
000002EF  2EFF161630        call word near [cs:0x3016]
000002F4  5E                pop si
000002F5  EBE8              jmp 0x2df
000002F7  E80700            call 0x301
000002FA  B014              mov al,0x14
000002FC  E8B000            call 0x3af
000002FF  EBD9              jmp 0x2da
00000301  3CFF              cmp al,0xff
00000303  751D              jnz 0x322
00000305  AC                lodsb
00000306  0AC0              or al,al
00000308  7501              jnz 0x30b
0000030A  C3                ret
0000030B  3C01              cmp al,0x1
0000030D  7401              jz 0x310
0000030F  C3                ret
00000310  33C0              xor ax,ax
00000312  AC                lodsb
00000313  03C0              add ax,ax
00000315  03C0              add ax,ax
00000317  03C0              add ax,ax
00000319  A33D65            mov [0x653d],ax
0000031C  80063F650A        add byte [0x653f],0xa
00000321  C3                ret
00000322  50                push ax
00000323  56                push si
00000324  50                push ax
00000325  8B1E3D65          mov bx,[0x653d]
00000329  83C302            add bx,0x2
0000032C  8A0E3F65          mov cl,[0x653f]
00000330  80C101            add cl,0x1
00000333  B402              mov ah,0x2
00000335  2EFF163030        call word near [cs:0x3030]
0000033A  58                pop ax
0000033B  8B1E3D65          mov bx,[0x653d]
0000033F  8A0E3F65          mov cl,[0x653f]
00000343  B407              mov ah,0x7
00000345  2EFF163030        call word near [cs:0x3030]
0000034A  5E                pop si
0000034B  83063D6508        add word [0x653d],0x8
00000350  58                pop ax
00000351  3C20              cmp al,0x20
00000353  7501              jnz 0x356
00000355  C3                ret
00000356  C60675FF3F        mov byte [0xff75],0x3f
0000035B  C3                ret
0000035C  BB2000            mov bx,0x20
0000035F  B97850            mov cx,0x5078
00000362  2EFF160A30        call word near [cs:0x300a]
00000367  BEF06F            mov si,0x6ff0
0000036A  2EFF160C30        call word near [cs:0x300c]
0000036F  56                push si
00000370  B90A00            mov cx,0xa
00000373  51                push cx
00000374  8BC1              mov ax,cx
00000376  F7D8              neg ax
00000378  050A00            add ax,0xa
0000037B  BB2000            mov bx,0x20
0000037E  B97850            mov cx,0x5078
00000381  2EFF160E30        call word near [cs:0x300e]
00000386  B01C              mov al,0x1c
00000388  E82400            call 0x3af
0000038B  59                pop cx
0000038C  E2E5              loop 0x373
0000038E  5E                pop si
0000038F  807CFFFF          cmp byte [si-0x1],0xff
00000393  75D5              jnz 0x36a
00000395  B97800            mov cx,0x78
00000398  51                push cx
00000399  33C0              xor ax,ax
0000039B  BB2000            mov bx,0x20
0000039E  B97850            mov cx,0x5078
000003A1  2EFF160E30        call word near [cs:0x300e]
000003A6  B01C              mov al,0x1c
000003A8  E80400            call 0x3af
000003AB  59                pop cx
000003AC  E2EA              loop 0x398
000003AE  C3                ret
000003AF  2EF6061DFFFF      test byte [cs:0xff1d],0xff
000003B5  7532              jnz 0x3e9
000003B7  2E803E29FF0D      cmp byte [cs:0xff29],0xd
000003BD  742A              jz 0x3e9
000003BF  E80E00            call 0x3d0
000003C2  2E38061AFF        cmp [cs:0xff1a],al
000003C7  72E6              jc 0x3af
000003C9  2EC6061AFF00      mov byte [cs:0xff1a],0x0
000003CF  C3                ret
000003D0  56                push si
000003D1  50                push ax
000003D2  2EFF161001        call word near [cs:0x110]
000003D7  2EFF161201        call word near [cs:0x112]
000003DC  2EFF161601        call word near [cs:0x116]
000003E1  2EFF161801        call word near [cs:0x118]
000003E6  58                pop ax
000003E7  5E                pop si
000003E8  C3                ret
000003E9  C60624FF08        mov byte [0xff24],0x8
000003EE  B0FF              mov al,0xff
000003F0  BB0000            mov bx,0x0
000003F3  B9C850            mov cx,0x50c8
000003F6  2EFF160630        call word near [cs:0x3006]
000003FB  F60626FFFF        test byte [0xff26],0xff
00000400  74F9              jz 0x3fb
00000402  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00000408  2EC60629FF00      mov byte [cs:0xff29],0x0
0000040E  EB00              jmp 0x410
00000410  FA                cli
00000411  BC0020            mov sp,0x2000
00000414  FB                sti
00000415  0E                push cs
00000416  1F                pop ds
00000417  2EFF164220        call word near [cs:0x2042]
0000041C  BE8995            mov si,0x9589
0000041F  2E8E062CFF        mov es,word [cs:0xff2c]
00000424  BF0030            mov di,0x3000
00000427  B005              mov al,0x5
00000429  2EFF160C01        call word near [cs:0x10c]
0000042E  C6061AFF00        mov byte [0xff1a],0x0
00000433  1E                push ds
00000434  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000439  BE0030            mov si,0x3000
0000043C  33C0              xor ax,ax
0000043E  CD60              int byte 0x60
00000440  1F                pop ds
00000441  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00000447  2EC60629FF00      mov byte [cs:0xff29],0x0
0000044D  B80100            mov ax,0x1
00000450  2EFF160830        call word near [cs:0x3008]
00000455  E84300            call 0x49b
00000458  EB21              jmp 0x47b
0000045A  2EF6061DFFFF      test byte [cs:0xff1d],0xff
00000460  7519              jnz 0x47b
00000462  2E803E29FF0D      cmp byte [cs:0xff29],0xd
00000468  7411              jz 0x47b
0000046A  E863FF            call 0x3d0
0000046D  2E38061AFF        cmp [cs:0xff1a],al
00000472  72E6              jc 0x45a
00000474  2EC6061AFF00      mov byte [cs:0xff1a],0x0
0000047A  C3                ret
0000047B  C60624FF08        mov byte [0xff24],0x8
00000480  2EFF164220        call word near [cs:0x2042]
00000485  F60626FFFF        test byte [0xff26],0xff
0000048A  74F9              jz 0x485
0000048C  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00000492  2EC60629FF00      mov byte [cs:0xff29],0x0
00000498  E9A900            jmp 0x544
0000049B  BB2000            mov bx,0x20
0000049E  B97850            mov cx,0x5078
000004A1  2EFF160A30        call word near [cs:0x300a]
000004A6  BE2F74            mov si,0x742f
000004A9  2EFF160C30        call word near [cs:0x300c]
000004AE  56                push si
000004AF  B90A00            mov cx,0xa
000004B2  51                push cx
000004B3  8BC1              mov ax,cx
000004B5  F7D8              neg ax
000004B7  050A00            add ax,0xa
000004BA  BB2000            mov bx,0x20
000004BD  B97850            mov cx,0x5078
000004C0  2EFF160E30        call word near [cs:0x300e]
000004C5  B01C              mov al,0x1c
000004C7  E890FF            call 0x45a
000004CA  59                pop cx
000004CB  E2E5              loop 0x4b2
000004CD  5E                pop si
000004CE  807CFFFF          cmp byte [si-0x1],0xff
000004D2  75D5              jnz 0x4a9
000004D4  B97800            mov cx,0x78
000004D7  51                push cx
000004D8  33C0              xor ax,ax
000004DA  BB2000            mov bx,0x20
000004DD  B97850            mov cx,0x5078
000004E0  2EFF160E30        call word near [cs:0x300e]
000004E5  B01C              mov al,0x1c
000004E7  E870FF            call 0x45a
000004EA  59                pop cx
000004EB  E2EA              loop 0x4d7
000004ED  C3                ret
000004EE  8720              xchg sp,[bx+si]
000004F0  2020              and [bx+si],ah
000004F2  20436F            and [bp+di+0x6f],al
000004F5  7079              jo 0x570
000004F7  7269              jc 0x562
000004F9  67687420          a32 push word 0x2074
000004FD  284329            sub [bp+di+0x29],al
00000500  3139              xor [bx+di],di
00000502  3837              cmp [bx],dh
00000504  2C31              sub al,0x31
00000506  3939              cmp [bx+di],di
00000508  3020              xor [bx+si],ah
0000050A  47                inc di
0000050B  41                inc cx
0000050C  4D                dec bp
0000050D  45                inc bp
0000050E  204152            and [bx+di+0x52],al
00000511  54                push sp
00000512  53                push bx
00000513  2020              and [bx+si],ah
00000515  2020              and [bx+si],ah
00000517  0D2020            or ax,0x2020
0000051A  2020              and [bx+si],ah
0000051C  43                inc bx
0000051D  6F                outsw
0000051E  7079              jo 0x599
00000520  7269              jc 0x58b
00000522  67687420          a32 push word 0x2074
00000526  284329            sub [bp+di+0x29],al
00000529  3139              xor [bx+di],di
0000052B  3930              cmp [bx+si],si
0000052D  205369            and [bp+di+0x69],dl
00000530  657272            gs jc 0x5a5
00000533  61                popa
00000534  204F6E            and [bx+0x6e],cl
00000537  2D4C69            sub ax,0x694c
0000053A  6E                outsb
0000053B  652020            and [gs:bx+si],ah
0000053E  2020              and [bx+si],ah
00000540  FF00              inc word [bx+si]
00000542  0000              add [bx+si],al
00000544  FA                cli
00000545  BC0020            mov sp,0x2000
00000548  FB                sti
00000549  2EC6061DFF00      mov byte [cs:0xff1d],0x0
0000054F  2EC60629FF00      mov byte [cs:0xff29],0x0
00000555  2EC706566DC679    mov word [cs:0x6d56],0x79c6
0000055C  B80500            mov ax,0x5
0000055F  2EFF160830        call word near [cs:0x3008]
00000564  0E                push cs
00000565  07                pop es
00000566  BE9495            mov si,0x9594
00000569  BF00A0            mov di,0xa000
0000056C  B002              mov al,0x2
0000056E  2EFF160C01        call word near [cs:0x10c]
00000573  8CC8              mov ax,cs
00000575  050020            add ax,0x2000
00000578  8EC0              mov es,ax
0000057A  BE00A0            mov si,0xa000
0000057D  BF0000            mov di,0x0
00000580  E8DF07            call 0xd62
00000583  0E                push cs
00000584  07                pop es
00000585  BE9F95            mov si,0x959f
00000588  BF00A0            mov di,0xa000
0000058B  B002              mov al,0x2
0000058D  2EFF160C01        call word near [cs:0x10c]
00000592  2E8E062CFF        mov es,word [cs:0xff2c]
00000597  BE00A0            mov si,0xa000
0000059A  BF0040            mov di,0x4000
0000059D  E8C207            call 0xd62
000005A0  BB0000            mov bx,0x0
000005A3  B98850            mov cx,0x5088
000005A6  8CC8              mov ax,cs
000005A8  050020            add ax,0x2000
000005AB  8EC0              mov es,ax
000005AD  BF0000            mov di,0x0
000005B0  2EFF161030        call word near [cs:0x3010]
000005B5  BB1004            mov bx,0x410
000005B8  B96848            mov cx,0x4868
000005BB  2E8E062CFF        mov es,word [cs:0xff2c]
000005C0  BF0040            mov di,0x4000
000005C3  2EFF161030        call word near [cs:0x3010]
000005C8  E8AE04            call 0xa79
000005CB  B80900            mov ax,0x9
000005CE  2EFF160830        call word near [cs:0x3008]
000005D3  BB1004            mov bx,0x410
000005D6  B96848            mov cx,0x4868
000005D9  2E8E062CFF        mov es,word [cs:0xff2c]
000005DE  BF0040            mov di,0x4000
000005E1  2EFF161030        call word near [cs:0x3010]
000005E6  0E                push cs
000005E7  07                pop es
000005E8  BEA995            mov si,0x95a9
000005EB  BF00A0            mov di,0xa000
000005EE  B002              mov al,0x2
000005F0  2EFF160C01        call word near [cs:0x10c]
000005F5  2E8E062CFF        mov es,word [cs:0xff2c]
000005FA  BE00A0            mov si,0xa000
000005FD  BF0040            mov di,0x4000
00000600  E85F07            call 0xd62
00000603  E87304            call 0xa79
00000606  33C0              xor ax,ax
00000608  2EFF162030        call word near [cs:0x3020]
0000060D  B80600            mov ax,0x6
00000610  2EFF160830        call word near [cs:0x3008]
00000615  BB1004            mov bx,0x410
00000618  B96848            mov cx,0x4868
0000061B  2E8E062CFF        mov es,word [cs:0xff2c]
00000620  BF0040            mov di,0x4000
00000623  2EFF161030        call word near [cs:0x3010]
00000628  0E                push cs
00000629  07                pop es
0000062A  BE5195            mov si,0x9551
0000062D  BF00A0            mov di,0xa000
00000630  B002              mov al,0x2
00000632  2EFF160C01        call word near [cs:0x10c]
00000637  2E8E062CFF        mov es,word [cs:0xff2c]
0000063C  BE00A0            mov si,0xa000
0000063F  BFC097            mov di,0x97c0
00000642  E81D07            call 0xd62
00000645  E83104            call 0xa79
00000648  B004              mov al,0x4
0000064A  E84608            call 0xe93
0000064D  8CC8              mov ax,cs
0000064F  050020            add ax,0x2000
00000652  8EC0              mov es,ax
00000654  BF0000            mov di,0x0
00000657  E88208            call 0xedc
0000065A  BB1004            mov bx,0x410
0000065D  B96848            mov cx,0x4868
00000660  2E8E062CFF        mov es,word [cs:0xff2c]
00000665  BF0040            mov di,0x4000
00000668  2EFF161030        call word near [cs:0x3010]
0000066D  E80904            call 0xa79
00000670  E80604            call 0xa79
00000673  8CC8              mov ax,cs
00000675  050020            add ax,0x2000
00000678  8EC0              mov es,ax
0000067A  BF0000            mov di,0x0
0000067D  BB2817            mov bx,0x1728
00000680  B93022            mov cx,0x2230
00000683  B007              mov al,0x7
00000685  2EFF162230        call word near [cs:0x3022]
0000068A  E8EC03            call 0xa79
0000068D  E8E903            call 0xa79
00000690  B002              mov al,0x2
00000692  E8FE07            call 0xe93
00000695  8CC8              mov ax,cs
00000697  050020            add ax,0x2000
0000069A  8EC0              mov es,ax
0000069C  BF0000            mov di,0x0
0000069F  BB2817            mov bx,0x1728
000006A2  B93022            mov cx,0x2230
000006A5  2EFF161030        call word near [cs:0x3010]
000006AA  2EC6061AFF00      mov byte [cs:0xff1a],0x0
000006B0  B00F              mov al,0xf
000006B2  E85603            call 0xa0b
000006B5  B003              mov al,0x3
000006B7  E8D907            call 0xe93
000006BA  8CC8              mov ax,cs
000006BC  050020            add ax,0x2000
000006BF  8EC0              mov es,ax
000006C1  BF0000            mov di,0x0
000006C4  BB2817            mov bx,0x1728
000006C7  B93022            mov cx,0x2230
000006CA  2EFF161030        call word near [cs:0x3010]
000006CF  0E                push cs
000006D0  07                pop es
000006D1  BEB495            mov si,0x95b4
000006D4  BF00A0            mov di,0xa000
000006D7  B002              mov al,0x2
000006D9  2EFF160C01        call word near [cs:0x10c]
000006DE  2E8E062CFF        mov es,word [cs:0xff2c]
000006E3  BE00A0            mov si,0xa000
000006E6  BF0040            mov di,0x4000
000006E9  E87606            call 0xd62
000006EC  BB1004            mov bx,0x410
000006EF  B96848            mov cx,0x4868
000006F2  2EFF160630        call word near [cs:0x3006]
000006F7  E87F03            call 0xa79
000006FA  B80700            mov ax,0x7
000006FD  2EFF160830        call word near [cs:0x3008]
00000702  B0FF              mov al,0xff
00000704  BB1004            mov bx,0x410
00000707  B96848            mov cx,0x4868
0000070A  2E8E062CFF        mov es,word [cs:0xff2c]
0000070F  BF0040            mov di,0x4000
00000712  2EFF160430        call word near [cs:0x3004]
00000717  E85F03            call 0xa79
0000071A  0E                push cs
0000071B  07                pop es
0000071C  BEBE95            mov si,0x95be
0000071F  BF00A0            mov di,0xa000
00000722  B002              mov al,0x2
00000724  2EFF160C01        call word near [cs:0x10c]
00000729  2E8E062CFF        mov es,word [cs:0xff2c]
0000072E  BE00A0            mov si,0xa000
00000731  BF0040            mov di,0x4000
00000734  E82B06            call 0xd62
00000737  32C0              xor al,al
00000739  BB1004            mov bx,0x410
0000073C  B96848            mov cx,0x4868
0000073F  2E8E062CFF        mov es,word [cs:0xff2c]
00000744  BF0040            mov di,0x4000
00000747  2EFF160430        call word near [cs:0x3004]
0000074C  E82A03            call 0xa79
0000074F  E82703            call 0xa79
00000752  0E                push cs
00000753  07                pop es
00000754  BEC895            mov si,0x95c8
00000757  BF00A0            mov di,0xa000
0000075A  B002              mov al,0x2
0000075C  2EFF160C01        call word near [cs:0x10c]
00000761  2E8E062CFF        mov es,word [cs:0xff2c]
00000766  BE00A0            mov si,0xa000
00000769  BF0040            mov di,0x4000
0000076C  E8F305            call 0xd62
0000076F  BF0040            mov di,0x4000
00000772  BB1016            mov bx,0x1610
00000775  B96824            mov cx,0x2468
00000778  B005              mov al,0x5
0000077A  2EFF162230        call word near [cs:0x3022]
0000077F  E8F702            call 0xa79
00000782  33C0              xor ax,ax
00000784  2EFF162030        call word near [cs:0x3020]
00000789  E8ED02            call 0xa79
0000078C  0E                push cs
0000078D  07                pop es
0000078E  BED295            mov si,0x95d2
00000791  BF00A0            mov di,0xa000
00000794  B002              mov al,0x2
00000796  2EFF160C01        call word near [cs:0x10c]
0000079B  2E8E062CFF        mov es,word [cs:0xff2c]
000007A0  BE00A0            mov si,0xa000
000007A3  BF0040            mov di,0x4000
000007A6  E8B905            call 0xd62
000007A9  B0FF              mov al,0xff
000007AB  BB1004            mov bx,0x410
000007AE  B96848            mov cx,0x4868
000007B1  2E8E062CFF        mov es,word [cs:0xff2c]
000007B6  BF0040            mov di,0x4000
000007B9  2EFF160430        call word near [cs:0x3004]
000007BE  0E                push cs
000007BF  07                pop es
000007C0  BEFE95            mov si,0x95fe
000007C3  BF00A0            mov di,0xa000
000007C6  B002              mov al,0x2
000007C8  2EFF160C01        call word near [cs:0x10c]
000007CD  2E8E062CFF        mov es,word [cs:0xff2c]
000007D2  BE00A0            mov si,0xa000
000007D5  BF0040            mov di,0x4000
000007D8  E88705            call 0xd62
000007DB  0E                push cs
000007DC  07                pop es
000007DD  BE0996            mov si,0x9609
000007E0  BF00A0            mov di,0xa000
000007E3  B002              mov al,0x2
000007E5  2EFF160C01        call word near [cs:0x10c]
000007EA  2E8E062CFF        mov es,word [cs:0xff2c]
000007EF  BE00A0            mov si,0xa000
000007F2  BF0080            mov di,0x8000
000007F5  E86A05            call 0xd62
000007F8  E87E02            call 0xa79
000007FB  E87B02            call 0xa79
000007FE  33C0              xor ax,ax
00000800  2EFF162030        call word near [cs:0x3020]
00000805  B80600            mov ax,0x6
00000808  2EFF160830        call word near [cs:0x3008]
0000080D  BB150A            mov bx,0xa15
00000810  B95D1A            mov cx,0x1a5d
00000813  2EFF162430        call word near [cs:0x3024]
00000818  2E8E062CFF        mov es,word [cs:0xff2c]
0000081D  BF0040            mov di,0x4000
00000820  BB180B            mov bx,0xb18
00000823  B95818            mov cx,0x1858
00000826  2EFF161030        call word near [cs:0x3010]
0000082B  BB152C            mov bx,0x2c15
0000082E  B95D1A            mov cx,0x1a5d
00000831  2EFF162430        call word near [cs:0x3024]
00000836  2E8E062CFF        mov es,word [cs:0xff2c]
0000083B  BF0080            mov di,0x8000
0000083E  BB182D            mov bx,0x2d18
00000841  B95818            mov cx,0x1858
00000844  2EFF161030        call word near [cs:0x3010]
00000849  E82D02            call 0xa79
0000084C  E82A02            call 0xa79
0000084F  0E                push cs
00000850  07                pop es
00000851  BE1396            mov si,0x9613
00000854  BF00A0            mov di,0xa000
00000857  B002              mov al,0x2
00000859  2EFF160C01        call word near [cs:0x10c]
0000085E  2E8E062CFF        mov es,word [cs:0xff2c]
00000863  BE00A0            mov si,0xa000
00000866  BF0080            mov di,0x8000
00000869  E8F604            call 0xd62
0000086C  33C0              xor ax,ax
0000086E  2EFF162030        call word near [cs:0x3020]
00000873  B80800            mov ax,0x8
00000876  2EFF160830        call word near [cs:0x3008]
0000087B  BB1515            mov bx,0x1515
0000087E  B95D31            mov cx,0x315d
00000881  2EFF162430        call word near [cs:0x3024]
00000886  2E8E062CFF        mov es,word [cs:0xff2c]
0000088B  BF0080            mov di,0x8000
0000088E  BB1816            mov bx,0x1618
00000891  2EFF162630        call word near [cs:0x3026]
00000896  E8E001            call 0xa79
00000899  E8DD01            call 0xa79
0000089C  BB1515            mov bx,0x1515
0000089F  BA5D31            mov dx,0x315d
000008A2  B91800            mov cx,0x18
000008A5  51                push cx
000008A6  52                push dx
000008A7  53                push bx
000008A8  2EC6061AFF00      mov byte [cs:0xff1a],0x0
000008AE  8BCA              mov cx,dx
000008B0  2EFF162430        call word near [cs:0x3024]
000008B5  B00F              mov al,0xf
000008B7  E85101            call 0xa0b
000008BA  5B                pop bx
000008BB  5A                pop dx
000008BC  FEC7              inc bh
000008BE  FECE              dec dh
000008C0  59                pop cx
000008C1  E2E2              loop 0x8a5
000008C3  BB152C            mov bx,0x2c15
000008C6  B95D1A            mov cx,0x1a5d
000008C9  2EFF162430        call word near [cs:0x3024]
000008CE  BB150A            mov bx,0xa15
000008D1  B95D1A            mov cx,0x1a5d
000008D4  2EFF162430        call word near [cs:0x3024]
000008D9  2E8E062CFF        mov es,word [cs:0xff2c]
000008DE  BF0040            mov di,0x4000
000008E1  BB180B            mov bx,0xb18
000008E4  B95818            mov cx,0x1858
000008E7  2EFF161030        call word near [cs:0x3010]
000008EC  E88A01            call 0xa79
000008EF  E88701            call 0xa79
000008F2  BB152C            mov bx,0x2c15
000008F5  BA5D1A            mov dx,0x1a5d
000008F8  B91800            mov cx,0x18
000008FB  51                push cx
000008FC  52                push dx
000008FD  53                push bx
000008FE  2EC6061AFF00      mov byte [cs:0xff1a],0x0
00000904  8BCA              mov cx,dx
00000906  2EFF162430        call word near [cs:0x3024]
0000090B  B00F              mov al,0xf
0000090D  E8FB00            call 0xa0b
00000910  5B                pop bx
00000911  5A                pop dx
00000912  FEC7              inc bh
00000914  FECE              dec dh
00000916  59                pop cx
00000917  E2E2              loop 0x8fb
00000919  33C0              xor ax,ax
0000091B  2EFF162030        call word near [cs:0x3020]
00000920  B80700            mov ax,0x7
00000923  2EFF160830        call word near [cs:0x3008]
00000928  0E                push cs
00000929  07                pop es
0000092A  BEDD95            mov si,0x95dd
0000092D  BF00A0            mov di,0xa000
00000930  B002              mov al,0x2
00000932  2EFF160C01        call word near [cs:0x10c]
00000937  2E8E062CFF        mov es,word [cs:0xff2c]
0000093C  BE00A0            mov si,0xa000
0000093F  BF0040            mov di,0x4000
00000942  E81D04            call 0xd62
00000945  2E8E062CFF        mov es,word [cs:0xff2c]
0000094A  BF0040            mov di,0x4000
0000094D  BB1010            mov bx,0x1010
00000950  B96031            mov cx,0x3160
00000953  2EFF161030        call word near [cs:0x3010]
00000958  E81E01            call 0xa79
0000095B  0E                push cs
0000095C  07                pop es
0000095D  BEE895            mov si,0x95e8
00000960  BF00A0            mov di,0xa000
00000963  B002              mov al,0x2
00000965  2EFF160C01        call word near [cs:0x10c]
0000096A  BEF395            mov si,0x95f3
0000096D  BF00D0            mov di,0xd000
00000970  B002              mov al,0x2
00000972  2EFF160C01        call word near [cs:0x10c]
00000977  2E8E062CFF        mov es,word [cs:0xff2c]
0000097C  BE00A0            mov si,0xa000
0000097F  BF0040            mov di,0x4000
00000982  E8DD03            call 0xd62
00000985  BB0000            mov bx,0x0
00000988  B9C850            mov cx,0x50c8
0000098B  2EFF160630        call word near [cs:0x3006]
00000990  BB0808            mov bx,0x808
00000993  2E8E062CFF        mov es,word [cs:0xff2c]
00000998  BF0040            mov di,0x4000
0000099B  E81206            call 0xfb0
0000099E  2E8E062CFF        mov es,word [cs:0xff2c]
000009A3  BE00D0            mov si,0xd000
000009A6  BF00D0            mov di,0xd000
000009A9  E8B603            call 0xd62
000009AC  2E8E062CFF        mov es,word [cs:0xff2c]
000009B1  BF0040            mov di,0x4000
000009B4  BE00D0            mov si,0xd000
000009B7  E88B05            call 0xf45
000009BA  B0FF              mov al,0xff
000009BC  BB0808            mov bx,0x808
000009BF  B9C040            mov cx,0x40c0
000009C2  2E8E062CFF        mov es,word [cs:0xff2c]
000009C7  BF0040            mov di,0x4000
000009CA  2EFF160430        call word near [cs:0x3004]
000009CF  2EC6061AFF00      mov byte [cs:0xff1a],0x0
000009D5  B0F0              mov al,0xf0
000009D7  E83100            call 0xa0b
000009DA  B0FF              mov al,0xff
000009DC  BB0808            mov bx,0x808
000009DF  B9C040            mov cx,0x40c0
000009E2  2E8E062CFF        mov es,word [cs:0xff2c]
000009E7  BF0040            mov di,0x4000
000009EA  2EFF160230        call word near [cs:0x3002]
000009EF  B80100            mov ax,0x1
000009F2  2EFF160830        call word near [cs:0x3008]
000009F7  BE3873            mov si,0x7338
000009FA  E80B03            call 0xd08
000009FD  B90A00            mov cx,0xa
00000A00  51                push cx
00000A01  B0C8              mov al,0xc8
00000A03  E80500            call 0xa0b
00000A06  59                pop cx
00000A07  E2F7              loop 0xa00
00000A09  EB3A              jmp 0xa45
00000A0B  E80E00            call 0xa1c
00000A0E  2E38061AFF        cmp [cs:0xff1a],al
00000A13  72F6              jc 0xa0b
00000A15  2EC6061AFF00      mov byte [cs:0xff1a],0x0
00000A1B  C3                ret
00000A1C  2EF6061DFFFF      test byte [cs:0xff1d],0xff
00000A22  7521              jnz 0xa45
00000A24  2E803E29FF0D      cmp byte [cs:0xff29],0xd
00000A2A  7419              jz 0xa45
00000A2C  56                push si
00000A2D  50                push ax
00000A2E  2EFF161001        call word near [cs:0x110]
00000A33  2EFF161201        call word near [cs:0x112]
00000A38  2EFF161601        call word near [cs:0x116]
00000A3D  2EFF161801        call word near [cs:0x118]
00000A42  58                pop ax
00000A43  5E                pop si
00000A44  C3                ret
00000A45  BB0000            mov bx,0x0
00000A48  B9C850            mov cx,0x50c8
00000A4B  2EFF160630        call word near [cs:0x3006]
00000A50  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00000A56  2EC60629FF00      mov byte [cs:0xff29],0x0
00000A5C  8CC8              mov ax,cs
00000A5E  8EC0              mov es,ax
00000A60  8ED8              mov ds,ax
00000A62  BE1E96            mov si,0x961e
00000A65  BF00A0            mov di,0xa000
00000A68  B003              mov al,0x3
00000A6A  2EFF160C01        call word near [cs:0x10c]
00000A6F  B8FFFF            mov ax,0xffff
00000A72  2EFF26736A        jmp word near [cs:0x6a73]
00000A77  00A02EC6          add [bx+si-0x39d2],ah
00000A7B  06                push es
00000A7C  1AFF              sbb bh,bh
00000A7E  00B010E8          add [bx+si-0x17f0],dh
00000A82  87FF              xchg di,di
00000A84  0E                push cs
00000A85  1F                pop ds
00000A86  8B36566D          mov si,[0x6d56]
00000A8A  AC                lodsb
00000A8B  8936566D          mov [0x6d56],si
00000A8F  A880              test al,0x80
00000A91  7403              jz 0xa96
00000A93  E98F00            jmp 0xb25
00000A96  3C20              cmp al,0x20
00000A98  7418              jz 0xab2
00000A9A  3C2E              cmp al,0x2e
00000A9C  7414              jz 0xab2
00000A9E  3C2C              cmp al,0x2c
00000AA0  7410              jz 0xab2
00000AA2  3C22              cmp al,0x22
00000AA4  740C              jz 0xab2
00000AA6  3C27              cmp al,0x27
00000AA8  7408              jz 0xab2
00000AAA  8A265D6D          mov ah,[0x6d5d]
00000AAE  882675FF          mov [0xff75],ah
00000AB2  50                push ax
00000AB3  8B1E586D          mov bx,[0x6d58]
00000AB7  83C304            add bx,0x4
00000ABA  A05A6D            mov al,[0x6d5a]
00000ABD  B20A              mov dl,0xa
00000ABF  F6E2              mul dl
00000AC1  058F00            add ax,0x8f
00000AC4  8BC8              mov cx,ax
00000AC6  58                pop ax
00000AC7  53                push bx
00000AC8  8AD8              mov bl,al
00000ACA  80EB20            sub bl,0x20
00000ACD  32FF              xor bh,bh
00000ACF  8A977D94          mov dl,[bx-0x6b83]
00000AD3  8AF7              mov dh,bh
00000AD5  5B                pop bx
00000AD6  50                push ax
00000AD7  2BDA              sub bx,dx
00000AD9  50                push ax
00000ADA  53                push bx
00000ADB  51                push cx
00000ADC  43                inc bx
00000ADD  41                inc cx
00000ADE  8A265B6D          mov ah,[0x6d5b]
00000AE2  2EFF163030        call word near [cs:0x3030]
00000AE7  59                pop cx
00000AE8  5B                pop bx
00000AE9  58                pop ax
00000AEA  8A265C6D          mov ah,[0x6d5c]
00000AEE  2EFF163030        call word near [cs:0x3030]
00000AF3  58                pop ax
00000AF4  8AD8              mov bl,al
00000AF6  80EB20            sub bl,0x20
00000AF9  32FF              xor bh,bh
00000AFB  8A8FDD94          mov cl,[bx-0x6b23]
00000AFF  8AEF              mov ch,bh
00000B01  010E586D          add [0x6d58],cx
00000B05  3C20              cmp al,0x20
00000B07  7403              jz 0xb0c
00000B09  E973FF            jmp 0xa7f
00000B0C  8B36566D          mov si,[0x6d56]
00000B10  E8B501            call 0xcc8
00000B13  8B16586D          mov dx,[0x6d58]
00000B17  03D1              add dx,cx
00000B19  81FA3801          cmp dx,0x138
00000B1D  7203              jc 0xb22
00000B1F  E9D200            jmp 0xbf4
00000B22  E95AFF            jmp 0xa7f
00000B25  3CFF              cmp al,0xff
00000B27  7501              jnz 0xb2a
00000B29  C3                ret
00000B2A  3CFD              cmp al,0xfd
00000B2C  7501              jnz 0xb2f
00000B2E  C3                ret
00000B2F  8AE0              mov ah,al
00000B31  80E4F0            and ah,0xf0
00000B34  80FC80            cmp ah,0x80
00000B37  7503              jnz 0xb3c
00000B39  E9F000            jmp 0xc2c
00000B3C  80FC90            cmp ah,0x90
00000B3F  7503              jnz 0xb44
00000B41  E93701            jmp 0xc7b
00000B44  BB0107            mov bx,0x701
00000B47  3CFB              cmp al,0xfb
00000B49  7503              jnz 0xb4e
00000B4B  E98E00            jmp 0xbdc
00000B4E  BB0007            mov bx,0x700
00000B51  3CFA              cmp al,0xfa
00000B53  7503              jnz 0xb58
00000B55  E98400            jmp 0xbdc
00000B58  BB0206            mov bx,0x602
00000B5B  3CF9              cmp al,0xf9
00000B5D  747D              jz 0xbdc
00000B5F  3CF5              cmp al,0xf5
00000B61  7503              jnz 0xb66
00000B63  E9AC00            jmp 0xc12
00000B66  3CF6              cmp al,0xf6
00000B68  7503              jnz 0xb6d
00000B6A  E9AD00            jmp 0xc1a
00000B6D  32E4              xor ah,ah
00000B6F  3CF7              cmp al,0xf7
00000B71  7474              jz 0xbe7
00000B73  FEC4              inc ah
00000B75  3CF3              cmp al,0xf3
00000B77  746E              jz 0xbe7
00000B79  FEC4              inc ah
00000B7B  3CF2              cmp al,0xf2
00000B7D  7468              jz 0xbe7
00000B7F  FEC4              inc ah
00000B81  3CF1              cmp al,0xf1
00000B83  7462              jz 0xbe7
00000B85  3CFE              cmp al,0xfe
00000B87  7478              jz 0xc01
00000B89  8A265D6D          mov ah,[0x6d5d]
00000B8D  C6065D6D00        mov byte [0x6d5d],0x0
00000B92  3CF0              cmp al,0xf0
00000B94  7503              jnz 0xb99
00000B96  E9E6FE            jmp 0xa7f
00000B99  C6065D6D3D        mov byte [0x6d5d],0x3d
00000B9E  3CEF              cmp al,0xef
00000BA0  7503              jnz 0xba5
00000BA2  E9DAFE            jmp 0xa7f
00000BA5  C6065D6D3E        mov byte [0x6d5d],0x3e
00000BAA  3CEE              cmp al,0xee
00000BAC  7503              jnz 0xbb1
00000BAE  E9CEFE            jmp 0xa7f
00000BB1  C6065D6D3F        mov byte [0x6d5d],0x3f
00000BB6  3CED              cmp al,0xed
00000BB8  7503              jnz 0xbbd
00000BBA  E9C2FE            jmp 0xa7f
00000BBD  C6065D6D40        mov byte [0x6d5d],0x40
00000BC2  3CEC              cmp al,0xec
00000BC4  7503              jnz 0xbc9
00000BC6  E9B6FE            jmp 0xa7f
00000BC9  C6065D6D41        mov byte [0x6d5d],0x41
00000BCE  3CEB              cmp al,0xeb
00000BD0  7503              jnz 0xbd5
00000BD2  E9AAFE            jmp 0xa7f
00000BD5  88265D6D          mov [0x6d5d],ah
00000BD9  E9A3FE            jmp 0xa7f
00000BDC  881E5B6D          mov [0x6d5b],bl
00000BE0  883E5C6D          mov [0x6d5c],bh
00000BE4  E998FE            jmp 0xa7f
00000BE7  C706586D0000      mov word [0x6d58],0x0
00000BED  88265A6D          mov [0x6d5a],ah
00000BF1  E98BFE            jmp 0xa7f
00000BF4  C706586D0000      mov word [0x6d58],0x0
00000BFA  FE065A6D          inc byte [0x6d5a]
00000BFE  E97EFE            jmp 0xa7f
00000C01  BB8F00            mov bx,0x8f
00000C04  B93950            mov cx,0x5039
00000C07  32C0              xor al,al
00000C09  2EFF160020        call word near [cs:0x2000]
00000C0E  32E4              xor ah,ah
00000C10  EBD5              jmp 0xbe7
00000C12  B0F0              mov al,0xf0
00000C14  E8F4FD            call 0xa0b
00000C17  E965FE            jmp 0xa7f
00000C1A  B0F0              mov al,0xf0
00000C1C  E8ECFD            call 0xa0b
00000C1F  B0F0              mov al,0xf0
00000C21  E8E7FD            call 0xa0b
00000C24  B0F0              mov al,0xf0
00000C26  E8E2FD            call 0xa0b
00000C29  E953FE            jmp 0xa7f
00000C2C  2E8E062CFF        mov es,word [cs:0xff2c]
00000C31  240F              and al,0xf
00000C33  3C06              cmp al,0x6
00000C35  7323              jnc 0xc5a
00000C37  B415              mov ah,0x15
00000C39  F6E4              mul ah
00000C3B  03C0              add ax,ax
00000C3D  03C0              add ax,ax
00000C3F  03C0              add ax,ax
00000C41  03C0              add ax,ax
00000C43  03C0              add ax,ax
00000C45  03C0              add ax,ax
00000C47  05C098            add ax,0x98c0
00000C4A  8BF8              mov di,ax
00000C4C  BB5033            mov bx,0x3350
00000C4F  B9200E            mov cx,0xe20
00000C52  2EFF161030        call word near [cs:0x3010]
00000C57  E92AFE            jmp 0xa84
00000C5A  2C06              sub al,0x6
00000C5C  B421              mov ah,0x21
00000C5E  F6E4              mul ah
00000C60  03C0              add ax,ax
00000C62  03C0              add ax,ax
00000C64  03C0              add ax,ax
00000C66  03C0              add ax,ax
00000C68  0540B8            add ax,0xb840
00000C6B  8BF8              mov di,ax
00000C6D  BB3833            mov bx,0x3338
00000C70  B9100B            mov cx,0xb10
00000C73  2EFF161030        call word near [cs:0x3010]
00000C78  E909FE            jmp 0xa84
00000C7B  2E8E062CFF        mov es,word [cs:0xff2c]
00000C80  240F              and al,0xf
00000C82  3C06              cmp al,0x6
00000C84  7321              jnc 0xca7
00000C86  B41B              mov ah,0x1b
00000C88  F6E4              mul ah
00000C8A  03C0              add ax,ax
00000C8C  03C0              add ax,ax
00000C8E  03C0              add ax,ax
00000C90  03C0              add ax,ax
00000C92  03C0              add ax,ax
00000C94  05C058            add ax,0x58c0
00000C97  8BF8              mov di,ax
00000C99  BB5013            mov bx,0x1350
00000C9C  B92009            mov cx,0x920
00000C9F  2EFF161030        call word near [cs:0x3010]
00000CA4  E9DDFD            jmp 0xa84
00000CA7  2C06              sub al,0x6
00000CA9  B421              mov ah,0x21
00000CAB  F6E4              mul ah
00000CAD  03C0              add ax,ax
00000CAF  03C0              add ax,ax
00000CB1  03C0              add ax,ax
00000CB3  03C0              add ax,ax
00000CB5  05006D            add ax,0x6d00
00000CB8  8BF8              mov di,ax
00000CBA  BB3812            mov bx,0x1238
00000CBD  B9100B            mov cx,0xb10
00000CC0  2EFF161030        call word near [cs:0x3010]
00000CC5  E9BCFD            jmp 0xa84
00000CC8  33C9              xor cx,cx
00000CCA  AC                lodsb
00000CCB  3C20              cmp al,0x20
00000CCD  7501              jnz 0xcd0
00000CCF  C3                ret
00000CD0  3CFF              cmp al,0xff
00000CD2  7501              jnz 0xcd5
00000CD4  C3                ret
00000CD5  3CFE              cmp al,0xfe
00000CD7  7501              jnz 0xcda
00000CD9  C3                ret
00000CDA  3CFD              cmp al,0xfd
00000CDC  7501              jnz 0xcdf
00000CDE  C3                ret
00000CDF  3CF7              cmp al,0xf7
00000CE1  7501              jnz 0xce4
00000CE3  C3                ret
00000CE4  3CF3              cmp al,0xf3
00000CE6  7501              jnz 0xce9
00000CE8  C3                ret
00000CE9  3CF2              cmp al,0xf2
00000CEB  7501              jnz 0xcee
00000CED  C3                ret
00000CEE  3CF1              cmp al,0xf1
00000CF0  7501              jnz 0xcf3
00000CF2  C3                ret
00000CF3  0AC0              or al,al
00000CF5  78D3              js 0xcca
00000CF7  2C20              sub al,0x20
00000CF9  72CF              jc 0xcca
00000CFB  8AD8              mov bl,al
00000CFD  32FF              xor bh,bh
00000CFF  2E028FDD94        add cl,[cs:bx-0x6b23]
00000D04  12EF              adc ch,bh
00000D06  EBC2              jmp 0xcca
00000D08  56                push si
00000D09  BB2000            mov bx,0x20
00000D0C  B97850            mov cx,0x5078
00000D0F  2EFF160A30        call word near [cs:0x300a]
00000D14  5E                pop si
00000D15  2EFF160C30        call word near [cs:0x300c]
00000D1A  56                push si
00000D1B  B90A00            mov cx,0xa
00000D1E  51                push cx
00000D1F  8BC1              mov ax,cx
00000D21  F7D8              neg ax
00000D23  050A00            add ax,0xa
00000D26  BB1400            mov bx,0x14
00000D29  B9A050            mov cx,0x50a0
00000D2C  2EFF160E30        call word near [cs:0x300e]
00000D31  B01C              mov al,0x1c
00000D33  E8D5FC            call 0xa0b
00000D36  59                pop cx
00000D37  E2E5              loop 0xd1e
00000D39  5E                pop si
00000D3A  807CFFFF          cmp byte [si-0x1],0xff
00000D3E  75D5              jnz 0xd15
00000D40  B9A000            mov cx,0xa0
00000D43  51                push cx
00000D44  33C0              xor ax,ax
00000D46  BB1400            mov bx,0x14
00000D49  B9A050            mov cx,0x50a0
00000D4C  2EFF160E30        call word near [cs:0x300e]
00000D51  B01C              mov al,0x1c
00000D53  E8B5FC            call 0xa0b
00000D56  59                pop cx
00000D57  E2EA              loop 0xd43
00000D59  C3                ret
00000D5A  C6                db 0xc6
00000D5B  7900              jns 0xd5d
00000D5D  0000              add [bx+si],al
00000D5F  0000              add [bx+si],al
00000D61  00E8              add al,ch
00000D63  0200              add al,[bx+si]
00000D65  EB2A              jmp 0xd91
00000D67  57                push di
00000D68  AD                lodsw
00000D69  8BC8              mov cx,ax
00000D6B  51                push cx
00000D6C  8BEE              mov bp,si
00000D6E  03F1              add si,cx
00000D70  51                push cx
00000D71  32C0              xor al,al
00000D73  B90800            mov cx,0x8
00000D76  3ED04600          rol byte [ds:bp+0x0],0x0
00000D7A  7205              jc 0xd81
00000D7C  AA                stosb
00000D7D  E2F7              loop 0xd76
00000D7F  EB03              jmp 0xd84
00000D81  A4                movsb
00000D82  E2F2              loop 0xd76
00000D84  45                inc bp
00000D85  59                pop cx
00000D86  E2E8              loop 0xd70
00000D88  59                pop cx
00000D89  03C9              add cx,cx
00000D8B  03C9              add cx,cx
00000D8D  03C9              add cx,cx
00000D8F  5F                pop di
00000D90  C3                ret
00000D91  32F6              xor dh,dh
00000D93  32C0              xor al,al
00000D95  26D015            rcl byte [es:di],0x0
00000D98  12C0              adc al,al
00000D9A  26D015            rcl byte [es:di],0x0
00000D9D  12C0              adc al,al
00000D9F  32F0              xor dh,al
00000DA1  8AE6              mov ah,dh
00000DA3  32C0              xor al,al
00000DA5  26D015            rcl byte [es:di],0x0
00000DA8  12C0              adc al,al
00000DAA  26D015            rcl byte [es:di],0x0
00000DAD  12C0              adc al,al
00000DAF  32F0              xor dh,al
00000DB1  02E4              add ah,ah
00000DB3  02E4              add ah,ah
00000DB5  0AE6              or ah,dh
00000DB7  32C0              xor al,al
00000DB9  26D015            rcl byte [es:di],0x0
00000DBC  12C0              adc al,al
00000DBE  26D015            rcl byte [es:di],0x0
00000DC1  12C0              adc al,al
00000DC3  32F0              xor dh,al
00000DC5  02E4              add ah,ah
00000DC7  02E4              add ah,ah
00000DC9  0AE6              or ah,dh
00000DCB  32C0              xor al,al
00000DCD  26D015            rcl byte [es:di],0x0
00000DD0  12C0              adc al,al
00000DD2  26D015            rcl byte [es:di],0x0
00000DD5  12C0              adc al,al
00000DD7  32F0              xor dh,al
00000DD9  02E4              add ah,ah
00000DDB  02E4              add ah,ah
00000DDD  0AE6              or ah,dh
00000DDF  8AC4              mov al,ah
00000DE1  AA                stosb
00000DE2  E2AF              loop 0xd93
00000DE4  C3                ret
00000DE5  F60440            test byte [si],0x40
00000DE8  741D              jz 0xe07
00000DEA  AD                lodsw
00000DEB  86E0              xchg ah,al
00000DED  8BC8              mov cx,ax
00000DEF  3DFFFF            cmp ax,0xffff
00000DF2  7501              jnz 0xdf5
00000DF4  C3                ret
00000DF5  81E1FF3F          and cx,0x3fff
00000DF9  A90080            test ax,0x8000
00000DFC  7405              jz 0xe03
00000DFE  AC                lodsb
00000DFF  F3AA              rep stosb
00000E01  EBE2              jmp 0xde5
00000E03  F3A4              rep movsb
00000E05  EBDE              jmp 0xde5
00000E07  AC                lodsb
00000E08  8AC8              mov cl,al
00000E0A  83E13F            and cx,0x3f
00000E0D  A880              test al,0x80
00000E0F  74F2              jz 0xe03
00000E11  EBEB              jmp 0xdfe
00000E13  1E                push ds
00000E14  8CC8              mov ax,cs
00000E16  050020            add ax,0x2000
00000E19  8EC0              mov es,ax
00000E1B  BF0000            mov di,0x0
00000E1E  B95016            mov cx,0x1650
00000E21  33C0              xor ax,ax
00000E23  F3AB              rep stosw
00000E25  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000E2A  BF0000            mov di,0x0
00000E2D  BB0000            mov bx,0x0
00000E30  B93022            mov cx,0x2230
00000E33  BE40AB            mov si,0xab40
00000E36  E81A00            call 0xe53
00000E39  BB300F            mov bx,0xf30
00000E3C  B92006            mov cx,0x620
00000E3F  BEC0A9            mov si,0xa9c0
00000E42  E80E00            call 0xe53
00000E45  BB5008            mov bx,0x850
00000E48  B92012            mov cx,0x1220
00000E4B  BE409C            mov si,0x9c40
00000E4E  E81100            call 0xe62
00000E51  1F                pop ds
00000E52  C3                ret
00000E53  57                push di
00000E54  81C7E00E          add di,0xee0
00000E58  E81600            call 0xe71
00000E5B  5F                pop di
00000E5C  57                push di
00000E5D  E81100            call 0xe71
00000E60  5F                pop di
00000E61  C3                ret
00000E62  57                push di
00000E63  E80B00            call 0xe71
00000E66  5F                pop di
00000E67  57                push di
00000E68  81C7E00E          add di,0xee0
00000E6C  E80200            call 0xe71
00000E6F  5F                pop di
00000E70  C3                ret
00000E71  53                push bx
00000E72  51                push cx
00000E73  B022              mov al,0x22
00000E75  F6E3              mul bl
00000E77  8ADF              mov bl,bh
00000E79  32FF              xor bh,bh
00000E7B  03C3              add ax,bx
00000E7D  03F8              add di,ax
00000E7F  51                push cx
00000E80  57                push di
00000E81  8ACD              mov cl,ch
00000E83  32ED              xor ch,ch
00000E85  F3A4              rep movsb
00000E87  5F                pop di
00000E88  83C722            add di,0x22
00000E8B  59                pop cx
00000E8C  FEC9              dec cl
00000E8E  75EF              jnz 0xe7f
00000E90  59                pop cx
00000E91  5B                pop bx
00000E92  C3                ret
00000E93  1E                push ds
00000E94  32E4              xor ah,ah
00000E96  BAC00C            mov dx,0xcc0
00000E99  F7E2              mul dx
00000E9B  0540AB            add ax,0xab40
00000E9E  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000EA3  8BF0              mov si,ax
00000EA5  8CC8              mov ax,cs
00000EA7  050020            add ax,0x2000
00000EAA  8EC0              mov es,ax
00000EAC  BF0000            mov di,0x0
00000EAF  E80200            call 0xeb4
00000EB2  1F                pop ds
00000EB3  C3                ret
00000EB4  B93000            mov cx,0x30
00000EB7  51                push cx
00000EB8  B92200            mov cx,0x22
00000EBB  8AA46006          mov ah,[si+0x660]
00000EBF  AC                lodsb
00000EC0  8AF8              mov bh,al
00000EC2  F6D7              not bh
00000EC4  22FC              and bh,ah
00000EC6  32E7              xor ah,bh
00000EC8  268805            mov [es:di],al
00000ECB  2688BD6006        mov [es:di+0x660],bh
00000ED0  2688A5C00C        mov [es:di+0xcc0],ah
00000ED5  47                inc di
00000ED6  E2E3              loop 0xebb
00000ED8  59                pop cx
00000ED9  E2DC              loop 0xeb7
00000EDB  C3                ret
00000EDC  1E                push ds
00000EDD  06                push es
00000EDE  1F                pop ds
00000EDF  8BF7              mov si,di
00000EE1  2E8E062CFF        mov es,word [cs:0xff2c]
00000EE6  BFD346            mov di,0x46d3
00000EE9  B93000            mov cx,0x30
00000EEC  51                push cx
00000EED  57                push di
00000EEE  B91100            mov cx,0x11
00000EF1  51                push cx
00000EF2  268B05            mov ax,[es:di]
00000EF5  268B9D401D        mov bx,[es:di+0x1d40]
00000EFA  F7D0              not ax
00000EFC  F7D3              not bx
00000EFE  23C3              and ax,bx
00000F00  262385803A        and ax,[es:di+0x3a80]
00000F05  8BD0              mov dx,ax
00000F07  F7D2              not dx
00000F09  8BD8              mov bx,ax
00000F0B  2304              and ax,[si]
00000F0D  262115            and [es:di],dx
00000F10  260905            or [es:di],ax
00000F13  8BC3              mov ax,bx
00000F15  23846006          and ax,[si+0x660]
00000F19  262195401D        and [es:di+0x1d40],dx
00000F1E  260985401D        or [es:di+0x1d40],ax
00000F23  8BC3              mov ax,bx
00000F25  2384C00C          and ax,[si+0xcc0]
00000F29  262195803A        and [es:di+0x3a80],dx
00000F2E  260985803A        or [es:di+0x3a80],ax
00000F33  83C702            add di,0x2
00000F36  83C602            add si,0x2
00000F39  59                pop cx
00000F3A  E2B5              loop 0xef1
00000F3C  5F                pop di
00000F3D  83C748            add di,0x48
00000F40  59                pop cx
00000F41  E2A9              loop 0xeec
00000F43  1F                pop ds
00000F44  C3                ret
00000F45  81C71908          add di,0x819
00000F49  B9A000            mov cx,0xa0
00000F4C  51                push cx
00000F4D  57                push di
00000F4E  B91500            mov cx,0x15
00000F51  51                push cx
00000F52  268A04            mov al,[es:si]
00000F55  262284200D        and al,[es:si+0xd20]
00000F5A  268AA4401A        mov ah,[es:si+0x1a40]
00000F5F  F6D4              not ah
00000F61  22C4              and al,ah
00000F63  F6D0              not al
00000F65  268A24            mov ah,[es:si]
00000F68  260AA4200D        or ah,[es:si+0xd20]
00000F6D  260AA4401A        or ah,[es:si+0x1a40]
00000F72  262004            and [es:si],al
00000F75  262084200D        and [es:si+0xd20],al
00000F7A  F6D4              not ah
00000F7C  262025            and [es:di],ah
00000F7F  2620A50030        and [es:di+0x3000],ah
00000F84  2620A50060        and [es:di+0x6000],ah
00000F89  268A04            mov al,[es:si]
00000F8C  260805            or [es:di],al
00000F8F  268A84200D        mov al,[es:si+0xd20]
00000F94  2608850030        or [es:di+0x3000],al
00000F99  268A84401A        mov al,[es:si+0x1a40]
00000F9E  2608850060        or [es:di+0x6000],al
00000FA3  47                inc di
00000FA4  46                inc si
00000FA5  59                pop cx
00000FA6  E2A9              loop 0xf51
00000FA8  5F                pop di
00000FA9  83C740            add di,0x40
00000FAC  59                pop cx
00000FAD  E29D              loop 0xf4c
00000FAF  C3                ret
00000FB0  53                push bx
00000FB1  06                push es
00000FB2  57                push di
00000FB3  B90030            mov cx,0x3000
00000FB6  26C685006000      mov byte [es:di+0x6000],0x0
00000FBC  268A850030        mov al,[es:di+0x3000]
00000FC1  268A25            mov ah,[es:di]
00000FC4  F6D4              not ah
00000FC6  22C4              and al,ah
00000FC8  260805            or [es:di],al
00000FCB  2608850060        or [es:di+0x6000],al
00000FD0  F6D0              not al
00000FD2  2620850030        and [es:di+0x3000],al
00000FD7  268A850030        mov al,[es:di+0x3000]
00000FDC  262205            and al,[es:di]
00000FDF  2608850060        or [es:di+0x6000],al
00000FE4  47                inc di
00000FE5  E2CF              loop 0xfb6
00000FE7  5F                pop di
00000FE8  07                pop es
00000FE9  5B                pop bx
00000FEA  B9C040            mov cx,0x40c0
00000FED  B0FF              mov al,0xff
00000FEF  2EFF260430        jmp word near [cs:0x3004]
00000FF4  2020              and [bx+si],ah
00000FF6  2020              and [bx+si],ah
00000FF8  2020              and [bx+si],ah
00000FFA  2020              and [bx+si],ah
00000FFC  2020              and [bx+si],ah
00000FFE  205477            and [si+0x77],dl
00001001  6F                outsw
00001002  207468            and [si+0x68],dh
00001005  6F                outsw
00001006  7573              jnz 0x107b
00001008  61                popa
00001009  6E                outsb
0000100A  64207965          and [fs:bx+di+0x65],bh
0000100E  61                popa
0000100F  7273              jc 0x1084
00001011  2C20              sub al,0x20
00001013  0D6672            or ax,0x7266
00001016  6F                outsw
00001017  6D                insw
00001018  207468            and [si+0x68],dh
0000101B  65206461          and [gs:si+0x61],ah
0000101F  726B              jc 0x108c
00001021  207265            and [bp+si+0x65],dh
00001024  61                popa
00001025  636865            arpl [bx+si+0x65],bp
00001028  7320              jnc 0x104a
0000102A  6F                outsw
0000102B  6620616E          o32 and [bx+di+0x6e],ah
0000102F  6F                outsw
00001030  7468              jz 0x109a
00001032  657220            gs jc 0x1055
00001035  6761              a32 popa
00001037  6C                insb
00001038  61                popa
00001039  7879              js 0x10b4
0000103B  2C0D              sub al,0xd
0000103D  2020              and [bx+si],ah
0000103F  2020              and [bx+si],ah
00001041  2020              and [bx+si],ah
00001043  2020              and [bx+si],ah
00001045  61                popa
00001046  206465            and [si+0x65],ah
00001049  6D                insw
0000104A  6F                outsw
0000104B  6E                outsb
0000104C  207769            and [bx+0x69],dh
0000104F  7468              jz 0x10b9
00001051  206E6F            and [bp+0x6f],ch
00001054  7420              jz 0x1076
00001056  61                popa
00001057  207368            and [bp+di+0x68],dh
0000105A  7265              jc 0x10c1
0000105C  640D2020          fs or ax,0x2020
00001060  2020              and [bx+si],ah
00001062  2020              and [bx+si],ah
00001064  6F                outsw
00001065  6620636F          o32 and [bp+di+0x6f],ah
00001069  6D                insw
0000106A  7061              jo 0x10cd
0000106C  7373              jnc 0x10e1
0000106E  696F6E2066        imul bp,[bx+0x6e],0x6620
00001073  6F                outsw
00001074  7220              jc 0x1096
00001076  68756D            push word 0x6d75
00001079  61                popa
0000107A  6E                outsb
0000107B  6B696E64          imul bp,[bx+di+0x6e],0x64
0000107F  2C0D              sub al,0xd
00001081  2020              and [bx+si],ah
00001083  2020              and [bx+si],ah
00001085  2020              and [bx+si],ah
00001087  2020              and [bx+si],ah
00001089  206465            and [si+0x65],ah
0000108C  7363              jnc 0x10f1
0000108E  656E              gs outsb
00001090  646564207570      and [fs:di+0x70],dh
00001096  6F                outsw
00001097  6E                outsb
00001098  206561            and [di+0x61],ah
0000109B  7274              jc 0x1111
0000109D  682E0D            push word 0xd2e
000010A0  0D2020            or ax,0x2020
000010A3  2020              and [bx+si],ah
000010A5  2020              and [bx+si],ah
000010A7  2020              and [bx+si],ah
000010A9  2020              and [bx+si],ah
000010AB  48                dec ax
000010AC  65206465          and [gs:si+0x65],ah
000010B0  66696C6564207468  imul ebp,[si+0x65],0x68742064
000010B8  65206C61          and [gs:si+0x61],ch
000010BC  6E                outsb
000010BD  642C0D            fs sub al,0xd
000010C0  2020              and [bx+si],ah
000010C2  7365              jnc 0x1129
000010C4  6E                outsb
000010C5  64696E672076      imul bp,[fs:bp+0x67],0x7620
000010CB  696C652063        imul bp,[si+0x65],0x6320
000010D0  7265              jc 0x1137
000010D2  61                popa
000010D3  7475              jz 0x114a
000010D5  7265              jc 0x113c
000010D7  7320              jnc 0x10f9
000010D9  746F              jz 0x114a
000010DB  206C69            and [si+0x69],ch
000010DE  7665              jna 0x1145
000010E0  20696E            and [bx+di+0x6e],ch
000010E3  206974            and [bx+di+0x74],ch
000010E6  2C0D              sub al,0xd
000010E8  2020              and [bx+si],ah
000010EA  20616E            and [bx+di+0x6e],ah
000010ED  64207468          and [fs:si+0x68],dh
000010F1  7573              jnz 0x1166
000010F3  206265            and [bp+si+0x65],ah
000010F6  63616D            arpl [bx+di+0x6d],sp
000010F9  65207275          and [gs:bp+si+0x75],dh
000010FD  6C                insb
000010FE  657220            gs jc 0x1121
00001101  6F                outsw
00001102  66207468          o32 and [si+0x68],dh
00001106  6520776F          and [gs:bx+0x6f],dh
0000110A  726C              jc 0x1178
0000110C  642E0D0D20        cs or ax,0x200d
00001111  2020              and [bx+si],ah
00001113  2020              and [bx+si],ah
00001115  2020              and [bx+si],ah
00001117  2020              and [bx+si],ah
00001119  54                push sp
0000111A  686520            push word 0x2065
0000111D  4B                dec bx
0000111E  696E67206F        imul bp,[bp+0x67],0x6f20
00001123  66204665          o32 and [bp+0x65],al
00001127  6C                insb
00001128  697368696B        imul si,[bp+di+0x68],0x6b69
0000112D  61                popa
0000112E  2C0D              sub al,0xd
00001130  2020              and [bx+si],ah
00001132  2020              and [bx+si],ah
00001134  206170            and [bx+di+0x70],ah
00001137  7061              jo 0x119a
00001139  6C                insb
0000113A  6C                insb
0000113B  6564206279        and [fs:bp+si+0x79],ah
00001140  207768            and [bx+0x68],dh
00001143  61                popa
00001144  7420              jz 0x1166
00001146  686164            push word 0x6461
00001149  206861            and [bx+si+0x61],ch
0000114C  7070              jo 0x11be
0000114E  656E              gs outsb
00001150  65642C0D          fs sub al,0xd
00001154  2020              and [bx+si],ah
00001156  2020              and [bx+si],ah
00001158  2020              and [bx+si],ah
0000115A  2020              and [bx+si],ah
0000115C  2020              and [bx+si],ah
0000115E  7072              jo 0x11d2
00001160  61                popa
00001161  7965              jns 0x11c8
00001163  6420746F          and [fs:si+0x6f],dh
00001167  207468            and [si+0x68],dh
0000116A  65205370          and [gs:bp+di+0x70],dl
0000116E  697269740D        imul si,[bp+si+0x69],0xd74
00001173  2020              and [bx+si],ah
00001175  2020              and [bx+si],ah
00001177  2020              and [bx+si],ah
00001179  6F                outsw
0000117A  66207468          o32 and [si+0x68],dh
0000117E  6520486F          and [gs:bx+si+0x6f],cl
00001182  6C                insb
00001183  7920              jns 0x11a5
00001185  4C                dec sp
00001186  61                popa
00001187  6E                outsb
00001188  64206F66          and [fs:bx+0x66],ch
0000118C  205A65            and [bp+si+0x65],bl
0000118F  6C                insb
00001190  696172640D        imul sp,[bx+di+0x72],0xd64
00001195  2020              and [bx+si],ah
00001197  2020              and [bx+si],ah
00001199  666F              outsd
0000119B  7220              jc 0x11bd
0000119D  68656C            push word 0x6c65
000011A0  7020              jo 0x11c2
000011A2  696E206465        imul bp,[bp+0x20],0x6564
000011A7  666561            gs popad
000011AA  7469              jz 0x1215
000011AC  6E                outsb
000011AD  6720746869        and [eax+ebp*2+0x69],dh
000011B2  7320              jnc 0x11d4
000011B4  6D                insw
000011B5  6F                outsw
000011B6  6E                outsb
000011B7  7374              jnc 0x122d
000011B9  65722E            gs jc 0x11ea
000011BC  0D0D20            or ax,0x200d
000011BF  2020              and [bx+si],ah
000011C1  205769            and [bx+0x69],dl
000011C4  7468              jz 0x122e
000011C6  207468            and [si+0x68],dh
000011C9  65206865          and [gs:bx+si+0x65],ch
000011CD  6C                insb
000011CE  7020              jo 0x11f0
000011D0  6F                outsw
000011D1  66207468          o32 and [si+0x68],dh
000011D5  6520686F          and [gs:bx+si+0x6f],ch
000011D9  6C                insb
000011DA  7920              jns 0x11fc
000011DC  637279            arpl [bp+si+0x79],si
000011DF  7374              jnc 0x1255
000011E1  61                popa
000011E2  6C                insb
000011E3  730D              jnc 0x11f2
000011E5  2020              and [bx+si],ah
000011E7  2020              and [bx+si],ah
000011E9  2020              and [bx+si],ah
000011EB  206361            and [bp+di+0x61],ah
000011EE  6C                insb
000011EF  6C                insb
000011F0  6564205465        and [fs:si+0x65],dl
000011F5  61                popa
000011F6  7273              jc 0x126b
000011F8  206F66            and [bx+0x66],ch
000011FB  204573            and [di+0x73],al
000011FE  6D                insw
000011FF  657361            gs jnc 0x1263
00001202  6E                outsb
00001203  7469              jz 0x126e
00001205  2C0D              sub al,0xd
00001207  2020              and [bx+si],ah
00001209  2020              and [bx+si],ah
0000120B  7468              jz 0x1275
0000120D  65204B69          and [gs:bp+di+0x69],cl
00001211  6E                outsb
00001212  67206D61          and [ebp+0x61],ch
00001216  6E                outsb
00001217  61                popa
00001218  67656420746F20    and [fs:edi+ebp*2+0x20],dh
0000121F  7772              ja 0x1293
00001221  657374            gs jnc 0x1298
00001224  20706F            and [bx+si+0x6f],dh
00001227  7765              ja 0x128e
00001229  720D              jc 0x1238
0000122B  2020              and [bx+si],ah
0000122D  2020              and [bx+si],ah
0000122F  66726F            jc 0x12a1
00001232  6D                insw
00001233  207468            and [si+0x68],dh
00001236  65206669          and [gs:bp+0x69],ah
0000123A  656E              gs outsb
0000123C  6420616E          and [fs:bx+di+0x6e],ah
00001240  64207365          and [fs:bp+di+0x65],dh
00001244  61                popa
00001245  6C                insb
00001246  206869            and [bx+si+0x69],ch
00001249  6D                insw
0000124A  206465            and [si+0x65],ah
0000124D  65700D            gs jo 0x125d
00001250  2020              and [bx+si],ah
00001252  2020              and [bx+si],ah
00001254  207769            and [bx+0x69],dh
00001257  7468              jz 0x12c1
00001259  696E207468        imul bp,[bp+0x20],0x6874
0000125E  6520626F          and [gs:bp+si+0x6f],ah
00001262  7765              ja 0x12c9
00001264  6C                insb
00001265  7320              jnc 0x1287
00001267  6F                outsw
00001268  66207468          o32 and [si+0x68],dh
0000126C  65206561          and [gs:di+0x61],ah
00001270  7274              jc 0x12e6
00001272  682E0D            push word 0xd2e
00001275  0D2020            or ax,0x2020
00001278  2020              and [bx+si],ah
0000127A  2020              and [bx+si],ah
0000127C  2020              and [bx+si],ah
0000127E  2020              and [bx+si],ah
00001280  2020              and [bx+si],ah
00001282  41                inc cx
00001283  6E                outsb
00001284  64206F6E          and [fs:bx+0x6e],ch
00001288  636520            arpl [di+0x20],sp
0000128B  61                popa
0000128C  6761              a32 popa
0000128E  696E2C0D20        imul bp,[bp+0x2c],0x200d
00001293  7468              jz 0x12fd
00001295  65206C69          and [gs:si+0x69],ch
00001299  67687420          a32 push word 0x2074
0000129D  6F                outsw
0000129E  66207065          o32 and [bx+si+0x65],dh
000012A2  61                popa
000012A3  636520            arpl [di+0x20],sp
000012A6  63616D            arpl [bx+di+0x6d],sp
000012A9  6520746F          and [gs:si+0x6f],dh
000012AD  207368            and [bp+di+0x68],dh
000012B0  696E652075        imul bp,[bp+0x65],0x7520
000012B5  706F              jo 0x1326
000012B7  6E                outsb
000012B8  0D2020            or ax,0x2020
000012BB  2020              and [bx+si],ah
000012BD  2020              and [bx+si],ah
000012BF  2020              and [bx+si],ah
000012C1  2020              and [bx+si],ah
000012C3  2020              and [bx+si],ah
000012C5  2020              and [bx+si],ah
000012C7  7468              jz 0x1331
000012C9  65206561          and [gs:di+0x61],ah
000012CD  7274              jc 0x1343
000012CF  682E0D            push word 0xd2e
000012D2  0D0D48            or ax,0x480d
000012D5  6F                outsw
000012D6  7765              ja 0x133d
000012D8  7665              jna 0x133f
000012DA  722C              jc 0x1308
000012DC  206974            and [bx+di+0x74],ch
000012DF  206973            and [bx+di+0x73],ch
000012E2  207772            and [bx+0x72],dh
000012E5  697474656E        imul si,[si+0x74],0x6e65
000012EA  20696E            and [bx+di+0x6e],ch
000012ED  0D2020            or ax,0x2020
000012F0  2020              and [bx+si],ah
000012F2  2020              and [bx+si],ah
000012F4  207468            and [si+0x68],dh
000012F7  65205369          and [gs:bp+di+0x69],dl
000012FB  7874              js 0x1371
000012FD  682042            push word 0x4220
00001300  6F                outsw
00001301  6F                outsw
00001302  6B206F            imul sp,[bx+si],0x6f
00001305  66204573          o32 and [di+0x73],al
00001309  6D                insw
0000130A  657361            gs jnc 0x136e
0000130D  6E                outsb
0000130E  7469              jz 0x1379
00001310  3A0D              cmp cl,[di]
00001312  2020              and [bx+si],ah
00001314  2020              and [bx+si],ah
00001316  2020              and [bx+si],ah
00001318  2020              and [bx+si],ah
0000131A  2020              and [bx+si],ah
0000131C  2020              and [bx+si],ah
0000131E  2020              and [bx+si],ah
00001320  2020              and [bx+si],ah
00001322  2020              and [bx+si],ah
00001324  2020              and [bx+si],ah
00001326  54                push sp
00001327  686520            push word 0x2065
0000132A  41                inc cx
0000132B  6765206F66        and [gs:edi+0x66],ch
00001330  204461            and [si+0x61],al
00001333  726B              jc 0x13a0
00001335  6E                outsb
00001336  657373            gs jnc 0x13ac
00001339  2E0DFF20          cs or ax,0x20ff
0000133D  2020              and [bx+si],ah
0000133F  2020              and [bx+si],ah
00001341  2020              and [bx+si],ah
00001343  2020              and [bx+si],ah
00001345  2020              and [bx+si],ah
00001347  2020              and [bx+si],ah
00001349  2020              and [bx+si],ah
0000134B  204174            and [bx+di+0x74],al
0000134E  206C61            and [si+0x61],ch
00001351  7374              jnc 0x13c7
00001353  2C20              sub al,0x20
00001355  2020              and [bx+si],ah
00001357  2020              and [bx+si],ah
00001359  2020              and [bx+si],ah
0000135B  2020              and [bx+si],ah
0000135D  2020              and [bx+si],ah
0000135F  2020              and [bx+si],ah
00001361  2020              and [bx+si],ah
00001363  200D              and [di],cl
00001365  2020              and [bx+si],ah
00001367  2020              and [bx+si],ah
00001369  207468            and [si+0x68],dh
0000136C  6520646F          and [gs:si+0x6f],ah
00001370  6F                outsw
00001371  7220              jc 0x1393
00001373  6F                outsw
00001374  66206465          o32 and [si+0x65],ah
00001378  7374              jnc 0x13ee
0000137A  696E792077        imul bp,[bp+0x79],0x7720
0000137F  61                popa
00001380  7320              jnc 0x13a2
00001382  6F                outsw
00001383  7065              jo 0x13ea
00001385  6E                outsb
00001386  65642E2020        and [cs:bx+si],ah
0000138B  2020              and [bx+si],ah
0000138D  0D2020            or ax,0x2020
00001390  2020              and [bx+si],ah
00001392  2020              and [bx+si],ah
00001394  2020              and [bx+si],ah
00001396  54                push sp
00001397  686520            push word 0x2065
0000139A  6C                insb
0000139B  61                popa
0000139C  627972            bound di,[bx+di+0x72]
0000139F  696E746873        imul bp,[bp+0x74],0x7368
000013A4  206172            and [bx+di+0x72],ah
000013A7  65206465          and [gs:si+0x65],ah
000013AB  65702C            gs jo 0x13da
000013AE  2020              and [bx+si],ah
000013B0  2020              and [bx+si],ah
000013B2  2020              and [bx+si],ah
000013B4  2020              and [bx+si],ah
000013B6  0D2020            or ax,0x2020
000013B9  2020              and [bx+si],ah
000013BB  2020              and [bx+si],ah
000013BD  2020              and [bx+si],ah
000013BF  2020              and [bx+si],ah
000013C1  61                popa
000013C2  6E                outsb
000013C3  64207468          and [fs:si+0x68],dh
000013C7  65207761          and [gs:bx+0x61],dh
000013CB  7920              jns 0x13ed
000013CD  6973206C6F        imul si,[bp+di+0x20],0x6f6c
000013D2  6E                outsb
000013D3  672E2020          and [cs:eax],ah
000013D7  2020              and [bx+si],ah
000013D9  2020              and [bx+si],ah
000013DB  2020              and [bx+si],ah
000013DD  2020              and [bx+si],ah
000013DF  0D2020            or ax,0x2020
000013E2  2020              and [bx+si],ah
000013E4  205769            and [bx+0x69],dl
000013E7  6C                insb
000013E8  6C                insb
000013E9  204475            and [si+0x75],al
000013EC  6B652047          imul sp,[di+0x20],0x47
000013F0  61                popa
000013F1  726C              jc 0x145f
000013F3  61                popa
000013F4  6E                outsb
000013F5  64206265          and [fs:bp+si+0x65],ah
000013F9  207375            and [bp+di+0x75],dh
000013FC  636365            arpl [bp+di+0x65],sp
000013FF  7373              jnc 0x1474
00001401  66756C            jnz 0x1470
00001404  2020              and [bx+si],ah
00001406  2020              and [bx+si],ah
00001408  0D2020            or ax,0x2020
0000140B  20696E            and [bx+di+0x6e],ch
0000140E  206465            and [si+0x65],ah
00001411  7468              jz 0x147b
00001413  726F              jc 0x1484
00001415  6E                outsb
00001416  696E672074        imul bp,[bp+0x67],0x7420
0000141B  686520            push word 0x2065
0000141E  45                inc bp
0000141F  6D                insw
00001420  7065              jo 0x1487
00001422  726F              jc 0x1493
00001424  7220              jc 0x1446
00001426  6F                outsw
00001427  66204368          o32 and [bp+di+0x68],al
0000142B  61                popa
0000142C  6F                outsw
0000142D  733F              jnc 0x146e
0000142F  2020              and [bx+si],ah
00001431  0DFF20            or ax,0x20ff
00001434  2020              and [bx+si],ah
00001436  2020              and [bx+si],ah
00001438  2020              and [bx+si],ah
0000143A  2020              and [bx+si],ah
0000143C  204661            and [bp+0x61],al
0000143F  6E                outsb
00001440  7461              jz 0x14a3
00001442  7379              jnc 0x14bd
00001444  204163            and [bx+di+0x63],al
00001447  7469              jz 0x14b2
00001449  6F                outsw
0000144A  6E                outsb
0000144B  204761            and [bx+0x61],al
0000144E  6D                insw
0000144F  652020            and [gs:bx+si],ah
00001452  2020              and [bx+si],ah
00001454  2020              and [bx+si],ah
00001456  2020              and [bx+si],ah
00001458  2020              and [bx+si],ah
0000145A  200D              and [di],cl
0000145C  2020              and [bx+si],ah
0000145E  2020              and [bx+si],ah
00001460  2020              and [bx+si],ah
00001462  2020              and [bx+si],ah
00001464  2020              and [bx+si],ah
00001466  2020              and [bx+si],ah
00001468  2020              and [bx+si],ah
0000146A  205A45            and [bp+si+0x45],bl
0000146D  4C                dec sp
0000146E  49                dec cx
0000146F  41                inc cx
00001470  52                push dx
00001471  44                inc sp
00001472  2020              and [bx+si],ah
00001474  2020              and [bx+si],ah
00001476  2020              and [bx+si],ah
00001478  2020              and [bx+si],ah
0000147A  2020              and [bx+si],ah
0000147C  2020              and [bx+si],ah
0000147E  2020              and [bx+si],ah
00001480  2020              and [bx+si],ah
00001482  2020              and [bx+si],ah
00001484  0D0D20            or ax,0x200d
00001487  2020              and [bx+si],ah
00001489  2020              and [bx+si],ah
0000148B  2020              and [bx+si],ah
0000148D  2020              and [bx+si],ah
0000148F  2020              and [bx+si],ah
00001491  2020              and [bx+si],ah
00001493  2D2D20            sub ax,0x202d
00001496  53                push bx
00001497  54                push sp
00001498  41                inc cx
00001499  46                inc si
0000149A  46                inc si
0000149B  202D              and [di],ch
0000149D  2D2020            sub ax,0x2020
000014A0  2020              and [bx+si],ah
000014A2  2020              and [bx+si],ah
000014A4  2020              and [bx+si],ah
000014A6  2020              and [bx+si],ah
000014A8  2020              and [bx+si],ah
000014AA  2020              and [bx+si],ah
000014AC  2020              and [bx+si],ah
000014AE  0D0D50            or ax,0x500d
000014B1  726F              jc 0x1522
000014B3  647563            fs jnz 0x1519
000014B6  657220            gs jc 0x14d9
000014B9  2D2D20            sub ax,0x202d
000014BC  4A                dec dx
000014BD  61                popa
000014BE  7061              jo 0x1521
000014C0  6E                outsb
000014C1  657365            gs jnc 0x1529
000014C4  205665            and [bp+0x65],dl
000014C7  7273              jc 0x153c
000014C9  696F6E0D20        imul bp,[bx+0x6e],0x200d
000014CE  2020              and [bx+si],ah
000014D0  2020              and [bx+si],ah
000014D2  2020              and [bx+si],ah
000014D4  2020              and [bx+si],ah
000014D6  2020              and [bx+si],ah
000014D8  2020              and [bx+si],ah
000014DA  2020              and [bx+si],ah
000014DC  2020              and [bx+si],ah
000014DE  2020              and [bx+si],ah
000014E0  2020              and [bx+si],ah
000014E2  204D69            and [di+0x69],cl
000014E5  7473              jz 0x155a
000014E7  7568              jnz 0x1551
000014E9  69726F204D        imul si,[bp+si+0x6f],0x4d20
000014EE  61                popa
000014EF  7A64              jpe 0x1555
000014F1  61                popa
000014F2  2020              and [bx+si],ah
000014F4  200D              and [di],cl
000014F6  0D5072            or ax,0x7250
000014F9  6F                outsw
000014FA  647563            fs jnz 0x1560
000014FD  657220            gs jc 0x1520
00001500  2D2D20            sub ax,0x202d
00001503  45                inc bp
00001504  6E                outsb
00001505  676C              a32 insb
00001507  6973682056        imul si,[bp+di+0x68],0x5620
0000150C  657273            gs jc 0x1582
0000150F  696F6E0D20        imul bp,[bx+0x6e],0x200d
00001514  2020              and [bx+si],ah
00001516  2020              and [bx+si],ah
00001518  2020              and [bx+si],ah
0000151A  2020              and [bx+si],ah
0000151C  2020              and [bx+si],ah
0000151E  2020              and [bx+si],ah
00001520  2020              and [bx+si],ah
00001522  2020              and [bx+si],ah
00001524  2020              and [bx+si],ah
00001526  2020              and [bx+si],ah
00001528  2020              and [bx+si],ah
0000152A  204A6F            and [bp+si+0x6f],cl
0000152D  7368              jnc 0x1597
0000152F  204D61            and [di+0x61],cl
00001532  6E                outsb
00001533  64656C            gs insb
00001536  2020              and [bx+si],ah
00001538  2020              and [bx+si],ah
0000153A  200D              and [di],cl
0000153C  0D4C65            or ax,0x654c
0000153F  61                popa
00001540  64205072          and [fs:bx+si+0x72],dl
00001544  6F                outsw
00001545  677261            a32 jc 0x15a9
00001548  6D                insw
00001549  6D                insw
0000154A  657220            gs jc 0x156d
0000154D  2020              and [bx+si],ah
0000154F  2020              and [bx+si],ah
00001551  20546F            and [si+0x6f],dl
00001554  6D                insw
00001555  6F                outsw
00001556  7975              jns 0x15cd
00001558  6B692053          imul bp,[bx+di+0x20],0x53
0000155C  68696D            push word 0x6d69
0000155F  61                popa
00001560  6461              fs popa
00001562  2020              and [bx+si],ah
00001564  200D              and [di],cl
00001566  0D4772            or ax,0x7247
00001569  61                popa
0000156A  7068              jo 0x15d4
0000156C  6963204465        imul sp,[bp+di+0x20],0x6544
00001571  7369              jnc 0x15dc
00001573  676E              a32 outsb
00001575  657273            gs jc 0x15eb
00001578  2020              and [bx+si],ah
0000157A  2020              and [bx+si],ah
0000157C  20416B            and [bx+di+0x6b],al
0000157F  6968696B6F        imul bp,[bx+si+0x69],0x6f6b
00001584  20596F            and [bx+di+0x6f],bl
00001587  7368              jnc 0x15f1
00001589  6964612020        imul sp,[si+0x61],0x2020
0000158E  200D              and [di],cl
00001590  2020              and [bx+si],ah
00001592  2020              and [bx+si],ah
00001594  2020              and [bx+si],ah
00001596  2020              and [bx+si],ah
00001598  2020              and [bx+si],ah
0000159A  2020              and [bx+si],ah
0000159C  2020              and [bx+si],ah
0000159E  2020              and [bx+si],ah
000015A0  2020              and [bx+si],ah
000015A2  2020              and [bx+si],ah
000015A4  2020              and [bx+si],ah
000015A6  4D                dec bp
000015A7  61                popa
000015A8  7361              jnc 0x160b
000015AA  746F              jz 0x161b
000015AC  7368              jnc 0x1616
000015AE  6920417A          imul sp,[bx+si],0x7a41
000015B2  756D              jnz 0x1621
000015B4  69202020          imul sp,[bx+si],0x2020
000015B8  0D0D45            or ax,0x450d
000015BB  6E                outsb
000015BC  676C              a32 insb
000015BE  6973682054        imul si,[bp+di+0x68],0x5420
000015C3  657874            gs js 0x163a
000015C6  205472            and [si+0x72],dl
000015C9  61                popa
000015CA  6E                outsb
000015CB  736C              jnc 0x1639
000015CD  61                popa
000015CE  7469              jz 0x1639
000015D0  6F                outsw
000015D1  6E                outsb
000015D2  206279            and [bp+si+0x79],ah
000015D5  0D2020            or ax,0x2020
000015D8  2020              and [bx+si],ah
000015DA  2020              and [bx+si],ah
000015DC  2020              and [bx+si],ah
000015DE  2020              and [bx+si],ah
000015E0  2020              and [bx+si],ah
000015E2  2020              and [bx+si],ah
000015E4  2020              and [bx+si],ah
000015E6  2020              and [bx+si],ah
000015E8  2020              and [bx+si],ah
000015EA  2020              and [bx+si],ah
000015EC  204D61            and [di+0x61],cl
000015EF  7274              jc 0x1665
000015F1  69204D63          imul sp,[bx+si],0x634d
000015F5  4B                dec bx
000015F6  656E              gs outsb
000015F8  6E                outsb
000015F9  61                popa
000015FA  2020              and [bx+si],ah
000015FC  2020              and [bx+si],ah
000015FE  0D0D4D            or ax,0x4d0d
00001601  7573              jnz 0x1676
00001603  696320436F        imul sp,[bp+di+0x20],0x6f43
00001608  6D                insw
00001609  706F              jo 0x167a
0000160B  7365              jnc 0x1672
0000160D  7273              jc 0x1682
0000160F  2020              and [bx+si],ah
00001611  2D2D20            sub ax,0x202d
00001614  4D                dec bp
00001615  45                inc bp
00001616  43                inc bx
00001617  41                inc cx
00001618  4E                dec si
00001619  4F                dec di
0000161A  204153            and [bx+di+0x53],al
0000161D  53                push bx
0000161E  4F                dec di
0000161F  43                inc bx
00001620  49                dec cx
00001621  41                inc cx
00001622  54                push sp
00001623  45                inc bp
00001624  53                push bx
00001625  202D              and [di],ch
00001627  2D0D20            sub ax,0x200d
0000162A  2020              and [bx+si],ah
0000162C  2020              and [bx+si],ah
0000162E  2020              and [bx+si],ah
00001630  2020              and [bx+si],ah
00001632  2020              and [bx+si],ah
00001634  2020              and [bx+si],ah
00001636  2020              and [bx+si],ah
00001638  2020              and [bx+si],ah
0000163A  2020              and [bx+si],ah
0000163C  204675            and [bp+0x75],al
0000163F  6D                insw
00001640  696869746F        imul bp,[bx+si+0x69],0x6f74
00001645  204B61            and [bp+di+0x61],cl
00001648  7361              jnc 0x16ab
0000164A  7461              jz 0x16ad
0000164C  6E                outsb
0000164D  69202020          imul sp,[bx+si],0x2020
00001651  0D2020            or ax,0x2020
00001654  2020              and [bx+si],ah
00001656  2020              and [bx+si],ah
00001658  2020              and [bx+si],ah
0000165A  2020              and [bx+si],ah
0000165C  2020              and [bx+si],ah
0000165E  2020              and [bx+si],ah
00001660  2020              and [bx+si],ah
00001662  2020              and [bx+si],ah
00001664  2020              and [bx+si],ah
00001666  4E                dec si
00001667  6F                outsw
00001668  627579            bound si,[di+0x79]
0000166B  756B              jnz 0x16d8
0000166D  6920416F          imul sp,[bx+si],0x6f41
00001671  7368              jnc 0x16db
00001673  696D612020        imul bp,[di+0x61],0x2020
00001678  2020              and [bx+si],ah
0000167A  0D0D53            or ax,0x530d
0000167D  746F              jz 0x16ee
0000167F  7279              jc 0x16fa
00001681  204D61            and [di+0x61],cl
00001684  6B657220          imul sp,[di+0x72],0x20
00001688  2020              and [bx+si],ah
0000168A  2020              and [bx+si],ah
0000168C  2020              and [bx+si],ah
0000168E  2020              and [bx+si],ah
00001690  2020              and [bx+si],ah
00001692  4D                dec bp
00001693  61                popa
00001694  7361              jnc 0x16f7
00001696  7275              jc 0x170d
00001698  205461            and [si+0x61],dl
0000169B  6B657563          imul sp,[di+0x75],0x63
0000169F  686920            push word 0x2069
000016A2  2020              and [bx+si],ah
000016A4  0D0D53            or ax,0x530d
000016A7  6F                outsw
000016A8  756E              jnz 0x1718
000016AA  64204566          and [fs:di+0x66],al
000016AE  6665637473        arpl word [gs:si+0x73],esi
000016B3  206279            and [bp+si+0x79],ah
000016B6  2020              and [bx+si],ah
000016B8  2020              and [bx+si],ah
000016BA  20546F            and [si+0x6f],dl
000016BD  6D                insw
000016BE  6F                outsw
000016BF  7975              jns 0x1736
000016C1  6B692053          imul bp,[bx+di+0x20],0x53
000016C5  68696D            push word 0x6d69
000016C8  61                popa
000016C9  6461              fs popa
000016CB  2020              and [bx+si],ah
000016CD  200D              and [di],cl
000016CF  0D4164            or ax,0x6441
000016D2  7669              jna 0x173d
000016D4  7365              jnc 0x173b
000016D6  7273              jc 0x174b
000016D8  2020              and [bx+si],ah
000016DA  2020              and [bx+si],ah
000016DC  2020              and [bx+si],ah
000016DE  2020              and [bx+si],ah
000016E0  2020              and [bx+si],ah
000016E2  2020              and [bx+si],ah
000016E4  2020              and [bx+si],ah
000016E6  204F73            and [bx+0x73],cl
000016E9  61                popa
000016EA  6D                insw
000016EB  7520              jnz 0x170d
000016ED  48                dec ax
000016EE  61                popa
000016EF  7261              jc 0x1752
000016F1  6461              fs popa
000016F3  2020              and [bx+si],ah
000016F5  2020              and [bx+si],ah
000016F7  200D              and [di],cl
000016F9  2020              and [bx+si],ah
000016FB  2020              and [bx+si],ah
000016FD  2020              and [bx+si],ah
000016FF  2020              and [bx+si],ah
00001701  2020              and [bx+si],ah
00001703  2020              and [bx+si],ah
00001705  2020              and [bx+si],ah
00001707  2020              and [bx+si],ah
00001709  2020              and [bx+si],ah
0000170B  2020              and [bx+si],ah
0000170D  2020              and [bx+si],ah
0000170F  204869            and [bx+si+0x69],cl
00001712  726F              jc 0x1783
00001714  6D                insw
00001715  69204F68          imul sp,[bx+si],0x684f
00001719  626120            bound sp,[bx+di+0x20]
0000171C  2020              and [bx+si],ah
0000171E  2020              and [bx+si],ah
00001720  200D              and [di],cl
00001722  2020              and [bx+si],ah
00001724  2020              and [bx+si],ah
00001726  2020              and [bx+si],ah
00001728  2020              and [bx+si],ah
0000172A  2020              and [bx+si],ah
0000172C  2020              and [bx+si],ah
0000172E  2020              and [bx+si],ah
00001730  2020              and [bx+si],ah
00001732  2020              and [bx+si],ah
00001734  2020              and [bx+si],ah
00001736  2020              and [bx+si],ah
00001738  204772            and [bx+0x72],al
0000173B  6567204D69        and [gs:ebp+0x69],cl
00001740  7961              jns 0x17a3
00001742  6A69              push word 0x69
00001744  2020              and [bx+si],ah
00001746  2020              and [bx+si],ah
00001748  2020              and [bx+si],ah
0000174A  0D0D53            or ax,0x530d
0000174D  7973              jns 0x17c2
0000174F  7465              jz 0x17b6
00001751  6D                insw
00001752  204465            and [si+0x65],al
00001755  7369              jnc 0x17c0
00001757  676E              a32 outsb
00001759  657220            gs jc 0x177c
0000175C  2020              and [bx+si],ah
0000175E  2020              and [bx+si],ah
00001760  20526F            and [bp+si+0x6f],dl
00001763  636B79            arpl [bp+di+0x79],bp
00001766  204361            and [bp+di+0x61],al
00001769  7665              jna 0x17d0
0000176B  204D61            and [di+0x61],cl
0000176E  6B657220          imul sp,[di+0x72],0x20
00001772  2020              and [bx+si],ah
00001774  0D0D53            or ax,0x530d
00001777  7065              jo 0x17de
00001779  636961            arpl [bx+di+0x61],bp
0000177C  6C                insb
0000177D  205468            and [si+0x68],dl
00001780  61                popa
00001781  6E                outsb
00001782  6B732074          imul si,[bp+di+0x20],0x74
00001786  6F                outsw
00001787  0D2020            or ax,0x2020
0000178A  2020              and [bx+si],ah
0000178C  2020              and [bx+si],ah
0000178E  2020              and [bx+si],ah
00001790  2020              and [bx+si],ah
00001792  2020              and [bx+si],ah
00001794  2020              and [bx+si],ah
00001796  2020              and [bx+si],ah
00001798  2020              and [bx+si],ah
0000179A  2020              and [bx+si],ah
0000179C  54                push sp
0000179D  6F                outsw
0000179E  7368              jnc 0x1808
000017A0  6979756B69        imul di,[bx+di+0x75],0x696b
000017A5  205563            and [di+0x63],dl
000017A8  686964            push word 0x6469
000017AB  61                popa
000017AC  2020              and [bx+si],ah
000017AE  2020              and [bx+si],ah
000017B0  0D2020            or ax,0x2020
000017B3  2020              and [bx+si],ah
000017B5  2020              and [bx+si],ah
000017B7  2020              and [bx+si],ah
000017B9  2020              and [bx+si],ah
000017BB  2020              and [bx+si],ah
000017BD  2020              and [bx+si],ah
000017BF  2020              and [bx+si],ah
000017C1  2020              and [bx+si],ah
000017C3  2020              and [bx+si],ah
000017C5  2020              and [bx+si],ah
000017C7  205975            and [bx+di+0x75],bl
000017CA  7A6F              jpe 0x183b
000017CC  205375            and [bp+di+0x75],dl
000017CF  6E                outsb
000017D0  61                popa
000017D1  6761              a32 popa
000017D3  2020              and [bx+si],ah
000017D5  2020              and [bx+si],ah
000017D7  2020              and [bx+si],ah
000017D9  0D2020            or ax,0x2020
000017DC  2020              and [bx+si],ah
000017DE  2020              and [bx+si],ah
000017E0  2020              and [bx+si],ah
000017E2  2020              and [bx+si],ah
000017E4  2020              and [bx+si],ah
000017E6  2020              and [bx+si],ah
000017E8  2020              and [bx+si],ah
000017EA  2020              and [bx+si],ah
000017EC  2020              and [bx+si],ah
000017EE  205461            and [si+0x61],dl
000017F1  6B657368          imul sp,[di+0x73],0x68
000017F5  69204D69          imul sp,[bx+si],0x694d
000017F9  7961              jns 0x185c
000017FB  6A69              push word 0x69
000017FD  2020              and [bx+si],ah
000017FF  2020              and [bx+si],ah
00001801  200D              and [di],cl
00001803  2020              and [bx+si],ah
00001805  2020              and [bx+si],ah
00001807  2020              and [bx+si],ah
00001809  2020              and [bx+si],ah
0000180B  2020              and [bx+si],ah
0000180D  2020              and [bx+si],ah
0000180F  2020              and [bx+si],ah
00001811  2020              and [bx+si],ah
00001813  2020              and [bx+si],ah
00001815  2020              and [bx+si],ah
00001817  204E61            and [bp+0x61],cl
0000181A  6F                outsw
0000181B  7A75              jpe 0x1892
0000181D  6D                insw
0000181E  6920486F          imul sp,[bx+si],0x6f48
00001822  6E                outsb
00001823  6D                insw
00001824  61                popa
00001825  2020              and [bx+si],ah
00001827  2020              and [bx+si],ah
00001829  2020              and [bx+si],ah
0000182B  0D2020            or ax,0x2020
0000182E  2020              and [bx+si],ah
00001830  2020              and [bx+si],ah
00001832  2020              and [bx+si],ah
00001834  2020              and [bx+si],ah
00001836  2020              and [bx+si],ah
00001838  2020              and [bx+si],ah
0000183A  2020              and [bx+si],ah
0000183C  2020              and [bx+si],ah
0000183E  2020              and [bx+si],ah
00001840  20546F            and [si+0x6f],dl
00001843  7368              jnc 0x18ad
00001845  69204D61          imul sp,[bx+si],0x614d
00001849  7375              jnc 0x18c0
0000184B  627563            bound si,[di+0x63]
0000184E  686920            push word 0x2069
00001851  2020              and [bx+si],ah
00001853  200D              and [di],cl
00001855  2020              and [bx+si],ah
00001857  2020              and [bx+si],ah
00001859  2020              and [bx+si],ah
0000185B  2020              and [bx+si],ah
0000185D  2020              and [bx+si],ah
0000185F  2020              and [bx+si],ah
00001861  2020              and [bx+si],ah
00001863  2020              and [bx+si],ah
00001865  2020              and [bx+si],ah
00001867  2020              and [bx+si],ah
00001869  205261            and [bp+si+0x61],dl
0000186C  7920              jns 0x188e
0000186E  45                inc bp
0000186F  2E204E61          and [cs:bp+0x61],cl
00001873  6B617A61          imul sp,[bx+di+0x7a],0x61
00001877  746F              jz 0x18e8
00001879  2020              and [bx+si],ah
0000187B  2020              and [bx+si],ah
0000187D  0D2020            or ax,0x2020
00001880  2020              and [bx+si],ah
00001882  2020              and [bx+si],ah
00001884  2020              and [bx+si],ah
00001886  2020              and [bx+si],ah
00001888  2020              and [bx+si],ah
0000188A  2020              and [bx+si],ah
0000188C  2020              and [bx+si],ah
0000188E  2020              and [bx+si],ah
00001890  2020              and [bx+si],ah
00001892  204869            and [bx+si+0x69],cl
00001895  726F              jc 0x1906
00001897  7975              jns 0x190e
00001899  6B69204B          imul bp,[bx+di+0x20],0x4b
0000189D  6F                outsw
0000189E  7961              jns 0x1901
000018A0  6D                insw
000018A1  61                popa
000018A2  2020              and [bx+si],ah
000018A4  2020              and [bx+si],ah
000018A6  0D2020            or ax,0x2020
000018A9  2020              and [bx+si],ah
000018AB  2020              and [bx+si],ah
000018AD  2020              and [bx+si],ah
000018AF  2020              and [bx+si],ah
000018B1  2020              and [bx+si],ah
000018B3  2020              and [bx+si],ah
000018B5  2020              and [bx+si],ah
000018B7  2020              and [bx+si],ah
000018B9  2020              and [bx+si],ah
000018BB  205361            and [bp+di+0x61],dl
000018BE  746F              jz 0x192f
000018C0  7368              jnc 0x192a
000018C2  69205565          imul sp,[bx+si],0x6555
000018C6  7361              jnc 0x1929
000018C8  6B612020          imul sp,[bx+di+0x20],0x20
000018CC  2020              and [bx+si],ah
000018CE  200D              and [di],cl
000018D0  2020              and [bx+si],ah
000018D2  2020              and [bx+si],ah
000018D4  2020              and [bx+si],ah
000018D6  2020              and [bx+si],ah
000018D8  2020              and [bx+si],ah
000018DA  2020              and [bx+si],ah
000018DC  2020              and [bx+si],ah
000018DE  53                push bx
000018DF  6965727261        imul sp,[di+0x72],0x6172
000018E4  204F6E            and [bx+0x6e],cl
000018E7  2D4C69            sub ax,0x694c
000018EA  6E                outsb
000018EB  65204A61          and [gs:bp+si+0x61],cl
000018EF  7061              jo 0x1952
000018F1  6E                outsb
000018F2  2C20              sub al,0x20
000018F4  49                dec cx
000018F5  6E                outsb
000018F6  632E0D20          arpl [0x200d],bp
000018FA  2020              and [bx+si],ah
000018FC  2020              and [bx+si],ah
000018FE  2020              and [bx+si],ah
00001900  2020              and [bx+si],ah
00001902  2020              and [bx+si],ah
00001904  2020              and [bx+si],ah
00001906  2020              and [bx+si],ah
00001908  2020              and [bx+si],ah
0000190A  2020              and [bx+si],ah
0000190C  204569            and [di+0x69],al
0000190F  6A69              push word 0x69
00001911  2028              and [bx+si],ch
00001913  45                inc bp
00001914  642920            sub [fs:bx+si],sp
00001917  4E                dec si
00001918  61                popa
00001919  6761              a32 popa
0000191B  6E                outsb
0000191C  6F                outsw
0000191D  2020              and [bx+si],ah
0000191F  2020              and [bx+si],ah
00001921  0D0D0D            or ax,0xd0d
00001924  0D2020            or ax,0x2020
00001927  2020              and [bx+si],ah
00001929  43                inc bx
0000192A  6F                outsw
0000192B  7079              jo 0x19a6
0000192D  7269              jc 0x1998
0000192F  67687420          a32 push word 0x2074
00001933  284329            sub [bp+di+0x29],al
00001936  3139              xor [bx+di],di
00001938  3837              cmp [bx],dh
0000193A  2C31              sub al,0x31
0000193C  3939              cmp [bx+di],di
0000193E  3020              xor [bx+si],ah
00001940  47                inc di
00001941  41                inc cx
00001942  4D                dec bp
00001943  45                inc bp
00001944  204152            and [bx+di+0x52],al
00001947  54                push sp
00001948  53                push bx
00001949  2020              and [bx+si],ah
0000194B  2020              and [bx+si],ah
0000194D  0D2020            or ax,0x2020
00001950  2020              and [bx+si],ah
00001952  43                inc bx
00001953  6F                outsw
00001954  7079              jo 0x19cf
00001956  7269              jc 0x19c1
00001958  67687420          a32 push word 0x2074
0000195C  284329            sub [bp+di+0x29],al
0000195F  3139              xor [bx+di],di
00001961  3930              cmp [bx+si],si
00001963  205369            and [bp+di+0x69],dl
00001966  657272            gs jc 0x19db
00001969  61                popa
0000196A  204F6E            and [bx+0x6e],cl
0000196D  2D4C69            sub ax,0x694c
00001970  6E                outsb
00001971  652020            and [gs:bx+si],ah
00001974  2020              and [bx+si],ah
00001976  0D2020            or ax,0x2020
00001979  54                push sp
0000197A  686973            push word 0x7369
0000197D  206564            and [di+0x64],ah
00001980  6974696F6E        imul si,[si+0x69],0x6e6f
00001985  206669            and [bp+0x69],ah
00001988  7273              jc 0x19fd
0000198A  7420              jz 0x19ac
0000198C  7075              jo 0x1a03
0000198E  626C69            bound bp,[si+0x69]
00001991  7368              jnc 0x19fb
00001993  65642031          and [fs:bx+di],dh
00001997  3938              cmp [bx+si],di
00001999  37                aaa
0000199A  206279            and [bp+si+0x79],ah
0000199D  2020              and [bx+si],ah
0000199F  0D2020            or ax,0x2020
000019A2  47                inc di
000019A3  41                inc cx
000019A4  4D                dec bp
000019A5  45                inc bp
000019A6  204152            and [bx+di+0x52],al
000019A9  54                push sp
000019AA  53                push bx
000019AB  20436F            and [bp+di+0x6f],al
000019AE  2E2C4C            cs sub al,0x4c
000019B1  7464              jz 0x1a17
000019B3  2E2F              cs das
000019B5  20546F            and [si+0x6f],dl
000019B8  6D                insw
000019B9  6F                outsw
000019BA  7975              jns 0x1a31
000019BC  6B692053          imul bp,[bx+di+0x20],0x53
000019C0  68696D            push word 0x6d69
000019C3  61                popa
000019C4  6461              fs popa
000019C6  2020              and [bx+si],ah
000019C8  0DFF50            or ax,0x50ff
000019CB  F0                lock
000019CC  FE                db 0xfe
000019CD  F3FA              rep cli
000019CF  4F                dec di
000019D0  6E                outsb
000019D1  63652C            arpl [di+0x2c],sp
000019D4  206C6F            and [si+0x6f],ch
000019D7  6E                outsb
000019D8  67206167          and [ecx+0x67],ah
000019DC  6F                outsw
000019DD  2C20              sub al,0x20
000019DF  61                popa
000019E0  207465            and [si+0x65],dh
000019E3  7272              jc 0x1a57
000019E5  69626C6520        imul sp,[bp+si+0x6c],0x2065
000019EA  7374              jnc 0x1a60
000019EC  6F                outsw
000019ED  726D              jc 0x1a5c
000019EF  206361            and [bp+di+0x61],ah
000019F2  6D                insw
000019F3  6520746F          and [gs:si+0x6f],dh
000019F7  207468            and [si+0x68],dh
000019FA  65206C61          and [gs:si+0x61],ch
000019FE  6E                outsb
000019FF  64206F66          and [fs:bx+0x66],ch
00001A03  205A65            and [bp+si+0x65],bl
00001A06  6C                insb
00001A07  696172642E        imul sp,[bx+di+0x72],0x2e64
00001A0C  20F5              and ch,dh
00001A0E  F5                cmc
00001A0F  F5                cmc
00001A10  F5                cmc
00001A11  FE                db 0xfe
00001A12  F74461726B        test word [si+0x61],0x6b72
00001A17  20636C            and [bp+di+0x6c],ah
00001A1A  6F                outsw
00001A1B  7564              jnz 0x1a81
00001A1D  7320              jnc 0x1a3f
00001A1F  66696C6C65642074  imul ebp,[si+0x6c],0x74206465
00001A27  686520            push word 0x2065
00001A2A  736B              jnc 0x1a97
00001A2C  793B              jns 0x1a69
00001A2E  206C69            and [si+0x69],ch
00001A31  6768746E          a32 push word 0x6e74
00001A35  696E672066        imul bp,[bp+0x67],0x6620
00001A3A  6C                insb
00001A3B  61                popa
00001A3C  7368              jnc 0x1aa6
00001A3E  656420616E        and [fs:bx+di+0x6e],ah
00001A43  64207468          and [fs:si+0x68],dh
00001A47  756E              jnz 0x1ab7
00001A49  64657220          gs jc 0x1a6d
00001A4D  637261            arpl [bp+si+0x61],si
00001A50  7368              jnc 0x1aba
00001A52  65642E20F2        cs and dl,dh
00001A57  44                inc sp
00001A58  61                popa
00001A59  7920              jns 0x1a7b
00001A5B  61                popa
00001A5C  667465            jz 0x1ac4
00001A5F  7220              jc 0x1a81
00001A61  6461              fs popa
00001A63  792C              jns 0x1a91
00001A65  207261            and [bp+si+0x61],dh
00001A68  696E20706F        imul bp,[bp+0x20],0x6f70
00001A6D  7572              jnz 0x1ae1
00001A6F  6564206672        and [fs:bp+0x72],ah
00001A74  6F                outsw
00001A75  6D                insw
00001A76  207468            and [si+0x68],dh
00001A79  65206865          and [gs:bx+si+0x65],ch
00001A7D  61                popa
00001A7E  7665              jna 0x1ae5
00001A80  6E                outsb
00001A81  7320              jnc 0x1aa3
00001A83  61                popa
00001A84  7320              jnc 0x1aa6
00001A86  696620696E        imul sp,[bp+0x20],0x6e69
00001A8B  206C61            and [si+0x61],ch
00001A8E  6D                insw
00001A8F  656E              gs outsb
00001A91  742E              jz 0x1ac1
00001A93  F5                cmc
00001A94  F5                cmc
00001A95  F5                cmc
00001A96  F5                cmc
00001A97  FE                db 0xfe
00001A98  F5                cmc
00001A99  F5                cmc
00001A9A  FE                db 0xfe
00001A9B  F3F5              rep cmc
00001A9D  4F                dec di
00001A9E  6E                outsb
00001A9F  207468            and [si+0x68],dh
00001AA2  65207365          and [gs:bp+di+0x65],dh
00001AA6  7665              jna 0x1b0d
00001AA8  6E                outsb
00001AA9  7468              jz 0x1b13
00001AAB  206461            and [si+0x61],ah
00001AAE  7920              jns 0x1ad0
00001AB0  6F                outsw
00001AB1  66207261          o32 and [bp+si+0x61],dh
00001AB5  696E2C2061        imul bp,[bp+0x2c],0x6120
00001ABA  206265            and [bp+si+0x65],ah
00001ABD  61                popa
00001ABE  7574              jnz 0x1b34
00001AC0  6966756C20        imul sp,[bp+0x75],0x206c
00001AC5  796F              jns 0x1b36
00001AC7  756E              jnz 0x1b37
00001AC9  67206769          and [edi+0x69],ah
00001ACD  726C              jc 0x1b3b
00001ACF  207374            and [bp+di+0x74],dh
00001AD2  6F                outsw
00001AD3  6F                outsw
00001AD4  64206F6E          and [fs:bx+0x6e],ch
00001AD8  206865            and [bx+si+0x65],ch
00001ADB  7220              jc 0x1afd
00001ADD  62616C            bound sp,[bx+di+0x6c]
00001AE0  636F6E            arpl [bx+0x6e],bp
00001AE3  7920              jns 0x1b05
00001AE5  7761              ja 0x1b48
00001AE7  7463              jz 0x1b4c
00001AE9  68696E            push word 0x6e69
00001AEC  6720746869        and [eax+ebp*2+0x69],dh
00001AF1  7320              jnc 0x1b13
00001AF3  6461              fs popa
00001AF5  726B              jc 0x1b62
00001AF7  2C20              sub al,0x20
00001AF9  7361              jnc 0x1b5c
00001AFB  64207261          and [fs:bp+si+0x61],dh
00001AFF  696E2EF5F5        imul bp,[bp+0x2e],0xf5f5
00001B04  F5                cmc
00001B05  F5                cmc
00001B06  FE                db 0xfe
00001B07  F354              rep push sp
00001B09  686520            push word 0x2065
00001B0C  6769726C2077      imul si,[edx+0x6c],0x7720
00001B12  61                popa
00001B13  7320              jnc 0x1b35
00001B15  50                push ax
00001B16  7269              jc 0x1b81
00001B18  6E                outsb
00001B19  636573            arpl [di+0x73],sp
00001B1C  7320              jnc 0x1b3e
00001B1E  46                inc si
00001B1F  656C              gs insb
00001B21  6963696120        imul sp,[bp+di+0x69],0x2061
00001B26  6C                insb
00001B27  61                popa
00001B28  204665            and [bp+0x65],al
00001B2B  6C                insb
00001B2C  697368696B        imul si,[bp+di+0x68],0x6b69
00001B31  61                popa
00001B32  2E2020            and [cs:bx+si],ah
00001B35  53                push bx
00001B36  686520            push word 0x2065
00001B39  7761              ja 0x1b9c
00001B3B  7320              jnc 0x1b5d
00001B3D  7468              jz 0x1ba7
00001B3F  65206F6E          and [gs:bx+0x6e],ch
00001B43  6C                insb
00001B44  7920              jns 0x1b66
00001B46  6461              fs popa
00001B48  7567              jnz 0x1bb1
00001B4A  687465            push word 0x6574
00001B4D  7220              jc 0x1b6f
00001B4F  6F                outsw
00001B50  66204B69          o32 and [bp+di+0x69],cl
00001B54  6E                outsb
00001B55  67204665          and [esi+0x65],al
00001B59  6C                insb
00001B5A  697368696B        imul si,[bp+di+0x68],0x6b69
00001B5F  61                popa
00001B60  2C20              sub al,0x20
00001B62  61                popa
00001B63  6E                outsb
00001B64  64207468          and [fs:si+0x68],dh
00001B68  65206C69          and [gs:si+0x69],ch
00001B6C  67687420          a32 push word 0x2074
00001B70  6F                outsw
00001B71  66206869          o32 and [bx+si+0x69],ch
00001B75  7320              jnc 0x1b97
00001B77  6C                insb
00001B78  6966652EF5        imul sp,[bp+0x65],0xf52e
00001B7D  F5                cmc
00001B7E  F5                cmc
00001B7F  F5                cmc
00001B80  FE                db 0xfe
00001B81  F3F5              rep cmc
00001B83  48                dec ax
00001B84  657220            gs jc 0x1ba7
00001B87  736D              jnc 0x1bf6
00001B89  696C657320        imul bp,[si+0x65],0x2073
00001B8E  7765              ja 0x1bf5
00001B90  7265              jc 0x1bf7
00001B92  206C69            and [si+0x69],ch
00001B95  6B652073          imul sp,[di+0x20],0x73
00001B99  756E              jnz 0x1c09
00001B9B  7368              jnc 0x1c05
00001B9D  696E652C20        imul bp,[bp+0x65],0x202c
00001BA2  686572            push word 0x7265
00001BA5  20766F            and [bp+0x6f],dh
00001BA8  6963652061        imul sp,[bp+di+0x65],0x6120
00001BAD  7320              jnc 0x1bcf
00001BAF  626561            bound sp,[di+0x61]
00001BB2  7574              jnz 0x1c28
00001BB4  6966756C20        imul sp,[bp+0x75],0x206c
00001BB9  61                popa
00001BBA  7320              jnc 0x1bdc
00001BBC  7468              jz 0x1c26
00001BBE  61                popa
00001BBF  7420              jz 0x1be1
00001BC1  6F                outsw
00001BC2  6620616E          o32 and [bx+di+0x6e],ah
00001BC6  20616E            and [bx+di+0x6e],ah
00001BC9  67656C            gs a32 insb
00001BCC  2E2020            and [cs:bx+si],ah
00001BCF  53                push bx
00001BD0  686520            push word 0x2065
00001BD3  7761              ja 0x1c36
00001BD5  7320              jnc 0x1bf7
00001BD7  61                popa
00001BD8  646F              fs outsw
00001BDA  7265              jc 0x1c41
00001BDC  64206279          and [fs:bp+si+0x79],ah
00001BE0  207468            and [si+0x68],dh
00001BE3  65207065          and [gs:bx+si+0x65],dh
00001BE7  6F                outsw
00001BE8  706C              jo 0x1c56
00001BEA  65206F66          and [gs:bx+0x66],ch
00001BEE  207468            and [si+0x68],dh
00001BF1  65206B69          and [gs:bp+di+0x69],ch
00001BF5  6E                outsb
00001BF6  67646F            fs a32 outsw
00001BF9  6D                insw
00001BFA  2EF5              cs cmc
00001BFC  F5                cmc
00001BFD  F5                cmc
00001BFE  F5                cmc
00001BFF  EBFE              jmp 0x1bff
00001C01  F5                cmc
00001C02  F3FB              rep sti
00001C04  A02257            mov al,[0x5722]
00001C07  686174            push word 0x7461
00001C0A  206120            and [bx+di+0x20],ah
00001C0D  647265            fs jc 0x1c75
00001C10  61                popa
00001C11  6466756C          fs jnz 0x1c81
00001C15  207374            and [bp+di+0x74],dh
00001C18  6F                outsw
00001C19  726D              jc 0x1c88
00001C1B  2120              and [bx+si],sp
00001C1D  205769            and [bx+0x69],dl
00001C20  6C                insb
00001C21  6C                insb
00001C22  206974            and [bx+di+0x74],ch
00001C25  206E65            and [bp+0x65],ch
00001C28  7665              jna 0x1c8f
00001C2A  7220              jc 0x1c4c
00001C2C  656E              gs outsb
00001C2E  643F              fs aas
00001C30  22F0              and dh,al
00001C32  F6FE              idiv dh
00001C34  F5                cmc
00001C35  F3FA              rep cli
00001C37  4A                dec dx
00001C38  7573              jnz 0x1cad
00001C3A  7420              jz 0x1c5c
00001C3C  61                popa
00001C3D  7320              jnc 0x1c5f
00001C3F  7468              jz 0x1ca9
00001C41  65207072          and [gs:bx+si+0x72],dh
00001C45  696E636573        imul bp,[bp+0x63],0x7365
00001C4A  7320              jnc 0x1c6c
00001C4C  7370              jnc 0x1cbe
00001C4E  6F                outsw
00001C4F  6B652074          imul sp,[di+0x20],0x74
00001C53  686573            push word 0x7365
00001C56  6520776F          and [gs:bx+0x6f],dh
00001C5A  7264              jc 0x1cc0
00001C5C  732C              jnc 0x1c8a
00001C5E  207468            and [si+0x68],dh
00001C61  65207261          and [gs:bp+si+0x61],dh
00001C65  696E64726F        imul bp,[bp+0x64],0x6f72
00001C6A  7073              jo 0x1cdf
00001C6C  207475            and [si+0x75],dh
00001C6F  726E              jc 0x1cdf
00001C71  656420746F        and [fs:si+0x6f],dh
00001C76  206772            and [bx+0x72],ah
00001C79  61                popa
00001C7A  696E73206F        imul bp,[bp+0x73],0x6f20
00001C7F  66207361          o32 and [bp+di+0x61],dh
00001C83  6E                outsb
00001C84  64207768          and [fs:bx+0x68],dh
00001C88  6963682063        imul sp,[bp+di+0x68],0x6320
00001C8D  6F                outsw
00001C8E  7665              jna 0x1cf5
00001C90  7265              jc 0x1cf7
00001C92  64207468          and [fs:si+0x68],dh
00001C96  65206772          and [gs:bx+0x72],ah
00001C9A  6F                outsw
00001C9B  756E              jnz 0x1d0b
00001C9D  64206265          and [fs:bp+si+0x65],ah
00001CA1  6C                insb
00001CA2  6F                outsw
00001CA3  7720              ja 0x1cc5
00001CA5  686572            push word 0x7265
00001CA8  2E20F5            cs and ch,dh
00001CAB  F5                cmc
00001CAC  F5                cmc
00001CAD  F5                cmc
00001CAE  F5                cmc
00001CAF  FE                db 0xfe
00001CB0  FD                std
00001CB1  FE                db 0xfe
00001CB2  F5                cmc
00001CB3  F341              rep inc cx
00001CB5  7320              jnc 0x1cd7
00001CB7  7368              jnc 0x1d21
00001CB9  65207761          and [gs:bx+0x61],dh
00001CBD  7463              jz 0x1d22
00001CBF  686564            push word 0x6465
00001CC2  2C20              sub al,0x20
00001CC4  61                popa
00001CC5  207374            and [bp+di+0x74],dh
00001CC8  61                popa
00001CC9  7274              jc 0x1d3f
00001CCB  6C                insb
00001CCC  696E672074        imul bp,[bp+0x67],0x7420
00001CD1  7261              jc 0x1d34
00001CD3  6E                outsb
00001CD4  7366              jnc 0x1d3c
00001CD6  6F                outsw
00001CD7  726D              jc 0x1d46
00001CD9  61                popa
00001CDA  7469              jz 0x1d45
00001CDC  6F                outsw
00001CDD  6E                outsb
00001CDE  206265            and [bp+si+0x65],ah
00001CE1  6761              a32 popa
00001CE3  6E                outsb
00001CE4  20746F            and [si+0x6f],dh
00001CE7  207461            and [si+0x61],dh
00001CEA  6B652070          imul sp,[di+0x20],0x70
00001CEE  6C                insb
00001CEF  61                popa
00001CF0  63652E            arpl [di+0x2e],sp
00001CF3  F5                cmc
00001CF4  F5                cmc
00001CF5  F5                cmc
00001CF6  F5                cmc
00001CF7  FE                db 0xfe
00001CF8  F349              rep dec cx
00001CFA  6E                outsb
00001CFB  20616E            and [bx+di+0x6e],ah
00001CFE  20696E            and [bx+di+0x6e],ch
00001D01  7374              jnc 0x1d77
00001D03  61                popa
00001D04  6E                outsb
00001D05  742C              jz 0x1d33
00001D07  207468            and [si+0x68],dh
00001D0A  65206772          and [gs:bx+0x72],ah
00001D0E  65656E            gs outsb
00001D11  206869            and [bx+si+0x69],ch
00001D14  6C                insb
00001D15  6C                insb
00001D16  7320              jnc 0x1d38
00001D18  61                popa
00001D19  6E                outsb
00001D1A  6420706C          and [fs:bx+si+0x6c],dh
00001D1E  61                popa
00001D1F  696E732074        imul bp,[bp+0x73],0x7420
00001D24  7572              jnz 0x1d98
00001D26  6E                outsb
00001D27  6564206120        and [fs:bx+di+0x20],ah
00001D2C  647573            fs jnz 0x1da2
00001D2F  7479              jz 0x1daa
00001D31  206272            and [bp+si+0x72],ah
00001D34  6F                outsw
00001D35  776E              ja 0x1da5
00001D37  2E20F5            cs and ch,dh
00001D3A  F5                cmc
00001D3B  F5                cmc
00001D3C  F5                cmc
00001D3D  FE                db 0xfe
00001D3E  F75472            not word [si+0x72]
00001D41  65657320          gs jnc 0x1d65
00001D45  61                popa
00001D46  6E                outsb
00001D47  6420666C          and [fs:bp+0x6c],ah
00001D4B  6F                outsw
00001D4C  7765              ja 0x1db3
00001D4E  7273              jc 0x1dc3
00001D50  206372            and [bp+di+0x72],ah
00001D53  756D              jnz 0x1dc2
00001D55  706C              jo 0x1dc3
00001D57  656420616E        and [fs:bx+di+0x6e],ah
00001D5C  64207765          and [fs:bx+0x65],dh
00001D60  7265              jc 0x1dc7
00001D62  206275            and [bp+si+0x75],ah
00001D65  7269              jc 0x1dd0
00001D67  65642E20F3        cs and bl,dh
00001D6C  52                push dx
00001D6D  6976657273        imul si,[bp+0x65],0x7372
00001D72  20616E            and [bx+di+0x6e],ah
00001D75  64206C61          and [fs:si+0x61],ch
00001D79  6B657320          imul sp,[di+0x73],0x20
00001D7D  646973617070      imul si,[fs:bp+di+0x61],0x7070
00001D83  6561              gs popa
00001D85  7265              jc 0x1dec
00001D87  64206265          and [fs:bp+si+0x65],ah
00001D8B  6E                outsb
00001D8C  6561              gs popa
00001D8E  7468              jz 0x1df8
00001D90  207468            and [si+0x68],dh
00001D93  65207361          and [gs:bp+di+0x61],dh
00001D97  6E                outsb
00001D98  642EF1            cs int1
00001D9B  54                push sp
00001D9C  686973            push word 0x7369
00001D9F  206576            and [di+0x76],ah
00001DA2  65722D            gs jc 0x1dd2
00001DA5  677265            a32 jc 0x1e0d
00001DA8  656E              gs outsb
00001DAA  206C61            and [si+0x61],ch
00001DAD  6E                outsb
00001DAE  64207761          and [fs:bx+0x61],dh
00001DB2  7320              jnc 0x1dd4
00001DB4  7475              jz 0x1e2b
00001DB6  726E              jc 0x1e26
00001DB8  696E672074        imul bp,[bp+0x67],0x7420
00001DBD  6F                outsw
00001DBE  206465            and [si+0x65],ah
00001DC1  7365              jnc 0x1e28
00001DC3  7274              jc 0x1e39
00001DC5  206265            and [bp+si+0x65],ah
00001DC8  666F              outsd
00001DCA  7265              jc 0x1e31
00001DCC  206865            and [bx+si+0x65],ch
00001DCF  7220              jc 0x1df1
00001DD1  7665              jna 0x1e38
00001DD3  7279              jc 0x1e4e
00001DD5  206579            and [di+0x79],ah
00001DD8  65732E            gs jnc 0x1e09
00001DDB  F5                cmc
00001DDC  F5                cmc
00001DDD  F5                cmc
00001DDE  F5                cmc
00001DDF  F5                cmc
00001DE0  F5                cmc
00001DE1  FE                db 0xfe
00001DE2  FD                std
00001DE3  F5                cmc
00001DE4  F3FB              rep sti
00001DE6  EBA2              jmp 0x1d8a
00001DE8  22486F            and cl,[bx+si+0x6f]
00001DEB  7720              ja 0x1e0d
00001DED  63616E            arpl [bx+di+0x6e],sp
00001DF0  207468            and [si+0x68],dh
00001DF3  6973206265        imul si,[bp+di+0x20],0x6562
00001DF8  3F                aas
00001DF9  2220              and ah,[bx+si]
00001DFB  F0                lock
00001DFC  FA                cli
00001DFD  7368              jnc 0x1e67
00001DFF  65206372          and [gs:bp+di+0x72],ah
00001E03  6965642C20        imul sp,[di+0x64],0x202c
00001E08  EBFB              jmp 0x1e05
00001E0A  225768            and dl,[bx+0x68]
00001E0D  61                popa
00001E0E  7420              jz 0x1e30
00001E10  657669            gs jna 0x1e7c
00001E13  6C                insb
00001E14  20706F            and [bx+si+0x6f],dh
00001E17  7765              ja 0x1e7e
00001E19  7220              jc 0x1e3b
00001E1B  636F75            arpl [bx+0x75],bp
00001E1E  6C                insb
00001E1F  64206361          and [fs:bp+di+0x61],ah
00001E23  7573              jnz 0x1e98
00001E25  65207375          and [gs:bp+di+0x75],dh
00001E29  636820            arpl [bx+si+0x20],bp
00001E2C  61                popa
00001E2D  207465            and [si+0x65],dh
00001E30  7272              jc 0x1ea4
00001E32  69626C6520        imul sp,[bp+si+0x6c],0x2065
00001E37  7468              jz 0x1ea1
00001E39  696E672074        imul bp,[bp+0x67],0x7420
00001E3E  6F                outsw
00001E3F  206861            and [bx+si+0x61],ch
00001E42  7070              jo 0x1eb4
00001E44  656E              gs outsb
00001E46  3F                aas
00001E47  22F0              and dh,al
00001E49  F6F5              div ch
00001E4B  F5                cmc
00001E4C  F5                cmc
00001E4D  FE                db 0xfe
00001E4E  F3FA              rep cli
00001E50  50                push ax
00001E51  7269              jc 0x1ebc
00001E53  6E                outsb
00001E54  636573            arpl [di+0x73],sp
00001E57  7320              jnc 0x1e79
00001E59  46                inc si
00001E5A  656C              gs insb
00001E5C  6963696120        imul sp,[bp+di+0x69],0x2061
00001E61  7368              jnc 0x1ecb
00001E63  6976657265        imul si,[bp+0x65],0x6572
00001E68  64206173          and [fs:bx+di+0x73],ah
00001E6C  207368            and [bp+di+0x68],dh
00001E6F  65206665          and [gs:bp+0x65],ah
00001E73  6C                insb
00001E74  7420              jz 0x1e96
00001E76  61                popa
00001E77  206461            and [si+0x61],ah
00001E7A  726B              jc 0x1ee7
00001E7C  207072            and [bx+si+0x72],dh
00001E7F  657365            gs jnc 0x1ee7
00001E82  6E                outsb
00001E83  636520            arpl [di+0x20],sp
00001E86  6E                outsb
00001E87  6561              gs popa
00001E89  7220              jc 0x1eab
00001E8B  686572            push word 0x7265
00001E8E  2C20              sub al,0x20
00001E90  FD                std
00001E91  61                popa
00001E92  6E                outsb
00001E93  64207375          and [fs:bp+di+0x75],dh
00001E97  6464656E          gs outsb
00001E9B  6C                insb
00001E9C  792C              jns 0x1eca
00001E9E  206120            and [bx+di+0x20],ah
00001EA1  7465              jz 0x1f08
00001EA3  7272              jc 0x1f17
00001EA5  696679696E        imul sp,[bp+0x79],0x6e69
00001EAA  6720766F          and [esi+0x6f],dh
00001EAE  6963652062        imul sp,[bp+di+0x65],0x6220
00001EB3  656C              gs insb
00001EB5  6C                insb
00001EB6  6F                outsw
00001EB7  7765              ja 0x1f1e
00001EB9  64206173          and [fs:bx+di+0x73],ah
00001EBD  206C6F            and [si+0x6f],ch
00001EC0  7564              jnz 0x1f26
00001EC2  206173            and [bx+di+0x73],ah
00001EC5  207468            and [si+0x68],dh
00001EC8  756E              jnz 0x1f38
00001ECA  6465722E          gs jc 0x1efc
00001ECE  2E2EF5            cs cmc
00001ED1  F5                cmc
00001ED2  F5                cmc
00001ED3  F5                cmc
00001ED4  FE                db 0xfe
00001ED5  F7F9              idiv cx
00001ED7  ED                in ax,dx
00001ED8  224920            and cl,[bx+di+0x20]
00001EDB  61                popa
00001EDC  6D                insw
00001EDD  204A61            and [bp+si+0x61],cl
00001EE0  7368              jnc 0x1f4a
00001EE2  69696E2C20        imul bp,[bx+di+0x6e],0x202c
00001EE7  7468              jz 0x1f51
00001EE9  6520456D          and [gs:di+0x6d],al
00001EED  7065              jo 0x1f54
00001EEF  726F              jc 0x1f60
00001EF1  7220              jc 0x1f13
00001EF3  6F                outsw
00001EF4  66204368          o32 and [bp+di+0x68],al
00001EF8  61                popa
00001EF9  6F                outsw
00001EFA  732E              jnc 0x1f2a
00001EFC  2020              and [bx+si],ah
00001EFE  54                push sp
00001EFF  686520            push word 0x2065
00001F02  64657363          gs jnc 0x1f69
00001F06  656E              gs outsb
00001F08  6461              fs popa
00001F0A  6E                outsb
00001F0B  7473              jz 0x1f80
00001F0D  206F66            and [bx+0x66],ch
00001F10  207468            and [si+0x68],dh
00001F13  6F                outsw
00001F14  7365              jnc 0x1f7b
00001F16  207768            and [bx+0x68],dh
00001F19  6F                outsw
00001F1A  20696D            and [bx+di+0x6d],ch
00001F1D  7072              jo 0x1f91
00001F1F  69736F6E65        imul si,[bp+di+0x6f],0x656e
00001F24  64206D65          and [fs:di+0x65],ch
00001F28  20756E            and [di+0x6e],dh
00001F2B  64657220          gs jc 0x1f4f
00001F2F  7468              jz 0x1f99
00001F31  65206561          and [gs:di+0x61],ah
00001F35  7274              jc 0x1fab
00001F37  682073            push word 0x7320
00001F3A  68616C            push word 0x6c61
00001F3D  6C                insb
00001F3E  206B6E            and [bp+di+0x6e],ch
00001F41  6F                outsw
00001F42  7720              ja 0x1f64
00001F44  7468              jz 0x1fae
00001F46  61                popa
00001F47  7420              jz 0x1f69
00001F49  6D                insw
00001F4A  7920              jns 0x1f6c
00001F4C  7772              ja 0x1fc0
00001F4E  61                popa
00001F4F  7468              jz 0x1fb9
00001F51  206861            and [bx+si+0x61],ch
00001F54  7320              jnc 0x1f76
00001F56  736D              jnc 0x1fc5
00001F58  6F                outsw
00001F59  6C                insb
00001F5A  64657265          gs jc 0x1fc3
00001F5E  6420666F          and [fs:bp+0x6f],ah
00001F62  7220              jc 0x1f84
00001F64  7477              jz 0x1fdd
00001F66  6F                outsw
00001F67  207468            and [si+0x68],dh
00001F6A  6F                outsw
00001F6B  7573              jnz 0x1fe0
00001F6D  61                popa
00001F6E  6E                outsb
00001F6F  64207965          and [fs:bx+di+0x65],bh
00001F73  61                popa
00001F74  7273              jc 0x1fe9
00001F76  2122              and [bp+si],sp
00001F78  F0                lock
00001F79  F5                cmc
00001F7A  F5                cmc
00001F7B  FD                std
00001F7C  FD                std
00001F7D  FE                db 0xfe
00001F7E  F7ED              imul bp
00001F80  224265            and al,[bp+si+0x65]
00001F83  61                popa
00001F84  7574              jnz 0x1ffa
00001F86  6966756C20        imul sp,[bp+0x75],0x206c
00001F8B  50                push ax
00001F8C  7269              jc 0x1ff7
00001F8E  6E                outsb
00001F8F  636573            arpl [di+0x73],sp
00001F92  7320              jnc 0x1fb4
00001F94  46                inc si
00001F95  656C              gs insb
00001F97  696369612C        imul sp,[bp+di+0x69],0x2c61
00001F9C  20796F            and [bx+di+0x6f],bh
00001F9F  7520              jnz 0x1fc1
00001FA1  7769              ja 0x200c
00001FA3  6C                insb
00001FA4  6C                insb
00001FA5  206D61            and [di+0x61],ch
00001FA8  6B652061          imul sp,[di+0x20],0x61
00001FAC  206C6F            and [si+0x6f],ch
00001FAF  7665              jna 0x2016
00001FB1  6C                insb
00001FB2  7920              jns 0x1fd4
00001FB4  61                popa
00001FB5  6E                outsb
00001FB6  64207465          and [fs:si+0x65],dh
00001FBA  7272              jc 0x202e
00001FBC  696679696E        imul sp,[bp+0x79],0x6e69
00001FC1  67207379          and [ebx+0x79],dh
00001FC5  6D                insw
00001FC6  626F6C            bound bp,[bx+0x6c]
00001FC9  206F66            and [bx+0x66],ch
00001FCC  206D79            and [di+0x79],ch
00001FCF  206177            and [bx+di+0x77],ah
00001FD2  61                popa
00001FD3  6B656E69          imul sp,[di+0x6e],0x69
00001FD7  6E                outsb
00001FD8  672E2020          and [cs:eax],ah
00001FDC  59                pop cx
00001FDD  6F                outsw
00001FDE  7572              jnz 0x2052
00001FE0  206661            and [bp+0x61],ah
00001FE3  7468              jz 0x204d
00001FE5  657220            gs jc 0x2008
00001FE8  7769              ja 0x2053
00001FEA  6C                insb
00001FEB  6C                insb
00001FEC  206E6F            and [bp+0x6f],ch
00001FEF  7420              jz 0x2011
00001FF1  6D                insw
00001FF2  61                popa
00001FF3  6B652074          imul sp,[di+0x20],0x74
00001FF7  686520            push word 0x2065
00001FFA  6D                insw
00001FFB  697374616B        imul si,[bp+di+0x74],0x6b61
00002000  657320            gs jnc 0x2023
00002003  6F                outsw
00002004  66206869          o32 and [bx+si+0x69],ch
00002008  7320              jnc 0x202a
0000200A  61                popa
0000200B  6E                outsb
0000200C  636573            arpl [di+0x73],sp
0000200F  746F              jz 0x2080
00002011  7273              jc 0x2086
00002013  2122              and [bp+si],sp
00002015  F0                lock
00002016  F5                cmc
00002017  F5                cmc
00002018  FE                db 0xfe
00002019  FD                std
0000201A  F3FA              rep cli
0000201C  41                inc cx
0000201D  7320              jnc 0x203f
0000201F  7468              jz 0x2089
00002021  6520776F          and [gs:bx+0x6f],dh
00002025  7264              jc 0x208b
00002027  7320              jnc 0x2049
00002029  6F                outsw
0000202A  66207468          o32 and [si+0x68],dh
0000202E  65206465          and [gs:si+0x65],ah
00002032  6D                insw
00002033  6F                outsw
00002034  6E                outsb
00002035  207265            and [bp+si+0x65],dh
00002038  736F              jnc 0x20a9
0000203A  756E              jnz 0x20aa
0000203C  646564206F76      and [fs:bx+0x76],ch
00002042  657220            gs jc 0x2065
00002045  7468              jz 0x20af
00002047  65206C61          and [gs:si+0x61],ch
0000204B  6E                outsb
0000204C  642C20            fs sub al,0x20
0000204F  50                push ax
00002050  7269              jc 0x20bb
00002052  6E                outsb
00002053  636573            arpl [di+0x73],sp
00002056  7320              jnc 0x2078
00002058  46                inc si
00002059  656C              gs insb
0000205B  6963696120        imul sp,[bp+di+0x69],0x2061
00002060  7761              ja 0x20c3
00002062  7320              jnc 0x2084
00002064  7475              jz 0x20db
00002066  726E              jc 0x20d6
00002068  656420746F        and [fs:si+0x6f],dh
0000206D  207374            and [bp+di+0x74],dh
00002070  6F                outsw
00002071  6E                outsb
00002072  652EFD            cs std
00002075  F5                cmc
00002076  F5                cmc
00002077  FE                db 0xfe
00002078  FD                std
00002079  F354              rep push sp
0000207B  686520            push word 0x2065
0000207E  7261              jc 0x20e1
00002080  696E206F66        imul bp,[bp+0x20],0x666f
00002085  207361            and [bp+di+0x61],dh
00002088  6E                outsb
00002089  6420636F          and [fs:bp+di+0x6f],ah
0000208D  6E                outsb
0000208E  7469              jz 0x20f9
00002090  6E                outsb
00002091  7565              jnz 0x20f8
00002093  6420666F          and [fs:bp+0x6f],ah
00002097  7220              jc 0x20b9
00002099  3130              xor [bx+si],si
0000209B  3820              cmp [bx+si],ah
0000209D  6461              fs popa
0000209F  7973              jns 0x2114
000020A1  20616E            and [bx+di+0x6e],ah
000020A4  64207472          and [fs:si+0x72],dh
000020A8  61                popa
000020A9  6E                outsb
000020AA  7366              jnc 0x2112
000020AC  6F                outsw
000020AD  726D              jc 0x211c
000020AF  6564207468        and [fs:si+0x68],dh
000020B4  65206F6E          and [gs:bx+0x6e],ch
000020B8  63652D            arpl [di+0x2d],sp
000020BB  66657274          gs jc 0x2133
000020BF  696C65206C        imul bp,[si+0x65],0x6c20
000020C4  61                popa
000020C5  6E                outsb
000020C6  6420696E          and [fs:bx+di+0x6e],ch
000020CA  746F              jz 0x213b
000020CC  206465            and [si+0x65],ah
000020CF  7365              jnc 0x2136
000020D1  7274              jc 0x2147
000020D3  2EF5              cs cmc
000020D5  F5                cmc
000020D6  FE                db 0xfe
000020D7  F354              rep push sp
000020D9  686520            push word 0x2065
000020DC  7065              jo 0x2143
000020DE  6F                outsw
000020DF  706C              jo 0x214d
000020E1  65206F66          and [gs:bx+0x66],ch
000020E5  207468            and [si+0x68],dh
000020E8  65206B69          and [gs:bp+di+0x69],ch
000020EC  6E                outsb
000020ED  67646F            fs a32 outsw
000020F0  6D                insw
000020F1  207765            and [bx+0x65],dh
000020F4  7074              jo 0x216a
000020F6  206174            and [bx+di+0x74],ah
000020F9  207468            and [si+0x68],dh
000020FC  65207465          and [gs:si+0x65],dh
00002100  7272              jc 0x2174
00002102  69626C6520        imul sp,[bp+si+0x6c],0x2065
00002107  6661              popad
00002109  7465              jz 0x2170
0000210B  206F66            and [bx+0x66],ch
0000210E  207468            and [si+0x68],dh
00002111  65697220636F      imul si,[gs:bp+si+0x20],0x6f63
00002117  756E              jnz 0x2187
00002119  7472              jz 0x218d
0000211B  792C              jns 0x2149
0000211D  20616E            and [bx+di+0x6e],ah
00002120  64206F66          and [fs:bx+0x66],ch
00002124  207468            and [si+0x68],dh
00002127  656972207072      imul si,[gs:bp+si+0x20],0x7270
0000212D  696E636573        imul bp,[bp+0x63],0x7365
00002132  732E              jnc 0x2162
00002134  F5                cmc
00002135  F5                cmc
00002136  F5                cmc
00002137  F5                cmc
00002138  FE                db 0xfe
00002139  FD                std
0000213A  FE                db 0xfe
0000213B  F7FA              idiv dx
0000213D  54                push sp
0000213E  686520            push word 0x2065
00002141  4B                dec bx
00002142  696E672077        imul bp,[bp+0x67],0x7720
00002147  657074            gs jo 0x21be
0000214A  206D6F            and [di+0x6f],ch
0000214D  7374              jnc 0x21c3
0000214F  206F66            and [bx+0x66],ch
00002152  20616C            and [bx+di+0x6c],ah
00002155  6C                insb
00002156  2E20F3            cs and bl,dh
00002159  EE                out dx,al
0000215A  FB                sti
0000215B  224F68            and cl,[bx+0x68]
0000215E  2C20              sub al,0x20
00002160  6D                insw
00002161  7920              jns 0x2183
00002163  62656C            bound sp,[di+0x6c]
00002166  6F                outsw
00002167  7665              jna 0x21ce
00002169  64204665          and [fs:bp+0x65],al
0000216D  6C                insb
0000216E  6963696121        imul sp,[bp+di+0x69],0x2161
00002173  2020              and [bx+si],ah
00002175  49                dec cx
00002176  206665            and [bp+0x65],ah
00002179  61                popa
0000217A  7220              jc 0x219c
0000217C  7468              jz 0x21e6
0000217E  65204167          and [gs:bx+di+0x67],al
00002182  65206F66          and [gs:bx+0x66],ch
00002186  204461            and [si+0x61],al
00002189  726B              jc 0x21f6
0000218B  6E                outsb
0000218C  657373            gs jnc 0x2202
0000218F  206973            and [bx+di+0x73],ch
00002192  207570            and [di+0x70],dh
00002195  6F                outsw
00002196  6E                outsb
00002197  207573            and [di+0x73],dh
0000219A  2E2020            and [cs:bx+si],ah
0000219D  49                dec cx
0000219E  20616D            and [bx+di+0x6d],ah
000021A1  20706F            and [bx+si+0x6f],dh
000021A4  7765              ja 0x220b
000021A6  726C              jc 0x2214
000021A8  657373            gs jnc 0x221e
000021AB  20746F            and [si+0x6f],dh
000021AE  207374            and [bp+di+0x74],dh
000021B1  6F                outsw
000021B2  7020              jo 0x21d4
000021B4  6974202E2E        imul si,[si+0x20],0x2e2e
000021B9  2E20616E          and [cs:bx+di+0x6e],ah
000021BD  6420706F          and [fs:bx+si+0x6f],dh
000021C1  7765              ja 0x2228
000021C3  726C              jc 0x2231
000021C5  657373            gs jnc 0x223b
000021C8  20746F            and [si+0x6f],dh
000021CB  206865            and [bx+si+0x65],ch
000021CE  6C                insb
000021CF  7020              jo 0x21f1
000021D1  796F              jns 0x2242
000021D3  752E              jnz 0x2203
000021D5  22F0              and dh,al
000021D7  F5                cmc
000021D8  F5                cmc
000021D9  F5                cmc
000021DA  FE                db 0xfe
000021DB  FD                std
000021DC  F3FA              rep cli
000021DE  42                inc dx
000021DF  7574              jnz 0x2255
000021E1  207468            and [si+0x68],dh
000021E4  65207465          and [gs:si+0x65],dh
000021E8  61                popa
000021E9  7273              jc 0x225e
000021EB  206F66            and [bx+0x66],ch
000021EE  207468            and [si+0x68],dh
000021F1  65204B69          and [gs:bp+di+0x69],cl
000021F5  6E                outsb
000021F6  6720616E          and [ecx+0x6e],ah
000021FA  64206869          and [fs:bx+si+0x69],ch
000021FE  7320              jnc 0x2220
00002200  7065              jo 0x2267
00002202  6F                outsw
00002203  706C              jo 0x2271
00002205  6520736F          and [gs:bp+di+0x6f],dh
00002209  6F                outsw
0000220A  6E                outsb
0000220B  206177            and [bx+di+0x77],ah
0000220E  61                popa
0000220F  6B656E65          imul sp,[di+0x6e],0x65
00002213  6420616E          and [fs:bx+di+0x6e],ah
00002217  6F                outsw
00002218  7468              jz 0x2282
0000221A  657220            gs jc 0x223d
0000221D  706F              jo 0x228e
0000221F  7765              ja 0x2286
00002221  722E              jc 0x2251
00002223  F5                cmc
00002224  F5                cmc
00002225  FE                db 0xfe
00002226  FD                std
00002227  F341              rep inc cx
00002229  7320              jnc 0x224b
0000222B  7468              jz 0x2295
0000222D  65204B69          and [gs:bp+di+0x69],cl
00002231  6E                outsb
00002232  67206772          and [edi+0x72],ah
00002236  6965766564        imul sp,[di+0x76],0x6465
0000223B  2C20              sub al,0x20
0000223D  61                popa
0000223E  6E                outsb
0000223F  206170            and [bx+di+0x70],ah
00002242  7061              jo 0x22a5
00002244  7269              jc 0x22af
00002246  7469              jz 0x22b1
00002248  6F                outsw
00002249  6E                outsb
0000224A  206170            and [bx+di+0x70],ah
0000224D  7065              jo 0x22b4
0000224F  61                popa
00002250  7265              jc 0x22b7
00002252  64206265          and [fs:bp+si+0x65],ah
00002256  666F              outsd
00002258  7265              jc 0x22bf
0000225A  206869            and [bx+si+0x69],ch
0000225D  6D                insw
0000225E  2EF5              cs cmc
00002260  F5                cmc
00002261  FE                db 0xfe
00002262  EC                in al,dx
00002263  F7FB              idiv bx
00002265  224920            and cl,[bx+di+0x20]
00002268  61                popa
00002269  6D                insw
0000226A  207468            and [si+0x68],dh
0000226D  65204775          and [gs:bx+0x75],al
00002271  61                popa
00002272  7264              jc 0x22d8
00002274  69616E2053        imul sp,[bx+di+0x6e],0x5320
00002279  7069              jo 0x22e4
0000227B  7269              jc 0x22e6
0000227D  7420              jz 0x229f
0000227F  6F                outsw
00002280  66207468          o32 and [si+0x68],dh
00002284  6520486F          and [gs:bx+si+0x6f],cl
00002288  6C                insb
00002289  7920              jns 0x22ab
0000228B  4C                dec sp
0000228C  61                popa
0000228D  6E                outsb
0000228E  64206F66          and [fs:bx+0x66],ch
00002292  205A65            and [bp+si+0x65],bl
00002295  6C                insb
00002296  696172642E        imul sp,[bx+di+0x72],0x2e64
0000229B  2020              and [bx+si],ah
0000229D  54                push sp
0000229E  686520            push word 0x2065
000022A1  64656D            gs insw
000022A4  6F                outsw
000022A5  6E                outsb
000022A6  204A61            and [bp+si+0x61],cl
000022A9  7368              jnc 0x2313
000022AB  69696E2068        imul bp,[bx+di+0x6e],0x6820
000022B0  61                popa
000022B1  7320              jnc 0x22d3
000022B3  626565            bound sp,[di+0x65]
000022B6  6E                outsb
000022B7  207265            and [bp+si+0x65],dh
000022BA  7375              jnc 0x2331
000022BC  7272              jc 0x2330
000022BE  65637465          arpl [gs:si+0x65],si
000022C2  642C20            fs sub al,0x20
000022C5  61                popa
000022C6  6E                outsb
000022C7  6420696E          and [fs:bx+di+0x6e],ch
000022CB  64656564206869    and [fs:bx+si+0x69],ch
000022D2  7320              jnc 0x22f4
000022D4  657669            gs jna 0x2340
000022D7  6C                insb
000022D8  206D61            and [di+0x61],ch
000022DB  676963207769      imul sp,[ebx+0x20],0x6977
000022E1  6C                insb
000022E2  6C                insb
000022E3  20706C            and [bx+si+0x6c],dh
000022E6  756E              jnz 0x2356
000022E8  676520746869      and [gs:eax+ebp*2+0x69],dh
000022EE  7320              jnc 0x2310
000022F0  776F              ja 0x2361
000022F2  726C              jc 0x2360
000022F4  6420696E          and [fs:bx+di+0x6e],ch
000022F8  746F              jz 0x2369
000022FA  207468            and [si+0x68],dh
000022FD  65204167          and [gs:bx+di+0x67],al
00002301  65206F66          and [gs:bx+0x66],ch
00002305  204461            and [si+0x61],al
00002308  726B              jc 0x2375
0000230A  6E                outsb
0000230B  657373            gs jnc 0x2381
0000230E  206F6E            and [bx+0x6e],ch
00002311  636520            arpl [di+0x20],sp
00002314  61                popa
00002315  6761              a32 popa
00002317  696E2E22F5        imul bp,[bp+0x2e],0xf522
0000231C  F5                cmc
0000231D  F5                cmc
0000231E  FE                db 0xfe
0000231F  F722              mul word [bp+si]
00002321  48                dec ax
00002322  656564206D79      and [fs:di+0x79],ch
00002328  20776F            and [bx+0x6f],dh
0000232B  7264              jc 0x2391
0000232D  732C              jnc 0x235b
0000232F  204B69            and [bp+di+0x69],cl
00002332  6E                outsb
00002333  67204665          and [esi+0x65],al
00002337  6C                insb
00002338  697368696B        imul si,[bp+di+0x68],0x6b69
0000233D  61                popa
0000233E  3A20              cmp ah,[bx+si]
00002340  54                push sp
00002341  686572            push word 0x7265
00002344  65206973          and [gs:bx+di+0x73],ch
00002348  206275            and [bp+si+0x75],ah
0000234B  7420              jz 0x236d
0000234D  6F                outsw
0000234E  6E                outsb
0000234F  65207761          and [gs:bx+0x61],dh
00002353  7920              jns 0x2375
00002355  746F              jz 0x23c6
00002357  207374            and [bp+di+0x74],dh
0000235A  6F                outsw
0000235B  7020              jo 0x237d
0000235D  7468              jz 0x23c7
0000235F  6973206465        imul si,[bp+di+0x20],0x6564
00002364  6D                insw
00002365  6F                outsw
00002366  6E                outsb
00002367  2E2020            and [cs:bx+si],ah
0000236A  41                inc cx
0000236B  206272            and [bp+si+0x72],ah
0000236E  61                popa
0000236F  7665              jna 0x23d6
00002371  207761            and [bx+0x61],dh
00002374  7272              jc 0x23e8
00002376  696F72206D        imul bp,[bx+0x72],0x6d20
0000237B  7573              jnz 0x23f0
0000237D  7420              jz 0x239f
0000237F  7665              jna 0x23e6
00002381  6E                outsb
00002382  7475              jz 0x23f9
00002384  7265              jc 0x23eb
00002386  20696E            and [bx+di+0x6e],ch
00002389  746F              jz 0x23fa
0000238B  207468            and [si+0x68],dh
0000238E  65206C61          and [gs:si+0x61],ch
00002392  627972            bound di,[bx+di+0x72]
00002395  696E746873        imul bp,[bp+0x74],0x7368
0000239A  20616E            and [bx+di+0x6e],ah
0000239D  64207265          and [fs:bp+si+0x65],dh
000023A1  636F76            arpl [bx+0x76],bp
000023A4  657220            gs jc 0x23c7
000023A7  7468              jz 0x2411
000023A9  65206E69          and [gs:bp+0x69],ch
000023AD  6E                outsb
000023AE  6520486F          and [gs:bx+si+0x6f],cl
000023B2  6C                insb
000023B3  7920              jns 0x23d5
000023B5  43                inc bx
000023B6  7279              jc 0x2431
000023B8  7374              jnc 0x242e
000023BA  61                popa
000023BB  6C                insb
000023BC  732C              jnc 0x23ea
000023BE  207468            and [si+0x68],dh
000023C1  65205465          and [gs:si+0x65],dl
000023C5  61                popa
000023C6  7273              jc 0x243b
000023C8  206F66            and [bx+0x66],ch
000023CB  204573            and [di+0x73],al
000023CE  6D                insw
000023CF  657361            gs jnc 0x2433
000023D2  6E                outsb
000023D3  7469              jz 0x243e
000023D5  2E22F5            cs and dh,ch
000023D8  F5                cmc
000023D9  F5                cmc
000023DA  F5                cmc
000023DB  FE                db 0xfe
000023DC  F722              mul word [bp+si]
000023DE  4D                dec bp
000023DF  61                popa
000023E0  6E                outsb
000023E1  7920              jns 0x2403
000023E3  7465              jz 0x244a
000023E5  7272              jc 0x2459
000023E7  69626C6520        imul sp,[bp+si+0x6c],0x2065
000023EC  637265            arpl [bp+si+0x65],si
000023EF  61                popa
000023F0  7475              jz 0x2467
000023F2  7265              jc 0x2459
000023F4  7320              jnc 0x2416
000023F6  647765            fs ja 0x245e
000023F9  6C                insb
000023FA  6C                insb
000023FB  207769            and [bx+0x69],dh
000023FE  7468              jz 0x2468
00002400  696E207468        imul bp,[bp+0x20],0x6874
00002405  65206C61          and [gs:si+0x61],ch
00002409  627972            bound di,[bx+di+0x72]
0000240C  696E746873        imul bp,[bp+0x74],0x7368
00002411  2C20              sub al,0x20
00002413  61                popa
00002414  6C                insb
00002415  6C                insb
00002416  206F66            and [bx+0x66],ch
00002419  207468            and [si+0x68],dh
0000241C  656D              gs insw
0000241E  204A61            and [bp+si+0x61],cl
00002421  7368              jnc 0x248b
00002423  69696E2773        imul bp,[bx+di+0x6e],0x7327
00002428  206D69            and [di+0x69],ch
0000242B  6E                outsb
0000242C  696F6E732E        imul bp,[bx+0x6e],0x2e73
00002431  2020              and [bx+si],ah
00002433  4E                dec si
00002434  6F                outsw
00002435  206D6F            and [di+0x6f],ch
00002438  7274              jc 0x24ae
0000243A  61                popa
0000243B  6C                insb
0000243C  206D61            and [di+0x61],ch
0000243F  6E                outsb
00002440  20636F            and [bp+di+0x6f],ah
00002443  756C              jnz 0x24b1
00002445  64206465          and [fs:si+0x65],ah
00002449  666561            gs popad
0000244C  7420              jz 0x246e
0000244E  7468              jz 0x24b8
00002450  657365            gs jnc 0x24b8
00002453  206465            and [si+0x65],ah
00002456  61                popa
00002457  646C              fs insb
00002459  7920              jns 0x247b
0000245B  626561            bound sp,[di+0x61]
0000245E  7374              jnc 0x24d4
00002460  7320              jnc 0x2482
00002462  61                popa
00002463  6E                outsb
00002464  64207772          and [fs:bx+0x72],dh
00002468  657374            gs jnc 0x24df
0000246B  207468            and [si+0x68],dh
0000246E  65206372          and [gs:bp+di+0x72],ah
00002472  7973              jns 0x24e7
00002474  7461              jz 0x24d7
00002476  6C                insb
00002477  7320              jnc 0x2499
00002479  66726F            jc 0x24eb
0000247C  6D                insw
0000247D  207468            and [si+0x68],dh
00002480  656D              gs insw
00002482  2E22F5            cs and dh,ch
00002485  F5                cmc
00002486  FE                db 0xfe
00002487  F722              mul word [bp+si]
00002489  48                dec ax
0000248A  6F                outsw
0000248B  7765              ja 0x24f2
0000248D  7665              jna 0x24f4
0000248F  722C              jc 0x24bd
00002491  207468            and [si+0x68],dh
00002494  657265            gs jc 0x24fc
00002497  206973            and [bx+di+0x73],ch
0000249A  206F6E            and [bx+0x6e],ch
0000249D  65207769          and [gs:bx+0x69],dh
000024A1  7468              jz 0x250b
000024A3  207468            and [si+0x68],dh
000024A6  6520706F          and [gs:bx+si+0x6f],dh
000024AA  7765              ja 0x2511
000024AC  7220              jc 0x24ce
000024AE  746F              jz 0x251f
000024B0  206F70            and [bx+0x70],ch
000024B3  706F              jo 0x2524
000024B5  7365              jnc 0x251c
000024B7  204A61            and [bp+si+0x61],cl
000024BA  7368              jnc 0x2524
000024BC  69696E2EF2        imul bp,[bx+di+0x6e],0xf22e
000024C1  54                push sp
000024C2  686520            push word 0x2065
000024C5  6D                insw
000024C6  61                popa
000024C7  6E                outsb
000024C8  207768            and [bx+0x68],dh
000024CB  6F                outsw
000024CC  206973            and [bx+di+0x73],ch
000024CF  206465            and [si+0x65],ah
000024D2  7374              jnc 0x2548
000024D4  696E656420        imul bp,[bp+0x65],0x2064
000024D9  746F              jz 0x254a
000024DB  206669            and [bp+0x69],ah
000024DE  67687420          a32 push word 0x2074
000024E2  68696D            push word 0x6d69
000024E5  207769            and [bx+0x69],dh
000024E8  6C                insb
000024E9  6C                insb
000024EA  20736F            and [bp+di+0x6f],dh
000024ED  6F                outsw
000024EE  6E                outsb
000024EF  206172            and [bx+di+0x72],ah
000024F2  7269              jc 0x255d
000024F4  7665              jna 0x255b
000024F6  20696E            and [bx+di+0x6e],ch
000024F9  20796F            and [bx+di+0x6f],bh
000024FC  7572              jnz 0x2570
000024FE  206B69            and [bp+di+0x69],ch
00002501  6E                outsb
00002502  67646F            fs a32 outsw
00002505  6D                insw
00002506  2E22F5            cs and dh,ch
00002509  F5                cmc
0000250A  F5                cmc
0000250B  FE                db 0xfe
0000250C  F3225468          rep and dl,[si+0x68]
00002510  6973206D61        imul si,[bp+di+0x20],0x616d
00002515  6E                outsb
00002516  206973            and [bx+di+0x73],ch
00002519  207468            and [si+0x68],dh
0000251C  65206F6E          and [gs:bx+0x6e],ch
00002520  6C                insb
00002521  7920              jns 0x2543
00002523  626569            bound sp,[di+0x69]
00002526  6E                outsb
00002527  67207374          and [ebx+0x74],dh
0000252B  726F              jc 0x259c
0000252D  6E                outsb
0000252E  6720656E          and [ebp+0x6e],ah
00002532  6F                outsw
00002533  7567              jnz 0x259c
00002535  682074            push word 0x7420
00002538  6F                outsw
00002539  206261            and [bp+si+0x61],ah
0000253C  6E                outsb
0000253D  697368204A        imul si,[bp+di+0x68],0x4a20
00002542  61                popa
00002543  7368              jnc 0x25ad
00002545  69696E2066        imul bp,[bx+di+0x6e],0x6620
0000254A  6F                outsw
0000254B  7265              jc 0x25b2
0000254D  7665              jna 0x25b4
0000254F  722E              jc 0x257f
00002551  22F5              and dh,ch
00002553  F5                cmc
00002554  F5                cmc
00002555  F5                cmc
00002556  FE                db 0xfe
00002557  F722              mul word [bp+si]
00002559  59                pop cx
0000255A  6F                outsw
0000255B  7520              jnz 0x257d
0000255D  6D                insw
0000255E  7573              jnz 0x25d3
00002560  7420              jz 0x2582
00002562  61                popa
00002563  7761              ja 0x25c6
00002565  6974207468        imul si,[si+0x20],0x6874
0000256A  65206172          and [gs:bx+di+0x72],ah
0000256E  7269              jc 0x25d9
00002570  7661              jna 0x25d3
00002572  6C                insb
00002573  206F66            and [bx+0x66],ch
00002576  207468            and [si+0x68],dh
00002579  6973206272        imul si,[bp+di+0x20],0x7262
0000257E  61                popa
0000257F  7665              jna 0x25e6
00002581  20616E            and [bx+di+0x6e],ah
00002584  64206E6F          and [fs:bp+0x6f],ch
00002588  626C65            bound bp,[si+0x65]
0000258B  206B6E            and [bp+di+0x6e],ch
0000258E  696768742C        imul sp,[bx+0x68],0x2c74
00002593  20616E            and [bx+di+0x6e],ah
00002596  64207465          and [fs:si+0x65],dh
0000259A  6C                insb
0000259B  6C                insb
0000259C  206869            and [bx+si+0x69],ch
0000259F  6D                insw
000025A0  206576            and [di+0x76],ah
000025A3  657279            gs jc 0x261f
000025A6  7468              jz 0x2610
000025A8  696E672E20        imul bp,[bp+0x67],0x202e
000025AD  204F6E            and [bx+0x6e],cl
000025B0  6C                insb
000025B1  7920              jns 0x25d3
000025B3  7769              ja 0x261e
000025B5  7468              jz 0x261f
000025B7  206869            and [bx+si+0x69],ch
000025BA  7320              jnc 0x25dc
000025BC  68656C            push word 0x6c65
000025BF  7020              jo 0x25e1
000025C1  63616E            arpl [bx+di+0x6e],sp
000025C4  20796F            and [bx+di+0x6f],bh
000025C7  7520              jnz 0x25e9
000025C9  686F70            push word 0x706f
000025CC  6520746F          and [gs:si+0x6f],dh
000025D0  207265            and [bp+si+0x65],dh
000025D3  7374              jnc 0x2649
000025D5  6F                outsw
000025D6  7265              jc 0x263d
000025D8  207468            and [si+0x68],dh
000025DB  6973206C61        imul si,[bp+di+0x20],0x616c
000025E0  6E                outsb
000025E1  6420746F          and [fs:si+0x6f],dh
000025E5  206974            and [bx+di+0x74],ch
000025E8  7320              jnc 0x260a
000025EA  666F              outsd
000025EC  726D              jc 0x265b
000025EE  657220            gs jc 0x2611
000025F1  626561            bound sp,[di+0x61]
000025F4  7574              jnz 0x266a
000025F6  792C              jns 0x2624
000025F8  20616E            and [bx+di+0x6e],ah
000025FB  64206672          and [fs:bp+0x72],ah
000025FF  656520796F        and [gs:bx+di+0x6f],bh
00002604  7572              jnz 0x2678
00002606  206461            and [si+0x61],ah
00002609  7567              jnz 0x2672
0000260B  687465            push word 0x6574
0000260E  7220              jc 0x2630
00002610  66726F            jc 0x2682
00002613  6D                insw
00002614  206865            and [bx+si+0x65],ch
00002617  7220              jc 0x2639
00002619  7465              jz 0x2680
0000261B  7272              jc 0x268f
0000261D  69626C6520        imul sp,[bp+si+0x6c],0x2065
00002622  637572            arpl [di+0x72],si
00002625  7365              jnc 0x268c
00002627  2E22F5            cs and dh,ch
0000262A  F5                cmc
0000262B  F5                cmc
0000262C  F5                cmc
0000262D  FE                db 0xfe
0000262E  F0                lock
0000262F  FD                std
00002630  F3FA              rep cli
00002632  48                dec ax
00002633  61                popa
00002634  7669              jna 0x269f
00002636  6E                outsb
00002637  67207370          and [ebx+0x70],dh
0000263B  6F                outsw
0000263C  6B656E20          imul sp,[di+0x6e],0x20
00002640  7468              jz 0x26aa
00002642  657365            gs jnc 0x26aa
00002645  20776F            and [bx+0x6f],dh
00002648  7264              jc 0x26ae
0000264A  732C              jnc 0x2678
0000264C  207468            and [si+0x68],dh
0000264F  65205370          and [gs:bp+di+0x70],dl
00002653  6972697420        imul si,[bp+si+0x69],0x2074
00002658  646973617070      imul si,[fs:bp+di+0x61],0x7070
0000265E  6561              gs popa
00002660  7265              jc 0x26c7
00002662  642EF5            cs cmc
00002665  F5                cmc
00002666  F5                cmc
00002667  FE                db 0xfe
00002668  F7                db 0xf7
00002669  4B                dec bx
0000266A  696E672046        imul bp,[bp+0x67],0x4620
0000266F  656C              gs insb
00002671  697368696B        imul si,[bp+di+0x68],0x6b69
00002676  61                popa
00002677  20636F            and [bp+di+0x6f],ah
0000267A  756C              jnz 0x26e8
0000267C  64206E6F          and [fs:bp+0x6f],ch
00002680  7420              jz 0x26a2
00002682  62656C            bound sp,[di+0x6c]
00002685  6965766520        imul sp,[di+0x76],0x2065
0000268A  7768              ja 0x26f4
0000268C  61                popa
0000268D  7420              jz 0x26af
0000268F  686520            push word 0x2065
00002692  686164            push word 0x6461
00002695  207365            and [bp+di+0x65],dh
00002698  656E              gs outsb
0000269A  2EF2FB            cs repne sti
0000269D  225375            and dl,[bp+di+0x75]
000026A0  7265              jc 0x2707
000026A2  6C                insb
000026A3  7920              jns 0x26c5
000026A5  6D                insw
000026A6  7920              jns 0x26c8
000026A8  6D                insw
000026A9  696E642069        imul bp,[bp+0x64],0x6920
000026AE  7320              jnc 0x26d0
000026B0  706C              jo 0x271e
000026B2  61                popa
000026B3  7969              jns 0x271e
000026B5  6E                outsb
000026B6  6720747269        and [edx+esi*2+0x69],dh
000026BB  636B73            arpl [bp+di+0x73],bp
000026BE  206F6E            and [bx+0x6e],ch
000026C1  206D65            and [di+0x65],ch
000026C4  2120              and [bx+si],sp
000026C6  204927            and [bx+di+0x27],cl
000026C9  6D                insw
000026CA  206166            and [bx+di+0x66],ah
000026CD  7261              jc 0x2730
000026CF  6964204920        imul sp,[si+0x20],0x2049
000026D4  686176            push word 0x7661
000026D7  6520676F          and [gs:bx+0x6f],ah
000026DB  6E                outsb
000026DC  65206D61          and [gs:di+0x61],ch
000026E0  64207769          and [fs:bx+0x69],dh
000026E4  7468              jz 0x274e
000026E6  206772            and [bx+0x72],ah
000026E9  6965662E22        imul sp,[di+0x66],0x222e
000026EE  FA                cli
000026EF  F5                cmc
000026F0  F5                cmc
000026F1  F5                cmc
000026F2  F5                cmc
000026F3  FE                db 0xfe
000026F4  F342              rep inc dx
000026F6  7574              jnz 0x276c
000026F8  207468            and [si+0x68],dh
000026FB  65206E65          and [gs:bp+0x65],ch
000026FF  7874              js 0x2775
00002701  206461            and [si+0x61],ah
00002704  792C              jns 0x2732
00002706  206120            and [bx+di+0x20],ah
00002709  7374              jnc 0x277f
0000270B  7261              jc 0x276e
0000270D  6E                outsb
0000270E  67657220          gs a32 jc 0x2732
00002712  61                popa
00002713  7070              jo 0x2785
00002715  6561              gs popa
00002717  7265              jc 0x277e
00002719  6420696E          and [fs:bx+di+0x6e],ch
0000271D  207468            and [si+0x68],dh
00002720  65206B69          and [gs:bp+di+0x69],ch
00002724  6E                outsb
00002725  67646F            fs a32 outsw
00002728  6D                insw
00002729  2E2E2EF5          cs cmc
0000272D  F5                cmc
0000272E  F5                cmc
0000272F  FE                db 0xfe
00002730  EF                out dx,ax
00002731  FD                std
00002732  F3FB              rep sti
00002734  225768            and dl,[bx+0x68]
00002737  61                popa
00002738  7420              jz 0x275a
0000273A  61                popa
0000273B  206465            and [si+0x65],ah
0000273E  736F              jnc 0x27af
00002740  6C                insb
00002741  61                popa
00002742  7465              jz 0x27a9
00002744  20706C            and [bx+si+0x6c],dh
00002747  61                popa
00002748  636521            arpl [di+0x21],sp
0000274B  2020              and [bx+si],ah
0000274D  57                push di
0000274E  687920            push word 0x2079
00002751  686173            push word 0x7361
00002754  207468            and [si+0x68],dh
00002757  65205370          and [gs:bp+di+0x70],dl
0000275B  6972697420        imul si,[bp+si+0x69],0x2074
00002760  6C                insb
00002761  6564206D65        and [fs:di+0x65],ch
00002766  206865            and [bx+si+0x65],ch
00002769  7265              jc 0x27d0
0000276B  3F                aas
0000276C  22F5              and dh,ch
0000276E  F5                cmc
0000276F  F5                cmc
00002770  F5                cmc
00002771  FE                db 0xfe
00002772  F0                lock
00002773  F3FA              rep cli
00002775  47                inc di
00002776  7569              jnz 0x27e1
00002778  646564206279      and [fs:bp+si+0x79],ah
0000277E  207468            and [si+0x68],dh
00002781  65206C69          and [gs:si+0x69],ch
00002785  67687420          a32 push word 0x2074
00002789  6F                outsw
0000278A  66207468          o32 and [si+0x68],dh
0000278E  65205370          and [gs:bp+di+0x70],dl
00002792  697269742C        imul si,[bp+si+0x69],0x2c74
00002797  206272            and [bp+si+0x72],ah
0000279A  61                popa
0000279B  7665              jna 0x2802
0000279D  204475            and [si+0x75],al
000027A0  6B652047          imul sp,[di+0x20],0x47
000027A4  61                popa
000027A5  726C              jc 0x2813
000027A7  61                popa
000027A8  6E                outsb
000027A9  64206861          and [fs:bx+si+0x61],ch
000027AD  64206A6F          and [fs:bp+si+0x6f],ch
000027B1  7572              jnz 0x2825
000027B3  6E                outsb
000027B4  657965            gs jns 0x281c
000027B7  64206D61          and [fs:di+0x61],ch
000027BB  6E                outsb
000027BC  7920              jns 0x27de
000027BE  6461              fs popa
000027C0  7973              jns 0x2835
000027C2  20746F            and [si+0x6f],dh
000027C5  207468            and [si+0x68],dh
000027C8  65206C61          and [gs:si+0x61],ch
000027CC  6E                outsb
000027CD  64206F66          and [fs:bx+0x66],ch
000027D1  205A65            and [bp+si+0x65],bl
000027D4  6C                insb
000027D5  696172642E        imul sp,[bx+di+0x72],0x2e64
000027DA  F5                cmc
000027DB  F5                cmc
000027DC  F5                cmc
000027DD  FE                db 0xfe
000027DE  FD                std
000027DF  F345              rep inc bp
000027E1  6E                outsb
000027E2  7465              jz 0x2849
000027E4  7269              jc 0x284f
000027E6  6E                outsb
000027E7  6720746865        and [eax+ebp*2+0x65],dh
000027EC  206361            and [bp+di+0x61],ah
000027EF  7374              jnc 0x2865
000027F1  6C                insb
000027F2  652C20            gs sub al,0x20
000027F5  686520            push word 0x2065
000027F8  7761              ja 0x285b
000027FA  7320              jnc 0x281c
000027FC  7175              jno 0x2873
000027FE  69636B6C79        imul sp,[bp+di+0x6b],0x796c
00002803  206573            and [di+0x73],ah
00002806  636F72            arpl [bx+0x72],bp
00002809  7465              jz 0x2870
0000280B  6420746F          and [fs:si+0x6f],dh
0000280F  207468            and [si+0x68],dh
00002812  65207468          and [gs:si+0x68],dh
00002816  726F              jc 0x2887
00002818  6E                outsb
00002819  65206F66          and [gs:bx+0x66],ch
0000281D  207468            and [si+0x68],dh
00002820  65206772          and [gs:bx+0x72],ah
00002824  696576696E        imul sp,[di+0x76],0x6e69
00002829  67204B69          and [ebx+0x69],cl
0000282D  6E                outsb
0000282E  67204665          and [esi+0x65],al
00002832  6C                insb
00002833  697368696B        imul si,[bp+di+0x68],0x6b69
00002838  61                popa
00002839  2EF5              cs cmc
0000283B  F5                cmc
0000283C  F5                cmc
0000283D  FE                db 0xfe
0000283E  EE                out dx,al
0000283F  FD                std
00002840  F5                cmc
00002841  FE                db 0xfe
00002842  FB                sti
00002843  F722              mul word [bp+si]
00002845  8144756B65        add word [si+0x75],0x656b
0000284A  20804761          and [bx+si+0x6147],al
0000284E  726C              jc 0x28bc
00002850  61                popa
00002851  846E83            test [bp-0x7d],ch
00002854  642120            and [fs:bx+si],sp
00002857  20848559          and [si+0x5985],al
0000285B  876F88            xchg bp,[bx-0x78]
0000285E  7587              jnz 0x27e7
00002860  2086806D          and [bp+0x6d80],al
00002864  7581              jnz 0x27e7
00002866  7383              jnc 0x27eb
00002868  7420              jz 0x288a
0000286A  82                db 0x82
0000286B  626520            bound sp,[di+0x20]
0000286E  8174686520        xor word [si+0x68],0x2065
00002873  806D6184          sub byte [di+0x61],0x84
00002877  6E                outsb
00002878  20836F84          and [bp+di-0x7b91],al
0000287C  6620816465        o32 and [bx+di+0x6564],al
00002881  7382              jnc 0x2805
00002883  7469              jz 0x28ee
00002885  6E                outsb
00002886  7920              jns 0x28a8
00002888  836F8466          sub word [bx-0x7c],0x66
0000288C  20837768          and [bp+di+0x6877],al
00002890  6F                outsw
00002891  846D20            test [di+0x20],ch
00002894  8174686520        xor word [si+0x68],0x2065
00002899  83538270          adc word [bp+di-0x7e],0x70
0000289D  6972697420        imul si,[bp+si+0x69],0x2074
000028A2  8373706F          xor word [bp+di+0x70],0x6f
000028A6  816B652E20        sub word [bp+di+0x65],0x202e
000028AB  20849780          and [si-0x7f69],al
000028AF  49                dec cx
000028B0  98                cbw
000028B1  8720              xchg sp,[bx+si]
000028B3  818862876585      or word [bx+si-0x789e],0x8565
000028B9  866720            xchg ah,[bx+0x20]
000028BC  836F8466          sub word [bx-0x7c],0x66
000028C0  2085796F          and [di+0x6f79],al
000028C4  7520              jnz 0x28e6
000028C6  83746F20          xor word [si+0x6f],0x20
000028CA  82                db 0x82
000028CB  6465857374        test [gs:bp+di+0x74],si
000028D0  726F              jc 0x2941
000028D2  7920              jns 0x28f4
000028D4  8174686520        xor word [si+0x68],0x2065
000028D9  83646580          and word [si+0x65],0xffffffffffffff80
000028DD  6D                insw
000028DE  6F                outsw
000028DF  6E                outsb
000028E0  20844A80          and [si-0x7fb6],al
000028E4  61                popa
000028E5  7382              jnc 0x2869
000028E7  686969            push word 0x6969
000028EA  846E20            test [bp+0x20],ch
000028ED  8087778868        add byte [bx-0x7789],0x68
000028F2  876F86            xchg bp,[bx-0x7a]
000028F5  20856861          and [di+0x6168],al
000028F9  7320              jnc 0x291b
000028FB  83637581          and word [bp+di+0x75],0xffffffffffffff81
000028FF  7283              jc 0x2884
00002901  7365              jnc 0x2968
00002903  6420806D79        and [fs:bx+si+0x796d],al
00002908  20856B69          and [di+0x696b],al
0000290C  816E67646F        sub word [bp+0x67],0x6f64
00002911  6D                insw
00002912  20856182          and [di-0x7d9f],al
00002916  6E                outsb
00002917  6420847475        and [fs:si+0x7574],al
0000291C  7281              jc 0x289f
0000291E  6E                outsb
0000291F  65642080876D      and [fs:bx+si+0x6d87],al
00002925  82                db 0x82
00002926  887987            mov [bx+di-0x79],bh
00002929  20818662          and [bx+di+0x6286],al
0000292D  65836C6F81        sub word [gs:si+0x6f],0xffffffffffffff81
00002932  7665              jna 0x2999
00002934  83642085          and word [si+0x20],0xffffffffffffff85
00002938  6461              fs popa
0000293A  7567              jnz 0x29a3
0000293C  688074            push word 0x7480
0000293F  657220            gs jc 0x2962
00002942  85746F            test [si+0x6f],si
00002945  20838773          and [bp+di+0x7387],al
00002949  887487            mov [si-0x79],dh
0000294C  6F                outsw
0000294D  84866E65          test [bp+0x656e],al
00002951  2E22F5            cs and dh,ch
00002954  F5                cmc
00002955  F5                cmc
00002956  F0                lock
00002957  FE                db 0xfe
00002958  F7FA              idiv dx
0000295A  44                inc sp
0000295B  756B              jnz 0x29c8
0000295D  65204761          and [gs:bx+0x61],al
00002961  726C              jc 0x29cf
00002963  61                popa
00002964  6E                outsb
00002965  64206B6E          and [fs:bp+di+0x6e],ch
00002969  656C              gs insb
0000296B  7420              jz 0x298d
0000296D  626566            bound sp,[di+0x66]
00002970  6F                outsw
00002971  7265              jc 0x29d8
00002973  207468            and [si+0x68],dh
00002976  65204B69          and [gs:bp+di+0x69],cl
0000297A  6E                outsb
0000297B  672E20FB          cs a32 and bl,bh
0000297F  F5                cmc
00002980  F5                cmc
00002981  F5                cmc
00002982  F3EF              rep out dx,ax
00002984  97                xchg ax,di
00002985  22939659          and dl,[bp+di+0x5996]
00002989  6F                outsw
0000298A  90                nop
0000298B  7572              jnz 0x29ff
0000298D  204D61            and [di+0x61],cl
00002990  91                xchg ax,cx
00002991  6A65              push word 0x65
00002993  95                xchg ax,bp
00002994  7374              jnc 0x2a0a
00002996  792C              jns 0x29c4
00002998  20904920          and [bx+si+0x2049],dl
0000299C  91                xchg ax,cx
0000299D  686193            push word 0x9361
000029A0  7665              jna 0x2a07
000029A2  2093666F          and [bp+di+0x6f66],dl
000029A6  6C                insb
000029A7  6C                insb
000029A8  6F                outsw
000029A9  7795              ja 0x2940
000029AB  656420917468      and [fs:bx+di+0x6874],dl
000029B1  6520906C69        and [gs:bx+si+0x696c],dl
000029B6  92                xchg ax,dx
000029B7  67689374          a32 push word 0x7493
000029BB  2094936F          and [si+0x6f93],dl
000029BF  6620917468        o32 and [bx+di+0x6874],dl
000029C4  6520935392        and [gs:bp+di-0x6dad],dl
000029C9  7069              jo 0x2a34
000029CB  91                xchg ax,cx
000029CC  7292              jc 0x2960
000029CE  6974209574        imul si,[si+0x20],0x7495
000029D3  6F                outsw
000029D4  20927468          and [bp+si+0x6874],dl
000029D8  92                xchg ax,dx
000029D9  699773982097      imul dx,[bx-0x678d],0x9720
000029DF  95                xchg ax,bp
000029E0  7096              jo 0x2978
000029E2  90                nop
000029E3  6C                insb
000029E4  61                popa
000029E5  93                xchg ax,bx
000029E6  63652E            arpl [di+0x2e],sp
000029E9  2294F5F5          and dl,[si-0xa0b]
000029ED  F5                cmc
000029EE  FE                db 0xfe
000029EF  F722              mul word [bp+si]
000029F1  90                nop
000029F2  49                dec cx
000029F3  20936B95          and [bp+di-0x6a95],dl
000029F7  6E                outsb
000029F8  6F                outsw
000029F9  7794              ja 0x298f
000029FB  20936E6F          and [bp+di+0x6f6e],dl
000029FF  7494              jz 0x2995
00002A01  20936F95          and [bp+di-0x6a91],dl
00002A05  6620927468        o32 and [bp+si+0x6874],dl
00002A0A  699573209164      imul dx,[di+0x2073],0x6491
00002A10  6593              gs xchg ax,bx
00002A12  6D                insw
00002A13  6F                outsw
00002A14  94                xchg ax,sp
00002A15  6E                outsb
00002A16  2C20              sub al,0x20
00002A18  93                xchg ax,bx
00002A19  6E                outsb
00002A1A  6F                outsw
00002A1B  90                nop
00002A1C  7220              jc 0x2a3e
00002A1E  93                xchg ax,bx
00002A1F  7768              ja 0x2a89
00002A21  90                nop
00002A22  61                popa
00002A23  93                xchg ax,bx
00002A24  7420              jz 0x2a46
00002A26  90                nop
00002A27  706F              jo 0x2a98
00002A29  95                xchg ax,bp
00002A2A  7765              ja 0x2a91
00002A2C  7293              jc 0x29c1
00002A2E  7320              jnc 0x2a50
00002A30  92                xchg ax,dx
00002A31  686520            push word 0x2065
00002A34  91                xchg ax,cx
00002A35  97                xchg ax,di
00002A36  6D                insw
00002A37  98                cbw
00002A38  61                popa
00002A39  97                xchg ax,di
00002A3A  92                xchg ax,dx
00002A3B  7996              jns 0x29d3
00002A3D  2093706F          and [bp+di+0x6f70],dl
00002A41  91                xchg ax,cx
00002A42  7373              jnc 0x2ab7
00002A44  6593              gs xchg ax,bx
00002A46  7373              jnc 0x2abb
00002A48  2C20              sub al,0x20
00002A4A  90                nop
00002A4B  627593            bound si,[di-0x6d]
00002A4E  7420              jz 0x2a70
00002A50  92                xchg ax,dx
00002A51  699566209174      imul dx,[di+0x2066],0x7491
00002A57  689065            push word 0x6590
00002A5A  7265              jc 0x2ac1
00002A5C  20926993          and [bp+si-0x6c97],dl
00002A60  7320              jnc 0x2a82
00002A62  93                xchg ax,bx
00002A63  6E                outsb
00002A64  6F                outsw
00002A65  94                xchg ax,sp
00002A66  6E                outsb
00002A67  652091656C        and [gs:bx+di+0x6c65],dl
00002A6C  93                xchg ax,bx
00002A6D  7365              jnc 0x2ad4
00002A6F  20937768          and [bp+di+0x6877],dl
00002A73  6F                outsw
00002A74  20906361          and [bx+si+0x6163],dl
00002A78  94                xchg ax,sp
00002A79  6E                outsb
00002A7A  20916465          and [bx+di+0x6564],dl
00002A7E  92                xchg ax,dx
00002A7F  666593            gs xchg eax,ebx
00002A82  61                popa
00002A83  7420              jz 0x2aa5
00002A85  92                xchg ax,dx
00002A86  686993            push word 0x9369
00002A89  6D                insw
00002A8A  2C20              sub al,0x20
00002A8C  99                cwd
00002A8D  91                xchg ax,cx
00002A8E  7468              jz 0x2af8
00002A90  6594              gs xchg ax,sp
00002A92  6E                outsb
00002A93  20904920          and [bx+si+0x2049],dl
00002A97  93                xchg ax,bx
00002A98  7792              ja 0x2a2c
00002A9A  69936C6C2091      imul dx,[bp+di+0x6c6c],0x9120
00002AA0  646592            gs xchg ax,dx
00002AA3  64699063619274    imul dx,[fs:bx+si+0x6163],0x7492
00002AAA  6520906D92        and [gs:bx+si-0x6d93],dl
00002AAF  7920              jns 0x2ad1
00002AB1  90                nop
00002AB2  6C                insb
00002AB3  95                xchg ax,bp
00002AB4  699466652093      imul dx,[si+0x6566],0x9320
00002ABA  746F              jz 0x2b2b
00002ABC  20927468          and [bp+si+0x6874],dl
00002AC0  93                xchg ax,bx
00002AC1  6973209074        imul si,[bp+di+0x20],0x7490
00002AC6  61                popa
00002AC7  97                xchg ax,di
00002AC8  93                xchg ax,bx
00002AC9  7398              jnc 0x2a63
00002ACB  6B972E9622        imul dx,[bx-0x69d2],0x22
00002AD0  94                xchg ax,sp
00002AD1  F5                cmc
00002AD2  F5                cmc
00002AD3  F5                cmc
00002AD4  F5                cmc
00002AD5  EE                out dx,al
00002AD6  FE                db 0xfe
00002AD7  F32283466F        rep and al,[bp+di+0x6f46]
00002ADC  80722081          xor byte [bp+si+0x20],0x81
00002AE0  7468              jz 0x2b4a
00002AE2  6520806669        and [gs:bx+si+0x6966],al
00002AE7  83727374          xor word [bp+si+0x73],0x74
00002AEB  20807482          and [bx+si-0x7d8c],al
00002AEF  69836D652082      imul ax,[bp+di+0x656d],0x8220
00002AF5  7369              jnc 0x2b60
00002AF7  846E83            test [bp-0x7d],ch
00002AFA  636520            arpl [di+0x20],sp
00002AFD  8174686520        xor word [si+0x68],0x2065
00002B02  80736184          xor byte [bp+di+0x61],0x84
00002B06  6E                outsb
00002B07  83648573          and word [si-0x7b],0x73
00002B0B  83746F80          xor word [si+0x6f],0xffffffffffffff80
00002B0F  7284              jc 0x2a95
00002B11  6D                insw
00002B12  20826287          and [bp+si-0x789e],al
00002B16  6588816787        mov [gs:bx+di-0x7899],al
00002B1B  61                popa
00002B1C  84866E2C          test [bp+0x2c6e],al
00002B20  2083796F          and [bp+di+0x6f79],al
00002B24  7520              jnz 0x2b46
00002B26  8168618376        sub word [bx+si+0x61],0x7683
00002B2B  6520806283        and [gs:bx+si-0x7c9e],al
00002B30  726F              jc 0x2ba1
00002B32  7584              jnz 0x2ab8
00002B34  67688374          a32 push word 0x7483
00002B38  20686F            and [bx+si+0x6f],ch
00002B3B  857065            test [bx+si+0x65],si
00002B3E  20826984          and [bp+si-0x7b97],al
00002B42  6E                outsb
00002B43  83746F20          xor word [si+0x6f],0x20
00002B47  806D8279          sub byte [di-0x7e],0x79
00002B4B  20806865          and [bx+si+0x6568],al
00002B4F  61                popa
00002B50  7283              jc 0x2ad5
00002B52  742C              jz 0x2b80
00002B54  20804475          and [bx+si+0x7544],al
00002B58  836B6520          sub word [bp+di+0x65],0x20
00002B5C  87804788          xchg ax,[bx+si-0x77b9]
00002B60  61                popa
00002B61  877286            xchg si,[bp+si-0x7a]
00002B64  84806C61          test [bx+si+0x616c],al
00002B68  846E64            test [bp+0x64],ch
00002B6B  2E2020            and [cs:bx+si],ah
00002B6E  804D6182          or byte [di+0x61],0x82
00002B72  7920              jns 0x2b94
00002B74  83476F64          add word [bx+0x6f],0x64
00002B78  8420              test [bx+si],ah
00002B7A  83676F20          and word [bx+0x6f],0x20
00002B7E  82                db 0x82
00002B7F  7769              ja 0x2bea
00002B81  83746820          xor word [si+0x68],0x20
00002B85  8379856F          cmp word [bx+di-0x7b],0x6f
00002B89  7520              jnz 0x2bab
00002B8B  836F846E          sub word [bx-0x7c],0x6e
00002B8F  2083796F          and [bp+di+0x6f79],al
00002B93  80757220          xor byte [di+0x72],0x20
00002B97  83717581          xor word [bx+di+0x75],0xffffffffffffff81
00002B9B  657383            gs jnc 0x2b21
00002B9E  742E              jz 0x2bce
00002BA0  8422              test [bp+si],ah
00002BA2  84F5              test ch,dh
00002BA4  F5                cmc
00002BA5  FE                db 0xfe
00002BA6  F0                lock
00002BA7  FD                std
00002BA8  FD                std
00002BA9  FA                cli
00002BAA  F353              rep push bx
00002BAC  7564              jnz 0x2c12
00002BAE  64656E            gs outsb
00002BB1  6C                insb
00002BB2  792C              jns 0x2be0
00002BB4  207468            and [si+0x68],dh
00002BB7  6520726F          and [gs:bp+si+0x6f],dh
00002BBB  6F                outsw
00002BBC  6D                insw
00002BBD  206772            and [bx+0x72],ah
00002BC0  657720            gs ja 0x2be3
00002BC3  636F6C            arpl [bx+0x6c],bp
00002BC6  642E2020          and [cs:bx+si],ah
00002BCA  41                inc cx
00002BCB  20626C            and [bp+si+0x6c],ah
00002BCE  61                popa
00002BCF  636B20            arpl [bp+di+0x20],bp
00002BD2  6D                insw
00002BD3  6973742073        imul si,[bp+di+0x74],0x7320
00002BD8  7769              ja 0x2c43
00002BDA  726C              jc 0x2c48
00002BDC  6564206172        and [fs:bx+di+0x72],ah
00002BE1  6F                outsw
00002BE2  756E              jnz 0x2c52
00002BE4  64207468          and [fs:si+0x68],dh
00002BE8  656D              gs insw
00002BEA  2C20              sub al,0x20
00002BEC  7468              jz 0x2c56
00002BEE  656E              gs outsb
00002BF0  20746F            and [si+0x6f],dh
00002BF3  6F                outsw
00002BF4  6B206F            imul sp,[bx+si],0x6f
00002BF7  6E                outsb
00002BF8  206120            and [bx+di+0x20],ah
00002BFB  686964            push word 0x6469
00002BFE  656F              gs outsw
00002C00  7573              jnz 0x2c75
00002C02  207368            and [bp+di+0x68],dh
00002C05  61                popa
00002C06  7065              jo 0x2c6d
00002C08  2EF5              cs cmc
00002C0A  F5                cmc
00002C0B  F5                cmc
00002C0C  FE                db 0xfe
00002C0D  ED                in ax,dx
00002C0E  FD                std
00002C0F  F3F9              rep stc
00002C11  224172            and al,[bx+di+0x72]
00002C14  6520796F          and [gs:bx+di+0x6f],bh
00002C18  7520              jnz 0x2c3a
00002C1A  7468              jz 0x2c84
00002C1C  6520666F          and [gs:bp+0x6f],ah
00002C20  6F                outsw
00002C21  6C                insb
00002C22  207768            and [bx+0x68],dh
00002C25  6F                outsw
00002C26  206461            and [si+0x61],ah
00002C29  7265              jc 0x2c90
00002C2B  7320              jnc 0x2c4d
00002C2D  746F              jz 0x2c9e
00002C2F  206368            and [bp+di+0x68],ah
00002C32  61                popa
00002C33  6C                insb
00002C34  6C                insb
00002C35  656E              gs outsb
00002C37  6765206D65        and [gs:ebp+0x65],ch
00002C3C  3F                aas
00002C3D  2020              and [bx+si],ah
00002C3F  44                inc sp
00002C40  6F                outsw
00002C41  6E                outsb
00002C42  27                daa
00002C43  7420              jz 0x2c65
00002C45  626520            bound sp,[di+0x20]
00002C48  61                popa
00002C49  627375            bound si,[bp+di+0x75]
00002C4C  7264              jc 0x2cb2
00002C4E  2122              and [bp+si],sp
00002C50  F5                cmc
00002C51  F5                cmc
00002C52  FE                db 0xfe
00002C53  FD                std
00002C54  99                cwd
00002C55  F5                cmc
00002C56  FE                db 0xfe
00002C57  F3FB              rep sti
00002C59  EF                out dx,ax
00002C5A  9A22904194        call word 0x9441:word 0x9022
00002C5F  6E                outsb
00002C60  93                xchg ax,bx
00002C61  642093796F        and [fs:bp+di+0x6f79],dl
00002C66  7520              jnz 0x2c88
00002C68  90                nop
00002C69  6D                insw
00002C6A  7593              jnz 0x2bff
00002C6C  7374              jnc 0x2ce2
00002C6E  20926265          and [bp+si+0x6562],dl
00002C72  20907468          and [bx+si+0x6874],dl
00002C76  6520916592        and [gs:bx+di-0x6d9b],dl
00002C7B  7669              jna 0x2ce6
00002C7D  93                xchg ax,bx
00002C7E  6C                insb
00002C7F  20904A61          and [bx+si+0x614a],dl
00002C83  92                xchg ax,dx
00002C84  7368              jnc 0x2cee
00002C86  6994696E2122      imul dx,[si+0x6e69],0x2221
00002C8C  F5                cmc
00002C8D  F5                cmc
00002C8E  ED                in ax,dx
00002C8F  FE                db 0xfe
00002C90  F3F9              rep stc
00002C92  22596F            and bl,[bx+di+0x6f]
00002C95  7520              jnz 0x2cb7
00002C97  7368              jnc 0x2d01
00002C99  61                popa
00002C9A  6C                insb
00002C9B  6C                insb
00002C9C  206164            and [bx+di+0x64],ah
00002C9F  647265            fs jc 0x2d07
00002CA2  7373              jnc 0x2d17
00002CA4  206D65            and [di+0x65],ch
00002CA7  206173            and [bx+di+0x73],ah
00002CAA  207468            and [si+0x68],dh
00002CAD  6520456D          and [gs:di+0x6d],al
00002CB1  7065              jo 0x2d18
00002CB3  726F              jc 0x2d24
00002CB5  7220              jc 0x2cd7
00002CB7  6F                outsw
00002CB8  66204368          o32 and [bp+di+0x68],al
00002CBC  61                popa
00002CBD  6F                outsw
00002CBE  732E              jnc 0x2cee
00002CC0  2E2E209B5448      and [cs:bp+di+0x4854],bl
00002CC6  45                inc bp
00002CC7  20454D            and [di+0x4d],al
00002CCA  50                push ax
00002CCB  45                inc bp
00002CCC  52                push dx
00002CCD  4F                dec di
00002CCE  52                push dx
00002CCF  204F46            and [bx+0x46],cl
00002CD2  204348            and [bp+di+0x48],al
00002CD5  41                inc cx
00002CD6  4F                dec di
00002CD7  53                push bx
00002CD8  2122              and [bp+si],sp
00002CDA  F5                cmc
00002CDB  F5                cmc
00002CDC  F5                cmc
00002CDD  FE                db 0xfe
00002CDE  F722              mul word [bp+si]
00002CE0  59                pop cx
00002CE1  6F                outsw
00002CE2  756E              jnz 0x2d52
00002CE4  6720666F          and [esi+0x6f],ah
00002CE8  6F                outsw
00002CE9  6C                insb
00002CEA  2C20              sub al,0x20
00002CEC  49                dec cx
00002CED  20636F            and [bp+di+0x6f],ah
00002CF0  756C              jnz 0x2d5e
00002CF2  64206465          and [fs:si+0x65],ah
00002CF6  7374              jnc 0x2d6c
00002CF8  726F              jc 0x2d69
00002CFA  7920              jns 0x2d1c
00002CFC  796F              jns 0x2d6d
00002CFE  7520              jnz 0x2d20
00002D00  6E                outsb
00002D01  6F                outsw
00002D02  772C              ja 0x2d30
00002D04  206275            and [bp+si+0x75],ah
00002D07  7420              jz 0x2d29
00002D09  49                dec cx
00002D0A  206E65            and [bp+0x65],ch
00002D0D  6564206120        and [fs:bx+di+0x20],ah
00002D12  6C                insb
00002D13  6974746C65        imul si,[si+0x74],0x656c
00002D18  20616D            and [bx+di+0x6d],ah
00002D1B  7573              jnz 0x2d90
00002D1D  656D              gs insw
00002D1F  656E              gs outsb
00002D21  742E              jz 0x2d51
00002D23  2020              and [bx+si],ah
00002D25  49                dec cx
00002D26  207769            and [bx+0x69],dh
00002D29  6C                insb
00002D2A  6C                insb
00002D2B  206769            and [bx+0x69],ah
00002D2E  7665              jna 0x2d95
00002D30  20796F            and [bx+di+0x6f],bh
00002D33  7520              jnz 0x2d55
00002D35  736F              jnc 0x2da6
00002D37  6D                insw
00002D38  65207469          and [gs:si+0x69],dh
00002D3C  6D                insw
00002D3D  6520746F          and [gs:si+0x6f],dh
00002D41  207065            and [bx+si+0x65],dh
00002D44  7266              jc 0x2dac
00002D46  6F                outsw
00002D47  726D              jc 0x2db6
00002D49  20796F            and [bx+di+0x6f],bh
00002D4C  7572              jnz 0x2dc0
00002D4E  206C69            and [si+0x69],ch
00002D51  7474              jz 0x2dc7
00002D53  6C                insb
00002D54  65207175          and [gs:bx+di+0x75],dh
00002D58  657374            gs jnc 0x2dcf
00002D5B  2C20              sub al,0x20
00002D5D  627574            bound si,[di+0x74]
00002D60  20796F            and [bx+di+0x6f],bh
00002D63  7520              jnz 0x2d85
00002D65  6D                insw
00002D66  7573              jnz 0x2ddb
00002D68  7420              jz 0x2d8a
00002D6A  7072              jo 0x2dde
00002D6C  6F                outsw
00002D6D  6D                insw
00002D6E  697365206E        imul si,[bp+di+0x65],0x6e20
00002D73  6F                outsw
00002D74  7420              jz 0x2d96
00002D76  746F              jz 0x2de7
00002D78  20626F            and [bp+si+0x6f],ah
00002D7B  7265              jc 0x2de2
00002D7D  206D65            and [di+0x65],ch
00002D80  2E22F5            cs and dh,ch
00002D83  F5                cmc
00002D84  F5                cmc
00002D85  FE                db 0xfe
00002D86  F3224F66          rep and cl,[bx+0x66]
00002D8A  20636F            and [bp+di+0x6f],ah
00002D8D  7572              jnz 0x2e01
00002D8F  7365              jnc 0x2df6
00002D91  2C20              sub al,0x20
00002D93  796F              jns 0x2e04
00002D95  7520              jnz 0x2db7
00002D97  686176            push word 0x7661
00002D9A  65206E6F          and [gs:bp+0x6f],ch
00002D9E  20686F            and [bx+si+0x6f],ch
00002DA1  7065              jo 0x2e08
00002DA3  206F66            and [bx+0x66],ch
00002DA6  206465            and [si+0x65],ah
00002DA9  666561            gs popad
00002DAC  7469              jz 0x2e17
00002DAE  6E                outsb
00002DAF  67206D65          and [ebp+0x65],ch
00002DB3  2E22F5            cs and dh,ch
00002DB6  F5                cmc
00002DB7  F5                cmc
00002DB8  EF                out dx,ax
00002DB9  FE                db 0xfe
00002DBA  F3FB              rep sti
00002DBC  229A904D          and bl,[bp+si+0x4d90]
00002DC0  61                popa
00002DC1  7295              jc 0x2d58
00002DC3  6B2090            imul sp,[bx+si],0xffffffffffffff90
00002DC6  6D                insw
00002DC7  92                xchg ax,dx
00002DC8  7920              jns 0x2dea
00002DCA  90                nop
00002DCB  776F              ja 0x2e3c
00002DCD  7293              jc 0x2d62
00002DCF  64732C            fs jnc 0x2dfe
00002DD2  20916592          and [bx+di-0x6d9b],dl
00002DD6  7669              jna 0x2e41
00002DD8  93                xchg ax,bx
00002DD9  6C                insb
00002DDA  20906F94          and [bx+si-0x6b91],dl
00002DDE  6E                outsb
00002DDF  653A20            cmp ah,[gs:bx+si]
00002DE2  90                nop
00002DE3  49                dec cx
00002DE4  20957792          and [di-0x6d89],dl
00002DE8  69936C6C2093      imul dx,[bp+di+0x6c6c],0x9320
00002DEE  6E                outsb
00002DEF  6F                outsw
00002DF0  7494              jz 0x2d86
00002DF2  20937374          and [bp+di+0x7473],dl
00002DF6  6F                outsw
00002DF7  94                xchg ax,sp
00002DF8  7020              jo 0x2e1a
00002DFA  90                nop
00002DFB  7594              jnz 0x2d91
00002DFD  6E                outsb
00002DFE  92                xchg ax,dx
00002DFF  7469              jz 0x2e6a
00002E01  93                xchg ax,bx
00002E02  6C                insb
00002E03  20904920          and [bx+si+0x2049],dl
00002E07  91                xchg ax,cx
00002E08  686193            push word 0x9361
00002E0B  7665              jna 0x2e72
00002E0D  20917265          and [bx+di+0x6572],dl
00002E11  93                xchg ax,bx
00002E12  636C90            arpl [si-0x70],bp
00002E15  61                popa
00002E16  69936D656420      imul dx,[bp+di+0x656d],0x2064
00002E1C  91                xchg ax,cx
00002E1D  7468              jz 0x2e87
00002E1F  6520906E69        and [gs:bx+si+0x696e],dl
00002E24  94                xchg ax,sp
00002E25  6E                outsb
00002E26  652093686F        and [gs:bp+di+0x6f68],dl
00002E2B  92                xchg ax,dx
00002E2C  6C                insb
00002E2D  7920              jns 0x2e4f
00002E2F  93                xchg ax,bx
00002E30  637292            arpl [bp+si-0x6e],si
00002E33  7973              jns 0x2ea8
00002E35  90                nop
00002E36  7461              jz 0x2e99
00002E38  6C                insb
00002E39  93                xchg ax,bx
00002E3A  732C              jnc 0x2e68
00002E3C  20906194          and [bx+si-0x6b9f],dl
00002E40  6E                outsb
00002E41  93                xchg ax,bx
00002E42  6420927365        and [fs:bp+si+0x6573],dl
00002E47  61                popa
00002E48  93                xchg ax,bx
00002E49  6C                insb
00002E4A  65642095796F      and [fs:di+0x6f79],dl
00002E50  7520              jnz 0x2e72
00002E52  90                nop
00002E53  7594              jnz 0x2de9
00002E55  6E                outsb
00002E56  90                nop
00002E57  64657220          gs jc 0x2e7b
00002E5B  91                xchg ax,cx
00002E5C  7468              jz 0x2ec6
00002E5E  6520906561        and [gs:bx+si+0x6165],dl
00002E63  7293              jc 0x2df8
00002E65  7468              jz 0x2ecf
00002E67  20906F94          and [bx+si-0x6b91],dl
00002E6B  6E                outsb
00002E6C  93                xchg ax,bx
00002E6D  636520            arpl [di+0x20],sp
00002E70  90                nop
00002E71  61                popa
00002E72  94                xchg ax,sp
00002E73  6E                outsb
00002E74  93                xchg ax,bx
00002E75  642093666F        and [fs:bp+di+0x6f66],dl
00002E7A  90                nop
00002E7B  7220              jc 0x2e9d
00002E7D  95                xchg ax,bp
00002E7E  61                popa
00002E7F  93                xchg ax,bx
00002E80  6C                insb
00002E81  6C                insb
00002E82  21999422          and [bx+di+0x2294],bx
00002E86  F5                cmc
00002E87  F5                cmc
00002E88  F5                cmc
00002E89  F5                cmc
00002E8A  FE                db 0xfe
00002E8B  F0                lock
00002E8C  F5                cmc
00002E8D  F7FA              idiv dx
00002E8F  54                push sp
00002E90  686520            push word 0x2065
00002E93  64656D            gs insw
00002E96  6F                outsw
00002E97  6E                outsb
00002E98  206C61            and [si+0x61],ch
00002E9B  7567              jnz 0x2f04
00002E9D  686564            push word 0x6465
00002EA0  2C20              sub al,0x20
00002EA2  61                popa
00002EA3  6E                outsb
00002EA4  64207468          and [fs:si+0x68],dh
00002EA8  6520736F          and [gs:bp+di+0x6f],dh
00002EAC  756E              jnz 0x2f1c
00002EAE  64207761          and [fs:bx+0x61],dh
00002EB2  7320              jnc 0x2ed4
00002EB4  6C                insb
00002EB5  696B652062        imul bp,[bp+di+0x65],0x6220
00002EBA  7265              jc 0x2f21
00002EBC  61                popa
00002EBD  6B696E67          imul bp,[bx+di+0x6e],0x67
00002EC1  20676C            and [bx+0x6c],ah
00002EC4  61                popa
00002EC5  7373              jnc 0x2f3a
00002EC7  2EF2F9            cs repne stc
00002ECA  ED                in ax,dx
00002ECB  224D79            and cl,[di+0x79]
00002ECE  206C61            and [si+0x61],ch
00002ED1  627972            bound di,[bx+di+0x72]
00002ED4  696E746873        imul bp,[bp+0x74],0x7368
00002ED9  206172            and [bx+di+0x72],ah
00002EDC  6520696D          and [gs:bx+di+0x6d],ch
00002EE0  6D                insw
00002EE1  656E              gs outsb
00002EE3  7365              jnc 0x2f4a
00002EE5  2C20              sub al,0x20
00002EE7  61                popa
00002EE8  6E                outsb
00002EE9  64207275          and [fs:bp+si+0x75],dh
00002EED  6E                outsb
00002EEE  206465            and [si+0x65],ah
00002EF1  657020            gs jo 0x2f14
00002EF4  696E746F20        imul bp,[bp+0x74],0x206f
00002EF9  7468              jz 0x2f63
00002EFB  65206561          and [gs:di+0x61],ah
00002EFF  7274              jc 0x2f75
00002F01  682E20            push word 0x202e
00002F04  20596F            and [bx+di+0x6f],bl
00002F07  7527              jnz 0x2f30
00002F09  6C                insb
00002F0A  6C                insb
00002F0B  20736F            and [bp+di+0x6f],dh
00002F0E  6F                outsw
00002F0F  6E                outsb
00002F10  206C6F            and [si+0x6f],ch
00002F13  7365              jnc 0x2f7a
00002F15  20796F            and [bx+di+0x6f],bh
00002F18  7572              jnz 0x2f8c
00002F1A  207761            and [bx+0x61],dh
00002F1D  792C              jns 0x2f4b
00002F1F  20616E            and [bx+di+0x6e],ah
00002F22  64207468          and [fs:si+0x68],dh
00002F26  656E              gs outsb
00002F28  206D79            and [di+0x79],ch
00002F2B  20756E            and [di+0x6e],dh
00002F2E  6465726C          gs jc 0x2f9e
00002F32  696E677320        imul bp,[bp+0x67],0x2073
00002F37  7769              ja 0x2fa2
00002F39  6C                insb
00002F3A  6C                insb
00002F3B  206669            and [bp+0x69],ah
00002F3E  6E                outsb
00002F3F  6973682079        imul si,[bp+di+0x68],0x7920
00002F44  6F                outsw
00002F45  7520              jnz 0x2f67
00002F47  6F                outsw
00002F48  66662E22F5        cs o32 and dh,ch
00002F4D  F5                cmc
00002F4E  FE                db 0xfe
00002F4F  F3224974          rep and cl,[bx+di+0x74]
00002F53  27                daa
00002F54  7320              jnc 0x2f76
00002F56  626565            bound sp,[di+0x65]
00002F59  6E                outsb
00002F5A  206D61            and [di+0x61],ch
00002F5D  6E                outsb
00002F5E  7920              jns 0x2f80
00002F60  7965              jns 0x2fc7
00002F62  61                popa
00002F63  7273              jc 0x2fd8
00002F65  207369            and [bp+di+0x69],dh
00002F68  6E                outsb
00002F69  636520            arpl [di+0x20],sp
00002F6C  61                popa
00002F6D  207374            and [bp+di+0x74],dh
00002F70  7261              jc 0x2fd3
00002F72  7920              jns 0x2f94
00002F74  6D                insw
00002F75  6F                outsw
00002F76  7274              jc 0x2fec
00002F78  61                popa
00002F79  6C                insb
00002F7A  206861            and [bx+si+0x61],ch
00002F7D  7320              jnc 0x2f9f
00002F7F  7761              ja 0x2fe2
00002F81  6E                outsb
00002F82  64657265          gs jc 0x2feb
00002F86  6420696E          and [fs:bx+di+0x6e],ch
00002F8A  746F              jz 0x2ffb
00002F8C  207468            and [si+0x68],dh
00002F8F  656972207265      imul si,[gs:bp+si+0x20],0x6572
00002F95  61                popa
00002F96  6C                insb
00002F97  6D                insw
00002F98  2E205468          and [cs:si+0x68],dl
00002F9C  657920            gs jns 0x2fbf
00002F9F  61                popa
00002FA0  7265              jc 0x3007
00002FA2  206875            and [bx+si+0x75],ch
00002FA5  6E                outsb
00002FA6  677279            a32 jc 0x3022
00002FA9  20666F            and [bp+0x6f],ah
00002FAC  7220              jc 0x2fce
00002FAE  68756D            push word 0x6d75
00002FB1  61                popa
00002FB2  6E                outsb
00002FB3  20666C            and [bp+0x6c],ah
00002FB6  657368            gs jnc 0x3021
00002FB9  2E22F5            cs and dh,ch
00002FBC  F5                cmc
00002FBD  F5                cmc
00002FBE  F0                lock
00002FBF  FD                std
00002FC0  FE                db 0xfe
00002FC1  F3FA              rep cli
00002FC3  57                push di
00002FC4  6974682074        imul si,[si+0x68],0x7420
00002FC9  686174            push word 0x7461
00002FCC  2C20              sub al,0x20
00002FCE  4A                dec dx
00002FCF  61                popa
00002FD0  7368              jnc 0x303a
00002FD2  69696E2064        imul bp,[bx+di+0x6e],0x6420
00002FD7  6973617070        imul si,[bp+di+0x61],0x7070
00002FDC  6561              gs popa
00002FDE  7265              jc 0x3045
00002FE0  64206C65          and [fs:si+0x65],ch
00002FE4  61                popa
00002FE5  7669              jna 0x3050
00002FE7  6E                outsb
00002FE8  67206563          and [ebp+0x63],ah
00002FEC  686F65            push word 0x656f
00002FEF  7320              jnc 0x3011
00002FF1  6F                outsw
00002FF2  66206561          o32 and [di+0x61],ah
00002FF6  7273              jc 0x306b
00002FF8  706C              jo 0x3066
00002FFA  697474696E        imul si,[si+0x74],0x6e69
00002FFF  67206C6175        and [ecx+0x75],ch
00003004  67687465          a32 push word 0x6574
00003008  722E              jc 0x3038
0000300A  F5                cmc
0000300B  F5                cmc
0000300C  FD                std
0000300D  FE                db 0xfe
0000300E  EF                out dx,ax
0000300F  F3FB              rep sti
00003011  22596F            and bl,[bx+di+0x6f]
00003014  7520              jnz 0x3036
00003016  686176            push word 0x7661
00003019  656E              gs outsb
0000301B  27                daa
0000301C  7420              jz 0x303e
0000301E  7365              jnc 0x3085
00003020  656E              gs outsb
00003022  207468            and [si+0x68],dh
00003025  65206C61          and [gs:si+0x61],ch
00003029  7374              jnc 0x309f
0000302B  206F66            and [bx+0x66],ch
0000302E  206D65            and [di+0x65],ch
00003031  2C20              sub al,0x20
00003033  4A                dec dx
00003034  61                popa
00003035  7368              jnc 0x309f
00003037  69696E21F2        imul bp,[bx+di+0x6e],0xf221
0000303C  59                pop cx
0000303D  6F                outsw
0000303E  7572              jnz 0x30b2
00003040  207265            and [bp+si+0x65],dh
00003043  69676E206F        imul sp,[bx+0x6e],0x6f20
00003048  66206576          o32 and [di+0x76],ah
0000304C  696C206973        imul bp,[si+0x20],0x7369
00003051  206E65            and [bp+0x65],ch
00003054  61                popa
00003055  7220              jc 0x3077
00003057  6974732065        imul si,[si+0x73],0x6520
0000305C  6E                outsb
0000305D  642122            and [fs:bp+si],sp
00003060  F5                cmc
00003061  F5                cmc
00003062  F5                cmc
00003063  FF5825            call word far [bx+si+0x25]
00003066  F00000            lock add [bx+si],al
00003069  036821            add bp,[bx+si+0x21]
0000306C  FC                cld
0000306D  FC                cld
0000306E  0407              add al,0x7
00003070  7023              jo 0x3095
00003072  01FD              add bp,di
00003074  0407              add al,0x7
00003076  7024              jo 0x309c
00003078  04FD              add al,0xfd
0000307A  0407              add al,0x7
0000307C  7825              js 0x30a3
0000307E  06                push es
0000307F  FE04              inc byte [si]
00003081  07                pop es
00003082  7828              js 0x30ac
00003084  06                push es
00003085  0204              add al,[si]
00003087  07                pop es
00003088  7029              jo 0x30b3
0000308A  0403              add al,0x3
0000308C  0407              add al,0x7
0000308E  702A              jo 0x30ba
00003090  0103              add [bp+di],ax
00003092  0407              add al,0x7
00003094  682CFC            push word 0xfc2c
00003097  0404              add al,0x4
00003099  07                pop es
0000309A  FF01              inc word [bx+di]
0000309C  0801              or [bx+di],al
0000309E  42                inc dx
0000309F  65037761          add si,[gs:bx+0x61]
000030A3  0472              add al,0x72
000030A5  652C20            gs sub al,0x20
000030A8  03666F            add sp,[bp+0x6f]
000030AB  0472              add al,0x72
000030AD  2004              and [si],al
000030AF  49                dec cx
000030B0  2001              and [bx+di],al
000030B2  7368              jnc 0x311c
000030B4  61                popa
000030B5  036C6C            add bp,[si+0x6c]
000030B8  207704            and [bx+0x4],dh
000030BB  61                popa
000030BC  6B0365            imul ax,[bp+di],0x65
000030BF  FF01              inc word [bx+di]
000030C1  06                push es
000030C2  036672            add sp,[bp+0x72]
000030C5  6F                outsw
000030C6  036D20            add bp,[di+0x20]
000030C9  026D01            add ch,[di+0x1]
000030CC  7920              jns 0x30ee
000030CE  037301            add si,[bp+di+0x1]
000030D1  6C                insb
000030D2  6565017020        add [gs:bx+si+0x20],si
000030D7  6F                outsw
000030D8  662003            o32 and [bp+di],al
000030DB  322C              xor ch,[si]
000030DD  0430              add al,0x30
000030DF  3030              xor [bx+si],dh
000030E1  2001              and [bx+di],al
000030E3  7965              jns 0x314a
000030E5  0461              add al,0x61
000030E7  7203              jc 0x30ec
000030E9  73FF              jnc 0x30ea
000030EB  0102              add [bp+si],ax
000030ED  0461              add al,0x61
000030EF  026E03            add ch,[bp+0x3]
000030F2  642003            and [fs:bp+di],al
000030F5  6F                outsw
000030F6  026E63            add ch,[bp+0x63]
000030F9  652004            and [gs:si],al
000030FC  61                popa
000030FD  6761              a32 popa
000030FF  01696E            add [bx+di+0x6e],bp
00003102  2002              and [bp+si],al
00003104  7265              jc 0x316b
00003106  0469              add al,0x69
00003108  01676E            add [bx+0x6e],sp
0000310B  2003              and [bp+di],al
0000310D  6F                outsw
0000310E  7604              jna 0x3114
00003110  657220            gs jc 0x3133
00003113  017468            add [si+0x68],si
00003116  652004            and [gs:si],al
00003119  776F              ja 0x318a
0000311B  7203              jc 0x3120
0000311D  6C                insb
0000311E  642E0200          add al,[cs:bx+si]
00003122  0101              add [bx+di],ax
00003124  0102              add [bp+si],ax
00003126  0201              add al,[bx+di]
00003128  0102              add [bp+si],ax
0000312A  0203              add al,[bp+di]
0000312C  0305              add ax,[di]
0000312E  0000              add [bx+si],al
00003130  0000              add [bx+si],al
00003132  0000              add [bx+si],al
00003134  0001              add [bx+di],al
00003136  0203              add al,[bp+di]
00003138  0400              add al,0x0
0000313A  0000              add [bx+si],al
0000313C  0000              add [bx+si],al
0000313E  0005              add [di],al
00003140  06                push es
00003141  07                pop es
00003142  0809              or [bx+di],cl
00003144  0A0B              or cl,[bp+di]
00003146  0C0D              or al,0xd
00003148  0E                push cs
00003149  0F1011            movups xmm2,oword [bx+di]
0000314C  1213              adc dl,[bp+di]
0000314E  1415              adc al,0x15
00003150  16                push ss
00003151  0000              add [bx+si],al
00003153  0017              add [bx],dl
00003155  1819              sbb [bx+di],bl
00003157  1A1B              sbb bl,[bp+di]
00003159  1C1D              sbb al,0x1d
0000315B  1E                push ds
0000315C  1F                pop ds
0000315D  2021              and [bx+di],ah
0000315F  2223              and ah,[bp+di]
00003161  2425              and al,0x25
00003163  2627              es daa
00003165  2829              sub [bx+di],ch
00003167  2A2B              sub ch,[bp+di]
00003169  2C2D              sub al,0x2d
0000316B  2E0000            add [cs:bx+si],al
0000316E  2F                das
0000316F  3031              xor [bx+di],dh
00003171  3233              xor dh,[bp+di]
00003173  0000              add [bx+si],al
00003175  3435              xor al,0x35
00003177  3637              ss aaa
00003179  3800              cmp [bx+si],al
0000317B  39263A00          cmp [0x3a],sp
0000317F  0000              add [bx+si],al
00003181  0000              add [bx+si],al
00003183  0000              add [bx+si],al
00003185  0000              add [bx+si],al
00003187  0000              add [bx+si],al
00003189  0000              add [bx+si],al
0000318B  0000              add [bx+si],al
0000318D  0000              add [bx+si],al
0000318F  0000              add [bx+si],al
00003191  3B3C              cmp di,[si]
00003193  3D0000            cmp ax,0x0
00003196  003E3F40          add [0x403f],bh
0000319A  41                inc cx
0000319B  0000              add [bx+si],al
0000319D  0000              add [bx+si],al
0000319F  0000              add [bx+si],al
000031A1  0000              add [bx+si],al
000031A3  0000              add [bx+si],al
000031A5  0000              add [bx+si],al
000031A7  0000              add [bx+si],al
000031A9  0000              add [bx+si],al
000031AB  0000              add [bx+si],al
000031AD  0000              add [bx+si],al
000031AF  0000              add [bx+si],al
000031B1  0000              add [bx+si],al
000031B3  0000              add [bx+si],al
000031B5  0000              add [bx+si],al
000031B7  0000              add [bx+si],al
000031B9  42                inc dx
000031BA  43                inc bx
000031BB  44                inc sp
000031BC  45                inc bp
000031BD  0000              add [bx+si],al
000031BF  0000              add [bx+si],al
000031C1  0000              add [bx+si],al
000031C3  0000              add [bx+si],al
000031C5  0000              add [bx+si],al
000031C7  0000              add [bx+si],al
000031C9  0000              add [bx+si],al
000031CB  0000              add [bx+si],al
000031CD  0000              add [bx+si],al
000031CF  0000              add [bx+si],al
000031D1  0000              add [bx+si],al
000031D3  0000              add [bx+si],al
000031D5  0000              add [bx+si],al
000031D7  0000              add [bx+si],al
000031D9  0000              add [bx+si],al
000031DB  46                inc si
000031DC  47                inc di
000031DD  16                push ss
000031DE  0000              add [bx+si],al
000031E0  0000              add [bx+si],al
000031E2  0000              add [bx+si],al
000031E4  0000              add [bx+si],al
000031E6  0000              add [bx+si],al
000031E8  0000              add [bx+si],al
000031EA  0000              add [bx+si],al
000031EC  0000              add [bx+si],al
000031EE  0000              add [bx+si],al
000031F0  0000              add [bx+si],al
000031F2  0000              add [bx+si],al
000031F4  0000              add [bx+si],al
000031F6  0000              add [bx+si],al
000031F8  0000              add [bx+si],al
000031FA  0000              add [bx+si],al
000031FC  004849            add [bx+si+0x49],cl
000031FF  4A                dec dx
00003200  0000              add [bx+si],al
00003202  0000              add [bx+si],al
00003204  0000              add [bx+si],al
00003206  0000              add [bx+si],al
00003208  0000              add [bx+si],al
0000320A  0000              add [bx+si],al
0000320C  0000              add [bx+si],al
0000320E  0000              add [bx+si],al
00003210  0000              add [bx+si],al
00003212  0000              add [bx+si],al
00003214  0000              add [bx+si],al
00003216  0000              add [bx+si],al
00003218  0000              add [bx+si],al
0000321A  0000              add [bx+si],al
0000321C  0000              add [bx+si],al
0000321E  0000              add [bx+si],al
00003220  0000              add [bx+si],al
00003222  0000              add [bx+si],al
00003224  0000              add [bx+si],al
00003226  0000              add [bx+si],al
00003228  0000              add [bx+si],al
0000322A  0000              add [bx+si],al
0000322C  0000              add [bx+si],al
0000322E  0000              add [bx+si],al
00003230  0000              add [bx+si],al
00003232  0000              add [bx+si],al
00003234  0000              add [bx+si],al
00003236  0000              add [bx+si],al
00003238  0000              add [bx+si],al
0000323A  0000              add [bx+si],al
0000323C  0000              add [bx+si],al
0000323E  0000              add [bx+si],al
00003240  0000              add [bx+si],al
00003242  0000              add [bx+si],al
00003244  0000              add [bx+si],al
00003246  0000              add [bx+si],al
00003248  0000              add [bx+si],al
0000324A  0000              add [bx+si],al
0000324C  0000              add [bx+si],al
0000324E  0000              add [bx+si],al
00003250  0000              add [bx+si],al
00003252  0000              add [bx+si],al
00003254  0000              add [bx+si],al
00003256  0000              add [bx+si],al
00003258  0000              add [bx+si],al
0000325A  0000              add [bx+si],al
0000325C  0000              add [bx+si],al
0000325E  0000              add [bx+si],al
00003260  004B4C            add [bp+di+0x4c],cl
00003263  4D                dec bp
00003264  0000              add [bx+si],al
00003266  0000              add [bx+si],al
00003268  0000              add [bx+si],al
0000326A  0000              add [bx+si],al
0000326C  0000              add [bx+si],al
0000326E  0000              add [bx+si],al
00003270  0000              add [bx+si],al
00003272  0000              add [bx+si],al
00003274  0000              add [bx+si],al
00003276  0000              add [bx+si],al
00003278  0000              add [bx+si],al
0000327A  0000              add [bx+si],al
0000327C  0000              add [bx+si],al
0000327E  0000              add [bx+si],al
00003280  0000              add [bx+si],al
00003282  004E4F            add [bp+0x4f],cl
00003285  50                push ax
00003286  0000              add [bx+si],al
00003288  0000              add [bx+si],al
0000328A  0000              add [bx+si],al
0000328C  0000              add [bx+si],al
0000328E  0000              add [bx+si],al
00003290  0000              add [bx+si],al
00003292  0000              add [bx+si],al
00003294  0000              add [bx+si],al
00003296  0000              add [bx+si],al
00003298  0000              add [bx+si],al
0000329A  0000              add [bx+si],al
0000329C  0000              add [bx+si],al
0000329E  0000              add [bx+si],al
000032A0  0000              add [bx+si],al
000032A2  0000              add [bx+si],al
000032A4  0000              add [bx+si],al
000032A6  51                push cx
000032A7  0000              add [bx+si],al
000032A9  0000              add [bx+si],al
000032AB  0000              add [bx+si],al
000032AD  0000              add [bx+si],al
000032AF  0000              add [bx+si],al
000032B1  0000              add [bx+si],al
000032B3  0000              add [bx+si],al
000032B5  0000              add [bx+si],al
000032B7  0000              add [bx+si],al
000032B9  0000              add [bx+si],al
000032BB  0000              add [bx+si],al
000032BD  0000              add [bx+si],al
000032BF  0000              add [bx+si],al
000032C1  0000              add [bx+si],al
000032C3  0000              add [bx+si],al
000032C5  0000              add [bx+si],al
000032C7  005253            add [bp+si+0x53],dl
000032CA  0000              add [bx+si],al
000032CC  0000              add [bx+si],al
000032CE  0000              add [bx+si],al
000032D0  0000              add [bx+si],al
000032D2  0000              add [bx+si],al
000032D4  0000              add [bx+si],al
000032D6  0000              add [bx+si],al
000032D8  0000              add [bx+si],al
000032DA  0000              add [bx+si],al
000032DC  0000              add [bx+si],al
000032DE  0000              add [bx+si],al
000032E0  0000              add [bx+si],al
000032E2  0000              add [bx+si],al
000032E4  0000              add [bx+si],al
000032E6  0000              add [bx+si],al
000032E8  0000              add [bx+si],al
000032EA  54                push sp
000032EB  55                push bp
000032EC  56                push si
000032ED  0000              add [bx+si],al
000032EF  0000              add [bx+si],al
000032F1  0000              add [bx+si],al
000032F3  0000              add [bx+si],al
000032F5  0000              add [bx+si],al
000032F7  0000              add [bx+si],al
000032F9  0000              add [bx+si],al
000032FB  0000              add [bx+si],al
000032FD  0000              add [bx+si],al
000032FF  0000              add [bx+si],al
00003301  0000              add [bx+si],al
00003303  0000              add [bx+si],al
00003305  0000              add [bx+si],al
00003307  0000              add [bx+si],al
00003309  0000              add [bx+si],al
0000330B  005758            add [bx+0x58],dl
0000330E  59                pop cx
0000330F  5A                pop dx
00003310  0000              add [bx+si],al
00003312  0000              add [bx+si],al
00003314  0000              add [bx+si],al
00003316  0000              add [bx+si],al
00003318  0000              add [bx+si],al
0000331A  0000              add [bx+si],al
0000331C  0000              add [bx+si],al
0000331E  0000              add [bx+si],al
00003320  0000              add [bx+si],al
00003322  0000              add [bx+si],al
00003324  0000              add [bx+si],al
00003326  0000              add [bx+si],al
00003328  0000              add [bx+si],al
0000332A  0000              add [bx+si],al
0000332C  0000              add [bx+si],al
0000332E  5B                pop bx
0000332F  5C                pop sp
00003330  5D                pop bp
00003331  5E                pop si
00003332  0000              add [bx+si],al
00003334  0000              add [bx+si],al
00003336  0000              add [bx+si],al
00003338  0000              add [bx+si],al
0000333A  0000              add [bx+si],al
0000333C  0000              add [bx+si],al
0000333E  0000              add [bx+si],al
00003340  0000              add [bx+si],al
00003342  0000              add [bx+si],al
00003344  0000              add [bx+si],al
00003346  0000              add [bx+si],al
00003348  0000              add [bx+si],al
0000334A  0000              add [bx+si],al
0000334C  0000              add [bx+si],al
0000334E  0000              add [bx+si],al
00003350  5F                pop di
00003351  60                pusha
00003352  61                popa
00003353  6200              bound ax,[bx+si]
00003355  0000              add [bx+si],al
00003357  0000              add [bx+si],al
00003359  0000              add [bx+si],al
0000335B  0000              add [bx+si],al
0000335D  0000              add [bx+si],al
0000335F  0000              add [bx+si],al
00003361  0000              add [bx+si],al
00003363  0000              add [bx+si],al
00003365  0000              add [bx+si],al
00003367  0000              add [bx+si],al
00003369  0000              add [bx+si],al
0000336B  0000              add [bx+si],al
0000336D  0000              add [bx+si],al
0000336F  0000              add [bx+si],al
00003371  006364            add [bp+di+0x64],ah
00003374  0000              add [bx+si],al
00003376  0000              add [bx+si],al
00003378  0000              add [bx+si],al
0000337A  0000              add [bx+si],al
0000337C  0000              add [bx+si],al
0000337E  0000              add [bx+si],al
00003380  0000              add [bx+si],al
00003382  0000              add [bx+si],al
00003384  0000              add [bx+si],al
00003386  0000              add [bx+si],al
00003388  0000              add [bx+si],al
0000338A  0000              add [bx+si],al
0000338C  0000              add [bx+si],al
0000338E  0000              add [bx+si],al
00003390  0000              add [bx+si],al
00003392  0000              add [bx+si],al
00003394  6566676869000000  gs a32 push dword 0x69
0000339C  0000              add [bx+si],al
0000339E  0000              add [bx+si],al
000033A0  0000              add [bx+si],al
000033A2  0000              add [bx+si],al
000033A4  0000              add [bx+si],al
000033A6  0000              add [bx+si],al
000033A8  0000              add [bx+si],al
000033AA  0000              add [bx+si],al
000033AC  0000              add [bx+si],al
000033AE  0000              add [bx+si],al
000033B0  0000              add [bx+si],al
000033B2  0000              add [bx+si],al
000033B4  0000              add [bx+si],al
000033B6  6A6B              push word 0x6b
000033B8  6C                insb
000033B9  6D                insw
000033BA  6E                outsb
000033BB  6F                outsw
000033BC  7071              jo 0x342f
000033BE  7273              jc 0x3433
000033C0  0000              add [bx+si],al
000033C2  0000              add [bx+si],al
000033C4  0000              add [bx+si],al
000033C6  0000              add [bx+si],al
000033C8  0000              add [bx+si],al
000033CA  0000              add [bx+si],al
000033CC  0000              add [bx+si],al
000033CE  0000              add [bx+si],al
000033D0  0000              add [bx+si],al
000033D2  0000              add [bx+si],al
000033D4  0000              add [bx+si],al
000033D6  0000              add [bx+si],al
000033D8  7475              jz 0x344f
000033DA  7677              jna 0x3453
000033DC  7879              js 0x3457
000033DE  7A7B              jpe 0x345b
000033E0  7C7D              jl 0x345f
000033E2  0000              add [bx+si],al
000033E4  0000              add [bx+si],al
000033E6  0000              add [bx+si],al
000033E8  0000              add [bx+si],al
000033EA  0000              add [bx+si],al
000033EC  0000              add [bx+si],al
000033EE  0000              add [bx+si],al
000033F0  0000              add [bx+si],al
000033F2  0000              add [bx+si],al
000033F4  0000              add [bx+si],al
000033F6  0000              add [bx+si],al
000033F8  0000              add [bx+si],al
000033FA  7E7F              jng 0x347b
000033FC  8081828384        add byte [bx+di-0x7c7e],0x84
00003401  85868788          test [bp-0x7779],ax
00003405  8900              mov [bx+si],ax
00003407  0000              add [bx+si],al
00003409  000F              add [bx],cl
0000340B  8A8B8C00          mov cl,[bp+di+0x8c]
0000340F  0000              add [bx+si],al
00003411  0000              add [bx+si],al
00003413  0000              add [bx+si],al
00003415  0000              add [bx+si],al
00003417  0000              add [bx+si],al
00003419  0000              add [bx+si],al
0000341B  002F              add [bx],ch
0000341D  8D8E8F90          lea cx,[bp-0x6f71]
00003421  91                xchg ax,cx
00003422  92                xchg ax,dx
00003423  93                xchg ax,bx
00003424  94                xchg ax,sp
00003425  95                xchg ax,bp
00003426  96                xchg ax,si
00003427  97                xchg ax,di
00003428  0000              add [bx+si],al
0000342A  0098999A          add [bx+si-0x6567],bl
0000342E  9B9C              wait pushf
00003430  9D                popf
00003431  0000              add [bx+si],al
00003433  0000              add [bx+si],al
00003435  0000              add [bx+si],al
00003437  0000              add [bx+si],al
00003439  0000              add [bx+si],al
0000343B  0000              add [bx+si],al
0000343D  0000              add [bx+si],al
0000343F  9E                sahf
00003440  9F                lahf
00003441  A0A1A2            mov al,[0xa2a1]
00003444  A3A4A5            mov [0xa5a4],ax
00003447  A6                cmpsb
00003448  A7                cmpsw
00003449  A8A9              test al,0xa9
0000344B  16                push ss
0000344C  00AAABAC          add [bp+si-0x5355],ch
00003450  AD                lodsw
00003451  AE                scasb
00003452  AF                scasw
00003453  0000              add [bx+si],al
00003455  0000              add [bx+si],al
00003457  0000              add [bx+si],al
00003459  0000              add [bx+si],al
0000345B  0000              add [bx+si],al
0000345D  0000              add [bx+si],al
0000345F  0000              add [bx+si],al
00003461  B0B1              mov al,0xb1
00003463  B2B3              mov dl,0xb3
00003465  B4B5              mov ah,0xb5
00003467  B6B7              mov dh,0xb7
00003469  B82626            mov ax,0x2626
0000346C  B9BABB            mov cx,0xbbba
0000346F  BCBDBE            mov sp,0xbebd
00003472  BFC0C1            mov di,0xc1c0
00003475  0000              add [bx+si],al
00003477  0000              add [bx+si],al
00003479  0000              add [bx+si],al
0000347B  0000              add [bx+si],al
0000347D  0000              add [bx+si],al
0000347F  0000              add [bx+si],al
00003481  0002              add [bp+si],al
00003483  0203              add al,[bp+di]
00003485  0100              add [bx+si],ax
00003487  0002              add [bp+si],al
00003489  0203              add al,[bp+di]
0000348B  0101              add [bx+di],ax
0000348D  0102              add [bp+si],ax
0000348F  0200              add al,[bx+si]
00003491  0102              add [bp+si],ax
00003493  0101              add [bx+di],ax
00003495  0101              add [bx+di],ax
00003497  0101              add [bx+di],ax
00003499  0101              add [bx+di],ax
0000349B  0302              add ax,[bp+si]
0000349D  0101              add [bx+di],ax
0000349F  0201              add al,[bx+di]
000034A1  0000              add [bx+si],al
000034A3  0000              add [bx+si],al
000034A5  0000              add [bx+si],al
000034A7  0000              add [bx+si],al
000034A9  0002              add [bp+si],al
000034AB  0000              add [bx+si],al
000034AD  0000              add [bx+si],al
000034AF  0000              add [bx+si],al
000034B1  0000              add [bx+si],al
000034B3  0000              add [bx+si],al
000034B5  0100              add [bx+si],ax
000034B7  0000              add [bx+si],al
000034B9  0000              add [bx+si],al
000034BB  0102              add [bp+si],ax
000034BD  0202              add al,[bp+si]
000034BF  0101              add [bx+di],ax
000034C1  0100              add [bx+si],ax
000034C3  0001              add [bx+di],al
000034C5  0001              add [bx+di],al
000034C7  0100              add [bx+si],ax
000034C9  0002              add [bp+si],al
000034CB  0100              add [bx+si],ax
000034CD  0200              add al,[bx+si]
000034CF  0101              add [bx+di],ax
000034D1  0000              add [bx+si],al
000034D3  0001              add [bx+di],al
000034D5  0100              add [bx+si],ax
000034D7  0000              add [bx+si],al
000034D9  0101              add [bx+di],ax
000034DB  0102              add [bp+si],ax
000034DD  0003              add [bp+di],al
000034DF  0100              add [bx+si],ax
000034E1  050404            add ax,0x404
000034E4  0406              add al,0x6
000034E6  0805              or [di],al
000034E8  0304              add ax,[si]
000034EA  0406              add al,0x6
000034EC  06                push es
000034ED  06                push es
000034EE  050608            add ax,0x806
000034F1  07                pop es
000034F2  050707            add ax,0x707
000034F5  07                pop es
000034F6  07                pop es
000034F7  07                pop es
000034F8  07                pop es
000034F9  07                pop es
000034FA  07                pop es
000034FB  0304              add ax,[si]
000034FD  06                push es
000034FE  06                push es
000034FF  06                push es
00003500  07                pop es
00003501  0808              or [bx+si],cl
00003503  0808              or [bx+si],cl
00003505  0808              or [bx+si],cl
00003507  0808              or [bx+si],cl
00003509  0805              or [di],al
0000350B  0808              or [bx+si],cl
0000350D  0808              or [bx+si],cl
0000350F  0808              or [bx+si],cl
00003511  0808              or [bx+si],cl
00003513  0808              or [bx+si],cl
00003515  07                pop es
00003516  0808              or [bx+si],cl
00003518  0808              or [bx+si],cl
0000351A  0807              or [bx],al
0000351C  050305            add ax,0x503
0000351F  06                push es
00003520  07                pop es
00003521  07                pop es
00003522  0808              or [bx+si],cl
00003524  07                pop es
00003525  0807              or [bx],al
00003527  07                pop es
00003528  0808              or [bx+si],cl
0000352A  050608            add ax,0x806
0000352D  050807            add ax,0x708
00003530  07                pop es
00003531  0808              or [bx+si],cl
00003533  0807              or [bx],al
00003535  06                push es
00003536  0808              or [bx+si],cl
00003538  0807              or [bx],al
0000353A  07                pop es
0000353B  07                pop es
0000353C  0408              add al,0x8
0000353E  0407              add al,0x7
00003540  0800              or [bx+si],al
00003542  17                pop ss
00003543  6E                outsb
00003544  65632E6772        arpl [gs:0x7267],bp
00003549  7000              jo 0x354b
0000354B  0012              add [bp+si],dl
0000354D  686F75            push word 0x756f
00003550  2E677270          {pn} a32 jc 0x35c4
00003554  0000              add [bx+si],al
00003556  0F646D61          pcmpgtb mm5,[di+0x61]
0000355A  6F                outsw
0000355B  752E              jnz 0x358b
0000355D  677270            a32 jc 0x35d0
00003560  0000              add [bx+si],al
00003562  287A6F            sub [bp+si+0x6f],bh
00003565  706E              jo 0x35d5
00003567  2E6D              cs insw
00003569  7364              jnc 0x35cf
0000356B  0000              add [bx+si],al
0000356D  1E                push ds
0000356E  7474              jz 0x35e4
00003570  6C                insb
00003571  312E6772          xor [0x7267],bp
00003575  7000              jo 0x3577
00003577  001F              add [bx],bl
00003579  7474              jz 0x35ef
0000357B  6C                insb
0000357C  322E6772          xor ch,[0x7267]
00003580  7000              jo 0x3582
00003582  0020              add [bx+si],ah
00003584  7474              jz 0x35fa
00003586  6C                insb
00003587  332E6772          xor bp,[0x7267]
0000358B  7000              jo 0x358d
0000358D  0027              add [bx],ah
0000358F  7A65              jpe 0x35f6
00003591  6E                outsb
00003592  642E6D            cs insw
00003595  7364              jnc 0x35fb
00003597  0000              add [bx+si],al
00003599  217761            and [bx+0x61],si
0000359C  6B752E67          imul si,[di+0x2e],0x67
000035A0  7270              jc 0x3612
000035A2  0000              add [bx+si],al
000035A4  0E                push cs
000035A5  61                popa
000035A6  6D                insw
000035A7  652E677270        {pn} a32 jc 0x361c
000035AC  0000              add [bx+si],al
000035AE  106869            adc [bx+si+0x69],ch
000035B1  6D                insw
000035B2  652E677270        {pn} a32 jc 0x3627
000035B7  0000              add [bx+si],al
000035B9  136973            adc bp,[bx+di+0x73]
000035BC  692E67727000      imul bp,[0x7267],0x70
000035C2  001A              add [bp+si],bl
000035C4  6F                outsw
000035C5  7569              jnz 0x3630
000035C7  2E677270          {pn} a32 jc 0x363b
000035CB  0000              add [bx+si],al
000035CD  1C73              sbb al,0x73
000035CF  65692E67727000    imul bp,[gs:0x7267],0x70
000035D6  0022              add [bp+si],ah
000035D8  7975              jns 0x364f
000035DA  7531              jnz 0x360d
000035DC  2E677270          {pn} a32 jc 0x3650
000035E0  0000              add [bx+si],al
000035E2  237975            and di,[bx+di+0x75]
000035E5  7532              jnz 0x3619
000035E7  2E677270          {pn} a32 jc 0x365b
000035EB  0000              add [bx+si],al
000035ED  2479              and al,0x79
000035EF  7575              jnz 0x3666
000035F1  332E6772          xor bp,[0x7267]
000035F5  7000              jo 0x35f7
000035F7  0025              add [di],ah
000035F9  7975              jns 0x3670
000035FB  7534              jnz 0x3631
000035FD  2E677270          {pn} a32 jc 0x3671
00003601  0000              add [bx+si],al
00003603  267975            es jns 0x367b
00003606  7570              jnz 0x3678
00003608  2E677270          {pn} a32 jc 0x367c
0000360C  0000              add [bx+si],al
0000360E  1B6F75            sbb bp,[bx+0x75]
00003611  702E              jo 0x3641
00003613  677270            a32 jc 0x3686
00003616  0000              add [bx+si],al
00003618  146D              adc al,0x6d
0000361A  61                popa
0000361B  6F                outsw
0000361C  702E              jo 0x364c
0000361E  677270            a32 jc 0x3691
00003621  0000              add [bx+si],al
00003623  006761            add [bx+0x61],ah
00003626  6D                insw
00003627  652E62696E        bound bp,[cs:bx+di+0x6e]
0000362C  00                db 0x00
