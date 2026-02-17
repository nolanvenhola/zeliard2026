00000000  BE0800            mov si,0x8
00000003  00ABC372          add [bp+di+0x72c3],ch
00000007  00B0C301          add [bx+si+0x1c3],dh
0000000B  C6C3CA            mov bl,0xca
0000000E  C3                ret
0000000F  0000              add [bx+si],al
00000011  F6C39C            test bl,0x9c
00000014  C8A7C322          enter word 0xc3a7,byte 0x22
00000018  00D2              add dl,dl
0000001A  C3                ret
0000001B  0000              add [bx+si],al
0000001D  0000              add [bx+si],al
0000001F  0000              add [bx+si],al
00000021  0000              add [bx+si],al
00000023  0000              add [bx+si],al
00000025  0000              add [bx+si],al
00000027  0000              add [bx+si],al
00000029  0000              add [bx+si],al
0000002B  0000              add [bx+si],al
0000002D  0000              add [bx+si],al
0000002F  0000              add [bx+si],al
00000031  0000              add [bx+si],al
00000033  0000              add [bx+si],al
00000035  3C3D              cmp al,0x3d
00000037  3D3D3D            cmp ax,0x3d3d
0000003A  3D5558            cmp ax,0x5855
0000003D  5C                pop sp
0000003E  6C                insb
0000003F  6465696D565A5D    imul bp,[gs:di+0x56],0x5d5a
00000046  61                popa
00000047  65666C            gs o32 insb
0000004A  6E                outsb
0000004B  57                push di
0000004C  5A                pop dx
0000004D  5E                pop si
0000004E  626667            bound sp,[bp+0x67]
00000051  6B6F5458          imul bp,[bx+0x54],0x58
00000055  5C                pop sp
00000056  60                pusha
00000057  6464696D55595D    imul bp,[fs:di+0x55],0x5d59
0000005E  61                popa
0000005F  6C                insb
00000060  656A6D            gs push word 0x6d
00000063  56                push si
00000064  5A                pop dx
00000065  5E                pop si
00000066  626667            bound sp,[bp+0x67]
00000069  6C                insb
0000006A  6E                outsb
0000006B  57                push di
0000006C  5B                pop bx
0000006D  5F                pop di
0000006E  636768            arpl [bx+0x68],sp
00000071  696F565858        imul bp,[bx+0x56],0x5858
00000076  5E                pop si
00000077  5C                pop sp
00000078  60                pusha
00000079  696D56595C        imul bp,[di+0x56],0x5c59
0000007E  5F                pop di
0000007F  5D                pop bp
00000080  61                popa
00000081  6F                outsw
00000082  6F                outsw
00000083  56                push si
00000084  5A                pop dx
00000085  5F                pop di
00000086  60                pusha
00000087  6464696D005759    imul bp,[fs:di+0x0],0x5957
0000008E  626365            bound sp,[bp+di+0x65]
00000091  6C                insb
00000092  6E                outsb
00000093  00565A            add [bp+0x5a],dl
00000096  6467696D6F0055    imul bp,[fs:ebp+0x6f],0x5500
0000009D  60                pusha
0000009E  636567            arpl [di+0x67],sp
000000A1  6C                insb
000000A2  6D                insw
000000A3  003F              add [bx],bh
000000A5  42                inc dx
000000A6  60                pusha
000000A7  6464686D00        fs push word 0x6d
000000AC  004649            add [bp+0x49],al
000000AF  60                pusha
000000B0  49                dec cx
000000B1  51                push cx
000000B2  53                push bx
000000B3  0000              add [bx+si],al
000000B5  0000              add [bx+si],al
000000B7  4D                dec bp
000000B8  4A                dec dx
000000B9  0000              add [bx+si],al
000000BB  0000              add [bx+si],al
000000BD  0000              add [bx+si],al
000000BF  0000              add [bx+si],al
000000C1  0000              add [bx+si],al
000000C3  0038              add [bx+si],bh
000000C5  06                push es
000000C6  0000              add [bx+si],al
000000C8  0000              add [bx+si],al
000000CA  0000              add [bx+si],al
000000CC  3907              cmp [bx],ax
000000CE  1313              adc dx,[bp+di]
000000D0  1313              adc dx,[bp+di]
000000D2  1302              adc ax,[bp+si]
000000D4  3A08              cmp cl,[bx+si]
000000D6  1414              adc al,0x14
000000D8  1414              adc al,0x14
000000DA  1400              adc al,0x0
000000DC  3B09              cmp cx,[bx+di]
000000DE  000E3234          add [0x3432],cl
000000E2  360000            add [ss:bx+si],al
000000E5  000D              add [di],cl
000000E7  0E                push cs
000000E8  3335              xor si,[di]
000000EA  37                aaa
000000EB  0000              add [bx+si],al
000000ED  000E1133          add [0x3311],cl
000000F1  3436              xor al,0x36
000000F3  0000              add [bx+si],al
000000F5  020E1733          add cl,[0x3317]
000000F9  3437              xor al,0x37
000000FB  0000              add [bx+si],al
000000FD  000F              add [bx],cl
000000FF  153334            adc ax,0x3433
00000102  360000            add [ss:bx+si],al
00000105  3800              cmp [bx+si],al
00000107  0E                push cs
00000108  3334              xor si,[si]
0000010A  37                aaa
0000010B  0000              add [bx+si],al
0000010D  390A              cmp [bp+si],cx
0000010F  1133              adc [bp+di],si
00000111  3436              xor al,0x36
00000113  0002              add [bp+si],al
00000115  3A0B              cmp cl,[bp+di]
00000117  1132              adc [bp+si],si
00000119  3437              xor al,0x37
0000011B  0000              add [bx+si],al
0000011D  390B              cmp [bp+di],cx
0000011F  1132              adc [bp+si],si
00000121  3436              xor al,0x36
00000123  0000              add [bx+si],al
00000125  3A0B              cmp cl,[bp+di]
00000127  17                pop ss
00000128  3234              xor dh,[si]
0000012A  37                aaa
0000012B  0000              add [bx+si],al
0000012D  3A0B              cmp cl,[bp+di]
0000012F  1132              adc [bp+si],si
00000131  353600            xor ax,0x36
00000134  003A              add [bp+si],bh
00000136  0B11              or dx,[bx+di]
00000138  3335              xor si,[di]
0000013A  37                aaa
0000013B  0000              add [bx+si],al
0000013D  3A0B              cmp cl,[bp+di]
0000013F  17                pop ss
00000140  3335              xor si,[di]
00000142  360002            add [ss:bp+si],al
00000145  390B              cmp [bp+di],cx
00000147  1133              adc [bp+di],si
00000149  353700            xor ax,0x37
0000014C  0039              add [bx+di],bh
0000014E  0B17              or dx,[bx]
00000150  3335              xor si,[di]
00000152  360000            add [ss:bx+si],al
00000155  3A0B              cmp cl,[bp+di]
00000157  1133              adc [bp+di],si
00000159  3437              xor al,0x37
0000015B  0000              add [bx+si],al
0000015D  3A0B              cmp cl,[bp+di]
0000015F  1132              adc [bp+si],si
00000161  3436              xor al,0x36
00000163  0000              add [bx+si],al
00000165  390B              cmp [bp+di],cx
00000167  17                pop ss
00000168  3234              xor dh,[si]
0000016A  37                aaa
0000016B  0000              add [bx+si],al
0000016D  3A0B              cmp cl,[bp+di]
0000016F  1133              adc [bp+di],si
00000171  3436              xor al,0x36
00000173  0002              add [bp+si],al
00000175  390C              cmp [si],cx
00000177  1133              adc [bp+di],si
00000179  3437              xor al,0x37
0000017B  0000              add [bx+si],al
0000017D  3B00              cmp ax,[bx+si]
0000017F  153335            adc ax,0x3533
00000182  360038            add [ss:bx+si],bh
00000185  0000              add [bx+si],al
00000187  0E                push cs
00000188  3335              xor si,[di]
0000018A  37                aaa
0000018B  0039              add [bx+di],bh
0000018D  0A10              or dl,[bx+si]
0000018F  17                pop ss
00000190  3335              xor si,[di]
00000192  36023A            add bh,[ss:bp+si]
00000195  0B11              or dx,[bx+di]
00000197  1818              sbb [bx+si],bl
00000199  1819              sbb [bx+di],bl
0000019B  003A              add [bp+si],bh
0000019D  0B11              or dx,[bx+di]
0000019F  1818              sbb [bx+si],bl
000001A1  1819              sbb [bx+di],bl
000001A3  003A              add [bp+si],bh
000001A5  0B11              or dx,[bx+di]
000001A7  1818              sbb [bx+si],bl
000001A9  1819              sbb [bx+di],bl
000001AB  0039              add [bx+di],bh
000001AD  0B11              or dx,[bx+di]
000001AF  1B20              sbb sp,[bx+si]
000001B1  262C00            es sub al,0x0
000001B4  390B              cmp [bp+di],cx
000001B6  111C              adc [si],bx
000001B8  2127              and [bx],sp
000001BA  2D003A            sub ax,0x3a00
000001BD  0B11              or dx,[bx+di]
000001BF  1D2228            sbb ax,0x2822
000001C2  2E023A            add bh,[cs:bp+si]
000001C5  0B11              or dx,[bx+di]
000001C7  1D2329            sbb ax,0x2923
000001CA  2F                das
000001CB  003A              add [bp+si],bh
000001CD  0B11              or dx,[bx+di]
000001CF  1E                push ds
000001D0  242A              and al,0x2a
000001D2  3000              xor [bx+si],al
000001D4  390B              cmp [bp+di],cx
000001D6  111F              adc [bx],bx
000001D8  252B31            and ax,0x312b
000001DB  003A              add [bp+si],bh
000001DD  0B11              or dx,[bx+di]
000001DF  1818              sbb [bx+si],bl
000001E1  181A              sbb [bp+si],bl
000001E3  003A              add [bp+si],bh
000001E5  0B11              or dx,[bx+di]
000001E7  1818              sbb [bx+si],bl
000001E9  181A              sbb [bp+si],bl
000001EB  0039              add [bx+di],bh
000001ED  0B11              or dx,[bx+di]
000001EF  1818              sbb [bx+si],bl
000001F1  181A              sbb [bp+si],bl
000001F3  0239              add bh,[bx+di]
000001F5  0C12              or al,0x12
000001F7  16                push ss
000001F8  0101              add [bx+di],ax
000001FA  0100              add [bx+si],ax
000001FC  3B00              cmp ax,[bx+si]
000001FE  000E3233          add [0x3332],cl
00000202  360000            add [ss:bx+si],al
00000205  3800              cmp [bx+si],al
00000207  0E                push cs
00000208  3335              xor si,[di]
0000020A  37                aaa
0000020B  0000              add [bx+si],al
0000020D  3A0A              cmp cl,[bp+si]
0000020F  1133              adc [bp+di],si
00000211  353600            xor ax,0x36
00000214  023A              add bh,[bp+si]
00000216  0B17              or dx,[bx]
00000218  3335              xor si,[di]
0000021A  37                aaa
0000021B  0000              add [bx+si],al
0000021D  390B              cmp [bp+di],cx
0000021F  1133              adc [bp+di],si
00000221  353600            xor ax,0x36
00000224  003A              add [bp+si],bh
00000226  0B17              or dx,[bx]
00000228  3335              xor si,[di]
0000022A  37                aaa
0000022B  0000              add [bx+si],al
0000022D  390B              cmp [bp+di],cx
0000022F  1133              adc [bp+di],si
00000231  353600            xor ax,0x36
00000234  0039              add [bx+di],bh
00000236  0B17              or dx,[bx]
00000238  3335              xor si,[di]
0000023A  37                aaa
0000023B  0000              add [bx+si],al
0000023D  390B              cmp [bp+di],cx
0000023F  1133              adc [bp+di],si
00000241  353600            xor ax,0x36
00000244  023A              add bh,[bp+si]
00000246  0B17              or dx,[bx]
00000248  3335              xor si,[di]
0000024A  37                aaa
0000024B  0000              add [bx+si],al
0000024D  3A0B              cmp cl,[bp+di]
0000024F  1133              adc [bp+di],si
00000251  353600            xor ax,0x36
00000254  0039              add [bx+di],bh
00000256  0B11              or dx,[bx+di]
00000258  3335              xor si,[di]
0000025A  37                aaa
0000025B  0000              add [bx+si],al
0000025D  3A0B              cmp cl,[bp+di]
0000025F  1133              adc [bp+di],si
00000261  353600            xor ax,0x36
00000264  0039              add [bx+di],bh
00000266  0B11              or dx,[bx+di]
00000268  3335              xor si,[di]
0000026A  37                aaa
0000026B  0000              add [bx+si],al
0000026D  3A0B              cmp cl,[bp+di]
0000026F  1133              adc [bp+di],si
00000271  353600            xor ax,0x36
00000274  023A              add bh,[bp+si]
00000276  0C11              or al,0x11
00000278  3335              xor si,[di]
0000027A  37                aaa
0000027B  0000              add [bx+si],al
0000027D  3B00              cmp ax,[bx+si]
0000027F  0E                push cs
00000280  3335              xor si,[di]
00000282  360000            add [ss:bx+si],al
00000285  000D              add [di],cl
00000287  153335            adc ax,0x3533
0000028A  37                aaa
0000028B  0000              add [bx+si],al
0000028D  000E1133          add [0x3311],cl
00000291  353600            xor ax,0x36
00000294  0002              add [bp+si],al
00000296  151132            adc ax,0x3211
00000299  3437              xor al,0x37
0000029B  0000              add [bx+si],al
0000029D  000F              add [bx],cl
0000029F  153234            adc ax,0x3432
000002A2  360038            add [ss:bx+si],bh
000002A5  06                push es
000002A6  000E3234          add [0x3432],cl
000002AA  37                aaa
000002AB  0039              add [bx+di],bh
000002AD  07                pop es
000002AE  1313              adc dx,[bp+di]
000002B0  1313              adc dx,[bp+di]
000002B2  1302              adc ax,[bp+si]
000002B4  3A08              cmp cl,[bx+si]
000002B6  1414              adc al,0x14
000002B8  1414              adc al,0x14
000002BA  1400              adc al,0x0
000002BC  3B09              cmp cx,[bx+di]
000002BE  0000              add [bx+si],al
000002C0  0000              add [bx+si],al
000002C2  0000              add [bx+si],al
000002C4  40                inc ax
000002C5  43                inc bx
000002C6  47                inc di
000002C7  4B                dec bx
000002C8  4E                dec si
000002C9  4F                dec di
000002CA  003E4144          add [0x4441],bh
000002CE  48                dec ax
000002CF  4C                dec sp
000002D0  4C                dec sp
000002D1  50                push ax
000002D2  52                push dx
000002D3  54                push sp
000002D4  58                pop ax
000002D5  5C                pop sp
000002D6  60                pusha
000002D7  60                pusha
000002D8  65696D55595D      imul bp,[gs:di+0x55],0x5d59
000002DE  61                popa
000002DF  61                popa
000002E0  666C              o32 insb
000002E2  6D                insw
000002E3  56                push si
000002E4  5A                pop dx
000002E5  5E                pop si
000002E6  626267            bound sp,[bp+si+0x67]
000002E9  6B6D575B          imul bp,[di+0x57],0x5b
000002ED  5F                pop di
000002EE  636366            arpl [bp+di+0x66],sp
000002F1  696D54585E        imul bp,[di+0x54],0x5e58
000002F6  60                pusha
000002F7  6466699555595D81  imul edx,[fs:di+0x5955],0x8685815d
         -8586
