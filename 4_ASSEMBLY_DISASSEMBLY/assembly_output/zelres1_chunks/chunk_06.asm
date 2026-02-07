00000000  7D1C              jnl 0x1e
00000002  0000              add [bx+si],al
00000004  2660              es pusha
00000006  1E                push ds
00000007  60                pusha
00000008  6C                insb
00000009  70C7              jo 0xffd2
0000000B  72D3              jc 0xffe0
0000000D  7470              jz 0x7f
0000000F  7589              jnz 0xff9a
00000011  751A              jnz 0x2d
00000013  7544              jnz 0x59
00000015  7339              jnc 0x50
00000017  7569              jnz 0x82
00000019  7442              jz 0x5d
0000001B  707B              jo 0x98
0000001D  74A7              jz 0xffc6
0000001F  7492              jz 0xffb3
00000021  752E              jnz 0x51
00000023  C606437CFF        mov byte [0x7c43],0xff
00000028  EB06              jmp 0x30
0000002A  2EC606437C00      mov byte [cs:0x7c43],0x0
00000030  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000035  BE0041            mov si,0x4100
00000038  8CC8              mov ax,cs
0000003A  050020            add ax,0x2000
0000003D  8EC0              mov es,ax
0000003F  BF0070            mov di,0x7000
00000042  B9A400            mov cx,0xa4
00000045  2EFF162630        call word near [cs:0x3026]
0000004A  FA                cli
0000004B  BC0020            mov sp,0x2000
0000004E  FB                sti
0000004F  0E                push cs
00000050  1F                pop ds
00000051  E89F0D            call 0xdf3
00000054  C606E70000        mov byte [0xe7],0x0
00000059  F6064900FF        test byte [0x49],0xff
0000005E  7405              jz 0x65
00000060  C606E80000        mov byte [0xe8],0x0
00000065  2EFF160220        call word near [cs:0x2002]
0000006A  8B3600C0          mov si,[0xc000]
0000006E  46                inc si
0000006F  AC                lodsb
00000070  FEC0              inc al
00000072  75FB              jnz 0x6f
00000074  AC                lodsb
00000075  A2457C            mov [0x7c45],al
00000078  AC                lodsb
00000079  A2467C            mov [0x7c46],al
0000007C  C606447C00        mov byte [0x7c44],0x0
00000081  F606E800FF        test byte [0xe8],0xff
00000086  7533              jnz 0xbb
00000088  F606457C01        test byte [0x7c45],0x1
0000008D  740C              jz 0x9b
0000008F  F606437CFF        test byte [0x7c43],0xff
00000094  7505              jnz 0x9b
00000096  C606447CFF        mov byte [0x7c44],0xff
0000009B  E8150A            call 0xab3
0000009E  E8050A            call 0xaa6
000000A1  2EFF160230        call word near [cs:0x3002]
000000A6  F6064900FF        test byte [0x49],0xff
000000AB  750E              jnz 0xbb
000000AD  1E                push ds
000000AE  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000000B3  BE0030            mov si,0x3000
000000B6  33C0              xor ax,ax
000000B8  CD60              int byte 0x60
000000BA  1F                pop ds
000000BB  FA                cli
000000BC  BC0020            mov sp,0x2000
000000BF  FB                sti
000000C0  0E                push cs
000000C1  1F                pop ds
000000C2  E82C0A            call 0xaf1
000000C5  32C0              xor al,al
000000C7  A21DFF            mov [0xff1d],al
000000CA  A21EFF            mov [0xff1e],al
000000CD  A2E400            mov [0xe4],al
000000D0  A29F00            mov [0x9f],al
000000D3  BB0402            mov bx,0x204
000000D6  32C0              xor al,al
000000D8  B521              mov ch,0x21
000000DA  2EFF160420        call word near [cs:0x2004]
000000DF  BB1C02            mov bx,0x21c
000000E2  32C0              xor al,al
000000E4  B542              mov ch,0x42
000000E6  2EFF160420        call word near [cs:0x2004]
000000EB  BB1C48            mov bx,0x481c
000000EE  32C0              xor al,al
000000F0  B542              mov ch,0x42
000000F2  2EFF160420        call word near [cs:0x2004]
000000F7  2EFF161220        call word near [cs:0x2012]
000000FC  E8770B            call 0xc76
000000FF  2EFF160620        call word near [cs:0x2006]
00000104  2EFF160820        call word near [cs:0x2008]
00000109  2EFF161420        call word near [cs:0x2014]
0000010E  2EFF161620        call word near [cs:0x2016]
00000113  F6069D00FF        test byte [0x9d],0xff
00000118  7411              jz 0x12b
0000011A  BB1CAA            mov bx,0xaa1c
0000011D  32C0              xor al,al
0000011F  B517              mov ch,0x17
00000121  2EFF160420        call word near [cs:0x2004]
00000126  2EFF161820        call word near [cs:0x2018]
0000012B  F6069300FF        test byte [0x93],0xff
00000130  7411              jz 0x143
00000132  BB1CC6            mov bx,0xc61c
00000135  32C0              xor al,al
00000137  B517              mov ch,0x17
00000139  2EFF160420        call word near [cs:0x2004]
0000013E  2EFF161A20        call word near [cs:0x201a]
00000143  8B3600C0          mov si,[0xc000]
00000147  46                inc si
00000148  AC                lodsb
00000149  FEC0              inc al
0000014B  75FB              jnz 0x148
0000014D  46                inc si
0000014E  AC                lodsb
0000014F  A2467C            mov [0x7c46],al
00000152  8B3604C0          mov si,[0xc004]
00000156  2EFF161020        call word near [cs:0x2010]
0000015B  A08000            mov al,[0x80]
0000015E  32E4              xor ah,ah
00000160  D1E0              shl ax,0x0
00000162  D1E0              shl ax,0x0
00000164  D1E0              shl ax,0x0
00000166  0517C0            add ax,0xc017
00000169  A32AFF            mov [0xff2a],ax
0000016C  E8C00A            call 0xc2f
0000016F  F606E800FF        test byte [0xe8],0xff
00000174  7433              jz 0x1a9
00000176  C606E80000        mov byte [0xe8],0x0
0000017B  E83509            call 0xab3
0000017E  BBFC61            mov bx,0x61fc
00000181  53                push bx
00000182  BBAF6E            mov bx,0x6eaf
00000185  53                push bx
00000186  BE236F            mov si,0x6f23
00000189  0E                push cs
0000018A  07                pop es
0000018B  BF00A0            mov di,0xa000
0000018E  B003              mov al,0x3
00000190  2EFF160C01        call word near [cs:0x10c]
00000195  2EFF164020        call word near [cs:0x2040]
0000019A  B80100            mov ax,0x1
0000019D  CD60              int byte 0x60
0000019F  C606427CFF        mov byte [0x7c42],0xff
000001A4  2EFF2604A0        jmp word near [cs:0xa004]
000001A9  0E                push cs
000001AA  07                pop es
000001AB  B0FE              mov al,0xfe
000001AD  BF00E0            mov di,0xe000
000001B0  B9E000            mov cx,0xe0
000001B3  F3AA              rep stosb
000001B5  E8F806            call 0x8b0
000001B8  F606447CFF        test byte [0x7c44],0xff
000001BD  7427              jz 0x1e6
000001BF  C706477C8167      mov word [0x7c47],0x6781
000001C5  F606C20001        test byte [0xc2],0x1
000001CA  7506              jnz 0x1d2
000001CC  C706477CF467      mov word [0x7c47],0x67f4
000001D2  B90400            mov cx,0x4
000001D5  51                push cx
000001D6  2EFF16477C        call word near [cs:0x7c47]
000001DB  E8D206            call 0x8b0
000001DE  59                pop cx
000001DF  E2F4              loop 0x1d5
000001E1  2EFF16477C        call word near [cs:0x7c47]
000001E6  C6064B7C00        mov byte [0x7c4b],0x0
000001EB  F6064900FF        test byte [0x49],0xff
000001F0  740E              jz 0x200
000001F2  1E                push ds
000001F3  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000001F8  BE0030            mov si,0x3000
000001FB  33C0              xor ax,ax
000001FD  CD60              int byte 0x60
000001FF  1F                pop ds
00000200  E8AD06            call 0x8b0
00000203  E8F106            call 0x8f7
00000206  E8B00A            call 0xcb9
00000209  E83700            call 0x243
0000020C  F6064B7CFF        test byte [0x7c4b],0xff
00000211  7503              jnz 0x216
00000213  E8DB00            call 0x2f1
00000216  C6064B7C00        mov byte [0x7c4b],0x0
0000021B  BAFC61            mov dx,0x61fc
0000021E  52                push dx
0000021F  CD61              int byte 0x61
00000221  3C01              cmp al,0x1
00000223  7503              jnz 0x228
00000225  E9050C            jmp 0xe2d
00000228  240C              and al,0xc
0000022A  3C04              cmp al,0x4
0000022C  7503              jnz 0x231
0000022E  E95405            jmp 0x785
00000231  3C08              cmp al,0x8
00000233  7503              jnz 0x238
00000235  E9C005            jmp 0x7f8
00000238  800EE70001        or byte [0xe7],0x1
0000023D  C6064B7CFF        mov byte [0x7c4b],0xff
00000242  C3                ret
00000243  F6061DFFFF        test byte [0xff1d],0xff
00000248  7501              jnz 0x24b
0000024A  C3                ret
0000024B  C6061DFF00        mov byte [0xff1d],0x0
00000250  8A1E8300          mov bl,[0x83]
00000254  80C304            add bl,0x4
00000257  32FF              xor bh,bh
00000259  8BD3              mov dx,bx
0000025B  03168000          add dx,[0x80]
0000025F  02DB              add bl,bl
00000261  02DB              add bl,bl
00000263  02DB              add bl,bl
00000265  80C305            add bl,0x5
00000268  031E2AFF          add bx,[0xff2a]
0000026C  F606C20001        test byte [0xc2],0x1
00000271  753F              jnz 0x2b2
00000273  42                inc dx
00000274  807F08FD          cmp byte [bx+0x8],0xfd
00000278  740F              jz 0x289
0000027A  42                inc dx
0000027B  807F10FD          cmp byte [bx+0x10],0xfd
0000027F  7408              jz 0x289
00000281  42                inc dx
00000282  807F18FD          cmp byte [bx+0x18],0xfd
00000286  7401              jz 0x289
00000288  C3                ret
00000289  E80C08            call 0xa98
0000028C  8A4406            mov al,[si+0x6]
0000028F  24C0              and al,0xc0
00000291  7401              jz 0x294
00000293  C3                ret
00000294  8A4402            mov al,[si+0x2]
00000297  8A6405            mov ah,[si+0x5]
0000029A  50                push ax
0000029B  C6440507          mov byte [si+0x5],0x7
0000029F  804C0280          or byte [si+0x2],0x80
000002A3  804C0401          or byte [si+0x4],0x1
000002A7  E8B400            call 0x35e
000002AA  58                pop ax
000002AB  886405            mov [si+0x5],ah
000002AE  884402            mov [si+0x2],al
000002B1  C3                ret
000002B2  4A                dec dx
000002B3  807FF8FD          cmp byte [bx-0x8],0xfd
000002B7  740F              jz 0x2c8
000002B9  4A                dec dx
000002BA  807FF0FD          cmp byte [bx-0x10],0xfd
000002BE  7408              jz 0x2c8
000002C0  4A                dec dx
000002C1  807FE8FD          cmp byte [bx-0x18],0xfd
000002C5  7401              jz 0x2c8
000002C7  C3                ret
000002C8  E8CD07            call 0xa98
000002CB  8A4406            mov al,[si+0x6]
000002CE  24C0              and al,0xc0
000002D0  7401              jz 0x2d3
000002D2  C3                ret
000002D3  8A4402            mov al,[si+0x2]
000002D6  8A6405            mov ah,[si+0x5]
000002D9  50                push ax
000002DA  C6440507          mov byte [si+0x5],0x7
000002DE  8064027F          and byte [si+0x2],0x7f
000002E2  804C0401          or byte [si+0x4],0x1
000002E6  E87500            call 0x35e
000002E9  58                pop ax
000002EA  886405            mov [si+0x5],ah
000002ED  884402            mov [si+0x2],al
000002F0  C3                ret
000002F1  8A1E8300          mov bl,[0x83]
000002F5  80C304            add bl,0x4
000002F8  32FF              xor bh,bh
000002FA  8BD3              mov dx,bx
000002FC  03168000          add dx,[0x80]
00000300  02DB              add bl,bl
00000302  02DB              add bl,bl
00000304  02DB              add bl,bl
00000306  80C305            add bl,0x5
00000309  031E2AFF          add bx,[0xff2a]
0000030D  F606C20001        test byte [0xc2],0x1
00000312  7525              jnz 0x339
00000314  42                inc dx
00000315  42                inc dx
00000316  807F10FD          cmp byte [bx+0x10],0xfd
0000031A  7401              jz 0x31d
0000031C  C3                ret
0000031D  E87807            call 0xa98
00000320  F6440280          test byte [si+0x2],0x80
00000324  7501              jnz 0x327
00000326  C3                ret
00000327  F6440680          test byte [si+0x6],0x80
0000032B  7501              jnz 0x32e
0000032D  C3                ret
0000032E  804C0401          or byte [si+0x4],0x1
00000332  C6065C7CFF        mov byte [0x7c5c],0xff
00000337  EB25              jmp 0x35e
00000339  4A                dec dx
0000033A  4A                dec dx
0000033B  807FF0FD          cmp byte [bx-0x10],0xfd
0000033F  7401              jz 0x342
00000341  C3                ret
00000342  E85307            call 0xa98
00000345  F6440280          test byte [si+0x2],0x80
00000349  7401              jz 0x34c
0000034B  C3                ret
0000034C  F6440680          test byte [si+0x6],0x80
00000350  7501              jnz 0x353
00000352  C3                ret
00000353  804C0401          or byte [si+0x4],0x1
00000357  C6065C7CFF        mov byte [0x7c5c],0xff
0000035C  EB00              jmp 0x35e
0000035E  8064067F          and byte [si+0x6],0x7f
00000362  8A4407            mov al,[si+0x7]
00000365  56                push si
00000366  50                push ax
00000367  C6061AFF28        mov byte [0xff1a],0x28
0000036C  E84405            call 0x8b3
0000036F  C60675FF1E        mov byte [0xff75],0x1e
00000374  B81807            mov ax,0x718
00000377  F606C20001        test byte [0xc2],0x1
0000037C  7503              jnz 0x381
0000037E  B8180B            mov ax,0xb18
00000381  A34C7C            mov [0x7c4c],ax
00000384  33FF              xor di,di
00000386  B95816            mov cx,0x1658
00000389  2EFF162620        call word near [cs:0x2026]
0000038E  C6061DFF00        mov byte [0xff1d],0x0
00000393  5B                pop bx
00000394  A14C7C            mov ax,[0x7c4c]
00000397  E82F00            call 0x3c9
0000039A  A14C7C            mov ax,[0x7c4c]
0000039D  33FF              xor di,di
0000039F  B95816            mov cx,0x1658
000003A2  2EFF162820        call word near [cs:0x2028]
000003A7  5E                pop si
000003A8  C6061DFF00        mov byte [0xff1d],0x0
000003AD  0E                push cs
000003AE  07                pop es
000003AF  B0FE              mov al,0xfe
000003B1  BF00E0            mov di,0xe000
000003B4  B9E000            mov cx,0xe0
000003B7  F3AA              rep stosb
000003B9  C6065C7C00        mov byte [0x7c5c],0x0
000003BE  C6061DFF00        mov byte [0xff1d],0x0
000003C3  C6061EFF00        mov byte [0xff1e],0x0
000003C8  C3                ret
000003C9  800EE70001        or byte [0xe7],0x1
000003CE  A3507C            mov [0x7c50],ax
000003D1  A34E7C            mov [0x7c4e],ax
000003D4  32FF              xor bh,bh
000003D6  03DB              add bx,bx
000003D8  031E0DC0          add bx,[0xc00d]
000003DC  8B37              mov si,[bx]
000003DE  C606537C00        mov byte [0x7c53],0x0
000003E3  C606547C00        mov byte [0x7c54],0x0
000003E8  C606557C00        mov byte [0x7c55],0x0
000003ED  C606577C00        mov byte [0x7c57],0x0
000003F2  8936587C          mov [0x7c58],si
000003F6  E81402            call 0x60d
000003F9  8AC1              mov al,cl
000003FB  A2567C            mov [0x7c56],al
000003FE  3C08              cmp al,0x8
00000400  7202              jc 0x404
00000402  B008              mov al,0x8
00000404  50                push ax
00000405  B10A              mov cl,0xa
00000407  F6E1              mul cl
00000409  0406              add al,0x6
0000040B  8AC8              mov cl,al
0000040D  B52C              mov ch,0x2c
0000040F  890E5A7C          mov [0x7c5a],cx
00000413  B056              mov al,0x56
00000415  2AC1              sub al,cl
00000417  8B1E4E7C          mov bx,[0x7c4e]
0000041B  02D8              add bl,al
0000041D  58                pop ax
0000041E  24FE              and al,0xfe
00000420  02C0              add al,al
00000422  02C0              add al,al
00000424  02C0              add al,al
00000426  B440              mov ah,0x40
00000428  2AE0              sub ah,al
0000042A  D0EC              shr ah,0x0
0000042C  2ADC              sub bl,ah
0000042E  891E4E7C          mov [0x7c4e],bx
00000432  02FF              add bh,bh
00000434  B0FF              mov al,0xff
00000436  2EFF160020        call word near [cs:0x2000]
0000043B  8B36587C          mov si,[0x7c58]
0000043F  AC                lodsb
00000440  8936587C          mov [0x7c58],si
00000444  3C2F              cmp al,0x2f
00000446  7503              jnz 0x44b
00000448  E99F00            jmp 0x4ea
0000044B  3C81              cmp al,0x81
0000044D  7503              jnz 0x452
0000044F  E90702            jmp 0x659
00000452  3C83              cmp al,0x83
00000454  7503              jnz 0x459
00000456  E93002            jmp 0x689
00000459  3C85              cmp al,0x85
0000045B  7503              jnz 0x460
0000045D  E93902            jmp 0x699
00000460  3C87              cmp al,0x87
00000462  7503              jnz 0x467
00000464  E93F02            jmp 0x6a6
00000467  3C89              cmp al,0x89
00000469  7503              jnz 0x46e
0000046B  E94302            jmp 0x6b1
0000046E  3C8B              cmp al,0x8b
00000470  7503              jnz 0x475
00000472  E9DC01            jmp 0x651
00000475  3CFF              cmp al,0xff
00000477  7503              jnz 0x47c
00000479  E92901            jmp 0x5a5
0000047C  50                push ax
0000047D  8B0E4E7C          mov cx,[0x7c4e]
00000481  32FF              xor bh,bh
00000483  8ADD              mov bl,ch
00000485  03DB              add bx,bx
00000487  03DB              add bx,bx
00000489  03DB              add bx,bx
0000048B  A0537C            mov al,[0x7c53]
0000048E  32E4              xor ah,ah
00000490  03D8              add bx,ax
00000492  83C304            add bx,0x4
00000495  A0547C            mov al,[0x7c54]
00000498  B20A              mov dl,0xa
0000049A  F6E2              mul dl
0000049C  02C8              add cl,al
0000049E  80C104            add cl,0x4
000004A1  58                pop ax
000004A2  53                push bx
000004A3  8AD8              mov bl,al
000004A5  80EB20            sub bl,0x20
000004A8  32FF              xor bh,bh
000004AA  8A97827B          mov dl,[bx+0x7b82]
000004AE  8AF7              mov dh,bh
000004B0  5B                pop bx
000004B1  50                push ax
000004B2  2BDA              sub bx,dx
000004B4  B401              mov ah,0x1
000004B6  2EFF162220        call word near [cs:0x2022]
000004BB  58                pop ax
000004BC  8AD8              mov bl,al
000004BE  80EB20            sub bl,0x20
000004C1  32FF              xor bh,bh
000004C3  8A8FE27B          mov cl,[bx+0x7be2]
000004C7  000E537C          add [0x7c53],cl
000004CB  3C20              cmp al,0x20
000004CD  7403              jz 0x4d2
000004CF  E969FF            jmp 0x43b
000004D2  8B36587C          mov si,[0x7c58]
000004D6  E81101            call 0x5ea
000004D9  8A16537C          mov dl,[0x7c53]
000004DD  32F6              xor dh,dh
000004DF  03D1              add dx,cx
000004E1  81FAA800          cmp dx,0xa8
000004E5  7303              jnc 0x4ea
000004E7  E951FF            jmp 0x43b
000004EA  C606537C00        mov byte [0x7c53],0x0
000004EF  FE06547C          inc byte [0x7c54]
000004F3  803E547C08        cmp byte [0x7c54],0x8
000004F8  7520              jnz 0x51a
000004FA  FE0E547C          dec byte [0x7c54]
000004FE  B90A00            mov cx,0xa
00000501  51                push cx
00000502  8B1E4E7C          mov bx,[0x7c4e]
00000506  80C304            add bl,0x4
00000509  8B0E5A7C          mov cx,[0x7c5a]
0000050D  D0ED              shr ch,0x0
0000050F  80E908            sub cl,0x8
00000512  2EFF162420        call word near [cs:0x2024]
00000517  59                pop cx
00000518  E2E7              loop 0x501
0000051A  FE06577C          inc byte [0x7c57]
0000051E  803E577C07        cmp byte [0x7c57],0x7
00000523  7303              jnc 0x528
00000525  E913FF            jmp 0x43b
00000528  803E567C08        cmp byte [0x7c56],0x8
0000052D  7503              jnz 0x532
0000052F  E909FF            jmp 0x43b
00000532  802E567C07        sub byte [0x7c56],0x7
00000537  8B0E4E7C          mov cx,[0x7c4e]
0000053B  32FF              xor bh,bh
0000053D  8ADD              mov bl,ch
0000053F  03DB              add bx,bx
00000541  03DB              add bx,bx
00000543  03DB              add bx,bx
00000545  83C354            add bx,0x54
00000548  80C14A            add cl,0x4a
0000054B  51                push cx
0000054C  53                push bx
0000054D  B87C02            mov ax,0x27c
00000550  2EFF162220        call word near [cs:0x2022]
00000555  C6061DFF00        mov byte [0xff1d],0x0
0000055A  C6061EFF00        mov byte [0xff1e],0x0
0000055F  5B                pop bx
00000560  59                pop cx
00000561  51                push cx
00000562  53                push bx
00000563  E8E101            call 0x747
00000566  E84703            call 0x8b0
00000569  5B                pop bx
0000056A  59                pop cx
0000056B  F6065C7CFF        test byte [0x7c5c],0xff
00000570  7508              jnz 0x57a
00000572  F6061EFFFF        test byte [0xff1e],0xff
00000577  7401              jz 0x57a
00000579  C3                ret
0000057A  F6061DFFFF        test byte [0xff1d],0xff
0000057F  74E0              jz 0x561
00000581  D1EB              shr bx,0x0
00000583  D1EB              shr bx,0x0
00000585  8AFB              mov bh,bl
00000587  8AD9              mov bl,cl
00000589  32C0              xor al,al
0000058B  B90802            mov cx,0x208
0000058E  2EFF160020        call word near [cs:0x2000]
00000593  C6061DFF00        mov byte [0xff1d],0x0
00000598  C606577C00        mov byte [0x7c57],0x0
0000059D  C60675FF1D        mov byte [0xff75],0x1d
000005A2  E996FE            jmp 0x43b
000005A5  C6061DFF00        mov byte [0xff1d],0x0
000005AA  C6061EFF00        mov byte [0xff1e],0x0
000005AF  E89501            call 0x747
000005B2  E8FB02            call 0x8b0
000005B5  F6061DFFFF        test byte [0xff1d],0xff
000005BA  7401              jz 0x5bd
000005BC  C3                ret
000005BD  F6061EFFFF        test byte [0xff1e],0xff
000005C2  7401              jz 0x5c5
000005C4  C3                ret
000005C5  F60617FFFF        test byte [0xff17],0xff
000005CA  75E3              jnz 0x5af
000005CC  E87801            call 0x747
000005CF  E8DE02            call 0x8b0
000005D2  F6061DFFFF        test byte [0xff1d],0xff
000005D7  7401              jz 0x5da
000005D9  C3                ret
000005DA  F6061EFFFF        test byte [0xff1e],0xff
000005DF  7401              jz 0x5e2
000005E1  C3                ret
000005E2  F60617FFFF        test byte [0xff17],0xff
000005E7  74E3              jz 0x5cc
000005E9  C3                ret
000005EA  33C9              xor cx,cx
000005EC  AC                lodsb
000005ED  0AC0              or al,al
000005EF  7901              jns 0x5f2
000005F1  C3                ret
000005F2  3C20              cmp al,0x20
000005F4  7501              jnz 0x5f7
000005F6  C3                ret
000005F7  3C2F              cmp al,0x2f
000005F9  7501              jnz 0x5fc
000005FB  C3                ret
000005FC  2C20              sub al,0x20
000005FE  72EC              jc 0x5ec
00000600  8AD8              mov bl,al
00000602  32FF              xor bh,bh
00000604  2E028FE27B        add cl,[cs:bx+0x7be2]
00000609  12EF              adc ch,bh
0000060B  EBDF              jmp 0x5ec
0000060D  33C9              xor cx,cx
0000060F  33D2              xor dx,dx
00000611  AC                lodsb
00000612  0AC0              or al,al
00000614  7834              js 0x64a
00000616  3C2F              cmp al,0x2f
00000618  7505              jnz 0x61f
0000061A  41                inc cx
0000061B  33D2              xor dx,dx
0000061D  EBF2              jmp 0x611
0000061F  51                push cx
00000620  8AD8              mov bl,al
00000622  80EB20            sub bl,0x20
00000625  32FF              xor bh,bh
00000627  8A8FE27B          mov cl,[bx+0x7be2]
0000062B  8AEF              mov ch,bh
0000062D  03D1              add dx,cx
0000062F  59                pop cx
00000630  3C20              cmp al,0x20
00000632  75DD              jnz 0x611
00000634  51                push cx
00000635  56                push si
00000636  52                push dx
00000637  E8B0FF            call 0x5ea
0000063A  03D1              add dx,cx
0000063C  81FAA800          cmp dx,0xa8
00000640  5A                pop dx
00000641  5E                pop si
00000642  59                pop cx
00000643  72CC              jc 0x611
00000645  33D2              xor dx,dx
00000647  41                inc cx
00000648  EBC7              jmp 0x611
0000064A  0BD2              or dx,dx
0000064C  7501              jnz 0x64f
0000064E  C3                ret
0000064F  41                inc cx
00000650  C3                ret
00000651  800E040080        or byte [0x4],0x80
00000656  E99804            jmp 0xaf1
00000659  8B1E4C7C          mov bx,[0x7c4c]
0000065D  02FF              add bh,bh
0000065F  81C33F19          add bx,0x193f
00000663  53                push bx
00000664  B9190C            mov cx,0xc19
00000667  B0FF              mov al,0xff
00000669  2EFF160020        call word near [cs:0x2000]
0000066E  5B                pop bx
0000066F  81C30301          add bx,0x103
00000673  891E54FF          mov [0xff54],bx
00000677  E85D0E            call 0x14d7
0000067A  A14C7C            mov ax,[0x7c4c]
0000067D  B30D              mov bl,0xd
0000067F  7303              jnc 0x684
00000681  E945FD            jmp 0x3c9
00000684  B30C              mov bl,0xc
00000686  E940FD            jmp 0x3c9
00000689  800E340080        or byte [0x34],0x80
0000068E  C6069A00FF        mov byte [0x9a],0xff
00000693  E85B04            call 0xaf1
00000696  E90CFF            jmp 0x5a5
00000699  C6065C7CFF        mov byte [0x7c5c],0xff
0000069E  B304              mov bl,0x4
000006A0  A1507C            mov ax,[0x7c50]
000006A3  E923FD            jmp 0x3c9
000006A6  E8FCFE            call 0x5a5
000006A9  B305              mov bl,0x5
000006AB  A1507C            mov ax,[0x7c50]
000006AE  E918FD            jmp 0x3c9
000006B1  8B1E4C7C          mov bx,[0x7c4c]
000006B5  02FF              add bh,bh
000006B7  81C33218          add bx,0x1832
000006BB  53                push bx
000006BC  B91912            mov cx,0x1219
000006BF  B0FF              mov al,0xff
000006C1  2EFF160020        call word near [cs:0x2000]
000006C6  5B                pop bx
000006C7  81C30302          add bx,0x203
000006CB  891E54FF          mov [0xff54],bx
000006CF  E84000            call 0x712
000006D2  A14C7C            mov ax,[0x7c4c]
000006D5  B306              mov bl,0x6
000006D7  7303              jnc 0x6dc
000006D9  E9EDFC            jmp 0x3c9
000006DC  8B168B00          mov dx,[0x8b]
000006E0  81EAC409          sub dx,0x9c4
000006E4  B307              mov bl,0x7
000006E6  7303              jnc 0x6eb
000006E8  E9DEFC            jmp 0x3c9
000006EB  89168B00          mov [0x8b],dx
000006EF  2EFF161420        call word near [cs:0x2014]
000006F4  800E340040        or byte [0x34],0x40
000006F9  BEA100            mov si,0xa1
000006FC  F604FF            test byte [si],0xff
000006FF  7403              jz 0x704
00000701  46                inc si
00000702  EBF8              jmp 0x6fc
00000704  C60405            mov byte [si],0x5
00000707  E8E703            call 0xaf1
0000070A  A14C7C            mov ax,[0x7c4c]
0000070D  B308              mov bl,0x8
0000070F  E9B7FC            jmp 0x3c9
00000712  C60652FF02        mov byte [0xff52],0x2
00000717  C60653FF02        mov byte [0xff53],0x2
0000071C  B90200            mov cx,0x2
0000071F  BE3667            mov si,0x6736
00000722  E8F90D            call 0x151e
00000725  C60656FF00        mov byte [0xff56],0x0
0000072A  32DB              xor bl,bl
0000072C  E8190C            call 0x1348
0000072F  7302              jnc 0x733
00000731  B301              mov bl,0x1
00000733  0ADB              or bl,bl
00000735  7501              jnz 0x738
00000737  C3                ret
00000738  F9                stc
00000739  C3                ret
0000073A  54                push sp
0000073B  61                popa
0000073C  6B65004E          imul sp,[di+0x0],0x4e
00000740  6F                outsw
00000741  205461            and [si+0x61],dl
00000744  6B6500A1          imul sp,[di+0x0],0xffffffffffffffa1
00000748  4E                dec si
00000749  7C80              jl 0x6cb
0000074B  EC                in al,dx
0000074C  06                push es
0000074D  8B0E5A7C          mov cx,[0x7c5a]
00000751  02C1              add al,cl
00000753  3C56              cmp al,0x56
00000755  7301              jnc 0x758
00000757  C3                ret
00000758  50                push ax
00000759  32E4              xor ah,ah
0000075B  2C4E              sub al,0x4e
0000075D  B90800            mov cx,0x8
00000760  F6F1              div cl
00000762  8AC8              mov cl,al
00000764  58                pop ax
00000765  0E                push cs
00000766  07                pop es
00000767  BF00E0            mov di,0xe000
0000076A  8AC4              mov al,ah
0000076C  B208              mov dl,0x8
0000076E  F6E2              mul dl
00000770  03F8              add di,ax
00000772  B0FF              mov al,0xff
00000774  51                push cx
00000775  57                push di
00000776  B91600            mov cx,0x16
00000779  AA                stosb
0000077A  83C707            add di,0x7
0000077D  E2FA              loop 0x779
0000077F  5F                pop di
00000780  47                inc di
00000781  59                pop cx
00000782  E2F0              loop 0x774
00000784  C3                ret
00000785  33DB              xor bx,bx
00000787  8A1E8300          mov bl,[0x83]
0000078B  80C303            add bl,0x3
0000078E  03DB              add bx,bx
00000790  03DB              add bx,bx
00000792  03DB              add bx,bx
00000794  031E2AFF          add bx,[0xff2a]
00000798  8A4707            mov al,[bx+0x7]
0000079B  E8D400            call 0x872
0000079E  7501              jnz 0x7a1
000007A0  C3                ret
000007A1  33DB              xor bx,bx
000007A3  8A1E8300          mov bl,[0x83]
000007A7  80C304            add bl,0x4
000007AA  031E8000          add bx,[0x80]
000007AE  4B                dec bx
000007AF  E8E200            call 0x894
000007B2  7401              jz 0x7b5
000007B4  C3                ret
000007B5  FE06E700          inc byte [0xe7]
000007B9  8026E70003        and byte [0xe7],0x3
000007BE  800EC20001        or byte [0xc2],0x1
000007C3  803E83000B        cmp byte [0x83],0xb
000007C8  7205              jc 0x7cf
000007CA  FE0E8300          dec byte [0x83]
000007CE  C3                ret
000007CF  F7068000FFFF      test word [0x80],0xffff
000007D5  7505              jnz 0x7dc
000007D7  FE0E8300          dec byte [0x83]
000007DB  C3                ret
000007DC  FF0E8000          dec word [0x80]
000007E0  832E2AFF08        sub word [0xff2a],0x8
000007E5  2EFF160630        call word near [cs:0x3006]
000007EA  803E457C01        cmp byte [0x7c45],0x1
000007EF  7401              jz 0x7f2
000007F1  C3                ret
000007F2  2EFF160830        call word near [cs:0x3008]
000007F7  C3                ret
000007F8  33DB              xor bx,bx
000007FA  8A1E8300          mov bl,[0x83]
000007FE  80C306            add bl,0x6
00000801  03DB              add bx,bx
00000803  03DB              add bx,bx
00000805  03DB              add bx,bx
00000807  031E2AFF          add bx,[0xff2a]
0000080B  8A4707            mov al,[bx+0x7]
0000080E  E86100            call 0x872
00000811  7501              jnz 0x814
00000813  C3                ret
00000814  33DB              xor bx,bx
00000816  8A1E8300          mov bl,[0x83]
0000081A  80C304            add bl,0x4
0000081D  031E8000          add bx,[0x80]
00000821  43                inc bx
00000822  E86F00            call 0x894
00000825  7401              jz 0x828
00000827  C3                ret
00000828  FE06E700          inc byte [0xe7]
0000082C  8026E70003        and byte [0xe7],0x3
00000831  8026C200FE        and byte [0xc2],0xfe
00000836  803E830010        cmp byte [0x83],0x10
0000083B  7305              jnc 0x842
0000083D  FE068300          inc byte [0x83]
00000841  C3                ret
00000842  A102C0            mov ax,[0xc002]
00000845  2D2300            sub ax,0x23
00000848  8B1E8000          mov bx,[0x80]
0000084C  43                inc bx
0000084D  3BC3              cmp ax,bx
0000084F  7505              jnz 0x856
00000851  FE068300          inc byte [0x83]
00000855  C3                ret
00000856  FF068000          inc word [0x80]
0000085A  83062AFF08        add word [0xff2a],0x8
0000085F  2EFF160A30        call word near [cs:0x300a]
00000864  803E457C01        cmp byte [0x7c45],0x1
00000869  7401              jz 0x86c
0000086B  C3                ret
0000086C  2EFF160C30        call word near [cs:0x300c]
00000871  C3                ret
00000872  2E8E062CFF        mov es,word [cs:0xff2c]
00000877  268B360280        mov si,[es:0x8002]
0000087C  268A0C            mov cl,[es:si]
0000087F  0AC9              or cl,cl
00000881  740C              jz 0x88f
00000883  32ED              xor ch,ch
00000885  46                inc si
00000886  263A04            cmp al,[es:si]
00000889  7501              jnz 0x88c
0000088B  C3                ret
0000088C  46                inc si
0000088D  E2F7              loop 0x886
0000088F  F6D1              not cl
00000891  0AC9              or cl,cl
00000893  C3                ret
00000894  8B360FC0          mov si,[0xc00f]
00000898  8B04              mov ax,[si]
0000089A  3DFFFF            cmp ax,0xffff
0000089D  7501              jnz 0x8a0
0000089F  C3                ret
000008A0  2BC3              sub ax,bx
000008A2  7507              jnz 0x8ab
000008A4  F6440640          test byte [si+0x6],0x40
000008A8  7401              jz 0x8ab
000008AA  C3                ret
000008AB  83C608            add si,0x8
000008AE  EBE8              jmp 0x898
000008B0  E86D02            call 0xb20
000008B3  E8C300            call 0x979
000008B6  E89B00            call 0x954
000008B9  2EFF160430        call word near [cs:0x3004]
000008BE  8A0E33FF          mov cl,[0xff33]
000008C2  B004              mov al,0x4
000008C4  F6E1              mul cl
000008C6  50                push ax
000008C7  2EFF161001        call word near [cs:0x110]
000008CC  2EFF161201        call word near [cs:0x112]
000008D1  2EFF161401        call word near [cs:0x114]
000008D6  2EFF161601        call word near [cs:0x116]
000008DB  2EFF161801        call word near [cs:0x118]
000008E0  2EFF161E01        call word near [cs:0x11e]
000008E5  7303              jnc 0x8ea
000008E7  E8AC0C            call 0x1596
000008EA  58                pop ax
000008EB  38061AFF          cmp [0xff1a],al
000008EF  72D5              jc 0x8c6
000008F1  C6061AFF00        mov byte [0xff1a],0x0
000008F6  C3                ret
000008F7  F70618FF0100      test word [0xff18],0x1
000008FD  7501              jnz 0x900
000008FF  C3                ret
00000900  C60675FF0B        mov byte [0xff75],0xb
00000905  2EFF160220        call word near [cs:0x2002]
0000090A  E82F00            call 0x93c
0000090D  2EFF1602A0        call word near [cs:0xa002]
00000912  E82700            call 0x93c
00000915  2EFF160220        call word near [cs:0x2002]
0000091A  E88C01            call 0xaa9
0000091D  2EFF160230        call word near [cs:0x3002]
00000922  0E                push cs
00000923  07                pop es
00000924  B0FE              mov al,0xfe
00000926  BF00E0            mov di,0xe000
00000929  B9E000            mov cx,0xe0
0000092C  F3AA              rep stosb
0000092E  E882FF            call 0x8b3
00000931  C6061DFF00        mov byte [0xff1d],0x0
00000936  C6061EFF00        mov byte [0xff1e],0x0
0000093B  C3                ret
0000093C  2E8E062CFF        mov es,word [cs:0xff2c]
00000941  BF00C0            mov di,0xc000
00000944  BE00A0            mov si,0xa000
00000947  B90008            mov cx,0x800
0000094A  268B05            mov ax,[es:di]
0000094D  A5                movsw
0000094E  8944FE            mov [si-0x2],ax
00000951  E2F7              loop 0x94a
00000953  C3                ret
00000954  A08300            mov al,[0x83]
00000957  3C1B              cmp al,0x1b
00000959  7201              jc 0x95c
0000095B  C3                ret
0000095C  02C0              add al,al
0000095E  02C0              add al,al
00000960  02C0              add al,al
00000962  0405              add al,0x5
00000964  32E4              xor ah,ah
00000966  0500E0            add ax,0xe000
00000969  8BF8              mov di,ax
0000096B  0E                push cs
0000096C  07                pop es
0000096D  B0FF              mov al,0xff
0000096F  AA                stosb
00000970  AA                stosb
00000971  AA                stosb
00000972  83C705            add di,0x5
00000975  AA                stosb
00000976  AA                stosb
00000977  AA                stosb
00000978  C3                ret
00000979  0E                push cs
0000097A  07                pop es
0000097B  33C0              xor ax,ax
0000097D  A08300            mov al,[0x83]
00000980  0404              add al,0x4
00000982  03C0              add ax,ax
00000984  03C0              add ax,ax
00000986  03C0              add ax,ax
00000988  050500            add ax,0x5
0000098B  03062AFF          add ax,[0xff2a]
0000098F  50                push ax
00000990  8BF0              mov si,ax
00000992  BF747C            mov di,0x7c74
00000995  A5                movsw
00000996  A4                movsb
00000997  83C605            add si,0x5
0000099A  B90300            mov cx,0x3
0000099D  A5                movsw
0000099E  A4                movsb
0000099F  33D2              xor dx,dx
000009A1  8A168300          mov dl,[0x83]
000009A5  80C204            add dl,0x4
000009A8  03168000          add dx,[0x80]
000009AC  52                push dx
000009AD  BE747C            mov si,0x7c74
000009B0  B90200            mov cx,0x2
000009B3  56                push si
000009B4  8A04              mov al,[si]
000009B6  3CFD              cmp al,0xfd
000009B8  7512              jnz 0x9cc
000009BA  E8DB00            call 0xa98
000009BD  8A4403            mov al,[si+0x3]
000009C0  3CFD              cmp al,0xfd
000009C2  7508              jnz 0x9cc
000009C4  83C608            add si,0x8
000009C7  E8D200            call 0xa9c
000009CA  EBF1              jmp 0x9bd
000009CC  5E                pop si
000009CD  8804              mov [si],al
000009CF  83C603            add si,0x3
000009D2  42                inc dx
000009D3  E2DE              loop 0x9b3
000009D5  BE747C            mov si,0x7c74
000009D8  2EFF160E30        call word near [cs:0x300e]
000009DD  5A                pop dx
000009DE  4A                dec dx
000009DF  8916497C          mov [0x7c49],dx
000009E3  5E                pop si
000009E4  0E                push cs
000009E5  07                pop es
000009E6  BF7A7C            mov di,0x7c7a
000009E9  8A44F8            mov al,[si-0x8]
000009EC  AA                stosb
000009ED  8A04              mov al,[si]
000009EF  AA                stosb
000009F0  8A4408            mov al,[si+0x8]
000009F3  AA                stosb
000009F4  8B360FC0          mov si,[0xc00f]
000009F8  E88000            call 0xa7b
000009FB  0AC0              or al,al
000009FD  7416              jz 0xa15
000009FF  50                push ax
00000A00  2EFF161430        call word near [cs:0x3014]
00000A05  5B                pop bx
00000A06  2E8E062CFF        mov es,word [cs:0xff2c]
00000A0B  56                push si
00000A0C  BE747C            mov si,0x7c74
00000A0F  2EFF161030        call word near [cs:0x3010]
00000A14  5E                pop si
00000A15  83C608            add si,0x8
00000A18  833CFF            cmp word [si],0xffffffffffffffff
00000A1B  75DB              jnz 0x9f8
00000A1D  BE3B6A            mov si,0x6a3b
00000A20  F606C20001        test byte [0xc2],0x1
00000A25  7503              jnz 0xa2a
00000A27  BE596A            mov si,0x6a59
00000A2A  33C0              xor ax,ax
00000A2C  A0E700            mov al,[0xe7]
00000A2F  03C0              add ax,ax
00000A31  8BD8              mov bx,ax
00000A33  03C0              add ax,ax
00000A35  03C3              add ax,bx
00000A37  03F0              add si,ax
00000A39  2EFF161230        call word near [cs:0x3012]
00000A3E  C3                ret
00000A3F  0002              add [bp+si],al
00000A41  0401              add al,0x1
00000A43  0305              add ax,[di]
00000A45  06                push es
00000A46  080A              or [bp+si],cl
00000A48  07                pop es
00000A49  090B              or [bp+di],cx
00000A4B  000C              add [si],cl
00000A4D  0E                push cs
00000A4E  010D              add [di],cx
00000A50  0F06              clts
00000A52  1012              adc [bp+si],dl
00000A54  07                pop es
00000A55  1113              adc [bp+di],dx
00000A57  1416              adc al,0x16
00000A59  1815              sbb [di],dl
00000A5B  17                pop ss
00000A5C  191A              sbb [bp+si],bx
00000A5E  1C1E              sbb al,0x1e
00000A60  1B1D              sbb bx,[di]
00000A62  1F                pop ds
00000A63  2022              and [bp+si],ah
00000A65  2421              and al,0x21
00000A67  2325              and sp,[di]
00000A69  1A26281B          sbb ah,[0x1b28]
00000A6D  27                daa
00000A6E  2920              sub [bx+si],sp
00000A70  2A2C              sub ch,[si]
00000A72  212B              and [bp+di],bp
00000A74  2D1416            sub ax,0x1614
00000A77  1815              sbb [di],dl
00000A79  17                pop ss
00000A7A  19B90300          sbb [bx+di+0x3],di
00000A7E  8B16497C          mov dx,[0x7c49]
00000A82  BF7A7C            mov di,0x7c7a
00000A85  803DFD            cmp byte [di],0xfd
00000A88  7507              jnz 0xa91
00000A8A  8AC1              mov al,cl
00000A8C  3B14              cmp dx,[si]
00000A8E  7501              jnz 0xa91
00000A90  C3                ret
00000A91  47                inc di
00000A92  42                inc dx
00000A93  E2F0              loop 0xa85
00000A95  32C0              xor al,al
00000A97  C3                ret
00000A98  8B360FC0          mov si,[0xc00f]
00000A9C  3B14              cmp dx,[si]
00000A9E  7501              jnz 0xaa1
00000AA0  C3                ret
00000AA1  83C608            add si,0x8
00000AA4  EBF6              jmp 0xa9c
00000AA6  E8F902            call 0xda2
00000AA9  A014FF            mov al,[0xff14]
00000AAC  1E                push ds
00000AAD  FF1EE96A          call word far [0x6ae9]
00000AB1  1F                pop ds
00000AB2  C3                ret
00000AB3  A0457C            mov al,[0x7c45]
00000AB6  2401              and al,0x1
00000AB8  B10B              mov cl,0xb
00000ABA  F6E1              mul cl
00000ABC  8BF0              mov si,ax
00000ABE  81C6D36A          add si,0x6ad3
00000AC2  8CC8              mov ax,cs
00000AC4  050020            add ax,0x2000
00000AC7  A3EB6A            mov [0x6aeb],ax
00000ACA  8EC0              mov es,ax
00000ACC  BF0033            mov di,0x3300
00000ACF  B003              mov al,0x3
00000AD1  2EFF160C01        call word near [cs:0x10c]
00000AD6  C3                ret
00000AD7  0109              add [bx+di],cx
00000AD9  59                pop cx
00000ADA  4D                dec bp
00000ADB  50                push ax
00000ADC  44                inc sp
00000ADD  2E42              cs inc dx
00000ADF  49                dec cx
00000AE0  4E                dec si
00000AE1  0001              add [bx+di],al
00000AE3  0A434B            or al,[bp+di+0x4b]
00000AE6  50                push ax
00000AE7  44                inc sp
00000AE8  2E42              cs inc dx
00000AEA  49                dec cx
00000AEB  4E                dec si
00000AEC  0000              add [bx+si],al
00000AEE  3300              xor ax,[bx+si]
00000AF0  308B3615          xor [bp+di+0x1536],cl
00000AF4  C0AD8BD822        shr byte [di-0x2775],byte 0x22
00000AF9  C4                db 0xc4
00000AFA  FEC0              inc al
00000AFC  7501              jnz 0xaff
00000AFE  C3                ret
00000AFF  AC                lodsb
00000B00  2207              and al,[bx]
00000B02  750A              jnz 0xb0e
00000B04  AD                lodsw
00000B05  22C4              and al,ah
00000B07  FEC0              inc al
00000B09  7413              jz 0xb1e
00000B0B  46                inc si
00000B0C  EBF6              jmp 0xb04
00000B0E  AD                lodsw
00000B0F  8BD8              mov bx,ax
00000B11  22C4              and al,ah
00000B13  FEC0              inc al
00000B15  7407              jz 0xb1e
00000B17  8A04              mov al,[si]
00000B19  8807              mov [bx],al
00000B1B  46                inc si
00000B1C  EBF0              jmp 0xb0e
00000B1E  EBD5              jmp 0xaf5
00000B20  E82F01            call 0xc52
00000B23  8B360FC0          mov si,[0xc00f]
00000B27  8B14              mov dx,[si]
00000B29  83FAFF            cmp dx,0xffffffffffffffff
00000B2C  7503              jnz 0xb31
00000B2E  E9FE00            jmp 0xc2f
00000B31  8A5C05            mov bl,[si+0x5]
00000B34  32FF              xor bh,bh
00000B36  03DB              add bx,bx
00000B38  8B87416B          mov ax,[bx+0x6b41]
00000B3C  FF                db 0xff
00000B3D  D0891483          ror byte [bx+di-0x7cec],0x0
00000B41  C6                db 0xc6
00000B42  08EB              or bl,ch
00000B44  E251              loop 0xb97
00000B46  6B6C6BA6          imul bp,[si+0x6b],0xffffffffffffffa6
00000B4A  6BB76BD26B        imul si,[bx-0x2d95],0x6b
00000B4F  EC                in al,dx
00000B50  6B196C            imul bx,[bx+di],0x6c
00000B53  2A6C80            sub ch,[si-0x80]
00000B56  4C                dec sp
00000B57  02808A1E          add al,[bx+si+0x1e8a]
00000B5B  830080            add word [bx+si],0xffffffffffffff80
00000B5E  C3                ret
00000B5F  0432              add al,0x32
00000B61  FF03              inc word [bp+di]
00000B63  1E                push ds
00000B64  80003B            add byte [bx+si],0x3b
00000B67  DA726C            fidiv dword [bp+si+0x6c]
00000B6A  8064027F          and byte [si+0x2],0x7f
00000B6E  EB66              jmp 0xbd6
00000B70  8A4404            mov al,[si+0x4]
00000B73  0410              add al,0x10
00000B75  884404            mov [si+0x4],al
00000B78  8AE8              mov ch,al
00000B7A  2410              and al,0x10
00000B7C  7401              jz 0xb7f
00000B7E  C3                ret
00000B7F  FEC5              inc ch
00000B81  80E50F            and ch,0xf
00000B84  0AE8              or ch,al
00000B86  886C04            mov [si+0x4],ch
00000B89  8B1E11C0          mov bx,[0xc011]
00000B8D  F6440280          test byte [si+0x2],0x80
00000B91  740B              jz 0xb9e
00000B93  4A                dec dx
00000B94  3917              cmp [bx],dx
00000B96  7301              jnc 0xb99
00000B98  C3                ret
00000B99  8064027F          and byte [si+0x2],0x7f
00000B9D  C3                ret
00000B9E  42                inc dx
00000B9F  395702            cmp [bx+0x2],dx
00000BA2  7201              jc 0xba5
00000BA4  C3                ret
00000BA5  804C0280          or byte [si+0x2],0x80
00000BA9  C3                ret
00000BAA  8A4404            mov al,[si+0x4]
00000BAD  0410              add al,0x10
00000BAF  884404            mov [si+0x4],al
00000BB2  8AE8              mov ch,al
00000BB4  2430              and al,0x30
00000BB6  7401              jz 0xbb9
00000BB8  C3                ret
00000BB9  EBC4              jmp 0xb7f
00000BBB  804C0280          or byte [si+0x2],0x80
00000BBF  8A1E8300          mov bl,[0x83]
00000BC3  80C304            add bl,0x4
00000BC6  32FF              xor bh,bh
00000BC8  031E8000          add bx,[0x80]
00000BCC  3BDA              cmp bx,dx
00000BCE  7301              jnc 0xbd1
00000BD0  C3                ret
00000BD1  8064027F          and byte [si+0x2],0x7f
00000BD5  C3                ret
00000BD6  8A4404            mov al,[si+0x4]
00000BD9  0410              add al,0x10
00000BDB  884404            mov [si+0x4],al
00000BDE  8AE8              mov ch,al
00000BE0  2430              and al,0x30
00000BE2  7401              jz 0xbe5
00000BE4  C3                ret
00000BE5  FEC5              inc ch
00000BE7  80E501            and ch,0x1
00000BEA  0AC5              or al,ch
00000BEC  884404            mov [si+0x4],al
00000BEF  C3                ret
00000BF0  8A4404            mov al,[si+0x4]
00000BF3  0410              add al,0x10
00000BF5  884404            mov [si+0x4],al
00000BF8  8AE8              mov ch,al
00000BFA  2410              and al,0x10
00000BFC  7401              jz 0xbff
00000BFE  C3                ret
00000BFF  FEC5              inc ch
00000C01  80E50F            and ch,0xf
00000C04  0AE8              or ch,al
00000C06  886C04            mov [si+0x4],ch
00000C09  80E507            and ch,0x7
00000C0C  7505              jnz 0xc13
00000C0E  80740280          xor byte [si+0x2],0x80
00000C12  C3                ret
00000C13  F6440280          test byte [si+0x2],0x80
00000C17  7402              jz 0xc1b
00000C19  4A                dec dx
00000C1A  C3                ret
00000C1B  42                inc dx
00000C1C  C3                ret
00000C1D  8A4404            mov al,[si+0x4]
00000C20  0410              add al,0x10
00000C22  884404            mov [si+0x4],al
00000C25  8AE8              mov ch,al
00000C27  2430              and al,0x30
00000C29  7401              jz 0xc2c
00000C2B  C3                ret
00000C2C  EBD1              jmp 0xbff
00000C2E  C3                ret
00000C2F  8B360FC0          mov si,[0xc00f]
00000C33  8B1C              mov bx,[si]
00000C35  83FBFF            cmp bx,0xffffffffffffffff
00000C38  7501              jnz 0xc3b
00000C3A  C3                ret
00000C3B  03DB              add bx,bx
00000C3D  03DB              add bx,bx
00000C3F  03DB              add bx,bx
00000C41  8A871CC0          mov al,[bx-0x3fe4]
00000C45  C6871CC0FD        mov byte [bx-0x3fe4],0xfd
00000C4A  884403            mov [si+0x3],al
00000C4D  83C608            add si,0x8
00000C50  EBE1              jmp 0xc33
00000C52  8B360FC0          mov si,[0xc00f]
00000C56  8B1C              mov bx,[si]
00000C58  83FBFF            cmp bx,0xffffffffffffffff
00000C5B  7501              jnz 0xc5e
00000C5D  C3                ret
00000C5E  8A4403            mov al,[si+0x3]
00000C61  3CFD              cmp al,0xfd
00000C63  740C              jz 0xc71
00000C65  03DB              add bx,bx
00000C67  03DB              add bx,bx
00000C69  03DB              add bx,bx
00000C6B  81C31CC0          add bx,0xc01c
00000C6F  8807              mov [bx],al
00000C71  83C608            add si,0x8
00000C74  EBE0              jmp 0xc56
00000C76  BE936C            mov si,0x6c93
00000C79  2EFF160E20        call word near [cs:0x200e]
00000C7E  BE9B6C            mov si,0x6c9b
00000C81  2EFF160E20        call word near [cs:0x200e]
00000C86  BEA46C            mov si,0x6ca4
00000C89  2EFF160E20        call word near [cs:0x200e]
00000C8E  BEAC6C            mov si,0x6cac
00000C91  2EFF160E20        call word near [cs:0x200e]
00000C96  C3                ret
00000C97  0E                push cs
00000C98  A30004            mov [0x400],ax
00000C9B  4C                dec sp
00000C9C  49                dec cx
00000C9D  46                inc si
00000C9E  45                inc bp
00000C9F  1E                push ds
00000CA0  BB0305            mov bx,0x503
00000CA3  41                inc cx
00000CA4  4C                dec sp
00000CA5  4D                dec bp
00000CA6  41                inc cx
00000CA7  53                push bx
00000CA8  0DBB01            or ax,0x1bb
00000CAB  0447              add al,0x47
00000CAD  4F                dec di
00000CAE  4C                dec sp
00000CAF  44                inc sp
00000CB0  0DAF01            or ax,0x1af
00000CB3  05504C            add ax,0x4c50
00000CB6  41                inc cx
00000CB7  43                inc bx
00000CB8  45                inc bp
00000CB9  A08300            mov al,[0x83]
00000CBC  FEC0              inc al
00000CBE  7539              jnz 0xcf9
00000CC0  E88FFF            call 0xc52
00000CC3  C6061AFF28        mov byte [0xff1a],0x28
00000CC8  E8E8FB            call 0x8b3
00000CCB  8B3607C0          mov si,[0xc007]
00000CCF  F60401            test byte [si],0x1
00000CD2  7505              jnz 0xcd9
00000CD4  83C604            add si,0x4
00000CD7  EBF6              jmp 0xccf
00000CD9  AC                lodsb
00000CDA  8AE0              mov ah,al
00000CDC  AC                lodsb
00000CDD  80E4FE            and ah,0xfe
00000CE0  7403              jz 0xce5
00000CE2  E91703            jmp 0xffc
00000CE5  E84C00            call 0xd34
00000CE8  C60683001A        mov byte [0x83],0x1a
00000CED  A102C0            mov ax,[0xc002]
00000CF0  2D2400            sub ax,0x24
00000CF3  A38000            mov [0x80],ax
00000CF6  E9C2F3            jmp 0xbb
00000CF9  3C1C              cmp al,0x1c
00000CFB  7401              jz 0xcfe
00000CFD  C3                ret
00000CFE  E851FF            call 0xc52
00000D01  C6061AFF28        mov byte [0xff1a],0x28
00000D06  E8AAFB            call 0x8b3
00000D09  8B3607C0          mov si,[0xc007]
00000D0D  F60401            test byte [si],0x1
00000D10  7405              jz 0xd17
00000D12  83C604            add si,0x4
00000D15  EBF6              jmp 0xd0d
00000D17  AC                lodsb
00000D18  8AE0              mov ah,al
00000D1A  AC                lodsb
00000D1B  80E4FE            and ah,0xfe
00000D1E  7403              jz 0xd23
00000D20  E9D902            jmp 0xffc
00000D23  E80E00            call 0xd34
00000D26  C606830000        mov byte [0x83],0x0
00000D2B  C70680000000      mov word [0x80],0x0
00000D31  E987F3            jmp 0xbb
00000D34  0C80              or al,0x80
00000D36  A2C400            mov [0xc4],al
00000D39  AD                lodsw
00000D3A  50                push ax
00000D3B  8A26C400          mov ah,[0xc4]
00000D3F  B001              mov al,0x1
00000D41  2EFF160C01        call word near [cs:0x10c]
00000D46  58                pop ax
00000D47  50                push ax
00000D48  B10B              mov cl,0xb
00000D4A  F6E1              mul cl
00000D4C  8BF0              mov si,ax
00000D4E  81C6886D          add si,0x6d88
00000D52  2E8E062CFF        mov es,word [cs:0xff2c]
00000D57  BF0040            mov di,0x4000
00000D5A  B002              mov al,0x2
00000D5C  2EFF160C01        call word near [cs:0x10c]
00000D61  1E                push ds
00000D62  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000D67  BE0041            mov si,0x4100
00000D6A  8CC8              mov ax,cs
00000D6C  050020            add ax,0x2000
00000D6F  8EC0              mov es,ax
00000D71  BF0070            mov di,0x7000
00000D74  B9A000            mov cx,0xa0
00000D77  2EFF162630        call word near [cs:0x3026]
00000D7C  1F                pop ds
00000D7D  58                pop ax
00000D7E  3A26467C          cmp ah,[0x7c46]
00000D82  7407              jz 0xd8b
00000D84  8826467C          mov [0x7c46],ah
00000D88  E81700            call 0xda2
00000D8B  C3                ret
00000D8C  011E4D4D          add [0x4d4d],bx
00000D90  41                inc cx
00000D91  4E                dec si
00000D92  2E47              cs inc di
00000D94  52                push dx
00000D95  50                push ax
00000D96  0001              add [bx+di],al
00000D98  1F                pop ds
00000D99  43                inc bx
00000D9A  4D                dec bp
00000D9B  41                inc cx
00000D9C  4E                dec si
00000D9D  2E47              cs inc di
00000D9F  52                push dx
00000DA0  50                push ax
00000DA1  00B00BF6          add [bx+si-0x9f5],dh
00000DA5  2646              es inc si
00000DA7  7C05              jl 0xdae
00000DA9  CE                into
00000DAA  6D                insw
00000DAB  8BF0              mov si,ax
00000DAD  2E8E062CFF        mov es,word [cs:0xff2c]
00000DB2  BF0080            mov di,0x8000
00000DB5  B002              mov al,0x2
00000DB7  2EFF160C01        call word near [cs:0x10c]
00000DBC  2681050080        add word [es:di],0x8000
00000DC1  268145020080      add word [es:di+0x2],0x8000
00000DC7  268145040080      add word [es:di+0x4],0x8000
00000DCD  2EFF262430        jmp word near [cs:0x3024]
00000DD2  0122              add [bp+si],sp
00000DD4  43                inc bx
00000DD5  50                push ax
00000DD6  41                inc cx
00000DD7  54                push sp
00000DD8  2E47              cs inc di
00000DDA  52                push dx
00000DDB  50                push ax
00000DDC  0001              add [bx+di],al
00000DDE  234D50            and cx,[di+0x50]
00000DE1  41                inc cx
00000DE2  54                push sp
00000DE3  2E47              cs inc di
00000DE5  52                push dx
00000DE6  50                push ax
00000DE7  0001              add [bx+di],al
00000DE9  2444              and al,0x44
00000DEB  50                push ax
00000DEC  41                inc cx
00000DED  54                push sp
00000DEE  2E47              cs inc di
00000DF0  52                push dx
00000DF1  50                push ax
00000DF2  002E8E06          add [0x68e],ch
00000DF6  2CFF              sub al,0xff
00000DF8  BE1E6E            mov si,0x6e1e
00000DFB  BF0060            mov di,0x6000
00000DFE  B002              mov al,0x2
00000E00  2EFF160C01        call word near [cs:0x10c]
00000E05  1E                push ds
00000E06  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000E0B  BE0060            mov si,0x6000
00000E0E  8CC8              mov ax,cs
00000E10  050020            add ax,0x2000
00000E13  8EC0              mov es,ax
00000E15  BF0080            mov di,0x8000
00000E18  B92E00            mov cx,0x2e
00000E1B  2EFF162630        call word near [cs:0x3026]
00000E20  1F                pop ds
00000E21  C3                ret
00000E22  0120              add [bx+si],sp
00000E24  54                push sp
00000E25  4D                dec bp
00000E26  41                inc cx
00000E27  4E                dec si
00000E28  2E47              cs inc di
00000E2A  52                push dx
00000E2B  50                push ax
00000E2C  00800EE7          add [bx+si-0x18f2],al
00000E30  0001              add [bx+di],al
00000E32  A18000            mov ax,[0x80]
00000E35  8A1E8300          mov bl,[0x83]
00000E39  32FF              xor bh,bh
00000E3B  03C3              add ax,bx
00000E3D  050400            add ax,0x4
00000E40  8B3609C0          mov si,[0xc009]
00000E44  833CFF            cmp word [si],0xffffffffffffffff
00000E47  7501              jnz 0xe4a
00000E49  C3                ret
00000E4A  3904              cmp [si],ax
00000E4C  7411              jz 0xe5f
00000E4E  40                inc ax
00000E4F  3904              cmp [si],ax
00000E51  740C              jz 0xe5f
00000E53  48                dec ax
00000E54  48                dec ax
00000E55  3904              cmp [si],ax
00000E57  7406              jz 0xe5f
00000E59  40                inc ax
00000E5A  83C603            add si,0x3
00000E5D  EBE5              jmp 0xe44
00000E5F  C606E70004        mov byte [0xe7],0x4
00000E64  56                push si
00000E65  E8EAFD            call 0xc52
00000E68  C6061AFF28        mov byte [0xff1a],0x28
00000E6D  E843FA            call 0x8b3
00000E70  5E                pop si
00000E71  8A4402            mov al,[si+0x2]
00000E74  3CFF              cmp al,0xff
00000E76  7503              jnz 0xe7b
00000E78  E90001            jmp 0xf7b
00000E7B  2C08              sub al,0x8
00000E7D  7203              jc 0xe82
00000E7F  E97A01            jmp 0xffc
00000E82  C60624FF04        mov byte [0xff24],0x4
00000E87  8A5C02            mov bl,[si+0x2]
00000E8A  B00E              mov al,0xe
00000E8C  F6E3              mul bl
00000E8E  05076F            add ax,0x6f07
00000E91  8BF0              mov si,ax
00000E93  0E                push cs
00000E94  07                pop es
00000E95  BF00A0            mov di,0xa000
00000E98  B003              mov al,0x3
00000E9A  2EFF160C01        call word near [cs:0x10c]
00000E9F  2EFF164020        call word near [cs:0x2040]
00000EA4  B80100            mov ax,0x1
00000EA7  CD60              int byte 0x60
00000EA9  C606427CFF        mov byte [0x7c42],0xff
00000EAE  2EFF1600A0        call word near [cs:0xa000]
00000EB3  2EFF160220        call word near [cs:0x2002]
00000EB8  C606427C00        mov byte [0x7c42],0x0
00000EBD  2EFF161220        call word near [cs:0x2012]
00000EC2  E8B1FD            call 0xc76
00000EC5  8B3604C0          mov si,[0xc004]
00000EC9  2EFF161020        call word near [cs:0x2010]
00000ECE  E8D5FB            call 0xaa6
00000ED1  2EFF160230        call word near [cs:0x3002]
00000ED6  0E                push cs
00000ED7  07                pop es
00000ED8  B0FE              mov al,0xfe
00000EDA  BF00E0            mov di,0xe000
00000EDD  B9E000            mov cx,0xe0
00000EE0  F3AA              rep stosb
00000EE2  E80CFC            call 0xaf1
00000EE5  C6061AFF28        mov byte [0xff1a],0x28
00000EEA  E8C6F9            call 0x8b3
00000EED  C6061DFF00        mov byte [0xff1d],0x0
00000EF2  C6061EFF00        mov byte [0xff1e],0x0
00000EF7  C606E70001        mov byte [0xe7],0x1
00000EFC  1E                push ds
00000EFD  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000F02  BE0030            mov si,0x3000
00000F05  33C0              xor ax,ax
00000F07  CD60              int byte 0x60
00000F09  1F                pop ds
00000F0A  C3                ret
00000F0B  010B              add [bp+di],cx
00000F0D  4B                dec bx
00000F0E  49                dec cx
00000F0F  4E                dec si
00000F10  47                inc di
00000F11  50                push ax
00000F12  52                push dx
00000F13  4F                dec di
00000F14  2E42              cs inc dx
00000F16  49                dec cx
00000F17  4E                dec si
00000F18  0001              add [bx+di],al
00000F1A  0C4F              or al,0x4f
00000F1C  4D                dec bp
00000F1D  4F                dec di
00000F1E  59                pop cx
00000F1F  50                push ax
00000F20  52                push dx
00000F21  4F                dec di
00000F22  2E42              cs inc dx
00000F24  49                dec cx
00000F25  4E                dec si
00000F26  0001              add [bx+di],al
00000F28  124B45            adc cl,[bp+di+0x45]
00000F2B  4E                dec si
00000F2C  4A                dec dx
00000F2D  50                push ax
00000F2E  52                push dx
00000F2F  4F                dec di
00000F30  2E42              cs inc dx
00000F32  49                dec cx
00000F33  4E                dec si
00000F34  0001              add [bx+di],al
00000F36  0D4152            or ax,0x5241
00000F39  4D                dec bp
00000F3A  52                push dx
00000F3B  50                push ax
00000F3C  52                push dx
00000F3D  4F                dec di
00000F3E  2E42              cs inc dx
00000F40  49                dec cx
00000F41  4E                dec si
00000F42  0001              add [bx+di],al
00000F44  104452            adc [si+0x52],al
00000F47  55                push bp
00000F48  47                inc di
00000F49  50                push ax
00000F4A  52                push dx
00000F4B  4F                dec di
00000F4C  2E42              cs inc dx
00000F4E  49                dec cx
00000F4F  4E                dec si
00000F50  0001              add [bx+di],al
00000F52  0F434855          cmovnc cx,[bx+si+0x55]
00000F56  52                push dx
00000F57  50                push ax
00000F58  52                push dx
00000F59  4F                dec di
00000F5A  2E42              cs inc dx
00000F5C  49                dec cx
00000F5D  4E                dec si
00000F5E  0001              add [bx+di],al
00000F60  0E                push cs
00000F61  42                inc dx
00000F62  41                inc cx
00000F63  4E                dec si
00000F64  4B                dec bx
00000F65  50                push ax
00000F66  52                push dx
00000F67  4F                dec di
00000F68  2E42              cs inc dx
00000F6A  49                dec cx
00000F6B  4E                dec si
00000F6C  0001              add [bx+di],al
00000F6E  11494E            adc [bx+di+0x4e],cx
00000F71  4E                dec si
00000F72  41                inc cx
00000F73  50                push ax
00000F74  52                push dx
00000F75  4F                dec di
00000F76  2E42              cs inc dx
00000F78  49                dec cx
00000F79  4E                dec si
00000F7A  00C6              add dh,al
00000F7C  06                push es
00000F7D  E700              out byte 0x0,ax
00000F7F  04E8              add al,0xe8
00000F81  30F9              xor cl,bh
00000F83  F606450080        test byte [0x45],0x80
00000F88  7517              jnz 0xfa1
00000F8A  C6065C7CFF        mov byte [0x7c5c],0xff
00000F8F  B81809            mov ax,0x918
00000F92  32DB              xor bl,bl
00000F94  E837F4            call 0x3ce
00000F97  C6065C7C00        mov byte [0x7c5c],0x0
00000F9C  800E450080        or byte [0x45],0x80
00000FA1  C60624FF04        mov byte [0xff24],0x4
00000FA6  B486              mov ah,0x86
00000FA8  8826C400          mov [0xc4],ah
00000FAC  B001              mov al,0x1
00000FAE  2EFF160C01        call word near [cs:0x10c]
00000FB3  BE886D            mov si,0x6d88
00000FB6  2E8E062CFF        mov es,word [cs:0xff2c]
00000FBB  BF0040            mov di,0x4000
00000FBE  B002              mov al,0x2
00000FC0  2EFF160C01        call word near [cs:0x10c]
00000FC5  F60626FFFF        test byte [0xff26],0xff
00000FCA  74F9              jz 0xfc5
00000FCC  BEED6F            mov si,0x6fed
00000FCF  2E8E062CFF        mov es,word [cs:0xff2c]
00000FD4  BF0030            mov di,0x3000
00000FD7  B005              mov al,0x5
00000FD9  2EFF160C01        call word near [cs:0x10c]
00000FDE  C70680008400      mov word [0x80],0x84
00000FE4  C60683000D        mov byte [0x83],0xd
00000FE9  2EFF164020        call word near [cs:0x2040]
00000FEE  E931F0            jmp 0x22
00000FF1  0132              add [bp+si],si
00000FF3  55                push bp
00000FF4  47                inc di
00000FF5  4D                dec bp
00000FF6  322E4D53          xor ch,[0x534d]
00000FFA  44                inc sp
00000FFB  00B305F6          add [bp+di-0x9fb],dh
00000FFF  E303              jcxz 0x1004
00001001  06                push es
00001002  0BC0              or ax,ax
00001004  8BF0              mov si,ax
00001006  AD                lodsw
00001007  50                push ax
00001008  AC                lodsb
00001009  2C0A              sub al,0xa
0000100B  243F              and al,0x3f
0000100D  A28200            mov [0x82],al
00001010  AC                lodsb
00001011  D0E8              shr al,0x0
00001013  1AC0              sbb al,al
00001015  A2C300            mov [0xc3],al
00001018  AC                lodsb
00001019  A2C400            mov [0xc4],al
0000101C  8AE0              mov ah,al
0000101E  B001              mov al,0x1
00001020  2EFF160C01        call word near [cs:0x10c]
00001025  58                pop ax
00001026  05F0FF            add ax,0xfff0
00001029  7904              jns 0x102f
0000102B  030602C0          add ax,[0xc002]
0000102F  A38000            mov [0x80],ax
00001032  C6060600FF        mov byte [0x6],0xff
00001037  2EFF164020        call word near [cs:0x2040]
0000103C  BB0260            mov bx,0x6002
0000103F  32C0              xor al,al
00001041  2EFF260C01        jmp word near [cs:0x10c]
00001046  56                push si
00001047  57                push di
00001048  2EFF161001        call word near [cs:0x110]
0000104D  2EFF161201        call word near [cs:0x112]
00001052  2EFF161E01        call word near [cs:0x11e]
00001057  7303              jnc 0x105c
00001059  E83A05            call 0x1596
0000105C  5F                pop di
0000105D  5E                pop si
0000105E  F606427CFF        test byte [0x7c42],0xff
00001063  7501              jnz 0x1066
00001065  C3                ret
00001066  56                push si
00001067  57                push di
00001068  2EFF1602A0        call word near [cs:0xa002]
0000106D  5F                pop di
0000106E  5E                pop si
0000106F  C3                ret
00001070  8B364CFF          mov si,[0xff4c]
00001074  E8B101            call 0x1228
00001077  8A164EFF          mov dl,[0xff4e]
0000107B  32F6              xor dh,dh
0000107D  03D1              add dx,cx
0000107F  81FAD000          cmp dx,0xd0
00001083  7203              jc 0x1088
00001085  E8E500            call 0x116d
00001088  C6061AFF00        mov byte [0xff1a],0x0
0000108D  E8B6FF            call 0x1046
00001090  803E1AFF06        cmp byte [0xff1a],0x6
00001095  72F6              jc 0x108d
00001097  8B364CFF          mov si,[0xff4c]
0000109B  AC                lodsb
0000109C  89364CFF          mov [0xff4c],si
000010A0  3C2F              cmp al,0x2f
000010A2  7503              jnz 0x10a7
000010A4  E9C000            jmp 0x1167
000010A7  3C0D              cmp al,0xd
000010A9  7503              jnz 0x10ae
000010AB  E9B900            jmp 0x1167
000010AE  3C0C              cmp al,0xc
000010B0  7503              jnz 0x10b5
000010B2  E95401            jmp 0x1209
000010B5  3C0F              cmp al,0xf
000010B7  7503              jnz 0x10bc
000010B9  E9F800            jmp 0x11b4
000010BC  3C11              cmp al,0x11
000010BE  7503              jnz 0x10c3
000010C0  E9F700            jmp 0x11ba
000010C3  3C13              cmp al,0x13
000010C5  7507              jnz 0x10ce
000010C7  C6065D7CFF        mov byte [0x7c5d],0xff
000010CC  EBBA              jmp 0x1088
000010CE  3C15              cmp al,0x15
000010D0  7507              jnz 0x10d9
000010D2  C6065D7C00        mov byte [0x7c5d],0x0
000010D7  EBAF              jmp 0x1088
000010D9  3CFF              cmp al,0xff
000010DB  7506              jnz 0x10e3
000010DD  AC                lodsb
000010DE  89364CFF          mov [0xff4c],si
000010E2  C3                ret
000010E3  0AC0              or al,al
000010E5  7501              jnz 0x10e8
000010E7  C3                ret
000010E8  50                push ax
000010E9  803E4EFFD0        cmp byte [0xff4e],0xd0
000010EE  7203              jc 0x10f3
000010F0  E87A00            call 0x116d
000010F3  8A1E4EFF          mov bl,[0xff4e]
000010F7  32FF              xor bh,bh
000010F9  8A0E4FFF          mov cl,[0xff4f]
000010FD  B00A              mov al,0xa
000010FF  F6E1              mul cl
00001101  8AC8              mov cl,al
00001103  58                pop ax
00001104  53                push bx
00001105  8AD8              mov bl,al
00001107  80EB20            sub bl,0x20
0000110A  32FF              xor bh,bh
0000110C  8A97827B          mov dl,[bx+0x7b82]
00001110  8AF7              mov dh,bh
00001112  5B                pop bx
00001113  53                push bx
00001114  50                push ax
00001115  2BDA              sub bx,dx
00001117  B401              mov ah,0x1
00001119  83C338            add bx,0x38
0000111C  80C163            add cl,0x63
0000111F  2EFF162220        call word near [cs:0x2022]
00001124  58                pop ax
00001125  8AD8              mov bl,al
00001127  80EB20            sub bl,0x20
0000112A  32FF              xor bh,bh
0000112C  8A8FE27B          mov cl,[bx+0x7be2]
00001130  8AEF              mov ch,bh
00001132  5B                pop bx
00001133  03D9              add bx,cx
00001135  881E4EFF          mov [0xff4e],bl
00001139  F6065D7CFF        test byte [0x7c5d],0xff
0000113E  750C              jnz 0x114c
00001140  3C20              cmp al,0x20
00001142  7408              jz 0x114c
00001144  C60675FF05        mov byte [0xff75],0x5
00001149  E93CFF            jmp 0x1088
0000114C  8B364CFF          mov si,[0xff4c]
00001150  E8D500            call 0x1228
00001153  8A164EFF          mov dl,[0xff4e]
00001157  32F6              xor dh,dh
00001159  03D1              add dx,cx
0000115B  81FAD000          cmp dx,0xd0
0000115F  7203              jc 0x1164
00001161  E80900            call 0x116d
00001164  E921FF            jmp 0x1088
00001167  E80300            call 0x116d
0000116A  E91BFF            jmp 0x1088
0000116D  C6064EFF00        mov byte [0xff4e],0x0
00001172  FE06527C          inc byte [0x7c52]
00001176  FE064FFF          inc byte [0xff4f]
0000117A  803E527C04        cmp byte [0x7c52],0x4
0000117F  7211              jc 0x1192
00001181  E8E900            call 0x126d
00001184  51                push cx
00001185  E80A00            call 0x1192
00001188  59                pop cx
00001189  83F902            cmp cx,0x2
0000118C  7203              jc 0x1191
0000118E  E82F00            call 0x11c0
00001191  C3                ret
00001192  803E4FFF05        cmp byte [0xff4f],0x5
00001197  7301              jnc 0x119a
00001199  C3                ret
0000119A  FE0E4FFF          dec byte [0xff4f]
0000119E  B90A00            mov cx,0xa
000011A1  51                push cx
000011A2  E8A1FE            call 0x1046
000011A5  BB6207            mov bx,0x762
000011A8  B9321A            mov cx,0x1a32
000011AB  2EFF162420        call word near [cs:0x2024]
000011B0  59                pop cx
000011B1  E2EE              loop 0x11a1
000011B3  C3                ret
000011B4  E80900            call 0x11c0
000011B7  E9CEFE            jmp 0x1088
000011BA  E82600            call 0x11e3
000011BD  E9C8FE            jmp 0x1088
000011C0  BB9C00            mov bx,0x9c
000011C3  B18B              mov cl,0x8b
000011C5  B87C02            mov ax,0x27c
000011C8  2EFF162220        call word near [cs:0x2022]
000011CD  E81300            call 0x11e3
000011D0  BB8B27            mov bx,0x278b
000011D3  B90A02            mov cx,0x20a
000011D6  32C0              xor al,al
000011D8  2EFF160020        call word near [cs:0x2000]
000011DD  C606527C00        mov byte [0x7c52],0x0
000011E2  C3                ret
000011E3  C6061DFF00        mov byte [0xff1d],0x0
000011E8  C6061EFF00        mov byte [0xff1e],0x0
000011ED  E856FE            call 0x1046
000011F0  A01DFF            mov al,[0xff1d]
000011F3  0A061EFF          or al,[0xff1e]
000011F7  74F4              jz 0x11ed
000011F9  C6061DFF00        mov byte [0xff1d],0x0
000011FE  C6061EFF00        mov byte [0xff1e],0x0
00001203  C60675FF1D        mov byte [0xff75],0x1d
00001208  C3                ret
00001209  C6064EFF00        mov byte [0xff4e],0x0
0000120E  C6064FFF00        mov byte [0xff4f],0x0
00001213  C606527C00        mov byte [0x7c52],0x0
00001218  BB600D            mov bx,0xd60
0000121B  B93736            mov cx,0x3637
0000121E  B0FF              mov al,0xff
00001220  2EFF160020        call word near [cs:0x2000]
00001225  E960FE            jmp 0x1088
00001228  33C9              xor cx,cx
0000122A  33D2              xor dx,dx
0000122C  AC                lodsb
0000122D  0AC0              or al,al
0000122F  7428              jz 0x1259
00001231  3CFF              cmp al,0xff
00001233  7424              jz 0x1259
00001235  3C20              cmp al,0x20
00001237  7420              jz 0x1259
00001239  3C2F              cmp al,0x2f
0000123B  741C              jz 0x1259
0000123D  3C0D              cmp al,0xd
0000123F  7418              jz 0x1259
00001241  3C0C              cmp al,0xc
00001243  7414              jz 0x1259
00001245  8AE0              mov ah,al
00001247  2C20              sub al,0x20
00001249  72E1              jc 0x122c
0000124B  42                inc dx
0000124C  8AD8              mov bl,al
0000124E  32FF              xor bh,bh
00001250  2E028FE27B        add cl,[cs:bx+0x7be2]
00001255  12EF              adc ch,bh
00001257  EBD3              jmp 0x122c
00001259  83FA01            cmp dx,0x1
0000125C  7401              jz 0x125f
0000125E  C3                ret
0000125F  80FC2E            cmp ah,0x2e
00001262  7406              jz 0x126a
00001264  80FC2C            cmp ah,0x2c
00001267  7401              jz 0x126a
00001269  C3                ret
0000126A  33C9              xor cx,cx
0000126C  C3                ret
0000126D  8B364CFF          mov si,[0xff4c]
00001271  33C9              xor cx,cx
00001273  33D2              xor dx,dx
00001275  AC                lodsb
00001276  0AC0              or al,al
00001278  744A              jz 0x12c4
0000127A  3CFF              cmp al,0xff
0000127C  7507              jnz 0x1285
0000127E  AC                lodsb
0000127F  3CFF              cmp al,0xff
00001281  7441              jz 0x12c4
00001283  EBF0              jmp 0x1275
00001285  3C0C              cmp al,0xc
00001287  743B              jz 0x12c4
00001289  3C2F              cmp al,0x2f
0000128B  7505              jnz 0x1292
0000128D  33D2              xor dx,dx
0000128F  41                inc cx
00001290  EBE3              jmp 0x1275
00001292  3C0D              cmp al,0xd
00001294  7505              jnz 0x129b
00001296  33D2              xor dx,dx
00001298  41                inc cx
00001299  EBDA              jmp 0x1275
0000129B  8AD8              mov bl,al
0000129D  80EB20            sub bl,0x20
000012A0  32FF              xor bh,bh
000012A2  8A9FE27B          mov bl,[bx+0x7be2]
000012A6  03D3              add dx,bx
000012A8  3C20              cmp al,0x20
000012AA  75C9              jnz 0x1275
000012AC  51                push cx
000012AD  56                push si
000012AE  52                push dx
000012AF  52                push dx
000012B0  E875FF            call 0x1228
000012B3  5A                pop dx
000012B4  03D1              add dx,cx
000012B6  81FAD000          cmp dx,0xd0
000012BA  5A                pop dx
000012BB  5E                pop si
000012BC  59                pop cx
000012BD  72B6              jc 0x1275
000012BF  33D2              xor dx,dx
000012C1  41                inc cx
000012C2  EBB1              jmp 0x1275
000012C4  0BD2              or dx,dx
000012C6  7501              jnz 0x12c9
000012C8  C3                ret
000012C9  41                inc cx
000012CA  C3                ret
000012CB  1E                push ds
000012CC  07                pop es
000012CD  57                push di
000012CE  B30F              mov bl,0xf
000012D0  B94042            mov cx,0x4240
000012D3  E84500            call 0x131b
000012D6  B301              mov bl,0x1
000012D8  B9A086            mov cx,0x86a0
000012DB  E83D00            call 0x131b
000012DE  32DB              xor bl,bl
000012E0  B91027            mov cx,0x2710
000012E3  E83500            call 0x131b
000012E6  B9E803            mov cx,0x3e8
000012E9  E84D00            call 0x1339
000012EC  B96400            mov cx,0x64
000012EF  E84700            call 0x1339
000012F2  B90A00            mov cx,0xa
000012F5  E84100            call 0x1339
000012F8  AA                stosb
000012F9  B0FF              mov al,0xff
000012FB  AA                stosb
000012FC  5F                pop di
000012FD  8BF7              mov si,di
000012FF  B90700            mov cx,0x7
00001302  AC                lodsb
00001303  0AC0              or al,al
00001305  7502              jnz 0x1309
00001307  E2F9              loop 0x1302
00001309  0430              add al,0x30
0000130B  AA                stosb
0000130C  E309              jcxz 0x1317
0000130E  49                dec cx
0000130F  7406              jz 0x1317
00001311  AC                lodsb
00001312  0430              add al,0x30
00001314  AA                stosb
00001315  E2FA              loop 0x1311
00001317  B0FF              mov al,0xff
00001319  AA                stosb
0000131A  C3                ret
0000131B  32F6              xor dh,dh
0000131D  2AD3              sub dl,bl
0000131F  7210              jc 0x1331
00001321  2BC1              sub ax,cx
00001323  7306              jnc 0x132b
00001325  0AD2              or dl,dl
00001327  7406              jz 0x132f
00001329  FECA              dec dl
0000132B  FEC6              inc dh
0000132D  EBEE              jmp 0x131d
0000132F  03C1              add ax,cx
00001331  02D3              add dl,bl
00001333  50                push ax
00001334  8AC6              mov al,dh
00001336  AA                stosb
00001337  58                pop ax
00001338  C3                ret
00001339  32F6              xor dh,dh
0000133B  F7F1              div cx
0000133D  92                xchg ax,dx
0000133E  8AF2              mov dh,dl
00001340  32D2              xor dl,dl
00001342  50                push ax
00001343  8AC6              mov al,dh
00001345  AA                stosb
00001346  58                pop ax
00001347  C3                ret
00001348  C6061DFF00        mov byte [0xff1d],0x0
0000134D  C6061EFF00        mov byte [0xff1e],0x0
00001352  53                push bx
00001353  E81701            call 0x146d
00001356  5B                pop bx
00001357  53                push bx
00001358  E8EBFC            call 0x1046
0000135B  5B                pop bx
0000135C  C6061AFF00        mov byte [0xff1a],0x0
00001361  F6061EFFFF        test byte [0xff1e],0xff
00001366  F9                stc
00001367  7401              jz 0x136a
00001369  C3                ret
0000136A  F6061DFFFF        test byte [0xff1d],0xff
0000136F  7407              jz 0x1378
00001371  F8                clc
00001372  C60675FF1F        mov byte [0xff75],0x1f
00001377  C3                ret
00001378  B85373            mov ax,0x7353
0000137B  50                push ax
0000137C  CD61              int byte 0x61
0000137E  2403              and al,0x3
00001380  3C01              cmp al,0x1
00001382  7569              jnz 0x13ed
00001384  0ADB              or bl,bl
00001386  7408              jz 0x1390
00001388  53                push bx
00001389  E8F300            call 0x147f
0000138C  5B                pop bx
0000138D  FECB              dec bl
0000138F  C3                ret
00001390  F60656FFFF        test byte [0xff56],0xff
00001395  7501              jnz 0x1398
00001397  C3                ret
00001398  57                push di
00001399  56                push si
0000139A  53                push bx
0000139B  FE0E56FF          dec byte [0xff56]
0000139F  A056FF            mov al,[0xff56]
000013A2  02C3              add al,bl
000013A4  BB58FF            mov bx,0xff58
000013A7  D7                xlatb
000013A8  2EFF161A30        call word near [cs:0x301a]
000013AD  B90A00            mov cx,0xa
000013B0  51                push cx
000013B1  8B1E54FF          mov bx,[0xff54]
000013B5  81C30103          add bx,0x301
000013B9  8AC1              mov al,cl
000013BB  FEC8              dec al
000013BD  8A0E52FF          mov cl,[0xff52]
000013C1  02C9              add cl,cl
000013C3  8AD1              mov dl,cl
000013C5  02C9              add cl,cl
000013C7  02C9              add cl,cl
000013C9  02CA              add cl,dl
000013CB  80E902            sub cl,0x2
000013CE  8A2E6AFF          mov ch,[0xff6a]
000013D2  2EFF161E30        call word near [cs:0x301e]
000013D7  E86CFC            call 0x1046
000013DA  803E1AFF04        cmp byte [0xff1a],0x4
000013DF  72F6              jc 0x13d7
000013E1  C6061AFF00        mov byte [0xff1a],0x0
000013E6  59                pop cx
000013E7  E2C7              loop 0x13b0
000013E9  5B                pop bx
000013EA  5E                pop si
000013EB  5F                pop di
000013EC  C3                ret
000013ED  3C02              cmp al,0x2
000013EF  7401              jz 0x13f2
000013F1  C3                ret
000013F2  A052FF            mov al,[0xff52]
000013F5  FEC8              dec al
000013F7  3AD8              cmp bl,al
000013F9  7308              jnc 0x1403
000013FB  53                push bx
000013FC  E8AC00            call 0x14ab
000013FF  5B                pop bx
00001400  FEC3              inc bl
00001402  C3                ret
00001403  8AC3              mov al,bl
00001405  020656FF          add al,[0xff56]
00001409  FEC0              inc al
0000140B  8A2653FF          mov ah,[0xff53]
0000140F  FECC              dec ah
00001411  3AE0              cmp ah,al
00001413  7301              jnc 0x1416
00001415  C3                ret
00001416  57                push di
00001417  56                push si
00001418  53                push bx
00001419  FE0656FF          inc byte [0xff56]
0000141D  A056FF            mov al,[0xff56]
00001420  02C3              add al,bl
00001422  BB58FF            mov bx,0xff58
00001425  D7                xlatb
00001426  2EFF161A30        call word near [cs:0x301a]
0000142B  B90A00            mov cx,0xa
0000142E  51                push cx
0000142F  8B1E54FF          mov bx,[0xff54]
00001433  81C30103          add bx,0x301
00001437  8AC1              mov al,cl
00001439  F6D8              neg al
0000143B  040A              add al,0xa
0000143D  8A0E52FF          mov cl,[0xff52]
00001441  02C9              add cl,cl
00001443  8AD1              mov dl,cl
00001445  02C9              add cl,cl
00001447  02C9              add cl,cl
00001449  02CA              add cl,dl
0000144B  80E902            sub cl,0x2
0000144E  8A2E6AFF          mov ch,[0xff6a]
00001452  2EFF162030        call word near [cs:0x3020]
00001457  E8ECFB            call 0x1046
0000145A  803E1AFF04        cmp byte [0xff1a],0x4
0000145F  72F6              jc 0x1457
00001461  C6061AFF00        mov byte [0xff1a],0x0
00001466  59                pop cx
00001467  E2C5              loop 0x142e
00001469  5B                pop bx
0000146A  5E                pop si
0000146B  5F                pop di
0000146C  C3                ret
0000146D  B00A              mov al,0xa
0000146F  F6E3              mul bl
00001471  030654FF          add ax,[0xff54]
00001475  050001            add ax,0x100
00001478  8BD8              mov bx,ax
0000147A  2EFF261830        jmp word near [cs:0x3018]
0000147F  B00A              mov al,0xa
00001481  F6E3              mul bl
00001483  030654FF          add ax,[0xff54]
00001487  050001            add ax,0x100
0000148A  8BD8              mov bx,ax
0000148C  B90A00            mov cx,0xa
0000148F  51                push cx
00001490  C6061AFF00        mov byte [0xff1a],0x0
00001495  4B                dec bx
00001496  53                push bx
00001497  2EFF161830        call word near [cs:0x3018]
0000149C  E8A7FB            call 0x1046
0000149F  803E1AFF04        cmp byte [0xff1a],0x4
000014A4  72F6              jc 0x149c
000014A6  5B                pop bx
000014A7  59                pop cx
000014A8  E2E5              loop 0x148f
000014AA  C3                ret
000014AB  B00A              mov al,0xa
000014AD  F6E3              mul bl
000014AF  030654FF          add ax,[0xff54]
000014B3  050001            add ax,0x100
000014B6  8BD8              mov bx,ax
000014B8  B90A00            mov cx,0xa
000014BB  51                push cx
000014BC  C6061AFF00        mov byte [0xff1a],0x0
000014C1  43                inc bx
000014C2  53                push bx
000014C3  2EFF161830        call word near [cs:0x3018]
000014C8  E87BFB            call 0x1046
000014CB  803E1AFF04        cmp byte [0xff1a],0x4
000014D0  72F6              jc 0x14c8
000014D2  5B                pop bx
000014D3  59                pop cx
000014D4  E2E5              loop 0x14bb
000014D6  C3                ret
000014D7  A052FF            mov al,[0xff52]
000014DA  8A2653FF          mov ah,[0xff53]
000014DE  50                push ax
000014DF  A056FF            mov al,[0xff56]
000014E2  50                push ax
000014E3  C60652FF02        mov byte [0xff52],0x2
000014E8  C60653FF02        mov byte [0xff53],0x2
000014ED  B90200            mov cx,0x2
000014F0  BE1375            mov si,0x7513
000014F3  E82800            call 0x151e
000014F6  C60656FF00        mov byte [0xff56],0x0
000014FB  32DB              xor bl,bl
000014FD  E848FE            call 0x1348
00001500  7302              jnc 0x1504
00001502  B301              mov bl,0x1
00001504  58                pop ax
00001505  A256FF            mov [0xff56],al
00001508  58                pop ax
00001509  A252FF            mov [0xff52],al
0000150C  882653FF          mov [0xff53],ah
00001510  0ADB              or bl,bl
00001512  7501              jnz 0x1515
00001514  C3                ret
00001515  F9                stc
00001516  C3                ret
00001517  59                pop cx
00001518  657300            gs jnc 0x151b
0000151B  4E                dec si
0000151C  6F                outsw
0000151D  0032              add [bp+si],dh
0000151F  D25152            rcl byte [bx+di+0x52],cl
00001522  B00A              mov al,0xa
00001524  F6E2              mul dl
00001526  030654FF          add ax,[0xff54]
0000152A  050103            add ax,0x301
0000152D  8BD8              mov bx,ax
0000152F  32C9              xor cl,cl
00001531  2EFF163820        call word near [cs:0x2038]
00001536  5A                pop dx
00001537  59                pop cx
00001538  FEC2              inc dl
0000153A  E2E4              loop 0x1520
0000153C  C3                ret
0000153D  32E4              xor ah,ah
0000153F  51                push cx
00001540  56                push si
00001541  57                push di
00001542  50                push ax
00001543  BB58FF            mov bx,0xff58
00001546  D7                xlatb
00001547  2EFF161A30        call word near [cs:0x301a]
0000154C  58                pop ax
0000154D  50                push ax
0000154E  8AC4              mov al,ah
00001550  32E4              xor ah,ah
00001552  03C0              add ax,ax
00001554  8BD8              mov bx,ax
00001556  03C0              add ax,ax
00001558  03C0              add ax,ax
0000155A  03D8              add bx,ax
0000155C  031E54FF          add bx,[0xff54]
00001560  81C30003          add bx,0x300
00001564  2EFF161C30        call word near [cs:0x301c]
00001569  58                pop ax
0000156A  FEC0              inc al
0000156C  FEC4              inc ah
0000156E  5F                pop di
0000156F  5E                pop si
00001570  59                pop cx
00001571  E2CC              loop 0x153f
00001573  C3                ret
00001574  8A1E8500          mov bl,[0x85]
00001578  2ADA              sub bl,dl
0000157A  7301              jnc 0x157d
0000157C  C3                ret
0000157D  8AD3              mov dl,bl
0000157F  8B1E8600          mov bx,[0x86]
00001583  93                xchg ax,bx
00001584  2BC3              sub ax,bx
00001586  7201              jc 0x1589
00001588  C3                ret
00001589  80EA01            sub dl,0x1
0000158C  C3                ret
0000158D  01068600          add [0x86],ax
00001591  10168500          adc [0x85],dl
00001595  C3                ret
00001596  B1FF              mov cl,0xff
00001598  B80300            mov ax,0x3
0000159B  CD60              int byte 0x60
0000159D  0E                push cs
0000159E  07                pop es
0000159F  BE8876            mov si,0x7688
000015A2  B006              mov al,0x6
000015A4  2EFF160C01        call word near [cs:0x10c]
000015A9  C60657FF00        mov byte [0xff57],0x0
000015AE  E8E800            call 0x1699
000015B1  0E                push cs
000015B2  07                pop es
000015B3  2EF606647CFF      test byte [cs:0x7c64],0xff
000015B9  740F              jz 0x15ca
000015BB  BF6CFF            mov di,0xff6c
000015BE  32C0              xor al,al
000015C0  B90800            mov cx,0x8
000015C3  F3AA              rep stosb
000015C5  BE8876            mov si,0x7688
000015C8  EB32              jmp 0x15fc
000015CA  BE6CFF            mov si,0xff6c
000015CD  BF677C            mov di,0x7c67
000015D0  B90800            mov cx,0x8
000015D3  AC                lodsb
000015D4  0AC0              or al,al
000015D6  7403              jz 0x15db
000015D8  AA                stosb
000015D9  E2F8              loop 0x15d3
000015DB  26C6052E          mov byte [es:di],0x2e
000015DF  26C6450155        mov byte [es:di+0x1],0x55
000015E4  26C6450253        mov byte [es:di+0x2],0x53
000015E9  26C6450352        mov byte [es:di+0x3],0x52
000015EE  26C6450400        mov byte [es:di+0x4],0x0
000015F3  BE657C            mov si,0x7c65
000015F6  2EC60678FFFF      mov byte [cs:0xff78],0xff
000015FC  BF0000            mov di,0x0
000015FF  B003              mov al,0x3
00001601  2EFF160C01        call word near [cs:0x10c]
00001606  2EC60678FF00      mov byte [cs:0xff78],0x0
0000160C  7225              jc 0x1633
0000160E  BE7B76            mov si,0x767b
00001611  BF00A0            mov di,0xa000
00001614  B003              mov al,0x3
00001616  2EFF160C01        call word near [cs:0x10c]
0000161B  2EFF164220        call word near [cs:0x2042]
00001620  B80100            mov ax,0x1
00001623  CD60              int byte 0x60
00001625  32C9              xor cl,cl
00001627  B80300            mov ax,0x3
0000162A  CD60              int byte 0x60
0000162C  B8FFFF            mov ax,0xffff
0000162F  FF268676          jmp word near [0x7686]
00001633  BB461A            mov bx,0x1a46
00001636  B91A1E            mov cx,0x1e1a
00001639  B0FF              mov al,0xff
0000163B  2EFF160020        call word near [cs:0x2000]
00001640  0E                push cs
00001641  1F                pop ds
00001642  BE6776            mov si,0x7667
00001645  BB8000            mov bx,0x80
00001648  B14C              mov cl,0x4c
0000164A  2EFF162A20        call word near [cs:0x202a]
0000164F  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00001655  2EFF161001        call word near [cs:0x110]
0000165A  2EF6061DFFFF      test byte [cs:0xff1d],0xff
00001660  74F3              jz 0x1655
00001662  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00001668  E92BFF            jmp 0x1596
0000166B  55                push bp
0000166C  7365              jnc 0x16d3
0000166E  7220              jc 0x1690
00001670  46                inc si
00001671  696C650D4E        imul bp,[si+0x65],0x4e0d
00001676  6F                outsw
00001677  7420              jz 0x1699
00001679  46                inc si
0000167A  6F                outsw
0000167B  756E              jnz 0x16eb
0000167D  64FF00            inc word [fs:bx+si]
00001680  004741            add [bx+0x41],al
00001683  4D                dec bp
00001684  45                inc bp
00001685  2E42              cs inc dx
00001687  49                dec cx
00001688  4E                dec si
00001689  0000              add [bx+si],al
0000168B  A00000            mov al,[0x0]
0000168E  53                push bx
0000168F  54                push sp
00001690  44                inc sp
00001691  50                push ax
00001692  4C                dec sp
00001693  59                pop cx
00001694  2E42              cs inc dx
00001696  49                dec cx
00001697  4E                dec si
00001698  008CC88E          add [si-0x7138],cl
0000169C  C08ED8BF00        ror byte [bp-0x4028],byte 0x0
000016A1  E0BA              loopne 0x165d
000016A3  A877              test al,0x77
000016A5  2EFF161C01        call word near [cs:0x11c]
000016AA  BF00E0            mov di,0xe000
000016AD  FE05              inc byte [di]
000016AF  7502              jnz 0x16b3
000016B1  FE0D              dec byte [di]
000016B3  FD                std
000016B4  BEFDE1            mov si,0xe1fd
000016B7  BFFFE1            mov di,0xe1ff
000016BA  B9FF00            mov cx,0xff
000016BD  F3A5              rep movsw
000016BF  FC                cld
000016C0  C70601E0BA77      mov word [0xe001],0x77ba
000016C6  BB380D            mov bx,0xd38
000016C9  B93736            mov cx,0x3637
000016CC  B0FF              mov al,0xff
000016CE  2EFF160020        call word near [cs:0x2000]
000016D3  BB380D            mov bx,0xd38
000016D6  B93726            mov cx,0x2637
000016D9  B0FF              mov al,0xff
000016DB  2EFF160020        call word near [cs:0x2000]
000016E0  0E                push cs
000016E1  07                pop es
000016E2  BF677C            mov di,0x7c67
000016E5  B060              mov al,0x60
000016E7  B90800            mov cx,0x8
000016EA  F3AA              rep stosb
000016EC  B0FF              mov al,0xff
000016EE  AA                stosb
000016EF  C6065E7C00        mov byte [0x7c5e],0x0
000016F4  BE6CFF            mov si,0xff6c
000016F7  BF677C            mov di,0x7c67
000016FA  B90800            mov cx,0x8
000016FD  AC                lodsb
000016FE  0AC0              or al,al
00001700  7407              jz 0x1709
00001702  FE065E7C          inc byte [0x7c5e]
00001706  AA                stosb
00001707  E2F4              loop 0x16fd
00001709  A05E7C            mov al,[0x7c5e]
0000170C  A25F7C            mov [0x7c5f],al
0000170F  0E                push cs
00001710  07                pop es
00001711  BF677C            mov di,0x7c67
00001714  B060              mov al,0x60
00001716  B90800            mov cx,0x8
00001719  AE                scasb
0000171A  750D              jnz 0x1729
0000171C  E2FB              loop 0x1719
0000171E  BEBA77            mov si,0x77ba
00001721  BF677C            mov di,0x7c67
00001724  B90800            mov cx,0x8
00001727  F3A4              rep movsb
00001729  BB3C00            mov bx,0x3c
0000172C  B144              mov cl,0x44
0000172E  BEAE77            mov si,0x77ae
00001731  2EFF162A20        call word near [cs:0x202a]
00001736  C706607C6000      mov word [0x7c60],0x60
0000173C  C606627C56        mov byte [0x7c62],0x56
00001741  C70654FF3B34      mov word [0xff54],0x343b
00001747  C7066AFF0A00      mov word [0xff6a],0xa
0000174D  A000E0            mov al,[0xe000]
00001750  0AC0              or al,al
00001752  7450              jz 0x17a4
00001754  3C05              cmp al,0x5
00001756  7202              jc 0x175a
00001758  B005              mov al,0x5
0000175A  32E4              xor ah,ah
0000175C  8BC8              mov cx,ax
0000175E  32C0              xor al,al
00001760  BE01E0            mov si,0xe001
00001763  E303              jcxz 0x1768
00001765  E8A300            call 0x180b
00001768  BE01E0            mov si,0xe001
0000176B  A000E0            mov al,[0xe000]
0000176E  A253FF            mov [0xff53],al
00001771  C60652FF05        mov byte [0xff52],0x5
00001776  E8C300            call 0x183c
00001779  0E                push cs
0000177A  07                pop es
0000177B  BF6CFF            mov di,0xff6c
0000177E  B90800            mov cx,0x8
00001781  32C0              xor al,al
00001783  F3AA              rep stosb
00001785  803E5F7C00        cmp byte [0x7c5f],0x0
0000178A  F9                stc
0000178B  7501              jnz 0x178e
0000178D  C3                ret
0000178E  BE677C            mov si,0x7c67
00001791  BF6CFF            mov di,0xff6c
00001794  AC                lodsb
00001795  3CFF              cmp al,0xff
00001797  F8                clc
00001798  7501              jnz 0x179b
0000179A  C3                ret
0000179B  3C60              cmp al,0x60
0000179D  F8                clc
0000179E  7501              jnz 0x17a1
000017A0  C3                ret
000017A1  AA                stosb
000017A2  EBF0              jmp 0x1794
000017A4  B8FFFF            mov ax,0xffff
000017A7  2EFF2E00FF        jmp word far [cs:0xff00]
000017AC  2A2E7573          sub ch,[0x7375]
000017B0  7200              jc 0x17b2
000017B2  49                dec cx
000017B3  6E                outsb
000017B4  7075              jo 0x182b
000017B6  7420              jz 0x17d8
000017B8  6E                outsb
000017B9  61                popa
000017BA  6D                insw
000017BB  653AFF            gs cmp bh,bh
000017BE  52                push dx
000017BF  652D5374          gs sub ax,0x7453
000017C3  61                popa
000017C4  7274              jc 0x183a
000017C6  002EC606          add [0x6c6],ch
000017CA  647C00            fs jl 0x17cd
000017CD  0E                push cs
000017CE  07                pop es
000017CF  BF677C            mov di,0x7c67
000017D2  B02D              mov al,0x2d
000017D4  B90800            mov cx,0x8
000017D7  F2AE              repne scasb
000017D9  7401              jz 0x17dc
000017DB  C3                ret
000017DC  2EC606647CFF      mov byte [cs:0x7c64],0xff
000017E2  2EC6065E7C00      mov byte [cs:0x7c5e],0x0
000017E8  C3                ret
000017E9  2EF606647CFF      test byte [cs:0x7c64],0xff
000017EF  7501              jnz 0x17f2
000017F1  C3                ret
000017F2  2EC606647C00      mov byte [cs:0x7c64],0x0
000017F8  0E                push cs
000017F9  07                pop es
000017FA  BF677C            mov di,0x7c67
000017FD  B060              mov al,0x60
000017FF  B90800            mov cx,0x8
00001802  F3AA              rep stosb
00001804  2EC6065F7C00      mov byte [cs:0x7c5f],0x0
0000180A  C3                ret
0000180B  32E4              xor ah,ah
0000180D  51                push cx
0000180E  56                push si
0000180F  50                push ax
00001810  2EFF161A30        call word near [cs:0x301a]
00001815  58                pop ax
00001816  50                push ax
00001817  8AC4              mov al,ah
00001819  32E4              xor ah,ah
0000181B  03C0              add ax,ax
0000181D  8BD8              mov bx,ax
0000181F  03C0              add ax,ax
00001821  03C0              add ax,ax
00001823  03D8              add bx,ax
00001825  031E54FF          add bx,[0xff54]
00001829  81C30003          add bx,0x300
0000182D  2EFF161C30        call word near [cs:0x301c]
00001832  58                pop ax
00001833  FEC0              inc al
00001835  FEC4              inc ah
00001837  5E                pop si
00001838  59                pop cx
00001839  E2D2              loop 0x180d
0000183B  C3                ret
0000183C  E888FF            call 0x17c7
0000183F  C60674FFFF        mov byte [0xff74],0xff
00001844  C60629FF00        mov byte [0xff29],0x0
00001849  C6061DFF00        mov byte [0xff1d],0x0
0000184E  C6061EFF00        mov byte [0xff1e],0x0
00001853  C60656FF00        mov byte [0xff56],0x0
00001858  C606637C00        mov byte [0x7c63],0x0
0000185D  32DB              xor bl,bl
0000185F  F60653FFFF        test byte [0xff53],0xff
00001864  7405              jz 0x186b
00001866  2EFF161460        call word near [cs:0x6014]
0000186B  E8B002            call 0x1b1e
0000186E  32C0              xor al,al
00001870  E83E02            call 0x1ab1
00001873  C6061AFF00        mov byte [0xff1a],0x0
00001878  2EF70618FF0100    test word [cs:0xff18],0x1
0000187F  7442              jz 0x18c3
00001881  0E                push cs
00001882  07                pop es
00001883  BF677C            mov di,0x7c67
00001886  B060              mov al,0x60
00001888  B90800            mov cx,0x8
0000188B  AE                scasb
0000188C  7525              jnz 0x18b3
0000188E  E2FB              loop 0x188b
00001890  56                push si
00001891  BEBA77            mov si,0x77ba
00001894  BF677C            mov di,0x7c67
00001897  B90800            mov cx,0x8
0000189A  F3A4              rep movsb
0000189C  5E                pop si
0000189D  E827FF            call 0x17c7
000018A0  E87B02            call 0x1b1e
000018A3  C60675FF01        mov byte [0xff75],0x1
000018A8  2EF70618FF0100    test word [cs:0xff18],0x1
000018AF  75F7              jnz 0x18a8
000018B1  EBC0              jmp 0x1873
000018B3  C60675FF1F        mov byte [0xff75],0x1f
000018B8  C60674FF00        mov byte [0xff74],0x0
000018BD  C6061EFF00        mov byte [0xff1e],0x0
000018C2  C3                ret
000018C3  F6061DFFFF        test byte [0xff1d],0xff
000018C8  746B              jz 0x1935
000018CA  C60675FF01        mov byte [0xff75],0x1
000018CF  56                push si
000018D0  32FF              xor bh,bh
000018D2  8A1E56FF          mov bl,[0xff56]
000018D6  021E637C          add bl,[0x7c63]
000018DA  03DB              add bx,bx
000018DC  8B30              mov si,[bx+si]
000018DE  0E                push cs
000018DF  07                pop es
000018E0  BF677C            mov di,0x7c67
000018E3  B060              mov al,0x60
000018E5  B90800            mov cx,0x8
000018E8  F3AA              rep stosb
000018EA  B0FF              mov al,0xff
000018EC  AA                stosb
000018ED  C6065E7C00        mov byte [0x7c5e],0x0
000018F2  BF677C            mov di,0x7c67
000018F5  B90800            mov cx,0x8
000018F8  AC                lodsb
000018F9  0AC0              or al,al
000018FB  7407              jz 0x1904
000018FD  FE065E7C          inc byte [0x7c5e]
00001901  AA                stosb
00001902  E2F4              loop 0x18f8
00001904  A05E7C            mov al,[0x7c5e]
00001907  A25F7C            mov [0x7c5f],al
0000190A  5E                pop si
0000190B  E8B9FE            call 0x17c7
0000190E  C6061DFF00        mov byte [0xff1d],0x0
00001913  A1607C            mov ax,[0x7c60]
00001916  D1E8              shr ax,0x0
00001918  D1E8              shr ax,0x0
0000191A  8AF8              mov bh,al
0000191C  8A1E627C          mov bl,[0x7c62]
00001920  B91010            mov cx,0x1010
00001923  32C0              xor al,al
00001925  2EFF160020        call word near [cs:0x2000]
0000192A  E8F101            call 0x1b1e
0000192D  32C0              xor al,al
0000192F  E87F01            call 0x1ab1
00001932  E93EFF            jmp 0x1873
00001935  B96F78            mov cx,0x786f
00001938  51                push cx
00001939  F60629FFFF        test byte [0xff29],0xff
0000193E  7440              jz 0x1980
00001940  C60675FF01        mov byte [0xff75],0x1
00001945  A029FF            mov al,[0xff29]
00001948  C60629FF00        mov byte [0xff29],0x0
0000194D  3C0D              cmp al,0xd
0000194F  7501              jnz 0x1952
00001951  C3                ret
00001952  3C08              cmp al,0x8
00001954  7503              jnz 0x1959
00001956  E9EF01            jmp 0x1b48
00001959  50                push ax
0000195A  E88CFE            call 0x17e9
0000195D  58                pop ax
0000195E  33DB              xor bx,bx
00001960  8A1E5E7C          mov bl,[0x7c5e]
00001964  80BF677C60        cmp byte [bx+0x7c67],0x60
00001969  7504              jnz 0x196f
0000196B  FE065F7C          inc byte [0x7c5f]
0000196F  8887677C          mov [bx+0x7c67],al
00001973  E8A801            call 0x1b1e
00001976  C60675FF01        mov byte [0xff75],0x1
0000197B  B001              mov al,0x1
0000197D  E93101            jmp 0x1ab1
00001980  CD61              int byte 0x61
00001982  A808              test al,0x8
00001984  7416              jz 0x199c
00001986  C60675FF01        mov byte [0xff75],0x1
0000198B  B001              mov al,0x1
0000198D  E82101            call 0x1ab1
00001990  CD61              int byte 0x61
00001992  A808              test al,0x8
00001994  75FA              jnz 0x1990
00001996  C60629FF00        mov byte [0xff29],0x0
0000199B  C3                ret
0000199C  A804              test al,0x4
0000199E  7416              jz 0x19b6
000019A0  C60675FF01        mov byte [0xff75],0x1
000019A5  B0FF              mov al,0xff
000019A7  E80701            call 0x1ab1
000019AA  CD61              int byte 0x61
000019AC  A804              test al,0x4
000019AE  75FA              jnz 0x19aa
000019B0  C60629FF00        mov byte [0xff29],0x0
000019B5  C3                ret
000019B6  F60653FFFF        test byte [0xff53],0xff
000019BB  7501              jnz 0x19be
000019BD  C3                ret
000019BE  2403              and al,0x3
000019C0  3C01              cmp al,0x1
000019C2  756B              jnz 0x1a2f
000019C4  F606637CFF        test byte [0x7c63],0xff
000019C9  740E              jz 0x19d9
000019CB  8A1E637C          mov bl,[0x7c63]
000019CF  2EFF161860        call word near [cs:0x6018]
000019D4  FE0E637C          dec byte [0x7c63]
000019D8  C3                ret
000019D9  F60656FFFF        test byte [0xff56],0xff
000019DE  7501              jnz 0x19e1
000019E0  C3                ret
000019E1  57                push di
000019E2  56                push si
000019E3  FE0E56FF          dec byte [0xff56]
000019E7  A056FF            mov al,[0xff56]
000019EA  0206637C          add al,[0x7c63]
000019EE  2EFF161A30        call word near [cs:0x301a]
000019F3  B90A00            mov cx,0xa
000019F6  51                push cx
000019F7  8B1E54FF          mov bx,[0xff54]
000019FB  81C30103          add bx,0x301
000019FF  8AC1              mov al,cl
00001A01  FEC8              dec al
00001A03  8A0E52FF          mov cl,[0xff52]
00001A07  02C9              add cl,cl
00001A09  8AD1              mov dl,cl
00001A0B  02C9              add cl,cl
00001A0D  02C9              add cl,cl
00001A0F  02CA              add cl,dl
00001A11  80E902            sub cl,0x2
00001A14  8A2E6AFF          mov ch,[0xff6a]
00001A18  2EFF161E30        call word near [cs:0x301e]
00001A1D  803E1AFF04        cmp byte [0xff1a],0x4
00001A22  72F9              jc 0x1a1d
00001A24  C6061AFF00        mov byte [0xff1a],0x0
00001A29  59                pop cx
00001A2A  E2CA              loop 0x19f6
00001A2C  5E                pop si
00001A2D  5F                pop di
00001A2E  C3                ret
00001A2F  3C02              cmp al,0x2
00001A31  7401              jz 0x1a34
00001A33  C3                ret
00001A34  A0637C            mov al,[0x7c63]
00001A37  020656FF          add al,[0xff56]
00001A3B  FEC0              inc al
00001A3D  8A2653FF          mov ah,[0xff53]
00001A41  FECC              dec ah
00001A43  3AE0              cmp ah,al
00001A45  7301              jnc 0x1a48
00001A47  C3                ret
00001A48  A052FF            mov al,[0xff52]
00001A4B  FEC8              dec al
00001A4D  3806637C          cmp [0x7c63],al
00001A51  730E              jnc 0x1a61
00001A53  8A1E637C          mov bl,[0x7c63]
00001A57  2EFF161A60        call word near [cs:0x601a]
00001A5C  FE06637C          inc byte [0x7c63]
00001A60  C3                ret
00001A61  57                push di
00001A62  56                push si
00001A63  FE0656FF          inc byte [0xff56]
00001A67  A056FF            mov al,[0xff56]
00001A6A  0206637C          add al,[0x7c63]
00001A6E  2EFF161A30        call word near [cs:0x301a]
00001A73  B90A00            mov cx,0xa
00001A76  51                push cx
00001A77  8B1E54FF          mov bx,[0xff54]
00001A7B  81C30103          add bx,0x301
00001A7F  8AC1              mov al,cl
00001A81  F6D8              neg al
00001A83  040A              add al,0xa
00001A85  8A0E52FF          mov cl,[0xff52]
00001A89  02C9              add cl,cl
00001A8B  8AD1              mov dl,cl
00001A8D  02C9              add cl,cl
00001A8F  02C9              add cl,cl
00001A91  02CA              add cl,dl
00001A93  80E902            sub cl,0x2
00001A96  8A2E6AFF          mov ch,[0xff6a]
00001A9A  2EFF162030        call word near [cs:0x3020]
00001A9F  803E1AFF04        cmp byte [0xff1a],0x4
00001AA4  72F9              jc 0x1a9f
00001AA6  C6061AFF00        mov byte [0xff1a],0x0
00001AAB  59                pop cx
00001AAC  E2C8              loop 0x1a76
00001AAE  5E                pop si
00001AAF  5F                pop di
00001AB0  C3                ret
00001AB1  56                push si
00001AB2  50                push ax
00001AB3  A1607C            mov ax,[0x7c60]
00001AB6  D1E8              shr ax,0x0
00001AB8  D1E8              shr ax,0x0
00001ABA  8AF8              mov bh,al
00001ABC  A05E7C            mov al,[0x7c5e]
00001ABF  02C0              add al,al
00001AC1  02F8              add bh,al
00001AC3  8A1E627C          mov bl,[0x7c62]
00001AC7  80C308            add bl,0x8
00001ACA  B90802            mov cx,0x208
00001ACD  32C0              xor al,al
00001ACF  2EFF160020        call word near [cs:0x2000]
00001AD4  58                pop ax
00001AD5  00065E7C          add [0x7c5e],al
00001AD9  F6065E7C80        test byte [0x7c5e],0x80
00001ADE  7405              jz 0x1ae5
00001AE0  C6065E7C00        mov byte [0x7c5e],0x0
00001AE5  803E5E7C08        cmp byte [0x7c5e],0x8
00001AEA  7204              jc 0x1af0
00001AEC  FE0E5E7C          dec byte [0x7c5e]
00001AF0  A05F7C            mov al,[0x7c5f]
00001AF3  38065E7C          cmp [0x7c5e],al
00001AF7  7203              jc 0x1afc
00001AF9  A25E7C            mov [0x7c5e],al
00001AFC  8B1E607C          mov bx,[0x7c60]
00001B00  8A0E627C          mov cl,[0x7c62]
00001B04  33C0              xor ax,ax
00001B06  A05E7C            mov al,[0x7c5e]
00001B09  03C0              add ax,ax
00001B0B  03C0              add ax,ax
00001B0D  03C0              add ax,ax
00001B0F  03D8              add bx,ax
00001B11  80C108            add cl,0x8
00001B14  B87F06            mov ax,0x67f
00001B17  2EFF162220        call word near [cs:0x2022]
00001B1C  5E                pop si
00001B1D  C3                ret
00001B1E  56                push si
00001B1F  A1607C            mov ax,[0x7c60]
00001B22  D1E8              shr ax,0x0
00001B24  D1E8              shr ax,0x0
00001B26  8AF8              mov bh,al
00001B28  8A1E627C          mov bl,[0x7c62]
00001B2C  B90810            mov cx,0x1008
00001B2F  32C0              xor al,al
00001B31  2EFF160020        call word near [cs:0x2000]
00001B36  8B1E607C          mov bx,[0x7c60]
00001B3A  8A0E627C          mov cl,[0x7c62]
00001B3E  BE677C            mov si,0x7c67
00001B41  2EFF162A20        call word near [cs:0x202a]
00001B46  5E                pop si
00001B47  C3                ret
00001B48  E89EFC            call 0x17e9
00001B4B  56                push si
00001B4C  8A1E5E7C          mov bl,[0x7c5e]
00001B50  0ADB              or bl,bl
00001B52  7502              jnz 0x1b56
00001B54  FEC3              inc bl
00001B56  32FF              xor bh,bh
00001B58  0E                push cs
00001B59  07                pop es
00001B5A  BE677C            mov si,0x7c67
00001B5D  03F3              add si,bx
00001B5F  8BFE              mov di,si
00001B61  4F                dec di
00001B62  B008              mov al,0x8
00001B64  2AC3              sub al,bl
00001B66  8AC8              mov cl,al
00001B68  32ED              xor ch,ch
00001B6A  F3A4              rep movsb
00001B6C  F6065F7CFF        test byte [0x7c5f],0xff
00001B71  7404              jz 0x1b77
00001B73  FE0E5F7C          dec byte [0x7c5f]
00001B77  C6066E7C60        mov byte [0x7c6e],0x60
00001B7C  B0FF              mov al,0xff
00001B7E  E830FF            call 0x1ab1
00001B81  E89AFF            call 0x1b1e
00001B84  5E                pop si
00001B85  C3                ret
00001B86  0002              add [bp+si],al
00001B88  0203              add al,[bp+di]
00001B8A  0100              add [bx+si],ax
00001B8C  0002              add [bp+si],al
00001B8E  0203              add al,[bp+di]
00001B90  0101              add [bx+di],ax
00001B92  0102              add [bp+si],ax
00001B94  0200              add al,[bx+si]
00001B96  0102              add [bp+si],ax
00001B98  0101              add [bx+di],ax
00001B9A  0101              add [bx+di],ax
00001B9C  0101              add [bx+di],ax
00001B9E  0101              add [bx+di],ax
00001BA0  0302              add ax,[bp+si]
00001BA2  0101              add [bx+di],ax
00001BA4  0201              add al,[bx+di]
00001BA6  0000              add [bx+si],al
00001BA8  0000              add [bx+si],al
00001BAA  0000              add [bx+si],al
00001BAC  0000              add [bx+si],al
00001BAE  0002              add [bp+si],al
00001BB0  0000              add [bx+si],al
00001BB2  0000              add [bx+si],al
00001BB4  0000              add [bx+si],al
00001BB6  0000              add [bx+si],al
00001BB8  0000              add [bx+si],al
00001BBA  0100              add [bx+si],ax
00001BBC  0000              add [bx+si],al
00001BBE  0000              add [bx+si],al
00001BC0  0102              add [bp+si],ax
00001BC2  0202              add al,[bp+si]
00001BC4  0101              add [bx+di],ax
00001BC6  0100              add [bx+si],ax
00001BC8  0001              add [bx+di],al
00001BCA  0001              add [bx+di],al
00001BCC  0100              add [bx+si],ax
00001BCE  0002              add [bp+si],al
00001BD0  0100              add [bx+si],ax
00001BD2  0200              add al,[bx+si]
00001BD4  0101              add [bx+di],ax
00001BD6  0000              add [bx+si],al
00001BD8  0001              add [bx+di],al
00001BDA  0100              add [bx+si],ax
00001BDC  0000              add [bx+si],al
00001BDE  0101              add [bx+di],ax
00001BE0  0102              add [bp+si],ax
00001BE2  0003              add [bp+di],al
00001BE4  0100              add [bx+si],ax
00001BE6  050404            add ax,0x404
00001BE9  0406              add al,0x6
00001BEB  0805              or [di],al
00001BED  0304              add ax,[si]
00001BEF  0406              add al,0x6
00001BF1  06                push es
00001BF2  06                push es
00001BF3  050608            add ax,0x806
00001BF6  07                pop es
00001BF7  050707            add ax,0x707
00001BFA  07                pop es
00001BFB  07                pop es
00001BFC  07                pop es
00001BFD  07                pop es
00001BFE  07                pop es
00001BFF  07                pop es
00001C00  0304              add ax,[si]
00001C02  06                push es
00001C03  06                push es
00001C04  06                push es
00001C05  07                pop es
00001C06  0808              or [bx+si],cl
00001C08  0808              or [bx+si],cl
00001C0A  0808              or [bx+si],cl
00001C0C  0808              or [bx+si],cl
00001C0E  0805              or [di],al
00001C10  0808              or [bx+si],cl
00001C12  0808              or [bx+si],cl
00001C14  0808              or [bx+si],cl
00001C16  0808              or [bx+si],cl
00001C18  0808              or [bx+si],cl
00001C1A  07                pop es
00001C1B  0808              or [bx+si],cl
00001C1D  0808              or [bx+si],cl
00001C1F  0807              or [bx],al
00001C21  050305            add ax,0x503
00001C24  06                push es
00001C25  07                pop es
00001C26  07                pop es
00001C27  0808              or [bx+si],cl
00001C29  07                pop es
00001C2A  0807              or [bx],al
00001C2C  07                pop es
00001C2D  0808              or [bx+si],cl
00001C2F  050608            add ax,0x806
00001C32  050807            add ax,0x708
00001C35  07                pop es
00001C36  0808              or [bx+si],cl
00001C38  0807              or [bx],al
00001C3A  06                push es
00001C3B  0808              or [bx+si],cl
00001C3D  0807              or [bx],al
00001C3F  07                pop es
00001C40  07                pop es
00001C41  0408              add al,0x8
00001C43  0407              add al,0x7
00001C45  0800              or [bx+si],al
00001C47  0000              add [bx+si],al
00001C49  0000              add [bx+si],al
00001C4B  0000              add [bx+si],al
00001C4D  0000              add [bx+si],al
00001C4F  0000              add [bx+si],al
00001C51  0000              add [bx+si],al
00001C53  0000              add [bx+si],al
00001C55  0000              add [bx+si],al
00001C57  0000              add [bx+si],al
00001C59  0000              add [bx+si],al
00001C5B  0000              add [bx+si],al
00001C5D  0000              add [bx+si],al
00001C5F  0000              add [bx+si],al
00001C61  0000              add [bx+si],al
00001C63  0000              add [bx+si],al
00001C65  0000              add [bx+si],al
00001C67  0000              add [bx+si],al
00001C69  0000              add [bx+si],al
00001C6B  0000              add [bx+si],al
00001C6D  0000              add [bx+si],al
00001C6F  0000              add [bx+si],al
00001C71  0000              add [bx+si],al
00001C73  0000              add [bx+si],al
00001C75  0000              add [bx+si],al
00001C77  0000              add [bx+si],al
00001C79  0000              add [bx+si],al
00001C7B  0000              add [bx+si],al
00001C7D  0000              add [bx+si],al
00001C7F  0000              add [bx+si],al
