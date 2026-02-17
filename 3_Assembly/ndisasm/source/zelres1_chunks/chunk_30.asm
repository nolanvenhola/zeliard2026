00000000  0F0B              ud2
00000002  0000              add [bx+si],al
00000004  0000              add [bx+si],al
00000006  97                xchg ax,di
00000007  00061580          add [0x8015],al
0000000B  0001              add [bx+di],al
0000000D  A01487            mov al,[0x8714]
00000010  0004              add [si],al
00000012  0557FF            add ax,0xff57
00000015  D1970006          rcl word [bx+0x600],0x0
00000019  2F                das
0000001A  90                nop
0000001B  0001              add [bx+di],al
0000001D  A0A886            mov al,[0x86a8]
00000020  0005              add [di],al
00000022  0ABFE000          or bh,[bx+0xe0]
00000026  FE                db 0xfe
00000027  97                xchg ax,di
00000028  000661E4          add [0xe461],al
0000002C  0001              add [bx+di],al
0000002E  8158860001        sbb word [bx+si-0x7a],0x100
00000033  BF8300            mov di,0x83
00000036  0107              add [bx],ax
00000038  8800              mov [bx+si],al
0000003A  0406              add al,0x6
0000003C  D00F              ror byte [bx],0x0
0000003E  90                nop
0000003F  8B00              mov ax,[bx+si]
00000041  06                push es
00000042  60                pusha
00000043  7900              jns 0x45
00000045  0103              add [bp+di],ax
00000047  58                pop ax
00000048  8500              test [bx+si],ax
0000004A  011F              add [bx],bx
0000004C  8800              mov [bx+si],al
0000004E  0213              add dl,[bp+di]
00000050  E88300            call 0xd6
00000053  051FFF            add ax,0xff1f
00000056  A07FFE            mov al,[0xfe7f]
00000059  8500              test [bx+si],ax
0000005B  037FFF            add di,[bx-0x1]
0000005E  8082000670        add byte [bp+si+0x600],0x70
00000063  1E                push ds
00000064  800283            add byte [bp+si],0x83
00000067  4C                dec sp
00000068  8400              test [bx+si],al
0000006A  0207              add al,[bx]
0000006C  808600013D        add byte [bp+0x100],0x3d
00000071  82                db 0x82
00000072  FF01              inc word [bx+di]
00000074  48                dec ax
00000075  8400              test [bx+si],al
00000077  0501FE            add ax,0xfe01
0000007A  0002              add [bp+si],al
0000007C  F8                clc
0000007D  830001            add word [bx+si],0x1
00000080  7E82              jng 0x4
00000082  0001              add [bx+di],al
00000084  7E82              jng 0x8
00000086  0003              add [bp+di],al
00000088  3807              cmp [bx],al
0000008A  00820301          add [bp+si+0x103],al
0000008E  A28300            mov [0x83],al
00000091  0201              add al,[bx+di]
00000093  E087              loopne 0x1c
00000095  0003              add [bp+di],al
00000097  0900              or [bx+si],ax
00000099  01830001          add [bp+di+0x100],ax
0000009D  2E                cs
0000009E  82                db 0x82
0000009F  0007              add [bx],al
000000A1  03E0              add sp,ax
000000A3  1C87              sbb al,0x87
000000A5  800006            add byte [bx+si],0x6
000000A8  83000D            add word [bx+si],0xd
000000AB  01E0              add ax,sp
000000AD  001E0380          add [0x8003],bl
000000B1  0001              add [bx+di],al
000000B3  E88000            call 0x136
000000B6  01F8              add ax,di
000000B8  8800              mov [bx+si],al
000000BA  0306C004          add ax,[0x4c0]
000000BE  82                db 0x82
000000BF  0003              add [bp+di],al
000000C1  0AAA1882          or ch,[bp+si-0x7de8]
000000C5  0006380E          add [0xe38],al
000000C9  C0600060          shl byte [bx+si+0x0],byte 0x60
000000CD  82                db 0x82
000000CE  000D              add [di],cl
000000D0  03F0              add si,ax
000000D2  1800              sbb [bx+si],al
000000D4  07                pop es
000000D5  81C00800          add ax,0x8
000000D9  7D00              jnl 0xdb
000000DB  01F8              add ax,di
000000DD  8A00              mov al,[bx+si]
000000DF  0407              add al,0x7
000000E1  86C0              xchg al,al
000000E3  18820003          sbb [bp+si+0x300],al
000000E7  100C              adc [si],cl
000000E9  06                push es
000000EA  82                db 0x82
000000EB  0007              add [bx],al
000000ED  01F8              add ax,di
000000EF  00C0              add al,al
000000F1  1F                pop ds
000000F2  F8                clc
000000F3  60                pusha
000000F4  82                db 0x82
000000F5  0005              add [di],al
000000F7  3E800180          add byte [ds:bx+di],0x80
000000FB  3A840003          cmp al,[si+0x300]
000000FF  0E                push cs
00000100  31C6              xor si,ax
00000102  8400              test [bx+si],al
00000104  0207              add al,[bx]
00000106  50                push ax
00000107  82                db 0x82
00000108  0009              add [bx+di],cl
0000010A  01C0              add ax,ax
0000010C  0004              add [si],al
0000010E  0001              add [bx+di],al
00000110  00060383          add [0x8303],al
00000114  0002              add [bp+si],al
00000116  1F                pop ds
00000117  FC                cld
00000118  83000A            add word [bx+si],0xa
0000011B  1E                push ds
0000011C  00603B            add [bx+si+0x3b],ah
0000011F  40                inc ax
00000120  0E                push cs
00000121  003A              add [bp+si],bh
00000123  0002              add [bp+si],al
00000125  830002            add word [bx+si],0x2
00000128  386484            cmp [si-0x7c],ah
0000012B  0003              add [bp+di],al
0000012D  03E0              add sp,ax
0000012F  8084000703        add byte [si+0x700],0x3
00000134  90                nop
00000135  0201              add al,[bx+di]
00000137  0401              add al,0x1
00000139  8083000160        add byte [bp+di+0x100],0x60
0000013E  83000E            add word [bx+si],0xe
00000141  01FE              add si,di
00000143  003A              add [bp+si],bh
00000145  AA                stosb
00000146  D200              rol byte [bx+si],cl
00000148  3E01E9            ds add cx,bp
0000014B  800400            add byte [si],0x0
0000014E  1E                push ds
0000014F  8700              xchg ax,[bx+si]
00000151  017082            add [bx+si-0x7e],si
00000154  000A              add [bp+si],cl
00000156  0400              add al,0x0
00000158  01C0              add ax,ax
0000015A  06                push es
0000015B  0300              add ax,[bx+si]
0000015D  01801882          add [bx+si-0x7de8],ax
00000161  0001              add [bx+di],al
00000163  60                pusha
00000164  8600              xchg al,[bx+si]
00000166  0C3F              or al,0x3f
00000168  7D4C              jnl 0x1b6
0000016A  003E19F4          add [0xf419],bh
0000016E  C00800            ror byte [bx+si],byte 0x0
00000171  07                pop es
00000172  F0                lock
00000173  82                db 0x82
00000174  0001              add [bx+di],al
00000176  13820005          adc ax,[bp+si+0x500]
0000017A  010F              add [bx],cx
0000017C  8D00              lea ax,[bx+si]
0000017E  E082              loopne 0x102
00000180  0007              add [bx],al
00000182  800601F001        add byte [0xf001],0x1
00000187  803882            cmp byte [bx+si],0x82
0000018A  0001              add [bx+di],al
0000018C  60                pusha
0000018D  8600              xchg al,[bx+si]
0000018F  82                db 0x82
00000190  3F                aas
00000191  07                pop es
00000192  C0003F            rol byte [bx+si],byte 0x3f
00000195  807AC010          cmp byte [bp+si-0x40],0x10
00000199  8500              test [bx+si],ax
0000019B  07                pop es
0000019C  40                inc ax
0000019D  C00001            rol byte [bx+si],byte 0x1
000001A0  007FFE            add [bx-0x2],bh
000001A3  8400              test [bx+si],al
000001A5  0107              add [bx],ax
000001A7  82                db 0x82
000001A8  0003              add [bp+di],al
000001AA  0100              add [bx+si],ax
000001AC  38820001          cmp [bp+si+0x100],al
000001B0  40                inc ax
000001B1  8600              xchg al,[bx+si]
000001B3  013B              add [bp+di],di
000001B5  830005            add word [bx+si],0x5
000001B8  2000              and [bx+si],al
000001BA  350030            xor ax,0x3000
000001BD  8400              test [bx+si],al
000001BF  05028F            add ax,0x8f02
000001C2  2000              and [bx+si],al
000001C4  02870001          add al,[bx+0x100]
000001C8  03820003          add ax,[bp+si+0x300]
000001CC  0200              add al,[bx+si]
000001CE  38820001          cmp [bp+si+0x100],al
000001D2  808600013A        add byte [bp+0x100],0x3a
000001D7  8500              test [bx+si],ax
000001D9  03A10030          add sp,[bx+di+0x3000]
000001DD  8400              test [bx+si],al
000001DF  05069B            add ax,0x9b06
000001E2  A00004            mov al,[0x400]
000001E5  8700              xchg ax,[bx+si]
000001E7  0201              add al,[bx+di]
000001E9  808300013E        add byte [bp+di+0x100],0x3e
000001EE  82                db 0x82
000001EF  0001              add [bx+di],al
000001F1  40                inc ax
000001F2  8600              xchg al,[bx+si]
000001F4  013B              add [bp+di],di
000001F6  8400              test [bx+si],al
000001F8  050578            add ax,0x7805
000001FB  0030              add [bx+si],dh
000001FD  8083000B06        add byte [bp+di+0xb00],0x6
00000202  A9C000            test ax,0xc0
00000205  08C0              or al,al
00000207  14C0              adc al,0xc0
00000209  000E8082          add [0x8280],cl
0000020D  000E06D4          add [0xd406],cl
00000211  007001            add [bx+si+0x1],dh
00000214  B4E0              mov ah,0xe0
00000216  6F                outsw
00000217  4F                dec di
00000218  FA                cli
00000219  006F00            add [bx+0x0],ch
0000021C  6C                insb
0000021D  8400              test [bx+si],al
0000021F  056830            add ax,0x3068
00000222  03E3              add sp,bx
00000224  40                inc ax
00000225  8500              test [bx+si],ax
00000227  02698E            add ch,[bx+di-0x72]
0000022A  82                db 0x82
0000022B  0006C028          add [0x28c0],al
0000022F  D000              rol byte [bx+si],0x0
00000231  07                pop es
00000232  40                inc ax
00000233  82                db 0x82
00000234  000E0756          add [0x5607],cl
00000238  006801            add [bx+si+0x1],ch
0000023B  34E0              xor al,0xe0
0000023D  6C                insb
0000023E  AA                stosb
0000023F  A800              test al,0x0
00000241  6F                outsw
00000242  006884            add [bx+si-0x7c],ch
00000245  0004              add [si],al
00000247  682081            push word 0x8120
0000024A  E186              loope 0x1d2
0000024C  001A              add [bp+si],bl
0000024E  6B06800080        imul ax,[0x80],0xffffffffffffff80
00000253  68E000            push word 0xe0
00000256  03D0              add dx,ax
00000258  0010              add [bx+si],dl
0000025A  036B00            add bp,[bp+di+0x0]
0000025D  680369            push word 0x6903
00000260  E068              loopne 0x2ca
00000262  6AA0              push word 0xffffffffffffffa0
00000264  006E00            add [bp+0x0],ch
00000267  688400            push word 0x84
0000026A  056861            add ax,0x6168
0000026D  3B818085          cmp ax,[bx+di-0x7a80]
00000271  0007              add [bx],al
00000273  6B0720            imul ax,[bx],0x20
00000276  00805068          add [bx+si+0x6850],al
0000027A  82                db 0x82
0000027B  0019              add [bx+di],bl
0000027D  E80060            call 0x6280
00000280  0337              add si,[bx]
00000282  807400D1          xor byte [si+0x0],0xd1
00000286  E068              loopne 0x2f0
00000288  7A90              jpe 0x21a
0000028A  006E00            add [bp+0x0],ch
0000028D  680003            push word 0x300
00000290  800068            add byte [bx+si],0x68
00000293  C261C1            ret word 0xc161
00000296  8400              test [bx+si],al
00000298  054080            add ax,0x8040
0000029B  6A03              push word 0x3
0000029D  B082              mov al,0x82
0000029F  0002              add [bp+si],al
000002A1  D0                db 0xd0
000002A2  7082              jo 0x226
000002A4  0019              add [bx+di],bl
000002A6  7480              jz 0x228
000002A8  7003              jo 0x2ad
000002AA  B580              mov ch,0x80
000002AC  681523            push word 0x2315
000002AF  C06B1F80          shr byte [bp+di+0x1f],byte 0x80
000002B3  006A00            add [bp+si+0x0],ch
000002B6  68000F            push word 0xf00
000002B9  8800              mov [bx+si],al
000002BB  68C640            push word 0x40c6
000002BE  82                db 0x82
000002BF  830006            add word [bx+si],0x6
000002C2  02E5              add ah,ch
000002C4  C06E01C8          shr byte [bp+0x1],byte 0xc8
000002C8  82                db 0x82
000002C9  0002              add [bp+si],al
000002CB  D0                db 0xd0
000002CC  3482              xor al,0x82
000002CE  000B              add [bp+di],cl
000002D0  3B20              cmp sp,[bx+si]
000002D2  60                pusha
000002D3  01B5C06A          add [di+0x6ac0],si
000002D7  0287806B          add al,[bx+0x6b80]
000002DB  830014            add word [bx+si],0x14
000002DE  6C                insb
000002DF  006800            add [bx+si+0x0],ch
000002E2  40                inc ax
000002E3  7100              jno 0x2e5
000002E5  68C4C1            push word 0xc1c4
000002E8  800003            add byte [bx+si],0x3
000002EB  E307              jcxz 0x2f4
000002ED  4E                dec si
000002EE  806C00E8          sub byte [si+0x0],0xe8
000002F2  82                db 0x82
000002F3  0002              add [bp+si],al
000002F5  C03A82            sar byte [bp+si],byte 0x82
000002F8  000B              add [bp+di],cl
000002FA  1D9070            sbb ax,0x7090
000002FD  01B5C06C          add [di+0x6cc0],si
00000301  40                inc ax
00000302  1F                pop ds
00000303  006B83            add [bp+di-0x7d],ch
00000306  0014              add [si],dl
00000308  6C                insb
00000309  006808            add [bx+si+0x8],ch
0000030C  000C              add [si],cl
0000030E  80698C80          sub byte [bx+di-0x74],0x80
00000312  F8                clc
00000313  0030              add [bx+si],dh
00000315  3E2387006C        and ax,[ds:bx+0x6c00]
0000031A  007082            add [bx+si-0x7e],dh
0000031D  0002              add [bp+si],al
0000031F  D01D              rcr byte [di],0x0
00000321  82                db 0x82
00000322  000B              add [bp+di],cl
00000324  0E                push cs
00000325  A868              test al,0x68
00000327  01B4C06E          add [si+0x6ec0],si
0000032B  A8FE              test al,0xfe
0000032D  006B83            add [bp+di-0x7d],ch
00000330  0009              add [bx+di],cl
00000332  680068            push word 0x6800
00000335  1003              adc [bp+di],al
00000337  864069            xchg al,[bx+si+0x69]
0000033A  8D840017          lea ax,[si+0x1700]
0000033E  01C8              add ax,cx
00000340  184068            sbb [bx+si+0x68],al
00000343  001C              add [si],bl
00000345  0010              add [bx+si],dl
00000347  006077            add [bx+si+0x77],ah
0000034A  82                db 0x82
0000034B  E070              loopne 0x3bd
0000034D  010E4074          add [0x7440],cx
00000351  80721063          xor byte [bp+si+0x10],0x63
00000355  8600              xchg al,[bx+si]
00000357  1F                pop ds
00000358  3BDF              cmp bx,di
0000035A  54                push sp
0000035B  027FD0            add bh,[bx-0x30]
0000035E  40                inc ax
0000035F  004001            add [bx+si+0x1],al
00000362  C00002            rol byte [bx+si],byte 0x2
00000365  003F              add [bx],bh
00000367  1000              adc [bx+si],al
00000369  3F                aas
0000036A  802008            and byte [bx+si],0x8
0000036D  183A              sbb [bp+si],bh
0000036F  E740              out byte 0x40,ax
00000371  60                pusha
00000372  0287B03C          add al,[bx+0x3cb0]
00000376  E082              loopne 0x2fa
00000378  3002              xor [bp+si],al
0000037A  31808500          xor [bx+si+0x85],ax
0000037E  07                pop es
0000037F  43                inc bx
00000380  C3                ret
00000381  FFB600F5          push word [bp-0xb00]
00000385  0E                push cs
00000386  82                db 0x82
00000387  800218            add byte [bp+si],0x18
0000038A  60                pusha
0000038B  830002            add word [bx+si],0x2
0000038E  03C4              add ax,sp
00000390  83000C            add word [bx+si],0xc
00000393  40                inc ax
00000394  1008              adc [bx+si],cl
00000396  0103              add [bp+di],ax
00000398  80400683          add byte [bx+si+0x6],0x83
0000039C  180EE682          sbb [0x82e6],cl
000003A0  1802              sbb [bp+si],al
000003A2  21808500          and [bx+si+0x85],ax
000003A6  0C84              or al,0x84
000003A8  004386            add [bp+di-0x7a],al
000003AB  003EAA41          add [0x41aa],bh
000003AF  000E3002          add [0x230],cl
000003B3  830001            add word [bx+si],0x1
000003B6  F3830005          rep add word [bx+si],0x5
000003BA  C0                db 0xc0
000003BB  3300              xor ax,[bx+si]
000003BD  1A10              sbb dl,[bx+si]
000003BF  82                db 0x82
000003C0  0009              add [bx+di],cl
000003C2  06                push es
000003C3  818C06E00400      or word [si-0x1ffa],0x4
000003C9  01808500          add [bx+si+0x85],ax
000003CD  0C2D              or al,0x2d
000003CF  0283062A          add al,[bp+di+0x2a06]
000003D3  87FE              xchg di,si
000003D5  0308              add cx,[bx+si]
000003D7  E318              jcxz 0x3f1
000003D9  0483              add al,0x83
000003DB  0002              add [bp+si],al
000003DD  39808200          cmp [bx+si+0x82],ax
000003E1  05C430            add ax,0x30c4
000003E4  E099              loopne 0x37f
000003E6  C4820008          les ax,word [bp+si+0x800]
000003EA  07                pop es
000003EB  51                push cx
000003EC  86066663          xchg al,[0x6366]
000003F0  80418600          add byte [bx+di-0x7a],0x0
000003F4  0CAF              or al,0xaf
000003F6  050342            add ax,0x4203
000003F9  3F                aas
000003FA  2000              and [bx+si],al
000003FC  0318              add bx,[bx+si]
000003FE  7118              jno 0x418
00000400  08830002          or [bp+di+0x200],al
00000404  1CC0              sbb al,0xc0
00000406  82                db 0x82
00000407  0005              add [di],al
00000409  D418              aam byte 0x18
0000040B  0810              or [bx+si],dl
0000040D  F9                stc
0000040E  82                db 0x82
0000040F  000A              add [bp+si],cl
00000411  03ACC606          add bp,[si+0x6c6]
00000415  60                pusha
00000416  007E03            add [bp+0x3],bh
00000419  001E8400          add [0x84],bl
0000041D  0A5002            or dl,[bx+si+0x2]
00000420  034F00            add cx,[bx+0x0]
00000423  F20001            repne add [bx+di],al
00000426  803182            xor byte [bx+di],0x82
00000429  18830016          sbb [bp+di+0x1600],al
0000042D  0E                push cs
0000042E  60                pusha
0000042F  0400              add al,0x0
00000431  D30C              ror word [si],cl
00000433  1000              adc [bx+si],al
00000435  1E                push ds
00000436  40                inc ax
00000437  0001              add [bx+di],al
00000439  D7                xlatb
0000043A  C6067FE000        mov byte [0xe07f],0x0
0000043F  0200              add al,[bx+si]
00000441  F8                clc
00000442  C0830006A8        rol byte [bp+di+0x600],byte 0xa8
00000447  0800              or [bx+si],al
00000449  43                inc bx
0000044A  40                inc ax
0000044B  0E                push cs
0000044C  82                db 0x82
0000044D  0002              add [bp+si],al
0000044F  E020              loopne 0x471
00000451  82                db 0x82
00000452  1014              adc [si],dl
00000454  00060006          add [0x600],al
00000458  3008              xor [bx+si],cl
0000045A  00E8              add al,ch
0000045C  83A0418740        and word [bx+si-0x78bf],0x40
00000461  00067ABC          add [0xbc7a],al
00000465  8600              xchg al,[bx+si]
00000467  03820008          add ax,[bp+si+0x800]
0000046B  0407              add al,0x7
0000046D  207FF0            and [bx-0x10],bh
00000470  80F550            xor ch,0x50
00000473  82                db 0x82
00000474  0302              add ax,[bp+si]
00000476  89A08400          mov [bx+si+0x84],sp
0000047A  0E                push cs
0000047B  2030              and [bx+si],dh
0000047D  001C              add [si],bl
0000047F  40                inc ax
00000480  07                pop es
00000481  3010              xor [bx+si],dl
00000483  0013              add [bp+di],dl
00000485  01D3              add bx,dx
00000487  7FF0              jg 0x479
00000489  8500              test [bx+si],ax
0000048B  1130              adc [bx+si],si
0000048D  0103              add [bp+di],ax
0000048F  2003              and [bp+di],al
00000491  1834              sbb [si],dh
00000493  0028              add [bx+si],ch
00000495  683A20            push word 0x203a
00000498  0002              add [bp+si],al
0000049A  AA                stosb
0000049B  F4                hlt
0000049C  18820005          sbb [bp+si+0x500],al
000004A0  0FF800            psubb mm0,[bx+si]
000004A3  0440              add al,0x40
000004A5  8600              xchg al,[bx+si]
000004A7  1B8300EA          sbb ax,[bp+di-0x1600]
000004AB  60                pusha
000004AC  07                pop es
000004AD  C001C0            rol byte [bx+di],byte 0xc0
000004B0  800038            add byte [bx+si],0x38
000004B3  021C              add bl,[si]
000004B5  90                nop
000004B6  0318              add bx,[bx+si]
000004B8  2C00              sub al,0x0
000004BA  50                push ax
000004BB  759E              jnz 0x45b
000004BD  E000              loopne 0x4bf
000004BF  55                push bp
000004C0  FC                cld
000004C1  3F                aas
000004C2  D0850001          rol byte [di+0x100],0x0
000004C6  08870008          or [bx+0x800],al
000004CA  0200              add al,[bx+si]
000004CC  7A8E              jpe 0x45c
000004CE  803FF8            cmp byte [bx],0xf8
000004D1  0482              add al,0x82
000004D3  000E1802          add [0x218],cl
000004D7  0C50              or al,0x50
000004D9  0318              add bx,[bx+si]
000004DB  6C                insb
000004DC  00403B            add [bx+si+0x3b],al
000004DF  10801178          adc [bx+si+0x7811],al
000004E3  82                db 0x82
000004E4  0002              add [bp+si],al
000004E6  FE808400          inc byte [bx+si+0x84]
000004EA  0110              add [bx+si],dx
000004EC  8700              xchg ax,[bx+si]
000004EE  050602            add ax,0x206
000004F1  1F                pop ds
000004F2  AA                stosb
000004F3  8082000160        add byte [bp+si+0x100],0x60
000004F8  82                db 0x82
000004F9  000D              add [di],cl
000004FB  1C01              sbb al,0x1
000004FD  C0500318          rcl byte [bx+si+0x3],byte 0x18
00000501  660300            add eax,[bx+si]
00000504  1E                push ds
00000505  A90022            test ax,0x2200
00000508  830002            add word [bx+si],0x2
0000050B  07                pop es
0000050C  E88C00            call 0x59b
0000050F  82                db 0x82
00000510  0402              add al,0x2
00000512  01FF              add di,di
00000514  82                db 0x82
00000515  0001              add [bx+di],al
00000517  0E                push cs
00000518  83000D            add word [bx+si],0xd
0000051B  0E                push cs
0000051C  00F0              add al,dh
0000051E  40                inc ax
0000051F  0318              add bx,[bx+si]
00000521  70F8              jo 0x51b
00000523  0007              add [bx],al
00000525  FE00              inc byte [bx+si]
00000527  40                inc ax
00000528  8400              test [bx+si],al
0000052A  017D84            add [di-0x7c],di
0000052D  0001              add [bx+di],al
0000052F  08870004          or [bx+0x400],al
00000533  0C2C              or al,0x2c
00000535  02808200          add al,[bx+si+0x82]
00000539  05C007            add ax,0x7c0
0000053C  F00007            lock add [bx],al
0000053F  82                db 0x82
00000540  0005              add [di],al
00000542  800310            add byte [bp+di],0x10
00000545  3C02              cmp al,0x2
00000547  8400              test [bx+si],al
00000549  01C0              add ax,ax
0000054B  8400              test [bx+si],al
0000054D  020F              add cl,[bx]
0000054F  C8830001          enter word 0x83,byte 0x1
00000553  C087000408        rol byte [bx+0x400],byte 0x8
00000558  6C                insb
00000559  14F0              adc al,0xf0
0000055B  830005            add word [bx+si],0x5
0000055E  02E3              add ah,bl
00000560  C003C0            rol byte [bp+di],byte 0xc0
00000563  82                db 0x82
00000564  0004              add [si],al
00000566  0220              add ah,[bx+si]
00000568  0F                db 0x0f
00000569  F0                lock
0000056A  8400              test [bx+si],al
0000056C  01808500          add [bx+si+0x85],ax
00000570  047F              add al,0x7f
00000572  A0003C            mov al,[0x3c00]
00000575  8800              mov [bx+si],al
00000577  0410              add al,0x10
00000579  643470            fs xor al,0x70
0000057C  82                db 0x82
0000057D  000A              add [bp+si],cl
0000057F  155554            adc ax,0x5455
00000582  07                pop es
00000583  00F8              add al,bh
00000585  0100              add [bx+si],ax
00000587  06                push es
00000588  208C0001          and [si+0x100],cl
0000058C  0182FFA0          add [bp+si-0x5f01],ax
00000590  0002              add [bp+si],al
00000592  0AC0              or al,al
00000594  82                db 0x82
00000595  0002              add [bp+si],al
00000597  60                pusha
00000598  2E8600            xchg al,[cs:bx+si]
0000059B  051FFA            add ax,0xfa1f
0000059E  A800              test al,0x0
000005A0  2F                das
000005A1  97                xchg ax,di
000005A2  0002              add [bp+si],al
000005A4  107882            adc [bx+si-0x7e],bh
000005A7  0002              add [bp+si],al
000005A9  60                pusha
000005AA  5C                pop sp
000005AB  8500              test [bx+si],ax
000005AD  0301              add ax,[bx+di]
000005AF  F5                cmc
000005B0  40                inc ax
000005B1  82                db 0x82
000005B2  0001              add [bx+di],al
000005B4  01970002          add [bx+0x200],dx
000005B8  101E8200          adc [0x82],bl
000005BC  0260BC            add ah,[bx+si-0x44]
000005BF  8500              test [bx+si],ax
000005C1  021F              add bl,[bx]
000005C3  40                inc ax
000005C4  8C00              mov word [bx+si],es
000005C6  0201              add al,[bx+di]
000005C8  2F                das
000005C9  83FF01            cmp di,0x1
000005CC  808400037F        add byte [si+0x300],0x7f
000005D1  FF                db 0xff
000005D2  E082              loopne 0x556
000005D4  00061807          add [0x718],al
000005D8  8000E0            add byte [bx+si],0xe0
000005DB  BC8400            mov sp,0x84
000005DE  0207              add al,[bx]
000005E0  E086              loopne 0x568
000005E2  0001              add [bx+di],al
000005E4  0F82FF01          jc 0x7e7
000005E8  FE850004          inc byte [di+0x400]
000005EC  5F                pop di
000005ED  80007E            add byte [bx+si],0x7e
000005F0  83000C            add word [bx+si],0xc
000005F3  7F80              jg 0x575
000005F5  001F              add [bx],bl
000005F7  80000C            add byte [bx+si],0xc
000005FA  01C0              add ax,ax
000005FC  01C0              add ax,ax
000005FE  BE8300            mov si,0x83
00000601  0201              add al,[bx+di]
00000603  F8                clc
00000604  8700              xchg ax,[bx+si]
00000606  0102              add [bp+si],ax
00000608  82                db 0x82
00000609  0001              add [bx+di],al
0000060B  B086              mov al,0x86
0000060D  0007              add [bx],al
0000060F  F8                clc
00000610  1F                pop ds
00000611  01E0              add ax,sp
00000613  001F              add [bx],bl
00000615  8083000C78        add byte [bp+di+0xc00],0x78
0000061A  0007              add [bx],al
0000061C  00E0              add al,ah
0000061E  07                pop es
0000061F  805F8000          sbb byte [bx-0x80],0x0
00000623  01FE              add si,di
00000625  8900              mov [bx+si],ax
00000627  07                pop es
00000628  8002C0            add byte [bp+si],0xc0
0000062B  007FFF            add [bx-0x1],bh
0000062E  C08200060E        rol byte [bp+si+0x600],byte 0xe
00000633  63C0              arpl ax,ax
00000635  1800              sbb [bx+si],al
00000637  F8                clc
00000638  82                db 0x82
00000639  000D              add [di],cl
0000063B  03FC              add di,sp
0000063D  06                push es
0000063E  0001              add [bx+di],al
00000640  C0                db 0xc0
00000641  701E              jo 0x661
00000643  0017              add [bx],dl
00000645  FA                cli
00000646  01FE              add si,di
00000648  8A00              mov al,[bx+si]
0000064A  07                pop es
0000064B  40                inc ax
0000064C  0B00              or ax,[bx+si]
0000064E  7FF5              jg 0x645
00000650  55                push bp
00000651  FC                cld
00000652  82                db 0x82
00000653  000601F1          add [0xf101],al
00000657  E006              loopne 0x65f
00000659  07                pop es
0000065A  8082000C1C        add byte [bp+si+0xc00],0x1c
0000065F  0301              add ax,[bx+di]
00000661  80007C            add byte [bx+si],0x7c
00000664  39F0              cmp ax,si
00000666  0002              add [bp+si],al
00000668  FF                db 0xff
00000669  FE890001          dec byte [bx+di+0x100]
0000066D  8082000971        add byte [bp+si+0x900],0x71
00000672  E001              loopne 0x675
00000674  1E                push ds
00000675  006001            add [bx+si+0x1],ah
00000678  80C082            add al,0x82
0000067B  0002              add [bp+si],al
0000067D  07                pop es
0000067E  FF830009          inc word [bp+di+0x900]
00000682  07                pop es
00000683  80780560          cmp byte [bx+si+0x5],0x60
00000687  1F                pop ds
00000688  E005              loopne 0x68f
0000068A  8083000470        add byte [bp+di+0x400],0x70
0000068F  0E                push cs
00000690  39808400          cmp [bx+si+0x84],ax
00000694  02A8E082          add ch,[bx+si-0x7d20]
00000698  0009              add [bx+di],cl
0000069A  07                pop es
0000069B  C000F8            rol byte [bx+si],byte 0xf8
0000069E  00C0              add al,al
000006A0  7180              jno 0x622
000006A2  60                pusha
000006A3  8800              mov [bx+si],al
000006A5  0E                push cs
000006A6  7F80              jg 0x628
000006A8  04BF              add al,0xbf
000006AA  FFC0              inc ax
000006AC  0583FF            add ax,0xff83
000006AF  0001              add [bx+di],al
000006B1  C00783            rol byte [bx],byte 0x83
000006B4  8600              xchg al,[bx+si]
000006B6  011C              add [si],bx
000006B8  82                db 0x82
000006B9  0001              add [bx+di],al
000006BB  1F                pop ds
000006BC  82                db 0x82
000006BD  0007              add [bx],al
000006BF  60                pusha
000006C0  0180C300          add [bx+si+0xc3],ax
000006C4  60                pusha
000006C5  0482              add al,0x82
000006C7  0001              add [bx+di],al
000006C9  1886000C          sbb [bp+0xc00],al
000006CD  0557FD            add ax,0xfd57
000006D0  0001              add [bx+di],al
000006D2  9E                sahf
000006D3  17                pop ss
000006D4  C00300            rol byte [bp+di],byte 0x0
000006D7  01FC              add sp,di
000006D9  8600              xchg al,[bx+si]
000006DB  0403              add al,0x3
000006DD  C001F8            rol byte [bx+di],byte 0xf8
000006E0  82                db 0x82
000006E1  0007              add [bx],al
000006E3  2001              and [bx+di],al
000006E5  807C0060          cmp byte [si+0x0],0x60
000006E9  0482              add al,0x82
000006EB  0001              add [bx+di],al
000006ED  18860009          sbb [bp+0x900],al
000006F1  0182B000          add [bp+si+0xb0],ax
000006F5  01E0              add ax,sp
000006F7  0BE0              or sp,ax
000006F9  06                push es
000006FA  8500              test [bx+si],ax
000006FC  022F              add ch,[bx]
000006FE  8083000212        add byte [bp+di+0x200],0x12
00000703  FF840002          inc word [si+0x200]
00000707  01808200          add [bx+si+0x82],ax
0000070B  026006            add ah,[bx+si+0x6]
0000070E  82                db 0x82
0000070F  0001              add [bx+di],al
00000711  18860002          sbb [bp+0x200],al
00000715  01808400          add [bx+si+0x84],ax
00000719  0305              add ax,[di]
0000071B  E00C              loopne 0x729
0000071D  8500              test [bx+si],ax
0000071F  02BFE08A          add bh,[bx-0x7520]
00000723  0001              add [bx+di],al
00000725  C0820002C0        rol byte [bp+si+0x200],byte 0xc0
0000072A  06                push es
0000072B  82                db 0x82
0000072C  0001              add [bx+di],al
0000072E  38860002          cmp [bp+0x200],al
00000732  058084            add ax,0x8480
00000735  0003              add [bp+di],al
00000737  0BC0              or ax,ax
00000739  0C84              or al,0x84
0000073B  0005              add [di],al
0000073D  0170E0            add [bx+si-0x20],si
00000740  0001              add [bx+di],al
00000742  8800              mov [bx+si],al
00000744  056000            add ax,0x60
00000747  01800782          add [bx+si-0x7df9],ax
0000074B  0001              add [bx+di],al
0000074D  7086              jo 0x6d5
0000074F  0002              add [bp+si],al
00000751  058084            add ax,0x8480
00000754  0004              add [si],al
00000756  5E                pop si
00000757  000C              add [si],cl
00000759  3E830005          add word [ds:bx+si],0x5
0000075D  017C70            add [si+0x70],di
00000760  0003              add [bp+di],al
00000762  8800              mov [bx+si],al
00000764  0818              or [bx+si],bl
00000766  00060005          add [0x500],al
0000076A  8001F0            add byte [bx+di],0xf0
0000076D  8600              xchg al,[bx+si]
0000076F  0205              add al,[di]
00000771  808300050A        add byte [bp+di+0x500],0xa
00000776  80000C            add byte [bx+si],0xc
00000779  7983              jns 0x6fe
0000077B  000B              add [bp+di],cl
0000077D  015C30            add [si+0x30],bx
00000780  0006300E          add [0xe30],al
00000784  3800              cmp [bx+si],al
00000786  017082            add [bx+si-0x7e],si
00000789  000F              add [bx],cl
0000078B  012F              add [bx],bp
0000078D  000E004B          add [0x4b00],cl
00000791  F8                clc
00000792  10BFFDC0          adc [bx-0x3f03],bh
00000796  17                pop ss
00000797  801780            adc byte [bx],0x80
0000079A  830005            add word [bx+si],0x5
0000079D  17                pop ss
0000079E  8C3F              mov word [bx],segr7
000007A0  F0                lock
000007A1  40                inc ax
000007A2  8500              test [bx+si],ax
000007A4  07                pop es
000007A5  16                push ss
000007A6  61                popa
000007A7  C00030            rol byte [bx+si],byte 0x30
000007AA  1C2C              sbb al,0x2c
000007AC  82                db 0x82
000007AD  0001              add [bx+di],al
000007AF  BC8300            mov sp,0x83
000007B2  0E                push cs
000007B3  AF                scasw
000007B4  801700            adc byte [bx],0x0
000007B7  CB                retf
000007B8  F8                clc
000007B9  1357F7            adc dx,[bx-0x9]
000007BC  0017              add [bx],dl
000007BE  801780            adc byte [bx],0x80
000007C1  830005            add word [bx+si],0x5
000007C4  17                pop ss
000007C5  9C                pushf
000007C6  7FF8              jg 0x7c0
000007C8  60                pusha
000007C9  8500              test [bx+si],ax
000007CB  0514C1            add ax,0xc114
000007CE  60                pusha
000007CF  006082            add [bx+si-0x7e],ah
000007D2  1C82              sbb al,0x82
000007D4  0012              add [bp+si],dl
000007D6  2F                das
000007D7  0008              add [bx+si],cl
000007D9  0097C017          add [bx+0x17c0],dl
000007DD  8097F81795        adc byte [bx+0x17f8],0x95
000007E2  5C                pop sp
000007E3  0017              add [bx],dl
000007E5  801780            adc byte [bx],0x80
000007E8  830005            add word [bx+si],0x5
000007EB  17                pop ss
000007EC  98                cbw
000007ED  FC                cld
000007EE  7860              js 0x850
000007F0  8500              test [bx+si],ax
000007F2  07                pop es
000007F3  14C0              adc al,0xc0
000007F5  E000              loopne 0x7f7
000007F7  60                pusha
000007F8  38168200          cmp [0x82],dl
000007FC  1A17              sbb dl,[bx]
000007FE  C01800            rcr byte [bx+si],byte 0x0
00000801  CB                retf
00000802  E00B              loopne 0x80f
00000804  C3                ret
00000805  2F                das
00000806  F8                clc
00000807  17                pop ss
00000808  856000            test [bx+si+0x0],sp
0000080B  17                pop ss
0000080C  801780            adc byte [bx],0x80
0000080F  1F                pop ds
00000810  E000              loopne 0x812
00000812  17                pop ss
00000813  39F0              cmp ax,si
00000815  30C0              xor al,al
00000817  830009            add word [bx+si],0x9
0000081A  A14015            mov ax,[0x1540]
0000081D  805000C0          adc byte [bx+si+0x0],0xc0
00000821  380E8200          cmp [0x82],cl
00000825  0C0B              or al,0xb
00000827  E008              loopne 0x831
00000829  004BF0            add [bp+di-0x10],cl
0000082C  17                pop ss
0000082D  EADFF81780        jmp word 0x8017:word 0xf8df
00000832  82                db 0x82
00000833  0018              add [bx+si],bl
00000835  17                pop ss
00000836  801780            adc byte [bx],0x80
00000839  F0                lock
0000083A  1C00              sbb al,0x0
0000083C  17                pop ss
0000083D  31E0              xor ax,sp
0000083F  61                popa
00000840  8007F8            add byte [bx],0xf8
00000843  0152A0            add [bp+si-0x60],dx
00000846  11803800          adc [bx+si+0x38],ax
0000084A  80380B            cmp byte [bx+si],0xb
0000084D  82                db 0x82
0000084E  000C              add [si],cl
00000850  04F8              add al,0xf8
00000852  1C00              sbb al,0x0
00000854  4B                dec bx
00000855  F0                lock
00000856  15FD7F            adc ax,0x7ffd
00000859  F0                lock
0000085A  17                pop ss
0000085B  8082001417        add byte [bp+si+0x1400],0x17
00000860  801783            adc byte [bx],0x83
00000863  800300            add byte [bp+di],0x0
00000866  17                pop ss
00000867  33E0              xor sp,ax
00000869  3E007C0F          add [ds:si+0xf],bh
0000086D  80A1401300        and byte [bx+di+0x1340],0x0
00000872  1482              adc al,0x82
00000874  000B              add [bp+di],cl
00000876  3805              cmp [di],al
00000878  800002            add byte [bx+si],0x2
0000087B  7C0C              jl 0x889
0000087D  004BF8            add [bp+di-0x8],cl
00000880  1382FF03          adc ax,[bp+si+0x3ff]
00000884  F0                lock
00000885  17                pop ss
00000886  8082000F17        add byte [bp+si+0xf00],0x17
0000088B  801787            adc byte [bx],0x87
0000088E  0001              add [bx+di],al
00000890  801663C000        adc byte [0xc063],0x0
00000895  01C0              add ax,ax
00000897  007082            add [bx+si-0x7e],dh
0000089A  0003              add [bp+di],al
0000089C  1300              adc ax,[bx+si]
0000089E  06                push es
0000089F  82                db 0x82
000008A0  0010              add [bx+si],dl
000008A2  3802              cmp [bp+si],al
000008A4  E000              loopne 0x8a6
000008A6  015E16            add [bp+0x16],bx
000008A9  004BF8            add [bp+di-0x8],cl
000008AC  117FFF            adc [bx-0x1],di
000008AF  E017              loopne 0x8c8
000008B1  8082000517        add byte [bp+si+0x500],0x17
000008B6  80178E            adc byte [bx],0x8e
000008B9  0F82C01A          jc 0x237d
000008BD  16                push ss
000008BE  62                db 0x62
000008BF  C00007            rol byte [bx+si],byte 0x7
000008C2  00781C            add [bx+si+0x1c],bh
000008C5  78A0              js 0x867
000008C7  16                push ss
000008C8  006330            add [bp+di+0x30],ah
000008CB  0C03              or al,0x3
000008CD  860E7950          xchg cl,[0x5079]
000008D1  0C00              or al,0x0
000008D3  C18C0B9883        ror word [si-0x67f5],byte 0x83
000008D8  0C01              or al,0x1
000008DA  60                pusha
000008DB  8500              test [bx+si],ax
000008DD  0D7FE0            or ax,0xe07f
000008E0  AB                stosw
000008E1  FD                std
000008E2  802FE0            sub byte [bx],0xe0
000008E5  3C30              cmp al,0x30
000008E7  0018              add [bx+si],bl
000008E9  003C              add [si],bh
000008EB  82                db 0x82
000008EC  0001              add [bx+di],al
000008EE  F8                clc
000008EF  830010            add word [bx+si],0x10
000008F2  18060307          sbb [0x703],al
000008F6  00A01001          add [bx+si+0x110],ah
000008FA  40                inc ax
000008FB  46                inc si
000008FC  03998606          add bx,[bx+di+0x686]
00000900  0C60              or al,0x60
00000902  8500              test [bx+si],ax
00000904  0DFFE0            or ax,0xe0ff
00000907  004180            add [bx+di-0x80],al
0000090A  0AFF              or bh,bh
0000090C  F0                lock
0000090D  60                pusha
0000090E  FC                cld
0000090F  0C00              or al,0x0
00000911  F0                lock
00000912  82                db 0x82
00000913  0001              add [bx+di],al
00000915  3E                ds
00000916  82                db 0x82
00000917  00060338          add [0x3803],al
0000091B  0CC6              or al,0xc6
0000091D  1F                pop ds
0000091E  C082000901        rol byte [bp+si+0x900],byte 0x1
00000923  60                pusha
00000924  6301              arpl [bx+di],ax
00000926  98                cbw
00000927  0300              add ax,[bx+si]
00000929  186085            sbb [bx+si-0x7b],ah
0000092C  000D              add [di],cl
0000092E  7BE0              jpo 0x910
00000930  A04180            mov al,[0x8041]
00000933  015580            add [di-0x80],dx
00000936  C3                ret
00000937  FF0601C0          inc word [0xc001]
0000093B  82                db 0x82
0000093C  0009              add [bx+di],cl
0000093E  0F80001C          jo 0x2542
00000942  380C              cmp [si],cl
00000944  38E7              cmp bh,ah
00000946  F8                clc
00000947  82                db 0x82
00000948  0009              add [bx+di],cl
0000094A  017021            add [bx+si+0x21],si
0000094D  019998E0          add [bx+di-0x1f68],bx
00000951  7060              jo 0x9b3
00000953  8500              test [bx+si],ax
00000955  06                push es
00000956  F2C140C1D5        repne rol word [bx+si-0x3f],byte 0xd5
0000095B  40                inc ax
0000095C  82                db 0x82
0000095D  0005              add [di],al
0000095F  C7                db 0xc7
00000960  1F                pop ds
00000961  8603              xchg al,[bp+di]
00000963  8082000907        add byte [bp+si+0x900],0x7
00000968  C00070            rol byte [bx+si],byte 0x70
0000096B  3C06              cmp al,0x6
0000096D  03063E83          add ax,[0x833e]
00000971  0008              add [bx+si],cl
00000973  B83181            mov ax,0x8131
00000976  98                cbw
00000977  001F              add [bx],bl
00000979  80C085            add al,0x85
0000097C  00067002          add [0x270],al
00000980  80DDC0            sbb ch,0xc0
00000983  1C82              sbb al,0x82
00000985  0004              add [si],al
00000987  660F860783000A    jna 0xa008c95
0000098E  03E0              add sp,ax
00000990  01C0              add ax,ax
00000992  2E03060C07        add ax,[cs:0x70c]
00000997  808200055E        add byte [bp+si+0x500],0x5e
0000099C  30819FF8          xor [bx+di-0x761],al
000009A0  82                db 0x82
000009A1  0002              add [bp+si],al
000009A3  C0FE84            sar dh,byte 0x84
000009A6  000C              add [si],cl
000009A8  B81D00            mov ax,0x1d
000009AB  F0                lock
000009AC  E001              loopne 0x9af
000009AE  800038            add byte [bx+si],0x38
000009B1  0F860783          jna 0x8cbc
000009B5  000A              add [bp+si],cl
000009B7  01F0              add ax,si
000009B9  03802F80          add ax,[bx+si-0x7fd1]
000009BD  EC                in al,dx
000009BE  71E1              jno 0x9a1
000009C0  C08200042F        rol byte [bp+si+0x400],byte 0x2f
000009C5  F0                lock
000009C6  C18082000E        rol word [bx+si+0x82],byte 0xe
000009CB  018701C0          add [bx-0x3fff],ax
000009CF  7FFC              jg 0x9cd
000009D1  0057F4            add [bx-0xc],dl
000009D4  03C0              add ax,ax
000009D6  B000              mov al,0x0
000009D8  60                pusha
000009D9  82                db 0x82
000009DA  0015              add [di],dl
000009DC  1F                pop ds
000009DD  0C0E              or al,0xe
000009DF  001F              add [bx],bl
000009E1  0001              add [bx+di],al
000009E3  F8                clc
000009E4  07                pop es
000009E5  0017              add [bx],dl
000009E7  801F86            sbb byte [bx],0x86
000009EA  18C0              sbb al,al
000009EC  001F              add [bx],bl
000009EE  857F41            test [bx+0x41],di
000009F1  82                db 0x82
000009F2  FF0F              dec word [bx]
000009F4  800718            add byte [bx],0x18
000009F7  007080            add [bx+si-0x80],dh
000009FA  0FC00A            xadd [bp+si],cl
000009FD  A01CC0            mov al,[0xc01c]
00000A00  7C5F              jl 0xa61
00000A02  FC                cld
00000A03  82                db 0x82
00000A04  0025              add [di],ah
00000A06  FC                cld
00000A07  180E0060          sbb [0x6000],cl
00000A0B  C000F8            rol byte [bx+si],byte 0xf8
00000A0E  0E                push cs
00000A0F  00E0              add al,ah
00000A11  C02F80            shr byte [bx],byte 0x80
00000A14  03F0              add si,ax
00000A16  0F                db 0x0f
00000A17  F0                lock
00000A18  E000              loopne 0xa1a
00000A1A  0E                push cs
00000A1B  00802000          add [bx+si+0x20],al
00000A1F  FC                cld
00000A20  0E                push cs
00000A21  001C              add [si],bl
00000A23  17                pop ss
00000A24  05F801            add ax,0x1f8
00000A27  FD                std
00000A28  55                push bp
00000A29  0BFC              or di,sp
00000A2B  8500              test [bx+si],ax
00000A2D  0203              add al,[bp+di]
00000A2F  E087              loopne 0x9b8
00000A31  0007              add [bx],al
00000A33  C115F0            rcl word [di],byte 0xf0
00000A36  380F              cmp [bx],cl
00000A38  FE07              inc byte [bx]
00000A3A  82                db 0x82
00000A3B  000E0700          add [0x7],cl
00000A3F  9C                pushf
00000A40  1000              adc [bx+si],al
00000A42  FC                cld
00000A43  1E                push ds
00000A44  0038              add [bx+si],bh
00000A46  0BC1              or ax,cx
00000A48  7007              jo 0xa51
00000A4A  AA                stosb
00000A4B  82                db 0x82
00000A4C  0002              add [bp+si],al
00000A4E  2F                das
00000A4F  C084000207        rol byte [si+0x200],byte 0x7
00000A54  C086000501        rol byte [bp+0x500],byte 0x1
00000A59  83857FF082        add word [di-0xf81],0xffffffffffffff82
00000A5E  0001              add [bx+di],al
00000A60  7882              js 0x9e4
00000A62  000E0700          add [0x7],cl
00000A66  7E10              jng 0xa78
00000A68  00FC              add ah,bh
00000A6A  1E                push ds
00000A6B  00F0              add al,dh
00000A6D  04FF              add al,0xff
00000A6F  E00E              loopne 0xa7f
00000A71  8082000201        add byte [bp+si+0x200],0x1
00000A76  7884              js 0x9fc
00000A78  0002              add [bp+si],al
00000A7A  0F808600          jo 0xb04
00000A7E  0801              or [bx+di],al
00000A80  8500              test [bx+si],ax
00000A82  55                push bp
00000A83  40                inc ax
00000A84  000F              add [bx],cl
00000A86  8082000D03        add byte [bp+si+0xd00],0x3
00000A8B  803C10            cmp byte [si],0x10
00000A8E  00FC              add ah,bh
00000A90  1F                pop ds
00000A91  07                pop es
00000A92  E001              loopne 0xa95
00000A94  56                push si
00000A95  801C84            sbb byte [si],0x84
00000A98  0001              add [bx+di],al
00000A9A  17                pop ss
00000A9B  8400              test [bx+si],al
00000A9D  013E8700          add [0x87],di
00000AA1  0203              add al,[bp+di]
00000AA3  0B840001          or ax,[si+0x100]
00000AA7  F0830009          lock add word [bx+si],0x9
00000AAB  01C0              add ax,ax
00000AAD  0030              add [bx+si],dh
00000AAF  00FC              add ah,bh
00000AB1  0FFF808300        ud0 ax,[bx+si+0x83]
00000AB6  0130              add [bx+si],si
00000AB8  8400              test [bx+si],al
00000ABA  0202              add al,[bp+si]
00000ABC  F0                lock
00000ABD  82                db 0x82
00000ABE  0002              add [bp+si],al
00000AC0  01F0              add ax,si
00000AC2  8700              xchg ax,[bx+si]
00000AC4  0903              or [bp+di],ax
00000AC6  1E                push ds
00000AC7  05E000            add ax,0xe0
00000ACA  07                pop es
00000ACB  007FF8            add [bx-0x8],bh
00000ACE  82                db 0x82
00000ACF  0007              add [bx],al
00000AD1  F0006000          lock add [bx+si+0x0],ah
00000AD5  F8                clc
00000AD6  03FC              add di,sp
00000AD8  8400              test [bx+si],al
00000ADA  0120              add [bx+si],sp
00000ADC  8500              test [bx+si],ax
00000ADE  0417              add al,0x17
00000AE0  80003F            add byte [bx+si],0x3f
00000AE3  8800              mov [bx+si],al
00000AE5  06                push es
00000AE6  06                push es
00000AE7  16                push ss
00000AE8  0BF8              or di,ax
00000AEA  001C              add [si],bl
00000AEC  83FF07            cmp di,0x7
00000AEF  E000              loopne 0xaf1
00000AF1  3E01C0            ds add ax,ax
00000AF4  01F8              add ax,di
00000AF6  8D00              lea ax,[bx+si]
00000AF8  035FFF            add bx,[bx-0x1]
00000AFB  C08800100E        ror byte [bx+si+0x1000],byte 0xe
00000B00  1E                push ds
00000B01  0BF8              or di,ax
00000B03  007FEA            add [bx-0x16],bh
00000B06  AA                stosb
00000B07  AB                stosw
00000B08  FF00              inc word [bx+si]
00000B0A  03FE              add di,si
00000B0C  0001              add [bx+di],al
00000B0E  F0                lock
00000B0F  98                cbw
00000B10  00FF              add bh,bh
00000B12  FF                db 0xff
