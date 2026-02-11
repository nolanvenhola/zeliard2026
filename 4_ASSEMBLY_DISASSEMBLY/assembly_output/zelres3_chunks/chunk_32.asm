00000000  711F              jno 0x21
00000002  0000              add [bx+si],al
00000004  0ADB              or bl,bl
00000006  F000C1            lock add cl,al
00000009  D9C6              fld st6
0000000B  D9C8              fxch st0
0000000D  D910              fst dword [bx+si]
0000000F  DA66DA            fisub dword [bp-0x26]
00000012  F4                hlt
00000013  DA0F              fimul dword [bx]
00000015  DB05              fild dword [di]
00000017  9D                popf
00000018  0011              add [bx+di],dl
0000001A  0A00              or al,[bx+si]
0000001C  00C1              add cl,al
0000001E  D966CC            fldenv [bp-0x34]
00000021  86C4              xchg al,ah
00000023  C509              lds cx,word [bx+di]
00000025  07                pop es
00000026  CB                retf
00000027  50                push ax
00000028  C2C1C2            ret word 0xc2c1
0000002B  40                inc ax
0000002C  C25081            ret word 0x8150
0000002F  C44685            les ax,word [bp-0x7b]
00000032  C456CC            les dx,word [bp-0x34]
00000035  8ADA              mov bl,dl
00000037  DE4666            fiadd word [bp+0x66]
0000003A  0118              add [bx+si],bx
0000003C  85C4              test sp,ax
0000003E  76C8              jna 0x8
00000040  768E              jna 0xffd0
00000042  C3                ret
00000043  46                inc si
00000044  85C3              test bx,ax
00000046  C7                db 0xc7
00000047  C9                leave
00000048  C7                db 0xc7
00000049  8BDB              mov bx,bx
0000004B  DF                db 0xdf
0000004C  C9                leave
0000004D  C7                db 0xc7
0000004E  56                push si
0000004F  CC                int3
00000050  87C3              xchg ax,bx
00000052  46                inc si
00000053  CAC7D8            retf word 0xd8c7
00000056  82                db 0x82
00000057  C45601            les dx,word [bp+0x1]
0000005A  1884C4C7          sbb [si-0x383c],al
0000005E  D885C3C8          fadd dword [di-0x373d]
00000062  0118              add [bx+si],bx
00000064  84C4              test ah,al
00000066  56                push si
00000067  C6                db 0xc6
00000068  8ADB              mov bl,bl
0000006A  DF4656            fild word [bp+0x56]
0000006D  C8021884          enter word 0x1802,byte 0x84
00000071  C3                ret
00000072  56                push si
00000073  0118              add [bx+si],bx
00000075  82                db 0x82
00000076  C3                ret
00000077  46                inc si
00000078  C8021883          enter word 0x1802,byte 0x83
0000007C  C4                db 0xc4
0000007D  C786C3C7D885      mov word [bp-0x383d],0x85d8
00000083  C3                ret
00000084  66D889DBDF        o32 fmul dword [bx+di-0x2025]
00000089  46                inc si
0000008A  66D886C3C7        o32 fadd dword [bp-0x383d]
0000008F  C8011883          enter word 0x1801,byte 0x83
00000093  C3                ret
00000094  012C              add [si],bp
00000096  C7                db 0xc7
00000097  D885C3C7          fadd dword [di-0x383d]
0000009B  0118              add [bx+si],bx
0000009D  84C4              test ah,al
0000009F  87C3              xchg ax,bx
000000A1  56                push si
000000A2  C8021887          enter word 0x1802,byte 0x87
000000A6  DBDF              fcmovnu st7
000000A8  46                inc si
000000A9  56                push si
000000AA  CC                int3
000000AB  87C4              xchg ax,sp
000000AD  C7                db 0xc7
000000AE  CC                int3
000000AF  85C3              test bx,ax
000000B1  EC                in al,dx
000000B2  C7                db 0xc7
000000B3  CC                int3
000000B4  86C3              xchg al,bl
000000B6  C5                db 0xc5
000000B7  C7C68CC3          mov si,0xc38c
000000BB  66D889DBDF        o32 fmul dword [bx+di-0x2025]
000000C0  46                inc si
000000C1  56                push si
000000C2  CC                int3
000000C3  8FC3              pop bx
000000C5  56                push si
000000C6  D885C346          fadd dword [di+0x46c3]
000000CA  C801188A          enter word 0x1801,byte 0x8a
000000CE  C3                ret
000000CF  668ADB            o32 mov bl,bl
000000D2  DF4646            fild word [bp+0x46]
000000D5  C801188E          enter word 0x1801,byte 0x8e
000000D9  C3                ret
000000DA  46                inc si
000000DB  C8011884          enter word 0x1801,byte 0x84
000000DF  C44601            les ax,word [bp+0x1]
000000E2  188BC356          sbb [bp+di+0x56c3],cl
000000E6  CB                retf
000000E7  8ADB              mov bl,bl
000000E9  DFC7              ffreep st7
000000EB  C9                leave
000000EC  56                push si
000000ED  D901              fld dword [bx+di]
000000EF  188DC3C5          sbb [di-0x3a3d],cl
000000F3  C7                db 0xc7
000000F4  CC                int3
000000F5  86C3              xchg al,bl
000000F7  C7                db 0xc7
000000F8  CA0118            retf word 0x1801
000000FB  8BC3              mov ax,bx
000000FD  C546C9            lds ax,word [bp-0x37]
00000100  0118              add [bx+si],bx
00000102  88DB              mov bl,bl
00000104  DF4646            fild word [bp+0x46]
00000107  CC                int3
00000108  90                nop
00000109  C4                db 0xc4
0000010A  C7                db 0xc7
0000010B  CB                retf
0000010C  87C4              xchg ax,sp
0000010E  46                inc si
0000010F  CC                int3
00000110  8CC3              mov bx,es
00000112  66D889DBDF        o32 fmul dword [bx+di-0x2025]
00000117  46                inc si
00000118  C7                db 0xc7
00000119  C9                leave
0000011A  0318              add bx,[bx+si]
0000011C  8D                db 0x8d
0000011D  C44687            les ax,word [bp-0x79]
00000120  C4                db 0xc4
00000121  EC                in al,dx
00000122  C6                db 0xc6
00000123  8D                db 0x8d
00000124  C3                ret
00000125  56                push si
00000126  CC                int3
00000127  8ADD              mov bl,ch
00000129  E046              loopne 0x171
0000012B  46                inc si
0000012C  CC                int3
0000012D  90                nop
0000012E  C3                ret
0000012F  46                inc si
00000130  C686C34601        mov byte [bp+0x46c3],0x1
00000135  188BC356          sbb [bp+di+0x56c3],cl
00000139  8CDB              mov bx,ds
0000013B  DFC7              ffreep st7
0000013D  46                inc si
0000013E  CC                int3
0000013F  90                nop
00000140  C3                ret
00000141  46                inc si
00000142  CA0118            retf word 0x1801
00000145  84C3              test bl,al
00000147  C7                db 0xc7
00000148  C802188A          enter word 0x1802,byte 0x8a
0000014C  C3                ret
0000014D  C5                db 0xc5
0000014E  C7                db 0xc7
0000014F  C9                leave
00000150  86C3              xchg al,bl
00000152  85DD              test bp,bx
00000154  DFC7              ffreep st7
00000156  46                inc si
00000157  C801188E          enter word 0x1801,byte 0x8e
0000015B  C3                ret
0000015C  56                push si
0000015D  D885C3EC          fadd dword [di-0x133d]
00000161  CC                int3
00000162  8D                db 0x8d
00000163  C3                ret
00000164  56                push si
00000165  C685C4C785        mov byte [di-0x383c],0x85
0000016A  C4                db 0xc4
0000016B  C9                leave
0000016C  46                inc si
0000016D  0118              add [bx+si],bx
0000016F  85C4              test sp,ax
00000171  C7C687C3          mov si,0xc387
00000175  C5                db 0xc5
00000176  C7                db 0xc7
00000177  CC                int3
00000178  86C3              xchg al,bl
0000017A  C7                db 0xc7
0000017B  CC                int3
0000017C  8D                db 0x8d
0000017D  C456C6            les dx,word [bp-0x3a]
00000180  85C3              test bx,ax
00000182  46                inc si
00000183  84C3              test bl,al
00000185  C746CC86C4        mov word [bp-0x34],0xc486
0000018A  C546D8            lds ax,word [bp-0x28]
0000018D  85C3              test bx,ax
0000018F  56                push si
00000190  86C4              xchg al,ah
00000192  C7                db 0xc7
00000193  CC                int3
00000194  8D                db 0x8d
00000195  C456C8            les dx,word [bp-0x38]
00000198  0118              add [bx+si],bx
0000019A  83C4C7            add sp,0xffffffffffffffc7
0000019D  C8D883C4          enter word 0x83d8,byte 0xc4
000001A1  C746CC86C4        mov word [bp-0x34],0xc486
000001A6  46                inc si
000001A7  C8011884          enter word 0x1801,byte 0x84
000001AB  C446CC            les ax,word [bp-0x34]
000001AE  86C3              xchg al,bl
000001B0  CAC701            retf word 0x1c7
000001B3  1883C487          sbb [bp+di-0x783c],al
000001B7  C3                ret
000001B8  66D885C3CC        o32 fadd dword [di-0x333d]
000001BD  84C3              test bl,al
000001BF  C7                db 0xc7
000001C0  56                push si
000001C1  0218              add bl,[bx+si]
000001C3  83C346            add bx,0x46
000001C6  CC                int3
000001C7  86C3              xchg al,bl
000001C9  EC                in al,dx
000001CA  C7C686C3          mov si,0xc386
000001CE  C7011884          mov word [bx+di],0x8418
000001D2  C4                db 0xc4
000001D3  C786C356CC86      mov word [bp+0x56c3],0x86cc
000001D9  C485C3C7          les ax,word [di-0x383d]
000001DD  C7                db 0xc7
000001DE  C8D8D9D8          enter word 0xd9d8,byte 0xd8
000001E2  84C3              test bl,al
000001E4  C9                leave
000001E5  46                inc si
000001E6  0218              add bl,[bx+si]
000001E8  83C346            add bx,0x46
000001EB  C8D885C4          enter word 0x85d8,byte 0xc4
000001EF  0118              add [bx+si],bx
000001F1  85C3              test bx,ax
000001F3  C8011884          enter word 0x1801,byte 0x84
000001F7  C3                ret
000001F8  56                push si
000001F9  8D                db 0x8d
000001FA  C3                ret
000001FB  C746CC86C4        mov word [bp-0x34],0xc486
00000200  C7011886          mov word [bx+di],0x8618
00000204  C3                ret
00000205  012C              add [si],bp
00000207  CC                int3
00000208  8EC3              mov es,bx
0000020A  C7                db 0xc7
0000020B  CC                int3
0000020C  85C3              test bx,ax
0000020E  56                push si
0000020F  8D                db 0x8d
00000210  C3                ret
00000211  C7C7CC91          mov di,0x91cc
00000215  C3                ret
00000216  012C              add [si],bp
00000218  C702188B          mov word [bp+si],0x8b18
0000021C  C3                ret
0000021D  C9                leave
0000021E  86C3              xchg al,bl
00000220  660118            add [bx+si],ebx
00000223  8AC3              mov al,bl
00000225  C7                db 0xc7
00000226  56                push si
00000227  50                push ax
00000228  C2C1C2            ret word 0xc2c1
0000022B  50                push ax
0000022C  C2C1C2            ret word 0xc2c1
0000022F  50                push ax
00000230  81C346CA          add bx,0xca46
00000234  D88DC4C7          fmul dword [di-0x383c]
00000238  C685C346CA        mov byte [di+0x46c3],0xca
0000023D  0118              add [bx+si],bx
0000023F  8BC4              mov ax,sp
00000241  C746CC90C4        mov word [bp-0x34],0xc490
00000246  56                push si
00000247  D88DC3C7          fmul dword [di-0x383d]
0000024B  C8011883          enter word 0x1801,byte 0x83
0000024F  C3                ret
00000250  46                inc si
00000251  CC                int3
00000252  8D                db 0x8d
00000253  C3                ret
00000254  C7C7C801          mov di,0x1c8
00000258  1885C4C7          sbb [di-0x383c],al
0000025C  0118              add [bx+si],bx
0000025E  86C3              xchg al,bl
00000260  46                inc si
00000261  CC                int3
00000262  8EC3              mov es,bx
00000264  C7011884          mov word [bx+di],0x8418
00000268  C3                ret
00000269  56                push si
0000026A  0218              add bl,[bx+si]
0000026C  8AC4              mov al,ah
0000026E  C746D886C3        mov word [bp-0x28],0xc386
00000273  C7                db 0xc7
00000274  C8011885          enter word 0x1801,byte 0x85
00000278  EBC7              jmp 0x241
0000027A  C9                leave
0000027B  8FC3              pop bx
0000027D  46                inc si
0000027E  85C3              test bx,ax
00000280  56                push si
00000281  C8D88BC3          enter word 0x8bd8,byte 0xc3
00000285  C7                db 0xc7
00000286  56                push si
00000287  86C3              xchg al,bl
00000289  56                push si
0000028A  0118              add [bx+si],bx
0000028C  84C4              test ah,al
0000028E  EC                in al,dx
0000028F  C7C68EC3          mov si,0xc38e
00000293  46                inc si
00000294  85C4              test sp,ax
00000296  660118            add [bx+si],ebx
00000299  8AC3              mov al,bl
0000029B  C746C9D885        mov word [bp-0x37],0x85d8
000002A0  C456C8            les dx,word [bp-0x38]
000002A3  D884EB01          fadd dword [si+0x1eb]
000002A7  2CC7              sub al,0xc7
000002A9  0118              add [bx+si],bx
000002AB  84C4              test ah,al
000002AD  C7                db 0xc7
000002AE  C846CA82          enter word 0xca46,byte 0x82
000002B2  EC                in al,dx
000002B3  C7011884          mov word [bx+di],0x8418
000002B7  C3                ret
000002B8  C7                db 0xc7
000002B9  CAC78D            retf word 0x8dc7
000002BC  C3                ret
000002BD  C746021884        mov word [bp+0x2],0x8418
000002C2  C44602            les ax,word [bp+0x2]
000002C5  1884EBEC          sbb [si-0x1315],al
000002C9  0118              add [bx+si],bx
000002CB  86C3              xchg al,bl
000002CD  66EC              o32 in al,dx
000002CF  82                db 0x82
000002D0  EC                in al,dx
000002D1  46                inc si
000002D2  0118              add [bx+si],bx
000002D4  83C4C7            add sp,0xffffffffffffffc7
000002D7  CC                int3
000002D8  8EC3              mov es,bx
000002DA  C546CC            lds ax,word [bp-0x34]
000002DD  86C3              xchg al,bl
000002DF  46                inc si
000002E0  CC                int3
000002E1  8801              mov [bx+di],al
000002E3  1886C356          sbb [bp+0x56c3],al
000002E7  012C              add [si],bp
000002E9  C7C5C7EC          mov bp,0xecc7
000002ED  C9                leave
000002EE  96                xchg ax,si
000002EF  C3                ret
000002F0  C746CC86C4        mov word [bp-0x34],0xc486
000002F5  C7                db 0xc7
000002F6  CAC701            retf word 0x1c7
000002F9  1886D902          sbb [bp+0x2d9],al
000002FD  1884C4C5          sbb [si-0x3a3c],al
00000301  46                inc si
00000302  EC                in al,dx
00000303  CAD876            retf word 0x76d8
00000306  95                xchg ax,bp
00000307  C3                ret
00000308  C7C7C6C7          mov di,0xc7c6
0000030C  0118              add [bx+si],bx
0000030E  90                nop
0000030F  D987C466          fld dword [bx+0x66c4]
00000313  0118              add [bx+si],bx
00000315  81C35602          add bx,0x256
00000319  1892C3C7          sbb [bp+si-0x383d],dl
0000031D  46                inc si
0000031E  C8021897          enter word 0x1802,byte 0x97
00000322  C3                ret
00000323  46                inc si
00000324  C8011883          enter word 0x1801,byte 0x83
00000328  C3                ret
00000329  46                inc si
0000032A  0118              add [bx+si],bx
0000032C  93                xchg ax,bx
0000032D  C4                db 0xc4
0000032E  C746011885        mov word [bp+0x1],0x8518
00000333  C4                db 0xc4
00000334  C7C68901          mov si,0x189
00000338  1886C356          sbb [bp+0x56c3],al
0000033C  85C3              test bx,ax
0000033E  56                push si
0000033F  94                xchg ax,sp
00000340  C4                db 0xc4
00000341  C7C7C9CC          mov di,0xccc9
00000345  86C3              xchg al,bl
00000347  C7                db 0xc7
00000348  CA0118            retf word 0x1801
0000034B  87D9              xchg bx,cx
0000034D  87C3              xchg ax,bx
0000034F  C7                db 0xc7
00000350  C9                leave
00000351  86C4              xchg al,ah
00000353  C5                db 0xc5
00000354  C7                db 0xc7
00000355  C9                leave
00000356  94                xchg ax,sp
00000357  C3                ret
00000358  C746CC86C3        mov word [bp-0x34],0xc386
0000035D  56                push si
0000035E  C6                db 0xc6
0000035F  D884EB01          fadd dword [si+0x1eb]
00000363  2C87              sub al,0x87
00000365  C3                ret
00000366  C7                db 0xc7
00000367  D886C456          fadd dword [bp+0x56c4]
0000036B  D893C3C7          fcom dword [bp+di-0x383d]
0000036F  C7                db 0xc7
00000370  CC                int3
00000371  C8D885C4          enter word 0x85d8,byte 0xc4
00000375  46                inc si
00000376  C8D885EB          enter word 0x85d8,byte 0xeb
0000037A  012C              add [si],bp
0000037C  C7021883          mov word [bp+si],0x8318
00000380  C3                ret
00000381  C787C346C801      mov word [bx+0x46c3],0x1c8
00000387  1892C3C7          sbb [bp+si-0x383d],dl
0000038B  46                inc si
0000038C  D901              fld dword [bx+di]
0000038E  1884C4C7          sbb [si-0x383c],al
00000392  C8011885          enter word 0x1801,byte 0x85
00000396  EB01              jmp 0x399
00000398  2CC8              sub al,0xc8
0000039A  C7                db 0xc7
0000039B  D884C4D8          fadd dword [si-0x273c]
0000039F  87C3              xchg ax,bx
000003A1  56                push si
000003A2  D893C3C7          fcom dword [bp+di-0x383d]
000003A6  46                inc si
000003A7  CC                int3
000003A8  86C4              xchg al,ah
000003AA  C7011886          mov word [bx+di],0x8618
000003AE  EBEC              jmp 0x39c
000003B0  46                inc si
000003B1  CC                int3
000003B2  8EC3              mov es,bx
000003B4  56                push si
000003B5  0118              add [bx+si],bx
000003B7  92                xchg ax,dx
000003B8  C4                db 0xc4
000003B9  C746C690C3        mov word [bp-0x3a],0xc390
000003BE  C55640            lds dx,word [bp+0x40]
000003C1  C2C1C2            ret word 0xc2c1
000003C4  40                inc ax
000003C5  87C3              xchg ax,bx
000003C7  EC                in al,dx
000003C8  C7                db 0xc7
000003C9  CAD893            retf word 0x93d8
000003CC  C3                ret
000003CD  C7                db 0xc7
000003CE  56                push si
000003CF  70C2              jo 0x393
000003D1  C1C2C1            rol dx,byte 0xc1
000003D4  C240C2            ret word 0xc240
000003D7  40                inc ax
000003D8  81C3668E          add bx,0x8e66
000003DC  C3                ret
000003DD  46                inc si
000003DE  CC                int3
000003DF  94                xchg ax,sp
000003E0  C3                ret
000003E1  C546C8            lds ax,word [bp-0x38]
000003E4  0218              add bl,[bx+si]
000003E6  8D                db 0x8d
000003E7  C46601            les sp,word [bp+0x1]
000003EA  188CC3C7          sbb [si-0x383d],cl
000003EE  C9                leave
000003EF  95                xchg ax,bp
000003F0  C3                ret
000003F1  C7                db 0xc7
000003F2  56                push si
000003F3  C9                leave
000003F4  C7                db 0xc7
000003F5  55                push bp
000003F6  0218              add bl,[bx+si]
000003F8  88C4              mov ah,al
000003FA  C7012CC8          mov word [bx+di],0xc82c
000003FE  D88DC346          fmul dword [di+0x46c3]
00000402  C6                db 0xc6
00000403  94                xchg ax,sp
00000404  C3                ret
00000405  C70507C6          mov word [di],0xc607
00000409  C8C7C6C8          enter word 0xc6c7,byte 0xc8
0000040D  0118              add [bx+si],bx
0000040F  86C3              xchg al,bl
00000411  022C              add ch,[si]
00000413  CC                int3
00000414  8EC3              mov es,bx
00000416  C5                db 0xc5
00000417  C7                db 0xc7
00000418  C8D884C4          enter word 0x84d8,byte 0xc4
0000041C  8EC4              mov es,sp
0000041E  C7                db 0xc7
0000041F  66CC              o32 int3
00000421  CA76C6            retf word 0xc676
00000424  87C3              xchg ax,bx
00000426  C7012CC7          mov word [bx+di],0xc72c
0000042A  86C4              xchg al,ah
0000042C  C686C34602        mov byte [bp+0x46c3],0x2
00000431  1883C3C7          sbb [bp+di-0x383d],al
00000435  0118              add [bx+si],bx
00000437  8BC4              mov ax,sp
00000439  C7                db 0xc7
0000043A  66C846CA66        enterd word 0xca46,byte 0x66
0000043F  0218              add bl,[bx+si]
00000441  84C3              test bl,al
00000443  56                push si
00000444  C9                leave
00000445  86C4              xchg al,ah
00000447  CC                int3
00000448  86C4              xchg al,ah
0000044A  C7                db 0xc7
0000044B  CC                int3
0000044C  86C3              xchg al,bl
0000044E  C6                db 0xc6
0000044F  8BC3              mov ax,bx
00000451  C646564B          mov byte [bp+0x56],0x4b
00000455  C3                ret
00000456  4B                dec bx
00000457  56                push si
00000458  C8C6D885          enter word 0xd8c6,byte 0x85
0000045C  C3                ret
0000045D  C55601            lds dx,word [bp+0x1]
00000460  188CC446          sbb [si+0x46c4],cl
00000464  86C3              xchg al,bl
00000466  C7                db 0xc7
00000467  CA0118            retf word 0x1801
0000046A  88C4              mov ah,al
0000046C  C7C5C7CA          mov bp,0xcac7
00000470  C7011884          mov word [bx+di],0x8418
00000474  C456C6            les dx,word [bp-0x3a]
00000477  86C3              xchg al,bl
00000479  66D88DC346        o32 fmul dword [di+0x46c3]
0000047E  0118              add [bx+si],bx
00000480  84C4              test ah,al
00000482  46                inc si
00000483  D889C356          fmul dword [bx+di+0x56c3]
00000487  CC                int3
00000488  87C3              xchg ax,bx
0000048A  660218            o32 add bl,[bx+si]
0000048D  83C356            add bx,0x56
00000490  C8D88DC3          enter word 0x8dd8,byte 0xc3
00000494  46                inc si
00000495  CC                int3
00000496  85C3              test bx,ax
00000498  C7C68AC3          mov si,0xc38a
0000049C  56                push si
0000049D  88C3              mov bl,al
0000049F  46                inc si
000004A0  C5                db 0xc5
000004A1  C7C685C3          mov si,0xc385
000004A5  56                push si
000004A6  CC                int3
000004A7  8EC3              mov es,bx
000004A9  EC                in al,dx
000004AA  C7                db 0xc7
000004AB  D885C356          fadd dword [di+0x56c3]
000004AF  0118              add [bx+si],bx
000004B1  85C4              test sp,ax
000004B3  C6                db 0xc6
000004B4  66C1C240          rol edx,byte 0x40
000004B8  84C3              test bl,al
000004BA  C566D8            lds sp,word [bp-0x28]
000004BD  84C3              test bl,al
000004BF  56                push si
000004C0  C9                leave
000004C1  8EC3              mov es,bx
000004C3  EC                in al,dx
000004C4  C8021883          enter word 0x1802,byte 0x83
000004C8  C446C8            les ax,word [bp-0x38]
000004CB  D886C356          fadd dword [bp+0x56c3]
000004CF  CAC7D8            retf word 0xd8c7
000004D2  87C4              xchg ax,sp
000004D4  56                push si
000004D5  C8C7D884          enter word 0xd8c7,byte 0x84
000004D9  C45602            les dx,word [bp+0x2]
000004DC  188CC456          sbb [si+0x56c4],cl
000004E0  D884C346          fadd dword [si+0x46c3]
000004E4  0118              add [bx+si],bx
000004E6  86C3              xchg al,bl
000004E8  66D888C3CC        o32 fmul dword [bx+si-0x333d]
000004ED  56                push si
000004EE  CC                int3
000004EF  85C3              test bx,ax
000004F1  56                push si
000004F2  C802188B          enter word 0x1802,byte 0x8b
000004F6  C3                ret
000004F7  C5                db 0xc5
000004F8  C7                db 0xc7
000004F9  CC                int3
000004FA  85C3              test bx,ax
000004FC  CACC88            retf word 0x88cc
000004FF  C3                ret
00000500  6681D889C45685    sbb eax,0x8556c489
00000507  C456CC            les dx,word [bp-0x34]
0000050A  8EC3              mov es,bx
0000050C  56                push si
0000050D  85C3              test bx,ax
0000050F  C7C686C3          mov si,0xc386
00000513  C6                db 0xc6
00000514  660118            add [bx+si],ebx
00000517  8AC3              mov al,bl
00000519  46                inc si
0000051A  CC                int3
0000051B  85C3              test bx,ax
0000051D  46                inc si
0000051E  CC                int3
0000051F  86C3              xchg al,bl
00000521  C787C346CC85      mov word [bx+0x46c3],0x85cc
00000527  C446CC            les ax,word [bp-0x34]
0000052A  85C4              test sp,ax
0000052C  56                push si
0000052D  C8C7D881          enter word 0xd8c7,byte 0x81
00000531  8AC3              mov al,bl
00000533  46                inc si
00000534  C685C3CAC7        mov byte [di-0x353d],0xc7
00000539  C886C3C5          enter word 0xc386,byte 0xc5
0000053D  C786C3C7C686      mov word [bp-0x383d],0x86c6
00000543  C4                db 0xc4
00000544  C7                db 0xc7
00000545  CC                int3
00000546  86C4              xchg al,ah
00000548  56                push si
00000549  CC                int3
0000054A  838AC456D8        or word [bp+si+0x56c4],0xffffffffffffffd8
0000054F  84C3              test bl,al
00000551  66D884C356        o32 fadd dword [si+0x56c3]
00000556  85C3              test bx,ax
00000558  C7                db 0xc7
00000559  CA0218            retf word 0x1802
0000055C  83C3C7            add bx,0xffffffffffffffc7
0000055F  C686C356C6        mov byte [bp+0x56c3],0xc6
00000564  838AC346C8        or word [bp+si+0x46c3],0xffffffffffffffc8
00000569  0118              add [bx+si],bx
0000056B  83C356            add bx,0x56
0000056E  0218              add bl,[bx+si]
00000570  83C356            add bx,0x56
00000573  D884C446          fadd dword [si+0x46c4]
00000577  0118              add [bx+si],bx
00000579  84C3              test bl,al
0000057B  46                inc si
0000057C  0218              add bl,[bx+si]
0000057E  83C3C5            add bx,0xffffffffffffffc5
00000581  56                push si
00000582  D8828AC3          fadd dword [bp+si-0x3c76]
00000586  C546D8            lds ax,word [bp-0x28]
00000589  84C3              test bl,al
0000058B  46                inc si
0000058C  CC                int3
0000058D  C8D884C3          enter word 0x84d8,byte 0xc3
00000591  C8C70118          enter word 0x1c7,byte 0x18
00000595  84C3              test bl,al
00000597  C7                db 0xc7
00000598  CC                int3
00000599  86C3              xchg al,bl
0000059B  46                inc si
0000059C  CA0118            retf word 0x1801
0000059F  83C356            add bx,0x56
000005A2  CA0218            retf word 0x1802
000005A5  8AC3              mov al,bl
000005A7  46                inc si
000005A8  0118              add [bx+si],bx
000005AA  84C4              test ah,al
000005AC  46                inc si
000005AD  CAC785            retf word 0x85c7
000005B0  C3                ret
000005B1  C7                db 0xc7
000005B2  D886C3C7          fadd dword [bp-0x383d]
000005B6  D886C3C7          fadd dword [bp-0x383d]
000005BA  C9                leave
000005BB  C7                db 0xc7
000005BC  D884C356          fadd dword [si+0x56c3]
000005C0  0218              add bl,[bx+si]
000005C2  818AC3C7CC86      or word [bp+si-0x383d],0x86cc
000005C8  C3                ret
000005C9  6697              xchg eax,edi
000005CB  C3                ret
000005CC  46                inc si
000005CD  CC                int3
000005CE  85C3              test bx,ax
000005D0  46                inc si
000005D1  C8D8838A          enter word 0x83d8,byte 0x8a
000005D5  C3                ret
000005D6  C787C36640C2      mov word [bx+0x66c3],0xc240
000005DC  C1C270            rol dx,byte 0x70
000005DF  C2C1C2            ret word 0xc2c1
000005E2  50                push ax
000005E3  C2C1C2            ret word 0xc2c1
000005E6  40                inc ax
000005E7  82                db 0x82
000005E8  C446C6            les ax,word [bp-0x3a]
000005EB  85C3              test bx,ax
000005ED  56                push si
000005EE  D8838AC3          fadd dword [bp+di-0x3c76]
000005F2  C7C686C3          mov si,0xc386
000005F6  56                push si
000005F7  CA0118            retf word 0x1801
000005FA  95                xchg ax,bp
000005FB  C3                ret
000005FC  56                push si
000005FD  0118              add [bx+si],bx
000005FF  83C346            add bx,0x46
00000602  CC                int3
00000603  848AC346          test [bp+si+0x46c3],cl
00000607  0218              add bl,[bx+si]
00000609  83C3C9            add bx,0xffffffffffffffc9
0000060C  66C8665546        enterd word 0x5566,byte 0x46
00000611  C85665C7          enter word 0x6556,byte 0xc7
00000615  C6                db 0xc6
00000616  66C8C7D884        enterd word 0xd8c7,byte 0x84
0000061B  C3                ret
0000061C  56                push si
0000061D  84C1              test cl,al
0000061F  41                inc cx
00000620  C186C34601        rol word [bp+0x46c3],byte 0x1
00000625  1884C30F          sbb [si+0xfc3],al
00000629  07                pop es
0000062A  C6                db 0xc6
0000062B  C856CA07          enter word 0xca56,byte 0x7
0000062F  07                pop es
00000630  D885C356          fadd dword [di+0x56c3]
00000634  C1C240            rol dx,byte 0x40
00000637  8AC3              mov al,bl
00000639  56                push si
0000063A  85C3              test bx,ax
0000063C  46                inc si
0000063D  C866C856          enter word 0xc866,byte 0x56
00000641  CAC8CC            retf word 0xccc8
00000644  0E                push cs
00000645  07                pop es
00000646  0118              add [bx+si],bx
00000648  85C3              test bx,ax
0000064A  56                push si
0000064B  8481C4C7          test [bx+di-0x383c],al
0000064F  C686C35685        mov byte [bp+0x56c3],0x85
00000654  C44601            les ax,word [bp+0x1]
00000657  1885C3C7          sbb [di-0x383d],al
0000065B  4B                dec bx
0000065C  46                inc si
0000065D  4B                dec bx
0000065E  46                inc si
0000065F  C566C8            lds sp,word [bp-0x38]
00000662  C7011888          mov word [bx+di],0x8818
00000666  C3                ret
00000667  46                inc si
00000668  CA0118            retf word 0x1801
0000066B  82                db 0x82
0000066C  81C4C7C8          add sp,0xc8c7
00000670  46                inc si
00000671  84C4              test ah,al
00000673  56                push si
00000674  98                cbw
00000675  C4                db 0xc4
00000676  C7                db 0xc7
00000677  EC                in al,dx
00000678  56                push si
00000679  0118              add [bx+si],bx
0000067B  8AC4              mov al,ah
0000067D  56                push si
0000067E  D88381C3          fadd dword [bp+di-0x3c7f]
00000682  66D883C4C7        o32 fadd dword [bp+di-0x383c]
00000687  C5                db 0xc5
00000688  C7                db 0xc7
00000689  60                pusha
0000068A  C250C2            ret word 0xc250
0000068D  60                pusha
0000068E  C2C1C2            ret word 0xc2c1
00000691  50                push ax
00000692  C25081            ret word 0x8150
00000695  C3                ret
00000696  C7                db 0xc7
00000697  EC                in al,dx
00000698  56                push si
00000699  8CC3              mov bx,es
0000069B  46                inc si
0000069C  CC                int3
0000069D  8481C346          test [bx+di+0x46c3],al
000006A1  CAD884            retf word 0x84d8
000006A4  C3                ret
000006A5  56                push si
000006A6  0118              add [bx+si],bx
000006A8  96                xchg ax,si
000006A9  C446C5            les ax,word [bp-0x3b]
000006AC  C801188B          enter word 0x1801,byte 0x8b
000006B0  C3                ret
000006B1  46                inc si
000006B2  D88481C4          fadd dword [si-0x3b7f]
000006B6  46                inc si
000006B7  CC                int3
000006B8  85C3              test bx,ax
000006BA  0807              or [bx],al
000006BC  0418              add al,0x18
000006BE  8D                db 0x8d
000006BF  C3                ret
000006C0  EC                in al,dx
000006C1  46                inc si
000006C2  0118              add [bx+si],bx
000006C4  84C4              test ah,al
000006C6  C7C685C4          mov si,0xc485
000006CA  56                push si
000006CB  D88381C3          fadd dword [bp+di-0x3c7f]
000006CF  C7                db 0xc7
000006D0  CA0118            retf word 0x1801
000006D3  84C3              test bl,al
000006D5  0B07              or ax,[bx]
000006D7  0218              add bl,[bx+si]
000006D9  8CC3              mov bx,es
000006DB  EC                in al,dx
000006DC  C7                db 0xc7
000006DD  CC                int3
000006DE  86C3              xchg al,bl
000006E0  C7021883          mov word [bp+si],0x8318
000006E4  C3                ret
000006E5  46                inc si
000006E6  C68481C346        mov byte [si-0x3c7f],0x46
000006EB  0218              add bl,[bx+si]
000006ED  83C309            add bx,0x9
000006F0  07                pop es
000006F1  CC                int3
000006F2  46                inc si
000006F3  CA0318            retf word 0x1803
000006F6  89C4              mov sp,ax
000006F8  EC                in al,dx
000006F9  46                inc si
000006FA  C685C3C7C8        mov byte [di-0x383d],0xc8
000006FF  D884C356          fadd dword [si+0x56c3]
00000703  8481C346          test [bx+di+0x46c3],al
00000707  D885C376          fadd dword [di+0x76c3]
0000070B  CC                int3
0000070C  C8C74BC8          enter word 0x4bc7,byte 0xc8
00000710  06                push es
00000711  07                pop es
00000712  0118              add [bx+si],bx
00000714  87C3              xchg ax,bx
00000716  C7                db 0xc7
00000717  EC                in al,dx
00000718  C7021883          mov word [bp+si],0x8318
0000071C  C3                ret
0000071D  46                inc si
0000071E  D884C346          fadd dword [si+0x46c3]
00000722  C9                leave
00000723  0118              add [bx+si],bx
00000725  82                db 0x82
00000726  81C4C7CC          add sp,0xccc7
0000072A  86C4              xchg al,ah
0000072C  C7                db 0xc7
0000072D  C9                leave
0000072E  46                inc si
0000072F  0218              add bl,[bx+si]
00000731  82                db 0x82
00000732  C407              les ax,word [bx]
00000734  07                pop es
00000735  C8021885          enter word 0x1802,byte 0x85
00000739  C3                ret
0000073A  C7                db 0xc7
0000073B  EC                in al,dx
0000073C  C8011884          enter word 0x1801,byte 0x84
00000740  C3                ret
00000741  C7C685C3          mov si,0xc385
00000745  56                push si
00000746  D88381C3          fadd dword [bp+di-0x3c7f]
0000074A  C7                db 0xc7
0000074B  96                xchg ax,si
0000074C  C476D8            les si,word [bp-0x28]
0000074F  86C3              xchg al,bl
00000751  C7                db 0xc7
00000752  EC                in al,dx
00000753  C7                db 0xc7
00000754  D885C446          fadd dword [di+0x46c4]
00000758  D884C356          fadd dword [si+0x56c3]
0000075C  8481C3C9          test [bx+di-0x363d],al
00000760  C7                db 0xc7
00000761  70C2              jo 0x725
00000763  C1C260            rol dx,byte 0x60
00000766  C240C2            ret word 0xc240
00000769  60                pusha
0000076A  82                db 0x82
0000076B  C3                ret
0000076C  56                push si
0000076D  C8D886C4          enter word 0x86d8,byte 0xc4
00000771  46                inc si
00000772  CC                int3
00000773  86C4              xchg al,ah
00000775  C7                db 0xc7
00000776  C8011883          enter word 0x1801,byte 0x83
0000077A  C3                ret
0000077B  46                inc si
0000077C  D88481C3          fadd dword [si-0x3c7f]
00000780  46                inc si
00000781  D895C356          fcom dword [di+0x56c3]
00000785  CC                int3
00000786  87C4              xchg ax,sp
00000788  46                inc si
00000789  C686C346D8        mov byte [bp+0x46c3],0xd8
0000078E  84C3              test bl,al
00000790  C7                db 0xc7
00000791  C9                leave
00000792  D88481C3          fadd dword [si-0x3c7f]
00000796  46                inc si
00000797  85C4              test sp,ax
00000799  C7                db 0xc7
0000079A  D88EC456          fmul dword [bp+0x56c4]
0000079E  C687C346C8        mov byte [bx+0x46c3],0xc8
000007A3  0118              add [bx+si],bx
000007A5  84C3              test bl,al
000007A7  C5                db 0xc5
000007A8  C7                db 0xc7
000007A9  D884C3C7          fadd dword [si-0x383d]
000007AD  CC                int3
000007AE  8581C3C7          test [bx+di-0x383d],ax
000007B2  C8011883          enter word 0x1801,byte 0x83
000007B6  C44601            les ax,word [bp+0x1]
000007B9  188CC446          sbb [si+0x46c4],cl
000007BD  CAC701            retf word 0x1c7
000007C0  1885C356          sbb [di+0x56c3],al
000007C4  0218              add bl,[bx+si]
000007C6  83C3C7            add bx,0xffffffffffffffc7
000007C9  CC                int3
000007CA  85C4              test sp,ax
000007CC  C7                db 0xc7
000007CD  CC                int3
000007CE  8581C446          test [bx+di+0x46c4],ax
000007D2  D884C346          fadd dword [si+0x46c3]
000007D6  8EC3              mov es,bx
000007D8  56                push si
000007D9  C6                db 0xc6
000007DA  D886C356          fadd dword [bp+0x56c3]
000007DE  D885C3C7          fadd dword [di-0x383d]
000007E2  86C3              xchg al,bl
000007E4  C7011884          mov word [bx+di],0x8418
000007E8  81C4C7CC          add sp,0xccc7
000007EC  85C3              test bx,ax
000007EE  46                inc si
000007EF  C6                db 0xc6
000007F0  8D                db 0x8d
000007F1  C3                ret
000007F2  C7C546D8          mov bp,0xd846
000007F6  86C3              xchg al,bl
000007F8  46                inc si
000007F9  CC                int3
000007FA  86C3              xchg al,bl
000007FC  C7C6D884          mov si,0x84d8
00000800  C3                ret
00000801  C7021883          mov word [bp+si],0x8318
00000805  81C3C786          add bx,0x86c7
00000809  C3                ret
0000080A  C7C5C68D          mov bp,0x8dc6
0000080E  C3                ret
0000080F  56                push si
00000810  CC                int3
00000811  87C4              xchg ax,sp
00000813  46                inc si
00000814  C9                leave
00000815  86C3              xchg al,bl
00000817  46                inc si
00000818  0118              add [bx+si],bx
0000081A  83C3C7            add bx,0xffffffffffffffc7
0000081D  D885C446          fadd dword [di+0x46c4]
00000821  CC                int3
00000822  85C4              test sp,ax
00000824  66D88BC346        o32 fmul dword [bp+di+0x46c3]
00000829  C6                db 0xc6
0000082A  88C3              mov bl,al
0000082C  46                inc si
0000082D  CC                int3
0000082E  86C3              xchg al,bl
00000830  46                inc si
00000831  C8011882          enter word 0x1801,byte 0x82
00000835  C4                db 0xc4
00000836  C78666D884C3      mov word [bp-0x279a],0xc384
0000083C  660118            add [bx+si],ebx
0000083F  8AC4              mov al,ah
00000841  46                inc si
00000842  C6                db 0xc6
00000843  88C3              mov bl,al
00000845  46                inc si
00000846  0218              add bl,[bx+si]
00000848  84C3              test bl,al
0000084A  56                push si
0000084B  C683C3CC85        mov byte [bp+di-0x333d],0x85
00000850  C4                db 0xc4
00000851  C546CA            lds ax,word [bp-0x36]
00000854  0218              add bl,[bx+si]
00000856  82                db 0x82
00000857  C456CC            les dx,word [bp-0x34]
0000085A  8CC4              mov sp,es
0000085C  C546C6            lds ax,word [bp-0x3a]
0000085F  87C3              xchg ax,bx
00000861  C7                db 0xc7
00000862  C8D886C4          enter word 0x86d8,byte 0xc4
00000866  76C8              jna 0x830
00000868  46                inc si
00000869  CC                int3
0000086A  85C3              test bx,ax
0000086C  46                inc si
0000086D  C8011884          enter word 0x1801,byte 0x84
00000871  C3                ret
00000872  C9                leave
00000873  56                push si
00000874  0118              add [bx+si],bx
00000876  8AC3              mov al,bl
00000878  56                push si
00000879  CA0118            retf word 0x1801
0000087C  85C3              test bx,ax
0000087E  46                inc si
0000087F  0118              add [bx+si],bx
00000881  85C4              test sp,ax
00000883  C507              lds ax,word [bx]
00000885  07                pop es
00000886  85C3              test bx,ax
00000888  56                push si
00000889  CC                int3
0000088A  85C3              test bx,ax
0000088C  C7                db 0xc7
0000088D  C9                leave
0000088E  46                inc si
0000088F  D88BC466          fmul dword [bp+di+0x66c4]
00000893  D886C356          fadd dword [bp+0x56c3]
00000897  86C3              xchg al,bl
00000899  06                push es
0000089A  07                pop es
0000089B  C8C70118          enter word 0x1c7,byte 0x18
0000089F  83C356            add bx,0x56
000008A2  CC                int3
000008A3  85C3              test bx,ax
000008A5  56                push si
000008A6  CC                int3
000008A7  8CC3              mov bx,es
000008A9  56                push si
000008AA  CC                int3
000008AB  87C4              xchg ax,sp
000008AD  46                inc si
000008AE  C9                leave
000008AF  86C3              xchg al,bl
000008B1  06                push es
000008B2  07                pop es
000008B3  0218              add bl,[bx+si]
000008B5  84C4              test ah,al
000008B7  46                inc si
000008B8  CC                int3
000008B9  86C3              xchg al,bl
000008BB  56                push si
000008BC  C801188A          enter word 0x1801,byte 0x8a
000008C0  C3                ret
000008C1  46                inc si
000008C2  CC                int3
000008C3  88C3              mov bl,al
000008C5  56                push si
000008C6  86C3              xchg al,bl
000008C8  06                push es
000008C9  07                pop es
000008CA  D886C346          fadd dword [bp+0x46c3]
000008CE  87C3              xchg ax,bx
000008D0  C7                db 0xc7
000008D1  C9                leave
000008D2  C7                db 0xc7
000008D3  CC                int3
000008D4  8CC3              mov bx,es
000008D6  46                inc si
000008D7  C9                leave
000008D8  88C3              mov bl,al
000008DA  56                push si
000008DB  0118              add [bx+si],bx
000008DD  84C3              test bl,al
000008DF  0507CC            add ax,0xcc07
000008E2  87C3              xchg ax,bx
000008E4  46                inc si
000008E5  CC                int3
000008E6  86C4              xchg al,ah
000008E8  56                push si
000008E9  CC                int3
000008EA  8CC3              mov bx,es
000008EC  C7C6C8C6          mov si,0xc6c8
000008F0  87C4              xchg ax,sp
000008F2  46                inc si
000008F3  C8D885C4          enter word 0x85d8,byte 0xc4
000008F7  050701            add ax,0x107
000008FA  1886C346          sbb [bp+0x46c3],al
000008FE  CA0118            retf word 0x1801
00000901  84C3              test bl,al
00000903  C9                leave
00000904  46                inc si
00000905  8D                db 0x8d
00000906  C3                ret
00000907  66D886C446        o32 fadd dword [bp+0x46c4]
0000090C  CC                int3
0000090D  D885C3C7          fadd dword [di-0x383d]
00000911  C566C8            lds sp,word [bp-0x38]
00000914  0118              add [bx+si],bx
00000916  85C3              test bx,ax
00000918  56                push si
00000919  0218              add bl,[bx+si]
0000091B  83C346            add bx,0x46
0000091E  0118              add [bx+si],bx
00000920  8CC3              mov bx,es
00000922  56                push si
00000923  C687C35686        mov byte [bx+0x56c3],0x86
00000928  C3                ret
00000929  0507CC            add ax,0xcc07
0000092C  87C4              xchg ax,sp
0000092E  46                inc si
0000092F  CC                int3
00000930  86C4              xchg al,ah
00000932  46                inc si
00000933  CC                int3
00000934  85C4              test sp,ax
00000936  46                inc si
00000937  C684C456CA        mov byte [si+0x56c4],0xca
0000093C  0218              add bl,[bx+si]
0000093E  84C3              test bl,al
00000940  C54686            lds ax,word [bp-0x7a]
00000943  C3                ret
00000944  6648              dec eax
00000946  88C4              mov ah,al
00000948  46                inc si
00000949  87C4              xchg ax,sp
0000094B  46                inc si
0000094C  C8011883          enter word 0x1801,byte 0x83
00000950  C3                ret
00000951  C7                db 0xc7
00000952  C9                leave
00000953  C7                db 0xc7
00000954  C8C6C7C9          enter word 0xc7c6,byte 0xc9
00000958  7601              jna 0x95b
0000095A  1885C346          sbb [di+0x46c3],al
0000095E  CC                int3
0000095F  86C3              xchg al,bl
00000961  46                inc si
00000962  48                dec ax
00000963  C7C688C3          mov si,0xc388
00000967  46                inc si
00000968  C686C356D8        mov byte [bp+0x56c3],0xd8
0000096D  84C3              test bl,al
0000096F  56                push si
00000970  C6                db 0xc6
00000971  C8C7CA66          enter word 0xcac7,byte 0x66
00000975  CC                int3
00000976  87C3              xchg ax,bx
00000978  56                push si
00000979  86C3              xchg al,bl
0000097B  050702            add ax,0x207
0000097E  1885C356          sbb [di+0x56c3],al
00000982  0218              add bl,[bx+si]
00000984  83C3C5            add bx,0xffffffffffffffc5
00000987  C7                db 0xc7
00000988  CC                int3
00000989  85C4              test sp,ax
0000098B  0A07              or al,[bx]
0000098D  C687C35686        mov byte [bx+0x56c3],0x86
00000992  C3                ret
00000993  76C8              jna 0x95d
00000995  0118              add [bx+si],bx
00000997  86C4              xchg al,ah
00000999  56                push si
0000099A  C8D884C3          enter word 0x84d8,byte 0xc3
0000099E  46                inc si
0000099F  86C4              xchg al,ah
000009A1  56                push si
000009A2  C856C566          enter word 0xc556,byte 0x66
000009A6  C686C346CA        mov byte [bp+0x46c3],0xca
000009AB  86C3              xchg al,bl
000009AD  C576D8            lds si,word [bp-0x28]
000009B0  87C3              xchg ax,bx
000009B2  C55685            lds dx,word [bp-0x7b]
000009B5  C446CC            les ax,word [bp-0x34]
000009B8  85C3              test bx,ax
000009BA  664B              dec ebx
000009BC  0507C8            add ax,0xc807
000009BF  0118              add [bx+si],bx
000009C1  84C4              test ah,al
000009C3  46                inc si
000009C4  0218              add bl,[bx+si]
000009C6  84C3              test bl,al
000009C8  76CC              jna 0x996
000009CA  88C3              mov bl,al
000009CC  C546CC            lds ax,word [bp-0x34]
000009CF  85C3              test bx,ax
000009D1  56                push si
000009D2  D884C3C5          fadd dword [si-0x3a3d]
000009D6  C7021884          mov word [bp+si],0x8418
000009DA  C456D8            les dx,word [bp-0x28]
000009DD  85C4              test sp,ax
000009DF  56                push si
000009E0  D885C366          fadd dword [di+0x66c3]
000009E4  C9                leave
000009E5  89C3              mov bx,ax
000009E7  56                push si
000009E8  86C3              xchg al,bl
000009EA  C9                leave
000009EB  C8021883          enter word 0x1802,byte 0x83
000009EF  C3                ret
000009F0  46                inc si
000009F1  C8D885C3          enter word 0x85d8,byte 0xc3
000009F5  C7                db 0xc7
000009F6  CAC7D8            retf word 0xd8c7
000009F9  85C3              test bx,ax
000009FB  46                inc si
000009FC  C8021883          enter word 0x1802,byte 0x83
00000A00  C476CC            les si,word [bp-0x34]
00000A03  88C4              mov ah,al
00000A05  56                push si
00000A06  0118              add [bx+si],bx
00000A08  84C3              test bl,al
00000A0A  46                inc si
00000A0B  0118              add [bx+si],bx
00000A0D  84C3              test bl,al
00000A0F  46                inc si
00000A10  CC                int3
00000A11  0118              add [bx+si],bx
00000A13  84C3              test bl,al
00000A15  C7                db 0xc7
00000A16  CC                int3
00000A17  87C3              xchg ax,bx
00000A19  56                push si
00000A1A  D885C446          fadd dword [di+0x46c4]
00000A1E  48                dec ax
00000A1F  C7C688C4          mov si,0xc488
00000A23  56                push si
00000A24  0218              add bl,[bx+si]
00000A26  83C346            add bx,0x46
00000A29  CC                int3
00000A2A  85C3              test bx,ax
00000A2C  C7                db 0xc7
00000A2D  CC                int3
00000A2E  87C4              xchg ax,sp
00000A30  46                inc si
00000A31  C686C35686        mov byte [bp+0x56c3],0x86
00000A36  C3                ret
00000A37  050701            add ax,0x107
00000A3A  1886C356          sbb [bp+0x56c3],al
00000A3E  0218              add bl,[bx+si]
00000A40  83C346            add bx,0x46
00000A43  86C3              xchg al,bl
00000A45  C7C687C4          mov si,0xc487
00000A49  46                inc si
00000A4A  CA0118            retf word 0x1801
00000A4D  83C466            add sp,0x66
00000A50  86C3              xchg al,bl
00000A52  66CAC7C8          retfd word 0xc8c7
00000A56  0218              add bl,[bx+si]
00000A58  84C3              test bl,al
00000A5A  46                inc si
00000A5B  CC                int3
00000A5C  86C4              xchg al,ah
00000A5E  46                inc si
00000A5F  C685C4C7C8        mov byte [di-0x383c],0xc8
00000A64  0118              add [bx+si],bx
00000A66  85C3              test bx,ax
00000A68  660118            add [bx+si],ebx
00000A6B  81C37686          add bx,0x8676
00000A6F  C3                ret
00000A70  0507CC            add ax,0xcc07
00000A73  87C3              xchg ax,bx
00000A75  56                push si
00000A76  86C4              xchg al,ah
00000A78  C7                db 0xc7
00000A79  C8011884          enter word 0x1801,byte 0x84
00000A7D  C4                db 0xc4
00000A7E  C7                db 0xc7
00000A7F  CC                int3
00000A80  89C4              mov sp,ax
00000A82  0807              or [bx],al
00000A84  CAC801            retf word 0x1c8
00000A87  1884C306          sbb [si+0x6c3],al
00000A8B  07                pop es
00000A8C  0118              add [bx+si],bx
00000A8E  85C3              test bx,ax
00000A90  46                inc si
00000A91  4B                dec bx
00000A92  85C3              test bx,ax
00000A94  56                push si
00000A95  D884C3C7          fadd dword [si-0x383d]
00000A99  C9                leave
00000A9A  89C3              mov bx,ax
00000A9C  76C5              jna 0xa63
00000A9E  76D8              jna 0xa78
00000AA0  85C3              test bx,ax
00000AA2  C576CC            lds si,word [bp-0x34]
00000AA5  87C4              xchg ax,sp
00000AA7  6685C3            test ebx,eax
00000AAA  46                inc si
00000AAB  CC                int3
00000AAC  85C3              test bx,ax
00000AAE  46                inc si
00000AAF  C6                db 0xc6
00000AB0  8AC3              mov al,bl
00000AB2  07                pop es
00000AB3  07                pop es
00000AB4  CC                int3
00000AB5  86C3              xchg al,bl
00000AB7  06                push es
00000AB8  07                pop es
00000AB9  D886C366          fadd dword [bp+0x66c3]
00000ABD  85C3              test bx,ax
00000ABF  C7                db 0xc7
00000AC0  C9                leave
00000AC1  86C3              xchg al,bl
00000AC3  46                inc si
00000AC4  C8011888          enter word 0x1801,byte 0x88
00000AC8  C40607C6          les ax,word [0xc607]
00000ACC  87C4              xchg ax,sp
00000ACE  06                push es
00000ACF  07                pop es
00000AD0  D886C446          fadd dword [bp+0x46c4]
00000AD4  CAC7D8            retf word 0xd8c7
00000AD7  84C3              test bl,al
00000AD9  46                inc si
00000ADA  C685C3C546        mov byte [di-0x3a3d],0x46
00000ADF  D889C3C9          fmul dword [bx+di-0x363d]
00000AE3  76CA              jna 0xaaf
00000AE5  0118              add [bx+si],bx
00000AE7  86C3              xchg al,bl
00000AE9  0507C8            add ax,0xc807
00000AEC  0218              add bl,[bx+si]
00000AEE  84C3              test bl,al
00000AF0  56                push si
00000AF1  0218              add bl,[bx+si]
00000AF3  83C346            add bx,0x46
00000AF6  C8011883          enter word 0x1801,byte 0x83
00000AFA  C3                ret
00000AFB  C7                db 0xc7
00000AFC  CC                int3
00000AFD  8BC3              mov ax,bx
00000AFF  0507CC            add ax,0xcc07
00000B02  88C3              mov bl,al
00000B04  C7C546CC          mov bp,0xcc46
00000B08  C7                db 0xc7
00000B09  CC                int3
00000B0A  87C3              xchg ax,bx
00000B0C  56                push si
00000B0D  86C3              xchg al,bl
00000B0F  C9                leave
00000B10  46                inc si
00000B11  D884C446          fadd dword [si+0x46c4]
00000B15  D88AC306          fmul dword [bp+si+0x6c3]
00000B19  07                pop es
00000B1A  C687C3C7C9        mov byte [bx-0x383d],0xc9
00000B1F  46                inc si
00000B20  C8C788C3          enter word 0x88c7,byte 0xc3
00000B24  46                inc si
00000B25  4B                dec bx
00000B26  85C3              test bx,ax
00000B28  56                push si
00000B29  93                xchg ax,bx
00000B2A  C3                ret
00000B2B  46                inc si
00000B2C  C556C8            lds dx,word [bp-0x38]
00000B2F  0118              add [bx+si],bx
00000B31  86C3              xchg al,bl
00000B33  46                inc si
00000B34  C9                leave
00000B35  56                push si
00000B36  C687C46685        mov byte [bx+0x66c4],0x85
00000B3B  C45640            les dx,word [bp+0x40]
00000B3E  C240C2            ret word 0xc240
00000B41  40                inc ax
00000B42  C24088            ret word 0x8840
00000B45  C3                ret
00000B46  66C8C70118        enterd word 0x1c7,byte 0x18
00000B4B  87C3              xchg ax,bx
00000B4D  06                push es
00000B4E  07                pop es
00000B4F  0118              add [bx+si],bx
00000B51  85C4              test sp,ax
00000B53  6685C3            test ebx,eax
00000B56  46                inc si
00000B57  C9                leave
00000B58  0118              add [bx+si],bx
00000B5A  91                xchg ax,cx
00000B5B  C3                ret
00000B5C  46                inc si
00000B5D  0218              add bl,[bx+si]
00000B5F  8AC3              mov al,bl
00000B61  C7                db 0xc7
00000B62  48                dec ax
00000B63  56                push si
00000B64  CAD886            retf word 0x86d8
00000B67  C3                ret
00000B68  56                push si
00000B69  C8D884C3          enter word 0x84d8,byte 0xc3
00000B6D  76C6              jna 0xb35
00000B6F  C7459DC305        mov word [di-0x63],0x5c3
00000B74  07                pop es
00000B75  0118              add [bx+si],bx
00000B77  86C3              xchg al,bl
00000B79  6685C3            test ebx,eax
00000B7C  66CA56C8          retfd word 0xc856
00000B80  0218              add bl,[bx+si]
00000B82  9AC3660118        call word 0x1801:word 0x66c3
00000B87  88C3              mov bl,al
00000B89  660118            add [bx+si],ebx
00000B8C  83C356            add bx,0x56
00000B8F  4B                dec bx
00000B90  0118              add [bx+si],bx
00000B92  66                o32
00000B93  9BC3              wait ret
00000B95  EC                in al,dx
00000B96  46                inc si
00000B97  CA0218            retf word 0x1802
00000B9A  87C3              xchg ax,bx
00000B9C  66D884C3C7        o32 fadd dword [si-0x383d]
00000BA1  CA0218            retf word 0x1802
00000BA4  82                db 0x82
00000BA5  C3                ret
00000BA6  46                inc si
00000BA7  CA0118            retf word 0x1801
00000BAA  89C4              mov sp,ax
00000BAC  C7C60118          mov si,0x1801
00000BB0  83C4C7            add sp,0xffffffffffffffc7
00000BB3  45                inc bp
00000BB4  052C46            add ax,0x462c
00000BB7  CC                int3
00000BB8  8AC4              mov al,ah
00000BBA  6685C4            test esp,eax
00000BBD  46                inc si
00000BBE  D884C456          fadd dword [si+0x56c4]
00000BC2  D88AC446          fmul dword [bp+si+0x46c4]
00000BC6  C5764A            lds si,word [bp+0x4a]
00000BC9  EC                in al,dx
00000BCA  46                inc si
00000BCB  032C              add bp,[si]
00000BCD  46                inc si
00000BCE  0118              add [bx+si],bx
00000BD0  88E1              mov cl,ah
00000BD2  C7                db 0xc7
00000BD3  58                pop ax
00000BD4  CC                int3
00000BD5  85C3              test bx,ax
00000BD7  46                inc si
00000BD8  C685C3568A        mov byte [di+0x56c3],0x8a
00000BDD  C3                ret
00000BDE  0507C5            add ax,0xc507
00000BE1  66                o32
00000BE2  C5                db 0xc5
00000BE3  C7012C66          mov word [bx+di],0x662c
00000BE7  D888E146          fmul dword [bx+si+0x46e1]
00000BEB  46                inc si
00000BEC  C9                leave
00000BED  CC                int3
00000BEE  85C3              test bx,ax
00000BF0  46                inc si
00000BF1  C685C356C8        mov byte [di+0x56c3],0xc8
00000BF6  0118              add [bx+si],bx
00000BF8  87C3              xchg ax,bx
00000BFA  0807              or [bx],al
00000BFC  CC                int3
00000BFD  C85BC7C9          enter word 0xc75b,byte 0xc9
00000C01  EC                in al,dx
00000C02  46                inc si
00000C03  D887E144          fadd dword [bx+0x44e1]
00000C07  C7                db 0xc7
00000C08  6685C4            test esp,eax
00000C0B  46                inc si
00000C0C  CA0118            retf word 0x1801
00000C0F  83C476            add sp,0x76
00000C12  D887C4C7          fadd dword [bx-0x383c]
00000C16  C9                leave
00000C17  56                push si
00000C18  CC                int3
00000C19  C7                db 0xc7
00000C1A  C9                leave
00000C1B  C7011883          mov word [bx+di],0x8318
00000C1F  C3                ret
00000C20  58                pop ax
00000C21  C7                db 0xc7
00000C22  D886E1C5          fadd dword [bp-0x3a1f]
00000C26  56                push si
00000C27  C7                db 0xc7
00000C28  C8C70118          enter word 0x1c7,byte 0x18
00000C2C  84C4              test ah,al
00000C2E  46                inc si
00000C2F  0118              add [bx+si],bx
00000C31  84C3              test bl,al
00000C33  66CAC787          retfd word 0x87c7
00000C37  C466C8            les sp,word [bp-0x38]
00000C3A  0118              add [bx+si],bx
00000C3C  87C3              xchg ax,bx
00000C3E  56                push si
00000C3F  CC                int3
00000C40  86E1              xchg ah,cl
00000C42  764B              jna 0xc8f
00000C44  46                inc si
00000C45  D884C3C7          fadd dword [si-0x383d]
00000C49  CC                int3
00000C4A  86C3              xchg al,bl
00000C4C  C7C556C8          mov bp,0xc856
00000C50  46                inc si
00000C51  0118              add [bx+si],bx
00000C53  83C366            add bx,0x66
00000C56  0318              add bx,[bx+si]
00000C58  86C3              xchg al,bl
00000C5A  56                push si
00000C5B  C685E156C8        mov byte [di+0x56e1],0xc8
00000C60  C7                db 0xc7
00000C61  CC                int3
00000C62  84D8              test al,bl
00000C64  84C3              test bl,al
00000C66  46                inc si
00000C67  CC                int3
00000C68  85C4              test sp,ax
00000C6A  07                pop es
00000C6B  07                pop es
00000C6C  85C4              test sp,ax
00000C6E  46                inc si
00000C6F  CA0118            retf word 0x1801
00000C72  89C4              mov sp,ax
00000C74  660118            add [bx+si],ebx
00000C77  83C456            add sp,0x56
00000C7A  0118              add [bx+si],bx
00000C7C  8189C3C7C801      or word [bx+di-0x383d],0x1c8
00000C82  1884C305          sbb [si+0x5c3],al
00000C86  07                pop es
00000C87  C8011884          enter word 0x1801,byte 0x84
00000C8B  C3                ret
00000C8C  46                inc si
00000C8D  D88BC448          fmul dword [bp+di+0x48c4]
00000C91  C7                db 0xc7
00000C92  CAD884            retf word 0x84d8
00000C95  C4                db 0xc4
00000C96  C556D8            lds dx,word [bp-0x28]
00000C99  8182C346D883      add word [bp+si+0x46c3],0x83d8
00000C9F  C4                db 0xc4
00000CA0  C7                db 0xc7
00000CA1  CC                int3
00000CA2  86C3              xchg al,bl
00000CA4  C7C566C9          mov bp,0xc966
00000CA8  86C3              xchg al,bl
00000CAA  46                inc si
00000CAB  50                push ax
00000CAC  C240C2            ret word 0xc240
00000CAF  C1C240            rol dx,byte 0x40
00000CB2  81C36685          add bx,0x8566
00000CB6  C3                ret
00000CB7  46                inc si
00000CB8  C8011881          enter word 0x1801,byte 0x81
00000CBC  82                db 0x82
00000CBD  C3                ret
00000CBE  46                inc si
00000CBF  CAD8C7            retf word 0xc7d8
00000CC2  C6                db 0xc6
00000CC3  56                push si
00000CC4  C685C30607        mov byte [di+0x6c3],0x7
00000CC9  0218              add bl,[bx+si]
00000CCB  83C3C7            add bx,0xffffffffffffffc7
00000CCE  CAD88B            retf word 0x8bd8
00000CD1  C3                ret
00000CD2  6685C3            test ebx,eax
00000CD5  56                push si
00000CD6  8382C4C956        add word [bp+si-0x363c],0x56
00000CDB  C6                db 0xc6
00000CDC  C856C801          enter word 0xc856,byte 0x1
00000CE0  1883C376          sbb [bp+di+0x76c3],al
00000CE4  C8C7D885          enter word 0xd8c7,byte 0x85
00000CE8  C4                db 0xc4
00000CE9  C7021883          mov word [bp+si],0x8318
00000CED  C3                ret
00000CEE  C7                db 0xc7
00000CEF  D884C446          fadd dword [si+0x46c4]
00000CF3  C9                leave
00000CF4  C6                db 0xc6
00000CF5  D884C346          fadd dword [si+0x46c3]
00000CF9  0118              add [bx+si],bx
00000CFB  82                db 0x82
00000CFC  82                db 0x82
00000CFD  C3                ret
00000CFE  C7                db 0xc7
00000CFF  C9                leave
00000D00  050702            add ax,0x207
00000D03  1884C346          sbb [si+0x46c3],al
00000D07  C9                leave
00000D08  C7011887          mov word [bx+di],0x8718
00000D0C  C3                ret
00000D0D  46                inc si
00000D0E  85C3              test bx,ax
00000D10  C785DADF46CC      mov word [di-0x2026],0xcc46
00000D16  85C4              test sp,ax
00000D18  46                inc si
00000D19  8482DADF          test [bp+si-0x2026],al
00000D1D  46                inc si
00000D1E  CC                int3
00000D1F  C8021887          enter word 0x1802,byte 0x87
00000D23  C4                db 0xc4
00000D24  C7021889          mov word [bp+si],0x8918
00000D28  C3                ret
00000D29  46                inc si
00000D2A  85EB              test bx,bp
00000D2C  EC                in al,dx
00000D2D  0118              add [bx+si],bx
00000D2F  83DBE0            sbb bx,0xffffffffffffffe0
00000D32  56                push si
00000D33  85C3              test bx,ax
00000D35  C7                db 0xc7
00000D36  C8011882          enter word 0x1801,byte 0x82
00000D3A  82                db 0x82
00000D3B  DBE0              fneni
00000D3D  C7                db 0xc7
00000D3E  C8011898          enter word 0x1801,byte 0x98
00000D42  C3                ret
00000D43  C7                db 0xc7
00000D44  D885EBD8          fadd dword [di-0x2715]
00000D48  85DB              test bx,bx
00000D4A  DEC9              fmulp st1
00000D4C  46                inc si
00000D4D  85C4              test sp,ax
00000D4F  46                inc si
00000D50  0218              add bl,[bx+si]
00000D52  8182DBDE4660      add word [bp+si-0x2125],0x6046
00000D58  C240C2            ret word 0xc240
00000D5B  50                push ax
00000D5C  41                inc cx
00000D5D  70C2              jo 0xd21
00000D5F  40                inc ax
00000D60  C25081            ret word 0x8150
00000D63  C3                ret
00000D64  C801188B          enter word 0x1801,byte 0x8b
00000D68  DBDF              fcmovnu st7
00000D6A  46                inc si
00000D6B  CC                int3
00000D6C  85C4              test sp,ax
00000D6E  46                inc si
00000D6F  8482DBDF          test [bp+si-0x2025],al
00000D73  C7                db 0xc7
00000D74  CC                int3
00000D75  9AC3468701        call word 0x187:word 0x46c3
00000D7A  1883DBDF          sbb [bp+di-0x2025],al
00000D7E  C7                db 0xc7
00000D7F  C9                leave
00000D80  CC                int3
00000D81  85C3              test bx,ax
00000D83  46                inc si
00000D84  8482DDDF          test [bp+si-0x2023],al
00000D88  C7                db 0xc7
00000D89  CC                int3
00000D8A  85C4              test sp,ax
00000D8C  C7C689C4          mov si,0xc489
00000D90  C7                db 0xc7
00000D91  D886C346          fadd dword [bp+0x46c3]
00000D95  8CDB              mov bx,ds
00000D97  DF46CC            fild word [bp-0x34]
00000D9A  85C3              test bx,ax
00000D9C  C5                db 0xc5
00000D9D  C78482C4C7C8      mov word [si-0x3b7e],0xc8c7
00000DA3  D885C456          fadd dword [di+0x56c4]
00000DA7  D887C346          fadd dword [bx+0x46c3]
00000DAB  0118              add [bx+si],bx
00000DAD  84C4              test ah,al
00000DAF  C7                db 0xc7
00000DB0  CAD88B            retf word 0x8bd8
00000DB3  DBDF              fcmovnu st7
00000DB5  56                push si
00000DB6  85C3              test bx,ax
00000DB8  46                inc si
00000DB9  0118              add [bx+si],bx
00000DBB  82                db 0x82
00000DBC  82                db 0x82
00000DBD  C3                ret
00000DBE  46                inc si
00000DBF  0118              add [bx+si],bx
00000DC1  84C3              test bl,al
00000DC3  46                inc si
00000DC4  C8011886          enter word 0x1801,byte 0x86
00000DC8  C3                ret
00000DC9  C7                db 0xc7
00000DCA  D886C4C7          fadd dword [bp-0x383c]
00000DCE  0118              add [bx+si],bx
00000DD0  86D8              xchg bl,al
00000DD2  84DB              test bl,bl
00000DD4  DF46CC            fild word [bp-0x34]
00000DD7  85C3              test bx,ax
00000DD9  46                inc si
00000DDA  CC                int3
00000DDB  8382C446CC        add word [bp+si+0x46c4],0xffffffffffffffcc
00000DE0  85C3              test bx,ax
00000DE2  C9                leave
00000DE3  46                inc si
00000DE4  0218              add bl,[bx+si]
00000DE6  85C3              test bx,ax
00000DE8  C7                db 0xc7
00000DE9  C8011884          enter word 0x1801,byte 0x84
00000DED  C3                ret
00000DEE  C7                db 0xc7
00000DEF  8D                db 0x8d
00000DF0  DBDF              fcmovnu st7
00000DF2  C7                db 0xc7
00000DF3  C8021883          enter word 0x1802,byte 0x83
00000DF7  C3                ret
00000DF8  46                inc si
00000DF9  8482C346          test [bp+si+0x46c3],al
00000DFD  CAD884            retf word 0x84d8
00000E00  C3                ret
00000E01  66C8021883        enterd word 0x1802,byte 0x83
00000E06  C3                ret
00000E07  46                inc si
00000E08  D884C446          fadd dword [si+0x46c4]
00000E0C  86EB              xchg ch,bl
00000E0E  C7                db 0xc7
00000E0F  D884DBDF          fadd dword [si-0x2025]
00000E13  C7C6C801          mov si,0x1c8
00000E17  1883C446          sbb [bp+di+0x46c4],al
00000E1B  8482C3C5          test [bp+si-0x3a3d],al
00000E1F  C7                db 0xc7
00000E20  CC                int3
00000E21  85C3              test bx,ax
00000E23  7601              jna 0xe26
00000E25  1884C446          sbb [si+0x46c4],al
00000E29  C8011882          enter word 0x1801,byte 0x82
00000E2D  C3                ret
00000E2E  56                push si
00000E2F  D884EBEC          fadd dword [si-0x1315]
00000E33  85DB              test bx,bx
00000E35  DF56D8            fist word [bp-0x28]
00000E38  84C3              test bl,al
00000E3A  46                inc si
00000E3B  8482C346          test [bp+si+0x46c3],al
00000E3F  CC                int3
00000E40  85C3              test bx,ax
00000E42  EC                in al,dx
00000E43  56                push si
00000E44  CC                int3
00000E45  86C4              xchg al,ah
00000E47  7645              jna 0xe8e
00000E49  56                push si
00000E4A  C8011883          enter word 0x1801,byte 0x83
00000E4E  EBEC              jmp 0xe3c
00000E50  D984DBDF          fld dword [si-0x2025]
00000E54  46                inc si
00000E55  CC                int3
00000E56  85DA              test dx,bx
00000E58  DFC7              ffreep st7
00000E5A  8482C446          test [bp+si+0x46c4],al
00000E5E  0118              add [bx+si],bx
00000E60  84C3              test bl,al
00000E62  EC                in al,dx
00000E63  46                inc si
00000E64  C8011885          enter word 0x1801,byte 0x85
00000E68  C3                ret
00000E69  0807              or [bx],al
00000E6B  CC                int3
00000E6C  86EB              xchg ch,bl
00000E6E  EC                in al,dx
00000E6F  D9                db 0xd9
00000E70  D883DBDF          fadd dword [bp+di-0x2025]
00000E74  C7                db 0xc7
00000E75  C9                leave
00000E76  86DB              xchg bl,bl
00000E78  DF                db 0xdf
00000E79  C9                leave
00000E7A  8482C446          test [bp+si+0x46c4],al
00000E7E  C8011883          enter word 0x1801,byte 0x83
00000E82  C4                db 0xc4
00000E83  EC                in al,dx
00000E84  56                push si
00000E85  C8011884          enter word 0x1801,byte 0x84
00000E89  C40607C9          les ax,word [0xc907]
00000E8D  46                inc si
00000E8E  D88CDBDF          fmul dword [si-0x2025]
00000E92  46                inc si
00000E93  C685DBDFC7        mov byte [di-0x2025],0xc7
00000E98  CC                int3
00000E99  8382C346D8        add word [bp+si+0x46c3],0xffffffffffffffd8
00000E9E  85C3              test bx,ax
00000EA0  EC                in al,dx
00000EA1  56                push si
00000EA2  0118              add [bx+si],bx
00000EA4  86C4              xchg al,ah
00000EA6  46                inc si
00000EA7  C505              lds ax,word [di]
00000EA9  07                pop es
00000EAA  0118              add [bx+si],bx
00000EAC  8BDB              mov bx,bx
00000EAE  DF46C8            fild word [bp-0x38]
00000EB1  0118              add [bx+si],bx
00000EB3  83DBDF            sbb bx,0xffffffffffffffdf
00000EB6  C78482C346CC      mov word [si-0x3c7e],0xcc46
00000EBC  85C3              test bx,ax
00000EBE  012C              add [si],bp
00000EC0  CAC7D8            retf word 0xd8c7
00000EC3  87C3              xchg ax,bx
00000EC5  56                push si
00000EC6  EC                in al,dx
00000EC7  56                push si
00000EC8  CC                int3
00000EC9  89D8              mov ax,bx
00000ECB  84DB              test bl,bl
00000ECD  DF                db 0xdf
00000ECE  C9                leave
00000ECF  46                inc si
00000ED0  D884DBDF          fadd dword [si-0x2025]
00000ED4  C7                db 0xc7
00000ED5  CB                retf
00000ED6  D88282C4          fadd dword [bp+si-0x3b7e]
00000EDA  46                inc si
00000EDB  CC                int3
00000EDC  85C3              test bx,ax
00000EDE  012C              add [si],bp
00000EE0  C7                db 0xc7
00000EE1  CC                int3
00000EE2  88C4              mov ah,al
00000EE4  56                push si
00000EE5  EC                in al,dx
00000EE6  46                inc si
00000EE7  CC                int3
00000EE8  C802188B          enter word 0x1802,byte 0x8b
00000EEC  DBDF              fcmovnu st7
00000EEE  56                push si
00000EEF  85DB              test bx,bx
00000EF1  E0C7              loopne 0xeba
00000EF3  CC                int3
00000EF4  8382C346C9        add word [bp+si+0x46c3],0xffffffffffffffc9
00000EF9  85C3              test bx,ax
00000EFB  012C              add [si],bp
00000EFD  C7                db 0xc7
00000EFE  CC                int3
00000EFF  8AC4              mov al,ah
00000F01  C7                db 0xc7
00000F02  EC                in al,dx
00000F03  46                inc si
00000F04  C8C7D888          enter word 0xd8c7,byte 0x88
00000F08  D884DBDF          fadd dword [si-0x2025]
00000F0C  46                inc si
00000F0D  C8011883          enter word 0x1801,byte 0x83
00000F11  DBDE              fcmovnu st6
00000F13  C9                leave
00000F14  8482C346          test [bp+si+0x46c3],al
00000F18  CC                int3
00000F19  85C3              test bx,ax
00000F1B  46                inc si
00000F1C  CC                int3
00000F1D  8BC3              mov ax,bx
00000F1F  C7012C46          mov word [bx+di],0x462c
00000F23  0218              add bl,[bx+si]
00000F25  87D9              xchg bx,cx
00000F27  D883DBDF          fadd dword [bp+di-0x2025]
00000F2B  C9                leave
00000F2C  C7                db 0xc7
00000F2D  CC                int3
00000F2E  85DB              test bx,bx
00000F30  DFC7              ffreep st7
00000F32  0118              add [bx+si],bx
00000F34  82                db 0x82
00000F35  82                db 0x82
00000F36  C456D8            les dx,word [bp-0x28]
00000F39  84C3              test bl,al
00000F3B  56                push si
00000F3C  D88AC4C7          fmul dword [bp+si-0x383c]
00000F40  012C              add [si],bp
00000F42  C7                db 0xc7
00000F43  CC                int3
00000F44  88EB              mov bl,ch
00000F46  EC                in al,dx
00000F47  85DB              test bx,bx
00000F49  DF5685            fist word [bp-0x7b]
00000F4C  DBDF              fcmovnu st7
00000F4E  C7                db 0xc7
00000F4F  D88382C3          fadd dword [bp+di-0x3c7e]
00000F53  C7                db 0xc7
00000F54  C8011884          enter word 0x1801,byte 0x84
00000F58  C446CA            les ax,word [bp-0x36]
00000F5B  0118              add [bx+si],bx
00000F5D  89C3              mov bx,ax
00000F5F  C7012CC7          mov word [bx+di],0xc72c
00000F63  CC                int3
00000F64  88EB              mov bl,ch
00000F66  CAD884            retf word 0x84d8
00000F69  DBDF              fcmovnu st7
00000F6B  46                inc si
00000F6C  CC                int3
00000F6D  D884DBDF          fadd dword [si-0x2025]
00000F71  CC                int3
00000F72  8482C346          test [bp+si+0x46c3],al
00000F76  D885C346          fadd dword [di+0x46c3]
00000F7A  CC                int3
00000F7B  8BC3              mov ax,bx
00000F7D  46                inc si
00000F7E  EC                in al,dx
00000F7F  C7011887          mov word [bx+di],0x8718
00000F83  EBEC              jmp 0xf71
00000F85  85DB              test bx,bx
00000F87  DF46CC            fild word [bp-0x34]
00000F8A  85DB              test bx,bx
00000F8C  DFC7              ffreep st7
00000F8E  8482C3C7          test [bp+si-0x383d],al
00000F92  CC                int3
00000F93  86C3              xchg al,bl
00000F95  46                inc si
00000F96  0318              add bx,[bx+si]
00000F98  82                db 0x82
00000F99  C4                db 0xc4
00000F9A  D884C4C7          fadd dword [si-0x383c]
00000F9E  C5                db 0xc5
00000F9F  EC                in al,dx
00000FA0  C7                db 0xc7
00000FA1  CC                int3
00000FA2  88C3              mov bl,al
00000FA4  EC                in al,dx
00000FA5  85DB              test bx,bx
00000FA7  DFC7              ffreep st7
00000FA9  C686DBDFC6        mov byte [bp-0x2025],0xc6
00000FAE  8482C3C7          test [bp+si-0x383d],al
00000FB2  C9                leave
00000FB3  86C4              xchg al,ah
00000FB5  46                inc si
00000FB6  D885C4C6          fadd dword [di-0x393c]
00000FBA  84C3              test bl,al
00000FBC  46                inc si
00000FBD  EC                in al,dx
00000FBE  C8C7D887          enter word 0xd8c7,byte 0x87
00000FC2  C3                ret
00000FC3  C785DBDFC7C8      mov word [di-0x2025],0xc8c7
00000FC9  0218              add bl,[bx+si]
00000FCB  83DBDF            sbb bx,0xffffffffffffffdf
00000FCE  C7011882          mov word [bx+di],0x8218
00000FD2  82                db 0x82
00000FD3  C3                ret
00000FD4  C7                db 0xc7
00000FD5  CC                int3
00000FD6  86C3              xchg al,bl
00000FD8  C7                db 0xc7
00000FD9  CC                int3
00000FDA  86C3              xchg al,bl
00000FDC  C7                db 0xc7
00000FDD  D883C346          fadd dword [bp+di+0x46c3]
00000FE1  EC                in al,dx
00000FE2  C6                db 0xc6
00000FE3  C8021883          enter word 0x1802,byte 0x83
00000FE7  DADE              fcmovu st6
00000FE9  46                inc si
00000FEA  0118              add [bx+si],bx
00000FEC  83DBDF            sbb bx,0xffffffffffffffdf
00000FEF  56                push si
00000FF0  D884DBE0          fadd dword [si-0x1f25]
00000FF4  C7                db 0xc7
00000FF5  D88382C4          fadd dword [bp+di-0x3b7e]
00000FF9  46                inc si
00000FFA  CC                int3
00000FFB  85C3              test bx,ax
00000FFD  46                inc si
00000FFE  CC                int3
00000FFF  85C4              test sp,ax
00001001  C784C346EC46      mov word [si+0x46c3],0x46ec
00001007  0118              add [bx+si],bx
00001009  84DB              test bl,bl
0000100B  DF4685            fild word [bp-0x7b]
0000100E  DBDF              fcmovnu st7
00001010  56                push si
00001011  D884DBDE          fadd dword [si-0x2125]
00001015  C68482C446        mov byte [si-0x3b7e],0x46
0000101A  D885C3C7          fadd dword [di-0x383d]
0000101E  C8CC85C4          enter word 0x85cc,byte 0xc4
00001022  C784C3022CC7      mov word [si+0x2c3],0xc72c
00001028  CC                int3
00001029  86DB              xchg bl,bl
0000102B  DFC7              ffreep st7
0000102D  CAD884            retf word 0x84d8
00001030  DBDF              fcmovnu st7
00001032  46                inc si
00001033  CC                int3
00001034  85DB              test bx,bx
00001036  DFC7              ffreep st7
00001038  0118              add [bx+si],bx
0000103A  82                db 0x82
0000103B  82                db 0x82
0000103C  C3                ret
0000103D  C7                db 0xc7
0000103E  C8011884          enter word 0x1801,byte 0x84
00001042  C3                ret
00001043  46                inc si
00001044  CC                int3
00001045  85C3              test bx,ax
00001047  D884C302          fadd dword [si+0x2c3]
0000104B  2CCA              sub al,0xca
0000104D  CC                int3
0000104E  85DA              test dx,bx
00001050  DE5685            ficom word [bp-0x7b]
00001053  DBDF              fcmovnu st7
00001055  56                push si
00001056  85DD              test bp,bx
00001058  DFC7              ffreep st7
0000105A  0218              add bl,[bx+si]
0000105C  8182C34686C3      add word [bp+si+0x46c3],0xc386
00001062  46                inc si
00001063  CC                int3
00001064  85C3              test bx,ax
00001066  C7                db 0xc7
00001067  D883C402          fadd dword [bp+di+0x2c4]
0000106B  2CC7              sub al,0xc7
0000106D  CC                int3
0000106E  85DB              test bx,bx
00001070  DF5685            fist word [bp-0x7b]
00001073  DBDF              fcmovnu st7
00001075  C9                leave
00001076  46                inc si
00001077  85C3              test bx,ax
00001079  C7C68482          mov si,0x8284
0000107D  C3                ret
0000107E  C7                db 0xc7
0000107F  C8C785C3          enter word 0x85c7,byte 0xc3
00001083  C7                db 0xc7
00001084  C8011884          enter word 0x1801,byte 0x84
00001088  C4                db 0xc4
00001089  C7                db 0xc7
0000108A  D883C446          fadd dword [bp+di+0x46c4]
0000108E  EC                in al,dx
0000108F  C7                db 0xc7
00001090  CC                int3
00001091  85DB              test bx,bx
00001093  DF46CA            fild word [bp-0x36]
00001096  85DB              test bx,bx
00001098  DF5685            fist word [bp-0x7b]
0000109B  C3                ret
0000109C  46                inc si
0000109D  C68382C346        mov byte [bp+di-0x3c7e],0x46
000010A2  0118              add [bx+si],bx
000010A4  84C3              test bl,al
000010A6  46                inc si
000010A7  CC                int3
000010A8  85C3              test bx,ax
000010AA  C7                db 0xc7
000010AB  C8011881          enter word 0x1801,byte 0x81
000010AF  C3                ret
000010B0  C7                db 0xc7
000010B1  C9                leave
000010B2  EC                in al,dx
000010B3  C7                db 0xc7
000010B4  D885DBDF          fadd dword [di-0x2025]
000010B8  56                push si
000010B9  0118              add [bx+si],bx
000010BB  83DBDF            sbb bx,0xffffffffffffffdf
000010BE  46                inc si
000010BF  C685C44601        mov byte [di+0x46c4],0x1
000010C4  188282C4          sbb [bp+si-0x3b7e],al
000010C8  C7                db 0xc7
000010C9  D886C356          fadd dword [bp+0x56c3]
000010CD  85C3              test bx,ax
000010CF  66                o32
000010D0  C6                db 0xc6
000010D1  56                push si
000010D2  EC                in al,dx
000010D3  46                inc si
000010D4  D884DBDF          fadd dword [si-0x2025]
000010D8  C7                db 0xc7
000010D9  CA0218            retf word 0x1802
000010DC  83DBDF            sbb bx,0xffffffffffffffdf
000010DF  46                inc si
000010E0  C8D884DA          enter word 0x84d8,byte 0xda
000010E4  DF4601            fild word [bp+0x1]
000010E7  18818BC4          sbb [bx+di-0x3b75],al
000010EB  46                inc si
000010EC  CAD884            retf word 0x84d8
000010EF  C3                ret
000010F0  012C              add [si],bp
000010F2  66EC              o32 in al,dx
000010F4  C7                db 0xc7
000010F5  EC                in al,dx
000010F6  C7                db 0xc7
000010F7  CAD901            retf word 0x1d9
000010FA  1882DBDF          sbb [bp+si-0x2025],al
000010FE  46                inc si
000010FF  86DB              xchg bl,bl
00001101  DF4601            fild word [bp+0x1]
00001104  1884DBDF          sbb [si-0x2025],al
00001108  C7                db 0xc7
00001109  CC                int3
0000110A  83C250            add dx,0x50
0000110D  C2C1C2            ret word 0xc2c1
00001110  C183C4C7EC        rol word [bp+di-0x383c],byte 0xec
00001115  CC                int3
00001116  85C3              test bx,ax
00001118  012C              add [si],bp
0000111A  46                inc si
0000111B  4B                dec bx
0000111C  66EC              o32 in al,dx
0000111E  0118              add [bx+si],bx
00001120  83DBDF            sbb bx,0xffffffffffffffdf
00001123  56                push si
00001124  0118              add [bx+si],bx
00001126  83DBDF            sbb bx,0xffffffffffffffdf
00001129  C7                db 0xc7
0000112A  CC                int3
0000112B  86DB              xchg bl,bl
0000112D  DFC7              ffreep st7
0000112F  CAC7C1            retf word 0xc1c7
00001132  C28BC3            ret word 0xc38b
00001135  EC                in al,dx
00001136  C7                db 0xc7
00001137  CC                int3
00001138  85C3              test bx,ax
0000113A  EC                in al,dx
0000113B  C7                db 0xc7
0000113C  CAD883            retf word 0x83d8
0000113F  DBDF              fcmovnu st7
00001141  C7                db 0xc7
00001142  CC                int3
00001143  85DB              test bx,bx
00001145  DF46CC            fild word [bp-0x34]
00001148  85DB              test bx,bx
0000114A  DF4686            fild word [bp-0x7a]
0000114D  DBDF              fcmovnu st7
0000114F  46                inc si
00001150  CC                int3
00001151  82                db 0x82
00001152  D88AC3EC          fmul dword [bp+si-0x133d]
00001156  C7C685C3          mov si,0xc385
0000115A  C5                db 0xc5
0000115B  C7021882          mov word [bp+si],0x8218
0000115F  DBDF              fcmovnu st7
00001161  C7                db 0xc7
00001162  CC                int3
00001163  85DB              test bx,bx
00001165  E046              loopne 0x11ad
00001167  D885DBDF          fadd dword [di-0x2025]
0000116B  46                inc si
0000116C  C685DBE066        mov byte [di-0x1f25],0x66
00001171  D8C7              fadd st7
00001173  0218              add bl,[bx+si]
00001175  87C3              xchg ax,bx
00001177  EC                in al,dx
00001178  46                inc si
00001179  D884C346          fadd dword [si+0x46c3]
0000117D  D884DBDF          fadd dword [si-0x2025]
00001181  46                inc si
00001182  D9                db 0xd9
00001183  D883DBDE          fadd dword [bp+di-0x2125]
00001187  46                inc si
00001188  0118              add [bx+si],bx
0000118A  84DB              test bl,bl
0000118C  DF56D8            fist word [bp-0x28]
0000118F  84DB              test bl,bl
00001191  DEC9              fmulp st1
00001193  46                inc si
00001194  CAC7C8            retf word 0xc8c7
00001197  46                inc si
00001198  0118              add [bx+si],bx
0000119A  86C4              xchg al,ah
0000119C  EC                in al,dx
0000119D  C7                db 0xc7
0000119E  C8011883          enter word 0x1801,byte 0x83
000011A2  C4                db 0xc4
000011A3  C7011884          mov word [bx+di],0x8418
000011A7  DBDF              fcmovnu st7
000011A9  C7                db 0xc7
000011AA  D9                db 0xd9
000011AB  D884DBDF          fadd dword [si-0x2025]
000011AF  46                inc si
000011B0  CC                int3
000011B1  85DB              test bx,bx
000011B3  DF46CA            fild word [bp-0x36]
000011B6  0118              add [bx+si],bx
000011B8  83DBDF            sbb bx,0xffffffffffffffdf
000011BB  76C6              jna 0x1183
000011BD  C8021886          enter word 0x1802,byte 0x86
000011C1  C3                ret
000011C2  EC                in al,dx
000011C3  C7                db 0xc7
000011C4  CC                int3
000011C5  8D                db 0x8d
000011C6  DBDF              fcmovnu st7
000011C8  C9                leave
000011C9  0118              add [bx+si],bx
000011CB  84DB              test bl,bl
000011CD  DF46CA            fild word [bp-0x36]
000011D0  85DB              test bx,bx
000011D2  DF46CC            fild word [bp-0x34]
000011D5  85DB              test bx,bx
000011D7  DF7656            fbstp tword [bp+0x56]
000011DA  45                inc bp
000011DB  82                db 0x82
000011DC  C3                ret
000011DD  C682C35650        mov byte [bp+si+0x56c3],0x50
000011E2  C2C1C2            ret word 0xc2c1
000011E5  40                inc ax
000011E6  C2C183            ret word 0x83c1
000011E9  DBDF              fcmovnu st7
000011EB  46                inc si
000011EC  0118              add [bx+si],bx
000011EE  83DBDF            sbb bx,0xffffffffffffffdf
000011F1  46                inc si
000011F2  CC                int3
000011F3  85DB              test bx,bx
000011F5  DF5685            fist word [bp-0x7b]
000011F8  DBDF              fcmovnu st7
000011FA  56                push si
000011FB  EC                in al,dx
000011FC  C7                db 0xc7
000011FD  0807              or [bx],al
000011FF  C9                leave
00001200  66CC              o32 int3
00001202  8D                db 0x8d
00001203  DBDF              fcmovnu st7
00001205  C7                db 0xc7
00001206  CC                int3
00001207  85DB              test bx,bx
00001209  DF46CC            fild word [bp-0x34]
0000120C  85DB              test bx,bx
0000120E  DFC5              ffreep st5
00001210  46                inc si
00001211  85DB              test bx,bx
00001213  DFC7              ffreep st7
00001215  C9                leave
00001216  C7012C66          mov word [bx+di],0x662c
0000121A  EC                in al,dx
0000121B  C7                db 0xc7
0000121C  C9                leave
0000121D  0507CA            add ax,0xca07
00001220  CC                int3
00001221  85C4              test sp,ax
00001223  C686DBDFC7        mov byte [bp-0x2025],0xc7
00001228  CC                int3
00001229  85DB              test bx,bx
0000122B  DF46C8            fild word [bp-0x38]
0000122E  0118              add [bx+si],bx
00001230  83DBDF            sbb bx,0xffffffffffffffdf
00001233  46                inc si
00001234  C685DBDF66        mov byte [di-0x2025],0x66
00001239  EC                in al,dx
0000123A  C8CC0118          enter word 0x1cc,byte 0x18
0000123E  CC                int3
0000123F  0807              or [bx],al
00001241  0118              add [bx+si],bx
00001243  84C3              test bl,al
00001245  C7011884          mov word [bx+di],0x8418
00001249  DBDF              fcmovnu st7
0000124B  C7                db 0xc7
0000124C  CC                int3
0000124D  85DB              test bx,bx
0000124F  DE46C8            fiadd word [bp-0x38]
00001252  85DB              test bx,bx
00001254  DF5601            fist word [bp+0x1]
00001257  1883DBDF          sbb [bp+di-0x2025],al
0000125B  66CC              o32 int3
0000125D  0218              add bl,[bx+si]
0000125F  86C3              xchg al,bl
00001261  66D885C446        o32 fadd dword [di+0x46c4]
00001266  0118              add [bx+si],bx
00001268  83DBDF            sbb bx,0xffffffffffffffdf
0000126B  C7                db 0xc7
0000126C  C8011883          enter word 0x1801,byte 0x83
00001270  DBDF              fcmovnu st7
00001272  46                inc si
00001273  0118              add [bx+si],bx
00001275  84DB              test bl,bl
00001277  DF46C8            fild word [bp-0x38]
0000127A  D884DBDF          fadd dword [si-0x2025]
0000127E  66C8D889DB        enterd word 0x89d8,byte 0xdb
00001283  DF46C6            fild word [bp-0x3a]
00001286  85C4              test sp,ax
00001288  46                inc si
00001289  C684DBDFC7        mov byte [si-0x2025],0xc7
0000128E  D9                db 0xd9
0000128F  D884DBDF          fadd dword [si-0x2025]
00001293  46                inc si
00001294  C685DBDF46        mov byte [di-0x2025],0x46
00001299  0118              add [bx+si],bx
0000129B  84DB              test bl,bl
0000129D  DEC9              fmulp st1
0000129F  56                push si
000012A0  D860C2            fsub dword [bx+si-0x3e]
000012A3  C1C240            rol dx,byte 0x40
000012A6  81DBDFC9          sbb bx,0xc9df
000012AA  C8011884          enter word 0x1801,byte 0x84
000012AE  C3                ret
000012AF  C7                db 0xc7
000012B0  C8021882          enter word 0x1802,byte 0x82
000012B4  DBDF              fcmovnu st7
000012B6  C7                db 0xc7
000012B7  CC                int3
000012B8  85DB              test bx,bx
000012BA  DF56D8            fist word [bp-0x28]
000012BD  84DB              test bl,bl
000012BF  DFC7              ffreep st7
000012C1  CACC85            retf word 0x85cc
000012C4  DBDF              fcmovnu st7
000012C6  56                push si
000012C7  40                inc ax
000012C8  8ADB              mov bl,bl
000012CA  DF46C6            fild word [bp-0x3a]
000012CD  85C3              test bx,ax
000012CF  46                inc si
000012D0  0118              add [bx+si],bx
000012D2  83DBDF            sbb bx,0xffffffffffffffdf
000012D5  C7                db 0xc7
000012D6  CC                int3
000012D7  85DB              test bx,bx
000012D9  DF56D8            fist word [bp-0x28]
000012DC  84DB              test bl,bl
000012DE  DFC7              ffreep st7
000012E0  CC                int3
000012E1  86DB              xchg bl,bl
000012E3  E056              loopne 0x133b
000012E5  82                db 0x82
000012E6  83C486            add sp,0xffffffffffffff86
000012E9  DBDF              fcmovnu st7
000012EB  46                inc si
000012EC  CC                int3
000012ED  85C3              test bx,ax
000012EF  46                inc si
000012F0  CC                int3
000012F1  84DB              test bl,bl
000012F3  DF                db 0xdf
000012F4  C9                leave
000012F5  D985DBDF          fld dword [di-0x2025]
000012F9  56                push si
000012FA  0118              add [bx+si],bx
000012FC  83DBDF            sbb bx,0xffffffffffffffdf
000012FF  C7                db 0xc7
00001300  D886DBDE          fadd dword [bp-0x2125]
00001304  46                inc si
00001305  C80118D8          enter word 0x1801,byte 0xd8
00001309  82                db 0x82
0000130A  C401              les ax,word [bx+di]
0000130C  1884DBDF          sbb [si-0x2025],al
00001310  46                inc si
00001311  CC                int3
00001312  85C3              test bx,ax
00001314  C9                leave
00001315  4B                dec bx
00001316  84DB              test bl,bl
00001318  DFC7              ffreep st7
0000131A  CC                int3
0000131B  85DB              test bx,bx
0000131D  DF4602            fild word [bp+0x2]
00001320  1883DDE0          sbb [bp+di-0x1f23],al
00001324  0118              add [bx+si],bx
00001326  86DB              xchg bl,bl
00001328  DF5601            fist word [bp+0x1]
0000132B  1883C3C8          sbb [bp+di-0x373d],al
0000132F  0118              add [bx+si],bx
00001331  83DBDF            sbb bx,0xffffffffffffffdf
00001334  46                inc si
00001335  0118              add [bx+si],bx
00001337  84C3              test bl,al
00001339  C7                db 0xc7
0000133A  CC                int3
0000133B  85DB              test bx,bx
0000133D  DFC7              ffreep st7
0000133F  CC                int3
00001340  85DB              test bx,bx
00001342  DF46C6            fild word [bp-0x3a]
00001345  8FC4              pop sp
00001347  C7                db 0xc7
00001348  EC                in al,dx
00001349  46                inc si
0000134A  82                db 0x82
0000134B  83C3C7            add bx,0xffffffffffffffc7
0000134E  CAC683            retf word 0x83c6
00001351  DDE0              fucom st0
00001353  56                push si
00001354  0118              add [bx+si],bx
00001356  83C446            add sp,0x46
00001359  CC                int3
0000135A  84DB              test bl,bl
0000135C  DFC7              ffreep st7
0000135E  86DB              xchg bl,bl
00001360  DF5650            fist word [bp+0x50]
00001363  C2C1C2            ret word 0xc2c1
00001366  60                pusha
00001367  41                inc cx
00001368  40                inc ax
00001369  81C4C7EC          add sp,0xecc7
0000136D  46                inc si
0000136E  82                db 0x82
0000136F  83C346            add bx,0x46
00001372  D884DBDF          fadd dword [si-0x2025]
00001376  46                inc si
00001377  C684C3ECC7        mov byte [si-0x133d],0xc7
0000137C  CC                int3
0000137D  84DB              test bl,bl
0000137F  DF                db 0xdf
00001380  C8021883          enter word 0x1802,byte 0x83
00001384  DBDF              fcmovnu st7
00001386  56                push si
00001387  8FC3              pop bx
00001389  C7                db 0xc7
0000138A  EC                in al,dx
0000138B  C7                db 0xc7
0000138C  C8011883          enter word 0x1801,byte 0x83
00001390  C3                ret
00001391  C786DBDF46C6      mov word [bp-0x2025],0xc646
00001397  84C3              test bl,al
00001399  EC                in al,dx
0000139A  C7                db 0xc7
0000139B  C8D883DB          enter word 0x83d8,byte 0xdb
0000139F  DF46D9            fild word [bp-0x27]
000013A2  D883DBE0          fadd dword [bp+di-0x1f25]
000013A6  56                push si
000013A7  0218              add bl,[bx+si]
000013A9  8CC4              mov sp,es
000013AB  66D88183C4        o32 fadd dword [bx+di-0x3b7d]
000013B0  C786DBDFC956      mov word [bp-0x2025],0x56c9
000013B6  D881C4C7          fadd dword [bx+di-0x383c]
000013BA  EC                in al,dx
000013BB  C7                db 0xc7
000013BC  CC                int3
000013BD  84DB              test bl,bl
000013BF  DF46D9            fild word [bp-0x27]
000013C2  0118              add [bx+si],bx
000013C4  82                db 0x82
000013C5  DBDE              fcmovnu st6
000013C7  7604              jna 0x13cd
000013C9  1888DADF          sbb [bx+si-0x2026],cl
000013CD  46                inc si
000013CE  CC                int3
000013CF  82                db 0x82
000013D0  83C3D8            add bx,0xffffffffffffffd8
000013D3  86DB              xchg bl,bl
000013D5  DF56C8            fist word [bp-0x38]
000013D8  C6                db 0xc6
000013D9  C8660118          enter word 0x166,byte 0x18
000013DD  83DBDF            sbb bx,0xffffffffffffffdf
000013E0  C7                db 0xc7
000013E1  C9                leave
000013E2  D884DBDF          fadd dword [si-0x2025]
000013E6  0507C8            add ax,0xc807
000013E9  C7021887          mov word [bp+si],0x8718
000013ED  DBDF              fcmovnu st7
000013EF  C9                leave
000013F0  46                inc si
000013F1  82                db 0x82
000013F2  8BDB              mov bx,bx
000013F4  DF07              fild word [bx]
000013F6  07                pop es
000013F7  C8C70118          enter word 0x1c7,byte 0x18
000013FB  83DBDF            sbb bx,0xffffffffffffffdf
000013FE  C7                db 0xc7
000013FF  CC                int3
00001400  85DB              test bx,bx
00001402  DF0607C6          fild word [0xc607]
00001406  8ADB              mov bl,bl
00001408  DF5682            fist word [bp-0x7e]
0000140B  8BDD              mov bx,bp
0000140D  E0C7              loopne 0x13d6
0000140F  C9                leave
00001410  56                push si
00001411  EC                in al,dx
00001412  56                push si
00001413  C685DBDFC7        mov byte [di-0x2025],0xc7
00001418  CC                int3
00001419  85DB              test bx,bx
0000141B  DF0607C8          fild word [0xc807]
0000141F  C6                db 0xc6
00001420  89DB              mov bx,bx
00001422  DF46CC            fild word [bp-0x34]
00001425  82                db 0x82
00001426  8CDB              mov bx,ds
00001428  DF46CC            fild word [bp-0x34]
0000142B  CA46CA            retf word 0xca46
0000142E  C7021883          mov word [bp+si],0x8318
00001432  DBDF              fcmovnu st7
00001434  C7                db 0xc7
00001435  CC                int3
00001436  85DB              test bx,bx
00001438  DF05              fild word [di]
0000143A  07                pop es
0000143B  C556C6            lds dx,word [bp-0x3a]
0000143E  D886DBDF          fadd dword [bp-0x2025]
00001442  C7                db 0xc7
00001443  C8C70118          enter word 0x1c7,byte 0x18
00001447  D88BDBDF          fmul dword [bp+di-0x2025]
0000144B  46                inc si
0000144C  C876C685          enter word 0xc676,byte 0x85
00001450  DBDF              fcmovnu st7
00001452  C7                db 0xc7
00001453  C8011883          enter word 0x1801,byte 0x83
00001457  DBDF              fcmovnu st7
00001459  0907              or [bx],ax
0000145B  C8021884          enter word 0x1802,byte 0x84
0000145F  DBDF              fcmovnu st7
00001461  56                push si
00001462  0118              add [bx+si],bx
00001464  8CDB              mov bx,ds
00001466  DF464B            fild word [bp+0x4b]
00001469  D881C346          fadd dword [bx+di+0x46c3]
0000146D  D884DBDF          fadd dword [si-0x2025]
00001471  46                inc si
00001472  85DB              test bx,bx
00001474  E007              loopne 0x147d
00001476  07                pop es
00001477  C84B87DB          enter word 0x874b,byte 0xdb
0000147B  DF                db 0xdf
0000147C  C9                leave
0000147D  C7                db 0xc7
0000147E  CC                int3
0000147F  82                db 0x82
00001480  8CDB              mov bx,ds
00001482  DF                db 0xdf
00001483  C8011883          enter word 0x1801,byte 0x83
00001487  C3                ret
00001488  C7                db 0xc7
00001489  C8011883          enter word 0x1801,byte 0x83
0000148D  DBDF              fcmovnu st7
0000148F  C8021883          enter word 0x1802,byte 0x83
00001493  DBE0              fneni
00001495  0A07              or al,[bx]
00001497  D886DBDF          fadd dword [bp-0x2025]
0000149B  46                inc si
0000149C  CC                int3
0000149D  82                db 0x82
0000149E  8CDB              mov bx,ds
000014A0  DFC7              ffreep st7
000014A2  D884C4C7          fadd dword [si-0x383c]
000014A6  CC                int3
000014A7  85DB              test bx,bx
000014A9  DFC7              ffreep st7
000014AB  C685DBDF09        mov byte [di-0x2025],0x9
000014B0  07                pop es
000014B1  CC                int3
000014B2  87DB              xchg bx,bx
000014B4  DF5682            fist word [bp-0x7e]
000014B7  8CDB              mov bx,ds
000014B9  DFC7              ffreep st7
000014BB  CC                int3
000014BC  84C3              test bl,al
000014BE  46                inc si
000014BF  CC                int3
000014C0  84DB              test bl,bl
000014C2  DFC7              ffreep st7
000014C4  CC                int3
000014C5  85DB              test bx,bx
000014C7  DF46EC            fild word [bp-0x14]
000014CA  66EC              o32 in al,dx
000014CC  46                inc si
000014CD  88DB              mov bl,bl
000014CF  DF5601            fist word [bp+0x1]
000014D2  18D8              sbb al,bl
000014D4  8BDD              mov bx,bp
000014D6  E0C7              loopne 0x149f
000014D8  0118              add [bx+si],bx
000014DA  83C346            add bx,0x46
000014DD  CC                int3
000014DE  84DB              test bl,bl
000014E0  DFC7              ffreep st7
000014E2  CC                int3
000014E3  85DB              test bx,bx
000014E5  DF05              fild word [di]
000014E7  07                pop es
000014E8  EC                in al,dx
000014E9  56                push si
000014EA  88DB              mov bl,bl
000014EC  DF46CA            fild word [bp-0x36]
000014EF  0118              add [bx+si],bx
000014F1  8D                db 0x8d
000014F2  DBDF              fcmovnu st7
000014F4  D884C346          fadd dword [si+0x46c3]
000014F8  0118              add [bx+si],bx
000014FA  83DDDF            sbb bp,0xffffffffffffffdf
000014FD  C7                db 0xc7
000014FE  D901              fld dword [bx+di]
00001500  1883DBDF          sbb [bp+di-0x2025],al
00001504  56                push si
00001505  EC                in al,dx
00001506  46                inc si
00001507  EC                in al,dx
00001508  56                push si
00001509  C687DBDF46        mov byte [bx-0x2025],0x46
0000150E  CC                int3
0000150F  82                db 0x82
00001510  83C446            add sp,0x46
00001513  87DD              xchg bx,bp
00001515  E085              loopne 0x149c
00001517  C4                db 0xc4
00001518  C7                db 0xc7
00001519  CACC85            retf word 0x85cc
0000151C  C3                ret
0000151D  C7                db 0xc7
0000151E  C8D884DD          enter word 0x84d8,byte 0xdd
00001522  DF56EC            fist word [bp-0x14]
00001525  56                push si
00001526  EC                in al,dx
00001527  46                inc si
00001528  C8021884          enter word 0x1802,byte 0x84
0000152C  DBDF              fcmovnu st7
0000152E  46                inc si
0000152F  C68283C3C5        mov byte [bp+si-0x3c7d],0xc5
00001534  C701188C          mov word [bx+di],0x8c18
00001538  C446CC            les ax,word [bp-0x34]
0000153B  85C3              test bx,ax
0000153D  C7011884          mov word [bx+di],0x8418
00001541  C3                ret
00001542  66EC              o32 in al,dx
00001544  66EC              o32 in al,dx
00001546  46                inc si
00001547  0118              add [bx+si],bx
00001549  85DB              test bx,bx
0000154B  DF46C6            fild word [bp-0x3a]
0000154E  82                db 0x82
0000154F  83C456            add sp,0x56
00001552  C1C240            rol dx,byte 0x40
00001555  C2C141            ret word 0x41c1
00001558  60                pusha
00001559  81C34601          add bx,0x146
0000155D  1884C4C7          sbb [si-0x383c],al
00001561  D885C408          fadd dword [di+0x8c4]
00001565  07                pop es
00001566  EC                in al,dx
00001567  C7                db 0xc7
00001568  CA87DB            retf word 0xdb87
0000156B  DF56D8            fist word [bp-0x28]
0000156E  8183C3560118      add word [bp+di+0x56c3],0x1801
00001574  8BC3              mov ax,bx
00001576  46                inc si
00001577  CC                int3
00001578  8BC3              mov ax,bx
0000157A  665B              pop ebx
0000157C  0507CC            add ax,0xcc07
0000157F  87DB              xchg bx,bx
00001581  DF                db 0xdf
00001582  C9                leave
00001583  C7                db 0xc7
00001584  CC                int3
00001585  82                db 0x82
00001586  83C3C7            add bx,0xffffffffffffffc7
00001589  C856CAC7          enter word 0xca56,byte 0xc7
0000158D  0118              add [bx+si],bx
0000158F  87C3              xchg ax,bx
00001591  56                push si
00001592  40                inc ax
00001593  C240C2            ret word 0xc240
00001596  C1C240            rol dx,byte 0x40
00001599  81C3564B          add bx,0x4b56
0000159D  82                db 0x82
0000159E  C476CC            les si,word [bp-0x34]
000015A1  87DB              xchg bx,bx
000015A3  DFC7              ffreep st7
000015A5  C9                leave
000015A6  0118              add [bx+si],bx
000015A8  8184C3070701      add word [si+0x7c3],0x107
000015AE  1885C366          sbb [di+0x66c3],al
000015B2  D889C346          fmul dword [bx+di+0x46c3]
000015B6  0118              add [bx+si],bx
000015B8  83C356            add bx,0x56
000015BB  CAC688            retf word 0x88c6
000015BE  DBDF              fcmovnu st7
000015C0  46                inc si
000015C1  CC                int3
000015C2  82                db 0x82
000015C3  D883C346          fadd dword [bp+di+0x46c3]
000015C7  C866C8D8          enter word 0xc866,byte 0xd8
000015CB  86C3              xchg al,bl
000015CD  56                push si
000015CE  C8C70218          enter word 0x2c7,byte 0x18
000015D2  85C3              test bx,ax
000015D4  56                push si
000015D5  D884C476          fadd dword [si+0x76c4]
000015D9  C687DBDF46        mov byte [bx-0x2025],0x46
000015DE  CB                retf
000015DF  0118              add [bx+si],bx
000015E1  84C4              test ah,al
000015E3  C7011881          mov word [bx+di],0x8118
000015E7  C3                ret
000015E8  56                push si
000015E9  0118              add [bx+si],bx
000015EB  85C3              test bx,ax
000015ED  0507CA            add ax,0xca07
000015F0  C8021882          enter word 0x1802,byte 0x82
000015F4  C446CC            les ax,word [bp-0x34]
000015F7  85C3              test bx,ax
000015F9  76C8              jna 0x15c3
000015FB  0118              add [bx+si],bx
000015FD  85DB              test bx,bx
000015FF  DF46C8            fild word [bp-0x38]
00001602  D8818AEB          fadd dword [bx+di-0x1476]
00001606  48                dec ax
00001607  87C3              xchg ax,bx
00001609  07                pop es
0000160A  07                pop es
0000160B  C6                db 0xc6
0000160C  C8C7CB66          enter word 0xcbc7,byte 0x66
00001610  D885C305          fadd dword [di+0x5c3]
00001614  07                pop es
00001615  0318              add bx,[bx+si]
00001617  83DBDF            sbb bx,0xffffffffffffffdf
0000161A  46                inc si
0000161B  CC                int3
0000161C  82                db 0x82
0000161D  0801              or [bx+di],al
0000161F  81EBECD8          sub bx,0xd8ec
00001623  87C4              xchg ax,sp
00001625  56                push si
00001626  C9                leave
00001627  06                push es
00001628  07                pop es
00001629  C856C986          enter word 0xc956,byte 0x86
0000162D  C405              les ax,word [di]
0000162F  07                pop es
00001630  87DB              xchg bx,bx
00001632  DF5640            fist word [bp+0x40]
00001635  8AEB              mov ch,bl
00001637  012C              add [si],bp
00001639  D886C305          fadd dword [bp+0x5c3]
0000163D  07                pop es
0000163E  CB                retf
0000163F  56                push si
00001640  CACB66            retf word 0x66cb
00001643  D885C376          fadd dword [di+0x76c3]
00001647  0118              add [bx+si],bx
00001649  86DB              xchg bl,bl
0000164B  DF5682            fist word [bp-0x7e]
0000164E  84C4              test ah,al
00001650  88D9              mov cl,bl
00001652  D885C308          fadd dword [di+0x8c3]
00001656  07                pop es
00001657  D8CC              fmul st4
00001659  81C346C8          add bx,0xc846
0000165D  0118              add [bx+si],bx
0000165F  84C3              test bl,al
00001661  050787            add ax,0x8707
00001664  DBDF              fcmovnu st7
00001666  46                inc si
00001667  0118              add [bx+si],bx
00001669  8184C3D887D8      add word [si-0x273d],0xd887
0000166F  86C3              xchg al,bl
00001671  76CC              jna 0x163f
00001673  CA0218            retf word 0x1802
00001676  82                db 0x82
00001677  C3                ret
00001678  46                inc si
00001679  CC                int3
0000167A  86C3              xchg al,bl
0000167C  C566CC            lds sp,word [bp-0x34]
0000167F  87DB              xchg bx,bx
00001681  DF                db 0xdf
00001682  C9                leave
00001683  C7                db 0xc7
00001684  CC                int3
00001685  82                db 0x82
00001686  84C3              test bl,al
00001688  D88EC3C7          fmul dword [bp-0x383d]
0000168C  C9                leave
0000168D  66D885C4C7        o32 fadd dword [di-0x383c]
00001692  C9                leave
00001693  87C4              xchg ax,sp
00001695  76CC              jna 0x1663
00001697  87DB              xchg bx,bx
00001699  DF46CB            fild word [bp-0x35]
0000169C  D88183E1          fadd dword [bx+di-0x1e7d]
000016A0  C7011886          mov word [bx+di],0x8618
000016A4  D886C466          fadd dword [bp+0x66c4]
000016A8  CB                retf
000016A9  0118              add [bx+si],bx
000016AB  85C4              test sp,ax
000016AD  46                inc si
000016AE  C686C466C8        mov byte [bp+0x66c4],0xc8
000016B3  C7011885          mov word [bx+di],0x8518
000016B7  DBDF              fcmovnu st7
000016B9  C7                db 0xc7
000016BA  C8011881          enter word 0x1801,byte 0x81
000016BE  82                db 0x82
000016BF  E1C7              loope 0x1688
000016C1  0118              add [bx+si],bx
000016C3  85EB              test bx,bp
000016C5  EC                in al,dx
000016C6  0118              add [bx+si],bx
000016C8  85C3              test bx,ax
000016CA  66CC              o32 int3
000016CC  87C3              xchg ax,bx
000016CE  46                inc si
000016CF  C8011884          enter word 0x1801,byte 0x84
000016D3  C3                ret
000016D4  C7C546C6          mov bp,0xc646
000016D8  C8021884          enter word 0x1802,byte 0x84
000016DC  DBDF              fcmovnu st7
000016DE  C7                db 0xc7
000016DF  CC                int3
000016E0  8381E14601        add word [bx+di+0x46e1],0x1
000016E5  1884EB02          sbb [si+0x2eb],al
000016E9  2CD8              sub al,0xd8
000016EB  85C3              test bx,ax
000016ED  46                inc si
000016EE  CC                int3
000016EF  C8CC87C3          enter word 0x87cc,byte 0xc3
000016F3  46                inc si
000016F4  D886C476          fadd dword [bp+0x76c4]
000016F8  CC                int3
000016F9  87DB              xchg bx,bx
000016FB  DFC7              ffreep st7
000016FD  0118              add [bx+si],bx
000016FF  82                db 0x82
00001700  81C4C7D8          add sp,0xd8c7
00001704  86EB              xchg ch,bl
00001706  EC                in al,dx
00001707  C7                db 0xc7
00001708  EC                in al,dx
00001709  C8011883          enter word 0x1801,byte 0x83
0000170D  C3                ret
0000170E  46                inc si
0000170F  C8C50118          enter word 0x1c5,byte 0x18
00001713  86C3              xchg al,bl
00001715  46                inc si
00001716  C686C366CA        mov byte [bp+0x66c3],0xca
0000171B  CC                int3
0000171C  87DD              xchg bx,bp
0000171E  DFC7              ffreep st7
00001720  CC                int3
00001721  8381C3C7CC        add word [bx+di-0x383d],0xffffffffffffffcc
00001726  85DA              test dx,bx
00001728  DF05              fild word [di]
0000172A  07                pop es
0000172B  D8C8              fmul st0
0000172D  66CC              o32 int3
0000172F  89C3              mov bx,ax
00001731  46                inc si
00001732  C686C366CC        mov byte [bp+0x66c3],0xcc
00001737  88C3              mov bl,al
00001739  C7                db 0xc7
0000173A  CB                retf
0000173B  8481C4C7          test [bx+di-0x383c],al
0000173F  0118              add [bx+si],bx
00001741  84DB              test bl,bl
00001743  DF0607C6          fild word [0xc607]
00001747  C846C8C7          enter word 0xc846,byte 0xc7
0000174B  0118              add [bx+si],bx
0000174D  87C4              xchg ax,sp
0000174F  56                push si
00001750  D885C376          fadd dword [di+0x76c3]
00001754  C687C3C8C7        mov byte [bx-0x373d],0xc7
00001759  0118              add [bx+si],bx
0000175B  82                db 0x82
0000175C  81C3C986          add bx,0x86c9
00001760  DBDF              fcmovnu st7
00001762  06                push es
00001763  07                pop es
00001764  CA5602            retf word 0x256
00001767  1888C3C7          sbb [bx+si-0x383d],cl
0000176B  C8011885          enter word 0x1801,byte 0x85
0000176F  C3                ret
00001770  76C8              jna 0x173a
00001772  0118              add [bx+si],bx
00001774  85C3              test bx,ax
00001776  C7                db 0xc7
00001777  D88481C3          fadd dword [si-0x3c7f]
0000177B  C7011884          mov word [bx+di],0x8418
0000177F  DBDF              fcmovnu st7
00001781  0507CC            add ax,0xcc07
00001784  46                inc si
00001785  CC                int3
00001786  8CC3              mov bx,es
00001788  46                inc si
00001789  0218              add bl,[bx+si]
0000178B  84C3              test bl,al
0000178D  76C6              jna 0x1755
0000178F  87C4              xchg ax,sp
00001791  0118              add [bx+si],bx
00001793  8489DBDF          test [bx+di-0x2025],cl
00001797  C7                db 0xc7
00001798  C9                leave
00001799  46                inc si
0000179A  C802188E          enter word 0x1802,byte 0x8e
0000179E  C4                db 0xc4
0000179F  C7                db 0xc7
000017A0  D887C366          fadd dword [bx+0x66c3]
000017A4  CAC68E            retf word 0x8ec6
000017A7  C1C260            rol dx,byte 0x60
000017AA  C2C181            ret word 0x81c1
000017AD  DBDF              fcmovnu st7
000017AF  7601              jna 0x17b2
000017B1  1899C405          sbb [bx+di+0x5c4],bl
000017B5  07                pop es
000017B6  40                inc ax
000017B7  C240C2            ret word 0xc240
000017BA  50                push ax
000017BB  C2C1C2            ret word 0xc2c1
000017BE  40                inc ax
000017BF  89DB              mov bx,bx
000017C1  DF7650            fbstp tword [bp+0x50]
000017C4  C240C2            ret word 0xc240
000017C7  50                push ax
000017C8  C2C1C2            ret word 0xc2c1
000017CB  40                inc ax
000017CC  C270C2            ret word 0xc270
000017CF  60                pusha
000017D0  81C4C7CB          add sp,0xcbc7
000017D4  56                push si
000017D5  C6                db 0xc6
000017D6  8EC6              mov es,si
000017D8  88DB              mov bl,bl
000017DA  DF6601            fbld tword [bp+0x1]
000017DD  189AC366          sbb [bp+si+0x66c3],bl
000017E1  C8C70218          enter word 0x2c7,byte 0x18
000017E5  8AC4              mov al,ah
000017E7  C8C687DB          enter word 0x87c6,byte 0xdb
000017EB  DF5601            fist word [bp+0x1]
000017EE  1886C446          sbb [bp+0x46c4],al
000017F2  0218              add bl,[bx+si]
000017F4  8FC3              pop bx
000017F6  0507C6            add ax,0xc607
000017F9  0118              add [bx+si],bx
000017FB  CAC601            retf word 0x1c6
000017FE  1886C3C7          sbb [bp-0x383d],al
00001802  CAC8C6            retf word 0xc6c8
00001805  85DB              test bx,bx
00001807  DF                db 0xdf
00001808  C9                leave
00001809  56                push si
0000180A  CA0118            retf word 0x1801
0000180D  84C3              test bl,al
0000180F  66C802188C        enterd word 0x1802,byte 0x8c
00001814  C40D              les cx,word [di]
00001816  07                pop es
00001817  0218              add bl,[bx+si]
00001819  82                db 0x82
0000181A  C3                ret
0000181B  660118            add [bx+si],ebx
0000181E  83DBDF            sbb bx,0xffffffffffffffdf
00001821  56                push si
00001822  0118              add [bx+si],bx
00001824  86C4              xchg al,ah
00001826  06                push es
00001827  07                pop es
00001828  C9                leave
00001829  0118              add [bx+si],bx
0000182B  0507C6            add ax,0xc607
0000182E  76C5              jna 0x17f5
00001830  76CA              jna 0x17fc
00001832  76CA              jna 0x17fe
00001834  46                inc si
00001835  C6                db 0xc6
00001836  CAC6C7            retf word 0xc7c6
00001839  0507C8            add ax,0xc807
0000183C  45                inc bp
0000183D  66CC              o32 int3
0000183F  88C3              mov bl,al
00001841  46                inc si
00001842  C9                leave
00001843  76C8              jna 0x180d
00001845  66C566C5          lds esp,dword [bp-0x3b]
00001849  0E                push cs
0000184A  07                pop es
0000184B  C6                db 0xc6
0000184C  C8760807          enter word 0x876,byte 0x7
00001850  CA66CC            retf word 0xcc66
00001853  87C3              xchg ax,bx
00001855  1107              adc [bx],ax
00001857  4B                dec bx
00001858  0F07              sysret
0000185A  CC                int3
0000185B  C8C7012C          enter word 0x1c7,byte 0x2c
0000185F  0C07              or al,0x7
00001861  C8011886          enter word 0x1801,byte 0x86
00001865  C409              les cx,word [bx+di]
00001867  07                pop es
00001868  CB                retf
00001869  66C8D883C4        enterd word 0x83d8,byte 0xc4
0000186E  0D07CC            or ax,0xcc07
00001871  C8824666          enter word 0x4682,byte 0x66
00001875  CC                int3
00001876  C8C7CCC8          enter word 0xccc7,byte 0xc8
0000187A  050701            add ax,0x107
0000187D  1885C40C          sbb [di+0xcc4],al
00001881  07                pop es
00001882  CA0118            retf word 0x1801
00001885  84C3              test bl,al
00001887  06                push es
00001888  07                pop es
00001889  C80607EC          enter word 0x706,byte 0xec
0000188D  82                db 0x82
0000188E  012C              add [si],bp
00001890  06                push es
00001891  07                pop es
00001892  C80507CA          enter word 0x705,byte 0xca
00001896  0218              add bl,[bx+si]
00001898  84C3              test bl,al
0000189A  0D0702            or ax,0x207
0000189D  1883C356          sbb [bp+di+0x56c3],al
000018A1  CA66D8            retf word 0xd866
000018A4  81C4C7C8          add sp,0xc8c7
000018A8  C7                db 0xc7
000018A9  D883C3C7          fadd dword [bp+di-0x383d]
000018AD  56                push si
000018AE  C8C70318          enter word 0x3c7,byte 0x18
000018B2  81C356CC          add bx,0xcc56
000018B6  87C3              xchg ax,bx
000018B8  C7C50B07          mov bp,0x70b
000018BC  D885C376          fadd dword [di+0x76c3]
000018C0  0218              add bl,[bx+si]
000018C2  83C3C7            add bx,0xffffffffffffffc7
000018C5  D884C3C7          fadd dword [si-0x383d]
000018C9  76CC              jna 0x1897
000018CB  0118              add [bx+si],bx
000018CD  83C346            add bx,0x46
000018D0  CC                int3
000018D1  87C3              xchg ax,bx
000018D3  06                push es
000018D4  07                pop es
000018D5  EC                in al,dx
000018D6  66C8021884        enterd word 0x1802,byte 0x84
000018DB  C44602            les ax,word [bp+0x2]
000018DE  1886C346          sbb [bp+0x46c3],al
000018E2  D883C3C5          fadd dword [bp+di-0x3a3d]
000018E6  66CC              o32 int3
000018E8  86C3              xchg al,bl
000018EA  C7                db 0xc7
000018EB  C8011886          enter word 0x1801,byte 0x86
000018EF  C3                ret
000018F0  06                push es
000018F1  07                pop es
000018F2  EC                in al,dx
000018F3  7693              jna 0x1888
000018F5  C4                db 0xc4
000018F6  C785C4C766CA      mov word [di-0x383c],0xca66
000018FC  0118              add [bx+si],bx
000018FE  84C3              test bl,al
00001900  C7011887          mov word [bx+di],0x8718
00001904  C4060701          les ax,word [0x107]
00001908  2C66              sub al,0x66
0000190A  C1C240            rol dx,byte 0x40
0000190D  C250C2            ret word 0xc250
00001910  C1C250            rol dx,byte 0x50
00001913  C25081            ret word 0x8150
00001916  C3                ret
00001917  D885C4C7          fadd dword [di-0x383c]
0000191B  66CC              o32 int3
0000191D  86C4              xchg al,ah
0000191F  CC                int3
00001920  89C3              mov bx,ax
00001922  07                pop es
00001923  07                pop es
00001924  022C              add ch,[si]
00001926  46                inc si
00001927  0118              add [bx+si],bx
00001929  91                xchg ax,cx
0000192A  C3                ret
0000192B  D885C3C7          fadd dword [di-0x383d]
0000192F  56                push si
00001930  CC                int3
00001931  92                xchg ax,dx
00001932  C3                ret
00001933  C7C576CA          mov bp,0xca76
00001937  CC                int3
00001938  C7                db 0xc7
00001939  EC                in al,dx
0000193A  56                push si
0000193B  88C4              mov ah,al
0000193D  0218              add bl,[bx+si]
0000193F  86C4              xchg al,ah
00001941  D885C3C7          fadd dword [di-0x383d]
00001945  76C1              jna 0x1908
00001947  C2C1C2            ret word 0xc2c1
0000194A  60                pusha
0000194B  C240C2            ret word 0xc240
0000194E  40                inc ax
0000194F  C2C181            ret word 0x81c1
00001952  C3                ret
00001953  0507CC            add ax,0xcc07
00001956  C876C802          enter word 0xc876,byte 0x2
0000195A  1885C346          sbb [di+0x46c3],al
0000195E  0218              add bl,[bx+si]
00001960  8BC3              mov ax,bx
00001962  C7                db 0xc7
00001963  66CC              o32 int3
00001965  91                xchg ax,cx
00001966  C409              les cx,word [bx+di]
00001968  07                pop es
00001969  CA7601            retf word 0x176
0000196C  1884C3C7          sbb [si-0x383d],al
00001970  CAC7C6            retf word 0xc6c7
00001973  8CC3              mov bx,es
00001975  C7                db 0xc7
00001976  76D8              jna 0x1950
00001978  85C4              test sp,ax
0000197A  C745011884        mov word [di+0x1],0x8418
0000197F  C405              les ax,word [di]
00001981  07                pop es
00001982  C8021805          enter word 0x1802,byte 0x5
00001986  07                pop es
00001987  CA0218            retf word 0x1802
0000198A  83C356            add bx,0x56
0000198D  0118              add [bx+si],bx
0000198F  8BC4              mov ax,sp
00001991  C7                db 0xc7
00001992  56                push si
00001993  C8021884          enter word 0x1802,byte 0x84
00001997  C3                ret
00001998  56                push si
00001999  CA56C6            retf word 0xc656
0000199C  81C356C8          add bx,0xc856
000019A0  0118              add [bx+si],bx
000019A2  88C4              mov ah,al
000019A4  46                inc si
000019A5  D885C356          fadd dword [di+0x56c3]
000019A9  C6                db 0xc6
000019AA  8BDA              mov bx,dx
000019AC  DF                db 0xdf
000019AD  C9                leave
000019AE  66CC              o32 int3
000019B0  86C3              xchg al,bl
000019B2  76C6              jna 0x197a
000019B4  C8660118          enter word 0x166,byte 0x18
000019B8  8CC3              mov bx,es
000019BA  46                inc si
000019BB  85C4              test sp,ax
000019BD  56                push si
000019BE  C8011889          enter word 0x1801,byte 0x89
000019C2  DBDF              fcmovnu st7
000019C4  C7                db 0xc7
000019C5  5A                pop dx
000019C6  0012              add [bp+si],dl
000019C8  FF                db 0xff
000019C9  FF                db 0xff
000019CA  FF                db 0xff
000019CB  FF04              inc word [si]
000019CD  80B9E7000B        cmp byte [bx+di+0xe7],0xb
000019D2  0009              add [bx+di],cl
000019D4  40                inc ax
000019D5  A6                cmpsb
000019D6  0400              add al,0x0
000019D8  0E                push cs
000019D9  000A              add [bp+si],cl
000019DB  40                inc ax
000019DC  8C06000C          mov word [0xc00],es
000019E0  0019              add [bx+di],bl
000019E2  803812            cmp byte [bx+si],0x12
000019E5  0020              add [bx+si],ah
000019E7  0022              add [bp+si],ah
000019E9  80B01B0028        xor byte [bx+si+0x1b],0x28
000019EE  002A              add [bp+si],ch
000019F0  80B8230031        cmp byte [bx+si+0x23],0x31
000019F5  002B              add [bp+di],ch
000019F7  80A0210034        and byte [bx+si+0x21],0x34
000019FC  0037              add [bx],dh
000019FE  40                inc ax
000019FF  852E003F          test [0x3f00],bp
00001A03  007080            add [bx+si-0x80],dh
00001A06  9A63007900        call word 0x79:word 0x63
00001A0B  BD8085            mov bp,0x8580
00001A0E  B600              mov dh,0x0
00001A10  C000FF            rol byte [bx+si],byte 0xff
00001A13  FF09              dec word [bx+di]
00001A15  0019              add [bx+di],bl
00001A17  82                db 0x82
00001A18  0B09              or cx,[bx+di]
00001A1A  0019              add [bx+di],bl
00001A1C  00FF              add bh,bh
00001A1E  FF                db 0xff
00001A1F  FF5800            call word far [bx+si+0x0]
00001A22  22830B58          and al,[bp+di+0x580b]
00001A26  0022              add [bp+si],ah
00001A28  00FF              add bh,bh
00001A2A  FF                db 0xff
00001A2B  FF6400            jmp word near [si+0x0]
00001A2E  3B840B64          cmp ax,[si+0x640b]
00001A32  003B              add [bp+di],bh
00001A34  00FF              add bh,bh
00001A36  FF                db 0xff
00001A37  FF830035          inc word [bp+di+0x3500]
00001A3B  82                db 0x82
00001A3C  0B830035          or ax,[bp+di+0x3500]
00001A40  00FF              add bh,bh
00001A42  FF                db 0xff
00001A43  FF8D003E          dec word [di+0x3e00]
00001A47  82                db 0x82
00001A48  0B8D003E          or cx,[di+0x3e00]
00001A4C  00FF              add bh,bh
00001A4E  FF                db 0xff
00001A4F  FF9D0010          call word far [di+0x1000]
00001A53  010D              add [di],cx
00001A55  1100              adc [bx+si],ax
00001A57  150024            adc ax,0x2400
00001A5A  0010              add [bx+si],dl
00001A5C  CE                into
00001A5D  0027              add [bx],ah
00001A5F  840B              test [bp+di],cl
00001A61  CE                into
00001A62  0027              add [bx],ah
00001A64  00FF              add bh,bh
00001A66  FF                db 0xff
00001A67  FF                db 0xff
00001A68  FF                db 0xff
00001A69  FF20              jmp word near [bx+si]
00001A6B  00FF              add bh,bh
00001A6D  13C0              adc ax,ax
00001A6F  FF                db 0xff
00001A70  FF                db 0xff
00001A71  FF                db 0xff
00001A72  FF23              jmp word near [bp+di]
00001A74  004088            add [bx+si-0x78],al
00001A77  DB00              fild dword [bx+si]
00001A79  00FF              add bh,bh
00001A7B  FF23              jmp word near [bp+di]
00001A7D  0020              add [bx+si],ah
00001A7F  5F                pop di
00001A80  DC00              fadd qword [bx+si]
00001A82  FF6ADC            jmp word far [bp+si-0x24]
00001A85  FF                db 0xff
00001A86  FF                db 0xff
00001A87  FF                db 0xff
00001A88  FF23              jmp word near [bp+di]
00001A8A  0010              add [bx+si],dl
00001A8C  AF                scasw
00001A8D  DC00              fadd qword [bx+si]
00001A8F  FF                db 0xff
00001A90  BADCFF            mov dx,0xffdc
00001A93  FF                db 0xff
00001A94  FF                db 0xff
00001A95  FF23              jmp word near [bp+di]
00001A97  0008              add [bx+si],cl
00001A99  CF                iret
00001A9A  DD00              fld qword [bx+si]
00001A9C  FF                db 0xff
00001A9D  DADD              fcmovu st5
00001A9F  FF                db 0xff
00001AA0  FF                db 0xff
00001AA1  FF                db 0xff
00001AA2  FF23              jmp word near [bp+di]
00001AA4  0004              add [si],al
00001AA6  FF                db 0xff
00001AA7  DD00              fld qword [bx+si]
00001AA9  FF0A              dec word [bp+si]
00001AAB  DEFF              fdivp st7
00001AAD  FF                db 0xff
00001AAE  FF                db 0xff
00001AAF  FF23              jmp word near [bp+di]
00001AB1  0002              add [bp+si],al
00001AB3  1F                pop ds
00001AB4  DE00              fiadd word [bx+si]
00001AB6  FF2A              jmp word far [bp+si]
00001AB8  DEFF              fdivp st7
00001ABA  FF                db 0xff
00001ABB  FF                db 0xff
00001ABC  FF23              jmp word near [bp+di]
00001ABE  0001              add [bx+di],al
00001AC0  5F                pop di
00001AC1  DE00              fiadd word [bx+si]
00001AC3  FF6ADE            jmp word far [bp+si-0x22]
00001AC6  FF                db 0xff
00001AC7  FF                db 0xff
00001AC8  FF                db 0xff
00001AC9  FF24              jmp word near [si]
00001ACB  00807FDE          add [bx+si-0x2181],al
00001ACF  00FF              add bh,bh
00001AD1  8ADE              mov bl,dh
00001AD3  FF                db 0xff
00001AD4  FF                db 0xff
00001AD5  FF                db 0xff
00001AD6  FF24              jmp word near [si]
00001AD8  0040DF            add [bx+si-0x21],al
00001ADB  DE00              fiadd word [bx+si]
00001ADD  00FF              add bh,bh
00001ADF  FF24              jmp word near [si]
00001AE1  0020              add [bx+si],ah
00001AE3  CF                iret
00001AE4  DE00              fiadd word [bx+si]
00001AE6  FF                db 0xff
00001AE7  DADE              fcmovu st6
00001AE9  FF                db 0xff
00001AEA  FF                db 0xff
00001AEB  FF                db 0xff
00001AEC  FF24              jmp word near [si]
00001AEE  0010              add [bx+si],dl
00001AF0  4F                dec di
00001AF1  DA810DFF          fiadd dword [bx+di-0xf3]
00001AF5  FF                db 0xff
00001AF6  FF                db 0xff
00001AF7  FF16AF00          call word near [0xaf]
00001AFB  124361            adc al,[bp+di+0x61]
00001AFE  7665              jna 0x1b65
00001B00  726E              jc 0x1b70
00001B02  206F66            and [bx+0x66],ch
00001B05  204365            and [bp+di+0x65],al
00001B08  6D                insw
00001B09  656E              gs outsb
00001B0B  7461              jz 0x1b6e
00001B0D  7211              jc 0x1b20
00001B0F  0004              add [si],al
00001B11  0808              or [bx+si],cl
00001B13  0300              add ax,[bx+si]
00001B15  2BFF              sub di,di
00001B17  0200              add al,[bx+si]
00001B19  0000              add [bx+si],al
00001B1B  0000              add [bx+si],al
00001B1D  0003              add [bp+di],al
00001B1F  002B              add [bp+di],ch
00001B21  0200              add al,[bx+si]
00001B23  05003B            add ax,0x3b00
00001B26  FF02              inc word [bp+si]
00001B28  0000              add [bx+si],al
00001B2A  0000              add [bx+si],al
00001B2C  0000              add [bx+si],al
00001B2E  05003B            add ax,0x3b00
00001B31  0200              add al,[bx+si]
00001B33  0800              or [bx+si],al
00001B35  11FF              adc di,di
00001B37  0300              add ax,[bx+si]
00001B39  0000              add [bx+si],al
00001B3B  0000              add [bx+si],al
00001B3D  0008              add [bx+si],cl
00001B3F  0011              add [bx+di],dl
00001B41  0300              add ax,[bx+si]
00001B43  0F002B            verw [bp+di]
00001B46  FF02              inc word [bp+si]
00001B48  0000              add [bx+si],al
00001B4A  0000              add [bx+si],al
00001B4C  0000              add [bx+si],al
00001B4E  0F002B            verw [bp+di]
00001B51  0200              add al,[bx+si]
00001B53  1200              adc al,[bx+si]
00001B55  3CFF              cmp al,0xff
00001B57  0300              add ax,[bx+si]
00001B59  0000              add [bx+si],al
00001B5B  0000              add [bx+si],al
00001B5D  0012              add [bp+si],dl
00001B5F  003C              add [si],bh
00001B61  0300              add ax,[bx+si]
00001B63  17                pop ss
00001B64  0017              add [bx],dl
00001B66  FF04              inc word [si]
00001B68  0000              add [bx+si],al
00001B6A  0000              add [bx+si],al
00001B6C  0000              add [bx+si],al
00001B6E  17                pop ss
00001B6F  0017              add [bx],dl
00001B71  0400              add al,0x0
00001B73  1900              sbb [bx+si],ax
00001B75  03FF              add di,di
00001B77  0400              add al,0x0
00001B79  0000              add [bx+si],al
00001B7B  0000              add [bx+si],al
00001B7D  0019              add [bx+di],bl
00001B7F  0003              add [bp+di],al
00001B81  0400              add al,0x0
00001B83  1A00              sbb al,[bx+si]
00001B85  23FF              and di,di
00001B87  D000              rol byte [bx+si],0x0
00001B89  0020              add [bx+si],ah
00001B8B  0019              add [bx+di],bl
00001B8D  0023              add [bp+di],ah
00001B8F  004000            add [bx+si+0x0],al
00001B92  001C              add [si],bl
00001B94  0013              add [bp+di],dl
00001B96  FFF1              push cx
00001B98  0000              add [bx+si],al
00001B9A  0000              add [bx+si],al
00001B9C  0000              add [bx+si],al
00001B9E  FF                db 0xff
00001B9F  FF                db 0xff
00001BA0  FF00              inc word [bx+si]
00001BA2  001E0013          add [0x1300],bl
00001BA6  FFF1              push cx
00001BA8  0000              add [bx+si],al
00001BAA  0000              add [bx+si],al
00001BAC  0000              add [bx+si],al
00001BAE  FF                db 0xff
00001BAF  FF                db 0xff
00001BB0  FF00              inc word [bx+si]
00001BB2  001F              add [bx],bl
00001BB4  003C              add [si],bh
00001BB6  FF03              inc word [bp+di]
00001BB8  0000              add [bx+si],al
00001BBA  0000              add [bx+si],al
00001BBC  0000              add [bx+si],al
00001BBE  1F                pop ds
00001BBF  003C              add [si],bh
00001BC1  0300              add ax,[bx+si]
00001BC3  2000              and [bx+si],al
00001BC5  13FF              adc di,di
00001BC7  F1                int1
00001BC8  0000              add [bx+si],al
00001BCA  0000              add [bx+si],al
00001BCC  0000              add [bx+si],al
00001BCE  FF                db 0xff
00001BCF  FF                db 0xff
00001BD0  FF00              inc word [bx+si]
00001BD2  0021              add [bx+di],ah
00001BD4  0003              add [bp+di],al
00001BD6  FF04              inc word [si]
00001BD8  0000              add [bx+si],al
00001BDA  0000              add [bx+si],al
00001BDC  0000              add [bx+si],al
00001BDE  2100              and [bx+si],ax
00001BE0  0304              add ax,[si]
00001BE2  0024              add [si],ah
00001BE4  0022              add [bp+si],ah
00001BE6  FF00              inc word [bx+si]
00001BE8  0000              add [bx+si],al
00001BEA  1000              adc [bx+si],al
00001BEC  0000              add [bx+si],al
00001BEE  2400              and al,0x0
00001BF0  2200              and al,[bx+si]
00001BF2  0024              add [si],ah
00001BF4  0024              add [si],ah
00001BF6  FF01              inc word [bx+di]
00001BF8  0000              add [bx+si],al
00001BFA  1000              adc [bx+si],al
00001BFC  0000              add [bx+si],al
00001BFE  2400              and al,0x0
00001C00  2401              and al,0x1
00001C02  002C              add [si],ch
00001C04  0011              add [bx+di],dl
00001C06  FF03              inc word [bp+di]
00001C08  0000              add [bx+si],al
00001C0A  0000              add [bx+si],al
00001C0C  0000              add [bx+si],al
00001C0E  2C00              sub al,0x0
00001C10  1103              adc [bp+di],ax
00001C12  003A              add [bp+si],bh
00001C14  0008              add [bx+si],cl
00001C16  FF02              inc word [bp+si]
00001C18  0000              add [bx+si],al
00001C1A  0000              add [bx+si],al
00001C1C  0000              add [bx+si],al
00001C1E  3A00              cmp al,[bx+si]
00001C20  0802              or [bp+si],al
00001C22  003B              add [bp+di],bh
00001C24  0036FF02          add [0x2ff],dh
00001C28  0000              add [bx+si],al
00001C2A  0000              add [bx+si],al
00001C2C  0000              add [bx+si],al
00001C2E  3B00              cmp ax,[bx+si]
00001C30  360200            add al,[ss:bx+si]
00001C33  48                dec ax
00001C34  0022              add [bp+si],ah
00001C36  FF00              inc word [bx+si]
00001C38  0000              add [bx+si],al
00001C3A  1000              adc [bx+si],al
00001C3C  0000              add [bx+si],al
00001C3E  48                dec ax
00001C3F  0022              add [bp+si],ah
00001C41  0000              add [bx+si],al
00001C43  48                dec ax
00001C44  0024              add [si],ah
00001C46  FF01              inc word [bx+di]
00001C48  0000              add [bx+si],al
00001C4A  1000              adc [bx+si],al
00001C4C  0000              add [bx+si],al
00001C4E  48                dec ax
00001C4F  0024              add [si],ah
00001C51  0100              add [bx+si],ax
00001C53  51                push cx
00001C54  002EFF03          add [0x3ff],ch
00001C58  0000              add [bx+si],al
00001C5A  0000              add [bx+si],al
00001C5C  0000              add [bx+si],al
00001C5E  51                push cx
00001C5F  002E0300          add [0x3],ch
00001C63  52                push dx
00001C64  0036FF73          add [0x73ff],dh
00001C68  0005              add [di],al
00001C6A  2000              and [bx+si],al
00001C6C  0000              add [bx+si],al
00001C6E  2300              and ax,[bx+si]
00001C70  2000              and [bx+si],al
00001C72  005300            add [bp+di+0x0],dl
00001C75  18FF              sbb bh,bh
00001C77  0200              add al,[bx+si]
00001C79  0000              add [bx+si],al
00001C7B  0000              add [bx+si],al
00001C7D  005300            add [bp+di+0x0],dl
00001C80  1802              sbb [bp+si],al
00001C82  005800            add [bx+si+0x0],bl
00001C85  03FF              add di,di
00001C87  0400              add al,0x0
00001C89  0000              add [bx+si],al
00001C8B  0000              add [bx+si],al
00001C8D  005800            add [bx+si+0x0],bl
00001C90  0304              add ax,[si]
00001C92  005D00            add [di+0x0],bl
00001C95  37                aaa
00001C96  FF04              inc word [si]
00001C98  0000              add [bx+si],al
00001C9A  0000              add [bx+si],al
00001C9C  0000              add [bx+si],al
00001C9E  5D                pop bp
00001C9F  0037              add [bx],dh
00001CA1  0400              add al,0x0
00001CA3  60                pusha
00001CA4  0007              add [bx],al
00001CA6  FF03              inc word [bp+di]
00001CA8  0000              add [bx+si],al
00001CAA  0000              add [bx+si],al
00001CAC  0000              add [bx+si],al
00001CAE  60                pusha
00001CAF  0007              add [bx],al
00001CB1  0300              add ax,[bx+si]
00001CB3  61                popa
00001CB4  0010              add [bx+si],dl
00001CB6  FF7600            push word [bp+0x0]
00001CB9  0020              add [bx+si],ah
00001CBB  0000              add [bx+si],al
00001CBD  0023              add [bp+di],ah
00001CBF  0010              add [bx+si],dl
00001CC1  0000              add [bx+si],al
00001CC3  6300              arpl [bx+si],ax
00001CC5  2EFF03            inc word [cs:bp+di]
00001CC8  0000              add [bx+si],al
00001CCA  0000              add [bx+si],al
00001CCC  0000              add [bx+si],al
00001CCE  6300              arpl [bx+si],ax
00001CD0  2E0300            add ax,[cs:bx+si]
00001CD3  640024            add [fs:si],ah
00001CD6  FF03              inc word [bp+di]
00001CD8  0000              add [bx+si],al
00001CDA  0000              add [bx+si],al
00001CDC  0000              add [bx+si],al
00001CDE  640024            add [fs:si],ah
00001CE1  0300              add ax,[bx+si]
00001CE3  6D                insw
00001CE4  001EFF02          add [0x2ff],bl
00001CE8  0000              add [bx+si],al
00001CEA  0000              add [bx+si],al
00001CEC  0000              add [bx+si],al
00001CEE  6D                insw
00001CEF  001E0200          add [0x2],bl
00001CF3  7800              js 0x1cf5
00001CF5  10FF              adc bh,bh
00001CF7  0300              add ax,[bx+si]
00001CF9  0000              add [bx+si],al
00001CFB  0000              add [bx+si],al
00001CFD  007800            add [bx+si+0x0],bh
00001D00  1003              adc [bp+di],al
00001D02  007D00            add [di+0x0],bh
00001D05  02FF              add bh,bh
00001D07  F1                int1
00001D08  0000              add [bx+si],al
00001D0A  0000              add [bx+si],al
00001D0C  0000              add [bx+si],al
00001D0E  FF                db 0xff
00001D0F  FF                db 0xff
00001D10  FF00              inc word [bx+si]
00001D12  00850028          add [di+0x2800],al
00001D16  FFF1              push cx
00001D18  0000              add [bx+si],al
00001D1A  0000              add [bx+si],al
00001D1C  0000              add [bx+si],al
00001D1E  FF                db 0xff
00001D1F  FF                db 0xff
00001D20  FF00              inc word [bx+si]
00001D22  00870028          add [bx+0x2800],al
00001D26  FFF1              push cx
00001D28  0000              add [bx+si],al
00001D2A  0000              add [bx+si],al
00001D2C  0000              add [bx+si],al
00001D2E  FF                db 0xff
00001D2F  FF                db 0xff
00001D30  FF00              inc word [bx+si]
00001D32  00890028          add [bx+di+0x2800],cl
00001D36  FFF1              push cx
00001D38  0000              add [bx+si],al
00001D3A  0000              add [bx+si],al
00001D3C  0000              add [bx+si],al
00001D3E  FF                db 0xff
00001D3F  FF                db 0xff
00001D40  FF00              inc word [bx+si]
00001D42  008D0026          add [di+0x2600],cl
00001D46  FF02              inc word [bp+si]
00001D48  0000              add [bx+si],al
00001D4A  0000              add [bx+si],al
00001D4C  0000              add [bx+si],al
00001D4E  8D00              lea ax,[bx+si]
00001D50  260200            add al,[es:bx+si]
00001D53  8F00              pop word [bx+si]
00001D55  28FF              sub bh,bh
00001D57  F1                int1
00001D58  0000              add [bx+si],al
00001D5A  0000              add [bx+si],al
00001D5C  0000              add [bx+si],al
00001D5E  FF                db 0xff
00001D5F  FF                db 0xff
00001D60  FF00              inc word [bx+si]
00001D62  00900009          add [bx+si+0x900],dl
00001D66  FF03              inc word [bp+di]
00001D68  0000              add [bx+si],al
00001D6A  0000              add [bx+si],al
00001D6C  0000              add [bx+si],al
00001D6E  90                nop
00001D6F  0009              add [bx+di],cl
00001D71  0300              add ax,[bx+si]
00001D73  91                xchg ax,cx
00001D74  0028              add [bx+si],ch
00001D76  FFF1              push cx
00001D78  0000              add [bx+si],al
00001D7A  0000              add [bx+si],al
00001D7C  0000              add [bx+si],al
00001D7E  FF                db 0xff
00001D7F  FF                db 0xff
00001D80  FF00              inc word [bx+si]
00001D82  00930028          add [bp+di+0x2800],dl
00001D86  FFF1              push cx
00001D88  0000              add [bx+si],al
00001D8A  0000              add [bx+si],al
00001D8C  0000              add [bx+si],al
00001D8E  FF                db 0xff
00001D8F  FF                db 0xff
00001D90  FF00              inc word [bx+si]
00001D92  00930038          add [bp+di+0x3800],dl
00001D96  FF02              inc word [bp+si]
00001D98  0000              add [bx+si],al
00001D9A  0000              add [bx+si],al
00001D9C  0000              add [bx+si],al
00001D9E  93                xchg ax,bx
00001D9F  0038              add [bx+si],bh
00001DA1  0200              add al,[bx+si]
00001DA3  96                xchg ax,si
00001DA4  0016FF00          add [0xff],dl
00001DA8  0000              add [bx+si],al
00001DAA  1000              adc [bx+si],al
00001DAC  0000              add [bx+si],al
00001DAE  96                xchg ax,si
00001DAF  00160000          add [0x0],dl
00001DB3  96                xchg ax,si
00001DB4  0018              add [bx+si],bl
00001DB6  FF01              inc word [bx+di]
00001DB8  0000              add [bx+si],al
00001DBA  1000              adc [bx+si],al
00001DBC  0000              add [bx+si],al
00001DBE  96                xchg ax,si
00001DBF  0018              add [bx+si],bl
00001DC1  0100              add [bx+si],ax
00001DC3  98                cbw
00001DC4  0005              add [di],al
00001DC6  FF04              inc word [si]
00001DC8  0000              add [bx+si],al
00001DCA  0000              add [bx+si],al
00001DCC  0000              add [bx+si],al
00001DCE  98                cbw
00001DCF  0005              add [di],al
00001DD1  0400              add al,0x0
00001DD3  9E                sahf
00001DD4  0018              add [bx+si],bl
00001DD6  FF7300            push word [bp+di+0x0]
00001DD9  0120              add [bx+si],sp
00001DDB  0000              add [bx+si],al
00001DDD  0023              add [bp+di],ah
00001DDF  0008              add [bx+si],cl
00001DE1  0000              add [bx+si],al
00001DE3  A7                cmpsw
00001DE4  002EFF03          add [0x3ff],ch
00001DE8  0000              add [bx+si],al
00001DEA  0000              add [bx+si],al
00001DEC  0000              add [bx+si],al
00001DEE  A7                cmpsw
00001DEF  002E0300          add [0x3],ch
00001DF3  AC                lodsb
00001DF4  0024              add [si],ah
00001DF6  FF02              inc word [bp+si]
00001DF8  0000              add [bx+si],al
00001DFA  0000              add [bx+si],al
00001DFC  0000              add [bx+si],al
00001DFE  AC                lodsb
00001DFF  0024              add [si],ah
00001E01  0200              add al,[bx+si]
00001E03  B500              mov ch,0x0
00001E05  12FF              adc bh,bh
00001E07  7300              jnc 0x1e09
00001E09  0020              add [bx+si],ah
00001E0B  0019              add [bx+di],bl
00001E0D  0023              add [bp+di],ah
00001E0F  0004              add [si],al
00001E11  0000              add [bx+si],al
00001E13  B9001B            mov cx,0x1b00
00001E16  FF02              inc word [bp+si]
00001E18  0000              add [bx+si],al
00001E1A  0000              add [bx+si],al
00001E1C  0000              add [bx+si],al
00001E1E  B9001B            mov cx,0x1b00
00001E21  0200              add al,[bx+si]
00001E23  BF0012            mov di,0x1200
00001E26  FF7600            push word [bp+0x0]
00001E29  0020              add [bx+si],ah
00001E2B  0000              add [bx+si],al
00001E2D  0023              add [bp+di],ah
00001E2F  0002              add [bp+si],al
00001E31  0000              add [bx+si],al
00001E33  BF0038            mov di,0x3800
00001E36  FF02              inc word [bp+si]
00001E38  0000              add [bx+si],al
00001E3A  0000              add [bx+si],al
00001E3C  0000              add [bx+si],al
00001E3E  BF0038            mov di,0x3800
00001E41  0200              add al,[bx+si]
00001E43  C3                ret
00001E44  0018              add [bx+si],bl
00001E46  FF04              inc word [si]
00001E48  0000              add [bx+si],al
00001E4A  0000              add [bx+si],al
00001E4C  0000              add [bx+si],al
00001E4E  C3                ret
00001E4F  0018              add [bx+si],bl
00001E51  0400              add al,0x0
00001E53  CE                into
00001E54  000B              add [bp+di],cl
00001E56  FFF1              push cx
00001E58  0000              add [bx+si],al
00001E5A  0000              add [bx+si],al
00001E5C  0000              add [bx+si],al
00001E5E  FF                db 0xff
00001E5F  FF                db 0xff
00001E60  FF00              inc word [bx+si]
00001E62  00CF              add bh,cl
00001E64  001F              add [bx],bl
00001E66  FF7300            push word [bp+di+0x0]
00001E69  0020              add [bx+si],ah
00001E6B  0018              add [bx+si],bl
00001E6D  0023              add [bp+di],ah
00001E6F  0001              add [bx+di],al
00001E71  0000              add [bx+si],al
00001E73  CF                iret
00001E74  0032              add [bp+si],dh
00001E76  FF04              inc word [si]
00001E78  0000              add [bx+si],al
00001E7A  0000              add [bx+si],al
00001E7C  0000              add [bx+si],al
00001E7E  CF                iret
00001E7F  0032              add [bp+si],dh
00001E81  0400              add al,0x0
00001E83  D000              rol byte [bx+si],0x0
00001E85  09FF              or di,di
00001E87  7300              jnc 0x1e89
00001E89  06                push es
00001E8A  2000              and [bx+si],al
00001E8C  0000              add [bx+si],al
00001E8E  2400              and al,0x0
00001E90  800000            add byte [bx+si],0x0
00001E93  D000              rol byte [bx+si],0x0
00001E95  0BFF              or di,di
00001E97  F1                int1
00001E98  0000              add [bx+si],al
00001E9A  0000              add [bx+si],al
00001E9C  0000              add [bx+si],al
00001E9E  FF                db 0xff
00001E9F  FF                db 0xff
00001EA0  FF00              inc word [bx+si]
00001EA2  00D3              add bl,dl
00001EA4  0010              add [bx+si],dl
00001EA6  FF00              inc word [bx+si]
00001EA8  0000              add [bx+si],al
00001EAA  1000              adc [bx+si],al
00001EAC  0000              add [bx+si],al
00001EAE  D300              rol word [bx+si],cl
00001EB0  1000              adc [bx+si],al
00001EB2  00D3              add bl,dl
00001EB4  0012              add [bp+si],dl
00001EB6  FF01              inc word [bx+di]
00001EB8  0000              add [bx+si],al
00001EBA  1000              adc [bx+si],al
00001EBC  0000              add [bx+si],al
00001EBE  D300              rol word [bx+si],cl
00001EC0  1201              adc al,[bx+di]
00001EC2  00E0              add al,ah
00001EC4  000EFF04          add [0x4ff],cl
00001EC8  0000              add [bx+si],al
00001ECA  0000              add [bx+si],al
00001ECC  0000              add [bx+si],al
00001ECE  E000              loopne 0x1ed0
00001ED0  0E                push cs
00001ED1  0400              add al,0x0
00001ED3  E200              loop 0x1ed5
00001ED5  29FF              sub di,di
00001ED7  7300              jnc 0x1ed9
00001ED9  0020              add [bx+si],ah
00001EDB  0019              add [bx+di],bl
00001EDD  0024              add [si],ah
00001EDF  0020              add [bx+si],ah
00001EE1  0000              add [bx+si],al
00001EE3  E200              loop 0x1ee5
00001EE5  3CFF              cmp al,0xff
00001EE7  D000              rol byte [bx+si],0x0
00001EE9  0020              add [bx+si],ah
00001EEB  001B              add [bp+di],bl
00001EED  0024              add [si],ah
00001EEF  004000            add [bx+si+0x0],al
00001EF2  0000              add [bx+si],al
00001EF4  FF00              inc word [bx+si]
00001EF6  FF00              inc word [bx+si]
00001EF8  0000              add [bx+si],al
00001EFA  0000              add [bx+si],al
00001EFC  0000              add [bx+si],al
00001EFE  FF                db 0xff
00001EFF  FF00              inc word [bx+si]
00001F01  0000              add [bx+si],al
00001F03  00FF              add bh,bh
00001F05  00FF              add bh,bh
00001F07  0000              add [bx+si],al
00001F09  0000              add [bx+si],al
00001F0B  0000              add [bx+si],al
00001F0D  00FF              add bh,bh
00001F0F  FF00              inc word [bx+si]
00001F11  0000              add [bx+si],al
00001F13  00FF              add bh,bh
00001F15  00FF              add bh,bh
00001F17  0000              add [bx+si],al
00001F19  0000              add [bx+si],al
00001F1B  0000              add [bx+si],al
00001F1D  00FF              add bh,bh
00001F1F  FF00              inc word [bx+si]
00001F21  0000              add [bx+si],al
00001F23  00FF              add bh,bh
00001F25  00FF              add bh,bh
00001F27  0000              add [bx+si],al
00001F29  0000              add [bx+si],al
00001F2B  0000              add [bx+si],al
00001F2D  00FF              add bh,bh
00001F2F  FF00              inc word [bx+si]
00001F31  0000              add [bx+si],al
00001F33  00FF              add bh,bh
00001F35  00FF              add bh,bh
00001F37  0000              add [bx+si],al
00001F39  0000              add [bx+si],al
00001F3B  0000              add [bx+si],al
00001F3D  00FF              add bh,bh
00001F3F  FF00              inc word [bx+si]
00001F41  0000              add [bx+si],al
00001F43  00FF              add bh,bh
00001F45  00FF              add bh,bh
00001F47  0000              add [bx+si],al
00001F49  0000              add [bx+si],al
00001F4B  0000              add [bx+si],al
00001F4D  00FF              add bh,bh
00001F4F  FF00              inc word [bx+si]
00001F51  0000              add [bx+si],al
00001F53  00FF              add bh,bh
00001F55  00FF              add bh,bh
00001F57  0000              add [bx+si],al
00001F59  0000              add [bx+si],al
00001F5B  0000              add [bx+si],al
00001F5D  00FF              add bh,bh
00001F5F  FF00              inc word [bx+si]
00001F61  0000              add [bx+si],al
00001F63  00FF              add bh,bh
00001F65  00FF              add bh,bh
00001F67  0000              add [bx+si],al
00001F69  0000              add [bx+si],al
00001F6B  0000              add [bx+si],al
00001F6D  00FF              add bh,bh
00001F6F  FF00              inc word [bx+si]
00001F71  0000              add [bx+si],al
00001F73  FF                db 0xff
00001F74  FF                db 0xff
