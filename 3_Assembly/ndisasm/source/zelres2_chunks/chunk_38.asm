00000000  AC                lodsb
00000001  0C00              or al,0x0
00000003  00D3              add bl,dl
00000005  C6                db 0xc6
00000006  D7                xlatb
00000007  00D8              add al,bl
00000009  C602E7            mov byte [bp+si],0xe7
0000000C  C6                db 0xc6
0000000D  EF                out dx,ax
0000000E  C600C7            mov byte [bx+si],0xc7
00000011  0CC7              or al,0xc7
00000013  72CC              jc 0xffe1
00000015  CF                iret
00000016  C6                db 0xc6
00000017  5C                pop sp
00000018  000A              add [bp+si],cl
0000001A  C7000000          mov word [bx+si],0x0
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
00000034  0000              add [bx+si],al
00000036  0000              add [bx+si],al
00000038  0000              add [bx+si],al
0000003A  00898D82          add [bx+di-0x7d73],cl
0000003E  0000              add [bx+si],al
00000040  0000              add [bx+si],al
00000042  008A8E83          add [bp+si-0x7c72],cl
00000046  0000              add [bx+si],al
00000048  0000              add [bx+si],al
0000004A  00747B            add [si+0x7b],dh
0000004D  82                db 0x82
0000004E  0000              add [bx+si],al
00000050  0000              add [bx+si],al
00000052  00757C            add [di+0x7c],dh
00000055  830000            add word [bx+si],0x0
00000058  0000              add [bx+si],al
0000005A  00747B            add [si+0x7b],dh
0000005D  82                db 0x82
0000005E  0000              add [bx+si],al
00000060  00959875          add [di+0x7598],dl
00000064  7C83              jl 0xffe9
00000066  0000              add [bx+si],al
00000068  0000              add [bx+si],al
0000006A  00747B            add [si+0x7b],dh
0000006D  82                db 0x82
0000006E  0000              add [bx+si],al
00000070  95                xchg ax,bp
00000071  97                xchg ax,di
00000072  99                cwd
00000073  757C              jnz 0xf1
00000075  830000            add word [bx+si],0x0
00000078  0000              add [bx+si],al
0000007A  008B8F82          add [bp+di-0x7d71],cl
0000007E  00959796          add [di-0x6969],dl
00000082  99                cwd
00000083  8C908300          mov word [bx+si+0x83],ss
00000087  0000              add [bx+si],al
00000089  0000              add [bx+si],al
0000008B  00919395          add [bx+di-0x6a6d],dl
0000008F  96                xchg ax,si
00000090  96                xchg ax,si
00000091  96                xchg ax,si
00000092  99                cwd
00000093  00929400          add [bp+si+0x94],dl
00000097  0000              add [bx+si],al
00000099  0000              add [bx+si],al
0000009B  0000              add [bx+si],al
0000009D  0000              add [bx+si],al
0000009F  0000              add [bx+si],al
000000A1  0000              add [bx+si],al
000000A3  0000              add [bx+si],al
000000A5  0000              add [bx+si],al
000000A7  0000              add [bx+si],al
000000A9  0000              add [bx+si],al
000000AB  0000              add [bx+si],al
000000AD  0000              add [bx+si],al
000000AF  0000              add [bx+si],al
000000B1  0000              add [bx+si],al
000000B3  0000              add [bx+si],al
000000B5  0000              add [bx+si],al
000000B7  0000              add [bx+si],al
000000B9  0000              add [bx+si],al
000000BB  0000              add [bx+si],al
000000BD  0000              add [bx+si],al
000000BF  0000              add [bx+si],al
000000C1  0000              add [bx+si],al
000000C3  0000              add [bx+si],al
000000C5  0000              add [bx+si],al
000000C7  0000              add [bx+si],al
000000C9  0000              add [bx+si],al
000000CB  0000              add [bx+si],al
000000CD  0000              add [bx+si],al
000000CF  0000              add [bx+si],al
000000D1  0000              add [bx+si],al
000000D3  0000              add [bx+si],al
000000D5  0000              add [bx+si],al
000000D7  0000              add [bx+si],al
000000D9  0000              add [bx+si],al
000000DB  0000              add [bx+si],al
000000DD  0000              add [bx+si],al
000000DF  0000              add [bx+si],al
000000E1  0000              add [bx+si],al
000000E3  000E1419          add [0x1914],cl
000000E7  1B1B              sbb bx,[bp+di]
000000E9  1B1B              sbb bx,[bp+di]
000000EB  0001              add [bx+di],al
000000ED  07                pop es
000000EE  1A1B              sbb bl,[bp+di]
000000F0  1B1B              sbb bx,[bp+di]
000000F2  1B00              sbb ax,[bx+si]
000000F4  0000              add [bx+si],al
000000F6  001C              add [si],bl
000000F8  1C1C              sbb al,0x1c
000000FA  1C00              sbb al,0x0
000000FC  0000              add [bx+si],al
000000FE  001C              add [si],bl
00000100  1C1C              sbb al,0x1c
00000102  1C00              sbb al,0x0
00000104  0000              add [bx+si],al
00000106  001C              add [si],bl
00000108  1C1C              sbb al,0x1c
0000010A  1C00              sbb al,0x0
0000010C  0000              add [bx+si],al
0000010E  001C              add [si],bl
00000110  1C1C              sbb al,0x1c
00000112  1C00              sbb al,0x0
00000114  0000              add [bx+si],al
00000116  001C              add [si],bl
00000118  1C1C              sbb al,0x1c
0000011A  1C00              sbb al,0x0
0000011C  0000              add [bx+si],al
0000011E  001C              add [si],bl
00000120  1C1C              sbb al,0x1c
00000122  1C00              sbb al,0x0
00000124  0000              add [bx+si],al
00000126  001C              add [si],bl
00000128  1C1C              sbb al,0x1c
0000012A  1C00              sbb al,0x0
0000012C  0000              add [bx+si],al
0000012E  001C              add [si],bl
00000130  1C1C              sbb al,0x1c
00000132  1C00              sbb al,0x0
00000134  0000              add [bx+si],al
00000136  001C              add [si],bl
00000138  1C1C              sbb al,0x1c
0000013A  1C00              sbb al,0x0
0000013C  0D1319            or ax,0x1913
0000013F  1B1B              sbb bx,[bp+di]
00000141  1B1B              sbb bx,[bp+di]
00000143  0001              add [bx+di],al
00000145  07                pop es
00000146  1A1B              sbb bl,[bp+di]
00000148  1B1B              sbb bx,[bp+di]
0000014A  1B00              sbb ax,[bx+si]
0000014C  0000              add [bx+si],al
0000014E  0000              add [bx+si],al
00000150  0000              add [bx+si],al
00000152  0000              add [bx+si],al
00000154  0000              add [bx+si],al
00000156  0000              add [bx+si],al
00000158  0000              add [bx+si],al
0000015A  0000              add [bx+si],al
0000015C  0000              add [bx+si],al
0000015E  0000              add [bx+si],al
00000160  0000              add [bx+si],al
00000162  0000              add [bx+si],al
00000164  1D1F1F            sbb ax,0x1f1f
00000167  1F                pop ds
00000168  1F                pop ds
00000169  1F                pop ds
0000016A  1F                pop ds
0000016B  1D1E21            sbb ax,0x211e
0000016E  2121              and [bx+di],sp
00000170  2121              and [bx+di],sp
00000172  211E1E21          and [0x211e],bx
00000176  6C                insb
00000177  2F                das
00000178  3131              xor [bx+di],si
0000017A  311E1E20          xor [0x201e],bx
0000017E  6D                insw
0000017F  3032              xor [bp+si],dh
00000181  3232              xor dh,[bp+si]
00000183  1E                push ds
00000184  1E                push ds
00000185  1F                pop ds
00000186  6E                outsb
00000187  3000              xor [bx+si],al
00000189  0000              add [bx+si],al
0000018B  1E                push ds
0000018C  1E                push ds
0000018D  216F2F            and [bx+0x2f],bp
00000190  3131              xor [bx+di],si
00000192  311E1E21          xor [0x211e],bx
00000196  211F              and [bx],bx
00000198  2121              and [bx+di],sp
0000019A  211E1E21          and [0x211e],bx
0000019E  211F              and [bx],bx
000001A0  2021              and [bx+di],ah
000001A2  1F                pop ds
000001A3  636322            arpl [bp+di+0x22],sp
000001A6  2222              and ah,[bp+si]
000001A8  2222              and ah,[bp+si]
000001AA  226363            and ah,[bp+di+0x63]
000001AD  2222              and ah,[bp+si]
000001AF  2325              and sp,[di]
000001B1  2222              and ah,[bp+si]
000001B3  50                push ax
000001B4  6322              arpl [bp+si],sp
000001B6  2224              and ah,[si]
000001B8  262222            and ah,[es:bp+si]
000001BB  005022            add [bx+si+0x22],dl
000001BE  2222              and ah,[bp+si]
000001C0  2222              and ah,[bp+si]
000001C2  2200              and al,[bx+si]
000001C4  0000              add [bx+si],al
000001C6  0000              add [bx+si],al
000001C8  0000              add [bx+si],al
000001CA  0000              add [bx+si],al
000001CC  0000              add [bx+si],al
000001CE  0000              add [bx+si],al
000001D0  0000              add [bx+si],al
000001D2  0000              add [bx+si],al
000001D4  0000              add [bx+si],al
000001D6  0000              add [bx+si],al
000001D8  0000              add [bx+si],al
000001DA  0000              add [bx+si],al
000001DC  0000              add [bx+si],al
000001DE  0000              add [bx+si],al
000001E0  0000              add [bx+si],al
000001E2  0000              add [bx+si],al
000001E4  0000              add [bx+si],al
000001E6  0000              add [bx+si],al
000001E8  0000              add [bx+si],al
000001EA  0000              add [bx+si],al
000001EC  0D1319            or ax,0x1913
000001EF  1B1B              sbb bx,[bp+di]
000001F1  1B1B              sbb bx,[bp+di]
000001F3  0001              add [bx+di],al
000001F5  07                pop es
000001F6  1A1B              sbb bl,[bp+di]
000001F8  1B1B              sbb bx,[bp+di]
000001FA  1B00              sbb ax,[bx+si]
000001FC  0000              add [bx+si],al
000001FE  001C              add [si],bl
00000200  1C1C              sbb al,0x1c
00000202  1C00              sbb al,0x0
00000204  0000              add [bx+si],al
00000206  001C              add [si],bl
00000208  1C1C              sbb al,0x1c
0000020A  1C00              sbb al,0x0
0000020C  0000              add [bx+si],al
0000020E  001C              add [si],bl
00000210  1C1C              sbb al,0x1c
00000212  1C00              sbb al,0x0
00000214  0000              add [bx+si],al
00000216  001C              add [si],bl
00000218  1C1C              sbb al,0x1c
0000021A  1C00              sbb al,0x0
0000021C  0000              add [bx+si],al
0000021E  001C              add [si],bl
00000220  1C1C              sbb al,0x1c
00000222  1C00              sbb al,0x0
00000224  0000              add [bx+si],al
00000226  001C              add [si],bl
00000228  1C1C              sbb al,0x1c
0000022A  1C00              sbb al,0x0
0000022C  0000              add [bx+si],al
0000022E  001C              add [si],bl
00000230  1C1C              sbb al,0x1c
00000232  1C00              sbb al,0x0
00000234  0000              add [bx+si],al
00000236  001C              add [si],bl
00000238  1C1C              sbb al,0x1c
0000023A  1C00              sbb al,0x0
0000023C  0000              add [bx+si],al
0000023E  001C              add [si],bl
00000240  1C1C              sbb al,0x1c
00000242  1C00              sbb al,0x0
00000244  0000              add [bx+si],al
00000246  001C              add [si],bl
00000248  1C1C              sbb al,0x1c
0000024A  1C00              sbb al,0x0
0000024C  0000              add [bx+si],al
0000024E  001C              add [si],bl
00000250  1C1C              sbb al,0x1c
00000252  1C00              sbb al,0x0
00000254  0D1319            or ax,0x1913
00000257  1B1B              sbb bx,[bp+di]
00000259  1B1B              sbb bx,[bp+di]
0000025B  0001              add [bx+di],al
0000025D  07                pop es
0000025E  1A1B              sbb bl,[bp+di]
00000260  1B1B              sbb bx,[bp+di]
00000262  1B00              sbb ax,[bx+si]
00000264  0000              add [bx+si],al
00000266  001C              add [si],bl
00000268  1C1C              sbb al,0x1c
0000026A  1C00              sbb al,0x0
0000026C  0000              add [bx+si],al
0000026E  001C              add [si],bl
00000270  1C1C              sbb al,0x1c
00000272  1C00              sbb al,0x0
00000274  0000              add [bx+si],al
00000276  001C              add [si],bl
00000278  1C1C              sbb al,0x1c
0000027A  1C00              sbb al,0x0
0000027C  0000              add [bx+si],al
0000027E  001C              add [si],bl
00000280  1C1C              sbb al,0x1c
00000282  1C00              sbb al,0x0
00000284  0000              add [bx+si],al
00000286  001C              add [si],bl
00000288  1C1C              sbb al,0x1c
0000028A  1C00              sbb al,0x0
0000028C  0000              add [bx+si],al
0000028E  001C              add [si],bl
00000290  1C1C              sbb al,0x1c
00000292  1C00              sbb al,0x0
00000294  0000              add [bx+si],al
00000296  001C              add [si],bl
00000298  1C1C              sbb al,0x1c
0000029A  1C00              sbb al,0x0
0000029C  0000              add [bx+si],al
0000029E  001C              add [si],bl
000002A0  1C1C              sbb al,0x1c
000002A2  1C00              sbb al,0x0
000002A4  0000              add [bx+si],al
000002A6  001C              add [si],bl
000002A8  1C1C              sbb al,0x1c
000002AA  1C00              sbb al,0x0
000002AC  0000              add [bx+si],al
000002AE  001C              add [si],bl
000002B0  1C1C              sbb al,0x1c
000002B2  1C00              sbb al,0x0
000002B4  0000              add [bx+si],al
000002B6  001C              add [si],bl
000002B8  1C1C              sbb al,0x1c
000002BA  1C00              sbb al,0x0
000002BC  0D1319            or ax,0x1913
000002BF  1B1B              sbb bx,[bp+di]
000002C1  1B1B              sbb bx,[bp+di]
000002C3  0001              add [bx+di],al
000002C5  07                pop es
000002C6  1A1B              sbb bl,[bp+di]
000002C8  1B1B              sbb bx,[bp+di]
000002CA  1B00              sbb ax,[bx+si]
000002CC  0000              add [bx+si],al
000002CE  0000              add [bx+si],al
000002D0  0000              add [bx+si],al
000002D2  0000              add [bx+si],al
000002D4  0000              add [bx+si],al
000002D6  0000              add [bx+si],al
000002D8  0000              add [bx+si],al
000002DA  0000              add [bx+si],al
000002DC  005900            add [bx+di+0x0],bl
000002DF  0000              add [bx+si],al
000002E1  0000              add [bx+si],al
000002E3  0000              add [bx+si],al
000002E5  5A                pop dx
000002E6  5D                pop bp
000002E7  5F                pop di
000002E8  5F                pop di
000002E9  5F                pop di
000002EA  5F                pop di
000002EB  353B5A            xor ax,0x5a3b
000002EE  5D                pop bp
000002EF  5F                pop di
000002F0  5F                pop di
000002F1  5F                pop di
000002F2  5F                pop di
000002F3  363C5A            ss cmp al,0x5a
000002F6  5D                pop bp
000002F7  5F                pop di
000002F8  5F                pop di
000002F9  5F                pop di
000002FA  5F                pop di
000002FB  363C5A            ss cmp al,0x5a
000002FE  5D                pop bp
000002FF  5F                pop di
00000300  61                popa
00000301  61                popa
00000302  61                popa
00000303  363C5A            ss cmp al,0x5a
00000306  5D                pop bp
00000307  5F                pop di
00000308  0000              add [bx+si],al
0000030A  00363C5A          add [0x5a3c],dh
0000030E  5D                pop bp
0000030F  5F                pop di
00000310  5F                pop di
00000311  5F                pop di
00000312  5F                pop di
00000313  363C5A            ss cmp al,0x5a
00000316  5D                pop bp
00000317  5F                pop di
00000318  5F                pop di
00000319  5F                pop di
0000031A  5F                pop di
0000031B  363C5A            ss cmp al,0x5a
0000031E  5D                pop bp
0000031F  5F                pop di
00000320  5F                pop di
00000321  5F                pop di
00000322  5F                pop di
00000323  383D              cmp [di],bh
00000325  5A                pop dx
00000326  5D                pop bp
00000327  5F                pop di
00000328  5F                pop di
00000329  5F                pop di
0000032A  5F                pop di
0000032B  393E5B5E          cmp [0x5e5b],di
0000032F  60                pusha
00000330  60                pusha
00000331  60                pusha
00000332  60                pusha
00000333  393E5B5E          cmp [0x5e5b],di
00000337  60                pusha
00000338  60                pusha
00000339  60                pusha
0000033A  60                pusha
0000033B  393E5B5E          cmp [0x5e5b],di
0000033F  60                pusha
00000340  60                pusha
00000341  60                pusha
00000342  60                pusha
00000343  3A3B              cmp bh,[bp+di]
00000345  5B                pop bx
00000346  5E                pop si
00000347  60                pusha
00000348  60                pusha
00000349  60                pusha
0000034A  60                pusha
0000034B  0000              add [bx+si],al
0000034D  5B                pop bx
0000034E  5E                pop si
0000034F  60                pusha
00000350  60                pusha
00000351  60                pusha
00000352  60                pusha
00000353  0000              add [bx+si],al
00000355  5C                pop sp
00000356  0000              add [bx+si],al
00000358  0000              add [bx+si],al
0000035A  0000              add [bx+si],al
0000035C  0000              add [bx+si],al
0000035E  0000              add [bx+si],al
00000360  0000              add [bx+si],al
00000362  0000              add [bx+si],al
00000364  0000              add [bx+si],al
00000366  0000              add [bx+si],al
00000368  0000              add [bx+si],al
0000036A  0000              add [bx+si],al
0000036C  0000              add [bx+si],al
0000036E  0000              add [bx+si],al
00000370  0000              add [bx+si],al
00000372  0000              add [bx+si],al
00000374  0000              add [bx+si],al
00000376  0000              add [bx+si],al
00000378  0000              add [bx+si],al
0000037A  0000              add [bx+si],al
0000037C  0D1319            or ax,0x1913
0000037F  1B1B              sbb bx,[bp+di]
00000381  1B1B              sbb bx,[bp+di]
00000383  0001              add [bx+di],al
00000385  07                pop es
00000386  1A1B              sbb bl,[bp+di]
00000388  1B1B              sbb bx,[bp+di]
0000038A  1B00              sbb ax,[bx+si]
0000038C  0000              add [bx+si],al
0000038E  001C              add [si],bl
00000390  1C1C              sbb al,0x1c
00000392  1C00              sbb al,0x0
00000394  0000              add [bx+si],al
00000396  001C              add [si],bl
00000398  1C1C              sbb al,0x1c
0000039A  1C00              sbb al,0x0
0000039C  0000              add [bx+si],al
0000039E  001C              add [si],bl
000003A0  1C1C              sbb al,0x1c
000003A2  1C00              sbb al,0x0
000003A4  0000              add [bx+si],al
000003A6  001C              add [si],bl
000003A8  1C1C              sbb al,0x1c
000003AA  1C00              sbb al,0x0
000003AC  0000              add [bx+si],al
000003AE  001C              add [si],bl
000003B0  1C1C              sbb al,0x1c
000003B2  1C00              sbb al,0x0
000003B4  0000              add [bx+si],al
000003B6  001C              add [si],bl
000003B8  1C1C              sbb al,0x1c
000003BA  1C00              sbb al,0x0
000003BC  0000              add [bx+si],al
000003BE  001C              add [si],bl
000003C0  1C1C              sbb al,0x1c
000003C2  1C00              sbb al,0x0
000003C4  0000              add [bx+si],al
000003C6  001C              add [si],bl
000003C8  1C1C              sbb al,0x1c
000003CA  1C00              sbb al,0x0
000003CC  0000              add [bx+si],al
000003CE  001C              add [si],bl
000003D0  1C1C              sbb al,0x1c
000003D2  1C00              sbb al,0x0
000003D4  0D1319            or ax,0x1913
000003D7  1B1B              sbb bx,[bp+di]
000003D9  1B1B              sbb bx,[bp+di]
000003DB  0001              add [bx+di],al
000003DD  07                pop es
000003DE  191B              sbb [bp+di],bx
000003E0  1B1B              sbb bx,[bp+di]
000003E2  1B00              sbb ax,[bx+si]
000003E4  0000              add [bx+si],al
000003E6  0000              add [bx+si],al
000003E8  0000              add [bx+si],al
000003EA  0000              add [bx+si],al
000003EC  0000              add [bx+si],al
000003EE  0000              add [bx+si],al
000003F0  0000              add [bx+si],al
000003F2  0000              add [bx+si],al
000003F4  0000              add [bx+si],al
000003F6  0000              add [bx+si],al
000003F8  0000              add [bx+si],al
000003FA  0000              add [bx+si],al
000003FC  46                inc si
000003FD  27                daa
000003FE  27                daa
000003FF  27                daa
00000400  27                daa
00000401  27                daa
00000402  27                daa
00000403  3F                aas
00000404  47                inc di
00000405  2827              sub [bx],ah
00000407  27                daa
00000408  27                daa
00000409  27                daa
0000040A  27                daa
0000040B  40                inc ax
0000040C  48                dec ax
0000040D  27                daa
0000040E  27                daa
0000040F  2827              sub [bx],ah
00000411  27                daa
00000412  27                daa
00000413  41                inc cx
00000414  47                inc di
00000415  27                daa
00000416  7062              jo 0x47a
00000418  626262            bound sp,[bp+si+0x62]
0000041B  40                inc ax
0000041C  48                dec ax
0000041D  27                daa
0000041E  7162              jno 0x482
00000420  3232              xor dh,[bp+si]
00000422  324147            xor al,[bx+di+0x47]
00000425  287262            sub [bp+si+0x62],dh
00000428  0000              add [bx+si],al
0000042A  004048            add [bx+si+0x48],al
0000042D  27                daa
0000042E  7362              jnc 0x492
00000430  626262            bound sp,[bp+si+0x62]
00000433  41                inc cx
00000434  47                inc di
00000435  27                daa
00000436  27                daa
00000437  27                daa
00000438  27                daa
00000439  27                daa
0000043A  284048            sub [bx+si+0x48],al
0000043D  27                daa
0000043E  27                daa
0000043F  2827              sub [bx],ah
00000441  27                daa
00000442  27                daa
00000443  41                inc cx
00000444  47                inc di
00000445  27                daa
00000446  27                daa
00000447  27                daa
00000448  27                daa
00000449  27                daa
0000044A  27                daa
0000044B  40                inc ax
0000044C  49                dec cx
0000044D  2929              sub [bx+di],bp
0000044F  2929              sub [bx+di],bp
00000451  2929              sub [bx+di],bp
00000453  41                inc cx
00000454  4A                dec dx
00000455  2929              sub [bx+di],bp
00000457  2A29              sub ch,[bx+di]
00000459  2A29              sub ch,[bx+di]
0000045B  44                inc sp
0000045C  4B                dec bx
0000045D  2929              sub [bx+di],bp
0000045F  2929              sub [bx+di],bp
00000461  2929              sub [bx+di],bp
00000463  45                inc bp
00000464  4C                dec sp
00000465  2929              sub [bx+di],bp
00000467  2929              sub [bx+di],bp
00000469  2929              sub [bx+di],bp
0000046B  0000              add [bx+si],al
0000046D  0000              add [bx+si],al
0000046F  0000              add [bx+si],al
00000471  0000              add [bx+si],al
00000473  0000              add [bx+si],al
00000475  0000              add [bx+si],al
00000477  0000              add [bx+si],al
00000479  0000              add [bx+si],al
0000047B  0000              add [bx+si],al
0000047D  0000              add [bx+si],al
0000047F  0000              add [bx+si],al
00000481  0000              add [bx+si],al
00000483  000D              add [di],cl
00000485  1319              adc bx,[bx+di]
00000487  1B1B              sbb bx,[bp+di]
00000489  1B1B              sbb bx,[bp+di]
0000048B  0001              add [bx+di],al
0000048D  07                pop es
0000048E  1A1B              sbb bl,[bp+di]
00000490  1B1B              sbb bx,[bp+di]
00000492  1B00              sbb ax,[bx+si]
00000494  0000              add [bx+si],al
00000496  0000              add [bx+si],al
00000498  0000              add [bx+si],al
0000049A  0000              add [bx+si],al
0000049C  0000              add [bx+si],al
0000049E  0000              add [bx+si],al
000004A0  0000              add [bx+si],al
000004A2  0000              add [bx+si],al
000004A4  004D4E            add [di+0x4e],cl
000004A7  4E                dec si
000004A8  52                push dx
000004A9  4E                dec si
000004AA  4E                dec si
000004AB  353B4E            xor ax,0x4e3b
000004AE  4E                dec si
000004AF  51                push cx
000004B0  51                push cx
000004B1  52                push dx
000004B2  53                push bx
000004B3  363C4E            ss cmp al,0x4e
000004B6  682F31            push word 0x312f
000004B9  3131              xor [bx+di],si
000004BB  363C52            ss cmp al,0x52
000004BE  69303232          imul si,[bx+si],0x3232
000004C2  32363C4F          xor dh,[0x4f3c]
000004C6  6A30              push word 0x30
000004C8  0000              add [bx+si],al
000004CA  00363C52          add [0x523c],dh
000004CE  6B2F31            imul bp,[bx],0x31
000004D1  3131              xor [bx+di],si
000004D3  363C4F            ss cmp al,0x4f
000004D6  53                push bx
000004D7  52                push dx
000004D8  4E                dec si
000004D9  4E                dec si
000004DA  52                push dx
000004DB  37                aaa
000004DC  3C4E              cmp al,0x4e
000004DE  53                push bx
000004DF  52                push dx
000004E0  4E                dec si
000004E1  52                push dx
000004E2  4E                dec si
000004E3  383D              cmp [di],bh
000004E5  54                push sp
000004E6  55                push bp
000004E7  54                push sp
000004E8  54                push sp
000004E9  54                push sp
000004EA  56                push si
000004EB  393E5655          cmp [0x5556],di
000004EF  54                push sp
000004F0  55                push bp
000004F1  54                push sp
000004F2  54                push sp
000004F3  3A3B              cmp bh,[bp+di]
000004F5  54                push sp
000004F6  54                push sp
000004F7  54                push sp
000004F8  54                push sp
000004F9  56                push si
000004FA  54                push sp
000004FB  0000              add [bx+si],al
000004FD  58                pop ax
000004FE  54                push sp
000004FF  56                push si
00000500  54                push sp
00000501  54                push sp
00000502  56                push si
00000503  0000              add [bx+si],al
00000505  0000              add [bx+si],al
00000507  0000              add [bx+si],al
00000509  0000              add [bx+si],al
0000050B  0000              add [bx+si],al
0000050D  0000              add [bx+si],al
0000050F  0000              add [bx+si],al
00000511  0000              add [bx+si],al
00000513  0000              add [bx+si],al
00000515  0000              add [bx+si],al
00000517  0000              add [bx+si],al
00000519  0000              add [bx+si],al
0000051B  000D              add [di],cl
0000051D  1319              adc bx,[bx+di]
0000051F  1B1B              sbb bx,[bp+di]
00000521  1B1B              sbb bx,[bp+di]
00000523  0001              add [bx+di],al
00000525  07                pop es
00000526  1A1B              sbb bl,[bp+di]
00000528  1B1B              sbb bx,[bp+di]
0000052A  1B00              sbb ax,[bx+si]
0000052C  0000              add [bx+si],al
0000052E  001C              add [si],bl
00000530  1C1C              sbb al,0x1c
00000532  1C00              sbb al,0x0
00000534  0000              add [bx+si],al
00000536  001C              add [si],bl
00000538  1C1C              sbb al,0x1c
0000053A  1C00              sbb al,0x0
0000053C  0000              add [bx+si],al
0000053E  001C              add [si],bl
00000540  1C1C              sbb al,0x1c
00000542  1C00              sbb al,0x0
00000544  0000              add [bx+si],al
00000546  001C              add [si],bl
00000548  1C1C              sbb al,0x1c
0000054A  1C00              sbb al,0x0
0000054C  0000              add [bx+si],al
0000054E  001C              add [si],bl
00000550  1C1C              sbb al,0x1c
00000552  1C00              sbb al,0x0
00000554  0000              add [bx+si],al
00000556  001C              add [si],bl
00000558  1C1C              sbb al,0x1c
0000055A  1C00              sbb al,0x0
0000055C  0000              add [bx+si],al
0000055E  001C              add [si],bl
00000560  1C1C              sbb al,0x1c
00000562  1C00              sbb al,0x0
00000564  0D1319            or ax,0x1913
00000567  1B1B              sbb bx,[bp+di]
00000569  1B1B              sbb bx,[bp+di]
0000056B  0001              add [bx+di],al
0000056D  07                pop es
0000056E  1A1B              sbb bl,[bp+di]
00000570  1B1B              sbb bx,[bp+di]
00000572  1B00              sbb ax,[bx+si]
00000574  0000              add [bx+si],al
00000576  001C              add [si],bl
00000578  1C1C              sbb al,0x1c
0000057A  1C00              sbb al,0x0
0000057C  0000              add [bx+si],al
0000057E  001C              add [si],bl
00000580  1C1C              sbb al,0x1c
00000582  1C00              sbb al,0x0
00000584  0000              add [bx+si],al
00000586  001C              add [si],bl
00000588  1C1C              sbb al,0x1c
0000058A  1C00              sbb al,0x0
0000058C  0000              add [bx+si],al
0000058E  001C              add [si],bl
00000590  1C1C              sbb al,0x1c
00000592  1C00              sbb al,0x0
00000594  0000              add [bx+si],al
00000596  001C              add [si],bl
00000598  1C1C              sbb al,0x1c
0000059A  1C00              sbb al,0x0
0000059C  0000              add [bx+si],al
0000059E  001C              add [si],bl
000005A0  1C1C              sbb al,0x1c
000005A2  1C00              sbb al,0x0
000005A4  0000              add [bx+si],al
000005A6  001C              add [si],bl
000005A8  1C1C              sbb al,0x1c
000005AA  1C00              sbb al,0x0
000005AC  0D1319            or ax,0x1913
000005AF  1B1B              sbb bx,[bp+di]
000005B1  1B1B              sbb bx,[bp+di]
000005B3  0001              add [bx+di],al
000005B5  07                pop es
000005B6  1A1B              sbb bl,[bp+di]
000005B8  1B1B              sbb bx,[bp+di]
000005BA  1B00              sbb ax,[bx+si]
000005BC  0000              add [bx+si],al
000005BE  0000              add [bx+si],al
000005C0  0000              add [bx+si],al
000005C2  0000              add [bx+si],al
000005C4  0000              add [bx+si],al
000005C6  0000              add [bx+si],al
000005C8  0000              add [bx+si],al
000005CA  0000              add [bx+si],al
000005CC  00469A            add [bp-0x66],al
000005CF  9A9A9B9A00        call word 0x9a:word 0x9b9a
000005D4  3F                aas
000005D5  47                inc di
000005D6  9B9A9B9B9B00      wait call word 0x9b:word 0x9b9b
000005DC  40                inc ax
000005DD  48                dec ax
000005DE  64626262          bound sp,[fs:bp+si+0x62]
000005E2  6200              bound ax,[bx+si]
000005E4  41                inc cx
000005E5  47                inc di
000005E6  65626161          bound sp,[gs:bx+di+0x61]
000005EA  61                popa
000005EB  004248            add [bp+si+0x48],al
000005EE  666200            bound eax,[bx+si]
000005F1  0000              add [bx+si],al
000005F3  004147            add [bx+di+0x47],al
000005F6  67626262          bound sp,[edx+0x62]
000005FA  6200              bound ax,[bx+si]
000005FC  42                inc dx
000005FD  48                dec ax
000005FE  9B9A9A9B9A00      wait call word 0x9a:word 0x9b9a
00000604  41                inc cx
00000605  47                inc di
00000606  9B                wait
00000607  9B                wait
00000608  9B                wait
00000609  9B                wait
0000060A  9B004249          wait add [bp+si+0x49],al
0000060E  9D                popf
0000060F  9D                popf
00000610  9D                popf
00000611  9D                popf
00000612  9D                popf
00000613  00434A            add [bp+di+0x4a],al
00000616  9D                popf
00000617  9D                popf
00000618  9D                popf
00000619  9D                popf
0000061A  9D                popf
0000061B  00444B            add [si+0x4b],al
0000061E  9D                popf
0000061F  9D                popf
00000620  9D                popf
00000621  9D                popf
00000622  9D                popf
00000623  00454C            add [di+0x4c],al
00000626  9D                popf
00000627  9D                popf
00000628  9D                popf
00000629  9D                popf
0000062A  9D                popf
0000062B  0000              add [bx+si],al
0000062D  0000              add [bx+si],al
0000062F  0000              add [bx+si],al
00000631  0000              add [bx+si],al
00000633  0000              add [bx+si],al
00000635  0000              add [bx+si],al
00000637  0000              add [bx+si],al
00000639  0000              add [bx+si],al
0000063B  0000              add [bx+si],al
0000063D  0000              add [bx+si],al
0000063F  0000              add [bx+si],al
00000641  0000              add [bx+si],al
00000643  0000              add [bx+si],al
00000645  0000              add [bx+si],al
00000647  0000              add [bx+si],al
00000649  0000              add [bx+si],al
0000064B  0000              add [bx+si],al
0000064D  0000              add [bx+si],al
0000064F  0000              add [bx+si],al
00000651  0000              add [bx+si],al
00000653  007980            add [bx+di-0x80],bh
00000656  0000              add [bx+si],al
00000658  0000              add [bx+si],al
0000065A  0000              add [bx+si],al
0000065C  7A81              jpe 0x5df
0000065E  84858585          test [di-0x7a7b],al
00000662  87747B            xchg si,[si+0x7b]
00000665  82                db 0x82
00000666  0000              add [bx+si],al
00000668  0000              add [bx+si],al
0000066A  00757C            add [di+0x7c],dh
0000066D  830084            add word [bx+si],0xffffffffffffff84
00000670  86858774          xchg al,[di+0x7487]
00000674  7B82              jpo 0x5f8
00000676  0000              add [bx+si],al
00000678  0000              add [bx+si],al
0000067A  00757C            add [di+0x7c],dh
0000067D  830000            add word [bx+si],0x0
00000680  84868774          test [bp+0x7487],al
00000684  7B82              jpo 0x608
00000686  0000              add [bx+si],al
00000688  0000              add [bx+si],al
0000068A  00757C            add [di+0x7c],dh
0000068D  830000            add word [bx+si],0x0
00000690  00848874          add [si+0x7488],al
00000694  7D82              jnl 0x618
00000696  0000              add [bx+si],al
00000698  0000              add [bx+si],al
0000069A  00767E            add [bp+0x7e],dh
0000069D  830000            add word [bx+si],0x0
000006A0  0000              add [bx+si],al
000006A2  00777F            add [bx+0x7f],dh
000006A5  82                db 0x82
000006A6  0000              add [bx+si],al
000006A8  0000              add [bx+si],al
000006AA  00787F            add [bx+si+0x7f],bh
000006AD  830000            add word [bx+si],0x0
000006B0  0000              add [bx+si],al
000006B2  0000              add [bx+si],al
000006B4  0000              add [bx+si],al
000006B6  0000              add [bx+si],al
000006B8  0000              add [bx+si],al
000006BA  0000              add [bx+si],al
000006BC  0000              add [bx+si],al
000006BE  0000              add [bx+si],al
000006C0  0000              add [bx+si],al
000006C2  0000              add [bx+si],al
000006C4  0000              add [bx+si],al
000006C6  0000              add [bx+si],al
000006C8  0000              add [bx+si],al
000006CA  0000              add [bx+si],al
000006CC  0000              add [bx+si],al
000006CE  0000              add [bx+si],al
000006D0  0000              add [bx+si],al
000006D2  0024              add [si],ah
000006D4  00B40002          add [si+0x200],dh
000006D8  01FF              add di,di
000006DA  0102              add [bp+si],ax
000006DC  19AF030B          sbb [bx+0xb03],bp
000006E0  53                push bx
000006E1  61                popa
000006E2  746F              jz 0x753
000006E4  6E                outsb
000006E5  6F                outsw
000006E6  20546F            and [si+0x6f],dl
000006E9  776E              ja 0x759
000006EB  8100FFFF          add word [bx+si],0xffff
000006EF  8001FF            add byte [bx+di],0xff
000006F2  FF2C              jmp word far [si]
000006F4  0004              add [si],al
000006F6  5C                pop sp
000006F7  0002              add [bp+si],al
000006F9  800007            add byte [bx+si],0x7
000006FC  94                xchg ax,sp
000006FD  0006B900          add [0xb9],al
00000701  03FF              add di,di
00000703  FF800021          inc word [bx+si+0x2100]
00000707  0100              add [bx+si],ax
00000709  06                push es
0000070A  003E0002          add [0x200],bh
0000070E  FF                db 0xff
0000070F  FF1A              call word far [bp+si]
00000711  C7                db 0xc7
00000712  FB                sti
00000713  C7C2C898          mov dx,0x98c8
00000717  C9                leave
00000718  6F                outsw
00000719  CA02CB            retf word 0xcb02
0000071C  9D                popf
0000071D  CB                retf
0000071E  57                push di
0000071F  656C              gs insb
00000721  636F6D            arpl [bx+0x6d],bp
00000724  652C20            gs sub al,0x20
00000727  7374              jnc 0x79d
00000729  7261              jc 0x78c
0000072B  6E                outsb
0000072C  6765722E          gs a32 jc 0x75e
00000730  20596F            and [bx+di+0x6f],bl
00000733  7520              jnz 0x755
00000735  6D                insw
00000736  7573              jnz 0x7ab
00000738  7420              jz 0x75a
0000073A  686176            push word 0x7661
0000073D  6520636F          and [gs:bp+di+0x6f],ah
00000741  6D                insw
00000742  65207468          and [gs:si+0x68],dh
00000746  726F              jc 0x7b7
00000748  7567              jnz 0x7b1
0000074A  682074            push word 0x7420
0000074D  686520            push word 0x2065
00000750  6C                insb
00000751  61                popa
00000752  627972            bound di,[bx+di+0x72]
00000755  696E746873        imul bp,[bp+0x74],0x7368
0000075A  206672            and [bp+0x72],ah
0000075D  6F                outsw
0000075E  6D                insw
0000075F  207468            and [si+0x68],dh
00000762  65206F75          and [gs:bx+0x75],ch
00000766  7473              jz 0x7db
00000768  6964652077        imul sp,[si+0x65],0x7720
0000076D  6F                outsw
0000076E  726C              jc 0x7dc
00000770  642E205765        and [cs:bx+0x65],dl
00000775  206861            and [bx+si+0x61],ch
00000778  7665              jna 0x7df
0000077A  206E6F            and [bp+0x6f],ch
0000077D  7420              jz 0x79f
0000077F  656E              gs outsb
00000781  636F75            arpl [bx+0x75],bp
00000784  6E                outsb
00000785  7465              jz 0x7ec
00000787  7265              jc 0x7ee
00000789  64207375          and [fs:bp+di+0x75],dh
0000078D  636820            arpl [bx+si+0x20],bp
00000790  61                popa
00000791  206272            and [bp+si+0x72],ah
00000794  61                popa
00000795  7665              jna 0x7fc
00000797  207065            and [bx+si+0x65],dh
0000079A  7273              jc 0x80f
0000079C  6F                outsw
0000079D  6E                outsb
0000079E  20696E            and [bx+di+0x6e],ch
000007A1  206120            and [bx+di+0x20],ah
000007A4  7665              jna 0x80b
000007A6  7279              jc 0x821
000007A8  206C6F            and [si+0x6f],ch
000007AB  6E                outsb
000007AC  672074696D        and [ecx+ebp*2+0x6d],dh
000007B1  652E20596F        and [cs:bx+di+0x6f],bl
000007B6  7520              jnz 0x7d8
000007B8  7368              jnc 0x822
000007BA  6F                outsw
000007BB  756C              jnz 0x829
000007BD  64207669          and [fs:bp+0x69],dh
000007C1  7369              jnc 0x82c
000007C3  7420              jz 0x7e5
000007C5  7468              jz 0x82f
000007C7  65206772          and [gs:bx+0x72],ah
000007CB  6561              gs popa
000007CD  7420              jz 0x7ef
000007CF  7361              jnc 0x832
000007D1  6765205961        and [gs:ecx+0x61],bl
000007D6  736D              jnc 0x845
000007D8  696E202D2D        imul bp,[bp+0x20],0x2d2d
000007DD  207368            and [bp+di+0x68],dh
000007E0  65207769          and [gs:bx+0x69],dh
000007E4  6C                insb
000007E5  6C                insb
000007E6  206265            and [bp+si+0x65],ah
000007E9  20616E            and [bx+di+0x6e],ah
000007EC  7869              js 0x857
000007EE  6F                outsw
000007EF  7573              jnz 0x864
000007F1  20746F            and [si+0x6f],dh
000007F4  206D65            and [di+0x65],ch
000007F7  657420            gs jz 0x81a
000007FA  796F              jns 0x86b
000007FC  752E              jnz 0x82c
000007FE  FF536F            call word near [bp+di+0x6f]
00000801  20796F            and [bx+di+0x6f],bh
00000804  755C              jnz 0x862
00000806  7265              jc 0x86d
00000808  207468            and [si+0x68],dh
0000080B  65206272          and [gs:bp+si+0x72],ah
0000080F  61                popa
00000810  7665              jna 0x877
00000812  206F6E            and [bx+0x6e],ch
00000815  6520495C          and [gs:bx+di+0x5c],cl
00000819  7665              jna 0x880
0000081B  206865            and [bx+si+0x65],ch
0000081E  61                popa
0000081F  7264              jc 0x885
00000821  206162            and [bx+di+0x62],ah
00000824  6F                outsw
00000825  7574              jnz 0x89b
00000827  2E205765          and [cs:bx+0x65],dl
0000082B  6C                insb
0000082C  6C                insb
0000082D  2C20              sub al,0x20
0000082F  696620796F        imul sp,[bp+0x20],0x6f79
00000834  755C              jnz 0x892
00000836  7265              jc 0x89d
00000838  20676F            and [bx+0x6f],ah
0000083B  696E672074        imul bp,[bp+0x67],0x7420
00000840  6F                outsw
00000841  20676F            and [bx+0x6f],ah
00000844  206F6E            and [bx+0x6e],ch
00000847  206672            and [bp+0x72],ah
0000084A  6F                outsw
0000084B  6D                insw
0000084C  206865            and [bx+si+0x65],ch
0000084F  7265              jc 0x8b6
00000851  2C20              sub al,0x20
00000853  49                dec cx
00000854  5C                pop sp
00000855  6C                insb
00000856  6C                insb
00000857  206769            and [bx+0x69],ah
0000085A  7665              jna 0x8c1
0000085C  20796F            and [bx+di+0x6f],bh
0000085F  7520              jnz 0x881
00000861  61                popa
00000862  207469            and [si+0x69],dh
00000865  702E              jo 0x895
00000867  2020              and [bx+si],ah
00000869  57                push di
0000086A  68656E            push word 0x6e65
0000086D  20796F            and [bx+di+0x6f],bh
00000870  7520              jnz 0x892
00000872  636F6D            arpl [bx+0x6d],bp
00000875  6520746F          and [gs:si+0x6f],dh
00000879  206120            and [bx+di+0x20],ah
0000087C  7374              jnc 0x8f2
0000087E  6F                outsw
0000087F  7070              jo 0x8f1
00000881  696E672070        imul bp,[bp+0x67],0x7020
00000886  6C                insb
00000887  61                popa
00000888  63652C            arpl [di+0x2c],sp
0000088B  206469            and [si+0x69],ah
0000088E  67206120          and [ecx+0x20],ah
00000892  686F6C            push word 0x6c6f
00000895  652E205468        and [cs:si+0x68],dl
0000089A  65206465          and [gs:si+0x65],ah
0000089E  6D                insw
0000089F  6F                outsw
000008A0  6E                outsb
000008A1  7320              jnc 0x8c3
000008A3  686176            push word 0x7661
000008A6  65206869          and [gs:bx+si+0x69],ch
000008AA  6464656E          gs outsb
000008AE  206A65            and [bp+si+0x65],ch
000008B1  7765              ja 0x918
000008B3  6C                insb
000008B4  7320              jnc 0x8d6
000008B6  696E206D61        imul bp,[bp+0x20],0x616d
000008BB  6E                outsb
000008BC  7920              jns 0x8de
000008BE  706C              jo 0x92c
000008C0  61                popa
000008C1  636573            arpl [di+0x73],sp
000008C4  2EFF4172          inc word [cs:bx+di+0x72]
000008C8  6520796F          and [gs:bx+di+0x6f],bh
000008CC  7520              jnz 0x8ee
000008CE  44                inc sp
000008CF  756B              jnz 0x93c
000008D1  65204761          and [gs:bx+0x61],al
000008D5  726C              jc 0x943
000008D7  61                popa
000008D8  6E                outsb
000008D9  643F              fs aas
000008DB  205468            and [si+0x68],dl
000008DE  61                popa
000008DF  6E                outsb
000008E0  6B2074            imul sp,[bx+si],0x74
000008E3  686520            push word 0x2065
000008E6  53                push bx
000008E7  7069              jo 0x952
000008E9  7269              jc 0x954
000008EB  7473              jz 0x960
000008ED  20796F            and [bx+di+0x6f],bh
000008F0  755C              jnz 0x94e
000008F2  7665              jna 0x959
000008F4  20636F            and [bp+di+0x6f],ah
000008F7  6D                insw
000008F8  652E205765        and [cs:bx+0x65],dl
000008FD  206573            and [di+0x73],ah
00000900  636170            arpl [bx+di+0x70],sp
00000903  6564206672        and [fs:bp+0x72],ah
00000908  6F                outsw
00000909  6D                insw
0000090A  204A61            and [bp+si+0x61],cl
0000090D  7368              jnc 0x977
0000090F  69696E2074        imul bp,[bx+di+0x6e],0x7420
00000914  68726F            push word 0x6f72
00000917  7567              jnz 0x980
00000919  682074            push word 0x7420
0000091C  686520            push word 0x2065
0000091F  706F              jo 0x990
00000921  7765              ja 0x988
00000923  7220              jc 0x945
00000925  6F                outsw
00000926  66207468          o32 and [si+0x68],dh
0000092A  65205370          and [gs:bp+di+0x70],dl
0000092E  6972697473        imul si,[bp+si+0x69],0x7374
00000933  2E20486F          and [cs:bx+si+0x6f],cl
00000937  7765              ja 0x99e
00000939  7665              jna 0x9a0
0000093B  722C              jc 0x969
0000093D  206966            and [bx+di+0x66],ch
00000940  206869            and [bx+si+0x69],ch
00000943  7320              jnc 0x965
00000945  706F              jo 0x9b6
00000947  7765              ja 0x9ae
00000949  7220              jc 0x96b
0000094B  7368              jnc 0x9b5
0000094D  6F                outsw
0000094E  756C              jnz 0x9bc
00000950  64206265          and [fs:bp+si+0x65],ah
00000954  636F6D            arpl [bx+0x6d],bp
00000957  6520736F          and [gs:bp+di+0x6f],dh
0000095B  207374            and [bp+di+0x74],dh
0000095E  726F              jc 0x9cf
00000960  6E                outsb
00000961  6720746861        and [eax+ebp*2+0x61],dh
00000966  7420              jz 0x988
00000968  7468              jz 0x9d2
0000096A  65205370          and [gs:bp+di+0x70],dl
0000096E  6972697473        imul si,[bp+si+0x69],0x7374
00000973  5C                pop sp
00000974  206361            and [bp+di+0x61],ah
00000977  6E                outsb
00000978  5C                pop sp
00000979  7420              jz 0x99b
0000097B  7072              jo 0x9ef
0000097D  6F                outsw
0000097E  7465              jz 0x9e5
00000980  637420            arpl [si+0x20],si
00000983  7573              jnz 0x9f8
00000985  2C20              sub al,0x20
00000987  7468              jz 0x9f1
00000989  697320746F        imul si,[bp+di+0x20],0x6f74
0000098E  776E              ja 0x9fe
00000990  206973            and [bx+di+0x73],ch
00000993  20646F            and [si+0x6f],ah
00000996  6F                outsw
00000997  6D                insw
00000998  65642EFF4C65      dec word [cs:si+0x65]
0000099E  7420              jz 0x9c0
000009A0  6D                insw
000009A1  65206769          and [gs:bx+0x69],ah
000009A5  7665              jna 0xa0c
000009A7  20796F            and [bx+di+0x6f],bh
000009AA  7520              jnz 0x9cc
000009AC  736F              jnc 0xa1d
000009AE  6D                insw
000009AF  65206164          and [gs:bx+di+0x64],ah
000009B3  7669              jna 0xa1e
000009B5  63652C            arpl [di+0x2c],sp
000009B8  207374            and [bp+di+0x74],dh
000009BB  7261              jc 0xa1e
000009BD  6E                outsb
000009BE  6765722E          gs a32 jc 0x9f0
000009C2  204966            and [bx+di+0x66],cl
000009C5  20796F            and [bx+di+0x6f],bh
000009C8  7520              jnz 0x9ea
000009CA  6661              popad
000009CC  6C                insb
000009CD  6C                insb
000009CE  20646F            and [si+0x6f],ah
000009D1  776E              ja 0xa41
000009D3  207468            and [si+0x68],dh
000009D6  65207374          and [gs:bp+di+0x74],dh
000009DA  6F                outsw
000009DB  6E                outsb
000009DC  6520736C          and [gs:bp+di+0x6c],dh
000009E0  61                popa
000009E1  6220              bound sp,[bx+si]
000009E3  696E206672        imul bp,[bp+0x20],0x7266
000009E8  6F                outsw
000009E9  6E                outsb
000009EA  7420              jz 0xa0c
000009EC  6F                outsw
000009ED  66207468          o32 and [si+0x68],dh
000009F1  6520626C          and [gs:bp+si+0x6c],ah
000009F5  7565              jnz 0xa5c
000009F7  20646F            and [si+0x6f],ah
000009FA  6F                outsw
000009FB  722C              jc 0xa29
000009FD  20796F            and [bx+di+0x6f],bh
00000A00  7520              jnz 0xa22
00000A02  7769              ja 0xa6d
00000A04  6C                insb
00000A05  6C                insb
00000A06  207365            and [bp+di+0x65],dh
00000A09  65206120          and [gs:bx+di+0x20],ah
00000A0D  677265            a32 jc 0xa75
00000A10  656E              gs outsb
00000A12  20646F            and [si+0x6f],ah
00000A15  6F                outsw
00000A16  7220              jc 0xa38
00000A18  6E                outsb
00000A19  6561              gs popa
00000A1B  7262              jc 0xa7f
00000A1D  792E              jns 0xa4d
00000A1F  20446F            and [si+0x6f],al
00000A22  6E                outsb
00000A23  5C                pop sp
00000A24  7420              jz 0xa46
00000A26  676F              a32 outsw
00000A28  207468            and [si+0x68],dh
00000A2B  726F              jc 0xa9c
00000A2D  7567              jnz 0xa96
00000A2F  682074            push word 0x7420
00000A32  686174            push word 0x7461
00000A35  20646F            and [si+0x6f],ah
00000A38  6F                outsw
00000A39  7220              jc 0xa5b
00000A3B  756E              jnz 0xaab
00000A3D  64657220          gs jc 0xa61
00000A41  61                popa
00000A42  6E                outsb
00000A43  7920              jns 0xa65
00000A45  636972            arpl [bx+di+0x72],bp
00000A48  63756D            arpl [di+0x6d],si
00000A4B  7374              jnc 0xac1
00000A4D  61                popa
00000A4E  6E                outsb
00000A4F  636573            arpl [di+0x73],sp
00000A52  202D              and [di],ch
00000A54  2D2069            sub ax,0x6920
00000A57  7420              jz 0xa79
00000A59  6973206120        imul si,[bp+di+0x20],0x2061
00000A5E  646F              fs outsw
00000A60  6F                outsw
00000A61  7277              jc 0xada
00000A63  61                popa
00000A64  7920              jns 0xa86
00000A66  746F              jz 0xad7
00000A68  207468            and [si+0x68],dh
00000A6B  65207061          and [gs:bx+si+0x61],dh
00000A6F  7374              jnc 0xae5
00000A71  2EFF4265          inc word [cs:bp+si+0x65]
00000A75  7761              ja 0xad8
00000A77  7265              jc 0xade
00000A79  2120              and [bx+si],sp
00000A7B  49                dec cx
00000A7C  207765            and [bx+0x65],dh
00000A7F  6E                outsb
00000A80  7420              jz 0xaa2
00000A82  696E746F20        imul bp,[bp+0x74],0x206f
00000A87  7468              jz 0xaf1
00000A89  65206361          and [gs:bp+di+0x61],ah
00000A8D  7665              jna 0xaf4
00000A8F  726E              jc 0xaff
00000A91  7320              jnc 0xab3
00000A93  61                popa
00000A94  6E                outsb
00000A95  64207361          and [fs:bp+di+0x61],dh
00000A99  7720              ja 0xabb
00000A9B  61                popa
00000A9C  6E                outsb
00000A9D  206177            and [bx+di+0x77],ah
00000AA0  66756C            jnz 0xb0f
00000AA3  206372            and [bp+di+0x72],ah
00000AA6  6561              gs popa
00000AA8  7475              jz 0xb1f
00000AAA  7265              jc 0xb11
00000AAC  202D              and [di],ch
00000AAE  2D2061            sub ax,0x6120
00000AB1  206769            and [bx+0x69],ah
00000AB4  61                popa
00000AB5  6E                outsb
00000AB6  7420              jz 0xad8
00000AB8  64656D            gs insw
00000ABB  6F                outsw
00000ABC  6E                outsb
00000ABD  206F63            and [bx+0x63],ch
00000AC0  746F              jz 0xb31
00000AC2  7075              jo 0xb39
00000AC4  732E              jnc 0xaf4
00000AC6  204974            and [bx+di+0x74],cl
00000AC9  207761            and [bx+0x61],dh
00000ACC  7320              jnc 0xaee
00000ACE  7465              jz 0xb35
00000AD0  7272              jc 0xb44
00000AD2  696679696E        imul sp,[bp+0x79],0x6e69
00000AD7  672C20            a32 sub al,0x20
00000ADA  627574            bound si,[di+0x74]
00000ADD  204920            and [bx+di+0x20],cl
00000AE0  657363            gs jnc 0xb46
00000AE3  61                popa
00000AE4  7065              jo 0xb4b
00000AE6  642E204920        and [cs:bx+di+0x20],cl
00000AEB  686F70            push word 0x706f
00000AEE  6520796F          and [gs:bx+di+0x6f],bh
00000AF2  7520              jnz 0xb14
00000AF4  7769              ja 0xb5f
00000AF6  6C                insb
00000AF7  6C                insb
00000AF8  206265            and [bp+si+0x65],ah
00000AFB  206173            and [bx+di+0x73],ah
00000AFE  206C75            and [si+0x75],ch
00000B01  636B79            arpl [bp+di+0x79],bp
00000B04  2EFF4172          inc word [cs:bx+di+0x72]
00000B08  6520796F          and [gs:bx+di+0x6f],bh
00000B0C  7520              jnz 0xb2e
00000B0E  7468              jz 0xb78
00000B10  65206272          and [gs:bp+si+0x72],ah
00000B14  61                popa
00000B15  7665              jna 0xb7c
00000B17  206F6E            and [bx+0x6e],ch
00000B1A  653F              gs aas
00000B1C  204926            and [bx+di+0x26],cl
00000B1F  686F70            push word 0x706f
00000B22  6520796F          and [gs:bx+di+0x6f],bh
00000B26  7520              jnz 0xb48
00000B28  686176            push word 0x7661
00000B2B  65206272          and [gs:bp+si+0x72],ah
00000B2F  6F                outsw
00000B30  7567              jnz 0xb99
00000B32  687420            push word 0x2074
00000B35  61                popa
00000B36  6C                insb
00000B37  6D                insw
00000B38  61                popa
00000B39  7320              jnc 0xb5b
00000B3B  666F              outsd
00000B3D  7220              jc 0xb5f
00000B3F  7573              jnz 0xbb4
00000B41  2E205468          and [cs:si+0x68],dl
00000B45  6520616C          and [gs:bx+di+0x6c],ah
00000B49  6D                insw
00000B4A  61                popa
00000B4B  7320              jnc 0xb6d
00000B4D  61                popa
00000B4E  7265              jc 0xbb5
00000B50  207061            and [bx+si+0x61],dh
00000B53  7274              jc 0xbc9
00000B55  206F66            and [bx+0x66],ch
00000B58  204A61            and [bp+si+0x61],cl
00000B5B  7368              jnc 0xbc5
00000B5D  69696E5C73        imul bp,[bx+di+0x6e],0x735c
00000B62  20706F            and [bx+si+0x6f],dh
00000B65  7765              ja 0xbcc
00000B67  722E              jc 0xb97
00000B69  205765            and [bx+0x65],dl
00000B6C  207573            and [di+0x73],dh
00000B6F  65207468          and [gs:si+0x68],dh
00000B73  656D              gs insw
00000B75  20746F            and [si+0x6f],dh
00000B78  206D61            and [di+0x61],ch
00000B7B  6B65206D          imul sp,[di+0x20],0x6d
00000B7F  65646963696E65    imul sp,[fs:bp+di+0x69],0x656e
00000B86  2C20              sub al,0x20
00000B88  61                popa
00000B89  6E                outsb
00000B8A  64206F74          and [fs:bx+0x74],ch
00000B8E  686572            push word 0x7265
00000B91  207573            and [di+0x73],dh
00000B94  6566756C          gs jnz 0xc04
00000B98  207468            and [si+0x68],dh
00000B9B  696E67732E        imul bp,[bp+0x67],0x2e73
00000BA0  FF4475            inc word [si+0x75]
00000BA3  6B652047          imul sp,[di+0x20],0x47
00000BA7  61                popa
00000BA8  726C              jc 0xc16
00000BAA  61                popa
00000BAB  6E                outsb
00000BAC  642C20            fs sub al,0x20
00000BAF  7768              ja 0xc19
00000BB1  656E              gs outsb
00000BB3  20796F            and [bx+di+0x6f],bh
00000BB6  7520              jnz 0xbd8
00000BB8  676F              a32 outsw
00000BBA  20696E            and [bx+di+0x6e],ch
00000BBD  746F              jz 0xc2e
00000BBF  207468            and [si+0x68],dh
00000BC2  65206361          and [gs:bp+di+0x61],ah
00000BC6  7665              jna 0xc2d
00000BC8  726E              jc 0xc38
00000BCA  7320              jnc 0xbec
00000BCC  61                popa
00000BCD  6761              a32 popa
00000BCF  696E2C2070        imul bp,[bp+0x2c],0x7020
00000BD4  6C                insb
00000BD5  6561              gs popa
00000BD7  7365              jnc 0xc3e
00000BD9  207472            and [si+0x72],dh
00000BDC  7920              jns 0xbfe
00000BDE  746F              jz 0xc4f
00000BE0  206272            and [bp+si+0x72],ah
00000BE3  696E672062        imul bp,[bp+0x67],0x6220
00000BE8  61                popa
00000BE9  636B20            arpl [bp+di+0x20],bp
00000BEC  6D                insw
00000BED  6F                outsw
00000BEE  7265              jc 0xc55
00000BF0  20616C            and [bx+di+0x6c],ah
00000BF3  6D                insw
00000BF4  61                popa
00000BF5  732E              jnc 0xc25
00000BF7  20546F            and [si+0x6f],dl
00000BFA  207375            and [bp+di+0x75],dh
00000BFD  7070              jo 0xc6f
00000BFF  6C                insb
00000C00  656D              gs insw
00000C02  656E              gs outsb
00000C04  7420              jz 0xc26
00000C06  7468              jz 0xc70
00000C08  65207072          and [gs:bx+si+0x72],dh
00000C0C  6F                outsw
00000C0D  7465              jz 0xc74
00000C0F  637469            arpl [si+0x69],si
00000C12  7665              jna 0xc79
00000C14  20706F            and [bx+si+0x6f],dh
00000C17  7765              ja 0xc7e
00000C19  7220              jc 0xc3b
00000C1B  6F                outsw
00000C1C  66207468          o32 and [si+0x68],dh
00000C20  65205370          and [gs:bp+di+0x70],dl
00000C24  6972697473        imul si,[bp+si+0x69],0x7374
00000C29  207765            and [bx+0x65],dh
00000C2C  206D75            and [di+0x75],ch
00000C2F  7374              jnc 0xca5
00000C31  206275            and [bp+si+0x75],ah
00000C34  696C642061        imul bp,[si+0x64],0x6120
00000C39  207761            and [bx+0x61],dh
00000C3C  6C                insb
00000C3D  6C                insb
00000C3E  206F66            and [bx+0x66],ch
00000C41  20616C            and [bx+di+0x6c],ah
00000C44  6D                insw
00000C45  61                popa
00000C46  732E              jnc 0xc76
00000C48  20556E            and [di+0x6e],dl
00000C4B  6C                insb
00000C4C  657373            gs jnc 0xcc2
00000C4F  207765            and [bx+0x65],dh
00000C52  206765            and [bx+0x65],ah
00000C55  7420              jz 0xc77
00000C57  6D                insw
00000C58  6F                outsw
00000C59  7265              jc 0xcc0
00000C5B  2C20              sub al,0x20
00000C5D  53                push bx
00000C5E  61                popa
00000C5F  746F              jz 0xcd0
00000C61  6E                outsb
00000C62  6F                outsw
00000C63  20546F            and [si+0x6f],dl
00000C66  776E              ja 0xcd6
00000C68  206973            and [bx+di+0x73],ch
00000C6B  20696E            and [bx+di+0x6e],ch
00000C6E  207065            and [bx+si+0x65],dh
00000C71  7269              jc 0xcdc
00000C73  6C                insb
00000C74  2EFF25            jmp word near [cs:di]
00000C77  0003              add [bp+di],al
00000C79  1C00              sbb al,0x0
00000C7B  0100              add [bx+si],ax
00000C7D  02C4              add al,ah
00000C7F  0000              add [bx+si],al
00000C81  0003              add [bp+di],al
00000C83  0300              add ax,[bx+si]
00000C85  0416              add al,0x16
00000C87  0001              add [bx+di],al
00000C89  0003              add [bp+di],al
00000C8B  0300              add ax,[bx+si]
00000C8D  005600            add [bp+0x0],dl
00000C90  0400              add al,0x0
00000C92  0001              add [bx+di],al
00000C94  0001              add [bx+di],al
00000C96  7900              jns 0xc98
00000C98  82                db 0x82
00000C99  0000              add [bx+si],al
00000C9B  0200              add al,[bx+si]
00000C9D  039D0002          add bx,[di+0x200]
00000CA1  0000              add [bx+si],al
00000CA3  0100              add [bx+si],ax
00000CA5  05A300            add ax,0xa3
00000CA8  831C00            sbb word [si],0x0
00000CAB  0200              add al,[bx+si]
00000CAD  06                push es
00000CAE  FF                db 0xff
00000CAF  FF                db 0xff
