00000000  FE02              inc byte [bp+si]
00000002  0000              add [bx+si],al
00000004  D0C2              rol dl,0x0
00000006  49                dec cx
00000007  006FC2            add [bx-0x3e],ch
0000000A  71C2              jno 0xffce
0000000C  73C2              jnc 0xffd0
0000000E  8D                db 0x8d
0000000F  C28FC2            ret word 0xc28f
00000012  BCC2FC            mov sp,0xfcc2
00000015  C206FF            ret word 0xff06
00000018  FF00              inc word [bx+si]
0000001A  0C00              or al,0x0
0000001C  006FC2            add [bx-0x3e],ch
0000001F  83C9C8            or cx,0xffffffffffffffc8
00000022  53                push bx
00000023  C553C5            lds dx,word [bp+di-0x3b]
00000026  53                push bx
00000027  4B                dec bx
00000028  4C                dec sp
00000029  C9                leave
0000002A  AB                stosw
0000002B  83C9C8            or cx,0xffffffffffffffc8
0000002E  43                inc bx
0000002F  C553C5            lds dx,word [bp+di-0x3b]
00000032  53                push bx
00000033  C7                db 0xc7
00000034  4C                dec sp
00000035  8148AB83C8        or word [bx+si-0x55],0xc883
0000003A  43                inc bx
0000003B  C553C5            lds dx,word [bp+di-0x3b]
0000003E  E043              loopne 0x83
00000040  C7                db 0xc7
00000041  5B                pop bx
00000042  CACDC9            retf word 0xc9cd
00000045  AB                stosw
00000046  83C8C4            or ax,0xffffffffffffffc4
00000049  C553C5            lds dx,word [bp+di-0x3b]
0000004C  53                push bx
0000004D  C7                db 0xc7
0000004E  CC                int3
0000004F  CDCC              int byte 0xcc
00000051  CB                retf
00000052  CA48AB            retf word 0xab48
00000055  83C8E0            or ax,0xffffffffffffffe0
00000058  43                inc bx
00000059  C505              lds ax,word [di]
0000005B  044B              add al,0x4b
0000005D  49                dec cx
0000005E  58                pop ax
0000005F  AB                stosw
00000060  8353C5E0          adc word [bp+di-0x3b],0xffffffffffffffe0
00000064  73C7              jnc 0x2d
00000066  CC                int3
00000067  CD4A              int byte 0x4a
00000069  CDCB              int byte 0xcb
0000006B  C9                leave
0000006C  AB                stosw
0000006D  83C3C4            add bx,0xffffffffffffffc4
00000070  C505              lds ax,word [di]
00000072  04C7              add al,0xc7
00000074  4B                dec bx
00000075  C9                leave
00000076  CB                retf
00000077  C8CBCAC8          enter word 0xcacb,byte 0xc8
0000007B  AB                stosw
0000007C  84C3              test bl,al
0000007E  0504C7            add ax,0xc704
00000081  4B                dec bx
00000082  49                dec cx
00000083  C9                leave
00000084  C7                db 0xc7
00000085  CDCC              int byte 0xcc
00000087  C8AB85C3          enter word 0x85ab,byte 0xc3
0000008B  53                push bx
0000008C  C7                db 0xc7
0000008D  C9                leave
0000008E  CC                int3
0000008F  49                dec cx
00000090  CC                int3
00000091  C8CCC547          enter word 0xc5cc,byte 0x47
00000095  C4AB8542          les bp,word [bp+di+0x4285]
00000099  43                inc bx
0000009A  C7                db 0xc7
0000009B  C9                leave
0000009C  4B                dec bx
0000009D  C7                db 0xc7
0000009E  CACBCA            retf word 0xcacb
000000A1  C9                leave
000000A2  C843AB86          enter word 0xab43,byte 0x86
000000A6  C3                ret
000000A7  43                inc bx
000000A8  C7                db 0xc7
000000A9  48                dec ax
000000AA  CC                int3
000000AB  C9                leave
000000AC  49                dec cx
000000AD  CC                int3
000000AE  CA43C5            retf word 0xc543
000000B1  AB                stosw
000000B2  83CECF            or si,0xffffffffffffffcf
000000B5  D0C3              rol bl,0x0
000000B7  C4                db 0xc4
000000B8  E0C4              loopne 0x7e
000000BA  C7                db 0xc7
000000BB  C9                leave
000000BC  CB                retf
000000BD  C9                leave
000000BE  CACCCA            retf word 0xcacc
000000C1  CC                int3
000000C2  C8C5C4AB          enter word 0xc4c5,byte 0xab
000000C6  86C3              xchg al,bl
000000C8  C4                db 0xc4
000000C9  E0C9              loopne 0x94
000000CB  5B                pop bx
000000CC  C9                leave
000000CD  CC                int3
000000CE  CA4743            retf word 0x4347
000000D1  C5AB87C3          lds bp,word [bp+di-0x3c79]
000000D5  68CAC9            push word 0xc9ca
000000D8  CAC853            retf word 0x53c8
000000DB  C5                db 0xc5
000000DC  C4AB83D2          les bp,word [bp+di-0x2d7d]
000000E0  0113              add [bp+di],dx
000000E2  D4C3              aam byte 0xc3
000000E4  C9                leave
000000E5  CC                int3
000000E6  49                dec cx
000000E7  CC                int3
000000E8  CACCC8            retf word 0xc8cc
000000EB  43                inc bx
000000EC  C5                db 0xc5
000000ED  E0C4              loopne 0xb3
000000EF  AB                stosw
000000F0  88CD              mov ch,cl
000000F2  6BCACC            imul cx,dx,0xffffffffffffffcc
000000F5  C8C5E0C5          enter word 0xe0c5,byte 0xc5
000000F9  43                inc bx
000000FA  AB                stosw
000000FB  8949CC            mov [bx+di-0x34],cx
000000FE  CACDCC            retf word 0xcccd
00000101  C5                db 0xc5
00000102  C4                db 0xc4
00000103  C5                db 0xc5
00000104  C4                db 0xc4
00000105  C5                db 0xc5
00000106  C4AB92C3          les bp,word [bp+di-0x3c6e]
0000010A  43                inc bx
0000010B  AB                stosw
0000010C  92                xchg ax,dx
0000010D  C3                ret
0000010E  C5                db 0xc5
0000010F  C4AB92C3          les bp,word [bp+di-0x3c6e]
00000113  E0C4              loopne 0xd9
00000115  AB                stosw
00000116  92                xchg ax,dx
00000117  C3                ret
00000118  C5                db 0xc5
00000119  E0AB              loopne 0xc6
0000011B  92                xchg ax,dx
0000011C  C3                ret
0000011D  43                inc bx
0000011E  AB                stosw
0000011F  92                xchg ax,dx
00000120  C3                ret
00000121  E0C4              loopne 0xe7
00000123  AB                stosw
00000124  92                xchg ax,dx
00000125  C3                ret
00000126  E0C4              loopne 0xec
00000128  AB                stosw
00000129  92                xchg ax,dx
0000012A  C3                ret
0000012B  E0C4              loopne 0xf1
0000012D  AB                stosw
0000012E  92                xchg ax,dx
0000012F  C3                ret
00000130  C5                db 0xc5
00000131  C4AB92C3          les bp,word [bp+di-0x3c6e]
00000135  E0C4              loopne 0xfb
00000137  AB                stosw
00000138  92                xchg ax,dx
00000139  C3                ret
0000013A  E0C4              loopne 0x100
0000013C  AB                stosw
0000013D  92                xchg ax,dx
0000013E  C3                ret
0000013F  C5                db 0xc5
00000140  C4AB92C3          les bp,word [bp+di-0x3c6e]
00000144  C4                db 0xc4
00000145  C7                db 0xc7
00000146  AB                stosw
00000147  92                xchg ax,dx
00000148  C3                ret
00000149  C5                db 0xc5
0000014A  C4AB92C3          les bp,word [bp+di-0x3c6e]
0000014E  C5                db 0xc5
0000014F  E0AB              loopne 0xfc
00000151  92                xchg ax,dx
00000152  C3                ret
00000153  E0C4              loopne 0x119
00000155  AB                stosw
00000156  92                xchg ax,dx
00000157  C3                ret
00000158  C5                db 0xc5
00000159  C7                db 0xc7
0000015A  AB                stosw
0000015B  92                xchg ax,dx
0000015C  C3                ret
0000015D  C5                db 0xc5
0000015E  C7                db 0xc7
0000015F  AB                stosw
00000160  92                xchg ax,dx
00000161  C3                ret
00000162  C5                db 0xc5
00000163  CAAB92            retf word 0x92ab
00000166  C3                ret
00000167  C7                db 0xc7
00000168  C9                leave
00000169  AB                stosw
0000016A  92                xchg ax,dx
0000016B  C3                ret
0000016C  C5                db 0xc5
0000016D  CAAB92            retf word 0x92ab
00000170  C3                ret
00000171  C7                db 0xc7
00000172  CAAB92            retf word 0x92ab
00000175  C3                ret
00000176  C4                db 0xc4
00000177  C8AB92C3          enter word 0x92ab,byte 0xc3
0000017B  C5                db 0xc5
0000017C  E0AB              loopne 0x129
0000017E  92                xchg ax,dx
0000017F  C3                ret
00000180  C5                db 0xc5
00000181  C4AB92C3          les bp,word [bp+di-0x3c6e]
00000185  E0C4              loopne 0x14b
00000187  AB                stosw
00000188  92                xchg ax,dx
00000189  C3                ret
0000018A  C5                db 0xc5
0000018B  C4AB92C3          les bp,word [bp+di-0x3c6e]
0000018F  C5                db 0xc5
00000190  C4AB92C3          les bp,word [bp+di-0x3c6e]
00000194  E0C4              loopne 0x15a
00000196  AB                stosw
00000197  92                xchg ax,dx
00000198  C3                ret
00000199  C5                db 0xc5
0000019A  C4AB92C3          les bp,word [bp+di-0x3c6e]
0000019E  C5                db 0xc5
0000019F  E0AB              loopne 0x14c
000001A1  92                xchg ax,dx
000001A2  C3                ret
000001A3  E0C4              loopne 0x169
000001A5  AB                stosw
000001A6  92                xchg ax,dx
000001A7  C3                ret
000001A8  43                inc bx
000001A9  AB                stosw
000001AA  92                xchg ax,dx
000001AB  C3                ret
000001AC  43                inc bx
000001AD  AB                stosw
000001AE  92                xchg ax,dx
000001AF  C3                ret
000001B0  C5                db 0xc5
000001B1  C4AB92C3          les bp,word [bp+di-0x3c6e]
000001B5  C5                db 0xc5
000001B6  C4AB92C3          les bp,word [bp+di-0x3c6e]
000001BA  E0C4              loopne 0x180
000001BC  AB                stosw
000001BD  92                xchg ax,dx
000001BE  C3                ret
000001BF  C5                db 0xc5
000001C0  C4AB92C3          les bp,word [bp+di-0x3c6e]
000001C4  C5                db 0xc5
000001C5  E0AB              loopne 0x172
000001C7  92                xchg ax,dx
000001C8  C3                ret
000001C9  C5                db 0xc5
000001CA  C4AB92C3          les bp,word [bp+di-0x3c6e]
000001CE  C5                db 0xc5
000001CF  C4AB92C3          les bp,word [bp+di-0x3c6e]
000001D3  C5                db 0xc5
000001D4  C4AB83CE          les bp,word [bp+di-0x317d]
000001D8  06                push es
000001D9  0F                db 0x0f
000001DA  D05BC8            rcr byte [bp+di-0x38],0x0
000001DD  43                inc bx
000001DE  E043              loopne 0x223
000001E0  AB                stosw
000001E1  8ACC              mov cl,ah
000001E3  48                dec ax
000001E4  C853C553          enter word 0xc553,byte 0x53
000001E8  AB                stosw
000001E9  83CE6E            or si,0x6e
000001EC  D0CA              ror dl,0x0
000001EE  48                dec ax
000001EF  47                inc di
000001F0  43                inc bx
000001F1  C563AB            lds sp,word [bp+di-0x55]
000001F4  88CC              mov ah,cl
000001F6  C9                leave
000001F7  C843E0C4          enter word 0xe043,byte 0xc4
000001FB  C573AB            lds si,word [bp+di-0x55]
000001FE  874BC9            xchg cx,[bp+di-0x37]
00000201  C853C5C4          enter word 0xc553,byte 0xc4
00000205  E063              loopne 0x26a
00000207  AB                stosw
00000208  83D2D3            adc dx,0xffffffffffffffd3
0000020B  D4CC              aam byte 0xcc
0000020D  C9                leave
0000020E  CAC80A            retf word 0xac8
00000211  04AB              add al,0xab
00000213  85CC              test sp,cx
00000215  C9                leave
00000216  CB                retf
00000217  C9                leave
00000218  C843E007          enter word 0xe043,byte 0x7
0000021C  04AB              add al,0xab
0000021E  85CD              test bp,cx
00000220  48                dec ax
00000221  C873C5C4          enter word 0xc573,byte 0xc4
00000225  C5                db 0xc5
00000226  E053              loopne 0x27b
00000228  AB                stosw
00000229  85CC              test sp,cx
0000022B  CB                retf
0000022C  C843E043          enter word 0xe043,byte 0x43
00000230  C5                db 0xc5
00000231  C4                db 0xc4
00000232  E073              loopne 0x2a7
00000234  AB                stosw
00000235  84CC              test ah,cl
00000237  48                dec ax
00000238  73C5              jnc 0x1ff
0000023A  C4                db 0xc4
0000023B  C505              lds ax,word [di]
0000023D  04AB              add al,0xab
0000023F  83CCCA            or sp,0xffffffffffffffca
00000242  CB                retf
00000243  C9                leave
00000244  C853C5C4          enter word 0xc553,byte 0xc4
00000248  44                inc sp
00000249  0504AB            add ax,0xab04
0000024C  83C9CA            or cx,0xffffffffffffffca
0000024F  C9                leave
00000250  C853C506          enter word 0xc553,byte 0x6
00000254  04E0              add al,0xe0
00000256  C7                db 0xc7
00000257  CC                int3
00000258  AB                stosw
00000259  83CACB            or dx,0xffffffffffffffcb
0000025C  C80504E0          enter word 0x405,byte 0xe0
00000260  73C7              jnc 0x229
00000262  CC                int3
00000263  C9                leave
00000264  AB                stosw
00000265  83CBCD            or bx,0xffffffffffffffcd
00000268  C8C4E007          enter word 0xe0c4,byte 0x7
0000026C  04C7              add al,0xc7
0000026E  CDCC              int byte 0xcc
00000270  C9                leave
00000271  CDAB              int byte 0xab
00000273  FF                db 0xff
00000274  FF                db 0xff
00000275  FF                db 0xff
00000276  FF                db 0xff
00000277  FF                db 0xff
00000278  FF1B              call word far [bp+di]
0000027A  000EC10E          add [0xec1],cl
0000027E  350129            xor ax,0x2901
00000281  00FF              add bh,bh
00000283  FF                db 0xff
00000284  FF2F              jmp word far [bx]
00000286  000E820E          add [0xe82],cl
0000028A  1C00              sbb al,0x0
0000028C  2E802D00          sub byte [cs:di],0x0
00000290  10FF              adc bh,bh
00000292  FF2D              jmp word far [di]
00000294  0020              add [bx+si],ah
00000296  EAC2FFFFFF        jmp word 0xffff:word 0xffc2
0000029B  FF2D              jmp word far [di]
0000029D  0010              add [bx+si],dl
0000029F  89C2              mov dx,ax
000002A1  00FF              add bh,bh
000002A3  8BC2              mov ax,dx
000002A5  FF                db 0xff
000002A6  FF                db 0xff
000002A7  FF                db 0xff
000002A8  FF28              jmp word far [bx+si]
000002AA  00FF              add bh,bh
000002AC  10C0              adc al,al
000002AE  EAC20AC075        jmp word 0x75c0:word 0xac2
000002B3  C2D3C2            ret word 0xc2d3
000002B6  0A0A              or cl,[bp+si]
000002B8  D0C2              rol dl,0x0
000002BA  1300              adc ax,[bx+si]
000002BC  FF                db 0xff
000002BD  FF                db 0xff
000002BE  FF                db 0xff
000002BF  FF17              call word near [bx]
000002C1  AF                scasw
000002C2  0010              add [bx+si],dl
000002C4  43                inc bx
000002C5  61                popa
000002C6  7665              jna 0x32d
000002C8  726E              jc 0x338
000002CA  206F66            and [bx+0x66],ch
000002CD  205465            and [si+0x65],dl
000002D0  736F              jnc 0x341
000002D2  726F              jc 0x343
000002D4  99                cwd
000002D5  0005              add [di],al
000002D7  0BFF              or di,di
000002D9  0B0A              or cx,[bp+si]
000002DB  0A10              or dl,[bx+si]
000002DD  C0EAC2            shr dl,byte 0xc2
000002E0  0AC0              or al,al
000002E2  81C2ECC2          add dx,0xc2ec
000002E6  05FF28            add ax,0x28ff
000002E9  00FF              add bh,bh
000002EB  FF                db 0xff
000002EC  FF                db 0xff
000002ED  FF260010          jmp word near [0x1000]
000002F1  FF7600            push word [bp+0x0]
000002F4  0020              add [bx+si],ah
000002F6  0000              add [bx+si],al
000002F8  002D              add [di],ch
000002FA  0020              add [bx+si],ah
000002FC  0000              add [bx+si],al
000002FE  FF                db 0xff
000002FF  FF                db 0xff
00000300  FF                db 0xff
00000301  FF                db 0xff
