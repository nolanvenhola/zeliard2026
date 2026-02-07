00000000  94                xchg ax,sp
00000001  1D0000            sbb ax,0x0
00000004  FD                std
00000005  D8F0              fdiv st0
00000007  00EB              add bl,ch
00000009  D7                xlatb
0000000A  F9                stc
0000000B  D7                xlatb
0000000C  FB                sti
0000000D  D7                xlatb
0000000E  0BD8              or bx,ax
00000010  79D8              jns 0xffea
00000012  E8D802            call 0x2ed
00000015  D905              fld dword [di]
00000017  FF                db 0xff
00000018  FF                db 0xff
00000019  FF0A              dec word [bp+si]
0000001B  0000              add [bx+si],al
0000001D  EBD7              jmp 0xfff6
0000001F  83C456            add sp,0x56
00000022  C9                leave
00000023  C7                db 0xc7
00000024  CC                int3
00000025  88C3              mov bl,al
00000027  66CC              o32 int3
00000029  92                xchg ax,dx
0000002A  C3                ret
0000002B  46                inc si
0000002C  C501              lds ax,word [bx+di]
0000002E  1885C366          sbb [di+0x66c3],al
00000032  0218              add bl,[bx+si]
00000034  8383C466C8        add word [bp+di+0x66c4],0xffffffffffffffc8
00000039  CC                int3
0000003A  88C3              mov bl,al
0000003C  66CC              o32 int3
0000003E  40                inc ax
0000003F  C240C2            ret word 0xc240
00000042  C1C240            rol dx,byte 0x40
00000045  C260C2            ret word 0xc260
00000048  C181C356CA        rol word [bx+di+0x56c3],byte 0xca
0000004D  0218              add bl,[bx+si]
0000004F  83C356            add bx,0x56
00000052  C9                leave
00000053  C78583C476CC      mov word [di-0x3b7d],0xcc76
00000059  88C3              mov bl,al
0000005B  56                push si
0000005C  CC                int3
0000005D  93                xchg ax,bx
0000005E  C3                ret
0000005F  C556D8            lds dx,word [bp-0x28]
00000062  85C3              test bx,ax
00000064  660118            add [bx+si],ebx
00000067  8483C466          test [bp+di+0x66c4],al
0000006B  CA0118            retf word 0x1801
0000006E  87C3              xchg ax,bx
00000070  56                push si
00000071  C686C4458A        mov byte [bp+0x45c4],0x8a
00000076  C446CC            les ax,word [bp-0x34]
00000079  87C4              xchg ax,sp
0000007B  56                push si
0000007C  0118              add [bx+si],bx
0000007E  8583C366          test [bp+di+0x66c3],ax
00000082  CC                int3
00000083  89C3              mov bx,ax
00000085  46                inc si
00000086  CB                retf
00000087  C7021883          mov word [bp+si],0x8318
0000008B  C3                ret
0000008C  46                inc si
0000008D  0118              add [bx+si],bx
0000008F  88C3              mov bl,al
00000091  46                inc si
00000092  0118              add [bx+si],bx
00000094  86C4              xchg al,ah
00000096  668683C3CA        o32 xchg al,[bp+di-0x353d]
0000009B  66D888C346        o32 fmul dword [bx+si+0x46c3]
000000A0  C687C3C5CC        mov byte [bx-0x3a3d],0xcc
000000A5  8AC4              mov al,ah
000000A7  C7                db 0xc7
000000A8  C8021885          enter word 0x1802,byte 0x85
000000AC  C3                ret
000000AD  660118            add [bx+si],ebx
000000B0  8483C376          test [bp+di+0x76c3],al
000000B4  CC                int3
000000B5  88C4              mov ah,al
000000B7  C7                db 0xc7
000000B8  C8460118          enter word 0x146,byte 0x18
000000BC  84C3              test bl,al
000000BE  C8C7D889          enter word 0xd8c7,byte 0x89
000000C2  C3                ret
000000C3  46                inc si
000000C4  C687C346C9        mov byte [bx+0x46c3],0xc9
000000C9  C7                db 0xc7
000000CA  C8D90118          enter word 0x1d9,byte 0x18
000000CE  82                db 0x82
000000CF  83C376            add bx,0x76
000000D2  D888C346          fmul dword [bx+si+0x46c3]
000000D6  CC                int3
000000D7  87C4              xchg ax,sp
000000D9  C7                db 0xc7
000000DA  CC                int3
000000DB  0118              add [bx+si],bx
000000DD  88C3              mov bl,al
000000DF  56                push si
000000E0  0118              add [bx+si],bx
000000E2  85C3              test bx,ax
000000E4  660118            add [bx+si],ebx
000000E7  8484C446          test [si+0x46c4],al
000000EB  C9                leave
000000EC  C7021886          mov word [bp+si],0x8618
000000F0  C3                ret
000000F1  C7                db 0xc7
000000F2  CC                int3
000000F3  88C3              mov bl,al
000000F5  56                push si
000000F6  89C3              mov bx,ax
000000F8  46                inc si
000000F9  C8C686C4          enter word 0x86c6,byte 0xc4
000000FD  56                push si
000000FE  D88684C4          fadd dword [bp-0x3b7c]
00000102  56                push si
00000103  8AC3              mov al,bl
00000105  46                inc si
00000106  88C3              mov bl,al
00000108  46                inc si
00000109  CAD9D8            retf word 0xd8d9
0000010C  87C3              xchg ax,bx
0000010E  66C684C37601      o32 mov byte [si+0x76c3],0x1
00000114  188484C4          sbb [si-0x3b7c],al
00000118  46                inc si
00000119  0318              add bx,[bx+si]
0000011B  87C3              xchg ax,bx
0000011D  46                inc si
0000011E  0118              add [bx+si],bx
00000120  86C3              xchg al,bl
00000122  56                push si
00000123  CC                int3
00000124  88C3              mov bl,al
00000126  56                push si
00000127  C6                db 0xc6
00000128  C8CAD8C3          enter word 0xd8ca,byte 0xc3
0000012C  C6                db 0xc6
0000012D  CAC856            retf word 0x56c8
00000130  CAC7D8            retf word 0xd8c7
00000133  8484C366          test [si+0x66c3],al
00000137  0318              add bx,[bx+si]
00000139  85C3              test bx,ax
0000013B  C7                db 0xc7
0000013C  CC                int3
0000013D  88C3              mov bl,al
0000013F  56                push si
00000140  C8C60218          enter word 0x2c6,byte 0x18
00000144  84C3              test bl,al
00000146  66                o32
00000147  C6                db 0xc6
00000148  C80707C8          enter word 0x707,byte 0xc8
0000014C  0218              add bl,[bx+si]
0000014E  8384C366CC        add word [si+0x66c3],0xffffffffffffffcc
00000153  88C3              mov bl,al
00000155  C7                db 0xc7
00000156  CC                int3
00000157  88C4              mov ah,al
00000159  56                push si
0000015A  C5                db 0xc5
0000015B  D887C3C5          fadd dword [bx-0x3a3d]
0000015F  0B07              or ax,[bx]
00000161  D88784C3          fadd dword [bx-0x3c7c]
00000165  66CC              o32 int3
00000167  88C4              mov ah,al
00000169  46                inc si
0000016A  C6                db 0xc6
0000016B  D886C3C7          fadd dword [bp-0x383d]
0000016F  CC                int3
00000170  C7                db 0xc7
00000171  CC                int3
00000172  88C3              mov bl,al
00000174  56                push si
00000175  C9                leave
00000176  46                inc si
00000177  CC                int3
00000178  C8CC46C8          enter word 0x46cc,byte 0xc8
0000017C  D901              fld dword [bx+di]
0000017E  188684C3          sbb [bp-0x3c7c],al
00000182  46                inc si
00000183  C9                leave
00000184  C7                db 0xc7
00000185  CC                int3
00000186  88C3              mov bl,al
00000188  C7C5C701          mov bp,0x1c7
0000018C  1885C356          sbb [di+0x56c3],al
00000190  CC                int3
00000191  88C3              mov bl,al
00000193  66CC              o32 int3
00000195  47                inc di
00000196  CC                int3
00000197  C7                db 0xc7
00000198  D902              fld dword [bp+si]
0000019A  188884C3          sbb [bx+si-0x3c7c],cl
0000019E  56                push si
0000019F  C6                db 0xc6
000001A0  89C4              mov sp,ax
000001A2  56                push si
000001A3  C686C36688        mov byte [bp+0x66c3],0x88
000001A8  C3                ret
000001A9  76CC              jna 0x177
000001AB  0118              add [bx+si],bx
000001AD  8D84C366          lea ax,[si+0x66c3]
000001B1  CC                int3
000001B2  88C4              mov ah,al
000001B4  76C6              jna 0x17c
000001B6  84C4              test ah,al
000001B8  C7                db 0xc7
000001B9  C9                leave
000001BA  C8CC88C3          enter word 0x88cc,byte 0xc3
000001BE  66D901            o32 fld dword [bx+di]
000001C1  188E84C3          sbb [bp-0x3c7c],cl
000001C5  C7                db 0xc7
000001C6  CA46CC            retf word 0xcc46
000001C9  88C3              mov bl,al
000001CB  56                push si
000001CC  C546CB            lds ax,word [bp-0x35]
000001CF  0225              add ah,[di]
000001D1  76D9              jna 0x1ac
000001D3  0118              add [bx+si],bx
000001D5  85C3              test bx,ax
000001D7  46                inc si
000001D8  CC                int3
000001D9  0118              add [bx+si],bx
000001DB  90                nop
000001DC  84C3              test bl,al
000001DE  56                push si
000001DF  C8011887          enter word 0x1801,byte 0x87
000001E3  C3                ret
000001E4  76C8              jna 0x1ae
000001E6  C7                db 0xc7
000001E7  E601              out byte 0x1,al
000001E9  256689            and ax,0x8966
000001EC  C446CC            les ax,word [bp-0x34]
000001EF  87C4              xchg ax,sp
000001F1  C7                db 0xc7
000001F2  8984C356          mov [si+0x56c3],ax
000001F6  CC                int3
000001F7  89C3              mov bx,ax
000001F9  56                push si
000001FA  CC                int3
000001FB  C7                db 0xc7
000001FC  4B                dec bx
000001FD  83C356            add bx,0x56
00000200  CC                int3
00000201  0118              add [bx+si],bx
00000203  86C4              xchg al,ah
00000205  46                inc si
00000206  CC                int3
00000207  87C4              xchg ax,sp
00000209  46                inc si
0000020A  0118              add [bx+si],bx
0000020C  8684C366          xchg al,[si+0x66c3]
00000210  0118              add [bx+si],bx
00000212  87C3              xchg ax,bx
00000214  46                inc si
00000215  C9                leave
00000216  C7011884          mov word [bx+di],0x8418
0000021A  C456CC            les dx,word [bp-0x34]
0000021D  C687C35602        mov byte [bx+0x56c3],0x2
00000222  1884C346          sbb [si+0x46c3],al
00000226  C8021884          enter word 0x1802,byte 0x84
0000022A  84C3              test bl,al
0000022C  46                inc si
0000022D  CAC803            retf word 0x3c8
00000230  1885C356          sbb [di+0x56c3],al
00000234  0118              add [bx+si],bx
00000236  85C4              test sp,ax
00000238  66C8011885        enterd word 0x1801,byte 0x85
0000023D  C446C8            les ax,word [bp-0x38]
00000240  D886C356          fadd dword [bp+0x56c3]
00000244  CC                int3
00000245  8684C356          xchg al,[si+0x56c3]
00000249  D889C456          fmul dword [bx+di+0x56c4]
0000024D  CC                int3
0000024E  86C3              xchg al,bl
00000250  46                inc si
00000251  CA4B87            retf word 0x874b
00000254  C3                ret
00000255  46                inc si
00000256  0218              add bl,[bx+si]
00000258  85C3              test bx,ax
0000025A  C546CC            lds ax,word [bp-0x34]
0000025D  8684C346          xchg al,[si+0x46c3]
00000261  C8D889C3          enter word 0x89d8,byte 0xc3
00000265  56                push si
00000266  CC                int3
00000267  86C3              xchg al,bl
00000269  56                push si
0000026A  CC                int3
0000026B  88C3              mov bl,al
0000026D  46                inc si
0000026E  C687C356C8        mov byte [bx+0x56c3],0xc8
00000273  0118              add [bx+si],bx
00000275  8484C356          test [si+0x56c3],al
00000279  C6                db 0xc6
0000027A  89C3              mov bx,ax
0000027C  56                push si
0000027D  D9                db 0xd9
0000027E  D885C356          fadd dword [di+0x56c3]
00000282  CC                int3
00000283  88C3              mov bl,al
00000285  46                inc si
00000286  C8011885          enter word 0x1801,byte 0x85
0000028A  C456CC            les dx,word [bp-0x34]
0000028D  8684C356          xchg al,[si+0x56c3]
00000291  C8011887          enter word 0x1801,byte 0x87
00000295  C3                ret
00000296  56                push si
00000297  CC                int3
00000298  0118              add [bx+si],bx
0000029A  84C4              test ah,al
0000029C  56                push si
0000029D  0118              add [bx+si],bx
0000029F  87C3              xchg ax,bx
000002A1  56                push si
000002A2  D886C366          fadd dword [bp+0x66c3]
000002A6  0218              add bl,[bx+si]
000002A8  8384C356C6        add word [si+0x56c3],0xffffffffffffffc6
000002AD  89C4              mov sp,ax
000002AF  46                inc si
000002B0  C8CC86C3          enter word 0x86cc,byte 0xc3
000002B4  56                push si
000002B5  C6                db 0xc6
000002B6  88C3              mov bl,al
000002B8  46                inc si
000002B9  CC                int3
000002BA  87C3              xchg ax,bx
000002BC  66CC              o32 int3
000002BE  8584C356          test [si+0x56c3],ax
000002C2  C8011887          enter word 0x1801,byte 0x87
000002C6  C456CC            les dx,word [bp-0x34]
000002C9  86C4              xchg al,ah
000002CB  56                push si
000002CC  0119              add [bx+di],bx
000002CE  0118              add [bx+si],bx
000002D0  85C3              test bx,ax
000002D2  46                inc si
000002D3  CC                int3
000002D4  87C3              xchg ax,bx
000002D6  76D8              jna 0x2b0
000002D8  8484C3C7          test [si-0x383d],al
000002DC  C9                leave
000002DD  C7                db 0xc7
000002DE  CC                int3
000002DF  89C3              mov bx,ax
000002E1  56                push si
000002E2  C8D9D884          enter word 0xd8d9,byte 0x84
000002E6  C3                ret
000002E7  46                inc si
000002E8  C9                leave
000002E9  CC                int3
000002EA  88C3              mov bl,al
000002EC  46                inc si
000002ED  CAD886            retf word 0x86d8
000002F0  C3                ret
000002F1  66C8C70118        enterd word 0x1c7,byte 0x18
000002F6  82                db 0x82
000002F7  84C3              test bl,al
000002F9  56                push si
000002FA  CC                int3
000002FB  89C3              mov bx,ax
000002FD  56                push si
000002FE  CC                int3
000002FF  86C3              xchg al,bl
00000301  56                push si
00000302  CC                int3
00000303  88C3              mov bl,al
00000305  46                inc si
00000306  C687C36602        mov byte [bx+0x66c3],0x2
0000030B  188384C3          sbb [bp+di-0x3c7c],al
0000030F  56                push si
00000310  CC                int3
00000311  89C3              mov bx,ax
00000313  56                push si
00000314  CC                int3
00000315  86C3              xchg al,bl
00000317  56                push si
00000318  CC                int3
00000319  88C3              mov bl,al
0000031B  56                push si
0000031C  0118              add [bx+si],bx
0000031E  85C3              test bx,ax
00000320  56                push si
00000321  C8D88584          enter word 0x85d8,byte 0x84
00000325  C3                ret
00000326  56                push si
00000327  C60118            mov byte [bx+di],0x18
0000032A  87C3              xchg ax,bx
0000032C  46                inc si
0000032D  CA0118            retf word 0x1801
00000330  85C3              test bx,ax
00000332  56                push si
00000333  C6                db 0xc6
00000334  88C3              mov bl,al
00000336  C7                db 0xc7
00000337  C8031884          enter word 0x1803,byte 0x84
0000033B  C3                ret
0000033C  C7                db 0xc7
0000033D  CAC7CC            retf word 0xccc7
00000340  8684C366          xchg al,[si+0x66c3]
00000344  C6                db 0xc6
00000345  88C4              mov ah,al
00000347  56                push si
00000348  CC                int3
00000349  86C3              xchg al,bl
0000034B  56                push si
0000034C  C5                db 0xc5
0000034D  D887C346          fadd dword [bx+0x46c3]
00000351  0118              add [bx+si],bx
00000353  86C3              xchg al,bl
00000355  56                push si
00000356  CC                int3
00000357  8684C366          xchg al,[si+0x66c3]
0000035B  C8021885          enter word 0x1802,byte 0x85
0000035F  C456CC            les dx,word [bp-0x34]
00000362  0118              add [bx+si],bx
00000364  84C3              test bl,al
00000366  56                push si
00000367  CC                int3
00000368  88C3              mov bl,al
0000036A  46                inc si
0000036B  CC                int3
0000036C  87C3              xchg ax,bx
0000036E  56                push si
0000036F  CC                int3
00000370  8684C346          xchg al,[si+0x46c3]
00000374  CAC701            retf word 0x1c7
00000377  1887C3CA          sbb [bx-0x353d],al
0000037B  C7                db 0xc7
0000037C  C8CC86C3          enter word 0x86cc,byte 0xc3
00000380  56                push si
00000381  C60218            mov byte [bp+si],0x18
00000384  85C3              test bx,ax
00000386  C7                db 0xc7
00000387  CACC87            retf word 0x87cc
0000038A  C456C6            les dx,word [bp-0x3a]
0000038D  8684C366          xchg al,[si+0x66c3]
00000391  CC                int3
00000392  88C4              mov ah,al
00000394  56                push si
00000395  CC                int3
00000396  86C3              xchg al,bl
00000398  56                push si
00000399  CC                int3
0000039A  88C4              mov ah,al
0000039C  46                inc si
0000039D  C687C366C8        mov byte [bx+0x66c3],0xc8
000003A2  0118              add [bx+si],bx
000003A4  8384C366CC        add word [si+0x66c3],0xffffffffffffffcc
000003A9  88C4              mov ah,al
000003AB  56                push si
000003AC  0118              add [bx+si],bx
000003AE  85C3              test bx,ax
000003B0  C7                db 0xc7
000003B1  CAC8CC            retf word 0xccc8
000003B4  88C4              mov ah,al
000003B6  46                inc si
000003B7  C8011885          enter word 0x1801,byte 0x85
000003BB  C3                ret
000003BC  66CC              o32 int3
000003BE  8584C366          test [si+0x66c3],ax
000003C2  CC                int3
000003C3  88C3              mov bl,al
000003C5  56                push si
000003C6  C686C356CC        mov byte [bp+0x56c3],0xcc
000003CB  0118              add [bx+si],bx
000003CD  86C3              xchg al,bl
000003CF  C7041884          mov word [si],0x8418
000003D3  C446C8            les ax,word [bp-0x38]
000003D6  0318              add bx,[bx+si]
000003D8  8384C356C8        add word [si+0x56c3],0xffffffffffffffc8
000003DD  0218              add bl,[bx+si]
000003DF  86C3              xchg al,bl
000003E1  56                push si
000003E2  C8D9D884          enter word 0xd8d9,byte 0x84
000003E6  C3                ret
000003E7  56                push si
000003E8  C5                db 0xc5
000003E9  D887C3CA          fadd dword [bx-0x353d]
000003ED  89C3              mov bx,ax
000003EF  660118            add [bx+si],ebx
000003F2  8484C366          test [si+0x66c3],al
000003F6  CC                int3
000003F7  88C4              mov ah,al
000003F9  56                push si
000003FA  CC                int3
000003FB  86C3              xchg al,bl
000003FD  46                inc si
000003FE  C9                leave
000003FF  CC                int3
00000400  88C3              mov bl,al
00000402  C7                db 0xc7
00000403  89C3              mov bx,ax
00000405  56                push si
00000406  C8D88584          enter word 0x85d8,byte 0x84
0000040A  C3                ret
0000040B  66CC              o32 int3
0000040D  88C3              mov bl,al
0000040F  C7                db 0xc7
00000410  C9                leave
00000411  C7                db 0xc7
00000412  CC                int3
00000413  86C4              xchg al,ah
00000415  46                inc si
00000416  C6                db 0xc6
00000417  CC                int3
00000418  88C3              mov bl,al
0000041A  0118              add [bx+si],bx
0000041C  88C3              mov bl,al
0000041E  56                push si
0000041F  C68684C356        mov byte [bp-0x3c7c],0x56
00000424  C8011887          enter word 0x1801,byte 0x87
00000428  C3                ret
00000429  56                push si
0000042A  CC                int3
0000042B  86C4              xchg al,ah
0000042D  56                push si
0000042E  D9                db 0xd9
0000042F  D887C4D8          fadd dword [bx-0x273c]
00000433  89C3              mov bx,ax
00000435  C546C6            lds ax,word [bp-0x3a]
00000438  8684C356          xchg al,[si+0x56c3]
0000043C  CC                int3
0000043D  89C3              mov bx,ax
0000043F  56                push si
00000440  CC                int3
00000441  86C3              xchg al,bl
00000443  56                push si
00000444  CC                int3
00000445  93                xchg ax,bx
00000446  C3                ret
00000447  66D88584C3        o32 fadd dword [di-0x3c7c]
0000044C  C7                db 0xc7
0000044D  C9                leave
0000044E  C7                db 0xc7
0000044F  CC                int3
00000450  89C3              mov bx,ax
00000452  56                push si
00000453  D9                db 0xd9
00000454  D885C346          fadd dword [di+0x46c3]
00000458  C9                leave
00000459  C7                db 0xc7
0000045A  50                push ax
0000045B  C250C2            ret word 0xc250
0000045E  C1C260            rol dx,byte 0x60
00000461  C25081            ret word 0x8150
00000464  C3                ret
00000465  56                push si
00000466  CA0218            retf word 0x1802
00000469  8384C356C8        add word [si+0x56c3],0xffffffffffffffc8
0000046E  D888C346          fmul dword [bx+si+0x46c3]
00000472  C687C356D9        mov byte [bx+0x56c3],0xd9
00000477  0118              add [bx+si],bx
00000479  91                xchg ax,cx
0000047A  C466CC            les sp,word [bp-0x34]
0000047D  8584C356          test [si+0x56c3],ax
00000481  0218              add bl,[bx+si]
00000483  87C3              xchg ax,bx
00000485  46                inc si
00000486  D9                db 0xd9
00000487  D886C3CA          fadd dword [bp-0x353d]
0000048B  C7C6CC93          mov si,0x93cc
0000048F  C3                ret
00000490  66C68584C346      o32 mov byte [di-0x3c7c],0x46
00000496  C8CC89C3          enter word 0x89cc,byte 0xc3
0000049A  C546C6            lds ax,word [bp-0x3a]
0000049D  86C3              xchg al,bl
0000049F  46                inc si
000004A0  4B                dec bx
000004A1  93                xchg ax,bx
000004A2  C3                ret
000004A3  7601              jna 0x4a6
000004A5  188384C3          sbb [bp+di-0x3c7c],al
000004A9  56                push si
000004AA  CC                int3
000004AB  89C3              mov bx,ax
000004AD  46                inc si
000004AE  0118              add [bx+si],bx
000004B0  86C3              xchg al,bl
000004B2  660118            add [bx+si],ebx
000004B5  91                xchg ax,cx
000004B6  C466C8            les sp,word [bp-0x38]
000004B9  0218              add bl,[bx+si]
000004BB  82                db 0x82
000004BC  84C3              test bl,al
000004BE  46                inc si
000004BF  C9                leave
000004C0  CC                int3
000004C1  89C3              mov bx,ax
000004C3  56                push si
000004C4  CC                int3
000004C5  86C4              xchg al,ah
000004C7  76C5              jna 0x48e
000004C9  C80223C7          enter word 0x2302,byte 0xc7
000004CD  C556C8            lds dx,word [bp-0x38]
000004D0  E601              out byte 0x1,al
000004D2  250707            and ax,0x707
000004D5  CB                retf
000004D6  CC                int3
000004D7  8584C356          test [si+0x56c3],ax
000004DB  CC                int3
000004DC  89C4              mov sp,ax
000004DE  46                inc si
000004DF  4B                dec bx
000004E0  D885C456          fadd dword [di+0x56c4]
000004E4  C856E3E4          enter word 0xe356,byte 0xe4
000004E8  E3C8              jcxz 0x4b2
000004EA  46                inc si
000004EB  C54601            lds ax,word [bp+0x1]
000004EE  25E6C7            and ax,0xc7e6
000004F1  C80507CA          enter word 0x705,byte 0xca
000004F5  CC                int3
000004F6  8584C356          test [si+0x56c3],ax
000004FA  0118              add [bx+si],bx
000004FC  88C3              mov bl,al
000004FE  46                inc si
000004FF  CC                int3
00000500  C786C3660118      mov word [bp+0x66c3],0x1801
00000506  8D                db 0x8d
00000507  C4                db 0xc4
00000508  C7                db 0xc7
00000509  CB                retf
0000050A  0507CC            add ax,0xcc07
0000050D  8584C3C7          test [si-0x383d],ax
00000511  C8031887          enter word 0x1803,byte 0x87
00000515  C3                ret
00000516  46                inc si
00000517  C84B85C3          enter word 0x854b,byte 0xc3
0000051B  C7C546D8          mov bp,0xd846
0000051F  8EC3              mov es,bx
00000521  66C546C8          lds eax,dword [bp-0x38]
00000525  C7011883          mov word [bx+di],0x8318
00000529  84C3              test bl,al
0000052B  C7                db 0xc7
0000052C  CC                int3
0000052D  8BC3              mov ax,bx
0000052F  C7                db 0xc7
00000530  CC                int3
00000531  C787C356CC8F      mov word [bx+0x56c3],0x8fcc
00000537  C40607C6          les ax,word [0xc607]
0000053B  8684C3C7          xchg al,[si-0x383d]
0000053F  CC                int3
00000540  8BC3              mov ax,bx
00000542  C7C5D901          mov bp,0x1d9
00000546  1885C456          sbb [di+0x56c4],al
0000054A  CC                int3
0000054B  50                push ax
0000054C  41                inc cx
0000054D  40                inc ax
0000054E  C250C2            ret word 0xc250
00000551  40                inc ax
00000552  81C3C7C5          add bx,0xc5c7
00000556  0507C8            add ax,0xc807
00000559  0218              add bl,[bx+si]
0000055B  82                db 0x82
0000055C  84C3              test bl,al
0000055E  C7                db 0xc7
0000055F  CC                int3
00000560  8BC3              mov ax,bx
00000562  46                inc si
00000563  CC                int3
00000564  87C4              xchg ax,sp
00000566  46                inc si
00000567  C5                db 0xc5
00000568  CC                int3
00000569  D88EC305          fmul dword [bp+0x5c3]
0000056D  07                pop es
0000056E  C9                leave
0000056F  C7011884          mov word [bx+di],0x8418
00000573  84C3              test bl,al
00000575  46                inc si
00000576  0118              add [bx+si],bx
00000578  89C3              mov bx,ax
0000057A  C7                db 0xc7
0000057B  C9                leave
0000057C  0218              add bl,[bx+si]
0000057E  85C3              test bx,ax
00000580  46                inc si
00000581  0118              add [bx+si],bx
00000583  85C4              test sp,ax
00000585  C7                db 0xc7
00000586  88C3              mov bl,al
00000588  06                push es
00000589  07                pop es
0000058A  CC                int3
0000058B  8684C3C8          xchg al,[si-0x373d]
0000058F  0318              add bx,[bx+si]
00000591  88C3              mov bl,al
00000593  46                inc si
00000594  CC                int3
00000595  87C4              xchg ax,sp
00000597  56                push si
00000598  C8D9D883          enter word 0xd8d9,byte 0x83
0000059C  C3                ret
0000059D  C7011886          mov word [bx+di],0x8618
000005A1  C3                ret
000005A2  06                push es
000005A3  07                pop es
000005A4  CC                int3
000005A5  8684C3CC          xchg al,[si-0x333d]
000005A9  8CC4              mov sp,es
000005AB  C7                db 0xc7
000005AC  C8CC87C3          enter word 0x87cc,byte 0xc3
000005B0  56                push si
000005B1  CC                int3
000005B2  85C4              test sp,ax
000005B4  46                inc si
000005B5  87C3              xchg ax,bx
000005B7  66C9              leaved
000005B9  46                inc si
000005BA  0218              add bl,[bx+si]
000005BC  8484C3C7          test [si-0x383d],al
000005C0  D88BC4C7          fmul dword [bp+di-0x383c]
000005C4  89C3              mov bx,ax
000005C6  66D884C346        o32 fadd dword [si+0x46c3]
000005CB  0118              add [bx+si],bx
000005CD  85C4              test sp,ax
000005CF  C7                db 0xc7
000005D0  C80507C6          enter word 0x705,byte 0xc6
000005D4  8584C3CC          test [si-0x333d],ax
000005D8  8CC3              mov bx,es
000005DA  C8CCD9D8          enter word 0xd9cc,byte 0xd8
000005DE  86C4              xchg al,ah
000005E0  46                inc si
000005E1  C8CC85C3          enter word 0x85cc,byte 0xc3
000005E5  C7C5C701          mov bp,0x1c7
000005E9  1884C4CC          sbb [si-0x333c],al
000005ED  C7                db 0xc7
000005EE  CC                int3
000005EF  66CAC702          retfd word 0x2c7
000005F3  188284C3          sbb [bp+si-0x3c7c],al
000005F7  C701188A          mov word [bx+di],0x8a18
000005FB  C4                db 0xc4
000005FC  CC                int3
000005FD  89C3              mov bx,ax
000005FF  C7                db 0xc7
00000600  CAC7CC            retf word 0xccc7
00000603  85C3              test bx,ax
00000605  56                push si
00000606  8BC3              mov ax,bx
00000608  56                push si
00000609  8684C3C7          xchg al,[si-0x383d]
0000060D  CC                int3
0000060E  96                xchg ax,si
0000060F  C446CC            les ax,word [bp-0x34]
00000612  86C3              xchg al,bl
00000614  46                inc si
00000615  C8C78AC3          enter word 0x8ac7,byte 0xc3
00000619  46                inc si
0000061A  CB                retf
0000061B  C68584C3C8        mov byte [di-0x3c7c],0xc8
00000620  C740C260C2        mov word [bx+si-0x3e],0xc260
00000625  C1C205            rol dx,byte 0x5
00000628  01C2              add dx,ax
0000062A  C1C240            rol dx,byte 0x40
0000062D  81C446CA          add sp,0xca46
00000631  CC                int3
00000632  85C3              test bx,ax
00000634  56                push si
00000635  C88AC356          enter word 0xc38a,byte 0x56
00000639  C8D88484          enter word 0x84d8,byte 0x84
0000063D  C3                ret
0000063E  C7                db 0xc7
0000063F  D896C366          fcom dword [bp+0x66c3]
00000643  85C3              test bx,ax
00000645  C7                db 0xc7
00000646  C9                leave
00000647  46                inc si
00000648  CC                int3
00000649  89C3              mov bx,ax
0000064B  56                push si
0000064C  C68584C3CC        mov byte [di-0x3c7c],0xcc
00000651  88C4              mov ah,al
00000653  C6                db 0xc6
00000654  D887C4C6          fadd dword [bx-0x393c]
00000658  83C3EC            add bx,0xffffffffffffffec
0000065B  46                inc si
0000065C  C8D884C4          enter word 0x84d8,byte 0xc4
00000660  66CC              o32 int3
00000662  89C3              mov bx,ax
00000664  660118            add [bx+si],ebx
00000667  8384C3CC01        add word [si-0x333d],0x1
0000066C  1886C4C6          sbb [bp-0x393c],al
00000670  88C3              mov bl,al
00000672  C7                db 0xc7
00000673  EC                in al,dx
00000674  82                db 0x82
00000675  012C              add [si],bp
00000677  46                inc si
00000678  CC                int3
00000679  85C3              test bx,ax
0000067B  56                push si
0000067C  C8C789C3          enter word 0x89c7,byte 0xc3
00000680  46                inc si
00000681  CAC685            retf word 0x85c6
00000684  84C3              test bl,al
00000686  D888C3C8          fmul dword [bx+si-0x373d]
0000068A  C687C3012C        mov byte [bx+0x1c3],0x2c
0000068F  82                db 0x82
00000690  EC                in al,dx
00000691  56                push si
00000692  86C4              xchg al,ah
00000694  66                o32
00000695  C6                db 0xc6
00000696  CC                int3
00000697  88C3              mov bl,al
00000699  66C68484C301      o32 mov byte [si-0x3c7c],0x1
0000069F  1887C3C7          sbb [bx-0x383d],al
000006A3  C8011885          enter word 0x1801,byte 0x85
000006A7  C3                ret
000006A8  EC                in al,dx
000006A9  0507C9            add ax,0xc907
000006AC  CC                int3
000006AD  87C3              xchg ax,bx
000006AF  46                inc si
000006B0  C889C3C9          enter word 0xc389,byte 0xc9
000006B4  C7                db 0xc7
000006B5  CB                retf
000006B6  C8011883          enter word 0x1801,byte 0x83
000006BA  84C3              test bl,al
000006BC  89C3              mov bx,ax
000006BE  CAC7C6            retf word 0xc6c7
000006C1  86C3              xchg al,bl
000006C3  012C              add [si],bp
000006C5  CAC7EC            retf word 0xecc7
000006C8  56                push si
000006C9  CC                int3
000006CA  87C4              xchg ax,sp
000006CC  56                push si
000006CD  CC                int3
000006CE  88C3              mov bl,al
000006D0  56                push si
000006D1  0118              add [bx+si],bx
000006D3  848EC356          test [bp+0x56c3],cl
000006D7  D885C307          fadd dword [di+0x7c3]
000006DB  07                pop es
000006DC  C8011885          enter word 0x1801,byte 0x85
000006E0  C3                ret
000006E1  C7                db 0xc7
000006E2  CA4687            retf word 0x8746
000006E5  C456CC            les dx,word [bp-0x34]
000006E8  86C2              xchg al,dl
000006EA  70C2              jo 0x6ae
000006EC  40                inc ax
000006ED  C24082            ret word 0x8240
000006F0  C3                ret
000006F1  C7                db 0xc7
000006F2  CA0218            retf word 0x1802
000006F5  84C3              test bl,al
000006F7  76C9              jna 0x6c2
000006F9  5B                pop bx
000006FA  87C4              xchg ax,sp
000006FC  56                push si
000006FD  C8011885          enter word 0x1801,byte 0x85
00000701  C446C8            les ax,word [bp-0x38]
00000704  C740C240C2        mov word [bx+si-0x3e],0xc240
00000709  8EC3              mov es,bx
0000070B  46                inc si
0000070C  CC                int3
0000070D  86C3              xchg al,bl
0000070F  07                pop es
00000710  07                pop es
00000711  8AC3              mov al,bl
00000713  46                inc si
00000714  C686C44601        mov byte [bp+0x46c4],0x1
00000719  1886C745          sbb [bp+0x45c7],al
0000071D  0218              add bl,[bx+si]
0000071F  88C3              mov bl,al
00000721  C7                db 0xc7
00000722  EC                in al,dx
00000723  C686C30507        mov byte [bp+0x5c3],0x7
00000728  C8031887          enter word 0x1803,byte 0x87
0000072C  C3                ret
0000072D  56                push si
0000072E  0118              add [bx+si],bx
00000730  84C3              test bl,al
00000732  56                push si
00000733  C685C446C8        mov byte [di+0x46c4],0xc8
00000738  56                push si
00000739  0118              add [bx+si],bx
0000073B  86C4              xchg al,ah
0000073D  EC                in al,dx
0000073E  C7                db 0xc7
0000073F  C8011884          enter word 0x1801,byte 0x84
00000743  C3                ret
00000744  050701            add ax,0x107
00000747  188AC3C7          sbb [bp+si-0x383d],cl
0000074B  CAC7C6            retf word 0xc6c7
0000074E  85C3              test bx,ax
00000750  46                inc si
00000751  C9                leave
00000752  C7011883          mov word [bx+di],0x8318
00000756  C3                ret
00000757  66CA0118          retfd word 0x1801
0000075B  87EB              xchg bp,bx
0000075D  EC                in al,dx
0000075E  C7                db 0xc7
0000075F  CC                int3
00000760  86C3              xchg al,bl
00000762  66CC              o32 int3
00000764  8D                db 0x8d
00000765  C456C8            les dx,word [bp-0x38]
00000768  0118              add [bx+si],bx
0000076A  83C356            add bx,0x56
0000076D  CC                int3
0000076E  85C3              test bx,ax
00000770  76CC              jna 0x73e
00000772  88EB              mov bl,ch
00000774  EC                in al,dx
00000775  88C4              mov ah,al
00000777  66CA0218          retfd word 0x1802
0000077B  8AC4              mov al,ah
0000077D  6685C4            test esp,eax
00000780  56                push si
00000781  CC                int3
00000782  85C4              test sp,ax
00000784  C7                db 0xc7
00000785  CA4602            retf word 0x246
00000788  1887EBEC          sbb [bx-0x1315],al
0000078C  88C4              mov ah,al
0000078E  76CC              jna 0x75c
00000790  8EC3              mov es,bx
00000792  CC                int3
00000793  86C3              xchg al,bl
00000795  C7                db 0xc7
00000796  C8021884          enter word 0x1802,byte 0x84
0000079A  C456C6            les dx,word [bp-0x3a]
0000079D  CC                int3
0000079E  89EB              mov bx,bp
000007A0  EC                in al,dx
000007A1  88C3              mov bl,al
000007A3  76CC              jna 0x771
000007A5  8EC3              mov es,bx
000007A7  CC                int3
000007A8  86C3              xchg al,bl
000007AA  46                inc si
000007AB  CB                retf
000007AC  0218              add bl,[bx+si]
000007AE  83C356            add bx,0x56
000007B1  C8021891          enter word 0x1802,byte 0x91
000007B5  C3                ret
000007B6  66                o32
000007B7  C6                db 0xc6
000007B8  8FC3              pop bx
000007BA  D886C356          fadd dword [bp+0x56c3]
000007BE  CC                int3
000007BF  85C3              test bx,ax
000007C1  56                push si
000007C2  CC                int3
000007C3  94                xchg ax,sp
000007C4  C3                ret
000007C5  C7                db 0xc7
000007C6  CA56CC            retf word 0xcc56
000007C9  8EC4              mov es,sp
000007CB  87C3              xchg ax,bx
000007CD  56                push si
000007CE  CC                int3
000007CF  85C3              test bx,ax
000007D1  56                push si
000007D2  0218              add bl,[bx+si]
000007D4  88EB              mov bl,ch
000007D6  EC                in al,dx
000007D7  88C3              mov bl,al
000007D9  66C8CC96C3        enterd word 0x96cc,byte 0xc3
000007DE  6685C3            test ebx,eax
000007E1  66CC              o32 int3
000007E3  89EB              mov bx,bp
000007E5  EC                in al,dx
000007E6  88C3              mov bl,al
000007E8  66CC              o32 int3
000007EA  88C4              mov ah,al
000007EC  C6                db 0xc6
000007ED  8D                db 0x8d
000007EE  C3                ret
000007EF  46                inc si
000007F0  C8011884          enter word 0x1801,byte 0x84
000007F4  C3                ret
000007F5  56                push si
000007F6  C8011888          enter word 0x1801,byte 0x88
000007FA  EBEC              jmp 0x7e8
000007FC  88C3              mov bl,al
000007FE  C556CC            lds dx,word [bp-0x34]
00000801  88C3              mov bl,al
00000803  C6                db 0xc6
00000804  8D                db 0x8d
00000805  C3                ret
00000806  46                inc si
00000807  CC                int3
00000808  86C4              xchg al,ah
0000080A  66CC              o32 int3
0000080C  89EB              mov bx,bp
0000080E  EC                in al,dx
0000080F  88C3              mov bl,al
00000811  56                push si
00000812  C6                db 0xc6
00000813  89C3              mov bx,ax
00000815  C701188B          mov word [bx+di],0x8b18
00000819  C44601            les ax,word [bp+0x1]
0000081C  1885C456          sbb [di+0x56c4],al
00000820  C6                db 0xc6
00000821  CC                int3
00000822  93                xchg ax,bx
00000823  C3                ret
00000824  660318            add ebx,[bx+si]
00000827  85C3              test bx,ax
00000829  C7                db 0xc7
0000082A  C8021889          enter word 0x1802,byte 0x89
0000082E  C3                ret
0000082F  56                push si
00000830  CC                int3
00000831  85C3              test bx,ax
00000833  46                inc si
00000834  C9                leave
00000835  C7                db 0xc7
00000836  CC                int3
00000837  93                xchg ax,bx
00000838  C3                ret
00000839  56                push si
0000083A  C8021886          enter word 0x1802,byte 0x86
0000083E  C3                ret
0000083F  C7                db 0xc7
00000840  CC                int3
00000841  8CC3              mov bx,es
00000843  C7                db 0xc7
00000844  CAC7CC            retf word 0xccc7
00000847  85C4              test sp,ax
00000849  56                push si
0000084A  CC                int3
0000084B  8AEB              mov ch,bl
0000084D  C588C376          lds cx,word [bx+si+0x76c3]
00000851  CC                int3
00000852  87C4              xchg ax,sp
00000854  46                inc si
00000855  0118              add [bx+si],bx
00000857  8AC3              mov al,bl
00000859  56                push si
0000085A  D885C366          fadd dword [di+0x66c3]
0000085E  D889EBC7          fmul dword [bx+di-0x3815]
00000862  D887C456          fadd dword [bx+0x56c4]
00000866  CAC7CC            retf word 0xccc7
00000869  87C3              xchg ax,bx
0000086B  C7                db 0xc7
0000086C  CC                int3
0000086D  8CC3              mov bx,es
0000086F  56                push si
00000870  C8011883          enter word 0x1801,byte 0x83
00000874  C3                ret
00000875  56                push si
00000876  C60218            mov byte [bp+si],0x18
00000879  87EB              xchg bp,bx
0000087B  EC                in al,dx
0000087C  C7C686C4          mov si,0xc486
00000880  76CC              jna 0x84e
00000882  87C3              xchg ax,bx
00000884  C702188A          mov word [bp+si],0x8a18
00000888  C446CB            les ax,word [bp-0x35]
0000088B  0118              add [bx+si],bx
0000088D  84C3              test bl,al
0000088F  660118            add [bx+si],ebx
00000892  88EB              mov bl,ch
00000894  EC                in al,dx
00000895  C7                db 0xc7
00000896  C8011884          enter word 0x1801,byte 0x84
0000089A  C3                ret
0000089B  66                o32
0000089C  C6                db 0xc6
0000089D  88C4              mov ah,al
0000089F  46                inc si
000008A0  CA0118            retf word 0x1801
000008A3  89C4              mov sp,ax
000008A5  46                inc si
000008A6  CC                int3
000008A7  86C3              xchg al,bl
000008A9  66CC              o32 int3
000008AB  89EB              mov bx,bp
000008AD  EC                in al,dx
000008AE  CACC86            retf word 0x86cc
000008B1  C3                ret
000008B2  660218            o32 add bl,[bx+si]
000008B5  86C4              xchg al,ah
000008B7  46                inc si
000008B8  CC                int3
000008B9  8BC3              mov ax,bx
000008BB  46                inc si
000008BC  CC                int3
000008BD  86C3              xchg al,bl
000008BF  56                push si
000008C0  CACC89            retf word 0x89cc
000008C3  EBEC              jmp 0x8b1
000008C5  C7011885          mov word [bx+di],0x8518
000008C9  C4                db 0xc4
000008CA  C7                db 0xc7
000008CB  C9                leave
000008CC  46                inc si
000008CD  C8021885          enter word 0x1802,byte 0x85
000008D1  C3                ret
000008D2  C7                db 0xc7
000008D3  CC                int3
000008D4  8CC3              mov bx,es
000008D6  46                inc si
000008D7  CC                int3
000008D8  86C3              xchg al,bl
000008DA  66                o32
000008DB  C6                db 0xc6
000008DC  D888C3EC          fmul dword [bx+si-0x133d]
000008E0  C687C376CC        mov byte [bx+0x76c3],0xcc
000008E5  87C3              xchg ax,bx
000008E7  C7                db 0xc7
000008E8  C8CC8BC3          enter word 0x8bcc,byte 0xc3
000008EC  C7C687C3          mov si,0xc387
000008F0  C7C55602          mov bp,0x256
000008F4  1881ED84          sbb [bx+di-0x7b13],al
000008F8  C3                ret
000008F9  EC                in al,dx
000008FA  C787C356CC89      mov word [bx+0x56c3],0x89cc
00000900  C3                ret
00000901  46                inc si
00000902  CC                int3
00000903  8BC3              mov ax,bx
00000905  C7                db 0xc7
00000906  CB                retf
00000907  CC                int3
00000908  86C3              xchg al,bl
0000090A  66C60218          o32 mov byte [bp+si],0x18
0000090E  81EE84C4          sub si,0xc484
00000912  EC                in al,dx
00000913  CB                retf
00000914  C686C376CC        mov byte [bp+0x76c3],0xcc
00000919  87C3              xchg ax,bx
0000091B  C7C68CC4          mov si,0xc48c
0000091F  C7                db 0xc7
00000920  CAC7D8            retf word 0xd8c7
00000923  85C4              test sp,ax
00000925  76CC              jna 0x8f3
00000927  83EF84            sub di,0xffffffffffffff84
0000092A  C446CA            les ax,word [bp-0x36]
0000092D  0218              add bl,[bx+si]
0000092F  83C356            add bx,0x56
00000932  C9                leave
00000933  C7                db 0xc7
00000934  CC                int3
00000935  87C3              xchg ax,bx
00000937  C7                db 0xc7
00000938  CA0218            retf word 0x1802
0000093B  89C4              mov sp,ax
0000093D  46                inc si
0000093E  C8011884          enter word 0x1801,byte 0x84
00000942  C3                ret
00000943  76D8              jna 0x91d
00000945  83E784            and di,0xffffffffffffff84
00000948  C4                db 0xc4
00000949  C7                db 0xc7
0000094A  EC                in al,dx
0000094B  C7011884          mov word [bx+di],0x8418
0000094F  C3                ret
00000950  76CC              jna 0x91e
00000952  87C3              xchg ax,bx
00000954  C702188A          mov word [bp+si],0x8a18
00000958  C3                ret
00000959  46                inc si
0000095A  0118              add [bx+si],bx
0000095C  85C3              test bx,ax
0000095E  66CACC83          retfd word 0x83cc
00000962  E884C3            call 0xcce9
00000965  EC                in al,dx
00000966  C7C686C3          mov si,0xc386
0000096A  C556C8            lds dx,word [bp-0x38]
0000096D  0218              add bl,[bx+si]
0000096F  85C3              test bx,ax
00000971  C7                db 0xc7
00000972  CC                int3
00000973  8CC3              mov bx,es
00000975  C7                db 0xc7
00000976  CC                int3
00000977  87C3              xchg ax,bx
00000979  C566CC            lds sp,word [bp-0x34]
0000097C  88C3              mov bl,al
0000097E  C7                db 0xc7
0000097F  C8C7D885          enter word 0xd8c7,byte 0x85
00000983  C3                ret
00000984  660118            add [bx+si],ebx
00000987  87C4              xchg ax,sp
00000989  C7                db 0xc7
0000098A  CC                int3
0000098B  8CC3              mov bx,es
0000098D  C7                db 0xc7
0000098E  CC                int3
0000098F  87C3              xchg ax,bx
00000991  56                push si
00000992  C8C70218          enter word 0x2c7,byte 0x18
00000996  86C3              xchg al,bl
00000998  EC                in al,dx
00000999  C7021884          mov word [bp+si],0x8418
0000099D  C3                ret
0000099E  66CC              o32 int3
000009A0  88C4              mov ah,al
000009A2  46                inc si
000009A3  C6                db 0xc6
000009A4  8BC3              mov ax,bx
000009A6  C7                db 0xc7
000009A7  CB                retf
000009A8  0218              add bl,[bx+si]
000009AA  84C4              test ah,al
000009AC  C7C54602          mov bp,0x246
000009B0  1887C3EC          sbb [bx-0x133d],al
000009B4  C687C37603        mov byte [bx+0x76c3],0x3
000009B9  1884C346          sbb [si+0x46c3],al
000009BD  C8011889          enter word 0x1801,byte 0x89
000009C1  C3                ret
000009C2  C7                db 0xc7
000009C3  C8011885          enter word 0x1801,byte 0x85
000009C7  C3                ret
000009C8  66                o32
000009C9  C5                db 0xc5
000009CA  C7                db 0xc7
000009CB  88C3              mov bl,al
000009CD  C7                db 0xc7
000009CE  C9                leave
000009CF  4B                dec bx
000009D0  85C3              test bx,ax
000009D2  C7                db 0xc7
000009D3  EC                in al,dx
000009D4  C7                db 0xc7
000009D5  CA0218            retf word 0x1802
000009D8  86C3              xchg al,bl
000009DA  C7                db 0xc7
000009DB  CAD88B            retf word 0x8bd8
000009DE  C3                ret
000009DF  C7                db 0xc7
000009E0  CC                int3
000009E1  87C4              xchg ax,sp
000009E3  76CC              jna 0x9b1
000009E5  88C3              mov bl,al
000009E7  C7                db 0xc7
000009E8  C8CB86C4          enter word 0x86cb,byte 0xc4
000009EC  C7                db 0xc7
000009ED  EC                in al,dx
000009EE  46                inc si
000009EF  CC                int3
000009F0  88C3              mov bl,al
000009F2  46                inc si
000009F3  CC                int3
000009F4  8BC4              mov ax,sp
000009F6  C9                leave
000009F7  CC                int3
000009F8  87C4              xchg ax,sp
000009FA  7603              jna 0x9ff
000009FC  1885C346          sbb [di+0x46c3],al
00000A00  CC                int3
00000A01  86C3              xchg al,bl
00000A03  C7                db 0xc7
00000A04  EC                in al,dx
00000A05  46                inc si
00000A06  CC                int3
00000A07  88C3              mov bl,al
00000A09  C7                db 0xc7
00000A0A  D88CC3C7          fmul dword [si-0x383d]
00000A0E  CC                int3
00000A0F  0118              add [bx+si],bx
00000A11  85C3              test bx,ax
00000A13  66CA0218          retfd word 0x1802
00000A17  86C4              xchg al,ah
00000A19  C7                db 0xc7
00000A1A  CC                int3
00000A1B  87C3              xchg ax,bx
00000A1D  46                inc si
00000A1E  EC                in al,dx
00000A1F  C7011887          mov word [bx+di],0x8718
00000A23  C3                ret
00000A24  C7                db 0xc7
00000A25  CC                int3
00000A26  8CC4              mov sp,es
00000A28  C7                db 0xc7
00000A29  CC                int3
00000A2A  87C3              xchg ax,bx
00000A2C  0507CC            add ax,0xcc07
00000A2F  91                xchg ax,cx
00000A30  C3                ret
00000A31  46                inc si
00000A32  EC                in al,dx
00000A33  C7                db 0xc7
00000A34  C8021885          enter word 0x1802,byte 0x85
00000A38  C3                ret
00000A39  D88DC4C7          fmul dword [di-0x383c]
00000A3D  CC                int3
00000A3E  87C3              xchg ax,bx
00000A40  06                push es
00000A41  07                pop es
00000A42  60                pusha
00000A43  41                inc cx
00000A44  50                push ax
00000A45  C260C2            ret word 0xc260
00000A48  C181C376CC        rol word [bx+di+0x76c3],byte 0xcc
00000A4D  87C4              xchg ax,sp
00000A4F  CC                int3
00000A50  8D                db 0x8d
00000A51  C3                ret
00000A52  C8C70118          enter word 0x1c7,byte 0x18
00000A56  85C3              test bx,ax
00000A58  0507CC            add ax,0xcc07
00000A5B  91                xchg ax,cx
00000A5C  C3                ret
00000A5D  56                push si
00000A5E  C801188F          enter word 0x1801,byte 0x8f
00000A62  C486C3C7          les ax,word [bp-0x383d]
00000A66  0318              add bx,[bx+si]
00000A68  84C3              test bl,al
00000A6A  050702            add ax,0x207
00000A6D  1888C4C7          sbb [bx+si-0x383c],cl
00000A71  D884C376          fadd dword [si+0x76c3]
00000A75  40                inc ax
00000A76  C2C1C2            ret word 0xc2c1
00000A79  40                inc ax
00000A7A  41                inc cx
00000A7B  40                inc ax
00000A7C  C24082            ret word 0x8240
00000A7F  C486C3CC          les ax,word [bp-0x333d]
00000A83  88C4              mov ah,al
00000A85  76C8              jna 0xa4f
00000A87  0118              add [bx+si],bx
00000A89  89C3              mov bx,ax
00000A8B  C7011883          mov word [bx+di],0x8318
00000A8F  C3                ret
00000A90  C7                db 0xc7
00000A91  EC                in al,dx
00000A92  56                push si
00000A93  C801188D          enter word 0x1801,byte 0x8d
00000A97  C3                ret
00000A98  86C3              xchg al,bl
00000A9A  CC                int3
00000A9B  88C3              mov bl,al
00000A9D  0507CC            add ax,0xcc07
00000AA0  8AC3              mov al,bl
00000AA2  C7C683C4          mov si,0xc483
00000AA6  C7C576D8          mov bp,0xd876
00000AAA  CB                retf
00000AAB  C7011889          mov word [bx+di],0x8918
00000AAF  C4                db 0xc4
00000AB0  C7                db 0xc7
00000AB1  CC                int3
00000AB2  85C4              test sp,ax
00000AB4  0118              add [bx+si],bx
00000AB6  87C3              xchg ax,bx
00000AB8  0507CC            add ax,0xcc07
00000ABB  8AC3              mov al,bl
00000ABD  C7                db 0xc7
00000ABE  C8C7D881          enter word 0xd8c7,byte 0x81
00000AC2  C3                ret
00000AC3  0A07              or al,[bx]
00000AC5  C8C70118          enter word 0x1c7,byte 0x18
00000AC9  86C4              xchg al,ah
00000ACB  C7                db 0xc7
00000ACC  CC                int3
00000ACD  85C4              test sp,ax
00000ACF  89C3              mov bx,ax
00000AD1  0507CC            add ax,0xcc07
00000AD4  8AC4              mov al,ah
00000AD6  0907              or [bx],ax
00000AD8  C9                leave
00000AD9  C7                db 0xc7
00000ADA  C846CCC8          enter word 0xcc46,byte 0xc8
00000ADE  46                inc si
00000ADF  D887C3C7          fadd dword [bx-0x383d]
00000AE3  C8D88EC4          enter word 0x8ed8,byte 0xc4
00000AE7  C7C57603          mov bp,0x376
00000AEB  1886C409          sbb [bp+0x9c4],al
00000AEF  07                pop es
00000AF0  CC                int3
00000AF1  82                db 0x82
00000AF2  C4                db 0xc4
00000AF3  CC                int3
00000AF4  C8D846C8          enter word 0x46d8,byte 0xc8
00000AF8  0118              add [bx+si],bx
00000AFA  85C3              test bx,ax
00000AFC  C7                db 0xc7
00000AFD  CC                int3
00000AFE  8FC3              pop bx
00000B00  76C8              jna 0xaca
00000B02  C7021887          mov word [bp+si],0x8718
00000B06  C3                ret
00000B07  07                pop es
00000B08  07                pop es
00000B09  C8011886          enter word 0x1801,byte 0x86
00000B0D  C45686            les dx,word [bp-0x7a]
00000B10  C3                ret
00000B11  46                inc si
00000B12  0318              add bx,[bx+si]
00000B14  8BC4              mov ax,sp
00000B16  C57601            lds si,word [bp+0x1]
00000B19  1889C305          sbb [bx+di+0x5c3],cl
00000B1D  07                pop es
00000B1E  C8C7CB02          enter word 0xcbc7,byte 0x2
00000B22  1886C346          sbb [bp+0x46c3],al
00000B26  D885C4C7          fadd dword [di-0x383c]
00000B2A  C802188C          enter word 0x1802,byte 0x8c
00000B2E  C3                ret
00000B2F  0507CC            add ax,0xcc07
00000B32  8AC3              mov al,bl
00000B34  56                push si
00000B35  C5                db 0xc5
00000B36  C7                db 0xc7
00000B37  CC                int3
00000B38  81C3CC89          add bx,0x89cc
00000B3C  C3                ret
00000B3D  C6460118          mov byte [bp+0x1],0x18
00000B41  83C346            add bx,0x46
00000B44  CC                int3
00000B45  8EC4              mov es,sp
00000B47  76C6              jna 0xb0f
00000B49  C8021887          enter word 0x1802,byte 0x87
00000B4D  C3                ret
00000B4E  56                push si
00000B4F  0218              add bl,[bx+si]
00000B51  8D                db 0x8d
00000B52  C3                ret
00000B53  C7C6C801          mov si,0x1c8
00000B57  1882C3C7          sbb [bp+si-0x383d],al
00000B5B  0118              add [bx+si],bx
00000B5D  88C4              mov ah,al
00000B5F  45                inc bp
00000B60  0223              add ah,[bp+di]
00000B62  C7                db 0xc7
00000B63  CC                int3
00000B64  46                inc si
00000B65  CC                int3
00000B66  56                push si
00000B67  0118              add [bx+si],bx
00000B69  87E1              xchg sp,cx
00000B6B  6650              push eax
00000B6D  C240C2            ret word 0xc240
00000B70  40                inc ax
00000B71  C2C1C2            ret word 0xc2c1
00000B74  50                push ax
00000B75  81C346C8          add bx,0xc846
00000B79  0507CC            add ax,0xcc07
00000B7C  89C3              mov bx,ax
00000B7E  46                inc si
00000B7F  0223              add ah,[bp+di]
00000B81  C782C466CC87      mov word [bp+si+0x66c4],0x87cc
00000B87  E1C7              loope 0xb50
00000B89  C8CCCAC7          enter word 0xcacc,byte 0xc7
00000B8D  D88FC4CC          fmul dword [bx-0x333c]
00000B91  C80507C8          enter word 0x705,byte 0xc8
00000B95  C7021885          mov word [bp+si],0x8518
00000B99  C3                ret
00000B9A  C7                db 0xc7
00000B9B  C9                leave
00000B9C  C7                db 0xc7
00000B9D  EAE9D9D882        jmp word 0x82d8:word 0xd9e9
00000BA2  C3                ret
00000BA3  46                inc si
00000BA4  CA0218            retf word 0x1802
00000BA7  85E1              test cx,sp
00000BA9  76CC              jna 0xb77
00000BAB  87DA              xchg bx,dx
00000BAD  DEC6              faddp st6
00000BAF  87C3              xchg ax,bx
00000BB1  46                inc si
00000BB2  C9                leave
00000BB3  56                push si
00000BB4  CAC7CC            retf word 0xccc7
00000BB7  85C4              test sp,ax
00000BB9  45                inc bp
00000BBA  56                push si
00000BBB  CC                int3
00000BBC  8482C346          test [bp+si+0x46c3],al
00000BC0  0118              add [bx+si],bx
00000BC2  86E1              xchg ah,cl
00000BC4  C7C566CC          mov bp,0xcc66
00000BC8  87DB              xchg bx,bx
00000BCA  DF4601            fild word [bp+0x1]
00000BCD  1884C409          sbb [si+0x9c4],al
00000BD1  07                pop es
00000BD2  D881C4C6          fadd dword [bx+di-0x393c]
00000BD6  C7                db 0xc7
00000BD7  C856CC85          enter word 0xcc56,byte 0x85
00000BDB  82                db 0x82
00000BDC  C3                ret
00000BDD  46                inc si
00000BDE  CC                int3
00000BDF  87C4              xchg ax,sp
00000BE1  0507CC            add ax,0xcc07
00000BE4  87DB              xchg bx,bx
00000BE6  DF46CC            fild word [bp-0x34]
00000BE9  87C3              xchg ax,bx
00000BEB  06                push es
00000BEC  07                pop es
00000BED  CC                int3
00000BEE  C681C4C866        mov byte [bx+di-0x373c],0x66
00000BF3  C8021883          enter word 0x1802,byte 0x83
00000BF7  82                db 0x82
00000BF8  C3                ret
00000BF9  46                inc si
00000BFA  CC                int3
00000BFB  87C4              xchg ax,sp
00000BFD  06                push es
00000BFE  07                pop es
00000BFF  0118              add [bx+si],bx
00000C01  85DB              test bx,bx
00000C03  DFC7              ffreep st7
00000C05  C8CC0118          enter word 0x1cc,byte 0x18
00000C09  85C4              test sp,ax
00000C0B  06                push es
00000C0C  07                pop es
00000C0D  CA0907            retf word 0x709
00000C10  C68482C346        mov byte [si-0x3c7e],0x46
00000C15  0218              add bl,[bx+si]
00000C17  85C3              test bx,ax
00000C19  76CA              jna 0xbe5
00000C1B  0118              add [bx+si],bx
00000C1D  86DB              xchg bl,bl
00000C1F  DF46CC            fild word [bp-0x34]
00000C22  88C4              mov ah,al
00000C24  46                inc si
00000C25  C9                leave
00000C26  07                pop es
00000C27  07                pop es
00000C28  CC                int3
00000C29  0507C6            add ax,0xc607
00000C2C  8382C346CC        add word [bp+si+0x46c3],0xffffffffffffffcc
00000C31  0218              add bl,[bx+si]
00000C33  84C3              test bl,al
00000C35  0507CC            add ax,0xcc07
00000C38  87DD              xchg bx,bp
00000C3A  E056              loopne 0xc92
00000C3C  CC                int3
00000C3D  88DB              mov bl,bl
00000C3F  DF060701          fild word [0x107]
00000C43  1882C456          sbb [bp+si+0x56c4],al
00000C47  C9                leave
00000C48  CC                int3
00000C49  0118              add [bx+si],bx
00000C4B  8182C366CC85      add word [bp+si+0x66c3],0x85cc
00000C51  C3                ret
00000C52  06                push es
00000C53  07                pop es
00000C54  0218              add bl,[bx+si]
00000C56  85DB              test bx,bx
00000C58  DF46C8            fild word [bp-0x38]
00000C5B  0119              add [bx+di],bx
00000C5D  D885DCDF          fadd dword [di-0x2024]
00000C61  66CAC502          retfd word 0x2c5
00000C65  1883C456          sbb [bp+di+0x56c4],al
00000C69  CC                int3
00000C6A  8382C456CC        add word [bp+si+0x56c4],0xffffffffffffffcc
00000C6F  86C3              xchg al,bl
00000C71  76CA              jna 0xc3d
00000C73  C7011886          mov word [bx+di],0x8618
00000C77  DBDF              fcmovnu st7
00000C79  66D886DDE0        o32 fadd dword [bp-0x1f23]
00000C7E  C7                db 0xc7
00000C7F  C9                leave
00000C80  46                inc si
00000C81  CC                int3
00000C82  88C3              mov bl,al
00000C84  C7                db 0xc7
00000C85  C8CC0118          enter word 0x1cc,byte 0x18
00000C89  8182C3C7C802      add word [bp+si-0x383d],0x2c8
00000C8F  1885C405          sbb [di+0x5c4],al
00000C93  07                pop es
00000C94  CC                int3
00000C95  88DB              mov bl,bl
00000C97  DF                db 0xdf
00000C98  C9                leave
00000C99  46                inc si
00000C9A  CAC701            retf word 0x1c7
00000C9D  1885DBDF          sbb [di-0x2025],al
00000CA1  76D8              jna 0xc7b
00000CA3  86C3              xchg al,bl
00000CA5  46                inc si
00000CA6  0118              add [bx+si],bx
00000CA8  82                db 0x82
00000CA9  82                db 0x82
00000CAA  C3                ret
00000CAB  46                inc si
00000CAC  0118              add [bx+si],bx
00000CAE  86C3              xchg al,bl
00000CB0  06                push es
00000CB1  07                pop es
00000CB2  CC                int3
00000CB3  87DD              xchg bx,bp
00000CB5  E066              loopne 0xd1d
00000CB7  CC                int3
00000CB8  0218              add bl,[bx+si]
00000CBA  84DC              test ah,bl
00000CBC  DF66C8            fbld tword [bp-0x38]
00000CBF  C7011884          mov word [bx+di],0x8418
00000CC3  C3                ret
00000CC4  C7                db 0xc7
00000CC5  CC                int3
00000CC6  8482C3C7          test [bp+si-0x383d],al
00000CCA  CC                int3
00000CCB  83ED84            sub bp,0xffffffffffffff84
00000CCE  C3                ret
00000CCF  06                push es
00000CD0  07                pop es
00000CD1  CC                int3
00000CD2  88DB              mov bl,bl
00000CD4  66CC              o32 int3
00000CD6  87DB              xchg bx,bx
00000CD8  E076              loopne 0xd50
00000CDA  CC                int3
00000CDB  86C4              xchg al,ah
00000CDD  C7                db 0xc7
00000CDE  CC                int3
00000CDF  8482C346          test [bp+si+0x46c3],al
00000CE3  0118              add [bx+si],bx
00000CE5  81EE84C3          sub si,0xc384
00000CE9  46                inc si
00000CEA  C9                leave
00000CEB  660218            o32 add bl,[bx+si]
00000CEE  86DB              xchg bl,bl
00000CF0  66                o32
00000CF1  D9                db 0xd9
00000CF2  D886DBDE          fadd dword [bp-0x2125]
00000CF6  66CC              o32 int3
00000CF8  87C4              xchg ax,sp
00000CFA  C7011883          mov word [bx+di],0x8318
00000CFE  82                db 0x82
00000CFF  C3                ret
00000D00  46                inc si
00000D01  CC                int3
00000D02  82                db 0x82
00000D03  EF                out dx,ax
00000D04  84C4              test ah,al
00000D06  76C8              jna 0xcd0
00000D08  C7                db 0xc7
00000D09  CC                int3
00000D0A  88DB              mov bl,bl
00000D0C  E056              loopne 0xd64
00000D0E  C8021884          enter word 0x1802,byte 0x84
00000D12  DBDF              fcmovnu st7
00000D14  C7                db 0xc7
00000D15  C9                leave
00000D16  46                inc si
00000D17  CC                int3
00000D18  87C3              xchg ax,bx
00000D1A  C78582C346C8      mov word [di-0x3c7e],0xc846
00000D20  CC                int3
00000D21  81E784C4          and di,0xc484
00000D25  06                push es
00000D26  07                pop es
00000D27  89DB              mov bx,bx
00000D29  DE76D8            fidiv word [bp-0x28]
00000D2C  85DB              test bx,bx
00000D2E  DF66CA            fbld tword [bp-0x36]
00000D31  D886C3C7          fadd dword [bp-0x383d]
00000D35  CC                int3
00000D36  8482C356          test [bp+si+0x56c3],al
00000D3A  0118              add [bx+si],bx
00000D3C  E884C3            call 0xd0c3
00000D3F  07                pop es
00000D40  07                pop es
00000D41  88DB              mov bl,bl
00000D43  DF66CC            fbld tword [bp-0x34]
00000D46  86DB              xchg bl,bl
00000D48  DF76C8            fbstp tword [bp-0x38]
00000D4B  0118              add [bx+si],bx
00000D4D  84C3              test bl,al
00000D4F  C7                db 0xc7
00000D50  CAC701            retf word 0x1c7
00000D53  188182C3          sbb [bx+di-0x3c7e],al
00000D57  56                push si
00000D58  CC                int3
00000D59  86C3              xchg al,bl
00000D5B  07                pop es
00000D5C  07                pop es
00000D5D  0318              add bx,[bx+si]
00000D5F  84DB              test bl,bl
00000D61  DF56CA            fist word [bp-0x36]
00000D64  CC                int3
00000D65  86DB              xchg bl,bl
00000D67  DF66CC            fbld tword [bp-0x34]
00000D6A  87C3              xchg ax,bx
00000D6C  C7                db 0xc7
00000D6D  CC                int3
00000D6E  D88382C3          fadd dword [bp+di-0x3c7e]
00000D72  46                inc si
00000D73  0318              add bx,[bx+si]
00000D75  84C3              test bl,al
00000D77  CA76C8            retf word 0xc876
00000D7A  0218              add bl,[bx+si]
00000D7C  86DB              xchg bl,bl
00000D7E  DF66CC            fbld tword [bp-0x34]
00000D81  86DB              xchg bl,bl
00000D83  DF66CC            fbld tword [bp-0x34]
00000D86  87C3              xchg ax,bx
00000D88  C7011883          mov word [bx+di],0x8318
00000D8C  82                db 0x82
00000D8D  C3                ret
00000D8E  46                inc si
00000D8F  0218              add bl,[bx+si]
00000D91  85C3              test bx,ax
00000D93  0507CC            add ax,0xcc07
00000D96  89DB              mov bx,bx
00000D98  DF                db 0xdf
00000D99  C9                leave
00000D9A  56                push si
00000D9B  CC                int3
00000D9C  86DB              xchg bl,bl
00000D9E  DF                db 0xdf
00000D9F  C9                leave
00000DA0  56                push si
00000DA1  CAC701            retf word 0x1c7
00000DA4  1884C3C7          sbb [si-0x383d],al
00000DA8  CC                int3
00000DA9  8482C356          test [bp+si+0x56c3],al
00000DAD  D886C366          fadd dword [bp+0x66c3]
00000DB1  C9                leave
00000DB2  C7                db 0xc7
00000DB3  CC                int3
00000DB4  89DB              mov bx,bx
00000DB6  DF56CC            fist word [bp-0x34]
00000DB9  87DB              xchg bx,bx
00000DBB  DF6601            fbld tword [bp+0x1]
00000DBE  1886C346          sbb [bp+0x46c3],al
00000DC2  CC                int3
00000DC3  8382C346CC        add word [bp+si+0x46c3],0xffffffffffffffcc
00000DC8  87C4              xchg ax,sp
00000DCA  0507CC            add ax,0xcc07
00000DCD  89DB              mov bx,bx
00000DCF  DF46EC            fild word [bp-0x14]
00000DD2  C7                db 0xc7
00000DD3  D9                db 0xd9
00000DD4  D885DBDF          fadd dword [di-0x2025]
00000DD8  66CC              o32 int3
00000DDA  87C4              xchg ax,sp
00000DDC  C7                db 0xc7
00000DDD  CA0118            retf word 0x1801
00000DE0  82                db 0x82
00000DE1  82                db 0x82
00000DE2  C3                ret
00000DE3  C7                db 0xc7
00000DE4  CA0218            retf word 0x1802
00000DE7  85C3              test bx,ax
00000DE9  050701            add ax,0x107
00000DEC  1888DBDF          sbb [bx+si-0x2025],cl
00000DF0  46                inc si
00000DF1  EC                in al,dx
00000DF2  C7                db 0xc7
00000DF3  C8011884          enter word 0x1801,byte 0x84
00000DF7  DBDF              fcmovnu st7
00000DF9  66C8021884        enterd word 0x1802,byte 0x84
00000DFE  C446CC            les ax,word [bp-0x34]
00000E01  8382C34601        add word [bp+si+0x46c3],0x1
00000E06  1886C3C8          sbb [bp-0x373d],al
00000E0A  CC                int3
00000E0B  56                push si
00000E0C  C8C70218          enter word 0x2c7,byte 0x18
00000E10  86DB              xchg bl,bl
00000E12  E046              loopne 0xe5a
00000E14  EC                in al,dx
00000E15  C7                db 0xc7
00000E16  CC                int3
00000E17  86DB              xchg bl,bl
00000E19  DF76C5            fbstp tword [bp-0x3b]
00000E1C  D885C3C7          fadd dword [di-0x383d]
00000E20  CC                int3
00000E21  8482C346          test [bp+si+0x46c3],al
00000E25  D887C4CC          fadd dword [bx-0x333c]
00000E29  82                db 0x82
00000E2A  C3                ret
00000E2B  46                inc si
00000E2C  D889DBDE          fmul dword [bx+di-0x2125]
00000E30  46                inc si
00000E31  EC                in al,dx
00000E32  CC                int3
00000E33  87DB              xchg bx,bx
00000E35  E076              loopne 0xead
00000E37  CC                int3
00000E38  86C3              xchg al,bl
00000E3A  CC                int3
00000E3B  C7                db 0xc7
00000E3C  CC                int3
00000E3D  8382C45601        add word [bp+si+0x56c4],0x1
00000E42  188AC3C7          sbb [bp+si-0x383d],cl
00000E46  CC                int3
00000E47  89DB              mov bx,bx
00000E49  DF                db 0xdf
00000E4A  C9                leave
00000E4B  C7                db 0xc7
00000E4C  EC                in al,dx
00000E4D  0218              add bl,[bx+si]
00000E4F  85DB              test bx,bx
00000E51  DE05              fiadd word [di]
00000E53  07                pop es
00000E54  0118              add [bx+si],bx
00000E56  84C3              test bl,al
00000E58  46                inc si
00000E59  CC                int3
00000E5A  8382C36640        add word [bp+si+0x66c3],0x40
00000E5F  C2C1C2            ret word 0xc2c1
00000E62  50                push ax
00000E63  C2C181            ret word 0x81c1
00000E66  C3                ret
00000E67  46                inc si
00000E68  89DB              mov bx,bx
00000E6A  DF56CA            fist word [bp-0x36]
00000E6D  0218              add bl,[bx+si]
00000E6F  84DB              test bl,bl
00000E71  DF76CA            fbstp tword [bp-0x36]
00000E74  C7011883          mov word [bx+di],0x8318
00000E78  C3                ret
00000E79  C7                db 0xc7
00000E7A  CA0118            retf word 0x1801
00000E7D  82                db 0x82
00000E7E  82                db 0x82
00000E7F  C3                ret
00000E80  C7                db 0xc7
00000E81  CC                int3
00000E82  C8021889          enter word 0x1802,byte 0x89
00000E86  C4                db 0xc4
00000E87  C7                db 0xc7
00000E88  C8041884          enter word 0x1804,byte 0x84
00000E8C  DBDF              fcmovnu st7
00000E8E  66CC              o32 int3
00000E90  86DB              xchg bl,bl
00000E92  DF76C5            fbstp tword [bp-0x3b]
00000E95  D885C346          fadd dword [di+0x46c3]
00000E99  CC                int3
00000E9A  8382C3C7C8        add word [bp+si-0x383d],0xffffffffffffffc8
00000E9F  46                inc si
00000EA0  0118              add [bx+si],bx
00000EA2  89DA              mov dx,bx
00000EA4  DFC7              ffreep st7
00000EA6  0218              add bl,[bx+si]
00000EA8  86DB              xchg bl,bl
00000EAA  DF66CC            fbld tword [bp-0x34]
00000EAD  86DB              xchg bl,bl
00000EAF  DF76CC            fbstp tword [bp-0x34]
00000EB2  86C4              xchg al,ah
00000EB4  C7                db 0xc7
00000EB5  CC                int3
00000EB6  C8D88282          enter word 0x82d8,byte 0x82
00000EBA  C45601            les dx,word [bp+0x1]
00000EBD  188ADCDF          sbb [bp+si-0x2024],cl
00000EC1  C7                db 0xc7
00000EC2  C8D887DB          enter word 0x87d8,byte 0xdb
00000EC6  DF56C6            fist word [bp-0x3a]
00000EC9  CC                int3
00000ECA  86DB              xchg bl,bl
00000ECC  DF05              fild word [di]
00000ECE  07                pop es
00000ECF  0118              add [bx+si],bx
00000ED1  84C3              test bl,al
00000ED3  46                inc si
00000ED4  D8C7              fadd st7
00000ED6  82                db 0x82
00000ED7  81C466CC          add sp,0xcc66
00000EDB  8BDB              mov bx,bx
00000EDD  DFC7              ffreep st7
00000EDF  CC                int3
00000EE0  88DB              mov bl,bl
00000EE2  DF6601            fbld tword [bp+0x1]
00000EE5  1885DBDF          sbb [di-0x2025],al
00000EE9  C9                leave
00000EEA  66C8C7D884        enterd word 0xd8c7,byte 0x84
00000EEF  C3                ret
00000EF0  56                push si
00000EF1  CAC7C6            retf word 0xc6c7
00000EF4  46                inc si
00000EF5  C56601            lds sp,word [bp+0x1]
00000EF8  1889DBDF          sbb [bx+di-0x2025],cl
00000EFC  C9                leave
00000EFD  CC                int3
00000EFE  88DB              mov bl,bl
00000F00  DF46C8            fild word [bp-0x38]
00000F03  0118              add [bx+si],bx
00000F05  86DB              xchg bl,bl
00000F07  DF56CC            fist word [bp-0x34]
00000F0A  C7C5D885          mov bp,0x85d8
00000F0E  C3                ret
00000F0F  46                inc si
00000F10  C55606            lds dx,word [bp+0x6]
00000F13  07                pop es
00000F14  C8CA0218          enter word 0x2ca,byte 0x18
00000F18  86DB              xchg bl,bl
00000F1A  E0C7              loopne 0xee3
00000F1C  CC                int3
00000F1D  88DB              mov bl,bl
00000F1F  DF76D8            fbstp tword [bp-0x28]
00000F22  85DB              test bx,bx
00000F24  DF5601            fist word [bp+0x1]
00000F27  1887C3C7          sbb [bx-0x383d],al
00000F2B  C8660807          enter word 0x866,byte 0x7
00000F2F  0118              add [bx+si],bx
00000F31  87DB              xchg bx,bx
00000F33  DEC7              faddp st7
00000F35  0218              add bl,[bx+si]
00000F37  86DB              xchg bl,bl
00000F39  DF66C6            fbld tword [bp-0x3a]
00000F3C  86DB              xchg bl,bl
00000F3E  DF46C1            fild word [bp-0x3f]
00000F41  41                inc cx
00000F42  40                inc ax
00000F43  C25081            ret word 0x8150
00000F46  C3                ret
00000F47  46                inc si
00000F48  CC                int3
00000F49  81C3C506          add bx,0x6c5
00000F4D  07                pop es
00000F4E  CC                int3
00000F4F  8ADB              mov bl,bl
00000F51  DFC7              ffreep st7
00000F53  C6                db 0xc6
00000F54  88DB              mov bl,bl
00000F56  DFC7              ffreep st7
00000F58  C9                leave
00000F59  C6                db 0xc6
00000F5A  C8C686DB          enter word 0x86c6,byte 0xdb
00000F5E  DF5601            fist word [bp+0x1]
00000F61  1887C4CC          sbb [bx-0x333c],al
00000F65  83C4C7            add sp,0xffffffffffffffc7
00000F68  C40607CC          les ax,word [0xcc07]
00000F6C  89DB              mov bx,bx
00000F6E  DFC7              ffreep st7
00000F70  C8021885          enter word 0x1802,byte 0x85
00000F74  DBDF              fcmovnu st7
00000F76  56                push si
00000F77  45                inc bp
00000F78  86DB              xchg bl,bl
00000F7A  DF5650            fist word [bp+0x50]
00000F7D  C240C2            ret word 0xc240
00000F80  40                inc ax
00000F81  87C3              xchg ax,bx
00000F83  07                pop es
00000F84  07                pop es
00000F85  0318              add bx,[bx+si]
00000F87  85DB              test bx,bx
00000F89  DF                db 0xdf
00000F8A  C9                leave
00000F8B  C7                db 0xc7
00000F8C  D887DBDF          fadd dword [bx-0x2025]
00000F90  56                push si
00000F91  4B                dec bx
00000F92  86DB              xchg bl,bl
00000F94  DF46C8            fild word [bp-0x38]
00000F97  0118              add [bx+si],bx
00000F99  8EC3              mov es,bx
00000F9B  76CC              jna 0xf69
00000F9D  C8CC0118          enter word 0x1cc,byte 0x18
00000FA1  87DB              xchg bx,bx
00000FA3  DFC7              ffreep st7
00000FA5  CC                int3
00000FA6  88DB              mov bl,bl
00000FA8  DF56C6            fist word [bp-0x3a]
00000FAB  87DB              xchg bx,bx
00000FAD  DF66C1            fbld tword [bp-0x3f]
00000FB0  C240C2            ret word 0xc240
00000FB3  C1C2C1            rol dx,byte 0xc1
00000FB6  87C4              xchg ax,sp
00000FB8  06                push es
00000FB9  07                pop es
00000FBA  CC                int3
00000FBB  89DD              mov bp,bx
00000FBD  E0C7              loopne 0xf86
00000FBF  0118              add [bx+si],bx
00000FC1  87DB              xchg bx,bx
00000FC3  DF                db 0xdf
00000FC4  C9                leave
00000FC5  46                inc si
00000FC6  0118              add [bx+si],bx
00000FC8  86DB              xchg bl,bl
00000FCA  DFC7              ffreep st7
00000FCC  CC                int3
00000FCD  CAD901            retf word 0x1d9
00000FD0  188DC306          sbb [di+0x6c3],cl
00000FD4  07                pop es
00000FD5  CC                int3
00000FD6  95                xchg ax,bp
00000FD7  DBDF              fcmovnu st7
00000FD9  660118            add [bx+si],ebx
00000FDC  85DB              test bx,bx
00000FDE  DF56C2            fist word [bp-0x3e]
00000FE1  40                inc ax
00000FE2  C250C2            ret word 0xc250
00000FE5  C187C3C7C5        rol word [bx-0x383d],byte 0xc5
00000FEA  76CC              jna 0xfb8
00000FEC  40                inc ax
00000FED  C260C2            ret word 0xc260
00000FF0  40                inc ax
00000FF1  C250C2            ret word 0xc250
00000FF4  C1C2C1            rol dx,byte 0xc1
00000FF7  C2C181            ret word 0x81c1
00000FFA  DBDF              fcmovnu st7
00000FFC  66C686DBDF46      o32 mov byte [bp-0x2025],0x46
00001002  C8D88FC3          enter word 0x8fd8,byte 0xc3
00001006  06                push es
00001007  07                pop es
00001008  96                xchg ax,si
00001009  DDDF              fstp st7
0000100B  46                inc si
0000100C  C6                db 0xc6
0000100D  CAD901            retf word 0x1d9
00001010  1884DDE0          sbb [si-0x1f23],al
00001014  CC                int3
00001015  C7C1C260          mov cx,0x60c2
00001019  41                inc cx
0000101A  40                inc ax
0000101B  87C3              xchg ax,bx
0000101D  07                pop es
0000101E  07                pop es
0000101F  0218              add bl,[bx+si]
00001021  86DA              xchg bl,dl
00001023  DE4602            fiadd word [bp+0x2]
00001026  1885C476          sbb [di+0x76c4],al
0000102A  C6                db 0xc6
0000102B  9BC3              wait ret
0000102D  C505              lds ax,word [di]
0000102F  07                pop es
00001030  CAC702            retf word 0x2c7
00001033  1885DBE0          sbb [di-0x1f25],al
00001037  660118            add [bx+si],ebx
0000103A  82                db 0x82
0000103B  C3                ret
0000103C  07                pop es
0000103D  07                pop es
0000103E  C1C240            rol dx,byte 0x40
00001041  41                inc cx
00001042  40                inc ax
00001043  C270C2            ret word 0xc270
00001046  C18BC30607        ror word [bp+di+0x6c3],byte 0x7
0000104B  CC                int3
0000104C  89DB              mov bx,bx
0000104E  DE05              fiadd word [di]
00001050  07                pop es
00001051  0118              add [bx+si],bx
00001053  C3                ret
00001054  06                push es
00001055  07                pop es
00001056  C8021898          enter word 0x1802,byte 0x98
0000105A  C3                ret
0000105B  07                pop es
0000105C  07                pop es
0000105D  0118              add [bx+si],bx
0000105F  87DB              xchg bx,bx
00001061  DFC7              ffreep st7
00001063  C9                leave
00001064  7601              jna 0x1067
00001066  18C7              sbb bh,al
00001068  CA66CA            retf word 0xca66
0000106B  C7C69AC3          mov si,0xc39a
0000106F  66C9              leaved
00001071  C7                db 0xc7
00001072  CC                int3
00001073  C8C788DB          enter word 0x88c7,byte 0xdb
00001077  DF0D              fisttp word [di]
00001079  07                pop es
0000107A  EC                in al,dx
0000107B  660218            o32 add bl,[bx+si]
0000107E  96                xchg ax,si
0000107F  C405              les ax,word [di]
00001081  07                pop es
00001082  5B                pop bx
00001083  0218              add bl,[bx+si]
00001085  85DB              test bx,bx
00001087  DF05              fild word [di]
00001089  07                pop es
0000108A  CC                int3
0000108B  06                push es
0000108C  07                pop es
0000108D  EC                in al,dx
0000108E  56                push si
0000108F  C6                db 0xc6
00001090  C846D895          enter word 0xd846,byte 0x95
00001094  C3                ret
00001095  76CC              jna 0x1063
00001097  8BDB              mov bx,bx
00001099  DF                db 0xdf
0000109A  C9                leave
0000109B  56                push si
0000109C  C8CCC806          enter word 0xc8cc,byte 0x6
000010A0  07                pop es
000010A1  EC                in al,dx
000010A2  66C8CACC66        enterd word 0xccca,byte 0x66
000010A7  0118              add [bx+si],bx
000010A9  90                nop
000010AA  C3                ret
000010AB  06                push es
000010AC  07                pop es
000010AD  8ADB              mov bl,bl
000010AF  E005              loopne 0x10b6
000010B1  07                pop es
000010B2  0118              add [bx+si],bx
000010B4  C3                ret
000010B5  C7                db 0xc7
000010B6  C846EC56          enter word 0xec46,byte 0x56
000010BA  C8CCC7D9          enter word 0xc7cc,byte 0xd9
000010BE  46                inc si
000010BF  0118              add [bx+si],bx
000010C1  93                xchg ax,bx
000010C2  C3                ret
000010C3  76CA              jna 0x108f
000010C5  CC                int3
000010C6  0318              add bx,[bx+si]
000010C8  86DB              xchg bl,bl
000010CA  DE76CC            fidiv word [bp-0x34]
000010CD  82                db 0x82
000010CE  C456CA            les dx,word [bp-0x36]
000010D1  EC                in al,dx
000010D2  56                push si
000010D3  D901              fld dword [bx+di]
000010D5  188EC489          sbb [bp-0x763c],cl
000010D9  C3                ret
000010DA  C7C556CC          mov bp,0xcc56
000010DE  C8021887          enter word 0x1802,byte 0x87
000010E2  DBE0              fneni
000010E4  66CB              retfd
000010E6  CC                int3
000010E7  83C3CC            add bx,0xffffffffffffffcc
000010EA  46                inc si
000010EB  EC                in al,dx
000010EC  66C1C240          rol edx,byte 0x40
000010F0  C24041            ret word 0x4140
000010F3  40                inc ax
000010F4  C25081            ret word 0x8150
000010F7  C4                db 0xc4
000010F8  C7                db 0xc7
000010F9  D887C466          fadd dword [bx+0x66c4]
000010FD  C84B8ADB          enter word 0x8a4b,byte 0xdb
00001101  DF66C8            fbld tword [bp-0x38]
00001104  0218              add bl,[bx+si]
00001106  83C446            add sp,0x46
00001109  EC                in al,dx
0000110A  C7                db 0xc7
0000110B  CAD890            retf word 0x90d8
0000110E  C3                ret
0000110F  46                inc si
00001110  0118              add [bx+si],bx
00001112  85C4              test sp,ax
00001114  C7                db 0xc7
00001115  4B                dec bx
00001116  D8CC              fmul st4
00001118  0218              add bl,[bx+si]
0000111A  89DB              mov bx,bx
0000111C  DFC7              ffreep st7
0000111E  EC                in al,dx
0000111F  46                inc si
00001120  0218              add bl,[bx+si]
00001122  84C4              test ah,al
00001124  7602              jna 0x1128
00001126  1884C4C7          sbb [si-0x383c],al
0000112A  0118              add [bx+si],bx
0000112C  86C3              xchg al,bl
0000112E  C8C70218          enter word 0x2c7,byte 0x18
00001132  8492DBDE          test [bp+si-0x2125],dl
00001136  C7                db 0xc7
00001137  EC                in al,dx
00001138  C7                db 0xc7
00001139  CC                int3
0000113A  87C3              xchg ax,bx
0000113C  66CC              o32 int3
0000113E  87C3              xchg ax,bx
00001140  C7C60118          mov si,0x1801
00001144  85C3              test bx,ax
00001146  C7                db 0xc7
00001147  CC                int3
00001148  8740C2            xchg ax,[bx+si-0x3e]
0000114B  C1C250            rol dx,byte 0x50
0000114E  C2C1C2            ret word 0xc2c1
00001151  50                push ax
00001152  C24081            ret word 0x8140
00001155  DBDF              fcmovnu st7
00001157  56                push si
00001158  0118              add [bx+si],bx
0000115A  86C3              xchg al,bl
0000115C  C556D9            lds dx,word [bp-0x27]
0000115F  0118              add [bx+si],bx
00001161  85C3              test bx,ax
00001163  C5                db 0xc5
00001164  C7                db 0xc7
00001165  C8D885C3          enter word 0x85d8,byte 0xc3
00001169  C54640            lds ax,word [bp+0x40]
0000116C  41                inc cx
0000116D  40                inc ax
0000116E  92                xchg ax,dx
0000116F  DBDF              fcmovnu st7
00001171  56                push si
00001172  C8021884          enter word 0x1802,byte 0x84
00001176  C3                ret
00001177  66CC              o32 int3
00001179  87C4              xchg ax,sp
0000117B  46                inc si
0000117C  CC                int3
0000117D  86C3              xchg al,bl
0000117F  46                inc si
00001180  C8011884          enter word 0x1801,byte 0x84
00001184  92                xchg ax,dx
00001185  DBDE              fcmovnu st6
00001187  C7                db 0xc7
00001188  C9                leave
00001189  CB                retf
0000118A  CC                int3
0000118B  87C3              xchg ax,bx
0000118D  66CC              o32 int3
0000118F  87C3              xchg ax,bx
00001191  46                inc si
00001192  CC                int3
00001193  86C3              xchg al,bl
00001195  7601              jna 0x1198
00001197  188292DB          sbb [bp+si-0x246e],al
0000119B  E056              loopne 0x11f3
0000119D  CC                int3
0000119E  87C4              xchg ax,sp
000011A0  46                inc si
000011A1  C5                db 0xc5
000011A2  C7                db 0xc7
000011A3  CC                int3
000011A4  87C4              xchg ax,sp
000011A6  C7                db 0xc7
000011A7  CC                int3
000011A8  C8011884          enter word 0x1801,byte 0x84
000011AC  C446C5            les ax,word [bp-0x3b]
000011AF  C8460218          enter word 0x246,byte 0x18
000011B3  92                xchg ax,dx
000011B4  DBDF              fcmovnu st7
000011B6  46                inc si
000011B7  C8CC87C3          enter word 0x87cc,byte 0xc3
000011BB  C55601            lds dx,word [bp+0x1]
000011BE  1886C3C7          sbb [bp-0x383d],al
000011C2  C8011885          enter word 0x1801,byte 0x85
000011C6  C3                ret
000011C7  C7                db 0xc7
000011C8  4B                dec bx
000011C9  0218              add bl,[bx+si]
000011CB  8392DBDF56        adc word [bp+si-0x2025],0x56
000011D0  CC                int3
000011D1  87C3              xchg ax,bx
000011D3  56                push si
000011D4  D902              fld dword [bp+si]
000011D6  1885C346          sbb [di+0x46c3],al
000011DA  CC                int3
000011DB  86C3              xchg al,bl
000011DD  C7                db 0xc7
000011DE  CC                int3
000011DF  C8C78592          enter word 0x85c7,byte 0x92
000011E3  DBDF              fcmovnu st7
000011E5  46                inc si
000011E6  CA0118            retf word 0x1801
000011E9  86C4              xchg al,ah
000011EB  66CC              o32 int3
000011ED  87C3              xchg ax,bx
000011EF  46                inc si
000011F0  CC                int3
000011F1  86C3              xchg al,bl
000011F3  56                push si
000011F4  0118              add [bx+si],bx
000011F6  8492DCDF          test [bp+si-0x2024],dl
000011FA  C9                leave
000011FB  C7                db 0xc7
000011FC  CC                int3
000011FD  88DA              mov dl,bl
000011FF  DF56CC            fist word [bp-0x34]
00001202  87C3              xchg ax,bx
00001204  56                push si
00001205  0118              add [bx+si],bx
00001207  84C3              test bl,al
00001209  C501              lds ax,word [bx+di]
0000120B  188692DD          sbb [bp-0x226e],al
0000120F  DF6602            fbld tword [bp+0x2]
00001212  1884DBDF          sbb [si-0x2025],al
00001216  CAC7C6            retf word 0xc6c7
00001219  88C4              mov ah,al
0000121B  46                inc si
0000121C  CA0218            retf word 0x1802
0000121F  83C3C7            add bx,0xffffffffffffffc7
00001222  CC                int3
00001223  8792C456          xchg dx,[bp+si+0x56c4]
00001227  C8C70118          enter word 0x1c7,byte 0x18
0000122B  85DB              test bx,bx
0000122D  E056              loopne 0x1285
0000122F  C687DADF46        mov byte [bx-0x2026],0x46
00001234  0118              add [bx+si],bx
00001236  84C4              test ah,al
00001238  4B                dec bx
00001239  8792C366          xchg dx,[bp+si+0x66c3]
0000123D  CC                int3
0000123E  87DB              xchg bx,bx
00001240  DE66D9            fisub word [bp-0x27]
00001243  0118              add [bx+si],bx
00001245  84DB              test bl,bl
00001247  DF                db 0xdf
00001248  CA0118            retf word 0x1801
0000124B  8F4160            pop word [bx+di+0x60]
0000124E  C250C2            ret word 0xc250
00001251  50                push ax
00001252  C24081            ret word 0x8140
00001255  C3                ret
00001256  56                push si
00001257  CC                int3
00001258  88DB              mov bl,bl
0000125A  DF                db 0xdf
0000125B  C9                leave
0000125C  C7                db 0xc7
0000125D  C8011886          enter word 0x1801,byte 0x86
00001261  DBDF              fcmovnu st7
00001263  46                inc si
00001264  50                push ax
00001265  C240C2            ret word 0xc240
00001268  40                inc ax
00001269  C250C2            ret word 0xc250
0000126C  40                inc ax
0000126D  92                xchg ax,dx
0000126E  C4                db 0xc4
0000126F  C556CC            lds dx,word [bp-0x34]
00001272  87DB              xchg bx,bx
00001274  DF56CC            fist word [bp-0x34]
00001277  87DB              xchg bx,bx
00001279  DF5601            fist word [bp+0x1]
0000127C  188D82C4          sbb [di-0x3b7e],cl
00001280  45                inc bp
00001281  8EC3              mov es,bx
00001283  C846CA01          enter word 0xca46,byte 0x1
00001287  1885DBDF          sbb [di-0x2025],al
0000128B  46                inc si
0000128C  C6                db 0xc6
0000128D  88DB              mov bl,bl
0000128F  DF                db 0xdf
00001290  C9                leave
00001291  46                inc si
00001292  CA0218            retf word 0x1802
00001295  8B82C447          mov ax,[bp+si+0x47c4]
00001299  C6                db 0xc6
0000129A  8D                db 0x8d
0000129B  C4                db 0xc4
0000129C  C6                db 0xc6
0000129D  56                push si
0000129E  0218              add bl,[bx+si]
000012A0  84DB              test bl,bl
000012A2  DFC7              ffreep st7
000012A4  CAC7C6            retf word 0xc6c7
000012A7  0118              add [bx+si],bx
000012A9  85DB              test bx,bx
000012AB  DF76CA            fbstp tword [bp-0x36]
000012AE  0318              add bx,[bx+si]
000012B0  8882C346          mov [bp+si+0x46c3],al
000012B4  C60118            mov byte [bx+di],0x18
000012B7  8BDB              mov bx,bx
000012B9  DF46CC            fild word [bp-0x34]
000012BC  87DD              xchg bx,bp
000012BE  DE56CC            ficom word [bp-0x34]
000012C1  C7021883          mov word [bp+si],0x8318
000012C5  DBDF              fcmovnu st7
000012C7  07                pop es
000012C8  07                pop es
000012C9  C8011887          enter word 0x1801,byte 0x87
000012CD  82                db 0x82
000012CE  C3                ret
000012CF  56                push si
000012D0  C8C70118          enter word 0x1c7,byte 0x18
000012D4  89DB              mov bx,bx
000012D6  DFC6              ffreep st6
000012D8  C7                db 0xc7
000012D9  CC                int3
000012DA  87C3              xchg ax,bx
000012DC  56                push si
000012DD  C8011886          enter word 0x1801,byte 0x86
000012E1  DBDF              fcmovnu st7
000012E3  0B07              or ax,[bx]
000012E5  0218              add bl,[bx+si]
000012E7  8382C3C7CB        add word [bp+si-0x383d],0xffffffffffffffcb
000012EC  CC                int3
000012ED  C7                db 0xc7
000012EE  CC                int3
000012EF  8BDD              mov bx,bp
000012F1  E0C6              loopne 0x12b9
000012F3  C7011886          mov word [bx+di],0x8618
000012F7  C3                ret
000012F8  C7                db 0xc7
000012F9  CC                int3
000012FA  C8021886          enter word 0x1802,byte 0x86
000012FE  DBDF              fcmovnu st7
00001300  56                push si
00001301  C9                leave
00001302  C7                db 0xc7
00001303  4B                dec bx
00001304  76C8              jna 0x12ce
00001306  0218              add bl,[bx+si]
00001308  82                db 0x82
00001309  82                db 0x82
0000130A  DADF              fcmovu st7
0000130C  CC                int3
0000130D  0118              add [bx+si],bx
0000130F  8D                db 0x8d
00001310  DBDF              fcmovnu st7
00001312  CB                retf
00001313  46                inc si
00001314  0118              add [bx+si],bx
00001316  84C4              test ah,al
00001318  C7                db 0xc7
00001319  C8D889DB          enter word 0x89d8,byte 0xdb
0000131D  DF                db 0xdf
0000131E  C9                leave
0000131F  56                push si
00001320  D882C4CC          fadd dword [bp+si-0x333c]
00001324  76C8              jna 0x12ee
00001326  0118              add [bx+si],bx
00001328  8182DBE046C8      add word [bp+si-0x1f25],0xc846
0000132E  C6                db 0xc6
0000132F  D88BDDE0          fmul dword [bp+di-0x1f23]
00001333  CC                int3
00001334  88C4              mov ah,al
00001336  CC                int3
00001337  0118              add [bx+si],bx
00001339  89DB              mov bx,bx
0000133B  DF5601            fist word [bp+0x1]
0000133E  1883C446          sbb [bp+di+0x46c4],al
00001342  C546D8            lds ax,word [bp-0x28]
00001345  8382DBDE46        add word [bp+si-0x2125],0x46
0000134A  C6                db 0xc6
0000134B  C845A2DB          enter word 0xa245,byte 0xdb
0000134F  DF46CC            fild word [bp-0x34]
00001352  85C4              test sp,ax
00001354  56                push si
00001355  CC                int3
00001356  8582DBDF          test [bp+si-0x2025],ax
0000135A  46                inc si
0000135B  CB                retf
0000135C  C6474B40          mov byte [bx+0x4b],0x40
00001360  41                inc cx
00001361  60                pusha
00001362  C240C2            ret word 0xc240
00001365  C1C240            rol dx,byte 0x40
00001368  41                inc cx
00001369  40                inc ax
0000136A  C2C1C2            ret word 0xc2c1
0000136D  50                push ax
0000136E  C240C2            ret word 0xc240
00001371  C181DBDF46        rol word [bx+di-0x2025],byte 0x46
00001376  CC                int3
00001377  85C3              test bx,ax
00001379  76D8              jna 0x1353
0000137B  8382DBDFC7        add word [bp+si-0x2025],0xffffffffffffffc7
00001380  CAC7CB            retf word 0xcbc7
00001383  0118              add [bx+si],bx
00001385  A2DBDF            mov [0xdfdb],al
00001388  56                push si
00001389  D884C356          fadd dword [si+0x56c3]
0000138D  C8D8D9D8          enter word 0xd9d8,byte 0xd8
00001391  82                db 0x82
00001392  82                db 0x82
00001393  DBE0              fneni
00001395  46                inc si
00001396  C6                db 0xc6
00001397  8CDA              mov dx,ds
00001399  DEC6              faddp st6
0000139B  8BC4              mov ax,sp
0000139D  45                inc bp
0000139E  88DB              mov bl,bl
000013A0  E046              loopne 0x13e8
000013A2  C8011883          enter word 0x1801,byte 0x83
000013A6  C3                ret
000013A7  C556D9            lds dx,word [bp-0x27]
000013AA  8482DBDE          test [bp+si-0x2125],al
000013AE  C7                db 0xc7
000013AF  C8C68CDB          enter word 0x8cc6,byte 0xdb
000013B3  DFC7              ffreep st7
000013B5  C6                db 0xc6
000013B6  8AC4              mov al,ah
000013B8  46                inc si
000013B9  45                inc bp
000013BA  86DB              xchg bl,bl
000013BC  DE46D8            fiadd word [bp-0x28]
000013BF  85C3              test bx,ax
000013C1  66CC              o32 int3
000013C3  8482DDDF          test [bp+si-0x2023],al
000013C7  C7C6C8C6          mov si,0xc6c8
000013CB  8BDB              mov bx,bx
000013CD  DF                db 0xdf
000013CE  C9                leave
000013CF  CC                int3
000013D0  0218              add bl,[bx+si]
000013D2  87C3              xchg ax,bx
000013D4  C7C681CC          mov si,0xcc81
000013D8  C8464566          enter word 0x4546,byte 0x66
000013DC  CC                int3
000013DD  86C3              xchg al,bl
000013DF  56                push si
000013E0  C68582C376        mov byte [di-0x3c7e],0x76
000013E5  0218              add bl,[bx+si]
000013E7  88DC              mov ah,bl
000013E9  DFC7              ffreep st7
000013EB  D88AC3CC          fmul dword [bp+si-0x333d]
000013EF  815BC846C9        sbb word [bp+di-0x38],0xc946
000013F4  7601              jna 0x13f7
000013F6  1884C366          sbb [si+0x66c3],al
000013FA  D901              fld dword [bx+di]
000013FC  188282C3          sbb [bp+si-0x3c7e],al
00001400  66CC              o32 int3
00001402  8BDB              mov bx,bx
00001404  DFC7              ffreep st7
00001406  C6                db 0xc6
00001407  8AC3              mov al,bl
00001409  46                inc si
0000140A  45                inc bp
0000140B  C8664BC8          enter word 0x4b66,byte 0xc8
0000140F  C7                db 0xc7
00001410  CC                int3
00001411  86C4              xchg al,ah
00001413  46                inc si
00001414  C8011884          enter word 0x1801,byte 0x84
00001418  81CDCED6          or bp,0xd6ce
0000141C  56                push si
0000141D  0118              add [bx+si],bx
0000141F  89DA              mov dx,bx
00001421  DE4601            fiadd word [bp+0x1]
00001424  1888E1C7          sbb [bx+si-0x381f],cl
00001428  4B                dec bx
00001429  82                db 0x82
0000142A  C444CC            les ax,word [si-0x34]
0000142D  C7                db 0xc7
0000142E  C856CC86          enter word 0xcc56,byte 0x86
00001432  C456CC            les dx,word [bp-0x34]
00001435  8581D0D1          test [bx+di-0x2e30],ax
00001439  D6                salc
0000143A  C9                leave
0000143B  CAC7C8            retf word 0xc8c7
0000143E  0118              add [bx+si],bx
00001440  88DB              mov bl,bl
00001442  DFC7              ffreep st7
00001444  CC                int3
00001445  89E1              mov cx,sp
00001447  56                push si
00001448  C687C356CC        mov byte [bx+0x56c3],0xcc
0000144D  86C3              xchg al,bl
0000144F  56                push si
00001450  CC                int3
00001451  8582D7D2          test [bp+si-0x2d29],ax
00001455  66C8C70118        enterd word 0x1c7,byte 0x18
0000145A  86DB              xchg bl,bl
0000145C  DF                db 0xdf
0000145D  CAC688            retf word 0x88c6
00001460  E166              loope 0x14c8
00001462  CC                int3
00001463  0118              add [bx+si],bx
00001465  85C3              test bx,ax
00001467  56                push si
00001468  0118              add [bx+si],bx
0000146A  85C3              test bx,ax
0000146C  660118            add [bx+si],ebx
0000146F  8382D4D656        add word [bp+si-0x292c],0x56
00001474  CACC89            retf word 0x89cc
00001477  DBDF              fcmovnu st7
00001479  C7                db 0xc7
0000147A  CC                int3
0000147B  0118              add [bx+si],bx
0000147D  85E1              test cx,sp
0000147F  56                push si
00001480  C8C7CC87          enter word 0xccc7,byte 0x87
00001484  C3                ret
00001485  56                push si
00001486  C8011884          enter word 0x1801,byte 0x84
0000148A  C466CC            les sp,word [bp-0x34]
0000148D  8482C366          test [bp+si+0x66c3],al
00001491  D88ADBDF          fmul dword [bp+si-0x2025]
00001495  C7                db 0xc7
00001496  CB                retf
00001497  D886C466          fadd dword [bp+0x66c4]
0000149B  C6                db 0xc6
0000149C  88C4              mov ah,al
0000149E  56                push si
0000149F  CC                int3
000014A0  86C4              xchg al,ah
000014A2  56                push si
000014A3  C68582C356        mov byte [di-0x3c7e],0x56
000014A8  C8021888          enter word 0x1802,byte 0x88
000014AC  C44645            les ax,word [bp+0x45]
000014AF  86C4              xchg al,ah
000014B1  46                inc si
000014B2  C6                db 0xc6
000014B3  C8C688C3          enter word 0x88c6,byte 0xc3
000014B7  56                push si
000014B8  D886C366          fadd dword [bp+0x66c3]
000014BC  0218              add bl,[bx+si]
000014BE  82                db 0x82
000014BF  82                db 0x82
000014C0  C3                ret
000014C1  66CC              o32 int3
000014C3  8AC3              mov al,bl
000014C5  46                inc si
000014C6  4B                dec bx
000014C7  0118              add [bx+si],bx
000014C9  84C4              test ah,al
000014CB  C546C6            lds ax,word [bp-0x3a]
000014CE  C8C60118          enter word 0x1c6,byte 0x18
000014D2  85C3              test bx,ax
000014D4  46                inc si
000014D5  CC                int3
000014D6  87C4              xchg ax,sp
000014D8  56                push si
000014D9  CAD9D8            retf word 0xd8d9
000014DC  8382C356CA        add word [bp+si+0x56c3],0xffffffffffffffca
000014E1  CC                int3
000014E2  8AC3              mov al,bl
000014E4  C9                leave
000014E5  C7                db 0xc7
000014E6  CC                int3
000014E7  D886C466          fadd dword [bp+0x66c4]
000014EB  4B                dec bx
000014EC  87C4              xchg ax,sp
000014EE  46                inc si
000014EF  C687C366CC        mov byte [bx+0x66c3],0xcc
000014F4  8482C356          test [bp+si+0x56c3],al
000014F8  0118              add [bx+si],bx
000014FA  8AC3              mov al,bl
000014FC  46                inc si
000014FD  CC                int3
000014FE  87C3              xchg ax,bx
00001500  56                push si
00001501  CC                int3
00001502  0118              add [bx+si],bx
00001504  87C4              xchg ax,sp
00001506  46                inc si
00001507  CA0118            retf word 0x1801
0000150A  85C3              test bx,ax
0000150C  660118            add [bx+si],ebx
0000150F  8382C356C6        add word [bp+si+0x56c3],0xffffffffffffffc6
00001514  8BC3              mov ax,bx
00001516  46                inc si
00001517  C687C346C8        mov byte [bx+0x46c3],0xc8
0000151C  C6                db 0xc6
0000151D  89C3              mov bx,ax
0000151F  56                push si
00001520  CA0218            retf word 0x1802
00001523  83C3C9            add bx,0xffffffffffffffc9
00001526  56                push si
00001527  CC                int3
00001528  8482C366          test [bp+si+0x66c3],al
0000152C  0318              add bx,[bx+si]
0000152E  87C3              xchg ax,bx
00001530  46                inc si
00001531  CC                int3
00001532  D886C446          fadd dword [bp+0x46c4]
00001536  C6                db 0xc6
00001537  C8C688C3          enter word 0x88c6,byte 0xc3
0000153B  56                push si
0000153C  CC                int3
0000153D  0118              add [bx+si],bx
0000153F  84C3              test bl,al
00001541  56                push si
00001542  CACC84            retf word 0x84cc
00001545  82                db 0x82
00001546  C3                ret
00001547  C7                db 0xc7
00001548  C9                leave
00001549  C7021889          mov word [bp+si],0x8918
0000154D  C3                ret
0000154E  46                inc si
0000154F  CB                retf
00001550  D901              fld dword [bx+di]
00001552  1884C466          sbb [si+0x66c4],al
00001556  C60218            mov byte [bp+si],0x18
00001559  85C3              test bx,ax
0000155B  46                inc si
0000155C  CC                int3
0000155D  87C3              xchg ax,bx
0000155F  56                push si
00001560  C68582C356        mov byte [di-0x3c7e],0x56
00001565  CC                int3
00001566  8BC4              mov ax,sp
00001568  C7                db 0xc7
00001569  C9                leave
0000156A  C6                db 0xc6
0000156B  88C4              mov ah,al
0000156D  C5464B            lds ax,word [bp+0x4b]
00001570  D886C3C7          fadd dword [bp-0x383d]
00001574  C8C70118          enter word 0x1c7,byte 0x18
00001578  85C3              test bx,ax
0000157A  66CC              o32 int3
0000157C  8482C356          test [bp+si+0x56c3],al
00001580  CC                int3
00001581  8BDA              mov bx,dx
00001583  DFC7              ffreep st7
00001585  CC                int3
00001586  0118              add [bx+si],bx
00001588  86C4              xchg al,ah
0000158A  46                inc si
0000158B  CC                int3
0000158C  89C3              mov bx,ax
0000158E  46                inc si
0000158F  0118              add [bx+si],bx
00001591  86C3              xchg al,bl
00001593  56                push si
00001594  C6                db 0xc6
00001595  CC                int3
00001596  8482C346          test [bp+si+0x46c3],al
0000159A  CAC702            retf word 0x2c7
0000159D  1888DBE0          sbb [bx+si-0x1f25],cl
000015A1  C7                db 0xc7
000015A2  CC                int3
000015A3  88C4              mov ah,al
000015A5  46                inc si
000015A6  0118              add [bx+si],bx
000015A8  88C3              mov bl,al
000015AA  46                inc si
000015AB  CC                int3
000015AC  87C3              xchg ax,bx
000015AE  66CC              o32 int3
000015B0  8482C356          test [bp+si+0x56c3],al
000015B4  0218              add bl,[bx+si]
000015B6  89DB              mov bx,bx
000015B8  DEC7              faddp st7
000015BA  C6                db 0xc6
000015BB  88C3              mov bl,al
000015BD  46                inc si
000015BE  C6                db 0xc6
000015BF  89C4              mov sp,ax
000015C1  46                inc si
000015C2  CC                int3
000015C3  87C3              xchg ax,bx
000015C5  56                push si
000015C6  C8021882          enter word 0x1802,byte 0x82
000015CA  82                db 0x82
000015CB  C3                ret
000015CC  46                inc si
000015CD  CC                int3
000015CE  8CDB              mov bx,ds
000015D0  DE46D9            fiadd word [bp-0x27]
000015D3  0118              add [bx+si],bx
000015D5  85C3              test bx,ax
000015D7  C7C68AC3          mov si,0xc38a
000015DB  46                inc si
000015DC  CA0118            retf word 0x1801
000015DF  85C3              test bx,ax
000015E1  660118            add [bx+si],ebx
000015E4  8382C35601        add word [bp+si+0x56c3],0x1
000015E9  188ADBE0          sbb [bp+si-0x1f25],cl
000015ED  C7                db 0xc7
000015EE  CACC87            retf word 0x87cc
000015F1  C3                ret
000015F2  C74589C4C9        mov word [di-0x77],0xc9c4
000015F7  46                inc si
000015F8  C686C466CC        mov byte [bp+0x66c4],0xcc
000015FD  8482C346          test [bp+si+0x46c3],al
00001601  C6                db 0xc6
00001602  8CDC              mov sp,ds
00001604  DE4601            fiadd word [bp+0x1]
00001607  1886C346          sbb [bp+0x46c3],al
0000160B  C60118            mov byte [bx+di],0x18
0000160E  87C3              xchg ax,bx
00001610  660118            add [bx+si],ebx
00001613  84C4              test ah,al
00001615  660118            add [bx+si],ebx
00001618  8382C346CC        add word [bp+si+0x46c3],0xffffffffffffffcc
0000161D  8CDD              mov bp,ds
0000161F  DFC7              ffreep st7
00001621  C5                db 0xc5
00001622  C7021884          mov word [bp+si],0x8418
00001626  C446CC            les ax,word [bp-0x34]
00001629  89C3              mov bx,ax
0000162B  46                inc si
0000162C  C8011885          enter word 0x1801,byte 0x85
00001630  C3                ret
00001631  66D901            o32 fld dword [bx+di]
00001634  188282C3          sbb [bp+si-0x3c7e],al
00001638  46                inc si
00001639  CC                int3
0000163A  8BCD              mov cx,bp
0000163C  D7                xlatb
0000163D  46                inc si
0000163E  4B                dec bx
0000163F  87C3              xchg ax,bx
00001641  C7C68AC4          mov si,0xc48a
00001645  46                inc si
00001646  CC                int3
00001647  87C3              xchg ax,bx
00001649  46                inc si
0000164A  CAD901            retf word 0x1d9
0000164D  188382C3          sbb [bp+di-0x3c7e],al
00001651  C7                db 0xc7
00001652  C9                leave
00001653  CC                int3
00001654  8BD0              mov dx,ax
00001656  D7                xlatb
00001657  46                inc si
00001658  89C4              mov sp,ax
0000165A  46                inc si
0000165B  C6                db 0xc6
0000165C  89C4              mov sp,ax
0000165E  C7                db 0xc7
0000165F  CA0118            retf word 0x1801
00001662  86C3              xchg al,bl
00001664  66CC              o32 int3
00001666  8482C356          test [bp+si+0x56c3],al
0000166A  0118              add [bx+si],bx
0000166C  89D3              mov bx,dx
0000166E  D6                salc
0000166F  56                push si
00001670  D901              fld dword [bx+di]
00001672  1885C3C5          sbb [di-0x3a3d],al
00001676  46                inc si
00001677  0118              add [bx+si],bx
00001679  92                xchg ax,dx
0000167A  C456CA            les dx,word [bp-0x36]
0000167D  8582C346          test [bp+si+0x46c3],ax
00001681  CC                int3
00001682  0218              add bl,[bx+si]
00001684  89C4              mov sp,ax
00001686  46                inc si
00001687  CC                int3
00001688  88C3              mov bl,al
0000168A  56                push si
0000168B  40                inc ax
0000168C  C24041            ret word 0x4140
0000168F  40                inc ax
00001690  C240C2            ret word 0xc240
00001693  50                push ax
00001694  C24081            ret word 0x8140
00001697  C3                ret
00001698  66CC              o32 int3
0000169A  8482C346          test [bp+si+0x46c3],al
0000169E  CAD88B            retf word 0x8bd8
000016A1  C446C6            les ax,word [bp-0x3a]
000016A4  88C4              mov ah,al
000016A6  46                inc si
000016A7  CC                int3
000016A8  94                xchg ax,sp
000016A9  C3                ret
000016AA  66CC              o32 int3
000016AC  8482C346          test [bp+si+0x46c3],al
000016B0  CC                int3
000016B1  8BCE              mov cx,si
000016B3  D6                salc
000016B4  56                push si
000016B5  C6                db 0xc6
000016B6  D886C4CC          fadd dword [bp-0x333c]
000016BA  87C4              xchg ax,sp
000016BC  46                inc si
000016BD  45                inc bp
000016BE  8AC3              mov al,bl
000016C0  C9                leave
000016C1  C7                db 0xc7
000016C2  CC                int3
000016C3  C8021882          enter word 0x1802,byte 0x82
000016C7  82                db 0x82
000016C8  C3                ret
000016C9  46                inc si
000016CA  CC                int3
000016CB  8ACD              mov cl,ch
000016CD  D1D6              rcl si,0x0
000016CF  7601              jna 0x16d2
000016D1  188DC3C7          sbb [di-0x383d],cl
000016D5  C55602            lds dx,word [bp+0x2]
000016D8  1886C366          sbb [bp+0x66c3],al
000016DC  D9                db 0xd9
000016DD  D88382C3          fadd dword [bp+di-0x3c7e]
000016E1  46                inc si
000016E2  CC                int3
000016E3  8AD0              mov dl,al
000016E5  D1D2              rcl dx,0x0
000016E7  56                push si
000016E8  C8CC5041          enter word 0x50cc,byte 0x41
000016EC  50                push ax
000016ED  41                inc cx
000016EE  40                inc ax
000016EF  C2C181            ret word 0x81c1
000016F2  C476C8            les si,word [bp-0x38]
000016F5  C7011885          mov word [bx+di],0x8518
000016F9  C3                ret
000016FA  66CC              o32 int3
000016FC  8482C346          test [bp+si+0x46c3],al
00001700  0118              add [bx+si],bx
00001702  89D3              mov bx,dx
00001704  D7                xlatb
00001705  D6                salc
00001706  56                push si
00001707  CC                int3
00001708  90                nop
00001709  C3                ret
0000170A  0507CC            add ax,0xcc07
0000170D  87C3              xchg ax,bx
0000170F  46                inc si
00001710  CC                int3
00001711  CA0118            retf word 0x1801
00001714  8382C346CC        add word [bp+si+0x46c3],0xffffffffffffffcc
00001719  8BD4              mov dx,sp
0000171B  C4                db 0xc4
0000171C  C7                db 0xc7
0000171D  D6                salc
0000171E  C7                db 0xc7
0000171F  CB                retf
00001720  C60118            mov byte [bx+di],0x18
00001723  8D                db 0x8d
00001724  C3                ret
00001725  0507CA            add ax,0xca07
00001728  0218              add bl,[bx+si]
0000172A  84C4              test ah,al
0000172C  56                push si
0000172D  0118              add [bx+si],bx
0000172F  8482C356          test [bp+si+0x56c3],al
00001733  0218              add bl,[bx+si]
00001735  89C4              mov sp,ax
00001737  46                inc si
00001738  CC                int3
00001739  91                xchg ax,cx
0000173A  C3                ret
0000173B  C556C9            lds dx,word [bp-0x37]
0000173E  46                inc si
0000173F  0118              add [bx+si],bx
00001741  85C3              test bx,ax
00001743  C7                db 0xc7
00001744  C8D88682          enter word 0x86d8,byte 0x82
00001748  C3                ret
00001749  46                inc si
0000174A  CAC703            retf word 0x3c7
0000174D  1887C3D6          sbb [bx-0x293d],al
00001751  46                inc si
00001752  91                xchg ax,cx
00001753  C44B66            les cx,word [bp+di+0x66]
00001756  CC                int3
00001757  87C3              xchg ax,bx
00001759  C7021885          mov word [bp+si],0x8518
0000175D  82                db 0x82
0000175E  C3                ret
0000175F  66D88AC466        o32 fmul dword [bp+si+0x66c4]
00001764  0118              add [bx+si],bx
00001766  91                xchg ax,cx
00001767  C45688            les dx,word [bp-0x78]
0000176A  C4                db 0xc4
0000176B  CC                int3
0000176C  8882C356          mov [bp+si+0x56c3],al
00001770  C8CC8AC3          enter word 0x8acc,byte 0xc3
00001774  66C8C691C3        enterd word 0x91c6,byte 0xc3
00001779  C7                db 0xc7
0000177A  C8C70218          enter word 0x2c7,byte 0x18
0000177E  8F82C366          pop word [bp+si+0x66c3]
00001782  CC                int3
00001783  8AC4              mov al,ah
00001785  0507C6            add ax,0xc607
00001788  0118              add [bx+si],bx
0000178A  8EC3              mov es,bx
0000178C  56                push si
0000178D  CC                int3
0000178E  91                xchg ax,cx
0000178F  82                db 0x82
00001790  C3                ret
00001791  76CC              jna 0x175f
00001793  89C3              mov bx,ax
00001795  06                push es
00001796  07                pop es
00001797  45                inc bp
00001798  0318              add bx,[bx+si]
0000179A  8AC3              mov al,bl
0000179C  46                inc si
0000179D  C8CC86C3          enter word 0x86cc,byte 0xc3
000017A1  C7021886          mov word [bp+si],0x8618
000017A5  82                db 0x82
000017A6  C466CA            les sp,word [bp-0x36]
000017A9  CC                int3
000017AA  89C3              mov bx,ax
000017AC  56                push si
000017AD  C509              lds cx,word [bx+di]
000017AF  07                pop es
000017B0  D8D9              fcomp st1
000017B2  0118              add [bx+si],bx
000017B4  85C4              test sp,ax
000017B6  660218            o32 add bl,[bx+si]
000017B9  83C346            add bx,0x46
000017BC  D98783C4          fld dword [bx-0x3b7d]
000017C0  660118            add [bx+si],ebx
000017C3  88C3              mov bl,al
000017C5  0807              or [bx],al
000017C7  D84602            fadd dword [bp+0x2]
000017CA  1888C346          sbb [bx+si+0x46c3],cl
000017CE  CC                int3
000017CF  0218              add bl,[bx+si]
000017D1  84C3              test bl,al
000017D3  C7                db 0xc7
000017D4  C9                leave
000017D5  C7021884          mov word [bp+si],0x8418
000017D9  83C476            add sp,0x76
000017DC  0218              add bl,[bx+si]
000017DE  86C3              xchg al,bl
000017E0  66C9              leaved
000017E2  CB                retf
000017E3  CC                int3
000017E4  90                nop
000017E5  C3                ret
000017E6  46                inc si
000017E7  C687C356C8        mov byte [bx+0x56c3],0xc8
000017EC  C7                db 0xc7
000017ED  D8842D00          fadd dword [si+0x2d]
000017F1  313C              xor [si],di
000017F3  0035              add [di],dh
000017F5  3F                aas
000017F6  0035              add [di],dh
000017F8  42                inc dx
000017F9  0035              add [di],dh
000017FB  FF                db 0xff
000017FC  FF                db 0xff
000017FD  FF                db 0xff
000017FE  FF5380            call word near [bp+di-0x80]
00001801  2F                das
00001802  4C                dec sp
00001803  005A00            add [bp+si+0x0],bl
00001806  6480AF5D006B      sub byte [fs:bx+0x5d],0x6b
0000180C  00FF              add bh,bh
0000180E  FF09              dec word [bx+di]
00001810  0019              add [bx+di],bl
00001812  C20C09            ret word 0x90c
00001815  0019              add [bx+di],bl
00001817  00FF              add bh,bh
00001819  FF                db 0xff
0000181A  FF19              call word far [bx+di]
0000181C  000EC20A          add [0xac2],cl
00001820  2F                das
00001821  000E00FF          add [0xff00],cl
00001825  FF                db 0xff
00001826  FF5800            call word far [bx+si+0x0]
00001829  22C3              and al,bl
0000182B  0C58              or al,0x58
0000182D  0022              add [bp+si],ah
0000182F  00FF              add bh,bh
00001831  FF                db 0xff
00001832  FF5E00            call word far [bp+0x0]
00001835  0A808504          or al,[bx+si+0x485]
00001839  00FF              add bh,bh
0000183B  00FF              add bh,bh
0000183D  FF                db 0xff
0000183E  FF6400            jmp word near [si+0x0]
00001841  3BC4              cmp ax,sp
00001843  0C64              or al,0x64
00001845  003B              add [bp+di],bh
00001847  00FF              add bh,bh
00001849  FF                db 0xff
0000184A  FF830009          inc word [bp+di+0x900]
0000184E  C0850801FF        rol byte [di+0x108],byte 0xff
00001853  00FF              add bh,bh
00001855  FF                db 0xff
00001856  FF830035          inc word [bp+di+0x3500]
0000185A  42                inc dx
0000185B  0C83              or al,0x83
0000185D  0035              add [di],dh
0000185F  0023              add [bp+di],ah
00001861  00808D00          add [bx+si+0x8d],al
00001865  3EC20C8D          ds ret word 0x8d0c
00001869  003E00FF          add [0xff00],bh
0000186D  FF                db 0xff
0000186E  FFCE              dec si
00001870  0027              add [bx],ah
00001872  C40C              les cx,word [si]
00001874  CE                into
00001875  0027              add [bx],ah
00001877  00FF              add bh,bh
00001879  FF                db 0xff
0000187A  FF                db 0xff
0000187B  FF                db 0xff
0000187C  FF22              jmp word near [bp+si]
0000187E  008012D9          add [bx+si-0x26ee],al
00001882  00FF              add bh,bh
00001884  1DD9FF            sbb ax,0xffd9
00001887  FF                db 0xff
00001888  FF                db 0xff
00001889  FF22              jmp word near [bp+si]
0000188B  00402B            add [bx+si+0x2b],al
0000188E  DA00              fiadd dword [bx+si]
00001890  00FF              add bh,bh
00001892  FF22              jmp word near [bp+si]
00001894  0020              add [bx+si],ah
00001896  E2DA              loop 0x1872
00001898  00FF              add bh,bh
0000189A  ED                in ax,dx
0000189B  DA                db 0xda
0000189C  FF                db 0xff
0000189D  FF                db 0xff
0000189E  FF                db 0xff
0000189F  FF22              jmp word near [bp+si]
000018A1  0010              add [bx+si],dl
000018A3  C2DB00            ret word 0xdb
000018A6  FFCD              dec bp
000018A8  DB                db 0xdb
000018A9  FF                db 0xff
000018AA  FF                db 0xff
000018AB  FF                db 0xff
000018AC  FF22              jmp word near [bp+si]
000018AE  0008              add [bx+si],cl
000018B0  D2DB              rcr bl,cl
000018B2  00FF              add bh,bh
000018B4  DDDB              fstp st3
000018B6  FF                db 0xff
000018B7  FF                db 0xff
000018B8  FF                db 0xff
000018B9  FF22              jmp word near [bp+si]
000018BB  0004              add [si],al
000018BD  22DC              and bl,ah
000018BF  00FF              add bh,bh
000018C1  2DDCFF            sub ax,0xffdc
000018C4  FF                db 0xff
000018C5  FF                db 0xff
000018C6  FF22              jmp word near [bp+si]
000018C8  0002              add [bp+si],al
000018CA  52                push dx
000018CB  DC00              fadd qword [bx+si]
000018CD  FF5DDC            call word far [di-0x24]
000018D0  FF                db 0xff
000018D1  FF                db 0xff
000018D2  FF                db 0xff
000018D3  FF22              jmp word near [bp+si]
000018D5  0001              add [bx+di],al
000018D7  82                db 0x82
000018D8  DC00              fadd qword [bx+si]
000018DA  FF8DDCFF          dec word [di-0x24]
000018DE  FF                db 0xff
000018DF  FF                db 0xff
000018E0  FF23              jmp word near [bp+di]
000018E2  008056D8          add [bx+si-0x27aa],al
000018E6  C20CFF            ret word 0xff0c
000018E9  FF                db 0xff
000018EA  FF                db 0xff
000018EB  FF16AF02          call word near [0x2af]
000018EF  114361            adc [bp+di+0x61],ax
000018F2  7665              jna 0x1959
000018F4  726E              jc 0x1964
000018F6  206F66            and [bx+0x66],ch
000018F9  20436F            and [bp+di+0x6f],al
000018FC  7272              jc 0x1970
000018FE  6F                outsw
000018FF  657211            gs jc 0x1913
00001902  0004              add [si],al
00001904  0808              or [bx+si],cl
00001906  0300              add ax,[bx+si]
00001908  2F                das
00001909  FF04              inc word [si]
0000190B  0000              add [bx+si],al
0000190D  0000              add [bx+si],al
0000190F  0000              add [bx+si],al
00001911  0300              add ax,[bx+si]
00001913  2F                das
00001914  0400              add al,0x0
00001916  07                pop es
00001917  0033              add [bp+di],dh
00001919  FF7300            push word [bp+di+0x0]
0000191C  0020              add [bx+si],ah
0000191E  0018              add [bx+si],bl
00001920  0022              add [bp+si],ah
00001922  00800000          add [bx+si+0x0],al
00001926  0900              or [bx+si],ax
00001928  10FF              adc bh,bh
0000192A  0200              add al,[bx+si]
0000192C  0000              add [bx+si],al
0000192E  0000              add [bx+si],al
00001930  0009              add [bx+di],cl
00001932  0010              add [bx+si],dl
00001934  0200              add al,[bx+si]
00001936  0B00              or ax,[bx+si]
00001938  00FF              add bh,bh
0000193A  0000              add [bx+si],al
0000193C  0010              add [bx+si],dl
0000193E  0000              add [bx+si],al
00001940  000B              add [bp+di],cl
00001942  0000              add [bx+si],al
00001944  0000              add [bx+si],al
00001946  0B00              or ax,[bx+si]
00001948  02FF              add bh,bh
0000194A  0100              add [bx+si],ax
0000194C  0010              add [bx+si],dl
0000194E  0000              add [bx+si],al
00001950  000B              add [bp+di],cl
00001952  0002              add [bp+si],al
00001954  0100              add [bx+si],ax
00001956  0B00              or ax,[bx+si]
00001958  15FF04            adc ax,0x4ff
0000195B  0000              add [bx+si],al
0000195D  0000              add [bx+si],al
0000195F  0000              add [bx+si],al
00001961  0B00              or ax,[bx+si]
00001963  150400            adc ax,0x4
00001966  0E                push cs
00001967  0022              add [bp+si],ah
00001969  FF04              inc word [si]
0000196B  0000              add [bx+si],al
0000196D  0000              add [bx+si],al
0000196F  0000              add [bx+si],al
00001971  0E                push cs
00001972  0022              add [bp+si],ah
00001974  0400              add al,0x0
00001976  0E                push cs
00001977  0028              add [bx+si],ch
00001979  FF03              inc word [bp+di]
0000197B  0000              add [bx+si],al
0000197D  0000              add [bx+si],al
0000197F  0000              add [bx+si],al
00001981  0E                push cs
00001982  0028              add [bx+si],ch
00001984  0300              add ax,[bx+si]
00001986  16                push ss
00001987  0002              add [bp+si],al
00001989  FF03              inc word [bp+di]
0000198B  0000              add [bx+si],al
0000198D  0000              add [bx+si],al
0000198F  0000              add [bx+si],al
00001991  16                push ss
00001992  0002              add [bp+si],al
00001994  0300              add ax,[bx+si]
00001996  1A00              sbb al,[bx+si]
00001998  28FF              sub bh,bh
0000199A  0200              add al,[bx+si]
0000199C  0000              add [bx+si],al
0000199E  0000              add [bx+si],al
000019A0  001A              add [bp+si],bl
000019A2  0028              add [bx+si],ch
000019A4  0200              add al,[bx+si]
000019A6  1B00              sbb ax,[bx+si]
000019A8  19FF              sbb di,di
000019AA  0000              add [bx+si],al
000019AC  0010              add [bx+si],dl
000019AE  0000              add [bx+si],al
000019B0  001B              add [bp+di],bl
000019B2  0019              add [bx+di],bl
000019B4  0000              add [bx+si],al
000019B6  1B00              sbb ax,[bx+si]
000019B8  1BFF              sbb di,di
000019BA  0100              add [bx+si],ax
000019BC  0010              add [bx+si],dl
000019BE  0000              add [bx+si],al
000019C0  001B              add [bp+di],bl
000019C2  001B              add [bp+di],bl
000019C4  0100              add [bx+si],ax
000019C6  1B00              sbb ax,[bx+si]
000019C8  33FF              xor di,di
000019CA  0300              add ax,[bx+si]
000019CC  0000              add [bx+si],al
000019CE  0000              add [bx+si],al
000019D0  001B              add [bp+di],bl
000019D2  0033              add [bp+di],dh
000019D4  0300              add ax,[bx+si]
000019D6  1E                push ds
000019D7  0022              add [bp+si],ah
000019D9  FF04              inc word [si]
000019DB  0000              add [bx+si],al
000019DD  0000              add [bx+si],al
000019DF  0000              add [bx+si],al
000019E1  1E                push ds
000019E2  0022              add [bp+si],ah
000019E4  0400              add al,0x0
000019E6  2000              and [bx+si],al
000019E8  3AFF              cmp bh,bh
000019EA  0400              add al,0x0
000019EC  0000              add [bx+si],al
000019EE  0000              add [bx+si],al
000019F0  0020              add [bx+si],ah
000019F2  003A              add [bp+si],bh
000019F4  0400              add al,0x0
000019F6  2800              sub [bx+si],al
000019F8  3AFF              cmp bh,bh
000019FA  0400              add al,0x0
000019FC  0000              add [bx+si],al
000019FE  0000              add [bx+si],al
00001A00  0028              add [bx+si],ch
00001A02  003A              add [bp+si],bh
00001A04  0400              add al,0x0
00001A06  2F                das
00001A07  0010              add [bx+si],dl
00001A09  FF03              inc word [bp+di]
00001A0B  0000              add [bx+si],al
00001A0D  0000              add [bx+si],al
00001A0F  0000              add [bx+si],al
00001A11  2F                das
00001A12  0010              add [bx+si],dl
00001A14  0300              add ax,[bx+si]
00001A16  3100              xor [bx+si],ax
00001A18  02FF              add bh,bh
00001A1A  0300              add ax,[bx+si]
00001A1C  0000              add [bx+si],al
00001A1E  0000              add [bx+si],al
00001A20  0031              add [bx+di],dh
00001A22  0002              add [bp+si],al
00001A24  0300              add ax,[bx+si]
00001A26  41                inc cx
00001A27  001B              add [bp+di],bl
00001A29  FF                db 0xff
00001A2A  D000              rol byte [bx+si],0x0
00001A2C  0020              add [bx+si],ah
00001A2E  0018              add [bx+si],bl
00001A30  0022              add [bp+si],ah
00001A32  004000            add [bx+si+0x0],al
00001A35  004A00            add [bp+si+0x0],cl
00001A38  1F                pop ds
00001A39  FF04              inc word [si]
00001A3B  0000              add [bx+si],al
00001A3D  0000              add [bx+si],al
00001A3F  0000              add [bx+si],al
00001A41  4A                dec dx
00001A42  001F              add [bx],bl
00001A44  0400              add al,0x0
00001A46  4E                dec si
00001A47  000EFFF1          add [0xf1ff],cl
00001A4B  0000              add [bx+si],al
00001A4D  0000              add [bx+si],al
00001A4F  0000              add [bx+si],al
00001A51  FF                db 0xff
00001A52  FF                db 0xff
00001A53  FF00              inc word [bx+si]
00001A55  005200            add [bp+si+0x0],dl
00001A58  16                push ss
00001A59  FF02              inc word [bp+si]
00001A5B  0000              add [bx+si],al
00001A5D  0000              add [bx+si],al
00001A5F  0000              add [bx+si],al
00001A61  52                push dx
00001A62  00160200          add [0x2],dl
00001A66  54                push sp
00001A67  000EFFF1          add [0xf1ff],cl
00001A6B  0000              add [bx+si],al
00001A6D  0000              add [bx+si],al
00001A6F  0000              add [bx+si],al
00001A71  FF                db 0xff
00001A72  FF                db 0xff
00001A73  FF00              inc word [bx+si]
00001A75  005600            add [bp+0x0],dl
00001A78  04FF              add al,0xff
00001A7A  0400              add al,0x0
00001A7C  0000              add [bx+si],al
00001A7E  0000              add [bx+si],al
00001A80  005600            add [bp+0x0],dl
00001A83  0404              add al,0x4
00001A85  005700            add [bx+0x0],dl
00001A88  1F                pop ds
00001A89  FF04              inc word [si]
00001A8B  0000              add [bx+si],al
00001A8D  0000              add [bx+si],al
00001A8F  0000              add [bx+si],al
00001A91  57                push di
00001A92  001F              add [bx],bl
00001A94  0400              add al,0x0
00001A96  58                pop ax
00001A97  0033              add [bp+di],dh
00001A99  FF02              inc word [bp+si]
00001A9B  0000              add [bx+si],al
00001A9D  0000              add [bx+si],al
00001A9F  0000              add [bx+si],al
00001AA1  58                pop ax
00001AA2  0033              add [bp+di],dh
00001AA4  0200              add al,[bx+si]
00001AA6  5A                pop dx
00001AA7  0039              add [bx+di],bh
00001AA9  FF04              inc word [si]
00001AAB  0000              add [bx+si],al
00001AAD  0000              add [bx+si],al
00001AAF  0000              add [bx+si],al
00001AB1  5A                pop dx
00001AB2  0039              add [bx+di],bh
00001AB4  0400              add al,0x0
00001AB6  5E                pop si
00001AB7  0016FF02          add [0x2ff],dl
00001ABB  0000              add [bx+si],al
00001ABD  0000              add [bx+si],al
00001ABF  0000              add [bx+si],al
00001AC1  5E                pop si
00001AC2  00160200          add [0x2],dl
00001AC6  650033            add [gs:bp+di],dh
00001AC9  FF02              inc word [bp+si]
00001ACB  0000              add [bx+si],al
00001ACD  0000              add [bx+si],al
00001ACF  0000              add [bx+si],al
00001AD1  650033            add [gs:bp+di],dh
00001AD4  0200              add al,[bx+si]
00001AD6  6E                outsb
00001AD7  0007              add [bx],al
00001AD9  FF04              inc word [si]
00001ADB  0000              add [bx+si],al
00001ADD  0000              add [bx+si],al
00001ADF  0000              add [bx+si],al
00001AE1  6E                outsb
00001AE2  0007              add [bx],al
00001AE4  0400              add al,0x0
00001AE6  7300              jnc 0x1ae8
00001AE8  2BFF              sub di,di
00001AEA  7300              jnc 0x1aec
00001AEC  0420              add al,0x20
00001AEE  0000              add [bx+si],al
00001AF0  0022              add [bp+si],ah
00001AF2  0020              add [bx+si],ah
00001AF4  0000              add [bx+si],al
00001AF6  810016FF          add word [bx+si],0xff16
00001AFA  0400              add al,0x0
00001AFC  0000              add [bx+si],al
00001AFE  0000              add [bx+si],al
00001B00  00810016          add [bx+di+0x1600],al
00001B04  0400              add al,0x0
00001B06  82                db 0x82
00001B07  0000              add [bx+si],al
00001B09  FF03              inc word [bp+di]
00001B0B  0000              add [bx+si],al
00001B0D  0000              add [bx+si],al
00001B0F  0000              add [bx+si],al
00001B11  82                db 0x82
00001B12  0000              add [bx+si],al
00001B14  0300              add ax,[bx+si]
00001B16  8600              xchg al,[bx+si]
00001B18  00FF              add bh,bh
00001B1A  0200              add al,[bx+si]
00001B1C  0000              add [bx+si],al
00001B1E  0000              add [bx+si],al
00001B20  00860000          add [bp+0x0],al
00001B24  0200              add al,[bx+si]
00001B26  8600              xchg al,[bx+si]
00001B28  1DFF02            sbb ax,0x2ff
00001B2B  0000              add [bx+si],al
00001B2D  0000              add [bx+si],al
00001B2F  0000              add [bx+si],al
00001B31  8600              xchg al,[bx+si]
00001B33  1D0200            sbb ax,0x2
00001B36  8800              mov [bx+si],al
00001B38  2AFF              sub bh,bh
00001B3A  0200              add al,[bx+si]
00001B3C  0000              add [bx+si],al
00001B3E  0000              add [bx+si],al
00001B40  0088002A          add [bx+si+0x2a00],cl
00001B44  0200              add al,[bx+si]
00001B46  8A00              mov al,[bx+si]
00001B48  15FF04            adc ax,0x4ff
00001B4B  0000              add [bx+si],al
00001B4D  0000              add [bx+si],al
00001B4F  0000              add [bx+si],al
00001B51  8A00              mov al,[bx+si]
00001B53  150400            adc ax,0x4
00001B56  8D00              lea ax,[bx+si]
00001B58  1DFF03            sbb ax,0x3ff
00001B5B  0000              add [bx+si],al
00001B5D  0000              add [bx+si],al
00001B5F  0000              add [bx+si],al
00001B61  8D00              lea ax,[bx+si]
00001B63  1D0300            sbb ax,0x3
00001B66  90                nop
00001B67  002A              add [bp+si],ch
00001B69  FF02              inc word [bp+si]
00001B6B  0000              add [bx+si],al
00001B6D  0000              add [bx+si],al
00001B6F  0000              add [bx+si],al
00001B71  90                nop
00001B72  002A              add [bp+si],ch
00001B74  0200              add al,[bx+si]
00001B76  95                xchg ax,bp
00001B77  0016FF04          add [0x4ff],dl
00001B7B  0000              add [bx+si],al
00001B7D  0000              add [bx+si],al
00001B7F  0000              add [bx+si],al
00001B81  95                xchg ax,bp
00001B82  00160400          add [0x4],dl
00001B86  98                cbw
00001B87  0009              add [bx+di],cl
00001B89  FF04              inc word [si]
00001B8B  0000              add [bx+si],al
00001B8D  0000              add [bx+si],al
00001B8F  0000              add [bx+si],al
00001B91  98                cbw
00001B92  0009              add [bx+di],cl
00001B94  0400              add al,0x0
00001B96  9B003EFF02        wait add [0x2ff],bh
00001B9B  0000              add [bx+si],al
00001B9D  0000              add [bx+si],al
00001B9F  0000              add [bx+si],al
00001BA1  9B003E0200        wait add [0x2],bh
00001BA6  A6                cmpsb
00001BA7  0008              add [bx+si],cl
00001BA9  FF04              inc word [si]
00001BAB  0000              add [bx+si],al
00001BAD  0000              add [bx+si],al
00001BAF  0000              add [bx+si],al
00001BB1  A6                cmpsb
00001BB2  0008              add [bx+si],cl
00001BB4  0400              add al,0x0
00001BB6  A90011            test ax,0x1100
00001BB9  FF02              inc word [bp+si]
00001BBB  0000              add [bx+si],al
00001BBD  0000              add [bx+si],al
00001BBF  0000              add [bx+si],al
00001BC1  A90011            test ax,0x1100
00001BC4  0200              add al,[bx+si]
00001BC6  AA                stosb
00001BC7  001D              add [di],bl
00001BC9  FF7300            push word [bp+di+0x0]
00001BCC  0020              add [bx+si],ah
00001BCE  0019              add [bx+di],bl
00001BD0  0022              add [bp+si],ah
00001BD2  0010              add [bx+si],dl
00001BD4  0000              add [bx+si],al
00001BD6  AF                scasw
00001BD7  0034              add [si],dh
00001BD9  FF7300            push word [bp+di+0x0]
00001BDC  0420              add al,0x20
00001BDE  0000              add [bx+si],al
00001BE0  0022              add [bp+si],ah
00001BE2  0008              add [bx+si],cl
00001BE4  0000              add [bx+si],al
00001BE6  B300              mov bl,0x0
00001BE8  11FF              adc di,di
00001BEA  0200              add al,[bx+si]
00001BEC  0000              add [bx+si],al
00001BEE  0000              add [bx+si],al
00001BF0  00B30011          add [bp+di+0x1100],dh
00001BF4  0200              add al,[bx+si]
00001BF6  B300              mov bl,0x0
00001BF8  25FF04            and ax,0x4ff
00001BFB  0000              add [bx+si],al
00001BFD  0000              add [bx+si],al
00001BFF  0000              add [bx+si],al
00001C01  B300              mov bl,0x0
00001C03  250400            and ax,0x4
00001C06  B600              mov dh,0x0
00001C08  1E                push ds
00001C09  FF02              inc word [bp+si]
00001C0B  0000              add [bx+si],al
00001C0D  0000              add [bx+si],al
00001C0F  0000              add [bx+si],al
00001C11  B600              mov dh,0x0
00001C13  1E                push ds
00001C14  0200              add al,[bx+si]
00001C16  BF002B            mov di,0x2b00
00001C19  FF02              inc word [bp+si]
00001C1B  0000              add [bx+si],al
00001C1D  0000              add [bx+si],al
00001C1F  0000              add [bx+si],al
00001C21  BF002B            mov di,0x2b00
00001C24  0200              add al,[bx+si]
00001C26  C00034            rol byte [bx+si],byte 0x34
00001C29  FF7300            push word [bp+di+0x0]
00001C2C  0120              add [bx+si],sp
00001C2E  0000              add [bx+si],al
00001C30  0022              add [bp+si],ah
00001C32  0004              add [si],al
00001C34  0000              add [bx+si],al
00001C36  C10001            rol word [bx+si],byte 0x1
00001C39  FF02              inc word [bp+si]
00001C3B  0000              add [bx+si],al
00001C3D  0000              add [bx+si],al
00001C3F  0000              add [bx+si],al
00001C41  C10001            rol word [bx+si],byte 0x1
00001C44  0200              add al,[bx+si]
00001C46  D000              rol byte [bx+si],0x0
00001C48  00FF              add bh,bh
00001C4A  0300              add ax,[bx+si]
00001C4C  0000              add [bx+si],al
00001C4E  0000              add [bx+si],al
00001C50  00D0              add al,dl
00001C52  0000              add [bx+si],al
00001C54  0300              add ax,[bx+si]
00001C56  D000              rol byte [bx+si],0x0
00001C58  1BFF              sbb di,di
00001C5A  7300              jnc 0x1c5c
00001C5C  0020              add [bx+si],ah
00001C5E  001A              add [bp+si],bl
00001C60  0022              add [bp+si],ah
00001C62  0002              add [bp+si],al
00001C64  0000              add [bx+si],al
00001C66  D000              rol byte [bx+si],0x0
00001C68  32FF              xor bh,bh
00001C6A  0000              add [bx+si],al
00001C6C  0010              add [bx+si],dl
00001C6E  0000              add [bx+si],al
00001C70  00D0              add al,dl
00001C72  0032              add [bp+si],dh
00001C74  0000              add [bx+si],al
00001C76  D000              rol byte [bx+si],0x0
00001C78  34FF              xor al,0xff
00001C7A  0100              add [bx+si],ax
00001C7C  0010              add [bx+si],dl
00001C7E  0000              add [bx+si],al
00001C80  00D0              add al,dl
00001C82  0034              add [si],dh
00001C84  0100              add [bx+si],ax
00001C86  D100              rol word [bx+si],0x0
00001C88  10FF              adc bh,bh
00001C8A  7300              jnc 0x1c8c
00001C8C  0220              add ah,[bx+si]
00001C8E  0000              add [bx+si],al
00001C90  0022              add [bp+si],ah
00001C92  0001              add [bx+di],al
00001C94  0000              add [bx+si],al
00001C96  D6                salc
00001C97  001C              add [si],bl
00001C99  FF03              inc word [bp+di]
00001C9B  0000              add [bx+si],al
00001C9D  0000              add [bx+si],al
00001C9F  0000              add [bx+si],al
00001CA1  D6                salc
00001CA2  001C              add [si],bl
00001CA4  0300              add ax,[bx+si]
00001CA6  D800              fadd dword [bx+si]
00001CA8  11FF              adc di,di
00001CAA  0200              add al,[bx+si]
00001CAC  0000              add [bx+si],al
00001CAE  0000              add [bx+si],al
00001CB0  00D8              add al,bl
00001CB2  0011              add [bx+di],dl
00001CB4  0200              add al,[bx+si]
00001CB6  E000              loopne 0x1cb8
00001CB8  00FF              add bh,bh
00001CBA  0300              add ax,[bx+si]
00001CBC  0000              add [bx+si],al
00001CBE  0000              add [bx+si],al
00001CC0  00E0              add al,ah
00001CC2  0000              add [bx+si],al
00001CC4  0300              add ax,[bx+si]
00001CC6  E9000E            jmp 0x2ac9
00001CC9  FF00              inc word [bx+si]
00001CCB  0000              add [bx+si],al
00001CCD  1000              adc [bx+si],al
00001CCF  0000              add [bx+si],al
00001CD1  E9000E            jmp 0x2ad4
00001CD4  0000              add [bx+si],al
00001CD6  E90010            jmp 0x2cd9
00001CD9  FF01              inc word [bx+di]
00001CDB  0000              add [bx+si],al
00001CDD  1000              adc [bx+si],al
00001CDF  0000              add [bx+si],al
00001CE1  E90010            jmp 0x2ce4
00001CE4  0100              add [bx+si],ax
00001CE6  E90026            jmp 0x42e9
00001CE9  FF00              inc word [bx+si]
00001CEB  0000              add [bx+si],al
00001CED  1000              adc [bx+si],al
00001CEF  0000              add [bx+si],al
00001CF1  E90026            jmp 0x42f4
00001CF4  0000              add [bx+si],al
00001CF6  E90028            jmp 0x44f9
00001CF9  FF01              inc word [bx+di]
00001CFB  0000              add [bx+si],al
00001CFD  1000              adc [bx+si],al
00001CFF  0000              add [bx+si],al
00001D01  E90028            jmp 0x4504
00001D04  0100              add [bx+si],ax
00001D06  00FF              add bh,bh
00001D08  00FF              add bh,bh
00001D0A  0000              add [bx+si],al
00001D0C  0000              add [bx+si],al
00001D0E  0000              add [bx+si],al
00001D10  00FF              add bh,bh
00001D12  FF00              inc word [bx+si]
00001D14  0000              add [bx+si],al
00001D16  00FF              add bh,bh
00001D18  00FF              add bh,bh
00001D1A  0000              add [bx+si],al
00001D1C  0000              add [bx+si],al
00001D1E  0000              add [bx+si],al
00001D20  00FF              add bh,bh
00001D22  FF00              inc word [bx+si]
00001D24  0000              add [bx+si],al
00001D26  00FF              add bh,bh
00001D28  00FF              add bh,bh
00001D2A  0000              add [bx+si],al
00001D2C  0000              add [bx+si],al
00001D2E  0000              add [bx+si],al
00001D30  00FF              add bh,bh
00001D32  FF00              inc word [bx+si]
00001D34  0000              add [bx+si],al
00001D36  00FF              add bh,bh
00001D38  00FF              add bh,bh
00001D3A  0000              add [bx+si],al
00001D3C  0000              add [bx+si],al
00001D3E  0000              add [bx+si],al
00001D40  00FF              add bh,bh
00001D42  FF00              inc word [bx+si]
00001D44  0000              add [bx+si],al
00001D46  00FF              add bh,bh
00001D48  00FF              add bh,bh
00001D4A  0000              add [bx+si],al
00001D4C  0000              add [bx+si],al
00001D4E  0000              add [bx+si],al
00001D50  00FF              add bh,bh
00001D52  FF00              inc word [bx+si]
00001D54  0000              add [bx+si],al
00001D56  00FF              add bh,bh
00001D58  00FF              add bh,bh
00001D5A  0000              add [bx+si],al
00001D5C  0000              add [bx+si],al
00001D5E  0000              add [bx+si],al
00001D60  00FF              add bh,bh
00001D62  FF00              inc word [bx+si]
00001D64  0000              add [bx+si],al
00001D66  00FF              add bh,bh
00001D68  00FF              add bh,bh
00001D6A  0000              add [bx+si],al
00001D6C  0000              add [bx+si],al
00001D6E  0000              add [bx+si],al
00001D70  00FF              add bh,bh
00001D72  FF00              inc word [bx+si]
00001D74  0000              add [bx+si],al
00001D76  00FF              add bh,bh
00001D78  00FF              add bh,bh
00001D7A  0000              add [bx+si],al
00001D7C  0000              add [bx+si],al
00001D7E  0000              add [bx+si],al
00001D80  00FF              add bh,bh
00001D82  FF00              inc word [bx+si]
00001D84  0000              add [bx+si],al
00001D86  00FF              add bh,bh
00001D88  00FF              add bh,bh
00001D8A  0000              add [bx+si],al
00001D8C  0000              add [bx+si],al
00001D8E  0000              add [bx+si],al
00001D90  00FF              add bh,bh
00001D92  FF00              inc word [bx+si]
00001D94  0000              add [bx+si],al
00001D96  FF                db 0xff
00001D97  FF                db 0xff
