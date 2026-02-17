00000000  90                nop
00000001  1900              sbb [bx+si],ax
00000003  0029              add [bx+di],ch
00000005  D6                salc
00000006  F00055D5          lock add [di-0x2b],dl
0000000A  5D                pop bp
0000000B  D55F              aad byte 0x5f
0000000D  D57D              aad byte 0x7d
0000000F  D5C7              aad byte 0xc7
00000011  D514              aad byte 0x14
00000013  D6                salc
00000014  2ED6              cs salc
00000016  011A              add [bp+si],bx
00000018  0010              add [bx+si],dl
0000001A  0A00              or al,[bx+si]
0000001C  0055D5            add [di-0x2b],dl
0000001F  87C4              xchg ax,sp
00000021  45                inc bp
00000022  C7                db 0xc7
00000023  CA8BC4            retf word 0xc48b
00000026  07                pop es
00000027  06                push es
00000028  C743C7C6C4        mov word [bp+di-0x39],0xc4c6
0000002D  C7                db 0xc7
0000002E  65C485C505        les ax,word [gs:di+0x5c5]
00000033  06                push es
00000034  C88787C4          enter word 0x8787,byte 0xc4
00000038  55                push bp
00000039  C7                db 0xc7
0000003A  8BC5              mov ax,bp
0000003C  06                push es
0000003D  06                push es
0000003E  C9                leave
0000003F  91                xchg ax,cx
00000040  CF                iret
00000041  CE                into
00000042  C445C3            les ax,word [di-0x3d]
00000045  C7C6C986          mov si,0x86c9
00000049  C786C445C7CA      mov word [bp+0x45c4],0xcac7
0000004F  8B0606C7          mov ax,[0xc706]
00000053  92                xchg ax,dx
00000054  CF                iret
00000055  CE                into
00000056  C3                ret
00000057  7585              jnz 0xffde
00000059  42                inc dx
0000005A  C686C465C7        mov byte [bp+0x65c4],0xc7
0000005F  8A75C3            mov dh,[di-0x3d]
00000062  45                inc bp
00000063  C7C1C240          mov cx,0x40c2
00000067  C2C1C2            ret word 0xc2c1
0000006A  40                inc ax
0000006B  C286CF            ret word 0xcf86
0000006E  CE                into
0000006F  CD75              int byte 0x75
00000071  C885C4C6          enter word 0xc485,byte 0xc6
00000075  C6                db 0xc6
00000076  C885C445          enter word 0xc485,byte 0x45
0000007A  C7                db 0xc7
0000007B  CA8BC3            retf word 0xc38b
0000007E  050692            add ax,0x9206
00000081  CF                iret
00000082  CE                into
00000083  CDC3              int byte 0xc3
00000085  45                inc bp
00000086  C4                db 0xc4
00000087  C8864345          enter word 0x4386,byte 0x45
0000008B  C884C455          enter word 0xc484,byte 0x55
0000008F  C7                db 0xc7
00000090  8BC4              mov ax,sp
00000092  65C7C641C1        gs mov si,0xc141
00000097  C2C1C2            ret word 0xc2c1
0000009A  C14189CF          rol word [bx+di-0x77],byte 0xcf
0000009E  CE                into
0000009F  CDC4              int byte 0xc4
000000A1  65                gs
000000A2  C7                db 0xc7
000000A3  C9                leave
000000A4  84C4              test ah,al
000000A6  C6                db 0xc6
000000A7  55                push bp
000000A8  84C4              test ah,al
000000AA  55                push bp
000000AB  C7                db 0xc7
000000AC  8BC4              mov ax,sp
000000AE  65                gs
000000AF  C7                db 0xc7
000000B0  C892CFCE          enter word 0xcf92,byte 0xce
000000B4  CDC4              int byte 0xc4
000000B6  45                inc bp
000000B7  C4                db 0xc4
000000B8  C6                db 0xc6
000000B9  C9                leave
000000BA  85C4              test sp,ax
000000BC  C6C5C6            mov ch,0xc6
000000BF  C884C445          enter word 0xc484,byte 0x45
000000C3  C7                db 0xc7
000000C4  8CC4              mov sp,es
000000C6  75C8              jnz 0x90
000000C8  85C4              test sp,ax
000000CA  C6C3C6            mov bl,0xc6
000000CD  C888CFCE          enter word 0xcf88,byte 0xce
000000D1  CDC5              int byte 0xc5
000000D3  55                push bp
000000D4  C886C4C6          enter word 0xc486,byte 0xc6
000000D8  C6                db 0xc6
000000D9  C885C445          enter word 0xc485,byte 0x45
000000DD  C7                db 0xc7
000000DE  8CC4              mov sp,es
000000E0  C6C465            mov ah,0x65
000000E3  C884C445          enter word 0xc484,byte 0x45
000000E7  C889CFCE          enter word 0xcf89,byte 0xce
000000EB  CD65              int byte 0x65
000000ED  C7                db 0xc7
000000EE  C885C5C6          enter word 0xc585,byte 0xc6
000000F2  C686C4458D        mov byte [bp+0x45c4],0x8d
000000F7  C4060684          les ax,word [0x8406]
000000FB  C445C8            les ax,word [di-0x38]
000000FE  89CF              mov di,cx
00000100  CE                into
00000101  CD65              int byte 0x65
00000103  87C3              xchg ax,bx
00000105  C645C884          mov byte [di-0x38],0x84
00000109  C4                db 0xc4
0000010A  C6C78D            mov bh,0x8d
0000010D  C475C8            les si,word [di-0x38]
00000110  85C4              test sp,ax
00000112  C6                db 0xc6
00000113  C88ACFCE          enter word 0xcf8a,byte 0xce
00000117  CD05              int byte 0x5
00000119  06                push es
0000011A  C9                leave
0000011B  84C4              test ah,al
0000011D  C6C3C6            mov bl,0xc6
00000120  85C4              test sp,ax
00000122  45                inc bp
00000123  C7                db 0xc7
00000124  8CC4              mov sp,es
00000126  65C886C445        gs enter word 0xc486,byte 0x45
0000012B  C889CFCE          enter word 0xcf89,byte 0xce
0000012F  CDC3              int byte 0xc3
00000131  45                inc bp
00000132  C3                ret
00000133  C6                db 0xc6
00000134  C885C4C6          enter word 0xc485,byte 0xc6
00000138  55                push bp
00000139  C883C4C6          enter word 0xc483,byte 0xc6
0000013D  C7                db 0xc7
0000013E  8D                db 0x8d
0000013F  C455C7            les dx,word [di-0x39]
00000142  C6                db 0xc6
00000143  C885C4C3          enter word 0xc485,byte 0xc3
00000147  45                inc bp
00000148  89CF              mov di,cx
0000014A  CE                into
0000014B  CDC4              int byte 0xc4
0000014D  55                push bp
0000014E  87C4              xchg ax,sp
00000150  C645C884          mov byte [di-0x38],0x84
00000154  C455C7            les dx,word [di-0x39]
00000157  8ACB              mov cl,bl
00000159  06                push es
0000015A  06                push es
0000015B  85C4              test sp,ax
0000015D  55                push bp
0000015E  C9                leave
0000015F  88CF              mov bh,cl
00000161  CE                into
00000162  CDC4              int byte 0xc4
00000164  65                gs
00000165  C7                db 0xc7
00000166  C9                leave
00000167  84C5              test ch,al
00000169  C6C6C8            mov dh,0xc8
0000016C  85C4              test sp,ax
0000016E  45                inc bp
0000016F  C7                db 0xc7
00000170  8ACB              mov cl,bl
00000172  75C8              jnz 0x13c
00000174  C9                leave
00000175  85C3              test bx,ax
00000177  C6C345            mov bl,0x45
0000017A  C888CFCE          enter word 0xcf88,byte 0xce
0000017E  CDC4              int byte 0xc4
00000180  65C8C98445        gs enter word 0x84c9,byte 0x45
00000185  C686C4C6C7        mov byte [bp-0x393c],0xc7
0000018A  CA89CB            retf word 0xcb89
0000018D  C405              les ax,word [di]
0000018F  06                push es
00000190  C9                leave
00000191  85C4              test sp,ax
00000193  55                push bp
00000194  C8C988CF          enter word 0x88c9,byte 0xcf
00000198  CE                into
00000199  CDC4              int byte 0xc4
0000019B  55                push bp
0000019C  C3                ret
0000019D  C68545C886        mov byte [di-0x37bb],0x86
000001A2  C445C5            les ax,word [di-0x3b]
000001A5  C3                ret
000001A6  C686CBC407        mov byte [bp-0x3b35],0x7
000001AB  06                push es
000001AC  C884C455          enter word 0xc484,byte 0x55
000001B0  C889CFCE          enter word 0xcf89,byte 0xce
000001B4  CDC3              int byte 0xc3
000001B6  C6C365            mov bl,0x65
000001B9  C883C3C6          enter word 0xc383,byte 0xc6
000001BD  C64784C4          mov byte [bx-0x7c],0xc4
000001C1  050685            add ax,0x8506
000001C4  C465C4            les sp,word [di-0x3c]
000001C7  6585C4            gs test sp,ax
000001CA  45                inc bp
000001CB  C7                db 0xc7
000001CC  88C3              mov bl,al
000001CE  C6                db 0xc6
000001CF  52                push dx
000001D0  0506C8            add ax,0xc806
000001D3  84C4              test ah,al
000001D5  C64585C4          mov byte [di-0x7b],0xc4
000001D9  65C4860605        les ax,word [gs:bp+0x506]
000001DE  C4                db 0xc4
000001DF  C5                db 0xc5
000001E0  C885C455          enter word 0xc485,byte 0x55
000001E4  85C3              test bx,ax
000001E6  75C5              jnz 0x1ad
000001E8  65C54785          lds ax,word [gs:bx-0x7b]
000001EC  43                inc bx
000001ED  55                push bp
000001EE  84C4              test ah,al
000001F0  7595              jnz 0x187
000001F2  C465C9            les sp,word [di-0x37]
000001F5  83C40B            add sp,0xb
000001F8  06                push es
000001F9  C885C4C6          enter word 0xc485,byte 0xc6
000001FD  C5                db 0xc5
000001FE  C6                db 0xc6
000001FF  C8844365          enter word 0x4384,byte 0x65
00000203  40                inc ax
00000204  41                inc cx
00000205  40                inc ax
00000206  41                inc cx
00000207  60                pusha
00000208  51                push cx
00000209  40                inc ax
0000020A  C2C1C2            ret word 0xc2c1
0000020D  81C465C9          add sp,0xc965
00000211  83C4C6            add sp,0xffffffffffffffc6
00000214  C55554            lds dx,word [di+0x54]
00000217  55                push bp
00000218  C786C4C6C6C8      mov word [bp-0x393c],0xc8c6
0000021E  85C4              test sp,ax
00000220  75C8              jnz 0x1ea
00000222  94                xchg ax,sp
00000223  43                inc bx
00000224  45                inc bp
00000225  C884C465          enter word 0xc484,byte 0x65
00000229  C883C555          enter word 0xc583,byte 0x55
0000022D  C4                db 0xc4
0000022E  C6                db 0xc6
0000022F  C883C4C6          enter word 0xc483,byte 0xc6
00000233  C6                db 0xc6
00000234  C885C465          enter word 0xc485,byte 0x65
00000238  C8860803          enter word 0x886,byte 0x3
0000023C  C885C445          enter word 0xc485,byte 0x45
00000240  C7                db 0xc7
00000241  C8844445          enter word 0x4484,byte 0x45
00000245  C785C465C983      mov word [di+0x65c4],0x83c9
0000024B  C4                db 0xc4
0000024C  C64585C5          mov byte [di-0x7b],0xc5
00000250  65C886C407        gs enter word 0xc486,byte 0x7
00000255  06                push es
00000256  C785C5558FC4      mov word [di+0x55c5],0xc48f
0000025C  55                push bp
0000025D  C7                db 0xc7
0000025E  C88343C8          enter word 0x4383,byte 0xc8
00000262  86C3              xchg al,bl
00000264  45                inc bp
00000265  C3                ret
00000266  45                inc bp
00000267  C885C409          enter word 0xc485,byte 0x9
0000026B  06                push es
0000026C  C883C355          enter word 0xc383,byte 0x55
00000270  C1415041          rol word [bx+di+0x50],byte 0x41
00000274  50                push ax
00000275  C2C1C2            ret word 0xc2c1
00000278  8143C3C6C8        add word [bp+di-0x3d],0xc8c6
0000027D  84C4              test ah,al
0000027F  C6C6C8            mov dh,0xc8
00000282  85C4              test sp,ax
00000284  75C8              jnz 0x24e
00000286  85C4              test sp,ax
00000288  C6C782            mov bh,0x82
0000028B  C56585            lds sp,word [di-0x7b]
0000028E  C4558F            les dx,word [di-0x71]
00000291  C44547            les ax,word [di+0x47]
00000294  84C4              test ah,al
00000296  C687C40506        mov byte [bx+0x5c4],0x6
0000029B  85C4              test sp,ax
0000029D  C684C455C8        mov byte [si+0x55c4],0xc8
000002A2  84C4              test ah,al
000002A4  45                inc bp
000002A5  C885C3C6          enter word 0xc385,byte 0xc6
000002A9  88C4              mov ah,al
000002AB  55                push bp
000002AC  C884C5C4          enter word 0xc584,byte 0xc4
000002B0  87C4              xchg ax,sp
000002B2  75C8              jnz 0x27c
000002B4  85C4              test sp,ax
000002B6  C684C445C7        mov byte [si+0x45c4],0xc7
000002BB  85C4              test sp,ax
000002BD  55                push bp
000002BE  C884C445          enter word 0xc484,byte 0x45
000002C2  C7                db 0xc7
000002C3  C885C445          enter word 0xc485,byte 0x45
000002C7  C78741404181      mov word [bx+0x4041],0x8141
000002CD  C465C8            les sp,word [di-0x38]
000002D0  86C4              xchg al,ah
000002D2  C584C455          lds ax,word [si+0x55c4]
000002D6  85C4              test sp,ax
000002D8  65CA83C4          gs retf word 0xc483
000002DC  55                push bp
000002DD  C885C455          enter word 0xc485,byte 0x55
000002E1  C14140C2          rol word [bx+di+0x40],byte 0xc2
000002E5  C187C47586        rol word [bx+0x75c4],byte 0x86
000002EA  C3                ret
000002EB  C684C455C8        mov byte [si+0x55c4],0xc8
000002F0  84C4              test ah,al
000002F2  65C883C465        gs enter word 0xc483,byte 0x65
000002F7  85C4              test sp,ax
000002F9  C6C4C8            mov ah,0xc8
000002FC  87C6              xchg ax,si
000002FE  C885C475          enter word 0xc485,byte 0x75
00000302  C8C984C4          enter word 0x84c9,byte 0xc4
00000306  C784C455C784      mov word [si+0x55c4],0x84c7
0000030C  C455C8            les dx,word [di-0x38]
0000030F  84C3              test bl,al
00000311  55                push bp
00000312  C7                db 0xc7
00000313  C884C455          enter word 0xc484,byte 0x55
00000317  C884C3C6          enter word 0xc384,byte 0xc6
0000031B  C6C7C8            mov bh,0xc8
0000031E  83C305            add bx,0x5
00000321  06                push es
00000322  C885C4C6          enter word 0xc485,byte 0xc6
00000326  844345            test [bp+di+0x45],al
00000329  C7                db 0xc7
0000032A  C883C445          enter word 0xc483,byte 0x45
0000032E  C7                db 0xc7
0000032F  C884C465          enter word 0xc484,byte 0x65
00000333  C8C98344          enter word 0x83c9,byte 0x44
00000337  C4                db 0xc4
00000338  C885C4C6          enter word 0xc485,byte 0xc6
0000033C  45                inc bp
0000033D  C7                db 0xc7
0000033E  C882C455          enter word 0xc482,byte 0x55
00000342  C3                ret
00000343  45                inc bp
00000344  86C4              xchg al,ah
00000346  C684C45548        mov byte [si+0x55c4],0x48
0000034B  834345C8          add word [bp+di+0x45],0xffffffffffffffc8
0000034F  84C4              test ah,al
00000351  45                inc bp
00000352  C4                db 0xc4
00000353  C6                db 0xc6
00000354  8EC4              mov es,sp
00000356  C6                db 0xc6
00000357  0806C555          or [0x55c5],al
0000035B  86C4              xchg al,ah
0000035D  C684C545C7        mov byte [si+0x45c5],0xc7
00000362  85C4              test sp,ax
00000364  55                push bp
00000365  85C4              test sp,ax
00000367  65C88CC345        gs enter word 0xc38c,byte 0x45
0000036C  0C06              or al,0x6
0000036E  C7                db 0xc7
0000036F  C884C4C6          enter word 0xc484,byte 0xc6
00000373  84C3              test bl,al
00000375  55                push bp
00000376  C884C545          enter word 0xc584,byte 0x45
0000037A  C885C455          enter word 0xc485,byte 0x55
0000037E  47                inc di
0000037F  8A4255            mov al,[bp+si+0x55]
00000382  0D0685            or ax,0x8506
00000385  C4                db 0xc4
00000386  C584C465          lds ax,word [si+0x65c4]
0000038A  8465C7            test [di-0x39],ah
0000038D  84C4              test ah,al
0000038F  55                push bp
00000390  C7                db 0xc7
00000391  C88A5445          enter word 0x548a,byte 0x45
00000395  45                inc bp
00000396  C3                ret
00000397  C40A              les cx,word [bp+si]
00000399  06                push es
0000039A  C883C5C7          enter word 0xc583,byte 0xc7
0000039E  84C4              test ah,al
000003A0  45                inc bp
000003A1  C88575C8          enter word 0x7585,byte 0xc8
000003A5  83C465            add sp,0x65
000003A8  C88BCFCE          enter word 0xcf8b,byte 0xce
000003AC  C5                db 0xc5
000003AD  C60506            mov byte [di],0x6
000003B0  C407              les ax,word [bx]
000003B2  06                push es
000003B3  8AC4              mov al,ah
000003B5  55                push bp
000003B6  85C3              test bx,ax
000003B8  55                push bp
000003B9  C8844365          enter word 0x4384,byte 0x65
000003BD  C7                db 0xc7
000003BE  8ACF              mov cl,bh
000003C0  CE                into
000003C1  C4                db 0xc4
000003C2  C6                db 0xc6
000003C3  75C4              jnz 0x389
000003C5  82                db 0x82
000003C6  C5060689          lds ax,word [0x8906]
000003CA  65                gs
000003CB  C7                db 0xc7
000003CC  C883C455          enter word 0xc483,byte 0x55
000003D0  C884C455          enter word 0xc484,byte 0x55
000003D4  C5                db 0xc5
000003D5  C6                db 0xc6
000003D6  C88ACFCE          enter word 0xcf8a,byte 0xce
000003DA  C4                db 0xc4
000003DB  C6                db 0xc6
000003DC  65C784C465C78A    mov word [gs:si+0x65c4],0x8ac7
000003E3  C455C8            les dx,word [di-0x38]
000003E6  84C4              test ah,al
000003E8  45                inc bp
000003E9  C8CA84C5          enter word 0x84ca,byte 0xc5
000003ED  65C88BCFCE        gs enter word 0xcf8b,byte 0xce
000003F2  C4                db 0xc4
000003F3  C6                db 0xc6
000003F4  65C784C5C6C455    mov word [gs:si-0x393b],0x55c4
000003FB  C889C455          enter word 0xc489,byte 0x55
000003FF  C884C445          enter word 0xc484,byte 0x45
00000403  C7                db 0xc7
00000404  CA8465            retf word 0x6584
00000407  C7                db 0xc7
00000408  C88BCFCE          enter word 0xcf8b,byte 0xce
0000040C  C4                db 0xc4
0000040D  C6                db 0xc6
0000040E  55                push bp
0000040F  C786C4558B55      mov word [bp+0x55c4],0x558b
00000415  C785C465C883      mov word [di+0x65c4],0x83c8
0000041B  55                push bp
0000041C  47                inc di
0000041D  8CCF              mov di,cs
0000041F  CE                into
00000420  C4                db 0xc4
00000421  C6                db 0xc6
00000422  65                gs
00000423  C7                db 0xc7
00000424  C884C445          enter word 0xc484,byte 0x45
00000428  C7                db 0xc7
00000429  C88A75C8          enter word 0x758a,byte 0xc8
0000042D  834355CA          add word [bp+di+0x55],0xffffffffffffffca
00000431  83C345            add bx,0x45
00000434  C7                db 0xc7
00000435  C88CCFCE          enter word 0xcf8c,byte 0xce
00000439  C4                db 0xc4
0000043A  C6                db 0xc6
0000043B  65C885C445        gs enter word 0xc485,byte 0x45
00000440  C88BC365          enter word 0xc38b,byte 0x65
00000444  84C4              test ah,al
00000446  55                push bp
00000447  C884C465          enter word 0xc484,byte 0x65
0000044B  C88BCFCE          enter word 0xcf8b,byte 0xce
0000044F  C4                db 0xc4
00000450  C6                db 0xc6
00000451  55                push bp
00000452  C786C5C4C68C      mov word [bp-0x3b3b],0x8cc6
00000458  C45549            les dx,word [di+0x49]
0000045B  83C445            add sp,0x45
0000045E  C885C455          enter word 0xc485,byte 0x55
00000462  C7                db 0xc7
00000463  8CCF              mov di,cs
00000465  CE                into
00000466  C4                db 0xc4
00000467  C6                db 0xc6
00000468  55                push bp
00000469  96                xchg ax,si
0000046A  C455C8            les dx,word [di-0x38]
0000046D  84C4              test ah,al
0000046F  45                inc bp
00000470  C885C4C3          enter word 0xc485,byte 0xc3
00000474  45                inc bp
00000475  C88CCFCE          enter word 0xcf8c,byte 0xce
00000479  C5                db 0xc5
0000047A  C6                db 0xc6
0000047B  55                push bp
0000047C  C7                db 0xc7
0000047D  50                push ax
0000047E  51                push cx
0000047F  50                push ax
00000480  41                inc cx
00000481  60                pusha
00000482  61                popa
00000483  82                db 0x82
00000484  C445C7            les ax,word [di-0x39]
00000487  85C4              test sp,ax
00000489  45                inc bp
0000048A  C8CA84C4          enter word 0x84ca,byte 0xc4
0000048E  65C88BCFCE        gs enter word 0xcf8b,byte 0xce
00000493  C3                ret
00000494  C645C496          mov byte [di-0x3c],0x96
00000498  C455C8            les dx,word [di-0x38]
0000049B  84C4              test ah,al
0000049D  55                push bp
0000049E  C884C455          enter word 0xc484,byte 0x55
000004A2  C3                ret
000004A3  C6                db 0xc6
000004A4  C88ACFCE          enter word 0xcf8a,byte 0xce
000004A8  C4                db 0xc4
000004A9  C6                db 0xc6
000004AA  55                push bp
000004AB  87C3              xchg ax,bx
000004AD  C6C7C8            mov bh,0xc8
000004B0  8B4345            mov ax,[bp+di+0x45]
000004B3  C884C455          enter word 0xc484,byte 0x55
000004B7  85C4              test sp,ax
000004B9  65C88BCFCE        gs enter word 0xcf8b,byte 0xce
000004BE  C4                db 0xc4
000004BF  C645C3C9          mov byte [di-0x3d],0xc9
000004C3  86C3              xchg al,bl
000004C5  43                inc bx
000004C6  C7                db 0xc7
000004C7  C88AC455          enter word 0xc48a,byte 0x55
000004CB  854345            test [bp+di+0x45],ax
000004CE  C7                db 0xc7
000004CF  C883C465          enter word 0xc483,byte 0x65
000004D3  C88BCFCE          enter word 0xcf8b,byte 0xce
000004D7  C4                db 0xc4
000004D8  C645C5CA          mov byte [di-0x3b],0xca
000004DC  86C4              xchg al,ah
000004DE  C6C4C7            mov ah,0xc7
000004E1  C88AC465          enter word 0xc48a,byte 0x65
000004E5  C883C455          enter word 0xc483,byte 0x55
000004E9  CA84C4            retf word 0xc484
000004EC  55                push bp
000004ED  C7                db 0xc7
000004EE  8CCF              mov di,cs
000004F0  CE                into
000004F1  C4                db 0xc4
000004F2  C6                db 0xc6
000004F3  55                push bp
000004F4  C7864345C889      mov word [bp+0x4543],0x89c8
000004FA  C3                ret
000004FB  6585C4            gs test sp,ax
000004FE  45                inc bp
000004FF  C8CA84C4          enter word 0x84ca,byte 0xc4
00000503  55                push bp
00000504  C88CCFCE          enter word 0xcf8c,byte 0xce
00000508  C3                ret
00000509  C645C787          mov byte [di-0x39],0x87
0000050D  C46586            les sp,word [di-0x7a]
00000510  C3                ret
00000511  06                push es
00000512  06                push es
00000513  C884C565          enter word 0xc584,byte 0x65
00000517  84C4              test ah,al
00000519  45                inc bp
0000051A  C7C6C88A          mov si,0x8ac8
0000051E  52                push dx
0000051F  45                inc bp
00000520  45                inc bp
00000521  C3                ret
00000522  C7                db 0xc7
00000523  C885C465          enter word 0xc485,byte 0x65
00000527  86C4              xchg al,ah
00000529  06                push es
0000052A  06                push es
0000052B  C7                db 0xc7
0000052C  CA8365            retf word 0x6583
0000052F  C884C475          enter word 0xc484,byte 0x75
00000533  C8894455          enter word 0x4489,byte 0x55
00000537  45                inc bp
00000538  C487C445          les ax,word [bx+0x45c4]
0000053C  C4                db 0xc4
0000053D  C786C40706C8      mov word [bp+0x7c4],0xc806
00000543  8345C886          add word [di-0x38],0xffffffffffffff86
00000547  C455C4            les dx,word [di-0x3c]
0000054A  C88CC545          enter word 0xc58c,byte 0x45
0000054E  55                push bp
0000054F  C886C465          enter word 0xc486,byte 0x65
00000553  86C4              xchg al,ah
00000555  65C745C88445      mov word [gs:di-0x38],0x4584
0000055B  C886C465          enter word 0xc486,byte 0x65
0000055F  8EC4              mov es,sp
00000561  C6                db 0xc6
00000562  55                push bp
00000563  87C4              xchg ax,sp
00000565  55                push bp
00000566  C8864375          enter word 0x4386,byte 0x75
0000056A  C785C345C885      mov word [di+0x45c3],0x85c8
00000570  C45547            les dx,word [di+0x47]
00000573  8442C7            test [bp+si-0x39],al
00000576  86C4              xchg al,ah
00000578  C645C387          mov byte [di-0x3d],0x87
0000057C  C455C7            les dx,word [di-0x39]
0000057F  C9                leave
00000580  85C4              test sp,ax
00000582  06                push es
00000583  06                push es
00000584  C884C455          enter word 0xc484,byte 0x55
00000588  C884C465          enter word 0xc484,byte 0x65
0000058C  C884C455          enter word 0xc484,byte 0x55
00000590  85C4              test sp,ax
00000592  C645C7C8          mov byte [di-0x39],0xc8
00000596  86C4              xchg al,ah
00000598  65CA85C4          gs retf word 0xc485
0000059C  06                push es
0000059D  06                push es
0000059E  85C4              test sp,ax
000005A0  45                inc bp
000005A1  C885C455          enter word 0xc485,byte 0x55
000005A5  C785435584C4      mov word [di+0x5543],0xc484
000005AB  C6                db 0xc6
000005AC  55                push bp
000005AD  C886C465          enter word 0xc486,byte 0x65
000005B1  86C4              xchg al,ah
000005B3  55                push bp
000005B4  C565C8            lds sp,word [di-0x38]
000005B7  83C4C3            add sp,0xffffffffffffffc3
000005BA  C6                db 0xc6
000005BB  C885C465          enter word 0xc485,byte 0x65
000005BF  85C4              test sp,ax
000005C1  C6C5C6            mov ch,0xc6
000005C4  C884C4C6          enter word 0xc484,byte 0xc6
000005C8  45                inc bp
000005C9  C782D584C455      mov word [bp+si-0x7b2b],0x55c4
000005CF  C586C455          lds ax,word [bp+0x55c4]
000005D3  C3                ret
000005D4  55                push bp
000005D5  C884C445          enter word 0xc484,byte 0x45
000005D9  C7                db 0xc7
000005DA  C884C465          enter word 0xc484,byte 0x65
000005DE  C784C5C6C3C7      mov word [si-0x393b],0xc7c3
000005E4  85C4              test sp,ax
000005E6  C6                db 0xc6
000005E7  55                push bp
000005E8  C881D684          enter word 0xd681,byte 0x84
000005EC  C465C7            les sp,word [di-0x39]
000005EF  C884C405          enter word 0xc484,byte 0x5
000005F3  06                push es
000005F4  C885C445          enter word 0xc485,byte 0x45
000005F8  C8854365          enter word 0x4385,byte 0x65
000005FC  C884C445          enter word 0xc484,byte 0x45
00000600  C884C4C6          enter word 0xc484,byte 0xc6
00000604  45                inc bp
00000605  C3                ret
00000606  C7                db 0xc7
00000607  C8D784C4          enter word 0x84d7,byte 0xc4
0000060B  55                push bp
0000060C  C886C505          enter word 0xc586,byte 0x5
00000610  06                push es
00000611  C885C455          enter word 0xc485,byte 0x55
00000615  C884C465          enter word 0xc484,byte 0x65
00000619  C4                db 0xc4
0000061A  C684C445C4        mov byte [si+0x45c4],0xc4
0000061F  C883C4C6          enter word 0xc483,byte 0xc6
00000623  C6C7C8            mov bh,0xc8
00000626  82                db 0x82
00000627  D884C465          fadd dword [si+0x65c4]
0000062B  C8850506          enter word 0x585,byte 0x6
0000062F  C7864355C883      mov word [bp+0x5543],0x83c8
00000635  C575C8            lds si,word [di-0x38]
00000638  84C4              test ah,al
0000063A  55                push bp
0000063B  C883C4C6          enter word 0xc483,byte 0xc6
0000063F  45                inc bp
00000640  C882D984          enter word 0xd982,byte 0x84
00000644  C455C8            les dx,word [di-0x38]
00000647  8607              xchg al,[bx]
00000649  06                push es
0000064A  C884C455          enter word 0xc484,byte 0x55
0000064E  8505              test [di],ax
00000650  06                push es
00000651  C88443C8          enter word 0x4384,byte 0xc8
00000655  85C4              test sp,ax
00000657  C645C4C8          mov byte [di-0x3c],0xc8
0000065B  86C4              xchg al,ah
0000065D  658655C5          xchg dl,[gs:di-0x3b]
00000661  65C884C445        gs enter word 0xc484,byte 0x45
00000666  C88575C7          enter word 0x7585,byte 0xc7
0000066A  85C4              test sp,ax
0000066C  C6                db 0xc6
0000066D  C885C4C6          enter word 0xc485,byte 0xc6
00000671  55                push bp
00000672  C3                ret
00000673  86C4              xchg al,ah
00000675  55                push bp
00000676  C7                db 0xc7
00000677  C885C405          enter word 0xc485,byte 0x5
0000067B  06                push es
0000067C  C785C4C6C886      mov word [di-0x393c],0x86c8
00000682  C3                ret
00000683  65C9              gs leave
00000685  85C4              test sp,ax
00000687  45                inc bp
00000688  C884C4C6          enter word 0xc484,byte 0xc6
0000068C  45                inc bp
0000068D  C487C445          les ax,word [bx+0x45c4]
00000691  C3                ret
00000692  C786C475C786      mov word [bp+0x75c4],0x86c7
00000698  C4                db 0xc4
00000699  C6C7C6            mov bh,0xc6
0000069C  85C4              test sp,ax
0000069E  55                push bp
0000069F  C8C985C4          enter word 0x85c9,byte 0xc4
000006A3  45                inc bp
000006A4  C884C4C6          enter word 0xc484,byte 0xc6
000006A8  55                push bp
000006A9  87C4              xchg ax,sp
000006AB  65860606C8        xchg al,[gs:0xc806]
000006B0  85C5              test bp,ax
000006B2  45                inc bp
000006B3  86C4              xchg al,ah
000006B5  55                push bp
000006B6  C8C985C4          enter word 0x85c9,byte 0xc4
000006BA  C6                db 0xc6
000006BB  C8C984C4          enter word 0x84c9,byte 0xc4
000006BF  C645C4C8          mov byte [di-0x3c],0xc8
000006C3  86C4              xchg al,ah
000006C5  6586060686        xchg al,[gs:0x8606]
000006CA  6585C4            gs test sp,ax
000006CD  55                push bp
000006CE  C886C4C6          enter word 0xc486,byte 0xc6
000006D2  C4                db 0xc4
000006D3  C884C4C6          enter word 0xc484,byte 0xc6
000006D7  45                inc bp
000006D8  88C4              mov ah,al
000006DA  658605            xchg al,[gs:di]
000006DD  06                push es
000006DE  C886C345          enter word 0xc386,byte 0x45
000006E2  C885C455          enter word 0xc485,byte 0x55
000006E6  C886C445          enter word 0xc486,byte 0x45
000006EA  C884C4C6          enter word 0xc484,byte 0xc6
000006EE  45                inc bp
000006EF  C3                ret
000006F0  87C4              xchg ax,sp
000006F2  55                push bp
000006F3  C3                ret
000006F4  C785C345C355      mov word [di+0x45c3],0x55c3
000006FA  86C4              xchg al,ah
000006FC  55                push bp
000006FD  C884C4C6          enter word 0xc484,byte 0xc6
00000701  C5                db 0xc5
00000702  C6                db 0xc6
00000703  C886C445          enter word 0xc486,byte 0x45
00000707  C884C4C6          enter word 0xc484,byte 0xc6
0000070B  55                push bp
0000070C  C786C46586C4      mov word [bp+0x65c4],0xc486
00000712  06                push es
00000713  06                push es
00000714  C884C455          enter word 0xc484,byte 0x55
00000718  C884C4C6          enter word 0xc484,byte 0xc6
0000071C  C3                ret
0000071D  C6                db 0xc6
0000071E  C8864345          enter word 0x4386,byte 0x45
00000722  84C4              test ah,al
00000724  C6                db 0xc6
00000725  6586C4            gs xchg al,ah
00000728  65C885C405        gs enter word 0xc485,byte 0x5
0000072D  06                push es
0000072E  C8854345          enter word 0x4385,byte 0x45
00000732  C784C455C886      mov word [si+0x55c4],0x86c8
00000738  C445C8            les ax,word [di-0x38]
0000073B  84C4              test ah,al
0000073D  C6                db 0xc6
0000073E  6586C4            gs xchg al,ah
00000741  65                gs
00000742  C4                db 0xc4
00000743  C884C4C6          enter word 0xc484,byte 0xc6
00000747  C465C7            les sp,word [di-0x39]
0000074A  85C4              test sp,ax
0000074C  65C883C555        gs enter word 0xc583,byte 0x55
00000751  C886C4C6          enter word 0xc486,byte 0xc6
00000755  C7                db 0xc7
00000756  C884C4C6          enter word 0xc484,byte 0xc6
0000075A  45                inc bp
0000075B  C74785C465        mov word [bx-0x7b],0x65c4
00000760  C885C475          enter word 0xc485,byte 0x75
00000764  C886C455          enter word 0xc486,byte 0x55
00000768  C884C345          enter word 0xc384,byte 0x45
0000076C  C8C986C4          enter word 0x86c9,byte 0xc4
00000770  45                inc bp
00000771  C884C4C6          enter word 0xc484,byte 0xc6
00000775  55                push bp
00000776  87C5              xchg ax,bp
00000778  55                push bp
00000779  C7                db 0xc7
0000077A  C885C465          enter word 0xc485,byte 0x65
0000077E  C787C555C884      mov word [bx+0x55c5],0x84c8
00000784  C445C8            les ax,word [di-0x38]
00000787  874345            xchg ax,[bp+di+0x45]
0000078A  84C4              test ah,al
0000078C  C6                db 0xc6
0000078D  6586C3            gs xchg al,bl
00000790  55                push bp
00000791  87C4              xchg ax,sp
00000793  75C8              jnz 0x75d
00000795  865586            xchg dl,[di-0x7a]
00000798  C445C8            les ax,word [di-0x38]
0000079B  87C4              xchg ax,sp
0000079D  55                push bp
0000079E  84C4              test ah,al
000007A0  C6                db 0xc6
000007A1  55                push bp
000007A2  C886C455          enter word 0xc486,byte 0x55
000007A6  C486C406          les ax,word [bp+0x6c4]
000007AA  06                push es
000007AB  C88455C8          enter word 0x5584,byte 0xc8
000007AF  854345            test [bp+di+0x45],ax
000007B2  C886C445          enter word 0xc486,byte 0x45
000007B6  C884C4C6          enter word 0xc484,byte 0xc6
000007BA  55                push bp
000007BB  87C4              xchg ax,sp
000007BD  6586C4            gs xchg al,ah
000007C0  0506C8            add ax,0xc806
000007C3  856585            test [di-0x7b],sp
000007C6  C455C7            les dx,word [di-0x39]
000007C9  86C4              xchg al,ah
000007CB  45                inc bp
000007CC  85C4              test sp,ax
000007CE  C645C887          mov byte [di-0x38],0x87
000007D2  C455C7            les dx,word [di-0x39]
000007D5  C885C405          enter word 0xc485,byte 0x5
000007D9  06                push es
000007DA  86C3              xchg al,bl
000007DC  C6C4C6            mov ah,0xc6
000007DF  C884C455          enter word 0xc484,byte 0x55
000007E3  C786C4C7C4C7      mov word [bp-0x383c],0xc7c4
000007E9  84C4              test ah,al
000007EB  C6                db 0xc6
000007EC  55                push bp
000007ED  C886C465          enter word 0xc486,byte 0x65
000007F1  864365            xchg al,[bp+di+0x65]
000007F4  C786C445C7C8      mov word [bp+0x45c4],0xc8c7
000007FA  84C4              test ah,al
000007FC  55                push bp
000007FD  C886C445          enter word 0xc486,byte 0x45
00000801  C884C4C6          enter word 0xc484,byte 0xc6
00000805  55                push bp
00000806  87C4              xchg ax,sp
00000808  6586C4            gs xchg al,ah
0000080B  050686            add ax,0x8606
0000080E  43                inc bx
0000080F  55                push bp
00000810  84C4              test ah,al
00000812  45                inc bp
00000813  C887C446          enter word 0xc487,byte 0x46
00000817  85C4              test sp,ax
00000819  C6                db 0xc6
0000081A  55                push bp
0000081B  87C4              xchg ax,sp
0000081D  6586C4            gs xchg al,ah
00000820  06                push es
00000821  06                push es
00000822  C884C455          enter word 0xc484,byte 0x55
00000826  C884C545          enter word 0xc584,byte 0x45
0000082A  C887C445          enter word 0xc487,byte 0x45
0000082E  C884C4C6          enter word 0xc484,byte 0xc6
00000832  6586C4            gs xchg al,ah
00000835  45                inc bp
00000836  C3                ret
00000837  C7                db 0xc7
00000838  C885C475          enter word 0xc485,byte 0x75
0000083C  C786C445C885      mov word [bp+0x45c4],0x85c8
00000842  45                inc bp
00000843  C5                db 0xc5
00000844  C887C4C6          enter word 0xc487,byte 0xc6
00000848  C4                db 0xc4
00000849  C884C4C6          enter word 0xc484,byte 0xc6
0000084D  65                gs
0000084E  C7                db 0xc7
0000084F  C884C455          enter word 0xc484,byte 0x55
00000853  CA86C4            retf word 0xc486
00000856  55                push bp
00000857  C445C8            les ax,word [di-0x38]
0000085A  85C4              test sp,ax
0000085C  55                push bp
0000085D  8555C8            test [di-0x38],dx
00000860  87C4              xchg ax,sp
00000862  45                inc bp
00000863  C884C4C6          enter word 0xc484,byte 0xc6
00000867  6586C4            gs xchg al,ah
0000086A  6586C5            gs xchg al,ch
0000086D  050686            add ax,0x8606
00000870  C4                db 0xc4
00000871  C6C345            mov bl,0x45
00000874  C883C345          enter word 0xc383,byte 0x45
00000878  C88743C6          enter word 0x4387,byte 0xc6
0000087C  C884C4C6          enter word 0xc484,byte 0xc6
00000880  55                push bp
00000881  C886C455          enter word 0xc486,byte 0x55
00000885  C4                db 0xc4
00000886  C885C407          enter word 0xc485,byte 0x7
0000088A  06                push es
0000088B  C883C465          enter word 0xc483,byte 0x65
0000088F  C883C445          enter word 0xc483,byte 0x45
00000893  C787C4C7C6C8      mov word [bx-0x383c],0xc8c6
00000899  84C4              test ah,al
0000089B  C645C787          mov byte [di-0x39],0x87
0000089F  C455C9            les dx,word [di-0x37]
000008A2  86C4              xchg al,ah
000008A4  06                push es
000008A5  06                push es
000008A6  85C4              test sp,ax
000008A8  45                inc bp
000008A9  C7                db 0xc7
000008AA  C884C445          enter word 0xc484,byte 0x45
000008AE  C787C445C884      mov word [bx+0x45c4],0x84c8
000008B4  C5                db 0xc5
000008B5  C6454786          mov byte [di+0x47],0x86
000008B9  C445C4            les ax,word [di-0x3c]
000008BC  C886C405          enter word 0xc486,byte 0x5
000008C0  06                push es
000008C1  C8854345          enter word 0x4385,byte 0x45
000008C5  85C4              test sp,ax
000008C7  45                inc bp
000008C8  C887C455          enter word 0xc487,byte 0x55
000008CC  85C4              test sp,ax
000008CE  55                push bp
000008CF  87C5              xchg ax,bp
000008D1  55                push bp
000008D2  CA86C4            retf word 0xc486
000008D5  75C7              jnz 0x89e
000008D7  86C5              xchg al,ch
000008D9  C3                ret
000008DA  C7                db 0xc7
000008DB  C88543C6          enter word 0x4385,byte 0xc6
000008DF  C887C455          enter word 0xc487,byte 0x55
000008E3  85C4              test sp,ax
000008E5  55                push bp
000008E6  877586            xchg si,[di-0x7a]
000008E9  C405              les ax,word [di]
000008EB  06                push es
000008EC  8FC4              pop sp
000008EE  45                inc bp
000008EF  C787C455C884      mov word [bx+0x55c4],0x84c8
000008F5  C455C8            les dx,word [di-0x38]
000008F8  8605              xchg al,[di]
000008FA  06                push es
000008FB  C884C445          enter word 0xc484,byte 0x45
000008FF  C45540            les dx,word [di+0x40]
00000902  41                inc cx
00000903  50                push ax
00000904  41                inc cx
00000905  40                inc ax
00000906  C2C1C2            ret word 0xc2c1
00000909  81C445C8          add sp,0xc845
0000090D  87C4              xchg ax,sp
0000090F  55                push bp
00000910  85C4              test sp,ax
00000912  65C885C365        gs enter word 0xc385,byte 0x65
00000917  86C5              xchg al,ch
00000919  0506C8            add ax,0xc806
0000091C  8EC4              mov es,sp
0000091E  45                inc bp
0000091F  C8874345          enter word 0x4387,byte 0x45
00000923  C7                db 0xc7
00000924  CA83C6            retf word 0xc683
00000927  45                inc bp
00000928  C445C7            les ax,word [di-0x39]
0000092B  84C4              test ah,al
0000092D  55                push bp
0000092E  47                inc di
0000092F  8565C5            test [di-0x3b],sp
00000932  55                push bp
00000933  C88CC365          enter word 0xc38c,byte 0x65
00000937  C886C455          enter word 0xc486,byte 0x55
0000093B  C884C675          enter word 0xc684,byte 0x75
0000093F  C884C455          enter word 0xc484,byte 0x55
00000943  C8860806          enter word 0x886,byte 0x6
00000947  C5                db 0xc5
00000948  C3                ret
00000949  65C3              gs ret
0000094B  45                inc bp
0000094C  C54275            lds ax,word [bp+si+0x75]
0000094F  C886C445          enter word 0xc486,byte 0x45
00000953  86C6              xchg al,dh
00000955  65C885C4C6        gs enter word 0xc485,byte 0xc6
0000095A  C4                db 0xc4
0000095B  C6C3C8            mov bl,0xc8
0000095E  85C3              test bx,ax
00000960  0D06C4            or ax,0xc406
00000963  07                pop es
00000964  06                push es
00000965  C3                ret
00000966  C6                db 0xc6
00000967  C886C455          enter word 0xc486,byte 0x55
0000096B  C884C665          enter word 0xc684,byte 0x65
0000096F  86C4              xchg al,ah
00000971  55                push bp
00000972  C886C408          enter word 0xc486,byte 0x8
00000976  06                push es
00000977  44                inc sp
00000978  0D06C8            or ax,0xc806
0000097B  86C4              xchg al,ah
0000097D  45                inc bp
0000097E  C885C655          enter word 0xc685,byte 0x55
00000982  C886C465          enter word 0xc486,byte 0x65
00000986  C785C40706C8      mov word [di+0x7c4],0xc806
0000098C  C9                leave
0000098D  81C475C8          add sp,0xc875
00000991  82                db 0x82
00000992  C565C7            lds sp,word [di-0x39]
00000995  86C5              xchg al,ch
00000997  45                inc bp
00000998  C785C46586C4      mov word [di+0x65c4],0xc486
0000099E  45                inc bp
0000099F  47                inc di
000009A0  86C4              xchg al,ah
000009A2  55                push bp
000009A3  C4                db 0xc4
000009A4  C6C7C8            mov bh,0xc8
000009A7  84C4              test ah,al
000009A9  65C884C465        gs enter word 0xc484,byte 0x65
000009AE  C885C355          enter word 0xc385,byte 0x55
000009B2  C884C465          enter word 0xc484,byte 0x65
000009B6  C885C455          enter word 0xc485,byte 0x55
000009BA  C886C405          enter word 0xc486,byte 0x5
000009BE  06                push es
000009BF  85C4              test sp,ax
000009C1  6585C4            gs test sp,ax
000009C4  65C885C465        gs enter word 0xc485,byte 0x65
000009C9  C883C475          enter word 0xc483,byte 0x75
000009CD  85C4              test sp,ax
000009CF  65C885C475        gs enter word 0xc485,byte 0x75
000009D4  864355            xchg al,[bp+di+0x55]
000009D7  C884C465          enter word 0xc484,byte 0x65
000009DB  C3                ret
000009DC  C884C455          enter word 0xc484,byte 0x55
000009E0  85C4              test sp,ax
000009E2  65C885C355        gs enter word 0xc385,byte 0x55
000009E7  47                inc di
000009E8  85C4              test sp,ax
000009EA  0506C8            add ax,0xc806
000009ED  84C4              test ah,al
000009EF  050683            add ax,0x8306
000009F2  C405              les ax,word [di]
000009F4  06                push es
000009F5  C3                ret
000009F6  82                db 0x82
000009F7  C3                ret
000009F8  55                push bp
000009F9  86C6              xchg al,dh
000009FB  55                push bp
000009FC  47                inc di
000009FD  85C4              test sp,ax
000009FF  55                push bp
00000A00  C886C4C6          enter word 0xc486,byte 0xc6
00000A04  C465C7            les sp,word [di-0x39]
00000A07  C883C465          enter word 0xc483,byte 0x65
00000A0B  C884C445          enter word 0xc484,byte 0x45
00000A0F  C3                ret
00000A10  55                push bp
00000A11  C70606C884C4      mov word [0xc806],0xc484
00000A17  55                push bp
00000A18  C886C465          enter word 0xc486,byte 0x65
00000A1C  86C4              xchg al,ah
00000A1E  06                push es
00000A1F  06                push es
00000A20  84C5              test ch,al
00000A22  55                push bp
00000A23  C885C40C          enter word 0xc485,byte 0xc
00000A27  06                push es
00000A28  86C4              xchg al,ah
00000A2A  55                push bp
00000A2B  87C4              xchg ax,sp
00000A2D  C6C555            mov ch,0x55
00000A30  85C4              test sp,ax
00000A32  0506C8            add ax,0xc806
00000A35  846586            test [di-0x7a],ah
00000A38  C407              les ax,word [bx]
00000A3A  06                push es
00000A3B  C3                ret
00000A3C  65                gs
00000A3D  C7                db 0xc7
00000A3E  C884C455          enter word 0xc484,byte 0x55
00000A42  87C4              xchg ax,sp
00000A44  65                gs
00000A45  C7                db 0xc7
00000A46  C884C565          enter word 0xc584,byte 0x65
00000A4A  47                inc di
00000A4B  85C3              test bx,ax
00000A4D  45                inc bp
00000A4E  874455            xchg ax,[si+0x55]
00000A51  C3                ret
00000A52  C7C50606          mov bp,0x606
00000A56  85C4              test sp,ax
00000A58  55                push bp
00000A59  C886C465          enter word 0xc486,byte 0x65
00000A5D  C886C465          enter word 0xc486,byte 0x65
00000A61  C885C455          enter word 0xc485,byte 0x55
00000A65  90                nop
00000A66  C575C8            lds si,word [di-0x38]
00000A69  83C455            add sp,0x55
00000A6C  87C4              xchg ax,sp
00000A6E  65C3              gs ret
00000A70  C7                db 0xc7
00000A71  C884C545          enter word 0xc584,byte 0x45
00000A75  C7C6C7C8          mov si,0xc8c7
00000A79  84C4              test ah,al
00000A7B  55                push bp
00000A7C  50                push ax
00000A7D  41                inc cx
00000A7E  40                inc ax
00000A7F  C24041            ret word 0x4140
00000A82  40                inc ax
00000A83  C282C4            ret word 0xc482
00000A86  65CA83C5          gs retf word 0xc583
00000A8A  C455C8            les dx,word [di-0x38]
00000A8D  85C4              test sp,ax
00000A8F  45                inc bp
00000A90  C4                db 0xc4
00000A91  C7                db 0xc7
00000A92  C887C465          enter word 0xc487,byte 0x65
00000A96  85C4              test sp,ax
00000A98  75C8              jnz 0xa62
00000A9A  8EC4              mov es,sp
00000A9C  55                push bp
00000A9D  C885C465          enter word 0xc485,byte 0x65
00000AA1  85C5              test bp,ax
00000AA3  C6C7C8            mov bh,0xc8
00000AA6  894445            mov [si+0x45],ax
00000AA9  C885C407          enter word 0xc485,byte 0x7
00000AAD  06                push es
00000AAE  C88BC445          enter word 0xc48b,byte 0x45
00000AB2  C78643459DC4      mov word [bp+0x4543],0xc49d
00000AB8  C6C409            mov ah,0x9
00000ABB  06                push es
00000ABC  C887C455          enter word 0xc487,byte 0x55
00000AC0  C885C4C6          enter word 0xc485,byte 0xc6
00000AC4  C3                ret
00000AC5  C7                db 0xc7
00000AC6  60                pusha
00000AC7  51                push cx
00000AC8  50                push ax
00000AC9  51                push cx
00000ACA  50                push ax
00000ACB  41                inc cx
00000ACC  50                push ax
00000ACD  41                inc cx
00000ACE  50                push ax
00000ACF  41                inc cx
00000AD0  81C40906          add sp,0x609
00000AD4  C445C7            les ax,word [di-0x39]
00000AD7  C885C465          enter word 0xc485,byte 0x65
00000ADB  C884C445          enter word 0xc484,byte 0x45
00000ADF  9E                sahf
00000AE0  C40E06C7          les cx,word [0xc706]
00000AE4  84C4              test ah,al
00000AE6  55                push bp
00000AE7  86C4              xchg al,ah
00000AE9  45                inc bp
00000AEA  47                inc di
00000AEB  85C3              test bx,ax
00000AED  C4                db 0xc4
00000AEE  C6C7C8            mov bh,0xc8
00000AF1  89C3              mov bx,ax
00000AF3  C6                db 0xc6
00000AF4  C886C40D          enter word 0xc486,byte 0xd
00000AF8  06                push es
00000AF9  86C4              xchg al,ah
00000AFB  55                push bp
00000AFC  C885C455          enter word 0xc485,byte 0x55
00000B00  86C4              xchg al,ah
00000B02  55                push bp
00000B03  C4                db 0xc4
00000B04  C887C355          enter word 0xc387,byte 0x55
00000B08  C3                ret
00000B09  8554C3            test [si-0x3d],dx
00000B0C  C7                db 0xc7
00000B0D  6544              gs inc sp
00000B0F  65C885C455        gs enter word 0xc485,byte 0x55
00000B14  86C4              xchg al,ah
00000B16  45                inc bp
00000B17  C886C475          enter word 0xc486,byte 0x75
00000B1B  C786C46590C5      mov word [bp+0x65c4],0xc590
00000B21  65C784C445C4C8    mov word [gs:si+0x45c4],0xc8c4
00000B28  85C5              test bp,ax
00000B2A  C7                db 0xc7
00000B2B  C887C465          enter word 0xc487,byte 0x65
00000B2F  C887C465          enter word 0xc487,byte 0x65
00000B33  51                push cx
00000B34  40                inc ax
00000B35  41                inc cx
00000B36  C1C240            rol dx,byte 0x40
00000B39  41                inc cx
00000B3A  40                inc ax
00000B3B  82                db 0x82
00000B3C  C45585            les dx,word [di-0x7b]
00000B3F  C455C8            les dx,word [di-0x38]
00000B42  858AC445          test [bp+si+0x45c4],cx
00000B46  C3                ret
00000B47  C7                db 0xc7
00000B48  884365            mov [bp+di+0x65],al
00000B4B  90                nop
00000B4C  C445C8            les ax,word [di-0x38]
00000B4F  854355            test [bp+di+0x55],ax
00000B52  858AC575          test [bp+si+0x75c5],cx
00000B56  87C4              xchg ax,sp
00000B58  75C3              jnz 0xb1d
00000B5A  75C4              jnz 0xb20
00000B5C  45                inc bp
00000B5D  C3                ret
00000B5E  C885C455          enter word 0xc485,byte 0x55
00000B62  85C4              test sp,ax
00000B64  55                push bp
00000B65  868A7548          xchg cl,[bp+si+0x4875]
00000B69  86C4              xchg al,ah
00000B6B  0F06              clts
00000B6D  C884C455          enter word 0xc484,byte 0x55
00000B71  C884C455          enter word 0xc484,byte 0x55
00000B75  C7                db 0xc7
00000B76  C8848A05          enter word 0x8a84,byte 0x5
00000B7A  06                push es
00000B7B  C886C407          enter word 0xc486,byte 0x7
00000B7F  06                push es
00000B80  C44475            les ax,word [si+0x75]
00000B83  C784C46584C4      mov word [si+0x65c4],0xc484
00000B89  55                push bp
00000B8A  C8858AC3          enter word 0x8a85,byte 0xc3
00000B8E  06                push es
00000B8F  06                push es
00000B90  85C4              test sp,ax
00000B92  45                inc bp
00000B93  C575C8            lds si,word [di-0x38]
00000B96  82                db 0x82
00000B97  C56585            lds sp,word [di-0x7b]
00000B9A  C555C8            lds dx,word [di-0x38]
00000B9D  84C4              test ah,al
00000B9F  45                inc bp
00000BA0  C7868AC40506      mov word [bp-0x3b76],0x605
00000BA6  86C4              xchg al,ah
00000BA8  06                push es
00000BA9  06                push es
00000BAA  C884C455          enter word 0xc484,byte 0x55
00000BAE  C88445C7          enter word 0x4584,byte 0xc7
00000BB2  C885C5C6          enter word 0xc585,byte 0xc6
00000BB6  C4                db 0xc4
00000BB7  C6                db 0xc6
00000BB8  C8858AC4          enter word 0x8a85,byte 0xc4
00000BBC  0506C8            add ax,0xc806
00000BBF  85C4              test sp,ax
00000BC1  0506C7            add ax,0xc706
00000BC4  C884C445          enter word 0xc484,byte 0x45
00000BC8  8645C7            xchg al,[di-0x39]
00000BCB  8605              xchg al,[di]
00000BCD  06                push es
00000BCE  848AC4C3          test [bp+si-0x3c3c],cl
00000BD2  7586              jnz 0xb5a
00000BD4  C475C3            les si,word [di-0x3d]
00000BD7  C885C455          enter word 0xc485,byte 0x55
00000BDB  C88445C8          enter word 0x4584,byte 0xc8
00000BDF  867585            xchg dh,[di-0x7b]
00000BE2  8AC4              mov al,ah
00000BE4  75C8              jnz 0xbae
00000BE6  86C4              xchg al,ah
00000BE8  050686            add ax,0x8606
00000BEB  C465C8            les sp,word [di-0x38]
00000BEE  83C3C6            add bx,0xffffffffffffffc6
00000BF1  C886C455          enter word 0xc486,byte 0x55
00000BF5  C7                db 0xc7
00000BF6  49                dec cx
00000BF7  838AC40506        or word [bp+si+0x5c4],0x6
00000BFC  86C4              xchg al,ah
00000BFE  75C7              jnz 0xbc7
00000C00  C8D084C4          enter word 0x84d0,byte 0xc4
00000C04  55                push bp
00000C05  C784C4C6C886      mov word [si-0x393c],0x86c8
00000C0B  65C8CA848A        gs enter word 0x84ca,byte 0x8a
00000C10  C405              les ax,word [di]
00000C12  06                push es
00000C13  C885C475          enter word 0xc485,byte 0x75
00000C17  C881D184          enter word 0xd181,byte 0x84
00000C1B  C455C8            les dx,word [di-0x38]
00000C1E  84C4              test ah,al
00000C20  C6                db 0xc6
00000C21  C886C355          enter word 0xc386,byte 0x55
00000C25  C44983            les cx,word [bx+di-0x7d]
00000C28  89C3              mov bx,ax
00000C2A  06                push es
00000C2B  06                push es
00000C2C  C885C575          enter word 0xc585,byte 0x75
00000C30  82                db 0x82
00000C31  D284C455          rol byte [si+0x55c4],cl
00000C35  85C4              test sp,ax
00000C37  C6                db 0xc6
00000C38  C886C475          enter word 0xc486,byte 0x75
00000C3C  8408              test [bx+si],cl
00000C3E  0308              add cx,[bx+si]
00000C40  06                push es
00000C41  8505              test [di],ax
00000C43  06                push es
00000C44  82                db 0x82
00000C45  D384C445          rol word [si+0x45c4],cl
00000C49  C885C5C6          enter word 0xc585,byte 0xc6
00000C4D  C886C465          enter word 0xc486,byte 0x65
00000C51  C884C410          enter word 0xc484,byte 0x10
00000C55  06                push es
00000C56  C7840506C881      mov word [si+0x605],0x81c8
00000C5C  D484              aam byte 0x84
00000C5E  C465C8            les sp,word [di-0x38]
00000C61  8345C886          add word [di-0x38],0xffffffffffffff86
00000C65  C44547            les ax,word [di+0x47]
00000C68  85440D            test [si+0xd],ax
00000C6B  06                push es
00000C6C  C7                db 0xc7
00000C6D  C885C375          enter word 0xc385,byte 0x75
00000C71  C7                db 0xc7
00000C72  C885C355          enter word 0xc385,byte 0x55
00000C76  C88445C8          enter word 0x4584,byte 0xc8
00000C7A  86C4              xchg al,ah
00000C7C  45                inc bp
00000C7D  C48682C5          les ax,word [bp-0x3a7e]
00000C81  C465C4            les sp,word [di-0x3c]
00000C84  07                pop es
00000C85  06                push es
00000C86  86C4              xchg al,ah
00000C88  06                push es
00000C89  06                push es
00000C8A  85C4              test sp,ax
00000C8C  55                push bp
00000C8D  C884C3C6          enter word 0xc384,byte 0xc6
00000C91  C886C465          enter word 0xc486,byte 0x65
00000C95  8583C50B          test [bp+di+0xbc5],ax
00000C99  06                push es
00000C9A  C886C465          enter word 0xc486,byte 0x65
00000C9E  C7C686C4          mov si,0xc486
00000CA2  55                push bp
00000CA3  85C4              test sp,ax
00000CA5  C6                db 0xc6
00000CA6  C886C455          enter word 0xc486,byte 0x55
00000CAA  C8CA8484          enter word 0x84ca,byte 0x84
00000CAE  C40A              les cx,word [bp+si]
00000CB0  06                push es
00000CB1  87C4              xchg ax,sp
00000CB3  75C8              jnz 0xc7d
00000CB5  86C4              xchg al,ah
00000CB7  55                push bp
00000CB8  C7                db 0xc7
00000CB9  C9                leave
00000CBA  83C445            add sp,0x45
00000CBD  86C4              xchg al,ah
00000CBF  55                push bp
00000CC0  8684C5C4          xchg al,[si-0x3b3b]
00000CC4  0806C887          or [0x87c8],al
00000CC8  C465C3            les sp,word [di-0x3d]
00000CCB  C686C445C7        mov byte [bp+0x45c4],0xc7
00000CD0  C684C445C8        mov byte [si+0x45c4],0xc8
00000CD5  85C4              test sp,ax
00000CD7  45                inc bp
00000CD8  8785C445          xchg ax,[di+0x45c4]
00000CDC  C475C7            les si,word [di-0x39]
00000CDF  88C4              mov ah,al
00000CE1  7587              jnz 0xc6a
00000CE3  C3                ret
00000CE4  55                push bp
00000CE5  47                inc di
00000CE6  83C455            add sp,0x55
00000CE9  C884C455          enter word 0xc484,byte 0x55
00000CED  C88585C4          enter word 0x8585,byte 0xc4
00000CF1  06                push es
00000CF2  06                push es
00000CF3  C9                leave
00000CF4  894365            mov [bp+di+0x65],ax
00000CF7  C886C455          enter word 0xc486,byte 0x55
00000CFB  C8844345          enter word 0x4384,byte 0x45
00000CFF  C784C4558685      mov word [si+0x55c4],0x8586
00000D05  C40606C9          les ax,word [0xc906]
00000D09  89C4              mov sp,ax
00000D0B  65C787C5454784    mov word [gs:bx+0x45c5],0x8447
00000D12  C45585            les dx,word [di-0x7b]
00000D15  43                inc bx
00000D16  55                push bp
00000D17  C88485C4          enter word 0x8584,byte 0xc4
00000D1B  06                push es
00000D1C  06                push es
00000D1D  C7                db 0xc7
00000D1E  89C4              mov sp,ax
00000D20  0506C8            add ax,0xc806
00000D23  85C4              test sp,ax
00000D25  55                push bp
00000D26  85C4              test sp,ax
00000D28  45                inc bp
00000D29  C7                db 0xc7
00000D2A  C884C445          enter word 0xc484,byte 0x45
00000D2E  C78685C40706      mov word [bp-0x3b7b],0x607
00000D34  C9                leave
00000D35  88C4              mov ah,al
00000D37  C6C465            mov ah,0x65
00000D3A  86C4              xchg al,ah
00000D3C  55                push bp
00000D3D  C884C455          enter word 0xc484,byte 0x55
00000D41  85C4              test sp,ax
00000D43  65C88485C4        gs enter word 0x8584,byte 0xc4
00000D48  C6C475            mov ah,0x75
00000D4B  48                dec ax
00000D4C  88C4              mov ah,al
00000D4E  0506C7            add ax,0xc706
00000D51  85C4              test sp,ax
00000D53  55                push bp
00000D54  C784C465C883      mov word [si+0x65c4],0x83c8
00000D5A  C56585            lds sp,word [di-0x7b]
00000D5D  85C4              test sp,ax
00000D5F  050658            add ax,0x5806
00000D62  88C4              mov ah,al
00000D64  75C8              jnz 0xd2e
00000D66  86C4              xchg al,ah
00000D68  45                inc bp
00000D69  C5                db 0xc5
00000D6A  C6                db 0xc6
00000D6B  C9                leave
00000D6C  83C565            add bp,0x65
00000D6F  84C4              test ah,al
00000D71  6581CA8385        gs or dx,0x8583
00000D76  C40606C9          les ax,word [0xc906]
00000D7A  89C4              mov sp,ax
00000D7C  7587              jnz 0xd05
00000D7E  C465C8            les sp,word [di-0x38]
00000D81  84C4              test ah,al
00000D83  45                inc bp
00000D84  C884C4C6          enter word 0xc484,byte 0xc6
00000D88  C4                db 0xc4
00000D89  C68685C407        mov byte [bp-0x3b7b],0x7
00000D8E  06                push es
00000D8F  89C4              mov sp,ax
00000D91  7587              jnz 0xd1a
00000D93  C455C7            les dx,word [di-0x39]
00000D96  85C4              test sp,ax
00000D98  45                inc bp
00000D99  C784C465C884      mov word [si+0x65c4],0x84c8
00000D9F  85C4              test sp,ax
00000DA1  06                push es
00000DA2  06                push es
00000DA3  C9                leave
00000DA4  89C4              mov sp,ax
00000DA6  050686            add ax,0x8606
00000DA9  C445C8            les ax,word [di-0x38]
00000DAC  86C5              xchg al,ch
00000DAE  45                inc bp
00000DAF  C884C455          enter word 0xc484,byte 0x55
00000DB3  8685C407          xchg al,[di+0x7c4]
00000DB7  06                push es
00000DB8  C9                leave
00000DB9  88C4              mov ah,al
00000DBB  75C8              jnz 0xd85
00000DBD  86C4              xchg al,ah
00000DBF  55                push bp
00000DC0  8EC4              mov es,sp
00000DC2  55                push bp
00000DC3  C78585C40706      mov word [di-0x3b7b],0x607
00000DC9  C7                db 0xc7
00000DCA  88C4              mov ah,al
00000DCC  050686            add ax,0x8606
00000DCF  C455C1            les dx,word [di-0x3f]
00000DD2  C2C1C2            ret word 0xc2c1
00000DD5  C1414041          rol word [bx+di+0x40],byte 0x41
00000DD9  40                inc ax
00000DDA  81C475CA          add sp,0xca75
00000DDE  8385C40706        add word [di+0x7c4],0x6
00000DE3  C7                db 0xc7
00000DE4  88C4              mov ah,al
00000DE6  06                push es
00000DE7  06                push es
00000DE8  85C4              test sp,ax
00000DEA  55                push bp
00000DEB  C88DC465          enter word 0xc48d,byte 0x65
00000DEF  C88485C4          enter word 0x8584,byte 0xc4
00000DF3  0806C887          or [0x87c8],al
00000DF7  C505              lds ax,word [di]
00000DF9  06                push es
00000DFA  C885C455          enter word 0xc485,byte 0x55
00000DFE  C886C3C7          enter word 0xc386,byte 0xc7
00000E02  CA83C3            retf word 0xc383
00000E05  65C88585C4        gs enter word 0x8585,byte 0xc4
00000E0A  0906C887          or [0x87c8],ax
00000E0E  C47586            les si,word [di-0x7a]
00000E11  C455C7            les dx,word [di-0x39]
00000E14  C885C465          enter word 0xc485,byte 0x65
00000E18  C3                ret
00000E19  75C7              jnz 0xde2
00000E1B  8585C408          test [di+0x8c4],ax
00000E1F  06                push es
00000E20  C3                ret
00000E21  C687C47586        mov byte [bx+0x75c4],0x86
00000E26  C475C4            les si,word [di-0x3c]
00000E29  84C4              test ah,al
00000E2B  45                inc bp
00000E2C  C408              les cx,word [bx+si]
00000E2E  06                push es
00000E2F  8485C40A          test [di+0xac4],al
00000E33  06                push es
00000E34  C886C465          enter word 0xc486,byte 0x65
00000E38  47                inc di
00000E39  85CC              test sp,cx
00000E3B  C475C9            les si,word [di-0x37]
00000E3E  83C407            add sp,0x7
00000E41  06                push es
00000E42  C455C7            les dx,word [di-0x39]
00000E45  C8C38185          enter word 0x81c3,byte 0x85
00000E49  C40606C4          les ax,word [0xc406]
00000E4D  65C885C475        gs enter word 0xc485,byte 0x75
00000E52  C786CCC46584      mov word [bp-0x3b34],0x8465
00000E58  C44544            les ax,word [di+0x44]
00000E5B  C6C509            mov ch,0x9
00000E5E  06                push es
00000E5F  85C4              test sp,ax
00000E61  0906C5C6          or [0xc6c5],ax
00000E65  48                dec ax
00000E66  84C5              test ch,al
00000E68  55                push bp
00000E69  C7                db 0xc7
00000E6A  55                push bp
00000E6B  C885CC65          enter word 0xcc85,byte 0x65
00000E6F  C883C445          enter word 0xc483,byte 0x45
00000E73  84C4              test ah,al
00000E75  0806C884          or [0x84c8],al
00000E79  C50B              lds cx,word [bp+di]
00000E7B  06                push es
00000E7C  87C4              xchg ax,sp
00000E7E  45                inc bp
00000E7F  C3                ret
00000E80  45                inc bp
00000E81  88CC              mov ah,cl
00000E83  55                push bp
00000E84  84C4              test ah,al
00000E86  C785C40806CA      mov word [di+0x8c4],0xca06
00000E8C  84C4              test ah,al
00000E8E  0B06C786          or ax,[0x86c7]
00000E92  C405              les ax,word [di]
00000E94  06                push es
00000E95  C7                db 0xc7
00000E96  C886C345          enter word 0xc386,byte 0x45
00000E9A  C883C4C6          enter word 0xc483,byte 0xc6
00000E9E  85C4              test sp,ax
00000EA0  07                pop es
00000EA1  06                push es
00000EA2  C7                db 0xc7
00000EA3  CA84C4            retf word 0xc484
00000EA6  0D06C8            or ax,0xc806
00000EA9  84C4              test ah,al
00000EAB  0506C8            add ax,0xc806
00000EAE  87C4              xchg ax,sp
00000EB0  45                inc bp
00000EB1  84C4              test ah,al
00000EB3  C685C40706        mov byte [di+0x7c4],0x6
00000EB8  C8CA84C4          enter word 0x84ca,byte 0xc4
00000EBC  0906C3C6          or [0xc6c3],ax
00000EC0  C886C506          enter word 0xc586,byte 0x6
00000EC4  06                push es
00000EC5  C786C4C6C884      mov word [bp-0x393c],0x84c8
00000ECB  C5                db 0xc5
00000ECC  C6854355C5        mov byte [di+0x5543],0xc5
00000ED1  65C8844305        gs enter word 0x4384,byte 0x5
00000ED6  06                push es
00000ED7  C3                ret
00000ED8  55                push bp
00000ED9  C888C455          enter word 0xc488,byte 0x55
00000EDD  C3                ret
00000EDE  C6                db 0xc6
00000EDF  C887C445          enter word 0xc487,byte 0x45
00000EE3  84C3              test bl,al
00000EE5  C685C465C3        mov byte [di+0x65c4],0xc3
00000EEA  65C884C40C        gs enter word 0xc484,byte 0xc
00000EEF  06                push es
00000EF0  C886C545          enter word 0xc586,byte 0x45
00000EF4  C7C6C888          mov si,0x88c8
00000EF8  C4                db 0xc4
00000EF9  C6C784            mov bh,0x84
00000EFC  C4                db 0xc4
00000EFD  C785C4080685      mov word [di+0x8c4],0x8506
00000F03  C40A              les cx,word [bp+si]
00000F05  06                push es
00000F06  C7                db 0xc7
00000F07  CA95C4            retf word 0xc495
00000F0A  45                inc bp
00000F0B  84C4              test ah,al
00000F0D  C885C408          enter word 0xc485,byte 0x8
00000F11  06                push es
00000F12  C884C408          enter word 0xc484,byte 0x8
00000F16  06                push es
00000F17  C7C6C7C1          mov si,0xc1c7
00000F1B  C24041            ret word 0x4140
00000F1E  40                inc ax
00000F1F  41                inc cx
00000F20  40                inc ax
00000F21  51                push cx
00000F22  50                push ax
00000F23  41                inc cx
00000F24  C181C445C8        rol word [bx+di+0x45c4],byte 0xc8
00000F29  83C4C8            add sp,0xffffffffffffffc8
00000F2C  85C4              test sp,ax
00000F2E  0806C884          or [0x84c8],al
00000F32  C509              lds cx,word [bx+di]
00000F34  06                push es
00000F35  CA97C5            retf word 0xc597
00000F38  45                inc bp
00000F39  C9                leave
00000F3A  83C4C6            add sp,0xffffffffffffffc6
00000F3D  85C4              test sp,ax
00000F3F  0506C3            add ax,0xc306
00000F42  45                inc bp
00000F43  8565C4            test [di-0x3c],sp
00000F46  75C7              jnz 0xf0f
00000F48  50                push ax
00000F49  41                inc cx
00000F4A  40                inc ax
00000F4B  8642C7            xchg al,[bp+si-0x39]
00000F4E  C887C345          enter word 0xc387,byte 0x45
00000F52  C9                leave
00000F53  834385C4          add word [bp+di-0x7b],0xffffffffffffffc4
00000F57  08068507          or [0x785],al
00000F5B  06                push es
00000F5C  C3                ret
00000F5D  45                inc bp
00000F5E  C88CC455          enter word 0xc48c,byte 0x55
00000F62  87C4              xchg ax,sp
00000F64  C6                db 0xc6
00000F65  C884C4C6          enter word 0xc484,byte 0xc6
00000F69  85C4              test sp,ax
00000F6B  45                inc bp
00000F6C  C405              les ax,word [di]
00000F6E  06                push es
00000F6F  8508              test [bx+si],cx
00000F71  06                push es
00000F72  C885C3C6          enter word 0xc385,byte 0xc6
00000F76  87C4              xchg ax,sp
00000F78  45                inc bp
00000F79  C3                ret
00000F7A  C886C4C6          enter word 0xc486,byte 0xc6
00000F7E  85C4              test sp,ax
00000F80  C685C50706        mov byte [di+0x7c5],0x6
00000F85  81850506C7C8      add word [di+0x605],0xc8c7
00000F8B  87C4              xchg ax,sp
00000F8D  45                inc bp
00000F8E  C885C465          enter word 0xc485,byte 0x65
00000F92  C785C4C685C4      mov word [di-0x393c],0xc485
00000F98  C686C40506        mov byte [bp+0x5c4],0x6
00000F9D  C3                ret
00000F9E  C7850506C887      mov word [di+0x605],0x87c8
00000FA4  C3                ret
00000FA5  55                push bp
00000FA6  C7                db 0xc7
00000FA7  C884C465          enter word 0xc484,byte 0x65
00000FAB  C885C4C7          enter word 0xc485,byte 0xc7
00000FAF  85C4              test sp,ax
00000FB1  C686C50606        mov byte [bp+0x6c5],0x6
00000FB6  C885C375          enter word 0xc385,byte 0x75
00000FBA  C7                db 0xc7
00000FBB  C884C355          enter word 0xc384,byte 0x55
00000FBF  C7C686C4          mov si,0xc486
00000FC3  45                inc bp
00000FC4  C5                db 0xc5
00000FC5  C886C447          enter word 0xc486,byte 0x47
00000FC9  84C4              test ah,al
00000FCB  45                inc bp
00000FCC  86C5              xchg al,ch
00000FCE  C6C545            mov ch,0x45
00000FD1  C88285C4          enter word 0x8582,byte 0xc4
00000FD5  55                push bp
00000FD6  C7C6C885          mov si,0x85c8
00000FDA  C475C8            les si,word [di-0x38]
00000FDD  85C4              test sp,ax
00000FDF  55                push bp
00000FE0  C7C685C4          mov si,0xc485
00000FE4  C3                ret
00000FE5  C784C4458E51      mov word [si+0x45c4],0x518e
00000FEB  82                db 0x82
00000FEC  C47586            les si,word [di-0x7a]
00000FEF  C46587            les sp,word [di-0x79]
00000FF2  C475C7            les si,word [di-0x39]
00000FF5  84C4              test ah,al
00000FF7  C885C545          enter word 0xc585,byte 0x45
00000FFB  C24041            ret word 0x4140
00000FFE  40                inc ax
00000FFF  C2C141            ret word 0x41c1
00001002  40                inc ax
00001003  C285C4            ret word 0xc485
00001006  0506C8            add ax,0xc806
00001009  844365            test [bp+di+0x65],al
0000100C  C885C465          enter word 0xc485,byte 0x65
00001010  C885C4C8          enter word 0xc485,byte 0xc8
00001014  85558E            test [di-0x72],dx
00001017  85C4              test sp,ax
00001019  0506C7            add ax,0xc706
0000101C  84C4              test ah,al
0000101E  06                push es
0000101F  06                push es
00001020  84C4              test ah,al
00001022  55                push bp
00001023  C5                db 0xc5
00001024  C6                db 0xc6
00001025  C884C4C6          enter word 0xc484,byte 0xc6
00001029  C88455C3          enter word 0x5584,byte 0xc3
0000102D  C4                db 0xc4
0000102E  C6C345            mov bl,0x45
00001031  C88785C4          enter word 0x8587,byte 0xc4
00001035  75C8              jnz 0xfff
00001037  85C4              test sp,ax
00001039  55                push bp
0000103A  C4                db 0xc4
0000103B  C7C6C884          mov si,0x84c8
0000103F  43                inc bx
00001040  55                push bp
00001041  86C4              xchg al,ah
00001043  45                inc bp
00001044  C9                leave
00001045  83C309            add bx,0x9
00001048  06                push es
00001049  CA8585            retf word 0x8585
0000104C  C465C7            les sp,word [di-0x39]
0000104F  86C4              xchg al,ah
00001051  75C8              jnz 0x101b
00001053  85C4              test sp,ax
00001055  C6C445            mov ah,0x45
00001058  C7                db 0xc7
00001059  C884C445          enter word 0xc484,byte 0x45
0000105D  C9                leave
0000105E  83C408            add sp,0x8
00001061  06                push es
00001062  C3                ret
00001063  49                dec cx
00001064  84854355          test [di+0x5543],al
00001068  C886C475          enter word 0xc486,byte 0x75
0000106C  C885C475          enter word 0xc485,byte 0x75
00001070  85C4              test sp,ax
00001072  45                inc bp
00001073  C9                leave
00001074  83C40A            add sp,0xa
00001077  06                push es
00001078  8585C465          test [di+0x65c4],ax
0000107C  87C4              xchg ax,sp
0000107E  7586              jnz 0x1006
00001080  C465C5            les sp,word [di-0x3b]
00001083  C684C4C6C7        mov byte [si-0x393c],0xc7
00001088  844305            test [bp+di+0x5],al
0000108B  06                push es
0000108C  C3                ret
0000108D  65CA8385          gs retf word 0x8583
00001091  C475C8            les si,word [di-0x38]
00001094  85C4              test sp,ax
00001096  6587C4            gs xchg ax,sp
00001099  7585              jnz 0x1020
0000109B  C4                db 0xc4
0000109C  C6                db 0xc6
0000109D  C884C406          enter word 0xc484,byte 0x6
000010A1  06                push es
000010A2  C3                ret
000010A3  55                push bp
000010A4  8585C455          test [di+0x55c4],ax
000010A8  C3                ret
000010A9  45                inc bp
000010AA  85C4              test sp,ax
000010AC  75C8              jnz 0x1076
000010AE  85C4              test sp,ax
000010B0  6547              gs inc di
000010B2  84C4              test ah,al
000010B4  45                inc bp
000010B5  C883C409          enter word 0xc483,byte 0x9
000010B9  06                push es
000010BA  C7                db 0xc7
000010BB  C88485C4          enter word 0x8584,byte 0xc4
000010BF  C6C455            mov ah,0x55
000010C2  86C4              xchg al,ah
000010C4  75C7              jnz 0x108d
000010C6  85C4              test sp,ax
000010C8  55                push bp
000010C9  87C4              xchg ax,sp
000010CB  45                inc bp
000010CC  84C4              test ah,al
000010CE  09068685          or [0x8586],ax
000010D2  C475C8            les si,word [di-0x38]
000010D5  85C4              test sp,ax
000010D7  06                push es
000010D8  06                push es
000010D9  84C4              test ah,al
000010DB  65C885C4C6        gs enter word 0xc485,byte 0xc6
000010E0  C884C40A          enter word 0xc484,byte 0xa
000010E4  06                push es
000010E5  C88485C4          enter word 0x8584,byte 0xc4
000010E9  65C786C475C885    mov word [gs:bp+0x75c4],0x85c8
000010F0  C455C5            les dx,word [di-0x3b]
000010F3  45                inc bp
000010F4  84C4              test ah,al
000010F6  45                inc bp
000010F7  C883C455          enter word 0xc483,byte 0x55
000010FB  C455C4            les dx,word [di-0x3c]
000010FE  C7                db 0xc7
000010FF  55                push bp
00001100  49                dec cx
00001101  82                db 0x82
00001102  85C4              test sp,ax
00001104  0506C8            add ax,0xc806
00001107  84C4              test ah,al
00001109  55                push bp
0000110A  C787C475C784      mov word [bx+0x75c4],0x84c7
00001110  C545C9            lds ax,word [di-0x37]
00001113  83C555            add bp,0x55
00001116  C507              lds ax,word [bx]
00001118  06                push es
00001119  CA8385            retf word 0x8583
0000111C  C455C3            les dx,word [di-0x3d]
0000111F  C6                db 0xc6
00001120  C885C475          enter word 0xc485,byte 0x75
00001124  86C4              xchg al,ah
00001126  7585              jnz 0x10ad
00001128  55                push bp
00001129  C9                leave
0000112A  84C5              test ch,al
0000112C  0906C884          or [0x84c8],ax
00001130  85C4              test sp,ax
00001132  7586              jnz 0x10ba
00001134  C46587            les sp,word [di-0x79]
00001137  43                inc bx
00001138  45                inc bp
00001139  47                inc di
0000113A  85C4              test sp,ax
0000113C  45                inc bp
0000113D  86C5              xchg al,ch
0000113F  08064783          or [0x8347],al
00001143  85C5              test bp,ax
00001145  7586              jnz 0x10cd
00001147  C445C5            les ax,word [di-0x3b]
0000114A  45                inc bp
0000114B  86C4              xchg al,ah
0000114D  6586558B          xchg dl,[gs:di-0x75]
00001151  C57584            lds si,word [di-0x7c]
00001154  8565C7            test [di-0x39],sp
00001157  C886C465          enter word 0xc486,byte 0x65
0000115B  47                inc di
0000115C  85C4              test sp,ax
0000115E  55                push bp
0000115F  C5                db 0xc5
00001160  C8855540          enter word 0x5585,byte 0x40
00001164  C240C2            ret word 0xc240
00001167  C141C182          rol word [bx+di-0x3f],byte 0x82
0000116B  C445C3            les ax,word [di-0x3d]
0000116E  C6                db 0xc6
0000116F  C88385C3          enter word 0x8583,byte 0xc3
00001173  75C8              jnz 0x113d
00001175  85C5              test bp,ax
00001177  7586              jnz 0x10ff
00001179  C475C8            les si,word [di-0x38]
0000117C  8455C8            test [di-0x38],dl
0000117F  8BC4              mov ax,sp
00001181  55                push bp
00001182  C88485C4          enter word 0x8584,byte 0xc4
00001186  65C745840506      mov word [gs:di-0x7c],0x605
0000118C  C785C5C6C445      mov word [di-0x393b],0x45c4
00001192  C78565C88AC4      mov word [di-0x379b],0xc48a
00001198  55                push bp
00001199  C78485C40506      mov word [si-0x3b7b],0x605
0000119F  C884C375          enter word 0xc384,byte 0x75
000011A3  C885C305          enter word 0xc385,byte 0x5
000011A7  06                push es
000011A8  84C3              test bl,al
000011AA  C6C455            mov ah,0x55
000011AD  C7                db 0xc7
000011AE  C8C986C4          enter word 0x86c9,byte 0xc4
000011B2  65C88385C4        gs enter word 0x8583,byte 0xc4
000011B7  65C3              gs ret
000011B9  C885C465          enter word 0xc485,byte 0x65
000011BD  C886C465          enter word 0xc486,byte 0x65
000011C1  C7                db 0xc7
000011C2  C884C407          enter word 0xc484,byte 0x7
000011C6  06                push es
000011C7  C885C4C7          enter word 0xc485,byte 0xc7
000011CB  55                push bp
000011CC  CA8385            retf word 0x8583
000011CF  C47586            les si,word [di-0x7a]
000011D2  C475C8            les si,word [di-0x38]
000011D5  85C4              test sp,ax
000011D7  55                push bp
000011D8  C5                db 0xc5
000011D9  C885C406          enter word 0xc485,byte 0x6
000011DD  06                push es
000011DE  C886C465          enter word 0xc486,byte 0x65
000011E2  8485C475          test [di+0x75c4],al
000011E6  C8854365          enter word 0x4385,byte 0x65
000011EA  86C4              xchg al,ah
000011EC  7585              jnz 0x1173
000011EE  C405              les ax,word [di]
000011F0  06                push es
000011F1  C887C465          enter word 0xc487,byte 0x65
000011F5  C88385C4          enter word 0x8583,byte 0xc4
000011F9  6587C4            gs xchg ax,sp
000011FC  45                inc bp
000011FD  C5                db 0xc5
000011FE  C6C786            mov bh,0x86
00001201  C445C7            les ax,word [di-0x39]
00001204  C686C455C4        mov byte [bp+0x55c4],0xc4
00001209  C6                db 0xc6
0000120A  C8884345          enter word 0x4388,byte 0x45
0000120E  8585C455          test [di+0x55c4],ax
00001212  C3                ret
00001213  C6                db 0xc6
00001214  C885C445          enter word 0xc485,byte 0x45
00001218  C3                ret
00001219  45                inc bp
0000121A  C885C455          enter word 0xc485,byte 0x55
0000121E  47                inc di
0000121F  854365            test [bp+di+0x65],ax
00001222  C7                db 0xc7
00001223  88C4              mov ah,al
00001225  45                inc bp
00001226  C7                db 0xc7
00001227  C88485C4          enter word 0x8584,byte 0xc4
0000122B  65C7C685C4        gs mov si,0xc485
00001230  050685            add ax,0x8506
00001233  C465C8            les sp,word [di-0x38]
00001236  85C4              test sp,ax
00001238  75C8              jnz 0x1202
0000123A  88C4              mov ah,al
0000123C  55                push bp
0000123D  8584C307          test [si+0x7c3],ax
00001241  06                push es
00001242  84C4              test ah,al
00001244  06                push es
00001245  06                push es
00001246  84C4              test ah,al
00001248  55                push bp
00001249  C7C6C884          mov si,0x84c8
0000124D  C475C8            les si,word [di-0x38]
00001250  88C5              mov ch,al
00001252  65C88384C4        gs enter word 0x8483,byte 0xc4
00001257  65C7C686C4        gs mov si,0xc486
0000125C  75C8              jnz 0x1226
0000125E  85C4              test sp,ax
00001260  0506C9            add ax,0xc906
00001263  83C475            add sp,0x75
00001266  8975CA            mov [di-0x36],si
00001269  8383C345C3        add word [bp+di+0x45c3],0xffffffffffffffc3
0000126E  55                push bp
0000126F  C886C4C6          enter word 0xc486,byte 0xc6
00001273  C445C8            les ax,word [di-0x38]
00001276  86C5              xchg al,ch
00001278  7585              jnz 0x11ff
0000127A  C465C8            les sp,word [di-0x38]
0000127D  8975C8            mov [di-0x38],si
00001280  8381C30806        add word [bx+di+0x8c3],0x6
00001285  C885C455          enter word 0xc485,byte 0x55
00001289  C78755C545C8      mov word [bx-0x3aab],0xc845
0000128F  84C4              test ah,al
00001291  65C8896585        gs enter word 0x6589,byte 0x85
00001296  81C40906          add sp,0x609
0000129A  C884C475          enter word 0xc484,byte 0x75
0000129E  8665C3            xchg ah,[di-0x3d]
000012A1  C685C475C7        mov byte [di+0x75c4],0xc7
000012A6  88C3              mov bl,al
000012A8  6547              gs inc di
000012AA  82                db 0x82
000012AB  0906C3C6          or [0xc6c3],ax
000012AF  C784C40506C8      mov word [si+0x5c4],0xc806
000012B5  84C3              test bl,al
000012B7  55                push bp
000012B8  C886C475          enter word 0xc486,byte 0x75
000012BC  C888C406          enter word 0xc488,byte 0x6
000012C0  06                push es
000012C1  C3                ret
000012C2  55                push bp
000012C3  C40606C8          les ax,word [0xc806]
000012C7  85C4              test sp,ax
000012C9  45                inc bp
000012CA  C3                ret
000012CB  45                inc bp
000012CC  47                inc di
000012CD  84C4              test ah,al
000012CF  65C885C4C6        gs enter word 0xc485,byte 0xc6
000012D4  C555C7            lds dx,word [di-0x39]
000012D7  88C4              mov ah,al
000012D9  55                push bp
000012DA  C46509            les sp,word [di+0x9]
000012DD  06                push es
000012DE  87C4              xchg ax,sp
000012E0  6587C4            gs xchg ax,sp
000012E3  55                push bp
000012E4  C5                db 0xc5
000012E5  C685C4C6C3        mov byte [di-0x393c],0xc3
000012EA  6588C4            gs mov ah,al
000012ED  07                pop es
000012EE  06                push es
000012EF  0B0685C4          or ax,[0xc485]
000012F3  65C886C405        gs enter word 0xc486,byte 0x5
000012F8  06                push es
000012F9  C9                leave
000012FA  83C475            add sp,0x75
000012FD  C7                db 0xc7
000012FE  C887C407          enter word 0xc487,byte 0x7
00001302  06                push es
00001303  75C3              jnz 0x12c8
00001305  65                gs
00001306  C7                db 0xc7
00001307  C885C505          enter word 0xc585,byte 0x5
0000130B  06                push es
0000130C  C884C475          enter word 0xc484,byte 0x75
00001310  C884C405          enter word 0xc484,byte 0x5
00001314  06                push es
00001315  C8874306          enter word 0x4387,byte 0x6
00001319  06                push es
0000131A  06                push es
0000131B  06                push es
0000131C  C3                ret
0000131D  C6C3C6            mov bl,0xc6
00001320  8605              xchg al,[di]
00001322  06                push es
00001323  C8854355          enter word 0x4385,byte 0x55
00001327  C785C40506C8      mov word [di+0x5c4],0xc806
0000132D  87C4              xchg ax,sp
0000132F  07                pop es
00001330  06                push es
00001331  07                pop es
00001332  06                push es
00001333  C7C6C886          mov si,0x86c8
00001337  050686            add ax,0x8606
0000133A  C475C8            les si,word [di-0x38]
0000133D  84C4              test ah,al
0000133F  050688            add ax,0x8806
00001342  C445C4            les ax,word [di-0x3c]
00001345  75C3              jnz 0x130a
00001347  45                inc bp
00001348  C7C6C88B          mov si,0x8bc8
0000134C  C3                ret
0000134D  C455C7            les dx,word [di-0x39]
00001350  86C4              xchg al,ah
00001352  65C8854365        gs enter word 0x4385,byte 0x65
00001357  C888C406          enter word 0xc488,byte 0x6
0000135B  06                push es
0000135C  C445C8            les ax,word [di-0x38]
0000135F  8EC4              mov es,sp
00001361  7586              jnz 0x12e9
00001363  C4                db 0xc4
00001364  C6C555            mov ch,0x55
00001367  C884C475          enter word 0xc484,byte 0x75
0000136B  47                inc di
0000136C  87C4              xchg ax,sp
0000136E  07                pop es
0000136F  06                push es
00001370  C7                db 0xc7
00001371  C88FC445          enter word 0xc48f,byte 0x45
00001375  C3                ret
00001376  45                inc bp
00001377  C885C475          enter word 0xc485,byte 0x75
0000137B  C7                db 0xc7
0000137C  C9                leave
0000137D  83C405            add sp,0x5
00001380  06                push es
00001381  C787C5070691      mov word [bx+0x7c5],0x9106
00001387  C405              les ax,word [di]
00001389  06                push es
0000138A  C784C4754883      mov word [si+0x75c4],0x8348
00001390  C465C5            les sp,word [di-0x3b]
00001393  55                push bp
00001394  C885C305          enter word 0xc385,byte 0x5
00001398  06                push es
00001399  C7C6C1C2          mov si,0xc2c1
0000139D  C1414051          rol word [bx+di+0x40],byte 0x51
000013A1  50                push ax
000013A2  41                inc cx
000013A3  C181C40506        rol word [bx+di+0x5c4],byte 0x6
000013A8  C884C465          enter word 0xc484,byte 0x65
000013AC  C5                db 0xc5
000013AD  C884C406          enter word 0xc484,byte 0x6
000013B1  06                push es
000013B2  C886C475          enter word 0xc486,byte 0x75
000013B6  C7C6C7C9          mov si,0xc9c7
000013BA  90                nop
000013BB  C475C8            les si,word [di-0x38]
000013BE  85C4              test sp,ax
000013C0  7585              jnz 0x1347
000013C2  C507              lds ax,word [bx]
000013C4  06                push es
000013C5  86C4              xchg al,ah
000013C7  06                push es
000013C8  06                push es
000013C9  C7                db 0xc7
000013CA  C8C98542          enter word 0x85c9,byte 0x42
000013CE  C787C455C487      mov word [bx+0x55c4],0x87c4
000013D4  C455C7            les dx,word [di-0x39]
000013D7  C886C475          enter word 0xc486,byte 0x75
000013DB  C7                db 0xc7
000013DC  C886C475          enter word 0xc486,byte 0x75
000013E0  C745C886C4        mov word [di-0x38],0xc486
000013E5  65C884C475        gs enter word 0xc484,byte 0x75
000013EA  C885C5C4          enter word 0xc585,byte 0xc4
000013EE  C54587            lds ax,word [di-0x79]
000013F1  44                inc sp
000013F2  C6C5C6            mov ch,0xc6
000013F5  C8884306          enter word 0x4388,byte 0x6
000013F9  06                push es
000013FA  874345            xchg ax,[bp+di+0x45]
000013FD  C885C475          enter word 0xc485,byte 0x75
00001401  A0C406            mov al,[0x6c4]
00001404  06                push es
00001405  C74585C445        mov word [di-0x7b],0x45c4
0000140A  874365            xchg ax,[bp+di+0x65]
0000140D  C7C14150          mov cx,0x5041
00001411  41                inc cx
00001412  40                inc ax
00001413  C24051            ret word 0x5140
00001416  40                inc ax
00001417  41                inc cx
00001418  40                inc ax
00001419  C24041            ret word 0x4140
0000141C  C1C2C1            rol dx,byte 0xc1
0000141F  81C455C4          add sp,0xc455
00001423  65                gs
00001424  C7                db 0xc7
00001425  C885C455          enter word 0xc485,byte 0x55
00001429  C885C465          enter word 0xc485,byte 0x65
0000142D  C8A0C405          enter word 0xc4a0,byte 0x5
00001431  06                push es
00001432  C7C6C886          mov si,0x86c8
00001436  C465C8            les sp,word [di-0x38]
00001439  84C4              test ah,al
0000143B  55                push bp
0000143C  C787525594C4      mov word [bx+0x5552],0xc494
00001442  07                pop es
00001443  06                push es
00001444  C9                leave
00001445  86C4              xchg al,ah
00001447  55                push bp
00001448  47                inc di
00001449  83C305            add bx,0x5
0000144C  06                push es
0000144D  C885C475          enter word 0xc485,byte 0x75
00001451  94                xchg ax,sp
00001452  C40606C8          les ax,word [0xc806]
00001456  C9                leave
00001457  86C5              xchg al,ch
00001459  C6C465            mov ah,0x65
0000145C  42                inc dx
0000145D  65C455C8          les dx,word [gs:di-0x38]
00001461  84C4              test ah,al
00001463  7594              jnz 0x13f9
00001465  C40606C7          les ax,word [0xc706]
00001469  45                inc bp
0000146A  850F              test [bx],cx
0000146C  06                push es
0000146D  C8854355          enter word 0x4385,byte 0x55
00001471  C4                db 0xc4
00001472  C6820F06C3        mov byte [bp+si+0x60f],0xc3
00001477  0806C786          or [0x86c7],al
0000147B  C3                ret
0000147C  0D06C8            or ax,0xc806
0000147F  86C4              xchg al,ah
00001481  050682            add ax,0x8206
00001484  17                pop ss
00001485  06                push es
00001486  C4                db 0xc4
00001487  C6                db 0xc6
00001488  C9                leave
00001489  864306            xchg al,[bp+di+0x6]
0000148C  06                push es
0000148D  C405              les ax,word [di]
0000148F  06                push es
00001490  C885C413          enter word 0xc485,byte 0x13
00001494  06                push es
00001495  C3                ret
00001496  07                pop es
00001497  06                push es
00001498  C565C9            lds sp,word [di-0x37]
0000149B  86C4              xchg al,ah
0000149D  090644C6          or [0xc644],ax
000014A1  C7                db 0xc7
000014A2  C886C406          enter word 0xc486,byte 0x6
000014A6  06                push es
000014A7  C455C5            les dx,word [di-0x3b]
000014AA  1306C7C8          adc ax,[0xc8c7]
000014AE  C9                leave
000014AF  86C4              xchg al,ah
000014B1  0506C7            add ax,0xc706
000014B4  8EC5              mov es,bp
000014B6  C6C40A            mov ah,0xa
000014B9  06                push es
000014BA  C50F              lds cx,word [bx]
000014BC  06                push es
000014BD  C3                ret
000014BE  55                push bp
000014BF  C686C455C4        mov byte [bp+0x55c4],0xc4
000014C4  45                inc bp
000014C5  C74150C240        mov word [bx+di+0x50],0x40c2
000014CA  41                inc cx
000014CB  C1C2C1            rol dx,byte 0xc1
000014CE  81C31706          add bx,0x617
000014D2  C407              les ax,word [bx]
000014D4  06                push es
000014D5  C787C47590C4      mov word [bx+0x75c4],0xc490
000014DB  1F                pop ds
000014DC  06                push es
000014DD  C7C68743          mov si,0x4387
000014E1  55                push bp
000014E2  C7                db 0xc7
000014E3  8A4245            mov al,[bp+si+0x45]
000014E6  42                inc dx
000014E7  1206C408          adc al,[0x8c4]
000014EB  06                push es
000014EC  C7C6C7C6          mov si,0xc6c7
000014F0  C88187C4          enter word 0x8781,byte 0xc4
000014F4  C5558B            lds dx,word [di-0x75]
000014F7  C42606C8          les sp,word [0xc806]
000014FB  875445            xchg dx,[si+0x45]
000014FE  8BC4              mov ax,sp
00001500  0A06C555          or al,[0x55c5]
00001504  C509              lds cx,word [bx+di]
00001506  06                push es
00001507  C7C6C545          mov si,0x45c5
0000150B  C3                ret
0000150C  C7C5C6C7          mov bp,0xc7c6
00001510  C6                db 0xc6
00001511  C88297C4          enter word 0x9782,byte 0xc4
00001515  0A06C309          or al,[0x9c3]
00001519  06                push es
0000151A  C89197C4          enter word 0x9791,byte 0xc4
0000151E  1306C7C8          adc ax,[0xc8c7]
00001522  92                xchg ax,dx
00001523  97                xchg ax,di
00001524  43                inc bx
00001525  1306CA92          adc ax,[0x92ca]
00001529  97                xchg ax,di
0000152A  C414              les dx,word [si]
0000152C  06                push es
0000152D  C8928742          enter word 0x8792,byte 0x42
00001531  C7                db 0xc7
00001532  CA8CC4            retf word 0xc48c
00001535  65                gs
00001536  C5                db 0xc5
00001537  C405              les ax,word [di]
00001539  06                push es
0000153A  C7C555C4          mov bp,0xc455
0000153E  45                inc bp
0000153F  C884C345          enter word 0xc384,byte 0x45
00001543  C7C68A87          mov si,0x878a
00001547  C445C7            les ax,word [di-0x39]
0000154A  CA8BC5            retf word 0xc58b
0000154D  0906C7C4          or [0xc4c7],ax
00001551  55                push bp
00001552  C46585            les sp,word [di-0x7b]
00001555  C475C8            les si,word [di-0x38]
00001558  8830              mov [bx+si],dh
0000155A  0018              add [bx+si],bl
0000155C  DD00              fld qword [bx+si]
0000155E  2CFF              sub al,0xff
00001560  FF                db 0xff
00001561  FF                db 0xff
00001562  FF07              inc word [bx]
00001564  40                inc ax
00001565  AB                stosw
00001566  0100              add [bx+si],ax
00001568  0F002A            verw [bp+si]
0000156B  40                inc ax
0000156C  B520              mov ch,0x20
0000156E  0035              add [di],dh
00001570  002B              add [bp+di],ch
00001572  40                inc ax
00001573  BB2400            mov bx,0x24
00001576  3100              xor [bx+si],ax
00001578  7C80              jl 0x14fa
0000157A  8076007F          xor byte [bp+0x0],0x7f
0000157E  00FF              add bh,bh
00001580  FF1A              call word far [bp+si]
00001582  000F              add [bx],cl
00001584  0101              add [bx+di],ax
00001586  1B00              sbb ax,[bx+si]
00001588  0E                push cs
00001589  0003              add [bp+di],al
0000158B  00803D00          add [bx+si+0x3d],al
0000158F  06                push es
00001590  C001CD            rol byte [bx+di],byte 0xcd
00001593  00FF              add bh,bh
00001595  00FF              add bh,bh
00001597  FF                db 0xff
00001598  FF5F00            call word far [bx+0x0]
0000159B  3283030F          xor al,[bp+di+0xf03]
0000159F  0032              add [bp+si],dh
000015A1  00FF              add bh,bh
000015A3  FF                db 0xff
000015A4  FF800020          inc word [bx+si+0x2000]
000015A8  0002              add [bp+si],al
000015AA  0400              add al,0x0
000015AC  FF00              inc word [bx+si]
000015AE  0300              add ax,[bx+si]
000015B0  40                inc ax
000015B1  8D00              lea ax,[bx+si]
000015B3  20C2              and dl,al
000015B5  012F              add [bx],bp
000015B7  000E00FF          add [0xff00],cl
000015BB  FF                db 0xff
000015BC  FF9F0032          call word far [bx+0x3200]
000015C0  C3                ret
000015C1  034F00            add cx,[bx+0x0]
000015C4  3200              xor al,[bx+si]
000015C6  FF                db 0xff
000015C7  FF                db 0xff
000015C8  FF                db 0xff
000015C9  FF                db 0xff
000015CA  FF00              inc word [bx+si]
000015CC  00FF              add bh,bh
000015CE  13C0              adc ax,ax
000015D0  FF                db 0xff
000015D1  FF                db 0xff
000015D2  FF                db 0xff
000015D3  FF02              inc word [bp+si]
000015D5  00805ED6          add [bx+si-0x29a2],al
000015D9  00FF              add bh,bh
000015DB  69D6FFFF          imul dx,si,0xffff
000015DF  FF                db 0xff
000015E0  FF02              inc word [bp+si]
000015E2  00407E            add [bx+si+0x7e],al
000015E5  D7                xlatb
000015E6  00FF              add bh,bh
000015E8  89D7              mov di,dx
000015EA  FF                db 0xff
000015EB  FF                db 0xff
000015EC  FF                db 0xff
000015ED  FF02              inc word [bp+si]
000015EF  0020              add [bx+si],ah
000015F1  8ED7              mov ss,di
000015F3  00FF              add bh,bh
000015F5  99                cwd
000015F6  D7                xlatb
000015F7  FF                db 0xff
000015F8  FF                db 0xff
000015F9  FF                db 0xff
000015FA  FF02              inc word [bp+si]
000015FC  0010              add [bx+si],dl
000015FE  87D9              xchg bx,cx
00001600  0000              add [bx+si],al
00001602  FF                db 0xff
00001603  FF03              inc word [bp+di]
00001605  008080D5          add [bx+si-0x2a80],al
00001609  8101FFFF          add word [bx+di],0xffff
0000160D  0300              add ax,[bx+si]
0000160F  40                inc ax
00001610  A4                movsb
00001611  D580              aad byte 0x80
00001613  02FF              add bh,bh
00001615  FF                db 0xff
00001616  FF                db 0xff
00001617  FF16AF00          call word near [0xaf]
0000161B  114361            adc [bp+di+0x61],ax
0000161E  7665              jna 0x1685
00001620  726E              jc 0x1690
00001622  206F66            and [bx+0x66],ch
00001625  204D61            and [di+0x61],cl
00001628  6C                insb
00001629  6963696109        imul sp,[bp+di+0x69],0x961
0000162E  0000              add [bx+si],al
00001630  0000              add [bx+si],al
00001632  0C00              or al,0x0
00001634  21FF              and di,di
00001636  0100              add [bx+si],ax
00001638  0000              add [bx+si],al
0000163A  0000              add [bx+si],al
0000163C  000C              add [si],cl
0000163E  0021              add [bx+di],ah
00001640  0100              add [bx+si],ax
00001642  16                push ss
00001643  003C              add [si],bh
00001645  FF02              inc word [bp+si]
00001647  0000              add [bx+si],al
00001649  0000              add [bx+si],al
0000164B  0000              add [bx+si],al
0000164D  16                push ss
0000164E  003C              add [si],bh
00001650  0200              add al,[bx+si]
00001652  1A00              sbb al,[bx+si]
00001654  05FF02            add ax,0x2ff
00001657  0000              add [bx+si],al
00001659  0000              add [bx+si],al
0000165B  0000              add [bx+si],al
0000165D  1A00              sbb al,[bx+si]
0000165F  050200            add ax,0x2
00001662  1A00              sbb al,[bx+si]
00001664  17                pop ss
00001665  FF7300            push word [bp+di+0x0]
00001668  0120              add [bx+si],sp
0000166A  0000              add [bx+si],al
0000166C  0002              add [bp+si],al
0000166E  00800000          add [bx+si+0x0],al
00001672  1E                push ds
00001673  0017              add [bx],dl
00001675  FF01              inc word [bx+di]
00001677  0000              add [bx+si],al
00001679  0000              add [bx+si],al
0000167B  0000              add [bx+si],al
0000167D  1E                push ds
0000167E  0017              add [bx],dl
00001680  0100              add [bx+si],ax
00001682  2A00              sub al,[bx+si]
00001684  20FF              and bh,bh
00001686  0300              add ax,[bx+si]
00001688  0000              add [bx+si],al
0000168A  0000              add [bx+si],al
0000168C  002A              add [bp+si],ch
0000168E  0020              add [bx+si],ah
00001690  0300              add ax,[bx+si]
00001692  2A00              sub al,[bx+si]
00001694  29FF              sub di,di
00001696  0200              add al,[bx+si]
00001698  0000              add [bx+si],al
0000169A  0000              add [bx+si],al
0000169C  002A              add [bp+si],ch
0000169E  0029              add [bx+di],ch
000016A0  0200              add al,[bx+si]
000016A2  3C00              cmp al,0x0
000016A4  20FF              and bh,bh
000016A6  0200              add al,[bx+si]
000016A8  0000              add [bx+si],al
000016AA  0000              add [bx+si],al
000016AC  003C              add [si],bh
000016AE  0020              add [bx+si],ah
000016B0  0200              add al,[bx+si]
000016B2  40                inc ax
000016B3  0029              add [bx+di],ch
000016B5  FF02              inc word [bp+si]
000016B7  0000              add [bx+si],al
000016B9  0000              add [bx+si],al
000016BB  0000              add [bx+si],al
000016BD  40                inc ax
000016BE  0029              add [bx+di],ch
000016C0  0200              add al,[bx+si]
000016C2  4A                dec dx
000016C3  0034              add [si],dh
000016C5  FF01              inc word [bx+di]
000016C7  0000              add [bx+si],al
000016C9  0000              add [bx+si],al
000016CB  0000              add [bx+si],al
000016CD  4A                dec dx
000016CE  0034              add [si],dh
000016D0  0100              add [bx+si],ax
000016D2  4B                dec bx
000016D3  0013              add [bp+di],dl
000016D5  FF02              inc word [bp+si]
000016D7  0000              add [bx+si],al
000016D9  0000              add [bx+si],al
000016DB  0000              add [bx+si],al
000016DD  4B                dec bx
000016DE  0013              add [bp+di],dl
000016E0  0200              add al,[bx+si]
000016E2  4C                dec sp
000016E3  002F              add [bx],ch
000016E5  FF00              inc word [bx+si]
000016E7  0000              add [bx+si],al
000016E9  0000              add [bx+si],al
000016EB  0000              add [bx+si],al
000016ED  4C                dec sp
000016EE  002F              add [bx],ch
000016F0  0000              add [bx+si],al
000016F2  51                push cx
000016F3  003C              add [si],bh
000016F5  FF01              inc word [bx+di]
000016F7  0000              add [bx+si],al
000016F9  0000              add [bx+si],al
000016FB  0000              add [bx+si],al
000016FD  51                push cx
000016FE  003C              add [si],bh
00001700  0100              add [bx+si],ax
00001702  52                push dx
00001703  0029              add [bx+di],ch
00001705  FF01              inc word [bx+di]
00001707  0000              add [bx+si],al
00001709  0000              add [bx+si],al
0000170B  0000              add [bx+si],al
0000170D  52                push dx
0000170E  0029              add [bx+di],ch
00001710  0100              add [bx+si],ax
00001712  53                push bx
00001713  0008              add [bx+si],cl
00001715  FF02              inc word [bp+si]
00001717  0000              add [bx+si],al
00001719  0000              add [bx+si],al
0000171B  0000              add [bx+si],al
0000171D  53                push bx
0000171E  0008              add [bx+si],cl
00001720  0200              add al,[bx+si]
00001722  53                push bx
00001723  002F              add [bx],ch
00001725  FF00              inc word [bx+si]
00001727  0000              add [bx+si],al
00001729  0000              add [bx+si],al
0000172B  0000              add [bx+si],al
0000172D  53                push bx
0000172E  002F              add [bx],ch
00001730  0000              add [bx+si],al
00001732  54                push sp
00001733  0020              add [bx+si],ah
00001735  FF01              inc word [bx+di]
00001737  0000              add [bx+si],al
00001739  0000              add [bx+si],al
0000173B  0000              add [bx+si],al
0000173D  54                push sp
0000173E  0020              add [bx+si],ah
00001740  0100              add [bx+si],ax
00001742  55                push bp
00001743  0034              add [si],dh
00001745  FF02              inc word [bp+si]
00001747  0000              add [bx+si],al
00001749  0000              add [bx+si],al
0000174B  0000              add [bx+si],al
0000174D  55                push bp
0000174E  0034              add [si],dh
00001750  0200              add al,[bx+si]
00001752  58                pop ax
00001753  002F              add [bx],ch
00001755  FF00              inc word [bx+si]
00001757  0000              add [bx+si],al
00001759  0000              add [bx+si],al
0000175B  0000              add [bx+si],al
0000175D  58                pop ax
0000175E  002F              add [bx],ch
00001760  0000              add [bx+si],al
00001762  59                pop cx
00001763  0013              add [bp+di],dl
00001765  FF02              inc word [bp+si]
00001767  0000              add [bx+si],al
00001769  0000              add [bx+si],al
0000176B  0000              add [bx+si],al
0000176D  59                pop cx
0000176E  0013              add [bp+di],dl
00001770  0200              add al,[bx+si]
00001772  5B                pop bx
00001773  003D              add [di],bh
00001775  FF02              inc word [bp+si]
00001777  0000              add [bx+si],al
00001779  0000              add [bx+si],al
0000177B  0000              add [bx+si],al
0000177D  5B                pop bx
0000177E  003D              add [di],bh
00001780  0200              add al,[bx+si]
00001782  6300              arpl [bx+si],ax
00001784  1F                pop ds
00001785  FF7300            push word [bp+di+0x0]
00001788  0020              add [bx+si],ah
0000178A  0018              add [bx+si],bl
0000178C  0002              add [bp+si],al
0000178E  004000            add [bx+si+0x0],al
00001791  006300            add [bp+di+0x0],ah
00001794  29FF              sub di,di
00001796  7600              jna 0x1798
00001798  0020              add [bx+si],ah
0000179A  0000              add [bx+si],al
0000179C  0002              add [bp+si],al
0000179E  0020              add [bx+si],ah
000017A0  0000              add [bx+si],al
000017A2  640008            add [fs:bx+si],cl
000017A5  FF02              inc word [bp+si]
000017A7  0000              add [bx+si],al
000017A9  0000              add [bx+si],al
000017AB  0000              add [bx+si],al
000017AD  640008            add [fs:bx+si],cl
000017B0  0200              add al,[bx+si]
000017B2  6E                outsb
000017B3  0034              add [si],dh
000017B5  FF03              inc word [bp+di]
000017B7  0000              add [bx+si],al
000017B9  0000              add [bx+si],al
000017BB  0000              add [bx+si],al
000017BD  6E                outsb
000017BE  0034              add [si],dh
000017C0  0300              add ax,[bx+si]
000017C2  7C00              jl 0x17c4
000017C4  15FF01            adc ax,0x1ff
000017C7  0000              add [bx+si],al
000017C9  0000              add [bx+si],al
000017CB  0000              add [bx+si],al
000017CD  7C00              jl 0x17cf
000017CF  150100            adc ax,0x1
000017D2  7E00              jng 0x17d4
000017D4  30FF              xor bh,bh
000017D6  0000              add [bx+si],al
000017D8  0000              add [bx+si],al
000017DA  0000              add [bx+si],al
000017DC  007E00            add [bp+0x0],bh
000017DF  3000              xor [bx+si],al
000017E1  0080002B          add [bx+si+0x2b00],al
000017E5  FF01              inc word [bx+di]
000017E7  0000              add [bx+si],al
000017E9  0000              add [bx+si],al
000017EB  0000              add [bx+si],al
000017ED  80002B            add byte [bx+si],0x2b
000017F0  0100              add [bx+si],ax
000017F2  830030            add word [bx+si],0x30
000017F5  FF00              inc word [bx+si]
000017F7  0000              add [bx+si],al
000017F9  0000              add [bx+si],al
000017FB  0000              add [bx+si],al
000017FD  830030            add word [bx+si],0x30
00001800  0000              add [bx+si],al
00001802  8500              test [bx+si],ax
00001804  34FF              xor al,0xff
00001806  0100              add [bx+si],ax
00001808  0000              add [bx+si],al
0000180A  0000              add [bx+si],al
0000180C  00850034          add [di+0x3400],al
00001810  0100              add [bx+si],ax
00001812  8C00              mov word [bx+si],es
00001814  0E                push cs
00001815  FF00              inc word [bx+si]
00001817  0000              add [bx+si],al
00001819  0000              add [bx+si],al
0000181B  0000              add [bx+si],al
0000181D  8C00              mov word [bx+si],es
0000181F  0E                push cs
00001820  0000              add [bx+si],al
00001822  91                xchg ax,cx
00001823  000EFF00          add [0xff],cl
00001827  0000              add [bx+si],al
00001829  0000              add [bx+si],al
0000182B  0000              add [bx+si],al
0000182D  91                xchg ax,cx
0000182E  000E0000          add [0x0],cl
00001832  94                xchg ax,sp
00001833  000F              add [bx],cl
00001835  FF00              inc word [bx+si]
00001837  0000              add [bx+si],al
00001839  0000              add [bx+si],al
0000183B  0000              add [bx+si],al
0000183D  94                xchg ax,sp
0000183E  000F              add [bx],cl
00001840  0000              add [bx+si],al
00001842  95                xchg ax,bp
00001843  0003              add [bp+di],al
00001845  FF01              inc word [bx+di]
00001847  0000              add [bx+si],al
00001849  0000              add [bx+si],al
0000184B  0000              add [bx+si],al
0000184D  95                xchg ax,bp
0000184E  0003              add [bp+di],al
00001850  0100              add [bx+si],ax
00001852  A800              test al,0x0
00001854  03FF              add di,di
00001856  0200              add al,[bx+si]
00001858  0000              add [bx+si],al
0000185A  0000              add [bx+si],al
0000185C  00A80003          add [bx+si+0x300],ch
00001860  0200              add al,[bx+si]
00001862  AC                lodsb
00001863  002D              add [di],ch
00001865  FF01              inc word [bx+di]
00001867  0000              add [bx+si],al
00001869  0000              add [bx+si],al
0000186B  0000              add [bx+si],al
0000186D  AC                lodsb
0000186E  002D              add [di],ch
00001870  0100              add [bx+si],ax
00001872  B8000F            mov ax,0xf00
00001875  FF02              inc word [bp+si]
00001877  0000              add [bx+si],al
00001879  0000              add [bx+si],al
0000187B  0000              add [bx+si],al
0000187D  B8000F            mov ax,0xf00
00001880  0200              add al,[bx+si]
00001882  BC001B            mov sp,0x1b00
00001885  FF02              inc word [bp+si]
00001887  0000              add [bx+si],al
00001889  0000              add [bx+si],al
0000188B  0000              add [bx+si],al
0000188D  BC001B            mov sp,0x1b00
00001890  0200              add al,[bx+si]
00001892  BD0026            mov bp,0x2600
00001895  FF02              inc word [bp+si]
00001897  0000              add [bx+si],al
00001899  0000              add [bx+si],al
0000189B  0000              add [bx+si],al
0000189D  BD0026            mov bp,0x2600
000018A0  0200              add al,[bx+si]
000018A2  C3                ret
000018A3  0003              add [bp+di],al
000018A5  FF03              inc word [bp+di]
000018A7  0000              add [bx+si],al
000018A9  0000              add [bx+si],al
000018AB  0000              add [bx+si],al
000018AD  C3                ret
000018AE  0003              add [bp+di],al
000018B0  0300              add ax,[bx+si]
000018B2  C3                ret
000018B3  003B              add [bp+di],bh
000018B5  FF00              inc word [bx+si]
000018B7  0000              add [bx+si],al
000018B9  0000              add [bx+si],al
000018BB  0000              add [bx+si],al
000018BD  C3                ret
000018BE  003B              add [bp+di],bh
000018C0  0000              add [bx+si],al
000018C2  C400              les ax,word [bx+si]
000018C4  0FFF02            ud0 ax,[bp+si]
000018C7  0000              add [bx+si],al
000018C9  0000              add [bx+si],al
000018CB  0000              add [bx+si],al
000018CD  C400              les ax,word [bx+si]
000018CF  0F0200            lar ax,[bx+si]
000018D2  C500              lds ax,word [bx+si]
000018D4  3CFF              cmp al,0xff
000018D6  0000              add [bx+si],al
000018D8  0000              add [bx+si],al
000018DA  0000              add [bx+si],al
000018DC  00C5              add ch,al
000018DE  003C              add [si],bh
000018E0  0000              add [bx+si],al
000018E2  C6001B            mov byte [bx+si],0x1b
000018E5  FF01              inc word [bx+di]
000018E7  0000              add [bx+si],al
000018E9  0000              add [bx+si],al
000018EB  0000              add [bx+si],al
000018ED  C6001B            mov byte [bx+si],0x1b
000018F0  0100              add [bx+si],ax
000018F2  C60026            mov byte [bx+si],0x26
000018F5  FF01              inc word [bx+di]
000018F7  0000              add [bx+si],al
000018F9  0000              add [bx+si],al
000018FB  0000              add [bx+si],al
000018FD  C60026            mov byte [bx+si],0x26
00001900  0100              add [bx+si],ax
00001902  C60035            mov byte [bx+si],0x35
00001905  FF01              inc word [bx+di]
00001907  0000              add [bx+si],al
00001909  0000              add [bx+si],al
0000190B  0000              add [bx+si],al
0000190D  C60035            mov byte [bx+si],0x35
00001910  0100              add [bx+si],ax
00001912  C7002EFF          mov word [bx+si],0xff2e
00001916  0000              add [bx+si],al
00001918  0000              add [bx+si],al
0000191A  0000              add [bx+si],al
0000191C  00C7              add bh,al
0000191E  002E0000          add [0x0],ch
00001922  C7003DFF          mov word [bx+si],0xff3d
00001926  0000              add [bx+si],al
00001928  0000              add [bx+si],al
0000192A  0000              add [bx+si],al
0000192C  00C7              add bh,al
0000192E  003D              add [di],bh
00001930  0000              add [bx+si],al
00001932  C9                leave
00001933  003C              add [si],bh
00001935  FF00              inc word [bx+si]
00001937  0000              add [bx+si],al
00001939  0000              add [bx+si],al
0000193B  0000              add [bx+si],al
0000193D  C9                leave
0000193E  003C              add [si],bh
00001940  0000              add [bx+si],al
00001942  D100              rol word [bx+si],0x0
00001944  2F                das
00001945  FF00              inc word [bx+si]
00001947  0000              add [bx+si],al
00001949  0000              add [bx+si],al
0000194B  0000              add [bx+si],al
0000194D  D100              rol word [bx+si],0x0
0000194F  2F                das
00001950  0000              add [bx+si],al
00001952  DC00              fadd qword [bx+si]
00001954  0FFF03            ud0 ax,[bp+di]
00001957  0000              add [bx+si],al
00001959  0000              add [bx+si],al
0000195B  0000              add [bx+si],al
0000195D  DC00              fadd qword [bx+si]
0000195F  0F0300            lsl ax,[bx+si]
00001962  DE00              fiadd word [bx+si]
00001964  35FF03            xor ax,0x3ff
00001967  0000              add [bx+si],al
00001969  0000              add [bx+si],al
0000196B  0000              add [bx+si],al
0000196D  DE00              fiadd word [bx+si]
0000196F  350300            xor ax,0x3
00001972  E000              loopne 0x1974
00001974  05FF01            add ax,0x1ff
00001977  0000              add [bx+si],al
00001979  0000              add [bx+si],al
0000197B  0000              add [bx+si],al
0000197D  E000              loopne 0x197f
0000197F  050100            add ax,0x1
00001982  E000              loopne 0x1984
00001984  24FF              and al,0xff
00001986  D000              rol byte [bx+si],0x0
00001988  0020              add [bx+si],ah
0000198A  0019              add [bx+di],bl
0000198C  0002              add [bp+si],al
0000198E  0010              add [bx+si],dl
00001990  0000              add [bx+si],al
00001992  FF                db 0xff
00001993  FF                db 0xff
