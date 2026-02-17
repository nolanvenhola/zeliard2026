00000000  A90B00            test ax,0xb
00000003  00DD              add ch,bl
00000005  A23CAA            mov [0xaa3c],al
00000008  0000              add [bx+si],al
0000000A  0000              add [bx+si],al
0000000C  0000              add [bx+si],al
0000000E  0000              add [bx+si],al
00000010  0000              add [bx+si],al
00000012  0000              add [bx+si],al
00000014  281E1E1E          sub [0x1e1e],bl
00000018  1E                push ds
00000019  1E                push ds
0000001A  1E                push ds
0000001B  1E                push ds
0000001C  2828              sub [bx+si],ch
0000001E  0000              add [bx+si],al
00000020  0000              add [bx+si],al
00000022  0000              add [bx+si],al
00000024  0000              add [bx+si],al
00000026  0000              add [bx+si],al
00000028  0000              add [bx+si],al
0000002A  0000              add [bx+si],al
0000002C  0000              add [bx+si],al
0000002E  0000              add [bx+si],al
00000030  0000              add [bx+si],al
00000032  0000              add [bx+si],al
00000034  44                inc sp
00000035  A06CA0            mov al,[0xa06c]
00000038  BCA007            mov sp,0x7a0
0000003B  A152A1            mov ax,[0xa152]
0000003E  8EA1DEA1          mov fs,word [bx+di-0x5e22]
00000042  1F                pop ds
00000043  A247A2            mov [0xa247],al
00000046  97                xchg ax,di
00000047  A20066            mov [0x6600],al
0000004A  00676C            add [bx+0x6c],ah
0000004D  006869            add [bx+si+0x69],ch
00000050  6D                insw
00000051  6E                outsb
00000052  006C6D            add [si+0x6d],ch
00000055  7273              jc 0xca
00000057  00838400          add [bp+di+0x84],al
0000005B  8600              xchg al,[bx+si]
0000005D  95                xchg ax,bp
0000005E  B198              mov cl,0x98
00000060  99                cwd
00000061  009A9B9D          add [bp+si-0x6265],bl
00000065  9E                sahf
00000066  006890            add [bx+si-0x70],ch
00000069  6D                insw
0000006A  91                xchg ax,cx
0000006B  009A9B9D          add [bp+si-0x6265],bl
0000006F  FE00              inc byte [bx+si]
00000071  7374              jnc 0xe7
00000073  0000              add [bx+si],al
00000075  006A6B            add [bp+si+0x6b],ch
00000078  6F                outsw
00000079  7000              jo 0x7b
0000007B  7071              jo 0xee
0000007D  7576              jnz 0xf5
0000007F  007778            add [bx+0x78],dh
00000082  7A7B              jpe 0xff
00000084  007879            add [bx+si+0x79],bh
00000087  7B7C              jpo 0x105
00000089  007D7E            add [di+0x7e],bh
0000008C  7710              ja 0x9e
0000008E  007F01            add [bx+0x1],bh
00000091  0C0D              or al,0xd
00000093  007710            add [bx+0x10],dh
00000096  000E0097          add [0x9700],cl
0000009A  007071            add [bx+si+0x71],dh
0000009D  00B37500          add [bp+di+0x75],dh
000000A1  7700              ja 0xa3
000000A3  7600              jna 0xa5
000000A5  7879              js 0x120
000000A7  00A69F87          add [bp-0x7861],ah
000000AB  A10099            mov ax,[0x9900]
000000AE  87B38800          xchg si,[bp+di+0x88]
000000B2  A1A38C            mov ax,[0x8ca3]
000000B5  8900              mov [bx+si],ax
000000B7  8A00              mov al,[bx+si]
000000B9  AD                lodsw
000000BA  8D00              lea ax,[bx+si]
000000BC  AD                lodsw
000000BD  8D8B1000          lea cx,[bp+di+0x10]
000000C1  8D8F107E          lea cx,[bx+0x7e10]
000000C5  00A6010C          add [bp+0xc01],ah
000000C9  0D008E            or ax,0x8e00
000000CC  10670E            adc [bx+0xe],ah
000000CF  006E6F            add [bp+0x6f],ch
000000D2  73A7              jnc 0x7b
000000D4  006A6B            add [bp+si+0x6b],ch
000000D7  6F                outsw
000000D8  A000A0            mov al,[0xa000]
000000DB  A1A8A9            mov ax,[0xa9a8]
000000DE  009F9FA1          add [bx-0x5e61],bl
000000E2  A200A2            mov [0xa200],al
000000E5  A3AAAB            mov [0xabaa],ax
000000E8  00A4A5AC          add [si-0x535b],ah
000000EC  AD                lodsw
000000ED  00ACAD67          add [si+0x67ad],ch
000000F1  0E                push cs
000000F2  006E6F            add [bp+0x6f],ch
000000F5  85A70080          test [bx-0x8000],sp
000000F9  82                db 0x82
000000FA  81AE00B4D3C4      sub word [bp-0x4c00],0xc4d3
00000100  94                xchg ax,sp
00000101  00D3              add bl,dl
00000103  00949C00          add [si+0x9c],dl
00000107  857400            test [si+0x0],si
0000010A  0000              add [bx+si],al
0000010C  00DF              add bh,bl
0000010E  E8E900            call 0x1fa
00000111  E0E1              loopne 0xf4
00000113  EAEA00E2E2        jmp word 0xe2e2:word 0xea
00000118  EAEB00E3E4        jmp word 0xe4e3:word 0xeb
0000011D  0000              add [bx+si],al
0000011F  00E4              add ah,ah
00000121  E500              in ax,byte 0x0
00000123  0000              add [bx+si],al
00000125  00E7              add bh,ah
00000127  EC                in al,dx
00000128  ED                in ax,dx
00000129  0000              add [bx+si],al
0000012B  F5                cmc
0000012C  F9                stc
0000012D  FA                cli
0000012E  00ED              add ch,ch
00000130  EE                out dx,al
00000131  F6F7              div bh
00000133  00EF              add bh,ch
00000135  F0                lock
00000136  F8                clc
00000137  EA00F1F2EA        jmp word 0xeaf2:word 0xf100
0000013C  EB00              jmp 0x13e
0000013E  F3F4              rep hlt
00000140  0000              add [bx+si],al
00000142  0000              add [bx+si],al
00000144  00F4              add ah,dh
00000146  0000              add [bx+si],al
00000148  FB                sti
00000149  FC                cld
0000014A  B296              mov dl,0x96
0000014C  00FD              add ch,bh
0000014E  FD                std
0000014F  EAEA00FDF3        jmp word 0xf3fd:word 0xea
00000154  E6A6              out byte 0xa6,al
00000156  0000              add [bx+si],al
00000158  92                xchg ax,dx
00000159  F9                stc
0000015A  FA                cli
0000015B  0093BBBA          add [bp+di-0x4545],dl
0000015F  BF0000            mov di,0x0
00000162  CC                int3
00000163  C8E900CF          enter word 0xe9,byte 0xcf
00000167  CF                iret
00000168  EAEB00D0D1        jmp word 0xd1d0:word 0xeb
0000016D  0000              add [bx+si],al
0000016F  00AF0000          add [bx+0x0],ch
00000173  B000              mov al,0x0
00000175  BCC1B2            mov sp,0xb2c1
00000178  96                xchg ax,si
00000179  00CA              add dl,cl
0000017B  F1                int1
0000017C  FD                std
0000017D  FD                std
0000017E  00F2              add dl,dh
00000180  F3FD              rep std
00000182  F300F3            rep add bl,dh
00000185  F4                hlt
00000186  F3F4              rep hlt
00000188  00FD              add ch,bh
0000018A  FD                std
0000018B  EAEA00FDF3        jmp word 0xf3fd:word 0xea
00000190  E6A6              out byte 0xa6,al
00000192  0000              add [bx+si],al
00000194  0E                push cs
00000195  2021              and [bx+di],ah
00000197  000F              add [bx],cl
00000199  1022              adc [bp+si],ah
0000019B  2300              and ax,[bx+si]
0000019D  0203              add al,[bp+di]
0000019F  1910              sbb [bx+si],dx
000001A1  0004              add [si],al
000001A3  051A1B            add ax,0x1b1a
000001A6  001C              add [si],bl
000001A8  1D2425            sbb ax,0x2524
000001AB  001E1F26          add [0x261f],bl
000001AF  27                daa
000001B0  000E0F20          add [0x200f],cl
000001B4  1200              adc al,[bx+si]
000001B6  0F1012            movups xmm2,oword [bp+si]
000001B9  3C00              cmp al,0x0
000001BB  0203              add al,[bp+di]
000001BD  1928              sbb [bx+si],bp
000001BF  0004              add [si],al
000001C1  05292A            add ax,0x2a29
000001C4  001C              add [si],bl
000001C6  2B3D              sub di,[di]
000001C8  26002C            add [es:si],ch
000001CB  1127              adc [bx],sp
000001CD  3100              xor [bx+si],ax
000001CF  0F1037            movups xmm6,oword [bx]
000001D2  3800              cmp [bx+si],al
000001D4  0203              add al,[bp+di]
000001D6  3233              xor dh,[bp+di]
000001D8  0004              add [si],al
000001DA  053435            add ax,0x3534
000001DD  00362C26          add [0x262c],dh
000001E1  27                daa
000001E2  0011              add [bx+di],dl
000001E4  1131              adc [bx+di],si
000001E6  3900              cmp [bx+si],ax
000001E8  06                push es
000001E9  07                pop es
000001EA  115C00            adc [si+0x0],bx
000001ED  11423B            adc [bp+si+0x3b],ax
000001F0  48                dec ax
000001F1  0008              add [bx+si],cl
000001F3  093E3F00          or [0x3f],di
000001F7  43                inc bx
000001F8  44                inc sp
000001F9  49                dec cx
000001FA  4A                dec dx
000001FB  004546            add [di+0x46],al
000001FE  4B                dec bx
000001FF  4C                dec sp
00000200  004716            add [bx+0x16],al
00000203  4D                dec bp
00000204  4E                dec si
00000205  0011              add [bx+di],dl
00000207  4F                dec di
00000208  55                push bp
00000209  56                push si
0000020A  005416            add [si+0x16],dl
0000020D  5B                pop bx
0000020E  4E                dec si
0000020F  005051            add [bx+si+0x51],dl
00000212  57                push di
00000213  58                pop ax
00000214  005253            add [bp+si+0x53],dl
00000217  59                pop cx
00000218  5A                pop dx
00000219  0011              add [bx+di],dl
0000021B  5E                pop si
0000021C  64650008          add [gs:bx+si],cl
00000220  095D3F            or [di+0x3f],bx
00000223  005F60            add [bx+0x60],bl
00000226  2D2E00            sub ax,0x2e
00000229  61                popa
0000022A  622F              bound bp,[bx]
0000022C  3000              xor [bx+si],al
0000022E  63163A4E          arpl [0x4e3a],dx
00000232  000A              add [bp+si],cl
00000234  0B4041            or ax,[bx+si+0x41]
00000237  0000              add [bx+si],al
00000239  0014              add [si],dl
0000023B  150006            adc ax,0x600
0000023E  07                pop es
0000023F  1111              adc [bx+di],dx
00000241  0013              add [bp+di],dl
00000243  7517              jnz 0x25c
00000245  7700              ja 0x247
00000247  17                pop ss
00000248  7718              ja 0x262
0000024A  7A01              jpe 0x24d
0000024C  00B6B700          add [bp+0xb7],dh
00000250  0100              add [bx+si],ax
00000252  B5B6              mov ch,0xb6
00000254  0001              add [bx+di],al
00000256  00B6B700          add [bp+0xb7],dh
0000025A  0100              add [bx+si],ax
0000025C  B7B8              mov bh,0xb8
0000025E  0001              add [bx+di],al
00000260  00B6B500          add [bp+0xb5],dh
00000264  01B9B6B8          add [bx+di-0x474a],di
00000268  0001              add [bx+di],al
0000026A  BEB8B8            mov si,0xb8b8
0000026D  C001B8            rol byte [bx+di],byte 0xb8
00000270  C0C5C6            rol ch,byte 0xc6
00000273  0100              add [bx+si],ax
00000275  00C2              add dl,al
00000277  C701BDBE          mov word [bx+di],0xbebd
0000027B  C5                db 0xc5
0000027C  C3                ret
0000027D  0100              add [bx+si],ax
0000027F  00BDC201          add [di+0x1c2],bh
00000283  C9                leave
00000284  B7CB              mov bh,0xcb
00000286  0001              add [bx+di],al
00000288  C9                leave
00000289  CDCD              int byte 0xcd
0000028B  CE                into
0000028C  0100              add [bx+si],ax
0000028E  C9                leave
0000028F  BED201            mov si,0x1d2
00000292  00CD              add ch,cl
00000294  C2D201            ret word 0x1d2
00000297  CE                into
00000298  00C2              add dl,al
0000029A  D401              aam byte 0x1
0000029C  0000              add [bx+si],al
0000029E  D5D8              aad byte 0xd8
000002A0  0100              add [bx+si],ax
000002A2  00D8              add al,bl
000002A4  D901              fld dword [bx+di]
000002A6  0000              add [bx+si],al
000002A8  DADC              fcmovu st4
000002AA  0100              add [bx+si],ax
000002AC  00DB              add bl,bl
000002AE  DC01              fadd qword [bx+di]
000002B0  0000              add [bx+si],al
000002B2  DBDE              fcmovnu st6
000002B4  0100              add [bx+si],ax
000002B6  00D5              add ch,dl
000002B8  D6                salc
000002B9  0100              add [bx+si],ax
000002BB  00D6              add dh,dl
000002BD  D6                salc
000002BE  0100              add [bx+si],ax
000002C0  00D7              add bh,dl
000002C2  D7                xlatb
000002C3  0100              add [bx+si],ax
000002C5  00D6              add dh,dl
000002C7  D7                xlatb
000002C8  0100              add [bx+si],ax
000002CA  00D8              add al,bl
000002CC  D901              fld dword [bx+di]
000002CE  0000              add [bx+si],al
000002D0  DADB              fcmovu st3
000002D2  0100              add [bx+si],ax
000002D4  00DB              add bl,bl
000002D6  DC01              fadd qword [bx+di]
000002D8  0000              add [bx+si],al
000002DA  DC                db 0xdc
000002DB  DB01              fild dword [bx+di]
000002DD  0000              add [bx+si],al
000002DF  DDDE              fstp st6
000002E1  8B3610C0          mov si,[0xc010]
000002E5  C60659AA00        mov byte [0xaa59],0x0
000002EA  C6065AAA00        mov byte [0xaa5a],0x0
000002EF  833CFF            cmp word [si],0xffffffffffffffff
000002F2  7446              jz 0x33a
000002F4  8B04              mov ax,[si]
000002F6  2EFF163660        call word near [cs:0x6036]
000002FB  7234              jc 0x331
000002FD  885C03            mov [si+0x3],bl
00000300  8B4402            mov ax,[si+0x2]
00000303  2EFF162860        call word near [cs:0x6028]
00000308  8A1E59AA          mov bl,[0xaa59]
0000030C  32FF              xor bh,bh
0000030E  8A8720ED          mov al,[bx-0x12e0]
00000312  8805              mov [di],al
00000314  F6440540          test byte [si+0x5],0x40
00000318  7417              jz 0x331
0000031A  F6065AAA80        test byte [0xaa5a],0x80
0000031F  7510              jnz 0x331
00000321  8A4405            mov al,[si+0x5]
00000324  241F              and al,0x1f
00000326  F644041F          test byte [si+0x4],0x1f
0000032A  7502              jnz 0x32e
0000032C  0C80              or al,0x80
0000032E  A25AAA            mov [0xaa5a],al
00000331  FE0659AA          inc byte [0xaa59]
00000335  83C610            add si,0x10
00000338  EBB5              jmp 0x2ef
0000033A  8B3610C0          mov si,[0xc010]
0000033E  C704FFFF          mov word [si],0xffff
00000342  F6065AAAFF        test byte [0xaa5a],0xff
00000347  7475              jz 0x3be
00000349  A05AAA            mov al,[0xaa5a]
0000034C  50                push ax
0000034D  241F              and al,0x1f
0000034F  2EFF163860        call word near [cs:0x6038]
00000354  8ADC              mov bl,ah
00000356  32FF              xor bh,bh
00000358  58                pop ax
00000359  8AE0              mov ah,al
0000035B  80E47F            and ah,0x7f
0000035E  D1EB              shr bx,0x0
00000360  80EC02            sub ah,0x2
00000363  7204              jc 0x369
00000365  D1EB              shr bx,0x0
00000367  D1EB              shr bx,0x0
00000369  A880              test al,0x80
0000036B  740E              jz 0x37b
0000036D  C60665AAFF        mov byte [0xaa65],0xff
00000372  C60675FF34        mov byte [0xff75],0x34
00000377  03DB              add bx,bx
00000379  EB0A              jmp 0x385
0000037B  C6065FAAFF        mov byte [0xaa5f],0xff
00000380  C60675FF35        mov byte [0xff75],0x35
00000385  E83006            call 0x9b8
00000388  F60665AAFF        test byte [0xaa65],0xff
0000038D  742A              jz 0x3b9
0000038F  A05BAA            mov al,[0xaa5b]
00000392  3C06              cmp al,0x6
00000394  1AC0              sbb al,al
00000396  F6D8              neg al
00000398  A266AA            mov [0xaa66],al
0000039B  C60667AA00        mov byte [0xaa67],0x0
000003A0  C60656AA00        mov byte [0xaa56],0x0
000003A5  C60661AA00        mov byte [0xaa61],0x0
000003AA  C6065FAAFF        mov byte [0xaa5f],0xff
000003AF  C60668AAFF        mov byte [0xaa68],0xff
000003B4  C60660AA08        mov byte [0xaa60],0x8
000003B9  C60665AA00        mov byte [0xaa65],0x0
000003BE  F6062EFFFF        test byte [0xff2e],0xff
000003C3  7403              jz 0x3c8
000003C5  E92E06            jmp 0x9f6
000003C8  FE065CAA          inc byte [0xaa5c]
000003CC  F60656AAFF        test byte [0xaa56],0xff
000003D1  7403              jz 0x3d6
000003D3  E92A01            jmp 0x500
000003D6  F60661AAFF        test byte [0xaa61],0xff
000003DB  7403              jz 0x3e0
000003DD  E9E600            jmp 0x4c6
000003E0  80065EAA80        add byte [0xaa5e],0x80
000003E5  732D              jnc 0x414
000003E7  F6065FAAFF        test byte [0xaa5f],0xff
000003EC  750B              jnz 0x3f9
000003EE  E83401            call 0x525
000003F1  7221              jc 0x414
000003F3  FE065DAA          inc byte [0xaa5d]
000003F7  EB1B              jmp 0x414
000003F9  FE0E60AA          dec byte [0xaa60]
000003FD  7507              jnz 0x406
000003FF  C6065FAA00        mov byte [0xaa5f],0x0
00000404  EB0E              jmp 0x414
00000406  E82D01            call 0x536
00000409  1AC0              sbb al,al
0000040B  F6D0              not al
0000040D  A25FAA            mov [0xaa5f],al
00000410  FE0E5DAA          dec byte [0xaa5d]
00000414  F60668AAFF        test byte [0xaa68],0xff
00000419  7577              jnz 0x492
0000041B  2EFF161A01        call word near [cs:0x11a]
00000420  24C0              and al,0xc0
00000422  7528              jnz 0x44c
00000424  F6065BAAFF        test byte [0xaa5b],0xff
00000429  740E              jz 0x439
0000042B  803E5BAA04        cmp byte [0xaa5b],0x4
00000430  7407              jz 0x439
00000432  803E5BAA07        cmp byte [0xaa5b],0x7
00000437  7513              jnz 0x44c
00000439  A05BAA            mov al,[0xaa5b]
0000043C  A262AA            mov [0xaa62],al
0000043F  C60663AA00        mov byte [0xaa63],0x0
00000444  C60661AAFF        mov byte [0xaa61],0xff
00000449  E9FA00            jmp 0x546
0000044C  A08000            mov al,[0x80]
0000044F  0410              add al,0x10
00000451  3A063CAA          cmp al,[0xaa3c]
00000455  7311              jnc 0x468
00000457  B006              mov al,0x6
00000459  803E5BAA06        cmp byte [0xaa5b],0x6
0000045E  7202              jc 0x462
00000460  B007              mov al,0x7
00000462  A25BAA            mov [0xaa5b],al
00000465  E9DE00            jmp 0x546
00000468  2C05              sub al,0x5
0000046A  3A063CAA          cmp al,[0xaa3c]
0000046E  7311              jnc 0x481
00000470  B000              mov al,0x0
00000472  803E5BAA07        cmp byte [0xaa5b],0x7
00000477  7202              jc 0x47b
00000479  B006              mov al,0x6
0000047B  A25BAA            mov [0xaa5b],al
0000047E  E9C500            jmp 0x546
00000481  B004              mov al,0x4
00000483  803E5BAA07        cmp byte [0xaa5b],0x7
00000488  7202              jc 0x48c
0000048A  B006              mov al,0x6
0000048C  A25BAA            mov [0xaa5b],al
0000048F  E9B400            jmp 0x546
00000492  BBB4A4            mov bx,0xa4b4
00000495  F60666AAFF        test byte [0xaa66],0xff
0000049A  7503              jnz 0x49f
0000049C  BBBBA4            mov bx,0xa4bb
0000049F  A067AA            mov al,[0xaa67]
000004A2  D7                xlatb
000004A3  0AC0              or al,al
000004A5  7907              jns 0x4ae
000004A7  247F              and al,0x7f
000004A9  C60668AA00        mov byte [0xaa68],0x0
000004AE  A25BAA            mov [0xaa5b],al
000004B1  FE0667AA          inc byte [0xaa67]
000004B5  E98E00            jmp 0x546
000004B8  0A09              or cl,[bx+di]
000004BA  06                push es
000004BB  0302              add ax,[bp+si]
000004BD  03820302          add ax,[bp+si+0x203]
000004C1  0302              add ax,[bp+si]
000004C3  0103              add [bp+di],ax
000004C5  82                db 0x82
000004C6  FE0663AA          inc byte [0xaa63]
000004CA  A063AA            mov al,[0xaa63]
000004CD  2401              and al,0x1
000004CF  020662AA          add al,[0xaa62]
000004D3  A25BAA            mov [0xaa5b],al
000004D6  A063AA            mov al,[0xaa63]
000004D9  3C06              cmp al,0x6
000004DB  7269              jc 0x546
000004DD  A062AA            mov al,[0xaa62]
000004E0  FEC0              inc al
000004E2  A25BAA            mov [0xaa5b],al
000004E5  C60657AA00        mov byte [0xaa57],0x0
000004EA  C60664AA00        mov byte [0xaa64],0x0
000004EF  C60661AA00        mov byte [0xaa61],0x0
000004F4  C60656AAFF        mov byte [0xaa56],0xff
000004F9  C60675FF36        mov byte [0xff75],0x36
000004FE  EB46              jmp 0x546
00000500  C60675FF36        mov byte [0xff75],0x36
00000505  A057AA            mov al,[0xaa57]
00000508  FEC0              inc al
0000050A  3C04              cmp al,0x4
0000050C  7202              jc 0x510
0000050E  B002              mov al,0x2
00000510  A257AA            mov [0xaa57],al
00000513  FE0664AA          inc byte [0xaa64]
00000517  A064AA            mov al,[0xaa64]
0000051A  3C0A              cmp al,0xa
0000051C  7228              jc 0x546
0000051E  C60656AA00        mov byte [0xaa56],0x0
00000523  EB21              jmp 0x546
00000525  A13CAA            mov ax,[0xaa3c]
00000528  48                dec ax
00000529  BB0E00            mov bx,0xe
0000052C  2BD8              sub bx,ax
0000052E  F5                cmc
0000052F  7301              jnc 0x532
00000531  C3                ret
00000532  A33CAA            mov [0xaa3c],ax
00000535  C3                ret
00000536  A13CAA            mov ax,[0xaa3c]
00000539  40                inc ax
0000053A  BB1E00            mov bx,0x1e
0000053D  2BD8              sub bx,ax
0000053F  7301              jnc 0x542
00000541  C3                ret
00000542  A33CAA            mov [0xaa3c],ax
00000545  C3                ret
00000546  0E                push cs
00000547  07                pop es
00000548  BF69AA            mov di,0xaa69
0000054B  B8FFFF            mov ax,0xffff
0000054E  B9A000            mov cx,0xa0
00000551  F3AB              rep stosw
00000553  C60653AA00        mov byte [0xaa53],0x0
00000558  C60654AA01        mov byte [0xaa54],0x1
0000055D  8A1E5BAA          mov bl,[0xaa5b]
00000561  02DB              add bl,bl
00000563  32FF              xor bh,bh
00000565  8BB783A7          mov si,[bx-0x587d]
00000569  8BAF10A8          mov bp,[bx-0x57f0]
0000056D  B90C00            mov cx,0xc
00000570  E8E901            call 0x75c
00000573  C60653AA0C        mov byte [0xaa53],0xc
00000578  C60654AA00        mov byte [0xaa54],0x0
0000057D  8A1E5CAA          mov bl,[0xaa5c]
00000581  80E301            and bl,0x1
00000584  02DB              add bl,bl
00000586  8BB7DEA8          mov si,[bx-0x5722]
0000058A  8BAFFDA8          mov bp,[bx-0x5703]
0000058E  B90B00            mov cx,0xb
00000591  E8C801            call 0x75c
00000594  C60653AA09        mov byte [0xaa53],0x9
00000599  C60654AA06        mov byte [0xaa54],0x6
0000059E  8A1E5DAA          mov bl,[0xaa5d]
000005A2  80E303            and bl,0x3
000005A5  02DB              add bl,bl
000005A7  8BB781A8          mov si,[bx-0x577f]
000005AB  8BAF9AA8          mov bp,[bx-0x5766]
000005AF  B90700            mov cx,0x7
000005B2  E8A701            call 0x75c
000005B5  C60653AA11        mov byte [0xaa53],0x11
000005BA  C60654AA06        mov byte [0xaa54],0x6
000005BF  8A1E5DAA          mov bl,[0xaa5d]
000005C3  80E303            and bl,0x3
000005C6  02DB              add bl,bl
000005C8  8BB7B7A8          mov si,[bx-0x5749]
000005CC  BDD7A8            mov bp,0xa8d7
000005CF  B90700            mov cx,0x7
000005D2  E88701            call 0x75c
000005D5  C60653AA19        mov byte [0xaa53],0x19
000005DA  C60654AA08        mov byte [0xaa54],0x8
000005DF  BE7AA8            mov si,0xa87a
000005E2  BD7DA8            mov bp,0xa87d
000005E5  B90400            mov cx,0x4
000005E8  E87101            call 0x75c
000005EB  C60659AA00        mov byte [0xaa59],0x0
000005F0  A13CAA            mov ax,[0xaa3c]
000005F3  8B3610C0          mov si,[0xc010]
000005F7  BF69AA            mov di,0xaa69
000005FA  B91D00            mov cx,0x1d
000005FD  51                push cx
000005FE  57                push di
000005FF  50                push ax
00000600  2EFF163660        call word near [cs:0x6036]
00000605  58                pop ax
00000606  881E55AA          mov [0xaa55],bl
0000060A  7272              jc 0x67e
0000060C  32C9              xor cl,cl
0000060E  51                push cx
0000060F  50                push ax
00000610  803DFF            cmp byte [di],0xff
00000613  745F              jz 0x674
00000615  8904              mov [si],ax
00000617  A03EAA            mov al,[0xaa3e]
0000061A  02C1              add al,cl
0000061C  243F              and al,0x3f
0000061E  884402            mov [si+0x2],al
00000621  A055AA            mov al,[0xaa55]
00000624  884403            mov [si+0x3],al
00000627  8A05              mov al,[di]
00000629  8AE0              mov ah,al
0000062B  D0E8              shr al,0x0
0000062D  D0E8              shr al,0x0
0000062F  D0E8              shr al,0x0
00000631  D0E8              shr al,0x0
00000633  8A1E2EFF          mov bl,[0xff2e]
00000637  F6D3              not bl
00000639  80E380            and bl,0x80
0000063C  0AC3              or al,bl
0000063E  884404            mov [si+0x4],al
00000641  886406            mov [si+0x6],ah
00000644  C6440500          mov byte [si+0x5],0x0
00000648  F6065AAAFF        test byte [0xaa5a],0xff
0000064D  7404              jz 0x653
0000064F  804C0520          or byte [si+0x5],0x20
00000653  57                push di
00000654  8B4402            mov ax,[si+0x2]
00000657  2EFF162860        call word near [cs:0x6028]
0000065C  8A1E59AA          mov bl,[0xaa59]
00000660  32FF              xor bh,bh
00000662  8AC3              mov al,bl
00000664  0C80              or al,0x80
00000666  8605              xchg al,[di]
00000668  888720ED          mov [bx-0x12e0],al
0000066C  83C610            add si,0x10
0000066F  FE0659AA          inc byte [0xaa59]
00000673  5F                pop di
00000674  47                inc di
00000675  58                pop ax
00000676  59                pop cx
00000677  FEC1              inc cl
00000679  80F90A            cmp cl,0xa
0000067C  7590              jnz 0x60e
0000067E  40                inc ax
0000067F  5F                pop di
00000680  83C70A            add di,0xa
00000683  59                pop cx
00000684  E202              loop 0x688
00000686  EB03              jmp 0x68b
00000688  E972FF            jmp 0x5fd
0000068B  C704FFFF          mov word [si],0xffff
0000068F  F60656AAFF        test byte [0xaa56],0xff
00000694  7501              jnz 0x697
00000696  C3                ret
00000697  BF17A9            mov di,0xa917
0000069A  BD30A9            mov bp,0xa930
0000069D  803E5BAA06        cmp byte [0xaa5b],0x6
000006A2  7206              jc 0x6aa
000006A4  BF6CA9            mov di,0xa96c
000006A7  BD85A9            mov bp,0xa985
000006AA  8A1E57AA          mov bl,[0xaa57]
000006AE  80E303            and bl,0x3
000006B1  02DB              add bl,bl
000006B3  32FF              xor bh,bh
000006B5  8B39              mov di,[bx+di]
000006B7  57                push di
000006B8  8BFD              mov di,bp
000006BA  8B29              mov bp,[bx+di]
000006BC  5F                pop di
000006BD  A13CAA            mov ax,[0xaa3c]
000006C0  2D0A00            sub ax,0xa
000006C3  803E5BAA05        cmp byte [0xaa5b],0x5
000006C8  7503              jnz 0x6cd
000006CA  050400            add ax,0x4
000006CD  B90D00            mov cx,0xd
000006D0  51                push cx
000006D1  50                push ax
000006D2  2EFF163660        call word near [cs:0x6036]
000006D7  58                pop ax
000006D8  881E55AA          mov [0xaa55],bl
000006DC  730E              jnc 0x6ec
000006DE  B90800            mov cx,0x8
000006E1  3ED04600          rol byte [ds:bp+0x0],0x0
000006E5  7301              jnc 0x6e8
000006E7  47                inc di
000006E8  E2F7              loop 0x6e1
000006EA  EB61              jmp 0x74d
000006EC  32C9              xor cl,cl
000006EE  51                push cx
000006EF  50                push ax
000006F0  3ED04600          rol byte [ds:bp+0x0],0x0
000006F4  734E              jnc 0x744
000006F6  8904              mov [si],ax
000006F8  A03EAA            mov al,[0xaa3e]
000006FB  02C1              add al,cl
000006FD  0404              add al,0x4
000006FF  243F              and al,0x3f
00000701  884402            mov [si+0x2],al
00000704  A055AA            mov al,[0xaa55]
00000707  884403            mov [si+0x3],al
0000070A  8A05              mov al,[di]
0000070C  8AE0              mov ah,al
0000070E  D0E8              shr al,0x0
00000710  D0E8              shr al,0x0
00000712  D0E8              shr al,0x0
00000714  D0E8              shr al,0x0
00000716  0C20              or al,0x20
00000718  884404            mov [si+0x4],al
0000071B  886406            mov [si+0x6],ah
0000071E  C6440500          mov byte [si+0x5],0x0
00000722  57                push di
00000723  8B4402            mov ax,[si+0x2]
00000726  2EFF162860        call word near [cs:0x6028]
0000072B  8A1E59AA          mov bl,[0xaa59]
0000072F  32FF              xor bh,bh
00000731  8AC3              mov al,bl
00000733  0C80              or al,0x80
00000735  8605              xchg al,[di]
00000737  888720ED          mov [bx-0x12e0],al
0000073B  83C610            add si,0x10
0000073E  FE0659AA          inc byte [0xaa59]
00000742  5F                pop di
00000743  47                inc di
00000744  58                pop ax
00000745  59                pop cx
00000746  FEC1              inc cl
00000748  80F908            cmp cl,0x8
0000074B  75A1              jnz 0x6ee
0000074D  40                inc ax
0000074E  45                inc bp
0000074F  59                pop cx
00000750  E202              loop 0x754
00000752  EB03              jmp 0x757
00000754  E979FF            jmp 0x6d0
00000757  C704FFFF          mov word [si],0xffff
0000075B  C3                ret
0000075C  A053AA            mov al,[0xaa53]
0000075F  B30A              mov bl,0xa
00000761  F6E3              mul bl
00000763  8A1E54AA          mov bl,[0xaa54]
00000767  32FF              xor bh,bh
00000769  03C3              add ax,bx
0000076B  0569AA            add ax,0xaa69
0000076E  8BF8              mov di,ax
00000770  51                push cx
00000771  B90800            mov cx,0x8
00000774  3ED04600          rol byte [ds:bp+0x0],0x0
00000778  7303              jnc 0x77d
0000077A  AC                lodsb
0000077B  8805              mov [di],al
0000077D  47                inc di
0000077E  E2F4              loop 0x774
00000780  47                inc di
00000781  47                inc di
00000782  45                inc bp
00000783  59                pop cx
00000784  E2EA              loop 0x770
00000786  C3                ret
00000787  99                cwd
00000788  A7                cmpsw
00000789  AF                scasw
0000078A  A7                cmpsw
0000078B  A4                movsb
0000078C  A7                cmpsw
0000078D  BAA7C5            mov dx,0xc5a7
00000790  A7                cmpsw
00000791  CF                iret
00000792  A7                cmpsw
00000793  DAA7E4A7          fisub dword [bx-0x581c]
00000797  FA                cli
00000798  A7                cmpsw
00000799  EF                out dx,ax
0000079A  A7                cmpsw
0000079B  05A800            add ax,0xa8
0000079E  0201              add al,[bx+di]
000007A0  1011              adc [bx+di],dl
000007A2  1213              adc dl,[bp+di]
000007A4  1415              adc al,0x15
000007A6  17                pop ss
000007A7  16                push ss
000007A8  0002              add [bp+si],al
000007AA  06                push es
000007AB  1011              adc [bx+di],dl
000007AD  1213              adc dl,[bp+di]
000007AF  1415              adc al,0x15
000007B1  17                pop ss
000007B2  16                push ss
000007B3  0003              add [bp+di],al
000007B5  012E1112          add [0x1211],bp
000007B9  1314              adc dx,[si]
000007BB  151716            adc ax,0x1617
000007BE  0003              add [bp+di],al
000007C0  06                push es
000007C1  2E1112            adc [cs:bp+si],dx
000007C4  1314              adc dx,[si]
000007C6  151716            adc ax,0x1617
000007C9  050419            add ax,0x1904
000007CC  1813              sbb [bp+di],dl
000007CE  1A14              sbb dl,[si]
000007D0  151716            adc ax,0x1617
000007D3  07                pop es
000007D4  0476              add al,0x76
000007D6  7718              ja 0x7f0
000007D8  131A              adc bx,[bp+si]
000007DA  1415              adc al,0x15
000007DC  17                pop ss
000007DD  16                push ss
000007DE  05041C            add ax,0x1c04
000007E1  1B1D              sbb bx,[di]
000007E3  1E                push ds
000007E4  1F                pop ds
000007E5  2022              and [bp+si],ah
000007E7  16                push ss
000007E8  0002              add [bp+si],al
000007EA  0123              add [bp+di],sp
000007EC  2425              and al,0x25
000007EE  2627              es daa
000007F0  2829              sub [bx+di],ch
000007F2  2100              and [bx+si],ax
000007F4  02062324          add al,[0x2423]
000007F8  252627            and ax,0x2726
000007FB  2829              sub [bx+di],ch
000007FD  2100              and [bx+si],ax
000007FF  0301              add ax,[bx+di]
00000801  2A24              sub ah,[si]
00000803  252627            and ax,0x2726
00000806  2829              sub [bx+di],ch
00000808  2100              and [bx+si],ax
0000080A  03062A24          add ax,[0x242a]
0000080E  252627            and ax,0x2726
00000811  2829              sub [bx+di],ch
00000813  2126A832          and [0x32a8],sp
00000817  A826              test al,0x26
00000819  A832              test al,0x32
0000081B  A83E              test al,0x3e
0000081D  A84A              test al,0x4a
0000081F  A856              test al,0x56
00000821  A862              test al,0x62
00000823  A86E              test al,0x6e
00000825  A862              test al,0x62
00000827  A86E              test al,0x6e
00000829  A800              test al,0x0
0000082B  0000              add [bx+si],al
0000082D  80408020          add byte [bx+si-0x80],0x20
00000831  80501600          adc byte [bx+si+0x16],0x0
00000835  0400              add al,0x0
00000837  0000              add [bx+si],al
00000839  802080            and byte [bx+si],0x80
0000083C  20805016          and [bx+si+0x1650],al
00000840  0004              add [si],al
00000842  0000              add [bx+si],al
00000844  0000              add [bx+si],al
00000846  0020              add [bx+si],ah
00000848  802090            and byte [bx+si],0x90
0000084B  360004            add [ss:si],al
0000084E  0000              add [bx+si],al
00000850  0000              add [bx+si],al
00000852  0020              add [bx+si],ah
00000854  803090            xor byte [bx+si],0x90
00000857  360004            add [ss:si],al
0000085A  0000              add [bx+si],al
0000085C  0820              or [bx+si],ah
0000085E  1020              adc [bx+si],ah
00000860  1000              adc [bx+si],al
00000862  180A              sbb [bp+si],cl
00000864  0004              add [si],al
00000866  0804              or [si],al
00000868  0804              or [si],al
0000086A  0804              or [si],al
0000086C  0804              or [si],al
0000086E  00060004          add [0x400],al
00000872  0802              or [bp+si],al
00000874  0804              or [si],al
00000876  0804              or [si],al
00000878  0804              or [si],al
0000087A  00060004          add [0x400],al
0000087E  2B2C              sub bp,[si]
00000880  2D8000            sub ax,0x80
00000883  808089A88F        add byte [bx+si-0x5777],0x8f
00000888  A895              test al,0x95
0000088A  A88F              test al,0x8f
0000088C  A850              test al,0x50
0000088E  51                push cx
0000088F  52                push dx
00000890  54                push sp
00000891  53                push bx
00000892  55                push bp
00000893  56                push si
00000894  57                push di
00000895  58                pop ax
00000896  5A                pop dx
00000897  59                pop cx
00000898  5B                pop bx
00000899  5C                pop sp
0000089A  5D                pop bp
0000089B  5F                pop di
0000089C  5E                pop si
0000089D  60                pusha
0000089E  A2A8A9            mov [0xa9a8],al
000008A1  A8B0              test al,0xb0
000008A3  A8A9              test al,0xa9
000008A5  A820              test al,0x20
000008A7  0020              add [bx+si],ah
000008A9  00A000A0          add [bx+si-0x6000],ah
000008AD  0020              add [bx+si],ah
000008AF  2000              and [bx+si],al
000008B1  A000A0            mov al,[0xa000]
000008B4  0000              add [bx+si],al
000008B6  2000              and [bx+si],al
000008B8  A000A0            mov al,[0xa000]
000008BB  BFA8C7            mov di,0xc7a8
000008BE  A8CF              test al,0xcf
000008C0  A8C7              test al,0xc7
000008C2  A875              test al,0x75
000008C4  626364            bound sp,[bp+di+0x64]
000008C7  7365              jnc 0x92e
000008C9  7466              jz 0x931
000008CB  7567              jnz 0x934
000008CD  636973            arpl [bx+di+0x73],bp
000008D0  6A74              push word 0x74
000008D2  68616B            push word 0x6b61
000008D5  6C                insb
000008D6  7073              jo 0x94b
000008D8  7174              jno 0x94e
000008DA  72A0              jc 0x87c
000008DC  00A000A0          add [bx+si-0x6000],ah
000008E0  00A0E2A8          add [bx+si-0x571e],ah
000008E4  F1                int1
000008E5  A836              test al,0x36
000008E7  35373C            xor ax,0x3c37
000008EA  3038              xor [bx+si],bh
000008EC  3D3139            cmp ax,0x3931
000008EF  3E323A            xor bh,[ds:bp+si]
000008F2  3B33              cmp si,[bp+di]
000008F4  3440              xor al,0x40
000008F6  41                inc cx
000008F7  46                inc si
000008F8  42                inc dx
000008F9  47                inc di
000008FA  4A                dec dx
000008FB  43                inc bx
000008FC  48                dec ax
000008FD  4B                dec bx
000008FE  49                dec cx
000008FF  44                inc sp
00000900  45                inc bp
00000901  01A90CA9          add [bx+di-0x56f4],bp
00000905  104028            adc [bx+si+0x28],al
00000908  802880            sub byte [bx+si],0x80
0000090B  28803080          sub [bx+si-0x7fd0],al
0000090F  801000            adc byte [bx+si],0x0
00000912  2800              sub [bx+si],al
00000914  58                pop ax
00000915  005810            add [bx+si+0x10],bl
00000918  40                inc ax
00000919  00401F            add [bx+si+0x1f],al
0000091C  A920A9            test ax,0xa920
0000091F  23A92AA9          and bp,[bx+di-0x56d6]
00000923  808382818A        add byte [bp+di-0x7e7e],0x8a
00000928  89868785          mov [bp-0x7a79],ax
0000092C  88848D8E          mov [si-0x7173],al
00000930  8C8F8B81          mov word [bx-0x7e75],cs
00000934  38A945A9          cmp [bx+di-0x56bb],ch
00000938  52                push dx
00000939  A95FA9            test ax,0xa95f
0000093C  0000              add [bx+si],al
0000093E  0000              add [bx+si],al
00000940  0000              add [bx+si],al
00000942  0000              add [bx+si],al
00000944  0000              add [bx+si],al
00000946  0000              add [bx+si],al
00000948  800000            add byte [bx+si],0x0
0000094B  0000              add [bx+si],al
0000094D  0000              add [bx+si],al
0000094F  0000              add [bx+si],al
00000951  0010              add [bx+si],dl
00000953  004080            add [bx+si-0x80],al
00000956  0000              add [bx+si],al
00000958  0000              add [bx+si],al
0000095A  0008              add [bx+si],cl
0000095C  0008              add [bx+si],cl
0000095E  0018              add [bx+si],bl
00000960  2008              and [bx+si],cl
00000962  800000            add byte [bx+si],0x0
00000965  0000              add [bx+si],al
00000967  0008              add [bx+si],cl
00000969  0008              add [bx+si],cl
0000096B  1008              adc [bx+si],cl
0000096D  2000              and [bx+si],al
0000096F  8074A976          xor byte [si-0x57],0x76
00000973  A979A9            test ax,0xa979
00000976  7FA9              jg 0x921
00000978  90                nop
00000979  91                xchg ax,cx
0000097A  92                xchg ax,dx
0000097B  93                xchg ax,bx
0000097C  94                xchg ax,sp
0000097D  95                xchg ax,bp
0000097E  96                xchg ax,si
0000097F  97                xchg ax,di
00000980  98                cbw
00000981  96                xchg ax,si
00000982  99                cwd
00000983  9A9B9B9C9B        call word 0x9b9c:word 0x9b9b
00000988  9D                popf
00000989  8DA99AA9          lea bp,[bx+di-0x5666]
0000098D  A7                cmpsw
0000098E  A9A7A9            test ax,0xa9a7
00000991  0000              add [bx+si],al
00000993  0000              add [bx+si],al
00000995  0000              add [bx+si],al
00000997  0000              add [bx+si],al
00000999  2020              and [bx+si],ah
0000099B  0000              add [bx+si],al
0000099D  0000              add [bx+si],al
0000099F  0000              add [bx+si],al
000009A1  0000              add [bx+si],al
000009A3  2000              and [bx+si],al
000009A5  2000              and [bx+si],al
000009A7  2000              and [bx+si],al
000009A9  0000              add [bx+si],al
000009AB  2020              and [bx+si],ah
000009AD  0020              add [bx+si],ah
000009AF  0020              add [bx+si],ah
000009B1  0020              add [bx+si],ah
000009B3  0020              add [bx+si],ah
000009B5  0000              add [bx+si],al
000009B7  00A13FAA          add [bx+di-0x55c1],ah
000009BB  2BC3              sub ax,bx
000009BD  7302              jnc 0x9c1
000009BF  33C0              xor ax,ax
000009C1  A33FAA            mov [0xaa3f],ax
000009C4  8BD8              mov bx,ax
000009C6  50                push ax
000009C7  2EFF160C20        call word near [cs:0x200c]
000009CC  58                pop ax
000009CD  0BC0              or ax,ax
000009CF  7401              jz 0x9d2
000009D1  C3                ret
000009D2  C60658AA00        mov byte [0xaa58],0x0
000009D7  C6062EFFFF        mov byte [0xff2e],0xff
000009DC  C60658AA00        mov byte [0xaa58],0x0
000009E1  C60665AA00        mov byte [0xaa65],0x0
000009E6  C60667AA00        mov byte [0xaa67],0x0
000009EB  C60656AA00        mov byte [0xaa56],0x0
000009F0  C60661AA00        mov byte [0xaa61],0x0
000009F5  C3                ret
000009F6  803E58AA28        cmp byte [0xaa58],0x28
000009FB  733D              jnc 0xa3a
000009FD  C6062FFFFF        mov byte [0xff2f],0xff
00000A02  FE0658AA          inc byte [0xaa58]
00000A06  803E58AA1E        cmp byte [0xaa58],0x1e
00000A0B  7320              jnc 0xa2d
00000A0D  FE065CAA          inc byte [0xaa5c]
00000A11  A05CAA            mov al,[0xaa5c]
00000A14  2401              and al,0x1
00000A16  0402              add al,0x2
00000A18  A25BAA            mov [0xaa5b],al
00000A1B  A05CAA            mov al,[0xaa5c]
00000A1E  2403              and al,0x3
00000A20  7403              jz 0xa25
00000A22  E921FB            jmp 0x546
00000A25  C60675FF37        mov byte [0xff75],0x37
00000A2A  E919FB            jmp 0x546
00000A2D  C6065CAA01        mov byte [0xaa5c],0x1
00000A32  C6065BAA0A        mov byte [0xaa5b],0xa
00000A37  E90CFB            jmp 0x546
00000A3A  C60630FFFF        mov byte [0xff30],0xff
00000A3F  C3                ret
00000A40  1E                push ds
00000A41  0008              add [bx+si],cl
00000A43  2003              and [bp+di],al
00000A45  E02E              loopne 0xa75
00000A47  050049            add ax,0x4900
00000A4A  AA                stosb
00000A4B  C409              les cx,word [bx+di]
00000A4D  11BB0006          adc [bp+di+0x600],di
00000A51  44                inc sp
00000A52  7261              jc 0xab5
00000A54  676F              a32 outsw
00000A56  6E                outsb
00000A57  0000              add [bx+si],al
00000A59  0000              add [bx+si],al
00000A5B  0000              add [bx+si],al
00000A5D  0000              add [bx+si],al
00000A5F  0000              add [bx+si],al
00000A61  0000              add [bx+si],al
00000A63  0000              add [bx+si],al
00000A65  0000              add [bx+si],al
00000A67  0000              add [bx+si],al
00000A69  0000              add [bx+si],al
00000A6B  0000              add [bx+si],al
00000A6D  0000              add [bx+si],al
00000A6F  0000              add [bx+si],al
00000A71  0000              add [bx+si],al
00000A73  0000              add [bx+si],al
00000A75  0000              add [bx+si],al
00000A77  0000              add [bx+si],al
00000A79  0000              add [bx+si],al
00000A7B  0000              add [bx+si],al
00000A7D  0000              add [bx+si],al
00000A7F  0000              add [bx+si],al
00000A81  0000              add [bx+si],al
00000A83  0000              add [bx+si],al
00000A85  0000              add [bx+si],al
00000A87  0000              add [bx+si],al
00000A89  0000              add [bx+si],al
00000A8B  0000              add [bx+si],al
00000A8D  0000              add [bx+si],al
00000A8F  0000              add [bx+si],al
00000A91  0000              add [bx+si],al
00000A93  0000              add [bx+si],al
00000A95  0000              add [bx+si],al
00000A97  0000              add [bx+si],al
00000A99  0000              add [bx+si],al
00000A9B  0000              add [bx+si],al
00000A9D  0000              add [bx+si],al
00000A9F  0000              add [bx+si],al
00000AA1  0000              add [bx+si],al
00000AA3  0000              add [bx+si],al
00000AA5  0000              add [bx+si],al
00000AA7  0000              add [bx+si],al
00000AA9  0000              add [bx+si],al
00000AAB  0000              add [bx+si],al
00000AAD  0000              add [bx+si],al
00000AAF  0000              add [bx+si],al
00000AB1  0000              add [bx+si],al
00000AB3  0000              add [bx+si],al
00000AB5  0000              add [bx+si],al
00000AB7  0000              add [bx+si],al
00000AB9  0000              add [bx+si],al
00000ABB  0000              add [bx+si],al
00000ABD  0000              add [bx+si],al
00000ABF  0000              add [bx+si],al
00000AC1  0000              add [bx+si],al
00000AC3  0000              add [bx+si],al
00000AC5  0000              add [bx+si],al
00000AC7  0000              add [bx+si],al
00000AC9  0000              add [bx+si],al
00000ACB  0000              add [bx+si],al
00000ACD  0000              add [bx+si],al
00000ACF  0000              add [bx+si],al
00000AD1  0000              add [bx+si],al
00000AD3  0000              add [bx+si],al
00000AD5  0000              add [bx+si],al
00000AD7  0000              add [bx+si],al
00000AD9  0000              add [bx+si],al
00000ADB  0000              add [bx+si],al
00000ADD  0000              add [bx+si],al
00000ADF  0000              add [bx+si],al
00000AE1  0000              add [bx+si],al
00000AE3  0000              add [bx+si],al
00000AE5  0000              add [bx+si],al
00000AE7  0000              add [bx+si],al
00000AE9  0000              add [bx+si],al
00000AEB  0000              add [bx+si],al
00000AED  0000              add [bx+si],al
00000AEF  0000              add [bx+si],al
00000AF1  0000              add [bx+si],al
00000AF3  0000              add [bx+si],al
00000AF5  0000              add [bx+si],al
00000AF7  0000              add [bx+si],al
00000AF9  0000              add [bx+si],al
00000AFB  0000              add [bx+si],al
00000AFD  0000              add [bx+si],al
00000AFF  0000              add [bx+si],al
00000B01  0000              add [bx+si],al
00000B03  0000              add [bx+si],al
00000B05  0000              add [bx+si],al
00000B07  0000              add [bx+si],al
00000B09  0000              add [bx+si],al
00000B0B  0000              add [bx+si],al
00000B0D  0000              add [bx+si],al
00000B0F  0000              add [bx+si],al
00000B11  0000              add [bx+si],al
00000B13  0000              add [bx+si],al
00000B15  0000              add [bx+si],al
00000B17  0000              add [bx+si],al
00000B19  0000              add [bx+si],al
00000B1B  0000              add [bx+si],al
00000B1D  0000              add [bx+si],al
00000B1F  0000              add [bx+si],al
00000B21  0000              add [bx+si],al
00000B23  0000              add [bx+si],al
00000B25  0000              add [bx+si],al
00000B27  0000              add [bx+si],al
00000B29  0000              add [bx+si],al
00000B2B  0000              add [bx+si],al
00000B2D  0000              add [bx+si],al
00000B2F  0000              add [bx+si],al
00000B31  0000              add [bx+si],al
00000B33  0000              add [bx+si],al
00000B35  0000              add [bx+si],al
00000B37  0000              add [bx+si],al
00000B39  0000              add [bx+si],al
00000B3B  0000              add [bx+si],al
00000B3D  0000              add [bx+si],al
00000B3F  0000              add [bx+si],al
00000B41  0000              add [bx+si],al
00000B43  0000              add [bx+si],al
00000B45  0000              add [bx+si],al
00000B47  0000              add [bx+si],al
00000B49  0000              add [bx+si],al
00000B4B  0000              add [bx+si],al
00000B4D  0000              add [bx+si],al
00000B4F  0000              add [bx+si],al
00000B51  0000              add [bx+si],al
00000B53  0000              add [bx+si],al
00000B55  0000              add [bx+si],al
00000B57  0000              add [bx+si],al
00000B59  0000              add [bx+si],al
00000B5B  0000              add [bx+si],al
00000B5D  0000              add [bx+si],al
00000B5F  0000              add [bx+si],al
00000B61  0000              add [bx+si],al
00000B63  0000              add [bx+si],al
00000B65  0000              add [bx+si],al
00000B67  0000              add [bx+si],al
00000B69  0000              add [bx+si],al
00000B6B  0000              add [bx+si],al
00000B6D  0000              add [bx+si],al
00000B6F  0000              add [bx+si],al
00000B71  0000              add [bx+si],al
00000B73  0000              add [bx+si],al
00000B75  0000              add [bx+si],al
00000B77  0000              add [bx+si],al
00000B79  0000              add [bx+si],al
00000B7B  0000              add [bx+si],al
00000B7D  0000              add [bx+si],al
00000B7F  0000              add [bx+si],al
00000B81  0000              add [bx+si],al
00000B83  0000              add [bx+si],al
00000B85  0000              add [bx+si],al
00000B87  0000              add [bx+si],al
00000B89  0000              add [bx+si],al
00000B8B  0000              add [bx+si],al
00000B8D  0000              add [bx+si],al
00000B8F  0000              add [bx+si],al
00000B91  0000              add [bx+si],al
00000B93  0000              add [bx+si],al
00000B95  0000              add [bx+si],al
00000B97  0000              add [bx+si],al
00000B99  0000              add [bx+si],al
00000B9B  0000              add [bx+si],al
00000B9D  0000              add [bx+si],al
00000B9F  0000              add [bx+si],al
00000BA1  0000              add [bx+si],al
00000BA3  0000              add [bx+si],al
00000BA5  0000              add [bx+si],al
00000BA7  0000              add [bx+si],al
00000BA9  0000              add [bx+si],al
00000BAB  0000              add [bx+si],al
