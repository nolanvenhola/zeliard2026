00000000  6B0200            imul ax,[bp+si],0x0
00000003  003D              add [di],bh
00000005  C24900            ret word 0x49
00000008  DEC1              faddp st1
0000000A  E0C1              loopne 0xffcd
0000000C  E2C1              loop 0xffcf
0000000E  FC                cld
0000000F  C1FEC1            sar si,byte 0xc1
00000012  27                daa
00000013  C269C2            ret word 0xc269
00000016  05FFFF            add ax,0xffff
00000019  000C              add [si],cl
0000001B  0000              add [bx+si],al
0000001D  DEC1              faddp st1
0000001F  8D                db 0x8d
00000020  D0D1              rcl cl,0x0
00000022  D6                salc
00000023  C7                db 0xc7
00000024  CB                retf
00000025  76C6              jna 0xffed
00000027  46                inc si
00000028  CB                retf
00000029  C7                db 0xc7
0000002A  A4                movsb
0000002B  8D                db 0x8d
0000002C  D0D7              rcl bh,0x0
0000002E  C3                ret
0000002F  C4                db 0xc4
00000030  CB                retf
00000031  C5                db 0xc5
00000032  C9                leave
00000033  07                pop es
00000034  07                pop es
00000035  A4                movsb
00000036  8D                db 0x8d
00000037  C3                ret
00000038  C7                db 0xc7
00000039  4A                dec dx
0000003A  C8C74AC7          enter word 0x4ac7,byte 0xc7
0000003E  CB                retf
0000003F  C7                db 0xc7
00000040  CB                retf
00000041  56                push si
00000042  A4                movsb
00000043  8D                db 0x8d
00000044  C466C9            les sp,word [bp-0x37]
00000047  0807              or [bx],al
00000049  A4                movsb
0000004A  8D                db 0x8d
0000004B  C3                ret
0000004C  CB                retf
0000004D  46                inc si
0000004E  4A                dec dx
0000004F  C5                db 0xc5
00000050  CB                retf
00000051  56                push si
00000052  CB                retf
00000053  56                push si
00000054  A4                movsb
00000055  8D                db 0x8d
00000056  C3                ret
00000057  46                inc si
00000058  C8011981          enter word 0x1901,byte 0x81
0000005C  C446C9            les ax,word [bp-0x37]
0000005F  46                inc si
00000060  C5                db 0xc5
00000061  C7                db 0xc7
00000062  A4                movsb
00000063  8EC4              mov es,sp
00000065  CB                retf
00000066  D8D9              fcomp st1
00000068  82                db 0x82
00000069  C4                db 0xc4
0000006A  C7                db 0xc7
0000006B  C9                leave
0000006C  C7                db 0xc7
0000006D  CB                retf
0000006E  56                push si
0000006F  A4                movsb
00000070  94                xchg ax,sp
00000071  C3                ret
00000072  66C646A494        o32 mov byte [bp-0x5c],0x94
00000077  C3                ret
00000078  C60507            mov byte [di],0x7
0000007B  A4                movsb
0000007C  94                xchg ax,sp
0000007D  C446C5            les ax,word [bp-0x3b]
00000080  46                inc si
00000081  C9                leave
00000082  C7                db 0xc7
00000083  A4                movsb
00000084  94                xchg ax,sp
00000085  C4                db 0xc4
00000086  CC                int3
00000087  0119              add [bx+di],bx
00000089  D846CB            fadd dword [bp-0x35]
0000008C  A4                movsb
0000008D  99                cwd
0000008E  C3                ret
0000008F  46                inc si
00000090  A4                movsb
00000091  99                cwd
00000092  C3                ret
00000093  46                inc si
00000094  A4                movsb
00000095  99                cwd
00000096  C3                ret
00000097  46                inc si
00000098  A4                movsb
00000099  99                cwd
0000009A  C4                db 0xc4
0000009B  C9                leave
0000009C  C7                db 0xc7
0000009D  A4                movsb
0000009E  99                cwd
0000009F  C3                ret
000000A0  C7                db 0xc7
000000A1  C9                leave
000000A2  A4                movsb
000000A3  99                cwd
000000A4  C3                ret
000000A5  46                inc si
000000A6  A4                movsb
000000A7  99                cwd
000000A8  C3                ret
000000A9  46                inc si
000000AA  A4                movsb
000000AB  99                cwd
000000AC  C3                ret
000000AD  C5                db 0xc5
000000AE  C7                db 0xc7
000000AF  A4                movsb
000000B0  99                cwd
000000B1  C3                ret
000000B2  46                inc si
000000B3  A4                movsb
000000B4  99                cwd
000000B5  C446A4            les ax,word [bp-0x5c]
000000B8  99                cwd
000000B9  C3                ret
000000BA  46                inc si
000000BB  A4                movsb
000000BC  99                cwd
000000BD  C3                ret
000000BE  46                inc si
000000BF  A4                movsb
000000C0  99                cwd
000000C1  C3                ret
000000C2  C7                db 0xc7
000000C3  C9                leave
000000C4  A4                movsb
000000C5  99                cwd
000000C6  C3                ret
000000C7  C5                db 0xc5
000000C8  C7                db 0xc7
000000C9  A4                movsb
000000CA  99                cwd
000000CB  C3                ret
000000CC  46                inc si
000000CD  A4                movsb
000000CE  99                cwd
000000CF  C3                ret
000000D0  C9                leave
000000D1  C7                db 0xc7
000000D2  A4                movsb
000000D3  99                cwd
000000D4  C3                ret
000000D5  46                inc si
000000D6  A4                movsb
000000D7  99                cwd
000000D8  C3                ret
000000D9  46                inc si
000000DA  A4                movsb
000000DB  99                cwd
000000DC  C446A4            les ax,word [bp-0x5c]
000000DF  99                cwd
000000E0  C3                ret
000000E1  46                inc si
000000E2  A4                movsb
000000E3  99                cwd
000000E4  C3                ret
000000E5  46                inc si
000000E6  A4                movsb
000000E7  99                cwd
000000E8  C3                ret
000000E9  46                inc si
000000EA  A4                movsb
000000EB  99                cwd
000000EC  C3                ret
000000ED  C7C5A499          mov bp,0x99a4
000000F1  C3                ret
000000F2  46                inc si
000000F3  A4                movsb
000000F4  99                cwd
000000F5  C446A4            les ax,word [bp-0x5c]
000000F8  99                cwd
000000F9  C3                ret
000000FA  46                inc si
000000FB  A4                movsb
000000FC  99                cwd
000000FD  C3                ret
000000FE  C7                db 0xc7
000000FF  C9                leave
00000100  A4                movsb
00000101  99                cwd
00000102  C3                ret
00000103  46                inc si
00000104  A4                movsb
00000105  99                cwd
00000106  C3                ret
00000107  46                inc si
00000108  A4                movsb
00000109  99                cwd
0000010A  C3                ret
0000010B  46                inc si
0000010C  A4                movsb
0000010D  99                cwd
0000010E  C3                ret
0000010F  46                inc si
00000110  A4                movsb
00000111  99                cwd
00000112  C3                ret
00000113  46                inc si
00000114  A4                movsb
00000115  99                cwd
00000116  C3                ret
00000117  46                inc si
00000118  A4                movsb
00000119  99                cwd
0000011A  C3                ret
0000011B  C5                db 0xc5
0000011C  C7                db 0xc7
0000011D  A4                movsb
0000011E  99                cwd
0000011F  C3                ret
00000120  46                inc si
00000121  A4                movsb
00000122  99                cwd
00000123  C3                ret
00000124  C9                leave
00000125  C7                db 0xc7
00000126  A4                movsb
00000127  99                cwd
00000128  C446A4            les ax,word [bp-0x5c]
0000012B  99                cwd
0000012C  C3                ret
0000012D  46                inc si
0000012E  A4                movsb
0000012F  99                cwd
00000130  C3                ret
00000131  46                inc si
00000132  A4                movsb
00000133  99                cwd
00000134  C3                ret
00000135  C7C5A499          mov bp,0x99a4
00000139  C3                ret
0000013A  46                inc si
0000013B  A4                movsb
0000013C  99                cwd
0000013D  C3                ret
0000013E  46                inc si
0000013F  A4                movsb
00000140  99                cwd
00000141  C3                ret
00000142  46                inc si
00000143  A4                movsb
00000144  99                cwd
00000145  C3                ret
00000146  46                inc si
00000147  A4                movsb
00000148  99                cwd
00000149  C4                db 0xc4
0000014A  C7                db 0xc7
0000014B  C9                leave
0000014C  A4                movsb
0000014D  99                cwd
0000014E  C3                ret
0000014F  46                inc si
00000150  A4                movsb
00000151  99                cwd
00000152  C3                ret
00000153  C9                leave
00000154  C7                db 0xc7
00000155  A4                movsb
00000156  99                cwd
00000157  C3                ret
00000158  46                inc si
00000159  A4                movsb
0000015A  99                cwd
0000015B  C3                ret
0000015C  46                inc si
0000015D  A4                movsb
0000015E  99                cwd
0000015F  C3                ret
00000160  C5                db 0xc5
00000161  C7                db 0xc7
00000162  A4                movsb
00000163  94                xchg ax,sp
00000164  C3                ret
00000165  C6                db 0xc6
00000166  D9                db 0xd9
00000167  D88156A4          fadd dword [bx+di-0x5baa]
0000016B  94                xchg ax,sp
0000016C  C4                db 0xc4
0000016D  C7                db 0xc7
0000016E  C8D866A4          enter word 0x66d8,byte 0xa4
00000172  94                xchg ax,sp
00000173  C3                ret
00000174  C7                db 0xc7
00000175  D8C9              fmul st1
00000177  66A4              o32 movsb
00000179  94                xchg ax,sp
0000017A  C3                ret
0000017B  C7                db 0xc7
0000017C  C9                leave
0000017D  C7                db 0xc7
0000017E  4A                dec dx
0000017F  46                inc si
00000180  A4                movsb
00000181  8D                db 0x8d
00000182  CDCE              int byte 0xce
00000184  CF                iret
00000185  C3                ret
00000186  D9                db 0xd9
00000187  D881C406          fadd dword [bx+di+0x6c4]
0000018B  07                pop es
0000018C  A4                movsb
0000018D  8D                db 0x8d
0000018E  D0D1              rcl cl,0x0
00000190  D2C3              rol bl,cl
00000192  CB                retf
00000193  C5                db 0xc5
00000194  CB                retf
00000195  46                inc si
00000196  CB                retf
00000197  C6C556            mov ch,0x56
0000019A  A4                movsb
0000019B  8D                db 0x8d
0000019C  D0D1              rcl cl,0x0
0000019E  D6                salc
0000019F  46                inc si
000001A0  C5                db 0xc5
000001A1  CB                retf
000001A2  0507CB            add ax,0xcb07
000001A5  C7                db 0xc7
000001A6  A4                movsb
000001A7  8D                db 0x8d
000001A8  D0D1              rcl cl,0x0
000001AA  D2C5              rol ch,cl
000001AC  CB                retf
000001AD  46                inc si
000001AE  CB                retf
000001AF  66C846A48D        enterd word 0xa446,byte 0x8d
000001B4  D0D1              rcl cl,0x0
000001B6  D6                salc
000001B7  C7                db 0xc7
000001B8  4A                dec dx
000001B9  C646CBC9          mov byte [bp-0x35],0xc9
000001BD  46                inc si
000001BE  C5                db 0xc5
000001BF  C7                db 0xc7
000001C0  A4                movsb
000001C1  8D                db 0x8d
000001C2  D0D1              rcl cl,0x0
000001C4  D2C5              rol ch,cl
000001C6  CB                retf
000001C7  46                inc si
000001C8  C9                leave
000001C9  06                push es
000001CA  07                pop es
000001CB  A4                movsb
000001CC  8D                db 0x8d
000001CD  D0D7              rcl bh,0x0
000001CF  D6                salc
000001D0  C405              les ax,word [di]
000001D2  07                pop es
000001D3  C566A4            lds sp,word [bp-0x5c]
000001D6  8D                db 0x8d
000001D7  D0D1              rcl cl,0x0
000001D9  D2C3              rol bl,cl
000001DB  C5                db 0xc5
000001DC  CB                retf
000001DD  46                inc si
000001DE  CB                retf
000001DF  0507A4            add ax,0xa407
000001E2  FF                db 0xff
000001E3  FF                db 0xff
000001E4  FF                db 0xff
000001E5  FF                db 0xff
000001E6  FF                db 0xff
000001E7  FF11              call word near [bx+di]
000001E9  0015              add [di],dl
000001EB  C10C9D            ror word [si],byte 0x9d
000001EE  0010              add [bx+si],dl
000001F0  00FF              add bh,bh
000001F2  FF                db 0xff
000001F3  FF34              push word [si]
000001F5  0015              add [di],dl
000001F7  82                db 0x82
000001F8  0E                push cs
000001F9  0E                push cs
000001FA  0005              add [di],al
000001FC  802400            and byte [si],0x0
000001FF  04FF              add al,0xff
00000201  FF24              jmp word near [si]
00000203  0008              add [bx+si],cl
00000205  57                push di
00000206  C2FFFF            ret word 0xffff
00000209  FF                db 0xff
0000020A  FF24              jmp word near [si]
0000020C  0004              add [si],al
0000020E  F7C10500          test cx,0x5
00000212  FF                db 0xff
00000213  FF20              jmp word near [bx+si]
00000215  00FF              add bh,bh
00000217  10C0              adc al,al
00000219  57                push di
0000021A  C20AC0            ret word 0xc00a
0000021D  E4C1              in al,byte 0xc1
0000021F  40                inc ax
00000220  C20808            ret word 0x808
00000223  3DC211            cmp ax,0x11c2
00000226  00FF              add bh,bh
00000228  FF                db 0xff
00000229  FF                db 0xff
0000022A  FF16AF00          call word near [0xaf]
0000022E  124361            adc al,[bp+di+0x61]
00000231  7665              jna 0x298
00000233  726E              jc 0x2a3
00000235  206F66            and [bx+0x66],ch
00000238  204365            and [bp+di+0x65],al
0000023B  6D                insw
0000023C  656E              gs outsb
0000023E  7461              jz 0x2a1
00000240  7299              jc 0x1db
00000242  0004              add [si],al
00000244  09FF              or di,di
00000246  0908              or [bx+si],cx
00000248  0810              or [bx+si],dl
0000024A  C057C20A          rcl byte [bx-0x3e],byte 0xa
0000024E  C0                db 0xc0
0000024F  F0                lock
00000250  C159C20D          rcr word [bx+di-0x3e],byte 0xd
00000254  FF20              jmp word near [bx+si]
00000256  00FF              add bh,bh
00000258  FF                db 0xff
00000259  FF                db 0xff
0000025A  FF21              jmp word near [bx+di]
0000025C  0017              add [bx],dl
0000025E  FF                db 0xff
0000025F  7900              jns 0x261
00000261  0020              add [bx+si],ah
00000263  0000              add [bx+si],al
00000265  0024              add [si],ah
00000267  0008              add [bx+si],cl
00000269  0000              add [bx+si],al
0000026B  FF                db 0xff
0000026C  FF                db 0xff
0000026D  FF                db 0xff
0000026E  FF                db 0xff
