00000000  1908              sbb [bx+si],cx
00000002  0000              add [bx+si],al
00000004  23A2A0A7          and sp,[bp+si-0x5860]
00000008  0000              add [bx+si],al
0000000A  0000              add [bx+si],al
0000000C  0000              add [bx+si],al
0000000E  0000              add [bx+si],al
00000010  0000              add [bx+si],al
00000012  0000              add [bx+si],al
00000014  A0A0A0            mov al,[0xa0a0]
00000017  A0A0A0            mov al,[0xa0a0]
0000001A  50                push ax
0000001B  0A0A              or cl,[bp+si]
0000001D  0A0A              or cl,[bp+si]
0000001F  0A0A              or cl,[bp+si]
00000021  0A0A              or cl,[bp+si]
00000023  0A0A              or cl,[bp+si]
00000025  0A0A              or cl,[bp+si]
00000027  0A0A              or cl,[bp+si]
00000029  0A0A              or cl,[bp+si]
0000002B  0A0A              or cl,[bp+si]
0000002D  0A0A              or cl,[bp+si]
0000002F  0A0A              or cl,[bp+si]
00000031  0A0A              or cl,[bp+si]
00000033  0A3EA08E          or bh,[0x8ea0]
00000037  A0DEA0            mov al,[0xa0de]
0000003A  2EA17EA1          mov ax,[cs:0xa17e]
0000003E  CE                into
0000003F  A105A2            mov ax,[0xa205]
00000042  0200              add al,[bx+si]
00000044  0000              add [bx+si],al
00000046  0302              add ax,[bp+si]
00000048  0000              add [bx+si],al
0000004A  0400              add al,0x0
0000004C  0200              add al,[bx+si]
0000004E  0000              add [bx+si],al
00000050  050200            add ax,0x2
00000053  00060002          add [0x200],al
00000057  0000              add [bx+si],al
00000059  0007              add [bx],al
0000005B  0200              add al,[bx+si]
0000005D  0008              add [bx+si],cl
0000005F  0002              add [bp+si],al
00000061  00AD00AF          add [di-0x5100],ch
00000065  02AE00B0          add ch,[bp-0x5000]
00000069  0002              add [bp+si],al
0000006B  B1B2              mov cl,0xb2
0000006D  B5B6              mov ch,0xb6
0000006F  02B3B4B7          add dh,[bp+di-0x484c]
00000073  B802B9            mov ax,0xb902
00000076  BA3901            mov dx,0x139
00000079  0275AA            add dh,[di-0x56]
0000007C  0238              add bh,[bx+si]
0000007E  0200              add al,[bx+si]
00000080  0000              add [bx+si],al
00000082  0102              add [bp+si],ax
00000084  0000              add [bx+si],al
00000086  0200              add al,[bx+si]
00000088  0200              add al,[bx+si]
0000008A  0000              add [bx+si],al
0000008C  BB0200            mov bx,0x2
0000008F  00BC0000          add [si+0x0],bh
00000093  090A              or [bp+si],cx
00000095  0B0C              or cx,[si]
00000097  000D              add [di],cl
00000099  0E                push cs
0000009A  1011              adc [bx+di],dl
0000009C  000E0F11          add [0x110f],cl
000000A0  1200              adc al,[bx+si]
000000A2  1314              adc dx,[si]
000000A4  151600            adc ax,0x16
000000A7  17                pop ss
000000A8  1819              sbb [bx+di],bl
000000AA  1A00              sbb al,[bx+si]
000000AC  191A              sbb [bp+si],bx
000000AE  1C1D              sbb al,0x1d
000000B0  001A              add [bp+si],bl
000000B2  1B1D              sbb bx,[di]
000000B4  1E                push ds
000000B5  001F              add [bx],bl
000000B7  1320              adc sp,[bx+si]
000000B9  2100              and [bx+si],ax
000000BB  1314              adc dx,[si]
000000BD  21160020          and [0x2000],dx
000000C1  2122              and [bp+si],sp
000000C3  2300              and ax,[bx+si]
000000C5  21162318          and [0x1823],dx
000000C9  0024              add [si],ah
000000CB  1A25              sbb ah,[di]
000000CD  1D001A            sbb ax,0x1a00
000000D0  1B1D              sbb bx,[di]
000000D2  1E                push ds
000000D3  000D              add [di],cl
000000D5  0E                push cs
000000D6  2627              es daa
000000D8  000F              add [bx],cl
000000DA  0028              add [bx+si],ch
000000DC  2900              sub [bx+si],ax
000000DE  2A2B              sub ch,[bp+di]
000000E0  2E2F              cs das
000000E2  002C              add [si],ch
000000E4  2D3031            sub ax,0x3130
000000E7  0032              add [bp+si],dh
000000E9  33363700          xor si,[0x37]
000000ED  3435              xor al,0x35
000000EF  191A              sbb [bp+si],bx
000000F1  0036373A          add [0x3a37],dh
000000F5  3B00              cmp ax,[bx+si]
000000F7  191A              sbb [bp+si],bx
000000F9  1C1D              sbb al,0x1d
000000FB  001A              add [bp+si],bl
000000FD  001D              add [di],bl
000000FF  1E                push ds
00000100  000D              add [di],cl
00000102  0E                push cs
00000103  3D2700            cmp ax,0x27
00000106  3C3D              cmp al,0x3d
00000108  3E3F              ds aas
0000010A  003F              add [bx],bh
0000010C  40                inc ax
0000010D  43                inc bx
0000010E  44                inc sp
0000010F  004142            add [bx+di+0x42],al
00000112  45                inc bp
00000113  46                inc si
00000114  004748            add [bx+0x48],al
00000117  49                dec cx
00000118  0000              add [bx+si],al
0000011A  4A                dec dx
0000011B  0E                push cs
0000011C  4D                dec bp
0000011D  27                daa
0000011E  0034              add [si],dh
00000120  355859            xor ax,0x5958
00000123  004B4C            add [bp+di+0x4c],cl
00000126  4E                dec si
00000127  4F                dec di
00000128  005051            add [bx+si+0x51],dl
0000012B  004400            add [si+0x0],al
0000012E  58                pop ax
0000012F  59                pop cx
00000130  5A                pop dx
00000131  5B                pop bx
00000132  005354            add [bp+di+0x54],dl
00000135  56                push si
00000136  57                push di
00000137  004E4F            add [bp+0x4f],cl
0000013A  54                push sp
0000013B  55                push bp
0000013C  0000              add [bx+si],al
0000013E  005253            add [bp+si+0x53],dl
00000141  000D              add [di],cl
00000143  0E                push cs
00000144  5D                pop bp
00000145  27                daa
00000146  000E0F27          add [0x270f],cl
0000014A  2800              sub [bx+si],al
0000014C  61                popa
0000014D  2C6A              sub al,0x6a
0000014F  6B002C            imul ax,[bx+si],0x2c
00000152  696B6C006B        imul bp,[bp+di+0x6c],0x6b00
00000157  6C                insb
00000158  6D                insw
00000159  6E                outsb
0000015A  006E6F            add [bp+0x6f],ch
0000015D  7071              jo 0x1d0
0000015F  007071            add [bx+si+0x71],dh
00000162  5A                pop dx
00000163  7200              jc 0x165
00000165  005C5E            add [si+0x5e],bl
00000168  5F                pop di
00000169  005C5D            add [si+0x5d],bl
0000016C  5F                pop di
0000016D  60                pusha
0000016E  006263            add [bp+si+0x63],ah
00000171  6566006465        o32 add [gs:si+0x65],ah
00000176  6768000D          a32 push word 0xd00
0000017A  0E                push cs
0000017B  7374              jnc 0x1f1
0000017D  000E0F74          add [0x740f],cl
00000181  1200              adc al,[bx+si]
00000183  7677              jna 0x1fc
00000185  7A7B              jpe 0x202
00000187  007879            add [bx+si+0x79],bh
0000018A  7C7D              jl 0x209
0000018C  0017              add [bx],dl
0000018E  7A19              jpe 0x1a9
00000190  1A00              sbb al,[bx+si]
00000192  191A              sbb [bp+si],bx
00000194  1C1D              sbb al,0x1d
00000196  001A              add [bp+si],bl
00000198  1B1D              sbb bx,[di]
0000019A  1E                push ds
0000019B  007E7F            add [bp+0x7f],bh
0000019E  82                db 0x82
0000019F  830080            add word [bx+si],0xffffffffffffff80
000001A2  81848500191A      add word [si+0x85],0x1a19
000001A8  A2A300            mov [0xa3],al
000001AB  1A1B              sbb bl,[bp+di]
000001AD  A3A400            mov [0xa4],ax
000001B0  7E7F              jng 0x231
000001B2  A5                movsw
000001B3  830000            add word [bx+si],0x0
000001B6  00A0A100          add [bx+si+0xa1],ah
000001BA  7E7F              jng 0x23b
000001BC  AC                lodsb
000001BD  83001A            add word [bx+si],0x1a
000001C0  1B1D              sbb bx,[di]
000001C2  AB                stosw
000001C3  0019              add [bx+di],bl
000001C5  1AA91D00          sbb ch,[bx+di+0x1d]
000001C9  00A6A7A8          add [bp-0x5759],ah
000001CD  00868788          add [bp-0x7779],al
000001D1  8900              mov [bx+si],ax
000001D3  8B8C8E8F          mov cx,[si-0x7072]
000001D7  00898A8C          add [bx+di-0x7376],cl
000001DB  8D00              lea ax,[bx+si]
000001DD  92                xchg ax,dx
000001DE  93                xchg ax,bx
000001DF  96                xchg ax,si
000001E0  97                xchg ax,di
000001E1  008F9093          add [bx-0x6c70],cl
000001E5  94                xchg ax,sp
000001E6  0098991A          add [bx+si+0x1a99],bl
000001EA  9B00999A9B        wait add [bx+di-0x6466],bl
000001EF  9C                pushf
000001F0  001A              add [bp+si],bl
000001F2  9B9D              wait popf
000001F4  9E                sahf
000001F5  009B9C9E          add [bp+di-0x6164],bl
000001F9  9F                lahf
000001FA  00919295          add [bx+di-0x6a6e],dl
000001FE  96                xchg ax,si
000001FF  0017              add [bx],dl
00000201  98                cbw
00000202  191A              sbb [bp+si],bx
00000204  0019              add [bx+di],bl
00000206  1A1C              sbb bl,[si]
00000208  9D                popf
00000209  02BDBEBF          add bh,[di-0x4042]
0000020D  C002C1            rol byte [bp+si],byte 0xc1
00000210  C2C3C4            ret word 0xc4c3
00000213  02C5              add al,ch
00000215  C6C7C8            mov bh,0xc8
00000218  02C9              add cl,cl
0000021A  CACBCC            retf word 0xcccb
0000021D  02CD              add cl,ch
0000021F  CE                into
00000220  CF                iret
00000221  D002              rol byte [bp+si],0x0
00000223  0000              add [bx+si],al
00000225  D1D2              rcl dx,0x0
00000227  8B3610C0          mov si,[0xc010]
0000022B  C606B6A700        mov byte [0xa7b6],0x0
00000230  C606B7A700        mov byte [0xa7b7],0x0
00000235  833CFF            cmp word [si],0xffffffffffffffff
00000238  7437              jz 0x271
0000023A  8B04              mov ax,[si]
0000023C  2EFF163660        call word near [cs:0x6036]
00000241  7225              jc 0x268
00000243  885C03            mov [si+0x3],bl
00000246  8B4402            mov ax,[si+0x2]
00000249  2EFF162860        call word near [cs:0x6028]
0000024E  8A1EB6A7          mov bl,[0xa7b6]
00000252  32FF              xor bh,bh
00000254  8A8720ED          mov al,[bx-0x12e0]
00000258  8805              mov [di],al
0000025A  F6440540          test byte [si+0x5],0x40
0000025E  7408              jz 0x268
00000260  8A4405            mov al,[si+0x5]
00000263  241F              and al,0x1f
00000265  A2B7A7            mov [0xa7b7],al
00000268  FE06B6A7          inc byte [0xa7b6]
0000026C  83C610            add si,0x10
0000026F  EBC4              jmp 0x235
00000271  8B3610C0          mov si,[0xc010]
00000275  C704FFFF          mov word [si],0xffff
00000279  F606B7A7FF        test byte [0xa7b7],0xff
0000027E  7439              jz 0x2b9
00000280  A0B7A7            mov al,[0xa7b7]
00000283  50                push ax
00000284  2EFF163860        call word near [cs:0x6038]
00000289  8ADC              mov bl,ah
0000028B  32FF              xor bh,bh
0000028D  58                pop ax
0000028E  3C09              cmp al,0x9
00000290  740E              jz 0x2a0
00000292  3C01              cmp al,0x1
00000294  7504              jnz 0x29a
00000296  03DB              add bx,bx
00000298  EB06              jmp 0x2a0
0000029A  D1EB              shr bx,0x0
0000029C  D1EB              shr bx,0x0
0000029E  D1EB              shr bx,0x0
000002A0  E8A503            call 0x648
000002A3  C60675FF2F        mov byte [0xff75],0x2f
000002A8  803EA0A72F        cmp byte [0xa7a0],0x2f
000002AD  730A              jnc 0x2b9
000002AF  C606BFA714        mov byte [0xa7bf],0x14
000002B4  C606BDA7FF        mov byte [0xa7bd],0xff
000002B9  F6062EFFFF        test byte [0xff2e],0xff
000002BE  7403              jz 0x2c3
000002C0  E9AF03            jmp 0x672
000002C3  F606C0A7FF        test byte [0xa7c0],0xff
000002C8  7403              jz 0x2cd
000002CA  E9EC00            jmp 0x3b9
000002CD  F606C2A7FF        test byte [0xa7c2],0xff
000002D2  740A              jz 0x2de
000002D4  803EC7A70D        cmp byte [0xa7c7],0xd
000002D9  7303              jnc 0x2de
000002DB  E98500            jmp 0x363
000002DE  F606BDA7FF        test byte [0xa7bd],0xff
000002E3  7535              jnz 0x31a
000002E5  C606BFA73C        mov byte [0xa7bf],0x3c
000002EA  FE06B9A7          inc byte [0xa7b9]
000002EE  8026B9A707        and byte [0xa7b9],0x7
000002F3  A0B9A7            mov al,[0xa7b9]
000002F6  0E                push cs
000002F7  07                pop es
000002F8  BF1FA4            mov di,0xa41f
000002FB  B90500            mov cx,0x5
000002FE  F2AE              repne scasb
00000300  7516              jnz 0x318
00000302  50                push ax
00000303  E82701            call 0x42d
00000306  1AC0              sbb al,al
00000308  A2BDA7            mov [0xa7bd],al
0000030B  58                pop ax
0000030C  3C07              cmp al,0x7
0000030E  7508              jnz 0x318
00000310  E81A01            call 0x42d
00000313  1AC0              sbb al,al
00000315  A2BDA7            mov [0xa7bd],al
00000318  EB49              jmp 0x363
0000031A  FE0EBFA7          dec byte [0xa7bf]
0000031E  7507              jnz 0x327
00000320  C606BDA700        mov byte [0xa7bd],0x0
00000325  EB3C              jmp 0x363
00000327  A0B9A7            mov al,[0xa7b9]
0000032A  0AC0              or al,al
0000032C  7502              jnz 0x330
0000032E  B008              mov al,0x8
00000330  3C06              cmp al,0x6
00000332  7502              jnz 0x336
00000334  2C02              sub al,0x2
00000336  FEC8              dec al
00000338  A2B9A7            mov [0xa7b9],al
0000033B  0E                push cs
0000033C  07                pop es
0000033D  BF24A4            mov di,0xa424
00000340  B90500            mov cx,0x5
00000343  F2AE              repne scasb
00000345  751C              jnz 0x363
00000347  50                push ax
00000348  E8F400            call 0x43f
0000034B  F5                cmc
0000034C  1AC0              sbb al,al
0000034E  A2BDA7            mov [0xa7bd],al
00000351  58                pop ax
00000352  3C06              cmp al,0x6
00000354  7404              jz 0x35a
00000356  3C03              cmp al,0x3
00000358  75CD              jnz 0x327
0000035A  E8E200            call 0x43f
0000035D  F5                cmc
0000035E  1AC0              sbb al,al
00000360  A2BDA7            mov [0xa7bd],al
00000363  F606BDA7FF        test byte [0xa7bd],0xff
00000368  7539              jnz 0x3a3
0000036A  803EB9A706        cmp byte [0xa7b9],0x6
0000036F  7532              jnz 0x3a3
00000371  2EFF161A01        call word near [cs:0x11a]
00000376  2401              and al,0x1
00000378  7529              jnz 0x3a3
0000037A  F606C2A7FF        test byte [0xa7c2],0xff
0000037F  7522              jnz 0x3a3
00000381  2EA1A0A7          mov ax,[cs:0xa7a0]
00000385  2D1400            sub ax,0x14
00000388  7219              jc 0x3a3
0000038A  C606C0A7FF        mov byte [0xa7c0],0xff
0000038F  C606C1A700        mov byte [0xa7c1],0x0
00000394  C606BEA700        mov byte [0xa7be],0x0
00000399  C606B9A708        mov byte [0xa7b9],0x8
0000039E  C60675FF30        mov byte [0xff75],0x30
000003A3  FE06BBA7          inc byte [0xa7bb]
000003A7  8026BBA703        and byte [0xa7bb],0x3
000003AC  A0BBA7            mov al,[0xa7bb]
000003AF  BB1BA4            mov bx,0xa41b
000003B2  D7                xlatb
000003B3  A2BAA7            mov [0xa7ba],al
000003B6  E99700            jmp 0x450
000003B9  FE06C1A7          inc byte [0xa7c1]
000003BD  8A1EC1A7          mov bl,[0xa7c1]
000003C1  FECB              dec bl
000003C3  32FF              xor bh,bh
000003C5  03DB              add bx,bx
000003C7  FFA7C7A3          jmp word near [bx-0x5c39]
000003CB  CDA3              int byte 0xa3
000003CD  FE                db 0xfe
000003CE  A30AA4            mov [0xa40a],ax
000003D1  C606BAA706        mov byte [0xa7ba],0x6
000003D6  C606B9A708        mov byte [0xa7b9],0x8
000003DB  C606C2A7FF        mov byte [0xa7c2],0xff
000003E0  A1A0A7            mov ax,[0xa7a0]
000003E3  050400            add ax,0x4
000003E6  A3C3A7            mov [0xa7c3],ax
000003E9  A0A2A7            mov al,[0xa7a2]
000003EC  243F              and al,0x3f
000003EE  A2C5A7            mov [0xa7c5],al
000003F1  C606C6A700        mov byte [0xa7c6],0x0
000003F6  C606C7A700        mov byte [0xa7c7],0x0
000003FB  C606C8A700        mov byte [0xa7c8],0x0
00000400  EB4E              jmp 0x450
00000402  C606BAA707        mov byte [0xa7ba],0x7
00000407  C606B9A706        mov byte [0xa7b9],0x6
0000040C  EB42              jmp 0x450
0000040E  C606BAA700        mov byte [0xa7ba],0x0
00000413  C606C0A700        mov byte [0xa7c0],0x0
00000418  C606B9A706        mov byte [0xa7b9],0x6
0000041D  EB31              jmp 0x450
0000041F  0001              add [bx+di],al
00000421  0201              add al,[bx+di]
00000423  0205              add al,[di]
00000425  06                push es
00000426  07                pop es
00000427  0001              add [bx+di],al
00000429  03060707          add ax,[0x707]
0000042D  A1A0A7            mov ax,[0xa7a0]
00000430  48                dec ax
00000431  BB0E00            mov bx,0xe
00000434  2BD8              sub bx,ax
00000436  A3A0A7            mov [0xa7a0],ax
00000439  F5                cmc
0000043A  7301              jnc 0x43d
0000043C  C3                ret
0000043D  F8                clc
0000043E  C3                ret
0000043F  A1A0A7            mov ax,[0xa7a0]
00000442  40                inc ax
00000443  BB3200            mov bx,0x32
00000446  2BD8              sub bx,ax
00000448  7301              jnc 0x44b
0000044A  C3                ret
0000044B  A3A0A7            mov [0xa7a0],ax
0000044E  F8                clc
0000044F  C3                ret
00000450  0E                push cs
00000451  07                pop es
00000452  BFC9A7            mov di,0xa7c9
00000455  B92800            mov cx,0x28
00000458  B8FFFF            mov ax,0xffff
0000045B  F3AB              rep stosw
0000045D  8A1EB9A7          mov bl,[0xa7b9]
00000461  32FF              xor bh,bh
00000463  03DB              add bx,bx
00000465  8BB7C8A6          mov si,[bx-0x5938]
00000469  8BAF44A7          mov bp,[bx-0x58bc]
0000046D  BFCBA7            mov di,0xa7cb
00000470  B90800            mov cx,0x8
00000473  51                push cx
00000474  B90800            mov cx,0x8
00000477  3ED04600          rol byte [ds:bp+0x0],0x0
0000047B  7302              jnc 0x47f
0000047D  A4                movsb
0000047E  4F                dec di
0000047F  47                inc di
00000480  E2F5              loop 0x477
00000482  47                inc di
00000483  47                inc di
00000484  45                inc bp
00000485  59                pop cx
00000486  E2EB              loop 0x473
00000488  A0BAA7            mov al,[0xa7ba]
0000048B  02C0              add al,al
0000048D  BFF1A7            mov di,0xa7f1
00000490  803EB9A706        cmp byte [0xa7b9],0x6
00000495  7407              jz 0x49e
00000497  803EB9A708        cmp byte [0xa7b9],0x8
0000049C  7201              jc 0x49f
0000049E  47                inc di
0000049F  AA                stosb
000004A0  83C713            add di,0x13
000004A3  FEC0              inc al
000004A5  AA                stosb
000004A6  C606B6A700        mov byte [0xa7b6],0x0
000004AB  A1A0A7            mov ax,[0xa7a0]
000004AE  8B3610C0          mov si,[0xc010]
000004B2  BFC9A7            mov di,0xa7c9
000004B5  B90800            mov cx,0x8
000004B8  51                push cx
000004B9  57                push di
000004BA  50                push ax
000004BB  2EFF163660        call word near [cs:0x6036]
000004C0  58                pop ax
000004C1  881EBCA7          mov [0xa7bc],bl
000004C5  7274              jc 0x53b
000004C7  32C9              xor cl,cl
000004C9  51                push cx
000004CA  50                push ax
000004CB  803DFF            cmp byte [di],0xff
000004CE  7461              jz 0x531
000004D0  8904              mov [si],ax
000004D2  A0A2A7            mov al,[0xa7a2]
000004D5  02C1              add al,cl
000004D7  243F              and al,0x3f
000004D9  884402            mov [si+0x2],al
000004DC  A0BCA7            mov al,[0xa7bc]
000004DF  884403            mov [si+0x3],al
000004E2  8A05              mov al,[di]
000004E4  884406            mov [si+0x6],al
000004E7  8AE0              mov ah,al
000004E9  02C0              add al,al
000004EB  1AC0              sbb al,al
000004ED  2460              and al,0x60
000004EF  8ADC              mov bl,ah
000004F1  D0EB              shr bl,0x0
000004F3  D0EB              shr bl,0x0
000004F5  D0EB              shr bl,0x0
000004F7  D0EB              shr bl,0x0
000004F9  80E307            and bl,0x7
000004FC  0AC3              or al,bl
000004FE  884404            mov [si+0x4],al
00000501  C6440500          mov byte [si+0x5],0x0
00000505  F606B7A7FF        test byte [0xa7b7],0xff
0000050A  7404              jz 0x510
0000050C  804C0520          or byte [si+0x5],0x20
00000510  57                push di
00000511  8B4402            mov ax,[si+0x2]
00000514  2EFF162860        call word near [cs:0x6028]
00000519  8A1EB6A7          mov bl,[0xa7b6]
0000051D  32FF              xor bh,bh
0000051F  8AC3              mov al,bl
00000521  0C80              or al,0x80
00000523  8605              xchg al,[di]
00000525  888720ED          mov [bx-0x12e0],al
00000529  5F                pop di
0000052A  83C610            add si,0x10
0000052D  FE06B6A7          inc byte [0xa7b6]
00000531  47                inc di
00000532  58                pop ax
00000533  59                pop cx
00000534  FEC1              inc cl
00000536  80F90A            cmp cl,0xa
00000539  758E              jnz 0x4c9
0000053B  40                inc ax
0000053C  5F                pop di
0000053D  83C70A            add di,0xa
00000540  59                pop cx
00000541  E202              loop 0x545
00000543  EB03              jmp 0x548
00000545  E970FF            jmp 0x4b8
00000548  E8B300            call 0x5fe
0000054B  C704FFFF          mov word [si],0xffff
0000054F  F606C2A7FF        test byte [0xa7c2],0xff
00000554  7501              jnz 0x557
00000556  C3                ret
00000557  F606C8A7FF        test byte [0xa7c8],0xff
0000055C  756C              jnz 0x5ca
0000055E  803EC3A712        cmp byte [0xa7c3],0x12
00000563  7310              jnc 0x575
00000565  C606C8A7FF        mov byte [0xa7c8],0xff
0000056A  C606C6A703        mov byte [0xa7c6],0x3
0000056F  C60675FF32        mov byte [0xff75],0x32
00000574  C3                ret
00000575  8A1EC7A7          mov bl,[0xa7c7]
00000579  32FF              xor bh,bh
0000057B  03DB              add bx,bx
0000057D  8A87D8A5          mov al,[bx-0x5a28]
00000581  0006C3A7          add [0xa7c3],al
00000585  8A87D9A5          mov al,[bx-0x5a27]
00000589  0006C5A7          add [0xa7c5],al
0000058D  803EC7A710        cmp byte [0xa7c7],0x10
00000592  8016C7A700        adc byte [0xa7c7],0x0
00000597  A0C6A7            mov al,[0xa7c6]
0000059A  FEC0              inc al
0000059C  3C03              cmp al,0x3
0000059E  7202              jc 0x5a2
000005A0  32C0              xor al,al
000005A2  A2C6A7            mov [0xa7c6],al
000005A5  803EC7A709        cmp byte [0xa7c7],0x9
000005AA  7505              jnz 0x5b1
000005AC  C60675FF31        mov byte [0xff75],0x31
000005B1  803EC7A70C        cmp byte [0xa7c7],0xc
000005B6  7505              jnz 0x5bd
000005B8  C60675FF31        mov byte [0xff75],0x31
000005BD  803EC7A70F        cmp byte [0xa7c7],0xf
000005C2  7505              jnz 0x5c9
000005C4  C60675FF31        mov byte [0xff75],0x31
000005C9  C3                ret
000005CA  FE06C6A7          inc byte [0xa7c6]
000005CE  803EC6A706        cmp byte [0xa7c6],0x6
000005D3  7301              jnc 0x5d6
000005D5  C3                ret
000005D6  C606C2A700        mov byte [0xa7c2],0x0
000005DB  C3                ret
000005DC  FF00              inc word [bx+si]
000005DE  FF00              inc word [bx+si]
000005E0  FF01              inc word [bx+di]
000005E2  0002              add [bp+si],al
000005E4  FF02              inc word [bp+si]
000005E6  0002              add [bp+si],al
000005E8  FF02              inc word [bp+si]
000005EA  FF                db 0xff
000005EB  FE                db 0xfe
000005EC  FF00              inc word [bx+si]
000005EE  FF02              inc word [bp+si]
000005F0  FF                db 0xff
000005F1  FF                db 0xff
000005F2  FF00              inc word [bx+si]
000005F4  FF01              inc word [bx+di]
000005F6  FF00              inc word [bx+si]
000005F8  FF00              inc word [bx+si]
000005FA  FF00              inc word [bx+si]
000005FC  FF00              inc word [bx+si]
000005FE  F606C2A7FF        test byte [0xa7c2],0xff
00000603  7501              jnz 0x606
00000605  C3                ret
00000606  A1C3A7            mov ax,[0xa7c3]
00000609  50                push ax
0000060A  2EFF163660        call word near [cs:0x6036]
0000060F  58                pop ax
00000610  7301              jnc 0x613
00000612  C3                ret
00000613  8904              mov [si],ax
00000615  A0C5A7            mov al,[0xa7c5]
00000618  884402            mov [si+0x2],al
0000061B  885C03            mov [si+0x3],bl
0000061E  C6440426          mov byte [si+0x4],0x26
00000622  C6440500          mov byte [si+0x5],0x0
00000626  A0C6A7            mov al,[0xa7c6]
00000629  884406            mov [si+0x6],al
0000062C  8B4402            mov ax,[si+0x2]
0000062F  2EFF162860        call word near [cs:0x6028]
00000634  8A1EB6A7          mov bl,[0xa7b6]
00000638  32FF              xor bh,bh
0000063A  8AC3              mov al,bl
0000063C  0C80              or al,0x80
0000063E  8605              xchg al,[di]
00000640  888720ED          mov [bx-0x12e0],al
00000644  83C610            add si,0x10
00000647  C3                ret
00000648  A1A3A7            mov ax,[0xa7a3]
0000064B  2BC3              sub ax,bx
0000064D  7302              jnc 0x651
0000064F  33C0              xor ax,ax
00000651  A3A3A7            mov [0xa7a3],ax
00000654  8BD8              mov bx,ax
00000656  50                push ax
00000657  2EFF160C20        call word near [cs:0x200c]
0000065C  58                pop ax
0000065D  0BC0              or ax,ax
0000065F  7401              jz 0x662
00000661  C3                ret
00000662  C606B8A700        mov byte [0xa7b8],0x0
00000667  C606C2A700        mov byte [0xa7c2],0x0
0000066C  C6062EFFFF        mov byte [0xff2e],0xff
00000671  C3                ret
00000672  803EB8A728        cmp byte [0xa7b8],0x28
00000677  734D              jnc 0x6c6
00000679  C6062FFFFF        mov byte [0xff2f],0xff
0000067E  FE06B8A7          inc byte [0xa7b8]
00000682  803EB8A70A        cmp byte [0xa7b8],0xa
00000687  7320              jnc 0x6a9
00000689  A0B8A7            mov al,[0xa7b8]
0000068C  BB9BA6            mov bx,0xa69b
0000068F  D7                xlatb
00000690  A2B9A7            mov [0xa7b9],al
00000693  3C03              cmp al,0x3
00000695  7205              jc 0x69c
00000697  C60675FF33        mov byte [0xff75],0x33
0000069C  E904FD            jmp 0x3a3
0000069F  0001              add [bx+di],al
000006A1  0203              add al,[bp+di]
000006A3  06                push es
000006A4  07                pop es
000006A5  06                push es
000006A6  0302              add ax,[bp+si]
000006A8  018A26B8          add [bp+si-0x47da],cx
000006AC  A7                cmpsw
000006AD  B006              mov al,0x6
000006AF  80FC06            cmp ah,0x6
000006B2  7306              jnc 0x6ba
000006B4  8AC4              mov al,ah
000006B6  BBBCA6            mov bx,0xa6bc
000006B9  D7                xlatb
000006BA  A2BAA7            mov [0xa7ba],al
000006BD  E990FD            jmp 0x450
000006C0  0303              add ax,[bp+di]
000006C2  0404              add al,0x4
000006C4  0505C6            add ax,0xc605
000006C7  06                push es
000006C8  30FF              xor bh,bh
000006CA  FFC3              inc bx
000006CC  DCA6E3A6          fsub qword [bp-0x591d]
000006D0  EC                in al,dx
000006D1  A6                cmpsb
000006D2  F6A601A7          mul byte [bp-0x58ff]
000006D6  0CA7              or al,0xa7
000006D8  18A722A7          sbb [bx-0x58de],ah
000006DC  2EA7              cs cmpsw
000006DE  39A71110          cmp [bx+0x1011],sp
000006E2  1213              adc dl,[bp+di]
000006E4  1415              adc al,0x15
000006E6  16                push ss
000006E7  1117              adc [bx],dx
000006E9  1910              sbb [bx+si],dx
000006EB  1218              adc bl,[bx+si]
000006ED  1A1B              sbb bl,[bp+di]
000006EF  1C1D              sbb al,0x1d
000006F1  1F                pop ds
000006F2  2123              and [bp+di],sp
000006F4  101E2022          adc [0x2220],bl
000006F8  2425              and al,0x25
000006FA  292A              sub [bp+si],bp
000006FC  27                daa
000006FD  262810            sub [es:bx+si],dl
00000700  1E                push ds
00000701  2022              and [bp+si],ah
00000703  2425              and al,0x25
00000705  3230              xor dh,[bx+si]
00000707  2D312B            sub ax,0x2b31
0000070A  2E101E202C        adc [cs:0x2c20],bl
0000070F  2F                das
00000710  3D3A3C            cmp ax,0x3c3a
00000713  3B33              cmp si,[bp+di]
00000715  1034              adc [si],dh
00000717  353637            xor ax,0x3736
0000071A  3839              cmp [bx+di],bh
0000071C  42                inc dx
0000071D  43                inc bx
0000071E  40                inc ax
0000071F  44                inc sp
00000720  3E103F            adc [ds:bx],bh
00000723  41                inc cx
00000724  45                inc bp
00000725  46                inc si
00000726  58                pop ax
00000727  59                pop cx
00000728  5A                pop dx
00000729  4F                dec di
0000072A  50                push ax
0000072B  52                push dx
0000072C  54                push sp
0000072D  56                push si
0000072E  51                push cx
0000072F  53                push bx
00000730  55                push bp
00000731  57                push di
00000732  CA4247            retf word 0x4742
00000735  40                inc ax
00000736  48                dec ax
00000737  3E103F            adc [ds:bx],bh
0000073A  41                inc cx
0000073B  45                inc bp
0000073C  46                inc si
0000073D  CE                into
0000073E  42                inc dx
0000073F  4D                dec bp
00000740  40                inc ax
00000741  4C                dec sp
00000742  3E103F            adc [ds:bx],bh
00000745  41                inc cx
00000746  45                inc bp
00000747  46                inc si
00000748  58                pop ax
00000749  A7                cmpsw
0000074A  60                pusha
0000074B  A7                cmpsw
0000074C  68A770            push word 0x70a7
0000074F  A7                cmpsw
00000750  78A7              js 0x6f9
00000752  80A788A790        and byte [bx-0x5878],0x90
00000757  A7                cmpsw
00000758  98                cbw
00000759  A7                cmpsw
0000075A  98                cbw
0000075B  A7                cmpsw
0000075C  0000              add [bx+si],al
0000075E  0000              add [bx+si],al
00000760  20AB0100          and [bp+di+0x1],ch
00000764  0000              add [bx+si],al
00000766  0000              add [bx+si],al
00000768  2CAD              sub al,0xad
0000076A  0100              add [bx+si],ax
0000076C  0000              add [bx+si],al
0000076E  0000              add [bx+si],al
00000770  2B802B01          sub ax,[bx+si+0x12b]
00000774  0000              add [bx+si],al
00000776  051028            add ax,0x2810
00000779  802B01            sub byte [bp+di],0x1
0000077C  0804              or [si],al
0000077E  1800              sbb [bx+si],al
00000780  28802B00          sub [bx+si+0x2b],al
00000784  0002              add [bp+si],al
00000786  1410              adc al,0x10
00000788  20A80C03          and [bx+si+0x30c],ch
0000078C  0000              add [bx+si],al
0000078E  0305              add ax,[di]
00000790  105500            adc [di+0x0],dl
00000793  0100              add [bx+si],ax
00000795  0000              add [bx+si],al
00000797  000B              add [bp+di],cl
00000799  AB                stosw
0000079A  53                push bx
0000079B  0001              add [bx+di],al
0000079D  0003              add [bp+di],al
0000079F  051055            add ax,0x5510
000007A2  0001              add [bx+di],al
000007A4  260007            add [es:bx],al
000007A7  800270            add byte [bp+si],0x70
000007AA  17                pop ss
000007AB  08FF              or bh,bh
000007AD  AD                lodsw
000007AE  A7                cmpsw
000007AF  DC05              fadd qword [di]
000007B1  11BB0205          adc [bp+di+0x502],di
000007B5  54                push sp
000007B6  61                popa
000007B7  7273              jc 0x82c
000007B9  6F                outsw
000007BA  0000              add [bx+si],al
000007BC  0000              add [bx+si],al
000007BE  0000              add [bx+si],al
000007C0  0000              add [bx+si],al
000007C2  0000              add [bx+si],al
000007C4  0000              add [bx+si],al
000007C6  0000              add [bx+si],al
000007C8  0000              add [bx+si],al
000007CA  0000              add [bx+si],al
000007CC  0000              add [bx+si],al
000007CE  0000              add [bx+si],al
000007D0  0000              add [bx+si],al
000007D2  0000              add [bx+si],al
000007D4  0000              add [bx+si],al
000007D6  0000              add [bx+si],al
000007D8  0000              add [bx+si],al
000007DA  0000              add [bx+si],al
000007DC  0000              add [bx+si],al
000007DE  0000              add [bx+si],al
000007E0  0000              add [bx+si],al
000007E2  0000              add [bx+si],al
000007E4  0000              add [bx+si],al
000007E6  0000              add [bx+si],al
000007E8  0000              add [bx+si],al
000007EA  0000              add [bx+si],al
000007EC  0000              add [bx+si],al
000007EE  0000              add [bx+si],al
000007F0  0000              add [bx+si],al
000007F2  0000              add [bx+si],al
000007F4  0000              add [bx+si],al
000007F6  0000              add [bx+si],al
000007F8  0000              add [bx+si],al
000007FA  0000              add [bx+si],al
000007FC  0000              add [bx+si],al
000007FE  0000              add [bx+si],al
00000800  0000              add [bx+si],al
00000802  0000              add [bx+si],al
00000804  0000              add [bx+si],al
00000806  0000              add [bx+si],al
00000808  0000              add [bx+si],al
0000080A  0000              add [bx+si],al
0000080C  0000              add [bx+si],al
0000080E  0000              add [bx+si],al
00000810  0000              add [bx+si],al
00000812  0000              add [bx+si],al
00000814  0000              add [bx+si],al
00000816  0000              add [bx+si],al
00000818  0000              add [bx+si],al
0000081A  0000              add [bx+si],al
0000081C  00                db 0x00
