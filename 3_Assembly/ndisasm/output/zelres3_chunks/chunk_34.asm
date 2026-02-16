00000000  011D              add [di],bx
00000002  0000              add [bx+si],al
00000004  2AD9              sub bl,cl
00000006  40                inc ax
00000007  0145D7            add [di-0x29],ax
0000000A  59                pop cx
0000000B  D7                xlatb
0000000C  5B                pop bx
0000000D  D7                xlatb
0000000E  BFD769            mov di,0x69d7
00000011  D816D92F          fcom dword [0x2fd9]
00000015  D9063501          fld dword [0x135]
00000019  2A0A              sub cl,[bp+si]
0000001B  0000              add [bx+si],al
0000001D  45                inc bp
0000001E  D7                xlatb
0000001F  C488C3C4          les cx,word [bx+si-0x3b3d]
00000023  C7                db 0xc7
00000024  C9                leave
00000025  CA8AC3            retf word 0xc38a
00000028  53                push bx
00000029  85C3              test bx,ax
0000002B  6387C3C4          arpl [bx-0x3b3d],ax
0000002F  85C3              test bx,ax
00000031  43                inc bx
00000032  86C3              xchg al,bl
00000034  43                inc bx
00000035  C402              les ax,word [bp+si]
00000037  205301            and [bp+di+0x1],dl
0000003A  2043C9            and [bp+di-0x37],al
0000003D  CAC9CB            retf word 0xcbc9
00000040  89C3              mov bx,ax
00000042  53                push bx
00000043  85C3              test bx,ax
00000045  53                push bx
00000046  DD87C3C4          fld qword [bx-0x3b3d]
0000004A  85C3              test bx,ax
0000004C  43                inc bx
0000004D  86C3              xchg al,bl
0000004F  43                inc bx
00000050  63DD              arpl bp,bx
00000052  0504C7            add ax,0xc704
00000055  59                pop cx
00000056  89C3              mov bx,ax
00000058  53                push bx
00000059  85C3              test bx,ax
0000005B  0804              or [si],al
0000005D  E053              loopne 0xb2
0000005F  85C3              test bx,ax
00000061  C4                db 0xc4
00000062  E086              loopne 0xffea
00000064  C3                ret
00000065  43                inc bx
00000066  43                inc bx
00000067  DD08              fisttp qword [bx+si]
00000069  04C7              add al,0xc7
0000006B  C9                leave
0000006C  CB                retf
0000006D  89C3              mov bx,ax
0000006F  C487C30C          les ax,word [bx+0xcc3]
00000073  048E              add al,0x8e
00000075  C3                ret
00000076  43                inc bx
00000077  0B04              or ax,[si]
00000079  C7                db 0xc7
0000007A  CACB89            retf word 0x89cb
0000007D  C3                ret
0000007E  C487C30C          les ax,word [bx+0xcc3]
00000082  0451              add al,0x51
00000084  C1516041          rcl word [bx+di+0x60],byte 0x41
00000088  81C34306          add bx,0x643
0000008C  04DD              add al,0xdd
0000008E  53                push bx
0000008F  C7                db 0xc7
00000090  48                dec ax
00000091  CACB88            retf word 0x88cb
00000094  C3                ret
00000095  C487C305          les ax,word [bx+0x5c3]
00000099  04E0              add al,0xe0
0000009B  63E0              arpl ax,sp
0000009D  C48EC343          les cx,word [bp+0x43c3]
000000A1  73DD              jnc 0x80
000000A3  0504C7            add ax,0xc704
000000A6  C8CACB88          enter word 0xcbca,byte 0x88
000000AA  C3                ret
000000AB  C487C363          les ax,word [bx+0x63c3]
000000AF  97                xchg ax,di
000000B0  C3                ret
000000B1  43                inc bx
000000B2  C401              les ax,word [bx+di]
000000B4  206301            and [bp+di+0x1],ah
000000B7  2063C7            and [bp+di-0x39],ah
000000BA  CACB88            retf word 0x88cb
000000BD  C3                ret
000000BE  C485C363          les ax,word [di+0x63c3]
000000C2  011D              add [di],bx
000000C4  97                xchg ax,di
000000C5  C3                ret
000000C6  43                inc bx
000000C7  C488C343          les cx,word [bx+si+0x43c3]
000000CB  C7                db 0xc7
000000CC  C9                leave
000000CD  CACB88            retf word 0x88cb
000000D0  C8C485C3          enter word 0x85c4,byte 0xc3
000000D4  050487            add ax,0x8704
000000D7  C3                ret
000000D8  C4                db 0xc4
000000D9  E0C4              loopne 0x9f
000000DB  E043              loopne 0x120
000000DD  E0C4              loopne 0xa3
000000DF  87C3              xchg ax,bx
000000E1  43                inc bx
000000E2  DD88C353          fisttp qword [bx+si+0x53c3]
000000E6  C9                leave
000000E7  49                dec cx
000000E8  88C9              mov cl,cl
000000EA  C485C305          les ax,word [di+0x5c3]
000000EE  0487              add al,0x87
000000F0  C3                ret
000000F1  07                pop es
000000F2  0487              add al,0x87
000000F4  C3                ret
000000F5  43                inc bx
000000F6  C488C3C4          les cx,word [bx+si-0x3b3d]
000000FA  C7                db 0xc7
000000FB  C8C7CACB          enter word 0xcac7,byte 0xcb
000000FF  84C3              test bl,al
00000101  82                db 0x82
00000102  CC                int3
00000103  C8C485C3          enter word 0x85c4,byte 0xc3
00000107  050487            add ax,0x8704
0000010A  C3                ret
0000010B  07                pop es
0000010C  0487              add al,0x87
0000010E  C3                ret
0000010F  43                inc bx
00000110  C488C363          les cx,word [bx+si+0x63c3]
00000114  C8C984C3          enter word 0x84c9,byte 0xc3
00000118  CACBC9            retf word 0xc9cb
0000011B  C8C485C3          enter word 0x85c4,byte 0xc3
0000011F  63DD              arpl bp,bx
00000121  C487C307          les ax,word [bx+0x7c3]
00000125  0487              add al,0x87
00000127  C3                ret
00000128  43                inc bx
00000129  C488C3C4          les cx,word [bx+si-0x3b3d]
0000012D  DDC4              ffree st4
0000012F  C7                db 0xc7
00000130  C84383C3          enter word 0x8343,byte 0xc3
00000134  C7                db 0xc7
00000135  48                dec ax
00000136  C8C485C3          enter word 0x85c4,byte 0xc3
0000013A  050487            add ax,0x8704
0000013D  C3                ret
0000013E  63DD              arpl bp,bx
00000140  43                inc bx
00000141  DD87C343          fld qword [bx+0x43c3]
00000145  C488C373          les cx,word [bx+si+0x73c3]
00000149  85C3              test bx,ax
0000014B  C8CD48C4          enter word 0x48cd,byte 0xc4
0000014F  85C3              test bx,ax
00000151  050487            add ax,0x8704
00000154  C3                ret
00000155  63DD              arpl bp,bx
00000157  53                push bx
00000158  87C3              xchg ax,bx
0000015A  43                inc bx
0000015B  C488C363          les cx,word [bx+si+0x63c3]
0000015F  89CD              mov bp,cx
00000161  C8C485C3          enter word 0x85c4,byte 0xc3
00000165  050487            add ax,0x8704
00000168  C3                ret
00000169  63DD              arpl bp,bx
0000016B  53                push bx
0000016C  87C3              xchg ax,bx
0000016E  43                inc bx
0000016F  C488C343          les cx,word [bx+si+0x43c3]
00000173  8CC9              mov cx,cs
00000175  C485C305          les ax,word [di+0x5c3]
00000179  0487              add al,0x87
0000017B  C3                ret
0000017C  07                pop es
0000017D  0487              add al,0x87
0000017F  C3                ret
00000180  43                inc bx
00000181  C488C343          les cx,word [bx+si+0x43c3]
00000185  8CCD              mov bp,cs
00000187  C485C305          les ax,word [di+0x5c3]
0000018B  0487              add al,0x87
0000018D  C3                ret
0000018E  07                pop es
0000018F  0487              add al,0x87
00000191  C3                ret
00000192  43                inc bx
00000193  C488C363          les cx,word [bx+si+0x63c3]
00000197  8BC4              mov ax,sp
00000199  85C3              test bx,ax
0000019B  C4                db 0xc4
0000019C  DD53DD            fst qword [bp+di-0x23]
0000019F  87C3              xchg ax,bx
000001A1  050489            add ax,0x8904
000001A4  C3                ret
000001A5  43                inc bx
000001A6  C488C363          les cx,word [bx+si+0x63c3]
000001AA  8ACC              mov cl,ah
000001AC  C485C305          les ax,word [di+0x5c3]
000001B0  0487              add al,0x87
000001B2  C3                ret
000001B3  43                inc bx
000001B4  DD5389            fst qword [bp+di-0x77]
000001B7  C3                ret
000001B8  43                inc bx
000001B9  DD88C343          fisttp qword [bx+si+0x43c3]
000001BD  DDC4              ffree st4
000001BF  8AC3              mov al,bl
000001C1  C485C305          les ax,word [di+0x5c3]
000001C5  0487              add al,0x87
000001C7  D807              fadd dword [bx]
000001C9  0487              add al,0x87
000001CB  C3                ret
000001CC  43                inc bx
000001CD  C488C343          les cx,word [bx+si+0x43c3]
000001D1  8CC3              mov bx,es
000001D3  C485C305          les ax,word [di+0x5c3]
000001D7  0488              add al,0x88
000001D9  D863DD            fsub dword [bp+di-0x23]
000001DC  43                inc bx
000001DD  87C3              xchg ax,bx
000001DF  43                inc bx
000001E0  C488C3DD          les cx,word [bx+si-0x223d]
000001E4  C48CC3DD          les cx,word [si-0x223d]
000001E8  85C3              test bx,ax
000001EA  050489            add ax,0x8904
000001ED  D805              fadd dword [di]
000001EF  0487              add al,0x87
000001F1  C3                ret
000001F2  43                inc bx
000001F3  C488C3DD          les cx,word [bx+si-0x223d]
000001F7  C48BC30D          les cx,word [bp+di+0xdc3]
000001FB  04E0              add al,0xe0
000001FD  53                push bx
000001FE  86D8              xchg bl,al
00000200  7387              jnc 0x189
00000202  C3                ret
00000203  43                inc bx
00000204  C488C343          les cx,word [bx+si+0x43c3]
00000208  85C3              test bx,ax
0000020A  85C3              test bx,ax
0000020C  0A04              or al,[si]
0000020E  DD05              fld qword [di]
00000210  0487              add al,0x87
00000212  D86387            fsub dword [bp+di-0x79]
00000215  C3                ret
00000216  011D              add [di],bx
00000218  89C3              mov bx,ax
0000021A  43                inc bx
0000021B  85C3              test bx,ax
0000021D  C484C373          les ax,word [si+0x73c3]
00000221  E073              loopne 0x296
00000223  DD05              fld qword [di]
00000225  0488              add al,0x88
00000227  C3                ret
00000228  53                push bx
00000229  8AC2              mov al,dl
0000022B  40                inc ax
0000022C  51                push cx
0000022D  40                inc ax
0000022E  81C34385          add bx,0x8543
00000232  C3                ret
00000233  C484C353          les ax,word [si+0x53c3]
00000237  85C3              test bx,ax
00000239  0804              or [si],al
0000023B  88C3              mov bl,al
0000023D  DD4350            fld qword [bp+di+0x50]
00000240  51                push cx
00000241  60                pusha
00000242  89C3              mov bx,ax
00000244  43                inc bx
00000245  85C3              test bx,ax
00000247  C484C353          les ax,word [si+0x53c3]
0000024B  85C3              test bx,ax
0000024D  0504E0            add ax,0xe004
00000250  43                inc bx
00000251  88C3              mov bl,al
00000253  53                push bx
00000254  8A89C343          mov cl,[bx+di+0x43c3]
00000258  8BC3              mov ax,bx
0000025A  53                push bx
0000025B  85C3              test bx,ax
0000025D  53                push bx
0000025E  85C3              test bx,ax
00000260  88C3              mov bl,al
00000262  43                inc bx
00000263  E08A              loopne 0x1ef
00000265  89C3              mov bx,ax
00000267  43                inc bx
00000268  C1C250            rol dx,byte 0x50
0000026B  C26081            ret word 0x8160
0000026E  C3                ret
0000026F  53                push bx
00000270  85C3              test bx,ax
00000272  53                push bx
00000273  85C3              test bx,ax
00000275  88C3              mov bl,al
00000277  43                inc bx
00000278  E08A              loopne 0x204
0000027A  89C3              mov bx,ax
0000027C  43                inc bx
0000027D  8BC3              mov ax,bx
0000027F  53                push bx
00000280  85C3              test bx,ax
00000282  43                inc bx
00000283  DD85C353          fld qword [di+0x53c3]
00000287  85C3              test bx,ax
00000289  43                inc bx
0000028A  E08A              loopne 0x216
0000028C  89C3              mov bx,ax
0000028E  43                inc bx
0000028F  8BC3              mov ax,bx
00000291  53                push bx
00000292  85C3              test bx,ax
00000294  53                push bx
00000295  85C3              test bx,ax
00000297  53                push bx
00000298  85C3              test bx,ax
0000029A  53                push bx
0000029B  8A89C343          mov cl,[bx+di+0x43c3]
0000029F  8BC3              mov ax,bx
000002A1  53                push bx
000002A2  85C3              test bx,ax
000002A4  DD87C353          fld qword [bx+0x53c3]
000002A8  85C3              test bx,ax
000002AA  53                push bx
000002AB  8A89C343          mov cl,[bx+di+0x43c3]
000002AF  8BC3              mov ax,bx
000002B1  53                push bx
000002B2  85C3              test bx,ax
000002B4  C487C3C4          les ax,word [bx-0x3b3d]
000002B8  DDC4              ffree st4
000002BA  85C3              test bx,ax
000002BC  43                inc bx
000002BD  E08A              loopne 0x249
000002BF  89C3              mov bx,ax
000002C1  43                inc bx
000002C2  8BC3              mov ax,bx
000002C4  C4                db 0xc4
000002C5  DDC4              ffree st4
000002C7  85C3              test bx,ax
000002C9  C487C343          les ax,word [bx+0x43c3]
000002CD  E085              loopne 0x254
000002CF  C3                ret
000002D0  53                push bx
000002D1  8A89C3C4          mov cl,[bx+di-0x3b3d]
000002D5  DD8BC353          fisttp qword [bp+di+0x53c3]
000002D9  85C3              test bx,ax
000002DB  C487C353          les ax,word [bx+0x53c3]
000002DF  85C3              test bx,ax
000002E1  53                push bx
000002E2  8A89C343          mov cl,[bx+di+0x43c3]
000002E6  8BC3              mov ax,bx
000002E8  53                push bx
000002E9  85C3              test bx,ax
000002EB  C487C353          les ax,word [bx+0x53c3]
000002EF  85C3              test bx,ax
000002F1  53                push bx
000002F2  8A4387            mov al,[bp+di-0x79]
000002F5  C3                ret
000002F6  8D                db 0x8d
000002F7  C3                ret
000002F8  53                push bx
000002F9  85E0              test ax,sp
000002FB  C487C373          les ax,word [bx+0x73c3]
000002FF  E005              loopne 0x306
00000301  04E0              add al,0xe0
00000303  53                push bx
00000304  84C3              test bl,al
00000306  C44387            les ax,word [bp+di-0x79]
00000309  C3                ret
0000030A  8D                db 0x8d
0000030B  C3                ret
0000030C  53                push bx
0000030D  8EC3              mov es,bx
0000030F  0F                db 0x0f
00000310  0484              add al,0x84
00000312  C3                ret
00000313  C44387            les ax,word [bp+di-0x79]
00000316  C3                ret
00000317  43                inc bx
00000318  8BC3              mov ax,bx
0000031A  53                push bx
0000031B  8EC3              mov es,bx
0000031D  0F                db 0x0f
0000031E  0484              add al,0x84
00000320  C3                ret
00000321  C44387            les ax,word [bp+di-0x79]
00000324  C3                ret
00000325  43                inc bx
00000326  8BC3              mov ax,bx
00000328  53                push bx
00000329  8EC3              mov es,bx
0000032B  0E                push cs
0000032C  04DD              add al,0xdd
0000032E  84C3              test bl,al
00000330  C44387            les ax,word [bp+di-0x79]
00000333  C3                ret
00000334  43                inc bx
00000335  8BC3              mov ax,bx
00000337  53                push bx
00000338  8EC3              mov es,bx
0000033A  0504E0            add ax,0xe004
0000033D  0804              or [si],al
0000033F  84C3              test bl,al
00000341  C44387            les ax,word [bp+di-0x79]
00000344  C3                ret
00000345  C4                db 0xc4
00000346  DD8BC353          fisttp qword [bp+di+0x53c3]
0000034A  8EC3              mov es,bx
0000034C  53                push bx
0000034D  89C3              mov bx,ax
0000034F  53                push bx
00000350  84C3              test bl,al
00000352  DD4387            fld qword [bp+di-0x79]
00000355  C3                ret
00000356  43                inc bx
00000357  84C3              test bl,al
00000359  43                inc bx
0000035A  84C3              test bl,al
0000035C  53                push bx
0000035D  8EC3              mov es,bx
0000035F  53                push bx
00000360  89C3              mov bx,ax
00000362  53                push bx
00000363  84C3              test bl,al
00000365  C4438E            les ax,word [bp+di-0x72]
00000368  C3                ret
00000369  C4                db 0xc4
0000036A  DD84C353          fld qword [si+0x53c3]
0000036E  85C3              test bx,ax
00000370  E087              loopne 0x2f9
00000372  C3                ret
00000373  53                push bx
00000374  89C3              mov bx,ax
00000376  43                inc bx
00000377  DD84C3C4          fld qword [si-0x3b3d]
0000037B  43                inc bx
0000037C  C24051            ret word 0x5140
0000037F  40                inc ax
00000380  41                inc cx
00000381  50                push ax
00000382  81C3C4DD          add bx,0xddc4
00000386  84C3              test bl,al
00000388  53                push bx
00000389  85C3              test bx,ax
0000038B  C487C3C4          les ax,word [bx-0x3b3d]
0000038F  011D              add [di],bx
00000391  89C3              mov bx,ax
00000393  DD4384            fld qword [bp+di-0x7c]
00000396  C3                ret
00000397  C4438E            les ax,word [bp+di-0x72]
0000039A  C3                ret
0000039B  43                inc bx
0000039C  84C3              test bl,al
0000039E  53                push bx
0000039F  85C3              test bx,ax
000003A1  C487C3C4          les ax,word [bx-0x3b3d]
000003A5  DDC4              ffree st4
000003A7  89C3              mov bx,ax
000003A9  53                push bx
000003AA  84C3              test bl,al
000003AC  C44387            les ax,word [bp+di-0x79]
000003AF  C3                ret
000003B0  43                inc bx
000003B1  84C3              test bl,al
000003B3  43                inc bx
000003B4  84C3              test bl,al
000003B6  53                push bx
000003B7  85C3              test bx,ax
000003B9  43                inc bx
000003BA  E085              loopne 0x341
000003BC  C3                ret
000003BD  53                push bx
000003BE  89C3              mov bx,ax
000003C0  53                push bx
000003C1  84C3              test bl,al
000003C3  C4                db 0xc4
000003C4  C4                db 0xc4
000003C5  DD87C343          fld qword [bx+0x43c3]
000003C9  84C3              test bl,al
000003CB  43                inc bx
000003CC  84C3              test bl,al
000003CE  43                inc bx
000003CF  DD85C353          fld qword [di+0x53c3]
000003D3  85C3              test bx,ax
000003D5  C48BC3C4          les cx,word [bp+di-0x3b3d]
000003D9  DDC4              ffree st4
000003DB  84C3              test bl,al
000003DD  C44387            les ax,word [bp+di-0x79]
000003E0  C3                ret
000003E1  E0C4              loopne 0x3a7
000003E3  84C3              test bl,al
000003E5  C4                db 0xc4
000003E6  DD84C353          fld qword [si+0x53c3]
000003EA  85C3              test bx,ax
000003EC  53                push bx
000003ED  85C3              test bx,ax
000003EF  C48BC3C4          les cx,word [bp+di-0x3b3d]
000003F3  86C3              xchg al,bl
000003F5  C4438E            les ax,word [bp+di-0x72]
000003F8  C3                ret
000003F9  43                inc bx
000003FA  84C3              test bl,al
000003FC  53                push bx
000003FD  85C3              test bx,ax
000003FF  53                push bx
00000400  85C3              test bx,ax
00000402  C44071            les ax,word [bx+si+0x71]
00000405  40                inc ax
00000406  C281C3            ret word 0xc381
00000409  C486C3C4          les ax,word [bp-0x3b3d]
0000040D  43                inc bx
0000040E  8EC3              mov es,bx
00000410  43                inc bx
00000411  84C3              test bl,al
00000413  53                push bx
00000414  85C3              test bx,ax
00000416  C4                db 0xc4
00000417  DDC4              ffree st4
00000419  85C3              test bx,ax
0000041B  8CC3              mov bx,es
0000041D  C486C3C4          les ax,word [bp-0x3b3d]
00000421  43                inc bx
00000422  8EC3              mov es,bx
00000424  43                inc bx
00000425  84C3              test bl,al
00000427  C487C353          les ax,word [bx+0x53c3]
0000042B  85C3              test bx,ax
0000042D  85C3              test bx,ax
0000042F  C5                db 0xc5
00000430  C48CC3C4          les cx,word [si-0x3b3d]
00000434  43                inc bx
00000435  8EC3              mov es,bx
00000437  43                inc bx
00000438  84C3              test bl,al
0000043A  C487C353          les ax,word [bx+0x53c3]
0000043E  85C5              test bp,ax
00000440  85C3              test bx,ax
00000442  43                inc bx
00000443  8CC3              mov bx,es
00000445  C4438E            les ax,word [bp+di-0x72]
00000448  C3                ret
00000449  43                inc bx
0000044A  84C3              test bl,al
0000044C  53                push bx
0000044D  85C3              test bx,ax
0000044F  53                push bx
00000450  8BC3              mov ax,bx
00000452  43                inc bx
00000453  8CC3              mov bx,es
00000455  C4438E            les ax,word [bp+di-0x72]
00000458  C3                ret
00000459  43                inc bx
0000045A  84C3              test bl,al
0000045C  53                push bx
0000045D  85C3              test bx,ax
0000045F  53                push bx
00000460  8BC3              mov ax,bx
00000462  43                inc bx
00000463  8CC3              mov bx,es
00000465  C4438E            les ax,word [bp+di-0x72]
00000468  C3                ret
00000469  43                inc bx
0000046A  84C3              test bl,al
0000046C  53                push bx
0000046D  85C3              test bx,ax
0000046F  DD438B            fld qword [bp+di-0x75]
00000472  C3                ret
00000473  43                inc bx
00000474  8CC3              mov bx,es
00000476  C4438E            les ax,word [bp+di-0x72]
00000479  C3                ret
0000047A  DDC4              ffree st4
0000047C  84C3              test bl,al
0000047E  53                push bx
0000047F  85C3              test bx,ax
00000481  53                push bx
00000482  8BC3              mov ax,bx
00000484  43                inc bx
00000485  8CC3              mov bx,es
00000487  C4438E            les ax,word [bp+di-0x72]
0000048A  C3                ret
0000048B  43                inc bx
0000048C  84C3              test bl,al
0000048E  E043              loopne 0x4d3
00000490  85C3              test bx,ax
00000492  53                push bx
00000493  8BC3              mov ax,bx
00000495  43                inc bx
00000496  8CC3              mov bx,es
00000498  C44387            les ax,word [bp+di-0x79]
0000049B  C3                ret
0000049C  96                xchg ax,si
0000049D  C3                ret
0000049E  53                push bx
0000049F  8BC3              mov ax,bx
000004A1  43                inc bx
000004A2  8CC3              mov bx,es
000004A4  DD4387            fld qword [bp+di-0x79]
000004A7  C3                ret
000004A8  40                inc ax
000004A9  41                inc cx
000004AA  50                push ax
000004AB  C26051            ret word 0x5160
000004AE  60                pusha
000004AF  41                inc cx
000004B0  81C3538B          add bx,0x8b53
000004B4  C3                ret
000004B5  C4                db 0xc4
000004B6  DD8CC3C4          fisttp qword [si-0x3b3d]
000004BA  43                inc bx
000004BB  87C3              xchg ax,bx
000004BD  96                xchg ax,si
000004BE  C3                ret
000004BF  53                push bx
000004C0  8BC3              mov ax,bx
000004C2  43                inc bx
000004C3  8CC3              mov bx,es
000004C5  C4                db 0xc4
000004C6  DDC4              ffree st4
000004C8  87C3              xchg ax,bx
000004CA  53                push bx
000004CB  8AC3              mov al,bl
000004CD  53                push bx
000004CE  85C3              test bx,ax
000004D0  53                push bx
000004D1  8BC3              mov ax,bx
000004D3  43                inc bx
000004D4  8CC3              mov bx,es
000004D6  C44387            les ax,word [bp+di-0x79]
000004D9  C3                ret
000004DA  53                push bx
000004DB  8AC3              mov al,bl
000004DD  53                push bx
000004DE  85C3              test bx,ax
000004E0  53                push bx
000004E1  8BC3              mov ax,bx
000004E3  43                inc bx
000004E4  8CC3              mov bx,es
000004E6  C489C353          les cx,word [bx+di+0x53c3]
000004EA  8AC3              mov al,bl
000004EC  53                push bx
000004ED  85C3              test bx,ax
000004EF  53                push bx
000004F0  8BC3              mov ax,bx
000004F2  43                inc bx
000004F3  8CC3              mov bx,es
000004F5  C489C353          les cx,word [bx+di+0x53c3]
000004F9  8AC3              mov al,bl
000004FB  53                push bx
000004FC  85C3              test bx,ax
000004FE  53                push bx
000004FF  8BC3              mov ax,bx
00000501  43                inc bx
00000502  8CC3              mov bx,es
00000504  C44387            les ax,word [bp+di-0x79]
00000507  C3                ret
00000508  C4                db 0xc4
00000509  DDC4              ffree st4
0000050B  8AC3              mov al,bl
0000050D  53                push bx
0000050E  85C3              test bx,ax
00000510  43                inc bx
00000511  DD8BC343          fisttp qword [bp+di+0x43c3]
00000515  8CC3              mov bx,es
00000517  C44387            les ax,word [bp+di-0x79]
0000051A  C3                ret
0000051B  53                push bx
0000051C  8AC3              mov al,bl
0000051E  53                push bx
0000051F  85C3              test bx,ax
00000521  53                push bx
00000522  8BC3              mov ax,bx
00000524  43                inc bx
00000525  8CC3              mov bx,es
00000527  C44387            les ax,word [bp+di-0x79]
0000052A  C3                ret
0000052B  C48CC301          les cx,word [si+0x1c3]
0000052F  20C4              and ah,al
00000531  85C3              test bx,ax
00000533  53                push bx
00000534  8BC3              mov ax,bx
00000536  43                inc bx
00000537  8CC3              mov bx,es
00000539  C44387            les ax,word [bp+di-0x79]
0000053C  C3                ret
0000053D  C495C353          les dx,word [di+0x53c3]
00000541  8BC3              mov ax,bx
00000543  43                inc bx
00000544  8CC3              mov bx,es
00000546  C44387            les ax,word [bp+di-0x79]
00000549  C3                ret
0000054A  C495C353          les dx,word [di+0x53c3]
0000054E  85C3              test bx,ax
00000550  85C3              test bx,ax
00000552  43                inc bx
00000553  8CC3              mov bx,es
00000555  C44387            les ax,word [bp+di-0x79]
00000558  C3                ret
00000559  C495C353          les dx,word [di+0x53c3]
0000055D  85C3              test bx,ax
0000055F  85C5              test bp,ax
00000561  43                inc bx
00000562  8CC3              mov bx,es
00000564  DD439E            fld qword [bp+di-0x62]
00000567  C3                ret
00000568  53                push bx
00000569  85C3              test bx,ax
0000056B  C48BC5C4          les cx,word [bp+di-0x3b3b]
0000056F  86C3              xchg al,bl
00000571  C4                db 0xc4
00000572  DDC4              ffree st4
00000574  9E                sahf
00000575  C3                ret
00000576  53                push bx
00000577  85C3              test bx,ax
00000579  C48BC3C4          les cx,word [bp+di-0x3b3d]
0000057D  86C3              xchg al,bl
0000057F  C4439E            les ax,word [bp+di-0x62]
00000582  C3                ret
00000583  53                push bx
00000584  85C3              test bx,ax
00000586  C48BC343          les cx,word [bp+di+0x43c3]
0000058A  85C3              test bx,ax
0000058C  C4                db 0xc4
0000058D  C5                db 0xc5
0000058E  C492D9C4          les dx,word [bp+si-0x3b27]
00000592  8AC3              mov al,bl
00000594  C4                db 0xc4
00000595  E0C4              loopne 0x55b
00000597  85C3              test bx,ax
00000599  C48BC343          les cx,word [bp+di+0x43c3]
0000059D  85C3              test bx,ax
0000059F  C493D9C8          les dx,word [bp+di-0x3727]
000005A3  C4                db 0xc4
000005A4  C7                db 0xc7
000005A5  92                xchg ax,dx
000005A6  C3                ret
000005A7  7387              jnc 0x530
000005A9  C3                ret
000005AA  43                inc bx
000005AB  877051            xchg si,[bx+si+0x51]
000005AE  C1C288            rol dx,byte 0x88
000005B1  D9                db 0xd9
000005B2  48                dec ax
000005B3  43                inc bx
000005B4  C7                db 0xc7
000005B5  CA40C2            retf word 0xc240
000005B8  50                push ax
000005B9  41                inc cx
000005BA  50                push ax
000005BB  C25081            ret word 0x8150
000005BE  C3                ret
000005BF  63DD              arpl bp,bx
000005C1  87C3              xchg ax,bx
000005C3  43                inc bx
000005C4  C24061            ret word 0x6140
000005C7  91                xchg ax,cx
000005C8  D9C9              fxch st1
000005CA  47                inc di
000005CB  C4494A            les cx,word [bx+di+0x4a]
000005CE  8FC3              pop bx
000005D0  7387              jnc 0x559
000005D2  C3                ret
000005D3  43                inc bx
000005D4  87C5              xchg ax,bp
000005D6  C48ED958          les cx,word [bp+0x58d9]
000005DA  C8C4C7C9          enter word 0xc7c4,byte 0xc9
000005DE  49                dec cx
000005DF  86C3              xchg al,bl
000005E1  C4                db 0xc4
000005E2  E0C4              loopne 0x5a8
000005E4  85C3              test bx,ax
000005E6  7387              jnc 0x56f
000005E8  C3                ret
000005E9  C4                db 0xc4
000005EA  DD85C3C4          fld qword [di-0x3b3d]
000005EE  43                inc bx
000005EF  8D                db 0x8d
000005F0  D9CC              fxch st4
000005F2  C9                leave
000005F3  C8C7C8C4          enter word 0xc8c7,byte 0xc4
000005F7  46                inc si
000005F8  C9                leave
000005F9  CACB85            retf word 0x85cb
000005FC  C3                ret
000005FD  53                push bx
000005FE  85C3              test bx,ax
00000600  7387              jnc 0x589
00000602  C3                ret
00000603  43                inc bx
00000604  85C3              test bx,ax
00000606  C4438C            les ax,word [bp+di-0x74]
00000609  D9CC              fxch st4
0000060B  48                dec ax
0000060C  57                push di
0000060D  C4                db 0xc4
0000060E  DDC7              ffree st7
00000610  48                dec ax
00000611  CACB84            retf word 0x84cb
00000614  C3                ret
00000615  63E0              arpl ax,sp
00000617  63DD              arpl bp,bx
00000619  6387C343          arpl [bx+0x43c3],ax
0000061D  85C3              test bx,ax
0000061F  C443CB            les ax,word [bp+di-0x35]
00000622  8AD9              mov bl,cl
00000624  CC                int3
00000625  68C8C7            push word 0xc7c8
00000628  C4                db 0xc4
00000629  C7                db 0xc7
0000062A  48                dec ax
0000062B  CA81CB            retf word 0xcb81
0000062E  84C3              test bl,al
00000630  0D0487            or ax,0x8704
00000633  C3                ret
00000634  C4                db 0xc4
00000635  DD85C3C4          fld qword [di-0x3b3d]
00000639  C4                db 0xc4
0000063A  C7                db 0xc7
0000063B  CA8DC8            retf word 0xc88d
0000063E  C4                db 0xc4
0000063F  C843C748          enter word 0xc743,byte 0x48
00000643  49                dec cx
00000644  86C3              xchg al,bl
00000646  0D0487            or ax,0x8704
00000649  C3                ret
0000064A  43                inc bx
0000064B  85C3              test bx,ax
0000064D  C4                db 0xc4
0000064E  CAC9CA            retf word 0xcac9
00000651  CB                retf
00000652  8CC3              mov bx,es
00000654  634648            arpl [bp+0x48],ax
00000657  CA81CB            retf word 0xcb81
0000065A  84C3              test bl,al
0000065C  0504E0            add ax,0xe004
0000065F  06                push es
00000660  0487              add al,0x87
00000662  C3                ret
00000663  43                inc bx
00000664  85C3              test bx,ax
00000666  C4                db 0xc4
00000667  C7                db 0xc7
00000668  C9                leave
00000669  CB                retf
0000066A  CACB8E            retf word 0x8ecb
0000066D  C3                ret
0000066E  43                inc bx
0000066F  46                inc si
00000670  49                dec cx
00000671  86C3              xchg al,bl
00000673  43                inc bx
00000674  DD85C373          fld qword [di+0x73c3]
00000678  87C3              xchg ax,bx
0000067A  07                pop es
0000067B  04CA              add al,0xca
0000067D  68CACB            push word 0xcbca
00000680  8D                db 0x8d
00000681  C3                ret
00000682  6388C343          arpl [bx+si+0x43c3],cx
00000686  DD85C353          fld qword [di+0x53c3]
0000068A  89C3              mov bx,ax
0000068C  07                pop es
0000068D  04C7              add al,0xc7
0000068F  C8C7C9CA          enter word 0xc9c7,byte 0xca
00000693  8FC3              pop bx
00000695  C4                db 0xc4
00000696  DD4388            fld qword [bp+di-0x78]
00000699  C3                ret
0000069A  53                push bx
0000069B  85C3              test bx,ax
0000069D  53                push bx
0000069E  89C3              mov bx,ax
000006A0  06                push es
000006A1  0481              add al,0x81
000006A3  C9                leave
000006A4  C9                leave
000006A5  49                dec cx
000006A6  CB                retf
000006A7  8FC3              pop bx
000006A9  6388C353          arpl [bx+si+0x53c3],cx
000006AD  85C3              test bx,ax
000006AF  C4                db 0xc4
000006B0  DD5387            fst qword [bp+di-0x79]
000006B3  C3                ret
000006B4  06                push es
000006B5  0481              add al,0x81
000006B7  C9                leave
000006B8  CA4A90            retf word 0x904a
000006BB  C3                ret
000006BC  6388C3DD          arpl [bx+si-0x223d],cx
000006C0  43                inc bx
000006C1  85C3              test bx,ax
000006C3  7387              jnc 0x64c
000006C5  C3                ret
000006C6  43                inc bx
000006C7  DD43C5            fld qword [bp+di-0x3b]
000006CA  CAC8C7            retf word 0xc7c8
000006CD  48                dec ax
000006CE  CA90C3            retf word 0xc390
000006D1  6388C353          arpl [bx+si+0x53c3],cx
000006D5  85C3              test bx,ax
000006D7  63DD              arpl bp,bx
000006D9  87C3              xchg ax,bx
000006DB  43                inc bx
000006DC  E0C4              loopne 0x6a2
000006DE  44                inc sp
000006DF  C7                db 0xc7
000006E0  C8C9C947          enter word 0xc9c9,byte 0x47
000006E4  C740C2C1C2        mov word [bx+si-0x3e],0xc2c1
000006E9  C189C36388        ror word [bx+di+0x63c3],byte 0x88
000006EE  C3                ret
000006EF  53                push bx
000006F0  85C3              test bx,ax
000006F2  7387              jnc 0x67b
000006F4  C3                ret
000006F5  53                push bx
000006F6  44                inc sp
000006F7  C4                db 0xc4
000006F8  CA4868            retf word 0x6848
000006FB  CACB8D            retf word 0x8dcb
000006FE  C3                ret
000006FF  53                push bx
00000700  DD88C353          fisttp qword [bx+si+0x53c3]
00000704  85C3              test bx,ax
00000706  7387              jnc 0x68f
00000708  C3                ret
00000709  43                inc bx
0000070A  44                inc sp
0000070B  C4                db 0xc4
0000070C  C5                db 0xc5
0000070D  C7                db 0xc7
0000070E  48                dec ax
0000070F  0509CA            add ax,0xca09
00000712  8CC3              mov bx,es
00000714  43                inc bx
00000715  8AC3              mov al,bl
00000717  DD4385            fld qword [bp+di-0x7b]
0000071A  C3                ret
0000071B  7387              jnc 0x6a4
0000071D  C3                ret
0000071E  C444C4            les ax,word [si-0x3c]
00000721  C5                db 0xc5
00000722  C4                db 0xc4
00000723  C7                db 0xc7
00000724  C8C958C8          enter word 0x58c9,byte 0xc8
00000728  C7                db 0xc7
00000729  48                dec ax
0000072A  C8C48AC3          enter word 0x8ac4,byte 0xc3
0000072E  43                inc bx
0000072F  8AC3              mov al,bl
00000731  53                push bx
00000732  85C3              test bx,ax
00000734  7387              jnc 0x6bd
00000736  C3                ret
00000737  C573C7            lds si,word [bp+di-0x39]
0000073A  47                inc di
0000073B  68CACB            push word 0xcbca
0000073E  CDC8              int byte 0xc8
00000740  43                inc bx
00000741  89C3              mov bx,ax
00000743  6388C353          arpl [bx+si+0x53c3],cx
00000747  85C3              test bx,ax
00000749  7387              jnc 0x6d2
0000074B  C3                ret
0000074C  53                push bx
0000074D  DD4346            fld qword [bp+di+0x46]
00000750  C848CACB          enter word 0xca48,byte 0xcb
00000754  8FC3              pop bx
00000756  6388C353          arpl [bx+si+0x53c3],cx
0000075A  85C3              test bx,ax
0000075C  7387              jnc 0x6e5
0000075E  C3                ret
0000075F  050446            add ax,0x4604
00000762  C9                leave
00000763  93                xchg ax,bx
00000764  C3                ret
00000765  6388C353          arpl [bx+si+0x53c3],cx
00000769  85C3              test bx,ax
0000076B  7387              jnc 0x6f4
0000076D  C3                ret
0000076E  0504C7            add ax,0xc704
00000771  82                db 0x82
00000772  C14140C2          rol word [bx+di+0x40],byte 0xc2
00000776  40                inc ax
00000777  8BC3              mov ax,bx
00000779  C4                db 0xc4
0000077A  DD4388            fld qword [bp+di-0x78]
0000077D  C3                ret
0000077E  53                push bx
0000077F  87C3              xchg ax,bx
00000781  53                push bx
00000782  87C3              xchg ax,bx
00000784  050440            add ax,0x4004
00000787  C293C3            ret word 0xc393
0000078A  6388C353          arpl [bx+si+0x53c3],cx
0000078E  87C3              xchg ax,bx
00000790  53                push bx
00000791  87C3              xchg ax,bx
00000793  050483            add ax,0x8304
00000796  84C3              test bl,al
00000798  C48DC363          les cx,word [di+0x63c3]
0000079C  88C3              mov bl,al
0000079E  53                push bx
0000079F  87C3              xchg ax,bx
000007A1  C4                db 0xc4
000007A2  DDC4              ffree st4
000007A4  87C3              xchg ax,bx
000007A6  C4                db 0xc4
000007A7  E063              loopne 0x80c
000007A9  8384C3C48D        add word [si-0x3b3d],0xffffffffffffff8d
000007AE  C3                ret
000007AF  43                inc bx
000007B0  DDC4              ffree st4
000007B2  88C3              mov bl,al
000007B4  43                inc bx
000007B5  DD87C353          fld qword [bx+0x53c3]
000007B9  8BC3              mov ax,bx
000007BB  43                inc bx
000007BC  8384C3C48D        add word [si-0x3b3d],0xffffffffffffff8d
000007C1  C3                ret
000007C2  6388C353          arpl [bx+si+0x53c3],cx
000007C6  87C3              xchg ax,bx
000007C8  53                push bx
000007C9  60                pusha
000007CA  41                inc cx
000007CB  40                inc ax
000007CC  C2C181            ret word 0x81c1
000007CF  C3                ret
000007D0  43                inc bx
000007D1  8384C3C48D        add word [si-0x3b3d],0xffffffffffffff8d
000007D6  C3                ret
000007D7  6388C353          arpl [bx+si+0x53c3],cx
000007DB  87C3              xchg ax,bx
000007DD  53                push bx
000007DE  8BC3              mov ax,bx
000007E0  43                inc bx
000007E1  8384C3C48D        add word [si-0x3b3d],0xffffffffffffff8d
000007E6  C3                ret
000007E7  6388C353          arpl [bx+si+0x53c3],cx
000007EB  87C3              xchg ax,bx
000007ED  53                push bx
000007EE  8BC3              mov ax,bx
000007F0  43                inc bx
000007F1  8384C3DD85        add word [si-0x223d],0xffffffffffffff85
000007F6  C3                ret
000007F7  43                inc bx
000007F8  85C3              test bx,ax
000007FA  E043              loopne 0x83f
000007FC  E088              loopne 0x786
000007FE  C3                ret
000007FF  53                push bx
00000800  87C3              xchg ax,bx
00000802  53                push bx
00000803  8BC3              mov ax,bx
00000805  C4                db 0xc4
00000806  DD8384C3          fld qword [bp+di-0x3c7c]
0000080A  DD85C343          fld qword [di+0x43c3]
0000080E  92                xchg ax,dx
0000080F  C3                ret
00000810  53                push bx
00000811  87C3              xchg ax,bx
00000813  53                push bx
00000814  8BC3              mov ax,bx
00000816  43                inc bx
00000817  8384C34384        add word [si+0x43c3],0xffffffffffffff84
0000081C  C3                ret
0000081D  43                inc bx
0000081E  40                inc ax
0000081F  C2C107            ret word 0x7c1
00000822  024051            add al,[bx+si+0x51]
00000825  81C3DD43          add bx,0x43dd
00000829  87C3              xchg ax,bx
0000082B  53                push bx
0000082C  8BC3              mov ax,bx
0000082E  43                inc bx
0000082F  8384C34384        add word [si+0x43c3],0xffffffffffffff84
00000834  C3                ret
00000835  43                inc bx
00000836  92                xchg ax,dx
00000837  C3                ret
00000838  53                push bx
00000839  87C3              xchg ax,bx
0000083B  53                push bx
0000083C  8BC3              mov ax,bx
0000083E  43                inc bx
0000083F  8385C35382        add word [di+0x53c3],0xffffffffffffff82
00000844  C3                ret
00000845  43                inc bx
00000846  85C3              test bx,ax
00000848  E043              loopne 0x88d
0000084A  E088              loopne 0x7d4
0000084C  C3                ret
0000084D  C4                db 0xc4
0000084E  DDC4              ffree st4
00000850  87C3              xchg ax,bx
00000852  53                push bx
00000853  8BC3              mov ax,bx
00000855  43                inc bx
00000856  8385C3538A        add word [di+0x53c3],0xffffffffffffff8a
0000085B  C3                ret
0000085C  6388C353          arpl [bx+si+0x53c3],cx
00000860  87C3              xchg ax,bx
00000862  53                push bx
00000863  8BC3              mov ax,bx
00000865  43                inc bx
00000866  8385C3538A        add word [di+0x53c3],0xffffffffffffff8a
0000086B  C3                ret
0000086C  6388C353          arpl [bx+si+0x53c3],cx
00000870  87C3              xchg ax,bx
00000872  53                push bx
00000873  8BC3              mov ax,bx
00000875  43                inc bx
00000876  8385C3538A        add word [di+0x53c3],0xffffffffffffff8a
0000087B  C3                ret
0000087C  43                inc bx
0000087D  DDC4              ffree st4
0000087F  88C3              mov bl,al
00000881  C489C3DD          les cx,word [bx+di-0x223d]
00000885  43                inc bx
00000886  8BC3              mov ax,bx
00000888  011D              add [di],bx
0000088A  8385C343DD        add word [di+0x43c3],0xffffffffffffffdd
0000088F  8AC3              mov al,bl
00000891  6388C3C4          arpl [bx+si-0x3b3d],cx
00000895  89C3              mov bx,ax
00000897  DD438B            fld qword [bp+di-0x75]
0000089A  C3                ret
0000089B  43                inc bx
0000089C  8385C3538A        add word [di+0x53c3],0xffffffffffffff8a
000008A1  C3                ret
000008A2  6388C353          arpl [bx+si+0x53c3],cx
000008A6  87C3              xchg ax,bx
000008A8  DD4387            fld qword [bp+di-0x79]
000008AB  C3                ret
000008AC  E073              loopne 0x921
000008AE  8385C3538A        add word [di+0x53c3],0xffffffffffffff8a
000008B3  C3                ret
000008B4  6388C3DD          arpl [bx+si-0x223d],cx
000008B8  43                inc bx
000008B9  87C3              xchg ax,bx
000008BB  53                push bx
000008BC  87C3              xchg ax,bx
000008BE  050483            add ax,0x8304
000008C1  85C3              test bx,ax
000008C3  53                push bx
000008C4  8AC3              mov al,bl
000008C6  6388C353          arpl [bx+si+0x53c3],cx
000008CA  87C3              xchg ax,bx
000008CC  53                push bx
000008CD  87C3              xchg ax,bx
000008CF  050483            add ax,0x8304
000008D2  85C3              test bx,ax
000008D4  73E0              jnc 0x8b6
000008D6  0B04              or ax,[si]
000008D8  88C3              mov bl,al
000008DA  53                push bx
000008DB  87C3              xchg ax,bx
000008DD  53                push bx
000008DE  87C3              xchg ax,bx
000008E0  050483            add ax,0x8304
000008E3  85C3              test bx,ax
000008E5  1004              adc [si],al
000008E7  DD88C353          fisttp qword [bx+si+0x53c3]
000008EB  87C3              xchg ax,bx
000008ED  53                push bx
000008EE  87C3              xchg ax,bx
000008F0  C4                db 0xc4
000008F1  E063              loopne 0x956
000008F3  8385C30604        add word [di+0x6c3],0x4
000008F8  0120              add [bx+si],sp
000008FA  0804              or [si],al
000008FC  88C3              mov bl,al
000008FE  53                push bx
000008FF  87C3              xchg ax,bx
00000901  53                push bx
00000902  91                xchg ax,cx
00000903  C1C240            rol dx,byte 0x40
00000906  81C35386          add bx,0x8653
0000090A  C3                ret
0000090B  06                push es
0000090C  04DD              add al,0xdd
0000090E  88C3              mov bl,al
00000910  53                push bx
00000911  87C3              xchg ax,bx
00000913  53                push bx
00000914  41                inc cx
00000915  C14160C2          rol word [bx+di+0x60],byte 0xc2
00000919  40                inc ax
0000091A  41                inc cx
0000091B  C1C2C1            rol dx,byte 0xc1
0000091E  85C3              test bx,ax
00000920  53                push bx
00000921  86C3              xchg al,bl
00000923  0D04E0            or ax,0xe004
00000926  7387              jnc 0x8af
00000928  C3                ret
00000929  43                inc bx
0000092A  DD9185C3          fst qword [bx+di-0x3c7b]
0000092E  53                push bx
0000092F  86C3              xchg al,bl
00000931  1304              adc ax,[si]
00000933  87C3              xchg ax,bx
00000935  53                push bx
00000936  87C3              xchg ax,bx
00000938  C4                db 0xc4
00000939  E063              loopne 0x99e
0000093B  8385C3C4DD        add word [di-0x3b3d],0xffffffffffffffdd
00000940  C486C308          les ax,word [bp+0x8c3]
00000944  04E0              add al,0xe0
00000946  0904              or [si],ax
00000948  87C3              xchg ax,bx
0000094A  53                push bx
0000094B  87C3              xchg ax,bx
0000094D  050483            add ax,0x8304
00000950  85C3              test bx,ax
00000952  53                push bx
00000953  86C3              xchg al,bl
00000955  0804              or [si],al
00000957  E008              loopne 0x961
00000959  04DD              add al,0xdd
0000095B  87C3              xchg ax,bx
0000095D  53                push bx
0000095E  87C3              xchg ax,bx
00000960  050483            add ax,0x8304
00000963  85C3              test bx,ax
00000965  53                push bx
00000966  86C3              xchg al,bl
00000968  6397C353          arpl [bx+0x53c3],dx
0000096C  87C3              xchg ax,bx
0000096E  050483            add ax,0x8304
00000971  85C3              test bx,ax
00000973  53                push bx
00000974  86C3              xchg al,bl
00000976  6397C3C4          arpl [bx-0x3b3d],dx
0000097A  89C3              mov bx,ax
0000097C  E073              loopne 0x9f1
0000097E  8385C343DD        add word [di+0x43c3],0xffffffffffffffdd
00000983  86C3              xchg al,bl
00000985  53                push bx
00000986  DD97C3C4          fst qword [bx-0x3b3d]
0000098A  8D                db 0x8d
0000098B  C3                ret
0000098C  43                inc bx
0000098D  8385C343DD        add word [di+0x43c3],0xffffffffffffffdd
00000992  86C3              xchg al,bl
00000994  6385C353          arpl [di+0x53c3],ax
00000998  85C3              test bx,ax
0000099A  C487C353          les ax,word [bx+0x53c3]
0000099E  8BC3              mov ax,bx
000009A0  43                inc bx
000009A1  8385C35386        add word [di+0x53c3],0xffffffffffffff86
000009A6  C3                ret
000009A7  6385C353          arpl [di+0x53c3],ax
000009AB  85C3              test bx,ax
000009AD  C487C3DD          les ax,word [bx-0x223d]
000009B1  43                inc bx
000009B2  8BC3              mov ax,bx
000009B4  011D              add [di],bx
000009B6  8385C35386        add word [di+0x53c3],0xffffffffffffff86
000009BB  C3                ret
000009BC  C4                db 0xc4
000009BD  E043              loopne 0xa02
000009BF  85C3              test bx,ax
000009C1  53                push bx
000009C2  85C3              test bx,ax
000009C4  C487C353          les ax,word [bx+0x53c3]
000009C8  8BC3              mov ax,bx
000009CA  43                inc bx
000009CB  8385C35390        add word [di+0x53c3],0xffffffffffffff90
000009D0  C3                ret
000009D1  43                inc bx
000009D2  DD85C3DD          fld qword [di-0x223d]
000009D6  87C3              xchg ax,bx
000009D8  53                push bx
000009D9  8BC3              mov ax,bx
000009DB  43                inc bx
000009DC  8385C35340        add word [di+0x53c3],0x40
000009E1  C240C2            ret word 0xc240
000009E4  40                inc ax
000009E5  41                inc cx
000009E6  C1C240            rol dx,byte 0x40
000009E9  81C36385          add bx,0x8563
000009ED  C3                ret
000009EE  C487C353          les ax,word [bx+0x53c3]
000009F2  8BC3              mov ax,bx
000009F4  43                inc bx
000009F5  8385C3538F        add word [di+0x53c3],0xffffffffffffff8f
000009FA  C3                ret
000009FB  DD5385            fst qword [bp+di-0x7b]
000009FE  C3                ret
000009FF  C487C3C4          les ax,word [bx-0x3b3d]
00000A03  DDC4              ffree st4
00000A05  8BC3              mov ax,bx
00000A07  43                inc bx
00000A08  8385C35385        add word [di+0x53c3],0xffffffffffffff85
00000A0D  C3                ret
00000A0E  53                push bx
00000A0F  86C3              xchg al,bl
00000A11  6385C3C4          arpl [di-0x3b3d],ax
00000A15  87C3              xchg ax,bx
00000A17  53                push bx
00000A18  8BC3              mov ax,bx
00000A1A  43                inc bx
00000A1B  8385C35385        add word [di+0x53c3],0xffffffffffffff85
00000A20  C3                ret
00000A21  53                push bx
00000A22  86C3              xchg al,bl
00000A24  6385C3C4          arpl [di-0x3b3d],ax
00000A28  87C3              xchg ax,bx
00000A2A  53                push bx
00000A2B  8BC3              mov ax,bx
00000A2D  C4                db 0xc4
00000A2E  DD8353DD          fld qword [bp+di-0x22ad]
00000A32  53                push bx
00000A33  C5                db 0xc5
00000A34  DD85C353          fld qword [di+0x53c3]
00000A38  86C3              xchg al,bl
00000A3A  6385C3C4          arpl [di-0x3b3d],ax
00000A3E  87C3              xchg ax,bx
00000A40  53                push bx
00000A41  8BC3              mov ax,bx
00000A43  7373              jnc 0xab8
00000A45  44                inc sp
00000A46  73E0              jnc 0xa28
00000A48  63DD              arpl bp,bx
00000A4A  86C3              xchg al,bl
00000A4C  6385C3DD          arpl [di-0x223d],ax
00000A50  87C3              xchg ax,bx
00000A52  43                inc bx
00000A53  DD8BC373          fisttp qword [bp+di+0x73c3]
00000A57  63440B            arpl [si+0xb],ax
00000A5A  0486              add al,0x86
00000A5C  C3                ret
00000A5D  6385C3C4          arpl [di-0x3b3d],ax
00000A61  87C3              xchg ax,bx
00000A63  53                push bx
00000A64  8BC3              mov ax,bx
00000A66  73C4              jnc 0xa2c
00000A68  DDC4              ffree st4
00000A6A  44                inc sp
00000A6B  0D04E0            or ax,0xe004
00000A6E  0804              or [si],al
00000A70  85C3              test bx,ax
00000A72  C489C3C4          les cx,word [bx+di-0x3b3d]
00000A76  8D                db 0x8d
00000A77  C3                ret
00000A78  53                push bx
00000A79  C5                db 0xc5
00000A7A  C44408            les ax,word [si+0x8]
00000A7D  04E0              add al,0xe0
00000A7F  1104              adc [si],ax
00000A81  E053              loopne 0xad6
00000A83  89C3              mov bx,ax
00000A85  C45041            les dx,word [bx+si+0x41]
00000A88  50                push ax
00000A89  41                inc cx
00000A8A  40                inc ax
00000A8B  81C353C4          add bx,0xc453
00000A8F  C563DD            lds sp,word [bp+di-0x23]
00000A92  53                push bx
00000A93  86C3              xchg al,bl
00000A95  73DD              jnc 0xa74
00000A97  0C04              or al,0x4
00000A99  89C3              mov bx,ax
00000A9B  C48DC343          les cx,word [di+0x43c3]
00000A9F  C5                db 0xc5
00000AA0  C508              lds cx,word [bx+si]
00000AA2  0486              add al,0x86
00000AA4  C3                ret
00000AA5  0804              or [si],al
00000AA7  DD53E0            fst qword [bp+di-0x20]
00000AAA  7389              jnc 0xa35
00000AAC  C3                ret
00000AAD  C485C343          les ax,word [di+0x43c3]
00000AB1  85C3              test bx,ax
00000AB3  C4                db 0xc4
00000AB4  C5                db 0xc5
00000AB5  C409              les cx,word [bx+di]
00000AB7  0486              add al,0x86
00000AB9  C3                ret
00000ABA  6385C343          arpl [di+0x43c3],ax
00000ABE  90                nop
00000ABF  C3                ret
00000AC0  C485C343          les ax,word [di+0x43c3]
00000AC4  85C3              test bx,ax
00000AC6  C543C4            lds ax,word [bp+di-0x3c]
00000AC9  011D              add [di],bx
00000ACB  06                push es
00000ACC  0486              add al,0x86
00000ACE  C3                ret
00000ACF  43                inc bx
00000AD0  DDC4              ffree st4
00000AD2  85C3              test bx,ax
00000AD4  43                inc bx
00000AD5  90                nop
00000AD6  C3                ret
00000AD7  C485C3C5          les ax,word [di-0x3a3d]
00000ADB  DD85C353          fld qword [di+0x53c3]
00000ADF  07                pop es
00000AE0  04DD              add al,0xdd
00000AE2  C486C363          les ax,word [bp+0x63c3]
00000AE6  85C3              test bx,ax
00000AE8  43                inc bx
00000AE9  90                nop
00000AEA  C3                ret
00000AEB  DD8DC353          fisttp qword [di+0x53c3]
00000AEF  0804              or [si],al
00000AF1  DD86C363          fld qword [bp+0x63c3]
00000AF5  85C3              test bx,ax
00000AF7  011D              add [di],bx
00000AF9  85C3              test bx,ax
00000AFB  C498C353          les bx,word [bx+si+0x53c3]
00000AFF  0904              or [si],ax
00000B01  86C3              xchg al,bl
00000B03  6385C343          arpl [di+0x43c3],ax
00000B07  85C3              test bx,ax
00000B09  C498C353          les bx,word [bx+si+0x53c3]
00000B0D  07                pop es
00000B0E  0488              add al,0x88
00000B10  C3                ret
00000B11  6385C343          arpl [di+0x43c3],ax
00000B15  85C3              test bx,ax
00000B17  C498C353          les bx,word [bx+si+0x53c3]
00000B1B  07                pop es
00000B1C  0488              add al,0x88
00000B1E  C3                ret
00000B1F  C488C343          les cx,word [bx+si+0x43c3]
00000B23  85C3              test bx,ax
00000B25  C450C2            les dx,word [bx+si-0x3e]
00000B28  40                inc ax
00000B29  41                inc cx
00000B2A  40                inc ax
00000B2B  C2408B            ret word 0x8b40
00000B2E  C3                ret
00000B2F  53                push bx
00000B30  43                inc bx
00000B31  0120              add [bx+si],sp
00000B33  050486            add ax,0x8604
00000B36  C3                ret
00000B37  C487C353          les ax,word [bx+0x53c3]
00000B3B  85C3              test bx,ax
00000B3D  C498C3C4          les bx,word [bx+si-0x3b3d]
00000B41  E0C4              loopne 0xb07
00000B43  85C3              test bx,ax
00000B45  6386C3C4          arpl [bp-0x3b3d],ax
00000B49  87C3              xchg ax,bx
00000B4B  53                push bx
00000B4C  85C3              test bx,ax
00000B4E  C486C343          les ax,word [bp+0x43c3]
00000B52  E073              loopne 0xbc7
00000B54  8D85C353          lea ax,[di+0x53c3]
00000B58  DD86C3DD          fld qword [bp-0x223d]
00000B5C  87C3              xchg ax,bx
00000B5E  53                push bx
00000B5F  85C3              test bx,ax
00000B61  DD86C373          fld qword [bp+0x73c3]
00000B65  DD438D            fld qword [bp+di-0x73]
00000B68  85C3              test bx,ax
00000B6A  638FC3C4          arpl [bx-0x3b3d],cx
00000B6E  DDC4              ffree st4
00000B70  85C3              test bx,ax
00000B72  DD86C307          fld qword [bp+0x7c3]
00000B76  048D              add al,0x8d
00000B78  85C3              test bx,ax
00000B7A  635051            arpl [bx+si+0x51],dx
00000B7D  C1C250            rol dx,byte 0x50
00000B80  C24081            ret word 0x8140
00000B83  C3                ret
00000B84  53                push bx
00000B85  85C3              test bx,ax
00000B87  C486C307          les ax,word [bp+0x7c3]
00000B8B  048D              add al,0x8d
00000B8D  85C3              test bx,ax
00000B8F  638FC353          arpl [bx+0x53c3],cx
00000B93  85C3              test bx,ax
00000B95  C486C373          les ax,word [bp+0x73c3]
00000B99  E043              loopne 0xbde
00000B9B  8D85C363          lea ax,[di+0x63c3]
00000B9F  87C3              xchg ax,bx
00000BA1  C486C3E0          les ax,word [bp-0x1f3d]
00000BA5  43                inc bx
00000BA6  85C3              test bx,ax
00000BA8  87C3              xchg ax,bx
00000BAA  6385C343          arpl [di+0x43c3],ax
00000BAE  8985C373          mov [di+0x73c3],ax
00000BB2  86C3              xchg al,bl
00000BB4  DD8FC387          fisttp qword [bx-0x783d]
00000BB8  C3                ret
00000BB9  6385C343          arpl [di+0x43c3],ax
00000BBD  8985C305          mov [di+0x5c3],ax
00000BC1  0485              add al,0x85
00000BC3  C3                ret
00000BC4  C450C2            les dx,word [bx+si-0x3e]
00000BC7  60                pusha
00000BC8  C24051            ret word 0x5140
00000BCB  81C34385          add bx,0x8543
00000BCF  C3                ret
00000BD0  DD5385            fst qword [bp+di-0x7b]
00000BD3  C3                ret
00000BD4  43                inc bx
00000BD5  8985C3C4          mov [di-0x3b3d],ax
00000BD9  DD63E0            frstor [bp+di-0x20]
00000BDC  05048F            add ax,0x8f04
00000BDF  C3                ret
00000BE0  43                inc bx
00000BE1  85C3              test bx,ax
00000BE3  6385C343          arpl [di+0x43c3],ax
00000BE7  8985C30F          mov [di+0xfc3],ax
00000BEB  0483              add al,0x83
00000BED  C3                ret
00000BEE  6383C363          arpl [bp+di+0x63c3],ax
00000BF2  0120              add [bx+si],sp
00000BF4  06                push es
00000BF5  0485              add al,0x85
00000BF7  C3                ret
00000BF8  C4                db 0xc4
00000BF9  DD8985C3          fisttp qword [bx+di-0x3c7b]
00000BFD  0804              or [si],al
00000BFF  DD63DD            frstor [bp+di-0x23]
00000C02  0A04              or al,[si]
00000C04  E00D              loopne 0xc13
00000C06  0485              add al,0x85
00000C08  C3                ret
00000C09  43                inc bx
00000C0A  8985C311          mov [di+0x11c3],ax
00000C0E  04E0              add al,0xe0
00000C10  0E                push cs
00000C11  0482              add al,0x82
00000C13  53                push bx
00000C14  DDC4              ffree st4
00000C16  85C3              test bx,ax
00000C18  43                inc bx
00000C19  8985C30F          mov [di+0xfc3],ax
00000C1D  0483              add al,0x83
00000C1F  C3                ret
00000C20  43                inc bx
00000C21  0120              add [bx+si],sp
00000C23  83C363            add bx,0x63
00000C26  0120              add [bx+si],sp
00000C28  82                db 0x82
00000C29  7385              jnc 0xbb0
00000C2B  C54389            lds ax,word [bp+di-0x77]
00000C2E  85C3              test bx,ax
00000C30  07                pop es
00000C31  04E0              add al,0xe0
00000C33  53                push bx
00000C34  DD8FC3C4          fisttp qword [bx-0x3b3d]
00000C38  86C3              xchg al,bl
00000C3A  6391C1C2          arpl [bx+di-0x3d3f],dx
00000C3E  40                inc ax
00000C3F  81C30504          add bx,0x405
00000C43  85C3              test bx,ax
00000C45  C450C2            les dx,word [bx+si-0x3e]
00000C48  60                pusha
00000C49  C24051            ret word 0x5140
00000C4C  81C3C486          add bx,0x86c4
00000C50  C3                ret
00000C51  53                push bx
00000C52  C5                db 0xc5
00000C53  C1516041          rcl word [bx+di+0x60],byte 0x41
00000C57  50                push ax
00000C58  C240C2            ret word 0xc240
00000C5B  85C3              test bx,ax
00000C5D  7386              jnc 0xbe5
00000C5F  C3                ret
00000C60  C48FC3C4          les cx,word [bx-0x3b3d]
00000C64  86C3              xchg al,bl
00000C66  43                inc bx
00000C67  C5                db 0xc5
00000C68  C49185C3          les dx,word [bx+di-0x3c7b]
00000C6C  6387C3C4          arpl [bx-0x3b3d],ax
00000C70  86C3              xchg al,bl
00000C72  53                push bx
00000C73  85C3              test bx,ax
00000C75  C486C363          les ax,word [bp+0x63c3]
00000C79  86C3              xchg al,bl
00000C7B  7385              jnc 0xc02
00000C7D  85C3              test bx,ax
00000C7F  638FC353          arpl [bx+0x53c3],cx
00000C83  85C3              test bx,ax
00000C85  C486C363          les ax,word [bp+0x63c3]
00000C89  86C3              xchg al,bl
00000C8B  7385              jnc 0xc12
00000C8D  85C3              test bx,ax
00000C8F  C4                db 0xc4
00000C90  DD4350            fld qword [bp+di+0x50]
00000C93  41                inc cx
00000C94  40                inc ax
00000C95  C250C2            ret word 0xc250
00000C98  40                inc ax
00000C99  81C3DD43          add bx,0x43dd
00000C9D  85C3              test bx,ax
00000C9F  DD86C343          fld qword [bp+0x43c3]
00000CA3  88C3              mov bl,al
00000CA5  C4                db 0xc4
00000CA6  DD5385            fst qword [bp+di-0x7b]
00000CA9  85C3              test bx,ax
00000CAB  638FC343          arpl [bx+0x43c3],cx
00000CAF  DD85C3C4          fld qword [di-0x3b3d]
00000CB3  86C3              xchg al,bl
00000CB5  43                inc bx
00000CB6  88C3              mov bl,al
00000CB8  53                push bx
00000CB9  DDC4              ffree st4
00000CBB  8585C363          test [di+0x63c3],ax
00000CBF  86C3              xchg al,bl
00000CC1  C487C353          les ax,word [bx+0x53c3]
00000CC5  85C3              test bx,ax
00000CC7  C486C363          les ax,word [bp+0x63c3]
00000CCB  86C3              xchg al,bl
00000CCD  7385              jnc 0xc54
00000CCF  85C3              test bx,ax
00000CD1  6386C3C4          arpl [bp-0x3b3d],ax
00000CD5  87C3              xchg ax,bx
00000CD7  53                push bx
00000CD8  85C3              test bx,ax
00000CDA  C486C353          les ax,word [bp+0x53c3]
00000CDE  DD86C373          fld qword [bp+0x73c3]
00000CE2  8585C363          test [di+0x63c3],ax
00000CE6  86C3              xchg al,bl
00000CE8  DD87C353          fld qword [bx+0x53c3]
00000CEC  85C3              test bx,ax
00000CEE  C486C363          les ax,word [bp+0x63c3]
00000CF2  86C3              xchg al,bl
00000CF4  7385              jnc 0xc7b
00000CF6  85C3              test bx,ax
00000CF8  43                inc bx
00000CF9  88C3              mov bl,al
00000CFB  C488C343          les cx,word [bx+si+0x43c3]
00000CFF  85C3              test bx,ax
00000D01  DD86C353          fld qword [bp+0x53c3]
00000D05  C586C353          lds ax,word [bp+0x53c3]
00000D09  8785C343          xchg ax,[di+0x43c3]
00000D0D  88C3              mov bl,al
00000D0F  6385C343          arpl [di+0x43c3],ax
00000D13  85C3              test bx,ax
00000D15  C486C343          les ax,word [bp+0x43c3]
00000D19  C5                db 0xc5
00000D1A  C486C353          les ax,word [bp+0x53c3]
00000D1E  8785C353          xchg ax,[di+0x53c3]
00000D22  DD86C343          fld qword [bp+0x43c3]
00000D26  DDC4              ffree st4
00000D28  85C3              test bx,ax
00000D2A  43                inc bx
00000D2B  85C3              test bx,ax
00000D2D  C486C3C4          les ax,word [bp-0x3b3d]
00000D31  DD4386            fld qword [bp+di-0x7a]
00000D34  C3                ret
00000D35  DD6385            frstor [bp+di-0x7b]
00000D38  85C3              test bx,ax
00000D3A  6386C363          arpl [bp+0x63c3],ax
00000D3E  85C3              test bx,ax
00000D40  43                inc bx
00000D41  85C3              test bx,ax
00000D43  C486C363          les ax,word [bp+0x63c3]
00000D47  86C3              xchg al,bl
00000D49  7385              jnc 0xcd0
00000D4B  85C3              test bx,ax
00000D4D  6386C363          arpl [bp+0x63c3],ax
00000D51  85C3              test bx,ax
00000D53  C4                db 0xc4
00000D54  DD8DC353          fisttp qword [di+0x53c3]
00000D58  C586C373          lds ax,word [bp+0x73c3]
00000D5C  8585C363          test [di+0x63c3],ax
00000D60  86C3              xchg al,bl
00000D62  53                push bx
00000D63  DD85C343          fld qword [di+0x43c3]
00000D67  8D                db 0x8d
00000D68  C3                ret
00000D69  43                inc bx
00000D6A  44                inc sp
00000D6B  86C3              xchg al,bl
00000D6D  63DD              arpl bp,bx
00000D6F  8585C363          test [di+0x63c3],ax
00000D73  86C3              xchg al,bl
00000D75  6385C343          arpl [di+0x43c3],ax
00000D79  8D                db 0x8d
00000D7A  C3                ret
00000D7B  C444C4            les ax,word [si-0x3c]
00000D7E  86C3              xchg al,bl
00000D80  7385              jnc 0xd07
00000D82  85C3              test bx,ax
00000D84  6386C30E          arpl [bp+0xec3],ax
00000D88  04E0              add al,0xe0
00000D8A  53                push bx
00000D8B  86C3              xchg al,bl
00000D8D  C55386            lds dx,word [bp+di-0x7a]
00000D90  C3                ret
00000D91  7385              jnc 0xd18
00000D93  85C3              test bx,ax
00000D95  6386C312          arpl [bp+0x12c3],ax
00000D99  0486              add al,0x86
00000D9B  C3                ret
00000D9C  53                push bx
00000D9D  C586C373          lds ax,word [bp+0x73c3]
00000DA1  8585C373          test [di+0x73c3],ax
00000DA5  E00C              loopne 0xdb3
00000DA7  04E0              add al,0xe0
00000DA9  63E0              arpl ax,sp
00000DAB  53                push bx
00000DAC  DDC4              ffree st4
00000DAE  86C3              xchg al,bl
00000DB0  43                inc bx
00000DB1  C5                db 0xc5
00000DB2  C486C343          les ax,word [bp+0x43c3]
00000DB6  DD4385            fld qword [bp+di-0x7b]
00000DB9  85C3              test bx,ax
00000DBB  0904              or [si],ax
00000DBD  DD4301            fld qword [bp+di+0x1]
00000DC0  2053E0            and [bp+di-0x20],dl
00000DC3  6385C3C4          arpl [di-0x3b3d],ax
00000DC7  86C3              xchg al,bl
00000DC9  6386C373          arpl [bp+0x73c3],ax
00000DCD  8585C30B          test [di+0xbc3],ax
00000DD1  0487              add al,0x87
00000DD3  C3                ret
00000DD4  53                push bx
00000DD5  85C3              test bx,ax
00000DD7  C486C3E0          les ax,word [bp-0x1f3d]
00000DDB  43                inc bx
00000DDC  E086              loopne 0xd64
00000DDE  C3                ret
00000DDF  C4                db 0xc4
00000DE0  DD5385            fst qword [bp+di-0x7b]
00000DE3  85C3              test bx,ax
00000DE5  53                push bx
00000DE6  E053              loopne 0xe3b
00000DE8  E063              loopne 0xe4d
00000DEA  87C3              xchg ax,bx
00000DEC  53                push bx
00000DED  85C3              test bx,ax
00000DEF  C491C373          les dx,word [bx+di+0x73c3]
00000DF3  8585C353          test [di+0x53c3],ax
00000DF7  85C3              test bx,ax
00000DF9  53                push bx
00000DFA  87C3              xchg ax,bx
00000DFC  53                push bx
00000DFD  85C3              test bx,ax
00000DFF  C491C373          les dx,word [bx+di+0x73c3]
00000E03  8585C353          test [di+0x53c3],ax
00000E07  85C3              test bx,ax
00000E09  DD4387            fld qword [bp+di-0x79]
00000E0C  C3                ret
00000E0D  53                push bx
00000E0E  85C3              test bx,ax
00000E10  C491C343          les dx,word [bx+di+0x43c3]
00000E14  8885C353          mov [di+0x53c3],al
00000E18  85C3              test bx,ax
00000E1A  53                push bx
00000E1B  87C3              xchg ax,bx
00000E1D  53                push bx
00000E1E  85C3              test bx,ax
00000E20  C486C3C4          les ax,word [bp-0x3b3d]
00000E24  E043              loopne 0xe69
00000E26  86C3              xchg al,bl
00000E28  43                inc bx
00000E29  8885C353          mov [di+0x53c3],al
00000E2D  90                nop
00000E2E  C3                ret
00000E2F  DD4385            fld qword [bp+di-0x7b]
00000E32  C3                ret
00000E33  C486C363          les ax,word [bp+0x63c3]
00000E37  86C3              xchg al,bl
00000E39  43                inc bx
00000E3A  8885C353          mov [di+0x53c3],al
00000E3E  40                inc ax
00000E3F  C27041            ret word 0x4170
00000E42  C1C240            rol dx,byte 0x40
00000E45  82                db 0x82
00000E46  C3                ret
00000E47  53                push bx
00000E48  85C3              test bx,ax
00000E4A  C486C363          les ax,word [bp+0x63c3]
00000E4E  86C3              xchg al,bl
00000E50  43                inc bx
00000E51  8885C3DD          mov [di-0x223d],al
00000E55  43                inc bx
00000E56  90                nop
00000E57  C3                ret
00000E58  53                push bx
00000E59  85C3              test bx,ax
00000E5B  C486E053          les ax,word [bp+0x53e0]
00000E5F  DD86C301          fld qword [bp+0x1c3]
00000E63  1D8885            sbb ax,0x8588
00000E66  C3                ret
00000E67  53                push bx
00000E68  86C3              xchg al,bl
00000E6A  6385C353          arpl [di+0x53c3],ax
00000E6E  85C3              test bx,ax
00000E70  DD87C353          fld qword [bx+0x53c3]
00000E74  86C3              xchg al,bl
00000E76  43                inc bx
00000E77  8885C353          mov [di+0x53c3],al
00000E7B  86C3              xchg al,bl
00000E7D  6385C353          arpl [di+0x53c3],ax
00000E81  85C3              test bx,ax
00000E83  C487C3C4          les ax,word [bx-0x3b3d]
00000E87  C7                db 0xc7
00000E88  C8C485E0          enter word 0x85c4,byte 0xe0
00000E8C  43                inc bx
00000E8D  8885C353          mov [di+0x53c3],al
00000E91  86C3              xchg al,bl
00000E93  6385C343          arpl [di+0x43c3],ax
00000E97  DD85C3C4          fld qword [di-0x3b3d]
00000E9B  87C3              xchg ax,bx
00000E9D  C4                db 0xc4
00000E9E  C9                leave
00000E9F  43                inc bx
00000EA0  90                nop
00000EA1  85C3              test bx,ax
00000EA3  C488C363          les cx,word [bx+si+0x63c3]
00000EA7  97                xchg ax,di
00000EA8  C3                ret
00000EA9  C7                db 0xc7
00000EAA  C9                leave
00000EAB  C8C4C141          enter word 0xc1c4,byte 0x41
00000EAF  40                inc ax
00000EB0  C2C189            ret word 0x89c1
00000EB3  85C3              test bx,ax
00000EB5  C488C353          les cx,word [bx+si+0x53c3]
00000EB9  DD97C3CB          fst qword [bx-0x343d]
00000EBD  C9                leave
00000EBE  C8C49085          enter word 0x90c4,byte 0x85
00000EC2  C3                ret
00000EC3  43                inc bx
00000EC4  DD86C363          fld qword [bp+0x63c3]
00000EC8  97                xchg ax,di
00000EC9  CC                int3
00000ECA  48                dec ax
00000ECB  C8C79085          enter word 0x90c7,byte 0x85
00000ECF  C3                ret
00000ED0  53                push bx
00000ED1  86C3              xchg al,bl
00000ED3  DD060454          fld qword [0x5404]
00000ED7  0804              or [si],al
00000ED9  86D9              xchg bl,cl
00000EDB  58                pop ax
00000EDC  49                dec cx
00000EDD  CB                retf
00000EDE  8AC3              mov al,bl
00000EE0  E0C4              loopne 0xea6
00000EE2  82                db 0x82
00000EE3  85C3              test bx,ax
00000EE5  53                push bx
00000EE6  86C3              xchg al,bl
00000EE8  06                push es
00000EE9  0454              add al,0x54
00000EEB  73C5              jnc 0xeb2
00000EED  6385D9CC          arpl [di-0x3327],ax
00000EF1  58                pop ax
00000EF2  49                dec cx
00000EF3  CB                retf
00000EF4  8AC3              mov al,bl
00000EF6  43                inc bx
00000EF7  82                db 0x82
00000EF8  85C3              test bx,ax
00000EFA  53                push bx
00000EFB  86C3              xchg al,bl
00000EFD  050444            add ax,0x4404
00000F00  0504C5            add ax,0xc504
00000F03  63DD              arpl bp,bx
00000F05  84D9              test cl,bl
00000F07  CC                int3
00000F08  68CA8C            push word 0x8cca
00000F0B  C3                ret
00000F0C  43                inc bx
00000F0D  82                db 0x82
00000F0E  85C3              test bx,ax
00000F10  53                push bx
00000F11  86C3              xchg al,bl
00000F13  73C5              jnc 0xeda
00000F15  050444            add ax,0x4404
00000F18  C4                db 0xc4
00000F19  C56384            lds sp,word [bp+di-0x7c]
00000F1C  CC                int3
00000F1D  68CA8D            push word 0x8dca
00000F20  C3                ret
00000F21  C4                db 0xc4
00000F22  DD8285C3          fld qword [bp+si-0x3c7b]
00000F26  53                push bx
00000F27  86C3              xchg al,bl
00000F29  0A04              or al,[si]
00000F2B  44                inc sp
00000F2C  C4                db 0xc4
00000F2D  C57384            lds si,word [bp+di-0x7c]
00000F30  7849              js 0xf7b
00000F32  8CC3              mov bx,es
00000F34  43                inc bx
00000F35  82                db 0x82
00000F36  85C3              test bx,ax
00000F38  53                push bx
00000F39  E007              loopne 0xf42
00000F3B  04E0              add al,0xe0
00000F3D  43                inc bx
00000F3E  8BC3              mov ax,bx
00000F40  53                push bx
00000F41  8405              test [di],al
00000F43  09498B            or [bx+di-0x75],cx
00000F46  C3                ret
00000F47  8485C30B          test [di+0xbc3],al
00000F4B  048E              add al,0x8e
00000F4D  C3                ret
00000F4E  53                push bx
00000F4F  8405              test [di],al
00000F51  0949CB            or [bx+di-0x35],cx
00000F54  8AC3              mov al,bl
00000F56  8485C3DD          test [di-0x223d],al
00000F5A  0504E0            add ax,0xe004
00000F5D  638EC353          arpl [bp+0x53c3],cx
00000F61  8405              test [di],al
00000F63  0949CB            or [bx+di-0x35],cx
00000F66  8AC3              mov al,bl
00000F68  43                inc bx
00000F69  82                db 0x82
00000F6A  85C3              test bx,ax
00000F6C  6396C353          arpl [bp+0x53c3],dx
00000F70  84CD              test ch,cl
00000F72  7849              js 0xfbd
00000F74  8BC3              mov ax,bx
00000F76  43                inc bx
00000F77  82                db 0x82
00000F78  85C3              test bx,ax
00000F7A  6396C353          arpl [bp+0x53c3],dx
00000F7E  857849            test [bx+si+0x49],di
00000F81  8BC3              mov ax,bx
00000F83  43                inc bx
00000F84  82                db 0x82
00000F85  85C3              test bx,ax
00000F87  6340C2            arpl [bx+si-0x3e],ax
00000F8A  40                inc ax
00000F8B  41                inc cx
00000F8C  C1C240            rol dx,byte 0x40
00000F8F  8BC3              mov ax,bx
00000F91  43                inc bx
00000F92  DD85CD68          fld qword [di+0x68cd]
00000F96  CA8CC3            retf word 0xc38c
00000F99  0120              add [bx+si],sp
00000F9B  82                db 0x82
00000F9C  83C305            add bx,0x5
00000F9F  0496              add al,0x96
00000FA1  C3                ret
00000FA2  53                push bx
00000FA3  86CD              xchg cl,ch
00000FA5  58                pop ax
00000FA6  81C85388          or ax,0x8853
00000FAA  C3                ret
00000FAB  C48383C3          les ax,word [bp+di-0x3c7d]
00000FAF  050484            add ax,0x8404
00000FB2  C3                ret
00000FB3  C490C353          les dx,word [bx+si+0x53c3]
00000FB7  81CE5ED0          or si,0xd05e
00000FBB  81686388C3        sub word [bx+si+0x63],0xc388
00000FC0  C48383C3          les ax,word [bp+di-0x3c7d]
00000FC4  DD7396            fnsave [bp+di-0x6a]
00000FC7  C3                ret
00000FC8  C48968C8          les cx,word [bx+di-0x3798]
00000FCC  53                push bx
00000FCD  88C3              mov bl,al
00000FCF  C48383C3          les ax,word [bp+di-0x3c7d]
00000FD3  73DD              jnc 0xfb2
00000FD5  85C3              test bx,ax
00000FD7  E08F              loopne 0xf68
00000FD9  C3                ret
00000FDA  C489CD58          les cx,word [bx+di+0x58cd]
00000FDE  C85388C3          enter word 0x8853,byte 0xc3
00000FE2  8481C3E0          test [bx+di-0x1f3d],al
00000FE6  06                push es
00000FE7  0485              add al,0x85
00000FE9  C3                ret
00000FEA  43                inc bx
00000FEB  8EC3              mov es,bx
00000FED  53                push bx
00000FEE  81D20313          adc dx,0x1303
00000FF2  D481              aam byte 0x81
00000FF4  58                pop ax
00000FF5  C85388C3          enter word 0x8853,byte 0xc3
00000FF9  8481C307          test [bx+di+0x7c3],al
00000FFD  0485              add al,0x85
00000FFF  C3                ret
00001000  C4                db 0xc4
00001001  DD438C            fld qword [bp+di-0x74]
00001004  C3                ret
00001005  53                push bx
00001006  8858C8            mov [bx+si-0x38],bl
00001009  43                inc bx
0000100A  8E81C307          mov es,word [bx+di+0x7c3]
0000100E  0485              add al,0x85
00001010  C3                ret
00001011  53                push bx
00001012  DD84C3C4          fld qword [si-0x3b3d]
00001016  86C3              xchg al,bl
00001018  0120              add [bx+si],sp
0000101A  C488CD48          les cx,word [bx+si+0x48cd]
0000101E  C8C48F81          enter word 0x8fc4,byte 0x81
00001022  C3                ret
00001023  53                push bx
00001024  E063              loopne 0x1089
00001026  85C3              test bx,ax
00001028  6384C3C4          arpl [si-0x3b3d],ax
0000102C  93                xchg ax,bx
0000102D  C9                leave
0000102E  C8438F53          enter word 0x8f43,byte 0x53
00001032  85C3              test bx,ax
00001034  C485C3C4          les ax,word [di-0x3b3d]
00001038  E086              loopne 0xfc0
0000103A  C3                ret
0000103B  C493538F          les dx,word [bp+di-0x70ad]
0000103F  C3                ret
00001040  53                push bx
00001041  85C3              test bx,ax
00001043  E085              loopne 0xfca
00001045  C3                ret
00001046  C487C3C4          les ax,word [bx-0x3b3d]
0000104A  93                xchg ax,bx
0000104B  C488C3C4          les cx,word [bx+si-0x3b3d]
0000104F  87C3              xchg ax,bx
00001051  53                push bx
00001052  8CC3              mov bx,es
00001054  E087              loopne 0xfdd
00001056  C3                ret
00001057  C486C301          les ax,word [bp+0x1c3]
0000105B  20C4              and ah,al
0000105D  92                xchg ax,dx
0000105E  C3                ret
0000105F  C487C343          les ax,word [bx+0x43c3]
00001063  DD41C1            fld qword [bx+di-0x3f]
00001066  61                popa
00001067  C15188C3          rcl word [bx+di-0x78],byte 0xc3
0000106B  53                push bx
0000106C  86C3              xchg al,bl
0000106E  E043              loopne 0x10b3
00001070  C1C2C1            rol dx,byte 0xc1
00001073  41                inc cx
00001074  50                push ax
00001075  C24087            ret word 0x8740
00001078  C3                ret
00001079  43                inc bx
0000107A  86C3              xchg al,bl
0000107C  53                push bx
0000107D  93                xchg ax,bx
0000107E  C3                ret
0000107F  53                push bx
00001080  86C3              xchg al,bl
00001082  53                push bx
00001083  92                xchg ax,dx
00001084  C3                ret
00001085  43                inc bx
00001086  86C3              xchg al,bl
00001088  53                push bx
00001089  85C3              test bx,ax
0000108B  C4                db 0xc4
0000108C  E0C4              loopne 0x1052
0000108E  8AC3              mov al,bl
00001090  53                push bx
00001091  86C3              xchg al,bl
00001093  53                push bx
00001094  92                xchg ax,dx
00001095  C3                ret
00001096  43                inc bx
00001097  86C3              xchg al,bl
00001099  53                push bx
0000109A  85C3              test bx,ax
0000109C  53                push bx
0000109D  8AC3              mov al,bl
0000109F  C4                db 0xc4
000010A0  DDC4              ffree st4
000010A2  86C3              xchg al,bl
000010A4  53                push bx
000010A5  81CE070F          or si,0xf07
000010A9  D087C343          rol byte [bx+0x43c3],0x0
000010AD  86C3              xchg al,bl
000010AF  53                push bx
000010B0  85C3              test bx,ax
000010B2  53                push bx
000010B3  8AC3              mov al,bl
000010B5  53                push bx
000010B6  86C3              xchg al,bl
000010B8  53                push bx
000010B9  92                xchg ax,dx
000010BA  C3                ret
000010BB  43                inc bx
000010BC  86C3              xchg al,bl
000010BE  53                push bx
000010BF  85C3              test bx,ax
000010C1  53                push bx
000010C2  8ADD              mov bl,ch
000010C4  53                push bx
000010C5  86C3              xchg al,bl
000010C7  53                push bx
000010C8  92                xchg ax,dx
000010C9  C3                ret
000010CA  43                inc bx
000010CB  86C3              xchg al,bl
000010CD  53                push bx
000010CE  85C3              test bx,ax
000010D0  43                inc bx
000010D1  DD85C305          fld qword [di+0x5c3]
000010D5  0488              add al,0x88
000010D7  C3                ret
000010D8  43                inc bx
000010D9  DD81D207          fld qword [bx+di+0x7d2]
000010DD  13D4              adc dx,sp
000010DF  87C3              xchg ax,bx
000010E1  43                inc bx
000010E2  86C3              xchg al,bl
000010E4  DD4385            fld qword [bp+di-0x7b]
000010E7  C3                ret
000010E8  43                inc bx
000010E9  DD85C305          fld qword [di+0x5c3]
000010ED  0488              add al,0x88
000010EF  C3                ret
000010F0  53                push bx
000010F1  92                xchg ax,dx
000010F2  C3                ret
000010F3  C487C353          les ax,word [bx+0x53c3]
000010F7  85C3              test bx,ax
000010F9  53                push bx
000010FA  85C3              test bx,ax
000010FC  07                pop es
000010FD  0486              add al,0x86
000010FF  C3                ret
00001100  53                push bx
00001101  92                xchg ax,dx
00001102  C3                ret
00001103  88C3              mov bl,al
00001105  53                push bx
00001106  85C3              test bx,ax
00001108  53                push bx
00001109  85C3              test bx,ax
0000110B  73E0              jnc 0x10ed
0000110D  43                inc bx
0000110E  86C3              xchg al,bl
00001110  53                push bx
00001111  92                xchg ax,dx
00001112  C3                ret
00001113  88C3              mov bl,al
00001115  53                push bx
00001116  85C3              test bx,ax
00001118  DD87C3C4          fld qword [bx-0x3b3d]
0000111C  8D                db 0x8d
0000111D  C3                ret
0000111E  DD4340            fld qword [bp+di+0x40]
00001121  41                inc cx
00001122  50                push ax
00001123  41                inc cx
00001124  40                inc ax
00001125  90                nop
00001126  C3                ret
00001127  53                push bx
00001128  85C3              test bx,ax
0000112A  C487C3C4          les ax,word [bx-0x3b3d]
0000112E  8D                db 0x8d
0000112F  C3                ret
00001130  53                push bx
00001131  9BC3              wait ret
00001133  53                push bx
00001134  85C3              test bx,ax
00001136  53                push bx
00001137  85C3              test bx,ax
00001139  DD438B            fld qword [bp+di-0x75]
0000113C  C3                ret
0000113D  53                push bx
0000113E  9BC3              wait ret
00001140  53                push bx
00001141  85C3              test bx,ax
00001143  53                push bx
00001144  85C3              test bx,ax
00001146  53                push bx
00001147  8BC3              mov ax,bx
00001149  53                push bx
0000114A  9BC3              wait ret
0000114C  C401              les ax,word [bx+di]
0000114E  1D85C3            sbb ax,0xc385
00001151  53                push bx
00001152  85C3              test bx,ax
00001154  53                push bx
00001155  8BC3              mov ax,bx
00001157  53                push bx
00001158  9BC3              wait ret
0000115A  53                push bx
0000115B  85C3              test bx,ax
0000115D  53                push bx
0000115E  85C3              test bx,ax
00001160  C4                db 0xc4
00001161  DDC4              ffree st4
00001163  8BC3              mov ax,bx
00001165  53                push bx
00001166  9BC3              wait ret
00001168  53                push bx
00001169  85C3              test bx,ax
0000116B  53                push bx
0000116C  85C3              test bx,ax
0000116E  53                push bx
0000116F  8BE0              mov sp,ax
00001171  53                push bx
00001172  9BC3              wait ret
00001174  53                push bx
00001175  85C3              test bx,ax
00001177  53                push bx
00001178  B3C3              mov bl,0xc3
0000117A  53                push bx
0000117B  85C3              test bx,ax
0000117D  43                inc bx
0000117E  DDC2              ffree st2
00001180  50                push ax
00001181  7150              jno 0x11d3
00001183  61                popa
00001184  7041              jo 0x11c7
00001186  50                push ax
00001187  61                popa
00001188  7090              jo 0x111a
0000118A  C3                ret
0000118B  53                push bx
0000118C  85C3              test bx,ax
0000118E  53                push bx
0000118F  B3C3              mov bl,0xc3
00001191  53                push bx
00001192  85C3              test bx,ax
00001194  63E0              arpl ax,sp
00001196  63E0              arpl ax,sp
00001198  43                inc bx
00001199  85C3              test bx,ax
0000119B  E043              loopne 0x11e0
0000119D  97                xchg ax,di
0000119E  C3                ret
0000119F  E088              loopne 0x1129
000011A1  C3                ret
000011A2  53                push bx
000011A3  85C3              test bx,ax
000011A5  0B04              or ax,[si]
000011A7  85C3              test bx,ax
000011A9  53                push bx
000011AA  97                xchg ax,di
000011AB  C3                ret
000011AC  C488C353          les cx,word [bx+si+0x53c3]
000011B0  85C3              test bx,ax
000011B2  53                push bx
000011B3  C507              lds ax,word [bx]
000011B5  0485              add al,0x85
000011B7  C3                ret
000011B8  53                push bx
000011B9  97                xchg ax,di
000011BA  C3                ret
000011BB  53                push bx
000011BC  86C3              xchg al,bl
000011BE  53                push bx
000011BF  85C3              test bx,ax
000011C1  43                inc bx
000011C2  C507              lds ax,word [bx]
000011C4  04DD              add al,0xdd
000011C6  85C3              test bx,ax
000011C8  53                push bx
000011C9  81CE0C0F          or si,0xf0c
000011CD  D087C353          rol byte [bx+0x53c3],0x0
000011D1  86C3              xchg al,bl
000011D3  43                inc bx
000011D4  DD85C3C4          fld qword [di-0x3b3d]
000011D8  C563E0            lds sp,word [bp+di-0x20]
000011DB  0504E0            add ax,0xe004
000011DE  06                push es
000011DF  0497              add al,0x97
000011E1  C3                ret
000011E2  53                push bx
000011E3  86C3              xchg al,bl
000011E5  53                push bx
000011E6  85C3              test bx,ax
000011E8  8AC3              mov al,bl
000011EA  0804              or [si],al
000011EC  DD97C353          fst qword [bx+0x53c3]
000011F0  86C3              xchg al,bl
000011F2  53                push bx
000011F3  85C3              test bx,ax
000011F5  8AC3              mov al,bl
000011F7  0904              or [si],ax
000011F9  81D20C13          adc dx,0x130c
000011FD  D487              aam byte 0x87
000011FF  C3                ret
00001200  E088              loopne 0x118a
00001202  C3                ret
00001203  53                push bx
00001204  85C3              test bx,ax
00001206  8AC3              mov al,bl
00001208  63E0              arpl ax,sp
0000120A  7397              jnc 0x11a3
0000120C  C3                ret
0000120D  E088              loopne 0x1197
0000120F  C3                ret
00001210  C4                db 0xc4
00001211  DDC4              ffree st4
00001213  85DD              test bp,bx
00001215  8AC3              mov al,bl
00001217  C485C353          les ax,word [di+0x53c3]
0000121B  A1C353            mov ax,[0x53c3]
0000121E  90                nop
0000121F  C3                ret
00001220  C485C353          les ax,word [di+0x53c3]
00001224  A1C353            mov ax,[0x53c3]
00001227  90                nop
00001228  C3                ret
00001229  C485C353          les ax,word [di+0x53c3]
0000122D  A1C353            mov ax,[0x53c3]
00001230  90                nop
00001231  C3                ret
00001232  DD85C3C4          fld qword [di-0x3b3d]
00001236  E0C4              loopne 0x11fc
00001238  A1C353            mov ax,[0x53c3]
0000123B  90                nop
0000123C  C3                ret
0000123D  C4AAC353          les bp,word [bp+si+0x53c3]
00001241  90                nop
00001242  C3                ret
00001243  C44051            les ax,word [bx+si+0x51]
00001246  60                pusha
00001247  050260            add ax,0x6002
0000124A  C240C2            ret word 0xc240
0000124D  50                push ax
0000124E  90                nop
0000124F  C3                ret
00001250  53                push bx
00001251  90                nop
00001252  C3                ret
00001253  DD                db 0xdd
00001254  AA                stosb
00001255  C3                ret
00001256  53                push bx
00001257  90                nop
00001258  C3                ret
00001259  DD88C373          fisttp qword [bx+si+0x73c3]
0000125D  E073              loopne 0x12d2
0000125F  96                xchg ax,si
00001260  C3                ret
00001261  53                push bx
00001262  90                nop
00001263  C3                ret
00001264  DD88C30A          fisttp qword [bx+si+0xac3]
00001268  0496              add al,0x96
0000126A  C3                ret
0000126B  53                push bx
0000126C  85C3              test bx,ax
0000126E  94                xchg ax,sp
0000126F  C3                ret
00001270  0504DD            add ax,0xdd04
00001273  53                push bx
00001274  DD96C3DD          fst qword [bp-0x223d]
00001278  43                inc bx
00001279  85C3              test bx,ax
0000127B  94                xchg ax,sp
0000127C  C3                ret
0000127D  0A04              or al,[si]
0000127F  96                xchg ax,si
00001280  C3                ret
00001281  53                push bx
00001282  85C3              test bx,ax
00001284  94                xchg ax,sp
00001285  C3                ret
00001286  43                inc bx
00001287  E007              loopne 0x1290
00001289  0496              add al,0x96
0000128B  C3                ret
0000128C  53                push bx
0000128D  85C3              test bx,ax
0000128F  94                xchg ax,sp
00001290  C3                ret
00001291  43                inc bx
00001292  85C3              test bx,ax
00001294  53                push bx
00001295  96                xchg ax,si
00001296  C3                ret
00001297  43                inc bx
00001298  DD85C394          fld qword [di-0x6b3d]
0000129C  C3                ret
0000129D  43                inc bx
0000129E  85C3              test bx,ax
000012A0  53                push bx
000012A1  8CC3              mov bx,es
000012A3  E088              loopne 0x122d
000012A5  C3                ret
000012A6  53                push bx
000012A7  85C3              test bx,ax
000012A9  C8C792C3          enter word 0x92c7,byte 0xc3
000012AD  43                inc bx
000012AE  85C3              test bx,ax
000012B0  53                push bx
000012B1  8CC3              mov bx,es
000012B3  C488C353          les cx,word [bx+si+0x53c3]
000012B7  85C3              test bx,ax
000012B9  43                inc bx
000012BA  92                xchg ax,dx
000012BB  C3                ret
000012BC  43                inc bx
000012BD  85C3              test bx,ax
000012BF  53                push bx
000012C0  8CC3              mov bx,es
000012C2  DDE0              fucom st0
000012C4  C486C353          les ax,word [bp+0x53c3]
000012C8  85C3              test bx,ax
000012CA  43                inc bx
000012CB  C7405140C2        mov word [bx+si+0x51],0xc240
000012D0  60                pusha
000012D1  41                inc cx
000012D2  40                inc ax
000012D3  81C34385          add bx,0x8543
000012D7  C3                ret
000012D8  53                push bx
000012D9  8CC3              mov bx,es
000012DB  53                push bx
000012DC  86C3              xchg al,bl
000012DE  53                push bx
000012DF  85C3              test bx,ax
000012E1  C4                db 0xc4
000012E2  C7                db 0xc7
000012E3  CA91C3            retf word 0xc391
000012E6  C4                db 0xc4
000012E7  DD85C353          fld qword [di+0x53c3]
000012EB  8CC3              mov bx,es
000012ED  53                push bx
000012EE  86C3              xchg al,bl
000012F0  53                push bx
000012F1  85C9              test cx,cx
000012F3  C8C4CA84          enter word 0xcac4,byte 0x84
000012F7  C3                ret
000012F8  DDC7              ffree st7
000012FA  84C3              test bl,al
000012FC  85C3              test bx,ax
000012FE  43                inc bx
000012FF  85C3              test bx,ax
00001301  53                push bx
00001302  8CC3              mov bx,es
00001304  53                push bx
00001305  86C3              xchg al,bl
00001307  53                push bx
00001308  85D8              test ax,bx
0000130A  C9                leave
0000130B  C8C7CA83          enter word 0xcac7,byte 0x83
0000130F  C3                ret
00001310  43                inc bx
00001311  84C3              test bl,al
00001313  C484C343          les ax,word [si+0x43c3]
00001317  85C3              test bx,ax
00001319  53                push bx
0000131A  8CC3              mov bx,es
0000131C  53                push bx
0000131D  86C3              xchg al,bl
0000131F  53                push bx
00001320  86D8              xchg bl,al
00001322  48                dec ax
00001323  CA83C3            retf word 0xc383
00001326  DDC4              ffree st4
00001328  84C3              test bl,al
0000132A  C484E043          les ax,word [si+0x43e0]
0000132E  85C3              test bx,ax
00001330  53                push bx
00001331  8CC3              mov bx,es
00001333  53                push bx
00001334  86C3              xchg al,bl
00001336  53                push bx
00001337  87D8              xchg bx,ax
00001339  48                dec ax
0000133A  CA8243            retf word 0x4382
0000133D  C784C3C48CC3      mov word [si-0x3b3d],0xc38c
00001343  53                push bx
00001344  8CC3              mov bx,es
00001346  53                push bx
00001347  86C3              xchg al,bl
00001349  0120              add [bx+si],sp
0000134B  C488D848          les cx,word [bx+si+0x48d8]
0000134F  49                dec cx
00001350  43                inc bx
00001351  CA84C3            retf word 0xc384
00001354  C7                db 0xc7
00001355  8CC3              mov bx,es
00001357  53                push bx
00001358  8CC3              mov bx,es
0000135A  43                inc bx
0000135B  DD86C38C          fld qword [bp-0x733d]
0000135F  D858C8            fcomp dword [bx+si-0x38]
00001362  C7                db 0xc7
00001363  C9                leave
00001364  CB                retf
00001365  83C3C7            add bx,0xffffffffffffffc7
00001368  8CC3              mov bx,es
0000136A  53                push bx
0000136B  8CC3              mov bx,es
0000136D  53                push bx
0000136E  8705              xchg ax,[di]
00001370  0151C1            add [bx+di-0x3f],dx
00001373  83D848            sbb ax,0x48
00001376  C8C7C9CA          enter word 0xc9c7,byte 0xca
0000137A  CB                retf
0000137B  82                db 0x82
0000137C  C3                ret
0000137D  CACB8B            retf word 0x8bcb
00001380  C3                ret
00001381  C4                db 0xc4
00001382  DDC4              ffree st4
00001384  8CC3              mov bx,es
00001386  53                push bx
00001387  06                push es
00001388  018ED8C9          add [bp-0x3628],cx
0000138C  43                inc bx
0000138D  C7                db 0xc7
0000138E  CACB82            retf word 0x82cb
00001391  C3                ret
00001392  C7                db 0xc7
00001393  C9                leave
00001394  CB                retf
00001395  8AC3              mov al,bl
00001397  53                push bx
00001398  8CC3              mov bx,es
0000139A  53                push bx
0000139B  878FD8C8          xchg cx,[bx-0x3728]
0000139F  C4                db 0xc4
000013A0  C7                db 0xc7
000013A1  C9                leave
000013A2  CA82C3            retf word 0xc382
000013A5  C9                leave
000013A6  49                dec cx
000013A7  CB                retf
000013A8  89C3              mov bx,ax
000013AA  53                push bx
000013AB  8CC3              mov bx,es
000013AD  C4                db 0xc4
000013AE  DD63E0            frstor [bp+di-0x20]
000013B1  8390C4C7C9        adc word [bx+si-0x383c],0xffffffffffffffc9
000013B6  CA83C3            retf word 0xc383
000013B9  48                dec ax
000013BA  49                dec cx
000013BB  CB                retf
000013BC  88C3              mov bl,al
000013BE  53                push bx
000013BF  8CC3              mov bx,es
000013C1  06                push es
000013C2  0483              add al,0x83
000013C4  90                nop
000013C5  C843CACB          enter word 0xca43,byte 0xcb
000013C9  82                db 0x82
000013CA  C3                ret
000013CB  C7                db 0xc7
000013CC  58                pop ax
000013CD  CACB87            retf word 0x87cb
000013D0  C3                ret
000013D1  53                push bx
000013D2  8CC3              mov bx,es
000013D4  06                push es
000013D5  0483              add al,0x83
000013D7  90                nop
000013D8  E0C4              loopne 0x139e
000013DA  C7                db 0xc7
000013DB  CB                retf
000013DC  8358C7CA          sbb word [bx+si-0x39],0xffffffffffffffca
000013E0  CB                retf
000013E1  88C3              mov bl,al
000013E3  53                push bx
000013E4  8CC3              mov bx,es
000013E6  43                inc bx
000013E7  E0C4              loopne 0x13ad
000013E9  DD4383            fld qword [bp+di-0x7d]
000013EC  90                nop
000013ED  C3                ret
000013EE  43                inc bx
000013EF  84D8              test al,bl
000013F1  68CACB            push word 0xcbca
000013F4  87C3              xchg ax,bx
000013F6  53                push bx
000013F7  8601              xchg al,[bx+di]
000013F9  1D88C3            sbb ax,0xc388
000013FC  53                push bx
000013FD  8390C34385        adc word [bx+si+0x43c3],0xffffffffffffff85
00001402  D858C8            fcomp dword [bx+si-0x38]
00001405  CA4A85            retf word 0x854a
00001408  C3                ret
00001409  53                push bx
0000140A  8601              xchg al,[bx+di]
0000140C  1D88C3            sbb ax,0xc388
0000140F  C48590C3          les ax,word [di-0x3c70]
00001413  43                inc bx
00001414  86D8              xchg bl,al
00001416  C9                leave
00001417  C846C9CA          enter word 0xc946,byte 0xca
0000141B  85C3              test bx,ax
0000141D  53                push bx
0000141E  8601              xchg al,[bx+di]
00001420  1D88C3            sbb ax,0xc388
00001423  C48590C3          les ax,word [di-0x3c70]
00001427  43                inc bx
00001428  87C3              xchg ax,bx
0000142A  C743C9CACB        mov word [bp+di-0x37],0xcbca
0000142F  84C3              test bl,al
00001431  C4                db 0xc4
00001432  DDC4              ffree st4
00001434  8601              xchg al,[bx+di]
00001436  1D88C3            sbb ax,0xc388
00001439  53                push bx
0000143A  8390C3C4DD        adc word [bx+si-0x3b3d],0xffffffffffffffdd
0000143F  87C3              xchg ax,bx
00001441  53                push bx
00001442  CACB85            retf word 0x85cb
00001445  C3                ret
00001446  C4                db 0xc4
00001447  DDC4              ffree st4
00001449  8601              xchg al,[bx+di]
0000144B  1D88C3            sbb ax,0xc388
0000144E  53                push bx
0000144F  8390C34387        adc word [bx+si+0x43c3],0xffffffffffffff87
00001454  C3                ret
00001455  53                push bx
00001456  CB                retf
00001457  86C3              xchg al,bl
00001459  53                push bx
0000145A  86DD              xchg bl,ch
0000145C  E088              loopne 0x13e6
0000145E  C3                ret
0000145F  53                push bx
00001460  8390C34387        adc word [bx+si+0x43c3],0xffffffffffffff87
00001465  C3                ret
00001466  43                inc bx
00001467  DD87C353          fld qword [bx+0x53c3]
0000146B  8601              xchg al,[bx+di]
0000146D  2088C353          and [bx+si+0x53c3],cl
00001471  8390C3DDC4        adc word [bx+si-0x223d],0xffffffffffffffc4
00001476  87C3              xchg ax,bx
00001478  53                push bx
00001479  87C3              xchg ax,bx
0000147B  53                push bx
0000147C  8601              xchg al,[bx+di]
0000147E  2088C353          and [bx+si+0x53c3],cl
00001482  8390C34387        adc word [bx+si+0x43c3],0xffffffffffffff87
00001487  C3                ret
00001488  C54387            lds ax,word [bp+di-0x79]
0000148B  E0C4              loopne 0x1451
0000148D  0120              add [bx+si],sp
0000148F  8601              xchg al,[bx+di]
00001491  2088C353          and [bx+si+0x53c3],cl
00001495  83AF012088        sub word [bx+0x2001],0xffffffffffffff88
0000149A  C3                ret
0000149B  DD4383            fld qword [bp+di-0x7d]
0000149E  60                pusha
0000149F  C2C141            ret word 0x41c1
000014A2  50                push ax
000014A3  050207            add ax,0x702
000014A6  015170            add [bx+di+0x70],dx
000014A9  51                push cx
000014AA  60                pusha
000014AB  51                push cx
000014AC  C1418101          rol word [bx+di-0x7f],byte 0x1
000014B0  20C4              and ah,al
000014B2  87C3              xchg ax,bx
000014B4  53                push bx
000014B5  41                inc cx
000014B6  C1AFE04387        shr word [bx+0x43e0],byte 0x87
000014BB  C3                ret
000014BC  53                push bx
000014BD  8385C30120        add word [di+0x1c3],0x20
000014C2  C487C3C4          les ax,word [bx-0x3b3d]
000014C6  8FC3              pop bx
000014C8  E0C4              loopne 0x148e
000014CA  8BE0              mov sp,ax
000014CC  C4                db 0xc4
000014CD  DD87C353          fld qword [bx+0x53c3]
000014D1  8385C35387        add word [di+0x53c3],0xffffffffffffff87
000014D6  C3                ret
000014D7  C4                db 0xc4
000014D8  C7                db 0xc7
000014D9  CB                retf
000014DA  8D                db 0x8d
000014DB  C3                ret
000014DC  43                inc bx
000014DD  C7                db 0xc7
000014DE  4A                dec dx
000014DF  88C3              mov bl,al
000014E1  43                inc bx
000014E2  87C3              xchg ax,bx
000014E4  53                push bx
000014E5  8385C35387        add word [di+0x53c3],0xffffffffffffff87
000014EA  C3                ret
000014EB  43                inc bx
000014EC  CA8DC3            retf word 0xc38d
000014EF  43                inc bx
000014F0  C7                db 0xc7
000014F1  C9                leave
000014F2  CA88C3            retf word 0xc388
000014F5  43                inc bx
000014F6  87C3              xchg ax,bx
000014F8  53                push bx
000014F9  8385C35387        add word [di+0x53c3],0xffffffffffffff87
000014FE  C3                ret
000014FF  43                inc bx
00001500  C7                db 0xc7
00001501  CB                retf
00001502  8CC3              mov bx,es
00001504  43                inc bx
00001505  C7                db 0xc7
00001506  C9                leave
00001507  CACB87            retf word 0x87cb
0000150A  C3                ret
0000150B  43                inc bx
0000150C  87C3              xchg ax,bx
0000150E  C4                db 0xc4
0000150F  DDC4              ffree st4
00001511  8385C343DD        add word [di+0x43c3],0xffffffffffffffdd
00001516  87C3              xchg ax,bx
00001518  53                push bx
00001519  CA8CC3            retf word 0xc38c
0000151C  43                inc bx
0000151D  C7                db 0xc7
0000151E  48                dec ax
0000151F  CA87C3            retf word 0xc387
00001522  43                inc bx
00001523  87C3              xchg ax,bx
00001525  53                push bx
00001526  8385C35387        add word [di+0x53c3],0xffffffffffffff87
0000152B  C3                ret
0000152C  43                inc bx
0000152D  C7                db 0xc7
0000152E  CACB8B            retf word 0x8bcb
00001531  C3                ret
00001532  43                inc bx
00001533  C7                db 0xc7
00001534  49                dec cx
00001535  CB                retf
00001536  87C3              xchg ax,bx
00001538  DDC4              ffree st4
0000153A  87C3              xchg ax,bx
0000153C  53                push bx
0000153D  8385C35387        add word [di+0x53c3],0xffffffffffffff87
00001542  C3                ret
00001543  53                push bx
00001544  49                dec cx
00001545  CB                retf
00001546  8AC3              mov al,bl
00001548  53                push bx
00001549  C7                db 0xc7
0000154A  C9                leave
0000154B  CA4A85            retf word 0x854a
0000154E  C3                ret
0000154F  43                inc bx
00001550  87C3              xchg ax,bx
00001552  53                push bx
00001553  8385C35387        add word [di+0x53c3],0xffffffffffffff87
00001558  C3                ret
00001559  43                inc bx
0000155A  C7                db 0xc7
0000155B  CAC9CA            retf word 0xcac9
0000155E  CB                retf
0000155F  89C3              mov bx,ax
00001561  53                push bx
00001562  C7                db 0xc7
00001563  C9                leave
00001564  C7                db 0xc7
00001565  C9                leave
00001566  CA8FC3            retf word 0xc38f
00001569  43                inc bx
0000156A  DD8385C3          fld qword [bp+di-0x3c7b]
0000156E  53                push bx
0000156F  87C3              xchg ax,bx
00001571  C4                db 0xc4
00001572  C747C7C9CA        mov word [bx-0x39],0xcac9
00001577  89C3              mov bx,ax
00001579  53                push bx
0000157A  46                inc si
0000157B  48                dec ax
0000157C  CA8FC3            retf word 0xc38f
0000157F  43                inc bx
00001580  DD8385C3          fld qword [bp+di-0x3c7b]
00001584  53                push bx
00001585  87C3              xchg ax,bx
00001587  53                push bx
00001588  C7                db 0xc7
00001589  C9                leave
0000158A  CA8AC3            retf word 0xc38a
0000158D  6346CA            arpl [bp-0x36],ax
00001590  CB                retf
00001591  8FC3              pop bx
00001593  53                push bx
00001594  8385C35387        add word [di+0x53c3],0xffffffffffffff87
00001599  C3                ret
0000159A  43                inc bx
0000159B  C8C748CA          enter word 0x48c7,byte 0xca
0000159F  CB                retf
000015A0  88C3              mov bl,al
000015A2  0804              or [si],al
000015A4  E005              loopne 0x15ab
000015A6  0487              add al,0x87
000015A8  C3                ret
000015A9  53                push bx
000015AA  8385C35384        add word [di+0x53c3],0xffffffffffffff84
000015AF  C3                ret
000015B0  0504CA            add ax,0xca04
000015B3  C8C7CB89          enter word 0xcbc7,byte 0x89
000015B7  C3                ret
000015B8  43                inc bx
000015B9  DD05              fld qword [di]
000015BB  04DD              add al,0xdd
000015BD  53                push bx
000015BE  DD4387            fld qword [bp+di-0x79]
000015C1  C3                ret
000015C2  53                push bx
000015C3  8385C35384        add word [di+0x53c3],0xffffffffffffff84
000015C8  C3                ret
000015C9  73C7              jnc 0x1592
000015CB  49                dec cx
000015CC  CB                retf
000015CD  8AC3              mov al,bl
000015CF  0F                db 0x0f
000015D0  0487              add al,0x87
000015D2  C3                ret
000015D3  53                push bx
000015D4  8385C3C4DD        add word [di-0x3b3d],0xffffffffffffffdd
000015D9  C484C343          les ax,word [si+0x43c3]
000015DD  DDC4              ffree st4
000015DF  C7                db 0xc7
000015E0  C8CACB8B          enter word 0xcbca,byte 0x8b
000015E4  C3                ret
000015E5  43                inc bx
000015E6  DD63E0            frstor [bp+di-0x20]
000015E9  07                pop es
000015EA  0487              add al,0x87
000015EC  E053              loopne 0x1641
000015EE  8385C35384        add word [di+0x53c3],0xffffffffffffff84
000015F3  D6                salc
000015F4  E163              loope 0x1659
000015F6  C7                db 0xc7
000015F7  CA8CC3            retf word 0xc38c
000015FA  7386              jnc 0x1582
000015FC  C3                ret
000015FD  53                push bx
000015FE  DD8E5182          fisttp qword [bp-0x7daf]
00001602  C3                ret
00001603  53                push bx
00001604  84D6              test dh,dl
00001606  E153              loope 0x165b
00001608  C7                db 0xc7
00001609  CC                int3
0000160A  40                inc ax
0000160B  41                inc cx
0000160C  60                pusha
0000160D  41                inc cx
0000160E  40                inc ax
0000160F  81C37386          add bx,0x8673
00001613  C3                ret
00001614  6309              arpl [bx+di],cx
00001616  02C1              add al,cl
00001618  41                inc cx
00001619  C185C35384        rol word [di+0x53c3],byte 0x84
0000161E  D6                salc
0000161F  E1E0              loope 0x1601
00001621  43                inc bx
00001622  C7                db 0xc7
00001623  C9                leave
00001624  CA8CDD            retf word 0xdd8c
00001627  7386              jnc 0x15af
00001629  C3                ret
0000162A  638EE007          arpl [bp+0x7e0],cx
0000162E  0484              add al,0x84
00001630  D6                salc
00001631  E1E0              loope 0x1613
00001633  53                push bx
00001634  C8CB84C8          enter word 0x84cb,byte 0xc8
00001638  0C04              or al,0x4
0000163A  86C3              xchg al,bl
0000163C  0504E0            add ax,0xe004
0000163F  43                inc bx
00001640  86C3              xchg al,bl
00001642  C4                db 0xc4
00001643  E007              loopne 0x164c
00001645  04DD              add al,0xdd
00001647  84D6              test dh,dl
00001649  E173              loope 0x16be
0000164B  85C3              test bx,ax
0000164D  0C04              or al,0x4
0000164F  86C3              xchg al,bl
00001651  0804              or [si],al
00001653  86C3              xchg al,bl
00001655  43                inc bx
00001656  53                push bx
00001657  DD7384            fnsave [bp+di-0x7c]
0000165A  D6                salc
0000165B  E173              loope 0x16d0
0000165D  85C3              test bx,ax
0000165F  0C04              or al,0x4
00001661  86C3              xchg al,bl
00001663  C4                db 0xc4
00001664  E006              loopne 0x166c
00001666  0486              add al,0x86
00001668  C3                ret
00001669  43                inc bx
0000166A  C4                db 0xc4
0000166B  E006              loopne 0x1673
0000166D  0484              add al,0x84
0000166F  C3                ret
00001670  E073              loopne 0x16e5
00001672  84C8              test al,cl
00001674  63E0              arpl ax,sp
00001676  63E0              arpl ax,sp
00001678  6386C3C4          arpl [bp-0x3b3d],ax
0000167C  85C3              test bx,ax
0000167E  43                inc bx
0000167F  86C3              xchg al,bl
00001681  43                inc bx
00001682  C486C3E0          les ax,word [bp-0x1f3d]
00001686  84C3              test bl,al
00001688  43                inc bx
00001689  DD43DD            fld qword [bp+di-0x23]
0000168C  84C3              test bl,al
0000168E  53                push bx
0000168F  87C3              xchg ax,bx
00001691  43                inc bx
00001692  DD86C3C4          fld qword [bp-0x3b3d]
00001696  85C3              test bx,ax
00001698  C4                db 0xc4
00001699  DD86C343          fld qword [bp+0x43c3]
0000169D  C486C3E0          les ax,word [bp-0x1f3d]
000016A1  84C3              test bl,al
000016A3  050484            add ax,0x8404
000016A6  C3                ret
000016A7  53                push bx
000016A8  87C3              xchg ax,bx
000016AA  53                push bx
000016AB  86C3              xchg al,bl
000016AD  C485C343          les ax,word [di+0x43c3]
000016B1  86C3              xchg al,bl
000016B3  43                inc bx
000016B4  C490C343          les dx,word [bx+si+0x43c3]
000016B8  84C3              test bl,al
000016BA  53                push bx
000016BB  87C3              xchg ax,bx
000016BD  53                push bx
000016BE  86C3              xchg al,bl
000016C0  C485C343          les ax,word [di+0x43c3]
000016C4  86C3              xchg al,bl
000016C6  43                inc bx
000016C7  DD50C2            fst qword [bx+si-0x3e]
000016CA  0501C2            add ax,0xc201
000016CD  60                pusha
000016CE  81C386C3          add bx,0xc386
000016D2  53                push bx
000016D3  87E0              xchg sp,ax
000016D5  53                push bx
000016D6  86C3              xchg al,bl
000016D8  C4                db 0xc4
000016D9  DA84C343          fiadd dword [si+0x43c3]
000016DD  86C3              xchg al,bl
000016DF  43                inc bx
000016E0  C490DD86          les dx,word [bx+si-0x7923]
000016E4  C3                ret
000016E5  DD4391            fld qword [bp+di-0x6f]
000016E8  C3                ret
000016E9  DDDB              fstp st3
000016EB  84C3              test bl,al
000016ED  43                inc bx
000016EE  86C3              xchg al,bl
000016F0  43                inc bx
000016F1  C488C38E          les cx,word [bx+si-0x713d]
000016F5  C3                ret
000016F6  53                push bx
000016F7  50                push ax
000016F8  C2C141            ret word 0x41c1
000016FB  60                pusha
000016FC  41                inc cx
000016FD  50                push ax
000016FE  81C3C4DC          add bx,0xdcc4
00001702  84C3              test bl,al
00001704  DDC4              ffree st4
00001706  86C3              xchg al,bl
00001708  43                inc bx
00001709  C488C38E          les cx,word [bx+si-0x713d]
0000170D  C3                ret
0000170E  53                push bx
0000170F  91                xchg ax,cx
00001710  C3                ret
00001711  C4                db 0xc4
00001712  D7                xlatb
00001713  84C3              test bl,al
00001715  43                inc bx
00001716  86C3              xchg al,bl
00001718  43                inc bx
00001719  C488C3C7          les cx,word [bx+si-0x383d]
0000171D  CACB8B            retf word 0x8bcb
00001720  C3                ret
00001721  53                push bx
00001722  85C3              test bx,ax
00001724  43                inc bx
00001725  E0C4              loopne 0x16eb
00001727  87C3              xchg ax,bx
00001729  C4                db 0xc4
0000172A  C684C34386        mov byte [si+0x43c3],0x86
0000172F  C3                ret
00001730  43                inc bx
00001731  C488C3C7          les cx,word [bx+si-0x383d]
00001735  C9                leave
00001736  CACB8A            retf word 0x8acb
00001739  C3                ret
0000173A  43                inc bx
0000173B  DD85C363          fld qword [di+0x63c3]
0000173F  87C3              xchg ax,bx
00001741  C485C343          les ax,word [di+0x43c3]
00001745  86C3              xchg al,bl
00001747  C4                db 0xc4
00001748  DD7C00            fnstsw [si+0x0]
0000174B  228E0022          and cl,[bp+0x2200]
0000174F  B100              mov cl,0x0
00001751  22C3              and al,bl
00001753  0022              add [bp+si],ah
00001755  2901              sub [bx+di],ax
00001757  2F                das
00001758  2A01              sub al,[bx+di]
0000175A  0DFFFF            or ax,0xffff
0000175D  FF                db 0xff
0000175E  FF0B              dec word [bp+di]
00001760  40                inc ax
00001761  123A              adc bh,[bp+si]
00001763  0115              add [di],dx
00001765  0025              add [di],ah
00001767  40                inc ax
00001768  A21F00            mov [0x1f],al
0000176B  2B00              sub ax,[bx+si]
0000176D  358089            xor ax,0x8980
00001770  3100              xor [bx+si],ax
00001772  37                aaa
00001773  003A              add [bp+si],bh
00001775  80B8300046        cmp byte [bx+si+0x30],0x46
0000177A  003C              add [si],bh
0000177C  80AA320044        sub byte [bp+si+0x32],0x44
00001781  004F80            add [bx-0x80],cl
00001784  8B4300            mov ax,[bp+di+0x0]
00001787  65005D80          add [gs:di-0x80],bl
0000178B  0D5200            or ax,0x52
0000178E  65009580B4        add [gs:di-0x4b80],dl
00001793  90                nop
00001794  009800C2          add [bx+si-0x3e00],bl
00001798  40                inc ax
00001799  B8BB00            mov ax,0xbb
0000179C  D900              fld dword [bx+si]
0000179E  D18097CB          rol word [bx+si-0x3469],0x0
000017A2  00D9              add cl,bl
000017A4  00EB              add bl,ch
000017A6  40                inc ax
000017A7  B7E4              mov bh,0xe4
000017A9  00EF              add bh,ch
000017AB  00F7              add bh,dh
000017AD  40                inc ax
000017AE  B1D7              mov cl,0xd7
000017B0  001D              add [di],bl
000017B2  01FC              add sp,di
000017B4  40                inc ax
000017B5  89F5              mov bp,si
000017B7  0003              add [bp+di],al
000017B9  01FD              add bp,di
000017BB  40                inc ax
000017BC  B7F6              mov bh,0xf6
000017BE  0004              add [si],al
000017C0  01FF              add di,di
000017C2  FF0B              dec word [bp+di]
000017C4  0029              add [bx+di],ch
000017C6  40                inc ax
000017C7  127F00            adc bh,[bx+0x0]
000017CA  07                pop es
000017CB  002B              add [bp+di],ch
000017CD  0020              add [bx+si],ah
000017CF  0C00              or al,0x0
000017D1  1BC1              sbb ax,cx
000017D3  0F                db 0x0f
000017D4  0C00              or al,0x0
000017D6  1B00              sbb ax,[bx+si]
000017D8  FF                db 0xff
000017D9  FF                db 0xff
000017DA  FF0E0005          dec word [0x500]
000017DE  C20D34            ret word 0x340d
000017E1  0015              add [di],dl
000017E3  00FF              add bh,bh
000017E5  FF                db 0xff
000017E6  FF1C              call word far [si]
000017E8  002EC211          add [0x11c2],ch
000017EC  2F                das
000017ED  000E00FF          add [0xff00],cl
000017F1  FF                db 0xff
000017F2  FF1E001C          call word far [0x1c00]
000017F6  C40F              les cx,word [bx]
000017F8  1E                push ds
000017F9  001C              add [si],bl
000017FB  00FF              add bh,bh
000017FD  FF                db 0xff
000017FE  FF1F              call word far [bx]
00001800  0005              add [di],al
00001802  43                inc bx
00001803  103E000D          adc [0xd00],bh
00001807  012B              add [bp+di],bp
00001809  0010              add [bx+si],dl
0000180B  5A                pop dx
0000180C  0025              add [di],ah
0000180E  C40F              les cx,word [bx]
00001810  5A                pop dx
00001811  0025              add [di],ah
00001813  00FF              add bh,bh
00001815  FF                db 0xff
00001816  FF83001E          inc word [bp+di+0x1e00]
0000181A  C20FDD            ret word 0xdd0f
0000181D  0001              add [bx+di],al
0000181F  00FF              add bh,bh
00001821  FF                db 0xff
00001822  FF96001E          call word near [bp+0x1e00]
00001826  C20F96            ret word 0x960f
00001829  001E00FF          add [0xff00],bl
0000182D  FF                db 0xff
0000182E  FFA9001E          jmp word far [bx+di+0x1e00]
00001832  C20FA9            ret word 0xa90f
00001835  001E00FF          add [0xff00],bl
00001839  FF                db 0xff
0000183A  FF                db 0xff
0000183B  BC001E            mov sp,0x1e00
0000183E  C10FBC            ror word [bx],byte 0xbc
00001841  001E00FF          add [0xff00],bl
00001845  FF                db 0xff
00001846  FF                db 0xff
00001847  F9                stc
00001848  000F              add [bx],cl
0000184A  C40F              les cx,word [bx]
0000184C  F9                stc
0000184D  000F              add [bx],cl
0000184F  00FF              add bh,bh
00001851  FF                db 0xff
00001852  FF35              push word [di]
00001854  0129              add [bx+di],bp
00001856  0111              add [bx+di],dx
00001858  1B00              sbb ax,[bx+si]
0000185A  0E                push cs
0000185B  002B              add [bp+di],ch
0000185D  0008              add [bx+si],cl
0000185F  3B01              cmp ax,[bx+di]
00001861  304006            xor [bx+si+0x6],al
00001864  D100              rol word [bx+si],0x0
00001866  FF00              inc word [bx+si]
00001868  2B00              sub ax,[bx+si]
0000186A  04FF              add al,0xff
0000186C  FF28              jmp word far [bx+si]
0000186E  00FF              add bh,bh
00001870  13C0              adc ax,ax
00001872  FF                db 0xff
00001873  FF                db 0xff
00001874  FF                db 0xff
00001875  FF2A              jmp word far [bp+si]
00001877  00806FD9          add [bx+si-0x2691],al
0000187B  00FF              add bh,bh
0000187D  7AD9              jpe 0x1858
0000187F  FF                db 0xff
00001880  FF                db 0xff
00001881  FF                db 0xff
00001882  FF2A              jmp word far [bp+si]
00001884  00404F            add [bx+si+0x4f],al
00001887  DA00              fiadd dword [bx+si]
00001889  FF5ADA            call word far [bp+si-0x26]
0000188C  FF                db 0xff
0000188D  FF                db 0xff
0000188E  FF                db 0xff
0000188F  FF2A              jmp word far [bp+si]
00001891  0020              add [bx+si],ah
00001893  AF                scasw
00001894  DA00              fiadd dword [bx+si]
00001896  FF                db 0xff
00001897  BADAFF            mov dx,0xffda
0000189A  FF                db 0xff
0000189B  FF                db 0xff
0000189C  FF2A              jmp word far [bp+si]
0000189E  0010              add [bx+si],dl
000018A0  18DB              sbb bl,bl
000018A2  0000              add [bx+si],al
000018A4  FF                db 0xff
000018A5  FF2A              jmp word far [bp+si]
000018A7  0008              add [bx+si],cl
000018A9  9F                lahf
000018AA  DB00              fild dword [bx+si]
000018AC  FFAADBFF          jmp word far [bp+si-0x25]
000018B0  FF                db 0xff
000018B1  FF                db 0xff
000018B2  FF2A              jmp word far [bp+si]
000018B4  0004              add [si],al
000018B6  CF                iret
000018B7  DB00              fild dword [bx+si]
000018B9  FF                db 0xff
000018BA  DADB              fcmovu st3
000018BC  FF                db 0xff
000018BD  FF                db 0xff
000018BE  FF                db 0xff
000018BF  FF2A              jmp word far [bp+si]
000018C1  0002              add [bp+si],al
000018C3  7FDC              jg 0x18a1
000018C5  00FF              add bh,bh
000018C7  8ADC              mov bl,ah
000018C9  FF                db 0xff
000018CA  FF                db 0xff
000018CB  FF                db 0xff
000018CC  FF2A              jmp word far [bp+si]
000018CE  0001              add [bx+di],al
000018D0  8F                db 0x8f
000018D1  DC00              fadd qword [bx+si]
000018D3  FF9ADCFF          call word far [bp+si-0x24]
000018D7  FF                db 0xff
000018D8  FF                db 0xff
000018D9  FF2B              jmp word far [bp+di]
000018DB  00809FDC          add [bx+si-0x2361],al
000018DF  00FF              add bh,bh
000018E1  AA                stosb
000018E2  DCFF              fdiv st7,st0
000018E4  FF                db 0xff
000018E5  FF                db 0xff
000018E6  FF2B              jmp word far [bp+di]
000018E8  0040EF            add [bx+si-0x11],al
000018EB  DC00              fadd qword [bx+si]
000018ED  FF                db 0xff
000018EE  FA                cli
000018EF  DCFF              fdiv st7,st0
000018F1  FF                db 0xff
000018F2  FF                db 0xff
000018F3  FF2B              jmp word far [bp+di]
000018F5  0020              add [bx+si],ah
000018F7  C2D7C0            ret word 0xc0d7
000018FA  12FF              adc bh,bh
000018FC  FF2B              jmp word far [bp+di]
000018FE  0010              add [bx+si],dl
00001900  FE                db 0xfe
00001901  D7                xlatb
00001902  C3                ret
00001903  10FF              adc bh,bh
00001905  FF2B              jmp word far [bp+di]
00001907  0008              add [bx+si],cl
00001909  52                push dx
0000190A  D88111FF          fadd dword [bx+di-0xef]
0000190E  FF2B              jmp word far [bp+di]
00001910  0004              add [si],al
00001912  5E                pop si
00001913  D8C0              fadd st0
00001915  06                push es
00001916  FF                db 0xff
00001917  FF                db 0xff
00001918  FF                db 0xff
00001919  FF17              call word near [bx]
0000191B  AF                scasw
0000191C  0010              add [bx+si],dl
0000191E  43                inc bx
0000191F  61                popa
00001920  7665              jna 0x1987
00001922  726E              jc 0x1992
00001924  206F66            and [bx+0x66],ch
00001927  205465            and [si+0x65],dl
0000192A  736F              jnc 0x199b
0000192C  726F              jc 0x199d
0000192E  1300              adc ax,[bx+si]
00001930  050A0A            add ax,0xa0a
00001933  0900              or [bx+si],ax
00001935  3BFF              cmp di,di
00001937  0300              add ax,[bx+si]
00001939  0000              add [bx+si],al
0000193B  0000              add [bx+si],al
0000193D  0009              add [bx+di],cl
0000193F  003B              add [bp+di],bh
00001941  0300              add ax,[bx+si]
00001943  0F000C            str word [si]
00001946  FF04              inc word [si]
00001948  0000              add [bx+si],al
0000194A  0000              add [bx+si],al
0000194C  0000              add [bx+si],al
0000194E  0F000C            str word [si]
00001951  0400              add al,0x0
00001953  1100              adc [bx+si],ax
00001955  34FF              xor al,0xff
00001957  0400              add al,0x0
00001959  0000              add [bx+si],al
0000195B  0000              add [bx+si],al
0000195D  0011              add [bx+di],dl
0000195F  0034              add [si],dh
00001961  0400              add al,0x0
00001963  2400              and al,0x0
00001965  0AFF              or bh,bh
00001967  0400              add al,0x0
00001969  0000              add [bx+si],al
0000196B  0000              add [bx+si],al
0000196D  0024              add [si],ah
0000196F  000A              add [bp+si],cl
00001971  0400              add al,0x0
00001973  2900              sub [bx+si],ax
00001975  34FF              xor al,0xff
00001977  7300              jnc 0x1979
00001979  0020              add [bx+si],ah
0000197B  0018              add [bx+si],bl
0000197D  002A              add [bp+si],ch
0000197F  00800000          add [bx+si+0x0],al
00001983  3300              xor ax,[bx+si]
00001985  19FF              sbb di,di
00001987  0400              add al,0x0
00001989  0000              add [bx+si],al
0000198B  0000              add [bx+si],al
0000198D  0033              add [bp+di],dh
0000198F  0019              add [bx+di],bl
00001991  0400              add al,0x0
00001993  3800              cmp [bx+si],al
00001995  3CFF              cmp al,0xff
00001997  0200              add al,[bx+si]
00001999  0000              add [bx+si],al
0000199B  0000              add [bx+si],al
0000199D  0038              add [bx+si],bh
0000199F  003C              add [si],bh
000019A1  0200              add al,[bx+si]
000019A3  3F                aas
000019A4  0000              add [bx+si],al
000019A6  FF04              inc word [si]
000019A8  0000              add [bx+si],al
000019AA  0000              add [bx+si],al
000019AC  0000              add [bx+si],al
000019AE  3F                aas
000019AF  0000              add [bx+si],al
000019B1  0400              add al,0x0
000019B3  55                push bp
000019B4  002D              add [di],ch
000019B6  FF04              inc word [si]
000019B8  0000              add [bx+si],al
000019BA  0000              add [bx+si],al
000019BC  0000              add [bx+si],al
000019BE  55                push bp
000019BF  002D              add [di],ch
000019C1  0400              add al,0x0
000019C3  56                push si
000019C4  0011              add [bx+di],dl
000019C6  FF03              inc word [bp+di]
000019C8  0000              add [bx+si],al
000019CA  0000              add [bx+si],al
000019CC  0000              add [bx+si],al
000019CE  56                push si
000019CF  0011              add [bx+di],dl
000019D1  0300              add ax,[bx+si]
000019D3  5C                pop sp
000019D4  0016FF04          add [0x4ff],dl
000019D8  0000              add [bx+si],al
000019DA  0000              add [bx+si],al
000019DC  0000              add [bx+si],al
000019DE  5C                pop sp
000019DF  00160400          add [0x4],dl
000019E3  61                popa
000019E4  0029              add [bx+di],ch
000019E6  FF03              inc word [bp+di]
000019E8  0000              add [bx+si],al
000019EA  0000              add [bx+si],al
000019EC  0000              add [bx+si],al
000019EE  61                popa
000019EF  0029              add [bx+di],ch
000019F1  0300              add ax,[bx+si]
000019F3  64001EFF02        add [fs:0x2ff],bl
000019F8  0000              add [bx+si],al
000019FA  0000              add [bx+si],al
000019FC  0000              add [bx+si],al
000019FE  64001E0200        add [fs:0x2],bl
00001A03  6D                insw
00001A04  0038              add [bx+si],bh
00001A06  FF02              inc word [bp+si]
00001A08  0000              add [bx+si],al
00001A0A  0000              add [bx+si],al
00001A0C  0000              add [bx+si],al
00001A0E  6D                insw
00001A0F  0038              add [bx+si],bh
00001A11  0200              add al,[bx+si]
00001A13  6F                outsw
00001A14  0022              add [bp+si],ah
00001A16  FF04              inc word [si]
00001A18  0000              add [bx+si],al
00001A1A  0000              add [bx+si],al
00001A1C  0000              add [bx+si],al
00001A1E  6F                outsw
00001A1F  0022              add [bp+si],ah
00001A21  0400              add al,0x0
00001A23  7200              jc 0x1a25
00001A25  0FFF00            ud0 ax,[bx+si]
00001A28  0000              add [bx+si],al
00001A2A  1000              adc [bx+si],al
00001A2C  0000              add [bx+si],al
00001A2E  7200              jc 0x1a30
00001A30  0F0000            sldt word [bx+si]
00001A33  7200              jc 0x1a35
00001A35  11FF              adc di,di
00001A37  0100              add [bx+si],ax
00001A39  0010              add [bx+si],dl
00001A3B  0000              add [bx+si],al
00001A3D  007200            add [bp+si+0x0],dh
00001A40  1101              adc [bx+di],ax
00001A42  007600            add [bp+0x0],dh
00001A45  1E                push ds
00001A46  FF02              inc word [bp+si]
00001A48  0000              add [bx+si],al
00001A4A  0000              add [bx+si],al
00001A4C  0000              add [bx+si],al
00001A4E  7600              jna 0x1a50
00001A50  1E                push ds
00001A51  0200              add al,[bx+si]
00001A53  7700              ja 0x1a55
00001A55  0DFF73            or ax,0x73ff
00001A58  0003              add [bp+di],al
00001A5A  2000              and [bx+si],al
00001A5C  0000              add [bx+si],al
00001A5E  2A00              sub al,[bx+si]
00001A60  40                inc ax
00001A61  0000              add [bx+si],al
00001A63  7D00              jnl 0x1a65
00001A65  29FF              sub di,di
00001A67  0300              add ax,[bx+si]
00001A69  0000              add [bx+si],al
00001A6B  0000              add [bx+si],al
00001A6D  007D00            add [di+0x0],bh
00001A70  2903              sub [bp+di],ax
00001A72  007D00            add [di+0x0],bh
00001A75  2DFF04            sub ax,0x4ff
00001A78  0000              add [bx+si],al
00001A7A  0000              add [bx+si],al
00001A7C  0000              add [bx+si],al
00001A7E  7D00              jnl 0x1a80
00001A80  2D0400            sub ax,0x4
00001A83  830038            add word [bx+si],0x38
00001A86  FF02              inc word [bp+si]
00001A88  0000              add [bx+si],al
00001A8A  0000              add [bx+si],al
00001A8C  0000              add [bx+si],al
00001A8E  830038            add word [bx+si],0x38
00001A91  0200              add al,[bx+si]
00001A93  8500              test [bx+si],ax
00001A95  01FF              add di,di
00001A97  0000              add [bx+si],al
00001A99  0010              add [bx+si],dl
00001A9B  0000              add [bx+si],al
00001A9D  00850001          add [di+0x100],al
00001AA1  0000              add [bx+si],al
00001AA3  8500              test [bx+si],ax
00001AA5  03FF              add di,di
00001AA7  0100              add [bx+si],ax
00001AA9  0010              add [bx+si],dl
00001AAB  0000              add [bx+si],al
00001AAD  00850003          add [di+0x300],al
00001AB1  0100              add [bx+si],ax
00001AB3  8C00              mov word [bx+si],es
00001AB5  0E                push cs
00001AB6  FF7600            push word [bp+0x0]
00001AB9  0020              add [bx+si],ah
00001ABB  0000              add [bx+si],al
00001ABD  002A              add [bp+si],ch
00001ABF  0020              add [bx+si],ah
00001AC1  0000              add [bx+si],al
00001AC3  8E00              mov es,word [bx+si]
00001AC5  16                push ss
00001AC6  FF00              inc word [bx+si]
00001AC8  0000              add [bx+si],al
00001ACA  1000              adc [bx+si],al
00001ACC  0000              add [bx+si],al
00001ACE  8E00              mov es,word [bx+si]
00001AD0  16                push ss
00001AD1  0000              add [bx+si],al
00001AD3  8E00              mov es,word [bx+si]
00001AD5  18FF              sbb bh,bh
00001AD7  0100              add [bx+si],ax
00001AD9  0010              add [bx+si],dl
00001ADB  0000              add [bx+si],al
00001ADD  008E0018          add [bp+0x1800],cl
00001AE1  0100              add [bx+si],ax
00001AE3  93                xchg ax,bx
00001AE4  0008              add [bx+si],cl
00001AE6  FF04              inc word [si]
00001AE8  0000              add [bx+si],al
00001AEA  0000              add [bx+si],al
00001AEC  0000              add [bx+si],al
00001AEE  93                xchg ax,bx
00001AEF  0008              add [bx+si],cl
00001AF1  0400              add al,0x0
00001AF3  96                xchg ax,si
00001AF4  0003              add [bp+di],al
00001AF6  FF02              inc word [bp+si]
00001AF8  0000              add [bx+si],al
00001AFA  0000              add [bx+si],al
00001AFC  0000              add [bx+si],al
00001AFE  96                xchg ax,si
00001AFF  0003              add [bp+di],al
00001B01  0200              add al,[bx+si]
00001B03  9B0023            wait add [bp+di],ah
00001B06  FF04              inc word [si]
00001B08  0000              add [bx+si],al
00001B0A  0000              add [bx+si],al
00001B0C  0000              add [bx+si],al
00001B0E  9B0023            wait add [bp+di],ah
00001B11  0400              add al,0x0
00001B13  A10028            mov ax,[0x2800]
00001B16  FF                db 0xff
00001B17  D000              rol byte [bx+si],0x0
00001B19  0020              add [bx+si],ah
00001B1B  0019              add [bx+di],bl
00001B1D  002A              add [bp+si],ch
00001B1F  0010              add [bx+si],dl
00001B21  0000              add [bx+si],al
00001B23  A30026            mov [0x2600],ax
00001B26  FF00              inc word [bx+si]
00001B28  0000              add [bx+si],al
00001B2A  1000              adc [bx+si],al
00001B2C  0000              add [bx+si],al
00001B2E  A30026            mov [0x2600],ax
00001B31  0000              add [bx+si],al
00001B33  A30028            mov [0x2800],ax
00001B36  FF01              inc word [bx+di]
00001B38  0000              add [bx+si],al
00001B3A  1000              adc [bx+si],al
00001B3C  0000              add [bx+si],al
00001B3E  A30028            mov [0x2800],ax
00001B41  0100              add [bx+si],ax
00001B43  A800              test al,0x0
00001B45  2DFF04            sub ax,0x4ff
00001B48  0000              add [bx+si],al
00001B4A  0000              add [bx+si],al
00001B4C  0000              add [bx+si],al
00001B4E  A800              test al,0x0
00001B50  2D0400            sub ax,0x4
00001B53  AD                lodsw
00001B54  0008              add [bx+si],cl
00001B56  FF04              inc word [si]
00001B58  0000              add [bx+si],al
00001B5A  0000              add [bx+si],al
00001B5C  0000              add [bx+si],al
00001B5E  AD                lodsw
00001B5F  0008              add [bx+si],cl
00001B61  0400              add al,0x0
00001B63  AD                lodsw
00001B64  0039              add [bx+di],bh
00001B66  FF04              inc word [si]
00001B68  0000              add [bx+si],al
00001B6A  0000              add [bx+si],al
00001B6C  0000              add [bx+si],al
00001B6E  AD                lodsw
00001B6F  0039              add [bx+di],bh
00001B71  0400              add al,0x0
00001B73  AE                scasb
00001B74  0033              add [bp+di],dh
00001B76  FF02              inc word [bp+si]
00001B78  0000              add [bx+si],al
00001B7A  0000              add [bx+si],al
00001B7C  0000              add [bx+si],al
00001B7E  AE                scasb
00001B7F  0033              add [bp+di],dh
00001B81  0200              add al,[bx+si]
00001B83  B300              mov bl,0x0
00001B85  16                push ss
00001B86  FF00              inc word [bx+si]
00001B88  0000              add [bx+si],al
00001B8A  1000              adc [bx+si],al
00001B8C  0000              add [bx+si],al
00001B8E  B300              mov bl,0x0
00001B90  16                push ss
00001B91  0000              add [bx+si],al
00001B93  B300              mov bl,0x0
00001B95  18FF              sbb bh,bh
00001B97  0100              add [bx+si],ax
00001B99  0010              add [bx+si],dl
00001B9B  0000              add [bx+si],al
00001B9D  00B30018          add [bp+di+0x1800],dh
00001BA1  0100              add [bx+si],ax
00001BA3  B400              mov ah,0x0
00001BA5  0E                push cs
00001BA6  FF7300            push word [bp+di+0x0]
00001BA9  052000            add ax,0x20
00001BAC  0000              add [bx+si],al
00001BAE  2A00              sub al,[bx+si]
00001BB0  0800              or [bx+si],al
00001BB2  00BE0003          add [bp+0x300],bh
00001BB6  FF02              inc word [bp+si]
00001BB8  0000              add [bx+si],al
00001BBA  0000              add [bx+si],al
00001BBC  0000              add [bx+si],al
00001BBE  BE0003            mov si,0x300
00001BC1  0200              add al,[bx+si]
00001BC3  C3                ret
00001BC4  0007              add [bx],al
00001BC6  FF04              inc word [si]
00001BC8  0000              add [bx+si],al
00001BCA  0000              add [bx+si],al
00001BCC  0000              add [bx+si],al
00001BCE  C3                ret
00001BCF  0007              add [bx],al
00001BD1  0400              add al,0x0
00001BD3  C9                leave
00001BD4  000D              add [di],cl
00001BD6  FF7300            push word [bp+di+0x0]
00001BD9  0020              add [bx+si],ah
00001BDB  001A              add [bp+si],bl
00001BDD  002A              add [bp+si],ch
00001BDF  0004              add [si],al
00001BE1  0000              add [bx+si],al
00001BE3  CB                retf
00001BE4  001C              add [si],bl
00001BE6  FF00              inc word [bx+si]
00001BE8  0000              add [bx+si],al
00001BEA  1000              adc [bx+si],al
00001BEC  0000              add [bx+si],al
00001BEE  CB                retf
00001BEF  001C              add [si],bl
00001BF1  0000              add [bx+si],al
00001BF3  CB                retf
00001BF4  001EFF01          add [0x1ff],bl
00001BF8  0000              add [bx+si],al
00001BFA  1000              adc [bx+si],al
00001BFC  0000              add [bx+si],al
00001BFE  CB                retf
00001BFF  001E0100          add [0x1],bl
00001C03  CB                retf
00001C04  003C              add [si],bh
00001C06  FF04              inc word [si]
00001C08  0000              add [bx+si],al
00001C0A  0000              add [bx+si],al
00001C0C  0000              add [bx+si],al
00001C0E  CB                retf
00001C0F  003C              add [si],bh
00001C11  0400              add al,0x0
00001C13  D300              rol word [bx+si],cl
00001C15  22FF              and bh,bh
00001C17  0400              add al,0x0
00001C19  0000              add [bx+si],al
00001C1B  0000              add [bx+si],al
00001C1D  00D3              add bl,dl
00001C1F  0022              add [bp+si],ah
00001C21  0400              add al,0x0
00001C23  DA00              fiadd dword [bx+si]
00001C25  3DFF02            cmp ax,0x2ff
00001C28  0000              add [bx+si],al
00001C2A  0000              add [bx+si],al
00001C2C  0000              add [bx+si],al
00001C2E  DA00              fiadd dword [bx+si]
00001C30  3D0200            cmp ax,0x2
00001C33  E200              loop 0x1c35
00001C35  18FF              sbb bh,bh
00001C37  0400              add al,0x0
00001C39  0000              add [bx+si],al
00001C3B  0000              add [bx+si],al
00001C3D  00E2              add dl,ah
00001C3F  0018              add [bx+si],bl
00001C41  0400              add al,0x0
00001C43  E600              out byte 0x0,al
00001C45  0AFF              or bh,bh
00001C47  0400              add al,0x0
00001C49  0000              add [bx+si],al
00001C4B  0000              add [bx+si],al
00001C4D  00E6              add dh,ah
00001C4F  000A              add [bp+si],cl
00001C51  0400              add al,0x0
00001C53  E600              out byte 0x0,al
00001C55  13FF              adc di,di
00001C57  0400              add al,0x0
00001C59  0000              add [bx+si],al
00001C5B  0000              add [bx+si],al
00001C5D  00E6              add dh,ah
00001C5F  0013              add [bp+di],dl
00001C61  0400              add al,0x0
00001C63  EA0006FF03        jmp word 0x3ff:word 0x600
00001C68  0000              add [bx+si],al
00001C6A  0000              add [bx+si],al
00001C6C  0000              add [bx+si],al
00001C6E  EA00060300        jmp word 0x3:word 0x600
00001C73  EE                out dx,al
00001C74  003D              add [di],bh
00001C76  FF03              inc word [bp+di]
00001C78  0000              add [bx+si],al
00001C7A  0000              add [bx+si],al
00001C7C  0000              add [bx+si],al
00001C7E  EE                out dx,al
00001C7F  003D              add [di],bh
00001C81  0300              add ax,[bx+si]
00001C83  F20018            repne add [bx+si],bl
00001C86  FF7300            push word [bp+di+0x0]
00001C89  0020              add [bx+si],ah
00001C8B  0019              add [bx+di],bl
00001C8D  002A              add [bp+si],ch
00001C8F  0002              add [bp+si],al
00001C91  0000              add [bx+si],al
00001C93  0401              add al,0x1
00001C95  23FF              and di,di
00001C97  7300              jnc 0x1c99
00001C99  0020              add [bx+si],ah
00001C9B  0019              add [bx+di],bl
00001C9D  002A              add [bp+si],ch
00001C9F  0001              add [bx+di],al
00001CA1  0000              add [bx+si],al
00001CA3  0B01              or ax,[bx+di]
00001CA5  0E                push cs
00001CA6  FF7300            push word [bp+di+0x0]
00001CA9  052000            add ax,0x20
00001CAC  0000              add [bx+si],al
00001CAE  2B00              sub ax,[bx+si]
00001CB0  800000            add byte [bx+si],0x0
00001CB3  17                pop ss
00001CB4  013B              add [bp+di],di
00001CB6  FF04              inc word [si]
00001CB8  0000              add [bx+si],al
00001CBA  0000              add [bx+si],al
00001CBC  0000              add [bx+si],al
00001CBE  17                pop ss
00001CBF  013B              add [bp+di],di
00001CC1  0400              add al,0x0
00001CC3  1901              sbb [bx+di],ax
00001CC5  37                aaa
00001CC6  FF02              inc word [bp+si]
00001CC8  0000              add [bx+si],al
00001CCA  0000              add [bx+si],al
00001CCC  0000              add [bx+si],al
00001CCE  1901              sbb [bx+di],ax
00001CD0  37                aaa
00001CD1  0200              add al,[bx+si]
00001CD3  2D011F            sub ax,0x1f01
00001CD6  FF02              inc word [bp+si]
00001CD8  0000              add [bx+si],al
00001CDA  0000              add [bx+si],al
00001CDC  0000              add [bx+si],al
00001CDE  2D011F            sub ax,0x1f01
00001CE1  0200              add al,[bx+si]
00001CE3  2F                das
00001CE4  0103              add [bp+di],ax
00001CE6  FF02              inc word [bp+si]
00001CE8  0000              add [bx+si],al
00001CEA  0000              add [bx+si],al
00001CEC  0000              add [bx+si],al
00001CEE  2F                das
00001CEF  0103              add [bp+di],ax
00001CF1  0200              add al,[bx+si]
00001CF3  3F                aas
00001CF4  0107              add [bx],ax
00001CF6  FF7600            push word [bp+0x0]
00001CF9  0020              add [bx+si],ah
00001CFB  0000              add [bx+si],al
00001CFD  002B              add [bp+di],ch
00001CFF  004000            add [bx+si+0x0],al
00001D02  00FF              add bh,bh
00001D04  FF                db 0xff