00000301  8799565A          xchg bx,[bx+di+0x5a56]
00000305  7182              jno 0x289
00000307  64686C96          fs push word 0x966c
0000030B  54                push sp
0000030C  7179              jno 0x387
0000030E  8101888F          add word [bx+di],0x8f88
00000312  97                xchg ax,di
00000313  55                push bp
00000314  727A              jc 0x390
00000316  82                db 0x82
00000317  01899098          add [bx+di-0x6770],cx
0000031B  56                push si
0000031C  737B              jnc 0x399
0000031E  81018A91          add word [bx+di],0x918a
00000322  99                cwd
00000323  57                push di
00000324  747C              jz 0x3a2
00000326  82                db 0x82
00000327  018B9299          add [bp+di-0x666e],cx
0000032B  54                push sp
0000032C  757D              jnz 0x3ab
0000032E  838586879A        add word [di-0x787a],0xffffffffffffff9a
00000333  55                push bp
00000334  767E              jna 0x3b4
00000336  8401              test [bx+di],al
00000338  8C939B56          mov word [bp+di+0x569b],ss
0000033C  777F              ja 0x3bd
0000033E  83018D            add word [bx+di],0xffffffffffffff8d
00000341  8D9B5478          lea bx,[bp+di+0x7854]
00000345  8084018E94        add byte [si-0x71ff],0x94
0000034A  9B55              wait push bp
0000034C  59                pop cx
0000034D  7883              js 0x2d2
0000034F  6464699B565A5C84  imul bx,[fs:bp+di+0x5a56],0x845c
00000357  8586879B          test [bp-0x6479],ax
0000035B  57                push di
0000035C  5B                pop bx
0000035D  5D                pop bp
0000035E  60                pusha
0000035F  63686C            arpl [bx+si+0x6c],bp
00000362  9C                pushf
00000363  54                push sp
00000364  5C                pop sp
00000365  5C                pop sp
00000366  60                pusha
00000367  6469696D5559      imul bp,[fs:bx+di+0x6d],0x5955
0000036D  5D                pop bp
0000036E  61                popa
0000036F  6467696D565A5E    imul bp,[fs:ebp+0x56],0x5e5a
00000376  626568            bound sp,[di+0x68]
00000379  6B6D575B          imul bp,[di+0x57],0x5b
0000037D  5F                pop di
0000037E  636663            arpl [bp+0x63],sp
00000381  6C                insb
00000382  6E                outsb
00000383  54                push sp
00000384  58                pop ax
00000385  5C                pop sp
00000386  60                pusha
00000387  60                pusha
00000388  63696D            arpl [bx+di+0x6d],bp
0000038B  0000              add [bx+si],al
0000038D  0000              add [bx+si],al
0000038F  0000              add [bx+si],al
00000391  0000              add [bx+si],al
00000393  0000              add [bx+si],al
00000395  0000              add [bx+si],al
00000397  0000              add [bx+si],al
00000399  0000              add [bx+si],al
0000039B  0000              add [bx+si],al
0000039D  0000              add [bx+si],al
0000039F  0000              add [bx+si],al
000003A1  0000              add [bx+si],al
000003A3  0000              add [bx+si],al
000003A5  0000              add [bx+si],al
000003A7  0000              add [bx+si],al
000003A9  0000              add [bx+si],al
000003AB  3300              xor ax,[bx+si]
000003AD  6D                insw
000003AE  0000              add [bx+si],al
000003B0  00FF              add bh,bh
000003B2  0000              add [bx+si],al
000003B4  16                push ss
000003B5  AF                scasw
000003B6  0012              add [bp+si],dl
000003B8  46                inc si
000003B9  656C              gs insb
000003BB  697368696B        imul si,[bp+di+0x68],0x6b69
000003C0  61                popa
000003C1  5C                pop sp
000003C2  7320              jnc 0x3e4
000003C4  43                inc bx
000003C5  61                popa
000003C6  7374              jnc 0x43c
000003C8  6C                insb
000003C9  650001            add [gs:bx+di],al
000003CC  0001              add [bx+di],al
000003CE  5F                pop di
000003CF  0001              add [bx+di],al
000003D1  3400              xor al,0x0
000003D3  00FF              add bh,bh
000003D5  FF4900            dec word [bx+di+0x0]
000003D8  FF0F              dec word [bx]
000003DA  C09410C0C8        rcl byte [si-0x3ff0],byte 0xc8
000003DF  8EC3              mov es,bx
000003E1  3DA3C8            cmp ax,0xc8a3
000003E4  06                push es
000003E5  AB                stosw
000003E6  C807B3C8          enter word 0xb307,byte 0xc8
000003EA  08BBC809          or [bp+di+0x9c8],bh
000003EE  FF                db 0xff
000003EF  FF04              inc word [si]
000003F1  00FF              add bh,bh
000003F3  9BC805FFFF        wait enter word 0xff05,byte 0xff
000003F8  FF                db 0xff
000003F9  FF0A              dec word [bp+si]
000003FB  C4ACC453          les bp,word [si+0x53c4]
000003FF  C5                db 0xc5
00000400  C3                ret
00000401  C52C              lds bp,word [si]
00000403  C6C4C6            mov ah,0xc6
00000406  E1C6              loope 0x3ce
00000408  52                push dx
00000409  C7                db 0xc7
0000040A  AB                stosw
0000040B  C7                db 0xc7
0000040C  1F                pop ds
0000040D  C8496620          enter word 0x6649,byte 0x20
00000411  796F              jns 0x482
00000413  7520              jnz 0x435
00000415  61                popa
00000416  7265              jc 0x47d
00000418  207468            and [si+0x68],dh
0000041B  65206272          and [gs:bp+si+0x72],ah
0000041F  61                popa
00000420  7665              jna 0x487
00000422  207761            and [bx+0x61],dh
00000425  7272              jc 0x499
00000427  696F722077        imul bp,[bx+0x72],0x7720
0000042C  65206861          and [gs:bx+si+0x61],ch
00000430  7665              jna 0x497
00000432  206177            and [bx+di+0x77],ah
00000435  61                popa
00000436  697465642C        imul si,[si+0x65],0x2c64
0000043B  207765            and [bx+0x65],dh
0000043E  206861            and [bx+si+0x61],ch
00000441  7665              jna 0x4a8
00000443  20736F            and [bp+di+0x6f],dh
00000446  6D                insw
00000447  657468            gs jz 0x4b2
0000044A  696E672074        imul bp,[bp+0x67],0x7420
0000044F  6F                outsw
00000450  207465            and [si+0x65],dh
00000453  6C                insb
00000454  6C                insb
00000455  20796F            and [bx+di+0x6f],bh
00000458  753A              jnz 0x494
0000045A  207468            and [si+0x68],dh
0000045D  726F              jc 0x4ce
0000045F  7567              jnz 0x4c8
00000461  686F75            push word 0x756f
00000464  7420              jz 0x486
00000466  7468              jz 0x4d0
00000468  65206167          and [gs:bx+di+0x67],ah
0000046C  65732C            gs jnc 0x49b
0000046F  206D61            and [di+0x61],ch
00000472  6E                outsb
00000473  7920              jns 0x495
00000475  796F              jns 0x4e6
00000477  756E              jnz 0x4e7
00000479  67206D65          and [ebp+0x65],ch
0000047D  6E                outsb
0000047E  206861            and [bx+si+0x61],ch
00000481  7665              jna 0x4e8
00000483  20656E            and [di+0x6e],ah
00000486  7465              jz 0x4ed
00000488  7265              jc 0x4ef
0000048A  64207468          and [fs:si+0x68],dh
0000048E  65206361          and [gs:bp+di+0x61],ah
00000492  7665              jna 0x4f9
00000494  726E              jc 0x504
00000496  732C              jnc 0x4c4
00000498  206275            and [bp+si+0x75],ah
0000049B  7420              jz 0x4bd
0000049D  66657720          gs ja 0x4c1
000004A1  686176            push word 0x7661
000004A4  65207265          and [gs:bp+si+0x65],dh
000004A8  7475              jz 0x51f
000004AA  726E              jc 0x51a
000004AC  65642EFF4163      inc word [cs:bx+di+0x63]
000004B2  636F72            arpl [bx+0x72],bp
000004B5  64696E672074      imul bp,[fs:bp+0x67],0x7420
000004BB  6F                outsw
000004BC  206C65            and [si+0x65],ch
000004BF  67656E            gs a32 outsb
000004C2  642C20            fs sub al,0x20
000004C5  7468              jz 0x52f
000004C7  657265            gs jc 0x52f
000004CA  206D61            and [di+0x61],ch
000004CD  7920              jns 0x4ef
000004CF  7374              jnc 0x545
000004D1  696C6C2062        imul bp,[si+0x6c],0x6220
000004D6  6520756E          and [gs:di+0x6e],dh
000004DA  64657267          gs jc 0x545
000004DE  726F              jc 0x54f
000004E0  756E              jnz 0x550
000004E2  6420706C          and [fs:bx+si+0x6c],dh
000004E6  61                popa
000004E7  636573            arpl [di+0x73],sp
000004EA  207468            and [si+0x68],dh
000004ED  61                popa
000004EE  7420              jz 0x510
000004F0  686176            push word 0x7661
000004F3  65206E6F          and [gs:bp+0x6f],ch
000004F7  7420              jz 0x519
000004F9  626565            bound sp,[di+0x65]
000004FC  6E                outsb
000004FD  206465            and [si+0x65],ah
00000500  7374              jnc 0x576
00000502  726F              jc 0x573
00000504  7965              jns 0x56b
00000506  64206279          and [fs:bp+si+0x79],ah
0000050A  204A61            and [bp+si+0x61],cl
0000050D  7368              jnc 0x577
0000050F  69696E2E20        imul bp,[bx+di+0x6e],0x202e
00000514  50                push ax
00000515  656F              gs outsw
00000517  706C              jo 0x585
00000519  65206D61          and [gs:di+0x61],ch
0000051D  7920              jns 0x53f
0000051F  7374              jnc 0x595
00000521  696C6C2062        imul bp,[si+0x6c],0x6220
00000526  65206C69          and [gs:si+0x69],ch
0000052A  7669              jna 0x595
0000052C  6E                outsb
0000052D  6720746865        and [eax+ebp*2+0x65],dh
00000532  7265              jc 0x599
00000534  2C20              sub al,0x20
00000536  61                popa
00000537  6E                outsb
00000538  64207769          and [fs:bx+0x69],dh
0000053C  6C                insb
0000053D  6C                insb
0000053E  207375            and [bp+di+0x75],dh
00000541  7265              jc 0x5a8
00000543  6C                insb
00000544  7920              jns 0x566
00000546  6C                insb
00000547  656E              gs outsb
00000549  6420796F          and [fs:bx+di+0x6f],bh
0000054D  7520              jnz 0x56f
0000054F  61                popa
00000550  206861            and [bx+si+0x61],ch
00000553  6E                outsb
00000554  642EFF4920        dec word [cs:bx+di+0x20]
00000559  686176            push word 0x7661
0000055C  65206265          and [gs:bp+si+0x65],ah
00000560  656E              gs outsb
00000562  20696E            and [bx+di+0x6e],ch
00000565  207468            and [si+0x68],dh
00000568  6520756E          and [gs:di+0x6e],dh
0000056C  64657267          gs jc 0x5d7
00000570  726F              jc 0x5e1
00000572  756E              jnz 0x5e2
00000574  6420746F          and [fs:si+0x6f],dh
00000578  776E              ja 0x5e8
0000057A  2E204166          and [cs:bx+di+0x66],al
0000057E  7465              jz 0x5e5
00000580  7220              jc 0x5a2
00000582  49                dec cx
00000583  20666C            and [bp+0x6c],ah
00000586  65642C20          fs sub al,0x20
0000058A  7468              jz 0x5f4
0000058C  657920            gs jns 0x5af
0000058F  7075              jo 0x606
00000591  7420              jz 0x5b3
00000593  61                popa
00000594  206C6F            and [si+0x6f],ch
00000597  636B20            arpl [bp+di+0x20],bp
0000059A  6F                outsw
0000059B  6E                outsb
0000059C  207468            and [si+0x68],dh
0000059F  6520646F          and [gs:si+0x6f],ah
000005A3  6F                outsw
000005A4  722E              jc 0x5d4
000005A6  204966            and [bx+di+0x66],cl
000005A9  207468            and [si+0x68],dh
000005AC  6520746F          and [gs:si+0x6f],dh
000005B0  776E              ja 0x620
000005B2  206973            and [bx+di+0x73],ch
000005B5  207374            and [bp+di+0x74],dh
000005B8  696C6C2074        imul bp,[si+0x6c],0x7420
000005BD  686572            push word 0x7265
000005C0  652E2E2E2E20FF    cs and bh,bh
000005C7  54                push sp
000005C8  686973            push word 0x7369
000005CB  206973            and [bx+di+0x73],ch
000005CE  207468            and [si+0x68],dh
000005D1  65206368          and [gs:bp+di+0x68],ah
000005D5  61                popa
000005D6  6D                insw
000005D7  626572            bound sp,[di+0x72]
000005DA  206F66            and [bx+0x66],ch
000005DD  20706F            and [bx+si+0x6f],dh
000005E0  6F                outsw
000005E1  7220              jc 0x603
000005E3  50                push ax
000005E4  7269              jc 0x64f
000005E6  6E                outsb
000005E7  636573            arpl [di+0x73],sp
000005EA  7320              jnc 0x60c
000005EC  46                inc si
000005ED  656C              gs insb
000005EF  696369612C        imul sp,[bp+di+0x69],0x2c61
000005F4  207768            and [bx+0x68],dh
000005F7  6F                outsw
000005F8  206861            and [bx+si+0x61],ch
000005FB  7320              jnc 0x61d
000005FD  626565            bound sp,[di+0x65]
00000600  6E                outsb
00000601  207475            and [si+0x75],dh
00000604  726E              jc 0x674
00000606  656420746F        and [fs:si+0x6f],dh
0000060B  207374            and [bp+di+0x74],dh
0000060E  6F                outsw
0000060F  6E                outsb
00000610  652E20596F        and [cs:bx+di+0x6f],bl
00000615  7520              jnz 0x637
00000617  6D                insw
00000618  61                popa
00000619  7920              jns 0x63b
0000061B  656E              gs outsb
0000061D  7465              jz 0x684
0000061F  722C              jc 0x64d
00000621  204475            and [si+0x75],al
00000624  6B652047          imul sp,[di+0x20],0x47
00000628  61                popa
00000629  726C              jc 0x697
0000062B  61                popa
0000062C  6E                outsb
0000062D  642EFF4272        inc word [cs:bp+si+0x72]
00000632  61                popa
00000633  7665              jna 0x69a
00000635  206B6E            and [bp+di+0x6e],ch
00000638  696768742C        imul sp,[bx+0x68],0x2c74
0000063D  20796F            and [bx+di+0x6f],bh
00000640  7520              jnz 0x662
00000642  686176            push word 0x7661
00000645  65206177          and [gs:bx+di+0x77],ah
00000649  61                popa
0000064A  6B656E65          imul sp,[di+0x6e],0x65
0000064E  642E205768        and [cs:bx+0x68],dl
00000653  656E              gs outsb
00000655  20796F            and [bx+di+0x6f],bh
00000658  7520              jnz 0x67a
0000065A  66656C            gs o32 insb
0000065D  6C                insb
0000065E  206174            and [bx+di+0x74],ah
00000661  207468            and [si+0x68],dh
00000664  65206861          and [gs:bx+si+0x61],ch
00000668  6E                outsb
00000669  64206F66          and [fs:bx+0x66],ch
0000066D  204A61            and [bp+si+0x61],cl
00000670  7368              jnc 0x6da
00000672  69696E2C20        imul bp,[bx+di+0x6e],0x202c
00000677  7468              jz 0x6e1
00000679  65205370          and [gs:bp+di+0x70],dl
0000067D  6972697473        imul si,[bp+si+0x69],0x7374
00000682  206272            and [bp+si+0x72],ah
00000685  6F                outsw
00000686  7567              jnz 0x6ef
00000688  687420            push word 0x2074
0000068B  796F              jns 0x6fc
0000068D  7520              jnz 0x6af
0000068F  686572            push word 0x7265
00000692  652E204E6F        and [cs:bp+0x6f],cl
00000697  7720              ja 0x6b9
00000699  6D                insw
0000069A  61                popa
0000069B  6B652068          imul sp,[di+0x20],0x68
0000069F  61                popa
000006A0  7374              jnc 0x716
000006A2  6520746F          and [gs:si+0x6f],dh
000006A6  207468            and [si+0x68],dh
000006A9  65206169          and [gs:bx+di+0x69],ah
000006AD  64206F66          and [fs:bx+0x66],ch
000006B1  207468            and [si+0x68],dh
000006B4  65205072          and [gs:bx+si+0x72],dl
000006B8  696E636573        imul bp,[bp+0x63],0x7365
000006BD  7320              jnc 0x6df
000006BF  46                inc si
000006C0  656C              gs insb
000006C2  696369612E        imul sp,[bp+di+0x69],0x2e61
000006C7  FF5175            call word near [bx+di+0x75]
000006CA  69636B6C79        imul sp,[bp+di+0x6b],0x796c
000006CF  2C20              sub al,0x20
000006D1  676F              a32 outsw
000006D3  20746F            and [si+0x6f],dh
000006D6  207468            and [si+0x68],dh
000006D9  65205072          and [gs:bx+si+0x72],dl
000006DD  696E636573        imul bp,[bp+0x63],0x7365
000006E2  7321              jnc 0x705
000006E4  FF4168            inc word [bx+di+0x68]
000006E7  2C20              sub al,0x20
000006E9  7468              jz 0x753
000006EB  65204E69          and [gs:bp+0x69],cl
000006EF  6E                outsb
000006F0  65205465          and [gs:si+0x65],dl
000006F4  61                popa
000006F5  7273              jc 0x76a
000006F7  206F66            and [bx+0x66],ch
000006FA  204573            and [di+0x73],al
000006FD  6D                insw
000006FE  657361            gs jnc 0x762
00000701  6E                outsb
00000702  7469              jz 0x76d
00000704  2E204A61          and [cs:bp+si+0x61],cl
00000708  7368              jnc 0x772
0000070A  69696E2065        imul bp,[bx+di+0x6e],0x6520
0000070F  7869              js 0x77a
00000711  7374              jnc 0x787
00000713  7320              jnc 0x735
00000715  6E                outsb
00000716  6F                outsw
00000717  206D6F            and [di+0x6f],ch
0000071A  7265              jc 0x781
0000071C  20616E            and [bx+di+0x6e],ah
0000071F  64207468          and [fs:si+0x68],dh
00000723  65206C69          and [gs:si+0x69],ch
00000727  67687420          a32 push word 0x2074
0000072B  6F                outsw
0000072C  66207065          o32 and [bx+si+0x65],dh
00000730  61                popa
00000731  636520            arpl [di+0x20],sp
00000734  7368              jnc 0x79e
00000736  696E657320        imul bp,[bp+0x65],0x2073
0000073B  6F                outsw
0000073C  6E                outsb
0000073D  636520            arpl [di+0x20],sp
00000740  61                popa
00000741  6761              a32 popa
00000743  696E206F6E        imul bp,[bp+0x20],0x6e6f
00000748  206F75            and [bx+0x75],ch
0000074B  7220              jc 0x76d
0000074D  6C                insb
0000074E  61                popa
0000074F  6E                outsb
00000750  642E2E2E20FF      cs and bh,bh
00000756  54                push sp
00000757  686973            push word 0x7369
0000075A  207769            and [bx+0x69],dh
0000075D  6C                insb
0000075E  6C                insb
0000075F  206265            and [bp+si+0x65],ah
00000762  6E                outsb
00000763  6566697420746865  imul esi,[gs:si+0x20],0x20656874
         -20
