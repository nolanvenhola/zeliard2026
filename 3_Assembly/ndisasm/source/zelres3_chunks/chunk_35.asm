00000000  EC                in al,dx
00000001  1800              sbb [bx+si],al
00000003  0025              add [di],ah
00000005  D500              aad byte 0x0
00000007  0181D3A1          add [bx+di-0x5e2d],ax
0000000B  D3A3D31C          shl word [bp+di+0x1cd3],cl
0000000F  D4D2              aam byte 0xd2
00000011  D412              aam byte 0x12
00000013  D52A              aad byte 0x2a
00000015  D506              aad byte 0x6
00000017  FF                db 0xff
00000018  FF                db 0xff
00000019  FF0A              dec word [bp+si]
0000001B  0000              add [bx+si],al
0000001D  81D36301          adc bx,0x163
00000021  1D5348            sbb ax,0x4853
00000024  C8C949CB          enter word 0x49c9,byte 0xcb
00000028  83C305            add bx,0x5
0000002B  0491              add al,0x91
0000002D  C3                ret
0000002E  0904              or [si],ax
00000030  E082              loopne 0xffb4
00000032  06                push es
00000033  0407              add al,0x7
00000035  04C7              add al,0xc7
00000037  C9                leave
00000038  C8C4C7C9          enter word 0xc7c4,byte 0xc9
0000003C  49                dec cx
0000003D  CB                retf
0000003E  82                db 0x82
0000003F  C3                ret
00000040  050491            add ax,0x9104
00000043  C3                ret
00000044  0A04              or al,[si]
00000046  82                db 0x82
00000047  06                push es
00000048  04C4              add al,0xc4
0000004A  0120              add [bx+si],sp
0000004C  0504C7            add ax,0xc704
0000004F  C4                db 0xc4
00000050  C7                db 0xc7
00000051  58                pop ax
00000052  CAC8E0            retf word 0xe0c8
00000055  07                pop es
00000056  0491              add al,0x91
00000058  C3                ret
00000059  0A04              or al,[si]
0000005B  E043              loopne 0xa0
0000005D  E073              loopne 0xd2
0000005F  88C3              mov bl,al
00000061  46                inc si
00000062  68C809            push word 0x9c8
00000065  0491              add al,0x91
00000067  C3                ret
00000068  C487C343          les ax,word [bx+0x43c3]
0000006C  89C2              mov dx,ax
0000006E  40                inc ax
0000006F  41                inc cx
00000070  40                inc ax
00000071  81C3CDC7          add bx,0xc7cd
00000075  48                dec ax
00000076  C80B0440          enter word 0x40b,byte 0x40
0000007A  51                push cx
0000007B  50                push ax
0000007C  41                inc cx
0000007D  87C3              xchg ax,bx
0000007F  C44051            les ax,word [bx+si+0x51]
00000082  C181C343C2        rol word [bx+di+0x43c3],byte 0xc2
00000087  C14140C2          rol word [bx+di+0x40],byte 0xc2
0000008B  40                inc ax
0000008C  88C3              mov bl,al
0000008E  D8CD              fmul st5
00000090  C9                leave
00000091  C873DD06          enter word 0xdd73,byte 0x6
00000095  0491              add al,0x91
00000097  C3                ret
00000098  C487C343          les ax,word [bx+0x43c3]
0000009C  896386            mov [bp+di-0x7a],sp
0000009F  D8CD              fmul st5
000000A1  C8050485          enter word 0x405,byte 0x85
000000A5  C3                ret
000000A6  C485C307          les ax,word [di+0x7c3]
000000AA  0483              add al,0x83
000000AC  C3                ret
000000AD  C48FC343          les cx,word [bx+0x43c3]
000000B1  E063              loopne 0x116
000000B3  87D8              xchg bx,ax
000000B5  CD05              int byte 0x5
000000B7  0485              add al,0x85
000000B9  C3                ret
000000BA  C485C3C4          les ax,word [di-0x3b3d]
000000BE  DD05              fld qword [di]
000000C0  0483              add al,0x83
000000C2  C3                ret
000000C3  C48FC353          les cx,word [bx+0x53c3]
000000C7  6388D8C4          arpl [bx+si-0x3b28],cx
000000CB  011D              add [di],bx
000000CD  53                push bx
000000CE  85C3              test bx,ax
000000D0  C485C307          les ax,word [di+0x7c3]
000000D4  0494              add al,0x94
000000D6  C3                ret
000000D7  53                push bx
000000D8  6389D6E1          arpl [bx+di-0x1e2a],cx
000000DC  DD5385            fst qword [bp+di-0x7b]
000000DF  C3                ret
000000E0  C485C307          les ax,word [di+0x7c3]
000000E4  0494              add al,0x94
000000E6  C3                ret
000000E7  53                push bx
000000E8  DD5389            fst qword [bp+di-0x77]
000000EB  D6                salc
000000EC  E1DD              loope 0xcb
000000EE  53                push bx
000000EF  85C3              test bx,ax
000000F1  C485C363          les ax,word [di+0x63c3]
000000F5  E053              loopne 0x14a
000000F7  94                xchg ax,sp
000000F8  C3                ret
000000F9  53                push bx
000000FA  DD5389            fst qword [bp+di-0x77]
000000FD  D6                salc
000000FE  E1DD              loope 0xdd
00000100  53                push bx
00000101  85C3              test bx,ax
00000103  C485C343          les ax,word [di+0x43c3]
00000107  9AC3536389        call word 0x8963:word 0x53c3
0000010C  D6                salc
0000010D  E1DD              loope 0xec
0000010F  53                push bx
00000110  85C3              test bx,ax
00000112  C485C3C4          les ax,word [di-0x3b3d]
00000116  DD9AC353          fstp qword [bp+si+0x53c3]
0000011A  6385C383          arpl [di-0x7c3d],ax
0000011E  D6                salc
0000011F  E1DD              loope 0xfe
00000121  53                push bx
00000122  85C3              test bx,ax
00000124  C485C343          les ax,word [di+0x43c3]
00000128  9AC35353DD        call word 0xdd53:word 0x53c3
0000012D  85C3              test bx,ax
0000012F  83C301            add bx,0x1
00000132  1D5385            sbb ax,0x8553
00000135  C3                ret
00000136  C485C343          les ax,word [di+0x43c3]
0000013A  92                xchg ax,dx
0000013B  C3                ret
0000013C  C486C353          les ax,word [bp+0x53c3]
00000140  82                db 0x82
00000141  C3                ret
00000142  C489C373          les cx,word [bx+di+0x73c3]
00000146  85C3              test bx,ax
00000148  C485C343          les ax,word [di+0x43c3]
0000014C  88C7              mov bh,al
0000014E  CD49              int byte 0x49
00000150  CB                retf
00000151  91                xchg ax,cx
00000152  82                db 0x82
00000153  C3                ret
00000154  C48CC3C4          les cx,word [si-0x3b3d]
00000158  DD85C3C4          fld qword [di-0x3b3d]
0000015C  85C3              test bx,ax
0000015E  43                inc bx
0000015F  88D8              mov al,bl
00000161  CC                int3
00000162  C9                leave
00000163  CA81CB            retf word 0xcb81
00000166  90                nop
00000167  82                db 0x82
00000168  C3                ret
00000169  C48CC343          les cx,word [si+0x43c3]
0000016D  85C3              test bx,ax
0000016F  C485C343          les ax,word [di+0x43c3]
00000173  89D8              mov ax,bx
00000175  CC                int3
00000176  CDCA              int byte 0xca
00000178  91                xchg ax,cx
00000179  82                db 0x82
0000017A  C3                ret
0000017B  C48CC343          les cx,word [si+0x43c3]
0000017F  85C3              test bx,ax
00000181  C485C343          les ax,word [di+0x43c3]
00000185  8AD8              mov bl,al
00000187  CC                int3
00000188  92                xchg ax,dx
00000189  82                db 0x82
0000018A  C3                ret
0000018B  C48CC343          les cx,word [si+0x43c3]
0000018F  85C3              test bx,ax
00000191  C485C343          les ax,word [di+0x43c3]
00000195  9E                sahf
00000196  82                db 0x82
00000197  C3                ret
00000198  C48CC343          les cx,word [si+0x43c3]
0000019C  85C3              test bx,ax
0000019E  C485C3C4          les ax,word [di-0x3b3d]
000001A2  DD9E82C3          fstp qword [bp-0x3c7e]
000001A6  C48CC3DD          les cx,word [si-0x223d]
000001AA  C485C343          les ax,word [di+0x43c3]
000001AE  E005              loopne 0x1b5
000001B0  049E              add al,0x9e
000001B2  89C3              mov bx,ax
000001B4  43                inc bx
000001B5  84C3              test bl,al
000001B7  43                inc bx
000001B8  85C3              test bx,ax
000001BA  0804              or [si],al
000001BC  9E                sahf
000001BD  89C3              mov bx,ax
000001BF  43                inc bx
000001C0  84C3              test bl,al
000001C2  43                inc bx
000001C3  85C3              test bx,ax
000001C5  7301              jnc 0x1c8
000001C7  204385            and [bp+di-0x7b],al
000001CA  C3                ret
000001CB  84C3              test bl,al
000001CD  43                inc bx
000001CE  85C3              test bx,ax
000001D0  53                push bx
000001D1  8889C3DD          mov [bx+di-0x223d],cl
000001D5  C484C343          les ax,word [si+0x43c3]
000001D9  85C3              test bx,ax
000001DB  43                inc bx
000001DC  85C3              test bx,ax
000001DE  C485C384          les ax,word [di-0x7b3d]
000001E2  C3                ret
000001E3  43                inc bx
000001E4  85C3              test bx,ax
000001E6  53                push bx
000001E7  8889C343          mov [bx+di+0x43c3],cl
000001EB  84C3              test bl,al
000001ED  43                inc bx
000001EE  85C3              test bx,ax
000001F0  43                inc bx
000001F1  85C3              test bx,ax
000001F3  C485C384          les ax,word [di-0x7b3d]
000001F7  C3                ret
000001F8  43                inc bx
000001F9  91                xchg ax,cx
000001FA  89C3              mov bx,ax
000001FC  43                inc bx
000001FD  84C3              test bl,al
000001FF  43                inc bx
00000200  85C3              test bx,ax
00000202  43                inc bx
00000203  85C3              test bx,ax
00000205  DD85C384          fld qword [di-0x7b3d]
00000209  C3                ret
0000020A  DDC4              ffree st4
0000020C  40                inc ax
0000020D  61                popa
0000020E  60                pusha
0000020F  C2C1C2            ret word 0xc2c1
00000212  C18389C343        rol word [bp+di-0x3c77],byte 0x43
00000217  84C3              test bl,al
00000219  43                inc bx
0000021A  85C3              test bx,ax
0000021C  43                inc bx
0000021D  85C3              test bx,ax
0000021F  C48AC343          les cx,word [bp+si+0x43c3]
00000223  91                xchg ax,cx
00000224  C8C74385          enter word 0x43c7,byte 0x85
00000228  C3                ret
00000229  43                inc bx
0000022A  84C3              test bl,al
0000022C  43                inc bx
0000022D  85C3              test bx,ax
0000022F  43                inc bx
00000230  85C3              test bx,ax
00000232  C4                db 0xc4
00000233  C260C2            ret word 0xc260
00000236  40                inc ax
00000237  C281C3            ret word 0xc381
0000023A  43                inc bx
0000023B  85C3              test bx,ax
0000023D  43                inc bx
0000023E  E084              loopne 0x1c4
00000240  C3                ret
00000241  C7                db 0xc7
00000242  48                dec ax
00000243  C9                leave
00000244  C84385C3          enter word 0x8543,byte 0xc3
00000248  C4                db 0xc4
00000249  DD84C387          fld qword [si-0x783d]
0000024D  C3                ret
0000024E  DDC4              ffree st4
00000250  85C3              test bx,ax
00000252  C48AC343          les cx,word [bp+si+0x43c3]
00000256  85C3              test bx,ax
00000258  53                push bx
00000259  84C3              test bl,al
0000025B  C7                db 0xc7
0000025C  CDC9              int byte 0xc9
0000025E  48                dec ax
0000025F  43                inc bx
00000260  DA84C343          fiadd dword [si+0x43c3]
00000264  84C3              test bl,al
00000266  87C3              xchg ax,bx
00000268  43                inc bx
00000269  85C3              test bx,ax
0000026B  53                push bx
0000026C  E087              loopne 0x1f5
0000026E  C3                ret
0000026F  C4                db 0xc4
00000270  DD43E0            fld qword [bp+di-0x20]
00000273  050484            add ax,0x8404
00000276  D8C8              fmul st0
00000278  C9                leave
00000279  CDC8              int byte 0xc8
0000027B  53                push bx
0000027C  DB84C343          fild dword [si+0x43c3]
00000280  84C3              test bl,al
00000282  43                inc bx
00000283  85C3              test bx,ax
00000285  43                inc bx
00000286  85C3              test bx,ax
00000288  6387C30A          arpl [bx+0xac3],ax
0000028C  0485              add al,0x85
0000028E  D8CD              fmul st5
00000290  C9                leave
00000291  C853DC84          enter word 0xdc53,byte 0x84
00000295  C3                ret
00000296  43                inc bx
00000297  84C3              test bl,al
00000299  43                inc bx
0000029A  85C3              test bx,ax
0000029C  43                inc bx
0000029D  85C3              test bx,ax
0000029F  6387C307          arpl [bx+0x7c3],ax
000002A3  04DD              add al,0xdd
000002A5  43                inc bx
000002A6  86D8              xchg bl,al
000002A8  CDC3              int byte 0xc3
000002AA  53                push bx
000002AB  D7                xlatb
000002AC  84C3              test bl,al
000002AE  43                inc bx
000002AF  84C3              test bl,al
000002B1  43                inc bx
000002B2  85C3              test bx,ax
000002B4  43                inc bx
000002B5  85C3              test bx,ax
000002B7  C4                db 0xc4
000002B8  DD4387            fld qword [bp+di-0x79]
000002BB  C3                ret
000002BC  73E0              jnc 0x29e
000002BE  7387              jnc 0x247
000002C0  D8C3              fadd st3
000002C2  53                push bx
000002C3  C684C34384        mov byte [si+0x43c3],0x84
000002C8  C3                ret
000002C9  43                inc bx
000002CA  85C3              test bx,ax
000002CC  43                inc bx
000002CD  85C3              test bx,ax
000002CF  6387C343          arpl [bx+0x43c3],ax
000002D3  85C3              test bx,ax
000002D5  53                push bx
000002D6  88C3              mov bl,al
000002D8  53                push bx
000002D9  85C3              test bx,ax
000002DB  43                inc bx
000002DC  84C3              test bl,al
000002DE  43                inc bx
000002DF  85C3              test bx,ax
000002E1  43                inc bx
000002E2  85C3              test bx,ax
000002E4  6387C343          arpl [bx+0x43c3],ax
000002E8  85C3              test bx,ax
000002EA  43                inc bx
000002EB  DD88C353          fisttp qword [bx+si+0x53c3]
000002EF  85C3              test bx,ax
000002F1  43                inc bx
000002F2  84C3              test bl,al
000002F4  43                inc bx
000002F5  85C3              test bx,ax
000002F7  43                inc bx
000002F8  85C3              test bx,ax
000002FA  6387C343          arpl [bx+0x43c3],ax
000002FE  85C3              test bx,ax
00000300  53                push bx
00000301  88C3              mov bl,al
00000303  53                push bx
00000304  85C3              test bx,ax
00000306  43                inc bx
00000307  84C3              test bl,al
00000309  43                inc bx
0000030A  85C3              test bx,ax
0000030C  43                inc bx
0000030D  85C3              test bx,ax
0000030F  6387C343          arpl [bx+0x43c3],ax
00000313  85C3              test bx,ax
00000315  53                push bx
00000316  88C3              mov bl,al
00000318  53                push bx
00000319  85C3              test bx,ax
0000031B  43                inc bx
0000031C  84C3              test bl,al
0000031E  43                inc bx
0000031F  85C3              test bx,ax
00000321  43                inc bx
00000322  85C3              test bx,ax
00000324  43                inc bx
00000325  89C3              mov bx,ax
00000327  43                inc bx
00000328  85C3              test bx,ax
0000032A  53                push bx
0000032B  88C3              mov bl,al
0000032D  43                inc bx
0000032E  E085              loopne 0x2b5
00000330  C3                ret
00000331  DDC4              ffree st4
00000333  84C3              test bl,al
00000335  43                inc bx
00000336  85C3              test bx,ax
00000338  DDC4              ffree st4
0000033A  85C3              test bx,ax
0000033C  43                inc bx
0000033D  89C3              mov bx,ax
0000033F  C4                db 0xc4
00000340  DD85C353          fld qword [di+0x53c3]
00000344  88C3              mov bl,al
00000346  C401              les ax,word [bx+di]
00000348  2085C3DD          and [di-0x223d],al
0000034C  C484C343          les ax,word [si+0x43c3]
00000350  85C3              test bx,ax
00000352  43                inc bx
00000353  85D6              test si,dx
00000355  E153              loope 0x3aa
00000357  87C3              xchg ax,bx
00000359  43                inc bx
0000035A  85C3              test bx,ax
0000035C  53                push bx
0000035D  88C3              mov bl,al
0000035F  53                push bx
00000360  85C3              test bx,ax
00000362  43                inc bx
00000363  84C3              test bl,al
00000365  43                inc bx
00000366  85C3              test bx,ax
00000368  43                inc bx
00000369  85D6              test si,dx
0000036B  E143              loope 0x3b0
0000036D  DD87C343          fld qword [bx+0x43c3]
00000371  85E0              test ax,sp
00000373  53                push bx
00000374  8889C343          mov [bx+di+0x43c3],cl
00000378  84C3              test bl,al
0000037A  43                inc bx
0000037B  85C3              test bx,ax
0000037D  43                inc bx
0000037E  85D6              test si,dx
00000380  E153              loope 0x3d5
00000382  87C3              xchg ax,bx
00000384  43                inc bx
00000385  91                xchg ax,cx
00000386  50                push ax
00000387  86C3              xchg al,bl
00000389  43                inc bx
0000038A  84C3              test bl,al
0000038C  43                inc bx
0000038D  85C3              test bx,ax
0000038F  43                inc bx
00000390  85D6              test si,dx
00000392  E153              loope 0x3e7
00000394  87C3              xchg ax,bx
00000396  43                inc bx
00000397  41                inc cx
00000398  06                push es
00000399  01C2              add dx,ax
0000039B  40                inc ax
0000039C  41                inc cx
0000039D  C1C2C1            rol dx,byte 0xc1
000003A0  89C3              mov bx,ax
000003A2  43                inc bx
000003A3  84C3              test bl,al
000003A5  87C3              xchg ax,bx
000003A7  C4                db 0xc4
000003A8  DD85D6E1          fld qword [di-0x1e2a]
000003AC  53                push bx
000003AD  87C3              xchg ax,bx
000003AF  43                inc bx
000003B0  91                xchg ax,cx
000003B1  6385E043          arpl [di+0x43e0],ax
000003B5  84C3              test bl,al
000003B7  87C3              xchg ax,bx
000003B9  43                inc bx
000003BA  85D6              test si,dx
000003BC  E153              loope 0x411
000003BE  87C3              xchg ax,bx
000003C0  43                inc bx
000003C1  85E0              test ax,sp
000003C3  C4                db 0xc4
000003C4  C7                db 0xc7
000003C5  C9                leave
000003C6  49                dec cx
000003C7  CB                retf
000003C8  C843E0C4          enter word 0xe043,byte 0xc4
000003CC  53                push bx
000003CD  E08C              loopne 0x35b
000003CF  C3                ret
000003D0  43                inc bx
000003D1  85C3              test bx,ax
000003D3  43                inc bx
000003D4  85D6              test si,dx
000003D6  E153              loope 0x42b
000003D8  87C3              xchg ax,bx
000003DA  C4                db 0xc4
000003DB  C787D8CD58C8      mov word [bx-0x3228],0xc858
000003E1  C7                db 0xc7
000003E2  C843DDC4          enter word 0xdd43,byte 0xc4
000003E6  0120              add [bx+si],sp
000003E8  C151C1C2          rcl word [bx+di-0x3f],byte 0xc2
000003EC  40                inc ax
000003ED  51                push cx
000003EE  81C34385          add bx,0x8543
000003F2  C3                ret
000003F3  43                inc bx
000003F4  85D6              test si,dx
000003F6  E153              loope 0x44b
000003F8  87C3              xchg ax,bx
000003FA  C4                db 0xc4
000003FB  C9                leave
000003FC  CA87D8            retf word 0xd887
000003FF  CD58              int byte 0x58
00000401  C853C402          enter word 0xc453,byte 0x2
00000405  208CC3DD          and [si-0x223d],cl
00000409  C48DC363          les cx,word [di+0x63c3]
0000040D  87C3              xchg ax,bx
0000040F  C448CA            les cx,word [bx+si-0x36]
00000412  CB                retf
00000413  86D8              xchg bl,al
00000415  CD68              int byte 0x68
00000417  CAC8C4            retf word 0xc4c8
0000041A  0220              add ah,[bx+si]
0000041C  8CC3              mov bx,es
0000041E  43                inc bx
0000041F  C2C151            ret word 0x51c1
00000422  50                push ax
00000423  C2C1C2            ret word 0xc2c1
00000426  C181C343DD        rol word [bx+di+0x43c3],byte 0xdd
0000042B  C487C3C4          les ax,word [bx-0x3b3d]
0000042F  C7                db 0xc7
00000430  C9                leave
00000431  C8C487D8          enter word 0x87c4,byte 0xd8
00000435  CD48              int byte 0x48
00000437  CACBC8            retf word 0xc8cb
0000043A  90                nop
0000043B  C3                ret
0000043C  43                inc bx
0000043D  8D                db 0x8d
0000043E  C3                ret
0000043F  639B90C3          arpl [bp+di-0x3c70],bx
00000443  43                inc bx
00000444  85C3              test bx,ax
00000446  43                inc bx
00000447  85C3              test bx,ax
00000449  53                push bx
0000044A  E041              loopne 0x48d
0000044C  50                push ax
0000044D  41                inc cx
0000044E  40                inc ax
0000044F  41                inc cx
00000450  90                nop
00000451  90                nop
00000452  C3                ret
00000453  43                inc bx
00000454  85C3              test bx,ax
00000456  43                inc bx
00000457  85C3              test bx,ax
00000459  43                inc bx
0000045A  0120              add [bx+si],sp
0000045C  9BC9              wait leave
0000045E  CACB81            retf word 0x81cb
00000461  C8730120          enter word 0x173,byte 0x20
00000465  C4                db 0xc4
00000466  E073              loopne 0x4db
00000468  85C3              test bx,ax
0000046A  C4                db 0xc4
0000046B  DD85C3C4          fld qword [di-0x3b3d]
0000046F  0120              add [bx+si],sp
00000471  0904              or [si],ax
00000473  8BD9              mov bx,cx
00000475  CC                int3
00000476  7868              js 0x4e0
00000478  7301              jnc 0x47b
0000047A  20C4              and ah,al
0000047C  E005              loopne 0x483
0000047E  0485              add al,0x85
00000480  C3                ret
00000481  43                inc bx
00000482  85C3              test bx,ax
00000484  07                pop es
00000485  04DD              add al,0xdd
00000487  638AD9CC          arpl [bp+si-0x3327],cx
0000048B  0509CA            add ax,0xca09
0000048E  48                dec ax
0000048F  C873DD73          enter word 0xdd73,byte 0x73
00000493  DD5385            fst qword [bp+di-0x7b]
00000496  C3                ret
00000497  43                inc bx
00000498  85C3              test bx,ax
0000049A  0504DD            add ax,0xdd04
0000049D  53                push bx
0000049E  DD4389            fld qword [bp+di-0x77]
000004A1  D9CC              fxch st4
000004A3  C9                leave
000004A4  C8C748CA          enter word 0x48c7,byte 0xca
000004A8  C8C9C863          enter word 0xc8c9,byte 0x63
000004AC  DD07              fld qword [bx]
000004AE  04DD              add al,0xdd
000004B0  53                push bx
000004B1  85C3              test bx,ax
000004B3  43                inc bx
000004B4  85C3              test bx,ax
000004B6  0C04              or al,0x4
000004B8  88D9              mov cl,bl
000004BA  CC                int3
000004BB  C9                leave
000004BC  C8C7C9C8          enter word 0xc9c7,byte 0xc8
000004C0  48                dec ax
000004C1  C40F              les cx,word [bx]
000004C3  0488              add al,0x88
000004C5  C3                ret
000004C6  43                inc bx
000004C7  8FC3              pop bx
000004C9  C4                db 0xc4
000004CA  DD7384            fnsave [bp+di-0x7c]
000004CD  C3                ret
000004CE  C4                db 0xc4
000004CF  C7                db 0xc7
000004D0  58                pop ax
000004D1  63DD              arpl bp,bx
000004D3  0E                push cs
000004D4  0488              add al,0x88
000004D6  C3                ret
000004D7  43                inc bx
000004D8  41                inc cx
000004D9  40                inc ax
000004DA  51                push cx
000004DB  40                inc ax
000004DC  C2C141            ret word 0x41c1
000004DF  C181C30604        rol word [bx+di+0x6c3],byte 0x4
000004E4  8463C9            test [bp+di-0x37],ah
000004E7  C86353E0          enter word 0x5363,byte 0xe0
000004EB  53                push bx
000004EC  DD63E0            frstor [bp+di-0x20]
000004EF  53                push bx
000004F0  88C3              mov bl,al
000004F2  C4                db 0xc4
000004F3  DD8FC343          fisttp qword [bx+0x43c3]
000004F7  DD6384            frstor [bp+di-0x7c]
000004FA  63C8              arpl ax,cx
000004FC  63E0              arpl ax,sp
000004FE  84C3              test bl,al
00000500  53                push bx
00000501  90                nop
00000502  C3                ret
00000503  43                inc bx
00000504  8FC3              pop bx
00000506  06                push es
00000507  0484              add al,0x84
00000509  43                inc bx
0000050A  DD7382            fnsave [bp+di-0x7e]
0000050D  84C3              test bl,al
0000050F  53                push bx
00000510  90                nop
00000511  C3                ret
00000512  43                inc bx
00000513  85C3              test bx,ax
00000515  43                inc bx
00000516  87C3              xchg ax,bx
00000518  73DD              jnc 0x4f7
0000051A  C4840704          les ax,word [si+0x407]
0000051E  82                db 0x82
0000051F  84C3              test bl,al
00000521  53                push bx
00000522  90                nop
00000523  C3                ret
00000524  43                inc bx
00000525  85C3              test bx,ax
00000527  DDC4              ffree st4
00000529  87C3              xchg ax,bx
0000052B  06                push es
0000052C  0484              add al,0x84
0000052E  06                push es
0000052F  04DD              add al,0xdd
00000531  82                db 0x82
00000532  84C3              test bl,al
00000534  C4                db 0xc4
00000535  DDC4              ffree st4
00000537  90                nop
00000538  C3                ret
00000539  43                inc bx
0000053A  85C3              test bx,ax
0000053C  43                inc bx
0000053D  87C3              xchg ax,bx
0000053F  DD0604E0          fld qword [0xe004]
00000543  0904              or [si],ax
00000545  82                db 0x82
00000546  84C3              test bl,al
00000548  53                push bx
00000549  90                nop
0000054A  C3                ret
0000054B  43                inc bx
0000054C  85C3              test bx,ax
0000054E  43                inc bx
0000054F  87C3              xchg ax,bx
00000551  1204              adc al,[si]
00000553  82                db 0x82
00000554  84C3              test bl,al
00000556  53                push bx
00000557  90                nop
00000558  C3                ret
00000559  43                inc bx
0000055A  85C3              test bx,ax
0000055C  43                inc bx
0000055D  87C3              xchg ax,bx
0000055F  43                inc bx
00000560  DD08              fisttp qword [bx+si]
00000562  04E0              add al,0xe0
00000564  53                push bx
00000565  E043              loopne 0x5aa
00000567  82                db 0x82
00000568  98                cbw
00000569  C3                ret
0000056A  C4                db 0xc4
0000056B  DD85C343          fld qword [di+0x43c3]
0000056F  84C3              test bl,al
00000571  0B04              or ax,[si]
00000573  8C98C3C4          mov word [bx+si-0x3b3d],ds
00000577  DD85C343          fld qword [di+0x43c3]
0000057B  84C3              test bl,al
0000057D  C4                db 0xc4
0000057E  DD09              fisttp qword [bx+di]
00000580  048C              add al,0x8c
00000582  98                cbw
00000583  C3                ret
00000584  43                inc bx
00000585  85C3              test bx,ax
00000587  43                inc bx
00000588  84C3              test bl,al
0000058A  0504DD            add ax,0xdd04
0000058D  738C              jnc 0x51b
0000058F  90                nop
00000590  C3                ret
00000591  C4                db 0xc4
00000592  DD8DC3DD          fisttp qword [di-0x223d]
00000596  C484C30A          les ax,word [si+0xac3]
0000059A  04DD              add al,0xdd
0000059C  86C3              xchg al,bl
0000059E  E043              loopne 0x5e3
000005A0  82                db 0x82
000005A1  90                nop
000005A2  C3                ret
000005A3  43                inc bx
000005A4  8D                db 0x8d
000005A5  C3                ret
000005A6  43                inc bx
000005A7  84C3              test bl,al
000005A9  43                inc bx
000005AA  E053              loopne 0x5ff
000005AC  E043              loopne 0x5f1
000005AE  E043              loopne 0x5f3
000005B0  86C3              xchg al,bl
000005B2  53                push bx
000005B3  82                db 0x82
000005B4  90                nop
000005B5  C3                ret
000005B6  638BC343          arpl [bp+di+0x43c3],cx
000005BA  8FC3              pop bx
000005BC  C486C343          les ax,word [bp+0x43c3]
000005C0  DD8290C3          fld qword [bp+si-0x3c70]
000005C4  638BC3DD          arpl [bp+di-0x223d],cx
000005C8  C4                db 0xc4
000005C9  C161C141          shl word [bx+di-0x3f],byte 0x41
000005CD  60                pusha
000005CE  41                inc cx
000005CF  81C3C486          add bx,0x86c4
000005D3  C3                ret
000005D4  53                push bx
000005D5  82                db 0x82
000005D6  90                nop
000005D7  C3                ret
000005D8  050489            add ax,0x8904
000005DB  C3                ret
000005DC  43                inc bx
000005DD  8FC3              pop bx
000005DF  DD86C353          fld qword [bp+0x53c3]
000005E3  82                db 0x82
000005E4  90                nop
000005E5  C3                ret
000005E6  050489            add ax,0x8904
000005E9  C3                ret
000005EA  0B04              or ax,[si]
000005EC  85C3              test bx,ax
000005EE  C486C353          les ax,word [bp+0x53c3]
000005F2  82                db 0x82
000005F3  88C3              mov bl,al
000005F5  C5                db 0xc5
000005F6  C485C373          les ax,word [di+0x73c3]
000005FA  8AC3              mov al,bl
000005FC  73DD              jnc 0x5db
000005FE  05048D            add ax,0x8d04
00000601  C3                ret
00000602  53                push bx
00000603  82                db 0x82
00000604  88C3              mov bl,al
00000606  43                inc bx
00000607  85C3              test bx,ax
00000609  C4                db 0xc4
0000060A  C5538A            lds dx,word [bp+di-0x76]
0000060D  C3                ret
0000060E  53                push bx
0000060F  DD0604DD          fld qword [0xdd04]
00000613  8D                db 0x8d
00000614  C3                ret
00000615  53                push bx
00000616  82                db 0x82
00000617  88C3              mov bl,al
00000619  011D              add [di],bx
0000061B  88C3              mov bl,al
0000061D  43                inc bx
0000061E  8AC3              mov al,bl
00000620  0B04              or ax,[si]
00000622  8D                db 0x8d
00000623  C3                ret
00000624  43                inc bx
00000625  DD8288C3          fld qword [bp+si-0x3c78]
00000629  43                inc bx
0000062A  88C3              mov bl,al
0000062C  43                inc bx
0000062D  8AC3              mov al,bl
0000062F  0B04              or ax,[si]
00000631  85C3              test bx,ax
00000633  C486C3C4          les ax,word [bp-0x3b3d]
00000637  8488C343          test [bx+si+0x43c3],cl
0000063B  88C3              mov bl,al
0000063D  8CC3              mov bx,es
0000063F  0804              or [si],al
00000641  DD4385            fld qword [bp+di-0x7b]
00000644  C3                ret
00000645  C486C3DD          les ax,word [bp-0x223d]
00000649  8488C343          test [bx+si+0x43c3],cl
0000064D  88C3              mov bl,al
0000064F  8CC3              mov bx,es
00000651  DDC4              ffree st4
00000653  E043              loopne 0x698
00000655  E063              loopne 0x6ba
00000657  E0C4              loopne 0x61d
00000659  85C3              test bx,ax
0000065B  C486C353          les ax,word [bp+0x53c3]
0000065F  82                db 0x82
00000660  88C3              mov bl,al
00000662  C4                db 0xc4
00000663  DD88C384          fisttp qword [bx+si-0x7b3d]
00000667  C3                ret
00000668  87C3              xchg ax,bx
0000066A  DDC4              ffree st4
0000066C  8FC3              pop bx
0000066E  C4                db 0xc4
0000066F  CB                retf
00000670  85C3              test bx,ax
00000672  53                push bx
00000673  82                db 0x82
00000674  88C3              mov bl,al
00000676  43                inc bx
00000677  88C3              mov bl,al
00000679  84C3              test bl,al
0000067B  87C3              xchg ax,bx
0000067D  43                inc bx
0000067E  40                inc ax
0000067F  C26041            ret word 0x4160
00000682  40                inc ax
00000683  C24081            ret word 0x8140
00000686  C3                ret
00000687  DD49CB            fisttp qword [bx+di-0x35]
0000068A  83C3C4            add bx,0xffffffffffffffc4
0000068D  C7                db 0xc7
0000068E  CB                retf
0000068F  82                db 0x82
00000690  CB                retf
00000691  87C3              xchg ax,bx
00000693  C4                db 0xc4
00000694  DD88C3C4          fisttp qword [bx+si-0x3b3d]
00000698  8BC3              mov ax,bx
0000069A  43                inc bx
0000069B  8FC3              pop bx
0000069D  C4                db 0xc4
0000069E  C9                leave
0000069F  49                dec cx
000006A0  CB                retf
000006A1  82                db 0x82
000006A2  C3                ret
000006A3  53                push bx
000006A4  C9                leave
000006A5  CACACB            retf word 0xcbca
000006A8  86C3              xchg al,bl
000006AA  43                inc bx
000006AB  88C3              mov bl,al
000006AD  C48BC343          les cx,word [bp+di+0x43c3]
000006B1  86C3              xchg al,bl
000006B3  C401              les ax,word [bx+di]
000006B5  2085C343          and [di+0x43c3],al
000006B9  C9                leave
000006BA  CACB82            retf word 0x82cb
000006BD  C3                ret
000006BE  C4                db 0xc4
000006BF  DD                db 0xdd
000006C0  C8C7C9C9          enter word 0xc9c7,byte 0xc9
000006C4  CACB85            retf word 0x85cb
000006C7  C54388            lds ax,word [bp+di-0x78]
000006CA  C3                ret
000006CB  53                push bx
000006CC  89C3              mov bx,ax
000006CE  43                inc bx
000006CF  86C3              xchg al,bl
000006D1  53                push bx
000006D2  85C3              test bx,ax
000006D4  C4                db 0xc4
000006D5  C7                db 0xc7
000006D6  58                pop ax
000006D7  82                db 0x82
000006D8  C3                ret
000006D9  C7                db 0xc7
000006DA  C9                leave
000006DB  43                inc bx
000006DC  C7C7C991          mov di,0x91c9
000006E0  C3                ret
000006E1  53                push bx
000006E2  89C3              mov bx,ax
000006E4  43                inc bx
000006E5  86C3              xchg al,bl
000006E7  53                push bx
000006E8  85C3              test bx,ax
000006EA  C4                db 0xc4
000006EB  C7                db 0xc7
000006EC  58                pop ax
000006ED  C84348C8          enter word 0x4843,byte 0xc8
000006F1  43                inc bx
000006F2  40                inc ax
000006F3  C25041            ret word 0x4150
000006F6  40                inc ax
000006F7  C2C1C2            ret word 0xc2c1
000006FA  86C3              xchg al,bl
000006FC  43                inc bx
000006FD  8AC3              mov al,bl
000006FF  C4                db 0xc4
00000700  DD86C353          fld qword [bp+0x53c3]
00000704  85C3              test bx,ax
00000706  C7                db 0xc7
00000707  48                dec ax
00000708  CAC8C4            retf word 0xc4c8
0000070B  C5                db 0xc5
0000070C  C468C8            les bp,word [bx+si-0x38]
0000070F  93                xchg ax,bx
00000710  C3                ret
00000711  43                inc bx
00000712  8AC3              mov al,bl
00000714  43                inc bx
00000715  86C3              xchg al,bl
00000717  DD4385            fld qword [bp+di-0x7b]
0000071A  6847C7            push word 0xc747
0000071D  CA68CA            retf word 0xca68
00000720  CB                retf
00000721  86C3              xchg al,bl
00000723  C48BC38C          les cx,word [bp+di-0x733d]
00000727  C3                ret
00000728  43                inc bx
00000729  86C3              xchg al,bl
0000072B  53                push bx
0000072C  85D8              test ax,bx
0000072E  0909              or [bx+di],cx
00000730  CA4A86            retf word 0x864a
00000733  C3                ret
00000734  C48BC38C          les cx,word [bp+di-0x733d]
00000738  C3                ret
00000739  43                inc bx
0000073A  86C3              xchg al,bl
0000073C  43                inc bx
0000073D  DD86D858          fld qword [bp+0x58d8]
00000741  C8C758CA          enter word 0x58c7,byte 0xca
00000745  CB                retf
00000746  82                db 0x82
00000747  86C3              xchg al,bl
00000749  53                push bx
0000074A  44                inc sp
0000074B  53                push bx
0000074C  C588C387          lds cx,word [bx+si-0x783d]
00000750  C3                ret
00000751  43                inc bx
00000752  86C3              xchg al,bl
00000754  53                push bx
00000755  87D8              xchg bx,ax
00000757  68C8C4            push word 0xc4c8
0000075A  C7                db 0xc7
0000075B  C9                leave
0000075C  CACB81            retf word 0x81cb
0000075F  86C3              xchg al,bl
00000761  0804              or [si],al
00000763  88C3              mov bl,al
00000765  87C3              xchg ax,bx
00000767  43                inc bx
00000768  86C3              xchg al,bl
0000076A  53                push bx
0000076B  88D8              mov al,bl
0000076D  58                pop ax
0000076E  C8C758CA          enter word 0x58c7,byte 0xca
00000772  CB                retf
00000773  86C3              xchg al,bl
00000775  43                inc bx
00000776  DD05              fld qword [di]
00000778  0490              add al,0x90
0000077A  C3                ret
0000077B  43                inc bx
0000077C  86C3              xchg al,bl
0000077E  53                push bx
0000077F  89D8              mov ax,bx
00000781  0509CA            add ax,0xca09
00000784  82                db 0x82
00000785  86C3              xchg al,bl
00000787  63C5              arpl bp,ax
00000789  43                inc bx
0000078A  C5                db 0xc5
0000078B  C490C343          les dx,word [bx+si+0x43c3]
0000078F  86C3              xchg al,bl
00000791  53                push bx
00000792  8AC3              mov al,bl
00000794  68CACB            push word 0xcbca
00000797  82                db 0x82
00000798  86C3              xchg al,bl
0000079A  C48FC305          les cx,word [bx+0x5c3]
0000079E  0482              add al,0x82
000007A0  53                push bx
000007A1  86C3              xchg al,bl
000007A3  53                push bx
000007A4  8AC3              mov al,bl
000007A6  C7                db 0xc7
000007A7  68CACB            push word 0xcbca
000007AA  8186C5C48FC3      add word [bp-0x3b3b],0xc38f
000007B0  050482            add ax,0x8204
000007B3  53                push bx
000007B4  86C3              xchg al,bl
000007B6  53                push bx
000007B7  8AC3              mov al,bl
000007B9  C7                db 0xc7
000007BA  78CA              js 0x786
000007BC  CB                retf
000007BD  97                xchg ax,di
000007BE  C3                ret
000007BF  0A04              or al,[si]
000007C1  86C3              xchg al,bl
000007C3  53                push bx
000007C4  8AC3              mov al,bl
000007C6  C4                db 0xc4
000007C7  C8C758CA          enter word 0x58c7,byte 0xca
000007CB  CB                retf
000007CC  8EC3              mov es,bx
000007CE  C5                db 0xc5
000007CF  C486C306          les ax,word [bp+0x6c3]
000007D3  04DD              add al,0xdd
000007D5  0B04              or ax,[si]
000007D7  DD8AC3DD          fisttp qword [bp+si-0x223d]
000007DB  68CACB            push word 0xcbca
000007DE  818EC34386C3      or word [bp+0x43c3],0xc386
000007E4  63DD              arpl bp,bx
000007E6  06                push es
000007E7  04DD              add al,0xdd
000007E9  53                push bx
000007EA  DD638A            frstor [bp+di-0x76]
000007ED  C3                ret
000007EE  C458CA            les bx,word [bx+si-0x36]
000007F1  CB                retf
000007F2  82                db 0x82
000007F3  82                db 0x82
000007F4  C3                ret
000007F5  43                inc bx
000007F6  89C3              mov bx,ax
000007F8  43                inc bx
000007F9  86C3              xchg al,bl
000007FB  1404              adc al,0x4
000007FD  8AC3              mov al,bl
000007FF  C458CA            les bx,word [bx+si-0x36]
00000802  CB                retf
00000803  82                db 0x82
00000804  82                db 0x82
00000805  DD4389            fld qword [bp+di-0x77]
00000808  DD4386            fld qword [bp+di-0x7a]
0000080B  C3                ret
0000080C  C4                db 0xc4
0000080D  C507              lds ax,word [bx]
0000080F  04E0              add al,0xe0
00000811  63E0              arpl ax,sp
00000813  738A              jnc 0x79f
00000815  C3                ret
00000816  C4                db 0xc4
00000817  C7                db 0xc7
00000818  C9                leave
00000819  CACB83            retf word 0x83cb
0000081C  8EC3              mov es,bx
0000081E  C4                db 0xc4
0000081F  DD438A            fld qword [bp+di-0x76]
00000822  C3                ret
00000823  C498C3C4          les bx,word [bx+si-0x3b3d]
00000827  DD                db 0xdd
00000828  C9                leave
00000829  CACB83            retf word 0x83cb
0000082C  82                db 0x82
0000082D  C3                ret
0000082E  43                inc bx
0000082F  89C3              mov bx,ax
00000831  635041            arpl [bx+si+0x41],dx
00000834  60                pusha
00000835  81C3C4C1          add bx,0xc1c4
00000839  51                push cx
0000083A  50                push ax
0000083B  41                inc cx
0000083C  40                inc ax
0000083D  7140              jno 0x87f
0000083F  41                inc cx
00000840  40                inc ax
00000841  82                db 0x82
00000842  C3                ret
00000843  C8C9CACB          enter word 0xcac9,byte 0xcb
00000847  8482DD43          test [bp+si+0x43dd],al
0000084B  89C3              mov bx,ax
0000084D  638AC3C4          arpl [bp+si-0x3b3d],cx
00000851  98                cbw
00000852  C3                ret
00000853  C7                db 0xc7
00000854  C9                leave
00000855  CACB84            retf word 0x84cb
00000858  8EC3              mov es,bx
0000085A  05048E            add ax,0x8e04
0000085D  C3                ret
0000085E  C4                db 0xc4
0000085F  E043              loopne 0x8a4
00000861  85C3              test bx,ax
00000863  43                inc bx
00000864  86D9              xchg bl,cl
00000866  CC                int3
00000867  48                dec ax
00000868  CA8582            retf word 0x8285
0000086B  C3                ret
0000086C  43                inc bx
0000086D  89C3              mov bx,ax
0000086F  C4                db 0xc4
00000870  DD638E            frstor [bp+di-0x72]
00000873  C3                ret
00000874  6385C343          arpl [di+0x43c3],ax
00000878  85D9              test cx,bx
0000087A  CC                int3
0000087B  58                pop ax
0000087C  8682DD43          xchg al,[bp+si+0x43dd]
00000880  89C3              mov bx,ax
00000882  43                inc bx
00000883  DD538E            fst qword [bp+di-0x72]
00000886  C3                ret
00000887  6385C3DD          arpl [di-0x223d],ax
0000088B  C484D9CC          les ax,word [si-0x3327]
0000088F  C9                leave
00000890  C7                db 0xc7
00000891  C8C9868E          enter word 0x86c9,byte 0x8e
00000895  C3                ret
00000896  43                inc bx
00000897  DD538E            fst qword [bp+di-0x72]
0000089A  C3                ret
0000089B  43                inc bx
0000089C  87C3              xchg ax,bx
0000089E  43                inc bx
0000089F  84C3              test bl,al
000008A1  C4                db 0xc4
000008A2  C8538682          enter word 0x8653,byte 0x82
000008A6  C3                ret
000008A7  43                inc bx
000008A8  89C3              mov bx,ax
000008AA  05048E            add ax,0x8e04
000008AD  C3                ret
000008AE  43                inc bx
000008AF  87C3              xchg ax,bx
000008B1  43                inc bx
000008B2  84C3              test bl,al
000008B4  7386              jnc 0x83c
000008B6  82                db 0x82
000008B7  DD4389            fld qword [bp+di-0x77]
000008BA  C3                ret
000008BB  53                push bx
000008BC  DD438E            fld qword [bp+di-0x72]
000008BF  C3                ret
000008C0  DDC4              ffree st4
000008C2  DDC4              ffree st4
000008C4  85C3              test bx,ax
000008C6  43                inc bx
000008C7  84C3              test bl,al
000008C9  7386              jnc 0x851
000008CB  8EC3              mov es,bx
000008CD  73DD              jnc 0x8ac
000008CF  8EC3              mov es,bx
000008D1  6385C343          arpl [di+0x43c3],ax
000008D5  84C3              test bl,al
000008D7  7386              jnc 0x85f
000008D9  82                db 0x82
000008DA  C3                ret
000008DB  43                inc bx
000008DC  89C3              mov bx,ax
000008DE  05048E            add ax,0x8e04
000008E1  C3                ret
000008E2  6385C3C5          arpl [di-0x3a3d],ax
000008E6  C484C373          les ax,word [si+0x73c3]
000008EA  8682DD43          xchg al,[bp+si+0x43dd]
000008EE  89C3              mov bx,ax
000008F0  05048E            add ax,0x8e04
000008F3  C3                ret
000008F4  638DC343          arpl [di+0x43c3],cx
000008F8  DDC4              ffree st4
000008FA  868EC353          xchg cl,[bp+0x53c3]
000008FE  DD438E            fld qword [bp+di-0x72]
00000901  C3                ret
00000902  638DC363          arpl [di+0x63c3],cx
00000906  8682C343          xchg al,[bp+si+0x43c3]
0000090A  E043              loopne 0x94f
0000090C  86C3              xchg al,bl
0000090E  C4                db 0xc4
0000090F  DD638C            frstor [bp+di-0x74]
00000912  C3                ret
00000913  43                inc bx
00000914  DD538D            fst qword [bp+di-0x73]
00000917  C3                ret
00000918  53                push bx
00000919  DD8682C3          fld qword [bp-0x3c7e]
0000091D  7386              jnc 0x8a5
0000091F  C3                ret
00000920  05048C            add ax,0x8c04
00000923  C3                ret
00000924  05048D            add ax,0x8d04
00000927  C3                ret
00000928  638684C3          arpl [bp-0x3c7c],ax
0000092C  53                push bx
0000092D  86C3              xchg al,bl
0000092F  C4                db 0xc4
00000930  DD638A            frstor [bp+di-0x76]
00000933  C3                ret
00000934  07                pop es
00000935  048D              add al,0x8d
00000937  C3                ret
00000938  638684C3          arpl [bp-0x3c7c],ax
0000093C  43                inc bx
0000093D  DD860220          fld qword [bp+0x2002]
00000941  638AC307          arpl [bp+si+0x7c3],cx
00000945  048D              add al,0x8d
00000947  C3                ret
00000948  638684C3          arpl [bp-0x3c7c],ax
0000094C  53                push bx
0000094D  95                xchg ax,bp
0000094E  C3                ret
0000094F  0904              or [si],ax
00000951  8D                db 0x8d
00000952  C3                ret
00000953  638684C3          arpl [bp-0x3c7c],ax
00000957  53                push bx
00000958  C240C2            ret word 0xc240
0000095B  40                inc ax
0000095C  51                push cx
0000095D  50                push ax
0000095E  C240C2            ret word 0xc240
00000961  60                pusha
00000962  81C30904          add bx,0x409
00000966  8D                db 0x8d
00000967  C3                ret
00000968  638684C3          arpl [bp-0x3c7c],ax
0000096C  DD4395            fld qword [bp+di-0x6b]
0000096F  C3                ret
00000970  C48EC343          les cx,word [bp+0x43c3]
00000974  85C3              test bx,ax
00000976  638684C3          arpl [bp-0x3c7c],ax
0000097A  53                push bx
0000097B  8605              xchg al,[di]
0000097D  200A              and [bp+si],cl
0000097F  048E              add al,0x8e
00000981  C3                ret
00000982  C4                db 0xc4
00000983  DD85C363          fld qword [di+0x63c3]
00000987  8684C3C4          xchg al,[si-0x3b3d]
0000098B  DDC4              ffree st4
0000098D  86C3              xchg al,bl
0000098F  0F                db 0x0f
00000990  048E              add al,0x8e
00000992  C3                ret
00000993  43                inc bx
00000994  85C3              test bx,ax
00000996  638684C3          arpl [bp-0x3c7c],ax
0000099A  C4                db 0xc4
0000099B  DDC4              ffree st4
0000099D  86C3              xchg al,bl
0000099F  0A04              or al,[si]
000009A1  DD6385            frstor [bp+di-0x7b]
000009A4  C55385            lds dx,word [bp+di-0x7b]
000009A7  C3                ret
000009A8  43                inc bx
000009A9  85C3              test bx,ax
000009AB  638684C3          arpl [bp-0x3c7c],ax
000009AF  53                push bx
000009B0  86C3              xchg al,bl
000009B2  0F                db 0x0f
000009B3  0485              add al,0x85
000009B5  C55385            lds dx,word [bp+di-0x7b]
000009B8  C3                ret
000009B9  43                inc bx
000009BA  85C3              test bx,ax
000009BC  53                push bx
000009BD  DD8684C3          fld qword [bp-0x3c7c]
000009C1  53                push bx
000009C2  86C3              xchg al,bl
000009C4  53                push bx
000009C5  DD7301            fnsave [bp+di+0x1]
000009C8  2043E0            and [bp+di-0x20],al
000009CB  43                inc bx
000009CC  85C3              test bx,ax
000009CE  53                push bx
000009CF  85C3              test bx,ax
000009D1  43                inc bx
000009D2  85C3              test bx,ax
000009D4  638684C3          arpl [bp-0x3c7c],ax
000009D8  C4                db 0xc4
000009D9  DDC4              ffree st4
000009DB  86C3              xchg al,bl
000009DD  6391C353          arpl [bx+di+0x53c3],dx
000009E1  85C3              test bx,ax
000009E3  DDC4              ffree st4
000009E5  85C3              test bx,ax
000009E7  DD5386            fst qword [bp+di-0x7a]
000009EA  84C3              test bl,al
000009EC  53                push bx
000009ED  86C3              xchg al,bl
000009EF  634061            arpl [bx+si+0x61],ax
000009F2  7071              jo 0xa65
000009F4  81C35385          add bx,0x8553
000009F8  C3                ret
000009F9  DDC4              ffree st4
000009FB  85C3              test bx,ax
000009FD  638684C3          arpl [bp-0x3c7c],ax
00000A01  53                push bx
00000A02  86C3              xchg al,bl
00000A04  6391C353          arpl [bx+di+0x53c3],dx
00000A08  85C3              test bx,ax
00000A0A  43                inc bx
00000A0B  85C3              test bx,ax
00000A0D  53                push bx
00000A0E  DD8684C3          fld qword [bp-0x3c7c]
00000A12  53                push bx
00000A13  86C3              xchg al,bl
00000A15  C4                db 0xc4
00000A16  DD4385            fld qword [bp+di-0x7b]
00000A19  C3                ret
00000A1A  050485            add ax,0x8504
00000A1D  C3                ret
00000A1E  C487C343          les ax,word [bx+0x43c3]
00000A22  85C3              test bx,ax
00000A24  638684C3          arpl [bp-0x3c7c],ax
00000A28  53                push bx
00000A29  86C3              xchg al,bl
00000A2B  6385C305          arpl [di+0x5c3],ax
00000A2F  0485              add al,0x85
00000A31  C3                ret
00000A32  DD87C343          fld qword [bx+0x43c3]
00000A36  85C3              test bx,ax
00000A38  638684C3          arpl [bp-0x3c7c],ax
00000A3C  53                push bx
00000A3D  86C3              xchg al,bl
00000A3F  43                inc bx
00000A40  87C3              xchg ax,bx
00000A42  53                push bx
00000A43  DD4385            fld qword [bp+di-0x7b]
00000A46  C3                ret
00000A47  53                push bx
00000A48  85C3              test bx,ax
00000A4A  C4                db 0xc4
00000A4B  DD85C363          fld qword [di+0x63c3]
00000A4F  8684C353          xchg al,[si+0x53c3]
00000A53  86C3              xchg al,bl
00000A55  43                inc bx
00000A56  87C3              xchg ax,bx
00000A58  43                inc bx
00000A59  011D              add [di],bx
00000A5B  43                inc bx
00000A5C  85C3              test bx,ax
00000A5E  53                push bx
00000A5F  85C3              test bx,ax
00000A61  43                inc bx
00000A62  85C3              test bx,ax
00000A64  C4                db 0xc4
00000A65  DD4386            fld qword [bp+di-0x7a]
00000A68  84C3              test bl,al
00000A6A  53                push bx
00000A6B  86C3              xchg al,bl
00000A6D  6385C305          arpl [di+0x5c3],ax
00000A71  0485              add al,0x85
00000A73  C3                ret
00000A74  53                push bx
00000A75  85C3              test bx,ax
00000A77  43                inc bx
00000A78  85C3              test bx,ax
00000A7A  53                push bx
00000A7B  DD8684C3          fld qword [bp-0x3c7c]
00000A7F  53                push bx
00000A80  86C3              xchg al,bl
00000A82  6385C363          arpl [di+0x63c3],ax
00000A86  DDC4              ffree st4
00000A88  85C3              test bx,ax
00000A8A  53                push bx
00000A8B  85C3              test bx,ax
00000A8D  43                inc bx
00000A8E  85C3              test bx,ax
00000A90  638682C3          arpl [bp-0x3c7e],ax
00000A94  0804              or [si],al
00000A96  82                db 0x82
00000A97  7385              jnc 0xa1e
00000A99  C3                ret
00000A9A  06                push es
00000A9B  04E0              add al,0xe0
00000A9D  53                push bx
00000A9E  DD160484          fst qword [0x8404]
00000AA2  82                db 0x82
00000AA3  C3                ret
00000AA4  07                pop es
00000AA5  04DD              add al,0xdd
00000AA7  82                db 0x82
00000AA8  7385              jnc 0xa2f
00000AAA  C3                ret
00000AAB  2204              and al,[si]
00000AAD  8482C30F          test [bp+si+0xfc3],al
00000AB1  0485              add al,0x85
00000AB3  C3                ret
00000AB4  0E                push cs
00000AB5  04E0              add al,0xe0
00000AB7  63E0              arpl ax,sp
00000AB9  73E0              jnc 0xa9b
00000ABB  07                pop es
00000ABC  0484              add al,0x84
00000ABE  82                db 0x82
00000ABF  C3                ret
00000AC0  43                inc bx
00000AC1  DD4386            fld qword [bp+di-0x7a]
00000AC4  C3                ret
00000AC5  638CC3DD          arpl [si-0x223d],cx
00000AC9  53                push bx
00000ACA  94                xchg ax,sp
00000ACB  C3                ret
00000ACC  53                push bx
00000ACD  8482C373          test [bp+si+0x73c3],al
00000AD1  86C3              xchg al,bl
00000AD3  638CC353          arpl [si+0x53c3],cx
00000AD7  DDC1              ffree st1
00000AD9  C24051            ret word 0x5140
00000ADC  60                pusha
00000ADD  41                inc cx
00000ADE  C186C35384        rol word [bp+0x53c3],byte 0x84
00000AE3  82                db 0x82
00000AE4  C3                ret
00000AE5  7386              jnc 0xa6d
00000AE7  C3                ret
00000AE8  638DC353          arpl [di+0x53c3],cx
00000AEC  94                xchg ax,sp
00000AED  C3                ret
00000AEE  53                push bx
00000AEF  8482C373          test [bp+si+0x73c3],al
00000AF3  86C3              xchg al,bl
00000AF5  638DC353          arpl [di+0x53c3],cx
00000AF9  85C3              test bx,ax
00000AFB  C4                db 0xc4
00000AFC  C1C2C1            rol dx,byte 0xc1
00000AFF  C24041            ret word 0x4140
00000B02  40                inc ax
00000B03  83C353            add bx,0x53
00000B06  8482C3DD          test [bp+si-0x223d],al
00000B0A  6386C3C4          arpl [bp-0x3b3d],ax
00000B0E  DD438E            fld qword [bp+di-0x72]
00000B11  C3                ret
00000B12  43                inc bx
00000B13  85C3              test bx,ax
00000B15  C4                db 0xc4
00000B16  E0C4              loopne 0xadc
00000B18  8BC3              mov ax,bx
00000B1A  53                push bx
00000B1B  8482C373          test [bp+si+0x73c3],al
00000B1F  86C3              xchg al,bl
00000B21  638EC343          arpl [bp+0x43c3],cx
00000B25  85C3              test bx,ax
00000B27  050401            add ax,0x104
00000B2A  204384            and [bp+di-0x7c],al
00000B2D  C3                ret
00000B2E  DD8682C3          fld qword [bp-0x3c7e]
00000B32  7386              jnc 0xaba
00000B34  C3                ret
00000B35  638FC3C4          arpl [bx-0x3b3d],cx
00000B39  85C3              test bx,ax
00000B3B  0904              or [si],ax
00000B3D  84C3              test bl,al
00000B3F  C48682C3          les ax,word [bp-0x3c7e]
00000B43  7386              jnc 0xacb
00000B45  C3                ret
00000B46  638FC3C4          arpl [bx-0x3b3d],cx
00000B4A  85C3              test bx,ax
00000B4C  0904              or [si],ax
00000B4E  84C3              test bl,al
00000B50  43                inc bx
00000B51  DD8482C3          fld qword [si-0x3c7e]
00000B55  53                push bx
00000B56  DDC4              ffree st4
00000B58  86C3              xchg al,bl
00000B5A  638FC3C4          arpl [bx-0x3b3d],cx
00000B5E  85C3              test bx,ax
00000B60  73DD              jnc 0xb3f
00000B62  88C3              mov bl,al
00000B64  53                push bx
00000B65  8482C373          test [bp+si+0x73c3],al
00000B69  86C3              xchg al,bl
00000B6B  638FC3C4          arpl [bx-0x3b3d],cx
00000B6F  85C3              test bx,ax
00000B71  43                inc bx
00000B72  E053              loopne 0xbc7
00000B74  88C3              mov bl,al
00000B76  53                push bx
00000B77  8482C373          test [bp+si+0x73c3],al
00000B7B  86C3              xchg al,bl
00000B7D  DD538F            fst qword [bp+di-0x71]
00000B80  C3                ret
00000B81  C485C343          les ax,word [di+0x43c3]
00000B85  8CC3              mov bx,es
00000B87  53                push bx
00000B88  8482C373          test [bp+si+0x73c3],al
00000B8C  86C3              xchg al,bl
00000B8E  638FC3C4          arpl [bx-0x3b3d],cx
00000B92  85C3              test bx,ax
00000B94  43                inc bx
00000B95  8CC3              mov bx,es
00000B97  53                push bx
00000B98  8443DD            test [bp+di-0x23],al
00000B9B  7386              jnc 0xb23
00000B9D  C3                ret
00000B9E  638FC3C4          arpl [bx-0x3b3d],cx
00000BA2  85C3              test bx,ax
00000BA4  C48DC305          les cx,word [di+0x5c3]
00000BA8  04E0              add al,0xe0
00000BAA  73DD              jnc 0xb89
00000BAC  43                inc bx
00000BAD  86C3              xchg al,bl
00000BAF  638FC3C4          arpl [bx-0x3b3d],cx
00000BB3  85C3              test bx,ax
00000BB5  C48DC306          les cx,word [di+0x6c3]
00000BB9  0407              add al,0x7
00000BBB  0487              add al,0x87
00000BBD  C3                ret
00000BBE  53                push bx
00000BBF  8FC3              pop bx
00000BC1  C485C3C4          les ax,word [di-0x3b3d]
00000BC5  8D                db 0x8d
00000BC6  C3                ret
00000BC7  C4                db 0xc4
00000BC8  DD7307            fnsave [bp+di+0x7]
00000BCB  0488              add al,0x88
00000BCD  C3                ret
00000BCE  43                inc bx
00000BCF  85C3              test bx,ax
00000BD1  DD4386            fld qword [bp+di-0x7a]
00000BD4  C3                ret
00000BD5  C48AC486          les cx,word [bp+si-0x793c]
00000BD9  C3                ret
00000BDA  E008              loopne 0xbe4
00000BDC  0404              add al,0x4
00000BDE  205389            and [bp+di-0x77],dl
00000BE1  C3                ret
00000BE2  C485C353          les ax,word [di+0x53c3]
00000BE6  86C3              xchg al,bl
00000BE8  C4896384          les cx,word [bx+di-0x7b9d]
00000BEC  C3                ret
00000BED  0904              or [si],ax
00000BEF  85C3              test bx,ax
00000BF1  43                inc bx
00000BF2  89C3              mov bx,ax
00000BF4  C485C353          les ax,word [di+0x53c3]
00000BF8  86C3              xchg al,bl
00000BFA  C48AC486          les cx,word [bp+si-0x793c]
00000BFE  C3                ret
00000BFF  C4                db 0xc4
00000C00  E007              loopne 0xc09
00000C02  0485              add al,0x85
00000C04  C3                ret
00000C05  DDC4              ffree st4
00000C07  89C3              mov bx,ax
00000C09  C485C30A          les ax,word [di+0xac3]
00000C0D  0494              add al,0x94
00000C0F  C3                ret
00000C10  43                inc bx
00000C11  DD6385            frstor [bp+di-0x7b]
00000C14  C3                ret
00000C15  43                inc bx
00000C16  89C3              mov bx,ax
00000C18  C485C30A          les ax,word [di+0xac3]
00000C1C  0494              add al,0x94
00000C1E  C3                ret
00000C1F  06                push es
00000C20  0485              add al,0x85
00000C22  C3                ret
00000C23  43                inc bx
00000C24  89C3              mov bx,ax
00000C26  C485C363          les ax,word [di+0x63c3]
00000C2A  DD05              fld qword [di]
00000C2C  0494              add al,0x94
00000C2E  C3                ret
00000C2F  06                push es
00000C30  0485              add al,0x85
00000C32  C3                ret
00000C33  43                inc bx
00000C34  89C3              mov bx,ax
00000C36  C485C306          les ax,word [di+0x6c3]
00000C3A  04DD              add al,0xdd
00000C3C  53                push bx
00000C3D  94                xchg ax,sp
00000C3E  D6                salc
00000C3F  E105              loope 0xc46
00000C41  0485              add al,0x85
00000C43  C3                ret
00000C44  43                inc bx
00000C45  89C7              mov di,ax
00000C47  C9                leave
00000C48  85C3              test bx,ax
00000C4A  53                push bx
00000C4B  95                xchg ax,bp
00000C4C  C3                ret
00000C4D  C585D6E1          lds ax,word [di-0x1e2a]
00000C51  050485            add ax,0x8504
00000C54  C3                ret
00000C55  43                inc bx
00000C56  88D9              mov cl,bl
00000C58  CC                int3
00000C59  C9                leave
00000C5A  85C3              test bx,ax
00000C5C  C4                db 0xc4
00000C5D  DDC4              ffree st4
00000C5F  41                inc cx
00000C60  50                push ax
00000C61  C25041            ret word 0x4150
00000C64  C189C3C485        ror word [bx+di-0x3b3d],byte 0x85
00000C69  D6                salc
00000C6A  E105              loope 0xc71
00000C6C  0485              add al,0x85
00000C6E  C3                ret
00000C6F  43                inc bx
00000C70  87D9              xchg bx,cx
00000C72  CC                int3
00000C73  C9                leave
00000C74  CACB84            retf word 0x84cb
00000C77  C3                ret
00000C78  53                push bx
00000C79  95                xchg ax,bp
00000C7A  C3                ret
00000C7B  C485D6E1          les ax,word [di-0x1e2a]
00000C7F  050485            add ax,0x8504
00000C82  C3                ret
00000C83  43                inc bx
00000C84  86D9              xchg bl,cl
00000C86  CC                int3
00000C87  48                dec ax
00000C88  CACB84            retf word 0x84cb
00000C8B  C3                ret
00000C8C  53                push bx
00000C8D  86C3              xchg al,bl
00000C8F  C48DC343          les cx,word [di+0x43c3]
00000C93  84D6              test dh,dl
00000C95  E143              loope 0xcda
00000C97  DD5385            fst qword [bp+di-0x7b]
00000C9A  C3                ret
00000C9B  43                inc bx
00000C9C  85D9              test cx,bx
00000C9E  CC                int3
00000C9F  48                dec ax
00000CA0  C8CB85C3          enter word 0x85cb,byte 0xc3
00000CA4  53                push bx
00000CA5  86C3              xchg al,bl
00000CA7  C48DC3C4          les cx,word [di-0x3b3d]
00000CAB  DD84D6E1          fld qword [si-0x1e2a]
00000CAF  DD7385            fnsave [bp+di-0x7b]
00000CB2  C3                ret
00000CB3  43                inc bx
00000CB4  854849            test [bx+si+0x49],cx
00000CB7  C7                db 0xc7
00000CB8  C9                leave
00000CB9  CA84C3            retf word 0xc384
00000CBC  43                inc bx
00000CBD  DD86C3C4          fld qword [bp-0x3b3d]
00000CC1  8D                db 0x8d
00000CC2  C3                ret
00000CC3  43                inc bx
00000CC4  84D6              test dh,dl
00000CC6  E105              loope 0xccd
00000CC8  0485              add al,0x85
00000CCA  C3                ret
00000CCB  DDC4              ffree st4
00000CCD  85C3              test bx,ax
00000CCF  C8C7C949          enter word 0xc9c7,byte 0x49
00000CD3  85C3              test bx,ax
00000CD5  53                push bx
00000CD6  86C3              xchg al,bl
00000CD8  C485C3C4          les ax,word [di-0x3b3d]
00000CDC  86C3              xchg al,bl
00000CDE  43                inc bx
00000CDF  84C3              test bl,al
00000CE1  06                push es
00000CE2  048D              add al,0x8d
00000CE4  C3                ret
00000CE5  C8C7C949          enter word 0xc9c7,byte 0x49
00000CE9  85C3              test bx,ax
00000CEB  53                push bx
00000CEC  86C3              xchg al,bl
00000CEE  DD85C3DD          fld qword [di-0x223d]
00000CF2  86C3              xchg al,bl
00000CF4  43                inc bx
00000CF5  84C3              test bl,al
00000CF7  06                push es
00000CF8  04C1              add al,0xc1
00000CFA  41                inc cx
00000CFB  50                push ax
00000CFC  C2C1C2            ret word 0xc2c1
00000CFF  40                inc ax
00000D00  C281C3            ret word 0xc381
00000D03  43                inc bx
00000D04  CACB86            retf word 0x86cb
00000D07  C3                ret
00000D08  53                push bx
00000D09  86C3              xchg al,bl
00000D0B  C485C3C4          les ax,word [di-0x3b3d]
00000D0F  86C5              xchg al,ch
00000D11  C485C3C4          les ax,word [di-0x3b3d]
00000D15  C5738D            lds si,word [bp+di-0x73]
00000D18  C3                ret
00000D19  43                inc bx
00000D1A  CB                retf
00000D1B  87C3              xchg ax,bx
00000D1D  DD4386            fld qword [bp+di-0x7a]
00000D20  C3                ret
00000D21  C485C343          les ax,word [di+0x43c3]
00000D25  91                xchg ax,cx
00000D26  C3                ret
00000D27  43                inc bx
00000D28  85C3              test bx,ax
00000D2A  43                inc bx
00000D2B  85C3              test bx,ax
00000D2D  43                inc bx
00000D2E  88C3              mov bl,al
00000D30  DD4386            fld qword [bp+di-0x7a]
00000D33  C3                ret
00000D34  C485C343          les ax,word [di+0x43c3]
00000D38  C14150C2          rol word [bx+di+0x50],byte 0xc2
00000D3C  40                inc ax
00000D3D  51                push cx
00000D3E  40                inc ax
00000D3F  C2C181            ret word 0x81c1
00000D42  C3                ret
00000D43  DDC4              ffree st4
00000D45  85C3              test bx,ax
00000D47  43                inc bx
00000D48  85C3              test bx,ax
00000D4A  43                inc bx
00000D4B  85C3              test bx,ax
00000D4D  C4                db 0xc4
00000D4E  DD6386            frstor [bp+di-0x7a]
00000D51  C3                ret
00000D52  C485C3DD          les ax,word [di-0x223d]
00000D56  C491C343          les dx,word [bx+di+0x43c3]
00000D5A  85C3              test bx,ax
00000D5C  43                inc bx
00000D5D  85C3              test bx,ax
00000D5F  C4                db 0xc4
00000D60  DD85C305          fld qword [di+0x5c3]
00000D64  0486              add al,0x86
00000D66  C3                ret
00000D67  C485C343          les ax,word [di+0x43c3]
00000D6B  87C3              xchg ax,bx
00000D6D  89C3              mov bx,ax
00000D6F  43                inc bx
00000D70  85C3              test bx,ax
00000D72  43                inc bx
00000D73  85C3              test bx,ax
00000D75  43                inc bx
00000D76  85C3              test bx,ax
00000D78  050486            add ax,0x8604
00000D7B  C3                ret
00000D7C  C485C343          les ax,word [di+0x43c3]
00000D80  87C3              xchg ax,bx
00000D82  C54386            lds ax,word [bp+di-0x7a]
00000D85  C3                ret
00000D86  43                inc bx
00000D87  85C3              test bx,ax
00000D89  43                inc bx
00000D8A  85C3              test bx,ax
00000D8C  43                inc bx
00000D8D  85C3              test bx,ax
00000D8F  050486            add ax,0x8604
00000D92  C3                ret
00000D93  C485C343          les ax,word [di+0x43c3]
00000D97  87C3              xchg ax,bx
00000D99  53                push bx
00000D9A  86C3              xchg al,bl
00000D9C  43                inc bx
00000D9D  85C3              test bx,ax
00000D9F  DDC4              ffree st4
00000DA1  85C3              test bx,ax
00000DA3  43                inc bx
00000DA4  85C3              test bx,ax
00000DA6  050486            add ax,0x8604
00000DA9  C3                ret
00000DAA  DD85C343          fld qword [di+0x43c3]
00000DAE  87C3              xchg ax,bx
00000DB0  53                push bx
00000DB1  86C3              xchg al,bl
00000DB3  011D              add [di],bx
00000DB5  85C3              test bx,ax
00000DB7  87C3              xchg ax,bx
00000DB9  43                inc bx
00000DBA  85C3              test bx,ax
00000DBC  63DD              arpl bp,bx
00000DBE  C486C3C4          les ax,word [bp-0x3b3d]
00000DC2  85C3              test bx,ax
00000DC4  C4                db 0xc4
00000DC5  DD87C353          fld qword [bx+0x53c3]
00000DC9  86C3              xchg al,bl
00000DCB  43                inc bx
00000DCC  85C3              test bx,ax
00000DCE  87C3              xchg ax,bx
00000DD0  43                inc bx
00000DD1  85C3              test bx,ax
00000DD3  06                push es
00000DD4  04DD              add al,0xdd
00000DD6  0504DD            add ax,0xdd04
00000DD9  43                inc bx
00000DDA  82                db 0x82
00000DDB  53                push bx
00000DDC  87C3              xchg ax,bx
00000DDE  53                push bx
00000DDF  86C3              xchg al,bl
00000DE1  DDC4              ffree st4
00000DE3  85C3              test bx,ax
00000DE5  43                inc bx
00000DE6  85C3              test bx,ax
00000DE8  43                inc bx
00000DE9  85C3              test bx,ax
00000DEB  0A04              or al,[si]
00000DED  DD7382            fnsave [bp+di-0x7e]
00000DF0  53                push bx
00000DF1  87C3              xchg ax,bx
00000DF3  43                inc bx
00000DF4  DD86C343          fld qword [bp+0x43c3]
00000DF8  85C3              test bx,ax
00000DFA  43                inc bx
00000DFB  85C3              test bx,ax
00000DFD  43                inc bx
00000DFE  85C3              test bx,ax
00000E00  150487            adc ax,0x8704
00000E03  C3                ret
00000E04  53                push bx
00000E05  86C3              xchg al,bl
00000E07  43                inc bx
00000E08  85C3              test bx,ax
00000E0A  43                inc bx
00000E0B  85C3              test bx,ax
00000E0D  43                inc bx
00000E0E  85C3              test bx,ax
00000E10  C4                db 0xc4
00000E11  DD10              fst qword [bx+si]
00000E13  04DD              add al,0xdd
00000E15  43                inc bx
00000E16  87C3              xchg ax,bx
00000E18  53                push bx
00000E19  86C3              xchg al,bl
00000E1B  43                inc bx
00000E1C  85C3              test bx,ax
00000E1E  43                inc bx
00000E1F  85DD              test bp,bx
00000E21  43                inc bx
00000E22  85C3              test bx,ax
00000E24  73DD              jnc 0xe03
00000E26  63DD              arpl bp,bx
00000E28  0A04              or al,[si]
00000E2A  87C3              xchg ax,bx
00000E2C  DD4386            fld qword [bp+di-0x7a]
00000E2F  C3                ret
00000E30  43                inc bx
00000E31  85C3              test bx,ax
00000E33  43                inc bx
00000E34  85C3              test bx,ax
00000E36  43                inc bx
00000E37  85C3              test bx,ax
00000E39  53                push bx
00000E3A  89C3              mov bx,ax
00000E3C  53                push bx
00000E3D  DD5389            fst qword [bp+di-0x77]
00000E40  C3                ret
00000E41  06                push es
00000E42  0444              add al,0x44
00000E44  53                push bx
00000E45  85C3              test bx,ax
00000E47  43                inc bx
00000E48  85C3              test bx,ax
00000E4A  73DD              jnc 0xe29
00000E4C  7389              jnc 0xdd7
00000E4E  C3                ret
00000E4F  53                push bx
00000E50  DD5389            fst qword [bp+di-0x77]
00000E53  C3                ret
00000E54  DD7344            fnsave [bp+di+0x44]
00000E57  6385C343          arpl [di+0x43c3],ax
00000E5B  85C3              test bx,ax
00000E5D  53                push bx
00000E5E  DD060489          fld qword [0x8904]
00000E62  DD060489          fld qword [0x8904]
00000E66  C3                ret
00000E67  7344              jnc 0xead
00000E69  7385              jnc 0xdf0
00000E6B  C3                ret
00000E6C  43                inc bx
00000E6D  85C3              test bx,ax
00000E6F  0A04              or al,[si]
00000E71  89C3              mov bx,ax
00000E73  06                push es
00000E74  0484              add al,0x84
00000E76  C3                ret
00000E77  07                pop es
00000E78  0489              add al,0x89
00000E7A  C25081            ret word 0x8150
00000E7D  C3                ret
00000E7E  DDC4              ffree st4
00000E80  8BC3              mov ax,bx
00000E82  63DD              arpl bp,bx
00000E84  89C3              mov bx,ax
00000E86  06                push es
00000E87  0484              add al,0x84
00000E89  C3                ret
00000E8A  07                pop es
00000E8B  0440              add al,0x40
00000E8D  51                push cx
00000E8E  50                push ax
00000E8F  C285C3            ret word 0xc385
00000E92  43                inc bx
00000E93  C161C1C2          shl word [bx+di-0x3f],byte 0xc2
00000E97  C14181C3          rol word [bx+di-0x7f],byte 0xc3
00000E9B  63DD              arpl bp,bx
00000E9D  89C3              mov bx,ax
00000E9F  43                inc bx
00000EA0  E043              loopne 0xee5
00000EA2  E0C4              loopne 0xe68
00000EA4  84C3              test bl,al
00000EA6  C4                db 0xc4
00000EA7  DD05              fld qword [di]
00000EA9  0489              add al,0x89
00000EAB  63E0              arpl ax,sp
00000EAD  53                push bx
00000EAE  8BC3              mov ax,bx
00000EB0  53                push bx
00000EB1  8BC3              mov ax,bx
00000EB3  C48AC307          les cx,word [bp+si+0x7c3]
00000EB7  0484              add al,0x84
00000EB9  C3                ret
00000EBA  43                inc bx
00000EBB  E0C4              loopne 0xe81
00000EBD  0D0485            or ax,0x8504
00000EC0  C3                ret
00000EC1  53                push bx
00000EC2  8BC3              mov ax,bx
00000EC4  C48AC307          les cx,word [bp+si+0x7c3]
00000EC8  0484              add al,0x84
00000ECA  C3                ret
00000ECB  630D              arpl [di],cx
00000ECD  0485              add al,0x85
00000ECF  C3                ret
00000ED0  7389              jnc 0xe5b
00000ED2  C3                ret
00000ED3  C48AC307          les cx,word [bp+si+0x7c3]
00000ED7  0484              add al,0x84
00000ED9  C3                ret
00000EDA  63E0              arpl ax,sp
00000EDC  63E0              arpl ax,sp
00000EDE  53                push bx
00000EDF  DD6385            frstor [bp+di-0x7b]
00000EE2  C3                ret
00000EE3  7389              jnc 0xe6e
00000EE5  C3                ret
00000EE6  DD8AC353          fisttp qword [bp+si+0x53c3]
00000EEA  DD43DD            fld qword [bp+di-0x23]
00000EED  C484C363          les ax,word [si+0x63c3]
00000EF1  89C3              mov bx,ax
00000EF3  C4                db 0xc4
00000EF4  DD4385            fld qword [bp+di-0x7b]
00000EF7  C3                ret
00000EF8  C4                db 0xc4
00000EF9  DD5389            fst qword [bp+di-0x77]
00000EFC  C3                ret
00000EFD  C48AC308          les cx,word [bp+si+0x8c3]
00000F01  0488              add al,0x88
00000F03  C1C250            rol dx,byte 0x50
00000F06  84C3              test bl,al
00000F08  43                inc bx
00000F09  DDC4              ffree st4
00000F0B  85C3              test bx,ax
00000F0D  53                push bx
00000F0E  DDC4              ffree st4
00000F10  89C3              mov bx,ax
00000F12  C48AC308          les cx,word [bp+si+0x8c3]
00000F16  04C2              add al,0xc2
00000F18  50                push ax
00000F19  41                inc cx
00000F1A  40                inc ax
00000F1B  89C3              mov bx,ax
00000F1D  6385C353          arpl [di+0x53c3],ax
00000F21  8BC3              mov ax,bx
00000F23  C48AC3E0          les cx,word [bp+si-0x1f3d]
00000F27  63DD              arpl bp,bx
00000F29  53                push bx
00000F2A  888BC343          mov [bp+di+0x43c3],cl
00000F2E  85C3              test bx,ax
00000F30  53                push bx
00000F31  8BC3              mov ax,bx
00000F33  C48CC305          les cx,word [si+0x5c3]
00000F37  0487              add al,0x87
00000F39  C3                ret
00000F3A  E08B              loopne 0xec7
00000F3C  C3                ret
00000F3D  87C3              xchg ax,bx
00000F3F  53                push bx
00000F40  8BC3              mov ax,bx
00000F42  8D                db 0x8d
00000F43  C3                ret
00000F44  DD7387            fnsave [bp+di-0x79]
00000F47  C3                ret
00000F48  C48BC387          les cx,word [bp+di-0x783d]
00000F4C  C3                ret
00000F4D  53                push bx
00000F4E  8BC3              mov ax,bx
00000F50  8D                db 0x8d
00000F51  C3                ret
00000F52  050487            add ax,0x8704
00000F55  43                inc bx
00000F56  8BC3              mov ax,bx
00000F58  43                inc bx
00000F59  85C3              test bx,ax
00000F5B  53                push bx
00000F5C  99                cwd
00000F5D  C3                ret
00000F5E  050484            add ax,0x8404
00000F61  C3                ret
00000F62  E053              loopne 0xfb7
00000F64  8BC3              mov ax,bx
00000F66  43                inc bx
00000F67  85C3              test bx,ax
00000F69  53                push bx
00000F6A  99                cwd
00000F6B  C3                ret
00000F6C  050484            add ax,0x8404
00000F6F  C3                ret
00000F70  638BC343          arpl [bp+di+0x43c3],cx
00000F74  85C3              test bx,ax
00000F76  53                push bx
00000F77  A4                movsb
00000F78  C3                ret
00000F79  638BC343          arpl [bp+di+0x43c3],cx
00000F7D  85C3              test bx,ax
00000F7F  53                push bx
00000F80  92                xchg ax,dx
00000F81  C3                ret
00000F82  DD6140            frstor [bx+di+0x40]
00000F85  C24051            ret word 0x5140
00000F88  40                inc ax
00000F89  82                db 0x82
00000F8A  C3                ret
00000F8B  638BC343          arpl [bp+di+0x43c3],cx
00000F8F  85C3              test bx,ax
00000F91  53                push bx
00000F92  C24051            ret word 0x5140
00000F95  40                inc ax
00000F96  61                popa
00000F97  40                inc ax
00000F98  84C3              test bl,al
00000F9A  DD90C363          fst qword [bx+si+0x63c3]
00000F9E  85C3              test bx,ax
00000FA0  85C3              test bx,ax
00000FA2  C4                db 0xc4
00000FA3  DD85C353          fld qword [di+0x53c3]
00000FA7  92                xchg ax,dx
00000FA8  C3                ret
00000FA9  C49585C3          les dx,word [di-0x3c7b]
00000FAD  85C3              test bx,ax
00000FAF  43                inc bx
00000FB0  85C3              test bx,ax
00000FB2  C4                db 0xc4
00000FB3  DDC4              ffree st4
00000FB5  82                db 0x82
00000FB6  C484DD43          les ax,word [si+0x43dd]
00000FBA  88C3              mov bl,al
00000FBC  C49585C3          les dx,word [di-0x3c7b]
00000FC0  85C3              test bx,ax
00000FC2  43                inc bx
00000FC3  85C3              test bx,ax
00000FC5  53                push bx
00000FC6  816382DD43        and word [bp+di-0x7e],0x43dd
00000FCB  88C3              mov bl,al
00000FCD  C4958BC3          les dx,word [di-0x3c75]
00000FD1  43                inc bx
00000FD2  85C3              test bx,ax
00000FD4  53                push bx
00000FD5  82                db 0x82
00000FD6  C483C353          les ax,word [bp+di+0x53c3]
00000FDA  88C3              mov bl,al
00000FDC  C4                db 0xc4
00000FDD  DD4388            fld qword [bp+di-0x78]
00000FE0  C3                ret
00000FE1  43                inc bx
00000FE2  85C3              test bx,ax
00000FE4  C48BC353          les cx,word [bp+di+0x53c3]
00000FE8  8EC3              mov es,bx
00000FEA  53                push bx
00000FEB  88C3              mov bl,al
00000FED  C4                db 0xc4
00000FEE  DD4388            fld qword [bp+di-0x78]
00000FF1  C3                ret
00000FF2  43                inc bx
00000FF3  85C3              test bx,ax
00000FF5  C48BC353          les cx,word [bp+di+0x53c3]
00000FF9  8EC3              mov es,bx
00000FFB  53                push bx
00000FFC  88C3              mov bl,al
00000FFE  6388C343          arpl [bx+si+0x43c3],cx
00001002  85C3              test bx,ax
00001004  C48BC373          les cx,word [bp+di+0x73c3]
00001008  8CC3              mov bx,es
0000100A  53                push bx
0000100B  88C3              mov bl,al
0000100D  6388C343          arpl [bx+si+0x43c3],cx
00001011  85C3              test bx,ax
00001013  C48BC3C4          les cx,word [bp+di-0x3b3d]
00001017  DD538C            fst qword [bp+di-0x74]
0000101A  C3                ret
0000101B  43                inc bx
0000101C  DD86C305          fld qword [bp+0x5c3]
00001020  0488              add al,0x88
00001022  C3                ret
00001023  C4                db 0xc4
00001024  DD85C3DD          fld qword [di-0x223d]
00001028  8BC3              mov ax,bx
0000102A  05048B            add ax,0x8b04
0000102D  C3                ret
0000102E  43                inc bx
0000102F  DD86C373          fld qword [bp+0x73c3]
00001033  DD88C343          fisttp qword [bx+si+0x43c3]
00001037  85C3              test bx,ax
00001039  DD8BC305          fisttp qword [bp+di+0x5c3]
0000103D  048B              add al,0x8b
0000103F  C3                ret
00001040  53                push bx
00001041  86C3              xchg al,bl
00001043  43                inc bx
00001044  DD43C5            fld qword [bp+di-0x3b]
00001047  88C3              mov bl,al
00001049  43                inc bx
0000104A  85C3              test bx,ax
0000104C  C485C3C5          les ax,word [di-0x3a3d]
00001050  85C3              test bx,ax
00001052  638CC353          arpl [si+0x53c3],cx
00001056  86C3              xchg al,bl
00001058  DD5344            fst qword [bp+di+0x44]
0000105B  88C3              mov bl,al
0000105D  DDC4              ffree st4
0000105F  85C3              test bx,ax
00001061  C485C3C4          les ax,word [di-0x3b3d]
00001065  85C3              test bx,ax
00001067  638CC353          arpl [si+0x53c3],cx
0000106B  86C3              xchg al,bl
0000106D  53                push bx
0000106E  44                inc sp
0000106F  C488C343          les cx,word [bx+si+0x43c3]
00001073  85C3              test bx,ax
00001075  C485C3C4          les ax,word [di-0x3b3d]
00001079  85C3              test bx,ax
0000107B  43                inc bx
0000107C  8EC3              mov es,bx
0000107E  DD4386            fld qword [bp+di-0x7a]
00001081  C3                ret
00001082  43                inc bx
00001083  44                inc sp
00001084  C4                db 0xc4
00001085  C588C3DD          lds cx,word [bx+si-0x223d]
00001089  C485C3DD          les ax,word [di-0x223d]
0000108D  85C3              test bx,ax
0000108F  C485C343          les ax,word [di+0x43c3]
00001093  8EC3              mov es,bx
00001095  C4                db 0xc4
00001096  DDC4              ffree st4
00001098  86C3              xchg al,bl
0000109A  C4                db 0xc4
0000109B  C543C5            lds ax,word [bp+di-0x3b]
0000109E  C488C343          les cx,word [bx+si+0x43c3]
000010A2  85C3              test bx,ax
000010A4  C485C3C5          les ax,word [di-0x3a3d]
000010A8  85C3              test bx,ax
000010AA  43                inc bx
000010AB  84C3              test bl,al
000010AD  89C3              mov bx,ax
000010AF  53                push bx
000010B0  86C3              xchg al,bl
000010B2  C543DD            lds ax,word [bp+di-0x23]
000010B5  43                inc bx
000010B6  88C3              mov bl,al
000010B8  43                inc bx
000010B9  85C3              test bx,ax
000010BB  C485C3C4          les ax,word [di-0x3b3d]
000010BF  85C3              test bx,ax
000010C1  43                inc bx
000010C2  84C3              test bl,al
000010C4  89C3              mov bx,ax
000010C6  53                push bx
000010C7  86C3              xchg al,bl
000010C9  050488            add ax,0x8804
000010CC  C3                ret
000010CD  43                inc bx
000010CE  85C3              test bx,ax
000010D0  C485C3C4          les ax,word [di-0x3b3d]
000010D4  85C3              test bx,ax
000010D6  43                inc bx
000010D7  8EC3              mov es,bx
000010D9  43                inc bx
000010DA  DD86C373          fld qword [bp+0x73c3]
000010DE  DD88C3C4          fisttp qword [bx+si-0x3b3d]
000010E2  DD85C3C4          fld qword [di-0x3b3d]
000010E6  85C3              test bx,ax
000010E8  C485C343          les ax,word [di+0x43c3]
000010EC  8EC3              mov es,bx
000010EE  53                push bx
000010EF  86C3              xchg al,bl
000010F1  73DD              jnc 0x10d0
000010F3  88C3              mov bl,al
000010F5  43                inc bx
000010F6  8785C3C4          xchg ax,[di-0x3b3d]
000010FA  85C3              test bx,ax
000010FC  638CC353          arpl [si+0x53c3],cx
00001100  86C3              xchg al,bl
00001102  050488            add ax,0x8804
00001105  C3                ret
00001106  43                inc bx
00001107  8785C3C4          xchg ax,[di-0x3b3d]
0000110B  85C3              test bx,ax
0000110D  638CC353          arpl [si+0x53c3],cx
00001111  86C3              xchg al,bl
00001113  E043              loopne 0x1158
00001115  E043              loopne 0x115a
00001117  88C3              mov bl,al
00001119  43                inc bx
0000111A  8785C3C4          xchg ax,[di-0x3b3d]
0000111E  85C3              test bx,ax
00001120  638CC343          arpl [si+0x43c3],cx
00001124  DD95C343          fst qword [di+0x43c3]
00001128  85C3              test bx,ax
0000112A  E085              loopne 0x10b1
0000112C  C3                ret
0000112D  C485C363          les ax,word [di+0x63c3]
00001131  8CC3              mov bx,es
00001133  53                push bx
00001134  50                push ax
00001135  41                inc cx
00001136  50                push ax
00001137  61                popa
00001138  60                pusha
00001139  61                popa
0000113A  81C34385          add bx,0x8543
0000113E  C3                ret
0000113F  C485C3C4          les ax,word [di-0x3b3d]
00001143  85C3              test bx,ax
00001145  DD638B            frstor [bp+di-0x75]
00001148  C3                ret
00001149  DD4395            fld qword [bp+di-0x6b]
0000114C  C3                ret
0000114D  43                inc bx
0000114E  85C3              test bx,ax
00001150  C485C3C4          les ax,word [di-0x3b3d]
00001154  85C3              test bx,ax
00001156  738B              jnc 0x10e3
00001158  C3                ret
00001159  53                push bx
0000115A  95                xchg ax,bp
0000115B  C3                ret
0000115C  43                inc bx
0000115D  85C3              test bx,ax
0000115F  C4                db 0xc4
00001160  E053              loopne 0x11b5
00001162  E0C4              loopne 0x1128
00001164  DD85C363          fld qword [di+0x63c3]
00001168  8CC3              mov bx,es
0000116A  53                push bx
0000116B  86C3              xchg al,bl
0000116D  43                inc bx
0000116E  C501              lds ax,word [bx+di]
00001170  2073E0            and [bp+di-0x20],dh
00001173  53                push bx
00001174  DD53E0            fst qword [bp+di-0x20]
00001177  7306              jnc 0x117f
00001179  0485              add al,0x85
0000117B  C3                ret
0000117C  638CC353          arpl [si+0x53c3],cx
00001180  86C3              xchg al,bl
00001182  C4                db 0xc4
00001183  C5                db 0xc5
00001184  C44473            les ax,word [si+0x73]
00001187  DD0C              fisttp qword [si]
00001189  04C4              add al,0xc4
0000118B  011D              add [di],bx
0000118D  53                push bx
0000118E  DD85C3C4          fld qword [di-0x3b3d]
00001192  8FC3              pop bx
00001194  DD53E0            fst qword [bp+di-0x20]
00001197  43                inc bx
00001198  E043              loopne 0x11dd
0000119A  C5                db 0xc5
0000119B  C44413            les ax,word [si+0x13]
0000119E  0453              add al,0x53
000011A0  E053              loopne 0x11f5
000011A2  85C3              test bx,ax
000011A4  C48FC308          les cx,word [bx+0x8c3]
000011A8  04C5              add al,0xc5
000011AA  0504E0            add ax,0xe004
000011AD  C4                db 0xc4
000011AE  E00C              loopne 0x11bc
000011B0  04E0              add al,0xe0
000011B2  C485C3C4          les ax,word [di-0x3b3d]
000011B6  85C3              test bx,ax
000011B8  C485C353          les ax,word [di+0x53c3]
000011BC  86C3              xchg al,bl
000011BE  0B04              or ax,[si]
000011C0  8FC3              pop bx
000011C2  53                push bx
000011C3  8385C3C485        add word [di-0x3b3d],0xffffffffffffff85
000011C8  C3                ret
000011C9  C485C353          les ax,word [di+0x53c3]
000011CD  86C3              xchg al,bl
000011CF  0B04              or ax,[si]
000011D1  8FC3              pop bx
000011D3  C401              les ax,word [bx+di]
000011D5  1D8385            sbb ax,0x8583
000011D8  C3                ret
000011D9  DD85C3C4          fld qword [di-0x3b3d]
000011DD  85C3              test bx,ax
000011DF  C4                db 0xc4
000011E0  E0C4              loopne 0x11a6
000011E2  86C3              xchg al,bl
000011E4  0B04              or ax,[si]
000011E6  8FC3              pop bx
000011E8  53                push bx
000011E9  8385C3C485        add word [di-0x3b3d],0xffffffffffffff85
000011EE  C3                ret
000011EF  C48FC353          les cx,word [bx+0x53c3]
000011F3  E0C4              loopne 0x11b9
000011F5  E063              loopne 0x125a
000011F7  E0C4              loopne 0x11bd
000011F9  C1C240            rol dx,byte 0x40
000011FC  41                inc cx
000011FD  40                inc ax
000011FE  87C3              xchg ax,bx
00001200  53                push bx
00001201  8385C3C485        add word [di-0x3b3d],0xffffffffffffff85
00001206  C3                ret
00001207  C44051            les ax,word [bx+si+0x51]
0000120A  C1514041          rcl word [bx+di+0x40],byte 0x41
0000120E  C181C34399        rol word [bx+di+0x43c3],byte 0x99
00001213  C3                ret
00001214  53                push bx
00001215  8385C3C485        add word [di-0x3b3d],0xffffffffffffff85
0000121A  C3                ret
0000121B  DD8FC343          fisttp qword [bx+0x43c3]
0000121F  8FC3              pop bx
00001221  C488C353          les cx,word [bx+si+0x53c3]
00001225  8385C3DD85        add word [di-0x223d],0xffffffffffffff85
0000122A  C3                ret
0000122B  C485C3E0          les ax,word [di-0x1f3d]
0000122F  73E0              jnc 0x1211
00001231  73C2              jnc 0x11f5
00001233  40                inc ax
00001234  41                inc cx
00001235  40                inc ax
00001236  41                inc cx
00001237  40                inc ax
00001238  C24081            ret word 0x8140
0000123B  C3                ret
0000123C  C488C343          les cx,word [bx+si+0x43c3]
00001240  DD8385C3          fld qword [bp+di-0x3c7b]
00001244  C485C3C4          les ax,word [di-0x3b3d]
00001248  85C3              test bx,ax
0000124A  0B04              or ax,[si]
0000124C  99                cwd
0000124D  C3                ret
0000124E  53                push bx
0000124F  8385C3C485        add word [di-0x3b3d],0xffffffffffffff85
00001254  C3                ret
00001255  C485C309          les ax,word [di+0x9c3]
00001259  04DD              add al,0xdd
0000125B  C485C343          les ax,word [di+0x43c3]
0000125F  54                push sp
00001260  8EC3              mov es,bx
00001262  53                push bx
00001263  8393C343DD        adc word [bp+di+0x43c3],0xffffffffffffffdd
00001268  0804              or [si],al
0000126A  85C3              test bx,ax
0000126C  C4                db 0xc4
0000126D  C5                db 0xc5
0000126E  C4                db 0xc4
0000126F  C5                db 0xc5
00001270  C48EC353          les cx,word [bp+0x53c3]
00001274  83C105            add cx,0x5
00001277  024041            add al,[bx+si+0x41]
0000127A  C1416081          rol word [bx+di+0x60],byte 0x81
0000127E  C3                ret
0000127F  05048B            add ax,0x8b04
00001282  C3                ret
00001283  C5                db 0xc5
00001284  C4                db 0xc4
00001285  C5438E            lds ax,word [bp+di-0x72]
00001288  C3                ret
00001289  53                push bx
0000128A  C74093C305        mov word [bx+si-0x6d],0x5c3
0000128F  0470              add al,0x70
00001291  41                inc cx
00001292  50                push ax
00001293  81C373C1          add bx,0xc173
00001297  C2C141            ret word 0x41c1
0000129A  40                inc ax
0000129B  87C3              xchg ax,bx
0000129D  43                inc bx
0000129E  DD8384CB          fld qword [bp+di-0x347c]
000012A2  81CB8CC3          or bx,0xc38c
000012A6  05048B            add ax,0x8b04
000012A9  C3                ret
000012AA  63DD              arpl bp,bx
000012AC  8EC3              mov es,bx
000012AE  53                push bx
000012AF  8383C3CACB        add word [bp+di-0x353d],0xffffffffffffffcb
000012B4  CACB8B            retf word 0x8bcb
000012B7  C3                ret
000012B8  43                inc bx
000012B9  DD5385            fst qword [bp+di-0x7b]
000012BC  C3                ret
000012BD  0A04              or al,[si]
000012BF  84C3              test bl,al
000012C1  C488C353          les cx,word [bx+si+0x53c3]
000012C5  8383C4C9C8        add word [bp+di-0x363c],0xffffffffffffffc8
000012CA  49                dec cx
000012CB  4A                dec dx
000012CC  89C3              mov bx,ax
000012CE  050485            add ax,0x8504
000012D1  C3                ret
000012D2  0A04              or al,[si]
000012D4  84C3              test bl,al
000012D6  C488C353          les cx,word [bx+si+0x53c3]
000012DA  8383C4C858        add word [bp+di-0x373c],0x58
000012DF  CA4A88            retf word 0x884a
000012E2  C3                ret
000012E3  050485            add ax,0x8504
000012E6  C3                ret
000012E7  0A04              or al,[si]
000012E9  84C3              test bl,al
000012EB  C488C373          les cx,word [bx+si+0x73c3]
000012EF  810120C4          add word [bx+di],0xc420
000012F3  46                inc si
000012F4  68CACB            push word 0xcbca
000012F7  88C3              mov bl,al
000012F9  050495            add ax,0x9504
000012FC  C3                ret
000012FD  C488C305          les cx,word [bx+si+0x5c3]
00001301  0453              add al,0x53
00001303  46                inc si
00001304  78CA              js 0x12d0
00001306  CB                retf
00001307  87C3              xchg ax,bx
00001309  DD7395            fnsave [bp+di-0x6b]
0000130C  C3                ret
0000130D  7384              jnc 0x1293
0000130F  C3                ret
00001310  73DD              jnc 0x12ef
00001312  C4                db 0xc4
00001313  C7                db 0xc7
00001314  C8C77849          enter word 0x78c7,byte 0x49
00001318  CB                retf
00001319  87C3              xchg ax,bx
0000131B  050497            add ax,0x9704
0000131E  C3                ret
0000131F  53                push bx
00001320  84C3              test bl,al
00001322  0504C4            add ax,0xc404
00001325  C70609CACB88      mov word [0xca09],0x88cb
0000132B  C3                ret
0000132C  050497            add ax,0x9704
0000132F  C3                ret
00001330  53                push bx
00001331  84C3              test bl,al
00001333  C4                db 0xc4
00001334  DD63C4            frstor [bp+di-0x3c]
00001337  C7                db 0xc7
00001338  C9                leave
00001339  C7                db 0xc7
0000133A  48                dec ax
0000133B  C7                db 0xc7
0000133C  48                dec ax
0000133D  CACB88            retf word 0x88cb
00001340  C3                ret
00001341  050497            add ax,0x9704
00001344  C3                ret
00001345  E043              loopne 0x138a
00001347  84C3              test bl,al
00001349  C4                db 0xc4
0000134A  DD6363            frstor [bp+di+0x63]
0000134D  48                dec ax
0000134E  C7                db 0xc7
0000134F  68CB87            push word 0x87cb
00001352  C3                ret
00001353  050491            add ax,0x9104
00001356  C3                ret
00001357  C48CC305          les cx,word [si+0x5c3]
0000135B  0473              add al,0x73
0000135D  DD4368            fld qword [bp+di+0x68]
00001360  CACB85            retf word 0x85cb
00001363  C3                ret
00001364  050491            add ax,0x9104
00001367  C3                ret
00001368  C4                db 0xc4
00001369  C1414061          rol word [bx+di+0x40],byte 0x61
0000136D  40                inc ax
0000136E  81C30504          add bx,0x405
00001372  07                pop es
00001373  04C7              add al,0xc7
00001375  58                pop ax
00001376  49                dec cx
00001377  CB                retf
00001378  84C3              test bl,al
0000137A  050491            add ax,0x9104
0000137D  C3                ret
0000137E  DD8CC353          fisttp qword [si+0x53c3]
00001382  011D              add [di],bx
00001384  C43C              les di,word [si]
00001386  0010              add [bx+si],dl
00001388  3F                aas
00001389  0010              add [bx+si],dl
0000138B  3F                aas
0000138C  0027              add [bx],ah
0000138E  42                inc dx
0000138F  003A              add [bp+si],bh
00001391  61                popa
00001392  00067600          add [0x76],al
00001396  3479              xor al,0x79
00001398  0024              add [si],ah
0000139A  A90017            test ax,0x1700
0000139D  B700              mov bh,0x0
0000139F  2ECC              cs int3
000013A1  0036FFFF          add [0xffff],dh
000013A5  FF                db 0xff
000013A6  FF03              inc word [bp+di]
000013A8  80AAF8000C        sub byte [bp+si+0xf8],0xc
000013AD  000C              add [si],cl
000013AF  40                inc ax
000013B0  8A07              mov al,[bx]
000013B2  0013              add [bp+di],dl
000013B4  000D              add [di],cl
000013B6  40                inc ax
000013B7  B606              mov dh,0x6
000013B9  0014              add [si],dl
000013BB  0011              add [bx+di],dl
000013BD  40                inc ax
000013BE  A7                cmpsw
000013BF  0B00              or ax,[bx+si]
000013C1  1400              adc al,0x0
000013C3  1580BE            adc ax,0xbe80
000013C6  0F0019            ltr word [bx+di]
000013C9  0032              add [bp+si],dh
000013CB  40                inc ax
000013CC  B42E              mov ah,0x2e
000013CE  003C              add [si],bh
000013D0  004F40            add [bx+0x40],cl
000013D3  99                cwd
000013D4  45                inc bp
000013D5  005C00            add [si+0x0],bl
000013D8  57                push di
000013D9  40                inc ax
000013DA  91                xchg ax,cx
000013DB  4D                dec bp
000013DC  006300            add [bp+di+0x0],ah
000013DF  6D                insw
000013E0  40                inc ax
000013E1  9D                popf
000013E2  69007400          imul ax,[bx+si],0x74
000013E6  90                nop
000013E7  40                inc ax
000013E8  188B0097          sbb [bp+di-0x6900],cl
000013EC  009A40B3          add [bp+si-0x4cc0],bl
000013F0  93                xchg ax,bx
000013F1  00A1009F          add [bx+di-0x6100],ah
000013F5  802B97            sub byte [bp+di],0x97
000013F8  00A700C7          add [bx-0x3900],ah
000013FC  40                inc ax
000013FD  27                daa
000013FE  BD00D0            mov bp,0xd000
00001401  00C8              add al,cl
00001403  8006C100D3        add byte [0xc1],0xd3
00001408  00DE              add dh,bl
0000140A  40                inc ax
0000140B  94                xchg ax,sp
0000140C  D000              rol byte [bx+si],0x0
0000140E  E500              in ax,byte 0x0
00001410  F280B4E800F6      repne xor byte [si+0xe8],0xf6
00001416  00FD              add ch,bh
00001418  80A5F80003        and byte [di+0xf8],0x3
0000141D  00FF              add bh,bh
0000141F  FF0C              dec word [si]
00001421  001B              add [bp+di],bl
00001423  810E0C001B00      or word [0xc],0x1b
00001429  FF                db 0xff
0000142A  FF                db 0xff
0000142B  FF1E001C          call word far [0x1c00]
0000142F  840E1E00          test [0x1e],cl
00001433  1C00              sbb al,0x0
00001435  FF                db 0xff
00001436  FF                db 0xff
00001437  FF1F              call word far [bx]
00001439  0005              add [di],al
0000143B  80060400FF        add byte [0x4],0xff
00001440  00FF              add bh,bh
00001442  FF                db 0xff
00001443  FF5A00            call word far [bp+si+0x0]
00001446  25840E            and ax,0xe84
00001449  5A                pop dx
0000144A  0025              add [di],ah
0000144C  00FF              add bh,bh
0000144E  FF                db 0xff
0000144F  FF800029          inc word [bx+si+0x2900]
00001453  810FB000          or word [bx],0xb0
00001457  3900              cmp [bx+si],ax
00001459  FF                db 0xff
0000145A  FF                db 0xff
0000145B  FF8F003E          dec word [bx+0x3e00]
0000145F  C40F              les cx,word [bx]
00001461  B100              mov cl,0x0
00001463  1100              adc [bx+si],ax
00001465  FF                db 0xff
00001466  FF                db 0xff
00001467  FF92000A          call word near [bp+si+0xa00]
0000146B  C20FD5            ret word 0xd50f
0000146E  0032              add [bp+si],dh
00001470  00FF              add bh,bh
00001472  FF                db 0xff
00001473  FF96001E          call word near [bp+0x1e00]
00001477  82                db 0x82
00001478  0E                push cs
00001479  96                xchg ax,si
0000147A  001E00FF          add [0xff00],bl
0000147E  FF                db 0xff
0000147F  FFA9001E          jmp word far [bx+di+0x1e00]
00001483  82                db 0x82
00001484  0E                push cs
00001485  A9001E            test ax,0x1e00
00001488  00FF              add bh,bh
0000148A  FF                db 0xff
0000148B  FFB00039          push word [bx+si+0x3900]
0000148F  C10F80            ror word [bx],byte 0x80
00001492  0029              add [bx+di],ch
00001494  00FF              add bh,bh
00001496  FF                db 0xff
00001497  FFB10011          push word [bx+di+0x1100]
0000149B  840F              test [bx],cl
0000149D  8F00              pop word [bx+si]
0000149F  3E00FF            ds add bh,bh
000014A2  FF                db 0xff
000014A3  FF                db 0xff
000014A4  BC001E            mov sp,0x1e00
000014A7  810EBC001E00      or word [0xbc],0x1e
000014AD  FF                db 0xff
000014AE  FF                db 0xff
000014AF  FF                db 0xff
000014B0  D500              aad byte 0x0
000014B2  32820F92          xor al,[bp+si-0x6df1]
000014B6  000A              add [bp+si],cl
000014B8  00FF              add bh,bh
000014BA  FF                db 0xff
000014BB  FF                db 0xff
000014BC  DD00              fld qword [bx+si]
000014BE  01820E83          add [bp+si-0x7cf2],ax
000014C2  001E00FF          add [0xff00],bl
000014C6  FF                db 0xff
000014C7  FF                db 0xff
000014C8  F9                stc
000014C9  000F              add [bx],cl
000014CB  840EF900          test [0xf9],cl
000014CF  0F                db 0x0f
000014D0  00FF              add bh,bh
000014D2  FF                db 0xff
000014D3  FF                db 0xff
000014D4  FF                db 0xff
000014D5  FF2B              jmp word far [bp+di]
000014D7  0002              add [bp+si],al
000014D9  33D5              xor dx,bp
000014DB  0000              add [bx+si],al
000014DD  FF                db 0xff
000014DE  FF2B              jmp word far [bp+di]
000014E0  0001              add [bx+di],al
000014E2  3AD5              cmp dl,ch
000014E4  00FF              add bh,bh
000014E6  45                inc bp
000014E7  D5FF              aad byte 0xff
000014E9  FF                db 0xff
000014EA  FF                db 0xff
000014EB  FF2C              jmp word far [si]
000014ED  0080BAD5          add [bx+si-0x2a46],al
000014F1  00FF              add bh,bh
000014F3  C5                db 0xc5
000014F4  D5FF              aad byte 0xff
000014F6  FF                db 0xff
000014F7  FF                db 0xff
000014F8  FF2C              jmp word far [si]
000014FA  004033            add [bx+si+0x33],al
000014FD  D6                salc
000014FE  0000              add [bx+si],al
00001500  FF                db 0xff
00001501  FF2C              jmp word far [si]
00001503  0020              add [bx+si],ah
00001505  03D7              add dx,di
00001507  0000              add [bx+si],al
00001509  FF                db 0xff
0000150A  FF2C              jmp word far [si]
0000150C  0010              add [bx+si],dl
0000150E  C3                ret
0000150F  D7                xlatb
00001510  0000              add [bx+si],al
00001512  FF                db 0xff
00001513  FF                db 0xff
00001514  FF                db 0xff
00001515  FF18              call word far [bx+si]
00001517  AF                scasw
00001518  000F              add [bx],cl
0000151A  43                inc bx
0000151B  61                popa
0000151C  7665              jna 0x1583
0000151E  726E              jc 0x158e
00001520  206F66            and [bx+0x66],ch
00001523  20506C            and [bx+si+0x6c],dl
00001526  61                popa
00001527  7461              jz 0x158a
00001529  1300              adc ax,[bx+si]
0000152B  050A0A            add ax,0xa0a
0000152E  0000              add [bx+si],al
00001530  37                aaa
00001531  FF                db 0xff
00001532  D000              rol byte [bx+si],0x0
00001534  0020              add [bx+si],ah
00001536  0019              add [bx+di],bl
00001538  002B              add [bp+di],ch
0000153A  0002              add [bp+si],al
0000153C  0000              add [bx+si],al
0000153E  06                push es
0000153F  0016FF73          add [0x73ff],dl
00001543  0004              add [si],al
00001545  2000              and [bx+si],al
00001547  0000              add [bx+si],al
00001549  2B00              sub ax,[bx+si]
0000154B  0100              add [bx+si],ax
0000154D  000B              add [bp+di],cl
0000154F  0014              add [si],dl
00001551  FF00              inc word [bx+si]
00001553  0000              add [bx+si],al
00001555  1000              adc [bx+si],al
00001557  0000              add [bx+si],al
00001559  0B00              or ax,[bx+si]
0000155B  1400              adc al,0x0
0000155D  000B              add [bp+di],cl
0000155F  0016FF01          add [0x1ff],dl
00001563  0000              add [bx+si],al
00001565  1000              adc [bx+si],al
00001567  0000              add [bx+si],al
00001569  0B00              or ax,[bx+si]
0000156B  16                push ss
0000156C  0100              add [bx+si],ax
0000156E  1D0011            sbb ax,0x1100
00001571  FF04              inc word [si]
00001573  0000              add [bx+si],al
00001575  0000              add [bx+si],al
00001577  0000              add [bx+si],al
00001579  1D0011            sbb ax,0x1100
0000157C  0400              add al,0x0
0000157E  2300              and ax,[bx+si]
00001580  0E                push cs
00001581  FF03              inc word [bp+di]
00001583  0000              add [bx+si],al
00001585  0000              add [bx+si],al
00001587  0000              add [bx+si],al
00001589  2300              and ax,[bx+si]
0000158B  0E                push cs
0000158C  0300              add ax,[bx+si]
0000158E  2400              and al,0x0
00001590  16                push ss
00001591  FF03              inc word [bp+di]
00001593  0000              add [bx+si],al
00001595  0000              add [bx+si],al
00001597  0000              add [bx+si],al
00001599  2400              and al,0x0
0000159B  16                push ss
0000159C  0300              add ax,[bx+si]
0000159E  260023            add [es:bp+di],ah
000015A1  FF04              inc word [si]
000015A3  0000              add [bx+si],al
000015A5  0000              add [bx+si],al
000015A7  0000              add [bx+si],al
000015A9  260023            add [es:bp+di],ah
000015AC  0400              add al,0x0
000015AE  2C00              sub al,0x0
000015B0  11FF              adc di,di
000015B2  0400              add al,0x0
000015B4  0000              add [bx+si],al
000015B6  0000              add [bx+si],al
000015B8  002C              add [si],ch
000015BA  0011              add [bx+di],dl
000015BC  0400              add al,0x0
000015BE  3C00              cmp al,0x0
000015C0  02FF              add bh,bh
000015C2  7300              jnc 0x15c4
000015C4  0020              add [bx+si],ah
000015C6  0018              add [bx+si],bl
000015C8  002C              add [si],ch
000015CA  00800000          add [bx+si+0x0],al
000015CE  44                inc sp
000015CF  001EFF02          add [0x2ff],bl
000015D3  0000              add [bx+si],al
000015D5  0000              add [bx+si],al
000015D7  0000              add [bx+si],al
000015D9  44                inc sp
000015DA  001E0200          add [0x2],bl
000015DE  4C                dec sp
000015DF  0038              add [bx+si],bh
000015E1  FF02              inc word [bp+si]
000015E3  0000              add [bx+si],al
000015E5  0000              add [bx+si],al
000015E7  0000              add [bx+si],al
000015E9  4C                dec sp
000015EA  0038              add [bx+si],bh
000015EC  0200              add al,[bx+si]
000015EE  4D                dec bp
000015EF  0016FFD0          add [0xd0ff],dl
000015F3  0000              add [bx+si],al
000015F5  0000              add [bx+si],al
000015F7  0000              add [bx+si],al
000015F9  FF                db 0xff
000015FA  FF00              inc word [bx+si]
000015FC  0000              add [bx+si],al
000015FE  4E                dec si
000015FF  003C              add [si],bh
00001601  FF04              inc word [si]
00001603  0000              add [bx+si],al
00001605  0000              add [bx+si],al
00001607  0000              add [bx+si],al
00001609  4E                dec si
0000160A  003C              add [si],bh
0000160C  0400              add al,0x0
0000160E  59                pop cx
0000160F  0016FFD0          add [0xd0ff],dl
00001613  0000              add [bx+si],al
00001615  0000              add [bx+si],al
00001617  0000              add [bx+si],al
00001619  FF                db 0xff
0000161A  FF00              inc word [bx+si]
0000161C  0000              add [bx+si],al
0000161E  58                pop ax
0000161F  001EFF03          add [0x3ff],bl
00001623  0000              add [bx+si],al
00001625  0000              add [bx+si],al
00001627  0000              add [bx+si],al
00001629  58                pop ax
0000162A  001E0300          add [0x3],bl
0000162E  5F                pop di
0000162F  001EFFD0          add [0xd0ff],bl
00001633  0000              add [bx+si],al
00001635  2000              and [bx+si],al
00001637  1900              sbb [bx+si],ax
00001639  2C00              sub al,0x0
0000163B  40                inc ax
0000163C  0000              add [bx+si],al
0000163E  5F                pop di
0000163F  0035              add [di],dh
00001641  FF03              inc word [bp+di]
00001643  0000              add [bx+si],al
00001645  0000              add [bx+si],al
00001647  0000              add [bx+si],al
00001649  5F                pop di
0000164A  0035              add [di],dh
0000164C  0300              add ax,[bx+si]
0000164E  6C                insb
0000164F  0026FF04          add [0x4ff],ah
00001653  0000              add [bx+si],al
00001655  0000              add [bx+si],al
00001657  0000              add [bx+si],al
00001659  6C                insb
0000165A  00260400          add [0x4],ah
0000165E  6E                outsb
0000165F  000C              add [si],cl
00001661  FF02              inc word [bp+si]
00001663  0000              add [bx+si],al
00001665  0000              add [bx+si],al
00001667  0000              add [bx+si],al
00001669  6E                outsb
0000166A  000C              add [si],cl
0000166C  0200              add al,[bx+si]
0000166E  7100              jno 0x1670
00001670  21FF              and di,di
00001672  0300              add ax,[bx+si]
00001674  0000              add [bx+si],al
00001676  0000              add [bx+si],al
00001678  007100            add [bx+di+0x0],dh
0000167B  2103              and [bp+di],ax
0000167D  007600            add [bp+0x0],dh
00001680  02FF              add bh,bh
00001682  0300              add ax,[bx+si]
00001684  0000              add [bx+si],al
00001686  0000              add [bx+si],al
00001688  007600            add [bp+0x0],dh
0000168B  0203              add al,[bp+di]
0000168D  00820026          add [bp+si+0x2600],al
00001691  FF04              inc word [si]
00001693  0000              add [bx+si],al
00001695  0000              add [bx+si],al
00001697  0000              add [bx+si],al
00001699  82                db 0x82
0000169A  00260400          add [0x4],ah
0000169E  8400              test [bx+si],al
000016A0  11FF              adc di,di
000016A2  0400              add al,0x0
000016A4  0000              add [bx+si],al
000016A6  0000              add [bx+si],al
000016A8  00840011          add [si+0x1100],al
000016AC  0400              add al,0x0
000016AE  8400              test [bx+si],al
000016B0  22FF              and bh,bh
000016B2  0200              add al,[bx+si]
000016B4  0000              add [bx+si],al
000016B6  0000              add [bx+si],al
000016B8  00840022          add [si+0x2200],al
000016BC  0200              add al,[bx+si]
000016BE  8600              xchg al,[bx+si]
000016C0  00FF              add bh,bh
000016C2  0000              add [bx+si],al
000016C4  0010              add [bx+si],dl
000016C6  0000              add [bx+si],al
000016C8  00860000          add [bp+0x0],al
000016CC  0000              add [bx+si],al
000016CE  8600              xchg al,[bx+si]
000016D0  02FF              add bh,bh
000016D2  0100              add [bx+si],ax
000016D4  0010              add [bx+si],dl
000016D6  0000              add [bx+si],al
000016D8  00860002          add [bp+0x200],al
000016DC  0100              add [bx+si],ax
000016DE  8600              xchg al,[bx+si]
000016E0  0CFF              or al,0xff
000016E2  0300              add ax,[bx+si]
000016E4  0000              add [bx+si],al
000016E6  0000              add [bx+si],al
000016E8  0086000C          add [bp+0xc00],al
000016EC  0300              add ax,[bx+si]
000016EE  8600              xchg al,[bx+si]
000016F0  33FF              xor di,di
000016F2  0200              add al,[bx+si]
000016F4  0000              add [bx+si],al
000016F6  0000              add [bx+si],al
000016F8  00860033          add [bp+0x3300],al
000016FC  0200              add al,[bx+si]
000016FE  8800              mov [bx+si],al
00001700  0CFF              or al,0xff
00001702  D000              rol byte [bx+si],0x0
00001704  0020              add [bx+si],ah
00001706  0019              add [bx+di],bl
00001708  002C              add [si],ch
0000170A  0020              add [bx+si],ah
0000170C  0000              add [bx+si],al
0000170E  8B00              mov ax,[bx+si]
00001710  0CFF              or al,0xff
00001712  0300              add ax,[bx+si]
00001714  0000              add [bx+si],al
00001716  0000              add [bx+si],al
00001718  008B000C          add [bp+di+0xc00],cl
0000171C  0300              add ax,[bx+si]
0000171E  8D00              lea ax,[bx+si]
00001720  1E                push ds
00001721  FF02              inc word [bp+si]
00001723  0000              add [bx+si],al
00001725  0000              add [bx+si],al
00001727  0000              add [bx+si],al
00001729  8D00              lea ax,[bx+si]
0000172B  1E                push ds
0000172C  0200              add al,[bx+si]
0000172E  90                nop
0000172F  003A              add [bp+si],bh
00001731  FF04              inc word [si]
00001733  0000              add [bx+si],al
00001735  0000              add [bx+si],al
00001737  0000              add [bx+si],al
00001739  90                nop
0000173A  003A              add [bp+si],bh
0000173C  0400              add al,0x0
0000173E  9A0031FFD0        call word 0xd0ff:word 0x3100
00001743  0000              add [bx+si],al
00001745  0000              add [bx+si],al
00001747  0000              add [bx+si],al
00001749  FF                db 0xff
0000174A  FF00              inc word [bx+si]
0000174C  0000              add [bx+si],al
0000174E  9B000F            wait add [bx],cl
00001751  FF02              inc word [bp+si]
00001753  0000              add [bx+si],al
00001755  0000              add [bx+si],al
00001757  0000              add [bx+si],al
00001759  9B000F            wait add [bx],cl
0000175C  0200              add al,[bx+si]
0000175E  9C                pushf
0000175F  0001              add [bx+di],al
00001761  FF00              inc word [bx+si]
00001763  0000              add [bx+si],al
00001765  1000              adc [bx+si],al
00001767  0000              add [bx+si],al
00001769  9C                pushf
0000176A  0001              add [bx+di],al
0000176C  0000              add [bx+si],al
0000176E  9C                pushf
0000176F  0003              add [bp+di],al
00001771  FF01              inc word [bx+di]
00001773  0000              add [bx+si],al
00001775  1000              adc [bx+si],al
00001777  0000              add [bx+si],al
00001779  9C                pushf
0000177A  0003              add [bp+di],al
0000177C  0100              add [bx+si],ax
0000177E  B000              mov al,0x0
00001780  1E                push ds
00001781  FF00              inc word [bx+si]
00001783  0000              add [bx+si],al
00001785  1000              adc [bx+si],al
00001787  0000              add [bx+si],al
00001789  B000              mov al,0x0
0000178B  1E                push ds
0000178C  0000              add [bx+si],al
0000178E  B000              mov al,0x0
00001790  20FF              and bh,bh
00001792  0100              add [bx+si],ax
00001794  0010              add [bx+si],dl
00001796  0000              add [bx+si],al
00001798  00B00020          add [bx+si+0x2000],dh
0000179C  0100              add [bx+si],ax
0000179E  B000              mov al,0x0
000017A0  31FF              xor di,di
000017A2  0300              add ax,[bx+si]
000017A4  0000              add [bx+si],al
000017A6  0000              add [bx+si],al
000017A8  00B00031          add [bx+si+0x3100],dh
000017AC  0300              add ax,[bx+si]
000017AE  B100              mov cl,0x0
000017B0  06                push es
000017B1  FF04              inc word [si]
000017B3  0000              add [bx+si],al
000017B5  0000              add [bx+si],al
000017B7  0000              add [bx+si],al
000017B9  B100              mov cl,0x0
000017BB  06                push es
000017BC  0400              add al,0x0
000017BE  B200              mov dl,0x0
000017C0  27                daa
000017C1  FF                db 0xff
000017C2  D000              rol byte [bx+si],0x0
000017C4  0020              add [bx+si],ah
000017C6  0018              add [bx+si],bl
000017C8  002C              add [si],ch
000017CA  0010              add [bx+si],dl
000017CC  0000              add [bx+si],al
000017CE  BD0017            mov bp,0x1700
000017D1  FF04              inc word [si]
000017D3  0000              add [bx+si],al
000017D5  0000              add [bx+si],al
000017D7  0000              add [bx+si],al
000017D9  BD0017            mov bp,0x1700
000017DC  0400              add al,0x0
000017DE  C0002C            rol byte [bx+si],byte 0x2c
000017E1  FF02              inc word [bp+si]
000017E3  0000              add [bx+si],al
000017E5  0000              add [bx+si],al
000017E7  0000              add [bx+si],al
000017E9  C0002C            rol byte [bx+si],byte 0x2c
000017EC  0200              add al,[bx+si]
000017EE  C400              les ax,word [bx+si]
000017F0  09FF              or di,di
000017F2  0300              add ax,[bx+si]
000017F4  0000              add [bx+si],al
000017F6  0000              add [bx+si],al
000017F8  00C4              add ah,al
000017FA  0009              add [bx+di],cl
000017FC  0300              add ax,[bx+si]
000017FE  C500              lds ax,word [bx+si]
00001800  0CFF              or al,0xff
00001802  0400              add al,0x0
00001804  0000              add [bx+si],al
00001806  0000              add [bx+si],al
00001808  00C5              add ch,al
0000180A  000C              add [si],cl
0000180C  0400              add al,0x0
0000180E  CD00              int byte 0x0
00001810  1CFF              sbb al,0xff
00001812  D000              rol byte [bx+si],0x0
00001814  0000              add [bx+si],al
00001816  0000              add [bx+si],al
00001818  00FF              add bh,bh
0000181A  FF00              inc word [bx+si]
0000181C  0000              add [bx+si],al
0000181E  D000              rol byte [bx+si],0x0
00001820  0FFFD0            ud0 dx,ax
00001823  0000              add [bx+si],al
00001825  0000              add [bx+si],al
00001827  0000              add [bx+si],al
00001829  FF                db 0xff
0000182A  FF00              inc word [bx+si]
0000182C  0000              add [bx+si],al
0000182E  D000              rol byte [bx+si],0x0
00001830  11FF              adc di,di
00001832  D000              rol byte [bx+si],0x0
00001834  0000              add [bx+si],al
00001836  0000              add [bx+si],al
00001838  00FF              add bh,bh
0000183A  FF00              inc word [bx+si]
0000183C  0000              add [bx+si],al
0000183E  D400              aam byte 0x0
00001840  3CFF              cmp al,0xff
00001842  0300              add ax,[bx+si]
00001844  0000              add [bx+si],al
00001846  0000              add [bx+si],al
00001848  00D4              add ah,dl
0000184A  003C              add [si],bh
0000184C  0300              add ax,[bx+si]
0000184E  D6                salc
0000184F  0025              add [di],ah
00001851  FF02              inc word [bp+si]
00001853  0000              add [bx+si],al
00001855  0000              add [bx+si],al
00001857  0000              add [bx+si],al
00001859  D6                salc
0000185A  0025              add [di],ah
0000185C  0200              add al,[bx+si]
0000185E  D800              fadd dword [bx+si]
00001860  0FFFD0            ud0 dx,ax
00001863  0000              add [bx+si],al
00001865  0000              add [bx+si],al
00001867  0000              add [bx+si],al
00001869  FF                db 0xff
0000186A  FF00              inc word [bx+si]
0000186C  0000              add [bx+si],al
0000186E  D800              fadd dword [bx+si]
00001870  11FF              adc di,di
00001872  D000              rol byte [bx+si],0x0
00001874  0000              add [bx+si],al
00001876  0000              add [bx+si],al
00001878  00FF              add bh,bh
0000187A  FF00              inc word [bx+si]
0000187C  0000              add [bx+si],al
0000187E  DE00              fiadd word [bx+si]
00001880  0AFF              or bh,bh
00001882  0200              add al,[bx+si]
00001884  0000              add [bx+si],al
00001886  0000              add [bx+si],al
00001888  00DE              add dh,bl
0000188A  000A              add [bp+si],cl
0000188C  0200              add al,[bx+si]
0000188E  DE00              fiadd word [bx+si]
00001890  11FF              adc di,di
00001892  D000              rol byte [bx+si],0x0
00001894  0000              add [bx+si],al
00001896  0000              add [bx+si],al
00001898  00FF              add bh,bh
0000189A  FF00              inc word [bx+si]
0000189C  0000              add [bx+si],al
0000189E  DE00              fiadd word [bx+si]
000018A0  1BFF              sbb di,di
000018A2  0300              add ax,[bx+si]
000018A4  0000              add [bx+si],al
000018A6  0000              add [bx+si],al
000018A8  00DE              add dh,bl
000018AA  001B              add [bp+di],bl
000018AC  0300              add ax,[bx+si]
000018AE  E600              out byte 0x0,al
000018B0  1BFF              sbb di,di
000018B2  0200              add al,[bx+si]
000018B4  0000              add [bx+si],al
000018B6  0000              add [bx+si],al
000018B8  00E6              add dh,ah
000018BA  001B              add [bp+di],bl
000018BC  0200              add al,[bx+si]
000018BE  E80035            call 0x4dc1
000018C1  FF00              inc word [bx+si]
000018C3  0000              add [bx+si],al
000018C5  1000              adc [bx+si],al
000018C7  0000              add [bx+si],al
000018C9  E80035            call 0x4dcc
000018CC  0000              add [bx+si],al
000018CE  E80037            call 0x4fd1
000018D1  FF01              inc word [bx+di]
000018D3  0000              add [bx+si],al
000018D5  1000              adc [bx+si],al
000018D7  0000              add [bx+si],al
000018D9  E80037            call 0x4fdc
000018DC  0100              add [bx+si],ax
000018DE  F4                hlt
000018DF  0037              add [bx],dh
000018E1  FF02              inc word [bp+si]
000018E3  0000              add [bx+si],al
000018E5  0000              add [bx+si],al
000018E7  0000              add [bx+si],al
000018E9  F4                hlt
000018EA  0037              add [bx],dh
000018EC  0200              add al,[bx+si]
000018EE  FF                db 0xff
000018EF  FF                db 0xff