0000076C  7065              jo 0x7d3
0000076E  6F                outsw
0000076F  706C              jo 0x7dd
00000771  65206C69          and [gs:si+0x69],ch
00000775  7669              jna 0x7e0
00000777  6E                outsb
00000778  6720756E          and [ebp+0x6e],dh
0000077C  64657267          gs jc 0x7e7
00000780  726F              jc 0x7f1
00000782  756E              jnz 0x7f2
00000784  642C20            fs sub al,0x20
00000787  61                popa
00000788  7320              jnc 0x7aa
0000078A  7765              ja 0x7f1
0000078C  6C                insb
0000078D  6C                insb
0000078E  2E204875          and [cs:bx+si+0x75],cl
00000792  7272              jc 0x806
00000794  7920              jns 0x7b6
00000796  746F              jz 0x807
00000798  207468            and [si+0x68],dh
0000079B  65205072          and [gs:bx+si+0x72],dl
0000079F  696E636573        imul bp,[bp+0x63],0x7365
000007A4  7320              jnc 0x7c6
000007A6  46                inc si
000007A7  656C              gs insb
000007A9  696369612E        imul sp,[bp+di+0x69],0x2e61
000007AE  FF5468            call word near [si+0x68]
000007B1  65207065          and [gs:bx+si+0x65],dh
000007B5  61                popa
000007B6  636520            arpl [di+0x20],sp
000007B9  7765              ja 0x820
000007BB  206461            and [si+0x61],ah
000007BE  7265              jc 0x825
000007C0  64206E6F          and [fs:bp+0x6f],ch
000007C4  7420              jz 0x7e6
000007C6  686F70            push word 0x706f
000007C9  6520666F          and [gs:bp+0x6f],ah
000007CD  7220              jc 0x7ef
000007CF  686173            push word 0x7361
000007D2  20636F            and [bp+di+0x6f],ah
000007D5  6D                insw
000007D6  652E20495C        and [cs:bx+di+0x5c],cl
000007DB  6C                insb
000007DC  6C                insb
000007DD  206765            and [bx+0x65],ah
000007E0  7420              jz 0x802
000007E2  6D                insw
000007E3  7920              jns 0x805
000007E5  7468              jz 0x84f
000007E7  696E677320        imul bp,[bp+0x67],0x2073
000007EC  746F              jz 0x85d
000007EE  67657468          gs a32 jz 0x85a
000007F2  657220            gs jc 0x815
000007F5  61                popa
000007F6  6E                outsb
000007F7  64206265          and [fs:bp+si+0x65],ah
000007FB  206F6E            and [bx+0x6e],ch
000007FE  206D79            and [di+0x79],ch
00000801  207761            and [bx+0x61],dh
00000804  792E              jns 0x834
00000806  20495C            and [bx+di+0x5c],cl
00000809  7665              jna 0x870
0000080B  206120            and [bx+di+0x20],ah
0000080E  6661              popad
00000810  6D                insw
00000811  696C792074        imul bp,[si+0x79],0x7420
00000816  6F                outsw
00000817  206174            and [bx+di+0x74],ah
0000081A  7465              jz 0x881
0000081C  6E                outsb
0000081D  6420746F          and [fs:si+0x6f],dh
00000821  2EFF5175          call word near [cs:bx+di+0x75]
00000825  69636B6C79        imul sp,[bp+di+0x6b],0x796c
0000082A  2C20              sub al,0x20
0000082C  656E              gs outsb
0000082E  7465              jz 0x895
00000830  7220              jc 0x852
00000832  7468              jz 0x89c
00000834  6973206368        imul si,[bp+di+0x20],0x6863
00000839  61                popa
0000083A  6D                insw
0000083B  626572            bound sp,[di+0x72]
0000083E  2E205468          and [cs:si+0x68],dl
00000842  6520686F          and [gs:bx+si+0x6f],ch
00000846  6C                insb
00000847  7920              jns 0x869
00000849  637279            arpl [bp+si+0x79],si
0000084C  7374              jnc 0x8c2
0000084E  61                popa
0000084F  6C                insb
00000850  7320              jnc 0x872
00000852  7769              ja 0x8bd
00000854  6C                insb
00000855  6C                insb
00000856  206272            and [bp+si+0x72],ah
00000859  6561              gs popa
0000085B  6B2074            imul sp,[bx+si],0x74
0000085E  686520            push word 0x2065
00000861  657669            gs jna 0x8cd
00000864  6C                insb
00000865  207370            and [bp+di+0x70],dh
00000868  656C              gs insb
0000086A  6C                insb
0000086B  207768            and [bx+0x68],dh
0000086E  6963682068        imul sp,[bp+di+0x68],0x6820
00000873  61                popa
00000874  7320              jnc 0x896
00000876  7475              jz 0x8ed
00000878  726E              jc 0x8e8
0000087A  6564205072        and [fs:bx+si+0x72],dl
0000087F  696E636573        imul bp,[bp+0x63],0x7365
00000884  7320              jnc 0x8a6
00000886  46                inc si
00000887  656C              gs insb
00000889  6963696120        imul sp,[bp+di+0x69],0x2061
0000088E  746F              jz 0x8ff
00000890  207374            and [bp+di+0x74],dh
00000893  6F                outsw
00000894  6E                outsb
00000895  652EFF24          jmp word near [cs:si]
00000899  00820003          add [bp+si+0x300],al
0000089D  03800430          add ax,[bx+si+0x3004]
000008A1  00811800          add [bx+di+0x18],al
000008A5  0000              add [bx+si],al
000008A7  0038              add [bx+si],bh
000008A9  00811800          add [bx+di+0x18],al
000008AD  0000              add [bx+si],al
000008AF  015400            add [si+0x0],dx
000008B2  800001            add byte [bx+si],0x1
000008B5  0300              add ax,[bx+si]
000008B7  025C00            add bl,[si+0x0]
000008BA  81180000          sbb word [bx+si],0x0
000008BE  0003              add [bp+di],al
000008C0  FF                db 0xff
000008C1  FF                db 0xff
